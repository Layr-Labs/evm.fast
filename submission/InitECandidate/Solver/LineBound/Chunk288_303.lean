import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk288_303

/-! Line-length checks for the padded sections of `FinalChunk288_303.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk288_303
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded288_bounded : secLinesBoundedB 24 Padded288 = true := by kernel_rfl
theorem Padded289_bounded : secLinesBoundedB 24 Padded289 = true := by kernel_rfl
theorem Padded290_bounded : secLinesBoundedB 24 Padded290 = true := by kernel_rfl
theorem Padded291_bounded : secLinesBoundedB 24 Padded291 = true := by kernel_rfl
theorem Padded292_bounded : secLinesBoundedB 24 Padded292 = true := by kernel_rfl
theorem Padded293_bounded : secLinesBoundedB 24 Padded293 = true := by kernel_rfl
theorem Padded294_bounded : secLinesBoundedB 24 Padded294 = true := by kernel_rfl
theorem Padded295_bounded : secLinesBoundedB 24 Padded295 = true := by kernel_rfl
theorem Padded296_bounded : secLinesBoundedB 24 Padded296 = true := by kernel_rfl
theorem Padded297_bounded : secLinesBoundedB 24 Padded297 = true := by kernel_rfl
theorem Padded298_bounded : secLinesBoundedB 24 Padded298 = true := by kernel_rfl
theorem Padded299_bounded : secLinesBoundedB 24 Padded299 = true := by kernel_rfl
theorem Padded300_bounded : secLinesBoundedB 24 Padded300 = true := by kernel_rfl
theorem Padded301_bounded : secLinesBoundedB 24 Padded301 = true := by kernel_rfl
theorem Padded302_bounded : secLinesBoundedB 24 Padded302 = true := by kernel_rfl
theorem Padded303_bounded : secLinesBoundedB 24 Padded303 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk288_303.padded = true := by
  unfold FinalChunk288_303.padded
  exact (linesBoundedB_cons 24 Padded288_bounded
    (linesBoundedB_cons 24 Padded289_bounded
    (linesBoundedB_cons 24 Padded290_bounded
    (linesBoundedB_cons 24 Padded291_bounded
    (linesBoundedB_cons 24 Padded292_bounded
    (linesBoundedB_cons 24 Padded293_bounded
    (linesBoundedB_cons 24 Padded294_bounded
    (linesBoundedB_cons 24 Padded295_bounded
    (linesBoundedB_cons 24 Padded296_bounded
    (linesBoundedB_cons 24 Padded297_bounded
    (linesBoundedB_cons 24 Padded298_bounded
    (linesBoundedB_cons 24 Padded299_bounded
    (linesBoundedB_cons 24 Padded300_bounded
    (linesBoundedB_cons 24 Padded301_bounded
    (linesBoundedB_cons 24 Padded302_bounded
    (linesBoundedB_cons 24 Padded303_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk288_303

#print axioms InitECandidate.Solver.LineBound.Chunk288_303.bounded
