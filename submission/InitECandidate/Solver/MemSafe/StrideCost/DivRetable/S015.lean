import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S014
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_taylor_exponential := (declPair Guest.Software.guestFn_taylor_exponential).2.2
def b_taylor_exponential : Nat := 1844674407371635726533841876929527740129256583201024
theorem cost_taylor_exponential : Cost σ guestCtx body_taylor_exponential b_taylor_exponential :=
 StrideCost.CoreNext.analyze_sound table14_sound (by cbv)
theorem cc_taylor_exponential : CalleeCost σ guestCtx (nm "taylor_exponential") b_taylor_exponential := by
 have hc : guestCode (nm "taylor_exponential") = some ((declPair Guest.Software.guestFn_taylor_exponential).2.1,body_taylor_exponential,(fnEntry Guest.Software.guestFn_taylor_exponential).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 232) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_taylor_exponential
def table15 := StrideCost.CoreNext.extend table14 (nm "taylor_exponential") b_taylor_exponential
theorem table15_sound : TblSound σ guestCtx table15 :=
 StrideCost.CoreNext.extend_sound table14_sound cc_taylor_exponential
#print axioms cc_taylor_exponential
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
