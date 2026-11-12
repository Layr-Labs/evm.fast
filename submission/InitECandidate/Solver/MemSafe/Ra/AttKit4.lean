import InitECandidate.Solver.MemSafe.Ra.AttKit3
import InitECandidate.Solver.MemSafe.Ra.AttCalls2

/-!
# `run_attempt`: `bh = alloc(32)` handing on its window, and `header_hash(hdr, bh)`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The fresh block `O` of `n` bytes sits above every object, inside the heap. -/
def BhR (n : Nat) (O : BitVec 64) : Gam → Ptrs → State σ → Prop :=
  fun Γ p _ => CPre Γ ∧ Aw.Below Γ O.toNat ∧ O.toNat % 8 = 0 ∧ heapBase ≤ O.toNat ∧ O.toNat + n ≤ p.hp

section k4
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem cw_allocB {rn : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hQT : ResIns rn QT) {n : BitVec 64} (hn8 : n.toNat % 8 = 0) (hpos : 0 < n.toNat)
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    {Bk : Nat}
    (hk : ∀ w : BitVec 64, CW
      (PAX E (En.set rn (.val (.word w))) (fun f => S f ∨ f = Fct.fbuf w n.toNat) (BhR n.toNat w)) k Bk QT) :
    CW (PA E En S) (.decCall rn .one (nm "alloc") [e] k) (1 + cAlloc + Bk) QT := by
  refine cw_pre (P := PAk E En S) ?_ (fun s _ hh => pa_hpart hK hE0 hS hh)
  refine cw_decCallK (PreC := fun _ _ => True) hQT (FunSpec.and (funSpec_allocRel (σ := σ)) (gwk_tab (f := nm "alloc") (by decide)))
    (Inv.calleeCostP_of_calleeCost cc_cAlloc) (fun _ _ _ _ _ _ => trivial) ?_
  intro s hs hpa vs hvs callee v st ⟨hAR, hgl⟩ hst hsh
  have hvs' := alloc_args (he s (pak_pa hpa)) hvs
  subst hvs'
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  obtain ⟨hR, hAl⟩ := hAR
  have hre : EbRun E.Γ0 E.s0 E.p0 Γ (callEntryStateHOLFinite s callee) p := ebRun_loc hr callee (s.clock - 1)
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step (S := S) (W := fun g' => tabW.contains g' = true)
    (Pre := fun vs _ Γ p => ArgsOK guestC Γ p AllocSig.params vs) (D := fun _ _ _ _ => False)
    (Q := fun vs _ Γ p v _ Γ' p' => RetOK Γ' p p' vs AllocSig.ret v ∧ (AllocSig.grows = false → NewFresh Γ Γ' p p)) hR
    (fun g hgW => hgl v rfl g hgW) hr hL (argsOK_any (by simp) (by simp)) (fun _ _ _ _ h => h.elim)
    (tidy_gmiss hT hz).1 (tidy_gmiss hT hz).2
  obtain ⟨hmem, hglob, p'', hp'', hord'', hmono'', hvret⟩ := hAl (by simp [Good]) n p rfl (ebRun_ptrs hre) (ebRun_ord hre)
  obtain rfl : p' = p'' := Option.some.inj (hstp.1.hp'.symm.trans hp'')
  obtain ⟨q, rfl, hq8, hlive, hunal⟩ := hvret v rfl
  have hfb := retok_alloc hq.1
  have hordp := ebRun_ord hre
  have hordp' := ebRun_ord (ebRun_stp hre hstp)
  obtain ⟨q0, hq0, -, hL0, -⟩ := ebRun_G hre
  obtain rfl : p = q0 := (Option.some.inj (hq0.symm.trans (ebRun_ptrs hre))).symm
  obtain ⟨q1, hq1, -, hL1, -⟩ := hstp.1.hG'
  obtain rfl : p' = q1 := (Option.some.inj (hq1.symm.trans hstp.1.hp')).symm
  obtain ⟨hC', hBlw⟩ := below_after_alloc hC hordp' hL0 hL1 (hq.2 rfl)
  have hhp : p.hp ≤ q.toNat := by
    have := hunal q.toNat le_rfl (by omega)
    unfold Ptrs.Allocated at this
    have h2 := hlive.1
    by_contra hcon
    exact this (Or.inl ⟨h2, by omega⟩)
  refine cw_pre (hk q) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_, ?_⟩, lke_set (lke_restore hlk) rn _⟩
  · intro g hg
    rcases hg with hg | rfl
    · have := (holdsAll_loc hL' s.locals st.clock) g hg
      cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
    · exact fbuf_of_alloc hfb (ebRun_mono hr) hq8 hlive hunal
  · exact ⟨hC', hBlw.mono hhp, hq8, hlive.1, by have := hlive.2; omega⟩



theorem gwk_a {f : MlS} (hf : aNames.contains f = true) : GwK (σ := σ) f (fun g => aW.contains g = true) :=
  gwK_of fun g hg => funSpec_a_gw guestCtx_code (by simpa using hg) hf

theorem gwk_si {f : MlS} (hf : siNames.contains f = true) : GwK (σ := σ) f (fun g => siW.contains g = true) :=
  gwK_of fun g hg => funSpec_si_gw guestCtx_code (by simpa using hg) hf

theorem gwk_ph {f : MlS} (hf : phNames.contains f = true) : GwK (σ := σ) f (fun g => phW.contains g = true) :=
  gwK_of fun g hg => funSpec_ph_gw guestCtx_code (by simpa using hg) hf

theorem cw_hhX {ea eo : ExpHOL 64} {O : BitVec 64} (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (aW.contains g = true))
    (hA : ∀ s : State σ, PA E En S s → ∀ v, ev s ea = some v → ∃ d, v = .val (.word d))
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O))) :
    CW (PAX E En S (BhR 32 O)) (callD (nm "header_hash") [ea, eo]) (1 + cHh + 0) (fun r t => r = none ∧ PA E En S t) := by
  refine ⟨Inv.costP_callD (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_hh) (fun _ _ _ _ _ _ => trivial), ?_⟩
  refine hn_post (hn_callRx (E := E) (En := En) (S := S) (R := BhR 32 O) (f := nm "header_hash") (args := [ea, eo])
    (W := fun g' => aW.contains g' = true) cr_hh (gwk_a (by decide)) (fun _ => False) ?_ ?_)
    (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpx vs hvs callee Γ p hr hL hR
    have hpa' : PA E En S s := pax_pa hpx
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    obtain ⟨d, rfl⟩ := hA s hpa' v1 h1
    have e2 := hO s hpa' v2 h2
    subst e2
    exact ⟨hR.1, d, O, rfl, hR.2.2.1, hR.2.2.2.1, hR.2.2.2.2, hR.2.1⟩
  · intro s vs callee v st Γ Γ' p p' hpx hvs hr hL hstp hq f hf
    exact hf.elim

end k4

end InitECandidate.Solver.MemSafe.Att
