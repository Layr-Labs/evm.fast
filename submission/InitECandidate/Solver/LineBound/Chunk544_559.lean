import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk544_559

/-! Line-length checks for the padded sections of `FinalChunk544_559.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk544_559
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded544_bounded : secLinesBoundedB 24 Padded544 = true := by kernel_rfl
theorem Padded545_bounded : secLinesBoundedB 24 Padded545 = true := by kernel_rfl
theorem Padded546_bounded : secLinesBoundedB 24 Padded546 = true := by kernel_rfl
theorem Padded547_bounded : secLinesBoundedB 24 Padded547 = true := by kernel_rfl
theorem Padded548_bounded : secLinesBoundedB 24 Padded548 = true := by kernel_rfl
theorem Padded549_bounded : secLinesBoundedB 24 Padded549 = true := by kernel_rfl
theorem Padded550_bounded : secLinesBoundedB 24 Padded550 = true := by kernel_rfl
theorem Padded551_bounded : secLinesBoundedB 24 Padded551 = true := by kernel_rfl
theorem Padded552_bounded : secLinesBoundedB 24 Padded552 = true := by kernel_rfl
theorem Padded553_bounded : secLinesBoundedB 24 Padded553 = true := by kernel_rfl
theorem Padded554_bounded : secLinesBoundedB 24 Padded554 = true := by kernel_rfl
theorem Padded555_bounded : secLinesBoundedB 24 Padded555 = true := by kernel_rfl
theorem Padded556_bounded : secLinesBoundedB 24 Padded556 = true := by kernel_rfl
theorem Padded557_bounded : secLinesBoundedB 24 Padded557 = true := by kernel_rfl
theorem Padded558_bounded : secLinesBoundedB 24 Padded558 = true := by kernel_rfl
theorem Padded559_bounded : secLinesBoundedB 24 Padded559 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk544_559.padded = true := by
  unfold FinalChunk544_559.padded
  exact (linesBoundedB_cons 24 Padded544_bounded
    (linesBoundedB_cons 24 Padded545_bounded
    (linesBoundedB_cons 24 Padded546_bounded
    (linesBoundedB_cons 24 Padded547_bounded
    (linesBoundedB_cons 24 Padded548_bounded
    (linesBoundedB_cons 24 Padded549_bounded
    (linesBoundedB_cons 24 Padded550_bounded
    (linesBoundedB_cons 24 Padded551_bounded
    (linesBoundedB_cons 24 Padded552_bounded
    (linesBoundedB_cons 24 Padded553_bounded
    (linesBoundedB_cons 24 Padded554_bounded
    (linesBoundedB_cons 24 Padded555_bounded
    (linesBoundedB_cons 24 Padded556_bounded
    (linesBoundedB_cons 24 Padded557_bounded
    (linesBoundedB_cons 24 Padded558_bounded
    (linesBoundedB_cons 24 Padded559_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk544_559

#print axioms InitECandidate.Solver.LineBound.Chunk544_559.bounded
