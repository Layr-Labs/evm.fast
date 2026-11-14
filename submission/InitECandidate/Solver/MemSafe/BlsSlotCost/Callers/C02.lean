import InitECandidate.Solver.MemSafe.BlsSlotCost.Callers.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def body_frame_prologue := (declPair Guest.Software.guestFn_frame_prologue).2.2
def b_frame_prologue : Nat := 75325220848024197701404064040884136072461827619153873289831
theorem cost_frame_prologue : Cost σ guestCtx body_frame_prologue b_frame_prologue := BlsSlotCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_frame_prologue : CalleeCost σ guestCtx (nm "frame_prologue") b_frame_prologue := by
 have hc : ∃ rs, guestCode (nm "frame_prologue") = some ((declPair Guest.Software.guestFn_frame_prologue).2.1,body_frame_prologue,rs) :=
  declPair_valid (List.getElem_mem (n := 580) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_frame_prologue
def table2 := BlsSlotCost.Core.extend table1 (nm "frame_prologue") b_frame_prologue
theorem table2_sound : TblSound σ guestCtx table2 := BlsSlotCost.Core.extend_sound table1_sound cc_frame_prologue
#print axioms cc_frame_prologue
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
