import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk304_319

/-! Line-length checks for the padded sections of `FinalChunk304_319.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk304_319
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded304_bounded : secLinesBoundedB 24 Padded304 = true := by kernel_rfl
theorem Padded305_bounded : secLinesBoundedB 24 Padded305 = true := by kernel_rfl
theorem Padded306_bounded : secLinesBoundedB 24 Padded306 = true := by kernel_rfl
theorem Padded307_bounded : secLinesBoundedB 24 Padded307 = true := by kernel_rfl
theorem Padded308_bounded : secLinesBoundedB 24 Padded308 = true := by kernel_rfl
theorem Padded309_bounded : secLinesBoundedB 24 Padded309 = true := by kernel_rfl
theorem Padded310_bounded : secLinesBoundedB 24 Padded310 = true := by kernel_rfl
theorem Padded311_bounded : secLinesBoundedB 24 Padded311 = true := by kernel_rfl
theorem Padded312_bounded : secLinesBoundedB 24 Padded312 = true := by kernel_rfl
theorem Padded313_bounded : secLinesBoundedB 24 Padded313 = true := by kernel_rfl
theorem Padded314_bounded : secLinesBoundedB 24 Padded314 = true := by kernel_rfl
theorem Padded315_bounded : secLinesBoundedB 24 Padded315 = true := by kernel_rfl
theorem Padded316_bounded : secLinesBoundedB 24 Padded316 = true := by kernel_rfl
theorem Padded317_bounded : secLinesBoundedB 24 Padded317 = true := by kernel_rfl
theorem Padded318_bounded : secLinesBoundedB 24 Padded318 = true := by kernel_rfl
theorem Padded319_bounded : secLinesBoundedB 24 Padded319 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk304_319.padded = true := by
  unfold FinalChunk304_319.padded
  exact (linesBoundedB_cons 24 Padded304_bounded
    (linesBoundedB_cons 24 Padded305_bounded
    (linesBoundedB_cons 24 Padded306_bounded
    (linesBoundedB_cons 24 Padded307_bounded
    (linesBoundedB_cons 24 Padded308_bounded
    (linesBoundedB_cons 24 Padded309_bounded
    (linesBoundedB_cons 24 Padded310_bounded
    (linesBoundedB_cons 24 Padded311_bounded
    (linesBoundedB_cons 24 Padded312_bounded
    (linesBoundedB_cons 24 Padded313_bounded
    (linesBoundedB_cons 24 Padded314_bounded
    (linesBoundedB_cons 24 Padded315_bounded
    (linesBoundedB_cons 24 Padded316_bounded
    (linesBoundedB_cons 24 Padded317_bounded
    (linesBoundedB_cons 24 Padded318_bounded
    (linesBoundedB_cons 24 Padded319_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk304_319

#print axioms InitECandidate.Solver.LineBound.Chunk304_319.bounded
