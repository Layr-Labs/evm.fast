import InitECandidate.Solver.MemSafe.BnCost.Division
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BnCost
variable {σ : Type}
theorem cc_bn_divmnu : CalleeCost σ guestCtx (nm "bn_divmnu") (10^23) := by
 have hc : guestCode (nm "bn_divmnu") = some ((declPair Guest.Software.guestFn_bn_divmnu).2.1,body,(fnEntry Guest.Software.guestFn_bn_divmnu).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 627) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc body_cost
def table := PairCost.Core.extend DivCost.Main.table (nm "bn_divmnu") (10^23)
theorem table_sound : TblSound σ guestCtx table := PairCost.Core.extend_sound DivCost.Main.table_sound cc_bn_divmnu
#print axioms cc_bn_divmnu
end InitECandidate.Solver.MemSafe.BnCost
