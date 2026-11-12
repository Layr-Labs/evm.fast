import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk384_399

/-! Line-length checks for the padded sections of `FinalChunk384_399.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk384_399
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded384_bounded : secLinesBoundedB 24 Padded384 = true := by kernel_rfl
theorem Padded385_bounded : secLinesBoundedB 24 Padded385 = true := by kernel_rfl
theorem Padded386_bounded : secLinesBoundedB 24 Padded386 = true := by kernel_rfl
theorem Padded387_bounded : secLinesBoundedB 24 Padded387 = true := by kernel_rfl
theorem Padded388_bounded : secLinesBoundedB 24 Padded388 = true := by kernel_rfl
theorem Padded389_bounded : secLinesBoundedB 24 Padded389 = true := by kernel_rfl
theorem Padded390_bounded : secLinesBoundedB 24 Padded390 = true := by kernel_rfl
theorem Padded391_bounded : secLinesBoundedB 24 Padded391 = true := by kernel_rfl
theorem Padded392_bounded : secLinesBoundedB 24 Padded392 = true := by kernel_rfl
theorem Padded393_bounded : secLinesBoundedB 24 Padded393 = true := by kernel_rfl
theorem Padded394_bounded : secLinesBoundedB 24 Padded394 = true := by kernel_rfl
theorem Padded395_bounded : secLinesBoundedB 24 Padded395 = true := by kernel_rfl
theorem Padded396_bounded : secLinesBoundedB 24 Padded396 = true := by kernel_rfl
theorem Padded397_bounded : secLinesBoundedB 24 Padded397 = true := by kernel_rfl
theorem Padded398_bounded : secLinesBoundedB 24 Padded398 = true := by kernel_rfl
theorem Padded399_bounded : secLinesBoundedB 24 Padded399 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk384_399.padded = true := by
  unfold FinalChunk384_399.padded
  exact (linesBoundedB_cons 24 Padded384_bounded
    (linesBoundedB_cons 24 Padded385_bounded
    (linesBoundedB_cons 24 Padded386_bounded
    (linesBoundedB_cons 24 Padded387_bounded
    (linesBoundedB_cons 24 Padded388_bounded
    (linesBoundedB_cons 24 Padded389_bounded
    (linesBoundedB_cons 24 Padded390_bounded
    (linesBoundedB_cons 24 Padded391_bounded
    (linesBoundedB_cons 24 Padded392_bounded
    (linesBoundedB_cons 24 Padded393_bounded
    (linesBoundedB_cons 24 Padded394_bounded
    (linesBoundedB_cons 24 Padded395_bounded
    (linesBoundedB_cons 24 Padded396_bounded
    (linesBoundedB_cons 24 Padded397_bounded
    (linesBoundedB_cons 24 Padded398_bounded
    (linesBoundedB_cons 24 Padded399_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk384_399

#print axioms InitECandidate.Solver.LineBound.Chunk384_399.bounded
