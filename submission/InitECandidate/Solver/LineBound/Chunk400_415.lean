import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk400_415

/-! Line-length checks for the padded sections of `FinalChunk400_415.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk400_415
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded400_bounded : secLinesBoundedB 24 Padded400 = true := by kernel_rfl
theorem Padded401_bounded : secLinesBoundedB 24 Padded401 = true := by kernel_rfl
theorem Padded402_bounded : secLinesBoundedB 24 Padded402 = true := by kernel_rfl
theorem Padded403_bounded : secLinesBoundedB 24 Padded403 = true := by kernel_rfl
theorem Padded404_bounded : secLinesBoundedB 24 Padded404 = true := by kernel_rfl
theorem Padded405_bounded : secLinesBoundedB 24 Padded405 = true := by kernel_rfl
theorem Padded406_bounded : secLinesBoundedB 24 Padded406 = true := by kernel_rfl
theorem Padded407_bounded : secLinesBoundedB 24 Padded407 = true := by kernel_rfl
theorem Padded408_bounded : secLinesBoundedB 24 Padded408 = true := by kernel_rfl
theorem Padded409_bounded : secLinesBoundedB 24 Padded409 = true := by kernel_rfl
theorem Padded410_bounded : secLinesBoundedB 24 Padded410 = true := by kernel_rfl
theorem Padded411_bounded : secLinesBoundedB 24 Padded411 = true := by kernel_rfl
theorem Padded412_bounded : secLinesBoundedB 24 Padded412 = true := by kernel_rfl
theorem Padded413_bounded : secLinesBoundedB 24 Padded413 = true := by kernel_rfl
theorem Padded414_bounded : secLinesBoundedB 24 Padded414 = true := by kernel_rfl
theorem Padded415_bounded : secLinesBoundedB 24 Padded415 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk400_415.padded = true := by
  unfold FinalChunk400_415.padded
  exact (linesBoundedB_cons 24 Padded400_bounded
    (linesBoundedB_cons 24 Padded401_bounded
    (linesBoundedB_cons 24 Padded402_bounded
    (linesBoundedB_cons 24 Padded403_bounded
    (linesBoundedB_cons 24 Padded404_bounded
    (linesBoundedB_cons 24 Padded405_bounded
    (linesBoundedB_cons 24 Padded406_bounded
    (linesBoundedB_cons 24 Padded407_bounded
    (linesBoundedB_cons 24 Padded408_bounded
    (linesBoundedB_cons 24 Padded409_bounded
    (linesBoundedB_cons 24 Padded410_bounded
    (linesBoundedB_cons 24 Padded411_bounded
    (linesBoundedB_cons 24 Padded412_bounded
    (linesBoundedB_cons 24 Padded413_bounded
    (linesBoundedB_cons 24 Padded414_bounded
    (linesBoundedB_cons 24 Padded415_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk400_415

#print axioms InitECandidate.Solver.LineBound.Chunk400_415.bounded
