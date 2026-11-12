import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk768_783

/-! Line-length checks for the padded sections of `FinalChunk768_783.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk768_783
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded768_bounded : secLinesBoundedB 24 Padded768 = true := by kernel_rfl
theorem Padded769_bounded : secLinesBoundedB 24 Padded769 = true := by kernel_rfl
theorem Padded770_bounded : secLinesBoundedB 24 Padded770 = true := by kernel_rfl
theorem Padded771_bounded : secLinesBoundedB 24 Padded771 = true := by kernel_rfl
theorem Padded772_bounded : secLinesBoundedB 24 Padded772 = true := by kernel_rfl
theorem Padded773_bounded : secLinesBoundedB 24 Padded773 = true := by kernel_rfl
theorem Padded774_bounded : secLinesBoundedB 24 Padded774 = true := by kernel_rfl
theorem Padded775_bounded : secLinesBoundedB 24 Padded775 = true := by kernel_rfl
theorem Padded776_bounded : secLinesBoundedB 24 Padded776 = true := by kernel_rfl
theorem Padded777_bounded : secLinesBoundedB 24 Padded777 = true := by kernel_rfl
theorem Padded778_bounded : secLinesBoundedB 24 Padded778 = true := by kernel_rfl
theorem Padded779_bounded : secLinesBoundedB 24 Padded779 = true := by kernel_rfl
theorem Padded780_bounded : secLinesBoundedB 24 Padded780 = true := by kernel_rfl
theorem Padded781_bounded : secLinesBoundedB 24 Padded781 = true := by kernel_rfl
theorem Padded782_bounded : secLinesBoundedB 24 Padded782 = true := by kernel_rfl
theorem Padded783_bounded : secLinesBoundedB 24 Padded783 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk768_783.padded = true := by
  unfold FinalChunk768_783.padded
  exact (linesBoundedB_cons 24 Padded768_bounded
    (linesBoundedB_cons 24 Padded769_bounded
    (linesBoundedB_cons 24 Padded770_bounded
    (linesBoundedB_cons 24 Padded771_bounded
    (linesBoundedB_cons 24 Padded772_bounded
    (linesBoundedB_cons 24 Padded773_bounded
    (linesBoundedB_cons 24 Padded774_bounded
    (linesBoundedB_cons 24 Padded775_bounded
    (linesBoundedB_cons 24 Padded776_bounded
    (linesBoundedB_cons 24 Padded777_bounded
    (linesBoundedB_cons 24 Padded778_bounded
    (linesBoundedB_cons 24 Padded779_bounded
    (linesBoundedB_cons 24 Padded780_bounded
    (linesBoundedB_cons 24 Padded781_bounded
    (linesBoundedB_cons 24 Padded782_bounded
    (linesBoundedB_cons 24 Padded783_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk768_783

#print axioms InitECandidate.Solver.LineBound.Chunk768_783.bounded
