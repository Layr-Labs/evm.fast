import InitECandidate.Solver.MemSafe.ConstCost.Callers.C16
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_generic_call := (declPair Guest.Software.guestFn_generic_call).2.2
def b_generic_call : Nat := 4109135169324035124705573367787881176958448116180185450196832701
theorem cost_generic_call : Cost σ guestCtx body_generic_call b_generic_call :=
  ConstCost.Core.analyze_sound table16_sound (by cbv)
theorem cc_generic_call : CalleeCost σ guestCtx (nm "generic_call") b_generic_call := by
  have hc : ∃ rs, guestCode (nm "generic_call") = some ((declPair Guest.Software.guestFn_generic_call).2.1,body_generic_call,rs) :=
    declPair_valid (List.getElem_mem (n := 601) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_generic_call
def table17 := ConstCost.Core.extend table16 (nm "generic_call") b_generic_call
theorem table17_sound : TblSound σ guestCtx table17 := ConstCost.Core.extend_sound table16_sound cc_generic_call
#print axioms cc_generic_call
end InitECandidate.Solver.MemSafe.ConstCost.Callers
