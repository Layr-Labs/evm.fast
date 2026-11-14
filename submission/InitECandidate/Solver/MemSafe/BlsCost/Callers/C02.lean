import InitECandidate.Solver.MemSafe.BlsCost.Callers.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callers
variable {σ : Type}
def body_frame_prologue := (declPair Guest.Software.guestFn_frame_prologue).2.2
def b_frame_prologue : Nat := 313862740045426169425495821985764863910989775251787355119039
theorem cost_frame_prologue : Cost σ guestCtx body_frame_prologue b_frame_prologue := PairCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_frame_prologue : CalleeCost σ guestCtx (nm "frame_prologue") b_frame_prologue := by
  have hc : ∃ rs, guestCode (nm "frame_prologue") = some ((declPair Guest.Software.guestFn_frame_prologue).2.1,body_frame_prologue,rs) :=
    declPair_valid (List.getElem_mem (n := 580) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact PairCost.Core.callee_of_body hc cost_frame_prologue
def table2 := PairCost.Core.extend table1 (nm "frame_prologue") b_frame_prologue
theorem table2_sound : TblSound σ guestCtx table2 := PairCost.Core.extend_sound table1_sound cc_frame_prologue
#print axioms cc_frame_prologue
end InitECandidate.Solver.MemSafe.BlsCost.Callers
