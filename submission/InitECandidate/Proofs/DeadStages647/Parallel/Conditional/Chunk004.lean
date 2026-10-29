import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages647.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages647.Parallel
theorem node1024_cond_eq
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value511 value1 value2 = (output1022, value512, value1))
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value512 value1 value2 = (output1023, value513, value1)) : Flapjack.WordAlloc.removeDeadStructural input1024 value511 value1 value2 = (output1024, value513, value1) := by
  rw [input1024_def, output1024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1022]
  try dsimp only
  rw [child1023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1022_skip, output1023_skip]
  kernel_rfl

theorem node1025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1025 value513 value1 value2 = (output1025, value514, value1) := by
  rw [input1025_def, output1025_def]
  kernel_rfl

theorem node1026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1026 value514 value1 value2 = (output1026, value515, value1) := by
  rw [input1026_def, output1026_def]
  kernel_rfl

theorem node1027_cond_eq
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value513 value1 value2 = (output1025, value514, value1))
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value514 value1 value2 = (output1026, value515, value1)) : Flapjack.WordAlloc.removeDeadStructural input1027 value513 value1 value2 = (output1027, value515, value1) := by
  rw [input1027_def, output1027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1025]
  try dsimp only
  rw [child1026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1025_skip, output1026_skip]
  kernel_rfl

theorem node1028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1028 value515 value1 value2 = (output1028, value516, value1) := by
  rw [input1028_def, output1028_def]
  kernel_rfl

theorem node1029_cond_eq
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value513 value1 value2 = (output1027, value515, value1))
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value515 value1 value2 = (output1028, value516, value1)) : Flapjack.WordAlloc.removeDeadStructural input1029 value513 value1 value2 = (output1029, value516, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1027]
  try dsimp only
  rw [child1028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1027_skip, output1028_skip]
  kernel_rfl

theorem node1030_cond_eq
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value511 value1 value2 = (output1024, value513, value1))
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value513 value1 value2 = (output1029, value516, value1)) : Flapjack.WordAlloc.removeDeadStructural input1030 value511 value1 value2 = (output1030, value516, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1024]
  try dsimp only
  rw [child1029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1024_skip, output1029_skip]
  kernel_rfl

theorem node1031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1031 value516 value1 value2 = (output1031, value517, value1) := by
  rw [input1031_def, output1031_def]
  kernel_rfl

theorem node1032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1032 value517 value1 value2 = (output1032, value518, value1) := by
  rw [input1032_def, output1032_def]
  kernel_rfl

theorem node1033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1033 value518 value1 value2 = (output1033, value519, value1) := by
  rw [input1033_def, output1033_def]
  kernel_rfl

theorem node1034_cond_eq
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value517 value1 value2 = (output1032, value518, value1))
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value518 value1 value2 = (output1033, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input1034 value517 value1 value2 = (output1034, value519, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1032]
  try dsimp only
  rw [child1033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1032_skip, output1033_skip]
  kernel_rfl

theorem node1035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1035 value519 value1 value2 = (output1035, value520, value1) := by
  rw [input1035_def, output1035_def]
  kernel_rfl

theorem node1036_cond_eq
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value517 value1 value2 = (output1034, value519, value1))
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value519 value1 value2 = (output1035, value520, value1)) : Flapjack.WordAlloc.removeDeadStructural input1036 value517 value1 value2 = (output1036, value520, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1034]
  try dsimp only
  rw [child1035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1034_skip, output1035_skip]
  kernel_rfl

theorem node1037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1037 value520 value1 value2 = (output1037, value521, value1) := by
  rw [input1037_def, output1037_def]
  kernel_rfl

theorem node1038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1038 value521 value1 value2 = (output1038, value522, value1) := by
  rw [input1038_def, output1038_def]
  kernel_rfl

theorem node1039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1039 value522 value1 value2 = (output1039, value523, value1) := by
  rw [input1039_def, output1039_def]
  kernel_rfl

theorem node1040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1040 value523 value1 value2 = (output1040, value524, value1) := by
  rw [input1040_def, output1040_def]
  kernel_rfl

theorem node1041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1041 value524 value1 value2 = (output1041, value525, value1) := by
  rw [input1041_def, output1041_def]
  kernel_rfl

theorem node1042_cond_eq
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value523 value1 value2 = (output1040, value524, value1))
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value524 value1 value2 = (output1041, value525, value1)) : Flapjack.WordAlloc.removeDeadStructural input1042 value523 value1 value2 = (output1042, value525, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1040]
  try dsimp only
  rw [child1041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1040_skip, output1041_skip]
  kernel_rfl

theorem node1043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1043 value525 value1 value2 = (output1043, value526, value1) := by
  rw [input1043_def, output1043_def]
  kernel_rfl

theorem node1044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1044 value526 value1 value2 = (output1044, value527, value1) := by
  rw [input1044_def, output1044_def]
  kernel_rfl

theorem node1045_cond_eq
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value525 value1 value2 = (output1043, value526, value1))
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value526 value1 value2 = (output1044, value527, value1)) : Flapjack.WordAlloc.removeDeadStructural input1045 value525 value1 value2 = (output1045, value527, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1043]
  try dsimp only
  rw [child1044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1043_skip, output1044_skip]
  kernel_rfl

theorem node1046_cond_eq
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value523 value1 value2 = (output1042, value525, value1))
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value525 value1 value2 = (output1045, value527, value1)) : Flapjack.WordAlloc.removeDeadStructural input1046 value523 value1 value2 = (output1046, value527, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1042]
  try dsimp only
  rw [child1045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1042_skip, output1045_skip]
  kernel_rfl

theorem node1047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1047 value527 value1 value2 = (output1047, value528, value1) := by
  rw [input1047_def, output1047_def]
  kernel_rfl

theorem node1048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1048 value528 value1 value2 = (output1048, value529, value1) := by
  rw [input1048_def, output1048_def]
  kernel_rfl

theorem node1049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1049 value529 value1 value2 = (output1049, value530, value1) := by
  rw [input1049_def, output1049_def]
  kernel_rfl

theorem node1050_cond_eq
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value528 value1 value2 = (output1048, value529, value1))
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value529 value1 value2 = (output1049, value530, value1)) : Flapjack.WordAlloc.removeDeadStructural input1050 value528 value1 value2 = (output1050, value530, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1048]
  try dsimp only
  rw [child1049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1048_skip, output1049_skip]
  kernel_rfl

theorem node1051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1051 value530 value1 value2 = (output1051, value531, value1) := by
  rw [input1051_def, output1051_def]
  kernel_rfl

theorem node1052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1052 value531 value1 value2 = (output1052, value532, value1) := by
  rw [input1052_def, output1052_def]
  kernel_rfl

theorem node1053_cond_eq
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value530 value1 value2 = (output1051, value531, value1))
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value531 value1 value2 = (output1052, value532, value1)) : Flapjack.WordAlloc.removeDeadStructural input1053 value530 value1 value2 = (output1053, value532, value1) := by
  rw [input1053_def, output1053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1051]
  try dsimp only
  rw [child1052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1051_skip, output1052_skip]
  kernel_rfl

theorem node1054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1054 value532 value1 value2 = (output1054, value533, value1) := by
  rw [input1054_def, output1054_def]
  kernel_rfl

theorem node1055_cond_eq
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value530 value1 value2 = (output1053, value532, value1))
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value532 value1 value2 = (output1054, value533, value1)) : Flapjack.WordAlloc.removeDeadStructural input1055 value530 value1 value2 = (output1055, value533, value1) := by
  rw [input1055_def, output1055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1053]
  try dsimp only
  rw [child1054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1053_skip, output1054_skip]
  kernel_rfl

