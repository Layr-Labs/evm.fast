import InitECandidate.Solver.MemSafe.FqCost.Retable.S055
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_ripemd160 := (declPair Guest.Software.guestFn_ripemd160).2.2
def b_ripemd160 : Nat := 7858312975675146896709
theorem cost_ripemd160 : Cost σ guestCtx body_ripemd160 b_ripemd160 := FqCost.CombCore.analyze_sound table55_sound (by cbv)
theorem cc_ripemd160 : CalleeCost σ guestCtx (nm "ripemd160") b_ripemd160 := by
 have hc : guestCode (nm "ripemd160") = some ((declPair Guest.Software.guestFn_ripemd160).2.1,body_ripemd160,(fnEntry Guest.Software.guestFn_ripemd160).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 617) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_ripemd160
def table56 := FqCost.CombCore.extend table55 (nm "ripemd160") b_ripemd160
theorem table56_sound : TblSound σ guestCtx table56 := FqCost.CombCore.extend_sound table55_sound cc_ripemd160
#print axioms cc_ripemd160
end InitECandidate.Solver.MemSafe.FqCost.Retable
