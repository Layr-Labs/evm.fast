import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk608_623

/-! Line-length checks for the padded sections of `FinalChunk608_623.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk608_623
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded608_bounded : secLinesBoundedB 24 Padded608 = true := by kernel_rfl
theorem Padded609_bounded : secLinesBoundedB 24 Padded609 = true := by kernel_rfl
theorem Padded610_bounded : secLinesBoundedB 24 Padded610 = true := by kernel_rfl
theorem Padded611_bounded : secLinesBoundedB 24 Padded611 = true := by kernel_rfl
theorem Padded612_bounded : secLinesBoundedB 24 Padded612 = true := by kernel_rfl
theorem Padded613_bounded : secLinesBoundedB 24 Padded613 = true := by kernel_rfl
theorem Padded614_bounded : secLinesBoundedB 24 Padded614 = true := by kernel_rfl
theorem Padded615_bounded : secLinesBoundedB 24 Padded615 = true := by kernel_rfl
theorem Padded616_bounded : secLinesBoundedB 24 Padded616 = true := by kernel_rfl
theorem Padded617_bounded : secLinesBoundedB 24 Padded617 = true := by kernel_rfl
theorem Padded618_bounded : secLinesBoundedB 24 Padded618 = true := by kernel_rfl
theorem Padded619_bounded : secLinesBoundedB 24 Padded619 = true := by kernel_rfl
theorem Padded620_bounded : secLinesBoundedB 24 Padded620 = true := by kernel_rfl
theorem Padded621_bounded : secLinesBoundedB 24 Padded621 = true := by kernel_rfl
theorem Padded622_bounded : secLinesBoundedB 24 Padded622 = true := by kernel_rfl
theorem Padded623_bounded : secLinesBoundedB 24 Padded623 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk608_623.padded = true := by
  unfold FinalChunk608_623.padded
  exact (linesBoundedB_cons 24 Padded608_bounded
    (linesBoundedB_cons 24 Padded609_bounded
    (linesBoundedB_cons 24 Padded610_bounded
    (linesBoundedB_cons 24 Padded611_bounded
    (linesBoundedB_cons 24 Padded612_bounded
    (linesBoundedB_cons 24 Padded613_bounded
    (linesBoundedB_cons 24 Padded614_bounded
    (linesBoundedB_cons 24 Padded615_bounded
    (linesBoundedB_cons 24 Padded616_bounded
    (linesBoundedB_cons 24 Padded617_bounded
    (linesBoundedB_cons 24 Padded618_bounded
    (linesBoundedB_cons 24 Padded619_bounded
    (linesBoundedB_cons 24 Padded620_bounded
    (linesBoundedB_cons 24 Padded621_bounded
    (linesBoundedB_cons 24 Padded622_bounded
    (linesBoundedB_cons 24 Padded623_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk608_623

#print axioms InitECandidate.Solver.LineBound.Chunk608_623.bounded
