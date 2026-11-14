import InitECandidate.Solver.MemSafe.FqCost.ModexpRetable.S002
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
variable {σ : Type}
def body_frame_start := (declPair Guest.Software.guestFn_frame_start).2.2
def b_frame_start : Nat := 935529823865681898445478031273678576232504
theorem cost_frame_start : Cost σ guestCtx body_frame_start b_frame_start := FqCost.CombCore.analyze_sound table2_sound (by cbv)
theorem cc_frame_start : CalleeCost σ guestCtx (nm "frame_start") b_frame_start := by
 have hc : guestCode (nm "frame_start") = some ((declPair Guest.Software.guestFn_frame_start).2.1,body_frame_start,(fnEntry Guest.Software.guestFn_frame_start).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 581) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_frame_start
def table3 := FqCost.CombCore.extend table2 (nm "frame_start") b_frame_start
theorem table3_sound : TblSound σ guestCtx table3 := FqCost.CombCore.extend_sound table2_sound cc_frame_start
#print axioms cc_frame_start
end InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
