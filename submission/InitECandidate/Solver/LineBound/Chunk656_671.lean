import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk656_671

/-! Line-length checks for the padded sections of `FinalChunk656_671.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk656_671
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded656_bounded : secLinesBoundedB 24 Padded656 = true := by kernel_rfl
theorem Padded657_bounded : secLinesBoundedB 24 Padded657 = true := by kernel_rfl
theorem Padded658_bounded : secLinesBoundedB 24 Padded658 = true := by kernel_rfl
theorem Padded659_bounded : secLinesBoundedB 24 Padded659 = true := by kernel_rfl
theorem Padded660_bounded : secLinesBoundedB 24 Padded660 = true := by kernel_rfl
theorem Padded661_bounded : secLinesBoundedB 24 Padded661 = true := by kernel_rfl
theorem Padded662_bounded : secLinesBoundedB 24 Padded662 = true := by kernel_rfl
theorem Padded663_bounded : secLinesBoundedB 24 Padded663 = true := by kernel_rfl
theorem Padded664_bounded : secLinesBoundedB 24 Padded664 = true := by kernel_rfl
theorem Padded665_bounded : secLinesBoundedB 24 Padded665 = true := by kernel_rfl
theorem Padded666_bounded : secLinesBoundedB 24 Padded666 = true := by kernel_rfl
theorem Padded667_bounded : secLinesBoundedB 24 Padded667 = true := by kernel_rfl
theorem Padded668_bounded : secLinesBoundedB 24 Padded668 = true := by kernel_rfl
theorem Padded669_bounded : secLinesBoundedB 24 Padded669 = true := by kernel_rfl
theorem Padded670_bounded : secLinesBoundedB 24 Padded670 = true := by kernel_rfl
theorem Padded671_bounded : secLinesBoundedB 24 Padded671 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk656_671.padded = true := by
  unfold FinalChunk656_671.padded
  exact (linesBoundedB_cons 24 Padded656_bounded
    (linesBoundedB_cons 24 Padded657_bounded
    (linesBoundedB_cons 24 Padded658_bounded
    (linesBoundedB_cons 24 Padded659_bounded
    (linesBoundedB_cons 24 Padded660_bounded
    (linesBoundedB_cons 24 Padded661_bounded
    (linesBoundedB_cons 24 Padded662_bounded
    (linesBoundedB_cons 24 Padded663_bounded
    (linesBoundedB_cons 24 Padded664_bounded
    (linesBoundedB_cons 24 Padded665_bounded
    (linesBoundedB_cons 24 Padded666_bounded
    (linesBoundedB_cons 24 Padded667_bounded
    (linesBoundedB_cons 24 Padded668_bounded
    (linesBoundedB_cons 24 Padded669_bounded
    (linesBoundedB_cons 24 Padded670_bounded
    (linesBoundedB_cons 24 Padded671_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk656_671

#print axioms InitECandidate.Solver.LineBound.Chunk656_671.bounded
