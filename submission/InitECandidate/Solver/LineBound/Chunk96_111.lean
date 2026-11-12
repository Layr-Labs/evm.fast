import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk96_111

/-! Line-length checks for the padded sections of `FinalChunk96_111.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk96_111
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded96_bounded : secLinesBoundedB 24 Padded96 = true := by kernel_rfl
theorem Padded97_bounded : secLinesBoundedB 24 Padded97 = true := by kernel_rfl
theorem Padded98_bounded : secLinesBoundedB 24 Padded98 = true := by kernel_rfl
theorem Padded99_bounded : secLinesBoundedB 24 Padded99 = true := by kernel_rfl
theorem Padded100_bounded : secLinesBoundedB 24 Padded100 = true := by kernel_rfl
theorem Padded101_bounded : secLinesBoundedB 24 Padded101 = true := by kernel_rfl
theorem Padded102_bounded : secLinesBoundedB 24 Padded102 = true := by kernel_rfl
theorem Padded103_bounded : secLinesBoundedB 24 Padded103 = true := by kernel_rfl
theorem Padded104_bounded : secLinesBoundedB 24 Padded104 = true := by kernel_rfl
theorem Padded105_bounded : secLinesBoundedB 24 Padded105 = true := by kernel_rfl
theorem Padded106_bounded : secLinesBoundedB 24 Padded106 = true := by kernel_rfl
theorem Padded107_bounded : secLinesBoundedB 24 Padded107 = true := by kernel_rfl
theorem Padded108_bounded : secLinesBoundedB 24 Padded108 = true := by kernel_rfl
theorem Padded109_bounded : secLinesBoundedB 24 Padded109 = true := by kernel_rfl
theorem Padded110_bounded : secLinesBoundedB 24 Padded110 = true := by kernel_rfl
theorem Padded111_bounded : secLinesBoundedB 24 Padded111 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk96_111.padded = true := by
  unfold FinalChunk96_111.padded
  exact (linesBoundedB_cons 24 Padded96_bounded
    (linesBoundedB_cons 24 Padded97_bounded
    (linesBoundedB_cons 24 Padded98_bounded
    (linesBoundedB_cons 24 Padded99_bounded
    (linesBoundedB_cons 24 Padded100_bounded
    (linesBoundedB_cons 24 Padded101_bounded
    (linesBoundedB_cons 24 Padded102_bounded
    (linesBoundedB_cons 24 Padded103_bounded
    (linesBoundedB_cons 24 Padded104_bounded
    (linesBoundedB_cons 24 Padded105_bounded
    (linesBoundedB_cons 24 Padded106_bounded
    (linesBoundedB_cons 24 Padded107_bounded
    (linesBoundedB_cons 24 Padded108_bounded
    (linesBoundedB_cons 24 Padded109_bounded
    (linesBoundedB_cons 24 Padded110_bounded
    (linesBoundedB_cons 24 Padded111_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk96_111

#print axioms InitECandidate.Solver.LineBound.Chunk96_111.bounded
