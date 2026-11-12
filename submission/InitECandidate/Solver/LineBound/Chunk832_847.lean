import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk832_847

/-! Line-length checks for the padded sections of `FinalChunk832_847.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk832_847
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded832_bounded : secLinesBoundedB 24 Padded832 = true := by kernel_rfl
theorem Padded833_bounded : secLinesBoundedB 24 Padded833 = true := by kernel_rfl
theorem Padded834_bounded : secLinesBoundedB 24 Padded834 = true := by kernel_rfl
theorem Padded835_bounded : secLinesBoundedB 24 Padded835 = true := by kernel_rfl
theorem Padded836_bounded : secLinesBoundedB 24 Padded836 = true := by kernel_rfl
theorem Padded837_bounded : secLinesBoundedB 24 Padded837 = true := by kernel_rfl
theorem Padded838_bounded : secLinesBoundedB 24 Padded838 = true := by kernel_rfl
theorem Padded839_bounded : secLinesBoundedB 24 Padded839 = true := by kernel_rfl
theorem Padded840_bounded : secLinesBoundedB 24 Padded840 = true := by kernel_rfl
theorem Padded841_bounded : secLinesBoundedB 24 Padded841 = true := by kernel_rfl
theorem Padded842_bounded : secLinesBoundedB 24 Padded842 = true := by kernel_rfl
theorem Padded843_bounded : secLinesBoundedB 24 Padded843 = true := by kernel_rfl
theorem Padded844_bounded : secLinesBoundedB 24 Padded844 = true := by kernel_rfl
theorem Padded845_bounded : secLinesBoundedB 24 Padded845 = true := by kernel_rfl
theorem Padded846_bounded : secLinesBoundedB 24 Padded846 = true := by kernel_rfl
theorem Padded847_bounded : secLinesBoundedB 24 Padded847 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk832_847.padded = true := by
  unfold FinalChunk832_847.padded
  exact (linesBoundedB_cons 24 Padded832_bounded
    (linesBoundedB_cons 24 Padded833_bounded
    (linesBoundedB_cons 24 Padded834_bounded
    (linesBoundedB_cons 24 Padded835_bounded
    (linesBoundedB_cons 24 Padded836_bounded
    (linesBoundedB_cons 24 Padded837_bounded
    (linesBoundedB_cons 24 Padded838_bounded
    (linesBoundedB_cons 24 Padded839_bounded
    (linesBoundedB_cons 24 Padded840_bounded
    (linesBoundedB_cons 24 Padded841_bounded
    (linesBoundedB_cons 24 Padded842_bounded
    (linesBoundedB_cons 24 Padded843_bounded
    (linesBoundedB_cons 24 Padded844_bounded
    (linesBoundedB_cons 24 Padded845_bounded
    (linesBoundedB_cons 24 Padded846_bounded
    (linesBoundedB_cons 24 Padded847_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk832_847

#print axioms InitECandidate.Solver.LineBound.Chunk832_847.bounded
