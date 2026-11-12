import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk272_287

/-! Line-length checks for the padded sections of `FinalChunk272_287.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk272_287
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded272_bounded : secLinesBoundedB 24 Padded272 = true := by kernel_rfl
theorem Padded273_bounded : secLinesBoundedB 24 Padded273 = true := by kernel_rfl
theorem Padded274_bounded : secLinesBoundedB 24 Padded274 = true := by kernel_rfl
theorem Padded275_bounded : secLinesBoundedB 24 Padded275 = true := by kernel_rfl
theorem Padded276_bounded : secLinesBoundedB 24 Padded276 = true := by kernel_rfl
theorem Padded277_bounded : secLinesBoundedB 24 Padded277 = true := by kernel_rfl
theorem Padded278_bounded : secLinesBoundedB 24 Padded278 = true := by kernel_rfl
theorem Padded279_bounded : secLinesBoundedB 24 Padded279 = true := by kernel_rfl
theorem Padded280_bounded : secLinesBoundedB 24 Padded280 = true := by kernel_rfl
theorem Padded281_bounded : secLinesBoundedB 24 Padded281 = true := by kernel_rfl
theorem Padded282_bounded : secLinesBoundedB 24 Padded282 = true := by kernel_rfl
theorem Padded283_bounded : secLinesBoundedB 24 Padded283 = true := by kernel_rfl
theorem Padded284_bounded : secLinesBoundedB 24 Padded284 = true := by kernel_rfl
theorem Padded285_bounded : secLinesBoundedB 24 Padded285 = true := by kernel_rfl
theorem Padded286_bounded : secLinesBoundedB 24 Padded286 = true := by kernel_rfl
theorem Padded287_bounded : secLinesBoundedB 24 Padded287 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk272_287.padded = true := by
  unfold FinalChunk272_287.padded
  exact (linesBoundedB_cons 24 Padded272_bounded
    (linesBoundedB_cons 24 Padded273_bounded
    (linesBoundedB_cons 24 Padded274_bounded
    (linesBoundedB_cons 24 Padded275_bounded
    (linesBoundedB_cons 24 Padded276_bounded
    (linesBoundedB_cons 24 Padded277_bounded
    (linesBoundedB_cons 24 Padded278_bounded
    (linesBoundedB_cons 24 Padded279_bounded
    (linesBoundedB_cons 24 Padded280_bounded
    (linesBoundedB_cons 24 Padded281_bounded
    (linesBoundedB_cons 24 Padded282_bounded
    (linesBoundedB_cons 24 Padded283_bounded
    (linesBoundedB_cons 24 Padded284_bounded
    (linesBoundedB_cons 24 Padded285_bounded
    (linesBoundedB_cons 24 Padded286_bounded
    (linesBoundedB_cons 24 Padded287_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk272_287

#print axioms InitECandidate.Solver.LineBound.Chunk272_287.bounded
