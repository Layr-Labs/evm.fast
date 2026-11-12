import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk624_639

/-! Line-length checks for the padded sections of `FinalChunk624_639.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk624_639
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded624_bounded : secLinesBoundedB 24 Padded624 = true := by kernel_rfl
theorem Padded625_bounded : secLinesBoundedB 24 Padded625 = true := by kernel_rfl
theorem Padded626_bounded : secLinesBoundedB 24 Padded626 = true := by kernel_rfl
theorem Padded627_bounded : secLinesBoundedB 24 Padded627 = true := by kernel_rfl
theorem Padded628_bounded : secLinesBoundedB 24 Padded628 = true := by kernel_rfl
theorem Padded629_bounded : secLinesBoundedB 24 Padded629 = true := by kernel_rfl
theorem Padded630_bounded : secLinesBoundedB 24 Padded630 = true := by kernel_rfl
theorem Padded631_bounded : secLinesBoundedB 24 Padded631 = true := by kernel_rfl
theorem Padded632_bounded : secLinesBoundedB 24 Padded632 = true := by kernel_rfl
theorem Padded633_bounded : secLinesBoundedB 24 Padded633 = true := by kernel_rfl
theorem Padded634_bounded : secLinesBoundedB 24 Padded634 = true := by kernel_rfl
theorem Padded635_bounded : secLinesBoundedB 24 Padded635 = true := by kernel_rfl
theorem Padded636_bounded : secLinesBoundedB 24 Padded636 = true := by kernel_rfl
theorem Padded637_bounded : secLinesBoundedB 24 Padded637 = true := by kernel_rfl
theorem Padded638_bounded : secLinesBoundedB 24 Padded638 = true := by kernel_rfl
theorem Padded639_bounded : secLinesBoundedB 24 Padded639 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk624_639.padded = true := by
  unfold FinalChunk624_639.padded
  exact (linesBoundedB_cons 24 Padded624_bounded
    (linesBoundedB_cons 24 Padded625_bounded
    (linesBoundedB_cons 24 Padded626_bounded
    (linesBoundedB_cons 24 Padded627_bounded
    (linesBoundedB_cons 24 Padded628_bounded
    (linesBoundedB_cons 24 Padded629_bounded
    (linesBoundedB_cons 24 Padded630_bounded
    (linesBoundedB_cons 24 Padded631_bounded
    (linesBoundedB_cons 24 Padded632_bounded
    (linesBoundedB_cons 24 Padded633_bounded
    (linesBoundedB_cons 24 Padded634_bounded
    (linesBoundedB_cons 24 Padded635_bounded
    (linesBoundedB_cons 24 Padded636_bounded
    (linesBoundedB_cons 24 Padded637_bounded
    (linesBoundedB_cons 24 Padded638_bounded
    (linesBoundedB_cons 24 Padded639_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk624_639

#print axioms InitECandidate.Solver.LineBound.Chunk624_639.bounded
