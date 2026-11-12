import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk576_591

/-! Line-length checks for the padded sections of `FinalChunk576_591.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk576_591
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded576_bounded : secLinesBoundedB 24 Padded576 = true := by kernel_rfl
theorem Padded577_bounded : secLinesBoundedB 24 Padded577 = true := by kernel_rfl
theorem Padded578_bounded : secLinesBoundedB 24 Padded578 = true := by kernel_rfl
theorem Padded579_bounded : secLinesBoundedB 24 Padded579 = true := by kernel_rfl
theorem Padded580_bounded : secLinesBoundedB 24 Padded580 = true := by kernel_rfl
theorem Padded581_bounded : secLinesBoundedB 24 Padded581 = true := by kernel_rfl
theorem Padded582_bounded : secLinesBoundedB 24 Padded582 = true := by kernel_rfl
theorem Padded583_bounded : secLinesBoundedB 24 Padded583 = true := by kernel_rfl
theorem Padded584_bounded : secLinesBoundedB 24 Padded584 = true := by kernel_rfl
theorem Padded585_bounded : secLinesBoundedB 24 Padded585 = true := by kernel_rfl
theorem Padded586_bounded : secLinesBoundedB 24 Padded586 = true := by kernel_rfl
theorem Padded587_bounded : secLinesBoundedB 24 Padded587 = true := by kernel_rfl
theorem Padded588_bounded : secLinesBoundedB 24 Padded588 = true := by kernel_rfl
theorem Padded589_bounded : secLinesBoundedB 24 Padded589 = true := by kernel_rfl
theorem Padded590_bounded : secLinesBoundedB 24 Padded590 = true := by kernel_rfl
theorem Padded591_bounded : secLinesBoundedB 24 Padded591 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk576_591.padded = true := by
  unfold FinalChunk576_591.padded
  exact (linesBoundedB_cons 24 Padded576_bounded
    (linesBoundedB_cons 24 Padded577_bounded
    (linesBoundedB_cons 24 Padded578_bounded
    (linesBoundedB_cons 24 Padded579_bounded
    (linesBoundedB_cons 24 Padded580_bounded
    (linesBoundedB_cons 24 Padded581_bounded
    (linesBoundedB_cons 24 Padded582_bounded
    (linesBoundedB_cons 24 Padded583_bounded
    (linesBoundedB_cons 24 Padded584_bounded
    (linesBoundedB_cons 24 Padded585_bounded
    (linesBoundedB_cons 24 Padded586_bounded
    (linesBoundedB_cons 24 Padded587_bounded
    (linesBoundedB_cons 24 Padded588_bounded
    (linesBoundedB_cons 24 Padded589_bounded
    (linesBoundedB_cons 24 Padded590_bounded
    (linesBoundedB_cons 24 Padded591_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk576_591

#print axioms InitECandidate.Solver.LineBound.Chunk576_591.bounded
