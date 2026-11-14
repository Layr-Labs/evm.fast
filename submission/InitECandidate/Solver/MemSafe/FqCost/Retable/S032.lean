import InitECandidate.Solver.MemSafe.FqCost.Retable.S031
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fq12_mul := (declPair Guest.Software.guestFn_fq12_mul).2.2
def b_fq12_mul : Nat := 343597404131
theorem cost_fq12_mul : Cost σ guestCtx body_fq12_mul b_fq12_mul := FqCost.CombCore.analyze_sound table31_sound (by cbv)
theorem cc_fq12_mul : CalleeCost σ guestCtx (nm "fq12_mul") b_fq12_mul := by
 have hc : guestCode (nm "fq12_mul") = some ((declPair Guest.Software.guestFn_fq12_mul).2.1,body_fq12_mul,(fnEntry Guest.Software.guestFn_fq12_mul).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 659) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fq12_mul
def table32 := FqCost.CombCore.extend table31 (nm "fq12_mul") b_fq12_mul
theorem table32_sound : TblSound σ guestCtx table32 := FqCost.CombCore.extend_sound table31_sound cc_fq12_mul
#print axioms cc_fq12_mul
end InitECandidate.Solver.MemSafe.FqCost.Retable