theorem node1056_cond_eq
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value528 value1 value2 = (output1050, value530, value1))
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value530 value1 value2 = (output1055, value533, value1)) : Flapjack.WordAlloc.removeDeadStructural input1056 value528 value1 value2 = (output1056, value533, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1050]
  try dsimp only
  rw [child1055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1050_skip, output1055_skip]
  kernel_rfl

theorem node1057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1057 value533 value1 value2 = (output1057, value534, value1) := by
  rw [input1057_def, output1057_def]
  kernel_rfl

theorem node1058_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1058 value534 value1 value2 = (output1058, value535, value1) := by
  rw [input1058_def, output1058_def]
  kernel_rfl

theorem node1059_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1059 value535 value1 value2 = (output1059, value536, value1) := by
  rw [input1059_def, output1059_def]
  kernel_rfl

theorem node1060_cond_eq
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value534 value1 value2 = (output1058, value535, value1))
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value535 value1 value2 = (output1059, value536, value1)) : Flapjack.WordAlloc.removeDeadStructural input1060 value534 value1 value2 = (output1060, value536, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1058]
  try dsimp only
  rw [child1059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1058_skip, output1059_skip]
  kernel_rfl

theorem node1061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1061 value536 value1 value2 = (output1061, value537, value1) := by
  rw [input1061_def, output1061_def]
  kernel_rfl

theorem node1062_cond_eq
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value534 value1 value2 = (output1060, value536, value1))
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value536 value1 value2 = (output1061, value537, value1)) : Flapjack.WordAlloc.removeDeadStructural input1062 value534 value1 value2 = (output1062, value537, value1) := by
  rw [input1062_def, output1062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1060]
  try dsimp only
  rw [child1061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1060_skip, output1061_skip]
  kernel_rfl

theorem node1063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1063 value537 value1 value2 = (output1063, value538, value1) := by
  rw [input1063_def, output1063_def]
  kernel_rfl

theorem node1064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1064 value538 value1 value2 = (output1064, value539, value1) := by
  rw [input1064_def, output1064_def]
  kernel_rfl

theorem node1065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1065 value539 value1 value2 = (output1065, value540, value1) := by
  rw [input1065_def, output1065_def]
  kernel_rfl

theorem node1066_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1066 value540 value1 value2 = (output1066, value541, value1) := by
  rw [input1066_def, output1066_def]
  kernel_rfl

theorem node1067_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1067 value541 value1 value2 = (output1067, value542, value1) := by
  rw [input1067_def, output1067_def]
  kernel_rfl

theorem node1068_cond_eq
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value540 value1 value2 = (output1066, value541, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value541 value1 value2 = (output1067, value542, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value540 value1 value2 = (output1068, value542, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1066]
  try dsimp only
  rw [child1067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1066_skip, output1067_skip]
  kernel_rfl

theorem node1069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1069 value542 value1 value2 = (output1069, value543, value1) := by
  rw [input1069_def, output1069_def]
  kernel_rfl

theorem node1070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1070 value543 value1 value2 = (output1070, value544, value1) := by
  rw [input1070_def, output1070_def]
  kernel_rfl

theorem node1071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1071 value544 value1 value2 = (output1071, value545, value1) := by
  rw [input1071_def, output1071_def]
  kernel_rfl

theorem node1072_cond_eq
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value543 value1 value2 = (output1070, value544, value1))
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value544 value1 value2 = (output1071, value545, value1)) : Flapjack.WordAlloc.removeDeadStructural input1072 value543 value1 value2 = (output1072, value545, value1) := by
  rw [input1072_def, output1072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1070]
  try dsimp only
  rw [child1071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1070_skip, output1071_skip]
  kernel_rfl

theorem node1073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1073 value545 value1 value2 = (output1073, value546, value1) := by
  rw [input1073_def, output1073_def]
  kernel_rfl

theorem node1074_cond_eq
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value543 value1 value2 = (output1072, value545, value1))
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value545 value1 value2 = (output1073, value546, value1)) : Flapjack.WordAlloc.removeDeadStructural input1074 value543 value1 value2 = (output1074, value546, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1072]
  try dsimp only
  rw [child1073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1072_skip, output1073_skip]
  kernel_rfl

theorem node1075_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1075 value546 value1 value2 = (output1075, value547, value1) := by
  rw [input1075_def, output1075_def]
  kernel_rfl

theorem node1076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1076 value547 value1 value2 = (output1076, value548, value1) := by
  rw [input1076_def, output1076_def]
  kernel_rfl

theorem node1077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1077 value548 value1 value2 = (output1077, value549, value1) := by
  rw [input1077_def, output1077_def]
  kernel_rfl

theorem node1078_cond_eq
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value547 value1 value2 = (output1076, value548, value1))
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value548 value1 value2 = (output1077, value549, value1)) : Flapjack.WordAlloc.removeDeadStructural input1078 value547 value1 value2 = (output1078, value549, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1076]
  try dsimp only
  rw [child1077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1076_skip, output1077_skip]
  kernel_rfl

theorem node1079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1079 value549 value1 value2 = (output1079, value550, value1) := by
  rw [input1079_def, output1079_def]
  kernel_rfl

theorem node1080_cond_eq
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value547 value1 value2 = (output1078, value549, value1))
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value549 value1 value2 = (output1079, value550, value1)) : Flapjack.WordAlloc.removeDeadStructural input1080 value547 value1 value2 = (output1080, value550, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1078]
  try dsimp only
  rw [child1079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1078_skip, output1079_skip]
  kernel_rfl

theorem node1081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1081 value550 value1 value2 = (output1081, value551, value1) := by
  rw [input1081_def, output1081_def]
  kernel_rfl

theorem node1082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1082 value551 value1 value2 = (output1082, value552, value1) := by
  rw [input1082_def, output1082_def]
  kernel_rfl

theorem node1083_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1083 value552 value1 value2 = (output1083, value552, value1) := by
  rw [input1083_def, output1083_def]
  kernel_rfl

theorem node1084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1084 value552 value1 value2 = (output1084, value552, value1) := by
  rw [input1084_def, output1084_def]
  kernel_rfl

theorem node1085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1085 value552 value1 value2 = (output1085, value553, value1) := by
  rw [input1085_def, output1085_def]
  kernel_rfl

theorem node1086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1086 value553 value1 value2 = (output1086, value554, value1) := by
  rw [input1086_def, output1086_def]
  kernel_rfl

theorem node1087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1087 value554 value1 value2 = (output1087, value555, value1) := by
  rw [input1087_def, output1087_def]
  kernel_rfl

theorem node1088_cond_eq
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value553 value1 value2 = (output1086, value554, value1))
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value554 value1 value2 = (output1087, value555, value1)) : Flapjack.WordAlloc.removeDeadStructural input1088 value553 value1 value2 = (output1088, value555, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1086]
  try dsimp only
  rw [child1087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1086_skip, output1087_skip]
  kernel_rfl

theorem node1089_cond_eq
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value552 value1 value2 = (output1085, value553, value1))
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value553 value1 value2 = (output1088, value555, value1)) : Flapjack.WordAlloc.removeDeadStructural input1089 value552 value1 value2 = (output1089, value555, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1085]
  try dsimp only
  rw [child1088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1085_skip, output1088_skip]
  kernel_rfl

theorem node1090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1090 value555 value1 value2 = (output1090, value556, value1) := by
  rw [input1090_def, output1090_def]
  kernel_rfl

