import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk448_463

/-! Line-length checks for the padded sections of `FinalChunk448_463.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk448_463
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded448_bounded : secLinesBoundedB 24 Padded448 = true := by kernel_rfl
theorem Padded449_bounded : secLinesBoundedB 24 Padded449 = true := by kernel_rfl
theorem Padded450_bounded : secLinesBoundedB 24 Padded450 = true := by kernel_rfl
theorem Padded451_bounded : secLinesBoundedB 24 Padded451 = true := by kernel_rfl
theorem Padded452_bounded : secLinesBoundedB 24 Padded452 = true := by kernel_rfl
theorem Padded453_bounded : secLinesBoundedB 24 Padded453 = true := by kernel_rfl
theorem Padded454_bounded : secLinesBoundedB 24 Padded454 = true := by kernel_rfl
theorem Padded455_bounded : secLinesBoundedB 24 Padded455 = true := by kernel_rfl
theorem Padded456_bounded : secLinesBoundedB 24 Padded456 = true := by kernel_rfl
theorem Padded457_bounded : secLinesBoundedB 24 Padded457 = true := by kernel_rfl
theorem Padded458_bounded : secLinesBoundedB 24 Padded458 = true := by kernel_rfl
theorem Padded459_bounded : secLinesBoundedB 24 Padded459 = true := by kernel_rfl
theorem Padded460_bounded : secLinesBoundedB 24 Padded460 = true := by kernel_rfl
theorem Padded461_bounded : secLinesBoundedB 24 Padded461 = true := by kernel_rfl
theorem Padded462_bounded : secLinesBoundedB 24 Padded462 = true := by kernel_rfl
theorem Padded463_bounded : secLinesBoundedB 24 Padded463 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk448_463.padded = true := by
  unfold FinalChunk448_463.padded
  exact (linesBoundedB_cons 24 Padded448_bounded
    (linesBoundedB_cons 24 Padded449_bounded
    (linesBoundedB_cons 24 Padded450_bounded
    (linesBoundedB_cons 24 Padded451_bounded
    (linesBoundedB_cons 24 Padded452_bounded
    (linesBoundedB_cons 24 Padded453_bounded
    (linesBoundedB_cons 24 Padded454_bounded
    (linesBoundedB_cons 24 Padded455_bounded
    (linesBoundedB_cons 24 Padded456_bounded
    (linesBoundedB_cons 24 Padded457_bounded
    (linesBoundedB_cons 24 Padded458_bounded
    (linesBoundedB_cons 24 Padded459_bounded
    (linesBoundedB_cons 24 Padded460_bounded
    (linesBoundedB_cons 24 Padded461_bounded
    (linesBoundedB_cons 24 Padded462_bounded
    (linesBoundedB_cons 24 Padded463_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk448_463

#print axioms InitECandidate.Solver.LineBound.Chunk448_463.bounded
