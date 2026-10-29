import InitECandidate.Proofs.FrontendStages.Word.Checkpoints649.Data.Chunk028
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints649.Agreement.Chunk027
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
theorem output10752_source : output10752 = InitECandidate.Proofs.WordStages.sourceBody713_5378 := by
  rw [output10752_def]
  try rw [output10745_source]
  try rw [output10751_source]
  try (with_unfolding_all rfl)

theorem output10753_source : output10753 = InitECandidate.Proofs.WordStages.sourceBody713_5378 := by
  rw [output10753_def]
  try rw [output10752_source]
  try (with_unfolding_all rfl)

theorem output10754_source : output10754 = InitECandidate.Proofs.WordStages.sourceBody713_8 := by
  rw [output10754_def]
  try (with_unfolding_all rfl)

theorem output10755_source : output10755 = InitECandidate.Proofs.WordStages.sourceBody713_8 := by
  rw [output10755_def]
  try rw [output10754_source]
  try (with_unfolding_all rfl)

theorem output10756_source : output10756 = InitECandidate.Proofs.WordStages.sourceBody713_9 := by
  rw [output10756_def]
  try (with_unfolding_all rfl)

theorem output10757_source : output10757 = InitECandidate.Proofs.WordStages.sourceBody713_9 := by
  rw [output10757_def]
  try rw [output10756_source]
  try (with_unfolding_all rfl)

theorem output10758_source : output10758 = InitECandidate.Proofs.WordStages.sourceBody713_11 := by
  rw [output10758_def]
  try rw [output10757_source]
  try rw [output39_source]
  try (with_unfolding_all rfl)

theorem output10759_source : output10759 = InitECandidate.Proofs.WordStages.sourceBody713_11 := by
  rw [output10759_def]
  try rw [output10758_source]
  try (with_unfolding_all rfl)

theorem output10760_source : output10760 = InitECandidate.Proofs.WordStages.sourceBody713_12 := by
  rw [output10760_def]
  try rw [output10755_source]
  try rw [output10759_source]
  try (with_unfolding_all rfl)

theorem output10761_source : output10761 = InitECandidate.Proofs.WordStages.sourceBody713_12 := by
  rw [output10761_def]
  try rw [output10760_source]
  try (with_unfolding_all rfl)

theorem output10762_source : output10762 = InitECandidate.Proofs.WordStages.sourceBody713_5379 := by
  rw [output10762_def]
  try rw [output10753_source]
  try rw [output10761_source]
  try (with_unfolding_all rfl)

theorem output10763_source : output10763 = InitECandidate.Proofs.WordStages.sourceBody713_5379 := by
  rw [output10763_def]
  try rw [output10762_source]
  try (with_unfolding_all rfl)

#print axioms output10763_source
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
