import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S029
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_nodedb_lookup := (declPair Guest.Software.guestFn_nodedb_lookup).2.2
def b_nodedb_lookup : Nat := 171798691881
theorem cost_nodedb_lookup : Cost σ guestCtx body_nodedb_lookup b_nodedb_lookup := FqCost.CombCore.analyze_sound table29_sound (by cbv)
theorem cc_nodedb_lookup : CalleeCost σ guestCtx (nm "nodedb_lookup") b_nodedb_lookup := by
 have hc : guestCode (nm "nodedb_lookup") = some ((declPair Guest.Software.guestFn_nodedb_lookup).2.1,body_nodedb_lookup,(fnEntry Guest.Software.guestFn_nodedb_lookup).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 254) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_nodedb_lookup
def table30 := FqCost.CombCore.extend table29 (nm "nodedb_lookup") b_nodedb_lookup
theorem table30_sound : TblSound σ guestCtx table30 := FqCost.CombCore.extend_sound table29_sound cc_nodedb_lookup
#print axioms cc_nodedb_lookup
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
