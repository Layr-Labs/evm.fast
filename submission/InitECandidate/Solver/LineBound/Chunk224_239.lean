import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk224_239

/-! Line-length checks for the padded sections of `FinalChunk224_239.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk224_239
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded224_bounded : secLinesBoundedB 24 Padded224 = true := by kernel_rfl
theorem Padded225_bounded : secLinesBoundedB 24 Padded225 = true := by kernel_rfl
theorem Padded226_bounded : secLinesBoundedB 24 Padded226 = true := by kernel_rfl
theorem Padded227_bounded : secLinesBoundedB 24 Padded227 = true := by kernel_rfl
theorem Padded228_bounded : secLinesBoundedB 24 Padded228 = true := by kernel_rfl
theorem Padded229_bounded : secLinesBoundedB 24 Padded229 = true := by kernel_rfl
theorem Padded230_bounded : secLinesBoundedB 24 Padded230 = true := by kernel_rfl
theorem Padded231_bounded : secLinesBoundedB 24 Padded231 = true := by kernel_rfl
theorem Padded232_bounded : secLinesBoundedB 24 Padded232 = true := by kernel_rfl
theorem Padded233_bounded : secLinesBoundedB 24 Padded233 = true := by kernel_rfl
theorem Padded234_bounded : secLinesBoundedB 24 Padded234 = true := by kernel_rfl
theorem Padded235_bounded : secLinesBoundedB 24 Padded235 = true := by kernel_rfl
theorem Padded236_bounded : secLinesBoundedB 24 Padded236 = true := by kernel_rfl
theorem Padded237_bounded : secLinesBoundedB 24 Padded237 = true := by kernel_rfl
theorem Padded238_bounded : secLinesBoundedB 24 Padded238 = true := by kernel_rfl
theorem Padded239_bounded : secLinesBoundedB 24 Padded239 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk224_239.padded = true := by
  unfold FinalChunk224_239.padded
  exact (linesBoundedB_cons 24 Padded224_bounded
    (linesBoundedB_cons 24 Padded225_bounded
    (linesBoundedB_cons 24 Padded226_bounded
    (linesBoundedB_cons 24 Padded227_bounded
    (linesBoundedB_cons 24 Padded228_bounded
    (linesBoundedB_cons 24 Padded229_bounded
    (linesBoundedB_cons 24 Padded230_bounded
    (linesBoundedB_cons 24 Padded231_bounded
    (linesBoundedB_cons 24 Padded232_bounded
    (linesBoundedB_cons 24 Padded233_bounded
    (linesBoundedB_cons 24 Padded234_bounded
    (linesBoundedB_cons 24 Padded235_bounded
    (linesBoundedB_cons 24 Padded236_bounded
    (linesBoundedB_cons 24 Padded237_bounded
    (linesBoundedB_cons 24 Padded238_bounded
    (linesBoundedB_cons 24 Padded239_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk224_239

#print axioms InitECandidate.Solver.LineBound.Chunk224_239.bounded
