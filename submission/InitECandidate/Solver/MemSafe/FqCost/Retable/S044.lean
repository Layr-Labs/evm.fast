import InitECandidate.Solver.MemSafe.FqCost.Retable.S043
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fq12_twist := (declPair Guest.Software.guestFn_fq12_twist).2.2
def b_fq12_twist : Nat := 137438955933
theorem cost_fq12_twist : Cost σ guestCtx body_fq12_twist b_fq12_twist := FqCost.CombCore.analyze_sound table43_sound (by cbv)
theorem cc_fq12_twist : CalleeCost σ guestCtx (nm "fq12_twist") b_fq12_twist := by
 have hc : guestCode (nm "fq12_twist") = some ((declPair Guest.Software.guestFn_fq12_twist).2.1,body_fq12_twist,(fnEntry Guest.Software.guestFn_fq12_twist).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 677) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fq12_twist
def table44 := FqCost.CombCore.extend table43 (nm "fq12_twist") b_fq12_twist
theorem table44_sound : TblSound σ guestCtx table44 := FqCost.CombCore.extend_sound table43_sound cc_fq12_twist
#print axioms cc_fq12_twist
end InitECandidate.Solver.MemSafe.FqCost.Retable
