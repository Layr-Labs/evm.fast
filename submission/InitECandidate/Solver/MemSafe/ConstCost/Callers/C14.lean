import InitECandidate.Solver.MemSafe.ConstCost.Callers.C13
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_frame_prologue := (declPair Guest.Software.guestFn_frame_prologue).2.2
def b_frame_prologue : Nat := 4109135169324035124705396761239309768328880116631975297875176479
theorem cost_frame_prologue : Cost σ guestCtx body_frame_prologue b_frame_prologue :=
  ConstCost.Core.analyze_sound table13_sound (by cbv)
theorem cc_frame_prologue : CalleeCost σ guestCtx (nm "frame_prologue") b_frame_prologue := by
  have hc : ∃ rs, guestCode (nm "frame_prologue") = some ((declPair Guest.Software.guestFn_frame_prologue).2.1,body_frame_prologue,rs) :=
    declPair_valid (List.getElem_mem (n := 580) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_frame_prologue
def table14 := ConstCost.Core.extend table13 (nm "frame_prologue") b_frame_prologue
theorem table14_sound : TblSound σ guestCtx table14 := ConstCost.Core.extend_sound table13_sound cc_frame_prologue
#print axioms cc_frame_prologue
end InitECandidate.Solver.MemSafe.ConstCost.Callers
