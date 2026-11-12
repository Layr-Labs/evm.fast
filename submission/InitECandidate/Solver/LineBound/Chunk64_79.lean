import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk64_79

/-! Line-length checks for the padded sections of `FinalChunk64_79.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk64_79
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded64_bounded : secLinesBoundedB 24 Padded64 = true := by kernel_rfl
theorem Padded65_bounded : secLinesBoundedB 24 Padded65 = true := by kernel_rfl
theorem Padded66_bounded : secLinesBoundedB 24 Padded66 = true := by kernel_rfl
theorem Padded67_bounded : secLinesBoundedB 24 Padded67 = true := by kernel_rfl
theorem Padded68_bounded : secLinesBoundedB 24 Padded68 = true := by kernel_rfl
theorem Padded69_bounded : secLinesBoundedB 24 Padded69 = true := by kernel_rfl
theorem Padded70_bounded : secLinesBoundedB 24 Padded70 = true := by kernel_rfl
theorem Padded71_bounded : secLinesBoundedB 24 Padded71 = true := by kernel_rfl
theorem Padded72_bounded : secLinesBoundedB 24 Padded72 = true := by kernel_rfl
theorem Padded73_bounded : secLinesBoundedB 24 Padded73 = true := by kernel_rfl
theorem Padded74_bounded : secLinesBoundedB 24 Padded74 = true := by kernel_rfl
theorem Padded75_bounded : secLinesBoundedB 24 Padded75 = true := by kernel_rfl
theorem Padded76_bounded : secLinesBoundedB 24 Padded76 = true := by kernel_rfl
theorem Padded77_bounded : secLinesBoundedB 24 Padded77 = true := by kernel_rfl
theorem Padded78_bounded : secLinesBoundedB 24 Padded78 = true := by kernel_rfl
theorem Padded79_bounded : secLinesBoundedB 24 Padded79 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk64_79.padded = true := by
  unfold FinalChunk64_79.padded
  exact (linesBoundedB_cons 24 Padded64_bounded
    (linesBoundedB_cons 24 Padded65_bounded
    (linesBoundedB_cons 24 Padded66_bounded
    (linesBoundedB_cons 24 Padded67_bounded
    (linesBoundedB_cons 24 Padded68_bounded
    (linesBoundedB_cons 24 Padded69_bounded
    (linesBoundedB_cons 24 Padded70_bounded
    (linesBoundedB_cons 24 Padded71_bounded
    (linesBoundedB_cons 24 Padded72_bounded
    (linesBoundedB_cons 24 Padded73_bounded
    (linesBoundedB_cons 24 Padded74_bounded
    (linesBoundedB_cons 24 Padded75_bounded
    (linesBoundedB_cons 24 Padded76_bounded
    (linesBoundedB_cons 24 Padded77_bounded
    (linesBoundedB_cons 24 Padded78_bounded
    (linesBoundedB_cons 24 Padded79_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk64_79

#print axioms InitECandidate.Solver.LineBound.Chunk64_79.bounded
