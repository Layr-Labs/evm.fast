import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk240_255

/-! Line-length checks for the padded sections of `FinalChunk240_255.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk240_255
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded240_bounded : secLinesBoundedB 24 Padded240 = true := by kernel_rfl
theorem Padded241_bounded : secLinesBoundedB 24 Padded241 = true := by kernel_rfl
theorem Padded242_bounded : secLinesBoundedB 24 Padded242 = true := by kernel_rfl
theorem Padded243_bounded : secLinesBoundedB 24 Padded243 = true := by kernel_rfl
theorem Padded244_bounded : secLinesBoundedB 24 Padded244 = true := by kernel_rfl
theorem Padded245_bounded : secLinesBoundedB 24 Padded245 = true := by kernel_rfl
theorem Padded246_bounded : secLinesBoundedB 24 Padded246 = true := by kernel_rfl
theorem Padded247_bounded : secLinesBoundedB 24 Padded247 = true := by kernel_rfl
theorem Padded248_bounded : secLinesBoundedB 24 Padded248 = true := by kernel_rfl
theorem Padded249_bounded : secLinesBoundedB 24 Padded249 = true := by kernel_rfl
theorem Padded250_bounded : secLinesBoundedB 24 Padded250 = true := by kernel_rfl
theorem Padded251_bounded : secLinesBoundedB 24 Padded251 = true := by kernel_rfl
theorem Padded252_bounded : secLinesBoundedB 24 Padded252 = true := by kernel_rfl
theorem Padded253_bounded : secLinesBoundedB 24 Padded253 = true := by kernel_rfl
theorem Padded254_bounded : secLinesBoundedB 24 Padded254 = true := by kernel_rfl
theorem Padded255_bounded : secLinesBoundedB 24 Padded255 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk240_255.padded = true := by
  unfold FinalChunk240_255.padded
  exact (linesBoundedB_cons 24 Padded240_bounded
    (linesBoundedB_cons 24 Padded241_bounded
    (linesBoundedB_cons 24 Padded242_bounded
    (linesBoundedB_cons 24 Padded243_bounded
    (linesBoundedB_cons 24 Padded244_bounded
    (linesBoundedB_cons 24 Padded245_bounded
    (linesBoundedB_cons 24 Padded246_bounded
    (linesBoundedB_cons 24 Padded247_bounded
    (linesBoundedB_cons 24 Padded248_bounded
    (linesBoundedB_cons 24 Padded249_bounded
    (linesBoundedB_cons 24 Padded250_bounded
    (linesBoundedB_cons 24 Padded251_bounded
    (linesBoundedB_cons 24 Padded252_bounded
    (linesBoundedB_cons 24 Padded253_bounded
    (linesBoundedB_cons 24 Padded254_bounded
    (linesBoundedB_cons 24 Padded255_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk240_255

#print axioms InitECandidate.Solver.LineBound.Chunk240_255.bounded
