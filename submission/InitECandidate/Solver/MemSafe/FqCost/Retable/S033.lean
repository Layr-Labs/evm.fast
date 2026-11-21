import InitECandidate.Solver.MemSafe.FqCost.Retable.S032
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fq12_sqr := (declPair Guest.Software.guestFn_fq12_sqr).2.2
def b_fq12_sqr : Nat := 343597404395
theorem cost_fq12_sqr : Cost σ guestCtx body_fq12_sqr b_fq12_sqr := FqCost.CombCore.analyze_sound table32_sound (by cbv)
theorem cc_fq12_sqr : CalleeCost σ guestCtx (nm "fq12_sqr") b_fq12_sqr := by
 have hc : guestCode (nm "fq12_sqr") = some ((declPair Guest.Software.guestFn_fq12_sqr).2.1,body_fq12_sqr,(fnEntry Guest.Software.guestFn_fq12_sqr).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 660) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fq12_sqr
def table33 := FqCost.CombCore.extend table32 (nm "fq12_sqr") b_fq12_sqr
theorem table33_sound : TblSound σ guestCtx table33 := FqCost.CombCore.extend_sound table32_sound cc_fq12_sqr
#print axioms cc_fq12_sqr
end InitECandidate.Solver.MemSafe.FqCost.Retable