theorem node1091_cond_eq
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value552 value1 value2 = (output1089, value555, value1))
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value555 value1 value2 = (output1090, value556, value1)) : Flapjack.WordAlloc.removeDeadStructural input1091 value552 value1 value2 = (output1091, value556, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1089]
  try dsimp only
  rw [child1090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1089_skip, output1090_skip]
  kernel_rfl

theorem node1092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1092 value556 value1 value2 = (output1092, value557, value1) := by
  rw [input1092_def, output1092_def]
  kernel_rfl

theorem node1093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1093 value557 value1 value2 = (output1093, value558, value1) := by
  rw [input1093_def, output1093_def]
  kernel_rfl

theorem node1094_cond_eq
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value556 value1 value2 = (output1092, value557, value1))
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value557 value1 value2 = (output1093, value558, value1)) : Flapjack.WordAlloc.removeDeadStructural input1094 value556 value1 value2 = (output1094, value558, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1092]
  try dsimp only
  rw [child1093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1092_skip, output1093_skip]
  kernel_rfl

theorem node1095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1095 value558 value1 value2 = (output1095, value559, value1) := by
  rw [input1095_def, output1095_def]
  kernel_rfl

theorem node1096_cond_eq
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value556 value1 value2 = (output1094, value558, value1))
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value558 value1 value2 = (output1095, value559, value1)) : Flapjack.WordAlloc.removeDeadStructural input1096 value556 value1 value2 = (output1096, value559, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1094]
  try dsimp only
  rw [child1095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1094_skip, output1095_skip]
  kernel_rfl

theorem node1097_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1097 value559 value1 value2 = (output1097, value560, value1) := by
  rw [input1097_def, output1097_def]
  kernel_rfl

theorem node1098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1098 value560 value1 value2 = (output1098, value561, value1) := by
  rw [input1098_def, output1098_def]
  kernel_rfl

theorem node1099_cond_eq
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value559 value1 value2 = (output1097, value560, value1))
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value560 value1 value2 = (output1098, value561, value1)) : Flapjack.WordAlloc.removeDeadStructural input1099 value559 value1 value2 = (output1099, value561, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1097]
  try dsimp only
  rw [child1098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1097_skip, output1098_skip]
  kernel_rfl

theorem node1100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1100 value561 value1 value2 = (output1100, value562, value1) := by
  rw [input1100_def, output1100_def]
  kernel_rfl

theorem node1101_cond_eq
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value559 value1 value2 = (output1099, value561, value1))
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value561 value1 value2 = (output1100, value562, value1)) : Flapjack.WordAlloc.removeDeadStructural input1101 value559 value1 value2 = (output1101, value562, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1099]
  try dsimp only
  rw [child1100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1099_skip, output1100_skip]
  kernel_rfl

theorem node1102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1102 value562 value1 value2 = (output1102, value562, value1) := by
  rw [input1102_def, output1102_def]
  kernel_rfl

theorem node1103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1103 value562 value1 value2 = (output1103, value562, value1) := by
  rw [input1103_def, output1103_def]
  kernel_rfl

theorem node1104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1104 value562 value1 value2 = (output1104, value563, value1) := by
  rw [input1104_def, output1104_def]
  kernel_rfl

theorem node1105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1105 value563 value1 value2 = (output1105, value564, value1) := by
  rw [input1105_def, output1105_def]
  kernel_rfl

theorem node1106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1106 value564 value1 value2 = (output1106, value565, value1) := by
  rw [input1106_def, output1106_def]
  kernel_rfl

theorem node1107_cond_eq
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value563 value1 value2 = (output1105, value564, value1))
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value564 value1 value2 = (output1106, value565, value1)) : Flapjack.WordAlloc.removeDeadStructural input1107 value563 value1 value2 = (output1107, value565, value1) := by
  rw [input1107_def, output1107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1105]
  try dsimp only
  rw [child1106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1105_skip, output1106_skip]
  kernel_rfl

theorem node1108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1108 value565 value1 value2 = (output1108, value566, value1) := by
  rw [input1108_def, output1108_def]
  kernel_rfl

theorem node1109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1109 value566 value1 value2 = (output1109, value567, value1) := by
  rw [input1109_def, output1109_def]
  kernel_rfl

theorem node1110_cond_eq
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value565 value1 value2 = (output1108, value566, value1))
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value566 value1 value2 = (output1109, value567, value1)) : Flapjack.WordAlloc.removeDeadStructural input1110 value565 value1 value2 = (output1110, value567, value1) := by
  rw [input1110_def, output1110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1108]
  try dsimp only
  rw [child1109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1108_skip, output1109_skip]
  kernel_rfl

theorem node1111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1111 value567 value1 value2 = (output1111, value568, value1) := by
  rw [input1111_def, output1111_def]
  kernel_rfl

theorem node1112_cond_eq
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value565 value1 value2 = (output1110, value567, value1))
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value567 value1 value2 = (output1111, value568, value1)) : Flapjack.WordAlloc.removeDeadStructural input1112 value565 value1 value2 = (output1112, value568, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1110]
  try dsimp only
  rw [child1111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1110_skip, output1111_skip]
  kernel_rfl

theorem node1113_cond_eq
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value563 value1 value2 = (output1107, value565, value1))
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value565 value1 value2 = (output1112, value568, value1)) : Flapjack.WordAlloc.removeDeadStructural input1113 value563 value1 value2 = (output1113, value568, value1) := by
  rw [input1113_def, output1113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1107]
  try dsimp only
  rw [child1112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1107_skip, output1112_skip]
  kernel_rfl

theorem node1114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1114 value568 value1 value2 = (output1114, value569, value1) := by
  rw [input1114_def, output1114_def]
  kernel_rfl

theorem node1115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1115 value569 value1 value2 = (output1115, value570, value1) := by
  rw [input1115_def, output1115_def]
  kernel_rfl

theorem node1116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1116 value570 value1 value2 = (output1116, value571, value1) := by
  rw [input1116_def, output1116_def]
  kernel_rfl

theorem node1117_cond_eq
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value569 value1 value2 = (output1115, value570, value1))
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value570 value1 value2 = (output1116, value571, value1)) : Flapjack.WordAlloc.removeDeadStructural input1117 value569 value1 value2 = (output1117, value571, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1115]
  try dsimp only
  rw [child1116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1115_skip, output1116_skip]
  kernel_rfl

theorem node1118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1118 value571 value1 value2 = (output1118, value572, value1) := by
  rw [input1118_def, output1118_def]
  kernel_rfl

theorem node1119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1119 value572 value1 value2 = (output1119, value573, value1) := by
  rw [input1119_def, output1119_def]
  kernel_rfl

theorem node1120_cond_eq
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value571 value1 value2 = (output1118, value572, value1))
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value572 value1 value2 = (output1119, value573, value1)) : Flapjack.WordAlloc.removeDeadStructural input1120 value571 value1 value2 = (output1120, value573, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1118]
  try dsimp only
  rw [child1119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1118_skip, output1119_skip]
  kernel_rfl

theorem node1121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1121 value573 value1 value2 = (output1121, value574, value1) := by
  rw [input1121_def, output1121_def]
  kernel_rfl

theorem node1122_cond_eq
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value571 value1 value2 = (output1120, value573, value1))
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value573 value1 value2 = (output1121, value574, value1)) : Flapjack.WordAlloc.removeDeadStructural input1122 value571 value1 value2 = (output1122, value574, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1120]
  try dsimp only
  rw [child1121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1120_skip, output1121_skip]
  kernel_rfl

