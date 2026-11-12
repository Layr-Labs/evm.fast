import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk128_143

/-! Line-length checks for the padded sections of `FinalChunk128_143.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk128_143
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded128_bounded : secLinesBoundedB 24 Padded128 = true := by kernel_rfl
theorem Padded129_bounded : secLinesBoundedB 24 Padded129 = true := by kernel_rfl
theorem Padded130_bounded : secLinesBoundedB 24 Padded130 = true := by kernel_rfl
theorem Padded131_bounded : secLinesBoundedB 24 Padded131 = true := by kernel_rfl
theorem Padded132_bounded : secLinesBoundedB 24 Padded132 = true := by kernel_rfl
theorem Padded133_bounded : secLinesBoundedB 24 Padded133 = true := by kernel_rfl
theorem Padded134_bounded : secLinesBoundedB 24 Padded134 = true := by kernel_rfl
theorem Padded135_bounded : secLinesBoundedB 24 Padded135 = true := by kernel_rfl
theorem Padded136_bounded : secLinesBoundedB 24 Padded136 = true := by kernel_rfl
theorem Padded137_bounded : secLinesBoundedB 24 Padded137 = true := by kernel_rfl
theorem Padded138_bounded : secLinesBoundedB 24 Padded138 = true := by kernel_rfl
theorem Padded139_bounded : secLinesBoundedB 24 Padded139 = true := by kernel_rfl
theorem Padded140_bounded : secLinesBoundedB 24 Padded140 = true := by kernel_rfl
theorem Padded141_bounded : secLinesBoundedB 24 Padded141 = true := by kernel_rfl
theorem Padded142_bounded : secLinesBoundedB 24 Padded142 = true := by kernel_rfl
theorem Padded143_bounded : secLinesBoundedB 24 Padded143 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk128_143.padded = true := by
  unfold FinalChunk128_143.padded
  exact (linesBoundedB_cons 24 Padded128_bounded
    (linesBoundedB_cons 24 Padded129_bounded
    (linesBoundedB_cons 24 Padded130_bounded
    (linesBoundedB_cons 24 Padded131_bounded
    (linesBoundedB_cons 24 Padded132_bounded
    (linesBoundedB_cons 24 Padded133_bounded
    (linesBoundedB_cons 24 Padded134_bounded
    (linesBoundedB_cons 24 Padded135_bounded
    (linesBoundedB_cons 24 Padded136_bounded
    (linesBoundedB_cons 24 Padded137_bounded
    (linesBoundedB_cons 24 Padded138_bounded
    (linesBoundedB_cons 24 Padded139_bounded
    (linesBoundedB_cons 24 Padded140_bounded
    (linesBoundedB_cons 24 Padded141_bounded
    (linesBoundedB_cons 24 Padded142_bounded
    (linesBoundedB_cons 24 Padded143_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk128_143

#print axioms InitECandidate.Solver.LineBound.Chunk128_143.bounded
