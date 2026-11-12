import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk736_751

/-! Line-length checks for the padded sections of `FinalChunk736_751.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk736_751
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded736_bounded : secLinesBoundedB 24 Padded736 = true := by kernel_rfl
theorem Padded737_bounded : secLinesBoundedB 24 Padded737 = true := by kernel_rfl
theorem Padded738_bounded : secLinesBoundedB 24 Padded738 = true := by kernel_rfl
theorem Padded739_bounded : secLinesBoundedB 24 Padded739 = true := by kernel_rfl
theorem Padded740_bounded : secLinesBoundedB 24 Padded740 = true := by kernel_rfl
theorem Padded741_bounded : secLinesBoundedB 24 Padded741 = true := by kernel_rfl
theorem Padded742_bounded : secLinesBoundedB 24 Padded742 = true := by kernel_rfl
theorem Padded743_bounded : secLinesBoundedB 24 Padded743 = true := by kernel_rfl
theorem Padded744_bounded : secLinesBoundedB 24 Padded744 = true := by kernel_rfl
theorem Padded745_bounded : secLinesBoundedB 24 Padded745 = true := by kernel_rfl
theorem Padded746_bounded : secLinesBoundedB 24 Padded746 = true := by kernel_rfl
theorem Padded747_bounded : secLinesBoundedB 24 Padded747 = true := by kernel_rfl
theorem Padded748_bounded : secLinesBoundedB 24 Padded748 = true := by kernel_rfl
theorem Padded749_bounded : secLinesBoundedB 24 Padded749 = true := by kernel_rfl
theorem Padded750_bounded : secLinesBoundedB 24 Padded750 = true := by kernel_rfl
theorem Padded751_bounded : secLinesBoundedB 24 Padded751 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk736_751.padded = true := by
  unfold FinalChunk736_751.padded
  exact (linesBoundedB_cons 24 Padded736_bounded
    (linesBoundedB_cons 24 Padded737_bounded
    (linesBoundedB_cons 24 Padded738_bounded
    (linesBoundedB_cons 24 Padded739_bounded
    (linesBoundedB_cons 24 Padded740_bounded
    (linesBoundedB_cons 24 Padded741_bounded
    (linesBoundedB_cons 24 Padded742_bounded
    (linesBoundedB_cons 24 Padded743_bounded
    (linesBoundedB_cons 24 Padded744_bounded
    (linesBoundedB_cons 24 Padded745_bounded
    (linesBoundedB_cons 24 Padded746_bounded
    (linesBoundedB_cons 24 Padded747_bounded
    (linesBoundedB_cons 24 Padded748_bounded
    (linesBoundedB_cons 24 Padded749_bounded
    (linesBoundedB_cons 24 Padded750_bounded
    (linesBoundedB_cons 24 Padded751_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk736_751

#print axioms InitECandidate.Solver.LineBound.Chunk736_751.bounded