theorem node1123_cond_eq
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value569 value1 value2 = (output1117, value571, value1))
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value571 value1 value2 = (output1122, value574, value1)) : Flapjack.WordAlloc.removeDeadStructural input1123 value569 value1 value2 = (output1123, value574, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1117]
  try dsimp only
  rw [child1122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1117_skip, output1122_skip]
  kernel_rfl

theorem node1124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1124 value574 value1 value2 = (output1124, value575, value1) := by
  rw [input1124_def, output1124_def]
  kernel_rfl

theorem node1125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1125 value575 value1 value2 = (output1125, value576, value1) := by
  rw [input1125_def, output1125_def]
  kernel_rfl

theorem node1126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1126 value576 value1 value2 = (output1126, value577, value1) := by
  rw [input1126_def, output1126_def]
  kernel_rfl

theorem node1127_cond_eq
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value575 value1 value2 = (output1125, value576, value1))
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value576 value1 value2 = (output1126, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input1127 value575 value1 value2 = (output1127, value577, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1125]
  try dsimp only
  rw [child1126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1125_skip, output1126_skip]
  kernel_rfl

theorem node1128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1128 value577 value1 value2 = (output1128, value578, value1) := by
  rw [input1128_def, output1128_def]
  kernel_rfl

theorem node1129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1129 value578 value1 value2 = (output1129, value579, value1) := by
  rw [input1129_def, output1129_def]
  kernel_rfl

theorem node1130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1130 value579 value1 value2 = (output1130, value580, value1) := by
  rw [input1130_def, output1130_def]
  kernel_rfl

theorem node1131_cond_eq
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value578 value1 value2 = (output1129, value579, value1))
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value579 value1 value2 = (output1130, value580, value1)) : Flapjack.WordAlloc.removeDeadStructural input1131 value578 value1 value2 = (output1131, value580, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1129]
  try dsimp only
  rw [child1130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1129_skip, output1130_skip]
  kernel_rfl

theorem node1132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1132 value580 value1 value2 = (output1132, value581, value1) := by
  rw [input1132_def, output1132_def]
  kernel_rfl

theorem node1133_cond_eq
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value578 value1 value2 = (output1131, value580, value1))
    (child1132 : Flapjack.WordAlloc.removeDeadStructural input1132 value580 value1 value2 = (output1132, value581, value1)) : Flapjack.WordAlloc.removeDeadStructural input1133 value578 value1 value2 = (output1133, value581, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1131]
  try dsimp only
  rw [child1132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1131_skip, output1132_skip]
  kernel_rfl

theorem node1134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1134 value581 value1 value2 = (output1134, value582, value1) := by
  rw [input1134_def, output1134_def]
  kernel_rfl

theorem node1135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1135 value582 value1 value2 = (output1135, value583, value1) := by
  rw [input1135_def, output1135_def]
  kernel_rfl

theorem node1136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1136 value583 value1 value2 = (output1136, value584, value1) := by
  rw [input1136_def, output1136_def]
  kernel_rfl

theorem node1137_cond_eq
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value582 value1 value2 = (output1135, value583, value1))
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value583 value1 value2 = (output1136, value584, value1)) : Flapjack.WordAlloc.removeDeadStructural input1137 value582 value1 value2 = (output1137, value584, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1135]
  try dsimp only
  rw [child1136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1135_skip, output1136_skip]
  kernel_rfl

theorem node1138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1138 value584 value1 value2 = (output1138, value585, value1) := by
  rw [input1138_def, output1138_def]
  kernel_rfl

theorem node1139_cond_eq
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value582 value1 value2 = (output1137, value584, value1))
    (child1138 : Flapjack.WordAlloc.removeDeadStructural input1138 value584 value1 value2 = (output1138, value585, value1)) : Flapjack.WordAlloc.removeDeadStructural input1139 value582 value1 value2 = (output1139, value585, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1137]
  try dsimp only
  rw [child1138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1137_skip, output1138_skip]
  kernel_rfl

theorem node1140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1140 value585 value1 value2 = (output1140, value586, value1) := by
  rw [input1140_def, output1140_def]
  kernel_rfl

theorem node1141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1141 value586 value1 value2 = (output1141, value587, value1) := by
  rw [input1141_def, output1141_def]
  kernel_rfl

theorem node1142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1142 value587 value1 value2 = (output1142, value588, value1) := by
  rw [input1142_def, output1142_def]
  kernel_rfl

theorem node1143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1143 value588 value1 value2 = (output1143, value589, value1) := by
  rw [input1143_def, output1143_def]
  kernel_rfl

theorem node1144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1144 value589 value1 value2 = (output1144, value590, value1) := by
  rw [input1144_def, output1144_def]
  kernel_rfl

theorem node1145_cond_eq
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value588 value1 value2 = (output1143, value589, value1))
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value589 value1 value2 = (output1144, value590, value1)) : Flapjack.WordAlloc.removeDeadStructural input1145 value588 value1 value2 = (output1145, value590, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1143]
  try dsimp only
  rw [child1144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1143_skip, output1144_skip]
  kernel_rfl

theorem node1146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1146 value590 value1 value2 = (output1146, value591, value1) := by
  rw [input1146_def, output1146_def]
  kernel_rfl

theorem node1147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1147 value591 value1 value2 = (output1147, value592, value1) := by
  rw [input1147_def, output1147_def]
  kernel_rfl

theorem node1148_cond_eq
    (child1146 : Flapjack.WordAlloc.removeDeadStructural input1146 value590 value1 value2 = (output1146, value591, value1))
    (child1147 : Flapjack.WordAlloc.removeDeadStructural input1147 value591 value1 value2 = (output1147, value592, value1)) : Flapjack.WordAlloc.removeDeadStructural input1148 value590 value1 value2 = (output1148, value592, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1146]
  try dsimp only
  rw [child1147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1146_skip, output1147_skip]
  kernel_rfl

theorem node1149_cond_eq
    (child1145 : Flapjack.WordAlloc.removeDeadStructural input1145 value588 value1 value2 = (output1145, value590, value1))
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value590 value1 value2 = (output1148, value592, value1)) : Flapjack.WordAlloc.removeDeadStructural input1149 value588 value1 value2 = (output1149, value592, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1145]
  try dsimp only
  rw [child1148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1145_skip, output1148_skip]
  kernel_rfl

theorem node1150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1150 value592 value1 value2 = (output1150, value593, value1) := by
  rw [input1150_def, output1150_def]
  kernel_rfl

theorem node1151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1151 value593 value1 value2 = (output1151, value594, value1) := by
  rw [input1151_def, output1151_def]
  kernel_rfl

theorem node1152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1152 value594 value1 value2 = (output1152, value595, value1) := by
  rw [input1152_def, output1152_def]
  kernel_rfl

theorem node1153_cond_eq
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value593 value1 value2 = (output1151, value594, value1))
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value594 value1 value2 = (output1152, value595, value1)) : Flapjack.WordAlloc.removeDeadStructural input1153 value593 value1 value2 = (output1153, value595, value1) := by
  rw [input1153_def, output1153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1151]
  try dsimp only
  rw [child1152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1151_skip, output1152_skip]
  kernel_rfl

theorem node1154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1154 value595 value1 value2 = (output1154, value596, value1) := by
  rw [input1154_def, output1154_def]
  kernel_rfl

theorem node1155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1155 value596 value1 value2 = (output1155, value597, value1) := by
  rw [input1155_def, output1155_def]
  kernel_rfl

