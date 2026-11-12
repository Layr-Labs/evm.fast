import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk368_383

/-! Line-length checks for the padded sections of `FinalChunk368_383.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk368_383
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded368_bounded : secLinesBoundedB 24 Padded368 = true := by kernel_rfl
theorem Padded369_bounded : secLinesBoundedB 24 Padded369 = true := by kernel_rfl
theorem Padded370_bounded : secLinesBoundedB 24 Padded370 = true := by kernel_rfl
theorem Padded371_bounded : secLinesBoundedB 24 Padded371 = true := by kernel_rfl
theorem Padded372_bounded : secLinesBoundedB 24 Padded372 = true := by kernel_rfl
theorem Padded373_bounded : secLinesBoundedB 24 Padded373 = true := by kernel_rfl
theorem Padded374_bounded : secLinesBoundedB 24 Padded374 = true := by kernel_rfl
theorem Padded375_bounded : secLinesBoundedB 24 Padded375 = true := by kernel_rfl
theorem Padded376_bounded : secLinesBoundedB 24 Padded376 = true := by kernel_rfl
theorem Padded377_bounded : secLinesBoundedB 24 Padded377 = true := by kernel_rfl
theorem Padded378_bounded : secLinesBoundedB 24 Padded378 = true := by kernel_rfl
theorem Padded379_bounded : secLinesBoundedB 24 Padded379 = true := by kernel_rfl
theorem Padded380_bounded : secLinesBoundedB 24 Padded380 = true := by kernel_rfl
theorem Padded381_bounded : secLinesBoundedB 24 Padded381 = true := by kernel_rfl
theorem Padded382_bounded : secLinesBoundedB 24 Padded382 = true := by kernel_rfl
theorem Padded383_bounded : secLinesBoundedB 24 Padded383 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk368_383.padded = true := by
  unfold FinalChunk368_383.padded
  exact (linesBoundedB_cons 24 Padded368_bounded
    (linesBoundedB_cons 24 Padded369_bounded
    (linesBoundedB_cons 24 Padded370_bounded
    (linesBoundedB_cons 24 Padded371_bounded
    (linesBoundedB_cons 24 Padded372_bounded
    (linesBoundedB_cons 24 Padded373_bounded
    (linesBoundedB_cons 24 Padded374_bounded
    (linesBoundedB_cons 24 Padded375_bounded
    (linesBoundedB_cons 24 Padded376_bounded
    (linesBoundedB_cons 24 Padded377_bounded
    (linesBoundedB_cons 24 Padded378_bounded
    (linesBoundedB_cons 24 Padded379_bounded
    (linesBoundedB_cons 24 Padded380_bounded
    (linesBoundedB_cons 24 Padded381_bounded
    (linesBoundedB_cons 24 Padded382_bounded
    (linesBoundedB_cons 24 Padded383_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk368_383

#print axioms InitECandidate.Solver.LineBound.Chunk368_383.bounded
