import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk784_799

/-! Line-length checks for the padded sections of `FinalChunk784_799.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk784_799
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded784_bounded : secLinesBoundedB 24 Padded784 = true := by kernel_rfl
theorem Padded785_bounded : secLinesBoundedB 24 Padded785 = true := by kernel_rfl
theorem Padded786_bounded : secLinesBoundedB 24 Padded786 = true := by kernel_rfl
theorem Padded787_bounded : secLinesBoundedB 24 Padded787 = true := by kernel_rfl
theorem Padded788_bounded : secLinesBoundedB 24 Padded788 = true := by kernel_rfl
theorem Padded789_bounded : secLinesBoundedB 24 Padded789 = true := by kernel_rfl
theorem Padded790_bounded : secLinesBoundedB 24 Padded790 = true := by kernel_rfl
theorem Padded791_bounded : secLinesBoundedB 24 Padded791 = true := by kernel_rfl
theorem Padded792_bounded : secLinesBoundedB 24 Padded792 = true := by kernel_rfl
theorem Padded793_bounded : secLinesBoundedB 24 Padded793 = true := by kernel_rfl
theorem Padded794_bounded : secLinesBoundedB 24 Padded794 = true := by kernel_rfl
theorem Padded795_bounded : secLinesBoundedB 24 Padded795 = true := by kernel_rfl
theorem Padded796_bounded : secLinesBoundedB 24 Padded796 = true := by kernel_rfl
theorem Padded797_bounded : secLinesBoundedB 24 Padded797 = true := by kernel_rfl
theorem Padded798_bounded : secLinesBoundedB 24 Padded798 = true := by kernel_rfl
theorem Padded799_bounded : secLinesBoundedB 24 Padded799 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk784_799.padded = true := by
  unfold FinalChunk784_799.padded
  exact (linesBoundedB_cons 24 Padded784_bounded
    (linesBoundedB_cons 24 Padded785_bounded
    (linesBoundedB_cons 24 Padded786_bounded
    (linesBoundedB_cons 24 Padded787_bounded
    (linesBoundedB_cons 24 Padded788_bounded
    (linesBoundedB_cons 24 Padded789_bounded
    (linesBoundedB_cons 24 Padded790_bounded
    (linesBoundedB_cons 24 Padded791_bounded
    (linesBoundedB_cons 24 Padded792_bounded
    (linesBoundedB_cons 24 Padded793_bounded
    (linesBoundedB_cons 24 Padded794_bounded
    (linesBoundedB_cons 24 Padded795_bounded
    (linesBoundedB_cons 24 Padded796_bounded
    (linesBoundedB_cons 24 Padded797_bounded
    (linesBoundedB_cons 24 Padded798_bounded
    (linesBoundedB_cons 24 Padded799_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk784_799

#print axioms InitECandidate.Solver.LineBound.Chunk784_799.bounded
