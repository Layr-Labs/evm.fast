import InitECandidate.Solver.MemSafe.ConstCost.Prim.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_ecp_linefunc := (declPair Guest.Software.guestFn_ecp_linefunc).2.2
def b_ecp_linefunc : Nat := 98001321673230277545372798621878117733328
theorem cost_ecp_linefunc : Cost σ guestCtx body_ecp_linefunc b_ecp_linefunc :=
  ConstCost.Core.analyze_sound table12_sound (by cbv)
theorem cc_ecp_linefunc : CalleeCost σ guestCtx (nm "ecp_linefunc") b_ecp_linefunc := by
  have hc : ∃ rs, guestCode (nm "ecp_linefunc") = some ((declPair Guest.Software.guestFn_ecp_linefunc).2.1,body_ecp_linefunc,rs) :=
    declPair_valid (List.getElem_mem (n := 676) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_ecp_linefunc
def table13 := ConstCost.Core.extend table12 (nm "ecp_linefunc") b_ecp_linefunc
theorem table13_sound : TblSound σ guestCtx table13 := ConstCost.Core.extend_sound table12_sound cc_ecp_linefunc
#print axioms cc_ecp_linefunc
end InitECandidate.Solver.MemSafe.ConstCost.Prim
