import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk176_191

/-! Line-length checks for the padded sections of `FinalChunk176_191.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk176_191
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded176_bounded : secLinesBoundedB 24 Padded176 = true := by kernel_rfl
theorem Padded177_bounded : secLinesBoundedB 24 Padded177 = true := by kernel_rfl
theorem Padded178_bounded : secLinesBoundedB 24 Padded178 = true := by kernel_rfl
theorem Padded179_bounded : secLinesBoundedB 24 Padded179 = true := by kernel_rfl
theorem Padded180_bounded : secLinesBoundedB 24 Padded180 = true := by kernel_rfl
theorem Padded181_bounded : secLinesBoundedB 24 Padded181 = true := by kernel_rfl
theorem Padded182_bounded : secLinesBoundedB 24 Padded182 = true := by kernel_rfl
theorem Padded183_bounded : secLinesBoundedB 24 Padded183 = true := by kernel_rfl
theorem Padded184_bounded : secLinesBoundedB 24 Padded184 = true := by kernel_rfl
theorem Padded185_bounded : secLinesBoundedB 24 Padded185 = true := by kernel_rfl
theorem Padded186_bounded : secLinesBoundedB 24 Padded186 = true := by kernel_rfl
theorem Padded187_bounded : secLinesBoundedB 24 Padded187 = true := by kernel_rfl
theorem Padded188_bounded : secLinesBoundedB 24 Padded188 = true := by kernel_rfl
theorem Padded189_bounded : secLinesBoundedB 24 Padded189 = true := by kernel_rfl
theorem Padded190_bounded : secLinesBoundedB 24 Padded190 = true := by kernel_rfl
theorem Padded191_bounded : secLinesBoundedB 24 Padded191 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk176_191.padded = true := by
  unfold FinalChunk176_191.padded
  exact (linesBoundedB_cons 24 Padded176_bounded
    (linesBoundedB_cons 24 Padded177_bounded
    (linesBoundedB_cons 24 Padded178_bounded
    (linesBoundedB_cons 24 Padded179_bounded
    (linesBoundedB_cons 24 Padded180_bounded
    (linesBoundedB_cons 24 Padded181_bounded
    (linesBoundedB_cons 24 Padded182_bounded
    (linesBoundedB_cons 24 Padded183_bounded
    (linesBoundedB_cons 24 Padded184_bounded
    (linesBoundedB_cons 24 Padded185_bounded
    (linesBoundedB_cons 24 Padded186_bounded
    (linesBoundedB_cons 24 Padded187_bounded
    (linesBoundedB_cons 24 Padded188_bounded
    (linesBoundedB_cons 24 Padded189_bounded
    (linesBoundedB_cons 24 Padded190_bounded
    (linesBoundedB_cons 24 Padded191_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk176_191

#print axioms InitECandidate.Solver.LineBound.Chunk176_191.bounded
