import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk432_447

/-! Line-length checks for the padded sections of `FinalChunk432_447.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk432_447
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded432_bounded : secLinesBoundedB 24 Padded432 = true := by kernel_rfl
theorem Padded433_bounded : secLinesBoundedB 24 Padded433 = true := by kernel_rfl
theorem Padded434_bounded : secLinesBoundedB 24 Padded434 = true := by kernel_rfl
theorem Padded435_bounded : secLinesBoundedB 24 Padded435 = true := by kernel_rfl
theorem Padded436_bounded : secLinesBoundedB 24 Padded436 = true := by kernel_rfl
theorem Padded437_bounded : secLinesBoundedB 24 Padded437 = true := by kernel_rfl
theorem Padded438_bounded : secLinesBoundedB 24 Padded438 = true := by kernel_rfl
theorem Padded439_bounded : secLinesBoundedB 24 Padded439 = true := by kernel_rfl
theorem Padded440_bounded : secLinesBoundedB 24 Padded440 = true := by kernel_rfl
theorem Padded441_bounded : secLinesBoundedB 24 Padded441 = true := by kernel_rfl
theorem Padded442_bounded : secLinesBoundedB 24 Padded442 = true := by kernel_rfl
theorem Padded443_bounded : secLinesBoundedB 24 Padded443 = true := by kernel_rfl
theorem Padded444_bounded : secLinesBoundedB 24 Padded444 = true := by kernel_rfl
theorem Padded445_bounded : secLinesBoundedB 24 Padded445 = true := by kernel_rfl
theorem Padded446_bounded : secLinesBoundedB 24 Padded446 = true := by kernel_rfl
theorem Padded447_bounded : secLinesBoundedB 24 Padded447 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk432_447.padded = true := by
  unfold FinalChunk432_447.padded
  exact (linesBoundedB_cons 24 Padded432_bounded
    (linesBoundedB_cons 24 Padded433_bounded
    (linesBoundedB_cons 24 Padded434_bounded
    (linesBoundedB_cons 24 Padded435_bounded
    (linesBoundedB_cons 24 Padded436_bounded
    (linesBoundedB_cons 24 Padded437_bounded
    (linesBoundedB_cons 24 Padded438_bounded
    (linesBoundedB_cons 24 Padded439_bounded
    (linesBoundedB_cons 24 Padded440_bounded
    (linesBoundedB_cons 24 Padded441_bounded
    (linesBoundedB_cons 24 Padded442_bounded
    (linesBoundedB_cons 24 Padded443_bounded
    (linesBoundedB_cons 24 Padded444_bounded
    (linesBoundedB_cons 24 Padded445_bounded
    (linesBoundedB_cons 24 Padded446_bounded
    (linesBoundedB_cons 24 Padded447_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk432_447

#print axioms InitECandidate.Solver.LineBound.Chunk432_447.bounded
