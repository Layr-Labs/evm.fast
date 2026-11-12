import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk144_159

/-! Line-length checks for the padded sections of `FinalChunk144_159.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk144_159
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded144_bounded : secLinesBoundedB 24 Padded144 = true := by kernel_rfl
theorem Padded145_bounded : secLinesBoundedB 24 Padded145 = true := by kernel_rfl
theorem Padded146_bounded : secLinesBoundedB 24 Padded146 = true := by kernel_rfl
theorem Padded147_bounded : secLinesBoundedB 24 Padded147 = true := by kernel_rfl
theorem Padded148_bounded : secLinesBoundedB 24 Padded148 = true := by kernel_rfl
theorem Padded149_bounded : secLinesBoundedB 24 Padded149 = true := by kernel_rfl
theorem Padded150_bounded : secLinesBoundedB 24 Padded150 = true := by kernel_rfl
theorem Padded151_bounded : secLinesBoundedB 24 Padded151 = true := by kernel_rfl
theorem Padded152_bounded : secLinesBoundedB 24 Padded152 = true := by kernel_rfl
theorem Padded153_bounded : secLinesBoundedB 24 Padded153 = true := by kernel_rfl
theorem Padded154_bounded : secLinesBoundedB 24 Padded154 = true := by kernel_rfl
theorem Padded155_bounded : secLinesBoundedB 24 Padded155 = true := by kernel_rfl
theorem Padded156_bounded : secLinesBoundedB 24 Padded156 = true := by kernel_rfl
theorem Padded157_bounded : secLinesBoundedB 24 Padded157 = true := by kernel_rfl
theorem Padded158_bounded : secLinesBoundedB 24 Padded158 = true := by kernel_rfl
theorem Padded159_bounded : secLinesBoundedB 24 Padded159 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk144_159.padded = true := by
  unfold FinalChunk144_159.padded
  exact (linesBoundedB_cons 24 Padded144_bounded
    (linesBoundedB_cons 24 Padded145_bounded
    (linesBoundedB_cons 24 Padded146_bounded
    (linesBoundedB_cons 24 Padded147_bounded
    (linesBoundedB_cons 24 Padded148_bounded
    (linesBoundedB_cons 24 Padded149_bounded
    (linesBoundedB_cons 24 Padded150_bounded
    (linesBoundedB_cons 24 Padded151_bounded
    (linesBoundedB_cons 24 Padded152_bounded
    (linesBoundedB_cons 24 Padded153_bounded
    (linesBoundedB_cons 24 Padded154_bounded
    (linesBoundedB_cons 24 Padded155_bounded
    (linesBoundedB_cons 24 Padded156_bounded
    (linesBoundedB_cons 24 Padded157_bounded
    (linesBoundedB_cons 24 Padded158_bounded
    (linesBoundedB_cons 24 Padded159_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk144_159

#print axioms InitECandidate.Solver.LineBound.Chunk144_159.bounded
