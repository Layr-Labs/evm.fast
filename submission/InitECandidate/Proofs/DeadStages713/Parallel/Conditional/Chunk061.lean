import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk061
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node15616_cond_eq
    (child7158 : Flapjack.WordAlloc.removeDeadStructural input7158 value5 value1 value2 = (output7158, value3583, value1))
    (child15615 : Flapjack.WordAlloc.removeDeadStructural input15615 value3583 value1 value2 = (output15615, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15616 value5 value1 value2 = (output15616, value6896, value1) := by
  rw [input15616_def, output15616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7158]
  try dsimp only
  rw [child15615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7158_skip, output15615_skip]
  kernel_rfl

theorem node15617_cond_eq
    (child7155 : Flapjack.WordAlloc.removeDeadStructural input7155 value3576 value1 value2 = (output7155, value5, value1))
    (child15616 : Flapjack.WordAlloc.removeDeadStructural input15616 value5 value1 value2 = (output15616, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15617 value3576 value1 value2 = (output15617, value6896, value1) := by
  rw [input15617_def, output15617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7155]
  try dsimp only
  rw [child15616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7155_skip, output15616_skip]
  kernel_rfl

theorem node15618_cond_eq
    (child7144 : Flapjack.WordAlloc.removeDeadStructural input7144 value3576 value1 value2 = (output7144, value3576, value1))
    (child15617 : Flapjack.WordAlloc.removeDeadStructural input15617 value3576 value1 value2 = (output15617, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15618 value3576 value1 value2 = (output15618, value6896, value1) := by
  rw [input15618_def, output15618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7144]
  try dsimp only
  rw [child15617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7144_skip, output15617_skip]
  kernel_rfl

theorem node15619_cond_eq
    (child7143 : Flapjack.WordAlloc.removeDeadStructural input7143 value3575 value1 value2 = (output7143, value3576, value1))
    (child15618 : Flapjack.WordAlloc.removeDeadStructural input15618 value3576 value1 value2 = (output15618, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15619 value3575 value1 value2 = (output15619, value6896, value1) := by
  rw [input15619_def, output15619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7143]
  try dsimp only
  rw [child15618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7143_skip, output15618_skip]
  kernel_rfl

theorem node15620_cond_eq
    (child7142 : Flapjack.WordAlloc.removeDeadStructural input7142 value5 value1 value2 = (output7142, value3575, value1))
    (child15619 : Flapjack.WordAlloc.removeDeadStructural input15619 value3575 value1 value2 = (output15619, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15620 value5 value1 value2 = (output15620, value6896, value1) := by
  rw [input15620_def, output15620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7142]
  try dsimp only
  rw [child15619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7142_skip, output15619_skip]
  kernel_rfl

theorem node15621_cond_eq
    (child7139 : Flapjack.WordAlloc.removeDeadStructural input7139 value3568 value1 value2 = (output7139, value5, value1))
    (child15620 : Flapjack.WordAlloc.removeDeadStructural input15620 value5 value1 value2 = (output15620, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15621 value3568 value1 value2 = (output15621, value6896, value1) := by
  rw [input15621_def, output15621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7139]
  try dsimp only
  rw [child15620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7139_skip, output15620_skip]
  kernel_rfl

theorem node15622_cond_eq
    (child7128 : Flapjack.WordAlloc.removeDeadStructural input7128 value3568 value1 value2 = (output7128, value3568, value1))
    (child15621 : Flapjack.WordAlloc.removeDeadStructural input15621 value3568 value1 value2 = (output15621, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15622 value3568 value1 value2 = (output15622, value6896, value1) := by
  rw [input15622_def, output15622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7128]
  try dsimp only
  rw [child15621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7128_skip, output15621_skip]
  kernel_rfl

theorem node15623_cond_eq
    (child7127 : Flapjack.WordAlloc.removeDeadStructural input7127 value3567 value1 value2 = (output7127, value3568, value1))
    (child15622 : Flapjack.WordAlloc.removeDeadStructural input15622 value3568 value1 value2 = (output15622, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15623 value3567 value1 value2 = (output15623, value6896, value1) := by
  rw [input15623_def, output15623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7127]
  try dsimp only
  rw [child15622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7127_skip, output15622_skip]
  kernel_rfl

theorem node15624_cond_eq
    (child7126 : Flapjack.WordAlloc.removeDeadStructural input7126 value5 value1 value2 = (output7126, value3567, value1))
    (child15623 : Flapjack.WordAlloc.removeDeadStructural input15623 value3567 value1 value2 = (output15623, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15624 value5 value1 value2 = (output15624, value6896, value1) := by
  rw [input15624_def, output15624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7126]
  try dsimp only
  rw [child15623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7126_skip, output15623_skip]
  kernel_rfl

theorem node15625_cond_eq
    (child7123 : Flapjack.WordAlloc.removeDeadStructural input7123 value3560 value1 value2 = (output7123, value5, value1))
    (child15624 : Flapjack.WordAlloc.removeDeadStructural input15624 value5 value1 value2 = (output15624, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15625 value3560 value1 value2 = (output15625, value6896, value1) := by
  rw [input15625_def, output15625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7123]
  try dsimp only
  rw [child15624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7123_skip, output15624_skip]
  kernel_rfl

theorem node15626_cond_eq
    (child7112 : Flapjack.WordAlloc.removeDeadStructural input7112 value3560 value1 value2 = (output7112, value3560, value1))
    (child15625 : Flapjack.WordAlloc.removeDeadStructural input15625 value3560 value1 value2 = (output15625, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15626 value3560 value1 value2 = (output15626, value6896, value1) := by
  rw [input15626_def, output15626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7112]
  try dsimp only
  rw [child15625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7112_skip, output15625_skip]
  kernel_rfl

theorem node15627_cond_eq
    (child7111 : Flapjack.WordAlloc.removeDeadStructural input7111 value3559 value1 value2 = (output7111, value3560, value1))
    (child15626 : Flapjack.WordAlloc.removeDeadStructural input15626 value3560 value1 value2 = (output15626, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15627 value3559 value1 value2 = (output15627, value6896, value1) := by
  rw [input15627_def, output15627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7111]
  try dsimp only
  rw [child15626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7111_skip, output15626_skip]
  kernel_rfl

theorem node15628_cond_eq
    (child7110 : Flapjack.WordAlloc.removeDeadStructural input7110 value5 value1 value2 = (output7110, value3559, value1))
    (child15627 : Flapjack.WordAlloc.removeDeadStructural input15627 value3559 value1 value2 = (output15627, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15628 value5 value1 value2 = (output15628, value6896, value1) := by
  rw [input15628_def, output15628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7110]
  try dsimp only
  rw [child15627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7110_skip, output15627_skip]
  kernel_rfl

theorem node15629_cond_eq
    (child7107 : Flapjack.WordAlloc.removeDeadStructural input7107 value3552 value1 value2 = (output7107, value5, value1))
    (child15628 : Flapjack.WordAlloc.removeDeadStructural input15628 value5 value1 value2 = (output15628, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15629 value3552 value1 value2 = (output15629, value6896, value1) := by
  rw [input15629_def, output15629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7107]
  try dsimp only
  rw [child15628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7107_skip, output15628_skip]
  kernel_rfl

theorem node15630_cond_eq
    (child7096 : Flapjack.WordAlloc.removeDeadStructural input7096 value3552 value1 value2 = (output7096, value3552, value1))
    (child15629 : Flapjack.WordAlloc.removeDeadStructural input15629 value3552 value1 value2 = (output15629, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15630 value3552 value1 value2 = (output15630, value6896, value1) := by
  rw [input15630_def, output15630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7096]
  try dsimp only
  rw [child15629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7096_skip, output15629_skip]
  kernel_rfl

theorem node15631_cond_eq
    (child7095 : Flapjack.WordAlloc.removeDeadStructural input7095 value3551 value1 value2 = (output7095, value3552, value1))
    (child15630 : Flapjack.WordAlloc.removeDeadStructural input15630 value3552 value1 value2 = (output15630, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15631 value3551 value1 value2 = (output15631, value6896, value1) := by
  rw [input15631_def, output15631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7095]
  try dsimp only
  rw [child15630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7095_skip, output15630_skip]
  kernel_rfl

theorem node15632_cond_eq
    (child7094 : Flapjack.WordAlloc.removeDeadStructural input7094 value5 value1 value2 = (output7094, value3551, value1))
    (child15631 : Flapjack.WordAlloc.removeDeadStructural input15631 value3551 value1 value2 = (output15631, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15632 value5 value1 value2 = (output15632, value6896, value1) := by
  rw [input15632_def, output15632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7094]
  try dsimp only
  rw [child15631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7094_skip, output15631_skip]
  kernel_rfl

theorem node15633_cond_eq
    (child7091 : Flapjack.WordAlloc.removeDeadStructural input7091 value3544 value1 value2 = (output7091, value5, value1))
    (child15632 : Flapjack.WordAlloc.removeDeadStructural input15632 value5 value1 value2 = (output15632, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15633 value3544 value1 value2 = (output15633, value6896, value1) := by
  rw [input15633_def, output15633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7091]
  try dsimp only
  rw [child15632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7091_skip, output15632_skip]
  kernel_rfl

theorem node15634_cond_eq
    (child7080 : Flapjack.WordAlloc.removeDeadStructural input7080 value3544 value1 value2 = (output7080, value3544, value1))
    (child15633 : Flapjack.WordAlloc.removeDeadStructural input15633 value3544 value1 value2 = (output15633, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15634 value3544 value1 value2 = (output15634, value6896, value1) := by
  rw [input15634_def, output15634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7080]
  try dsimp only
  rw [child15633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7080_skip, output15633_skip]
  kernel_rfl

theorem node15635_cond_eq
    (child7079 : Flapjack.WordAlloc.removeDeadStructural input7079 value3543 value1 value2 = (output7079, value3544, value1))
    (child15634 : Flapjack.WordAlloc.removeDeadStructural input15634 value3544 value1 value2 = (output15634, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15635 value3543 value1 value2 = (output15635, value6896, value1) := by
  rw [input15635_def, output15635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7079]
  try dsimp only
  rw [child15634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7079_skip, output15634_skip]
  kernel_rfl

theorem node15636_cond_eq
    (child7078 : Flapjack.WordAlloc.removeDeadStructural input7078 value5 value1 value2 = (output7078, value3543, value1))
    (child15635 : Flapjack.WordAlloc.removeDeadStructural input15635 value3543 value1 value2 = (output15635, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15636 value5 value1 value2 = (output15636, value6896, value1) := by
  rw [input15636_def, output15636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7078]
  try dsimp only
  rw [child15635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7078_skip, output15635_skip]
  kernel_rfl

theorem node15637_cond_eq
    (child7075 : Flapjack.WordAlloc.removeDeadStructural input7075 value3536 value1 value2 = (output7075, value5, value1))
    (child15636 : Flapjack.WordAlloc.removeDeadStructural input15636 value5 value1 value2 = (output15636, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15637 value3536 value1 value2 = (output15637, value6896, value1) := by
  rw [input15637_def, output15637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7075]
  try dsimp only
  rw [child15636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7075_skip, output15636_skip]
  kernel_rfl

theorem node15638_cond_eq
    (child7064 : Flapjack.WordAlloc.removeDeadStructural input7064 value3536 value1 value2 = (output7064, value3536, value1))
    (child15637 : Flapjack.WordAlloc.removeDeadStructural input15637 value3536 value1 value2 = (output15637, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15638 value3536 value1 value2 = (output15638, value6896, value1) := by
  rw [input15638_def, output15638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7064]
  try dsimp only
  rw [child15637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7064_skip, output15637_skip]
  kernel_rfl

theorem node15639_cond_eq
    (child7063 : Flapjack.WordAlloc.removeDeadStructural input7063 value3535 value1 value2 = (output7063, value3536, value1))
    (child15638 : Flapjack.WordAlloc.removeDeadStructural input15638 value3536 value1 value2 = (output15638, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15639 value3535 value1 value2 = (output15639, value6896, value1) := by
  rw [input15639_def, output15639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7063]
  try dsimp only
  rw [child15638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7063_skip, output15638_skip]
  kernel_rfl

theorem node15640_cond_eq
    (child7062 : Flapjack.WordAlloc.removeDeadStructural input7062 value5 value1 value2 = (output7062, value3535, value1))
    (child15639 : Flapjack.WordAlloc.removeDeadStructural input15639 value3535 value1 value2 = (output15639, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15640 value5 value1 value2 = (output15640, value6896, value1) := by
  rw [input15640_def, output15640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7062]
  try dsimp only
  rw [child15639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7062_skip, output15639_skip]
  kernel_rfl

theorem node15641_cond_eq
    (child7059 : Flapjack.WordAlloc.removeDeadStructural input7059 value3528 value1 value2 = (output7059, value5, value1))
    (child15640 : Flapjack.WordAlloc.removeDeadStructural input15640 value5 value1 value2 = (output15640, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15641 value3528 value1 value2 = (output15641, value6896, value1) := by
  rw [input15641_def, output15641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7059]
  try dsimp only
  rw [child15640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7059_skip, output15640_skip]
  kernel_rfl

theorem node15642_cond_eq
    (child7048 : Flapjack.WordAlloc.removeDeadStructural input7048 value3528 value1 value2 = (output7048, value3528, value1))
    (child15641 : Flapjack.WordAlloc.removeDeadStructural input15641 value3528 value1 value2 = (output15641, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15642 value3528 value1 value2 = (output15642, value6896, value1) := by
  rw [input15642_def, output15642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7048]
  try dsimp only
  rw [child15641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7048_skip, output15641_skip]
  kernel_rfl

theorem node15643_cond_eq
    (child7047 : Flapjack.WordAlloc.removeDeadStructural input7047 value3527 value1 value2 = (output7047, value3528, value1))
    (child15642 : Flapjack.WordAlloc.removeDeadStructural input15642 value3528 value1 value2 = (output15642, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15643 value3527 value1 value2 = (output15643, value6896, value1) := by
  rw [input15643_def, output15643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7047]
  try dsimp only
  rw [child15642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7047_skip, output15642_skip]
  kernel_rfl

theorem node15644_cond_eq
    (child7046 : Flapjack.WordAlloc.removeDeadStructural input7046 value5 value1 value2 = (output7046, value3527, value1))
    (child15643 : Flapjack.WordAlloc.removeDeadStructural input15643 value3527 value1 value2 = (output15643, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15644 value5 value1 value2 = (output15644, value6896, value1) := by
  rw [input15644_def, output15644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7046]
  try dsimp only
  rw [child15643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7046_skip, output15643_skip]
  kernel_rfl

theorem node15645_cond_eq
    (child7043 : Flapjack.WordAlloc.removeDeadStructural input7043 value3520 value1 value2 = (output7043, value5, value1))
    (child15644 : Flapjack.WordAlloc.removeDeadStructural input15644 value5 value1 value2 = (output15644, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15645 value3520 value1 value2 = (output15645, value6896, value1) := by
  rw [input15645_def, output15645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7043]
  try dsimp only
  rw [child15644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7043_skip, output15644_skip]
  kernel_rfl

theorem node15646_cond_eq
    (child7032 : Flapjack.WordAlloc.removeDeadStructural input7032 value3520 value1 value2 = (output7032, value3520, value1))
    (child15645 : Flapjack.WordAlloc.removeDeadStructural input15645 value3520 value1 value2 = (output15645, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15646 value3520 value1 value2 = (output15646, value6896, value1) := by
  rw [input15646_def, output15646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7032]
  try dsimp only
  rw [child15645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7032_skip, output15645_skip]
  kernel_rfl

theorem node15647_cond_eq
    (child7031 : Flapjack.WordAlloc.removeDeadStructural input7031 value3519 value1 value2 = (output7031, value3520, value1))
    (child15646 : Flapjack.WordAlloc.removeDeadStructural input15646 value3520 value1 value2 = (output15646, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15647 value3519 value1 value2 = (output15647, value6896, value1) := by
  rw [input15647_def, output15647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7031]
  try dsimp only
  rw [child15646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7031_skip, output15646_skip]
  kernel_rfl

theorem node15648_cond_eq
    (child7030 : Flapjack.WordAlloc.removeDeadStructural input7030 value5 value1 value2 = (output7030, value3519, value1))
    (child15647 : Flapjack.WordAlloc.removeDeadStructural input15647 value3519 value1 value2 = (output15647, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15648 value5 value1 value2 = (output15648, value6896, value1) := by
  rw [input15648_def, output15648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7030]
  try dsimp only
  rw [child15647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7030_skip, output15647_skip]
  kernel_rfl

theorem node15649_cond_eq
    (child7027 : Flapjack.WordAlloc.removeDeadStructural input7027 value3512 value1 value2 = (output7027, value5, value1))
    (child15648 : Flapjack.WordAlloc.removeDeadStructural input15648 value5 value1 value2 = (output15648, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15649 value3512 value1 value2 = (output15649, value6896, value1) := by
  rw [input15649_def, output15649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7027]
  try dsimp only
  rw [child15648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7027_skip, output15648_skip]
  kernel_rfl

theorem node15650_cond_eq
    (child7016 : Flapjack.WordAlloc.removeDeadStructural input7016 value3512 value1 value2 = (output7016, value3512, value1))
    (child15649 : Flapjack.WordAlloc.removeDeadStructural input15649 value3512 value1 value2 = (output15649, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15650 value3512 value1 value2 = (output15650, value6896, value1) := by
  rw [input15650_def, output15650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7016]
  try dsimp only
  rw [child15649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7016_skip, output15649_skip]
  kernel_rfl

theorem node15651_cond_eq
    (child7015 : Flapjack.WordAlloc.removeDeadStructural input7015 value3511 value1 value2 = (output7015, value3512, value1))
    (child15650 : Flapjack.WordAlloc.removeDeadStructural input15650 value3512 value1 value2 = (output15650, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15651 value3511 value1 value2 = (output15651, value6896, value1) := by
  rw [input15651_def, output15651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7015]
  try dsimp only
  rw [child15650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7015_skip, output15650_skip]
  kernel_rfl

theorem node15652_cond_eq
    (child7014 : Flapjack.WordAlloc.removeDeadStructural input7014 value5 value1 value2 = (output7014, value3511, value1))
    (child15651 : Flapjack.WordAlloc.removeDeadStructural input15651 value3511 value1 value2 = (output15651, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15652 value5 value1 value2 = (output15652, value6896, value1) := by
  rw [input15652_def, output15652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7014]
  try dsimp only
  rw [child15651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7014_skip, output15651_skip]
  kernel_rfl

theorem node15653_cond_eq
    (child7011 : Flapjack.WordAlloc.removeDeadStructural input7011 value3504 value1 value2 = (output7011, value5, value1))
    (child15652 : Flapjack.WordAlloc.removeDeadStructural input15652 value5 value1 value2 = (output15652, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15653 value3504 value1 value2 = (output15653, value6896, value1) := by
  rw [input15653_def, output15653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7011]
  try dsimp only
  rw [child15652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7011_skip, output15652_skip]
  kernel_rfl

theorem node15654_cond_eq
    (child7000 : Flapjack.WordAlloc.removeDeadStructural input7000 value3504 value1 value2 = (output7000, value3504, value1))
    (child15653 : Flapjack.WordAlloc.removeDeadStructural input15653 value3504 value1 value2 = (output15653, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15654 value3504 value1 value2 = (output15654, value6896, value1) := by
  rw [input15654_def, output15654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7000]
  try dsimp only
  rw [child15653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7000_skip, output15653_skip]
  kernel_rfl

theorem node15655_cond_eq
    (child6999 : Flapjack.WordAlloc.removeDeadStructural input6999 value3503 value1 value2 = (output6999, value3504, value1))
    (child15654 : Flapjack.WordAlloc.removeDeadStructural input15654 value3504 value1 value2 = (output15654, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15655 value3503 value1 value2 = (output15655, value6896, value1) := by
  rw [input15655_def, output15655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6999]
  try dsimp only
  rw [child15654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6999_skip, output15654_skip]
  kernel_rfl

theorem node15656_cond_eq
    (child6998 : Flapjack.WordAlloc.removeDeadStructural input6998 value5 value1 value2 = (output6998, value3503, value1))
    (child15655 : Flapjack.WordAlloc.removeDeadStructural input15655 value3503 value1 value2 = (output15655, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15656 value5 value1 value2 = (output15656, value6896, value1) := by
  rw [input15656_def, output15656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6998]
  try dsimp only
  rw [child15655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6998_skip, output15655_skip]
  kernel_rfl

theorem node15657_cond_eq
    (child6995 : Flapjack.WordAlloc.removeDeadStructural input6995 value3496 value1 value2 = (output6995, value5, value1))
    (child15656 : Flapjack.WordAlloc.removeDeadStructural input15656 value5 value1 value2 = (output15656, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15657 value3496 value1 value2 = (output15657, value6896, value1) := by
  rw [input15657_def, output15657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6995]
  try dsimp only
  rw [child15656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6995_skip, output15656_skip]
  kernel_rfl

theorem node15658_cond_eq
    (child6984 : Flapjack.WordAlloc.removeDeadStructural input6984 value3496 value1 value2 = (output6984, value3496, value1))
    (child15657 : Flapjack.WordAlloc.removeDeadStructural input15657 value3496 value1 value2 = (output15657, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15658 value3496 value1 value2 = (output15658, value6896, value1) := by
  rw [input15658_def, output15658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6984]
  try dsimp only
  rw [child15657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6984_skip, output15657_skip]
  kernel_rfl

theorem node15659_cond_eq
    (child6983 : Flapjack.WordAlloc.removeDeadStructural input6983 value3495 value1 value2 = (output6983, value3496, value1))
    (child15658 : Flapjack.WordAlloc.removeDeadStructural input15658 value3496 value1 value2 = (output15658, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15659 value3495 value1 value2 = (output15659, value6896, value1) := by
  rw [input15659_def, output15659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6983]
  try dsimp only
  rw [child15658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6983_skip, output15658_skip]
  kernel_rfl

theorem node15660_cond_eq
    (child6982 : Flapjack.WordAlloc.removeDeadStructural input6982 value5 value1 value2 = (output6982, value3495, value1))
    (child15659 : Flapjack.WordAlloc.removeDeadStructural input15659 value3495 value1 value2 = (output15659, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15660 value5 value1 value2 = (output15660, value6896, value1) := by
  rw [input15660_def, output15660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6982]
  try dsimp only
  rw [child15659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6982_skip, output15659_skip]
  kernel_rfl

theorem node15661_cond_eq
    (child6979 : Flapjack.WordAlloc.removeDeadStructural input6979 value3488 value1 value2 = (output6979, value5, value1))
    (child15660 : Flapjack.WordAlloc.removeDeadStructural input15660 value5 value1 value2 = (output15660, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15661 value3488 value1 value2 = (output15661, value6896, value1) := by
  rw [input15661_def, output15661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6979]
  try dsimp only
  rw [child15660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6979_skip, output15660_skip]
  kernel_rfl

theorem node15662_cond_eq
    (child6968 : Flapjack.WordAlloc.removeDeadStructural input6968 value3488 value1 value2 = (output6968, value3488, value1))
    (child15661 : Flapjack.WordAlloc.removeDeadStructural input15661 value3488 value1 value2 = (output15661, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15662 value3488 value1 value2 = (output15662, value6896, value1) := by
  rw [input15662_def, output15662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6968]
  try dsimp only
  rw [child15661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6968_skip, output15661_skip]
  kernel_rfl

theorem node15663_cond_eq
    (child6967 : Flapjack.WordAlloc.removeDeadStructural input6967 value3487 value1 value2 = (output6967, value3488, value1))
    (child15662 : Flapjack.WordAlloc.removeDeadStructural input15662 value3488 value1 value2 = (output15662, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15663 value3487 value1 value2 = (output15663, value6896, value1) := by
  rw [input15663_def, output15663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6967]
  try dsimp only
  rw [child15662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6967_skip, output15662_skip]
  kernel_rfl

theorem node15664_cond_eq
    (child6966 : Flapjack.WordAlloc.removeDeadStructural input6966 value5 value1 value2 = (output6966, value3487, value1))
    (child15663 : Flapjack.WordAlloc.removeDeadStructural input15663 value3487 value1 value2 = (output15663, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15664 value5 value1 value2 = (output15664, value6896, value1) := by
  rw [input15664_def, output15664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6966]
  try dsimp only
  rw [child15663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6966_skip, output15663_skip]
  kernel_rfl

theorem node15665_cond_eq
    (child6963 : Flapjack.WordAlloc.removeDeadStructural input6963 value3480 value1 value2 = (output6963, value5, value1))
    (child15664 : Flapjack.WordAlloc.removeDeadStructural input15664 value5 value1 value2 = (output15664, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15665 value3480 value1 value2 = (output15665, value6896, value1) := by
  rw [input15665_def, output15665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6963]
  try dsimp only
  rw [child15664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6963_skip, output15664_skip]
  kernel_rfl

theorem node15666_cond_eq
    (child6952 : Flapjack.WordAlloc.removeDeadStructural input6952 value3480 value1 value2 = (output6952, value3480, value1))
    (child15665 : Flapjack.WordAlloc.removeDeadStructural input15665 value3480 value1 value2 = (output15665, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15666 value3480 value1 value2 = (output15666, value6896, value1) := by
  rw [input15666_def, output15666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6952]
  try dsimp only
  rw [child15665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6952_skip, output15665_skip]
  kernel_rfl

theorem node15667_cond_eq
    (child6951 : Flapjack.WordAlloc.removeDeadStructural input6951 value3479 value1 value2 = (output6951, value3480, value1))
    (child15666 : Flapjack.WordAlloc.removeDeadStructural input15666 value3480 value1 value2 = (output15666, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15667 value3479 value1 value2 = (output15667, value6896, value1) := by
  rw [input15667_def, output15667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6951]
  try dsimp only
  rw [child15666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6951_skip, output15666_skip]
  kernel_rfl

theorem node15668_cond_eq
    (child6950 : Flapjack.WordAlloc.removeDeadStructural input6950 value5 value1 value2 = (output6950, value3479, value1))
    (child15667 : Flapjack.WordAlloc.removeDeadStructural input15667 value3479 value1 value2 = (output15667, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15668 value5 value1 value2 = (output15668, value6896, value1) := by
  rw [input15668_def, output15668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6950]
  try dsimp only
  rw [child15667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6950_skip, output15667_skip]
  kernel_rfl

theorem node15669_cond_eq
    (child6947 : Flapjack.WordAlloc.removeDeadStructural input6947 value3472 value1 value2 = (output6947, value5, value1))
    (child15668 : Flapjack.WordAlloc.removeDeadStructural input15668 value5 value1 value2 = (output15668, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15669 value3472 value1 value2 = (output15669, value6896, value1) := by
  rw [input15669_def, output15669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6947]
  try dsimp only
  rw [child15668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6947_skip, output15668_skip]
  kernel_rfl

theorem node15670_cond_eq
    (child6936 : Flapjack.WordAlloc.removeDeadStructural input6936 value3472 value1 value2 = (output6936, value3472, value1))
    (child15669 : Flapjack.WordAlloc.removeDeadStructural input15669 value3472 value1 value2 = (output15669, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15670 value3472 value1 value2 = (output15670, value6896, value1) := by
  rw [input15670_def, output15670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6936]
  try dsimp only
  rw [child15669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6936_skip, output15669_skip]
  kernel_rfl

theorem node15671_cond_eq
    (child6935 : Flapjack.WordAlloc.removeDeadStructural input6935 value3471 value1 value2 = (output6935, value3472, value1))
    (child15670 : Flapjack.WordAlloc.removeDeadStructural input15670 value3472 value1 value2 = (output15670, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15671 value3471 value1 value2 = (output15671, value6896, value1) := by
  rw [input15671_def, output15671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6935]
  try dsimp only
  rw [child15670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6935_skip, output15670_skip]
  kernel_rfl

theorem node15672_cond_eq
    (child6934 : Flapjack.WordAlloc.removeDeadStructural input6934 value5 value1 value2 = (output6934, value3471, value1))
    (child15671 : Flapjack.WordAlloc.removeDeadStructural input15671 value3471 value1 value2 = (output15671, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15672 value5 value1 value2 = (output15672, value6896, value1) := by
  rw [input15672_def, output15672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6934]
  try dsimp only
  rw [child15671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6934_skip, output15671_skip]
  kernel_rfl

theorem node15673_cond_eq
    (child6931 : Flapjack.WordAlloc.removeDeadStructural input6931 value3464 value1 value2 = (output6931, value5, value1))
    (child15672 : Flapjack.WordAlloc.removeDeadStructural input15672 value5 value1 value2 = (output15672, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15673 value3464 value1 value2 = (output15673, value6896, value1) := by
  rw [input15673_def, output15673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6931]
  try dsimp only
  rw [child15672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6931_skip, output15672_skip]
  kernel_rfl

theorem node15674_cond_eq
    (child6920 : Flapjack.WordAlloc.removeDeadStructural input6920 value3464 value1 value2 = (output6920, value3464, value1))
    (child15673 : Flapjack.WordAlloc.removeDeadStructural input15673 value3464 value1 value2 = (output15673, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15674 value3464 value1 value2 = (output15674, value6896, value1) := by
  rw [input15674_def, output15674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6920]
  try dsimp only
  rw [child15673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6920_skip, output15673_skip]
  kernel_rfl

theorem node15675_cond_eq
    (child6919 : Flapjack.WordAlloc.removeDeadStructural input6919 value3463 value1 value2 = (output6919, value3464, value1))
    (child15674 : Flapjack.WordAlloc.removeDeadStructural input15674 value3464 value1 value2 = (output15674, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15675 value3463 value1 value2 = (output15675, value6896, value1) := by
  rw [input15675_def, output15675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6919]
  try dsimp only
  rw [child15674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6919_skip, output15674_skip]
  kernel_rfl

theorem node15676_cond_eq
    (child6918 : Flapjack.WordAlloc.removeDeadStructural input6918 value5 value1 value2 = (output6918, value3463, value1))
    (child15675 : Flapjack.WordAlloc.removeDeadStructural input15675 value3463 value1 value2 = (output15675, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15676 value5 value1 value2 = (output15676, value6896, value1) := by
  rw [input15676_def, output15676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6918]
  try dsimp only
  rw [child15675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6918_skip, output15675_skip]
  kernel_rfl

theorem node15677_cond_eq
    (child6915 : Flapjack.WordAlloc.removeDeadStructural input6915 value3456 value1 value2 = (output6915, value5, value1))
    (child15676 : Flapjack.WordAlloc.removeDeadStructural input15676 value5 value1 value2 = (output15676, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15677 value3456 value1 value2 = (output15677, value6896, value1) := by
  rw [input15677_def, output15677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6915]
  try dsimp only
  rw [child15676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6915_skip, output15676_skip]
  kernel_rfl

theorem node15678_cond_eq
    (child6904 : Flapjack.WordAlloc.removeDeadStructural input6904 value3456 value1 value2 = (output6904, value3456, value1))
    (child15677 : Flapjack.WordAlloc.removeDeadStructural input15677 value3456 value1 value2 = (output15677, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15678 value3456 value1 value2 = (output15678, value6896, value1) := by
  rw [input15678_def, output15678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6904]
  try dsimp only
  rw [child15677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6904_skip, output15677_skip]
  kernel_rfl

theorem node15679_cond_eq
    (child6903 : Flapjack.WordAlloc.removeDeadStructural input6903 value3455 value1 value2 = (output6903, value3456, value1))
    (child15678 : Flapjack.WordAlloc.removeDeadStructural input15678 value3456 value1 value2 = (output15678, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15679 value3455 value1 value2 = (output15679, value6896, value1) := by
  rw [input15679_def, output15679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6903]
  try dsimp only
  rw [child15678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6903_skip, output15678_skip]
  kernel_rfl

theorem node15680_cond_eq
    (child6902 : Flapjack.WordAlloc.removeDeadStructural input6902 value5 value1 value2 = (output6902, value3455, value1))
    (child15679 : Flapjack.WordAlloc.removeDeadStructural input15679 value3455 value1 value2 = (output15679, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15680 value5 value1 value2 = (output15680, value6896, value1) := by
  rw [input15680_def, output15680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6902]
  try dsimp only
  rw [child15679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6902_skip, output15679_skip]
  kernel_rfl

theorem node15681_cond_eq
    (child6899 : Flapjack.WordAlloc.removeDeadStructural input6899 value3448 value1 value2 = (output6899, value5, value1))
    (child15680 : Flapjack.WordAlloc.removeDeadStructural input15680 value5 value1 value2 = (output15680, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15681 value3448 value1 value2 = (output15681, value6896, value1) := by
  rw [input15681_def, output15681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6899]
  try dsimp only
  rw [child15680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6899_skip, output15680_skip]
  kernel_rfl

theorem node15682_cond_eq
    (child6888 : Flapjack.WordAlloc.removeDeadStructural input6888 value3448 value1 value2 = (output6888, value3448, value1))
    (child15681 : Flapjack.WordAlloc.removeDeadStructural input15681 value3448 value1 value2 = (output15681, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15682 value3448 value1 value2 = (output15682, value6896, value1) := by
  rw [input15682_def, output15682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6888]
  try dsimp only
  rw [child15681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6888_skip, output15681_skip]
  kernel_rfl

theorem node15683_cond_eq
    (child6887 : Flapjack.WordAlloc.removeDeadStructural input6887 value3447 value1 value2 = (output6887, value3448, value1))
    (child15682 : Flapjack.WordAlloc.removeDeadStructural input15682 value3448 value1 value2 = (output15682, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15683 value3447 value1 value2 = (output15683, value6896, value1) := by
  rw [input15683_def, output15683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6887]
  try dsimp only
  rw [child15682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6887_skip, output15682_skip]
  kernel_rfl

theorem node15684_cond_eq
    (child6886 : Flapjack.WordAlloc.removeDeadStructural input6886 value5 value1 value2 = (output6886, value3447, value1))
    (child15683 : Flapjack.WordAlloc.removeDeadStructural input15683 value3447 value1 value2 = (output15683, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15684 value5 value1 value2 = (output15684, value6896, value1) := by
  rw [input15684_def, output15684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6886]
  try dsimp only
  rw [child15683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6886_skip, output15683_skip]
  kernel_rfl

theorem node15685_cond_eq
    (child6883 : Flapjack.WordAlloc.removeDeadStructural input6883 value3440 value1 value2 = (output6883, value5, value1))
    (child15684 : Flapjack.WordAlloc.removeDeadStructural input15684 value5 value1 value2 = (output15684, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15685 value3440 value1 value2 = (output15685, value6896, value1) := by
  rw [input15685_def, output15685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6883]
  try dsimp only
  rw [child15684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6883_skip, output15684_skip]
  kernel_rfl

theorem node15686_cond_eq
    (child6872 : Flapjack.WordAlloc.removeDeadStructural input6872 value3440 value1 value2 = (output6872, value3440, value1))
    (child15685 : Flapjack.WordAlloc.removeDeadStructural input15685 value3440 value1 value2 = (output15685, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15686 value3440 value1 value2 = (output15686, value6896, value1) := by
  rw [input15686_def, output15686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6872]
  try dsimp only
  rw [child15685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6872_skip, output15685_skip]
  kernel_rfl

theorem node15687_cond_eq
    (child6871 : Flapjack.WordAlloc.removeDeadStructural input6871 value3439 value1 value2 = (output6871, value3440, value1))
    (child15686 : Flapjack.WordAlloc.removeDeadStructural input15686 value3440 value1 value2 = (output15686, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15687 value3439 value1 value2 = (output15687, value6896, value1) := by
  rw [input15687_def, output15687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6871]
  try dsimp only
  rw [child15686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6871_skip, output15686_skip]
  kernel_rfl

theorem node15688_cond_eq
    (child6870 : Flapjack.WordAlloc.removeDeadStructural input6870 value5 value1 value2 = (output6870, value3439, value1))
    (child15687 : Flapjack.WordAlloc.removeDeadStructural input15687 value3439 value1 value2 = (output15687, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15688 value5 value1 value2 = (output15688, value6896, value1) := by
  rw [input15688_def, output15688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6870]
  try dsimp only
  rw [child15687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6870_skip, output15687_skip]
  kernel_rfl

theorem node15689_cond_eq
    (child6867 : Flapjack.WordAlloc.removeDeadStructural input6867 value3432 value1 value2 = (output6867, value5, value1))
    (child15688 : Flapjack.WordAlloc.removeDeadStructural input15688 value5 value1 value2 = (output15688, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15689 value3432 value1 value2 = (output15689, value6896, value1) := by
  rw [input15689_def, output15689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6867]
  try dsimp only
  rw [child15688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6867_skip, output15688_skip]
  kernel_rfl

theorem node15690_cond_eq
    (child6856 : Flapjack.WordAlloc.removeDeadStructural input6856 value3432 value1 value2 = (output6856, value3432, value1))
    (child15689 : Flapjack.WordAlloc.removeDeadStructural input15689 value3432 value1 value2 = (output15689, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15690 value3432 value1 value2 = (output15690, value6896, value1) := by
  rw [input15690_def, output15690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6856]
  try dsimp only
  rw [child15689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6856_skip, output15689_skip]
  kernel_rfl

theorem node15691_cond_eq
    (child6855 : Flapjack.WordAlloc.removeDeadStructural input6855 value3431 value1 value2 = (output6855, value3432, value1))
    (child15690 : Flapjack.WordAlloc.removeDeadStructural input15690 value3432 value1 value2 = (output15690, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15691 value3431 value1 value2 = (output15691, value6896, value1) := by
  rw [input15691_def, output15691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6855]
  try dsimp only
  rw [child15690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6855_skip, output15690_skip]
  kernel_rfl

theorem node15692_cond_eq
    (child6854 : Flapjack.WordAlloc.removeDeadStructural input6854 value5 value1 value2 = (output6854, value3431, value1))
    (child15691 : Flapjack.WordAlloc.removeDeadStructural input15691 value3431 value1 value2 = (output15691, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15692 value5 value1 value2 = (output15692, value6896, value1) := by
  rw [input15692_def, output15692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6854]
  try dsimp only
  rw [child15691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6854_skip, output15691_skip]
  kernel_rfl

theorem node15693_cond_eq
    (child6851 : Flapjack.WordAlloc.removeDeadStructural input6851 value3424 value1 value2 = (output6851, value5, value1))
    (child15692 : Flapjack.WordAlloc.removeDeadStructural input15692 value5 value1 value2 = (output15692, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15693 value3424 value1 value2 = (output15693, value6896, value1) := by
  rw [input15693_def, output15693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6851]
  try dsimp only
  rw [child15692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6851_skip, output15692_skip]
  kernel_rfl

theorem node15694_cond_eq
    (child6840 : Flapjack.WordAlloc.removeDeadStructural input6840 value3424 value1 value2 = (output6840, value3424, value1))
    (child15693 : Flapjack.WordAlloc.removeDeadStructural input15693 value3424 value1 value2 = (output15693, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15694 value3424 value1 value2 = (output15694, value6896, value1) := by
  rw [input15694_def, output15694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6840]
  try dsimp only
  rw [child15693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6840_skip, output15693_skip]
  kernel_rfl

theorem node15695_cond_eq
    (child6839 : Flapjack.WordAlloc.removeDeadStructural input6839 value3423 value1 value2 = (output6839, value3424, value1))
    (child15694 : Flapjack.WordAlloc.removeDeadStructural input15694 value3424 value1 value2 = (output15694, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15695 value3423 value1 value2 = (output15695, value6896, value1) := by
  rw [input15695_def, output15695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6839]
  try dsimp only
  rw [child15694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6839_skip, output15694_skip]
  kernel_rfl

theorem node15696_cond_eq
    (child6838 : Flapjack.WordAlloc.removeDeadStructural input6838 value5 value1 value2 = (output6838, value3423, value1))
    (child15695 : Flapjack.WordAlloc.removeDeadStructural input15695 value3423 value1 value2 = (output15695, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15696 value5 value1 value2 = (output15696, value6896, value1) := by
  rw [input15696_def, output15696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6838]
  try dsimp only
  rw [child15695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6838_skip, output15695_skip]
  kernel_rfl

theorem node15697_cond_eq
    (child6835 : Flapjack.WordAlloc.removeDeadStructural input6835 value3416 value1 value2 = (output6835, value5, value1))
    (child15696 : Flapjack.WordAlloc.removeDeadStructural input15696 value5 value1 value2 = (output15696, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15697 value3416 value1 value2 = (output15697, value6896, value1) := by
  rw [input15697_def, output15697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6835]
  try dsimp only
  rw [child15696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6835_skip, output15696_skip]
  kernel_rfl

theorem node15698_cond_eq
    (child6824 : Flapjack.WordAlloc.removeDeadStructural input6824 value3416 value1 value2 = (output6824, value3416, value1))
    (child15697 : Flapjack.WordAlloc.removeDeadStructural input15697 value3416 value1 value2 = (output15697, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15698 value3416 value1 value2 = (output15698, value6896, value1) := by
  rw [input15698_def, output15698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6824]
  try dsimp only
  rw [child15697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6824_skip, output15697_skip]
  kernel_rfl

theorem node15699_cond_eq
    (child6823 : Flapjack.WordAlloc.removeDeadStructural input6823 value3415 value1 value2 = (output6823, value3416, value1))
    (child15698 : Flapjack.WordAlloc.removeDeadStructural input15698 value3416 value1 value2 = (output15698, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15699 value3415 value1 value2 = (output15699, value6896, value1) := by
  rw [input15699_def, output15699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6823]
  try dsimp only
  rw [child15698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6823_skip, output15698_skip]
  kernel_rfl

theorem node15700_cond_eq
    (child6822 : Flapjack.WordAlloc.removeDeadStructural input6822 value5 value1 value2 = (output6822, value3415, value1))
    (child15699 : Flapjack.WordAlloc.removeDeadStructural input15699 value3415 value1 value2 = (output15699, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15700 value5 value1 value2 = (output15700, value6896, value1) := by
  rw [input15700_def, output15700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6822]
  try dsimp only
  rw [child15699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6822_skip, output15699_skip]
  kernel_rfl

theorem node15701_cond_eq
    (child6819 : Flapjack.WordAlloc.removeDeadStructural input6819 value3408 value1 value2 = (output6819, value5, value1))
    (child15700 : Flapjack.WordAlloc.removeDeadStructural input15700 value5 value1 value2 = (output15700, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15701 value3408 value1 value2 = (output15701, value6896, value1) := by
  rw [input15701_def, output15701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6819]
  try dsimp only
  rw [child15700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6819_skip, output15700_skip]
  kernel_rfl

theorem node15702_cond_eq
    (child6808 : Flapjack.WordAlloc.removeDeadStructural input6808 value3408 value1 value2 = (output6808, value3408, value1))
    (child15701 : Flapjack.WordAlloc.removeDeadStructural input15701 value3408 value1 value2 = (output15701, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15702 value3408 value1 value2 = (output15702, value6896, value1) := by
  rw [input15702_def, output15702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6808]
  try dsimp only
  rw [child15701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6808_skip, output15701_skip]
  kernel_rfl

theorem node15703_cond_eq
    (child6807 : Flapjack.WordAlloc.removeDeadStructural input6807 value3407 value1 value2 = (output6807, value3408, value1))
    (child15702 : Flapjack.WordAlloc.removeDeadStructural input15702 value3408 value1 value2 = (output15702, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15703 value3407 value1 value2 = (output15703, value6896, value1) := by
  rw [input15703_def, output15703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6807]
  try dsimp only
  rw [child15702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6807_skip, output15702_skip]
  kernel_rfl

theorem node15704_cond_eq
    (child6806 : Flapjack.WordAlloc.removeDeadStructural input6806 value5 value1 value2 = (output6806, value3407, value1))
    (child15703 : Flapjack.WordAlloc.removeDeadStructural input15703 value3407 value1 value2 = (output15703, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15704 value5 value1 value2 = (output15704, value6896, value1) := by
  rw [input15704_def, output15704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6806]
  try dsimp only
  rw [child15703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6806_skip, output15703_skip]
  kernel_rfl

theorem node15705_cond_eq
    (child6803 : Flapjack.WordAlloc.removeDeadStructural input6803 value3400 value1 value2 = (output6803, value5, value1))
    (child15704 : Flapjack.WordAlloc.removeDeadStructural input15704 value5 value1 value2 = (output15704, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15705 value3400 value1 value2 = (output15705, value6896, value1) := by
  rw [input15705_def, output15705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6803]
  try dsimp only
  rw [child15704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6803_skip, output15704_skip]
  kernel_rfl

theorem node15706_cond_eq
    (child6792 : Flapjack.WordAlloc.removeDeadStructural input6792 value3400 value1 value2 = (output6792, value3400, value1))
    (child15705 : Flapjack.WordAlloc.removeDeadStructural input15705 value3400 value1 value2 = (output15705, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15706 value3400 value1 value2 = (output15706, value6896, value1) := by
  rw [input15706_def, output15706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6792]
  try dsimp only
  rw [child15705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6792_skip, output15705_skip]
  kernel_rfl

theorem node15707_cond_eq
    (child6791 : Flapjack.WordAlloc.removeDeadStructural input6791 value3399 value1 value2 = (output6791, value3400, value1))
    (child15706 : Flapjack.WordAlloc.removeDeadStructural input15706 value3400 value1 value2 = (output15706, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15707 value3399 value1 value2 = (output15707, value6896, value1) := by
  rw [input15707_def, output15707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6791]
  try dsimp only
  rw [child15706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6791_skip, output15706_skip]
  kernel_rfl

theorem node15708_cond_eq
    (child6790 : Flapjack.WordAlloc.removeDeadStructural input6790 value5 value1 value2 = (output6790, value3399, value1))
    (child15707 : Flapjack.WordAlloc.removeDeadStructural input15707 value3399 value1 value2 = (output15707, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15708 value5 value1 value2 = (output15708, value6896, value1) := by
  rw [input15708_def, output15708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6790]
  try dsimp only
  rw [child15707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6790_skip, output15707_skip]
  kernel_rfl

theorem node15709_cond_eq
    (child6787 : Flapjack.WordAlloc.removeDeadStructural input6787 value3392 value1 value2 = (output6787, value5, value1))
    (child15708 : Flapjack.WordAlloc.removeDeadStructural input15708 value5 value1 value2 = (output15708, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15709 value3392 value1 value2 = (output15709, value6896, value1) := by
  rw [input15709_def, output15709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6787]
  try dsimp only
  rw [child15708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6787_skip, output15708_skip]
  kernel_rfl

theorem node15710_cond_eq
    (child6776 : Flapjack.WordAlloc.removeDeadStructural input6776 value3392 value1 value2 = (output6776, value3392, value1))
    (child15709 : Flapjack.WordAlloc.removeDeadStructural input15709 value3392 value1 value2 = (output15709, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15710 value3392 value1 value2 = (output15710, value6896, value1) := by
  rw [input15710_def, output15710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6776]
  try dsimp only
  rw [child15709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6776_skip, output15709_skip]
  kernel_rfl

theorem node15711_cond_eq
    (child6775 : Flapjack.WordAlloc.removeDeadStructural input6775 value3391 value1 value2 = (output6775, value3392, value1))
    (child15710 : Flapjack.WordAlloc.removeDeadStructural input15710 value3392 value1 value2 = (output15710, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15711 value3391 value1 value2 = (output15711, value6896, value1) := by
  rw [input15711_def, output15711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6775]
  try dsimp only
  rw [child15710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6775_skip, output15710_skip]
  kernel_rfl

theorem node15712_cond_eq
    (child6774 : Flapjack.WordAlloc.removeDeadStructural input6774 value5 value1 value2 = (output6774, value3391, value1))
    (child15711 : Flapjack.WordAlloc.removeDeadStructural input15711 value3391 value1 value2 = (output15711, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15712 value5 value1 value2 = (output15712, value6896, value1) := by
  rw [input15712_def, output15712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6774]
  try dsimp only
  rw [child15711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6774_skip, output15711_skip]
  kernel_rfl

theorem node15713_cond_eq
    (child6771 : Flapjack.WordAlloc.removeDeadStructural input6771 value3384 value1 value2 = (output6771, value5, value1))
    (child15712 : Flapjack.WordAlloc.removeDeadStructural input15712 value5 value1 value2 = (output15712, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15713 value3384 value1 value2 = (output15713, value6896, value1) := by
  rw [input15713_def, output15713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6771]
  try dsimp only
  rw [child15712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6771_skip, output15712_skip]
  kernel_rfl

theorem node15714_cond_eq
    (child6760 : Flapjack.WordAlloc.removeDeadStructural input6760 value3384 value1 value2 = (output6760, value3384, value1))
    (child15713 : Flapjack.WordAlloc.removeDeadStructural input15713 value3384 value1 value2 = (output15713, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15714 value3384 value1 value2 = (output15714, value6896, value1) := by
  rw [input15714_def, output15714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6760]
  try dsimp only
  rw [child15713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6760_skip, output15713_skip]
  kernel_rfl

theorem node15715_cond_eq
    (child6759 : Flapjack.WordAlloc.removeDeadStructural input6759 value3383 value1 value2 = (output6759, value3384, value1))
    (child15714 : Flapjack.WordAlloc.removeDeadStructural input15714 value3384 value1 value2 = (output15714, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15715 value3383 value1 value2 = (output15715, value6896, value1) := by
  rw [input15715_def, output15715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6759]
  try dsimp only
  rw [child15714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6759_skip, output15714_skip]
  kernel_rfl

theorem node15716_cond_eq
    (child6758 : Flapjack.WordAlloc.removeDeadStructural input6758 value5 value1 value2 = (output6758, value3383, value1))
    (child15715 : Flapjack.WordAlloc.removeDeadStructural input15715 value3383 value1 value2 = (output15715, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15716 value5 value1 value2 = (output15716, value6896, value1) := by
  rw [input15716_def, output15716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6758]
  try dsimp only
  rw [child15715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6758_skip, output15715_skip]
  kernel_rfl

theorem node15717_cond_eq
    (child6755 : Flapjack.WordAlloc.removeDeadStructural input6755 value3376 value1 value2 = (output6755, value5, value1))
    (child15716 : Flapjack.WordAlloc.removeDeadStructural input15716 value5 value1 value2 = (output15716, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15717 value3376 value1 value2 = (output15717, value6896, value1) := by
  rw [input15717_def, output15717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6755]
  try dsimp only
  rw [child15716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6755_skip, output15716_skip]
  kernel_rfl

theorem node15718_cond_eq
    (child6744 : Flapjack.WordAlloc.removeDeadStructural input6744 value3376 value1 value2 = (output6744, value3376, value1))
    (child15717 : Flapjack.WordAlloc.removeDeadStructural input15717 value3376 value1 value2 = (output15717, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15718 value3376 value1 value2 = (output15718, value6896, value1) := by
  rw [input15718_def, output15718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6744]
  try dsimp only
  rw [child15717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6744_skip, output15717_skip]
  kernel_rfl

theorem node15719_cond_eq
    (child6743 : Flapjack.WordAlloc.removeDeadStructural input6743 value3375 value1 value2 = (output6743, value3376, value1))
    (child15718 : Flapjack.WordAlloc.removeDeadStructural input15718 value3376 value1 value2 = (output15718, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15719 value3375 value1 value2 = (output15719, value6896, value1) := by
  rw [input15719_def, output15719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6743]
  try dsimp only
  rw [child15718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6743_skip, output15718_skip]
  kernel_rfl

theorem node15720_cond_eq
    (child6742 : Flapjack.WordAlloc.removeDeadStructural input6742 value5 value1 value2 = (output6742, value3375, value1))
    (child15719 : Flapjack.WordAlloc.removeDeadStructural input15719 value3375 value1 value2 = (output15719, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15720 value5 value1 value2 = (output15720, value6896, value1) := by
  rw [input15720_def, output15720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6742]
  try dsimp only
  rw [child15719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6742_skip, output15719_skip]
  kernel_rfl

theorem node15721_cond_eq
    (child6739 : Flapjack.WordAlloc.removeDeadStructural input6739 value3368 value1 value2 = (output6739, value5, value1))
    (child15720 : Flapjack.WordAlloc.removeDeadStructural input15720 value5 value1 value2 = (output15720, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15721 value3368 value1 value2 = (output15721, value6896, value1) := by
  rw [input15721_def, output15721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6739]
  try dsimp only
  rw [child15720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6739_skip, output15720_skip]
  kernel_rfl

theorem node15722_cond_eq
    (child6728 : Flapjack.WordAlloc.removeDeadStructural input6728 value3368 value1 value2 = (output6728, value3368, value1))
    (child15721 : Flapjack.WordAlloc.removeDeadStructural input15721 value3368 value1 value2 = (output15721, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15722 value3368 value1 value2 = (output15722, value6896, value1) := by
  rw [input15722_def, output15722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6728]
  try dsimp only
  rw [child15721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6728_skip, output15721_skip]
  kernel_rfl

theorem node15723_cond_eq
    (child6727 : Flapjack.WordAlloc.removeDeadStructural input6727 value3367 value1 value2 = (output6727, value3368, value1))
    (child15722 : Flapjack.WordAlloc.removeDeadStructural input15722 value3368 value1 value2 = (output15722, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15723 value3367 value1 value2 = (output15723, value6896, value1) := by
  rw [input15723_def, output15723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6727]
  try dsimp only
  rw [child15722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6727_skip, output15722_skip]
  kernel_rfl

theorem node15724_cond_eq
    (child6726 : Flapjack.WordAlloc.removeDeadStructural input6726 value5 value1 value2 = (output6726, value3367, value1))
    (child15723 : Flapjack.WordAlloc.removeDeadStructural input15723 value3367 value1 value2 = (output15723, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15724 value5 value1 value2 = (output15724, value6896, value1) := by
  rw [input15724_def, output15724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6726]
  try dsimp only
  rw [child15723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6726_skip, output15723_skip]
  kernel_rfl

theorem node15725_cond_eq
    (child6723 : Flapjack.WordAlloc.removeDeadStructural input6723 value3360 value1 value2 = (output6723, value5, value1))
    (child15724 : Flapjack.WordAlloc.removeDeadStructural input15724 value5 value1 value2 = (output15724, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15725 value3360 value1 value2 = (output15725, value6896, value1) := by
  rw [input15725_def, output15725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6723]
  try dsimp only
  rw [child15724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6723_skip, output15724_skip]
  kernel_rfl

theorem node15726_cond_eq
    (child6712 : Flapjack.WordAlloc.removeDeadStructural input6712 value3360 value1 value2 = (output6712, value3360, value1))
    (child15725 : Flapjack.WordAlloc.removeDeadStructural input15725 value3360 value1 value2 = (output15725, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15726 value3360 value1 value2 = (output15726, value6896, value1) := by
  rw [input15726_def, output15726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6712]
  try dsimp only
  rw [child15725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6712_skip, output15725_skip]
  kernel_rfl

theorem node15727_cond_eq
    (child6711 : Flapjack.WordAlloc.removeDeadStructural input6711 value3359 value1 value2 = (output6711, value3360, value1))
    (child15726 : Flapjack.WordAlloc.removeDeadStructural input15726 value3360 value1 value2 = (output15726, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15727 value3359 value1 value2 = (output15727, value6896, value1) := by
  rw [input15727_def, output15727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6711]
  try dsimp only
  rw [child15726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6711_skip, output15726_skip]
  kernel_rfl

theorem node15728_cond_eq
    (child6710 : Flapjack.WordAlloc.removeDeadStructural input6710 value5 value1 value2 = (output6710, value3359, value1))
    (child15727 : Flapjack.WordAlloc.removeDeadStructural input15727 value3359 value1 value2 = (output15727, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15728 value5 value1 value2 = (output15728, value6896, value1) := by
  rw [input15728_def, output15728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6710]
  try dsimp only
  rw [child15727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6710_skip, output15727_skip]
  kernel_rfl

theorem node15729_cond_eq
    (child6707 : Flapjack.WordAlloc.removeDeadStructural input6707 value3352 value1 value2 = (output6707, value5, value1))
    (child15728 : Flapjack.WordAlloc.removeDeadStructural input15728 value5 value1 value2 = (output15728, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15729 value3352 value1 value2 = (output15729, value6896, value1) := by
  rw [input15729_def, output15729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6707]
  try dsimp only
  rw [child15728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6707_skip, output15728_skip]
  kernel_rfl

theorem node15730_cond_eq
    (child6696 : Flapjack.WordAlloc.removeDeadStructural input6696 value3352 value1 value2 = (output6696, value3352, value1))
    (child15729 : Flapjack.WordAlloc.removeDeadStructural input15729 value3352 value1 value2 = (output15729, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15730 value3352 value1 value2 = (output15730, value6896, value1) := by
  rw [input15730_def, output15730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6696]
  try dsimp only
  rw [child15729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6696_skip, output15729_skip]
  kernel_rfl

theorem node15731_cond_eq
    (child6695 : Flapjack.WordAlloc.removeDeadStructural input6695 value3351 value1 value2 = (output6695, value3352, value1))
    (child15730 : Flapjack.WordAlloc.removeDeadStructural input15730 value3352 value1 value2 = (output15730, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15731 value3351 value1 value2 = (output15731, value6896, value1) := by
  rw [input15731_def, output15731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6695]
  try dsimp only
  rw [child15730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6695_skip, output15730_skip]
  kernel_rfl

theorem node15732_cond_eq
    (child6694 : Flapjack.WordAlloc.removeDeadStructural input6694 value5 value1 value2 = (output6694, value3351, value1))
    (child15731 : Flapjack.WordAlloc.removeDeadStructural input15731 value3351 value1 value2 = (output15731, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15732 value5 value1 value2 = (output15732, value6896, value1) := by
  rw [input15732_def, output15732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6694]
  try dsimp only
  rw [child15731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6694_skip, output15731_skip]
  kernel_rfl

theorem node15733_cond_eq
    (child6691 : Flapjack.WordAlloc.removeDeadStructural input6691 value3344 value1 value2 = (output6691, value5, value1))
    (child15732 : Flapjack.WordAlloc.removeDeadStructural input15732 value5 value1 value2 = (output15732, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15733 value3344 value1 value2 = (output15733, value6896, value1) := by
  rw [input15733_def, output15733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6691]
  try dsimp only
  rw [child15732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6691_skip, output15732_skip]
  kernel_rfl

theorem node15734_cond_eq
    (child6680 : Flapjack.WordAlloc.removeDeadStructural input6680 value3344 value1 value2 = (output6680, value3344, value1))
    (child15733 : Flapjack.WordAlloc.removeDeadStructural input15733 value3344 value1 value2 = (output15733, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15734 value3344 value1 value2 = (output15734, value6896, value1) := by
  rw [input15734_def, output15734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6680]
  try dsimp only
  rw [child15733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6680_skip, output15733_skip]
  kernel_rfl

theorem node15735_cond_eq
    (child6679 : Flapjack.WordAlloc.removeDeadStructural input6679 value3343 value1 value2 = (output6679, value3344, value1))
    (child15734 : Flapjack.WordAlloc.removeDeadStructural input15734 value3344 value1 value2 = (output15734, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15735 value3343 value1 value2 = (output15735, value6896, value1) := by
  rw [input15735_def, output15735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6679]
  try dsimp only
  rw [child15734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6679_skip, output15734_skip]
  kernel_rfl

theorem node15736_cond_eq
    (child6678 : Flapjack.WordAlloc.removeDeadStructural input6678 value5 value1 value2 = (output6678, value3343, value1))
    (child15735 : Flapjack.WordAlloc.removeDeadStructural input15735 value3343 value1 value2 = (output15735, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15736 value5 value1 value2 = (output15736, value6896, value1) := by
  rw [input15736_def, output15736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6678]
  try dsimp only
  rw [child15735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6678_skip, output15735_skip]
  kernel_rfl

theorem node15737_cond_eq
    (child6675 : Flapjack.WordAlloc.removeDeadStructural input6675 value3336 value1 value2 = (output6675, value5, value1))
    (child15736 : Flapjack.WordAlloc.removeDeadStructural input15736 value5 value1 value2 = (output15736, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15737 value3336 value1 value2 = (output15737, value6896, value1) := by
  rw [input15737_def, output15737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6675]
  try dsimp only
  rw [child15736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6675_skip, output15736_skip]
  kernel_rfl

theorem node15738_cond_eq
    (child6664 : Flapjack.WordAlloc.removeDeadStructural input6664 value3336 value1 value2 = (output6664, value3336, value1))
    (child15737 : Flapjack.WordAlloc.removeDeadStructural input15737 value3336 value1 value2 = (output15737, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15738 value3336 value1 value2 = (output15738, value6896, value1) := by
  rw [input15738_def, output15738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6664]
  try dsimp only
  rw [child15737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6664_skip, output15737_skip]
  kernel_rfl

theorem node15739_cond_eq
    (child6663 : Flapjack.WordAlloc.removeDeadStructural input6663 value3335 value1 value2 = (output6663, value3336, value1))
    (child15738 : Flapjack.WordAlloc.removeDeadStructural input15738 value3336 value1 value2 = (output15738, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15739 value3335 value1 value2 = (output15739, value6896, value1) := by
  rw [input15739_def, output15739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6663]
  try dsimp only
  rw [child15738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6663_skip, output15738_skip]
  kernel_rfl

theorem node15740_cond_eq
    (child6662 : Flapjack.WordAlloc.removeDeadStructural input6662 value5 value1 value2 = (output6662, value3335, value1))
    (child15739 : Flapjack.WordAlloc.removeDeadStructural input15739 value3335 value1 value2 = (output15739, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15740 value5 value1 value2 = (output15740, value6896, value1) := by
  rw [input15740_def, output15740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6662]
  try dsimp only
  rw [child15739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6662_skip, output15739_skip]
  kernel_rfl

theorem node15741_cond_eq
    (child6659 : Flapjack.WordAlloc.removeDeadStructural input6659 value3328 value1 value2 = (output6659, value5, value1))
    (child15740 : Flapjack.WordAlloc.removeDeadStructural input15740 value5 value1 value2 = (output15740, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15741 value3328 value1 value2 = (output15741, value6896, value1) := by
  rw [input15741_def, output15741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6659]
  try dsimp only
  rw [child15740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6659_skip, output15740_skip]
  kernel_rfl

theorem node15742_cond_eq
    (child6648 : Flapjack.WordAlloc.removeDeadStructural input6648 value3328 value1 value2 = (output6648, value3328, value1))
    (child15741 : Flapjack.WordAlloc.removeDeadStructural input15741 value3328 value1 value2 = (output15741, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15742 value3328 value1 value2 = (output15742, value6896, value1) := by
  rw [input15742_def, output15742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6648]
  try dsimp only
  rw [child15741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6648_skip, output15741_skip]
  kernel_rfl

theorem node15743_cond_eq
    (child6647 : Flapjack.WordAlloc.removeDeadStructural input6647 value3327 value1 value2 = (output6647, value3328, value1))
    (child15742 : Flapjack.WordAlloc.removeDeadStructural input15742 value3328 value1 value2 = (output15742, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15743 value3327 value1 value2 = (output15743, value6896, value1) := by
  rw [input15743_def, output15743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6647]
  try dsimp only
  rw [child15742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6647_skip, output15742_skip]
  kernel_rfl

theorem node15744_cond_eq
    (child6646 : Flapjack.WordAlloc.removeDeadStructural input6646 value5 value1 value2 = (output6646, value3327, value1))
    (child15743 : Flapjack.WordAlloc.removeDeadStructural input15743 value3327 value1 value2 = (output15743, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15744 value5 value1 value2 = (output15744, value6896, value1) := by
  rw [input15744_def, output15744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6646]
  try dsimp only
  rw [child15743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6646_skip, output15743_skip]
  kernel_rfl

theorem node15745_cond_eq
    (child6643 : Flapjack.WordAlloc.removeDeadStructural input6643 value3320 value1 value2 = (output6643, value5, value1))
    (child15744 : Flapjack.WordAlloc.removeDeadStructural input15744 value5 value1 value2 = (output15744, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15745 value3320 value1 value2 = (output15745, value6896, value1) := by
  rw [input15745_def, output15745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6643]
  try dsimp only
  rw [child15744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6643_skip, output15744_skip]
  kernel_rfl

theorem node15746_cond_eq
    (child6632 : Flapjack.WordAlloc.removeDeadStructural input6632 value3320 value1 value2 = (output6632, value3320, value1))
    (child15745 : Flapjack.WordAlloc.removeDeadStructural input15745 value3320 value1 value2 = (output15745, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15746 value3320 value1 value2 = (output15746, value6896, value1) := by
  rw [input15746_def, output15746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6632]
  try dsimp only
  rw [child15745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6632_skip, output15745_skip]
  kernel_rfl

theorem node15747_cond_eq
    (child6631 : Flapjack.WordAlloc.removeDeadStructural input6631 value3319 value1 value2 = (output6631, value3320, value1))
    (child15746 : Flapjack.WordAlloc.removeDeadStructural input15746 value3320 value1 value2 = (output15746, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15747 value3319 value1 value2 = (output15747, value6896, value1) := by
  rw [input15747_def, output15747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6631]
  try dsimp only
  rw [child15746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6631_skip, output15746_skip]
  kernel_rfl

theorem node15748_cond_eq
    (child6630 : Flapjack.WordAlloc.removeDeadStructural input6630 value5 value1 value2 = (output6630, value3319, value1))
    (child15747 : Flapjack.WordAlloc.removeDeadStructural input15747 value3319 value1 value2 = (output15747, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15748 value5 value1 value2 = (output15748, value6896, value1) := by
  rw [input15748_def, output15748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6630]
  try dsimp only
  rw [child15747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6630_skip, output15747_skip]
  kernel_rfl

theorem node15749_cond_eq
    (child6627 : Flapjack.WordAlloc.removeDeadStructural input6627 value3312 value1 value2 = (output6627, value5, value1))
    (child15748 : Flapjack.WordAlloc.removeDeadStructural input15748 value5 value1 value2 = (output15748, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15749 value3312 value1 value2 = (output15749, value6896, value1) := by
  rw [input15749_def, output15749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6627]
  try dsimp only
  rw [child15748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6627_skip, output15748_skip]
  kernel_rfl

theorem node15750_cond_eq
    (child6616 : Flapjack.WordAlloc.removeDeadStructural input6616 value3312 value1 value2 = (output6616, value3312, value1))
    (child15749 : Flapjack.WordAlloc.removeDeadStructural input15749 value3312 value1 value2 = (output15749, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15750 value3312 value1 value2 = (output15750, value6896, value1) := by
  rw [input15750_def, output15750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6616]
  try dsimp only
  rw [child15749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6616_skip, output15749_skip]
  kernel_rfl

theorem node15751_cond_eq
    (child6615 : Flapjack.WordAlloc.removeDeadStructural input6615 value3311 value1 value2 = (output6615, value3312, value1))
    (child15750 : Flapjack.WordAlloc.removeDeadStructural input15750 value3312 value1 value2 = (output15750, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15751 value3311 value1 value2 = (output15751, value6896, value1) := by
  rw [input15751_def, output15751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6615]
  try dsimp only
  rw [child15750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6615_skip, output15750_skip]
  kernel_rfl

theorem node15752_cond_eq
    (child6614 : Flapjack.WordAlloc.removeDeadStructural input6614 value5 value1 value2 = (output6614, value3311, value1))
    (child15751 : Flapjack.WordAlloc.removeDeadStructural input15751 value3311 value1 value2 = (output15751, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15752 value5 value1 value2 = (output15752, value6896, value1) := by
  rw [input15752_def, output15752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6614]
  try dsimp only
  rw [child15751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6614_skip, output15751_skip]
  kernel_rfl

theorem node15753_cond_eq
    (child6611 : Flapjack.WordAlloc.removeDeadStructural input6611 value3304 value1 value2 = (output6611, value5, value1))
    (child15752 : Flapjack.WordAlloc.removeDeadStructural input15752 value5 value1 value2 = (output15752, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15753 value3304 value1 value2 = (output15753, value6896, value1) := by
  rw [input15753_def, output15753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6611]
  try dsimp only
  rw [child15752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6611_skip, output15752_skip]
  kernel_rfl

theorem node15754_cond_eq
    (child6600 : Flapjack.WordAlloc.removeDeadStructural input6600 value3304 value1 value2 = (output6600, value3304, value1))
    (child15753 : Flapjack.WordAlloc.removeDeadStructural input15753 value3304 value1 value2 = (output15753, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15754 value3304 value1 value2 = (output15754, value6896, value1) := by
  rw [input15754_def, output15754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6600]
  try dsimp only
  rw [child15753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6600_skip, output15753_skip]
  kernel_rfl

theorem node15755_cond_eq
    (child6599 : Flapjack.WordAlloc.removeDeadStructural input6599 value3303 value1 value2 = (output6599, value3304, value1))
    (child15754 : Flapjack.WordAlloc.removeDeadStructural input15754 value3304 value1 value2 = (output15754, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15755 value3303 value1 value2 = (output15755, value6896, value1) := by
  rw [input15755_def, output15755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6599]
  try dsimp only
  rw [child15754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6599_skip, output15754_skip]
  kernel_rfl

theorem node15756_cond_eq
    (child6598 : Flapjack.WordAlloc.removeDeadStructural input6598 value5 value1 value2 = (output6598, value3303, value1))
    (child15755 : Flapjack.WordAlloc.removeDeadStructural input15755 value3303 value1 value2 = (output15755, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15756 value5 value1 value2 = (output15756, value6896, value1) := by
  rw [input15756_def, output15756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6598]
  try dsimp only
  rw [child15755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6598_skip, output15755_skip]
  kernel_rfl

theorem node15757_cond_eq
    (child6595 : Flapjack.WordAlloc.removeDeadStructural input6595 value3296 value1 value2 = (output6595, value5, value1))
    (child15756 : Flapjack.WordAlloc.removeDeadStructural input15756 value5 value1 value2 = (output15756, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15757 value3296 value1 value2 = (output15757, value6896, value1) := by
  rw [input15757_def, output15757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6595]
  try dsimp only
  rw [child15756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6595_skip, output15756_skip]
  kernel_rfl

theorem node15758_cond_eq
    (child6584 : Flapjack.WordAlloc.removeDeadStructural input6584 value3296 value1 value2 = (output6584, value3296, value1))
    (child15757 : Flapjack.WordAlloc.removeDeadStructural input15757 value3296 value1 value2 = (output15757, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15758 value3296 value1 value2 = (output15758, value6896, value1) := by
  rw [input15758_def, output15758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6584]
  try dsimp only
  rw [child15757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6584_skip, output15757_skip]
  kernel_rfl

theorem node15759_cond_eq
    (child6583 : Flapjack.WordAlloc.removeDeadStructural input6583 value3295 value1 value2 = (output6583, value3296, value1))
    (child15758 : Flapjack.WordAlloc.removeDeadStructural input15758 value3296 value1 value2 = (output15758, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15759 value3295 value1 value2 = (output15759, value6896, value1) := by
  rw [input15759_def, output15759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6583]
  try dsimp only
  rw [child15758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6583_skip, output15758_skip]
  kernel_rfl

theorem node15760_cond_eq
    (child6582 : Flapjack.WordAlloc.removeDeadStructural input6582 value5 value1 value2 = (output6582, value3295, value1))
    (child15759 : Flapjack.WordAlloc.removeDeadStructural input15759 value3295 value1 value2 = (output15759, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15760 value5 value1 value2 = (output15760, value6896, value1) := by
  rw [input15760_def, output15760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6582]
  try dsimp only
  rw [child15759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6582_skip, output15759_skip]
  kernel_rfl

theorem node15761_cond_eq
    (child6579 : Flapjack.WordAlloc.removeDeadStructural input6579 value3288 value1 value2 = (output6579, value5, value1))
    (child15760 : Flapjack.WordAlloc.removeDeadStructural input15760 value5 value1 value2 = (output15760, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15761 value3288 value1 value2 = (output15761, value6896, value1) := by
  rw [input15761_def, output15761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6579]
  try dsimp only
  rw [child15760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6579_skip, output15760_skip]
  kernel_rfl

theorem node15762_cond_eq
    (child6568 : Flapjack.WordAlloc.removeDeadStructural input6568 value3288 value1 value2 = (output6568, value3288, value1))
    (child15761 : Flapjack.WordAlloc.removeDeadStructural input15761 value3288 value1 value2 = (output15761, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15762 value3288 value1 value2 = (output15762, value6896, value1) := by
  rw [input15762_def, output15762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6568]
  try dsimp only
  rw [child15761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6568_skip, output15761_skip]
  kernel_rfl

theorem node15763_cond_eq
    (child6567 : Flapjack.WordAlloc.removeDeadStructural input6567 value3287 value1 value2 = (output6567, value3288, value1))
    (child15762 : Flapjack.WordAlloc.removeDeadStructural input15762 value3288 value1 value2 = (output15762, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15763 value3287 value1 value2 = (output15763, value6896, value1) := by
  rw [input15763_def, output15763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6567]
  try dsimp only
  rw [child15762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6567_skip, output15762_skip]
  kernel_rfl

theorem node15764_cond_eq
    (child6566 : Flapjack.WordAlloc.removeDeadStructural input6566 value5 value1 value2 = (output6566, value3287, value1))
    (child15763 : Flapjack.WordAlloc.removeDeadStructural input15763 value3287 value1 value2 = (output15763, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15764 value5 value1 value2 = (output15764, value6896, value1) := by
  rw [input15764_def, output15764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6566]
  try dsimp only
  rw [child15763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6566_skip, output15763_skip]
  kernel_rfl

theorem node15765_cond_eq
    (child6563 : Flapjack.WordAlloc.removeDeadStructural input6563 value3280 value1 value2 = (output6563, value5, value1))
    (child15764 : Flapjack.WordAlloc.removeDeadStructural input15764 value5 value1 value2 = (output15764, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15765 value3280 value1 value2 = (output15765, value6896, value1) := by
  rw [input15765_def, output15765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6563]
  try dsimp only
  rw [child15764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6563_skip, output15764_skip]
  kernel_rfl

theorem node15766_cond_eq
    (child6552 : Flapjack.WordAlloc.removeDeadStructural input6552 value3280 value1 value2 = (output6552, value3280, value1))
    (child15765 : Flapjack.WordAlloc.removeDeadStructural input15765 value3280 value1 value2 = (output15765, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15766 value3280 value1 value2 = (output15766, value6896, value1) := by
  rw [input15766_def, output15766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6552]
  try dsimp only
  rw [child15765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6552_skip, output15765_skip]
  kernel_rfl

theorem node15767_cond_eq
    (child6551 : Flapjack.WordAlloc.removeDeadStructural input6551 value3279 value1 value2 = (output6551, value3280, value1))
    (child15766 : Flapjack.WordAlloc.removeDeadStructural input15766 value3280 value1 value2 = (output15766, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15767 value3279 value1 value2 = (output15767, value6896, value1) := by
  rw [input15767_def, output15767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6551]
  try dsimp only
  rw [child15766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6551_skip, output15766_skip]
  kernel_rfl

theorem node15768_cond_eq
    (child6550 : Flapjack.WordAlloc.removeDeadStructural input6550 value5 value1 value2 = (output6550, value3279, value1))
    (child15767 : Flapjack.WordAlloc.removeDeadStructural input15767 value3279 value1 value2 = (output15767, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15768 value5 value1 value2 = (output15768, value6896, value1) := by
  rw [input15768_def, output15768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6550]
  try dsimp only
  rw [child15767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6550_skip, output15767_skip]
  kernel_rfl

theorem node15769_cond_eq
    (child6547 : Flapjack.WordAlloc.removeDeadStructural input6547 value3272 value1 value2 = (output6547, value5, value1))
    (child15768 : Flapjack.WordAlloc.removeDeadStructural input15768 value5 value1 value2 = (output15768, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15769 value3272 value1 value2 = (output15769, value6896, value1) := by
  rw [input15769_def, output15769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6547]
  try dsimp only
  rw [child15768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6547_skip, output15768_skip]
  kernel_rfl

theorem node15770_cond_eq
    (child6536 : Flapjack.WordAlloc.removeDeadStructural input6536 value3272 value1 value2 = (output6536, value3272, value1))
    (child15769 : Flapjack.WordAlloc.removeDeadStructural input15769 value3272 value1 value2 = (output15769, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15770 value3272 value1 value2 = (output15770, value6896, value1) := by
  rw [input15770_def, output15770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6536]
  try dsimp only
  rw [child15769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6536_skip, output15769_skip]
  kernel_rfl

theorem node15771_cond_eq
    (child6535 : Flapjack.WordAlloc.removeDeadStructural input6535 value3271 value1 value2 = (output6535, value3272, value1))
    (child15770 : Flapjack.WordAlloc.removeDeadStructural input15770 value3272 value1 value2 = (output15770, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15771 value3271 value1 value2 = (output15771, value6896, value1) := by
  rw [input15771_def, output15771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6535]
  try dsimp only
  rw [child15770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6535_skip, output15770_skip]
  kernel_rfl

theorem node15772_cond_eq
    (child6534 : Flapjack.WordAlloc.removeDeadStructural input6534 value5 value1 value2 = (output6534, value3271, value1))
    (child15771 : Flapjack.WordAlloc.removeDeadStructural input15771 value3271 value1 value2 = (output15771, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15772 value5 value1 value2 = (output15772, value6896, value1) := by
  rw [input15772_def, output15772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6534]
  try dsimp only
  rw [child15771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6534_skip, output15771_skip]
  kernel_rfl

theorem node15773_cond_eq
    (child6531 : Flapjack.WordAlloc.removeDeadStructural input6531 value3264 value1 value2 = (output6531, value5, value1))
    (child15772 : Flapjack.WordAlloc.removeDeadStructural input15772 value5 value1 value2 = (output15772, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15773 value3264 value1 value2 = (output15773, value6896, value1) := by
  rw [input15773_def, output15773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6531]
  try dsimp only
  rw [child15772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6531_skip, output15772_skip]
  kernel_rfl

theorem node15774_cond_eq
    (child6520 : Flapjack.WordAlloc.removeDeadStructural input6520 value3264 value1 value2 = (output6520, value3264, value1))
    (child15773 : Flapjack.WordAlloc.removeDeadStructural input15773 value3264 value1 value2 = (output15773, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15774 value3264 value1 value2 = (output15774, value6896, value1) := by
  rw [input15774_def, output15774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6520]
  try dsimp only
  rw [child15773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6520_skip, output15773_skip]
  kernel_rfl

theorem node15775_cond_eq
    (child6519 : Flapjack.WordAlloc.removeDeadStructural input6519 value3263 value1 value2 = (output6519, value3264, value1))
    (child15774 : Flapjack.WordAlloc.removeDeadStructural input15774 value3264 value1 value2 = (output15774, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15775 value3263 value1 value2 = (output15775, value6896, value1) := by
  rw [input15775_def, output15775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6519]
  try dsimp only
  rw [child15774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6519_skip, output15774_skip]
  kernel_rfl

theorem node15776_cond_eq
    (child6518 : Flapjack.WordAlloc.removeDeadStructural input6518 value5 value1 value2 = (output6518, value3263, value1))
    (child15775 : Flapjack.WordAlloc.removeDeadStructural input15775 value3263 value1 value2 = (output15775, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15776 value5 value1 value2 = (output15776, value6896, value1) := by
  rw [input15776_def, output15776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6518]
  try dsimp only
  rw [child15775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6518_skip, output15775_skip]
  kernel_rfl

theorem node15777_cond_eq
    (child6515 : Flapjack.WordAlloc.removeDeadStructural input6515 value3256 value1 value2 = (output6515, value5, value1))
    (child15776 : Flapjack.WordAlloc.removeDeadStructural input15776 value5 value1 value2 = (output15776, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15777 value3256 value1 value2 = (output15777, value6896, value1) := by
  rw [input15777_def, output15777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6515]
  try dsimp only
  rw [child15776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6515_skip, output15776_skip]
  kernel_rfl

theorem node15778_cond_eq
    (child6504 : Flapjack.WordAlloc.removeDeadStructural input6504 value3256 value1 value2 = (output6504, value3256, value1))
    (child15777 : Flapjack.WordAlloc.removeDeadStructural input15777 value3256 value1 value2 = (output15777, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15778 value3256 value1 value2 = (output15778, value6896, value1) := by
  rw [input15778_def, output15778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6504]
  try dsimp only
  rw [child15777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6504_skip, output15777_skip]
  kernel_rfl

theorem node15779_cond_eq
    (child6503 : Flapjack.WordAlloc.removeDeadStructural input6503 value3255 value1 value2 = (output6503, value3256, value1))
    (child15778 : Flapjack.WordAlloc.removeDeadStructural input15778 value3256 value1 value2 = (output15778, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15779 value3255 value1 value2 = (output15779, value6896, value1) := by
  rw [input15779_def, output15779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6503]
  try dsimp only
  rw [child15778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6503_skip, output15778_skip]
  kernel_rfl

theorem node15780_cond_eq
    (child6502 : Flapjack.WordAlloc.removeDeadStructural input6502 value5 value1 value2 = (output6502, value3255, value1))
    (child15779 : Flapjack.WordAlloc.removeDeadStructural input15779 value3255 value1 value2 = (output15779, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15780 value5 value1 value2 = (output15780, value6896, value1) := by
  rw [input15780_def, output15780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6502]
  try dsimp only
  rw [child15779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6502_skip, output15779_skip]
  kernel_rfl

theorem node15781_cond_eq
    (child6499 : Flapjack.WordAlloc.removeDeadStructural input6499 value3248 value1 value2 = (output6499, value5, value1))
    (child15780 : Flapjack.WordAlloc.removeDeadStructural input15780 value5 value1 value2 = (output15780, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15781 value3248 value1 value2 = (output15781, value6896, value1) := by
  rw [input15781_def, output15781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6499]
  try dsimp only
  rw [child15780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6499_skip, output15780_skip]
  kernel_rfl

theorem node15782_cond_eq
    (child6488 : Flapjack.WordAlloc.removeDeadStructural input6488 value3248 value1 value2 = (output6488, value3248, value1))
    (child15781 : Flapjack.WordAlloc.removeDeadStructural input15781 value3248 value1 value2 = (output15781, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15782 value3248 value1 value2 = (output15782, value6896, value1) := by
  rw [input15782_def, output15782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6488]
  try dsimp only
  rw [child15781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6488_skip, output15781_skip]
  kernel_rfl

theorem node15783_cond_eq
    (child6487 : Flapjack.WordAlloc.removeDeadStructural input6487 value3247 value1 value2 = (output6487, value3248, value1))
    (child15782 : Flapjack.WordAlloc.removeDeadStructural input15782 value3248 value1 value2 = (output15782, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15783 value3247 value1 value2 = (output15783, value6896, value1) := by
  rw [input15783_def, output15783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6487]
  try dsimp only
  rw [child15782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6487_skip, output15782_skip]
  kernel_rfl

theorem node15784_cond_eq
    (child6486 : Flapjack.WordAlloc.removeDeadStructural input6486 value5 value1 value2 = (output6486, value3247, value1))
    (child15783 : Flapjack.WordAlloc.removeDeadStructural input15783 value3247 value1 value2 = (output15783, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15784 value5 value1 value2 = (output15784, value6896, value1) := by
  rw [input15784_def, output15784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6486]
  try dsimp only
  rw [child15783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6486_skip, output15783_skip]
  kernel_rfl

theorem node15785_cond_eq
    (child6483 : Flapjack.WordAlloc.removeDeadStructural input6483 value3240 value1 value2 = (output6483, value5, value1))
    (child15784 : Flapjack.WordAlloc.removeDeadStructural input15784 value5 value1 value2 = (output15784, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15785 value3240 value1 value2 = (output15785, value6896, value1) := by
  rw [input15785_def, output15785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6483]
  try dsimp only
  rw [child15784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6483_skip, output15784_skip]
  kernel_rfl

theorem node15786_cond_eq
    (child6472 : Flapjack.WordAlloc.removeDeadStructural input6472 value3240 value1 value2 = (output6472, value3240, value1))
    (child15785 : Flapjack.WordAlloc.removeDeadStructural input15785 value3240 value1 value2 = (output15785, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15786 value3240 value1 value2 = (output15786, value6896, value1) := by
  rw [input15786_def, output15786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6472]
  try dsimp only
  rw [child15785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6472_skip, output15785_skip]
  kernel_rfl

theorem node15787_cond_eq
    (child6471 : Flapjack.WordAlloc.removeDeadStructural input6471 value3239 value1 value2 = (output6471, value3240, value1))
    (child15786 : Flapjack.WordAlloc.removeDeadStructural input15786 value3240 value1 value2 = (output15786, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15787 value3239 value1 value2 = (output15787, value6896, value1) := by
  rw [input15787_def, output15787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6471]
  try dsimp only
  rw [child15786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6471_skip, output15786_skip]
  kernel_rfl

theorem node15788_cond_eq
    (child6470 : Flapjack.WordAlloc.removeDeadStructural input6470 value5 value1 value2 = (output6470, value3239, value1))
    (child15787 : Flapjack.WordAlloc.removeDeadStructural input15787 value3239 value1 value2 = (output15787, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15788 value5 value1 value2 = (output15788, value6896, value1) := by
  rw [input15788_def, output15788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6470]
  try dsimp only
  rw [child15787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6470_skip, output15787_skip]
  kernel_rfl

theorem node15789_cond_eq
    (child6467 : Flapjack.WordAlloc.removeDeadStructural input6467 value3232 value1 value2 = (output6467, value5, value1))
    (child15788 : Flapjack.WordAlloc.removeDeadStructural input15788 value5 value1 value2 = (output15788, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15789 value3232 value1 value2 = (output15789, value6896, value1) := by
  rw [input15789_def, output15789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6467]
  try dsimp only
  rw [child15788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6467_skip, output15788_skip]
  kernel_rfl

theorem node15790_cond_eq
    (child6456 : Flapjack.WordAlloc.removeDeadStructural input6456 value3232 value1 value2 = (output6456, value3232, value1))
    (child15789 : Flapjack.WordAlloc.removeDeadStructural input15789 value3232 value1 value2 = (output15789, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15790 value3232 value1 value2 = (output15790, value6896, value1) := by
  rw [input15790_def, output15790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6456]
  try dsimp only
  rw [child15789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6456_skip, output15789_skip]
  kernel_rfl

theorem node15791_cond_eq
    (child6455 : Flapjack.WordAlloc.removeDeadStructural input6455 value3231 value1 value2 = (output6455, value3232, value1))
    (child15790 : Flapjack.WordAlloc.removeDeadStructural input15790 value3232 value1 value2 = (output15790, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15791 value3231 value1 value2 = (output15791, value6896, value1) := by
  rw [input15791_def, output15791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6455]
  try dsimp only
  rw [child15790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6455_skip, output15790_skip]
  kernel_rfl

theorem node15792_cond_eq
    (child6454 : Flapjack.WordAlloc.removeDeadStructural input6454 value5 value1 value2 = (output6454, value3231, value1))
    (child15791 : Flapjack.WordAlloc.removeDeadStructural input15791 value3231 value1 value2 = (output15791, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15792 value5 value1 value2 = (output15792, value6896, value1) := by
  rw [input15792_def, output15792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6454]
  try dsimp only
  rw [child15791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6454_skip, output15791_skip]
  kernel_rfl

theorem node15793_cond_eq
    (child6451 : Flapjack.WordAlloc.removeDeadStructural input6451 value3224 value1 value2 = (output6451, value5, value1))
    (child15792 : Flapjack.WordAlloc.removeDeadStructural input15792 value5 value1 value2 = (output15792, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15793 value3224 value1 value2 = (output15793, value6896, value1) := by
  rw [input15793_def, output15793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6451]
  try dsimp only
  rw [child15792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6451_skip, output15792_skip]
  kernel_rfl

theorem node15794_cond_eq
    (child6440 : Flapjack.WordAlloc.removeDeadStructural input6440 value3224 value1 value2 = (output6440, value3224, value1))
    (child15793 : Flapjack.WordAlloc.removeDeadStructural input15793 value3224 value1 value2 = (output15793, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15794 value3224 value1 value2 = (output15794, value6896, value1) := by
  rw [input15794_def, output15794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6440]
  try dsimp only
  rw [child15793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6440_skip, output15793_skip]
  kernel_rfl

theorem node15795_cond_eq
    (child6439 : Flapjack.WordAlloc.removeDeadStructural input6439 value3223 value1 value2 = (output6439, value3224, value1))
    (child15794 : Flapjack.WordAlloc.removeDeadStructural input15794 value3224 value1 value2 = (output15794, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15795 value3223 value1 value2 = (output15795, value6896, value1) := by
  rw [input15795_def, output15795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6439]
  try dsimp only
  rw [child15794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6439_skip, output15794_skip]
  kernel_rfl

theorem node15796_cond_eq
    (child6438 : Flapjack.WordAlloc.removeDeadStructural input6438 value5 value1 value2 = (output6438, value3223, value1))
    (child15795 : Flapjack.WordAlloc.removeDeadStructural input15795 value3223 value1 value2 = (output15795, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15796 value5 value1 value2 = (output15796, value6896, value1) := by
  rw [input15796_def, output15796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6438]
  try dsimp only
  rw [child15795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6438_skip, output15795_skip]
  kernel_rfl

theorem node15797_cond_eq
    (child6435 : Flapjack.WordAlloc.removeDeadStructural input6435 value3216 value1 value2 = (output6435, value5, value1))
    (child15796 : Flapjack.WordAlloc.removeDeadStructural input15796 value5 value1 value2 = (output15796, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15797 value3216 value1 value2 = (output15797, value6896, value1) := by
  rw [input15797_def, output15797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6435]
  try dsimp only
  rw [child15796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6435_skip, output15796_skip]
  kernel_rfl

theorem node15798_cond_eq
    (child6424 : Flapjack.WordAlloc.removeDeadStructural input6424 value3216 value1 value2 = (output6424, value3216, value1))
    (child15797 : Flapjack.WordAlloc.removeDeadStructural input15797 value3216 value1 value2 = (output15797, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15798 value3216 value1 value2 = (output15798, value6896, value1) := by
  rw [input15798_def, output15798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6424]
  try dsimp only
  rw [child15797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6424_skip, output15797_skip]
  kernel_rfl

theorem node15799_cond_eq
    (child6423 : Flapjack.WordAlloc.removeDeadStructural input6423 value3215 value1 value2 = (output6423, value3216, value1))
    (child15798 : Flapjack.WordAlloc.removeDeadStructural input15798 value3216 value1 value2 = (output15798, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15799 value3215 value1 value2 = (output15799, value6896, value1) := by
  rw [input15799_def, output15799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6423]
  try dsimp only
  rw [child15798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6423_skip, output15798_skip]
  kernel_rfl

theorem node15800_cond_eq
    (child6422 : Flapjack.WordAlloc.removeDeadStructural input6422 value5 value1 value2 = (output6422, value3215, value1))
    (child15799 : Flapjack.WordAlloc.removeDeadStructural input15799 value3215 value1 value2 = (output15799, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15800 value5 value1 value2 = (output15800, value6896, value1) := by
  rw [input15800_def, output15800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6422]
  try dsimp only
  rw [child15799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6422_skip, output15799_skip]
  kernel_rfl

theorem node15801_cond_eq
    (child6419 : Flapjack.WordAlloc.removeDeadStructural input6419 value3208 value1 value2 = (output6419, value5, value1))
    (child15800 : Flapjack.WordAlloc.removeDeadStructural input15800 value5 value1 value2 = (output15800, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15801 value3208 value1 value2 = (output15801, value6896, value1) := by
  rw [input15801_def, output15801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6419]
  try dsimp only
  rw [child15800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6419_skip, output15800_skip]
  kernel_rfl

theorem node15802_cond_eq
    (child6408 : Flapjack.WordAlloc.removeDeadStructural input6408 value3208 value1 value2 = (output6408, value3208, value1))
    (child15801 : Flapjack.WordAlloc.removeDeadStructural input15801 value3208 value1 value2 = (output15801, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15802 value3208 value1 value2 = (output15802, value6896, value1) := by
  rw [input15802_def, output15802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6408]
  try dsimp only
  rw [child15801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6408_skip, output15801_skip]
  kernel_rfl

theorem node15803_cond_eq
    (child6407 : Flapjack.WordAlloc.removeDeadStructural input6407 value3207 value1 value2 = (output6407, value3208, value1))
    (child15802 : Flapjack.WordAlloc.removeDeadStructural input15802 value3208 value1 value2 = (output15802, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15803 value3207 value1 value2 = (output15803, value6896, value1) := by
  rw [input15803_def, output15803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6407]
  try dsimp only
  rw [child15802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6407_skip, output15802_skip]
  kernel_rfl

theorem node15804_cond_eq
    (child6406 : Flapjack.WordAlloc.removeDeadStructural input6406 value5 value1 value2 = (output6406, value3207, value1))
    (child15803 : Flapjack.WordAlloc.removeDeadStructural input15803 value3207 value1 value2 = (output15803, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15804 value5 value1 value2 = (output15804, value6896, value1) := by
  rw [input15804_def, output15804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6406]
  try dsimp only
  rw [child15803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6406_skip, output15803_skip]
  kernel_rfl

theorem node15805_cond_eq
    (child6403 : Flapjack.WordAlloc.removeDeadStructural input6403 value3200 value1 value2 = (output6403, value5, value1))
    (child15804 : Flapjack.WordAlloc.removeDeadStructural input15804 value5 value1 value2 = (output15804, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15805 value3200 value1 value2 = (output15805, value6896, value1) := by
  rw [input15805_def, output15805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6403]
  try dsimp only
  rw [child15804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6403_skip, output15804_skip]
  kernel_rfl

theorem node15806_cond_eq
    (child6392 : Flapjack.WordAlloc.removeDeadStructural input6392 value3200 value1 value2 = (output6392, value3200, value1))
    (child15805 : Flapjack.WordAlloc.removeDeadStructural input15805 value3200 value1 value2 = (output15805, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15806 value3200 value1 value2 = (output15806, value6896, value1) := by
  rw [input15806_def, output15806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6392]
  try dsimp only
  rw [child15805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6392_skip, output15805_skip]
  kernel_rfl

theorem node15807_cond_eq
    (child6391 : Flapjack.WordAlloc.removeDeadStructural input6391 value3199 value1 value2 = (output6391, value3200, value1))
    (child15806 : Flapjack.WordAlloc.removeDeadStructural input15806 value3200 value1 value2 = (output15806, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15807 value3199 value1 value2 = (output15807, value6896, value1) := by
  rw [input15807_def, output15807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6391]
  try dsimp only
  rw [child15806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6391_skip, output15806_skip]
  kernel_rfl

theorem node15808_cond_eq
    (child6390 : Flapjack.WordAlloc.removeDeadStructural input6390 value5 value1 value2 = (output6390, value3199, value1))
    (child15807 : Flapjack.WordAlloc.removeDeadStructural input15807 value3199 value1 value2 = (output15807, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15808 value5 value1 value2 = (output15808, value6896, value1) := by
  rw [input15808_def, output15808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6390]
  try dsimp only
  rw [child15807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6390_skip, output15807_skip]
  kernel_rfl

theorem node15809_cond_eq
    (child6387 : Flapjack.WordAlloc.removeDeadStructural input6387 value3192 value1 value2 = (output6387, value5, value1))
    (child15808 : Flapjack.WordAlloc.removeDeadStructural input15808 value5 value1 value2 = (output15808, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15809 value3192 value1 value2 = (output15809, value6896, value1) := by
  rw [input15809_def, output15809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6387]
  try dsimp only
  rw [child15808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6387_skip, output15808_skip]
  kernel_rfl

theorem node15810_cond_eq
    (child6376 : Flapjack.WordAlloc.removeDeadStructural input6376 value3192 value1 value2 = (output6376, value3192, value1))
    (child15809 : Flapjack.WordAlloc.removeDeadStructural input15809 value3192 value1 value2 = (output15809, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15810 value3192 value1 value2 = (output15810, value6896, value1) := by
  rw [input15810_def, output15810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6376]
  try dsimp only
  rw [child15809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6376_skip, output15809_skip]
  kernel_rfl

theorem node15811_cond_eq
    (child6375 : Flapjack.WordAlloc.removeDeadStructural input6375 value3191 value1 value2 = (output6375, value3192, value1))
    (child15810 : Flapjack.WordAlloc.removeDeadStructural input15810 value3192 value1 value2 = (output15810, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15811 value3191 value1 value2 = (output15811, value6896, value1) := by
  rw [input15811_def, output15811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6375]
  try dsimp only
  rw [child15810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6375_skip, output15810_skip]
  kernel_rfl

theorem node15812_cond_eq
    (child6374 : Flapjack.WordAlloc.removeDeadStructural input6374 value5 value1 value2 = (output6374, value3191, value1))
    (child15811 : Flapjack.WordAlloc.removeDeadStructural input15811 value3191 value1 value2 = (output15811, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15812 value5 value1 value2 = (output15812, value6896, value1) := by
  rw [input15812_def, output15812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6374]
  try dsimp only
  rw [child15811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6374_skip, output15811_skip]
  kernel_rfl

theorem node15813_cond_eq
    (child6371 : Flapjack.WordAlloc.removeDeadStructural input6371 value3184 value1 value2 = (output6371, value5, value1))
    (child15812 : Flapjack.WordAlloc.removeDeadStructural input15812 value5 value1 value2 = (output15812, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15813 value3184 value1 value2 = (output15813, value6896, value1) := by
  rw [input15813_def, output15813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6371]
  try dsimp only
  rw [child15812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6371_skip, output15812_skip]
  kernel_rfl

theorem node15814_cond_eq
    (child6360 : Flapjack.WordAlloc.removeDeadStructural input6360 value3184 value1 value2 = (output6360, value3184, value1))
    (child15813 : Flapjack.WordAlloc.removeDeadStructural input15813 value3184 value1 value2 = (output15813, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15814 value3184 value1 value2 = (output15814, value6896, value1) := by
  rw [input15814_def, output15814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6360]
  try dsimp only
  rw [child15813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6360_skip, output15813_skip]
  kernel_rfl

theorem node15815_cond_eq
    (child6359 : Flapjack.WordAlloc.removeDeadStructural input6359 value3183 value1 value2 = (output6359, value3184, value1))
    (child15814 : Flapjack.WordAlloc.removeDeadStructural input15814 value3184 value1 value2 = (output15814, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15815 value3183 value1 value2 = (output15815, value6896, value1) := by
  rw [input15815_def, output15815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6359]
  try dsimp only
  rw [child15814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6359_skip, output15814_skip]
  kernel_rfl

theorem node15816_cond_eq
    (child6358 : Flapjack.WordAlloc.removeDeadStructural input6358 value5 value1 value2 = (output6358, value3183, value1))
    (child15815 : Flapjack.WordAlloc.removeDeadStructural input15815 value3183 value1 value2 = (output15815, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15816 value5 value1 value2 = (output15816, value6896, value1) := by
  rw [input15816_def, output15816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6358]
  try dsimp only
  rw [child15815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6358_skip, output15815_skip]
  kernel_rfl

theorem node15817_cond_eq
    (child6355 : Flapjack.WordAlloc.removeDeadStructural input6355 value3176 value1 value2 = (output6355, value5, value1))
    (child15816 : Flapjack.WordAlloc.removeDeadStructural input15816 value5 value1 value2 = (output15816, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15817 value3176 value1 value2 = (output15817, value6896, value1) := by
  rw [input15817_def, output15817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6355]
  try dsimp only
  rw [child15816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6355_skip, output15816_skip]
  kernel_rfl

theorem node15818_cond_eq
    (child6344 : Flapjack.WordAlloc.removeDeadStructural input6344 value3176 value1 value2 = (output6344, value3176, value1))
    (child15817 : Flapjack.WordAlloc.removeDeadStructural input15817 value3176 value1 value2 = (output15817, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15818 value3176 value1 value2 = (output15818, value6896, value1) := by
  rw [input15818_def, output15818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6344]
  try dsimp only
  rw [child15817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6344_skip, output15817_skip]
  kernel_rfl

theorem node15819_cond_eq
    (child6343 : Flapjack.WordAlloc.removeDeadStructural input6343 value3175 value1 value2 = (output6343, value3176, value1))
    (child15818 : Flapjack.WordAlloc.removeDeadStructural input15818 value3176 value1 value2 = (output15818, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15819 value3175 value1 value2 = (output15819, value6896, value1) := by
  rw [input15819_def, output15819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6343]
  try dsimp only
  rw [child15818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6343_skip, output15818_skip]
  kernel_rfl

theorem node15820_cond_eq
    (child6342 : Flapjack.WordAlloc.removeDeadStructural input6342 value5 value1 value2 = (output6342, value3175, value1))
    (child15819 : Flapjack.WordAlloc.removeDeadStructural input15819 value3175 value1 value2 = (output15819, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15820 value5 value1 value2 = (output15820, value6896, value1) := by
  rw [input15820_def, output15820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6342]
  try dsimp only
  rw [child15819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6342_skip, output15819_skip]
  kernel_rfl

theorem node15821_cond_eq
    (child6339 : Flapjack.WordAlloc.removeDeadStructural input6339 value3168 value1 value2 = (output6339, value5, value1))
    (child15820 : Flapjack.WordAlloc.removeDeadStructural input15820 value5 value1 value2 = (output15820, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15821 value3168 value1 value2 = (output15821, value6896, value1) := by
  rw [input15821_def, output15821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6339]
  try dsimp only
  rw [child15820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6339_skip, output15820_skip]
  kernel_rfl

theorem node15822_cond_eq
    (child6328 : Flapjack.WordAlloc.removeDeadStructural input6328 value3168 value1 value2 = (output6328, value3168, value1))
    (child15821 : Flapjack.WordAlloc.removeDeadStructural input15821 value3168 value1 value2 = (output15821, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15822 value3168 value1 value2 = (output15822, value6896, value1) := by
  rw [input15822_def, output15822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6328]
  try dsimp only
  rw [child15821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6328_skip, output15821_skip]
  kernel_rfl

theorem node15823_cond_eq
    (child6327 : Flapjack.WordAlloc.removeDeadStructural input6327 value3167 value1 value2 = (output6327, value3168, value1))
    (child15822 : Flapjack.WordAlloc.removeDeadStructural input15822 value3168 value1 value2 = (output15822, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15823 value3167 value1 value2 = (output15823, value6896, value1) := by
  rw [input15823_def, output15823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6327]
  try dsimp only
  rw [child15822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6327_skip, output15822_skip]
  kernel_rfl

theorem node15824_cond_eq
    (child6326 : Flapjack.WordAlloc.removeDeadStructural input6326 value5 value1 value2 = (output6326, value3167, value1))
    (child15823 : Flapjack.WordAlloc.removeDeadStructural input15823 value3167 value1 value2 = (output15823, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15824 value5 value1 value2 = (output15824, value6896, value1) := by
  rw [input15824_def, output15824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6326]
  try dsimp only
  rw [child15823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6326_skip, output15823_skip]
  kernel_rfl

theorem node15825_cond_eq
    (child6323 : Flapjack.WordAlloc.removeDeadStructural input6323 value3160 value1 value2 = (output6323, value5, value1))
    (child15824 : Flapjack.WordAlloc.removeDeadStructural input15824 value5 value1 value2 = (output15824, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15825 value3160 value1 value2 = (output15825, value6896, value1) := by
  rw [input15825_def, output15825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6323]
  try dsimp only
  rw [child15824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6323_skip, output15824_skip]
  kernel_rfl

theorem node15826_cond_eq
    (child6312 : Flapjack.WordAlloc.removeDeadStructural input6312 value3160 value1 value2 = (output6312, value3160, value1))
    (child15825 : Flapjack.WordAlloc.removeDeadStructural input15825 value3160 value1 value2 = (output15825, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15826 value3160 value1 value2 = (output15826, value6896, value1) := by
  rw [input15826_def, output15826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6312]
  try dsimp only
  rw [child15825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6312_skip, output15825_skip]
  kernel_rfl

theorem node15827_cond_eq
    (child6311 : Flapjack.WordAlloc.removeDeadStructural input6311 value3159 value1 value2 = (output6311, value3160, value1))
    (child15826 : Flapjack.WordAlloc.removeDeadStructural input15826 value3160 value1 value2 = (output15826, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15827 value3159 value1 value2 = (output15827, value6896, value1) := by
  rw [input15827_def, output15827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6311]
  try dsimp only
  rw [child15826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6311_skip, output15826_skip]
  kernel_rfl

theorem node15828_cond_eq
    (child6310 : Flapjack.WordAlloc.removeDeadStructural input6310 value5 value1 value2 = (output6310, value3159, value1))
    (child15827 : Flapjack.WordAlloc.removeDeadStructural input15827 value3159 value1 value2 = (output15827, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15828 value5 value1 value2 = (output15828, value6896, value1) := by
  rw [input15828_def, output15828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6310]
  try dsimp only
  rw [child15827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6310_skip, output15827_skip]
  kernel_rfl

theorem node15829_cond_eq
    (child6307 : Flapjack.WordAlloc.removeDeadStructural input6307 value3152 value1 value2 = (output6307, value5, value1))
    (child15828 : Flapjack.WordAlloc.removeDeadStructural input15828 value5 value1 value2 = (output15828, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15829 value3152 value1 value2 = (output15829, value6896, value1) := by
  rw [input15829_def, output15829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6307]
  try dsimp only
  rw [child15828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6307_skip, output15828_skip]
  kernel_rfl

theorem node15830_cond_eq
    (child6296 : Flapjack.WordAlloc.removeDeadStructural input6296 value3152 value1 value2 = (output6296, value3152, value1))
    (child15829 : Flapjack.WordAlloc.removeDeadStructural input15829 value3152 value1 value2 = (output15829, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15830 value3152 value1 value2 = (output15830, value6896, value1) := by
  rw [input15830_def, output15830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6296]
  try dsimp only
  rw [child15829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6296_skip, output15829_skip]
  kernel_rfl

theorem node15831_cond_eq
    (child6295 : Flapjack.WordAlloc.removeDeadStructural input6295 value3151 value1 value2 = (output6295, value3152, value1))
    (child15830 : Flapjack.WordAlloc.removeDeadStructural input15830 value3152 value1 value2 = (output15830, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15831 value3151 value1 value2 = (output15831, value6896, value1) := by
  rw [input15831_def, output15831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6295]
  try dsimp only
  rw [child15830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6295_skip, output15830_skip]
  kernel_rfl

theorem node15832_cond_eq
    (child6294 : Flapjack.WordAlloc.removeDeadStructural input6294 value5 value1 value2 = (output6294, value3151, value1))
    (child15831 : Flapjack.WordAlloc.removeDeadStructural input15831 value3151 value1 value2 = (output15831, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15832 value5 value1 value2 = (output15832, value6896, value1) := by
  rw [input15832_def, output15832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6294]
  try dsimp only
  rw [child15831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6294_skip, output15831_skip]
  kernel_rfl

theorem node15833_cond_eq
    (child6291 : Flapjack.WordAlloc.removeDeadStructural input6291 value3144 value1 value2 = (output6291, value5, value1))
    (child15832 : Flapjack.WordAlloc.removeDeadStructural input15832 value5 value1 value2 = (output15832, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15833 value3144 value1 value2 = (output15833, value6896, value1) := by
  rw [input15833_def, output15833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6291]
  try dsimp only
  rw [child15832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6291_skip, output15832_skip]
  kernel_rfl

theorem node15834_cond_eq
    (child6280 : Flapjack.WordAlloc.removeDeadStructural input6280 value3144 value1 value2 = (output6280, value3144, value1))
    (child15833 : Flapjack.WordAlloc.removeDeadStructural input15833 value3144 value1 value2 = (output15833, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15834 value3144 value1 value2 = (output15834, value6896, value1) := by
  rw [input15834_def, output15834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6280]
  try dsimp only
  rw [child15833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6280_skip, output15833_skip]
  kernel_rfl

theorem node15835_cond_eq
    (child6279 : Flapjack.WordAlloc.removeDeadStructural input6279 value3143 value1 value2 = (output6279, value3144, value1))
    (child15834 : Flapjack.WordAlloc.removeDeadStructural input15834 value3144 value1 value2 = (output15834, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15835 value3143 value1 value2 = (output15835, value6896, value1) := by
  rw [input15835_def, output15835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6279]
  try dsimp only
  rw [child15834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6279_skip, output15834_skip]
  kernel_rfl

theorem node15836_cond_eq
    (child6278 : Flapjack.WordAlloc.removeDeadStructural input6278 value5 value1 value2 = (output6278, value3143, value1))
    (child15835 : Flapjack.WordAlloc.removeDeadStructural input15835 value3143 value1 value2 = (output15835, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15836 value5 value1 value2 = (output15836, value6896, value1) := by
  rw [input15836_def, output15836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6278]
  try dsimp only
  rw [child15835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6278_skip, output15835_skip]
  kernel_rfl

theorem node15837_cond_eq
    (child6275 : Flapjack.WordAlloc.removeDeadStructural input6275 value3136 value1 value2 = (output6275, value5, value1))
    (child15836 : Flapjack.WordAlloc.removeDeadStructural input15836 value5 value1 value2 = (output15836, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15837 value3136 value1 value2 = (output15837, value6896, value1) := by
  rw [input15837_def, output15837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6275]
  try dsimp only
  rw [child15836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6275_skip, output15836_skip]
  kernel_rfl

theorem node15838_cond_eq
    (child6264 : Flapjack.WordAlloc.removeDeadStructural input6264 value3136 value1 value2 = (output6264, value3136, value1))
    (child15837 : Flapjack.WordAlloc.removeDeadStructural input15837 value3136 value1 value2 = (output15837, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15838 value3136 value1 value2 = (output15838, value6896, value1) := by
  rw [input15838_def, output15838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6264]
  try dsimp only
  rw [child15837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6264_skip, output15837_skip]
  kernel_rfl

theorem node15839_cond_eq
    (child6263 : Flapjack.WordAlloc.removeDeadStructural input6263 value3135 value1 value2 = (output6263, value3136, value1))
    (child15838 : Flapjack.WordAlloc.removeDeadStructural input15838 value3136 value1 value2 = (output15838, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15839 value3135 value1 value2 = (output15839, value6896, value1) := by
  rw [input15839_def, output15839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6263]
  try dsimp only
  rw [child15838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6263_skip, output15838_skip]
  kernel_rfl

theorem node15840_cond_eq
    (child6262 : Flapjack.WordAlloc.removeDeadStructural input6262 value5 value1 value2 = (output6262, value3135, value1))
    (child15839 : Flapjack.WordAlloc.removeDeadStructural input15839 value3135 value1 value2 = (output15839, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15840 value5 value1 value2 = (output15840, value6896, value1) := by
  rw [input15840_def, output15840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6262]
  try dsimp only
  rw [child15839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6262_skip, output15839_skip]
  kernel_rfl

theorem node15841_cond_eq
    (child6259 : Flapjack.WordAlloc.removeDeadStructural input6259 value3128 value1 value2 = (output6259, value5, value1))
    (child15840 : Flapjack.WordAlloc.removeDeadStructural input15840 value5 value1 value2 = (output15840, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15841 value3128 value1 value2 = (output15841, value6896, value1) := by
  rw [input15841_def, output15841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6259]
  try dsimp only
  rw [child15840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6259_skip, output15840_skip]
  kernel_rfl

theorem node15842_cond_eq
    (child6248 : Flapjack.WordAlloc.removeDeadStructural input6248 value3128 value1 value2 = (output6248, value3128, value1))
    (child15841 : Flapjack.WordAlloc.removeDeadStructural input15841 value3128 value1 value2 = (output15841, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15842 value3128 value1 value2 = (output15842, value6896, value1) := by
  rw [input15842_def, output15842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6248]
  try dsimp only
  rw [child15841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6248_skip, output15841_skip]
  kernel_rfl

theorem node15843_cond_eq
    (child6247 : Flapjack.WordAlloc.removeDeadStructural input6247 value3127 value1 value2 = (output6247, value3128, value1))
    (child15842 : Flapjack.WordAlloc.removeDeadStructural input15842 value3128 value1 value2 = (output15842, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15843 value3127 value1 value2 = (output15843, value6896, value1) := by
  rw [input15843_def, output15843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6247]
  try dsimp only
  rw [child15842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6247_skip, output15842_skip]
  kernel_rfl

theorem node15844_cond_eq
    (child6246 : Flapjack.WordAlloc.removeDeadStructural input6246 value5 value1 value2 = (output6246, value3127, value1))
    (child15843 : Flapjack.WordAlloc.removeDeadStructural input15843 value3127 value1 value2 = (output15843, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15844 value5 value1 value2 = (output15844, value6896, value1) := by
  rw [input15844_def, output15844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6246]
  try dsimp only
  rw [child15843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6246_skip, output15843_skip]
  kernel_rfl

theorem node15845_cond_eq
    (child6243 : Flapjack.WordAlloc.removeDeadStructural input6243 value3120 value1 value2 = (output6243, value5, value1))
    (child15844 : Flapjack.WordAlloc.removeDeadStructural input15844 value5 value1 value2 = (output15844, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15845 value3120 value1 value2 = (output15845, value6896, value1) := by
  rw [input15845_def, output15845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6243]
  try dsimp only
  rw [child15844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6243_skip, output15844_skip]
  kernel_rfl

theorem node15846_cond_eq
    (child6232 : Flapjack.WordAlloc.removeDeadStructural input6232 value3120 value1 value2 = (output6232, value3120, value1))
    (child15845 : Flapjack.WordAlloc.removeDeadStructural input15845 value3120 value1 value2 = (output15845, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15846 value3120 value1 value2 = (output15846, value6896, value1) := by
  rw [input15846_def, output15846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6232]
  try dsimp only
  rw [child15845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6232_skip, output15845_skip]
  kernel_rfl

theorem node15847_cond_eq
    (child6231 : Flapjack.WordAlloc.removeDeadStructural input6231 value3119 value1 value2 = (output6231, value3120, value1))
    (child15846 : Flapjack.WordAlloc.removeDeadStructural input15846 value3120 value1 value2 = (output15846, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15847 value3119 value1 value2 = (output15847, value6896, value1) := by
  rw [input15847_def, output15847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6231]
  try dsimp only
  rw [child15846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6231_skip, output15846_skip]
  kernel_rfl

theorem node15848_cond_eq
    (child6230 : Flapjack.WordAlloc.removeDeadStructural input6230 value5 value1 value2 = (output6230, value3119, value1))
    (child15847 : Flapjack.WordAlloc.removeDeadStructural input15847 value3119 value1 value2 = (output15847, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15848 value5 value1 value2 = (output15848, value6896, value1) := by
  rw [input15848_def, output15848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6230]
  try dsimp only
  rw [child15847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6230_skip, output15847_skip]
  kernel_rfl

theorem node15849_cond_eq
    (child6227 : Flapjack.WordAlloc.removeDeadStructural input6227 value3112 value1 value2 = (output6227, value5, value1))
    (child15848 : Flapjack.WordAlloc.removeDeadStructural input15848 value5 value1 value2 = (output15848, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15849 value3112 value1 value2 = (output15849, value6896, value1) := by
  rw [input15849_def, output15849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6227]
  try dsimp only
  rw [child15848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6227_skip, output15848_skip]
  kernel_rfl

theorem node15850_cond_eq
    (child6216 : Flapjack.WordAlloc.removeDeadStructural input6216 value3112 value1 value2 = (output6216, value3112, value1))
    (child15849 : Flapjack.WordAlloc.removeDeadStructural input15849 value3112 value1 value2 = (output15849, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15850 value3112 value1 value2 = (output15850, value6896, value1) := by
  rw [input15850_def, output15850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6216]
  try dsimp only
  rw [child15849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6216_skip, output15849_skip]
  kernel_rfl

theorem node15851_cond_eq
    (child6215 : Flapjack.WordAlloc.removeDeadStructural input6215 value3111 value1 value2 = (output6215, value3112, value1))
    (child15850 : Flapjack.WordAlloc.removeDeadStructural input15850 value3112 value1 value2 = (output15850, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15851 value3111 value1 value2 = (output15851, value6896, value1) := by
  rw [input15851_def, output15851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6215]
  try dsimp only
  rw [child15850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6215_skip, output15850_skip]
  kernel_rfl

theorem node15852_cond_eq
    (child6214 : Flapjack.WordAlloc.removeDeadStructural input6214 value5 value1 value2 = (output6214, value3111, value1))
    (child15851 : Flapjack.WordAlloc.removeDeadStructural input15851 value3111 value1 value2 = (output15851, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15852 value5 value1 value2 = (output15852, value6896, value1) := by
  rw [input15852_def, output15852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6214]
  try dsimp only
  rw [child15851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6214_skip, output15851_skip]
  kernel_rfl

theorem node15853_cond_eq
    (child6211 : Flapjack.WordAlloc.removeDeadStructural input6211 value3104 value1 value2 = (output6211, value5, value1))
    (child15852 : Flapjack.WordAlloc.removeDeadStructural input15852 value5 value1 value2 = (output15852, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15853 value3104 value1 value2 = (output15853, value6896, value1) := by
  rw [input15853_def, output15853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6211]
  try dsimp only
  rw [child15852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6211_skip, output15852_skip]
  kernel_rfl

theorem node15854_cond_eq
    (child6200 : Flapjack.WordAlloc.removeDeadStructural input6200 value3104 value1 value2 = (output6200, value3104, value1))
    (child15853 : Flapjack.WordAlloc.removeDeadStructural input15853 value3104 value1 value2 = (output15853, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15854 value3104 value1 value2 = (output15854, value6896, value1) := by
  rw [input15854_def, output15854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6200]
  try dsimp only
  rw [child15853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6200_skip, output15853_skip]
  kernel_rfl

theorem node15855_cond_eq
    (child6199 : Flapjack.WordAlloc.removeDeadStructural input6199 value3103 value1 value2 = (output6199, value3104, value1))
    (child15854 : Flapjack.WordAlloc.removeDeadStructural input15854 value3104 value1 value2 = (output15854, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15855 value3103 value1 value2 = (output15855, value6896, value1) := by
  rw [input15855_def, output15855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6199]
  try dsimp only
  rw [child15854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6199_skip, output15854_skip]
  kernel_rfl

theorem node15856_cond_eq
    (child6198 : Flapjack.WordAlloc.removeDeadStructural input6198 value5 value1 value2 = (output6198, value3103, value1))
    (child15855 : Flapjack.WordAlloc.removeDeadStructural input15855 value3103 value1 value2 = (output15855, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15856 value5 value1 value2 = (output15856, value6896, value1) := by
  rw [input15856_def, output15856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6198]
  try dsimp only
  rw [child15855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6198_skip, output15855_skip]
  kernel_rfl

theorem node15857_cond_eq
    (child6195 : Flapjack.WordAlloc.removeDeadStructural input6195 value3096 value1 value2 = (output6195, value5, value1))
    (child15856 : Flapjack.WordAlloc.removeDeadStructural input15856 value5 value1 value2 = (output15856, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15857 value3096 value1 value2 = (output15857, value6896, value1) := by
  rw [input15857_def, output15857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6195]
  try dsimp only
  rw [child15856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6195_skip, output15856_skip]
  kernel_rfl

theorem node15858_cond_eq
    (child6184 : Flapjack.WordAlloc.removeDeadStructural input6184 value3096 value1 value2 = (output6184, value3096, value1))
    (child15857 : Flapjack.WordAlloc.removeDeadStructural input15857 value3096 value1 value2 = (output15857, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15858 value3096 value1 value2 = (output15858, value6896, value1) := by
  rw [input15858_def, output15858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6184]
  try dsimp only
  rw [child15857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6184_skip, output15857_skip]
  kernel_rfl

theorem node15859_cond_eq
    (child6183 : Flapjack.WordAlloc.removeDeadStructural input6183 value3095 value1 value2 = (output6183, value3096, value1))
    (child15858 : Flapjack.WordAlloc.removeDeadStructural input15858 value3096 value1 value2 = (output15858, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15859 value3095 value1 value2 = (output15859, value6896, value1) := by
  rw [input15859_def, output15859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6183]
  try dsimp only
  rw [child15858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6183_skip, output15858_skip]
  kernel_rfl

theorem node15860_cond_eq
    (child6182 : Flapjack.WordAlloc.removeDeadStructural input6182 value5 value1 value2 = (output6182, value3095, value1))
    (child15859 : Flapjack.WordAlloc.removeDeadStructural input15859 value3095 value1 value2 = (output15859, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15860 value5 value1 value2 = (output15860, value6896, value1) := by
  rw [input15860_def, output15860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6182]
  try dsimp only
  rw [child15859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6182_skip, output15859_skip]
  kernel_rfl

theorem node15861_cond_eq
    (child6179 : Flapjack.WordAlloc.removeDeadStructural input6179 value3088 value1 value2 = (output6179, value5, value1))
    (child15860 : Flapjack.WordAlloc.removeDeadStructural input15860 value5 value1 value2 = (output15860, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15861 value3088 value1 value2 = (output15861, value6896, value1) := by
  rw [input15861_def, output15861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6179]
  try dsimp only
  rw [child15860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6179_skip, output15860_skip]
  kernel_rfl

theorem node15862_cond_eq
    (child6168 : Flapjack.WordAlloc.removeDeadStructural input6168 value3088 value1 value2 = (output6168, value3088, value1))
    (child15861 : Flapjack.WordAlloc.removeDeadStructural input15861 value3088 value1 value2 = (output15861, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15862 value3088 value1 value2 = (output15862, value6896, value1) := by
  rw [input15862_def, output15862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6168]
  try dsimp only
  rw [child15861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6168_skip, output15861_skip]
  kernel_rfl

theorem node15863_cond_eq
    (child6167 : Flapjack.WordAlloc.removeDeadStructural input6167 value3087 value1 value2 = (output6167, value3088, value1))
    (child15862 : Flapjack.WordAlloc.removeDeadStructural input15862 value3088 value1 value2 = (output15862, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15863 value3087 value1 value2 = (output15863, value6896, value1) := by
  rw [input15863_def, output15863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6167]
  try dsimp only
  rw [child15862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6167_skip, output15862_skip]
  kernel_rfl

theorem node15864_cond_eq
    (child6166 : Flapjack.WordAlloc.removeDeadStructural input6166 value5 value1 value2 = (output6166, value3087, value1))
    (child15863 : Flapjack.WordAlloc.removeDeadStructural input15863 value3087 value1 value2 = (output15863, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15864 value5 value1 value2 = (output15864, value6896, value1) := by
  rw [input15864_def, output15864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6166]
  try dsimp only
  rw [child15863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6166_skip, output15863_skip]
  kernel_rfl

theorem node15865_cond_eq
    (child6163 : Flapjack.WordAlloc.removeDeadStructural input6163 value3080 value1 value2 = (output6163, value5, value1))
    (child15864 : Flapjack.WordAlloc.removeDeadStructural input15864 value5 value1 value2 = (output15864, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15865 value3080 value1 value2 = (output15865, value6896, value1) := by
  rw [input15865_def, output15865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6163]
  try dsimp only
  rw [child15864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6163_skip, output15864_skip]
  kernel_rfl

theorem node15866_cond_eq
    (child6152 : Flapjack.WordAlloc.removeDeadStructural input6152 value3080 value1 value2 = (output6152, value3080, value1))
    (child15865 : Flapjack.WordAlloc.removeDeadStructural input15865 value3080 value1 value2 = (output15865, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15866 value3080 value1 value2 = (output15866, value6896, value1) := by
  rw [input15866_def, output15866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6152]
  try dsimp only
  rw [child15865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6152_skip, output15865_skip]
  kernel_rfl

theorem node15867_cond_eq
    (child6151 : Flapjack.WordAlloc.removeDeadStructural input6151 value3079 value1 value2 = (output6151, value3080, value1))
    (child15866 : Flapjack.WordAlloc.removeDeadStructural input15866 value3080 value1 value2 = (output15866, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15867 value3079 value1 value2 = (output15867, value6896, value1) := by
  rw [input15867_def, output15867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6151]
  try dsimp only
  rw [child15866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6151_skip, output15866_skip]
  kernel_rfl

theorem node15868_cond_eq
    (child6150 : Flapjack.WordAlloc.removeDeadStructural input6150 value5 value1 value2 = (output6150, value3079, value1))
    (child15867 : Flapjack.WordAlloc.removeDeadStructural input15867 value3079 value1 value2 = (output15867, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15868 value5 value1 value2 = (output15868, value6896, value1) := by
  rw [input15868_def, output15868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6150]
  try dsimp only
  rw [child15867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6150_skip, output15867_skip]
  kernel_rfl

theorem node15869_cond_eq
    (child6147 : Flapjack.WordAlloc.removeDeadStructural input6147 value3072 value1 value2 = (output6147, value5, value1))
    (child15868 : Flapjack.WordAlloc.removeDeadStructural input15868 value5 value1 value2 = (output15868, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15869 value3072 value1 value2 = (output15869, value6896, value1) := by
  rw [input15869_def, output15869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6147]
  try dsimp only
  rw [child15868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6147_skip, output15868_skip]
  kernel_rfl

theorem node15870_cond_eq
    (child6136 : Flapjack.WordAlloc.removeDeadStructural input6136 value3072 value1 value2 = (output6136, value3072, value1))
    (child15869 : Flapjack.WordAlloc.removeDeadStructural input15869 value3072 value1 value2 = (output15869, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15870 value3072 value1 value2 = (output15870, value6896, value1) := by
  rw [input15870_def, output15870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6136]
  try dsimp only
  rw [child15869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6136_skip, output15869_skip]
  kernel_rfl

theorem node15871_cond_eq
    (child6135 : Flapjack.WordAlloc.removeDeadStructural input6135 value3071 value1 value2 = (output6135, value3072, value1))
    (child15870 : Flapjack.WordAlloc.removeDeadStructural input15870 value3072 value1 value2 = (output15870, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15871 value3071 value1 value2 = (output15871, value6896, value1) := by
  rw [input15871_def, output15871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6135]
  try dsimp only
  rw [child15870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6135_skip, output15870_skip]
  kernel_rfl

#print axioms node15871_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