theorem node1156_cond_eq
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value595 value1 value2 = (output1154, value596, value1))
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value596 value1 value2 = (output1155, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input1156 value595 value1 value2 = (output1156, value597, value1) := by
  rw [input1156_def, output1156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1154]
  try dsimp only
  rw [child1155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1154_skip, output1155_skip]
  kernel_rfl

theorem node1157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1157 value597 value1 value2 = (output1157, value598, value1) := by
  rw [input1157_def, output1157_def]
  kernel_rfl

theorem node1158_cond_eq
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value595 value1 value2 = (output1156, value597, value1))
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value597 value1 value2 = (output1157, value598, value1)) : Flapjack.WordAlloc.removeDeadStructural input1158 value595 value1 value2 = (output1158, value598, value1) := by
  rw [input1158_def, output1158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1156]
  try dsimp only
  rw [child1157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1156_skip, output1157_skip]
  kernel_rfl

theorem node1159_cond_eq
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value593 value1 value2 = (output1153, value595, value1))
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value595 value1 value2 = (output1158, value598, value1)) : Flapjack.WordAlloc.removeDeadStructural input1159 value593 value1 value2 = (output1159, value598, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1153]
  try dsimp only
  rw [child1158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1153_skip, output1158_skip]
  kernel_rfl

theorem node1160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1160 value598 value1 value2 = (output1160, value599, value1) := by
  rw [input1160_def, output1160_def]
  kernel_rfl

theorem node1161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1161 value599 value1 value2 = (output1161, value600, value1) := by
  rw [input1161_def, output1161_def]
  kernel_rfl

theorem node1162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1162 value600 value1 value2 = (output1162, value601, value1) := by
  rw [input1162_def, output1162_def]
  kernel_rfl

theorem node1163_cond_eq
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value599 value1 value2 = (output1161, value600, value1))
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value600 value1 value2 = (output1162, value601, value1)) : Flapjack.WordAlloc.removeDeadStructural input1163 value599 value1 value2 = (output1163, value601, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1161]
  try dsimp only
  rw [child1162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1161_skip, output1162_skip]
  kernel_rfl

theorem node1164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1164 value601 value1 value2 = (output1164, value602, value1) := by
  rw [input1164_def, output1164_def]
  kernel_rfl

theorem node1165_cond_eq
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value599 value1 value2 = (output1163, value601, value1))
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value601 value1 value2 = (output1164, value602, value1)) : Flapjack.WordAlloc.removeDeadStructural input1165 value599 value1 value2 = (output1165, value602, value1) := by
  rw [input1165_def, output1165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1163]
  try dsimp only
  rw [child1164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1163_skip, output1164_skip]
  kernel_rfl

theorem node1166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1166 value602 value1 value2 = (output1166, value603, value1) := by
  rw [input1166_def, output1166_def]
  kernel_rfl

theorem node1167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1167 value603 value1 value2 = (output1167, value604, value1) := by
  rw [input1167_def, output1167_def]
  kernel_rfl

theorem node1168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1168 value604 value1 value2 = (output1168, value605, value1) := by
  rw [input1168_def, output1168_def]
  kernel_rfl

theorem node1169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1169 value605 value1 value2 = (output1169, value606, value1) := by
  rw [input1169_def, output1169_def]
  kernel_rfl

theorem node1170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1170 value606 value1 value2 = (output1170, value607, value1) := by
  rw [input1170_def, output1170_def]
  kernel_rfl

theorem node1171_cond_eq
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value605 value1 value2 = (output1169, value606, value1))
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value606 value1 value2 = (output1170, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input1171 value605 value1 value2 = (output1171, value607, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1169]
  try dsimp only
  rw [child1170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1169_skip, output1170_skip]
  kernel_rfl

theorem node1172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1172 value607 value1 value2 = (output1172, value608, value1) := by
  rw [input1172_def, output1172_def]
  kernel_rfl

theorem node1173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1173 value608 value1 value2 = (output1173, value609, value1) := by
  rw [input1173_def, output1173_def]
  kernel_rfl

theorem node1174_cond_eq
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value607 value1 value2 = (output1172, value608, value1))
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value608 value1 value2 = (output1173, value609, value1)) : Flapjack.WordAlloc.removeDeadStructural input1174 value607 value1 value2 = (output1174, value609, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1172]
  try dsimp only
  rw [child1173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1172_skip, output1173_skip]
  kernel_rfl

theorem node1175_cond_eq
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value605 value1 value2 = (output1171, value607, value1))
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value607 value1 value2 = (output1174, value609, value1)) : Flapjack.WordAlloc.removeDeadStructural input1175 value605 value1 value2 = (output1175, value609, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1171]
  try dsimp only
  rw [child1174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1171_skip, output1174_skip]
  kernel_rfl

theorem node1176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1176 value609 value1 value2 = (output1176, value610, value1) := by
  rw [input1176_def, output1176_def]
  kernel_rfl

theorem node1177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1177 value610 value1 value2 = (output1177, value611, value1) := by
  rw [input1177_def, output1177_def]
  kernel_rfl

theorem node1178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1178 value611 value1 value2 = (output1178, value612, value1) := by
  rw [input1178_def, output1178_def]
  kernel_rfl

theorem node1179_cond_eq
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value610 value1 value2 = (output1177, value611, value1))
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value611 value1 value2 = (output1178, value612, value1)) : Flapjack.WordAlloc.removeDeadStructural input1179 value610 value1 value2 = (output1179, value612, value1) := by
  rw [input1179_def, output1179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1177]
  try dsimp only
  rw [child1178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1177_skip, output1178_skip]
  kernel_rfl

theorem node1180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1180 value612 value1 value2 = (output1180, value613, value1) := by
  rw [input1180_def, output1180_def]
  kernel_rfl

theorem node1181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1181 value613 value1 value2 = (output1181, value614, value1) := by
  rw [input1181_def, output1181_def]
  kernel_rfl

theorem node1182_cond_eq
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value612 value1 value2 = (output1180, value613, value1))
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value613 value1 value2 = (output1181, value614, value1)) : Flapjack.WordAlloc.removeDeadStructural input1182 value612 value1 value2 = (output1182, value614, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1180]
  try dsimp only
  rw [child1181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1180_skip, output1181_skip]
  kernel_rfl

theorem node1183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1183 value614 value1 value2 = (output1183, value615, value1) := by
  rw [input1183_def, output1183_def]
  kernel_rfl

theorem node1184_cond_eq
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value612 value1 value2 = (output1182, value614, value1))
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value614 value1 value2 = (output1183, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1184 value612 value1 value2 = (output1184, value615, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1182]
  try dsimp only
  rw [child1183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1182_skip, output1183_skip]
  kernel_rfl

theorem node1185_cond_eq
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value610 value1 value2 = (output1179, value612, value1))
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value612 value1 value2 = (output1184, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1185 value610 value1 value2 = (output1185, value615, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1179]
  try dsimp only
  rw [child1184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1179_skip, output1184_skip]
  kernel_rfl

theorem node1186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1186 value615 value1 value2 = (output1186, value616, value1) := by
  rw [input1186_def, output1186_def]
  kernel_rfl

theorem node1187_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1187 value616 value1 value2 = (output1187, value617, value1) := by
  rw [input1187_def, output1187_def]
  kernel_rfl

theorem node1188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1188 value617 value1 value2 = (output1188, value618, value1) := by
  rw [input1188_def, output1188_def]
  kernel_rfl

theorem node1189_cond_eq
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value616 value1 value2 = (output1187, value617, value1))
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value617 value1 value2 = (output1188, value618, value1)) : Flapjack.WordAlloc.removeDeadStructural input1189 value616 value1 value2 = (output1189, value618, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1187]
  try dsimp only
  rw [child1188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1187_skip, output1188_skip]
  kernel_rfl

