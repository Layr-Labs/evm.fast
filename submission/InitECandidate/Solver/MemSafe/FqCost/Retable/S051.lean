import InitECandidate.Solver.MemSafe.FqCost.Retable.S050
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_bn254_g1_mul := (declPair Guest.Software.guestFn_bn254_g1_mul).2.2
def b_bn254_g1_mul : Nat := 489590447981505857643126343527234
theorem cost_bn254_g1_mul : Cost σ guestCtx body_bn254_g1_mul b_bn254_g1_mul := FqCost.CombCore.analyze_sound table50_sound (by cbv)
theorem cc_bn254_g1_mul : CalleeCost σ guestCtx (nm "bn254_g1_mul") b_bn254_g1_mul := by
 have hc : guestCode (nm "bn254_g1_mul") = some ((declPair Guest.Software.guestFn_bn254_g1_mul).2.1,body_bn254_g1_mul,(fnEntry Guest.Software.guestFn_bn254_g1_mul).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 690) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bn254_g1_mul
def table51 := FqCost.CombCore.extend table50 (nm "bn254_g1_mul") b_bn254_g1_mul
theorem table51_sound : TblSound σ guestCtx table51 := FqCost.CombCore.extend_sound table50_sound cc_bn254_g1_mul
#print axioms cc_bn254_g1_mul
end InitECandidate.Solver.MemSafe.FqCost.Retable
