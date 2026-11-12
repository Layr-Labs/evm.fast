import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk496_511

/-! Line-length checks for the padded sections of `FinalChunk496_511.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk496_511
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded496_bounded : secLinesBoundedB 24 Padded496 = true := by kernel_rfl
theorem Padded497_bounded : secLinesBoundedB 24 Padded497 = true := by kernel_rfl
theorem Padded498_bounded : secLinesBoundedB 24 Padded498 = true := by kernel_rfl
theorem Padded499_bounded : secLinesBoundedB 24 Padded499 = true := by kernel_rfl
theorem Padded500_bounded : secLinesBoundedB 24 Padded500 = true := by kernel_rfl
theorem Padded501_bounded : secLinesBoundedB 24 Padded501 = true := by kernel_rfl
theorem Padded502_bounded : secLinesBoundedB 24 Padded502 = true := by kernel_rfl
theorem Padded503_bounded : secLinesBoundedB 24 Padded503 = true := by kernel_rfl
theorem Padded504_bounded : secLinesBoundedB 24 Padded504 = true := by kernel_rfl
theorem Padded505_bounded : secLinesBoundedB 24 Padded505 = true := by kernel_rfl
theorem Padded506_bounded : secLinesBoundedB 24 Padded506 = true := by kernel_rfl
theorem Padded507_bounded : secLinesBoundedB 24 Padded507 = true := by kernel_rfl
theorem Padded508_bounded : secLinesBoundedB 24 Padded508 = true := by kernel_rfl
theorem Padded509_bounded : secLinesBoundedB 24 Padded509 = true := by kernel_rfl
theorem Padded510_bounded : secLinesBoundedB 24 Padded510 = true := by kernel_rfl
theorem Padded511_bounded : secLinesBoundedB 24 Padded511 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk496_511.padded = true := by
  unfold FinalChunk496_511.padded
  exact (linesBoundedB_cons 24 Padded496_bounded
    (linesBoundedB_cons 24 Padded497_bounded
    (linesBoundedB_cons 24 Padded498_bounded
    (linesBoundedB_cons 24 Padded499_bounded
    (linesBoundedB_cons 24 Padded500_bounded
    (linesBoundedB_cons 24 Padded501_bounded
    (linesBoundedB_cons 24 Padded502_bounded
    (linesBoundedB_cons 24 Padded503_bounded
    (linesBoundedB_cons 24 Padded504_bounded
    (linesBoundedB_cons 24 Padded505_bounded
    (linesBoundedB_cons 24 Padded506_bounded
    (linesBoundedB_cons 24 Padded507_bounded
    (linesBoundedB_cons 24 Padded508_bounded
    (linesBoundedB_cons 24 Padded509_bounded
    (linesBoundedB_cons 24 Padded510_bounded
    (linesBoundedB_cons 24 Padded511_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk496_511

#print axioms InitECandidate.Solver.LineBound.Chunk496_511.bounded
