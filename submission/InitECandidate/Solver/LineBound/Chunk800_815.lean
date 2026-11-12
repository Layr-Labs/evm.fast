import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk800_815

/-! Line-length checks for the padded sections of `FinalChunk800_815.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk800_815
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded800_bounded : secLinesBoundedB 24 Padded800 = true := by kernel_rfl
theorem Padded801_bounded : secLinesBoundedB 24 Padded801 = true := by kernel_rfl
theorem Padded802_bounded : secLinesBoundedB 24 Padded802 = true := by kernel_rfl
theorem Padded803_bounded : secLinesBoundedB 24 Padded803 = true := by kernel_rfl
theorem Padded804_bounded : secLinesBoundedB 24 Padded804 = true := by kernel_rfl
theorem Padded805_bounded : secLinesBoundedB 24 Padded805 = true := by kernel_rfl
theorem Padded806_bounded : secLinesBoundedB 24 Padded806 = true := by kernel_rfl
theorem Padded807_bounded : secLinesBoundedB 24 Padded807 = true := by kernel_rfl
theorem Padded808_bounded : secLinesBoundedB 24 Padded808 = true := by kernel_rfl
theorem Padded809_bounded : secLinesBoundedB 24 Padded809 = true := by kernel_rfl
theorem Padded810_bounded : secLinesBoundedB 24 Padded810 = true := by kernel_rfl
theorem Padded811_bounded : secLinesBoundedB 24 Padded811 = true := by kernel_rfl
theorem Padded812_bounded : secLinesBoundedB 24 Padded812 = true := by kernel_rfl
theorem Padded813_bounded : secLinesBoundedB 24 Padded813 = true := by kernel_rfl
theorem Padded814_bounded : secLinesBoundedB 24 Padded814 = true := by kernel_rfl
theorem Padded815_bounded : secLinesBoundedB 24 Padded815 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk800_815.padded = true := by
  unfold FinalChunk800_815.padded
  exact (linesBoundedB_cons 24 Padded800_bounded
    (linesBoundedB_cons 24 Padded801_bounded
    (linesBoundedB_cons 24 Padded802_bounded
    (linesBoundedB_cons 24 Padded803_bounded
    (linesBoundedB_cons 24 Padded804_bounded
    (linesBoundedB_cons 24 Padded805_bounded
    (linesBoundedB_cons 24 Padded806_bounded
    (linesBoundedB_cons 24 Padded807_bounded
    (linesBoundedB_cons 24 Padded808_bounded
    (linesBoundedB_cons 24 Padded809_bounded
    (linesBoundedB_cons 24 Padded810_bounded
    (linesBoundedB_cons 24 Padded811_bounded
    (linesBoundedB_cons 24 Padded812_bounded
    (linesBoundedB_cons 24 Padded813_bounded
    (linesBoundedB_cons 24 Padded814_bounded
    (linesBoundedB_cons 24 Padded815_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk800_815

#print axioms InitECandidate.Solver.LineBound.Chunk800_815.bounded
