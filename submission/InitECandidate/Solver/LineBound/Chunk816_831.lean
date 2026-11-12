import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk816_831

/-! Line-length checks for the padded sections of `FinalChunk816_831.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk816_831
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded816_bounded : secLinesBoundedB 24 Padded816 = true := by kernel_rfl
theorem Padded817_bounded : secLinesBoundedB 24 Padded817 = true := by kernel_rfl
theorem Padded818_bounded : secLinesBoundedB 24 Padded818 = true := by kernel_rfl
theorem Padded819_bounded : secLinesBoundedB 24 Padded819 = true := by kernel_rfl
theorem Padded820_bounded : secLinesBoundedB 24 Padded820 = true := by kernel_rfl
theorem Padded821_bounded : secLinesBoundedB 24 Padded821 = true := by kernel_rfl
theorem Padded822_bounded : secLinesBoundedB 24 Padded822 = true := by kernel_rfl
theorem Padded823_bounded : secLinesBoundedB 24 Padded823 = true := by kernel_rfl
theorem Padded824_bounded : secLinesBoundedB 24 Padded824 = true := by kernel_rfl
theorem Padded825_bounded : secLinesBoundedB 24 Padded825 = true := by kernel_rfl
theorem Padded826_bounded : secLinesBoundedB 24 Padded826 = true := by kernel_rfl
theorem Padded827_bounded : secLinesBoundedB 24 Padded827 = true := by kernel_rfl
theorem Padded828_bounded : secLinesBoundedB 24 Padded828 = true := by kernel_rfl
theorem Padded829_bounded : secLinesBoundedB 24 Padded829 = true := by kernel_rfl
theorem Padded830_bounded : secLinesBoundedB 24 Padded830 = true := by kernel_rfl
theorem Padded831_bounded : secLinesBoundedB 24 Padded831 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk816_831.padded = true := by
  unfold FinalChunk816_831.padded
  exact (linesBoundedB_cons 24 Padded816_bounded
    (linesBoundedB_cons 24 Padded817_bounded
    (linesBoundedB_cons 24 Padded818_bounded
    (linesBoundedB_cons 24 Padded819_bounded
    (linesBoundedB_cons 24 Padded820_bounded
    (linesBoundedB_cons 24 Padded821_bounded
    (linesBoundedB_cons 24 Padded822_bounded
    (linesBoundedB_cons 24 Padded823_bounded
    (linesBoundedB_cons 24 Padded824_bounded
    (linesBoundedB_cons 24 Padded825_bounded
    (linesBoundedB_cons 24 Padded826_bounded
    (linesBoundedB_cons 24 Padded827_bounded
    (linesBoundedB_cons 24 Padded828_bounded
    (linesBoundedB_cons 24 Padded829_bounded
    (linesBoundedB_cons 24 Padded830_bounded
    (linesBoundedB_cons 24 Padded831_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk816_831

#print axioms InitECandidate.Solver.LineBound.Chunk816_831.bounded
