import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints649.Data.Chunk028
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
theorem node10752_conditional
    (child10745 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10741 (713, 2) = (output10745, (713, 4)))
    (child10751 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10747 (713, 4) = (output10751, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10748 (713, 2) = (output10752, (713, 4)) := by
  rw [output10752_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10745 child10751

theorem node10753_conditional
    (child10752 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10748 (713, 2) = (output10752, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10749 (713, 2) = (output10753, (713, 4)) := by
  rw [output10753_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10752

theorem node10754_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_12 (713, 4) = (output10754, (713, 4)) := by
  rw [output10754_def]
  kernel_rfl

theorem node10755_conditional
    (child10754 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_12 (713, 4) = (output10754, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_13 (713, 4) = (output10755, (713, 4)) := by
  rw [output10755_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10754

theorem node10756_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_14 (713, 4) = (output10756, (713, 4)) := by
  rw [output10756_def]
  kernel_rfl

theorem node10757_conditional
    (child10756 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_14 (713, 4) = (output10756, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_15 (713, 4) = (output10757, (713, 4)) := by
  rw [output10757_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10756

theorem node10758_conditional
    (child10757 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_15 (713, 4) = (output10757, (713, 4)))
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_18 (713, 4) = (output10758, (713, 4)) := by
  rw [output10758_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10757 child39

theorem node10759_conditional
    (child10758 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_18 (713, 4) = (output10758, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_19 (713, 4) = (output10759, (713, 4)) := by
  rw [output10759_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10758

theorem node10760_conditional
    (child10755 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_13 (713, 4) = (output10755, (713, 4)))
    (child10759 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_19 (713, 4) = (output10759, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_20 (713, 4) = (output10760, (713, 4)) := by
  rw [output10760_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10755 child10759

theorem node10761_conditional
    (child10760 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_20 (713, 4) = (output10760, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_21 (713, 4) = (output10761, (713, 4)) := by
  rw [output10761_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10760

theorem node10762_conditional
    (child10753 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10749 (713, 2) = (output10753, (713, 4)))
    (child10761 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_21 (713, 4) = (output10761, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10750 (713, 2) = (output10762, (713, 4)) := by
  rw [output10762_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10753 child10761

theorem node10763_conditional
    (child10762 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10750 (713, 2) = (output10762, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10751 (713, 2) = (output10763, (713, 4)) := by
  rw [output10763_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10762

#print axioms node10763_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
