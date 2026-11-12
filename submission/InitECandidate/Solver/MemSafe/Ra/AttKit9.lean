import InitECandidate.Solver.MemSafe.Ra.AttLoop

/-!
# `run_attempt`: a statement call from a `PAX` state whose post adds existentially chosen facts
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

section k9
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop} {RM : Gam → Ptrs → Mem → Prop}

/-- `f(args); k` from a `PAX` state, the post adding the facts `NF x` for some `x`. -/
theorem cw_callXE {α : Type} {k : ProgHOL 64} {Bf Bk : Nat} {PreC : List (ValueHOL 64) → State σ → Prop}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : α → FS)
    (hc : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpre : ∀ s : State σ, InCtx s guestCtx → PAX E En S (Rm RM) s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (h : CallOblX E En S (Rm RM) args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), PAX E En S (Rm RM) s → evs s args = some vs → EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      ∃ x : α, HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF x))
    (hk : ∀ x : α, CW (PA E En (fun g => S g ∨ NF x g)) k Bk QT) :
    CW (PAX E En S (Rm RM)) (.seq (.call (some (none, none)) f args) k) ((1 + Bf + 0) + Bk) QT := by
  refine cw_seq (P := PAX E En S (Rm RM)) (R := fun t => ∃ x : α, PA E En (fun g => S g ∨ NF x g) t) ⟨?_, ?_⟩
    (cw_exists hk)
  · exact Inv.costP_call (Pre := PreC) hc hpre (by intro _ _ _ _ h; cases h)
  · refine hoare_callD (FunSpec.and hf hg) ?_
    intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
    obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
    have hpa : PAX E En S (Rm RM) s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
    obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
      (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
    obtain ⟨x, hN⟩ := hnew s vs callee v st Γ Γ' p p' hpa hvs hr hL hstp hq
    refine ⟨rfl, x, ⟨Γ', p', hrun, ?_⟩, hlk⟩
    intro g hg
    rcases hg with hg | hg
    · exact hL' g hg
    · exact hN g hg

end k9

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cw_callXE
