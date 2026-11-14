import InitECandidate.Solver.MemSafe.ConstCost.Callers.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_ecp_is_inf := (declPair Guest.Software.guestFn_ecp_is_inf).2.2
def b_ecp_is_inf : Nat := 34359738379
theorem cost_ecp_is_inf : Cost σ guestCtx body_ecp_is_inf b_ecp_is_inf :=
  ConstCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_ecp_is_inf : CalleeCost σ guestCtx (nm "ecp_is_inf") b_ecp_is_inf := by
  have hc : ∃ rs, guestCode (nm "ecp_is_inf") = some ((declPair Guest.Software.guestFn_ecp_is_inf).2.1,body_ecp_is_inf,rs) :=
    declPair_valid (List.getElem_mem (n := 672) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_ecp_is_inf
def table2 := ConstCost.Core.extend table1 (nm "ecp_is_inf") b_ecp_is_inf
theorem table2_sound : TblSound σ guestCtx table2 := ConstCost.Core.extend_sound table1_sound cc_ecp_is_inf
#print axioms cc_ecp_is_inf
end InitECandidate.Solver.MemSafe.ConstCost.Callers
