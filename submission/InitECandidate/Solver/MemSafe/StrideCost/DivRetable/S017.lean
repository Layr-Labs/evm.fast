import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S016
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_nodedb_lookup := (declPair Guest.Software.guestFn_nodedb_lookup).2.2
def b_nodedb_lookup : Nat := 18446744211148505128
theorem cost_nodedb_lookup : Cost σ guestCtx body_nodedb_lookup b_nodedb_lookup :=
 StrideCost.CoreNext.analyze_sound table16_sound (by cbv)
theorem cc_nodedb_lookup : CalleeCost σ guestCtx (nm "nodedb_lookup") b_nodedb_lookup := by
 have hc : guestCode (nm "nodedb_lookup") = some ((declPair Guest.Software.guestFn_nodedb_lookup).2.1,body_nodedb_lookup,(fnEntry Guest.Software.guestFn_nodedb_lookup).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 254) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_nodedb_lookup
def table17 := StrideCost.CoreNext.extend table16 (nm "nodedb_lookup") b_nodedb_lookup
theorem table17_sound : TblSound σ guestCtx table17 :=
 StrideCost.CoreNext.extend_sound table16_sound cc_nodedb_lookup
#print axioms cc_nodedb_lookup
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
