import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk208_223

/-! Line-length checks for the padded sections of `FinalChunk208_223.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk208_223
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded208_bounded : secLinesBoundedB 24 Padded208 = true := by kernel_rfl
theorem Padded209_bounded : secLinesBoundedB 24 Padded209 = true := by kernel_rfl
theorem Padded210_bounded : secLinesBoundedB 24 Padded210 = true := by kernel_rfl
theorem Padded211_bounded : secLinesBoundedB 24 Padded211 = true := by kernel_rfl
theorem Padded212_bounded : secLinesBoundedB 24 Padded212 = true := by kernel_rfl
theorem Padded213_bounded : secLinesBoundedB 24 Padded213 = true := by kernel_rfl
theorem Padded214_bounded : secLinesBoundedB 24 Padded214 = true := by kernel_rfl
theorem Padded215_bounded : secLinesBoundedB 24 Padded215 = true := by kernel_rfl
theorem Padded216_bounded : secLinesBoundedB 24 Padded216 = true := by kernel_rfl
theorem Padded217_bounded : secLinesBoundedB 24 Padded217 = true := by kernel_rfl
theorem Padded218_bounded : secLinesBoundedB 24 Padded218 = true := by kernel_rfl
theorem Padded219_bounded : secLinesBoundedB 24 Padded219 = true := by kernel_rfl
theorem Padded220_bounded : secLinesBoundedB 24 Padded220 = true := by kernel_rfl
theorem Padded221_bounded : secLinesBoundedB 24 Padded221 = true := by kernel_rfl
theorem Padded222_bounded : secLinesBoundedB 24 Padded222 = true := by kernel_rfl
theorem Padded223_bounded : secLinesBoundedB 24 Padded223 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk208_223.padded = true := by
  unfold FinalChunk208_223.padded
  exact (linesBoundedB_cons 24 Padded208_bounded
    (linesBoundedB_cons 24 Padded209_bounded
    (linesBoundedB_cons 24 Padded210_bounded
    (linesBoundedB_cons 24 Padded211_bounded
    (linesBoundedB_cons 24 Padded212_bounded
    (linesBoundedB_cons 24 Padded213_bounded
    (linesBoundedB_cons 24 Padded214_bounded
    (linesBoundedB_cons 24 Padded215_bounded
    (linesBoundedB_cons 24 Padded216_bounded
    (linesBoundedB_cons 24 Padded217_bounded
    (linesBoundedB_cons 24 Padded218_bounded
    (linesBoundedB_cons 24 Padded219_bounded
    (linesBoundedB_cons 24 Padded220_bounded
    (linesBoundedB_cons 24 Padded221_bounded
    (linesBoundedB_cons 24 Padded222_bounded
    (linesBoundedB_cons 24 Padded223_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk208_223

#print axioms InitECandidate.Solver.LineBound.Chunk208_223.bounded
