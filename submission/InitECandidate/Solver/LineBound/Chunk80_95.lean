import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk80_95

/-! Line-length checks for the padded sections of `FinalChunk80_95.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk80_95
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded80_bounded : secLinesBoundedB 24 Padded80 = true := by kernel_rfl
theorem Padded81_bounded : secLinesBoundedB 24 Padded81 = true := by kernel_rfl
theorem Padded82_bounded : secLinesBoundedB 24 Padded82 = true := by kernel_rfl
theorem Padded83_bounded : secLinesBoundedB 24 Padded83 = true := by kernel_rfl
theorem Padded84_bounded : secLinesBoundedB 24 Padded84 = true := by kernel_rfl
theorem Padded85_bounded : secLinesBoundedB 24 Padded85 = true := by kernel_rfl
theorem Padded86_bounded : secLinesBoundedB 24 Padded86 = true := by kernel_rfl
theorem Padded87_bounded : secLinesBoundedB 24 Padded87 = true := by kernel_rfl
theorem Padded88_bounded : secLinesBoundedB 24 Padded88 = true := by kernel_rfl
theorem Padded89_bounded : secLinesBoundedB 24 Padded89 = true := by kernel_rfl
theorem Padded90_bounded : secLinesBoundedB 24 Padded90 = true := by kernel_rfl
theorem Padded91_bounded : secLinesBoundedB 24 Padded91 = true := by kernel_rfl
theorem Padded92_bounded : secLinesBoundedB 24 Padded92 = true := by kernel_rfl
theorem Padded93_bounded : secLinesBoundedB 24 Padded93 = true := by kernel_rfl
theorem Padded94_bounded : secLinesBoundedB 24 Padded94 = true := by kernel_rfl
theorem Padded95_bounded : secLinesBoundedB 24 Padded95 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk80_95.padded = true := by
  unfold FinalChunk80_95.padded
  exact (linesBoundedB_cons 24 Padded80_bounded
    (linesBoundedB_cons 24 Padded81_bounded
    (linesBoundedB_cons 24 Padded82_bounded
    (linesBoundedB_cons 24 Padded83_bounded
    (linesBoundedB_cons 24 Padded84_bounded
    (linesBoundedB_cons 24 Padded85_bounded
    (linesBoundedB_cons 24 Padded86_bounded
    (linesBoundedB_cons 24 Padded87_bounded
    (linesBoundedB_cons 24 Padded88_bounded
    (linesBoundedB_cons 24 Padded89_bounded
    (linesBoundedB_cons 24 Padded90_bounded
    (linesBoundedB_cons 24 Padded91_bounded
    (linesBoundedB_cons 24 Padded92_bounded
    (linesBoundedB_cons 24 Padded93_bounded
    (linesBoundedB_cons 24 Padded94_bounded
    (linesBoundedB_cons 24 Padded95_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk80_95

#print axioms InitECandidate.Solver.LineBound.Chunk80_95.bounded
