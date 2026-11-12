import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk704_719

/-! Line-length checks for the padded sections of `FinalChunk704_719.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk704_719
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded704_bounded : secLinesBoundedB 24 Padded704 = true := by kernel_rfl
theorem Padded705_bounded : secLinesBoundedB 24 Padded705 = true := by kernel_rfl
theorem Padded706_bounded : secLinesBoundedB 24 Padded706 = true := by kernel_rfl
theorem Padded707_bounded : secLinesBoundedB 24 Padded707 = true := by kernel_rfl
theorem Padded708_bounded : secLinesBoundedB 24 Padded708 = true := by kernel_rfl
theorem Padded709_bounded : secLinesBoundedB 24 Padded709 = true := by kernel_rfl
theorem Padded710_bounded : secLinesBoundedB 24 Padded710 = true := by kernel_rfl
theorem Padded711_bounded : secLinesBoundedB 24 Padded711 = true := by kernel_rfl
theorem Padded712_bounded : secLinesBoundedB 24 Padded712 = true := by kernel_rfl
theorem Padded713_bounded : secLinesBoundedB 24 Padded713 = true := by kernel_rfl
theorem Padded714_bounded : secLinesBoundedB 24 Padded714 = true := by kernel_rfl
theorem Padded715_bounded : secLinesBoundedB 24 Padded715 = true := by kernel_rfl
theorem Padded716_bounded : secLinesBoundedB 24 Padded716 = true := by kernel_rfl
theorem Padded717_bounded : secLinesBoundedB 24 Padded717 = true := by kernel_rfl
theorem Padded718_bounded : secLinesBoundedB 24 Padded718 = true := by kernel_rfl
theorem Padded719_bounded : secLinesBoundedB 24 Padded719 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk704_719.padded = true := by
  unfold FinalChunk704_719.padded
  exact (linesBoundedB_cons 24 Padded704_bounded
    (linesBoundedB_cons 24 Padded705_bounded
    (linesBoundedB_cons 24 Padded706_bounded
    (linesBoundedB_cons 24 Padded707_bounded
    (linesBoundedB_cons 24 Padded708_bounded
    (linesBoundedB_cons 24 Padded709_bounded
    (linesBoundedB_cons 24 Padded710_bounded
    (linesBoundedB_cons 24 Padded711_bounded
    (linesBoundedB_cons 24 Padded712_bounded
    (linesBoundedB_cons 24 Padded713_bounded
    (linesBoundedB_cons 24 Padded714_bounded
    (linesBoundedB_cons 24 Padded715_bounded
    (linesBoundedB_cons 24 Padded716_bounded
    (linesBoundedB_cons 24 Padded717_bounded
    (linesBoundedB_cons 24 Padded718_bounded
    (linesBoundedB_cons 24 Padded719_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk704_719

#print axioms InitECandidate.Solver.LineBound.Chunk704_719.bounded
