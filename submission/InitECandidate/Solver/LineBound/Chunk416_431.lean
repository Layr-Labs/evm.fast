import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk416_431

/-! Line-length checks for the padded sections of `FinalChunk416_431.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk416_431
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded416_bounded : secLinesBoundedB 24 Padded416 = true := by kernel_rfl
theorem Padded417_bounded : secLinesBoundedB 24 Padded417 = true := by kernel_rfl
theorem Padded418_bounded : secLinesBoundedB 24 Padded418 = true := by kernel_rfl
theorem Padded419_bounded : secLinesBoundedB 24 Padded419 = true := by kernel_rfl
theorem Padded420_bounded : secLinesBoundedB 24 Padded420 = true := by kernel_rfl
theorem Padded421_bounded : secLinesBoundedB 24 Padded421 = true := by kernel_rfl
theorem Padded422_bounded : secLinesBoundedB 24 Padded422 = true := by kernel_rfl
theorem Padded423_bounded : secLinesBoundedB 24 Padded423 = true := by kernel_rfl
theorem Padded424_bounded : secLinesBoundedB 24 Padded424 = true := by kernel_rfl
theorem Padded425_bounded : secLinesBoundedB 24 Padded425 = true := by kernel_rfl
theorem Padded426_bounded : secLinesBoundedB 24 Padded426 = true := by kernel_rfl
theorem Padded427_bounded : secLinesBoundedB 24 Padded427 = true := by kernel_rfl
theorem Padded428_bounded : secLinesBoundedB 24 Padded428 = true := by kernel_rfl
theorem Padded429_bounded : secLinesBoundedB 24 Padded429 = true := by kernel_rfl
theorem Padded430_bounded : secLinesBoundedB 24 Padded430 = true := by kernel_rfl
theorem Padded431_bounded : secLinesBoundedB 24 Padded431 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk416_431.padded = true := by
  unfold FinalChunk416_431.padded
  exact (linesBoundedB_cons 24 Padded416_bounded
    (linesBoundedB_cons 24 Padded417_bounded
    (linesBoundedB_cons 24 Padded418_bounded
    (linesBoundedB_cons 24 Padded419_bounded
    (linesBoundedB_cons 24 Padded420_bounded
    (linesBoundedB_cons 24 Padded421_bounded
    (linesBoundedB_cons 24 Padded422_bounded
    (linesBoundedB_cons 24 Padded423_bounded
    (linesBoundedB_cons 24 Padded424_bounded
    (linesBoundedB_cons 24 Padded425_bounded
    (linesBoundedB_cons 24 Padded426_bounded
    (linesBoundedB_cons 24 Padded427_bounded
    (linesBoundedB_cons 24 Padded428_bounded
    (linesBoundedB_cons 24 Padded429_bounded
    (linesBoundedB_cons 24 Padded430_bounded
    (linesBoundedB_cons 24 Padded431_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk416_431

#print axioms InitECandidate.Solver.LineBound.Chunk416_431.bounded
