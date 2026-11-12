import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk480_495

/-! Line-length checks for the padded sections of `FinalChunk480_495.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk480_495
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded480_bounded : secLinesBoundedB 24 Padded480 = true := by kernel_rfl
theorem Padded481_bounded : secLinesBoundedB 24 Padded481 = true := by kernel_rfl
theorem Padded482_bounded : secLinesBoundedB 24 Padded482 = true := by kernel_rfl
theorem Padded483_bounded : secLinesBoundedB 24 Padded483 = true := by kernel_rfl
theorem Padded484_bounded : secLinesBoundedB 24 Padded484 = true := by kernel_rfl
theorem Padded485_bounded : secLinesBoundedB 24 Padded485 = true := by kernel_rfl
theorem Padded486_bounded : secLinesBoundedB 24 Padded486 = true := by kernel_rfl
theorem Padded487_bounded : secLinesBoundedB 24 Padded487 = true := by kernel_rfl
theorem Padded488_bounded : secLinesBoundedB 24 Padded488 = true := by kernel_rfl
theorem Padded489_bounded : secLinesBoundedB 24 Padded489 = true := by kernel_rfl
theorem Padded490_bounded : secLinesBoundedB 24 Padded490 = true := by kernel_rfl
theorem Padded491_bounded : secLinesBoundedB 24 Padded491 = true := by kernel_rfl
theorem Padded492_bounded : secLinesBoundedB 24 Padded492 = true := by kernel_rfl
theorem Padded493_bounded : secLinesBoundedB 24 Padded493 = true := by kernel_rfl
theorem Padded494_bounded : secLinesBoundedB 24 Padded494 = true := by kernel_rfl
theorem Padded495_bounded : secLinesBoundedB 24 Padded495 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk480_495.padded = true := by
  unfold FinalChunk480_495.padded
  exact (linesBoundedB_cons 24 Padded480_bounded
    (linesBoundedB_cons 24 Padded481_bounded
    (linesBoundedB_cons 24 Padded482_bounded
    (linesBoundedB_cons 24 Padded483_bounded
    (linesBoundedB_cons 24 Padded484_bounded
    (linesBoundedB_cons 24 Padded485_bounded
    (linesBoundedB_cons 24 Padded486_bounded
    (linesBoundedB_cons 24 Padded487_bounded
    (linesBoundedB_cons 24 Padded488_bounded
    (linesBoundedB_cons 24 Padded489_bounded
    (linesBoundedB_cons 24 Padded490_bounded
    (linesBoundedB_cons 24 Padded491_bounded
    (linesBoundedB_cons 24 Padded492_bounded
    (linesBoundedB_cons 24 Padded493_bounded
    (linesBoundedB_cons 24 Padded494_bounded
    (linesBoundedB_cons 24 Padded495_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk480_495

#print axioms InitECandidate.Solver.LineBound.Chunk480_495.bounded
