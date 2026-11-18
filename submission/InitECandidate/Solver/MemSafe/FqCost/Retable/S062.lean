import InitECandidate.Solver.MemSafe.FqCost.Retable.S061
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_frame_prologue := (declPair Guest.Software.guestFn_frame_prologue).2.2
def b_frame_prologue : Nat := 100000935529823835681898445478031273678576232500
theorem cost_frame_prologue : Cost σ guestCtx body_frame_prologue b_frame_prologue := FqCost.CombCore.analyze_sound table61_sound (by cbv)
theorem cc_frame_prologue : CalleeCost σ guestCtx (nm "frame_prologue") b_frame_prologue := by
 have hc : guestCode (nm "frame_prologue") = some ((declPair Guest.Software.guestFn_frame_prologue).2.1,body_frame_prologue,(fnEntry Guest.Software.guestFn_frame_prologue).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 580) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_frame_prologue
def table62 := FqCost.CombCore.extend table61 (nm "frame_prologue") b_frame_prologue
theorem table62_sound : TblSound σ guestCtx table62 := FqCost.CombCore.extend_sound table61_sound cc_frame_prologue
#print axioms cc_frame_prologue
end InitECandidate.Solver.MemSafe.FqCost.Retable
