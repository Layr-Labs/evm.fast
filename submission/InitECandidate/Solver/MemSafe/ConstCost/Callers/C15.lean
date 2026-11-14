import InitECandidate.Solver.MemSafe.ConstCost.Callers.C14
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_frame_start := (declPair Guest.Software.guestFn_frame_start).2.2
def b_frame_start : Nat := 4109135169324035124705396761239309768328880116631975297875176483
theorem cost_frame_start : Cost σ guestCtx body_frame_start b_frame_start :=
  ConstCost.Core.analyze_sound table14_sound (by cbv)
theorem cc_frame_start : CalleeCost σ guestCtx (nm "frame_start") b_frame_start := by
  have hc : ∃ rs, guestCode (nm "frame_start") = some ((declPair Guest.Software.guestFn_frame_start).2.1,body_frame_start,rs) :=
    declPair_valid (List.getElem_mem (n := 581) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_frame_start
def table15 := ConstCost.Core.extend table14 (nm "frame_start") b_frame_start
theorem table15_sound : TblSound σ guestCtx table15 := ConstCost.Core.extend_sound table14_sound cc_frame_start
#print axioms cc_frame_start
end InitECandidate.Solver.MemSafe.ConstCost.Callers
