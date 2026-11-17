import InitECandidate.Solver.MemSafe.BlsCost.Callers.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callers
variable {σ : Type}
def body_generic_create := (declPair Guest.Software.guestFn_generic_create).2.2
def b_generic_create : Nat := 313862740045426172572086870493316694459438068554444394772921
theorem cost_generic_create : Cost σ guestCtx body_generic_create b_generic_create := PairCost.Core.analyze_sound table5_sound (by cbv)
theorem cc_generic_create : CalleeCost σ guestCtx (nm "generic_create") b_generic_create := by
  have hc : ∃ rs, guestCode (nm "generic_create") = some ((declPair Guest.Software.guestFn_generic_create).2.1,body_generic_create,rs) :=
    declPair_valid (List.getElem_mem (n := 598) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact PairCost.Core.callee_of_body hc cost_generic_create
def table6 := PairCost.Core.extend table5 (nm "generic_create") b_generic_create
theorem table6_sound : TblSound σ guestCtx table6 := PairCost.Core.extend_sound table5_sound cc_generic_create
#print axioms cc_generic_create
end InitECandidate.Solver.MemSafe.BlsCost.Callers
