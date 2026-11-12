import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk336_351

/-! Line-length checks for the padded sections of `FinalChunk336_351.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk336_351
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded336_bounded : secLinesBoundedB 24 Padded336 = true := by kernel_rfl
theorem Padded337_bounded : secLinesBoundedB 24 Padded337 = true := by kernel_rfl
theorem Padded338_bounded : secLinesBoundedB 24 Padded338 = true := by kernel_rfl
theorem Padded339_bounded : secLinesBoundedB 24 Padded339 = true := by kernel_rfl
theorem Padded340_bounded : secLinesBoundedB 24 Padded340 = true := by kernel_rfl
theorem Padded341_bounded : secLinesBoundedB 24 Padded341 = true := by kernel_rfl
theorem Padded342_bounded : secLinesBoundedB 24 Padded342 = true := by kernel_rfl
theorem Padded343_bounded : secLinesBoundedB 24 Padded343 = true := by kernel_rfl
theorem Padded344_bounded : secLinesBoundedB 24 Padded344 = true := by kernel_rfl
theorem Padded345_bounded : secLinesBoundedB 24 Padded345 = true := by kernel_rfl
theorem Padded346_bounded : secLinesBoundedB 24 Padded346 = true := by kernel_rfl
theorem Padded347_bounded : secLinesBoundedB 24 Padded347 = true := by kernel_rfl
theorem Padded348_bounded : secLinesBoundedB 24 Padded348 = true := by kernel_rfl
theorem Padded349_bounded : secLinesBoundedB 24 Padded349 = true := by kernel_rfl
theorem Padded350_bounded : secLinesBoundedB 24 Padded350 = true := by kernel_rfl
theorem Padded351_bounded : secLinesBoundedB 24 Padded351 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk336_351.padded = true := by
  unfold FinalChunk336_351.padded
  exact (linesBoundedB_cons 24 Padded336_bounded
    (linesBoundedB_cons 24 Padded337_bounded
    (linesBoundedB_cons 24 Padded338_bounded
    (linesBoundedB_cons 24 Padded339_bounded
    (linesBoundedB_cons 24 Padded340_bounded
    (linesBoundedB_cons 24 Padded341_bounded
    (linesBoundedB_cons 24 Padded342_bounded
    (linesBoundedB_cons 24 Padded343_bounded
    (linesBoundedB_cons 24 Padded344_bounded
    (linesBoundedB_cons 24 Padded345_bounded
    (linesBoundedB_cons 24 Padded346_bounded
    (linesBoundedB_cons 24 Padded347_bounded
    (linesBoundedB_cons 24 Padded348_bounded
    (linesBoundedB_cons 24 Padded349_bounded
    (linesBoundedB_cons 24 Padded350_bounded
    (linesBoundedB_cons 24 Padded351_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk336_351

#print axioms InitECandidate.Solver.LineBound.Chunk336_351.bounded
