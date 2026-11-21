import InitECandidate.Solver.MemSafe.FqCost.Retable.S056
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_ripemd160 := (declPair Guest.Software.guestFn_pre_ripemd160).2.2
def b_pre_ripemd160 : Nat := 7858312975812585850226
theorem cost_pre_ripemd160 : Cost σ guestCtx body_pre_ripemd160 b_pre_ripemd160 := FqCost.CombCore.analyze_sound table56_sound (by cbv)
theorem cc_pre_ripemd160 : CalleeCost σ guestCtx (nm "pre_ripemd160") b_pre_ripemd160 := by
 have hc : guestCode (nm "pre_ripemd160") = some ((declPair Guest.Software.guestFn_pre_ripemd160).2.1,body_pre_ripemd160,(fnEntry Guest.Software.guestFn_pre_ripemd160).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 826) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_ripemd160
def table57 := FqCost.CombCore.extend table56 (nm "pre_ripemd160") b_pre_ripemd160
theorem table57_sound : TblSound σ guestCtx table57 := FqCost.CombCore.extend_sound table56_sound cc_pre_ripemd160
#print axioms cc_pre_ripemd160
end InitECandidate.Solver.MemSafe.FqCost.Retable
