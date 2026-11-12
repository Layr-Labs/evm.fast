import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk752_767

/-! Line-length checks for the padded sections of `FinalChunk752_767.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk752_767
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded752_bounded : secLinesBoundedB 24 Padded752 = true := by kernel_rfl
theorem Padded753_bounded : secLinesBoundedB 24 Padded753 = true := by kernel_rfl
theorem Padded754_bounded : secLinesBoundedB 24 Padded754 = true := by kernel_rfl
theorem Padded755_bounded : secLinesBoundedB 24 Padded755 = true := by kernel_rfl
theorem Padded756_bounded : secLinesBoundedB 24 Padded756 = true := by kernel_rfl
theorem Padded757_bounded : secLinesBoundedB 24 Padded757 = true := by kernel_rfl
theorem Padded758_bounded : secLinesBoundedB 24 Padded758 = true := by kernel_rfl
theorem Padded759_bounded : secLinesBoundedB 24 Padded759 = true := by kernel_rfl
theorem Padded760_bounded : secLinesBoundedB 24 Padded760 = true := by kernel_rfl
theorem Padded761_bounded : secLinesBoundedB 24 Padded761 = true := by kernel_rfl
theorem Padded762_bounded : secLinesBoundedB 24 Padded762 = true := by kernel_rfl
theorem Padded763_bounded : secLinesBoundedB 24 Padded763 = true := by kernel_rfl
theorem Padded764_bounded : secLinesBoundedB 24 Padded764 = true := by kernel_rfl
theorem Padded765_bounded : secLinesBoundedB 24 Padded765 = true := by kernel_rfl
theorem Padded766_bounded : secLinesBoundedB 24 Padded766 = true := by kernel_rfl
theorem Padded767_bounded : secLinesBoundedB 24 Padded767 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk752_767.padded = true := by
  unfold FinalChunk752_767.padded
  exact (linesBoundedB_cons 24 Padded752_bounded
    (linesBoundedB_cons 24 Padded753_bounded
    (linesBoundedB_cons 24 Padded754_bounded
    (linesBoundedB_cons 24 Padded755_bounded
    (linesBoundedB_cons 24 Padded756_bounded
    (linesBoundedB_cons 24 Padded757_bounded
    (linesBoundedB_cons 24 Padded758_bounded
    (linesBoundedB_cons 24 Padded759_bounded
    (linesBoundedB_cons 24 Padded760_bounded
    (linesBoundedB_cons 24 Padded761_bounded
    (linesBoundedB_cons 24 Padded762_bounded
    (linesBoundedB_cons 24 Padded763_bounded
    (linesBoundedB_cons 24 Padded764_bounded
    (linesBoundedB_cons 24 Padded765_bounded
    (linesBoundedB_cons 24 Padded766_bounded
    (linesBoundedB_cons 24 Padded767_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk752_767

#print axioms InitECandidate.Solver.LineBound.Chunk752_767.bounded
