import InitECandidate.Proofs.FrontendStages.Word.Checkpoints212.Data.Chunk004
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints212.Agreement.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
theorem output1536_source : output1536 = InitECandidate.Proofs.WordStages.sourceBody276_622 := by
  rw [output1536_def]
  try rw [output1_source]
  try rw [output1535_source]
  try (with_unfolding_all rfl)

theorem output1537_source : output1537 = InitECandidate.Proofs.WordStages.sourceBody276_622 := by
  rw [output1537_def]
  try rw [output1536_source]
  try (with_unfolding_all rfl)

theorem output1538_source : output1538 = InitECandidate.Proofs.WordStages.sourceBody276_623 := by
  rw [output1538_def]
  try rw [output1_source]
  try rw [output1537_source]
  try (with_unfolding_all rfl)

theorem output1539_source : output1539 = InitECandidate.Proofs.WordStages.sourceBody276_623 := by
  rw [output1539_def]
  try rw [output1538_source]
  try (with_unfolding_all rfl)

theorem output1540_source : output1540 = InitECandidate.Proofs.WordStages.sourceBody276_624 := by
  rw [output1540_def]
  try rw [output1_source]
  try rw [output1539_source]
  try (with_unfolding_all rfl)

theorem output1541_source : output1541 = InitECandidate.Proofs.WordStages.sourceBody276_624 := by
  rw [output1541_def]
  try rw [output1540_source]
  try (with_unfolding_all rfl)

theorem output1542_source : output1542 = InitECandidate.Proofs.WordStages.sourceBody276_625 := by
  rw [output1542_def]
  try rw [output1_source]
  try rw [output1541_source]
  try (with_unfolding_all rfl)

theorem output1543_source : output1543 = InitECandidate.Proofs.WordStages.sourceBody276_625 := by
  rw [output1543_def]
  try rw [output1542_source]
  try (with_unfolding_all rfl)

#print axioms output1543_source
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
