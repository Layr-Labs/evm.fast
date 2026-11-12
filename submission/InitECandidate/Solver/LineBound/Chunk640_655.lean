import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk640_655

/-! Line-length checks for the padded sections of `FinalChunk640_655.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk640_655
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded640_bounded : secLinesBoundedB 24 Padded640 = true := by kernel_rfl
theorem Padded641_bounded : secLinesBoundedB 24 Padded641 = true := by kernel_rfl
theorem Padded642_bounded : secLinesBoundedB 24 Padded642 = true := by kernel_rfl
theorem Padded643_bounded : secLinesBoundedB 24 Padded643 = true := by kernel_rfl
theorem Padded644_bounded : secLinesBoundedB 24 Padded644 = true := by kernel_rfl
theorem Padded645_bounded : secLinesBoundedB 24 Padded645 = true := by kernel_rfl
theorem Padded646_bounded : secLinesBoundedB 24 Padded646 = true := by kernel_rfl
theorem Padded647_bounded : secLinesBoundedB 24 Padded647 = true := by kernel_rfl
theorem Padded648_bounded : secLinesBoundedB 24 Padded648 = true := by kernel_rfl
theorem Padded649_bounded : secLinesBoundedB 24 Padded649 = true := by kernel_rfl
theorem Padded650_bounded : secLinesBoundedB 24 Padded650 = true := by kernel_rfl
theorem Padded651_bounded : secLinesBoundedB 24 Padded651 = true := by kernel_rfl
theorem Padded652_bounded : secLinesBoundedB 24 Padded652 = true := by kernel_rfl
theorem Padded653_bounded : secLinesBoundedB 24 Padded653 = true := by kernel_rfl
theorem Padded654_bounded : secLinesBoundedB 24 Padded654 = true := by kernel_rfl
theorem Padded655_bounded : secLinesBoundedB 24 Padded655 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk640_655.padded = true := by
  unfold FinalChunk640_655.padded
  exact (linesBoundedB_cons 24 Padded640_bounded
    (linesBoundedB_cons 24 Padded641_bounded
    (linesBoundedB_cons 24 Padded642_bounded
    (linesBoundedB_cons 24 Padded643_bounded
    (linesBoundedB_cons 24 Padded644_bounded
    (linesBoundedB_cons 24 Padded645_bounded
    (linesBoundedB_cons 24 Padded646_bounded
    (linesBoundedB_cons 24 Padded647_bounded
    (linesBoundedB_cons 24 Padded648_bounded
    (linesBoundedB_cons 24 Padded649_bounded
    (linesBoundedB_cons 24 Padded650_bounded
    (linesBoundedB_cons 24 Padded651_bounded
    (linesBoundedB_cons 24 Padded652_bounded
    (linesBoundedB_cons 24 Padded653_bounded
    (linesBoundedB_cons 24 Padded654_bounded
    (linesBoundedB_cons 24 Padded655_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk640_655

#print axioms InitECandidate.Solver.LineBound.Chunk640_655.bounded
