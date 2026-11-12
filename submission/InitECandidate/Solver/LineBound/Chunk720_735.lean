import InitECandidate.Solver.LineBound.Basic
import InitECandidate.Proofs.BackendStages.FinalChunk720_735

/-! Line-length checks for the padded sections of `FinalChunk720_735.padded`
(one kernel-checked Boolean evaluation per baseline `PaddedN` shard). -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound.Chunk720_735
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem Padded720_bounded : secLinesBoundedB 24 Padded720 = true := by kernel_rfl
theorem Padded721_bounded : secLinesBoundedB 24 Padded721 = true := by kernel_rfl
theorem Padded722_bounded : secLinesBoundedB 24 Padded722 = true := by kernel_rfl
theorem Padded723_bounded : secLinesBoundedB 24 Padded723 = true := by kernel_rfl
theorem Padded724_bounded : secLinesBoundedB 24 Padded724 = true := by kernel_rfl
theorem Padded725_bounded : secLinesBoundedB 24 Padded725 = true := by kernel_rfl
theorem Padded726_bounded : secLinesBoundedB 24 Padded726 = true := by kernel_rfl
theorem Padded727_bounded : secLinesBoundedB 24 Padded727 = true := by kernel_rfl
theorem Padded728_bounded : secLinesBoundedB 24 Padded728 = true := by kernel_rfl
theorem Padded729_bounded : secLinesBoundedB 24 Padded729 = true := by kernel_rfl
theorem Padded730_bounded : secLinesBoundedB 24 Padded730 = true := by kernel_rfl
theorem Padded731_bounded : secLinesBoundedB 24 Padded731 = true := by kernel_rfl
theorem Padded732_bounded : secLinesBoundedB 24 Padded732 = true := by kernel_rfl
theorem Padded733_bounded : secLinesBoundedB 24 Padded733 = true := by kernel_rfl
theorem Padded734_bounded : secLinesBoundedB 24 Padded734 = true := by kernel_rfl
theorem Padded735_bounded : secLinesBoundedB 24 Padded735 = true := by kernel_rfl

theorem bounded : linesBoundedB 24 FinalChunk720_735.padded = true := by
  unfold FinalChunk720_735.padded
  exact (linesBoundedB_cons 24 Padded720_bounded
    (linesBoundedB_cons 24 Padded721_bounded
    (linesBoundedB_cons 24 Padded722_bounded
    (linesBoundedB_cons 24 Padded723_bounded
    (linesBoundedB_cons 24 Padded724_bounded
    (linesBoundedB_cons 24 Padded725_bounded
    (linesBoundedB_cons 24 Padded726_bounded
    (linesBoundedB_cons 24 Padded727_bounded
    (linesBoundedB_cons 24 Padded728_bounded
    (linesBoundedB_cons 24 Padded729_bounded
    (linesBoundedB_cons 24 Padded730_bounded
    (linesBoundedB_cons 24 Padded731_bounded
    (linesBoundedB_cons 24 Padded732_bounded
    (linesBoundedB_cons 24 Padded733_bounded
    (linesBoundedB_cons 24 Padded734_bounded
    (linesBoundedB_cons 24 Padded735_bounded
    (linesBoundedB_nil 24)))))))))))))))))

end InitECandidate.Solver.LineBound.Chunk720_735

#print axioms InitECandidate.Solver.LineBound.Chunk720_735.bounded
