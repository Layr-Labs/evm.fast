import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk464_479

/-! Line-length checks for the padded sections of `FinalChunk464_479.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk464_479
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded464_bounded : secLinesBoundedB 24 Padded464 = true := by kernel_rfl
theorem Padded465_bounded : secLinesBoundedB 24 Padded465 = true := by kernel_rfl
theorem Padded466_bounded : secLinesBoundedB 24 Padded466 = true := by kernel_rfl
theorem Padded467_bounded : secLinesBoundedB 24 Padded467 = true := by kernel_rfl
theorem Padded468_bounded : secLinesBoundedB 24 Padded468 = true := by kernel_rfl
theorem Padded469_bounded : secLinesBoundedB 24 Padded469 = true := by kernel_rfl
theorem Padded470_bounded : secLinesBoundedB 24 Padded470 = true := by kernel_rfl
theorem Padded471_bounded : secLinesBoundedB 24 Padded471 = true := by kernel_rfl
theorem Padded472_bounded : secLinesBoundedB 24 Padded472 = true := by kernel_rfl
theorem Padded473_bounded : secLinesBoundedB 24 Padded473 = true := by kernel_rfl
theorem Padded474_bounded : secLinesBoundedB 24 Padded474 = true := by kernel_rfl
theorem Padded475_bounded : secLinesBoundedB 24 Padded475 = true := by kernel_rfl
theorem Padded476_bounded : secLinesBoundedB 24 Padded476 = true := by kernel_rfl
theorem Padded477_bounded : secLinesBoundedB 24 Padded477 = true := by kernel_rfl
theorem Padded478_bounded : secLinesBoundedB 24 Padded478 = true := by kernel_rfl
theorem Padded479_bounded : secLinesBoundedB 24 Padded479 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk464_479.padded = true := by
  unfold FinalChunk464_479.padded
  exact (linesBoundedB_cons 24 Padded464_bounded
    (linesBoundedB_cons 24 Padded465_bounded
    (linesBoundedB_cons 24 Padded466_bounded
    (linesBoundedB_cons 24 Padded467_bounded
    (linesBoundedB_cons 24 Padded468_bounded
    (linesBoundedB_cons 24 Padded469_bounded
    (linesBoundedB_cons 24 Padded470_bounded
    (linesBoundedB_cons 24 Padded471_bounded
    (linesBoundedB_cons 24 Padded472_bounded
    (linesBoundedB_cons 24 Padded473_bounded
    (linesBoundedB_cons 24 Padded474_bounded
    (linesBoundedB_cons 24 Padded475_bounded
    (linesBoundedB_cons 24 Padded476_bounded
    (linesBoundedB_cons 24 Padded477_bounded
    (linesBoundedB_cons 24 Padded478_bounded
    (linesBoundedB_cons 24 Padded479_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk464_479

#print axioms InitECandidate.Solver.LineBound.Chunk464_479.bounded
