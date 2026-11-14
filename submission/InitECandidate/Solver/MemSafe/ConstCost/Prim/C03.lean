import InitECandidate.Solver.MemSafe.ConstCost.Prim.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_fe_set_zero := (declPair Guest.Software.guestFn_fe_set_zero).2.2
def b_fe_set_zero : Nat := 137438953509
theorem cost_fe_set_zero : Cost σ guestCtx body_fe_set_zero b_fe_set_zero :=
  ConstCost.Core.analyze_sound table2_sound (by cbv)
theorem cc_fe_set_zero : CalleeCost σ guestCtx (nm "fe_set_zero") b_fe_set_zero := by
  have hc : ∃ rs, guestCode (nm "fe_set_zero") = some ((declPair Guest.Software.guestFn_fe_set_zero).2.1,body_fe_set_zero,rs) :=
    declPair_valid (List.getElem_mem (n := 669) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fe_set_zero
def table3 := ConstCost.Core.extend table2 (nm "fe_set_zero") b_fe_set_zero
theorem table3_sound : TblSound σ guestCtx table3 := ConstCost.Core.extend_sound table2_sound cc_fe_set_zero
#print axioms cc_fe_set_zero
end InitECandidate.Solver.MemSafe.ConstCost.Prim
