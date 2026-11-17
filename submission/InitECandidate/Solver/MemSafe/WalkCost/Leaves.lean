import InitECandidate.Solver.MemSafe.WalkCost.Table
import InitECandidate.Solver.Spec.Inv.HtabDelCode
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.WalkCost.Htab
variable {σ : Type}
def bSet : Nat := 2061584302656
def bDel : Nat := 171798691880
theorem set_cost : Cost σ guestCtx Inv.setBody bSet :=
 InitECandidate.Solver.MemSafe.WalkCost.Core.analyze_sound tableFind_sound (by cbv)
theorem cc_set : CalleeCost σ guestCtx (nm "htab_set") bSet :=
 InitECandidate.Solver.MemSafe.WalkCost.Core.callee_of_body Inv.code_htab_set set_cost
theorem del_cost : Cost σ guestCtx (declPair Guest.Software.guestFn_htab_del).2.2 bDel :=
 InitECandidate.Solver.MemSafe.WalkCost.Core.analyze_sound tableFind_sound (by cbv)
theorem cc_del : CalleeCost σ guestCtx (nm "htab_del") bDel := by
 have hc : guestCode (nm "htab_del") = some ((declPair Guest.Software.guestFn_htab_del).2.1,(declPair Guest.Software.guestFn_htab_del).2.2,(fnEntry Guest.Software.guestFn_htab_del).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 139) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact InitECandidate.Solver.MemSafe.WalkCost.Core.callee_of_body hc del_cost
#print axioms cc_set
#print axioms cc_del
end InitECandidate.Solver.MemSafe.WalkCost.Htab
