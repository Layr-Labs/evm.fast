import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk112_127

/-! Line-length checks for the padded sections of `FinalChunk112_127.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk112_127
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded112_bounded : secLinesBoundedB 24 Padded112 = true := by kernel_rfl
theorem Padded113_bounded : secLinesBoundedB 24 Padded113 = true := by kernel_rfl
theorem Padded114_bounded : secLinesBoundedB 24 Padded114 = true := by kernel_rfl
theorem Padded115_bounded : secLinesBoundedB 24 Padded115 = true := by kernel_rfl
theorem Padded116_bounded : secLinesBoundedB 24 Padded116 = true := by kernel_rfl
theorem Padded117_bounded : secLinesBoundedB 24 Padded117 = true := by kernel_rfl
theorem Padded118_bounded : secLinesBoundedB 24 Padded118 = true := by kernel_rfl
theorem Padded119_bounded : secLinesBoundedB 24 Padded119 = true := by kernel_rfl
theorem Padded120_bounded : secLinesBoundedB 24 Padded120 = true := by kernel_rfl
theorem Padded121_bounded : secLinesBoundedB 24 Padded121 = true := by kernel_rfl
theorem Padded122_bounded : secLinesBoundedB 24 Padded122 = true := by kernel_rfl
theorem Padded123_bounded : secLinesBoundedB 24 Padded123 = true := by kernel_rfl
theorem Padded124_bounded : secLinesBoundedB 24 Padded124 = true := by kernel_rfl
theorem Padded125_bounded : secLinesBoundedB 24 Padded125 = true := by kernel_rfl
theorem Padded126_bounded : secLinesBoundedB 24 Padded126 = true := by kernel_rfl
theorem Padded127_bounded : secLinesBoundedB 24 Padded127 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk112_127.padded = true := by
  unfold FinalChunk112_127.padded
  exact (linesBoundedB_cons 24 Padded112_bounded
    (linesBoundedB_cons 24 Padded113_bounded
    (linesBoundedB_cons 24 Padded114_bounded
    (linesBoundedB_cons 24 Padded115_bounded
    (linesBoundedB_cons 24 Padded116_bounded
    (linesBoundedB_cons 24 Padded117_bounded
    (linesBoundedB_cons 24 Padded118_bounded
    (linesBoundedB_cons 24 Padded119_bounded
    (linesBoundedB_cons 24 Padded120_bounded
    (linesBoundedB_cons 24 Padded121_bounded
    (linesBoundedB_cons 24 Padded122_bounded
    (linesBoundedB_cons 24 Padded123_bounded
    (linesBoundedB_cons 24 Padded124_bounded
    (linesBoundedB_cons 24 Padded125_bounded
    (linesBoundedB_cons 24 Padded126_bounded
    (linesBoundedB_cons 24 Padded127_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk112_127

#print axioms InitECandidate.Solver.LineBound.Chunk112_127.bounded
