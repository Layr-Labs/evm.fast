import InitECandidate.Solver.MemSafe.ConstCost.Prim.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_ecp_set_inf := (declPair Guest.Software.guestFn_ecp_set_inf).2.2
def b_ecp_set_inf : Nat := 412316860530
theorem cost_ecp_set_inf : Cost σ guestCtx body_ecp_set_inf b_ecp_set_inf :=
  ConstCost.Core.analyze_sound table3_sound (by cbv)
theorem cc_ecp_set_inf : CalleeCost σ guestCtx (nm "ecp_set_inf") b_ecp_set_inf := by
  have hc : ∃ rs, guestCode (nm "ecp_set_inf") = some ((declPair Guest.Software.guestFn_ecp_set_inf).2.1,body_ecp_set_inf,rs) :=
    declPair_valid (List.getElem_mem (n := 671) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_ecp_set_inf
def table4 := ConstCost.Core.extend table3 (nm "ecp_set_inf") b_ecp_set_inf
theorem table4_sound : TblSound σ guestCtx table4 := ConstCost.Core.extend_sound table3_sound cc_ecp_set_inf
#print axioms cc_ecp_set_inf
end InitECandidate.Solver.MemSafe.ConstCost.Prim
