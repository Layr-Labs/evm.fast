import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk864_877

/-! Line-length checks for the padded sections of `FinalChunk864_877.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk864_877
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded864_bounded : secLinesBoundedB 24 Padded864 = true := by kernel_rfl
theorem Padded865_bounded : secLinesBoundedB 24 Padded865 = true := by kernel_rfl
theorem Padded866_bounded : secLinesBoundedB 24 Padded866 = true := by kernel_rfl
theorem Padded867_bounded : secLinesBoundedB 24 Padded867 = true := by kernel_rfl
theorem Padded868_bounded : secLinesBoundedB 24 Padded868 = true := by kernel_rfl
theorem Padded869_bounded : secLinesBoundedB 24 Padded869 = true := by kernel_rfl
theorem Padded870_bounded : secLinesBoundedB 24 Padded870 = true := by kernel_rfl
theorem Padded871_bounded : secLinesBoundedB 24 Padded871 = true := by kernel_rfl
theorem Padded872_bounded : secLinesBoundedB 24 Padded872 = true := by kernel_rfl
theorem Padded873_bounded : secLinesBoundedB 24 Padded873 = true := by kernel_rfl
theorem Padded874_bounded : secLinesBoundedB 24 Padded874 = true := by kernel_rfl
theorem Padded875_bounded : secLinesBoundedB 24 Padded875 = true := by kernel_rfl
theorem Padded876_bounded : secLinesBoundedB 24 Padded876 = true := by kernel_rfl
theorem Padded877_bounded : secLinesBoundedB 24 Padded877 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk864_877.padded = true := by
  unfold FinalChunk864_877.padded
  exact (linesBoundedB_cons 24 Padded864_bounded
    (linesBoundedB_cons 24 Padded865_bounded
    (linesBoundedB_cons 24 Padded866_bounded
    (linesBoundedB_cons 24 Padded867_bounded
    (linesBoundedB_cons 24 Padded868_bounded
    (linesBoundedB_cons 24 Padded869_bounded
    (linesBoundedB_cons 24 Padded870_bounded
    (linesBoundedB_cons 24 Padded871_bounded
    (linesBoundedB_cons 24 Padded872_bounded
    (linesBoundedB_cons 24 Padded873_bounded
    (linesBoundedB_cons 24 Padded874_bounded
    (linesBoundedB_cons 24 Padded875_bounded
    (linesBoundedB_cons 24 Padded876_bounded
    (linesBoundedB_cons 24 Padded877_bounded
    (linesBoundedB_nil 24)))))))))))))))

end InitECandidate.Solver.LineBound.Chunk864_877

#print axioms InitECandidate.Solver.LineBound.Chunk864_877.bounded
