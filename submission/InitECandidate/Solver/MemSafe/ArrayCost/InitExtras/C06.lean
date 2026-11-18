import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_precheck_host_ssz_header := (declPair Guest.Software.guestFn_precheck_host_ssz_header).2.2
def b_precheck_host_ssz_header : Nat := 309237645451
theorem cost_precheck_host_ssz_header : Cost σ guestCtx body_precheck_host_ssz_header b_precheck_host_ssz_header := ArrayCost.Core.analyze_sound table5_sound (by cbv)
theorem cc_precheck_host_ssz_header : CalleeCost σ guestCtx (nm "precheck_host_ssz_header") b_precheck_host_ssz_header := by
  have hc : ∃ rs, guestCode (nm "precheck_host_ssz_header") = some ((declPair Guest.Software.guestFn_precheck_host_ssz_header).2.1,body_precheck_host_ssz_header,rs) :=
    declPair_valid (List.getElem_mem (n := 199) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_precheck_host_ssz_header
def table6 := ArrayCost.Core.extend table5 (nm "precheck_host_ssz_header") b_precheck_host_ssz_header
theorem table6_sound : TblSound σ guestCtx table6 := ArrayCost.Core.extend_sound table5_sound cc_precheck_host_ssz_header
#print axioms cc_precheck_host_ssz_header
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
