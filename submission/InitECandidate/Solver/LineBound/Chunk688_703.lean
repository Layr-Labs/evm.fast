import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk688_703

/-! Line-length checks for the padded sections of `FinalChunk688_703.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk688_703
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded688_bounded : secLinesBoundedB 24 Padded688 = true := by kernel_rfl
theorem Padded689_bounded : secLinesBoundedB 24 Padded689 = true := by kernel_rfl
theorem Padded690_bounded : secLinesBoundedB 24 Padded690 = true := by kernel_rfl
theorem Padded691_bounded : secLinesBoundedB 24 Padded691 = true := by kernel_rfl
theorem Padded692_bounded : secLinesBoundedB 24 Padded692 = true := by kernel_rfl
theorem Padded693_bounded : secLinesBoundedB 24 Padded693 = true := by kernel_rfl
theorem Padded694_bounded : secLinesBoundedB 24 Padded694 = true := by kernel_rfl
theorem Padded695_bounded : secLinesBoundedB 24 Padded695 = true := by kernel_rfl
theorem Padded696_bounded : secLinesBoundedB 24 Padded696 = true := by kernel_rfl
theorem Padded697_bounded : secLinesBoundedB 24 Padded697 = true := by kernel_rfl
theorem Padded698_bounded : secLinesBoundedB 24 Padded698 = true := by kernel_rfl
theorem Padded699_bounded : secLinesBoundedB 24 Padded699 = true := by kernel_rfl
theorem Padded700_bounded : secLinesBoundedB 24 Padded700 = true := by kernel_rfl
theorem Padded701_bounded : secLinesBoundedB 24 Padded701 = true := by kernel_rfl
theorem Padded702_bounded : secLinesBoundedB 24 Padded702 = true := by kernel_rfl
theorem Padded703_bounded : secLinesBoundedB 24 Padded703 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk688_703.padded = true := by
  unfold FinalChunk688_703.padded
  exact (linesBoundedB_cons 24 Padded688_bounded
    (linesBoundedB_cons 24 Padded689_bounded
    (linesBoundedB_cons 24 Padded690_bounded
    (linesBoundedB_cons 24 Padded691_bounded
    (linesBoundedB_cons 24 Padded692_bounded
    (linesBoundedB_cons 24 Padded693_bounded
    (linesBoundedB_cons 24 Padded694_bounded
    (linesBoundedB_cons 24 Padded695_bounded
    (linesBoundedB_cons 24 Padded696_bounded
    (linesBoundedB_cons 24 Padded697_bounded
    (linesBoundedB_cons 24 Padded698_bounded
    (linesBoundedB_cons 24 Padded699_bounded
    (linesBoundedB_cons 24 Padded700_bounded
    (linesBoundedB_cons 24 Padded701_bounded
    (linesBoundedB_cons 24 Padded702_bounded
    (linesBoundedB_cons 24 Padded703_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk688_703

#print axioms InitECandidate.Solver.LineBound.Chunk688_703.bounded