theorem node1190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1190 value618 value1 value2 = (output1190, value619, value1) := by
  rw [input1190_def, output1190_def]
  kernel_rfl

theorem node1191_cond_eq
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value616 value1 value2 = (output1189, value618, value1))
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value618 value1 value2 = (output1190, value619, value1)) : Flapjack.WordAlloc.removeDeadStructural input1191 value616 value1 value2 = (output1191, value619, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1189]
  try dsimp only
  rw [child1190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1189_skip, output1190_skip]
  kernel_rfl

theorem node1192_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1192 value619 value1 value2 = (output1192, value620, value1) := by
  rw [input1192_def, output1192_def]
  kernel_rfl

theorem node1193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1193 value620 value1 value2 = (output1193, value621, value1) := by
  rw [input1193_def, output1193_def]
  kernel_rfl

theorem node1194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1194 value621 value1 value2 = (output1194, value622, value1) := by
  rw [input1194_def, output1194_def]
  kernel_rfl

theorem node1195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1195 value622 value1 value2 = (output1195, value623, value1) := by
  rw [input1195_def, output1195_def]
  kernel_rfl

theorem node1196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1196 value623 value1 value2 = (output1196, value624, value1) := by
  rw [input1196_def, output1196_def]
  kernel_rfl

theorem node1197_cond_eq
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value622 value1 value2 = (output1195, value623, value1))
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value623 value1 value2 = (output1196, value624, value1)) : Flapjack.WordAlloc.removeDeadStructural input1197 value622 value1 value2 = (output1197, value624, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1195]
  try dsimp only
  rw [child1196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1195_skip, output1196_skip]
  kernel_rfl

theorem node1198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1198 value624 value1 value2 = (output1198, value625, value1) := by
  rw [input1198_def, output1198_def]
  kernel_rfl

theorem node1199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1199 value625 value1 value2 = (output1199, value626, value1) := by
  rw [input1199_def, output1199_def]
  kernel_rfl

theorem node1200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1200 value626 value1 value2 = (output1200, value627, value1) := by
  rw [input1200_def, output1200_def]
  kernel_rfl

theorem node1201_cond_eq
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value625 value1 value2 = (output1199, value626, value1))
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value626 value1 value2 = (output1200, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input1201 value625 value1 value2 = (output1201, value627, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1199]
  try dsimp only
  rw [child1200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1199_skip, output1200_skip]
  kernel_rfl

theorem node1202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1202 value627 value1 value2 = (output1202, value628, value1) := by
  rw [input1202_def, output1202_def]
  kernel_rfl

theorem node1203_cond_eq
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value625 value1 value2 = (output1201, value627, value1))
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value627 value1 value2 = (output1202, value628, value1)) : Flapjack.WordAlloc.removeDeadStructural input1203 value625 value1 value2 = (output1203, value628, value1) := by
  rw [input1203_def, output1203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1201]
  try dsimp only
  rw [child1202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1201_skip, output1202_skip]
  kernel_rfl

theorem node1204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1204 value628 value1 value2 = (output1204, value629, value1) := by
  rw [input1204_def, output1204_def]
  kernel_rfl

theorem node1205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1205 value629 value1 value2 = (output1205, value630, value1) := by
  rw [input1205_def, output1205_def]
  kernel_rfl

theorem node1206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1206 value630 value1 value2 = (output1206, value631, value1) := by
  rw [input1206_def, output1206_def]
  kernel_rfl

theorem node1207_cond_eq
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value629 value1 value2 = (output1205, value630, value1))
    (child1206 : Flapjack.WordAlloc.removeDeadStructural input1206 value630 value1 value2 = (output1206, value631, value1)) : Flapjack.WordAlloc.removeDeadStructural input1207 value629 value1 value2 = (output1207, value631, value1) := by
  rw [input1207_def, output1207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1205]
  try dsimp only
  rw [child1206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1205_skip, output1206_skip]
  kernel_rfl

theorem node1208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1208 value631 value1 value2 = (output1208, value632, value1) := by
  rw [input1208_def, output1208_def]
  kernel_rfl

theorem node1209_cond_eq
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value629 value1 value2 = (output1207, value631, value1))
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value631 value1 value2 = (output1208, value632, value1)) : Flapjack.WordAlloc.removeDeadStructural input1209 value629 value1 value2 = (output1209, value632, value1) := by
  rw [input1209_def, output1209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1207]
  try dsimp only
  rw [child1208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1207_skip, output1208_skip]
  kernel_rfl

theorem node1210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1210 value632 value1 value2 = (output1210, value633, value1) := by
  rw [input1210_def, output1210_def]
  kernel_rfl

theorem node1211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1211 value633 value1 value2 = (output1211, value634, value1) := by
  rw [input1211_def, output1211_def]
  kernel_rfl

theorem node1212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1212 value634 value1 value2 = (output1212, value634, value1) := by
  rw [input1212_def, output1212_def]
  kernel_rfl

theorem node1213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1213 value634 value1 value2 = (output1213, value634, value1) := by
  rw [input1213_def, output1213_def]
  kernel_rfl

theorem node1214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1214 value634 value1 value2 = (output1214, value635, value1) := by
  rw [input1214_def, output1214_def]
  kernel_rfl

theorem node1215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1215 value635 value1 value2 = (output1215, value636, value1) := by
  rw [input1215_def, output1215_def]
  kernel_rfl

theorem node1216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1216 value636 value1 value2 = (output1216, value637, value1) := by
  rw [input1216_def, output1216_def]
  kernel_rfl

theorem node1217_cond_eq
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value635 value1 value2 = (output1215, value636, value1))
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value636 value1 value2 = (output1216, value637, value1)) : Flapjack.WordAlloc.removeDeadStructural input1217 value635 value1 value2 = (output1217, value637, value1) := by
  rw [input1217_def, output1217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1215]
  try dsimp only
  rw [child1216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1215_skip, output1216_skip]
  kernel_rfl

theorem node1218_cond_eq
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value634 value1 value2 = (output1214, value635, value1))
    (child1217 : Flapjack.WordAlloc.removeDeadStructural input1217 value635 value1 value2 = (output1217, value637, value1)) : Flapjack.WordAlloc.removeDeadStructural input1218 value634 value1 value2 = (output1218, value637, value1) := by
  rw [input1218_def, output1218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1214]
  try dsimp only
  rw [child1217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1214_skip, output1217_skip]
  kernel_rfl

theorem node1219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1219 value637 value1 value2 = (output1219, value638, value1) := by
  rw [input1219_def, output1219_def]
  kernel_rfl

theorem node1220_cond_eq
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value634 value1 value2 = (output1218, value637, value1))
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value637 value1 value2 = (output1219, value638, value1)) : Flapjack.WordAlloc.removeDeadStructural input1220 value634 value1 value2 = (output1220, value638, value1) := by
  rw [input1220_def, output1220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1218]
  try dsimp only
  rw [child1219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1218_skip, output1219_skip]
  kernel_rfl

theorem node1221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1221 value638 value1 value2 = (output1221, value639, value1) := by
  rw [input1221_def, output1221_def]
  kernel_rfl

theorem node1222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1222 value639 value1 value2 = (output1222, value640, value1) := by
  rw [input1222_def, output1222_def]
  kernel_rfl

