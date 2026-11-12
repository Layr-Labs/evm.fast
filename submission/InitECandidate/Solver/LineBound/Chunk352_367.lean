import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk352_367

/-! Line-length checks for the padded sections of `FinalChunk352_367.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk352_367
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded352_bounded : secLinesBoundedB 24 Padded352 = true := by kernel_rfl
theorem Padded353_bounded : secLinesBoundedB 24 Padded353 = true := by kernel_rfl
theorem Padded354_bounded : secLinesBoundedB 24 Padded354 = true := by kernel_rfl
theorem Padded355_bounded : secLinesBoundedB 24 Padded355 = true := by kernel_rfl
theorem Padded356_bounded : secLinesBoundedB 24 Padded356 = true := by kernel_rfl
theorem Padded357_bounded : secLinesBoundedB 24 Padded357 = true := by kernel_rfl
theorem Padded358_bounded : secLinesBoundedB 24 Padded358 = true := by kernel_rfl
theorem Padded359_bounded : secLinesBoundedB 24 Padded359 = true := by kernel_rfl
theorem Padded360_bounded : secLinesBoundedB 24 Padded360 = true := by kernel_rfl
theorem Padded361_bounded : secLinesBoundedB 24 Padded361 = true := by kernel_rfl
theorem Padded362_bounded : secLinesBoundedB 24 Padded362 = true := by kernel_rfl
theorem Padded363_bounded : secLinesBoundedB 24 Padded363 = true := by kernel_rfl
theorem Padded364_bounded : secLinesBoundedB 24 Padded364 = true := by kernel_rfl
theorem Padded365_bounded : secLinesBoundedB 24 Padded365 = true := by kernel_rfl
theorem Padded366_bounded : secLinesBoundedB 24 Padded366 = true := by kernel_rfl
theorem Padded367_bounded : secLinesBoundedB 24 Padded367 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk352_367.padded = true := by
  unfold FinalChunk352_367.padded
  exact (linesBoundedB_cons 24 Padded352_bounded
    (linesBoundedB_cons 24 Padded353_bounded
    (linesBoundedB_cons 24 Padded354_bounded
    (linesBoundedB_cons 24 Padded355_bounded
    (linesBoundedB_cons 24 Padded356_bounded
    (linesBoundedB_cons 24 Padded357_bounded
    (linesBoundedB_cons 24 Padded358_bounded
    (linesBoundedB_cons 24 Padded359_bounded
    (linesBoundedB_cons 24 Padded360_bounded
    (linesBoundedB_cons 24 Padded361_bounded
    (linesBoundedB_cons 24 Padded362_bounded
    (linesBoundedB_cons 24 Padded363_bounded
    (linesBoundedB_cons 24 Padded364_bounded
    (linesBoundedB_cons 24 Padded365_bounded
    (linesBoundedB_cons 24 Padded366_bounded
    (linesBoundedB_cons 24 Padded367_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk352_367

#print axioms InitECandidate.Solver.LineBound.Chunk352_367.bounded
