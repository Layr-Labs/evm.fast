import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk192_207

/-! Line-length checks for the padded sections of `FinalChunk192_207.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk192_207
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded192_bounded : secLinesBoundedB 24 Padded192 = true := by kernel_rfl
theorem Padded193_bounded : secLinesBoundedB 24 Padded193 = true := by kernel_rfl
theorem Padded194_bounded : secLinesBoundedB 24 Padded194 = true := by kernel_rfl
theorem Padded195_bounded : secLinesBoundedB 24 Padded195 = true := by kernel_rfl
theorem Padded196_bounded : secLinesBoundedB 24 Padded196 = true := by kernel_rfl
theorem Padded197_bounded : secLinesBoundedB 24 Padded197 = true := by kernel_rfl
theorem Padded198_bounded : secLinesBoundedB 24 Padded198 = true := by kernel_rfl
theorem Padded199_bounded : secLinesBoundedB 24 Padded199 = true := by kernel_rfl
theorem Padded200_bounded : secLinesBoundedB 24 Padded200 = true := by kernel_rfl
theorem Padded201_bounded : secLinesBoundedB 24 Padded201 = true := by kernel_rfl
theorem Padded202_bounded : secLinesBoundedB 24 Padded202 = true := by kernel_rfl
theorem Padded203_bounded : secLinesBoundedB 24 Padded203 = true := by kernel_rfl
theorem Padded204_bounded : secLinesBoundedB 24 Padded204 = true := by kernel_rfl
theorem Padded205_bounded : secLinesBoundedB 24 Padded205 = true := by kernel_rfl
theorem Padded206_bounded : secLinesBoundedB 24 Padded206 = true := by kernel_rfl
theorem Padded207_bounded : secLinesBoundedB 24 Padded207 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk192_207.padded = true := by
  unfold FinalChunk192_207.padded
  exact (linesBoundedB_cons 24 Padded192_bounded
    (linesBoundedB_cons 24 Padded193_bounded
    (linesBoundedB_cons 24 Padded194_bounded
    (linesBoundedB_cons 24 Padded195_bounded
    (linesBoundedB_cons 24 Padded196_bounded
    (linesBoundedB_cons 24 Padded197_bounded
    (linesBoundedB_cons 24 Padded198_bounded
    (linesBoundedB_cons 24 Padded199_bounded
    (linesBoundedB_cons 24 Padded200_bounded
    (linesBoundedB_cons 24 Padded201_bounded
    (linesBoundedB_cons 24 Padded202_bounded
    (linesBoundedB_cons 24 Padded203_bounded
    (linesBoundedB_cons 24 Padded204_bounded
    (linesBoundedB_cons 24 Padded205_bounded
    (linesBoundedB_cons 24 Padded206_bounded
    (linesBoundedB_cons 24 Padded207_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk192_207

#print axioms InitECandidate.Solver.LineBound.Chunk192_207.bounded