theorem node1223_cond_eq
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value638 value1 value2 = (output1221, value639, value1))
    (child1222 : Flapjack.WordAlloc.removeDeadStructural input1222 value639 value1 value2 = (output1222, value640, value1)) : Flapjack.WordAlloc.removeDeadStructural input1223 value638 value1 value2 = (output1223, value640, value1) := by
  rw [input1223_def, output1223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1221]
  try dsimp only
  rw [child1222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1221_skip, output1222_skip]
  kernel_rfl

theorem node1224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1224 value640 value1 value2 = (output1224, value641, value1) := by
  rw [input1224_def, output1224_def]
  kernel_rfl

theorem node1225_cond_eq
    (child1223 : Flapjack.WordAlloc.removeDeadStructural input1223 value638 value1 value2 = (output1223, value640, value1))
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value640 value1 value2 = (output1224, value641, value1)) : Flapjack.WordAlloc.removeDeadStructural input1225 value638 value1 value2 = (output1225, value641, value1) := by
  rw [input1225_def, output1225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1223]
  try dsimp only
  rw [child1224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1223_skip, output1224_skip]
  kernel_rfl

theorem node1226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1226 value641 value1 value2 = (output1226, value642, value1) := by
  rw [input1226_def, output1226_def]
  kernel_rfl

theorem node1227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1227 value642 value1 value2 = (output1227, value643, value1) := by
  rw [input1227_def, output1227_def]
  kernel_rfl

theorem node1228_cond_eq
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value641 value1 value2 = (output1226, value642, value1))
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value642 value1 value2 = (output1227, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input1228 value641 value1 value2 = (output1228, value643, value1) := by
  rw [input1228_def, output1228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1226]
  try dsimp only
  rw [child1227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1226_skip, output1227_skip]
  kernel_rfl

theorem node1229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1229 value643 value1 value2 = (output1229, value644, value1) := by
  rw [input1229_def, output1229_def]
  kernel_rfl

theorem node1230_cond_eq
    (child1228 : Flapjack.WordAlloc.removeDeadStructural input1228 value641 value1 value2 = (output1228, value643, value1))
    (child1229 : Flapjack.WordAlloc.removeDeadStructural input1229 value643 value1 value2 = (output1229, value644, value1)) : Flapjack.WordAlloc.removeDeadStructural input1230 value641 value1 value2 = (output1230, value644, value1) := by
  rw [input1230_def, output1230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1228]
  try dsimp only
  rw [child1229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1228_skip, output1229_skip]
  kernel_rfl

theorem node1231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1231 value644 value1 value2 = (output1231, value644, value1) := by
  rw [input1231_def, output1231_def]
  kernel_rfl

theorem node1232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1232 value644 value1 value2 = (output1232, value644, value1) := by
  rw [input1232_def, output1232_def]
  kernel_rfl

theorem node1233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1233 value644 value1 value2 = (output1233, value645, value1) := by
  rw [input1233_def, output1233_def]
  kernel_rfl

theorem node1234_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1234 value645 value1 value2 = (output1234, value646, value1) := by
  rw [input1234_def, output1234_def]
  kernel_rfl

theorem node1235_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1235 value646 value1 value2 = (output1235, value647, value1) := by
  rw [input1235_def, output1235_def]
  kernel_rfl

theorem node1236_cond_eq
    (child1234 : Flapjack.WordAlloc.removeDeadStructural input1234 value645 value1 value2 = (output1234, value646, value1))
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value646 value1 value2 = (output1235, value647, value1)) : Flapjack.WordAlloc.removeDeadStructural input1236 value645 value1 value2 = (output1236, value647, value1) := by
  rw [input1236_def, output1236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1234]
  try dsimp only
  rw [child1235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1234_skip, output1235_skip]
  kernel_rfl

theorem node1237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1237 value647 value1 value2 = (output1237, value648, value1) := by
  rw [input1237_def, output1237_def]
  kernel_rfl

theorem node1238_cond_eq
    (child1236 : Flapjack.WordAlloc.removeDeadStructural input1236 value645 value1 value2 = (output1236, value647, value1))
    (child1237 : Flapjack.WordAlloc.removeDeadStructural input1237 value647 value1 value2 = (output1237, value648, value1)) : Flapjack.WordAlloc.removeDeadStructural input1238 value645 value1 value2 = (output1238, value648, value1) := by
  rw [input1238_def, output1238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1236]
  try dsimp only
  rw [child1237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1236_skip, output1237_skip]
  kernel_rfl

theorem node1239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1239 value648 value1 value2 = (output1239, value649, value1) := by
  rw [input1239_def, output1239_def]
  kernel_rfl

theorem node1240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1240 value649 value1 value2 = (output1240, value650, value1) := by
  rw [input1240_def, output1240_def]
  kernel_rfl

theorem node1241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1241 value650 value1 value2 = (output1241, value651, value1) := by
  rw [input1241_def, output1241_def]
  kernel_rfl

theorem node1242_cond_eq
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value649 value1 value2 = (output1240, value650, value1))
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value650 value1 value2 = (output1241, value651, value1)) : Flapjack.WordAlloc.removeDeadStructural input1242 value649 value1 value2 = (output1242, value651, value1) := by
  rw [input1242_def, output1242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1240]
  try dsimp only
  rw [child1241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1240_skip, output1241_skip]
  kernel_rfl

theorem node1243_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1243 value651 value1 value2 = (output1243, value652, value1) := by
  rw [input1243_def, output1243_def]
  kernel_rfl

theorem node1244_cond_eq
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value649 value1 value2 = (output1242, value651, value1))
    (child1243 : Flapjack.WordAlloc.removeDeadStructural input1243 value651 value1 value2 = (output1243, value652, value1)) : Flapjack.WordAlloc.removeDeadStructural input1244 value649 value1 value2 = (output1244, value652, value1) := by
  rw [input1244_def, output1244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1242]
  try dsimp only
  rw [child1243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1242_skip, output1243_skip]
  kernel_rfl

theorem node1245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1245 value652 value1 value2 = (output1245, value653, value1) := by
  rw [input1245_def, output1245_def]
  kernel_rfl

theorem node1246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1246 value653 value1 value2 = (output1246, value654, value1) := by
  rw [input1246_def, output1246_def]
  kernel_rfl

theorem node1247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1247 value654 value1 value2 = (output1247, value655, value1) := by
  rw [input1247_def, output1247_def]
  kernel_rfl

theorem node1248_cond_eq
    (child1246 : Flapjack.WordAlloc.removeDeadStructural input1246 value653 value1 value2 = (output1246, value654, value1))
    (child1247 : Flapjack.WordAlloc.removeDeadStructural input1247 value654 value1 value2 = (output1247, value655, value1)) : Flapjack.WordAlloc.removeDeadStructural input1248 value653 value1 value2 = (output1248, value655, value1) := by
  rw [input1248_def, output1248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1246]
  try dsimp only
  rw [child1247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1246_skip, output1247_skip]
  kernel_rfl

theorem node1249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1249 value655 value1 value2 = (output1249, value656, value1) := by
  rw [input1249_def, output1249_def]
  kernel_rfl

theorem node1250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1250 value656 value1 value2 = (output1250, value657, value1) := by
  rw [input1250_def, output1250_def]
  kernel_rfl

