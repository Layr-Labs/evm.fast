import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk672_687

/-! Line-length checks for the padded sections of `FinalChunk672_687.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk672_687
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded672_bounded : secLinesBoundedB 24 Padded672 = true := by kernel_rfl
theorem Padded673_bounded : secLinesBoundedB 24 Padded673 = true := by kernel_rfl
theorem Padded674_bounded : secLinesBoundedB 24 Padded674 = true := by kernel_rfl
theorem Padded675_bounded : secLinesBoundedB 24 Padded675 = true := by kernel_rfl
theorem Padded676_bounded : secLinesBoundedB 24 Padded676 = true := by kernel_rfl
theorem Padded677_bounded : secLinesBoundedB 24 Padded677 = true := by kernel_rfl
theorem Padded678_bounded : secLinesBoundedB 24 Padded678 = true := by kernel_rfl
theorem Padded679_bounded : secLinesBoundedB 24 Padded679 = true := by kernel_rfl
theorem Padded680_bounded : secLinesBoundedB 24 Padded680 = true := by kernel_rfl
theorem Padded681_bounded : secLinesBoundedB 24 Padded681 = true := by kernel_rfl
theorem Padded682_bounded : secLinesBoundedB 24 Padded682 = true := by kernel_rfl
theorem Padded683_bounded : secLinesBoundedB 24 Padded683 = true := by kernel_rfl
theorem Padded684_bounded : secLinesBoundedB 24 Padded684 = true := by kernel_rfl
theorem Padded685_bounded : secLinesBoundedB 24 Padded685 = true := by kernel_rfl
theorem Padded686_bounded : secLinesBoundedB 24 Padded686 = true := by kernel_rfl
theorem Padded687_bounded : secLinesBoundedB 24 Padded687 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk672_687.padded = true := by
  unfold FinalChunk672_687.padded
  exact (linesBoundedB_cons 24 Padded672_bounded
    (linesBoundedB_cons 24 Padded673_bounded
    (linesBoundedB_cons 24 Padded674_bounded
    (linesBoundedB_cons 24 Padded675_bounded
    (linesBoundedB_cons 24 Padded676_bounded
    (linesBoundedB_cons 24 Padded677_bounded
    (linesBoundedB_cons 24 Padded678_bounded
    (linesBoundedB_cons 24 Padded679_bounded
    (linesBoundedB_cons 24 Padded680_bounded
    (linesBoundedB_cons 24 Padded681_bounded
    (linesBoundedB_cons 24 Padded682_bounded
    (linesBoundedB_cons 24 Padded683_bounded
    (linesBoundedB_cons 24 Padded684_bounded
    (linesBoundedB_cons 24 Padded685_bounded
    (linesBoundedB_cons 24 Padded686_bounded
    (linesBoundedB_cons 24 Padded687_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk672_687

#print axioms InitECandidate.Solver.LineBound.Chunk672_687.bounded
