import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk320_335

/-! Line-length checks for the padded sections of `FinalChunk320_335.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk320_335
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded320_bounded : secLinesBoundedB 24 Padded320 = true := by kernel_rfl
theorem Padded321_bounded : secLinesBoundedB 24 Padded321 = true := by kernel_rfl
theorem Padded322_bounded : secLinesBoundedB 24 Padded322 = true := by kernel_rfl
theorem Padded323_bounded : secLinesBoundedB 24 Padded323 = true := by kernel_rfl
theorem Padded324_bounded : secLinesBoundedB 24 Padded324 = true := by kernel_rfl
theorem Padded325_bounded : secLinesBoundedB 24 Padded325 = true := by kernel_rfl
theorem Padded326_bounded : secLinesBoundedB 24 Padded326 = true := by kernel_rfl
theorem Padded327_bounded : secLinesBoundedB 24 Padded327 = true := by kernel_rfl
theorem Padded328_bounded : secLinesBoundedB 24 Padded328 = true := by kernel_rfl
theorem Padded329_bounded : secLinesBoundedB 24 Padded329 = true := by kernel_rfl
theorem Padded330_bounded : secLinesBoundedB 24 Padded330 = true := by kernel_rfl
theorem Padded331_bounded : secLinesBoundedB 24 Padded331 = true := by kernel_rfl
theorem Padded332_bounded : secLinesBoundedB 24 Padded332 = true := by kernel_rfl
theorem Padded333_bounded : secLinesBoundedB 24 Padded333 = true := by kernel_rfl
theorem Padded334_bounded : secLinesBoundedB 24 Padded334 = true := by kernel_rfl
theorem Padded335_bounded : secLinesBoundedB 24 Padded335 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk320_335.padded = true := by
  unfold FinalChunk320_335.padded
  exact (linesBoundedB_cons 24 Padded320_bounded
    (linesBoundedB_cons 24 Padded321_bounded
    (linesBoundedB_cons 24 Padded322_bounded
    (linesBoundedB_cons 24 Padded323_bounded
    (linesBoundedB_cons 24 Padded324_bounded
    (linesBoundedB_cons 24 Padded325_bounded
    (linesBoundedB_cons 24 Padded326_bounded
    (linesBoundedB_cons 24 Padded327_bounded
    (linesBoundedB_cons 24 Padded328_bounded
    (linesBoundedB_cons 24 Padded329_bounded
    (linesBoundedB_cons 24 Padded330_bounded
    (linesBoundedB_cons 24 Padded331_bounded
    (linesBoundedB_cons 24 Padded332_bounded
    (linesBoundedB_cons 24 Padded333_bounded
    (linesBoundedB_cons 24 Padded334_bounded
    (linesBoundedB_cons 24 Padded335_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk320_335

#print axioms InitECandidate.Solver.LineBound.Chunk320_335.bounded
