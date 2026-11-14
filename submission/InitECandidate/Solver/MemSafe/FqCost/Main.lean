import InitECandidate.Solver.MemSafe.FqCost.Sqr
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost
variable {σ : Type}
theorem cc_fq12_mul : CalleeCost σ guestCtx (nm "fq12_mul") (10^14) := by
 have hc : guestCode (nm "fq12_mul") = some ((declPair Guest.Software.guestFn_fq12_mul).2.1,mulBody,(fnEntry Guest.Software.guestFn_fq12_mul).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 659) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc mul_body_cost
#print axioms cc_fq12_mul
theorem cc_fq12_sqr : CalleeCost σ guestCtx (nm "fq12_sqr") (10^14) := by
 have hc : guestCode (nm "fq12_sqr") = some ((declPair Guest.Software.guestFn_fq12_sqr).2.1,sqrBody,(fnEntry Guest.Software.guestFn_fq12_sqr).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 660) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc sqr_body_cost
#print axioms cc_fq12_sqr
end InitECandidate.Solver.MemSafe.FqCost
