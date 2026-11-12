import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk160_175

/-! Line-length checks for the padded sections of `FinalChunk160_175.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk160_175
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded160_bounded : secLinesBoundedB 24 Padded160 = true := by kernel_rfl
theorem Padded161_bounded : secLinesBoundedB 24 Padded161 = true := by kernel_rfl
theorem Padded162_bounded : secLinesBoundedB 24 Padded162 = true := by kernel_rfl
theorem Padded163_bounded : secLinesBoundedB 24 Padded163 = true := by kernel_rfl
theorem Padded164_bounded : secLinesBoundedB 24 Padded164 = true := by kernel_rfl
theorem Padded165_bounded : secLinesBoundedB 24 Padded165 = true := by kernel_rfl
theorem Padded166_bounded : secLinesBoundedB 24 Padded166 = true := by kernel_rfl
theorem Padded167_bounded : secLinesBoundedB 24 Padded167 = true := by kernel_rfl
theorem Padded168_bounded : secLinesBoundedB 24 Padded168 = true := by kernel_rfl
theorem Padded169_bounded : secLinesBoundedB 24 Padded169 = true := by kernel_rfl
theorem Padded170_bounded : secLinesBoundedB 24 Padded170 = true := by kernel_rfl
theorem Padded171_bounded : secLinesBoundedB 24 Padded171 = true := by kernel_rfl
theorem Padded172_bounded : secLinesBoundedB 24 Padded172 = true := by kernel_rfl
theorem Padded173_bounded : secLinesBoundedB 24 Padded173 = true := by kernel_rfl
theorem Padded174_bounded : secLinesBoundedB 24 Padded174 = true := by kernel_rfl
theorem Padded175_bounded : secLinesBoundedB 24 Padded175 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk160_175.padded = true := by
  unfold FinalChunk160_175.padded
  exact (linesBoundedB_cons 24 Padded160_bounded
    (linesBoundedB_cons 24 Padded161_bounded
    (linesBoundedB_cons 24 Padded162_bounded
    (linesBoundedB_cons 24 Padded163_bounded
    (linesBoundedB_cons 24 Padded164_bounded
    (linesBoundedB_cons 24 Padded165_bounded
    (linesBoundedB_cons 24 Padded166_bounded
    (linesBoundedB_cons 24 Padded167_bounded
    (linesBoundedB_cons 24 Padded168_bounded
    (linesBoundedB_cons 24 Padded169_bounded
    (linesBoundedB_cons 24 Padded170_bounded
    (linesBoundedB_cons 24 Padded171_bounded
    (linesBoundedB_cons 24 Padded172_bounded
    (linesBoundedB_cons 24 Padded173_bounded
    (linesBoundedB_cons 24 Padded174_bounded
    (linesBoundedB_cons 24 Padded175_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk160_175

#print axioms InitECandidate.Solver.LineBound.Chunk160_175.bounded
