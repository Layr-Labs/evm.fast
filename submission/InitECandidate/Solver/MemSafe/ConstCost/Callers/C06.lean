import InitECandidate.Solver.MemSafe.ConstCost.Callers.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_fq12_twist := (declPair Guest.Software.guestFn_fq12_twist).2.2
def b_fq12_twist : Nat := 664082786790982811749
theorem cost_fq12_twist : Cost σ guestCtx body_fq12_twist b_fq12_twist :=
  ConstCost.Core.analyze_sound table5_sound (by cbv)
theorem cc_fq12_twist : CalleeCost σ guestCtx (nm "fq12_twist") b_fq12_twist := by
  have hc : ∃ rs, guestCode (nm "fq12_twist") = some ((declPair Guest.Software.guestFn_fq12_twist).2.1,body_fq12_twist,rs) :=
    declPair_valid (List.getElem_mem (n := 677) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fq12_twist
def table6 := ConstCost.Core.extend table5 (nm "fq12_twist") b_fq12_twist
theorem table6_sound : TblSound σ guestCtx table6 := ConstCost.Core.extend_sound table5_sound cc_fq12_twist
#print axioms cc_fq12_twist
end InitECandidate.Solver.MemSafe.ConstCost.Callers
