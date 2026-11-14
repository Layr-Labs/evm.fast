import InitECandidate.Solver.MemSafe.BlsCost.Callees.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g1_copy := (declPair Guest.Software.guestFn_g1_copy).2.2
def b_g1_copy : Nat := 137438953509
theorem cost_g1_copy : Cost σ guestCtx body_g1_copy b_g1_copy := ConstCost.Core.analyze_sound table2_sound (by cbv)
theorem cc_g1_copy : CalleeCost σ guestCtx (nm "g1_copy") b_g1_copy := by
  have hc : ∃ rs, guestCode (nm "g1_copy") = some ((declPair Guest.Software.guestFn_g1_copy).2.1,body_g1_copy,rs) :=
    declPair_valid (List.getElem_mem (n := 760) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g1_copy
def table3 := ConstCost.Core.extend table2 (nm "g1_copy") b_g1_copy
theorem table3_sound : TblSound σ guestCtx table3 := ConstCost.Core.extend_sound table2_sound cc_g1_copy
#print axioms cc_g1_copy
end InitECandidate.Solver.MemSafe.BlsCost.Callees
