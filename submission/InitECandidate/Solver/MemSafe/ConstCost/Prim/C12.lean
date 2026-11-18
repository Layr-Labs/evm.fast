import InitECandidate.Solver.MemSafe.ConstCost.Prim.C11
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_ecp_add := (declPair Guest.Software.guestFn_ecp_add).2.2
def b_ecp_add : Nat := 211315349857902785952113031058080386789041
theorem cost_ecp_add : Cost σ guestCtx body_ecp_add b_ecp_add :=
  ConstCost.Core.analyze_sound table11_sound (by cbv)
theorem cc_ecp_add : CalleeCost σ guestCtx (nm "ecp_add") b_ecp_add := by
  have hc : ∃ rs, guestCode (nm "ecp_add") = some ((declPair Guest.Software.guestFn_ecp_add).2.1,body_ecp_add,rs) :=
    declPair_valid (List.getElem_mem (n := 674) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_ecp_add
def table12 := ConstCost.Core.extend table11 (nm "ecp_add") b_ecp_add
theorem table12_sound : TblSound σ guestCtx table12 := ConstCost.Core.extend_sound table11_sound cc_ecp_add
#print axioms cc_ecp_add
end InitECandidate.Solver.MemSafe.ConstCost.Prim
