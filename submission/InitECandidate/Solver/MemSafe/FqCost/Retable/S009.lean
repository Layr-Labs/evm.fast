import InitECandidate.Solver.MemSafe.FqCost.Retable.S008
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_taylor_exponential := (declPair Guest.Software.guestFn_taylor_exponential).2.2
def b_taylor_exponential : Nat := 1845354972104797038729527740129256583201024
theorem cost_taylor_exponential : Cost σ guestCtx body_taylor_exponential b_taylor_exponential := FqCost.CombCore.analyze_sound table8_sound (by cbv)
theorem cc_taylor_exponential : CalleeCost σ guestCtx (nm "taylor_exponential") b_taylor_exponential := by
 have hc : guestCode (nm "taylor_exponential") = some ((declPair Guest.Software.guestFn_taylor_exponential).2.1,body_taylor_exponential,(fnEntry Guest.Software.guestFn_taylor_exponential).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 232) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_taylor_exponential
def table9 := FqCost.CombCore.extend table8 (nm "taylor_exponential") b_taylor_exponential
theorem table9_sound : TblSound σ guestCtx table9 := FqCost.CombCore.extend_sound table8_sound cc_taylor_exponential
#print axioms cc_taylor_exponential
end InitECandidate.Solver.MemSafe.FqCost.Retable
