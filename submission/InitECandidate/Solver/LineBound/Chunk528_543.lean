import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk528_543

/-! Line-length checks for the padded sections of `FinalChunk528_543.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk528_543
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded528_bounded : secLinesBoundedB 24 Padded528 = true := by kernel_rfl
theorem Padded529_bounded : secLinesBoundedB 24 Padded529 = true := by kernel_rfl
theorem Padded530_bounded : secLinesBoundedB 24 Padded530 = true := by kernel_rfl
theorem Padded531_bounded : secLinesBoundedB 24 Padded531 = true := by kernel_rfl
theorem Padded532_bounded : secLinesBoundedB 24 Padded532 = true := by kernel_rfl
theorem Padded533_bounded : secLinesBoundedB 24 Padded533 = true := by kernel_rfl
theorem Padded534_bounded : secLinesBoundedB 24 Padded534 = true := by kernel_rfl
theorem Padded535_bounded : secLinesBoundedB 24 Padded535 = true := by kernel_rfl
theorem Padded536_bounded : secLinesBoundedB 24 Padded536 = true := by kernel_rfl
theorem Padded537_bounded : secLinesBoundedB 24 Padded537 = true := by kernel_rfl
theorem Padded538_bounded : secLinesBoundedB 24 Padded538 = true := by kernel_rfl
theorem Padded539_bounded : secLinesBoundedB 24 Padded539 = true := by kernel_rfl
theorem Padded540_bounded : secLinesBoundedB 24 Padded540 = true := by kernel_rfl
theorem Padded541_bounded : secLinesBoundedB 24 Padded541 = true := by kernel_rfl
theorem Padded542_bounded : secLinesBoundedB 24 Padded542 = true := by kernel_rfl
theorem Padded543_bounded : secLinesBoundedB 24 Padded543 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk528_543.padded = true := by
  unfold FinalChunk528_543.padded
  exact (linesBoundedB_cons 24 Padded528_bounded
    (linesBoundedB_cons 24 Padded529_bounded
    (linesBoundedB_cons 24 Padded530_bounded
    (linesBoundedB_cons 24 Padded531_bounded
    (linesBoundedB_cons 24 Padded532_bounded
    (linesBoundedB_cons 24 Padded533_bounded
    (linesBoundedB_cons 24 Padded534_bounded
    (linesBoundedB_cons 24 Padded535_bounded
    (linesBoundedB_cons 24 Padded536_bounded
    (linesBoundedB_cons 24 Padded537_bounded
    (linesBoundedB_cons 24 Padded538_bounded
    (linesBoundedB_cons 24 Padded539_bounded
    (linesBoundedB_cons 24 Padded540_bounded
    (linesBoundedB_cons 24 Padded541_bounded
    (linesBoundedB_cons 24 Padded542_bounded
    (linesBoundedB_cons 24 Padded543_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk528_543

#print axioms InitECandidate.Solver.LineBound.Chunk528_543.bounded
