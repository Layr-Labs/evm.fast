import InitECandidate.Solver.MemSafe.ConstCost.Callers.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_fq12_cast := (declPair Guest.Software.guestFn_fq12_cast).2.2
def b_fq12_cast : Nat := 137438953509
theorem cost_fq12_cast : Cost σ guestCtx body_fq12_cast b_fq12_cast :=
  ConstCost.Core.analyze_sound table2_sound (by cbv)
theorem cc_fq12_cast : CalleeCost σ guestCtx (nm "fq12_cast") b_fq12_cast := by
  have hc : ∃ rs, guestCode (nm "fq12_cast") = some ((declPair Guest.Software.guestFn_fq12_cast).2.1,body_fq12_cast,rs) :=
    declPair_valid (List.getElem_mem (n := 678) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fq12_cast
def table3 := ConstCost.Core.extend table2 (nm "fq12_cast") b_fq12_cast
theorem table3_sound : TblSound σ guestCtx table3 := ConstCost.Core.extend_sound table2_sound cc_fq12_cast
#print axioms cc_fq12_cast
end InitECandidate.Solver.MemSafe.ConstCost.Callers
