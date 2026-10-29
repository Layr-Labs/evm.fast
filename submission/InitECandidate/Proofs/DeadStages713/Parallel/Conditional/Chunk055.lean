import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk055
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node14080_cond_eq
    (child12912 : Flapjack.WordAlloc.removeDeadStructural input12912 value5 value1 value2 = (output12912, value6460, value1))
    (child14079 : Flapjack.WordAlloc.removeDeadStructural input14079 value6460 value1 value2 = (output14079, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14080 value5 value1 value2 = (output14080, value6896, value1) := by
  rw [input14080_def, output14080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12912]
  try dsimp only
  rw [child14079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12912_skip, output14079_skip]
  kernel_rfl

theorem node14081_cond_eq
    (child12909 : Flapjack.WordAlloc.removeDeadStructural input12909 value6454 value1 value2 = (output12909, value5, value1))
    (child14080 : Flapjack.WordAlloc.removeDeadStructural input14080 value5 value1 value2 = (output14080, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14081 value6454 value1 value2 = (output14081, value6896, value1) := by
  rw [input14081_def, output14081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12909]
  try dsimp only
  rw [child14080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12909_skip, output14080_skip]
  kernel_rfl

theorem node14082_cond_eq
    (child12900 : Flapjack.WordAlloc.removeDeadStructural input12900 value6454 value1 value2 = (output12900, value6454, value1))
    (child14081 : Flapjack.WordAlloc.removeDeadStructural input14081 value6454 value1 value2 = (output14081, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14082 value6454 value1 value2 = (output14082, value6896, value1) := by
  rw [input14082_def, output14082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12900]
  try dsimp only
  rw [child14081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12900_skip, output14081_skip]
  kernel_rfl

theorem node14083_cond_eq
    (child12899 : Flapjack.WordAlloc.removeDeadStructural input12899 value6453 value1 value2 = (output12899, value6454, value1))
    (child14082 : Flapjack.WordAlloc.removeDeadStructural input14082 value6454 value1 value2 = (output14082, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14083 value6453 value1 value2 = (output14083, value6896, value1) := by
  rw [input14083_def, output14083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12899]
  try dsimp only
  rw [child14082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12899_skip, output14082_skip]
  kernel_rfl

theorem node14084_cond_eq
    (child12898 : Flapjack.WordAlloc.removeDeadStructural input12898 value5 value1 value2 = (output12898, value6453, value1))
    (child14083 : Flapjack.WordAlloc.removeDeadStructural input14083 value6453 value1 value2 = (output14083, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14084 value5 value1 value2 = (output14084, value6896, value1) := by
  rw [input14084_def, output14084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12898]
  try dsimp only
  rw [child14083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12898_skip, output14083_skip]
  kernel_rfl

theorem node14085_cond_eq
    (child12895 : Flapjack.WordAlloc.removeDeadStructural input12895 value6447 value1 value2 = (output12895, value5, value1))
    (child14084 : Flapjack.WordAlloc.removeDeadStructural input14084 value5 value1 value2 = (output14084, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14085 value6447 value1 value2 = (output14085, value6896, value1) := by
  rw [input14085_def, output14085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12895]
  try dsimp only
  rw [child14084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12895_skip, output14084_skip]
  kernel_rfl

theorem node14086_cond_eq
    (child12886 : Flapjack.WordAlloc.removeDeadStructural input12886 value6447 value1 value2 = (output12886, value6447, value1))
    (child14085 : Flapjack.WordAlloc.removeDeadStructural input14085 value6447 value1 value2 = (output14085, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14086 value6447 value1 value2 = (output14086, value6896, value1) := by
  rw [input14086_def, output14086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12886]
  try dsimp only
  rw [child14085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12886_skip, output14085_skip]
  kernel_rfl

theorem node14087_cond_eq
    (child12885 : Flapjack.WordAlloc.removeDeadStructural input12885 value6446 value1 value2 = (output12885, value6447, value1))
    (child14086 : Flapjack.WordAlloc.removeDeadStructural input14086 value6447 value1 value2 = (output14086, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14087 value6446 value1 value2 = (output14087, value6896, value1) := by
  rw [input14087_def, output14087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12885]
  try dsimp only
  rw [child14086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12885_skip, output14086_skip]
  kernel_rfl

theorem node14088_cond_eq
    (child12884 : Flapjack.WordAlloc.removeDeadStructural input12884 value5 value1 value2 = (output12884, value6446, value1))
    (child14087 : Flapjack.WordAlloc.removeDeadStructural input14087 value6446 value1 value2 = (output14087, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14088 value5 value1 value2 = (output14088, value6896, value1) := by
  rw [input14088_def, output14088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12884]
  try dsimp only
  rw [child14087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12884_skip, output14087_skip]
  kernel_rfl

theorem node14089_cond_eq
    (child12881 : Flapjack.WordAlloc.removeDeadStructural input12881 value6440 value1 value2 = (output12881, value5, value1))
    (child14088 : Flapjack.WordAlloc.removeDeadStructural input14088 value5 value1 value2 = (output14088, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14089 value6440 value1 value2 = (output14089, value6896, value1) := by
  rw [input14089_def, output14089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12881]
  try dsimp only
  rw [child14088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12881_skip, output14088_skip]
  kernel_rfl

theorem node14090_cond_eq
    (child12872 : Flapjack.WordAlloc.removeDeadStructural input12872 value6440 value1 value2 = (output12872, value6440, value1))
    (child14089 : Flapjack.WordAlloc.removeDeadStructural input14089 value6440 value1 value2 = (output14089, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14090 value6440 value1 value2 = (output14090, value6896, value1) := by
  rw [input14090_def, output14090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12872]
  try dsimp only
  rw [child14089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12872_skip, output14089_skip]
  kernel_rfl

theorem node14091_cond_eq
    (child12871 : Flapjack.WordAlloc.removeDeadStructural input12871 value6439 value1 value2 = (output12871, value6440, value1))
    (child14090 : Flapjack.WordAlloc.removeDeadStructural input14090 value6440 value1 value2 = (output14090, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14091 value6439 value1 value2 = (output14091, value6896, value1) := by
  rw [input14091_def, output14091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12871]
  try dsimp only
  rw [child14090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12871_skip, output14090_skip]
  kernel_rfl

theorem node14092_cond_eq
    (child12870 : Flapjack.WordAlloc.removeDeadStructural input12870 value5 value1 value2 = (output12870, value6439, value1))
    (child14091 : Flapjack.WordAlloc.removeDeadStructural input14091 value6439 value1 value2 = (output14091, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14092 value5 value1 value2 = (output14092, value6896, value1) := by
  rw [input14092_def, output14092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12870]
  try dsimp only
  rw [child14091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12870_skip, output14091_skip]
  kernel_rfl

theorem node14093_cond_eq
    (child12867 : Flapjack.WordAlloc.removeDeadStructural input12867 value6433 value1 value2 = (output12867, value5, value1))
    (child14092 : Flapjack.WordAlloc.removeDeadStructural input14092 value5 value1 value2 = (output14092, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14093 value6433 value1 value2 = (output14093, value6896, value1) := by
  rw [input14093_def, output14093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12867]
  try dsimp only
  rw [child14092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12867_skip, output14092_skip]
  kernel_rfl

theorem node14094_cond_eq
    (child12858 : Flapjack.WordAlloc.removeDeadStructural input12858 value6433 value1 value2 = (output12858, value6433, value1))
    (child14093 : Flapjack.WordAlloc.removeDeadStructural input14093 value6433 value1 value2 = (output14093, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14094 value6433 value1 value2 = (output14094, value6896, value1) := by
  rw [input14094_def, output14094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12858]
  try dsimp only
  rw [child14093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12858_skip, output14093_skip]
  kernel_rfl

theorem node14095_cond_eq
    (child12857 : Flapjack.WordAlloc.removeDeadStructural input12857 value6432 value1 value2 = (output12857, value6433, value1))
    (child14094 : Flapjack.WordAlloc.removeDeadStructural input14094 value6433 value1 value2 = (output14094, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14095 value6432 value1 value2 = (output14095, value6896, value1) := by
  rw [input14095_def, output14095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12857]
  try dsimp only
  rw [child14094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12857_skip, output14094_skip]
  kernel_rfl

theorem node14096_cond_eq
    (child12856 : Flapjack.WordAlloc.removeDeadStructural input12856 value5 value1 value2 = (output12856, value6432, value1))
    (child14095 : Flapjack.WordAlloc.removeDeadStructural input14095 value6432 value1 value2 = (output14095, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14096 value5 value1 value2 = (output14096, value6896, value1) := by
  rw [input14096_def, output14096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12856]
  try dsimp only
  rw [child14095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12856_skip, output14095_skip]
  kernel_rfl

theorem node14097_cond_eq
    (child12853 : Flapjack.WordAlloc.removeDeadStructural input12853 value6426 value1 value2 = (output12853, value5, value1))
    (child14096 : Flapjack.WordAlloc.removeDeadStructural input14096 value5 value1 value2 = (output14096, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14097 value6426 value1 value2 = (output14097, value6896, value1) := by
  rw [input14097_def, output14097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12853]
  try dsimp only
  rw [child14096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12853_skip, output14096_skip]
  kernel_rfl

theorem node14098_cond_eq
    (child12844 : Flapjack.WordAlloc.removeDeadStructural input12844 value6426 value1 value2 = (output12844, value6426, value1))
    (child14097 : Flapjack.WordAlloc.removeDeadStructural input14097 value6426 value1 value2 = (output14097, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14098 value6426 value1 value2 = (output14098, value6896, value1) := by
  rw [input14098_def, output14098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12844]
  try dsimp only
  rw [child14097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12844_skip, output14097_skip]
  kernel_rfl

theorem node14099_cond_eq
    (child12843 : Flapjack.WordAlloc.removeDeadStructural input12843 value6425 value1 value2 = (output12843, value6426, value1))
    (child14098 : Flapjack.WordAlloc.removeDeadStructural input14098 value6426 value1 value2 = (output14098, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14099 value6425 value1 value2 = (output14099, value6896, value1) := by
  rw [input14099_def, output14099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12843]
  try dsimp only
  rw [child14098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12843_skip, output14098_skip]
  kernel_rfl

theorem node14100_cond_eq
    (child12842 : Flapjack.WordAlloc.removeDeadStructural input12842 value5 value1 value2 = (output12842, value6425, value1))
    (child14099 : Flapjack.WordAlloc.removeDeadStructural input14099 value6425 value1 value2 = (output14099, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14100 value5 value1 value2 = (output14100, value6896, value1) := by
  rw [input14100_def, output14100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12842]
  try dsimp only
  rw [child14099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12842_skip, output14099_skip]
  kernel_rfl

theorem node14101_cond_eq
    (child12839 : Flapjack.WordAlloc.removeDeadStructural input12839 value6419 value1 value2 = (output12839, value5, value1))
    (child14100 : Flapjack.WordAlloc.removeDeadStructural input14100 value5 value1 value2 = (output14100, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14101 value6419 value1 value2 = (output14101, value6896, value1) := by
  rw [input14101_def, output14101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12839]
  try dsimp only
  rw [child14100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12839_skip, output14100_skip]
  kernel_rfl

theorem node14102_cond_eq
    (child12830 : Flapjack.WordAlloc.removeDeadStructural input12830 value6419 value1 value2 = (output12830, value6419, value1))
    (child14101 : Flapjack.WordAlloc.removeDeadStructural input14101 value6419 value1 value2 = (output14101, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14102 value6419 value1 value2 = (output14102, value6896, value1) := by
  rw [input14102_def, output14102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12830]
  try dsimp only
  rw [child14101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12830_skip, output14101_skip]
  kernel_rfl

theorem node14103_cond_eq
    (child12829 : Flapjack.WordAlloc.removeDeadStructural input12829 value6418 value1 value2 = (output12829, value6419, value1))
    (child14102 : Flapjack.WordAlloc.removeDeadStructural input14102 value6419 value1 value2 = (output14102, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14103 value6418 value1 value2 = (output14103, value6896, value1) := by
  rw [input14103_def, output14103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12829]
  try dsimp only
  rw [child14102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12829_skip, output14102_skip]
  kernel_rfl

theorem node14104_cond_eq
    (child12828 : Flapjack.WordAlloc.removeDeadStructural input12828 value5 value1 value2 = (output12828, value6418, value1))
    (child14103 : Flapjack.WordAlloc.removeDeadStructural input14103 value6418 value1 value2 = (output14103, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14104 value5 value1 value2 = (output14104, value6896, value1) := by
  rw [input14104_def, output14104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12828]
  try dsimp only
  rw [child14103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12828_skip, output14103_skip]
  kernel_rfl

theorem node14105_cond_eq
    (child12825 : Flapjack.WordAlloc.removeDeadStructural input12825 value6412 value1 value2 = (output12825, value5, value1))
    (child14104 : Flapjack.WordAlloc.removeDeadStructural input14104 value5 value1 value2 = (output14104, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14105 value6412 value1 value2 = (output14105, value6896, value1) := by
  rw [input14105_def, output14105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12825]
  try dsimp only
  rw [child14104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12825_skip, output14104_skip]
  kernel_rfl

theorem node14106_cond_eq
    (child12816 : Flapjack.WordAlloc.removeDeadStructural input12816 value6412 value1 value2 = (output12816, value6412, value1))
    (child14105 : Flapjack.WordAlloc.removeDeadStructural input14105 value6412 value1 value2 = (output14105, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14106 value6412 value1 value2 = (output14106, value6896, value1) := by
  rw [input14106_def, output14106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12816]
  try dsimp only
  rw [child14105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12816_skip, output14105_skip]
  kernel_rfl

theorem node14107_cond_eq
    (child12815 : Flapjack.WordAlloc.removeDeadStructural input12815 value6411 value1 value2 = (output12815, value6412, value1))
    (child14106 : Flapjack.WordAlloc.removeDeadStructural input14106 value6412 value1 value2 = (output14106, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14107 value6411 value1 value2 = (output14107, value6896, value1) := by
  rw [input14107_def, output14107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12815]
  try dsimp only
  rw [child14106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12815_skip, output14106_skip]
  kernel_rfl

theorem node14108_cond_eq
    (child12814 : Flapjack.WordAlloc.removeDeadStructural input12814 value5 value1 value2 = (output12814, value6411, value1))
    (child14107 : Flapjack.WordAlloc.removeDeadStructural input14107 value6411 value1 value2 = (output14107, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14108 value5 value1 value2 = (output14108, value6896, value1) := by
  rw [input14108_def, output14108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12814]
  try dsimp only
  rw [child14107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12814_skip, output14107_skip]
  kernel_rfl

theorem node14109_cond_eq
    (child12811 : Flapjack.WordAlloc.removeDeadStructural input12811 value6405 value1 value2 = (output12811, value5, value1))
    (child14108 : Flapjack.WordAlloc.removeDeadStructural input14108 value5 value1 value2 = (output14108, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14109 value6405 value1 value2 = (output14109, value6896, value1) := by
  rw [input14109_def, output14109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12811]
  try dsimp only
  rw [child14108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12811_skip, output14108_skip]
  kernel_rfl

theorem node14110_cond_eq
    (child12802 : Flapjack.WordAlloc.removeDeadStructural input12802 value6405 value1 value2 = (output12802, value6405, value1))
    (child14109 : Flapjack.WordAlloc.removeDeadStructural input14109 value6405 value1 value2 = (output14109, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14110 value6405 value1 value2 = (output14110, value6896, value1) := by
  rw [input14110_def, output14110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12802]
  try dsimp only
  rw [child14109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12802_skip, output14109_skip]
  kernel_rfl

theorem node14111_cond_eq
    (child12801 : Flapjack.WordAlloc.removeDeadStructural input12801 value6404 value1 value2 = (output12801, value6405, value1))
    (child14110 : Flapjack.WordAlloc.removeDeadStructural input14110 value6405 value1 value2 = (output14110, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14111 value6404 value1 value2 = (output14111, value6896, value1) := by
  rw [input14111_def, output14111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12801]
  try dsimp only
  rw [child14110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12801_skip, output14110_skip]
  kernel_rfl

theorem node14112_cond_eq
    (child12800 : Flapjack.WordAlloc.removeDeadStructural input12800 value5 value1 value2 = (output12800, value6404, value1))
    (child14111 : Flapjack.WordAlloc.removeDeadStructural input14111 value6404 value1 value2 = (output14111, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14112 value5 value1 value2 = (output14112, value6896, value1) := by
  rw [input14112_def, output14112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12800]
  try dsimp only
  rw [child14111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12800_skip, output14111_skip]
  kernel_rfl

theorem node14113_cond_eq
    (child12797 : Flapjack.WordAlloc.removeDeadStructural input12797 value6398 value1 value2 = (output12797, value5, value1))
    (child14112 : Flapjack.WordAlloc.removeDeadStructural input14112 value5 value1 value2 = (output14112, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14113 value6398 value1 value2 = (output14113, value6896, value1) := by
  rw [input14113_def, output14113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12797]
  try dsimp only
  rw [child14112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12797_skip, output14112_skip]
  kernel_rfl

theorem node14114_cond_eq
    (child12788 : Flapjack.WordAlloc.removeDeadStructural input12788 value6398 value1 value2 = (output12788, value6398, value1))
    (child14113 : Flapjack.WordAlloc.removeDeadStructural input14113 value6398 value1 value2 = (output14113, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14114 value6398 value1 value2 = (output14114, value6896, value1) := by
  rw [input14114_def, output14114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12788]
  try dsimp only
  rw [child14113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12788_skip, output14113_skip]
  kernel_rfl

theorem node14115_cond_eq
    (child12787 : Flapjack.WordAlloc.removeDeadStructural input12787 value6397 value1 value2 = (output12787, value6398, value1))
    (child14114 : Flapjack.WordAlloc.removeDeadStructural input14114 value6398 value1 value2 = (output14114, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14115 value6397 value1 value2 = (output14115, value6896, value1) := by
  rw [input14115_def, output14115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12787]
  try dsimp only
  rw [child14114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12787_skip, output14114_skip]
  kernel_rfl

theorem node14116_cond_eq
    (child12786 : Flapjack.WordAlloc.removeDeadStructural input12786 value5 value1 value2 = (output12786, value6397, value1))
    (child14115 : Flapjack.WordAlloc.removeDeadStructural input14115 value6397 value1 value2 = (output14115, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14116 value5 value1 value2 = (output14116, value6896, value1) := by
  rw [input14116_def, output14116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12786]
  try dsimp only
  rw [child14115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12786_skip, output14115_skip]
  kernel_rfl

theorem node14117_cond_eq
    (child12783 : Flapjack.WordAlloc.removeDeadStructural input12783 value6391 value1 value2 = (output12783, value5, value1))
    (child14116 : Flapjack.WordAlloc.removeDeadStructural input14116 value5 value1 value2 = (output14116, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14117 value6391 value1 value2 = (output14117, value6896, value1) := by
  rw [input14117_def, output14117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12783]
  try dsimp only
  rw [child14116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12783_skip, output14116_skip]
  kernel_rfl

theorem node14118_cond_eq
    (child12774 : Flapjack.WordAlloc.removeDeadStructural input12774 value6391 value1 value2 = (output12774, value6391, value1))
    (child14117 : Flapjack.WordAlloc.removeDeadStructural input14117 value6391 value1 value2 = (output14117, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14118 value6391 value1 value2 = (output14118, value6896, value1) := by
  rw [input14118_def, output14118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12774]
  try dsimp only
  rw [child14117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12774_skip, output14117_skip]
  kernel_rfl

theorem node14119_cond_eq
    (child12773 : Flapjack.WordAlloc.removeDeadStructural input12773 value6390 value1 value2 = (output12773, value6391, value1))
    (child14118 : Flapjack.WordAlloc.removeDeadStructural input14118 value6391 value1 value2 = (output14118, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14119 value6390 value1 value2 = (output14119, value6896, value1) := by
  rw [input14119_def, output14119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12773]
  try dsimp only
  rw [child14118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12773_skip, output14118_skip]
  kernel_rfl

theorem node14120_cond_eq
    (child12772 : Flapjack.WordAlloc.removeDeadStructural input12772 value5 value1 value2 = (output12772, value6390, value1))
    (child14119 : Flapjack.WordAlloc.removeDeadStructural input14119 value6390 value1 value2 = (output14119, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14120 value5 value1 value2 = (output14120, value6896, value1) := by
  rw [input14120_def, output14120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12772]
  try dsimp only
  rw [child14119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12772_skip, output14119_skip]
  kernel_rfl

theorem node14121_cond_eq
    (child12769 : Flapjack.WordAlloc.removeDeadStructural input12769 value6384 value1 value2 = (output12769, value5, value1))
    (child14120 : Flapjack.WordAlloc.removeDeadStructural input14120 value5 value1 value2 = (output14120, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14121 value6384 value1 value2 = (output14121, value6896, value1) := by
  rw [input14121_def, output14121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12769]
  try dsimp only
  rw [child14120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12769_skip, output14120_skip]
  kernel_rfl

theorem node14122_cond_eq
    (child12760 : Flapjack.WordAlloc.removeDeadStructural input12760 value6384 value1 value2 = (output12760, value6384, value1))
    (child14121 : Flapjack.WordAlloc.removeDeadStructural input14121 value6384 value1 value2 = (output14121, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14122 value6384 value1 value2 = (output14122, value6896, value1) := by
  rw [input14122_def, output14122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12760]
  try dsimp only
  rw [child14121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12760_skip, output14121_skip]
  kernel_rfl

theorem node14123_cond_eq
    (child12759 : Flapjack.WordAlloc.removeDeadStructural input12759 value6383 value1 value2 = (output12759, value6384, value1))
    (child14122 : Flapjack.WordAlloc.removeDeadStructural input14122 value6384 value1 value2 = (output14122, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14123 value6383 value1 value2 = (output14123, value6896, value1) := by
  rw [input14123_def, output14123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12759]
  try dsimp only
  rw [child14122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12759_skip, output14122_skip]
  kernel_rfl

theorem node14124_cond_eq
    (child12758 : Flapjack.WordAlloc.removeDeadStructural input12758 value5 value1 value2 = (output12758, value6383, value1))
    (child14123 : Flapjack.WordAlloc.removeDeadStructural input14123 value6383 value1 value2 = (output14123, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14124 value5 value1 value2 = (output14124, value6896, value1) := by
  rw [input14124_def, output14124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12758]
  try dsimp only
  rw [child14123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12758_skip, output14123_skip]
  kernel_rfl

theorem node14125_cond_eq
    (child12755 : Flapjack.WordAlloc.removeDeadStructural input12755 value6377 value1 value2 = (output12755, value5, value1))
    (child14124 : Flapjack.WordAlloc.removeDeadStructural input14124 value5 value1 value2 = (output14124, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14125 value6377 value1 value2 = (output14125, value6896, value1) := by
  rw [input14125_def, output14125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12755]
  try dsimp only
  rw [child14124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12755_skip, output14124_skip]
  kernel_rfl

theorem node14126_cond_eq
    (child12746 : Flapjack.WordAlloc.removeDeadStructural input12746 value6377 value1 value2 = (output12746, value6377, value1))
    (child14125 : Flapjack.WordAlloc.removeDeadStructural input14125 value6377 value1 value2 = (output14125, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14126 value6377 value1 value2 = (output14126, value6896, value1) := by
  rw [input14126_def, output14126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12746]
  try dsimp only
  rw [child14125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12746_skip, output14125_skip]
  kernel_rfl

theorem node14127_cond_eq
    (child12745 : Flapjack.WordAlloc.removeDeadStructural input12745 value6376 value1 value2 = (output12745, value6377, value1))
    (child14126 : Flapjack.WordAlloc.removeDeadStructural input14126 value6377 value1 value2 = (output14126, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14127 value6376 value1 value2 = (output14127, value6896, value1) := by
  rw [input14127_def, output14127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12745]
  try dsimp only
  rw [child14126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12745_skip, output14126_skip]
  kernel_rfl

theorem node14128_cond_eq
    (child12744 : Flapjack.WordAlloc.removeDeadStructural input12744 value5 value1 value2 = (output12744, value6376, value1))
    (child14127 : Flapjack.WordAlloc.removeDeadStructural input14127 value6376 value1 value2 = (output14127, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14128 value5 value1 value2 = (output14128, value6896, value1) := by
  rw [input14128_def, output14128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12744]
  try dsimp only
  rw [child14127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12744_skip, output14127_skip]
  kernel_rfl

theorem node14129_cond_eq
    (child12741 : Flapjack.WordAlloc.removeDeadStructural input12741 value6370 value1 value2 = (output12741, value5, value1))
    (child14128 : Flapjack.WordAlloc.removeDeadStructural input14128 value5 value1 value2 = (output14128, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14129 value6370 value1 value2 = (output14129, value6896, value1) := by
  rw [input14129_def, output14129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12741]
  try dsimp only
  rw [child14128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12741_skip, output14128_skip]
  kernel_rfl

theorem node14130_cond_eq
    (child12732 : Flapjack.WordAlloc.removeDeadStructural input12732 value6370 value1 value2 = (output12732, value6370, value1))
    (child14129 : Flapjack.WordAlloc.removeDeadStructural input14129 value6370 value1 value2 = (output14129, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14130 value6370 value1 value2 = (output14130, value6896, value1) := by
  rw [input14130_def, output14130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12732]
  try dsimp only
  rw [child14129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12732_skip, output14129_skip]
  kernel_rfl

theorem node14131_cond_eq
    (child12731 : Flapjack.WordAlloc.removeDeadStructural input12731 value6369 value1 value2 = (output12731, value6370, value1))
    (child14130 : Flapjack.WordAlloc.removeDeadStructural input14130 value6370 value1 value2 = (output14130, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14131 value6369 value1 value2 = (output14131, value6896, value1) := by
  rw [input14131_def, output14131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12731]
  try dsimp only
  rw [child14130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12731_skip, output14130_skip]
  kernel_rfl

theorem node14132_cond_eq
    (child12730 : Flapjack.WordAlloc.removeDeadStructural input12730 value5 value1 value2 = (output12730, value6369, value1))
    (child14131 : Flapjack.WordAlloc.removeDeadStructural input14131 value6369 value1 value2 = (output14131, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14132 value5 value1 value2 = (output14132, value6896, value1) := by
  rw [input14132_def, output14132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12730]
  try dsimp only
  rw [child14131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12730_skip, output14131_skip]
  kernel_rfl

theorem node14133_cond_eq
    (child12727 : Flapjack.WordAlloc.removeDeadStructural input12727 value6363 value1 value2 = (output12727, value5, value1))
    (child14132 : Flapjack.WordAlloc.removeDeadStructural input14132 value5 value1 value2 = (output14132, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14133 value6363 value1 value2 = (output14133, value6896, value1) := by
  rw [input14133_def, output14133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12727]
  try dsimp only
  rw [child14132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12727_skip, output14132_skip]
  kernel_rfl

theorem node14134_cond_eq
    (child12718 : Flapjack.WordAlloc.removeDeadStructural input12718 value6363 value1 value2 = (output12718, value6363, value1))
    (child14133 : Flapjack.WordAlloc.removeDeadStructural input14133 value6363 value1 value2 = (output14133, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14134 value6363 value1 value2 = (output14134, value6896, value1) := by
  rw [input14134_def, output14134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12718]
  try dsimp only
  rw [child14133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12718_skip, output14133_skip]
  kernel_rfl

theorem node14135_cond_eq
    (child12717 : Flapjack.WordAlloc.removeDeadStructural input12717 value6362 value1 value2 = (output12717, value6363, value1))
    (child14134 : Flapjack.WordAlloc.removeDeadStructural input14134 value6363 value1 value2 = (output14134, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14135 value6362 value1 value2 = (output14135, value6896, value1) := by
  rw [input14135_def, output14135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12717]
  try dsimp only
  rw [child14134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12717_skip, output14134_skip]
  kernel_rfl

theorem node14136_cond_eq
    (child12716 : Flapjack.WordAlloc.removeDeadStructural input12716 value5 value1 value2 = (output12716, value6362, value1))
    (child14135 : Flapjack.WordAlloc.removeDeadStructural input14135 value6362 value1 value2 = (output14135, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14136 value5 value1 value2 = (output14136, value6896, value1) := by
  rw [input14136_def, output14136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12716]
  try dsimp only
  rw [child14135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12716_skip, output14135_skip]
  kernel_rfl

theorem node14137_cond_eq
    (child12713 : Flapjack.WordAlloc.removeDeadStructural input12713 value6356 value1 value2 = (output12713, value5, value1))
    (child14136 : Flapjack.WordAlloc.removeDeadStructural input14136 value5 value1 value2 = (output14136, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14137 value6356 value1 value2 = (output14137, value6896, value1) := by
  rw [input14137_def, output14137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12713]
  try dsimp only
  rw [child14136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12713_skip, output14136_skip]
  kernel_rfl

theorem node14138_cond_eq
    (child12704 : Flapjack.WordAlloc.removeDeadStructural input12704 value6356 value1 value2 = (output12704, value6356, value1))
    (child14137 : Flapjack.WordAlloc.removeDeadStructural input14137 value6356 value1 value2 = (output14137, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14138 value6356 value1 value2 = (output14138, value6896, value1) := by
  rw [input14138_def, output14138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12704]
  try dsimp only
  rw [child14137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12704_skip, output14137_skip]
  kernel_rfl

theorem node14139_cond_eq
    (child12703 : Flapjack.WordAlloc.removeDeadStructural input12703 value6355 value1 value2 = (output12703, value6356, value1))
    (child14138 : Flapjack.WordAlloc.removeDeadStructural input14138 value6356 value1 value2 = (output14138, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14139 value6355 value1 value2 = (output14139, value6896, value1) := by
  rw [input14139_def, output14139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12703]
  try dsimp only
  rw [child14138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12703_skip, output14138_skip]
  kernel_rfl

theorem node14140_cond_eq
    (child12702 : Flapjack.WordAlloc.removeDeadStructural input12702 value5 value1 value2 = (output12702, value6355, value1))
    (child14139 : Flapjack.WordAlloc.removeDeadStructural input14139 value6355 value1 value2 = (output14139, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14140 value5 value1 value2 = (output14140, value6896, value1) := by
  rw [input14140_def, output14140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12702]
  try dsimp only
  rw [child14139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12702_skip, output14139_skip]
  kernel_rfl

theorem node14141_cond_eq
    (child12699 : Flapjack.WordAlloc.removeDeadStructural input12699 value6349 value1 value2 = (output12699, value5, value1))
    (child14140 : Flapjack.WordAlloc.removeDeadStructural input14140 value5 value1 value2 = (output14140, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14141 value6349 value1 value2 = (output14141, value6896, value1) := by
  rw [input14141_def, output14141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12699]
  try dsimp only
  rw [child14140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12699_skip, output14140_skip]
  kernel_rfl

theorem node14142_cond_eq
    (child12690 : Flapjack.WordAlloc.removeDeadStructural input12690 value6349 value1 value2 = (output12690, value6349, value1))
    (child14141 : Flapjack.WordAlloc.removeDeadStructural input14141 value6349 value1 value2 = (output14141, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14142 value6349 value1 value2 = (output14142, value6896, value1) := by
  rw [input14142_def, output14142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12690]
  try dsimp only
  rw [child14141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12690_skip, output14141_skip]
  kernel_rfl

theorem node14143_cond_eq
    (child12689 : Flapjack.WordAlloc.removeDeadStructural input12689 value6348 value1 value2 = (output12689, value6349, value1))
    (child14142 : Flapjack.WordAlloc.removeDeadStructural input14142 value6349 value1 value2 = (output14142, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14143 value6348 value1 value2 = (output14143, value6896, value1) := by
  rw [input14143_def, output14143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12689]
  try dsimp only
  rw [child14142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12689_skip, output14142_skip]
  kernel_rfl

theorem node14144_cond_eq
    (child12688 : Flapjack.WordAlloc.removeDeadStructural input12688 value5 value1 value2 = (output12688, value6348, value1))
    (child14143 : Flapjack.WordAlloc.removeDeadStructural input14143 value6348 value1 value2 = (output14143, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14144 value5 value1 value2 = (output14144, value6896, value1) := by
  rw [input14144_def, output14144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12688]
  try dsimp only
  rw [child14143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12688_skip, output14143_skip]
  kernel_rfl

theorem node14145_cond_eq
    (child12685 : Flapjack.WordAlloc.removeDeadStructural input12685 value6342 value1 value2 = (output12685, value5, value1))
    (child14144 : Flapjack.WordAlloc.removeDeadStructural input14144 value5 value1 value2 = (output14144, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14145 value6342 value1 value2 = (output14145, value6896, value1) := by
  rw [input14145_def, output14145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12685]
  try dsimp only
  rw [child14144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12685_skip, output14144_skip]
  kernel_rfl

theorem node14146_cond_eq
    (child12676 : Flapjack.WordAlloc.removeDeadStructural input12676 value6342 value1 value2 = (output12676, value6342, value1))
    (child14145 : Flapjack.WordAlloc.removeDeadStructural input14145 value6342 value1 value2 = (output14145, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14146 value6342 value1 value2 = (output14146, value6896, value1) := by
  rw [input14146_def, output14146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12676]
  try dsimp only
  rw [child14145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12676_skip, output14145_skip]
  kernel_rfl

theorem node14147_cond_eq
    (child12675 : Flapjack.WordAlloc.removeDeadStructural input12675 value6341 value1 value2 = (output12675, value6342, value1))
    (child14146 : Flapjack.WordAlloc.removeDeadStructural input14146 value6342 value1 value2 = (output14146, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14147 value6341 value1 value2 = (output14147, value6896, value1) := by
  rw [input14147_def, output14147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12675]
  try dsimp only
  rw [child14146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12675_skip, output14146_skip]
  kernel_rfl

theorem node14148_cond_eq
    (child12674 : Flapjack.WordAlloc.removeDeadStructural input12674 value5 value1 value2 = (output12674, value6341, value1))
    (child14147 : Flapjack.WordAlloc.removeDeadStructural input14147 value6341 value1 value2 = (output14147, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14148 value5 value1 value2 = (output14148, value6896, value1) := by
  rw [input14148_def, output14148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12674]
  try dsimp only
  rw [child14147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12674_skip, output14147_skip]
  kernel_rfl

theorem node14149_cond_eq
    (child12671 : Flapjack.WordAlloc.removeDeadStructural input12671 value6335 value1 value2 = (output12671, value5, value1))
    (child14148 : Flapjack.WordAlloc.removeDeadStructural input14148 value5 value1 value2 = (output14148, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14149 value6335 value1 value2 = (output14149, value6896, value1) := by
  rw [input14149_def, output14149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12671]
  try dsimp only
  rw [child14148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12671_skip, output14148_skip]
  kernel_rfl

theorem node14150_cond_eq
    (child12662 : Flapjack.WordAlloc.removeDeadStructural input12662 value6335 value1 value2 = (output12662, value6335, value1))
    (child14149 : Flapjack.WordAlloc.removeDeadStructural input14149 value6335 value1 value2 = (output14149, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14150 value6335 value1 value2 = (output14150, value6896, value1) := by
  rw [input14150_def, output14150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12662]
  try dsimp only
  rw [child14149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12662_skip, output14149_skip]
  kernel_rfl

theorem node14151_cond_eq
    (child12661 : Flapjack.WordAlloc.removeDeadStructural input12661 value6334 value1 value2 = (output12661, value6335, value1))
    (child14150 : Flapjack.WordAlloc.removeDeadStructural input14150 value6335 value1 value2 = (output14150, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14151 value6334 value1 value2 = (output14151, value6896, value1) := by
  rw [input14151_def, output14151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12661]
  try dsimp only
  rw [child14150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12661_skip, output14150_skip]
  kernel_rfl

theorem node14152_cond_eq
    (child12660 : Flapjack.WordAlloc.removeDeadStructural input12660 value5 value1 value2 = (output12660, value6334, value1))
    (child14151 : Flapjack.WordAlloc.removeDeadStructural input14151 value6334 value1 value2 = (output14151, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14152 value5 value1 value2 = (output14152, value6896, value1) := by
  rw [input14152_def, output14152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12660]
  try dsimp only
  rw [child14151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12660_skip, output14151_skip]
  kernel_rfl

theorem node14153_cond_eq
    (child12657 : Flapjack.WordAlloc.removeDeadStructural input12657 value6328 value1 value2 = (output12657, value5, value1))
    (child14152 : Flapjack.WordAlloc.removeDeadStructural input14152 value5 value1 value2 = (output14152, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14153 value6328 value1 value2 = (output14153, value6896, value1) := by
  rw [input14153_def, output14153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12657]
  try dsimp only
  rw [child14152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12657_skip, output14152_skip]
  kernel_rfl

theorem node14154_cond_eq
    (child12648 : Flapjack.WordAlloc.removeDeadStructural input12648 value6328 value1 value2 = (output12648, value6328, value1))
    (child14153 : Flapjack.WordAlloc.removeDeadStructural input14153 value6328 value1 value2 = (output14153, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14154 value6328 value1 value2 = (output14154, value6896, value1) := by
  rw [input14154_def, output14154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12648]
  try dsimp only
  rw [child14153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12648_skip, output14153_skip]
  kernel_rfl

theorem node14155_cond_eq
    (child12647 : Flapjack.WordAlloc.removeDeadStructural input12647 value6327 value1 value2 = (output12647, value6328, value1))
    (child14154 : Flapjack.WordAlloc.removeDeadStructural input14154 value6328 value1 value2 = (output14154, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14155 value6327 value1 value2 = (output14155, value6896, value1) := by
  rw [input14155_def, output14155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12647]
  try dsimp only
  rw [child14154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12647_skip, output14154_skip]
  kernel_rfl

theorem node14156_cond_eq
    (child12646 : Flapjack.WordAlloc.removeDeadStructural input12646 value5 value1 value2 = (output12646, value6327, value1))
    (child14155 : Flapjack.WordAlloc.removeDeadStructural input14155 value6327 value1 value2 = (output14155, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14156 value5 value1 value2 = (output14156, value6896, value1) := by
  rw [input14156_def, output14156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12646]
  try dsimp only
  rw [child14155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12646_skip, output14155_skip]
  kernel_rfl

theorem node14157_cond_eq
    (child12643 : Flapjack.WordAlloc.removeDeadStructural input12643 value6321 value1 value2 = (output12643, value5, value1))
    (child14156 : Flapjack.WordAlloc.removeDeadStructural input14156 value5 value1 value2 = (output14156, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14157 value6321 value1 value2 = (output14157, value6896, value1) := by
  rw [input14157_def, output14157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12643]
  try dsimp only
  rw [child14156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12643_skip, output14156_skip]
  kernel_rfl

theorem node14158_cond_eq
    (child12634 : Flapjack.WordAlloc.removeDeadStructural input12634 value6321 value1 value2 = (output12634, value6321, value1))
    (child14157 : Flapjack.WordAlloc.removeDeadStructural input14157 value6321 value1 value2 = (output14157, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14158 value6321 value1 value2 = (output14158, value6896, value1) := by
  rw [input14158_def, output14158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12634]
  try dsimp only
  rw [child14157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12634_skip, output14157_skip]
  kernel_rfl

theorem node14159_cond_eq
    (child12633 : Flapjack.WordAlloc.removeDeadStructural input12633 value6320 value1 value2 = (output12633, value6321, value1))
    (child14158 : Flapjack.WordAlloc.removeDeadStructural input14158 value6321 value1 value2 = (output14158, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14159 value6320 value1 value2 = (output14159, value6896, value1) := by
  rw [input14159_def, output14159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12633]
  try dsimp only
  rw [child14158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12633_skip, output14158_skip]
  kernel_rfl

theorem node14160_cond_eq
    (child12632 : Flapjack.WordAlloc.removeDeadStructural input12632 value5 value1 value2 = (output12632, value6320, value1))
    (child14159 : Flapjack.WordAlloc.removeDeadStructural input14159 value6320 value1 value2 = (output14159, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14160 value5 value1 value2 = (output14160, value6896, value1) := by
  rw [input14160_def, output14160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12632]
  try dsimp only
  rw [child14159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12632_skip, output14159_skip]
  kernel_rfl

theorem node14161_cond_eq
    (child12629 : Flapjack.WordAlloc.removeDeadStructural input12629 value6314 value1 value2 = (output12629, value5, value1))
    (child14160 : Flapjack.WordAlloc.removeDeadStructural input14160 value5 value1 value2 = (output14160, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14161 value6314 value1 value2 = (output14161, value6896, value1) := by
  rw [input14161_def, output14161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12629]
  try dsimp only
  rw [child14160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12629_skip, output14160_skip]
  kernel_rfl

theorem node14162_cond_eq
    (child12620 : Flapjack.WordAlloc.removeDeadStructural input12620 value6314 value1 value2 = (output12620, value6314, value1))
    (child14161 : Flapjack.WordAlloc.removeDeadStructural input14161 value6314 value1 value2 = (output14161, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14162 value6314 value1 value2 = (output14162, value6896, value1) := by
  rw [input14162_def, output14162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12620]
  try dsimp only
  rw [child14161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12620_skip, output14161_skip]
  kernel_rfl

theorem node14163_cond_eq
    (child12619 : Flapjack.WordAlloc.removeDeadStructural input12619 value6313 value1 value2 = (output12619, value6314, value1))
    (child14162 : Flapjack.WordAlloc.removeDeadStructural input14162 value6314 value1 value2 = (output14162, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14163 value6313 value1 value2 = (output14163, value6896, value1) := by
  rw [input14163_def, output14163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12619]
  try dsimp only
  rw [child14162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12619_skip, output14162_skip]
  kernel_rfl

theorem node14164_cond_eq
    (child12618 : Flapjack.WordAlloc.removeDeadStructural input12618 value5 value1 value2 = (output12618, value6313, value1))
    (child14163 : Flapjack.WordAlloc.removeDeadStructural input14163 value6313 value1 value2 = (output14163, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14164 value5 value1 value2 = (output14164, value6896, value1) := by
  rw [input14164_def, output14164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12618]
  try dsimp only
  rw [child14163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12618_skip, output14163_skip]
  kernel_rfl

theorem node14165_cond_eq
    (child12615 : Flapjack.WordAlloc.removeDeadStructural input12615 value6307 value1 value2 = (output12615, value5, value1))
    (child14164 : Flapjack.WordAlloc.removeDeadStructural input14164 value5 value1 value2 = (output14164, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14165 value6307 value1 value2 = (output14165, value6896, value1) := by
  rw [input14165_def, output14165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12615]
  try dsimp only
  rw [child14164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12615_skip, output14164_skip]
  kernel_rfl

theorem node14166_cond_eq
    (child12606 : Flapjack.WordAlloc.removeDeadStructural input12606 value6307 value1 value2 = (output12606, value6307, value1))
    (child14165 : Flapjack.WordAlloc.removeDeadStructural input14165 value6307 value1 value2 = (output14165, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14166 value6307 value1 value2 = (output14166, value6896, value1) := by
  rw [input14166_def, output14166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12606]
  try dsimp only
  rw [child14165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12606_skip, output14165_skip]
  kernel_rfl

theorem node14167_cond_eq
    (child12605 : Flapjack.WordAlloc.removeDeadStructural input12605 value6306 value1 value2 = (output12605, value6307, value1))
    (child14166 : Flapjack.WordAlloc.removeDeadStructural input14166 value6307 value1 value2 = (output14166, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14167 value6306 value1 value2 = (output14167, value6896, value1) := by
  rw [input14167_def, output14167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12605]
  try dsimp only
  rw [child14166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12605_skip, output14166_skip]
  kernel_rfl

theorem node14168_cond_eq
    (child12604 : Flapjack.WordAlloc.removeDeadStructural input12604 value5 value1 value2 = (output12604, value6306, value1))
    (child14167 : Flapjack.WordAlloc.removeDeadStructural input14167 value6306 value1 value2 = (output14167, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14168 value5 value1 value2 = (output14168, value6896, value1) := by
  rw [input14168_def, output14168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12604]
  try dsimp only
  rw [child14167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12604_skip, output14167_skip]
  kernel_rfl

theorem node14169_cond_eq
    (child12601 : Flapjack.WordAlloc.removeDeadStructural input12601 value6300 value1 value2 = (output12601, value5, value1))
    (child14168 : Flapjack.WordAlloc.removeDeadStructural input14168 value5 value1 value2 = (output14168, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14169 value6300 value1 value2 = (output14169, value6896, value1) := by
  rw [input14169_def, output14169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12601]
  try dsimp only
  rw [child14168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12601_skip, output14168_skip]
  kernel_rfl

theorem node14170_cond_eq
    (child12592 : Flapjack.WordAlloc.removeDeadStructural input12592 value6300 value1 value2 = (output12592, value6300, value1))
    (child14169 : Flapjack.WordAlloc.removeDeadStructural input14169 value6300 value1 value2 = (output14169, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14170 value6300 value1 value2 = (output14170, value6896, value1) := by
  rw [input14170_def, output14170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12592]
  try dsimp only
  rw [child14169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12592_skip, output14169_skip]
  kernel_rfl

theorem node14171_cond_eq
    (child12591 : Flapjack.WordAlloc.removeDeadStructural input12591 value6299 value1 value2 = (output12591, value6300, value1))
    (child14170 : Flapjack.WordAlloc.removeDeadStructural input14170 value6300 value1 value2 = (output14170, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14171 value6299 value1 value2 = (output14171, value6896, value1) := by
  rw [input14171_def, output14171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12591]
  try dsimp only
  rw [child14170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12591_skip, output14170_skip]
  kernel_rfl

theorem node14172_cond_eq
    (child12590 : Flapjack.WordAlloc.removeDeadStructural input12590 value5 value1 value2 = (output12590, value6299, value1))
    (child14171 : Flapjack.WordAlloc.removeDeadStructural input14171 value6299 value1 value2 = (output14171, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14172 value5 value1 value2 = (output14172, value6896, value1) := by
  rw [input14172_def, output14172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12590]
  try dsimp only
  rw [child14171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12590_skip, output14171_skip]
  kernel_rfl

theorem node14173_cond_eq
    (child12587 : Flapjack.WordAlloc.removeDeadStructural input12587 value6293 value1 value2 = (output12587, value5, value1))
    (child14172 : Flapjack.WordAlloc.removeDeadStructural input14172 value5 value1 value2 = (output14172, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14173 value6293 value1 value2 = (output14173, value6896, value1) := by
  rw [input14173_def, output14173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12587]
  try dsimp only
  rw [child14172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12587_skip, output14172_skip]
  kernel_rfl

theorem node14174_cond_eq
    (child12578 : Flapjack.WordAlloc.removeDeadStructural input12578 value6293 value1 value2 = (output12578, value6293, value1))
    (child14173 : Flapjack.WordAlloc.removeDeadStructural input14173 value6293 value1 value2 = (output14173, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14174 value6293 value1 value2 = (output14174, value6896, value1) := by
  rw [input14174_def, output14174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12578]
  try dsimp only
  rw [child14173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12578_skip, output14173_skip]
  kernel_rfl

theorem node14175_cond_eq
    (child12577 : Flapjack.WordAlloc.removeDeadStructural input12577 value6292 value1 value2 = (output12577, value6293, value1))
    (child14174 : Flapjack.WordAlloc.removeDeadStructural input14174 value6293 value1 value2 = (output14174, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14175 value6292 value1 value2 = (output14175, value6896, value1) := by
  rw [input14175_def, output14175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12577]
  try dsimp only
  rw [child14174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12577_skip, output14174_skip]
  kernel_rfl

theorem node14176_cond_eq
    (child12576 : Flapjack.WordAlloc.removeDeadStructural input12576 value5 value1 value2 = (output12576, value6292, value1))
    (child14175 : Flapjack.WordAlloc.removeDeadStructural input14175 value6292 value1 value2 = (output14175, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14176 value5 value1 value2 = (output14176, value6896, value1) := by
  rw [input14176_def, output14176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12576]
  try dsimp only
  rw [child14175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12576_skip, output14175_skip]
  kernel_rfl

theorem node14177_cond_eq
    (child12573 : Flapjack.WordAlloc.removeDeadStructural input12573 value6286 value1 value2 = (output12573, value5, value1))
    (child14176 : Flapjack.WordAlloc.removeDeadStructural input14176 value5 value1 value2 = (output14176, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14177 value6286 value1 value2 = (output14177, value6896, value1) := by
  rw [input14177_def, output14177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12573]
  try dsimp only
  rw [child14176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12573_skip, output14176_skip]
  kernel_rfl

theorem node14178_cond_eq
    (child12564 : Flapjack.WordAlloc.removeDeadStructural input12564 value6286 value1 value2 = (output12564, value6286, value1))
    (child14177 : Flapjack.WordAlloc.removeDeadStructural input14177 value6286 value1 value2 = (output14177, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14178 value6286 value1 value2 = (output14178, value6896, value1) := by
  rw [input14178_def, output14178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12564]
  try dsimp only
  rw [child14177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12564_skip, output14177_skip]
  kernel_rfl

theorem node14179_cond_eq
    (child12563 : Flapjack.WordAlloc.removeDeadStructural input12563 value6285 value1 value2 = (output12563, value6286, value1))
    (child14178 : Flapjack.WordAlloc.removeDeadStructural input14178 value6286 value1 value2 = (output14178, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14179 value6285 value1 value2 = (output14179, value6896, value1) := by
  rw [input14179_def, output14179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12563]
  try dsimp only
  rw [child14178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12563_skip, output14178_skip]
  kernel_rfl

theorem node14180_cond_eq
    (child12562 : Flapjack.WordAlloc.removeDeadStructural input12562 value5 value1 value2 = (output12562, value6285, value1))
    (child14179 : Flapjack.WordAlloc.removeDeadStructural input14179 value6285 value1 value2 = (output14179, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14180 value5 value1 value2 = (output14180, value6896, value1) := by
  rw [input14180_def, output14180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12562]
  try dsimp only
  rw [child14179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12562_skip, output14179_skip]
  kernel_rfl

theorem node14181_cond_eq
    (child12559 : Flapjack.WordAlloc.removeDeadStructural input12559 value6279 value1 value2 = (output12559, value5, value1))
    (child14180 : Flapjack.WordAlloc.removeDeadStructural input14180 value5 value1 value2 = (output14180, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14181 value6279 value1 value2 = (output14181, value6896, value1) := by
  rw [input14181_def, output14181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12559]
  try dsimp only
  rw [child14180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12559_skip, output14180_skip]
  kernel_rfl

theorem node14182_cond_eq
    (child12550 : Flapjack.WordAlloc.removeDeadStructural input12550 value6279 value1 value2 = (output12550, value6279, value1))
    (child14181 : Flapjack.WordAlloc.removeDeadStructural input14181 value6279 value1 value2 = (output14181, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14182 value6279 value1 value2 = (output14182, value6896, value1) := by
  rw [input14182_def, output14182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12550]
  try dsimp only
  rw [child14181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12550_skip, output14181_skip]
  kernel_rfl

theorem node14183_cond_eq
    (child12549 : Flapjack.WordAlloc.removeDeadStructural input12549 value6278 value1 value2 = (output12549, value6279, value1))
    (child14182 : Flapjack.WordAlloc.removeDeadStructural input14182 value6279 value1 value2 = (output14182, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14183 value6278 value1 value2 = (output14183, value6896, value1) := by
  rw [input14183_def, output14183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12549]
  try dsimp only
  rw [child14182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12549_skip, output14182_skip]
  kernel_rfl

theorem node14184_cond_eq
    (child12548 : Flapjack.WordAlloc.removeDeadStructural input12548 value5 value1 value2 = (output12548, value6278, value1))
    (child14183 : Flapjack.WordAlloc.removeDeadStructural input14183 value6278 value1 value2 = (output14183, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14184 value5 value1 value2 = (output14184, value6896, value1) := by
  rw [input14184_def, output14184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12548]
  try dsimp only
  rw [child14183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12548_skip, output14183_skip]
  kernel_rfl

theorem node14185_cond_eq
    (child12545 : Flapjack.WordAlloc.removeDeadStructural input12545 value6272 value1 value2 = (output12545, value5, value1))
    (child14184 : Flapjack.WordAlloc.removeDeadStructural input14184 value5 value1 value2 = (output14184, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14185 value6272 value1 value2 = (output14185, value6896, value1) := by
  rw [input14185_def, output14185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12545]
  try dsimp only
  rw [child14184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12545_skip, output14184_skip]
  kernel_rfl

theorem node14186_cond_eq
    (child12536 : Flapjack.WordAlloc.removeDeadStructural input12536 value6272 value1 value2 = (output12536, value6272, value1))
    (child14185 : Flapjack.WordAlloc.removeDeadStructural input14185 value6272 value1 value2 = (output14185, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14186 value6272 value1 value2 = (output14186, value6896, value1) := by
  rw [input14186_def, output14186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12536]
  try dsimp only
  rw [child14185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12536_skip, output14185_skip]
  kernel_rfl

theorem node14187_cond_eq
    (child12535 : Flapjack.WordAlloc.removeDeadStructural input12535 value6271 value1 value2 = (output12535, value6272, value1))
    (child14186 : Flapjack.WordAlloc.removeDeadStructural input14186 value6272 value1 value2 = (output14186, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14187 value6271 value1 value2 = (output14187, value6896, value1) := by
  rw [input14187_def, output14187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12535]
  try dsimp only
  rw [child14186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12535_skip, output14186_skip]
  kernel_rfl

theorem node14188_cond_eq
    (child12534 : Flapjack.WordAlloc.removeDeadStructural input12534 value5 value1 value2 = (output12534, value6271, value1))
    (child14187 : Flapjack.WordAlloc.removeDeadStructural input14187 value6271 value1 value2 = (output14187, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14188 value5 value1 value2 = (output14188, value6896, value1) := by
  rw [input14188_def, output14188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12534]
  try dsimp only
  rw [child14187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12534_skip, output14187_skip]
  kernel_rfl

theorem node14189_cond_eq
    (child12531 : Flapjack.WordAlloc.removeDeadStructural input12531 value6265 value1 value2 = (output12531, value5, value1))
    (child14188 : Flapjack.WordAlloc.removeDeadStructural input14188 value5 value1 value2 = (output14188, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14189 value6265 value1 value2 = (output14189, value6896, value1) := by
  rw [input14189_def, output14189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12531]
  try dsimp only
  rw [child14188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12531_skip, output14188_skip]
  kernel_rfl

theorem node14190_cond_eq
    (child12522 : Flapjack.WordAlloc.removeDeadStructural input12522 value6265 value1 value2 = (output12522, value6265, value1))
    (child14189 : Flapjack.WordAlloc.removeDeadStructural input14189 value6265 value1 value2 = (output14189, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14190 value6265 value1 value2 = (output14190, value6896, value1) := by
  rw [input14190_def, output14190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12522]
  try dsimp only
  rw [child14189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12522_skip, output14189_skip]
  kernel_rfl

theorem node14191_cond_eq
    (child12521 : Flapjack.WordAlloc.removeDeadStructural input12521 value6264 value1 value2 = (output12521, value6265, value1))
    (child14190 : Flapjack.WordAlloc.removeDeadStructural input14190 value6265 value1 value2 = (output14190, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14191 value6264 value1 value2 = (output14191, value6896, value1) := by
  rw [input14191_def, output14191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12521]
  try dsimp only
  rw [child14190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12521_skip, output14190_skip]
  kernel_rfl

theorem node14192_cond_eq
    (child12520 : Flapjack.WordAlloc.removeDeadStructural input12520 value5 value1 value2 = (output12520, value6264, value1))
    (child14191 : Flapjack.WordAlloc.removeDeadStructural input14191 value6264 value1 value2 = (output14191, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14192 value5 value1 value2 = (output14192, value6896, value1) := by
  rw [input14192_def, output14192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12520]
  try dsimp only
  rw [child14191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12520_skip, output14191_skip]
  kernel_rfl

theorem node14193_cond_eq
    (child12517 : Flapjack.WordAlloc.removeDeadStructural input12517 value6258 value1 value2 = (output12517, value5, value1))
    (child14192 : Flapjack.WordAlloc.removeDeadStructural input14192 value5 value1 value2 = (output14192, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14193 value6258 value1 value2 = (output14193, value6896, value1) := by
  rw [input14193_def, output14193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12517]
  try dsimp only
  rw [child14192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12517_skip, output14192_skip]
  kernel_rfl

theorem node14194_cond_eq
    (child12508 : Flapjack.WordAlloc.removeDeadStructural input12508 value6258 value1 value2 = (output12508, value6258, value1))
    (child14193 : Flapjack.WordAlloc.removeDeadStructural input14193 value6258 value1 value2 = (output14193, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14194 value6258 value1 value2 = (output14194, value6896, value1) := by
  rw [input14194_def, output14194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12508]
  try dsimp only
  rw [child14193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12508_skip, output14193_skip]
  kernel_rfl

theorem node14195_cond_eq
    (child12507 : Flapjack.WordAlloc.removeDeadStructural input12507 value6257 value1 value2 = (output12507, value6258, value1))
    (child14194 : Flapjack.WordAlloc.removeDeadStructural input14194 value6258 value1 value2 = (output14194, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14195 value6257 value1 value2 = (output14195, value6896, value1) := by
  rw [input14195_def, output14195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12507]
  try dsimp only
  rw [child14194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12507_skip, output14194_skip]
  kernel_rfl

theorem node14196_cond_eq
    (child12506 : Flapjack.WordAlloc.removeDeadStructural input12506 value5 value1 value2 = (output12506, value6257, value1))
    (child14195 : Flapjack.WordAlloc.removeDeadStructural input14195 value6257 value1 value2 = (output14195, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14196 value5 value1 value2 = (output14196, value6896, value1) := by
  rw [input14196_def, output14196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12506]
  try dsimp only
  rw [child14195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12506_skip, output14195_skip]
  kernel_rfl

theorem node14197_cond_eq
    (child12503 : Flapjack.WordAlloc.removeDeadStructural input12503 value6251 value1 value2 = (output12503, value5, value1))
    (child14196 : Flapjack.WordAlloc.removeDeadStructural input14196 value5 value1 value2 = (output14196, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14197 value6251 value1 value2 = (output14197, value6896, value1) := by
  rw [input14197_def, output14197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12503]
  try dsimp only
  rw [child14196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12503_skip, output14196_skip]
  kernel_rfl

theorem node14198_cond_eq
    (child12494 : Flapjack.WordAlloc.removeDeadStructural input12494 value6251 value1 value2 = (output12494, value6251, value1))
    (child14197 : Flapjack.WordAlloc.removeDeadStructural input14197 value6251 value1 value2 = (output14197, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14198 value6251 value1 value2 = (output14198, value6896, value1) := by
  rw [input14198_def, output14198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12494]
  try dsimp only
  rw [child14197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12494_skip, output14197_skip]
  kernel_rfl

theorem node14199_cond_eq
    (child12493 : Flapjack.WordAlloc.removeDeadStructural input12493 value6250 value1 value2 = (output12493, value6251, value1))
    (child14198 : Flapjack.WordAlloc.removeDeadStructural input14198 value6251 value1 value2 = (output14198, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14199 value6250 value1 value2 = (output14199, value6896, value1) := by
  rw [input14199_def, output14199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12493]
  try dsimp only
  rw [child14198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12493_skip, output14198_skip]
  kernel_rfl

theorem node14200_cond_eq
    (child12492 : Flapjack.WordAlloc.removeDeadStructural input12492 value5 value1 value2 = (output12492, value6250, value1))
    (child14199 : Flapjack.WordAlloc.removeDeadStructural input14199 value6250 value1 value2 = (output14199, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14200 value5 value1 value2 = (output14200, value6896, value1) := by
  rw [input14200_def, output14200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12492]
  try dsimp only
  rw [child14199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12492_skip, output14199_skip]
  kernel_rfl

theorem node14201_cond_eq
    (child12489 : Flapjack.WordAlloc.removeDeadStructural input12489 value6244 value1 value2 = (output12489, value5, value1))
    (child14200 : Flapjack.WordAlloc.removeDeadStructural input14200 value5 value1 value2 = (output14200, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14201 value6244 value1 value2 = (output14201, value6896, value1) := by
  rw [input14201_def, output14201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12489]
  try dsimp only
  rw [child14200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12489_skip, output14200_skip]
  kernel_rfl

theorem node14202_cond_eq
    (child12480 : Flapjack.WordAlloc.removeDeadStructural input12480 value6244 value1 value2 = (output12480, value6244, value1))
    (child14201 : Flapjack.WordAlloc.removeDeadStructural input14201 value6244 value1 value2 = (output14201, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14202 value6244 value1 value2 = (output14202, value6896, value1) := by
  rw [input14202_def, output14202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12480]
  try dsimp only
  rw [child14201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12480_skip, output14201_skip]
  kernel_rfl

theorem node14203_cond_eq
    (child12479 : Flapjack.WordAlloc.removeDeadStructural input12479 value6243 value1 value2 = (output12479, value6244, value1))
    (child14202 : Flapjack.WordAlloc.removeDeadStructural input14202 value6244 value1 value2 = (output14202, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14203 value6243 value1 value2 = (output14203, value6896, value1) := by
  rw [input14203_def, output14203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12479]
  try dsimp only
  rw [child14202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12479_skip, output14202_skip]
  kernel_rfl

theorem node14204_cond_eq
    (child12478 : Flapjack.WordAlloc.removeDeadStructural input12478 value5 value1 value2 = (output12478, value6243, value1))
    (child14203 : Flapjack.WordAlloc.removeDeadStructural input14203 value6243 value1 value2 = (output14203, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14204 value5 value1 value2 = (output14204, value6896, value1) := by
  rw [input14204_def, output14204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12478]
  try dsimp only
  rw [child14203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12478_skip, output14203_skip]
  kernel_rfl

theorem node14205_cond_eq
    (child12475 : Flapjack.WordAlloc.removeDeadStructural input12475 value6237 value1 value2 = (output12475, value5, value1))
    (child14204 : Flapjack.WordAlloc.removeDeadStructural input14204 value5 value1 value2 = (output14204, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14205 value6237 value1 value2 = (output14205, value6896, value1) := by
  rw [input14205_def, output14205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12475]
  try dsimp only
  rw [child14204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12475_skip, output14204_skip]
  kernel_rfl

theorem node14206_cond_eq
    (child12466 : Flapjack.WordAlloc.removeDeadStructural input12466 value6237 value1 value2 = (output12466, value6237, value1))
    (child14205 : Flapjack.WordAlloc.removeDeadStructural input14205 value6237 value1 value2 = (output14205, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14206 value6237 value1 value2 = (output14206, value6896, value1) := by
  rw [input14206_def, output14206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12466]
  try dsimp only
  rw [child14205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12466_skip, output14205_skip]
  kernel_rfl

theorem node14207_cond_eq
    (child12465 : Flapjack.WordAlloc.removeDeadStructural input12465 value6236 value1 value2 = (output12465, value6237, value1))
    (child14206 : Flapjack.WordAlloc.removeDeadStructural input14206 value6237 value1 value2 = (output14206, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14207 value6236 value1 value2 = (output14207, value6896, value1) := by
  rw [input14207_def, output14207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12465]
  try dsimp only
  rw [child14206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12465_skip, output14206_skip]
  kernel_rfl

theorem node14208_cond_eq
    (child12464 : Flapjack.WordAlloc.removeDeadStructural input12464 value5 value1 value2 = (output12464, value6236, value1))
    (child14207 : Flapjack.WordAlloc.removeDeadStructural input14207 value6236 value1 value2 = (output14207, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14208 value5 value1 value2 = (output14208, value6896, value1) := by
  rw [input14208_def, output14208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12464]
  try dsimp only
  rw [child14207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12464_skip, output14207_skip]
  kernel_rfl

theorem node14209_cond_eq
    (child12461 : Flapjack.WordAlloc.removeDeadStructural input12461 value6230 value1 value2 = (output12461, value5, value1))
    (child14208 : Flapjack.WordAlloc.removeDeadStructural input14208 value5 value1 value2 = (output14208, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14209 value6230 value1 value2 = (output14209, value6896, value1) := by
  rw [input14209_def, output14209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12461]
  try dsimp only
  rw [child14208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12461_skip, output14208_skip]
  kernel_rfl

theorem node14210_cond_eq
    (child12452 : Flapjack.WordAlloc.removeDeadStructural input12452 value6230 value1 value2 = (output12452, value6230, value1))
    (child14209 : Flapjack.WordAlloc.removeDeadStructural input14209 value6230 value1 value2 = (output14209, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14210 value6230 value1 value2 = (output14210, value6896, value1) := by
  rw [input14210_def, output14210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12452]
  try dsimp only
  rw [child14209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12452_skip, output14209_skip]
  kernel_rfl

theorem node14211_cond_eq
    (child12451 : Flapjack.WordAlloc.removeDeadStructural input12451 value6229 value1 value2 = (output12451, value6230, value1))
    (child14210 : Flapjack.WordAlloc.removeDeadStructural input14210 value6230 value1 value2 = (output14210, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14211 value6229 value1 value2 = (output14211, value6896, value1) := by
  rw [input14211_def, output14211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12451]
  try dsimp only
  rw [child14210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12451_skip, output14210_skip]
  kernel_rfl

theorem node14212_cond_eq
    (child12450 : Flapjack.WordAlloc.removeDeadStructural input12450 value5 value1 value2 = (output12450, value6229, value1))
    (child14211 : Flapjack.WordAlloc.removeDeadStructural input14211 value6229 value1 value2 = (output14211, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14212 value5 value1 value2 = (output14212, value6896, value1) := by
  rw [input14212_def, output14212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12450]
  try dsimp only
  rw [child14211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12450_skip, output14211_skip]
  kernel_rfl

theorem node14213_cond_eq
    (child12447 : Flapjack.WordAlloc.removeDeadStructural input12447 value6223 value1 value2 = (output12447, value5, value1))
    (child14212 : Flapjack.WordAlloc.removeDeadStructural input14212 value5 value1 value2 = (output14212, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14213 value6223 value1 value2 = (output14213, value6896, value1) := by
  rw [input14213_def, output14213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12447]
  try dsimp only
  rw [child14212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12447_skip, output14212_skip]
  kernel_rfl

theorem node14214_cond_eq
    (child12438 : Flapjack.WordAlloc.removeDeadStructural input12438 value6223 value1 value2 = (output12438, value6223, value1))
    (child14213 : Flapjack.WordAlloc.removeDeadStructural input14213 value6223 value1 value2 = (output14213, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14214 value6223 value1 value2 = (output14214, value6896, value1) := by
  rw [input14214_def, output14214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12438]
  try dsimp only
  rw [child14213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12438_skip, output14213_skip]
  kernel_rfl

theorem node14215_cond_eq
    (child12437 : Flapjack.WordAlloc.removeDeadStructural input12437 value6222 value1 value2 = (output12437, value6223, value1))
    (child14214 : Flapjack.WordAlloc.removeDeadStructural input14214 value6223 value1 value2 = (output14214, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14215 value6222 value1 value2 = (output14215, value6896, value1) := by
  rw [input14215_def, output14215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12437]
  try dsimp only
  rw [child14214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12437_skip, output14214_skip]
  kernel_rfl

theorem node14216_cond_eq
    (child12436 : Flapjack.WordAlloc.removeDeadStructural input12436 value5 value1 value2 = (output12436, value6222, value1))
    (child14215 : Flapjack.WordAlloc.removeDeadStructural input14215 value6222 value1 value2 = (output14215, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14216 value5 value1 value2 = (output14216, value6896, value1) := by
  rw [input14216_def, output14216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12436]
  try dsimp only
  rw [child14215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12436_skip, output14215_skip]
  kernel_rfl

theorem node14217_cond_eq
    (child12433 : Flapjack.WordAlloc.removeDeadStructural input12433 value6216 value1 value2 = (output12433, value5, value1))
    (child14216 : Flapjack.WordAlloc.removeDeadStructural input14216 value5 value1 value2 = (output14216, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14217 value6216 value1 value2 = (output14217, value6896, value1) := by
  rw [input14217_def, output14217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12433]
  try dsimp only
  rw [child14216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12433_skip, output14216_skip]
  kernel_rfl

theorem node14218_cond_eq
    (child12424 : Flapjack.WordAlloc.removeDeadStructural input12424 value6216 value1 value2 = (output12424, value6216, value1))
    (child14217 : Flapjack.WordAlloc.removeDeadStructural input14217 value6216 value1 value2 = (output14217, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14218 value6216 value1 value2 = (output14218, value6896, value1) := by
  rw [input14218_def, output14218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12424]
  try dsimp only
  rw [child14217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12424_skip, output14217_skip]
  kernel_rfl

theorem node14219_cond_eq
    (child12423 : Flapjack.WordAlloc.removeDeadStructural input12423 value6215 value1 value2 = (output12423, value6216, value1))
    (child14218 : Flapjack.WordAlloc.removeDeadStructural input14218 value6216 value1 value2 = (output14218, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14219 value6215 value1 value2 = (output14219, value6896, value1) := by
  rw [input14219_def, output14219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12423]
  try dsimp only
  rw [child14218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12423_skip, output14218_skip]
  kernel_rfl

theorem node14220_cond_eq
    (child12422 : Flapjack.WordAlloc.removeDeadStructural input12422 value5 value1 value2 = (output12422, value6215, value1))
    (child14219 : Flapjack.WordAlloc.removeDeadStructural input14219 value6215 value1 value2 = (output14219, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14220 value5 value1 value2 = (output14220, value6896, value1) := by
  rw [input14220_def, output14220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12422]
  try dsimp only
  rw [child14219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12422_skip, output14219_skip]
  kernel_rfl

theorem node14221_cond_eq
    (child12419 : Flapjack.WordAlloc.removeDeadStructural input12419 value6209 value1 value2 = (output12419, value5, value1))
    (child14220 : Flapjack.WordAlloc.removeDeadStructural input14220 value5 value1 value2 = (output14220, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14221 value6209 value1 value2 = (output14221, value6896, value1) := by
  rw [input14221_def, output14221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12419]
  try dsimp only
  rw [child14220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12419_skip, output14220_skip]
  kernel_rfl

theorem node14222_cond_eq
    (child12410 : Flapjack.WordAlloc.removeDeadStructural input12410 value6209 value1 value2 = (output12410, value6209, value1))
    (child14221 : Flapjack.WordAlloc.removeDeadStructural input14221 value6209 value1 value2 = (output14221, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14222 value6209 value1 value2 = (output14222, value6896, value1) := by
  rw [input14222_def, output14222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12410]
  try dsimp only
  rw [child14221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12410_skip, output14221_skip]
  kernel_rfl

theorem node14223_cond_eq
    (child12409 : Flapjack.WordAlloc.removeDeadStructural input12409 value6208 value1 value2 = (output12409, value6209, value1))
    (child14222 : Flapjack.WordAlloc.removeDeadStructural input14222 value6209 value1 value2 = (output14222, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14223 value6208 value1 value2 = (output14223, value6896, value1) := by
  rw [input14223_def, output14223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12409]
  try dsimp only
  rw [child14222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12409_skip, output14222_skip]
  kernel_rfl

theorem node14224_cond_eq
    (child12408 : Flapjack.WordAlloc.removeDeadStructural input12408 value5 value1 value2 = (output12408, value6208, value1))
    (child14223 : Flapjack.WordAlloc.removeDeadStructural input14223 value6208 value1 value2 = (output14223, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14224 value5 value1 value2 = (output14224, value6896, value1) := by
  rw [input14224_def, output14224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12408]
  try dsimp only
  rw [child14223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12408_skip, output14223_skip]
  kernel_rfl

theorem node14225_cond_eq
    (child12405 : Flapjack.WordAlloc.removeDeadStructural input12405 value6202 value1 value2 = (output12405, value5, value1))
    (child14224 : Flapjack.WordAlloc.removeDeadStructural input14224 value5 value1 value2 = (output14224, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14225 value6202 value1 value2 = (output14225, value6896, value1) := by
  rw [input14225_def, output14225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12405]
  try dsimp only
  rw [child14224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12405_skip, output14224_skip]
  kernel_rfl

theorem node14226_cond_eq
    (child12396 : Flapjack.WordAlloc.removeDeadStructural input12396 value6202 value1 value2 = (output12396, value6202, value1))
    (child14225 : Flapjack.WordAlloc.removeDeadStructural input14225 value6202 value1 value2 = (output14225, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14226 value6202 value1 value2 = (output14226, value6896, value1) := by
  rw [input14226_def, output14226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12396]
  try dsimp only
  rw [child14225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12396_skip, output14225_skip]
  kernel_rfl

theorem node14227_cond_eq
    (child12395 : Flapjack.WordAlloc.removeDeadStructural input12395 value6201 value1 value2 = (output12395, value6202, value1))
    (child14226 : Flapjack.WordAlloc.removeDeadStructural input14226 value6202 value1 value2 = (output14226, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14227 value6201 value1 value2 = (output14227, value6896, value1) := by
  rw [input14227_def, output14227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12395]
  try dsimp only
  rw [child14226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12395_skip, output14226_skip]
  kernel_rfl

theorem node14228_cond_eq
    (child12394 : Flapjack.WordAlloc.removeDeadStructural input12394 value5 value1 value2 = (output12394, value6201, value1))
    (child14227 : Flapjack.WordAlloc.removeDeadStructural input14227 value6201 value1 value2 = (output14227, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14228 value5 value1 value2 = (output14228, value6896, value1) := by
  rw [input14228_def, output14228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12394]
  try dsimp only
  rw [child14227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12394_skip, output14227_skip]
  kernel_rfl

theorem node14229_cond_eq
    (child12391 : Flapjack.WordAlloc.removeDeadStructural input12391 value6195 value1 value2 = (output12391, value5, value1))
    (child14228 : Flapjack.WordAlloc.removeDeadStructural input14228 value5 value1 value2 = (output14228, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14229 value6195 value1 value2 = (output14229, value6896, value1) := by
  rw [input14229_def, output14229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12391]
  try dsimp only
  rw [child14228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12391_skip, output14228_skip]
  kernel_rfl

theorem node14230_cond_eq
    (child12382 : Flapjack.WordAlloc.removeDeadStructural input12382 value6195 value1 value2 = (output12382, value6195, value1))
    (child14229 : Flapjack.WordAlloc.removeDeadStructural input14229 value6195 value1 value2 = (output14229, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14230 value6195 value1 value2 = (output14230, value6896, value1) := by
  rw [input14230_def, output14230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12382]
  try dsimp only
  rw [child14229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12382_skip, output14229_skip]
  kernel_rfl

theorem node14231_cond_eq
    (child12381 : Flapjack.WordAlloc.removeDeadStructural input12381 value6194 value1 value2 = (output12381, value6195, value1))
    (child14230 : Flapjack.WordAlloc.removeDeadStructural input14230 value6195 value1 value2 = (output14230, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14231 value6194 value1 value2 = (output14231, value6896, value1) := by
  rw [input14231_def, output14231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12381]
  try dsimp only
  rw [child14230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12381_skip, output14230_skip]
  kernel_rfl

theorem node14232_cond_eq
    (child12380 : Flapjack.WordAlloc.removeDeadStructural input12380 value5 value1 value2 = (output12380, value6194, value1))
    (child14231 : Flapjack.WordAlloc.removeDeadStructural input14231 value6194 value1 value2 = (output14231, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14232 value5 value1 value2 = (output14232, value6896, value1) := by
  rw [input14232_def, output14232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12380]
  try dsimp only
  rw [child14231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12380_skip, output14231_skip]
  kernel_rfl

theorem node14233_cond_eq
    (child12377 : Flapjack.WordAlloc.removeDeadStructural input12377 value6188 value1 value2 = (output12377, value5, value1))
    (child14232 : Flapjack.WordAlloc.removeDeadStructural input14232 value5 value1 value2 = (output14232, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14233 value6188 value1 value2 = (output14233, value6896, value1) := by
  rw [input14233_def, output14233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12377]
  try dsimp only
  rw [child14232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12377_skip, output14232_skip]
  kernel_rfl

theorem node14234_cond_eq
    (child12368 : Flapjack.WordAlloc.removeDeadStructural input12368 value6188 value1 value2 = (output12368, value6188, value1))
    (child14233 : Flapjack.WordAlloc.removeDeadStructural input14233 value6188 value1 value2 = (output14233, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14234 value6188 value1 value2 = (output14234, value6896, value1) := by
  rw [input14234_def, output14234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12368]
  try dsimp only
  rw [child14233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12368_skip, output14233_skip]
  kernel_rfl

theorem node14235_cond_eq
    (child12367 : Flapjack.WordAlloc.removeDeadStructural input12367 value6187 value1 value2 = (output12367, value6188, value1))
    (child14234 : Flapjack.WordAlloc.removeDeadStructural input14234 value6188 value1 value2 = (output14234, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14235 value6187 value1 value2 = (output14235, value6896, value1) := by
  rw [input14235_def, output14235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12367]
  try dsimp only
  rw [child14234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12367_skip, output14234_skip]
  kernel_rfl

theorem node14236_cond_eq
    (child12366 : Flapjack.WordAlloc.removeDeadStructural input12366 value5 value1 value2 = (output12366, value6187, value1))
    (child14235 : Flapjack.WordAlloc.removeDeadStructural input14235 value6187 value1 value2 = (output14235, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14236 value5 value1 value2 = (output14236, value6896, value1) := by
  rw [input14236_def, output14236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12366]
  try dsimp only
  rw [child14235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12366_skip, output14235_skip]
  kernel_rfl

theorem node14237_cond_eq
    (child12363 : Flapjack.WordAlloc.removeDeadStructural input12363 value6181 value1 value2 = (output12363, value5, value1))
    (child14236 : Flapjack.WordAlloc.removeDeadStructural input14236 value5 value1 value2 = (output14236, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14237 value6181 value1 value2 = (output14237, value6896, value1) := by
  rw [input14237_def, output14237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12363]
  try dsimp only
  rw [child14236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12363_skip, output14236_skip]
  kernel_rfl

theorem node14238_cond_eq
    (child12354 : Flapjack.WordAlloc.removeDeadStructural input12354 value6181 value1 value2 = (output12354, value6181, value1))
    (child14237 : Flapjack.WordAlloc.removeDeadStructural input14237 value6181 value1 value2 = (output14237, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14238 value6181 value1 value2 = (output14238, value6896, value1) := by
  rw [input14238_def, output14238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12354]
  try dsimp only
  rw [child14237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12354_skip, output14237_skip]
  kernel_rfl

theorem node14239_cond_eq
    (child12353 : Flapjack.WordAlloc.removeDeadStructural input12353 value6180 value1 value2 = (output12353, value6181, value1))
    (child14238 : Flapjack.WordAlloc.removeDeadStructural input14238 value6181 value1 value2 = (output14238, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14239 value6180 value1 value2 = (output14239, value6896, value1) := by
  rw [input14239_def, output14239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12353]
  try dsimp only
  rw [child14238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12353_skip, output14238_skip]
  kernel_rfl

theorem node14240_cond_eq
    (child12352 : Flapjack.WordAlloc.removeDeadStructural input12352 value5 value1 value2 = (output12352, value6180, value1))
    (child14239 : Flapjack.WordAlloc.removeDeadStructural input14239 value6180 value1 value2 = (output14239, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14240 value5 value1 value2 = (output14240, value6896, value1) := by
  rw [input14240_def, output14240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12352]
  try dsimp only
  rw [child14239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12352_skip, output14239_skip]
  kernel_rfl

theorem node14241_cond_eq
    (child12349 : Flapjack.WordAlloc.removeDeadStructural input12349 value6174 value1 value2 = (output12349, value5, value1))
    (child14240 : Flapjack.WordAlloc.removeDeadStructural input14240 value5 value1 value2 = (output14240, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14241 value6174 value1 value2 = (output14241, value6896, value1) := by
  rw [input14241_def, output14241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12349]
  try dsimp only
  rw [child14240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12349_skip, output14240_skip]
  kernel_rfl

theorem node14242_cond_eq
    (child12340 : Flapjack.WordAlloc.removeDeadStructural input12340 value6174 value1 value2 = (output12340, value6174, value1))
    (child14241 : Flapjack.WordAlloc.removeDeadStructural input14241 value6174 value1 value2 = (output14241, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14242 value6174 value1 value2 = (output14242, value6896, value1) := by
  rw [input14242_def, output14242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12340]
  try dsimp only
  rw [child14241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12340_skip, output14241_skip]
  kernel_rfl

theorem node14243_cond_eq
    (child12339 : Flapjack.WordAlloc.removeDeadStructural input12339 value6173 value1 value2 = (output12339, value6174, value1))
    (child14242 : Flapjack.WordAlloc.removeDeadStructural input14242 value6174 value1 value2 = (output14242, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14243 value6173 value1 value2 = (output14243, value6896, value1) := by
  rw [input14243_def, output14243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12339]
  try dsimp only
  rw [child14242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12339_skip, output14242_skip]
  kernel_rfl

theorem node14244_cond_eq
    (child12338 : Flapjack.WordAlloc.removeDeadStructural input12338 value5 value1 value2 = (output12338, value6173, value1))
    (child14243 : Flapjack.WordAlloc.removeDeadStructural input14243 value6173 value1 value2 = (output14243, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14244 value5 value1 value2 = (output14244, value6896, value1) := by
  rw [input14244_def, output14244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12338]
  try dsimp only
  rw [child14243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12338_skip, output14243_skip]
  kernel_rfl

theorem node14245_cond_eq
    (child12335 : Flapjack.WordAlloc.removeDeadStructural input12335 value6167 value1 value2 = (output12335, value5, value1))
    (child14244 : Flapjack.WordAlloc.removeDeadStructural input14244 value5 value1 value2 = (output14244, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14245 value6167 value1 value2 = (output14245, value6896, value1) := by
  rw [input14245_def, output14245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12335]
  try dsimp only
  rw [child14244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12335_skip, output14244_skip]
  kernel_rfl

theorem node14246_cond_eq
    (child12326 : Flapjack.WordAlloc.removeDeadStructural input12326 value6167 value1 value2 = (output12326, value6167, value1))
    (child14245 : Flapjack.WordAlloc.removeDeadStructural input14245 value6167 value1 value2 = (output14245, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14246 value6167 value1 value2 = (output14246, value6896, value1) := by
  rw [input14246_def, output14246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12326]
  try dsimp only
  rw [child14245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12326_skip, output14245_skip]
  kernel_rfl

theorem node14247_cond_eq
    (child12325 : Flapjack.WordAlloc.removeDeadStructural input12325 value6166 value1 value2 = (output12325, value6167, value1))
    (child14246 : Flapjack.WordAlloc.removeDeadStructural input14246 value6167 value1 value2 = (output14246, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14247 value6166 value1 value2 = (output14247, value6896, value1) := by
  rw [input14247_def, output14247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12325]
  try dsimp only
  rw [child14246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12325_skip, output14246_skip]
  kernel_rfl

theorem node14248_cond_eq
    (child12324 : Flapjack.WordAlloc.removeDeadStructural input12324 value5 value1 value2 = (output12324, value6166, value1))
    (child14247 : Flapjack.WordAlloc.removeDeadStructural input14247 value6166 value1 value2 = (output14247, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14248 value5 value1 value2 = (output14248, value6896, value1) := by
  rw [input14248_def, output14248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12324]
  try dsimp only
  rw [child14247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12324_skip, output14247_skip]
  kernel_rfl

theorem node14249_cond_eq
    (child12321 : Flapjack.WordAlloc.removeDeadStructural input12321 value6160 value1 value2 = (output12321, value5, value1))
    (child14248 : Flapjack.WordAlloc.removeDeadStructural input14248 value5 value1 value2 = (output14248, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14249 value6160 value1 value2 = (output14249, value6896, value1) := by
  rw [input14249_def, output14249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12321]
  try dsimp only
  rw [child14248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12321_skip, output14248_skip]
  kernel_rfl

theorem node14250_cond_eq
    (child12312 : Flapjack.WordAlloc.removeDeadStructural input12312 value6160 value1 value2 = (output12312, value6160, value1))
    (child14249 : Flapjack.WordAlloc.removeDeadStructural input14249 value6160 value1 value2 = (output14249, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14250 value6160 value1 value2 = (output14250, value6896, value1) := by
  rw [input14250_def, output14250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12312]
  try dsimp only
  rw [child14249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12312_skip, output14249_skip]
  kernel_rfl

theorem node14251_cond_eq
    (child12311 : Flapjack.WordAlloc.removeDeadStructural input12311 value6159 value1 value2 = (output12311, value6160, value1))
    (child14250 : Flapjack.WordAlloc.removeDeadStructural input14250 value6160 value1 value2 = (output14250, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14251 value6159 value1 value2 = (output14251, value6896, value1) := by
  rw [input14251_def, output14251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12311]
  try dsimp only
  rw [child14250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12311_skip, output14250_skip]
  kernel_rfl

theorem node14252_cond_eq
    (child12310 : Flapjack.WordAlloc.removeDeadStructural input12310 value5 value1 value2 = (output12310, value6159, value1))
    (child14251 : Flapjack.WordAlloc.removeDeadStructural input14251 value6159 value1 value2 = (output14251, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14252 value5 value1 value2 = (output14252, value6896, value1) := by
  rw [input14252_def, output14252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12310]
  try dsimp only
  rw [child14251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12310_skip, output14251_skip]
  kernel_rfl

theorem node14253_cond_eq
    (child12307 : Flapjack.WordAlloc.removeDeadStructural input12307 value6153 value1 value2 = (output12307, value5, value1))
    (child14252 : Flapjack.WordAlloc.removeDeadStructural input14252 value5 value1 value2 = (output14252, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14253 value6153 value1 value2 = (output14253, value6896, value1) := by
  rw [input14253_def, output14253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12307]
  try dsimp only
  rw [child14252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12307_skip, output14252_skip]
  kernel_rfl

theorem node14254_cond_eq
    (child12298 : Flapjack.WordAlloc.removeDeadStructural input12298 value6153 value1 value2 = (output12298, value6153, value1))
    (child14253 : Flapjack.WordAlloc.removeDeadStructural input14253 value6153 value1 value2 = (output14253, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14254 value6153 value1 value2 = (output14254, value6896, value1) := by
  rw [input14254_def, output14254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12298]
  try dsimp only
  rw [child14253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12298_skip, output14253_skip]
  kernel_rfl

theorem node14255_cond_eq
    (child12297 : Flapjack.WordAlloc.removeDeadStructural input12297 value6152 value1 value2 = (output12297, value6153, value1))
    (child14254 : Flapjack.WordAlloc.removeDeadStructural input14254 value6153 value1 value2 = (output14254, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14255 value6152 value1 value2 = (output14255, value6896, value1) := by
  rw [input14255_def, output14255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12297]
  try dsimp only
  rw [child14254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12297_skip, output14254_skip]
  kernel_rfl

theorem node14256_cond_eq
    (child12296 : Flapjack.WordAlloc.removeDeadStructural input12296 value5 value1 value2 = (output12296, value6152, value1))
    (child14255 : Flapjack.WordAlloc.removeDeadStructural input14255 value6152 value1 value2 = (output14255, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14256 value5 value1 value2 = (output14256, value6896, value1) := by
  rw [input14256_def, output14256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12296]
  try dsimp only
  rw [child14255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12296_skip, output14255_skip]
  kernel_rfl

theorem node14257_cond_eq
    (child12293 : Flapjack.WordAlloc.removeDeadStructural input12293 value6146 value1 value2 = (output12293, value5, value1))
    (child14256 : Flapjack.WordAlloc.removeDeadStructural input14256 value5 value1 value2 = (output14256, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14257 value6146 value1 value2 = (output14257, value6896, value1) := by
  rw [input14257_def, output14257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12293]
  try dsimp only
  rw [child14256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12293_skip, output14256_skip]
  kernel_rfl

theorem node14258_cond_eq
    (child12284 : Flapjack.WordAlloc.removeDeadStructural input12284 value6146 value1 value2 = (output12284, value6146, value1))
    (child14257 : Flapjack.WordAlloc.removeDeadStructural input14257 value6146 value1 value2 = (output14257, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14258 value6146 value1 value2 = (output14258, value6896, value1) := by
  rw [input14258_def, output14258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12284]
  try dsimp only
  rw [child14257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12284_skip, output14257_skip]
  kernel_rfl

theorem node14259_cond_eq
    (child12283 : Flapjack.WordAlloc.removeDeadStructural input12283 value6145 value1 value2 = (output12283, value6146, value1))
    (child14258 : Flapjack.WordAlloc.removeDeadStructural input14258 value6146 value1 value2 = (output14258, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14259 value6145 value1 value2 = (output14259, value6896, value1) := by
  rw [input14259_def, output14259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12283]
  try dsimp only
  rw [child14258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12283_skip, output14258_skip]
  kernel_rfl

theorem node14260_cond_eq
    (child12282 : Flapjack.WordAlloc.removeDeadStructural input12282 value5 value1 value2 = (output12282, value6145, value1))
    (child14259 : Flapjack.WordAlloc.removeDeadStructural input14259 value6145 value1 value2 = (output14259, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14260 value5 value1 value2 = (output14260, value6896, value1) := by
  rw [input14260_def, output14260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12282]
  try dsimp only
  rw [child14259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12282_skip, output14259_skip]
  kernel_rfl

theorem node14261_cond_eq
    (child12279 : Flapjack.WordAlloc.removeDeadStructural input12279 value6139 value1 value2 = (output12279, value5, value1))
    (child14260 : Flapjack.WordAlloc.removeDeadStructural input14260 value5 value1 value2 = (output14260, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14261 value6139 value1 value2 = (output14261, value6896, value1) := by
  rw [input14261_def, output14261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12279]
  try dsimp only
  rw [child14260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12279_skip, output14260_skip]
  kernel_rfl

theorem node14262_cond_eq
    (child12270 : Flapjack.WordAlloc.removeDeadStructural input12270 value6139 value1 value2 = (output12270, value6139, value1))
    (child14261 : Flapjack.WordAlloc.removeDeadStructural input14261 value6139 value1 value2 = (output14261, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14262 value6139 value1 value2 = (output14262, value6896, value1) := by
  rw [input14262_def, output14262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12270]
  try dsimp only
  rw [child14261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12270_skip, output14261_skip]
  kernel_rfl

theorem node14263_cond_eq
    (child12269 : Flapjack.WordAlloc.removeDeadStructural input12269 value6138 value1 value2 = (output12269, value6139, value1))
    (child14262 : Flapjack.WordAlloc.removeDeadStructural input14262 value6139 value1 value2 = (output14262, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14263 value6138 value1 value2 = (output14263, value6896, value1) := by
  rw [input14263_def, output14263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12269]
  try dsimp only
  rw [child14262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12269_skip, output14262_skip]
  kernel_rfl

theorem node14264_cond_eq
    (child12268 : Flapjack.WordAlloc.removeDeadStructural input12268 value5 value1 value2 = (output12268, value6138, value1))
    (child14263 : Flapjack.WordAlloc.removeDeadStructural input14263 value6138 value1 value2 = (output14263, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14264 value5 value1 value2 = (output14264, value6896, value1) := by
  rw [input14264_def, output14264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12268]
  try dsimp only
  rw [child14263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12268_skip, output14263_skip]
  kernel_rfl

theorem node14265_cond_eq
    (child12265 : Flapjack.WordAlloc.removeDeadStructural input12265 value6132 value1 value2 = (output12265, value5, value1))
    (child14264 : Flapjack.WordAlloc.removeDeadStructural input14264 value5 value1 value2 = (output14264, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14265 value6132 value1 value2 = (output14265, value6896, value1) := by
  rw [input14265_def, output14265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12265]
  try dsimp only
  rw [child14264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12265_skip, output14264_skip]
  kernel_rfl

theorem node14266_cond_eq
    (child12256 : Flapjack.WordAlloc.removeDeadStructural input12256 value6132 value1 value2 = (output12256, value6132, value1))
    (child14265 : Flapjack.WordAlloc.removeDeadStructural input14265 value6132 value1 value2 = (output14265, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14266 value6132 value1 value2 = (output14266, value6896, value1) := by
  rw [input14266_def, output14266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12256]
  try dsimp only
  rw [child14265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12256_skip, output14265_skip]
  kernel_rfl

theorem node14267_cond_eq
    (child12255 : Flapjack.WordAlloc.removeDeadStructural input12255 value6131 value1 value2 = (output12255, value6132, value1))
    (child14266 : Flapjack.WordAlloc.removeDeadStructural input14266 value6132 value1 value2 = (output14266, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14267 value6131 value1 value2 = (output14267, value6896, value1) := by
  rw [input14267_def, output14267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12255]
  try dsimp only
  rw [child14266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12255_skip, output14266_skip]
  kernel_rfl

theorem node14268_cond_eq
    (child12254 : Flapjack.WordAlloc.removeDeadStructural input12254 value5 value1 value2 = (output12254, value6131, value1))
    (child14267 : Flapjack.WordAlloc.removeDeadStructural input14267 value6131 value1 value2 = (output14267, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14268 value5 value1 value2 = (output14268, value6896, value1) := by
  rw [input14268_def, output14268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12254]
  try dsimp only
  rw [child14267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12254_skip, output14267_skip]
  kernel_rfl

theorem node14269_cond_eq
    (child12251 : Flapjack.WordAlloc.removeDeadStructural input12251 value6125 value1 value2 = (output12251, value5, value1))
    (child14268 : Flapjack.WordAlloc.removeDeadStructural input14268 value5 value1 value2 = (output14268, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14269 value6125 value1 value2 = (output14269, value6896, value1) := by
  rw [input14269_def, output14269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12251]
  try dsimp only
  rw [child14268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12251_skip, output14268_skip]
  kernel_rfl

theorem node14270_cond_eq
    (child12242 : Flapjack.WordAlloc.removeDeadStructural input12242 value6125 value1 value2 = (output12242, value6125, value1))
    (child14269 : Flapjack.WordAlloc.removeDeadStructural input14269 value6125 value1 value2 = (output14269, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14270 value6125 value1 value2 = (output14270, value6896, value1) := by
  rw [input14270_def, output14270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12242]
  try dsimp only
  rw [child14269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12242_skip, output14269_skip]
  kernel_rfl

theorem node14271_cond_eq
    (child12241 : Flapjack.WordAlloc.removeDeadStructural input12241 value6124 value1 value2 = (output12241, value6125, value1))
    (child14270 : Flapjack.WordAlloc.removeDeadStructural input14270 value6125 value1 value2 = (output14270, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14271 value6124 value1 value2 = (output14271, value6896, value1) := by
  rw [input14271_def, output14271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12241]
  try dsimp only
  rw [child14270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12241_skip, output14270_skip]
  kernel_rfl

theorem node14272_cond_eq
    (child12240 : Flapjack.WordAlloc.removeDeadStructural input12240 value5 value1 value2 = (output12240, value6124, value1))
    (child14271 : Flapjack.WordAlloc.removeDeadStructural input14271 value6124 value1 value2 = (output14271, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14272 value5 value1 value2 = (output14272, value6896, value1) := by
  rw [input14272_def, output14272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12240]
  try dsimp only
  rw [child14271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12240_skip, output14271_skip]
  kernel_rfl

theorem node14273_cond_eq
    (child12237 : Flapjack.WordAlloc.removeDeadStructural input12237 value6118 value1 value2 = (output12237, value5, value1))
    (child14272 : Flapjack.WordAlloc.removeDeadStructural input14272 value5 value1 value2 = (output14272, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14273 value6118 value1 value2 = (output14273, value6896, value1) := by
  rw [input14273_def, output14273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12237]
  try dsimp only
  rw [child14272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12237_skip, output14272_skip]
  kernel_rfl

theorem node14274_cond_eq
    (child12228 : Flapjack.WordAlloc.removeDeadStructural input12228 value6118 value1 value2 = (output12228, value6118, value1))
    (child14273 : Flapjack.WordAlloc.removeDeadStructural input14273 value6118 value1 value2 = (output14273, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14274 value6118 value1 value2 = (output14274, value6896, value1) := by
  rw [input14274_def, output14274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12228]
  try dsimp only
  rw [child14273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12228_skip, output14273_skip]
  kernel_rfl

theorem node14275_cond_eq
    (child12227 : Flapjack.WordAlloc.removeDeadStructural input12227 value6117 value1 value2 = (output12227, value6118, value1))
    (child14274 : Flapjack.WordAlloc.removeDeadStructural input14274 value6118 value1 value2 = (output14274, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14275 value6117 value1 value2 = (output14275, value6896, value1) := by
  rw [input14275_def, output14275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12227]
  try dsimp only
  rw [child14274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12227_skip, output14274_skip]
  kernel_rfl

theorem node14276_cond_eq
    (child12226 : Flapjack.WordAlloc.removeDeadStructural input12226 value5 value1 value2 = (output12226, value6117, value1))
    (child14275 : Flapjack.WordAlloc.removeDeadStructural input14275 value6117 value1 value2 = (output14275, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14276 value5 value1 value2 = (output14276, value6896, value1) := by
  rw [input14276_def, output14276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12226]
  try dsimp only
  rw [child14275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12226_skip, output14275_skip]
  kernel_rfl

theorem node14277_cond_eq
    (child12223 : Flapjack.WordAlloc.removeDeadStructural input12223 value6111 value1 value2 = (output12223, value5, value1))
    (child14276 : Flapjack.WordAlloc.removeDeadStructural input14276 value5 value1 value2 = (output14276, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14277 value6111 value1 value2 = (output14277, value6896, value1) := by
  rw [input14277_def, output14277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12223]
  try dsimp only
  rw [child14276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12223_skip, output14276_skip]
  kernel_rfl

theorem node14278_cond_eq
    (child12214 : Flapjack.WordAlloc.removeDeadStructural input12214 value6111 value1 value2 = (output12214, value6111, value1))
    (child14277 : Flapjack.WordAlloc.removeDeadStructural input14277 value6111 value1 value2 = (output14277, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14278 value6111 value1 value2 = (output14278, value6896, value1) := by
  rw [input14278_def, output14278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12214]
  try dsimp only
  rw [child14277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12214_skip, output14277_skip]
  kernel_rfl

theorem node14279_cond_eq
    (child12213 : Flapjack.WordAlloc.removeDeadStructural input12213 value6110 value1 value2 = (output12213, value6111, value1))
    (child14278 : Flapjack.WordAlloc.removeDeadStructural input14278 value6111 value1 value2 = (output14278, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14279 value6110 value1 value2 = (output14279, value6896, value1) := by
  rw [input14279_def, output14279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12213]
  try dsimp only
  rw [child14278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12213_skip, output14278_skip]
  kernel_rfl

theorem node14280_cond_eq
    (child12212 : Flapjack.WordAlloc.removeDeadStructural input12212 value5 value1 value2 = (output12212, value6110, value1))
    (child14279 : Flapjack.WordAlloc.removeDeadStructural input14279 value6110 value1 value2 = (output14279, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14280 value5 value1 value2 = (output14280, value6896, value1) := by
  rw [input14280_def, output14280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12212]
  try dsimp only
  rw [child14279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12212_skip, output14279_skip]
  kernel_rfl

theorem node14281_cond_eq
    (child12209 : Flapjack.WordAlloc.removeDeadStructural input12209 value6104 value1 value2 = (output12209, value5, value1))
    (child14280 : Flapjack.WordAlloc.removeDeadStructural input14280 value5 value1 value2 = (output14280, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14281 value6104 value1 value2 = (output14281, value6896, value1) := by
  rw [input14281_def, output14281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12209]
  try dsimp only
  rw [child14280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12209_skip, output14280_skip]
  kernel_rfl

theorem node14282_cond_eq
    (child12200 : Flapjack.WordAlloc.removeDeadStructural input12200 value6104 value1 value2 = (output12200, value6104, value1))
    (child14281 : Flapjack.WordAlloc.removeDeadStructural input14281 value6104 value1 value2 = (output14281, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14282 value6104 value1 value2 = (output14282, value6896, value1) := by
  rw [input14282_def, output14282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12200]
  try dsimp only
  rw [child14281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12200_skip, output14281_skip]
  kernel_rfl

theorem node14283_cond_eq
    (child12199 : Flapjack.WordAlloc.removeDeadStructural input12199 value6103 value1 value2 = (output12199, value6104, value1))
    (child14282 : Flapjack.WordAlloc.removeDeadStructural input14282 value6104 value1 value2 = (output14282, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14283 value6103 value1 value2 = (output14283, value6896, value1) := by
  rw [input14283_def, output14283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12199]
  try dsimp only
  rw [child14282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12199_skip, output14282_skip]
  kernel_rfl

theorem node14284_cond_eq
    (child12198 : Flapjack.WordAlloc.removeDeadStructural input12198 value5 value1 value2 = (output12198, value6103, value1))
    (child14283 : Flapjack.WordAlloc.removeDeadStructural input14283 value6103 value1 value2 = (output14283, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14284 value5 value1 value2 = (output14284, value6896, value1) := by
  rw [input14284_def, output14284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12198]
  try dsimp only
  rw [child14283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12198_skip, output14283_skip]
  kernel_rfl

theorem node14285_cond_eq
    (child12195 : Flapjack.WordAlloc.removeDeadStructural input12195 value6097 value1 value2 = (output12195, value5, value1))
    (child14284 : Flapjack.WordAlloc.removeDeadStructural input14284 value5 value1 value2 = (output14284, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14285 value6097 value1 value2 = (output14285, value6896, value1) := by
  rw [input14285_def, output14285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12195]
  try dsimp only
  rw [child14284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12195_skip, output14284_skip]
  kernel_rfl

theorem node14286_cond_eq
    (child12186 : Flapjack.WordAlloc.removeDeadStructural input12186 value6097 value1 value2 = (output12186, value6097, value1))
    (child14285 : Flapjack.WordAlloc.removeDeadStructural input14285 value6097 value1 value2 = (output14285, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14286 value6097 value1 value2 = (output14286, value6896, value1) := by
  rw [input14286_def, output14286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12186]
  try dsimp only
  rw [child14285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12186_skip, output14285_skip]
  kernel_rfl

theorem node14287_cond_eq
    (child12185 : Flapjack.WordAlloc.removeDeadStructural input12185 value6096 value1 value2 = (output12185, value6097, value1))
    (child14286 : Flapjack.WordAlloc.removeDeadStructural input14286 value6097 value1 value2 = (output14286, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14287 value6096 value1 value2 = (output14287, value6896, value1) := by
  rw [input14287_def, output14287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12185]
  try dsimp only
  rw [child14286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12185_skip, output14286_skip]
  kernel_rfl

theorem node14288_cond_eq
    (child12184 : Flapjack.WordAlloc.removeDeadStructural input12184 value5 value1 value2 = (output12184, value6096, value1))
    (child14287 : Flapjack.WordAlloc.removeDeadStructural input14287 value6096 value1 value2 = (output14287, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14288 value5 value1 value2 = (output14288, value6896, value1) := by
  rw [input14288_def, output14288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12184]
  try dsimp only
  rw [child14287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12184_skip, output14287_skip]
  kernel_rfl

theorem node14289_cond_eq
    (child12181 : Flapjack.WordAlloc.removeDeadStructural input12181 value6090 value1 value2 = (output12181, value5, value1))
    (child14288 : Flapjack.WordAlloc.removeDeadStructural input14288 value5 value1 value2 = (output14288, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14289 value6090 value1 value2 = (output14289, value6896, value1) := by
  rw [input14289_def, output14289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12181]
  try dsimp only
  rw [child14288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12181_skip, output14288_skip]
  kernel_rfl

theorem node14290_cond_eq
    (child12172 : Flapjack.WordAlloc.removeDeadStructural input12172 value6090 value1 value2 = (output12172, value6090, value1))
    (child14289 : Flapjack.WordAlloc.removeDeadStructural input14289 value6090 value1 value2 = (output14289, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14290 value6090 value1 value2 = (output14290, value6896, value1) := by
  rw [input14290_def, output14290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12172]
  try dsimp only
  rw [child14289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12172_skip, output14289_skip]
  kernel_rfl

theorem node14291_cond_eq
    (child12171 : Flapjack.WordAlloc.removeDeadStructural input12171 value6089 value1 value2 = (output12171, value6090, value1))
    (child14290 : Flapjack.WordAlloc.removeDeadStructural input14290 value6090 value1 value2 = (output14290, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14291 value6089 value1 value2 = (output14291, value6896, value1) := by
  rw [input14291_def, output14291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12171]
  try dsimp only
  rw [child14290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12171_skip, output14290_skip]
  kernel_rfl

theorem node14292_cond_eq
    (child12170 : Flapjack.WordAlloc.removeDeadStructural input12170 value5 value1 value2 = (output12170, value6089, value1))
    (child14291 : Flapjack.WordAlloc.removeDeadStructural input14291 value6089 value1 value2 = (output14291, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14292 value5 value1 value2 = (output14292, value6896, value1) := by
  rw [input14292_def, output14292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12170]
  try dsimp only
  rw [child14291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12170_skip, output14291_skip]
  kernel_rfl

theorem node14293_cond_eq
    (child12167 : Flapjack.WordAlloc.removeDeadStructural input12167 value6083 value1 value2 = (output12167, value5, value1))
    (child14292 : Flapjack.WordAlloc.removeDeadStructural input14292 value5 value1 value2 = (output14292, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14293 value6083 value1 value2 = (output14293, value6896, value1) := by
  rw [input14293_def, output14293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12167]
  try dsimp only
  rw [child14292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12167_skip, output14292_skip]
  kernel_rfl

theorem node14294_cond_eq
    (child12158 : Flapjack.WordAlloc.removeDeadStructural input12158 value6083 value1 value2 = (output12158, value6083, value1))
    (child14293 : Flapjack.WordAlloc.removeDeadStructural input14293 value6083 value1 value2 = (output14293, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14294 value6083 value1 value2 = (output14294, value6896, value1) := by
  rw [input14294_def, output14294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12158]
  try dsimp only
  rw [child14293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12158_skip, output14293_skip]
  kernel_rfl

theorem node14295_cond_eq
    (child12157 : Flapjack.WordAlloc.removeDeadStructural input12157 value6082 value1 value2 = (output12157, value6083, value1))
    (child14294 : Flapjack.WordAlloc.removeDeadStructural input14294 value6083 value1 value2 = (output14294, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14295 value6082 value1 value2 = (output14295, value6896, value1) := by
  rw [input14295_def, output14295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12157]
  try dsimp only
  rw [child14294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12157_skip, output14294_skip]
  kernel_rfl

theorem node14296_cond_eq
    (child12156 : Flapjack.WordAlloc.removeDeadStructural input12156 value5 value1 value2 = (output12156, value6082, value1))
    (child14295 : Flapjack.WordAlloc.removeDeadStructural input14295 value6082 value1 value2 = (output14295, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14296 value5 value1 value2 = (output14296, value6896, value1) := by
  rw [input14296_def, output14296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12156]
  try dsimp only
  rw [child14295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12156_skip, output14295_skip]
  kernel_rfl

theorem node14297_cond_eq
    (child12153 : Flapjack.WordAlloc.removeDeadStructural input12153 value6076 value1 value2 = (output12153, value5, value1))
    (child14296 : Flapjack.WordAlloc.removeDeadStructural input14296 value5 value1 value2 = (output14296, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14297 value6076 value1 value2 = (output14297, value6896, value1) := by
  rw [input14297_def, output14297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12153]
  try dsimp only
  rw [child14296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12153_skip, output14296_skip]
  kernel_rfl

theorem node14298_cond_eq
    (child12144 : Flapjack.WordAlloc.removeDeadStructural input12144 value6076 value1 value2 = (output12144, value6076, value1))
    (child14297 : Flapjack.WordAlloc.removeDeadStructural input14297 value6076 value1 value2 = (output14297, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14298 value6076 value1 value2 = (output14298, value6896, value1) := by
  rw [input14298_def, output14298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12144]
  try dsimp only
  rw [child14297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12144_skip, output14297_skip]
  kernel_rfl

theorem node14299_cond_eq
    (child12143 : Flapjack.WordAlloc.removeDeadStructural input12143 value6075 value1 value2 = (output12143, value6076, value1))
    (child14298 : Flapjack.WordAlloc.removeDeadStructural input14298 value6076 value1 value2 = (output14298, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14299 value6075 value1 value2 = (output14299, value6896, value1) := by
  rw [input14299_def, output14299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12143]
  try dsimp only
  rw [child14298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12143_skip, output14298_skip]
  kernel_rfl

theorem node14300_cond_eq
    (child12142 : Flapjack.WordAlloc.removeDeadStructural input12142 value5 value1 value2 = (output12142, value6075, value1))
    (child14299 : Flapjack.WordAlloc.removeDeadStructural input14299 value6075 value1 value2 = (output14299, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14300 value5 value1 value2 = (output14300, value6896, value1) := by
  rw [input14300_def, output14300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12142]
  try dsimp only
  rw [child14299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12142_skip, output14299_skip]
  kernel_rfl

theorem node14301_cond_eq
    (child12139 : Flapjack.WordAlloc.removeDeadStructural input12139 value6069 value1 value2 = (output12139, value5, value1))
    (child14300 : Flapjack.WordAlloc.removeDeadStructural input14300 value5 value1 value2 = (output14300, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14301 value6069 value1 value2 = (output14301, value6896, value1) := by
  rw [input14301_def, output14301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12139]
  try dsimp only
  rw [child14300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12139_skip, output14300_skip]
  kernel_rfl

theorem node14302_cond_eq
    (child12130 : Flapjack.WordAlloc.removeDeadStructural input12130 value6069 value1 value2 = (output12130, value6069, value1))
    (child14301 : Flapjack.WordAlloc.removeDeadStructural input14301 value6069 value1 value2 = (output14301, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14302 value6069 value1 value2 = (output14302, value6896, value1) := by
  rw [input14302_def, output14302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12130]
  try dsimp only
  rw [child14301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12130_skip, output14301_skip]
  kernel_rfl

theorem node14303_cond_eq
    (child12129 : Flapjack.WordAlloc.removeDeadStructural input12129 value6068 value1 value2 = (output12129, value6069, value1))
    (child14302 : Flapjack.WordAlloc.removeDeadStructural input14302 value6069 value1 value2 = (output14302, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14303 value6068 value1 value2 = (output14303, value6896, value1) := by
  rw [input14303_def, output14303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12129]
  try dsimp only
  rw [child14302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12129_skip, output14302_skip]
  kernel_rfl

theorem node14304_cond_eq
    (child12128 : Flapjack.WordAlloc.removeDeadStructural input12128 value5 value1 value2 = (output12128, value6068, value1))
    (child14303 : Flapjack.WordAlloc.removeDeadStructural input14303 value6068 value1 value2 = (output14303, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14304 value5 value1 value2 = (output14304, value6896, value1) := by
  rw [input14304_def, output14304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12128]
  try dsimp only
  rw [child14303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12128_skip, output14303_skip]
  kernel_rfl

theorem node14305_cond_eq
    (child12125 : Flapjack.WordAlloc.removeDeadStructural input12125 value6062 value1 value2 = (output12125, value5, value1))
    (child14304 : Flapjack.WordAlloc.removeDeadStructural input14304 value5 value1 value2 = (output14304, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14305 value6062 value1 value2 = (output14305, value6896, value1) := by
  rw [input14305_def, output14305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12125]
  try dsimp only
  rw [child14304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12125_skip, output14304_skip]
  kernel_rfl

theorem node14306_cond_eq
    (child12116 : Flapjack.WordAlloc.removeDeadStructural input12116 value6062 value1 value2 = (output12116, value6062, value1))
    (child14305 : Flapjack.WordAlloc.removeDeadStructural input14305 value6062 value1 value2 = (output14305, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14306 value6062 value1 value2 = (output14306, value6896, value1) := by
  rw [input14306_def, output14306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12116]
  try dsimp only
  rw [child14305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12116_skip, output14305_skip]
  kernel_rfl

theorem node14307_cond_eq
    (child12115 : Flapjack.WordAlloc.removeDeadStructural input12115 value6061 value1 value2 = (output12115, value6062, value1))
    (child14306 : Flapjack.WordAlloc.removeDeadStructural input14306 value6062 value1 value2 = (output14306, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14307 value6061 value1 value2 = (output14307, value6896, value1) := by
  rw [input14307_def, output14307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12115]
  try dsimp only
  rw [child14306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12115_skip, output14306_skip]
  kernel_rfl

theorem node14308_cond_eq
    (child12114 : Flapjack.WordAlloc.removeDeadStructural input12114 value5 value1 value2 = (output12114, value6061, value1))
    (child14307 : Flapjack.WordAlloc.removeDeadStructural input14307 value6061 value1 value2 = (output14307, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14308 value5 value1 value2 = (output14308, value6896, value1) := by
  rw [input14308_def, output14308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12114]
  try dsimp only
  rw [child14307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12114_skip, output14307_skip]
  kernel_rfl

theorem node14309_cond_eq
    (child12111 : Flapjack.WordAlloc.removeDeadStructural input12111 value6055 value1 value2 = (output12111, value5, value1))
    (child14308 : Flapjack.WordAlloc.removeDeadStructural input14308 value5 value1 value2 = (output14308, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14309 value6055 value1 value2 = (output14309, value6896, value1) := by
  rw [input14309_def, output14309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12111]
  try dsimp only
  rw [child14308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12111_skip, output14308_skip]
  kernel_rfl

theorem node14310_cond_eq
    (child12102 : Flapjack.WordAlloc.removeDeadStructural input12102 value6055 value1 value2 = (output12102, value6055, value1))
    (child14309 : Flapjack.WordAlloc.removeDeadStructural input14309 value6055 value1 value2 = (output14309, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14310 value6055 value1 value2 = (output14310, value6896, value1) := by
  rw [input14310_def, output14310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12102]
  try dsimp only
  rw [child14309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12102_skip, output14309_skip]
  kernel_rfl

theorem node14311_cond_eq
    (child12101 : Flapjack.WordAlloc.removeDeadStructural input12101 value6054 value1 value2 = (output12101, value6055, value1))
    (child14310 : Flapjack.WordAlloc.removeDeadStructural input14310 value6055 value1 value2 = (output14310, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14311 value6054 value1 value2 = (output14311, value6896, value1) := by
  rw [input14311_def, output14311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12101]
  try dsimp only
  rw [child14310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12101_skip, output14310_skip]
  kernel_rfl

theorem node14312_cond_eq
    (child12100 : Flapjack.WordAlloc.removeDeadStructural input12100 value5 value1 value2 = (output12100, value6054, value1))
    (child14311 : Flapjack.WordAlloc.removeDeadStructural input14311 value6054 value1 value2 = (output14311, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14312 value5 value1 value2 = (output14312, value6896, value1) := by
  rw [input14312_def, output14312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12100]
  try dsimp only
  rw [child14311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12100_skip, output14311_skip]
  kernel_rfl

theorem node14313_cond_eq
    (child12097 : Flapjack.WordAlloc.removeDeadStructural input12097 value6048 value1 value2 = (output12097, value5, value1))
    (child14312 : Flapjack.WordAlloc.removeDeadStructural input14312 value5 value1 value2 = (output14312, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14313 value6048 value1 value2 = (output14313, value6896, value1) := by
  rw [input14313_def, output14313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12097]
  try dsimp only
  rw [child14312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12097_skip, output14312_skip]
  kernel_rfl

theorem node14314_cond_eq
    (child12088 : Flapjack.WordAlloc.removeDeadStructural input12088 value6048 value1 value2 = (output12088, value6048, value1))
    (child14313 : Flapjack.WordAlloc.removeDeadStructural input14313 value6048 value1 value2 = (output14313, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14314 value6048 value1 value2 = (output14314, value6896, value1) := by
  rw [input14314_def, output14314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12088]
  try dsimp only
  rw [child14313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12088_skip, output14313_skip]
  kernel_rfl

theorem node14315_cond_eq
    (child12087 : Flapjack.WordAlloc.removeDeadStructural input12087 value6047 value1 value2 = (output12087, value6048, value1))
    (child14314 : Flapjack.WordAlloc.removeDeadStructural input14314 value6048 value1 value2 = (output14314, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14315 value6047 value1 value2 = (output14315, value6896, value1) := by
  rw [input14315_def, output14315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12087]
  try dsimp only
  rw [child14314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12087_skip, output14314_skip]
  kernel_rfl

theorem node14316_cond_eq
    (child12086 : Flapjack.WordAlloc.removeDeadStructural input12086 value5 value1 value2 = (output12086, value6047, value1))
    (child14315 : Flapjack.WordAlloc.removeDeadStructural input14315 value6047 value1 value2 = (output14315, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14316 value5 value1 value2 = (output14316, value6896, value1) := by
  rw [input14316_def, output14316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12086]
  try dsimp only
  rw [child14315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12086_skip, output14315_skip]
  kernel_rfl

theorem node14317_cond_eq
    (child12083 : Flapjack.WordAlloc.removeDeadStructural input12083 value6041 value1 value2 = (output12083, value5, value1))
    (child14316 : Flapjack.WordAlloc.removeDeadStructural input14316 value5 value1 value2 = (output14316, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14317 value6041 value1 value2 = (output14317, value6896, value1) := by
  rw [input14317_def, output14317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12083]
  try dsimp only
  rw [child14316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12083_skip, output14316_skip]
  kernel_rfl

theorem node14318_cond_eq
    (child12074 : Flapjack.WordAlloc.removeDeadStructural input12074 value6041 value1 value2 = (output12074, value6041, value1))
    (child14317 : Flapjack.WordAlloc.removeDeadStructural input14317 value6041 value1 value2 = (output14317, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14318 value6041 value1 value2 = (output14318, value6896, value1) := by
  rw [input14318_def, output14318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12074]
  try dsimp only
  rw [child14317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12074_skip, output14317_skip]
  kernel_rfl

theorem node14319_cond_eq
    (child12073 : Flapjack.WordAlloc.removeDeadStructural input12073 value6040 value1 value2 = (output12073, value6041, value1))
    (child14318 : Flapjack.WordAlloc.removeDeadStructural input14318 value6041 value1 value2 = (output14318, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14319 value6040 value1 value2 = (output14319, value6896, value1) := by
  rw [input14319_def, output14319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12073]
  try dsimp only
  rw [child14318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12073_skip, output14318_skip]
  kernel_rfl

theorem node14320_cond_eq
    (child12072 : Flapjack.WordAlloc.removeDeadStructural input12072 value5 value1 value2 = (output12072, value6040, value1))
    (child14319 : Flapjack.WordAlloc.removeDeadStructural input14319 value6040 value1 value2 = (output14319, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14320 value5 value1 value2 = (output14320, value6896, value1) := by
  rw [input14320_def, output14320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12072]
  try dsimp only
  rw [child14319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12072_skip, output14319_skip]
  kernel_rfl

theorem node14321_cond_eq
    (child12069 : Flapjack.WordAlloc.removeDeadStructural input12069 value6034 value1 value2 = (output12069, value5, value1))
    (child14320 : Flapjack.WordAlloc.removeDeadStructural input14320 value5 value1 value2 = (output14320, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14321 value6034 value1 value2 = (output14321, value6896, value1) := by
  rw [input14321_def, output14321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12069]
  try dsimp only
  rw [child14320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12069_skip, output14320_skip]
  kernel_rfl

theorem node14322_cond_eq
    (child12060 : Flapjack.WordAlloc.removeDeadStructural input12060 value6034 value1 value2 = (output12060, value6034, value1))
    (child14321 : Flapjack.WordAlloc.removeDeadStructural input14321 value6034 value1 value2 = (output14321, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14322 value6034 value1 value2 = (output14322, value6896, value1) := by
  rw [input14322_def, output14322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12060]
  try dsimp only
  rw [child14321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12060_skip, output14321_skip]
  kernel_rfl

theorem node14323_cond_eq
    (child12059 : Flapjack.WordAlloc.removeDeadStructural input12059 value6033 value1 value2 = (output12059, value6034, value1))
    (child14322 : Flapjack.WordAlloc.removeDeadStructural input14322 value6034 value1 value2 = (output14322, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14323 value6033 value1 value2 = (output14323, value6896, value1) := by
  rw [input14323_def, output14323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12059]
  try dsimp only
  rw [child14322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12059_skip, output14322_skip]
  kernel_rfl

theorem node14324_cond_eq
    (child12058 : Flapjack.WordAlloc.removeDeadStructural input12058 value5 value1 value2 = (output12058, value6033, value1))
    (child14323 : Flapjack.WordAlloc.removeDeadStructural input14323 value6033 value1 value2 = (output14323, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14324 value5 value1 value2 = (output14324, value6896, value1) := by
  rw [input14324_def, output14324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12058]
  try dsimp only
  rw [child14323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12058_skip, output14323_skip]
  kernel_rfl

theorem node14325_cond_eq
    (child12055 : Flapjack.WordAlloc.removeDeadStructural input12055 value6027 value1 value2 = (output12055, value5, value1))
    (child14324 : Flapjack.WordAlloc.removeDeadStructural input14324 value5 value1 value2 = (output14324, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14325 value6027 value1 value2 = (output14325, value6896, value1) := by
  rw [input14325_def, output14325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12055]
  try dsimp only
  rw [child14324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12055_skip, output14324_skip]
  kernel_rfl

theorem node14326_cond_eq
    (child12046 : Flapjack.WordAlloc.removeDeadStructural input12046 value6027 value1 value2 = (output12046, value6027, value1))
    (child14325 : Flapjack.WordAlloc.removeDeadStructural input14325 value6027 value1 value2 = (output14325, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14326 value6027 value1 value2 = (output14326, value6896, value1) := by
  rw [input14326_def, output14326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12046]
  try dsimp only
  rw [child14325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12046_skip, output14325_skip]
  kernel_rfl

theorem node14327_cond_eq
    (child12045 : Flapjack.WordAlloc.removeDeadStructural input12045 value6026 value1 value2 = (output12045, value6027, value1))
    (child14326 : Flapjack.WordAlloc.removeDeadStructural input14326 value6027 value1 value2 = (output14326, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14327 value6026 value1 value2 = (output14327, value6896, value1) := by
  rw [input14327_def, output14327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12045]
  try dsimp only
  rw [child14326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12045_skip, output14326_skip]
  kernel_rfl

theorem node14328_cond_eq
    (child12044 : Flapjack.WordAlloc.removeDeadStructural input12044 value5 value1 value2 = (output12044, value6026, value1))
    (child14327 : Flapjack.WordAlloc.removeDeadStructural input14327 value6026 value1 value2 = (output14327, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14328 value5 value1 value2 = (output14328, value6896, value1) := by
  rw [input14328_def, output14328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12044]
  try dsimp only
  rw [child14327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12044_skip, output14327_skip]
  kernel_rfl

theorem node14329_cond_eq
    (child12041 : Flapjack.WordAlloc.removeDeadStructural input12041 value6020 value1 value2 = (output12041, value5, value1))
    (child14328 : Flapjack.WordAlloc.removeDeadStructural input14328 value5 value1 value2 = (output14328, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14329 value6020 value1 value2 = (output14329, value6896, value1) := by
  rw [input14329_def, output14329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12041]
  try dsimp only
  rw [child14328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12041_skip, output14328_skip]
  kernel_rfl

theorem node14330_cond_eq
    (child12032 : Flapjack.WordAlloc.removeDeadStructural input12032 value6020 value1 value2 = (output12032, value6020, value1))
    (child14329 : Flapjack.WordAlloc.removeDeadStructural input14329 value6020 value1 value2 = (output14329, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14330 value6020 value1 value2 = (output14330, value6896, value1) := by
  rw [input14330_def, output14330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12032]
  try dsimp only
  rw [child14329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12032_skip, output14329_skip]
  kernel_rfl

theorem node14331_cond_eq
    (child12031 : Flapjack.WordAlloc.removeDeadStructural input12031 value6019 value1 value2 = (output12031, value6020, value1))
    (child14330 : Flapjack.WordAlloc.removeDeadStructural input14330 value6020 value1 value2 = (output14330, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14331 value6019 value1 value2 = (output14331, value6896, value1) := by
  rw [input14331_def, output14331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12031]
  try dsimp only
  rw [child14330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12031_skip, output14330_skip]
  kernel_rfl

theorem node14332_cond_eq
    (child12030 : Flapjack.WordAlloc.removeDeadStructural input12030 value5 value1 value2 = (output12030, value6019, value1))
    (child14331 : Flapjack.WordAlloc.removeDeadStructural input14331 value6019 value1 value2 = (output14331, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14332 value5 value1 value2 = (output14332, value6896, value1) := by
  rw [input14332_def, output14332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12030]
  try dsimp only
  rw [child14331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12030_skip, output14331_skip]
  kernel_rfl

theorem node14333_cond_eq
    (child12027 : Flapjack.WordAlloc.removeDeadStructural input12027 value6013 value1 value2 = (output12027, value5, value1))
    (child14332 : Flapjack.WordAlloc.removeDeadStructural input14332 value5 value1 value2 = (output14332, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14333 value6013 value1 value2 = (output14333, value6896, value1) := by
  rw [input14333_def, output14333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12027]
  try dsimp only
  rw [child14332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12027_skip, output14332_skip]
  kernel_rfl

theorem node14334_cond_eq
    (child12018 : Flapjack.WordAlloc.removeDeadStructural input12018 value6013 value1 value2 = (output12018, value6013, value1))
    (child14333 : Flapjack.WordAlloc.removeDeadStructural input14333 value6013 value1 value2 = (output14333, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14334 value6013 value1 value2 = (output14334, value6896, value1) := by
  rw [input14334_def, output14334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12018]
  try dsimp only
  rw [child14333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12018_skip, output14333_skip]
  kernel_rfl

theorem node14335_cond_eq
    (child12017 : Flapjack.WordAlloc.removeDeadStructural input12017 value6012 value1 value2 = (output12017, value6013, value1))
    (child14334 : Flapjack.WordAlloc.removeDeadStructural input14334 value6013 value1 value2 = (output14334, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14335 value6012 value1 value2 = (output14335, value6896, value1) := by
  rw [input14335_def, output14335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12017]
  try dsimp only
  rw [child14334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12017_skip, output14334_skip]
  kernel_rfl

#print axioms node14335_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
