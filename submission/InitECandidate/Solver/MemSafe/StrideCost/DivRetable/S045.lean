import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S044
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_frame_new := (declPair Guest.Software.guestFn_frame_new).2.2
def b_frame_new : Nat := 309237645432
theorem cost_frame_new : Cost σ guestCtx body_frame_new b_frame_new :=
 StrideCost.CoreNext.analyze_sound table44_sound (by cbv)
theorem cc_frame_new : CalleeCost σ guestCtx (nm "frame_new") b_frame_new := by
 have hc : guestCode (nm "frame_new") = some ((declPair Guest.Software.guestFn_frame_new).2.1,body_frame_new,(fnEntry Guest.Software.guestFn_frame_new).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 467) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_frame_new
def table45 := StrideCost.CoreNext.extend table44 (nm "frame_new") b_frame_new
theorem table45_sound : TblSound σ guestCtx table45 :=
 StrideCost.CoreNext.extend_sound table44_sound cc_frame_new
#print axioms cc_frame_new
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
