import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages656.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages656.Parallel
theorem node1024_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value323 value1 value2 = (output746, value323, value1))
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value323 value1 value2 = (output1023, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1024 value323 value1 value2 = (output1024, value394, value1) := by
  rw [input1024_def, output1024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child1023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output1023_skip]
  kernel_rfl

theorem node1025_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value322 value1 value2 = (output745, value323, value1))
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value323 value1 value2 = (output1024, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1025 value322 value1 value2 = (output1025, value394, value1) := by
  rw [input1025_def, output1025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child1024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output1024_skip]
  kernel_rfl

theorem node1026_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value321 value1 value2 = (output744, value322, value1))
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value322 value1 value2 = (output1025, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1026 value321 value1 value2 = (output1026, value394, value1) := by
  rw [input1026_def, output1026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child1025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output1025_skip]
  kernel_rfl

theorem node1027_cond_eq
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value317 value1 value2 = (output743, value321, value1))
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value321 value1 value2 = (output1026, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1027 value317 value1 value2 = (output1027, value394, value1) := by
  rw [input1027_def, output1027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child743]
  try dsimp only
  rw [child1026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output743_skip, output1026_skip]
  kernel_rfl

theorem node1028_cond_eq
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value317 value1 value2 = (output712, value317, value1))
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value317 value1 value2 = (output1027, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1028 value317 value1 value2 = (output1028, value394, value1) := by
  rw [input1028_def, output1028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child712]
  try dsimp only
  rw [child1027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output712_skip, output1027_skip]
  kernel_rfl

theorem node1029_cond_eq
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value316 value1 value2 = (output711, value317, value1))
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value317 value1 value2 = (output1028, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1029 value316 value1 value2 = (output1029, value394, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child711]
  try dsimp only
  rw [child1028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output711_skip, output1028_skip]
  kernel_rfl

theorem node1030_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value315 value1 value2 = (output710, value316, value1))
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value316 value1 value2 = (output1029, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1030 value315 value1 value2 = (output1030, value394, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  try dsimp only
  rw [child1029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output710_skip, output1029_skip]
  kernel_rfl

theorem node1031_cond_eq
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value314 value1 value2 = (output709, value315, value1))
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value315 value1 value2 = (output1030, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1031 value314 value1 value2 = (output1031, value394, value1) := by
  rw [input1031_def, output1031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child709]
  try dsimp only
  rw [child1030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output709_skip, output1030_skip]
  kernel_rfl

theorem node1032_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value313 value1 value2 = (output708, value314, value1))
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value314 value1 value2 = (output1031, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1032 value313 value1 value2 = (output1032, value394, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child1031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output1031_skip]
  kernel_rfl

theorem node1033_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value313 value1 value2 = (output707, value313, value1))
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value313 value1 value2 = (output1032, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1033 value313 value1 value2 = (output1033, value394, value1) := by
  rw [input1033_def, output1033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child1032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output707_skip, output1032_skip]
  kernel_rfl

theorem node1034_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value313 value1 value2 = (output706, value313, value1))
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value313 value1 value2 = (output1033, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1034 value313 value1 value2 = (output1034, value394, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child1033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output706_skip, output1033_skip]
  kernel_rfl

theorem node1035_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value313 value1 value2 = (output705, value313, value1))
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value313 value1 value2 = (output1034, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1035 value313 value1 value2 = (output1035, value394, value1) := by
  rw [input1035_def, output1035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child1034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output705_skip, output1034_skip]
  kernel_rfl

theorem node1036_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value313 value1 value2 = (output704, value313, value1))
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value313 value1 value2 = (output1035, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1036 value313 value1 value2 = (output1036, value394, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child1035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output1035_skip]
  kernel_rfl

theorem node1037_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value312 value1 value2 = (output703, value313, value1))
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value313 value1 value2 = (output1036, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1037 value312 value1 value2 = (output1037, value394, value1) := by
  rw [input1037_def, output1037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child1036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output1036_skip]
  kernel_rfl

theorem node1038_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value311 value1 value2 = (output702, value312, value1))
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value312 value1 value2 = (output1037, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1038 value311 value1 value2 = (output1038, value394, value1) := by
  rw [input1038_def, output1038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  try dsimp only
  rw [child1037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output702_skip, output1037_skip]
  kernel_rfl

theorem node1039_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value310 value1 value2 = (output701, value311, value1))
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value311 value1 value2 = (output1038, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1039 value310 value1 value2 = (output1039, value394, value1) := by
  rw [input1039_def, output1039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  try dsimp only
  rw [child1038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output1038_skip]
  kernel_rfl

theorem node1040_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value309 value1 value2 = (output700, value310, value1))
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value310 value1 value2 = (output1039, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1040 value309 value1 value2 = (output1040, value394, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child1039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output1039_skip]
  kernel_rfl

theorem node1041_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value306 value1 value2 = (output699, value309, value1))
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value309 value1 value2 = (output1040, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1041 value306 value1 value2 = (output1041, value394, value1) := by
  rw [input1041_def, output1041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child1040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output1040_skip]
  kernel_rfl

theorem node1042_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value306 value1 value2 = (output694, value306, value1))
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value306 value1 value2 = (output1041, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1042 value306 value1 value2 = (output1042, value394, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child1041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output1041_skip]
  kernel_rfl

theorem node1043_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value305 value1 value2 = (output693, value306, value1))
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value306 value1 value2 = (output1042, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1043 value305 value1 value2 = (output1043, value394, value1) := by
  rw [input1043_def, output1043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  try dsimp only
  rw [child1042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output693_skip, output1042_skip]
  kernel_rfl

theorem node1044_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value304 value1 value2 = (output692, value305, value1))
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value305 value1 value2 = (output1043, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1044 value304 value1 value2 = (output1044, value394, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child1043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output1043_skip]
  kernel_rfl

theorem node1045_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value300 value1 value2 = (output691, value304, value1))
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value304 value1 value2 = (output1044, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1045 value300 value1 value2 = (output1045, value394, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  try dsimp only
  rw [child1044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output691_skip, output1044_skip]
  kernel_rfl

theorem node1046_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value300 value1 value2 = (output660, value300, value1))
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value300 value1 value2 = (output1045, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1046 value300 value1 value2 = (output1046, value394, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child1045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output1045_skip]
  kernel_rfl

theorem node1047_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value285 value1 value2 = (output659, value300, value1))
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value300 value1 value2 = (output1046, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1047 value285 value1 value2 = (output1047, value394, value1) := by
  rw [input1047_def, output1047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child1046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output1046_skip]
  kernel_rfl

theorem node1048_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value284 value1 value2 = (output630, value285, value1))
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value285 value1 value2 = (output1047, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1048 value284 value1 value2 = (output1048, value394, value1) := by
  rw [input1048_def, output1048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child1047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output1047_skip]
  kernel_rfl

theorem node1049_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value280 value1 value2 = (output629, value284, value1))
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value284 value1 value2 = (output1048, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1049 value280 value1 value2 = (output1049, value394, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child1048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output1048_skip]
  kernel_rfl

theorem node1050_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value280 value1 value2 = (output602, value280, value1))
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value280 value1 value2 = (output1049, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1050 value280 value1 value2 = (output1050, value394, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child1049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output1049_skip]
  kernel_rfl

theorem node1051_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value279 value1 value2 = (output601, value280, value1))
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value280 value1 value2 = (output1050, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1051 value279 value1 value2 = (output1051, value394, value1) := by
  rw [input1051_def, output1051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child1050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output1050_skip]
  kernel_rfl

theorem node1052_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value278 value1 value2 = (output600, value279, value1))
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value279 value1 value2 = (output1051, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1052 value278 value1 value2 = (output1052, value394, value1) := by
  rw [input1052_def, output1052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child1051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output1051_skip]
  kernel_rfl

theorem node1053_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value277 value1 value2 = (output599, value278, value1))
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value278 value1 value2 = (output1052, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1053 value277 value1 value2 = (output1053, value394, value1) := by
  rw [input1053_def, output1053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child1052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output1052_skip]
  kernel_rfl

theorem node1054_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value276 value1 value2 = (output598, value277, value1))
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value277 value1 value2 = (output1053, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1054 value276 value1 value2 = (output1054, value394, value1) := by
  rw [input1054_def, output1054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child1053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output1053_skip]
  kernel_rfl

theorem node1055_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value275 value1 value2 = (output597, value276, value1))
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value276 value1 value2 = (output1054, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1055 value275 value1 value2 = (output1055, value394, value1) := by
  rw [input1055_def, output1055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child597]
  try dsimp only
  rw [child1054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output597_skip, output1054_skip]
  kernel_rfl

theorem node1056_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value274 value1 value2 = (output596, value275, value1))
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value275 value1 value2 = (output1055, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1056 value274 value1 value2 = (output1056, value394, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child1055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output1055_skip]
  kernel_rfl

theorem node1057_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value273 value1 value2 = (output595, value274, value1))
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value274 value1 value2 = (output1056, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1057 value273 value1 value2 = (output1057, value394, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child1056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output1056_skip]
  kernel_rfl

theorem node1058_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value272 value1 value2 = (output594, value273, value1))
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value273 value1 value2 = (output1057, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1058 value272 value1 value2 = (output1058, value394, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child1057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output1057_skip]
  kernel_rfl

theorem node1059_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value269 value1 value2 = (output593, value272, value1))
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value272 value1 value2 = (output1058, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1059 value269 value1 value2 = (output1059, value394, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  try dsimp only
  rw [child1058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output593_skip, output1058_skip]
  kernel_rfl

theorem node1060_cond_eq
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value269 value1 value2 = (output588, value269, value1))
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value269 value1 value2 = (output1059, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1060 value269 value1 value2 = (output1060, value394, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child588]
  try dsimp only
  rw [child1059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output588_skip, output1059_skip]
  kernel_rfl

theorem node1061_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value268 value1 value2 = (output587, value269, value1))
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value269 value1 value2 = (output1060, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1061 value268 value1 value2 = (output1061, value394, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child587]
  try dsimp only
  rw [child1060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output587_skip, output1060_skip]
  kernel_rfl

theorem node1062_cond_eq
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value267 value1 value2 = (output586, value268, value1))
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value268 value1 value2 = (output1061, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1062 value267 value1 value2 = (output1062, value394, value1) := by
  rw [input1062_def, output1062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child586]
  try dsimp only
  rw [child1061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output586_skip, output1061_skip]
  kernel_rfl

theorem node1063_cond_eq
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value263 value1 value2 = (output585, value267, value1))
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value267 value1 value2 = (output1062, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1063 value263 value1 value2 = (output1063, value394, value1) := by
  rw [input1063_def, output1063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child585]
  try dsimp only
  rw [child1062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output585_skip, output1062_skip]
  kernel_rfl

theorem node1064_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value263 value1 value2 = (output554, value263, value1))
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value263 value1 value2 = (output1063, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1064 value263 value1 value2 = (output1064, value394, value1) := by
  rw [input1064_def, output1064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child1063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output1063_skip]
  kernel_rfl

theorem node1065_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value262 value1 value2 = (output553, value263, value1))
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value263 value1 value2 = (output1064, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1065 value262 value1 value2 = (output1065, value394, value1) := by
  rw [input1065_def, output1065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child1064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output1064_skip]
  kernel_rfl

theorem node1066_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value262 value1 value2 = (output552, value262, value1))
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value262 value1 value2 = (output1065, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1066 value262 value1 value2 = (output1066, value394, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child1065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output1065_skip]
  kernel_rfl

theorem node1067_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value261 value1 value2 = (output551, value262, value1))
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value262 value1 value2 = (output1066, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1067 value261 value1 value2 = (output1067, value394, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child1066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output1066_skip]
  kernel_rfl

theorem node1068_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value258 value1 value2 = (output550, value261, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value261 value1 value2 = (output1067, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value258 value1 value2 = (output1068, value394, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child1067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output1067_skip]
  kernel_rfl

theorem node1069_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value258 value1 value2 = (output545, value258, value1))
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value258 value1 value2 = (output1068, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1069 value258 value1 value2 = (output1069, value394, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child1068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output1068_skip]
  kernel_rfl

theorem node1070_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value257 value1 value2 = (output544, value258, value1))
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value258 value1 value2 = (output1069, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1070 value257 value1 value2 = (output1070, value394, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child1069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output1069_skip]
  kernel_rfl

theorem node1071_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value256 value1 value2 = (output543, value257, value1))
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value257 value1 value2 = (output1070, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1071 value256 value1 value2 = (output1071, value394, value1) := by
  rw [input1071_def, output1071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child1070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output1070_skip]
  kernel_rfl

theorem node1072_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value255 value1 value2 = (output542, value256, value1))
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value256 value1 value2 = (output1071, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1072 value255 value1 value2 = (output1072, value394, value1) := by
  rw [input1072_def, output1072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child1071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output1071_skip]
  kernel_rfl

theorem node1073_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value254 value1 value2 = (output541, value255, value1))
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value255 value1 value2 = (output1072, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1073 value254 value1 value2 = (output1073, value394, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child1072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output1072_skip]
  kernel_rfl

theorem node1074_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value254 value1 value2 = (output540, value254, value1))
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value254 value1 value2 = (output1073, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1074 value254 value1 value2 = (output1074, value394, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child1073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output1073_skip]
  kernel_rfl

theorem node1075_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value254 value1 value2 = (output539, value254, value1))
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value254 value1 value2 = (output1074, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1075 value254 value1 value2 = (output1075, value394, value1) := by
  rw [input1075_def, output1075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child1074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output1074_skip]
  kernel_rfl

theorem node1076_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value254 value1 value2 = (output538, value254, value1))
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value254 value1 value2 = (output1075, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1076 value254 value1 value2 = (output1076, value394, value1) := by
  rw [input1076_def, output1076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child1075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output1075_skip]
  kernel_rfl

theorem node1077_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value254 value1 value2 = (output537, value254, value1))
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value254 value1 value2 = (output1076, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1077 value254 value1 value2 = (output1077, value394, value1) := by
  rw [input1077_def, output1077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child1076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output1076_skip]
  kernel_rfl

theorem node1078_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value253 value1 value2 = (output536, value254, value1))
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value254 value1 value2 = (output1077, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1078 value253 value1 value2 = (output1078, value394, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child1077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output1077_skip]
  kernel_rfl

theorem node1079_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value252 value1 value2 = (output535, value253, value1))
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value253 value1 value2 = (output1078, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1079 value252 value1 value2 = (output1079, value394, value1) := by
  rw [input1079_def, output1079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child1078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output1078_skip]
  kernel_rfl

theorem node1080_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value251 value1 value2 = (output534, value252, value1))
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value252 value1 value2 = (output1079, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1080 value251 value1 value2 = (output1080, value394, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child1079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output1079_skip]
  kernel_rfl

theorem node1081_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value250 value1 value2 = (output533, value251, value1))
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value251 value1 value2 = (output1080, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1081 value250 value1 value2 = (output1081, value394, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child1080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output1080_skip]
  kernel_rfl

theorem node1082_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value247 value1 value2 = (output532, value250, value1))
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value250 value1 value2 = (output1081, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1082 value247 value1 value2 = (output1082, value394, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  try dsimp only
  rw [child1081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output1081_skip]
  kernel_rfl

theorem node1083_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value247 value1 value2 = (output527, value247, value1))
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value247 value1 value2 = (output1082, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1083 value247 value1 value2 = (output1083, value394, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child1082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output1082_skip]
  kernel_rfl

theorem node1084_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value246 value1 value2 = (output526, value247, value1))
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value247 value1 value2 = (output1083, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1084 value246 value1 value2 = (output1084, value394, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child1083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output1083_skip]
  kernel_rfl

theorem node1085_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value245 value1 value2 = (output525, value246, value1))
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value246 value1 value2 = (output1084, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1085 value245 value1 value2 = (output1085, value394, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child1084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output1084_skip]
  kernel_rfl

theorem node1086_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value231 value1 value2 = (output524, value245, value1))
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value245 value1 value2 = (output1085, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1086 value231 value1 value2 = (output1086, value394, value1) := by
  rw [input1086_def, output1086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child1085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output1085_skip]
  kernel_rfl

theorem node1087_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value231 value1 value2 = (output449, value231, value1))
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value231 value1 value2 = (output1086, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1087 value231 value1 value2 = (output1087, value394, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child1086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output1086_skip]
  kernel_rfl

theorem node1088_cond_eq
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value230 value1 value2 = (output448, value231, value1))
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value231 value1 value2 = (output1087, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1088 value230 value1 value2 = (output1088, value394, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child448]
  try dsimp only
  rw [child1087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output448_skip, output1087_skip]
  kernel_rfl

theorem node1089_cond_eq
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value229 value1 value2 = (output447, value230, value1))
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value230 value1 value2 = (output1088, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1089 value229 value1 value2 = (output1089, value394, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child447]
  try dsimp only
  rw [child1088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output447_skip, output1088_skip]
  kernel_rfl

theorem node1090_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value228 value1 value2 = (output446, value229, value1))
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value229 value1 value2 = (output1089, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1090 value228 value1 value2 = (output1090, value394, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child1089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output1089_skip]
  kernel_rfl

theorem node1091_cond_eq
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value227 value1 value2 = (output445, value228, value1))
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value228 value1 value2 = (output1090, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1091 value227 value1 value2 = (output1091, value394, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child445]
  try dsimp only
  rw [child1090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output445_skip, output1090_skip]
  kernel_rfl

theorem node1092_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value227 value1 value2 = (output444, value227, value1))
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value227 value1 value2 = (output1091, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1092 value227 value1 value2 = (output1092, value394, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child1091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output1091_skip]
  kernel_rfl

theorem node1093_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value227 value1 value2 = (output443, value227, value1))
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value227 value1 value2 = (output1092, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1093 value227 value1 value2 = (output1093, value394, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child1092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output1092_skip]
  kernel_rfl

theorem node1094_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value227 value1 value2 = (output442, value227, value1))
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value227 value1 value2 = (output1093, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1094 value227 value1 value2 = (output1094, value394, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child1093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output1093_skip]
  kernel_rfl

theorem node1095_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value227 value1 value2 = (output441, value227, value1))
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value227 value1 value2 = (output1094, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1095 value227 value1 value2 = (output1095, value394, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child1094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output1094_skip]
  kernel_rfl

theorem node1096_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value226 value1 value2 = (output440, value227, value1))
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value227 value1 value2 = (output1095, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1096 value226 value1 value2 = (output1096, value394, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child1095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output1095_skip]
  kernel_rfl

theorem node1097_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value225 value1 value2 = (output439, value226, value1))
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value226 value1 value2 = (output1096, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1097 value225 value1 value2 = (output1097, value394, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child1096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output1096_skip]
  kernel_rfl

theorem node1098_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value224 value1 value2 = (output438, value225, value1))
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value225 value1 value2 = (output1097, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1098 value224 value1 value2 = (output1098, value394, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  try dsimp only
  rw [child1097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output438_skip, output1097_skip]
  kernel_rfl

theorem node1099_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value223 value1 value2 = (output437, value224, value1))
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value224 value1 value2 = (output1098, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1099 value223 value1 value2 = (output1099, value394, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child1098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output1098_skip]
  kernel_rfl

theorem node1100_cond_eq
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value220 value1 value2 = (output436, value223, value1))
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value223 value1 value2 = (output1099, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1100 value220 value1 value2 = (output1100, value394, value1) := by
  rw [input1100_def, output1100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child436]
  try dsimp only
  rw [child1099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output436_skip, output1099_skip]
  kernel_rfl

theorem node1101_cond_eq
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value220 value1 value2 = (output431, value220, value1))
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value220 value1 value2 = (output1100, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1101 value220 value1 value2 = (output1101, value394, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child431]
  try dsimp only
  rw [child1100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output431_skip, output1100_skip]
  kernel_rfl

theorem node1102_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value219 value1 value2 = (output430, value220, value1))
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value220 value1 value2 = (output1101, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1102 value219 value1 value2 = (output1102, value394, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child1101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output1101_skip]
  kernel_rfl

theorem node1103_cond_eq
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value218 value1 value2 = (output429, value219, value1))
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value219 value1 value2 = (output1102, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1103 value218 value1 value2 = (output1103, value394, value1) := by
  rw [input1103_def, output1103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child429]
  try dsimp only
  rw [child1102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output429_skip, output1102_skip]
  kernel_rfl

theorem node1104_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value217 value1 value2 = (output428, value218, value1))
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value218 value1 value2 = (output1103, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1104 value217 value1 value2 = (output1104, value394, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child1103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output1103_skip]
  kernel_rfl

theorem node1105_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value216 value1 value2 = (output427, value217, value1))
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value217 value1 value2 = (output1104, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1105 value216 value1 value2 = (output1105, value394, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child1104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output1104_skip]
  kernel_rfl

theorem node1106_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value215 value1 value2 = (output426, value216, value1))
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value216 value1 value2 = (output1105, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1106 value215 value1 value2 = (output1106, value394, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child1105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output1105_skip]
  kernel_rfl

theorem node1107_cond_eq
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value214 value1 value2 = (output425, value215, value1))
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value215 value1 value2 = (output1106, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1107 value214 value1 value2 = (output1107, value394, value1) := by
  rw [input1107_def, output1107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child425]
  try dsimp only
  rw [child1106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output425_skip, output1106_skip]
  kernel_rfl

theorem node1108_cond_eq
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value213 value1 value2 = (output424, value214, value1))
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value214 value1 value2 = (output1107, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1108 value213 value1 value2 = (output1108, value394, value1) := by
  rw [input1108_def, output1108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child424]
  try dsimp only
  rw [child1107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output424_skip, output1107_skip]
  kernel_rfl

theorem node1109_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value212 value1 value2 = (output423, value213, value1))
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value213 value1 value2 = (output1108, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1109 value212 value1 value2 = (output1109, value394, value1) := by
  rw [input1109_def, output1109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child1108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output1108_skip]
  kernel_rfl

theorem node1110_cond_eq
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value212 value1 value2 = (output422, value212, value1))
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value212 value1 value2 = (output1109, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1110 value212 value1 value2 = (output1110, value394, value1) := by
  rw [input1110_def, output1110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child422]
  try dsimp only
  rw [child1109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output422_skip, output1109_skip]
  kernel_rfl

theorem node1111_cond_eq
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value212 value1 value2 = (output421, value212, value1))
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value212 value1 value2 = (output1110, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1111 value212 value1 value2 = (output1111, value394, value1) := by
  rw [input1111_def, output1111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child421]
  try dsimp only
  rw [child1110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output421_skip, output1110_skip]
  kernel_rfl

theorem node1112_cond_eq
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value212 value1 value2 = (output420, value212, value1))
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value212 value1 value2 = (output1111, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1112 value212 value1 value2 = (output1112, value394, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child420]
  try dsimp only
  rw [child1111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output420_skip, output1111_skip]
  kernel_rfl

theorem node1113_cond_eq
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value212 value1 value2 = (output419, value212, value1))
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value212 value1 value2 = (output1112, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1113 value212 value1 value2 = (output1113, value394, value1) := by
  rw [input1113_def, output1113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child419]
  try dsimp only
  rw [child1112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output419_skip, output1112_skip]
  kernel_rfl

theorem node1114_cond_eq
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value211 value1 value2 = (output418, value212, value1))
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value212 value1 value2 = (output1113, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1114 value211 value1 value2 = (output1114, value394, value1) := by
  rw [input1114_def, output1114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child418]
  try dsimp only
  rw [child1113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output418_skip, output1113_skip]
  kernel_rfl

theorem node1115_cond_eq
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value210 value1 value2 = (output417, value211, value1))
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value211 value1 value2 = (output1114, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1115 value210 value1 value2 = (output1115, value394, value1) := by
  rw [input1115_def, output1115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child417]
  try dsimp only
  rw [child1114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output417_skip, output1114_skip]
  kernel_rfl

theorem node1116_cond_eq
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value209 value1 value2 = (output416, value210, value1))
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value210 value1 value2 = (output1115, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1116 value209 value1 value2 = (output1116, value394, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child416]
  try dsimp only
  rw [child1115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output416_skip, output1115_skip]
  kernel_rfl

theorem node1117_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value208 value1 value2 = (output415, value209, value1))
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value209 value1 value2 = (output1116, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1117 value208 value1 value2 = (output1117, value394, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  try dsimp only
  rw [child1116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output415_skip, output1116_skip]
  kernel_rfl

theorem node1118_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value205 value1 value2 = (output414, value208, value1))
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value208 value1 value2 = (output1117, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1118 value205 value1 value2 = (output1118, value394, value1) := by
  rw [input1118_def, output1118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child1117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output1117_skip]
  kernel_rfl

theorem node1119_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value205 value1 value2 = (output409, value205, value1))
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value205 value1 value2 = (output1118, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1119 value205 value1 value2 = (output1119, value394, value1) := by
  rw [input1119_def, output1119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child1118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output1118_skip]
  kernel_rfl

theorem node1120_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value204 value1 value2 = (output408, value205, value1))
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value205 value1 value2 = (output1119, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1120 value204 value1 value2 = (output1120, value394, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child1119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output1119_skip]
  kernel_rfl

theorem node1121_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value203 value1 value2 = (output407, value204, value1))
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value204 value1 value2 = (output1120, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1121 value203 value1 value2 = (output1121, value394, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child1120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output1120_skip]
  kernel_rfl

theorem node1122_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value202 value1 value2 = (output406, value203, value1))
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value203 value1 value2 = (output1121, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1122 value202 value1 value2 = (output1122, value394, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child1121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output1121_skip]
  kernel_rfl

theorem node1123_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value201 value1 value2 = (output405, value202, value1))
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value202 value1 value2 = (output1122, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1123 value201 value1 value2 = (output1123, value394, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child1122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output1122_skip]
  kernel_rfl

theorem node1124_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value200 value1 value2 = (output404, value201, value1))
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value201 value1 value2 = (output1123, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1124 value200 value1 value2 = (output1124, value394, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child1123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output1123_skip]
  kernel_rfl

theorem node1125_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value199 value1 value2 = (output403, value200, value1))
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value200 value1 value2 = (output1124, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1125 value199 value1 value2 = (output1125, value394, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child1124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output1124_skip]
  kernel_rfl

theorem node1126_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value198 value1 value2 = (output402, value199, value1))
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value199 value1 value2 = (output1125, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1126 value198 value1 value2 = (output1126, value394, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child1125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output1125_skip]
  kernel_rfl

theorem node1127_cond_eq
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value197 value1 value2 = (output401, value198, value1))
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value198 value1 value2 = (output1126, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1127 value197 value1 value2 = (output1127, value394, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child401]
  try dsimp only
  rw [child1126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output401_skip, output1126_skip]
  kernel_rfl

theorem node1128_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value197 value1 value2 = (output400, value197, value1))
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value197 value1 value2 = (output1127, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1128 value197 value1 value2 = (output1128, value394, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child1127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output1127_skip]
  kernel_rfl

theorem node1129_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value197 value1 value2 = (output399, value197, value1))
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value197 value1 value2 = (output1128, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1129 value197 value1 value2 = (output1129, value394, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child1128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output1128_skip]
  kernel_rfl

theorem node1130_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value197 value1 value2 = (output398, value197, value1))
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value197 value1 value2 = (output1129, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1130 value197 value1 value2 = (output1130, value394, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child1129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output1129_skip]
  kernel_rfl

theorem node1131_cond_eq
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value197 value1 value2 = (output397, value197, value1))
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value197 value1 value2 = (output1130, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1131 value197 value1 value2 = (output1131, value394, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child397]
  try dsimp only
  rw [child1130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output397_skip, output1130_skip]
  kernel_rfl

theorem node1132_cond_eq
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value196 value1 value2 = (output396, value197, value1))
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value197 value1 value2 = (output1131, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1132 value196 value1 value2 = (output1132, value394, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child396]
  try dsimp only
  rw [child1131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output396_skip, output1131_skip]
  kernel_rfl

theorem node1133_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value195 value1 value2 = (output395, value196, value1))
    (child1132 : Flapjack.WordAlloc.removeDeadStructural input1132 value196 value1 value2 = (output1132, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1133 value195 value1 value2 = (output1133, value394, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child1132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output1132_skip]
  kernel_rfl

theorem node1134_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value194 value1 value2 = (output394, value195, value1))
    (child1133 : Flapjack.WordAlloc.removeDeadStructural input1133 value195 value1 value2 = (output1133, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1134 value194 value1 value2 = (output1134, value394, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child1133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output1133_skip]
  kernel_rfl

theorem node1135_cond_eq
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value193 value1 value2 = (output393, value194, value1))
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value194 value1 value2 = (output1134, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1135 value193 value1 value2 = (output1135, value394, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child393]
  try dsimp only
  rw [child1134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output393_skip, output1134_skip]
  kernel_rfl

theorem node1136_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value190 value1 value2 = (output392, value193, value1))
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value193 value1 value2 = (output1135, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1136 value190 value1 value2 = (output1136, value394, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  try dsimp only
  rw [child1135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output392_skip, output1135_skip]
  kernel_rfl

theorem node1137_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value190 value1 value2 = (output387, value190, value1))
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value190 value1 value2 = (output1136, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1137 value190 value1 value2 = (output1137, value394, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child1136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output1136_skip]
  kernel_rfl

theorem node1138_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value188 value1 value2 = (output386, value190, value1))
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value190 value1 value2 = (output1137, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1138 value188 value1 value2 = (output1138, value394, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child1137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output1137_skip]
  kernel_rfl

theorem node1139_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value188 value1 value2 = (output381, value188, value1))
    (child1138 : Flapjack.WordAlloc.removeDeadStructural input1138 value188 value1 value2 = (output1138, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1139 value188 value1 value2 = (output1139, value394, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child1138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output1138_skip]
  kernel_rfl

theorem node1140_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value188 value1 value2 = (output380, value188, value1))
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value188 value1 value2 = (output1139, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1140 value188 value1 value2 = (output1140, value394, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child1139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output1139_skip]
  kernel_rfl

theorem node1141_cond_eq
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value187 value1 value2 = (output379, value188, value1))
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value188 value1 value2 = (output1140, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1141 value187 value1 value2 = (output1141, value394, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child379]
  try dsimp only
  rw [child1140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output379_skip, output1140_skip]
  kernel_rfl

theorem node1142_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value184 value1 value2 = (output378, value187, value1))
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value187 value1 value2 = (output1141, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1142 value184 value1 value2 = (output1142, value394, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child1141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output1141_skip]
  kernel_rfl

theorem node1143_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value184 value1 value2 = (output373, value184, value1))
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value184 value1 value2 = (output1142, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1143 value184 value1 value2 = (output1143, value394, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child1142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output1142_skip]
  kernel_rfl

theorem node1144_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value183 value1 value2 = (output372, value184, value1))
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value184 value1 value2 = (output1143, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1144 value183 value1 value2 = (output1144, value394, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child1143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output1143_skip]
  kernel_rfl

theorem node1145_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value182 value1 value2 = (output371, value183, value1))
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value183 value1 value2 = (output1144, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1145 value182 value1 value2 = (output1145, value394, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child1144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output1144_skip]
  kernel_rfl

theorem node1146_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value181 value1 value2 = (output370, value182, value1))
    (child1145 : Flapjack.WordAlloc.removeDeadStructural input1145 value182 value1 value2 = (output1145, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1146 value181 value1 value2 = (output1146, value394, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child1145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output1145_skip]
  kernel_rfl

theorem node1147_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value180 value1 value2 = (output369, value181, value1))
    (child1146 : Flapjack.WordAlloc.removeDeadStructural input1146 value181 value1 value2 = (output1146, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1147 value180 value1 value2 = (output1147, value394, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child1146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output1146_skip]
  kernel_rfl

theorem node1148_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value179 value1 value2 = (output368, value180, value1))
    (child1147 : Flapjack.WordAlloc.removeDeadStructural input1147 value180 value1 value2 = (output1147, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1148 value179 value1 value2 = (output1148, value394, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child1147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output1147_skip]
  kernel_rfl

theorem node1149_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value179 value1 value2 = (output367, value179, value1))
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value179 value1 value2 = (output1148, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1149 value179 value1 value2 = (output1149, value394, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child1148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output1148_skip]
  kernel_rfl

theorem node1150_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value179 value1 value2 = (output366, value179, value1))
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value179 value1 value2 = (output1149, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1150 value179 value1 value2 = (output1150, value394, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child1149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output1149_skip]
  kernel_rfl

theorem node1151_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value179 value1 value2 = (output365, value179, value1))
    (child1150 : Flapjack.WordAlloc.removeDeadStructural input1150 value179 value1 value2 = (output1150, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1151 value179 value1 value2 = (output1151, value394, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child1150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output1150_skip]
  kernel_rfl

theorem node1152_cond_eq
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value179 value1 value2 = (output364, value179, value1))
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value179 value1 value2 = (output1151, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1152 value179 value1 value2 = (output1152, value394, value1) := by
  rw [input1152_def, output1152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child364]
  try dsimp only
  rw [child1151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output364_skip, output1151_skip]
  kernel_rfl

theorem node1153_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value179 value1 value2 = (output363, value179, value1))
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value179 value1 value2 = (output1152, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1153 value179 value1 value2 = (output1153, value394, value1) := by
  rw [input1153_def, output1153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child1152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output1152_skip]
  kernel_rfl

theorem node1154_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value179 value1 value2 = (output362, value179, value1))
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value179 value1 value2 = (output1153, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1154 value179 value1 value2 = (output1154, value394, value1) := by
  rw [input1154_def, output1154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child1153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output1153_skip]
  kernel_rfl

theorem node1155_cond_eq
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value179 value1 value2 = (output361, value179, value1))
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value179 value1 value2 = (output1154, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1155 value179 value1 value2 = (output1155, value394, value1) := by
  rw [input1155_def, output1155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child361]
  try dsimp only
  rw [child1154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output361_skip, output1154_skip]
  kernel_rfl

theorem node1156_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value179 value1 value2 = (output360, value179, value1))
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value179 value1 value2 = (output1155, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1156 value179 value1 value2 = (output1156, value394, value1) := by
  rw [input1156_def, output1156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child1155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output1155_skip]
  kernel_rfl

theorem node1157_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value178 value1 value2 = (output359, value179, value1))
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value179 value1 value2 = (output1156, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1157 value178 value1 value2 = (output1157, value394, value1) := by
  rw [input1157_def, output1157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child1156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output1156_skip]
  kernel_rfl

theorem node1158_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value177 value1 value2 = (output358, value178, value1))
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value178 value1 value2 = (output1157, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1158 value177 value1 value2 = (output1158, value394, value1) := by
  rw [input1158_def, output1158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child1157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output1157_skip]
  kernel_rfl

theorem node1159_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value176 value1 value2 = (output357, value177, value1))
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value177 value1 value2 = (output1158, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1159 value176 value1 value2 = (output1159, value394, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child1158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output1158_skip]
  kernel_rfl

theorem node1160_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value175 value1 value2 = (output356, value176, value1))
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value176 value1 value2 = (output1159, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1160 value175 value1 value2 = (output1160, value394, value1) := by
  rw [input1160_def, output1160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child1159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output1159_skip]
  kernel_rfl

theorem node1161_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value174 value1 value2 = (output355, value175, value1))
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value175 value1 value2 = (output1160, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1161 value174 value1 value2 = (output1161, value394, value1) := by
  rw [input1161_def, output1161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child1160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output1160_skip]
  kernel_rfl

theorem node1162_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value173 value1 value2 = (output354, value174, value1))
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value174 value1 value2 = (output1161, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1162 value173 value1 value2 = (output1162, value394, value1) := by
  rw [input1162_def, output1162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child1161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output1161_skip]
  kernel_rfl

theorem node1163_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value172 value1 value2 = (output353, value173, value1))
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value173 value1 value2 = (output1162, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1163 value172 value1 value2 = (output1163, value394, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child1162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output1162_skip]
  kernel_rfl

theorem node1164_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value171 value1 value2 = (output352, value172, value1))
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value172 value1 value2 = (output1163, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1164 value171 value1 value2 = (output1164, value394, value1) := by
  rw [input1164_def, output1164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child1163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output1163_skip]
  kernel_rfl

theorem node1165_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value170 value1 value2 = (output351, value171, value1))
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value171 value1 value2 = (output1164, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1165 value170 value1 value2 = (output1165, value394, value1) := by
  rw [input1165_def, output1165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  try dsimp only
  rw [child1164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output351_skip, output1164_skip]
  kernel_rfl

theorem node1166_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value169 value1 value2 = (output350, value170, value1))
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value170 value1 value2 = (output1165, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1166 value169 value1 value2 = (output1166, value394, value1) := by
  rw [input1166_def, output1166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child1165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output1165_skip]
  kernel_rfl

theorem node1167_cond_eq
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value168 value1 value2 = (output349, value169, value1))
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value169 value1 value2 = (output1166, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1167 value168 value1 value2 = (output1167, value394, value1) := by
  rw [input1167_def, output1167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child349]
  try dsimp only
  rw [child1166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output349_skip, output1166_skip]
  kernel_rfl

theorem node1168_cond_eq
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value167 value1 value2 = (output348, value168, value1))
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value168 value1 value2 = (output1167, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1168 value167 value1 value2 = (output1168, value394, value1) := by
  rw [input1168_def, output1168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child348]
  try dsimp only
  rw [child1167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output348_skip, output1167_skip]
  kernel_rfl

theorem node1169_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value166 value1 value2 = (output347, value167, value1))
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value167 value1 value2 = (output1168, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1169 value166 value1 value2 = (output1169, value394, value1) := by
  rw [input1169_def, output1169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child1168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output1168_skip]
  kernel_rfl

theorem node1170_cond_eq
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value165 value1 value2 = (output346, value166, value1))
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value166 value1 value2 = (output1169, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1170 value165 value1 value2 = (output1170, value394, value1) := by
  rw [input1170_def, output1170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child346]
  try dsimp only
  rw [child1169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output346_skip, output1169_skip]
  kernel_rfl

theorem node1171_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value164 value1 value2 = (output345, value165, value1))
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value165 value1 value2 = (output1170, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1171 value164 value1 value2 = (output1171, value394, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child1170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output1170_skip]
  kernel_rfl

theorem node1172_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value163 value1 value2 = (output344, value164, value1))
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value164 value1 value2 = (output1171, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1172 value163 value1 value2 = (output1172, value394, value1) := by
  rw [input1172_def, output1172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child1171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output1171_skip]
  kernel_rfl

theorem node1173_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value162 value1 value2 = (output343, value163, value1))
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value163 value1 value2 = (output1172, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1173 value162 value1 value2 = (output1173, value394, value1) := by
  rw [input1173_def, output1173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child1172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output1172_skip]
  kernel_rfl

theorem node1174_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value161 value1 value2 = (output342, value162, value1))
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value162 value1 value2 = (output1173, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1174 value161 value1 value2 = (output1174, value394, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child1173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output1173_skip]
  kernel_rfl

theorem node1175_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value160 value1 value2 = (output341, value161, value1))
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value161 value1 value2 = (output1174, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1175 value160 value1 value2 = (output1175, value394, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child1174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output1174_skip]
  kernel_rfl

theorem node1176_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value159 value1 value2 = (output340, value160, value1))
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value160 value1 value2 = (output1175, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1176 value159 value1 value2 = (output1176, value394, value1) := by
  rw [input1176_def, output1176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child1175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output1175_skip]
  kernel_rfl

theorem node1177_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value156 value1 value2 = (output339, value159, value1))
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value159 value1 value2 = (output1176, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1177 value156 value1 value2 = (output1177, value394, value1) := by
  rw [input1177_def, output1177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child1176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output1176_skip]
  kernel_rfl

theorem node1178_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value156 value1 value2 = (output334, value156, value1))
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value156 value1 value2 = (output1177, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1178 value156 value1 value2 = (output1178, value394, value1) := by
  rw [input1178_def, output1178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child1177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output1177_skip]
  kernel_rfl

theorem node1179_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value154 value1 value2 = (output333, value156, value1))
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value156 value1 value2 = (output1178, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1179 value154 value1 value2 = (output1179, value394, value1) := by
  rw [input1179_def, output1179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child1178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output1178_skip]
  kernel_rfl

theorem node1180_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value152 value1 value2 = (output330, value154, value1))
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value154 value1 value2 = (output1179, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1180 value152 value1 value2 = (output1180, value394, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child1179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output1179_skip]
  kernel_rfl

theorem node1181_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value150 value1 value2 = (output327, value152, value1))
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value152 value1 value2 = (output1180, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1181 value150 value1 value2 = (output1181, value394, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child1180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output1180_skip]
  kernel_rfl

theorem node1182_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value148 value1 value2 = (output324, value150, value1))
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value150 value1 value2 = (output1181, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1182 value148 value1 value2 = (output1182, value394, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child1181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output1181_skip]
  kernel_rfl

theorem node1183_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value147 value1 value2 = (output321, value148, value1))
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value148 value1 value2 = (output1182, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1183 value147 value1 value2 = (output1183, value394, value1) := by
  rw [input1183_def, output1183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child1182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output1182_skip]
  kernel_rfl

theorem node1184_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value146 value1 value2 = (output320, value147, value1))
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value147 value1 value2 = (output1183, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1184 value146 value1 value2 = (output1184, value394, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child1183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output1183_skip]
  kernel_rfl

theorem node1185_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value145 value1 value2 = (output319, value146, value1))
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value146 value1 value2 = (output1184, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1185 value145 value1 value2 = (output1185, value394, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child1184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output1184_skip]
  kernel_rfl

theorem node1186_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value144 value1 value2 = (output318, value145, value1))
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value145 value1 value2 = (output1185, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1186 value144 value1 value2 = (output1186, value394, value1) := by
  rw [input1186_def, output1186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  try dsimp only
  rw [child1185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output1185_skip]
  kernel_rfl

theorem node1187_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value141 value1 value2 = (output317, value144, value1))
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value144 value1 value2 = (output1186, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1187 value141 value1 value2 = (output1187, value394, value1) := by
  rw [input1187_def, output1187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  try dsimp only
  rw [child1186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output1186_skip]
  kernel_rfl

theorem node1188_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value141 value1 value2 = (output312, value141, value1))
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value141 value1 value2 = (output1187, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1188 value141 value1 value2 = (output1188, value394, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child1187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output1187_skip]
  kernel_rfl

theorem node1189_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value140 value1 value2 = (output311, value141, value1))
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value141 value1 value2 = (output1188, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1189 value140 value1 value2 = (output1189, value394, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child1188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output1188_skip]
  kernel_rfl

theorem node1190_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value139 value1 value2 = (output310, value140, value1))
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value140 value1 value2 = (output1189, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1190 value139 value1 value2 = (output1190, value394, value1) := by
  rw [input1190_def, output1190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child1189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output1189_skip]
  kernel_rfl

theorem node1191_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value109 value1 value2 = (output309, value139, value1))
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value139 value1 value2 = (output1190, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1191 value109 value1 value2 = (output1191, value394, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child1190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output1190_skip]
  kernel_rfl

theorem node1192_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value109 value1 value2 = (output224, value109, value1))
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value109 value1 value2 = (output1191, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1192 value109 value1 value2 = (output1192, value394, value1) := by
  rw [input1192_def, output1192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child1191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output1191_skip]
  kernel_rfl

theorem node1193_cond_eq
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value108 value1 value2 = (output223, value109, value1))
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value109 value1 value2 = (output1192, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1193 value108 value1 value2 = (output1193, value394, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child223]
  try dsimp only
  rw [child1192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output223_skip, output1192_skip]
  kernel_rfl

theorem node1194_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value107 value1 value2 = (output222, value108, value1))
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value108 value1 value2 = (output1193, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1194 value107 value1 value2 = (output1194, value394, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child1193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output1193_skip]
  kernel_rfl

theorem node1195_cond_eq
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value106 value1 value2 = (output221, value107, value1))
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value107 value1 value2 = (output1194, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1195 value106 value1 value2 = (output1195, value394, value1) := by
  rw [input1195_def, output1195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child221]
  try dsimp only
  rw [child1194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output221_skip, output1194_skip]
  kernel_rfl

theorem node1196_cond_eq
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value105 value1 value2 = (output220, value106, value1))
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value106 value1 value2 = (output1195, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1196 value105 value1 value2 = (output1196, value394, value1) := by
  rw [input1196_def, output1196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child220]
  try dsimp only
  rw [child1195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output220_skip, output1195_skip]
  kernel_rfl

theorem node1197_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value102 value1 value2 = (output219, value105, value1))
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value105 value1 value2 = (output1196, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1197 value102 value1 value2 = (output1197, value394, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child1196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output1196_skip]
  kernel_rfl

theorem node1198_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value102 value1 value2 = (output214, value102, value1))
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value102 value1 value2 = (output1197, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1198 value102 value1 value2 = (output1198, value394, value1) := by
  rw [input1198_def, output1198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child1197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output1197_skip]
  kernel_rfl

theorem node1199_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value100 value1 value2 = (output213, value102, value1))
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value102 value1 value2 = (output1198, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1199 value100 value1 value2 = (output1199, value394, value1) := by
  rw [input1199_def, output1199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child1198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output1198_skip]
  kernel_rfl

theorem node1200_cond_eq
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value98 value1 value2 = (output210, value100, value1))
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value100 value1 value2 = (output1199, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1200 value98 value1 value2 = (output1200, value394, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child210]
  try dsimp only
  rw [child1199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output210_skip, output1199_skip]
  kernel_rfl

theorem node1201_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value96 value1 value2 = (output207, value98, value1))
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value98 value1 value2 = (output1200, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1201 value96 value1 value2 = (output1201, value394, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child1200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output1200_skip]
  kernel_rfl

theorem node1202_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value94 value1 value2 = (output204, value96, value1))
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value96 value1 value2 = (output1201, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1202 value94 value1 value2 = (output1202, value394, value1) := by
  rw [input1202_def, output1202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child1201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output1201_skip]
  kernel_rfl

theorem node1203_cond_eq
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value93 value1 value2 = (output201, value94, value1))
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value94 value1 value2 = (output1202, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1203 value93 value1 value2 = (output1203, value394, value1) := by
  rw [input1203_def, output1203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child201]
  try dsimp only
  rw [child1202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output201_skip, output1202_skip]
  kernel_rfl

theorem node1204_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value90 value1 value2 = (output200, value93, value1))
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value93 value1 value2 = (output1203, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1204 value90 value1 value2 = (output1204, value394, value1) := by
  rw [input1204_def, output1204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  try dsimp only
  rw [child1203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output1203_skip]
  kernel_rfl

theorem node1205_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value90 value1 value2 = (output195, value90, value1))
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value90 value1 value2 = (output1204, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1205 value90 value1 value2 = (output1205, value394, value1) := by
  rw [input1205_def, output1205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  try dsimp only
  rw [child1204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output1204_skip]
  kernel_rfl

theorem node1206_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value89 value1 value2 = (output194, value90, value1))
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value90 value1 value2 = (output1205, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1206 value89 value1 value2 = (output1206, value394, value1) := by
  rw [input1206_def, output1206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child1205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output194_skip, output1205_skip]
  kernel_rfl

theorem node1207_cond_eq
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value88 value1 value2 = (output193, value89, value1))
    (child1206 : Flapjack.WordAlloc.removeDeadStructural input1206 value89 value1 value2 = (output1206, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1207 value88 value1 value2 = (output1207, value394, value1) := by
  rw [input1207_def, output1207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child193]
  try dsimp only
  rw [child1206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output193_skip, output1206_skip]
  kernel_rfl

theorem node1208_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value87 value1 value2 = (output192, value88, value1))
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value88 value1 value2 = (output1207, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1208 value87 value1 value2 = (output1208, value394, value1) := by
  rw [input1208_def, output1208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child192]
  try dsimp only
  rw [child1207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output192_skip, output1207_skip]
  kernel_rfl

theorem node1209_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value86 value1 value2 = (output191, value87, value1))
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value87 value1 value2 = (output1208, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1209 value86 value1 value2 = (output1209, value394, value1) := by
  rw [input1209_def, output1209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child1208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output1208_skip]
  kernel_rfl

theorem node1210_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value85 value1 value2 = (output190, value86, value1))
    (child1209 : Flapjack.WordAlloc.removeDeadStructural input1209 value86 value1 value2 = (output1209, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1210 value85 value1 value2 = (output1210, value394, value1) := by
  rw [input1210_def, output1210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child1209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output1209_skip]
  kernel_rfl

theorem node1211_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value84 value1 value2 = (output189, value85, value1))
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value85 value1 value2 = (output1210, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1211 value84 value1 value2 = (output1211, value394, value1) := by
  rw [input1211_def, output1211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child1210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output1210_skip]
  kernel_rfl

theorem node1212_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value83 value1 value2 = (output188, value84, value1))
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value84 value1 value2 = (output1211, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1212 value83 value1 value2 = (output1212, value394, value1) := by
  rw [input1212_def, output1212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child1211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output1211_skip]
  kernel_rfl

theorem node1213_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value82 value1 value2 = (output187, value83, value1))
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value83 value1 value2 = (output1212, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1213 value82 value1 value2 = (output1213, value394, value1) := by
  rw [input1213_def, output1213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  try dsimp only
  rw [child1212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output187_skip, output1212_skip]
  kernel_rfl

theorem node1214_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value79 value1 value2 = (output186, value82, value1))
    (child1213 : Flapjack.WordAlloc.removeDeadStructural input1213 value82 value1 value2 = (output1213, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1214 value79 value1 value2 = (output1214, value394, value1) := by
  rw [input1214_def, output1214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child1213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output1213_skip]
  kernel_rfl

theorem node1215_cond_eq
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value79 value1 value2 = (output181, value79, value1))
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value79 value1 value2 = (output1214, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1215 value79 value1 value2 = (output1215, value394, value1) := by
  rw [input1215_def, output1215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child181]
  try dsimp only
  rw [child1214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output181_skip, output1214_skip]
  kernel_rfl

theorem node1216_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value78 value1 value2 = (output180, value79, value1))
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value79 value1 value2 = (output1215, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1216 value78 value1 value2 = (output1216, value394, value1) := by
  rw [input1216_def, output1216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child1215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output1215_skip]
  kernel_rfl

theorem node1217_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value77 value1 value2 = (output179, value78, value1))
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value78 value1 value2 = (output1216, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1217 value77 value1 value2 = (output1217, value394, value1) := by
  rw [input1217_def, output1217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child1216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output1216_skip]
  kernel_rfl

theorem node1218_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value76 value1 value2 = (output178, value77, value1))
    (child1217 : Flapjack.WordAlloc.removeDeadStructural input1217 value77 value1 value2 = (output1217, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1218 value76 value1 value2 = (output1218, value394, value1) := by
  rw [input1218_def, output1218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child1217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output1217_skip]
  kernel_rfl

theorem node1219_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value75 value1 value2 = (output177, value76, value1))
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value76 value1 value2 = (output1218, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1219 value75 value1 value2 = (output1219, value394, value1) := by
  rw [input1219_def, output1219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child1218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output1218_skip]
  kernel_rfl

theorem node1220_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value74 value1 value2 = (output176, value75, value1))
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value75 value1 value2 = (output1219, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1220 value74 value1 value2 = (output1220, value394, value1) := by
  rw [input1220_def, output1220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child1219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output1219_skip]
  kernel_rfl

theorem node1221_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value73 value1 value2 = (output175, value74, value1))
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value74 value1 value2 = (output1220, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1221 value73 value1 value2 = (output1221, value394, value1) := by
  rw [input1221_def, output1221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child1220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output1220_skip]
  kernel_rfl

theorem node1222_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value72 value1 value2 = (output174, value73, value1))
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value73 value1 value2 = (output1221, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1222 value72 value1 value2 = (output1222, value394, value1) := by
  rw [input1222_def, output1222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child1221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output1221_skip]
  kernel_rfl

theorem node1223_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value71 value1 value2 = (output173, value72, value1))
    (child1222 : Flapjack.WordAlloc.removeDeadStructural input1222 value72 value1 value2 = (output1222, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1223 value71 value1 value2 = (output1223, value394, value1) := by
  rw [input1223_def, output1223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  try dsimp only
  rw [child1222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output173_skip, output1222_skip]
  kernel_rfl

theorem node1224_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value68 value1 value2 = (output172, value71, value1))
    (child1223 : Flapjack.WordAlloc.removeDeadStructural input1223 value71 value1 value2 = (output1223, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1224 value68 value1 value2 = (output1224, value394, value1) := by
  rw [input1224_def, output1224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child1223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output172_skip, output1223_skip]
  kernel_rfl

theorem node1225_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value68 value1 value2 = (output167, value68, value1))
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value68 value1 value2 = (output1224, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1225 value68 value1 value2 = (output1225, value394, value1) := by
  rw [input1225_def, output1225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child1224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output1224_skip]
  kernel_rfl

theorem node1226_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value67 value1 value2 = (output166, value68, value1))
    (child1225 : Flapjack.WordAlloc.removeDeadStructural input1225 value68 value1 value2 = (output1225, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1226 value67 value1 value2 = (output1226, value394, value1) := by
  rw [input1226_def, output1226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  try dsimp only
  rw [child1225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output1225_skip]
  kernel_rfl

theorem node1227_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value66 value1 value2 = (output165, value67, value1))
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value67 value1 value2 = (output1226, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1227 value66 value1 value2 = (output1227, value394, value1) := by
  rw [input1227_def, output1227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child1226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output1226_skip]
  kernel_rfl

theorem node1228_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value62 value1 value2 = (output164, value66, value1))
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value66 value1 value2 = (output1227, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1228 value62 value1 value2 = (output1228, value394, value1) := by
  rw [input1228_def, output1228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child1227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output1227_skip]
  kernel_rfl

theorem node1229_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value62 value1 value2 = (output133, value62, value1))
    (child1228 : Flapjack.WordAlloc.removeDeadStructural input1228 value62 value1 value2 = (output1228, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1229 value62 value1 value2 = (output1229, value394, value1) := by
  rw [input1229_def, output1229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child1228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output1228_skip]
  kernel_rfl

theorem node1230_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value61 value1 value2 = (output132, value62, value1))
    (child1229 : Flapjack.WordAlloc.removeDeadStructural input1229 value62 value1 value2 = (output1229, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1230 value61 value1 value2 = (output1230, value394, value1) := by
  rw [input1230_def, output1230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child1229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output1229_skip]
  kernel_rfl

theorem node1231_cond_eq
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value60 value1 value2 = (output131, value61, value1))
    (child1230 : Flapjack.WordAlloc.removeDeadStructural input1230 value61 value1 value2 = (output1230, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1231 value60 value1 value2 = (output1231, value394, value1) := by
  rw [input1231_def, output1231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child131]
  try dsimp only
  rw [child1230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output131_skip, output1230_skip]
  kernel_rfl

theorem node1232_cond_eq
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value59 value1 value2 = (output130, value60, value1))
    (child1231 : Flapjack.WordAlloc.removeDeadStructural input1231 value60 value1 value2 = (output1231, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1232 value59 value1 value2 = (output1232, value394, value1) := by
  rw [input1232_def, output1232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child130]
  try dsimp only
  rw [child1231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output130_skip, output1231_skip]
  kernel_rfl

theorem node1233_cond_eq
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value58 value1 value2 = (output129, value59, value1))
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value59 value1 value2 = (output1232, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1233 value58 value1 value2 = (output1233, value394, value1) := by
  rw [input1233_def, output1233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child129]
  try dsimp only
  rw [child1232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output129_skip, output1232_skip]
  kernel_rfl

theorem node1234_cond_eq
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value58 value1 value2 = (output128, value58, value1))
    (child1233 : Flapjack.WordAlloc.removeDeadStructural input1233 value58 value1 value2 = (output1233, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1234 value58 value1 value2 = (output1234, value394, value1) := by
  rw [input1234_def, output1234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child128]
  try dsimp only
  rw [child1233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output128_skip, output1233_skip]
  kernel_rfl

theorem node1235_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value58 value1 value2 = (output127, value58, value1))
    (child1234 : Flapjack.WordAlloc.removeDeadStructural input1234 value58 value1 value2 = (output1234, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1235 value58 value1 value2 = (output1235, value394, value1) := by
  rw [input1235_def, output1235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child1234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output127_skip, output1234_skip]
  kernel_rfl

theorem node1236_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value58 value1 value2 = (output126, value58, value1))
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value58 value1 value2 = (output1235, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1236 value58 value1 value2 = (output1236, value394, value1) := by
  rw [input1236_def, output1236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child1235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output1235_skip]
  kernel_rfl

theorem node1237_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value58 value1 value2 = (output125, value58, value1))
    (child1236 : Flapjack.WordAlloc.removeDeadStructural input1236 value58 value1 value2 = (output1236, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1237 value58 value1 value2 = (output1237, value394, value1) := by
  rw [input1237_def, output1237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child1236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output1236_skip]
  kernel_rfl

theorem node1238_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value57 value1 value2 = (output124, value58, value1))
    (child1237 : Flapjack.WordAlloc.removeDeadStructural input1237 value58 value1 value2 = (output1237, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1238 value57 value1 value2 = (output1238, value394, value1) := by
  rw [input1238_def, output1238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child1237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output1237_skip]
  kernel_rfl

theorem node1239_cond_eq
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value56 value1 value2 = (output123, value57, value1))
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value57 value1 value2 = (output1238, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1239 value56 value1 value2 = (output1239, value394, value1) := by
  rw [input1239_def, output1239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child123]
  try dsimp only
  rw [child1238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output123_skip, output1238_skip]
  kernel_rfl

theorem node1240_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value55 value1 value2 = (output122, value56, value1))
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value56 value1 value2 = (output1239, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1240 value55 value1 value2 = (output1240, value394, value1) := by
  rw [input1240_def, output1240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  try dsimp only
  rw [child1239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output122_skip, output1239_skip]
  kernel_rfl

theorem node1241_cond_eq
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value54 value1 value2 = (output121, value55, value1))
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value55 value1 value2 = (output1240, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1241 value54 value1 value2 = (output1241, value394, value1) := by
  rw [input1241_def, output1241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child121]
  try dsimp only
  rw [child1240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output121_skip, output1240_skip]
  kernel_rfl

theorem node1242_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value51 value1 value2 = (output120, value54, value1))
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value54 value1 value2 = (output1241, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1242 value51 value1 value2 = (output1242, value394, value1) := by
  rw [input1242_def, output1242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child1241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output1241_skip]
  kernel_rfl

theorem node1243_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value51 value1 value2 = (output115, value51, value1))
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value51 value1 value2 = (output1242, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1243 value51 value1 value2 = (output1243, value394, value1) := by
  rw [input1243_def, output1243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child1242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output1242_skip]
  kernel_rfl

theorem node1244_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value50 value1 value2 = (output114, value51, value1))
    (child1243 : Flapjack.WordAlloc.removeDeadStructural input1243 value51 value1 value2 = (output1243, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1244 value50 value1 value2 = (output1244, value394, value1) := by
  rw [input1244_def, output1244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  try dsimp only
  rw [child1243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output114_skip, output1243_skip]
  kernel_rfl

theorem node1245_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value49 value1 value2 = (output113, value50, value1))
    (child1244 : Flapjack.WordAlloc.removeDeadStructural input1244 value50 value1 value2 = (output1244, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1245 value49 value1 value2 = (output1245, value394, value1) := by
  rw [input1245_def, output1245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child1244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output1244_skip]
  kernel_rfl

theorem node1246_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value45 value1 value2 = (output112, value49, value1))
    (child1245 : Flapjack.WordAlloc.removeDeadStructural input1245 value49 value1 value2 = (output1245, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1246 value45 value1 value2 = (output1246, value394, value1) := by
  rw [input1246_def, output1246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child1245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output112_skip, output1245_skip]
  kernel_rfl

theorem node1247_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value45 value1 value2 = (output81, value45, value1))
    (child1246 : Flapjack.WordAlloc.removeDeadStructural input1246 value45 value1 value2 = (output1246, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1247 value45 value1 value2 = (output1247, value394, value1) := by
  rw [input1247_def, output1247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child1246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output1246_skip]
  kernel_rfl

theorem node1248_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value44 value1 value2 = (output80, value45, value1))
    (child1247 : Flapjack.WordAlloc.removeDeadStructural input1247 value45 value1 value2 = (output1247, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1248 value44 value1 value2 = (output1248, value394, value1) := by
  rw [input1248_def, output1248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child1247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output1247_skip]
  kernel_rfl

theorem node1249_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value43 value1 value2 = (output79, value44, value1))
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value44 value1 value2 = (output1248, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1249 value43 value1 value2 = (output1249, value394, value1) := by
  rw [input1249_def, output1249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child1248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output79_skip, output1248_skip]
  kernel_rfl

theorem node1250_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value42 value1 value2 = (output78, value43, value1))
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value43 value1 value2 = (output1249, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1250 value42 value1 value2 = (output1250, value394, value1) := by
  rw [input1250_def, output1250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child1249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output1249_skip]
  kernel_rfl

theorem node1251_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value41 value1 value2 = (output77, value42, value1))
    (child1250 : Flapjack.WordAlloc.removeDeadStructural input1250 value42 value1 value2 = (output1250, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1251 value41 value1 value2 = (output1251, value394, value1) := by
  rw [input1251_def, output1251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child1250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output1250_skip]
  kernel_rfl

theorem node1252_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value40 value1 value2 = (output76, value41, value1))
    (child1251 : Flapjack.WordAlloc.removeDeadStructural input1251 value41 value1 value2 = (output1251, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1252 value40 value1 value2 = (output1252, value394, value1) := by
  rw [input1252_def, output1252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child1251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output1251_skip]
  kernel_rfl

theorem node1253_cond_eq
    (child75 : Flapjack.WordAlloc.removeDeadStructural input75 value39 value1 value2 = (output75, value40, value1))
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value40 value1 value2 = (output1252, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1253 value39 value1 value2 = (output1253, value394, value1) := by
  rw [input1253_def, output1253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child75]
  try dsimp only
  rw [child1252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output75_skip, output1252_skip]
  kernel_rfl

theorem node1254_cond_eq
    (child74 : Flapjack.WordAlloc.removeDeadStructural input74 value38 value1 value2 = (output74, value39, value1))
    (child1253 : Flapjack.WordAlloc.removeDeadStructural input1253 value39 value1 value2 = (output1253, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1254 value38 value1 value2 = (output1254, value394, value1) := by
  rw [input1254_def, output1254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child74]
  try dsimp only
  rw [child1253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output74_skip, output1253_skip]
  kernel_rfl

theorem node1255_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value37 value1 value2 = (output73, value38, value1))
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value38 value1 value2 = (output1254, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1255 value37 value1 value2 = (output1255, value394, value1) := by
  rw [input1255_def, output1255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child1254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output1254_skip]
  kernel_rfl

theorem node1256_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value37 value1 value2 = (output72, value37, value1))
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value37 value1 value2 = (output1255, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1256 value37 value1 value2 = (output1256, value394, value1) := by
  rw [input1256_def, output1256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child1255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output72_skip, output1255_skip]
  kernel_rfl

theorem node1257_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value37 value1 value2 = (output71, value37, value1))
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value37 value1 value2 = (output1256, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1257 value37 value1 value2 = (output1257, value394, value1) := by
  rw [input1257_def, output1257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child1256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output1256_skip]
  kernel_rfl

theorem node1258_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value37 value1 value2 = (output70, value37, value1))
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value37 value1 value2 = (output1257, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1258 value37 value1 value2 = (output1258, value394, value1) := by
  rw [input1258_def, output1258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child1257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output1257_skip]
  kernel_rfl

theorem node1259_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value37 value1 value2 = (output69, value37, value1))
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value37 value1 value2 = (output1258, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1259 value37 value1 value2 = (output1259, value394, value1) := by
  rw [input1259_def, output1259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child1258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output1258_skip]
  kernel_rfl

theorem node1260_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value36 value1 value2 = (output68, value37, value1))
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value37 value1 value2 = (output1259, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1260 value36 value1 value2 = (output1260, value394, value1) := by
  rw [input1260_def, output1260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child1259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output1259_skip]
  kernel_rfl

theorem node1261_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value35 value1 value2 = (output67, value36, value1))
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value36 value1 value2 = (output1260, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1261 value35 value1 value2 = (output1261, value394, value1) := by
  rw [input1261_def, output1261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child1260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output1260_skip]
  kernel_rfl

theorem node1262_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value34 value1 value2 = (output66, value35, value1))
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value35 value1 value2 = (output1261, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1262 value34 value1 value2 = (output1262, value394, value1) := by
  rw [input1262_def, output1262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child1261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output1261_skip]
  kernel_rfl

theorem node1263_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value33 value1 value2 = (output65, value34, value1))
    (child1262 : Flapjack.WordAlloc.removeDeadStructural input1262 value34 value1 value2 = (output1262, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1263 value33 value1 value2 = (output1263, value394, value1) := by
  rw [input1263_def, output1263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child1262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output1262_skip]
  kernel_rfl

theorem node1264_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value30 value1 value2 = (output64, value33, value1))
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value33 value1 value2 = (output1263, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1264 value30 value1 value2 = (output1264, value394, value1) := by
  rw [input1264_def, output1264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child1263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output1263_skip]
  kernel_rfl

theorem node1265_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value30 value1 value2 = (output59, value30, value1))
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value30 value1 value2 = (output1264, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1265 value30 value1 value2 = (output1265, value394, value1) := by
  rw [input1265_def, output1265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child1264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output1264_skip]
  kernel_rfl

theorem node1266_cond_eq
    (child58 : Flapjack.WordAlloc.removeDeadStructural input58 value29 value1 value2 = (output58, value30, value1))
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value30 value1 value2 = (output1265, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1266 value29 value1 value2 = (output1266, value394, value1) := by
  rw [input1266_def, output1266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child58]
  try dsimp only
  rw [child1265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output58_skip, output1265_skip]
  kernel_rfl

theorem node1267_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value28 value1 value2 = (output57, value29, value1))
    (child1266 : Flapjack.WordAlloc.removeDeadStructural input1266 value29 value1 value2 = (output1266, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1267 value28 value1 value2 = (output1267, value394, value1) := by
  rw [input1267_def, output1267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  try dsimp only
  rw [child1266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output1266_skip]
  kernel_rfl

theorem node1268_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value23 value1 value2 = (output56, value28, value1))
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value28 value1 value2 = (output1267, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1268 value23 value1 value2 = (output1268, value394, value1) := by
  rw [input1268_def, output1268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child1267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output1267_skip]
  kernel_rfl

theorem node1269_cond_eq
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value23 value1 value2 = (output25, value23, value1))
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value23 value1 value2 = (output1268, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1269 value23 value1 value2 = (output1269, value394, value1) := by
  rw [input1269_def, output1269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child25]
  try dsimp only
  rw [child1268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output25_skip, output1268_skip]
  kernel_rfl

theorem node1270_cond_eq
    (child24 : Flapjack.WordAlloc.removeDeadStructural input24 value22 value1 value2 = (output24, value23, value1))
    (child1269 : Flapjack.WordAlloc.removeDeadStructural input1269 value23 value1 value2 = (output1269, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1270 value22 value1 value2 = (output1270, value394, value1) := by
  rw [input1270_def, output1270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child24]
  try dsimp only
  rw [child1269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output24_skip, output1269_skip]
  kernel_rfl

theorem node1271_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value21 value1 value2 = (output23, value22, value1))
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value22 value1 value2 = (output1270, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1271 value21 value1 value2 = (output1271, value394, value1) := by
  rw [input1271_def, output1271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child1270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output1270_skip]
  kernel_rfl

theorem node1272_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value20 value1 value2 = (output22, value21, value1))
    (child1271 : Flapjack.WordAlloc.removeDeadStructural input1271 value21 value1 value2 = (output1271, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1272 value20 value1 value2 = (output1272, value394, value1) := by
  rw [input1272_def, output1272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child1271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output1271_skip]
  kernel_rfl

theorem node1273_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value19 value1 value2 = (output21, value20, value1))
    (child1272 : Flapjack.WordAlloc.removeDeadStructural input1272 value20 value1 value2 = (output1272, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1273 value19 value1 value2 = (output1273, value394, value1) := by
  rw [input1273_def, output1273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child1272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output1272_skip]
  kernel_rfl

theorem node1274_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value18 value1 value2 = (output20, value19, value1))
    (child1273 : Flapjack.WordAlloc.removeDeadStructural input1273 value19 value1 value2 = (output1273, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1274 value18 value1 value2 = (output1274, value394, value1) := by
  rw [input1274_def, output1274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  try dsimp only
  rw [child1273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output20_skip, output1273_skip]
  kernel_rfl

theorem node1275_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value17 value1 value2 = (output19, value18, value1))
    (child1274 : Flapjack.WordAlloc.removeDeadStructural input1274 value18 value1 value2 = (output1274, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1275 value17 value1 value2 = (output1275, value394, value1) := by
  rw [input1275_def, output1275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child1274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output1274_skip]
  kernel_rfl

theorem node1276_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value16 value1 value2 = (output18, value17, value1))
    (child1275 : Flapjack.WordAlloc.removeDeadStructural input1275 value17 value1 value2 = (output1275, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1276 value16 value1 value2 = (output1276, value394, value1) := by
  rw [input1276_def, output1276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child1275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output1275_skip]
  kernel_rfl

theorem node1277_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value15 value1 value2 = (output17, value16, value1))
    (child1276 : Flapjack.WordAlloc.removeDeadStructural input1276 value16 value1 value2 = (output1276, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1277 value15 value1 value2 = (output1277, value394, value1) := by
  rw [input1277_def, output1277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child1276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17_skip, output1276_skip]
  kernel_rfl

theorem node1278_cond_eq
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value12 value1 value2 = (output16, value15, value1))
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value15 value1 value2 = (output1277, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1278 value12 value1 value2 = (output1278, value394, value1) := by
  rw [input1278_def, output1278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child16]
  try dsimp only
  rw [child1277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output16_skip, output1277_skip]
  kernel_rfl

theorem node1279_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value12 value1 value2 = (output11, value12, value1))
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value12 value1 value2 = (output1278, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1279 value12 value1 value2 = (output1279, value394, value1) := by
  rw [input1279_def, output1279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child1278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output1278_skip]
  kernel_rfl

#print axioms node1279_cond_eq
end InitECandidate.Proofs.DeadStages656.Parallel
