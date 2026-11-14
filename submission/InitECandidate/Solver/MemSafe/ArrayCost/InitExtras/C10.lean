import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C09
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_header_init := (declPair Guest.Software.guestFn_header_init).2.2
def b_header_init : Nat := 137438953512
theorem cost_header_init : Cost σ guestCtx body_header_init b_header_init := ArrayCost.Core.analyze_sound table9_sound (by cbv)
theorem cc_header_init : CalleeCost σ guestCtx (nm "header_init") b_header_init := by
  have hc : ∃ rs, guestCode (nm "header_init") = some ((declPair Guest.Software.guestFn_header_init).2.1,body_header_init,rs) :=
    declPair_valid (List.getElem_mem (n := 238) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_header_init
def table10 := ArrayCost.Core.extend table9 (nm "header_init") b_header_init
theorem table10_sound : TblSound σ guestCtx table10 := ArrayCost.Core.extend_sound table9_sound cc_header_init
#print axioms cc_header_init
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
