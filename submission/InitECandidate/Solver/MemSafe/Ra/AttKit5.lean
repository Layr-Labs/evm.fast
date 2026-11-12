import InitECandidate.Solver.MemSafe.Ra.AttDefs

/-!
# `run_attempt`: a statement call from a heap-part state with a table cost
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

section k5
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop}

/-- `f(args); k` for a callee with a table cost, from a heap-part state; the facts `NF` are added. -/
theorem cw_callK {k : ProgHOL 64} {Bf Bk : Nat} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : FS) (hcost : CalleeCost σ guestCtx f Bf)
    (h : CallOblK E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } NF)
    (hk : CW (PA E En (fun g => S g ∨ NF g)) k Bk QT) :
    CW (PA E En S) (.seq (callD f args) k) ((1 + Bf + 0) + Bk) QT := by
  refine cw_seq (P := PA E En S) (R := PA E En (fun g => S g ∨ NF g)) ⟨?_, ?_⟩ hk
  · exact Inv.costP_callD (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hcost) (fun _ _ _ _ _ _ => trivial)
  · refine hoare_pre (P := PAk E En S) (hn_callRk hf hg NF h hnew) (fun s _ hh => pa_hpart hK hE0 hS hh)

end k5

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cw_callK
