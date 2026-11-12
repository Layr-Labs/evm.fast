import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk512_527

/-! Line-length checks for the padded sections of `FinalChunk512_527.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk512_527
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded512_bounded : secLinesBoundedB 24 Padded512 = true := by kernel_rfl
theorem Padded513_bounded : secLinesBoundedB 24 Padded513 = true := by kernel_rfl
theorem Padded514_bounded : secLinesBoundedB 24 Padded514 = true := by kernel_rfl
theorem Padded515_bounded : secLinesBoundedB 24 Padded515 = true := by kernel_rfl
theorem Padded516_bounded : secLinesBoundedB 24 Padded516 = true := by kernel_rfl
theorem Padded517_bounded : secLinesBoundedB 24 Padded517 = true := by kernel_rfl
theorem Padded518_bounded : secLinesBoundedB 24 Padded518 = true := by kernel_rfl
theorem Padded519_bounded : secLinesBoundedB 24 Padded519 = true := by kernel_rfl
theorem Padded520_bounded : secLinesBoundedB 24 Padded520 = true := by kernel_rfl
theorem Padded521_bounded : secLinesBoundedB 24 Padded521 = true := by kernel_rfl
theorem Padded522_bounded : secLinesBoundedB 24 Padded522 = true := by kernel_rfl
theorem Padded523_bounded : secLinesBoundedB 24 Padded523 = true := by kernel_rfl
theorem Padded524_bounded : secLinesBoundedB 24 Padded524 = true := by kernel_rfl
theorem Padded525_bounded : secLinesBoundedB 24 Padded525 = true := by kernel_rfl
theorem Padded526_bounded : secLinesBoundedB 24 Padded526 = true := by kernel_rfl
theorem Padded527_bounded : secLinesBoundedB 24 Padded527 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk512_527.padded = true := by
  unfold FinalChunk512_527.padded
  exact (linesBoundedB_cons 24 Padded512_bounded
    (linesBoundedB_cons 24 Padded513_bounded
    (linesBoundedB_cons 24 Padded514_bounded
    (linesBoundedB_cons 24 Padded515_bounded
    (linesBoundedB_cons 24 Padded516_bounded
    (linesBoundedB_cons 24 Padded517_bounded
    (linesBoundedB_cons 24 Padded518_bounded
    (linesBoundedB_cons 24 Padded519_bounded
    (linesBoundedB_cons 24 Padded520_bounded
    (linesBoundedB_cons 24 Padded521_bounded
    (linesBoundedB_cons 24 Padded522_bounded
    (linesBoundedB_cons 24 Padded523_bounded
    (linesBoundedB_cons 24 Padded524_bounded
    (linesBoundedB_cons 24 Padded525_bounded
    (linesBoundedB_cons 24 Padded526_bounded
    (linesBoundedB_cons 24 Padded527_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk512_527

#print axioms InitECandidate.Solver.LineBound.Chunk512_527.bounded
