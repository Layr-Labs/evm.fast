import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk592_607

/-! Line-length checks for the padded sections of `FinalChunk592_607.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk592_607
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded592_bounded : secLinesBoundedB 24 Padded592 = true := by kernel_rfl
theorem Padded593_bounded : secLinesBoundedB 24 Padded593 = true := by kernel_rfl
theorem Padded594_bounded : secLinesBoundedB 24 Padded594 = true := by kernel_rfl
theorem Padded595_bounded : secLinesBoundedB 24 Padded595 = true := by kernel_rfl
theorem Padded596_bounded : secLinesBoundedB 24 Padded596 = true := by kernel_rfl
theorem Padded597_bounded : secLinesBoundedB 24 Padded597 = true := by kernel_rfl
theorem Padded598_bounded : secLinesBoundedB 24 Padded598 = true := by kernel_rfl
theorem Padded599_bounded : secLinesBoundedB 24 Padded599 = true := by kernel_rfl
theorem Padded600_bounded : secLinesBoundedB 24 Padded600 = true := by kernel_rfl
theorem Padded601_bounded : secLinesBoundedB 24 Padded601 = true := by kernel_rfl
theorem Padded602_bounded : secLinesBoundedB 24 Padded602 = true := by kernel_rfl
theorem Padded603_bounded : secLinesBoundedB 24 Padded603 = true := by kernel_rfl
theorem Padded604_bounded : secLinesBoundedB 24 Padded604 = true := by kernel_rfl
theorem Padded605_bounded : secLinesBoundedB 24 Padded605 = true := by kernel_rfl
theorem Padded606_bounded : secLinesBoundedB 24 Padded606 = true := by kernel_rfl
theorem Padded607_bounded : secLinesBoundedB 24 Padded607 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk592_607.padded = true := by
  unfold FinalChunk592_607.padded
  exact (linesBoundedB_cons 24 Padded592_bounded
    (linesBoundedB_cons 24 Padded593_bounded
    (linesBoundedB_cons 24 Padded594_bounded
    (linesBoundedB_cons 24 Padded595_bounded
    (linesBoundedB_cons 24 Padded596_bounded
    (linesBoundedB_cons 24 Padded597_bounded
    (linesBoundedB_cons 24 Padded598_bounded
    (linesBoundedB_cons 24 Padded599_bounded
    (linesBoundedB_cons 24 Padded600_bounded
    (linesBoundedB_cons 24 Padded601_bounded
    (linesBoundedB_cons 24 Padded602_bounded
    (linesBoundedB_cons 24 Padded603_bounded
    (linesBoundedB_cons 24 Padded604_bounded
    (linesBoundedB_cons 24 Padded605_bounded
    (linesBoundedB_cons 24 Padded606_bounded
    (linesBoundedB_cons 24 Padded607_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk592_607

#print axioms InitECandidate.Solver.LineBound.Chunk592_607.bounded
