import InitECandidate.Solver.MemSafe.FqCost.Retable.S063
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_frame_open := (declPair Guest.Software.guestFn_frame_open).2.2
def b_frame_open : Nat := 446676598945
theorem cost_frame_open : Cost σ guestCtx body_frame_open b_frame_open := FqCost.CombCore.analyze_sound table63_sound (by cbv)
theorem cc_frame_open : CalleeCost σ guestCtx (nm "frame_open") b_frame_open := by
 have hc : guestCode (nm "frame_open") = some ((declPair Guest.Software.guestFn_frame_open).2.1,body_frame_open,(fnEntry Guest.Software.guestFn_frame_open).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 578) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_frame_open
def table64 := FqCost.CombCore.extend table63 (nm "frame_open") b_frame_open
theorem table64_sound : TblSound σ guestCtx table64 := FqCost.CombCore.extend_sound table63_sound cc_frame_open
#print axioms cc_frame_open
end InitECandidate.Solver.MemSafe.FqCost.Retable
