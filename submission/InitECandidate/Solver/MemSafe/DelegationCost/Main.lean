import InitECandidate.Solver.MemSafe.DelegationCost.Cost
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.DelegationCost
variable {σ : Type}
theorem cc_set_delegation : CalleeCost σ guestCtx (nm "set_delegation") (10^51) := by
 have hc : guestCode (nm "set_delegation") = some ((declPair Guest.Software.guestFn_set_delegation).2.1,fullBody,(fnEntry Guest.Software.guestFn_set_delegation).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 575) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc full_cost
def table := PairCost.Core.extend BlsCost.Callers.table12 (nm "set_delegation") (10^51)
theorem table_sound : TblSound σ guestCtx table :=
 PairCost.Core.extend_sound BlsCost.Callers.table12_sound cc_set_delegation
def depthBody := (declPair Guest.Software.guestFn_depth0_prepare).2.2
theorem depth_cost : Cost σ guestCtx depthBody (10^52) := by
 have hc : Cost σ guestCtx depthBody (10^51+699620546612555990437589951862017727164040+3) :=
  PairCost.Core.analyze_sound table_sound (by cbv)
 exact Cost.mono hc (by decide +kernel)
theorem cc_depth0_prepare : CalleeCost σ guestCtx (nm "depth0_prepare") (10^52) := by
 have hc : guestCode (nm "depth0_prepare") = some ((declPair Guest.Software.guestFn_depth0_prepare).2.1,depthBody,(fnEntry Guest.Software.guestFn_depth0_prepare).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 587) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc depth_cost
#print axioms cc_set_delegation
#print axioms cc_depth0_prepare
end InitECandidate.Solver.MemSafe.DelegationCost
