import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk848_863

/-! Line-length checks for the padded sections of `FinalChunk848_863.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk848_863
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded848_bounded : secLinesBoundedB 24 Padded848 = true := by kernel_rfl
theorem Padded849_bounded : secLinesBoundedB 24 Padded849 = true := by kernel_rfl
theorem Padded850_bounded : secLinesBoundedB 24 Padded850 = true := by kernel_rfl
theorem Padded851_bounded : secLinesBoundedB 24 Padded851 = true := by kernel_rfl
theorem Padded852_bounded : secLinesBoundedB 24 Padded852 = true := by kernel_rfl
theorem Padded853_bounded : secLinesBoundedB 24 Padded853 = true := by kernel_rfl
theorem Padded854_bounded : secLinesBoundedB 24 Padded854 = true := by kernel_rfl
theorem Padded855_bounded : secLinesBoundedB 24 Padded855 = true := by kernel_rfl
theorem Padded856_bounded : secLinesBoundedB 24 Padded856 = true := by kernel_rfl
theorem Padded857_bounded : secLinesBoundedB 24 Padded857 = true := by kernel_rfl
theorem Padded858_bounded : secLinesBoundedB 24 Padded858 = true := by kernel_rfl
theorem Padded859_bounded : secLinesBoundedB 24 Padded859 = true := by kernel_rfl
theorem Padded860_bounded : secLinesBoundedB 24 Padded860 = true := by kernel_rfl
theorem Padded861_bounded : secLinesBoundedB 24 Padded861 = true := by kernel_rfl
theorem Padded862_bounded : secLinesBoundedB 24 Padded862 = true := by kernel_rfl
theorem Padded863_bounded : secLinesBoundedB 24 Padded863 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk848_863.padded = true := by
  unfold FinalChunk848_863.padded
  exact (linesBoundedB_cons 24 Padded848_bounded
    (linesBoundedB_cons 24 Padded849_bounded
    (linesBoundedB_cons 24 Padded850_bounded
    (linesBoundedB_cons 24 Padded851_bounded
    (linesBoundedB_cons 24 Padded852_bounded
    (linesBoundedB_cons 24 Padded853_bounded
    (linesBoundedB_cons 24 Padded854_bounded
    (linesBoundedB_cons 24 Padded855_bounded
    (linesBoundedB_cons 24 Padded856_bounded
    (linesBoundedB_cons 24 Padded857_bounded
    (linesBoundedB_cons 24 Padded858_bounded
    (linesBoundedB_cons 24 Padded859_bounded
    (linesBoundedB_cons 24 Padded860_bounded
    (linesBoundedB_cons 24 Padded861_bounded
    (linesBoundedB_cons 24 Padded862_bounded
    (linesBoundedB_cons 24 Padded863_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk848_863

#print axioms InitECandidate.Solver.LineBound.Chunk848_863.bounded
