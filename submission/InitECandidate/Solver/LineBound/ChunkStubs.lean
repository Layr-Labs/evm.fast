import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunkStubs

/-! Line-length checks for the padded sections of `FinalChunkStubs.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.ChunkStubs
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded0_bounded : secLinesBoundedB 24 Padded0 = true := by kernel_rfl
theorem Padded1_bounded : secLinesBoundedB 24 Padded1 = true := by kernel_rfl
theorem Padded2_bounded : secLinesBoundedB 24 Padded2 = true := by kernel_rfl
theorem Padded4_bounded : secLinesBoundedB 24 Padded4 = true := by kernel_rfl
theorem Padded5_bounded : secLinesBoundedB 24 Padded5 = true := by kernel_rfl
theorem Padded6_bounded : secLinesBoundedB 24 Padded6 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunkStubs.padded = true := by
  unfold FinalChunkStubs.padded
  exact (linesBoundedB_cons 24 Padded0_bounded
    (linesBoundedB_cons 24 Padded1_bounded
    (linesBoundedB_cons 24 Padded2_bounded
    (linesBoundedB_cons 24 Padded4_bounded
    (linesBoundedB_cons 24 Padded5_bounded
    (linesBoundedB_cons 24 Padded6_bounded
    (linesBoundedB_nil 24)))))))

end InitECandidate.Solver.LineBound.ChunkStubs

#print axioms InitECandidate.Solver.LineBound.ChunkStubs.bounded