theorem node1251_cond_eq
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value655 value1 value2 = (output1249, value656, value1))
    (child1250 : Flapjack.WordAlloc.removeDeadStructural input1250 value656 value1 value2 = (output1250, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1251 value655 value1 value2 = (output1251, value657, value1) := by
  rw [input1251_def, output1251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1249]
  try dsimp only
  rw [child1250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1249_skip, output1250_skip]
  kernel_rfl

theorem node1252_cond_eq
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value653 value1 value2 = (output1248, value655, value1))
    (child1251 : Flapjack.WordAlloc.removeDeadStructural input1251 value655 value1 value2 = (output1251, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1252 value653 value1 value2 = (output1252, value657, value1) := by
  rw [input1252_def, output1252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1248]
  try dsimp only
  rw [child1251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1248_skip, output1251_skip]
  kernel_rfl

theorem node1253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1253 value657 value1 value2 = (output1253, value658, value1) := by
  rw [input1253_def, output1253_def]
  kernel_rfl

theorem node1254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1254 value658 value1 value2 = (output1254, value659, value1) := by
  rw [input1254_def, output1254_def]
  kernel_rfl

theorem node1255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1255 value659 value1 value2 = (output1255, value660, value1) := by
  rw [input1255_def, output1255_def]
  kernel_rfl

theorem node1256_cond_eq
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value658 value1 value2 = (output1254, value659, value1))
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value659 value1 value2 = (output1255, value660, value1)) : Flapjack.WordAlloc.removeDeadStructural input1256 value658 value1 value2 = (output1256, value660, value1) := by
  rw [input1256_def, output1256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1254]
  try dsimp only
  rw [child1255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1254_skip, output1255_skip]
  kernel_rfl

theorem node1257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1257 value660 value1 value2 = (output1257, value661, value1) := by
  rw [input1257_def, output1257_def]
  kernel_rfl

theorem node1258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1258 value661 value1 value2 = (output1258, value662, value1) := by
  rw [input1258_def, output1258_def]
  kernel_rfl

theorem node1259_cond_eq
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value660 value1 value2 = (output1257, value661, value1))
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value661 value1 value2 = (output1258, value662, value1)) : Flapjack.WordAlloc.removeDeadStructural input1259 value660 value1 value2 = (output1259, value662, value1) := by
  rw [input1259_def, output1259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1257]
  try dsimp only
  rw [child1258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1257_skip, output1258_skip]
  kernel_rfl

theorem node1260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1260 value662 value1 value2 = (output1260, value663, value1) := by
  rw [input1260_def, output1260_def]
  kernel_rfl

theorem node1261_cond_eq
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value660 value1 value2 = (output1259, value662, value1))
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value662 value1 value2 = (output1260, value663, value1)) : Flapjack.WordAlloc.removeDeadStructural input1261 value660 value1 value2 = (output1261, value663, value1) := by
  rw [input1261_def, output1261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1259]
  try dsimp only
  rw [child1260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1259_skip, output1260_skip]
  kernel_rfl

theorem node1262_cond_eq
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value658 value1 value2 = (output1256, value660, value1))
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value660 value1 value2 = (output1261, value663, value1)) : Flapjack.WordAlloc.removeDeadStructural input1262 value658 value1 value2 = (output1262, value663, value1) := by
  rw [input1262_def, output1262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1256]
  try dsimp only
  rw [child1261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1256_skip, output1261_skip]
  kernel_rfl

theorem node1263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1263 value663 value1 value2 = (output1263, value664, value1) := by
  rw [input1263_def, output1263_def]
  kernel_rfl

theorem node1264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1264 value664 value1 value2 = (output1264, value665, value1) := by
  rw [input1264_def, output1264_def]
  kernel_rfl

theorem node1265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1265 value665 value1 value2 = (output1265, value666, value1) := by
  rw [input1265_def, output1265_def]
  kernel_rfl

theorem node1266_cond_eq
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value664 value1 value2 = (output1264, value665, value1))
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value665 value1 value2 = (output1265, value666, value1)) : Flapjack.WordAlloc.removeDeadStructural input1266 value664 value1 value2 = (output1266, value666, value1) := by
  rw [input1266_def, output1266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1264]
  try dsimp only
  rw [child1265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1264_skip, output1265_skip]
  kernel_rfl

theorem node1267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1267 value666 value1 value2 = (output1267, value667, value1) := by
  rw [input1267_def, output1267_def]
  kernel_rfl

theorem node1268_cond_eq
    (child1266 : Flapjack.WordAlloc.removeDeadStructural input1266 value664 value1 value2 = (output1266, value666, value1))
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value666 value1 value2 = (output1267, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1268 value664 value1 value2 = (output1268, value667, value1) := by
  rw [input1268_def, output1268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1266]
  try dsimp only
  rw [child1267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1266_skip, output1267_skip]
  kernel_rfl

theorem node1269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1269 value667 value1 value2 = (output1269, value668, value1) := by
  rw [input1269_def, output1269_def]
  kernel_rfl

theorem node1270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1270 value668 value1 value2 = (output1270, value669, value1) := by
  rw [input1270_def, output1270_def]
  kernel_rfl

theorem node1271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1271 value669 value1 value2 = (output1271, value670, value1) := by
  rw [input1271_def, output1271_def]
  kernel_rfl

theorem node1272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1272 value670 value1 value2 = (output1272, value671, value1) := by
  rw [input1272_def, output1272_def]
  kernel_rfl

theorem node1273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1273 value671 value1 value2 = (output1273, value672, value1) := by
  rw [input1273_def, output1273_def]
  kernel_rfl

theorem node1274_cond_eq
    (child1272 : Flapjack.WordAlloc.removeDeadStructural input1272 value670 value1 value2 = (output1272, value671, value1))
    (child1273 : Flapjack.WordAlloc.removeDeadStructural input1273 value671 value1 value2 = (output1273, value672, value1)) : Flapjack.WordAlloc.removeDeadStructural input1274 value670 value1 value2 = (output1274, value672, value1) := by
  rw [input1274_def, output1274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1272]
  try dsimp only
  rw [child1273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1272_skip, output1273_skip]
  kernel_rfl

theorem node1275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1275 value672 value1 value2 = (output1275, value673, value1) := by
  rw [input1275_def, output1275_def]
  kernel_rfl

theorem node1276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1276 value673 value1 value2 = (output1276, value674, value1) := by
  rw [input1276_def, output1276_def]
  kernel_rfl

theorem node1277_cond_eq
    (child1275 : Flapjack.WordAlloc.removeDeadStructural input1275 value672 value1 value2 = (output1275, value673, value1))
    (child1276 : Flapjack.WordAlloc.removeDeadStructural input1276 value673 value1 value2 = (output1276, value674, value1)) : Flapjack.WordAlloc.removeDeadStructural input1277 value672 value1 value2 = (output1277, value674, value1) := by
  rw [input1277_def, output1277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1275]
  try dsimp only
  rw [child1276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1275_skip, output1276_skip]
  kernel_rfl

theorem node1278_cond_eq
    (child1274 : Flapjack.WordAlloc.removeDeadStructural input1274 value670 value1 value2 = (output1274, value672, value1))
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value672 value1 value2 = (output1277, value674, value1)) : Flapjack.WordAlloc.removeDeadStructural input1278 value670 value1 value2 = (output1278, value674, value1) := by
  rw [input1278_def, output1278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1274]
  try dsimp only
  rw [child1277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1274_skip, output1277_skip]
  kernel_rfl

theorem node1279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1279 value674 value1 value2 = (output1279, value675, value1) := by
  rw [input1279_def, output1279_def]
  kernel_rfl

#print axioms node1279_cond_eq
end InitECandidate.Proofs.DeadStages647.Parallel
