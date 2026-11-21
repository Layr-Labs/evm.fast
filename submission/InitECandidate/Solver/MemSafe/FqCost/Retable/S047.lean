import InitECandidate.Solver.MemSafe.FqCost.Retable.S046
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_bn254_parse_g2 := (declPair Guest.Software.guestFn_bn254_parse_g2).2.2
def b_bn254_parse_g2 : Nat := 73786976884322468131
theorem cost_bn254_parse_g2 : Cost σ guestCtx body_bn254_parse_g2 b_bn254_parse_g2 := FqCost.CombCore.analyze_sound table46_sound (by cbv)
theorem cc_bn254_parse_g2 : CalleeCost σ guestCtx (nm "bn254_parse_g2") b_bn254_parse_g2 := by
 have hc : guestCode (nm "bn254_parse_g2") = some ((declPair Guest.Software.guestFn_bn254_parse_g2).2.1,body_bn254_parse_g2,(fnEntry Guest.Software.guestFn_bn254_parse_g2).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 687) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bn254_parse_g2
def table47 := FqCost.CombCore.extend table46 (nm "bn254_parse_g2") b_bn254_parse_g2
theorem table47_sound : TblSound σ guestCtx table47 := FqCost.CombCore.extend_sound table46_sound cc_bn254_parse_g2
#print axioms cc_bn254_parse_g2
end InitECandidate.Solver.MemSafe.FqCost.Retable
