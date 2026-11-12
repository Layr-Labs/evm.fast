import InitECandidate.Solver.MemSafe.D0.Sd6

/-!
# `set_delegation`: the loop iteration `sdIter`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- The part of the iteration after the authorization check: `if authority != 0 { … }; i = i + 1`. -/
theorem sd_after (hSC : SetCodeH σ) (hfs : fs = (e, c) :: rest) {t : State σ} {a : BitVec 64}
    {W S I : BitVec 64} {xs0 : List (MlS × ValueHOL 64)} {av : BitVec 64}
    (hxW : xs0.lookup (nm "written") = some (.val (.word W)))
    (hxS : xs0.lookup (nm "set_for") = some (.val (.word S)))
    (hfr : IterFresh xs0)
    (hkd : KPd HJ gwJ Γ0 s0 p0 fs e mg t (fun Γ p => a = 0 ∨ BufOK guestC Γ p a.toNat 20))
    (hlt : LA t.locals ((nm "authority", .val (.word a)) :: (nm "auth", .val (.word av)) ::
      (nm "i", .val (.word I)) :: xs0))
    (hW : Fits Γ0 (.ptr tHTh20) W) (hS : Fits Γ0 (.ptr tHTh20) S) :
    HoareG σ guestCtx (fun u => u = t)
      (.seq (.ite (.cmp .notEqual (lv (nm "authority")) (cw 0)) sdAuth .skip)
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))
      (PLQ (KP HJ gwJ Γ0 s0 p0 fs e mg)
        (fun L => LA L ((nm "i", .val (.word (I + BitVec.ofNat 64 1))) :: xs0))) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have hkd' := hkd
  obtain ⟨hJ, Γ2, p2, hrun, hch, hE, hΦ, h112, hbr⟩ := hkd
  have hG2 := hrun.2.2.2.2.2.1
  have hu2 : KP HJ gwJ Γ2 t p2 fs e mg t := ⟨hJ, Γ2, p2, runT_refl hG2 hrun.2.1, hch, hE, le_refl _, h112⟩
  have hkb : KP HJ gwJ Γ0 s0 p0 fs e mg t := kp_of_kpd hkd'
  have fr : ∀ n, n ∈ iterNames → xs0.lookup n = none := hfr
  refine hoareG_conseq (P := fun u => u = t)
    (Q := PLQ (KP HJ gwJ Γ2 t p2 fs e mg)
      (fun L => LA L ((nm "i", .val (.word (I + BitVec.ofNat 64 1))) :: xs0))) ?_ (fun _ _ h => h)
    (fun ro t' _ _ h => plq_mono (fun t' ht' => kp_trans hkb hrun ht') (fun L hL => hL) h)
  let xsA : List (MlS × ValueHOL 64) := (nm "authority", .val (.word a)) :: (nm "auth", .val (.word av)) ::
    (nm "i", .val (.word I)) :: xs0
  have hxaA : xsA.lookup (nm "authority") = some (.val (.word a)) := by simp [xsA, List.lookup]
  have hxWA : xsA.lookup (nm "written") = some (.val (.word W)) := by
    show ((nm "authority", ValueHOL.val (.word a)) :: (nm "auth", ValueHOL.val (.word av)) ::
      (nm "i", ValueHOL.val (.word I)) :: xs0).lookup (nm "written") = _
    rw [lk_cons_ne (by decide), lk_cons_ne (by decide), lk_cons_ne (by decide)]; exact hxW
  have hxSA : xsA.lookup (nm "set_for") = some (.val (.word S)) := by
    show ((nm "authority", ValueHOL.val (.word a)) :: (nm "auth", ValueHOL.val (.word av)) ::
      (nm "i", ValueHOL.val (.word I)) :: xs0).lookup (nm "set_for") = _
    rw [lk_cons_ne (by decide), lk_cons_ne (by decide), lk_cons_ne (by decide)]; exact hxS
  have hfrA : AuthFresh xsA := by
    have h : ∀ n, n ∈ iterNames → n ≠ nm "authority" → n ≠ nm "auth" → n ≠ nm "i" →
        xsA.lookup n = none := fun n hn h1 h2 h3 => by
      show ((nm "authority", ValueHOL.val (.word a)) :: (nm "auth", ValueHOL.val (.word av)) ::
        (nm "i", ValueHOL.val (.word I)) :: xs0).lookup n = none
      rw [lk_cons_ne h1, lk_cons_ne h2, lk_cons_ne h3]; exact fr n hn
    exact ⟨h _ (by decide) (by decide) (by decide) (by decide), h _ (by decide) (by decide) (by decide) (by decide),
      h _ (by decide) (by decide) (by decide) (by decide), h _ (by decide) (by decide) (by decide) (by decide),
      h _ (by decide) (by decide) (by decide) (by decide), h _ (by decide) (by decide) (by decide) (by decide),
      h _ (by decide) (by decide) (by decide) (by decide), h _ (by decide) (by decide) (by decide) (by decide)⟩
  refine plq_seq (Pl := fun L => LA L xsA) (hoareG_iteNZ (a := a) (la_lookup hlt hxaA) (fun ha => ?_)
    (fun ha => plq_skipG hu2 hlt)) fun u3 hk3 hl3 => ?_
  · have hbuf2 : BufOK guestC Γ2 p2 a.toNat 20 := hbr.resolve_left ha
    exact sd_auth hSC hfs hu2 hG2 hxWA hxSA hxaA hfrA hlt (fits_ext hrun.2.2.2.1 hW)
      (fits_ext hrun.2.2.2.1 hS) hbuf2
  · refine plq_assign hk3 fun v hv => ?_
    have hi3 : u3.locals.lookup (nm "i") = some (.val (.word I)) :=
      la_lookup hl3 (by
        show ((nm "authority", ValueHOL.val (.word a)) :: (nm "auth", ValueHOL.val (.word av)) ::
          (nm "i", ValueHOL.val (.word I)) :: xs0).lookup (nm "i") = _
        rw [lk_cons_ne (by decide), lk_cons_ne (by decide)]; simp [List.lookup])
    rw [ev_add2 (ev_lv_eq hi3) (ev_cw u3 1)] at hv
    obtain rfl := (Option.some.inj hv).symm
    intro x w hx
    by_cases hxi : x = nm "i"
    · subst hxi
      simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hx
      subst hx; exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (Ne.symm hxi)]
      rw [lk_cons_ne hxi] at hx
      have h1 : x ≠ nm "authority" := by rintro rfl; rw [fr _ (by decide)] at hx; cases hx
      have h2 : x ≠ nm "auth" := by rintro rfl; rw [fr _ (by decide)] at hx; cases hx
      exact hl3 x w (by
        show ((nm "authority", ValueHOL.val (.word a)) :: (nm "auth", ValueHOL.val (.word av)) ::
          (nm "i", ValueHOL.val (.word I)) :: xs0).lookup x = some w
        rw [lk_cons_ne h1, lk_cons_ne h2, lk_cons_ne hxi]; exact hx)

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.sd_after
