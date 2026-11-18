import InitECandidate.Solver.MemSafe.FqCost.Retable.S051
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_alt_bn128_mul := (declPair Guest.Software.guestFn_pre_alt_bn128_mul).2.2
def b_pre_alt_bn128_mul : Nat := 489590447981505857643401221434263
theorem cost_pre_alt_bn128_mul : Cost σ guestCtx body_pre_alt_bn128_mul b_pre_alt_bn128_mul := FqCost.CombCore.analyze_sound table51_sound (by cbv)
theorem cc_pre_alt_bn128_mul : CalleeCost σ guestCtx (nm "pre_alt_bn128_mul") b_pre_alt_bn128_mul := by
 have hc : guestCode (nm "pre_alt_bn128_mul") = some ((declPair Guest.Software.guestFn_pre_alt_bn128_mul).2.1,body_pre_alt_bn128_mul,(fnEntry Guest.Software.guestFn_pre_alt_bn128_mul).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 693) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_alt_bn128_mul
def table52 := FqCost.CombCore.extend table51 (nm "pre_alt_bn128_mul") b_pre_alt_bn128_mul
theorem table52_sound : TblSound σ guestCtx table52 := FqCost.CombCore.extend_sound table51_sound cc_pre_alt_bn128_mul
#print axioms cc_pre_alt_bn128_mul
end InitECandidate.Solver.MemSafe.FqCost.Retable
