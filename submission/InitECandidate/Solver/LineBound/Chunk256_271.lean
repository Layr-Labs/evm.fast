import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk256_271

/-! Line-length checks for the padded sections of `FinalChunk256_271.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk256_271
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded256_bounded : secLinesBoundedB 24 Padded256 = true := by kernel_rfl
theorem Padded257_bounded : secLinesBoundedB 24 Padded257 = true := by kernel_rfl
theorem Padded258_bounded : secLinesBoundedB 24 Padded258 = true := by kernel_rfl
theorem Padded259_bounded : secLinesBoundedB 24 Padded259 = true := by kernel_rfl
theorem Padded260_bounded : secLinesBoundedB 24 Padded260 = true := by kernel_rfl
theorem Padded261_bounded : secLinesBoundedB 24 Padded261 = true := by kernel_rfl
theorem Padded262_bounded : secLinesBoundedB 24 Padded262 = true := by kernel_rfl
theorem Padded263_bounded : secLinesBoundedB 24 Padded263 = true := by kernel_rfl
theorem Padded264_bounded : secLinesBoundedB 24 Padded264 = true := by kernel_rfl
theorem Padded265_bounded : secLinesBoundedB 24 Padded265 = true := by kernel_rfl
theorem Padded266_bounded : secLinesBoundedB 24 Padded266 = true := by kernel_rfl
theorem Padded267_bounded : secLinesBoundedB 24 Padded267 = true := by kernel_rfl
theorem Padded268_bounded : secLinesBoundedB 24 Padded268 = true := by kernel_rfl
theorem Padded269_bounded : secLinesBoundedB 24 Padded269 = true := by kernel_rfl
theorem Padded270_bounded : secLinesBoundedB 24 Padded270 = true := by kernel_rfl
theorem Padded271_bounded : secLinesBoundedB 24 Padded271 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk256_271.padded = true := by
  unfold FinalChunk256_271.padded
  exact (linesBoundedB_cons 24 Padded256_bounded
    (linesBoundedB_cons 24 Padded257_bounded
    (linesBoundedB_cons 24 Padded258_bounded
    (linesBoundedB_cons 24 Padded259_bounded
    (linesBoundedB_cons 24 Padded260_bounded
    (linesBoundedB_cons 24 Padded261_bounded
    (linesBoundedB_cons 24 Padded262_bounded
    (linesBoundedB_cons 24 Padded263_bounded
    (linesBoundedB_cons 24 Padded264_bounded
    (linesBoundedB_cons 24 Padded265_bounded
    (linesBoundedB_cons 24 Padded266_bounded
    (linesBoundedB_cons 24 Padded267_bounded
    (linesBoundedB_cons 24 Padded268_bounded
    (linesBoundedB_cons 24 Padded269_bounded
    (linesBoundedB_cons 24 Padded270_bounded
    (linesBoundedB_cons 24 Padded271_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk256_271

#print axioms InitECandidate.Solver.LineBound.Chunk256_271.bounded
