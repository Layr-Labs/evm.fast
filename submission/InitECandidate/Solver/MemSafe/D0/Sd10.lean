import InitECandidate.Solver.MemSafe.D0.Sd9

/-!
# `set_delegation`: the stages before the loop (part 1: `auths`, `n`, `i`, the loop, `return 0`)
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

theorem plp_decv {gw : List MlS} {Pl : Locs → Prop} {u0 : State σ} {n : MlS} {sh : ShapeHOL}
    {x : ExpHOL 64} {k : ProgHOL 64}
    (hres : ∀ L o, Pl L → Pl (L.resVarEq (n, o)))
    (h : ∀ v, ev u0 x = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite n v u0) k
        (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl)) :
    HoareG σ guestCtx (fun t => t = u0) (.dec n sh x k) (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  exact Struct.hoareG_decN (fun r t o h => plp_res (kp_locF hH) n hres o h) fun s _ hs v hv hsh => by
    subst s; exact h v hv hsh

/-- `KPd` at the base facts (the typing of the base state itself). -/
theorem kpd_base {B : Gam → Ptrs → Prop} (hB : BMono HJ B) {gw : List MlS} {u : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u) (hG0 : G guestC HJ Γ0 s0) (hb : B Γ0 p0) :
    KPd HJ gw Γ0 s0 p0 fs e mg u B := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  exact ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112, hB gw Γ0 p0 Γ1 p1 s0 u hG0 hrun hb⟩

/-- The loop and `return 0`. -/
theorem sd_loopRet (hRA : RaH σ) (hSC : SetCodeH σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {W S A N : BitVec 64}
    {xs0 : List (MlS × ValueHOL 64)} (hxW : xs0.lookup (nm "written") = some (.val (.word W)))
    (hxS : xs0.lookup (nm "set_for") = some (.val (.word S)))
    (hxA : xs0.lookup (nm "auths") = some (.val (.word A)))
    (hxN : xs0.lookup (nm "n") = some (.val (.word N))) (hfr : IterFresh xs0)
    (hl : LA u0.locals ((nm "i", .val (.word (BitVec.ofNat 64 0))) :: xs0))
    (hB : LBp W S A N Γ0 p0) :
    HoareG σ guestCtx (fun t => t = u0) sdLoop
      (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun _ => True)) := by
  unfold sdLoop
  refine hoareG_seq (R := PLQ (fun t => KPd HJ gwJ Γ0 s0 p0 fs e mg t (LBp W S A N))
      (fun L => ∃ I : BitVec 64, LA L ((nm "i", .val (.word I)) :: xs0))) ?_
    (fun r t _ hr _ h => ?_) ?_
  · refine hoareG_pre (sd_loop hRA hSC hfs hxW hxS hxA hxN hfr) fun t _ ht => ?_
    subst ht
    exact ⟨kpd_base lbp_mono hu hG0 hB, BitVec.ofNat 64 0, by simp, hl⟩
  · rcases h with ⟨h0, -⟩ | ⟨r', h0, hA, hk⟩
    · exact absurd h0 hr
    · exact Or.inr ⟨by simp [h0], fun r'' hr'' hna => by
        simp only [h0, Option.some.injEq] at hr''
        subst hr''; exact kp_of_kpd (hk hna)⟩
  · refine hoareG_pt fun u h => ?_
    rcases h with ⟨-, hk, -⟩ | ⟨r', h0, -⟩
    · exact plp_ret (kp_of_kpd hk)
    · cases h0

/-- The stage `var auths = te[TE_AUTHS]; var n = te[TE_AUTHS_N]; var i = 0; while …; return 0`. -/
theorem sd_s5 {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {W S T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "set_for", .val (.word S)), (nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hS : Fits Γ0 (.ptr tHTh20) S)
    (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    HoareG σ guestCtx (fun t => t = u0)
      (.dec (nm "auths") .one (lLoad "te" 144)
        (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop)))
      (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun _ => True)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have hu' := hu
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨x, hx, hxb, hxt⟩ := hT
  obtain ⟨x', hx', hb', ht', -⟩ := hrun.2.2.2.1 x hx
  obtain ⟨-, hsub⟩ := hTE.wf Γ1 u0 p1 hG1 hp1 x' hx' (ht'.trans hxt)
  have hxT : x'.base = T := hb'.trans hxb
  rw [hxT] at hsub
  have hu1 : KP HJ gwJ Γ1 u0 p1 fs e mg u0 := ⟨hJ, Γ1, p1, runT_refl hG1 hp1, hch, hE, le_refl _, h112⟩
  refine hoareG_conseq (P := fun t => t = u0)
    (Q := PLP (KP HJ gwJ Γ1 u0 p1 fs e mg) (fun _ => True)) ?_ (fun _ _ h => h)
    (fun ro t _ _ h => plp_mono (fun t ht => kp_trans hu' hrun ht) (fun _ h => h) h)
  have hte : u0.locals.lookup (nm "te") = some (.val (.word T)) := la_lookup hl rfl
  refine plp_decv (fun _ _ _ => trivial) fun v hv _ => ?_
  have hvA := ev_lLoad_eq hte hv
  subst hvA
  set A := fld u0.memory T 144 with hAd
  have hu2 := kp_locals hH hu1 (setVarHOLFinite (nm "auths") (.val (.word A)) u0).locals
  have hl2 := la_set (s := u0) hl (nm "auths") (.val (.word A))
  set u2 := setVarHOLFinite (nm "auths") (.val (.word A)) u0 with hu2d
  have hte2 : u2.locals.lookup (nm "te") = some (.val (.word T)) := la_lookup hl2 rfl
  refine plp_decv (fun _ _ _ => trivial) fun v hv _ => ?_
  have hvN := ev_lLoad_eq hte2 hv
  subst hvN
  set N := fld u2.memory T 152 with hNd
  have hu3 := kp_locals hH hu2 (setVarHOLFinite (nm "n") (.val (.word N)) u2).locals
  have hl3 := la_set (s := u2) hl2 (nm "n") (.val (.word N))
  set u3 := setVarHOLFinite (nm "n") (.val (.word N)) u2 with hu3d
  refine plp_decv (fun _ _ _ => trivial) fun v hv _ => ?_
  rw [ev_cw] at hv; obtain rfl := (Option.some.inj hv).symm
  have hu4 := kp_locals hH hu3 (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) u3).locals
  have hl4 := la_set (s := u3) hl3 (nm "i") (.val (.word (BitVec.ofNat 64 0)))
  set u4 := setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) u3 with hu4d
  let xs0 : List (MlS × ValueHOL 64) := (nm "n", .val (.word N)) :: (nm "auths", .val (.word A)) ::
    [(nm "set_for", .val (.word S)), (nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))]
  have hfr : IterFresh xs0 := by
    intro n hn
    simp only [iterNames, List.mem_cons, List.mem_nil_iff, or_false] at hn
    rcases hn with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have hsubA : Hooks.SubArr Γ1 A N.toNat tAUTH 120 := hsub
  exact sd_loopRet hRA hSC hfs hu4 hG1 (xs0 := xs0) rfl rfl rfl rfl hfr hl4
    ⟨fits_ext hrun.2.2.2.1 hW, fits_ext hrun.2.2.2.1 hS, hsubA⟩

end


end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.sd_loopRet
#print axioms InitECandidate.Solver.MemSafe.D0.sd_s5
