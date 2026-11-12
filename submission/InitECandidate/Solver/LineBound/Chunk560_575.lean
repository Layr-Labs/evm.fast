import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk560_575

/-! Line-length checks for the padded sections of `FinalChunk560_575.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk560_575
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded560_bounded : secLinesBoundedB 24 Padded560 = true := by kernel_rfl
theorem Padded561_bounded : secLinesBoundedB 24 Padded561 = true := by kernel_rfl
theorem Padded562_bounded : secLinesBoundedB 24 Padded562 = true := by kernel_rfl
theorem Padded563_bounded : secLinesBoundedB 24 Padded563 = true := by kernel_rfl
theorem Padded564_bounded : secLinesBoundedB 24 Padded564 = true := by kernel_rfl
theorem Padded565_bounded : secLinesBoundedB 24 Padded565 = true := by kernel_rfl
theorem Padded566_bounded : secLinesBoundedB 24 Padded566 = true := by kernel_rfl
theorem Padded567_bounded : secLinesBoundedB 24 Padded567 = true := by kernel_rfl
theorem Padded568_bounded : secLinesBoundedB 24 Padded568 = true := by kernel_rfl
theorem Padded569_bounded : secLinesBoundedB 24 Padded569 = true := by kernel_rfl
theorem Padded570_bounded : secLinesBoundedB 24 Padded570 = true := by kernel_rfl
theorem Padded571_bounded : secLinesBoundedB 24 Padded571 = true := by kernel_rfl
theorem Padded572_bounded : secLinesBoundedB 24 Padded572 = true := by kernel_rfl
theorem Padded573_bounded : secLinesBoundedB 24 Padded573 = true := by kernel_rfl
theorem Padded574_bounded : secLinesBoundedB 24 Padded574 = true := by kernel_rfl
theorem Padded575_bounded : secLinesBoundedB 24 Padded575 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk560_575.padded = true := by
  unfold FinalChunk560_575.padded
  exact (linesBoundedB_cons 24 Padded560_bounded
    (linesBoundedB_cons 24 Padded561_bounded
    (linesBoundedB_cons 24 Padded562_bounded
    (linesBoundedB_cons 24 Padded563_bounded
    (linesBoundedB_cons 24 Padded564_bounded
    (linesBoundedB_cons 24 Padded565_bounded
    (linesBoundedB_cons 24 Padded566_bounded
    (linesBoundedB_cons 24 Padded567_bounded
    (linesBoundedB_cons 24 Padded568_bounded
    (linesBoundedB_cons 24 Padded569_bounded
    (linesBoundedB_cons 24 Padded570_bounded
    (linesBoundedB_cons 24 Padded571_bounded
    (linesBoundedB_cons 24 Padded572_bounded
    (linesBoundedB_cons 24 Padded573_bounded
    (linesBoundedB_cons 24 Padded574_bounded
    (linesBoundedB_cons 24 Padded575_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk560_575

#print axioms InitECandidate.Solver.LineBound.Chunk560_575.bounded
