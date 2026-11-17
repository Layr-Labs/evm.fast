import InitECandidate.Solver.MemSafe.PairCost.Callers.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.PairCost.Callers
variable {σ : Type}
def body_generic_call := (declPair Guest.Software.guestFn_generic_call).2.2
def b_generic_call : Nat := 1745041933047810396892145961638226926944732131636597877565821
theorem cost_generic_call : Cost σ guestCtx body_generic_call b_generic_call := PairCost.Core.analyze_sound table6_sound (by cbv)
theorem cc_generic_call : CalleeCost σ guestCtx (nm "generic_call") b_generic_call := by
  have hc : ∃ rs, guestCode (nm "generic_call") = some ((declPair Guest.Software.guestFn_generic_call).2.1,body_generic_call,rs) :=
    declPair_valid (List.getElem_mem (n := 601) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact PairCost.Core.callee_of_body hc cost_generic_call
def table7 := PairCost.Core.extend table6 (nm "generic_call") b_generic_call
theorem table7_sound : TblSound σ guestCtx table7 := PairCost.Core.extend_sound table6_sound cc_generic_call
#print axioms cc_generic_call
end InitECandidate.Solver.MemSafe.PairCost.Callers
