import InitECandidate.Proofs.DeadStages64.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages64.Parallel
theorem node1024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1024 value515 value1 value2 = (output1024, value516, value1) := by
  rw [input1024_def, output1024_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1025_cond_eq
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value4 value1 value2 = (output1023, value515, value1))
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value515 value1 value2 = (output1024, value516, value1)) : Flapjack.WordAlloc.removeDeadStructural input1025 value4 value1 value2 = (output1025, value516, value1) := by
  rw [input1025_def, output1025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1023]
  dsimp only
  rw [child1024]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1026 value516 value1 value2 = (output1026, value517, value1) := by
  rw [input1026_def, output1026_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1027_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1027 value517 value1 value2 = (output1027, value517, value1) := by
  rw [input1027_def, output1027_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1028 value517 value1 value2 = (output1028, value518, value1) := by
  rw [input1028_def, output1028_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1029 value518 value1 value2 = (output1029, value519, value1) := by
  rw [input1029_def, output1029_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1030_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1030 value519 value1 value2 = (output1030, value520, value1) := by
  rw [input1030_def, output1030_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1031 value520 value1 value2 = (output1031, value4, value1) := by
  rw [input1031_def, output1031_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1032_cond_eq
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value519 value1 value2 = (output1030, value520, value1))
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value520 value1 value2 = (output1031, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1032 value519 value1 value2 = (output1032, value4, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1030]
  dsimp only
  rw [child1031]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1033_cond_eq
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value518 value1 value2 = (output1029, value519, value1))
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value519 value1 value2 = (output1032, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1033 value518 value1 value2 = (output1033, value4, value1) := by
  rw [input1033_def, output1033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1029]
  dsimp only
  rw [child1032]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1034_cond_eq
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value517 value1 value2 = (output1028, value518, value1))
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value518 value1 value2 = (output1033, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1034 value517 value1 value2 = (output1034, value4, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1028]
  dsimp only
  rw [child1033]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1035 value4 value1 value2 = (output1035, value521, value1) := by
  rw [input1035_def, output1035_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1036 value521 value1 value2 = (output1036, value522, value1) := by
  rw [input1036_def, output1036_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1037_cond_eq
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value4 value1 value2 = (output1035, value521, value1))
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value521 value1 value2 = (output1036, value522, value1)) : Flapjack.WordAlloc.removeDeadStructural input1037 value4 value1 value2 = (output1037, value522, value1) := by
  rw [input1037_def, output1037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1035]
  dsimp only
  rw [child1036]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1038 value522 value1 value2 = (output1038, value523, value1) := by
  rw [input1038_def, output1038_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1039 value523 value1 value2 = (output1039, value523, value1) := by
  rw [input1039_def, output1039_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1040 value523 value1 value2 = (output1040, value524, value1) := by
  rw [input1040_def, output1040_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1041 value524 value1 value2 = (output1041, value525, value1) := by
  rw [input1041_def, output1041_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1042 value525 value1 value2 = (output1042, value526, value1) := by
  rw [input1042_def, output1042_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1043 value526 value1 value2 = (output1043, value4, value1) := by
  rw [input1043_def, output1043_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1044_cond_eq
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value525 value1 value2 = (output1042, value526, value1))
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value526 value1 value2 = (output1043, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1044 value525 value1 value2 = (output1044, value4, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1042]
  dsimp only
  rw [child1043]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1045_cond_eq
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value524 value1 value2 = (output1041, value525, value1))
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value525 value1 value2 = (output1044, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1045 value524 value1 value2 = (output1045, value4, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1041]
  dsimp only
  rw [child1044]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1046_cond_eq
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value523 value1 value2 = (output1040, value524, value1))
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value524 value1 value2 = (output1045, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1046 value523 value1 value2 = (output1046, value4, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1040]
  dsimp only
  rw [child1045]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1047 value4 value1 value2 = (output1047, value527, value1) := by
  rw [input1047_def, output1047_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1048 value527 value1 value2 = (output1048, value528, value1) := by
  rw [input1048_def, output1048_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1049_cond_eq
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value4 value1 value2 = (output1047, value527, value1))
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value527 value1 value2 = (output1048, value528, value1)) : Flapjack.WordAlloc.removeDeadStructural input1049 value4 value1 value2 = (output1049, value528, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1047]
  dsimp only
  rw [child1048]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1050 value528 value1 value2 = (output1050, value529, value1) := by
  rw [input1050_def, output1050_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1051 value529 value1 value2 = (output1051, value529, value1) := by
  rw [input1051_def, output1051_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1052 value529 value1 value2 = (output1052, value530, value1) := by
  rw [input1052_def, output1052_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1053 value530 value1 value2 = (output1053, value531, value1) := by
  rw [input1053_def, output1053_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1054 value531 value1 value2 = (output1054, value532, value1) := by
  rw [input1054_def, output1054_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1055 value532 value1 value2 = (output1055, value4, value1) := by
  rw [input1055_def, output1055_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1056_cond_eq
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value531 value1 value2 = (output1054, value532, value1))
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value532 value1 value2 = (output1055, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1056 value531 value1 value2 = (output1056, value4, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1054]
  dsimp only
  rw [child1055]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1057_cond_eq
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value530 value1 value2 = (output1053, value531, value1))
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value531 value1 value2 = (output1056, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1057 value530 value1 value2 = (output1057, value4, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1053]
  dsimp only
  rw [child1056]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1058_cond_eq
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value529 value1 value2 = (output1052, value530, value1))
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value530 value1 value2 = (output1057, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1058 value529 value1 value2 = (output1058, value4, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1052]
  dsimp only
  rw [child1057]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1059_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1059 value4 value1 value2 = (output1059, value533, value1) := by
  rw [input1059_def, output1059_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1060 value533 value1 value2 = (output1060, value534, value1) := by
  rw [input1060_def, output1060_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1061_cond_eq
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value4 value1 value2 = (output1059, value533, value1))
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value533 value1 value2 = (output1060, value534, value1)) : Flapjack.WordAlloc.removeDeadStructural input1061 value4 value1 value2 = (output1061, value534, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1059]
  dsimp only
  rw [child1060]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1062 value534 value1 value2 = (output1062, value535, value1) := by
  rw [input1062_def, output1062_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1063 value535 value1 value2 = (output1063, value535, value1) := by
  rw [input1063_def, output1063_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1064 value535 value1 value2 = (output1064, value536, value1) := by
  rw [input1064_def, output1064_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1065 value536 value1 value2 = (output1065, value537, value1) := by
  rw [input1065_def, output1065_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1066_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1066 value537 value1 value2 = (output1066, value538, value1) := by
  rw [input1066_def, output1066_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1067_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1067 value538 value1 value2 = (output1067, value4, value1) := by
  rw [input1067_def, output1067_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1068_cond_eq
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value537 value1 value2 = (output1066, value538, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value538 value1 value2 = (output1067, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value537 value1 value2 = (output1068, value4, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1066]
  dsimp only
  rw [child1067]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1069_cond_eq
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value536 value1 value2 = (output1065, value537, value1))
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value537 value1 value2 = (output1068, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1069 value536 value1 value2 = (output1069, value4, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1065]
  dsimp only
  rw [child1068]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1070_cond_eq
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value535 value1 value2 = (output1064, value536, value1))
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value536 value1 value2 = (output1069, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1070 value535 value1 value2 = (output1070, value4, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1064]
  dsimp only
  rw [child1069]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1071 value4 value1 value2 = (output1071, value539, value1) := by
  rw [input1071_def, output1071_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1072 value539 value1 value2 = (output1072, value540, value1) := by
  rw [input1072_def, output1072_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1073_cond_eq
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value4 value1 value2 = (output1071, value539, value1))
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value539 value1 value2 = (output1072, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1073 value4 value1 value2 = (output1073, value540, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1071]
  dsimp only
  rw [child1072]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1074 value540 value1 value2 = (output1074, value541, value1) := by
  rw [input1074_def, output1074_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1075_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1075 value541 value1 value2 = (output1075, value541, value1) := by
  rw [input1075_def, output1075_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1076 value541 value1 value2 = (output1076, value542, value1) := by
  rw [input1076_def, output1076_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1077 value542 value1 value2 = (output1077, value543, value1) := by
  rw [input1077_def, output1077_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1078 value543 value1 value2 = (output1078, value544, value1) := by
  rw [input1078_def, output1078_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1079 value544 value1 value2 = (output1079, value4, value1) := by
  rw [input1079_def, output1079_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1080_cond_eq
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value543 value1 value2 = (output1078, value544, value1))
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value544 value1 value2 = (output1079, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1080 value543 value1 value2 = (output1080, value4, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1078]
  dsimp only
  rw [child1079]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1081_cond_eq
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value542 value1 value2 = (output1077, value543, value1))
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value543 value1 value2 = (output1080, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1081 value542 value1 value2 = (output1081, value4, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1077]
  dsimp only
  rw [child1080]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1082_cond_eq
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value541 value1 value2 = (output1076, value542, value1))
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value542 value1 value2 = (output1081, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1082 value541 value1 value2 = (output1082, value4, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1076]
  dsimp only
  rw [child1081]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1083_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1083 value4 value1 value2 = (output1083, value545, value1) := by
  rw [input1083_def, output1083_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1084 value545 value1 value2 = (output1084, value546, value1) := by
  rw [input1084_def, output1084_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1085_cond_eq
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value4 value1 value2 = (output1083, value545, value1))
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value545 value1 value2 = (output1084, value546, value1)) : Flapjack.WordAlloc.removeDeadStructural input1085 value4 value1 value2 = (output1085, value546, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1083]
  dsimp only
  rw [child1084]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1086 value546 value1 value2 = (output1086, value547, value1) := by
  rw [input1086_def, output1086_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1087 value547 value1 value2 = (output1087, value547, value1) := by
  rw [input1087_def, output1087_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1088 value547 value1 value2 = (output1088, value548, value1) := by
  rw [input1088_def, output1088_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1089 value548 value1 value2 = (output1089, value549, value1) := by
  rw [input1089_def, output1089_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1090 value549 value1 value2 = (output1090, value550, value1) := by
  rw [input1090_def, output1090_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1091_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1091 value550 value1 value2 = (output1091, value4, value1) := by
  rw [input1091_def, output1091_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1092_cond_eq
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value549 value1 value2 = (output1090, value550, value1))
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value550 value1 value2 = (output1091, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1092 value549 value1 value2 = (output1092, value4, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1090]
  dsimp only
  rw [child1091]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1093_cond_eq
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value548 value1 value2 = (output1089, value549, value1))
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value549 value1 value2 = (output1092, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1093 value548 value1 value2 = (output1093, value4, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1089]
  dsimp only
  rw [child1092]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1094_cond_eq
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value547 value1 value2 = (output1088, value548, value1))
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value548 value1 value2 = (output1093, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1094 value547 value1 value2 = (output1094, value4, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1088]
  dsimp only
  rw [child1093]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1095 value4 value1 value2 = (output1095, value551, value1) := by
  rw [input1095_def, output1095_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1096_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1096 value551 value1 value2 = (output1096, value552, value1) := by
  rw [input1096_def, output1096_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1097_cond_eq
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value4 value1 value2 = (output1095, value551, value1))
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value551 value1 value2 = (output1096, value552, value1)) : Flapjack.WordAlloc.removeDeadStructural input1097 value4 value1 value2 = (output1097, value552, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1095]
  dsimp only
  rw [child1096]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1098 value552 value1 value2 = (output1098, value553, value1) := by
  rw [input1098_def, output1098_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1099_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1099 value553 value1 value2 = (output1099, value553, value1) := by
  rw [input1099_def, output1099_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1100 value553 value1 value2 = (output1100, value554, value1) := by
  rw [input1100_def, output1100_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1101 value554 value1 value2 = (output1101, value555, value1) := by
  rw [input1101_def, output1101_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1102 value555 value1 value2 = (output1102, value556, value1) := by
  rw [input1102_def, output1102_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1103 value556 value1 value2 = (output1103, value4, value1) := by
  rw [input1103_def, output1103_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1104_cond_eq
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value555 value1 value2 = (output1102, value556, value1))
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value556 value1 value2 = (output1103, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1104 value555 value1 value2 = (output1104, value4, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1102]
  dsimp only
  rw [child1103]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1105_cond_eq
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value554 value1 value2 = (output1101, value555, value1))
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value555 value1 value2 = (output1104, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1105 value554 value1 value2 = (output1105, value4, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1101]
  dsimp only
  rw [child1104]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1106_cond_eq
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value553 value1 value2 = (output1100, value554, value1))
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value554 value1 value2 = (output1105, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1106 value553 value1 value2 = (output1106, value4, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1100]
  dsimp only
  rw [child1105]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1107 value4 value1 value2 = (output1107, value557, value1) := by
  rw [input1107_def, output1107_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1108 value557 value1 value2 = (output1108, value558, value1) := by
  rw [input1108_def, output1108_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1109_cond_eq
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value4 value1 value2 = (output1107, value557, value1))
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value557 value1 value2 = (output1108, value558, value1)) : Flapjack.WordAlloc.removeDeadStructural input1109 value4 value1 value2 = (output1109, value558, value1) := by
  rw [input1109_def, output1109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1107]
  dsimp only
  rw [child1108]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1110 value558 value1 value2 = (output1110, value559, value1) := by
  rw [input1110_def, output1110_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1111 value559 value1 value2 = (output1111, value559, value1) := by
  rw [input1111_def, output1111_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1112 value559 value1 value2 = (output1112, value560, value1) := by
  rw [input1112_def, output1112_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1113 value560 value1 value2 = (output1113, value561, value1) := by
  rw [input1113_def, output1113_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1114 value561 value1 value2 = (output1114, value562, value1) := by
  rw [input1114_def, output1114_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1115 value562 value1 value2 = (output1115, value4, value1) := by
  rw [input1115_def, output1115_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1116_cond_eq
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value561 value1 value2 = (output1114, value562, value1))
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value562 value1 value2 = (output1115, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1116 value561 value1 value2 = (output1116, value4, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1114]
  dsimp only
  rw [child1115]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1117_cond_eq
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value560 value1 value2 = (output1113, value561, value1))
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value561 value1 value2 = (output1116, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1117 value560 value1 value2 = (output1117, value4, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1113]
  dsimp only
  rw [child1116]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1118_cond_eq
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value559 value1 value2 = (output1112, value560, value1))
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value560 value1 value2 = (output1117, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1118 value559 value1 value2 = (output1118, value4, value1) := by
  rw [input1118_def, output1118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1112]
  dsimp only
  rw [child1117]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1119_cond_eq
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value559 value1 value2 = (output1111, value559, value1))
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value559 value1 value2 = (output1118, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1119 value559 value1 value2 = (output1119, value4, value1) := by
  rw [input1119_def, output1119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1111]
  dsimp only
  rw [child1118]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1120_cond_eq
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value558 value1 value2 = (output1110, value559, value1))
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value559 value1 value2 = (output1119, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1120 value558 value1 value2 = (output1120, value4, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1110]
  dsimp only
  rw [child1119]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1121_cond_eq
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value4 value1 value2 = (output1109, value558, value1))
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value558 value1 value2 = (output1120, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1121 value4 value1 value2 = (output1121, value4, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1109]
  dsimp only
  rw [child1120]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1122_cond_eq
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value553 value1 value2 = (output1106, value4, value1))
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value4 value1 value2 = (output1121, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1122 value553 value1 value2 = (output1122, value4, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1106]
  dsimp only
  rw [child1121]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1123_cond_eq
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value553 value1 value2 = (output1099, value553, value1))
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value553 value1 value2 = (output1122, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1123 value553 value1 value2 = (output1123, value4, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1099]
  dsimp only
  rw [child1122]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1124_cond_eq
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value552 value1 value2 = (output1098, value553, value1))
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value553 value1 value2 = (output1123, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1124 value552 value1 value2 = (output1124, value4, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1098]
  dsimp only
  rw [child1123]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1125_cond_eq
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value4 value1 value2 = (output1097, value552, value1))
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value552 value1 value2 = (output1124, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1125 value4 value1 value2 = (output1125, value4, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1097]
  dsimp only
  rw [child1124]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1126_cond_eq
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value547 value1 value2 = (output1094, value4, value1))
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value4 value1 value2 = (output1125, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1126 value547 value1 value2 = (output1126, value4, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1094]
  dsimp only
  rw [child1125]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1127_cond_eq
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value547 value1 value2 = (output1087, value547, value1))
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value547 value1 value2 = (output1126, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1127 value547 value1 value2 = (output1127, value4, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1087]
  dsimp only
  rw [child1126]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1128_cond_eq
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value546 value1 value2 = (output1086, value547, value1))
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value547 value1 value2 = (output1127, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1128 value546 value1 value2 = (output1128, value4, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1086]
  dsimp only
  rw [child1127]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1129_cond_eq
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value4 value1 value2 = (output1085, value546, value1))
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value546 value1 value2 = (output1128, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1129 value4 value1 value2 = (output1129, value4, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1085]
  dsimp only
  rw [child1128]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1130_cond_eq
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value541 value1 value2 = (output1082, value4, value1))
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value4 value1 value2 = (output1129, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1130 value541 value1 value2 = (output1130, value4, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1082]
  dsimp only
  rw [child1129]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1131_cond_eq
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value541 value1 value2 = (output1075, value541, value1))
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value541 value1 value2 = (output1130, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1131 value541 value1 value2 = (output1131, value4, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1075]
  dsimp only
  rw [child1130]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1132_cond_eq
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value540 value1 value2 = (output1074, value541, value1))
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value541 value1 value2 = (output1131, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1132 value540 value1 value2 = (output1132, value4, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1074]
  dsimp only
  rw [child1131]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1133_cond_eq
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value4 value1 value2 = (output1073, value540, value1))
    (child1132 : Flapjack.WordAlloc.removeDeadStructural input1132 value540 value1 value2 = (output1132, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1133 value4 value1 value2 = (output1133, value4, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1073]
  dsimp only
  rw [child1132]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1134_cond_eq
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value535 value1 value2 = (output1070, value4, value1))
    (child1133 : Flapjack.WordAlloc.removeDeadStructural input1133 value4 value1 value2 = (output1133, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1134 value535 value1 value2 = (output1134, value4, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1070]
  dsimp only
  rw [child1133]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1135_cond_eq
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value535 value1 value2 = (output1063, value535, value1))
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value535 value1 value2 = (output1134, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1135 value535 value1 value2 = (output1135, value4, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1063]
  dsimp only
  rw [child1134]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1136_cond_eq
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value534 value1 value2 = (output1062, value535, value1))
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value535 value1 value2 = (output1135, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1136 value534 value1 value2 = (output1136, value4, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1062]
  dsimp only
  rw [child1135]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1137_cond_eq
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value4 value1 value2 = (output1061, value534, value1))
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value534 value1 value2 = (output1136, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1137 value4 value1 value2 = (output1137, value4, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1061]
  dsimp only
  rw [child1136]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1138_cond_eq
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value529 value1 value2 = (output1058, value4, value1))
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value4 value1 value2 = (output1137, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1138 value529 value1 value2 = (output1138, value4, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1058]
  dsimp only
  rw [child1137]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1139_cond_eq
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value529 value1 value2 = (output1051, value529, value1))
    (child1138 : Flapjack.WordAlloc.removeDeadStructural input1138 value529 value1 value2 = (output1138, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1139 value529 value1 value2 = (output1139, value4, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1051]
  dsimp only
  rw [child1138]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1140_cond_eq
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value528 value1 value2 = (output1050, value529, value1))
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value529 value1 value2 = (output1139, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1140 value528 value1 value2 = (output1140, value4, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1050]
  dsimp only
  rw [child1139]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1141_cond_eq
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value4 value1 value2 = (output1049, value528, value1))
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value528 value1 value2 = (output1140, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1141 value4 value1 value2 = (output1141, value4, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1049]
  dsimp only
  rw [child1140]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1142_cond_eq
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value523 value1 value2 = (output1046, value4, value1))
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value4 value1 value2 = (output1141, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1142 value523 value1 value2 = (output1142, value4, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1046]
  dsimp only
  rw [child1141]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1143_cond_eq
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value523 value1 value2 = (output1039, value523, value1))
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value523 value1 value2 = (output1142, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1143 value523 value1 value2 = (output1143, value4, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1039]
  dsimp only
  rw [child1142]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1144_cond_eq
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value522 value1 value2 = (output1038, value523, value1))
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value523 value1 value2 = (output1143, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1144 value522 value1 value2 = (output1144, value4, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1038]
  dsimp only
  rw [child1143]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1145_cond_eq
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value4 value1 value2 = (output1037, value522, value1))
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value522 value1 value2 = (output1144, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1145 value4 value1 value2 = (output1145, value4, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1037]
  dsimp only
  rw [child1144]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1146_cond_eq
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value517 value1 value2 = (output1034, value4, value1))
    (child1145 : Flapjack.WordAlloc.removeDeadStructural input1145 value4 value1 value2 = (output1145, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1146 value517 value1 value2 = (output1146, value4, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1034]
  dsimp only
  rw [child1145]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1147_cond_eq
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value517 value1 value2 = (output1027, value517, value1))
    (child1146 : Flapjack.WordAlloc.removeDeadStructural input1146 value517 value1 value2 = (output1146, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1147 value517 value1 value2 = (output1147, value4, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1027]
  dsimp only
  rw [child1146]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1148_cond_eq
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value516 value1 value2 = (output1026, value517, value1))
    (child1147 : Flapjack.WordAlloc.removeDeadStructural input1147 value517 value1 value2 = (output1147, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1148 value516 value1 value2 = (output1148, value4, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1026]
  dsimp only
  rw [child1147]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1149_cond_eq
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value4 value1 value2 = (output1025, value516, value1))
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value516 value1 value2 = (output1148, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1149 value4 value1 value2 = (output1149, value4, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1025]
  dsimp only
  rw [child1148]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1150_cond_eq
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value511 value1 value2 = (output1022, value4, value1))
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value4 value1 value2 = (output1149, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1150 value511 value1 value2 = (output1150, value4, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1022]
  dsimp only
  rw [child1149]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1151_cond_eq
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value511 value1 value2 = (output1015, value511, value1))
    (child1150 : Flapjack.WordAlloc.removeDeadStructural input1150 value511 value1 value2 = (output1150, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1151 value511 value1 value2 = (output1151, value4, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1015]
  dsimp only
  rw [child1150]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1152_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value510 value1 value2 = (output1014, value511, value1))
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value511 value1 value2 = (output1151, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1152 value510 value1 value2 = (output1152, value4, value1) := by
  rw [input1152_def, output1152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  dsimp only
  rw [child1151]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1153_cond_eq
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value4 value1 value2 = (output1013, value510, value1))
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value510 value1 value2 = (output1152, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1153 value4 value1 value2 = (output1153, value4, value1) := by
  rw [input1153_def, output1153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1013]
  dsimp only
  rw [child1152]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1154_cond_eq
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value505 value1 value2 = (output1010, value4, value1))
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value4 value1 value2 = (output1153, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1154 value505 value1 value2 = (output1154, value4, value1) := by
  rw [input1154_def, output1154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1010]
  dsimp only
  rw [child1153]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1155_cond_eq
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value505 value1 value2 = (output1003, value505, value1))
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value505 value1 value2 = (output1154, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1155 value505 value1 value2 = (output1155, value4, value1) := by
  rw [input1155_def, output1155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1003]
  dsimp only
  rw [child1154]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1156_cond_eq
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value504 value1 value2 = (output1002, value505, value1))
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value505 value1 value2 = (output1155, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1156 value504 value1 value2 = (output1156, value4, value1) := by
  rw [input1156_def, output1156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1002]
  dsimp only
  rw [child1155]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1157_cond_eq
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value4 value1 value2 = (output1001, value504, value1))
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value504 value1 value2 = (output1156, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1157 value4 value1 value2 = (output1157, value4, value1) := by
  rw [input1157_def, output1157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1001]
  dsimp only
  rw [child1156]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1158_cond_eq
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value499 value1 value2 = (output998, value4, value1))
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value4 value1 value2 = (output1157, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1158 value499 value1 value2 = (output1158, value4, value1) := by
  rw [input1158_def, output1158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child998]
  dsimp only
  rw [child1157]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1159_cond_eq
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value499 value1 value2 = (output991, value499, value1))
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value499 value1 value2 = (output1158, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1159 value499 value1 value2 = (output1159, value4, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child991]
  dsimp only
  rw [child1158]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1160_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value498 value1 value2 = (output990, value499, value1))
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value499 value1 value2 = (output1159, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1160 value498 value1 value2 = (output1160, value4, value1) := by
  rw [input1160_def, output1160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  dsimp only
  rw [child1159]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1161_cond_eq
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value4 value1 value2 = (output989, value498, value1))
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value498 value1 value2 = (output1160, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1161 value4 value1 value2 = (output1161, value4, value1) := by
  rw [input1161_def, output1161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child989]
  dsimp only
  rw [child1160]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1162_cond_eq
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value493 value1 value2 = (output986, value4, value1))
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value4 value1 value2 = (output1161, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1162 value493 value1 value2 = (output1162, value4, value1) := by
  rw [input1162_def, output1162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child986]
  dsimp only
  rw [child1161]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1163_cond_eq
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value493 value1 value2 = (output979, value493, value1))
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value493 value1 value2 = (output1162, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1163 value493 value1 value2 = (output1163, value4, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child979]
  dsimp only
  rw [child1162]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1164_cond_eq
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value492 value1 value2 = (output978, value493, value1))
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value493 value1 value2 = (output1163, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1164 value492 value1 value2 = (output1164, value4, value1) := by
  rw [input1164_def, output1164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child978]
  dsimp only
  rw [child1163]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1165_cond_eq
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value4 value1 value2 = (output977, value492, value1))
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value492 value1 value2 = (output1164, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1165 value4 value1 value2 = (output1165, value4, value1) := by
  rw [input1165_def, output1165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child977]
  dsimp only
  rw [child1164]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1166_cond_eq
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value487 value1 value2 = (output974, value4, value1))
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value4 value1 value2 = (output1165, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1166 value487 value1 value2 = (output1166, value4, value1) := by
  rw [input1166_def, output1166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child974]
  dsimp only
  rw [child1165]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1167_cond_eq
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value487 value1 value2 = (output967, value487, value1))
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value487 value1 value2 = (output1166, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1167 value487 value1 value2 = (output1167, value4, value1) := by
  rw [input1167_def, output1167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child967]
  dsimp only
  rw [child1166]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1168_cond_eq
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value486 value1 value2 = (output966, value487, value1))
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value487 value1 value2 = (output1167, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1168 value486 value1 value2 = (output1168, value4, value1) := by
  rw [input1168_def, output1168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child966]
  dsimp only
  rw [child1167]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1169_cond_eq
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value4 value1 value2 = (output965, value486, value1))
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value486 value1 value2 = (output1168, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1169 value4 value1 value2 = (output1169, value4, value1) := by
  rw [input1169_def, output1169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child965]
  dsimp only
  rw [child1168]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1170_cond_eq
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value481 value1 value2 = (output962, value4, value1))
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value4 value1 value2 = (output1169, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1170 value481 value1 value2 = (output1170, value4, value1) := by
  rw [input1170_def, output1170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child962]
  dsimp only
  rw [child1169]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1171_cond_eq
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value481 value1 value2 = (output955, value481, value1))
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value481 value1 value2 = (output1170, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1171 value481 value1 value2 = (output1171, value4, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child955]
  dsimp only
  rw [child1170]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1172_cond_eq
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value480 value1 value2 = (output954, value481, value1))
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value481 value1 value2 = (output1171, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1172 value480 value1 value2 = (output1172, value4, value1) := by
  rw [input1172_def, output1172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child954]
  dsimp only
  rw [child1171]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1173_cond_eq
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value4 value1 value2 = (output953, value480, value1))
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value480 value1 value2 = (output1172, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1173 value4 value1 value2 = (output1173, value4, value1) := by
  rw [input1173_def, output1173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child953]
  dsimp only
  rw [child1172]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1174_cond_eq
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value475 value1 value2 = (output950, value4, value1))
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value4 value1 value2 = (output1173, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1174 value475 value1 value2 = (output1174, value4, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child950]
  dsimp only
  rw [child1173]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1175_cond_eq
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value475 value1 value2 = (output943, value475, value1))
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value475 value1 value2 = (output1174, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1175 value475 value1 value2 = (output1175, value4, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child943]
  dsimp only
  rw [child1174]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1176_cond_eq
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value474 value1 value2 = (output942, value475, value1))
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value475 value1 value2 = (output1175, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1176 value474 value1 value2 = (output1176, value4, value1) := by
  rw [input1176_def, output1176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child942]
  dsimp only
  rw [child1175]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1177_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value4 value1 value2 = (output941, value474, value1))
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value474 value1 value2 = (output1176, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1177 value4 value1 value2 = (output1177, value4, value1) := by
  rw [input1177_def, output1177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  dsimp only
  rw [child1176]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1178_cond_eq
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value469 value1 value2 = (output938, value4, value1))
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value4 value1 value2 = (output1177, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1178 value469 value1 value2 = (output1178, value4, value1) := by
  rw [input1178_def, output1178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child938]
  dsimp only
  rw [child1177]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1179_cond_eq
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value469 value1 value2 = (output931, value469, value1))
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value469 value1 value2 = (output1178, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1179 value469 value1 value2 = (output1179, value4, value1) := by
  rw [input1179_def, output1179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child931]
  dsimp only
  rw [child1178]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1180_cond_eq
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value468 value1 value2 = (output930, value469, value1))
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value469 value1 value2 = (output1179, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1180 value468 value1 value2 = (output1180, value4, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child930]
  dsimp only
  rw [child1179]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1181_cond_eq
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value4 value1 value2 = (output929, value468, value1))
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value468 value1 value2 = (output1180, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1181 value4 value1 value2 = (output1181, value4, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child929]
  dsimp only
  rw [child1180]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1182_cond_eq
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value463 value1 value2 = (output926, value4, value1))
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value4 value1 value2 = (output1181, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1182 value463 value1 value2 = (output1182, value4, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child926]
  dsimp only
  rw [child1181]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1183_cond_eq
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value463 value1 value2 = (output919, value463, value1))
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value463 value1 value2 = (output1182, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1183 value463 value1 value2 = (output1183, value4, value1) := by
  rw [input1183_def, output1183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child919]
  dsimp only
  rw [child1182]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1184_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value462 value1 value2 = (output918, value463, value1))
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value463 value1 value2 = (output1183, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1184 value462 value1 value2 = (output1184, value4, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  dsimp only
  rw [child1183]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1185_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value4 value1 value2 = (output917, value462, value1))
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value462 value1 value2 = (output1184, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1185 value4 value1 value2 = (output1185, value4, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  dsimp only
  rw [child1184]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1186_cond_eq
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value457 value1 value2 = (output914, value4, value1))
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value4 value1 value2 = (output1185, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1186 value457 value1 value2 = (output1186, value4, value1) := by
  rw [input1186_def, output1186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child914]
  dsimp only
  rw [child1185]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1187_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value457 value1 value2 = (output907, value457, value1))
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value457 value1 value2 = (output1186, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1187 value457 value1 value2 = (output1187, value4, value1) := by
  rw [input1187_def, output1187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  dsimp only
  rw [child1186]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1188_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value456 value1 value2 = (output906, value457, value1))
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value457 value1 value2 = (output1187, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1188 value456 value1 value2 = (output1188, value4, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  dsimp only
  rw [child1187]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1189_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value4 value1 value2 = (output905, value456, value1))
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value456 value1 value2 = (output1188, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1189 value4 value1 value2 = (output1189, value4, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  dsimp only
  rw [child1188]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1190_cond_eq
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value451 value1 value2 = (output902, value4, value1))
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value4 value1 value2 = (output1189, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1190 value451 value1 value2 = (output1190, value4, value1) := by
  rw [input1190_def, output1190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child902]
  dsimp only
  rw [child1189]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1191_cond_eq
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value451 value1 value2 = (output895, value451, value1))
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value451 value1 value2 = (output1190, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1191 value451 value1 value2 = (output1191, value4, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child895]
  dsimp only
  rw [child1190]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1192_cond_eq
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value450 value1 value2 = (output894, value451, value1))
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value451 value1 value2 = (output1191, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1192 value450 value1 value2 = (output1192, value4, value1) := by
  rw [input1192_def, output1192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child894]
  dsimp only
  rw [child1191]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1193_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value4 value1 value2 = (output893, value450, value1))
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value450 value1 value2 = (output1192, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1193 value4 value1 value2 = (output1193, value4, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  dsimp only
  rw [child1192]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1194_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value445 value1 value2 = (output890, value4, value1))
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value4 value1 value2 = (output1193, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1194 value445 value1 value2 = (output1194, value4, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  dsimp only
  rw [child1193]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1195_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value445 value1 value2 = (output883, value445, value1))
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value445 value1 value2 = (output1194, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1195 value445 value1 value2 = (output1195, value4, value1) := by
  rw [input1195_def, output1195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  dsimp only
  rw [child1194]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1196_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value444 value1 value2 = (output882, value445, value1))
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value445 value1 value2 = (output1195, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1196 value444 value1 value2 = (output1196, value4, value1) := by
  rw [input1196_def, output1196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  dsimp only
  rw [child1195]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1197_cond_eq
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value4 value1 value2 = (output881, value444, value1))
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value444 value1 value2 = (output1196, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1197 value4 value1 value2 = (output1197, value4, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child881]
  dsimp only
  rw [child1196]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1198_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value439 value1 value2 = (output878, value4, value1))
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value4 value1 value2 = (output1197, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1198 value439 value1 value2 = (output1198, value4, value1) := by
  rw [input1198_def, output1198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  dsimp only
  rw [child1197]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1199_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value439 value1 value2 = (output871, value439, value1))
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value439 value1 value2 = (output1198, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1199 value439 value1 value2 = (output1199, value4, value1) := by
  rw [input1199_def, output1199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  dsimp only
  rw [child1198]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1200_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value438 value1 value2 = (output870, value439, value1))
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value439 value1 value2 = (output1199, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1200 value438 value1 value2 = (output1200, value4, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  dsimp only
  rw [child1199]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1201_cond_eq
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value4 value1 value2 = (output869, value438, value1))
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value438 value1 value2 = (output1200, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1201 value4 value1 value2 = (output1201, value4, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child869]
  dsimp only
  rw [child1200]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1202_cond_eq
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value433 value1 value2 = (output866, value4, value1))
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value4 value1 value2 = (output1201, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1202 value433 value1 value2 = (output1202, value4, value1) := by
  rw [input1202_def, output1202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child866]
  dsimp only
  rw [child1201]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1203_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value433 value1 value2 = (output859, value433, value1))
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value433 value1 value2 = (output1202, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1203 value433 value1 value2 = (output1203, value4, value1) := by
  rw [input1203_def, output1203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  dsimp only
  rw [child1202]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1204_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value432 value1 value2 = (output858, value433, value1))
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value433 value1 value2 = (output1203, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1204 value432 value1 value2 = (output1204, value4, value1) := by
  rw [input1204_def, output1204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  dsimp only
  rw [child1203]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1205_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value4 value1 value2 = (output857, value432, value1))
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value432 value1 value2 = (output1204, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1205 value4 value1 value2 = (output1205, value4, value1) := by
  rw [input1205_def, output1205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  dsimp only
  rw [child1204]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1206_cond_eq
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value427 value1 value2 = (output854, value4, value1))
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value4 value1 value2 = (output1205, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1206 value427 value1 value2 = (output1206, value4, value1) := by
  rw [input1206_def, output1206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child854]
  dsimp only
  rw [child1205]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1207_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value427 value1 value2 = (output847, value427, value1))
    (child1206 : Flapjack.WordAlloc.removeDeadStructural input1206 value427 value1 value2 = (output1206, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1207 value427 value1 value2 = (output1207, value4, value1) := by
  rw [input1207_def, output1207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  dsimp only
  rw [child1206]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1208_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value426 value1 value2 = (output846, value427, value1))
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value427 value1 value2 = (output1207, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1208 value426 value1 value2 = (output1208, value4, value1) := by
  rw [input1208_def, output1208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  dsimp only
  rw [child1207]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1209_cond_eq
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value4 value1 value2 = (output845, value426, value1))
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value426 value1 value2 = (output1208, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1209 value4 value1 value2 = (output1209, value4, value1) := by
  rw [input1209_def, output1209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child845]
  dsimp only
  rw [child1208]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1210_cond_eq
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value421 value1 value2 = (output842, value4, value1))
    (child1209 : Flapjack.WordAlloc.removeDeadStructural input1209 value4 value1 value2 = (output1209, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1210 value421 value1 value2 = (output1210, value4, value1) := by
  rw [input1210_def, output1210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child842]
  dsimp only
  rw [child1209]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1211_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value421 value1 value2 = (output835, value421, value1))
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value421 value1 value2 = (output1210, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1211 value421 value1 value2 = (output1211, value4, value1) := by
  rw [input1211_def, output1211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child835]
  dsimp only
  rw [child1210]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1212_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value420 value1 value2 = (output834, value421, value1))
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value421 value1 value2 = (output1211, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1212 value420 value1 value2 = (output1212, value4, value1) := by
  rw [input1212_def, output1212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  dsimp only
  rw [child1211]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1213_cond_eq
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value4 value1 value2 = (output833, value420, value1))
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value420 value1 value2 = (output1212, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1213 value4 value1 value2 = (output1213, value4, value1) := by
  rw [input1213_def, output1213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child833]
  dsimp only
  rw [child1212]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1214_cond_eq
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value415 value1 value2 = (output830, value4, value1))
    (child1213 : Flapjack.WordAlloc.removeDeadStructural input1213 value4 value1 value2 = (output1213, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1214 value415 value1 value2 = (output1214, value4, value1) := by
  rw [input1214_def, output1214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child830]
  dsimp only
  rw [child1213]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1215_cond_eq
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value415 value1 value2 = (output823, value415, value1))
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value415 value1 value2 = (output1214, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1215 value415 value1 value2 = (output1215, value4, value1) := by
  rw [input1215_def, output1215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child823]
  dsimp only
  rw [child1214]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1216_cond_eq
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value414 value1 value2 = (output822, value415, value1))
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value415 value1 value2 = (output1215, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1216 value414 value1 value2 = (output1216, value4, value1) := by
  rw [input1216_def, output1216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child822]
  dsimp only
  rw [child1215]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1217_cond_eq
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value4 value1 value2 = (output821, value414, value1))
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value414 value1 value2 = (output1216, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1217 value4 value1 value2 = (output1217, value4, value1) := by
  rw [input1217_def, output1217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child821]
  dsimp only
  rw [child1216]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1218_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value409 value1 value2 = (output818, value4, value1))
    (child1217 : Flapjack.WordAlloc.removeDeadStructural input1217 value4 value1 value2 = (output1217, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1218 value409 value1 value2 = (output1218, value4, value1) := by
  rw [input1218_def, output1218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  dsimp only
  rw [child1217]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1219_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value409 value1 value2 = (output811, value409, value1))
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value409 value1 value2 = (output1218, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1219 value409 value1 value2 = (output1219, value4, value1) := by
  rw [input1219_def, output1219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  dsimp only
  rw [child1218]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1220_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value408 value1 value2 = (output810, value409, value1))
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value409 value1 value2 = (output1219, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1220 value408 value1 value2 = (output1220, value4, value1) := by
  rw [input1220_def, output1220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  dsimp only
  rw [child1219]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1221_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value4 value1 value2 = (output809, value408, value1))
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value408 value1 value2 = (output1220, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1221 value4 value1 value2 = (output1221, value4, value1) := by
  rw [input1221_def, output1221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  dsimp only
  rw [child1220]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1222_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value403 value1 value2 = (output806, value4, value1))
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value4 value1 value2 = (output1221, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1222 value403 value1 value2 = (output1222, value4, value1) := by
  rw [input1222_def, output1222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  dsimp only
  rw [child1221]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1223_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value403 value1 value2 = (output799, value403, value1))
    (child1222 : Flapjack.WordAlloc.removeDeadStructural input1222 value403 value1 value2 = (output1222, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1223 value403 value1 value2 = (output1223, value4, value1) := by
  rw [input1223_def, output1223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  dsimp only
  rw [child1222]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1224_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value402 value1 value2 = (output798, value403, value1))
    (child1223 : Flapjack.WordAlloc.removeDeadStructural input1223 value403 value1 value2 = (output1223, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1224 value402 value1 value2 = (output1224, value4, value1) := by
  rw [input1224_def, output1224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  dsimp only
  rw [child1223]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1225_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value4 value1 value2 = (output797, value402, value1))
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value402 value1 value2 = (output1224, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1225 value4 value1 value2 = (output1225, value4, value1) := by
  rw [input1225_def, output1225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  dsimp only
  rw [child1224]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1226_cond_eq
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value397 value1 value2 = (output794, value4, value1))
    (child1225 : Flapjack.WordAlloc.removeDeadStructural input1225 value4 value1 value2 = (output1225, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1226 value397 value1 value2 = (output1226, value4, value1) := by
  rw [input1226_def, output1226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child794]
  dsimp only
  rw [child1225]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1227_cond_eq
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value397 value1 value2 = (output787, value397, value1))
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value397 value1 value2 = (output1226, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1227 value397 value1 value2 = (output1227, value4, value1) := by
  rw [input1227_def, output1227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child787]
  dsimp only
  rw [child1226]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1228_cond_eq
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value396 value1 value2 = (output786, value397, value1))
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value397 value1 value2 = (output1227, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1228 value396 value1 value2 = (output1228, value4, value1) := by
  rw [input1228_def, output1228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child786]
  dsimp only
  rw [child1227]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1229_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value4 value1 value2 = (output785, value396, value1))
    (child1228 : Flapjack.WordAlloc.removeDeadStructural input1228 value396 value1 value2 = (output1228, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1229 value4 value1 value2 = (output1229, value4, value1) := by
  rw [input1229_def, output1229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  dsimp only
  rw [child1228]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1230_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value391 value1 value2 = (output782, value4, value1))
    (child1229 : Flapjack.WordAlloc.removeDeadStructural input1229 value4 value1 value2 = (output1229, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1230 value391 value1 value2 = (output1230, value4, value1) := by
  rw [input1230_def, output1230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  dsimp only
  rw [child1229]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1231_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value391 value1 value2 = (output775, value391, value1))
    (child1230 : Flapjack.WordAlloc.removeDeadStructural input1230 value391 value1 value2 = (output1230, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1231 value391 value1 value2 = (output1231, value4, value1) := by
  rw [input1231_def, output1231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  dsimp only
  rw [child1230]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1232_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value390 value1 value2 = (output774, value391, value1))
    (child1231 : Flapjack.WordAlloc.removeDeadStructural input1231 value391 value1 value2 = (output1231, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1232 value390 value1 value2 = (output1232, value4, value1) := by
  rw [input1232_def, output1232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  dsimp only
  rw [child1231]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1233_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value4 value1 value2 = (output773, value390, value1))
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value390 value1 value2 = (output1232, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1233 value4 value1 value2 = (output1233, value4, value1) := by
  rw [input1233_def, output1233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  dsimp only
  rw [child1232]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1234_cond_eq
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value385 value1 value2 = (output770, value4, value1))
    (child1233 : Flapjack.WordAlloc.removeDeadStructural input1233 value4 value1 value2 = (output1233, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1234 value385 value1 value2 = (output1234, value4, value1) := by
  rw [input1234_def, output1234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child770]
  dsimp only
  rw [child1233]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1235_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value385 value1 value2 = (output763, value385, value1))
    (child1234 : Flapjack.WordAlloc.removeDeadStructural input1234 value385 value1 value2 = (output1234, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1235 value385 value1 value2 = (output1235, value4, value1) := by
  rw [input1235_def, output1235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  dsimp only
  rw [child1234]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1236_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value384 value1 value2 = (output762, value385, value1))
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value385 value1 value2 = (output1235, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1236 value384 value1 value2 = (output1236, value4, value1) := by
  rw [input1236_def, output1236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  dsimp only
  rw [child1235]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1237_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value4 value1 value2 = (output761, value384, value1))
    (child1236 : Flapjack.WordAlloc.removeDeadStructural input1236 value384 value1 value2 = (output1236, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1237 value4 value1 value2 = (output1237, value4, value1) := by
  rw [input1237_def, output1237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  dsimp only
  rw [child1236]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1238_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value379 value1 value2 = (output758, value4, value1))
    (child1237 : Flapjack.WordAlloc.removeDeadStructural input1237 value4 value1 value2 = (output1237, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1238 value379 value1 value2 = (output1238, value4, value1) := by
  rw [input1238_def, output1238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  dsimp only
  rw [child1237]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1239_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value379 value1 value2 = (output751, value379, value1))
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value379 value1 value2 = (output1238, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1239 value379 value1 value2 = (output1239, value4, value1) := by
  rw [input1239_def, output1239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  dsimp only
  rw [child1238]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1240_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value378 value1 value2 = (output750, value379, value1))
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value379 value1 value2 = (output1239, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1240 value378 value1 value2 = (output1240, value4, value1) := by
  rw [input1240_def, output1240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  dsimp only
  rw [child1239]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1241_cond_eq
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value4 value1 value2 = (output749, value378, value1))
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value378 value1 value2 = (output1240, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1241 value4 value1 value2 = (output1241, value4, value1) := by
  rw [input1241_def, output1241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child749]
  dsimp only
  rw [child1240]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1242_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value373 value1 value2 = (output746, value4, value1))
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value4 value1 value2 = (output1241, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1242 value373 value1 value2 = (output1242, value4, value1) := by
  rw [input1242_def, output1242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  dsimp only
  rw [child1241]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1243_cond_eq
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value373 value1 value2 = (output739, value373, value1))
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value373 value1 value2 = (output1242, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1243 value373 value1 value2 = (output1243, value4, value1) := by
  rw [input1243_def, output1243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child739]
  dsimp only
  rw [child1242]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1244_cond_eq
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value372 value1 value2 = (output738, value373, value1))
    (child1243 : Flapjack.WordAlloc.removeDeadStructural input1243 value373 value1 value2 = (output1243, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1244 value372 value1 value2 = (output1244, value4, value1) := by
  rw [input1244_def, output1244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child738]
  dsimp only
  rw [child1243]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1245_cond_eq
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value4 value1 value2 = (output737, value372, value1))
    (child1244 : Flapjack.WordAlloc.removeDeadStructural input1244 value372 value1 value2 = (output1244, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1245 value4 value1 value2 = (output1245, value4, value1) := by
  rw [input1245_def, output1245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child737]
  dsimp only
  rw [child1244]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1246_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value367 value1 value2 = (output734, value4, value1))
    (child1245 : Flapjack.WordAlloc.removeDeadStructural input1245 value4 value1 value2 = (output1245, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1246 value367 value1 value2 = (output1246, value4, value1) := by
  rw [input1246_def, output1246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  dsimp only
  rw [child1245]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1247_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value367 value1 value2 = (output727, value367, value1))
    (child1246 : Flapjack.WordAlloc.removeDeadStructural input1246 value367 value1 value2 = (output1246, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1247 value367 value1 value2 = (output1247, value4, value1) := by
  rw [input1247_def, output1247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  dsimp only
  rw [child1246]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1248_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value366 value1 value2 = (output726, value367, value1))
    (child1247 : Flapjack.WordAlloc.removeDeadStructural input1247 value367 value1 value2 = (output1247, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1248 value366 value1 value2 = (output1248, value4, value1) := by
  rw [input1248_def, output1248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  dsimp only
  rw [child1247]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1249_cond_eq
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value4 value1 value2 = (output725, value366, value1))
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value366 value1 value2 = (output1248, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1249 value4 value1 value2 = (output1249, value4, value1) := by
  rw [input1249_def, output1249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child725]
  dsimp only
  rw [child1248]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1250_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value361 value1 value2 = (output722, value4, value1))
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value4 value1 value2 = (output1249, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1250 value361 value1 value2 = (output1250, value4, value1) := by
  rw [input1250_def, output1250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  dsimp only
  rw [child1249]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1251_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value361 value1 value2 = (output715, value361, value1))
    (child1250 : Flapjack.WordAlloc.removeDeadStructural input1250 value361 value1 value2 = (output1250, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1251 value361 value1 value2 = (output1251, value4, value1) := by
  rw [input1251_def, output1251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  dsimp only
  rw [child1250]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1252_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value360 value1 value2 = (output714, value361, value1))
    (child1251 : Flapjack.WordAlloc.removeDeadStructural input1251 value361 value1 value2 = (output1251, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1252 value360 value1 value2 = (output1252, value4, value1) := by
  rw [input1252_def, output1252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  dsimp only
  rw [child1251]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1253_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value4 value1 value2 = (output713, value360, value1))
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value360 value1 value2 = (output1252, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1253 value4 value1 value2 = (output1253, value4, value1) := by
  rw [input1253_def, output1253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  dsimp only
  rw [child1252]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1254_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value355 value1 value2 = (output710, value4, value1))
    (child1253 : Flapjack.WordAlloc.removeDeadStructural input1253 value4 value1 value2 = (output1253, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1254 value355 value1 value2 = (output1254, value4, value1) := by
  rw [input1254_def, output1254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  dsimp only
  rw [child1253]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1255_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value355 value1 value2 = (output703, value355, value1))
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value355 value1 value2 = (output1254, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1255 value355 value1 value2 = (output1255, value4, value1) := by
  rw [input1255_def, output1255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  dsimp only
  rw [child1254]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1256_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value354 value1 value2 = (output702, value355, value1))
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value355 value1 value2 = (output1255, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1256 value354 value1 value2 = (output1256, value4, value1) := by
  rw [input1256_def, output1256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  dsimp only
  rw [child1255]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1257_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value4 value1 value2 = (output701, value354, value1))
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value354 value1 value2 = (output1256, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1257 value4 value1 value2 = (output1257, value4, value1) := by
  rw [input1257_def, output1257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  dsimp only
  rw [child1256]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1258_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value349 value1 value2 = (output698, value4, value1))
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value4 value1 value2 = (output1257, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1258 value349 value1 value2 = (output1258, value4, value1) := by
  rw [input1258_def, output1258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  dsimp only
  rw [child1257]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1259_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value349 value1 value2 = (output691, value349, value1))
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value349 value1 value2 = (output1258, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1259 value349 value1 value2 = (output1259, value4, value1) := by
  rw [input1259_def, output1259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  dsimp only
  rw [child1258]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1260_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value348 value1 value2 = (output690, value349, value1))
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value349 value1 value2 = (output1259, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1260 value348 value1 value2 = (output1260, value4, value1) := by
  rw [input1260_def, output1260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  dsimp only
  rw [child1259]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1261_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value4 value1 value2 = (output689, value348, value1))
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value348 value1 value2 = (output1260, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1261 value4 value1 value2 = (output1261, value4, value1) := by
  rw [input1261_def, output1261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  dsimp only
  rw [child1260]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1262_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value343 value1 value2 = (output686, value4, value1))
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value4 value1 value2 = (output1261, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1262 value343 value1 value2 = (output1262, value4, value1) := by
  rw [input1262_def, output1262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  dsimp only
  rw [child1261]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1263_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value343 value1 value2 = (output679, value343, value1))
    (child1262 : Flapjack.WordAlloc.removeDeadStructural input1262 value343 value1 value2 = (output1262, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1263 value343 value1 value2 = (output1263, value4, value1) := by
  rw [input1263_def, output1263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  dsimp only
  rw [child1262]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1264_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value342 value1 value2 = (output678, value343, value1))
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value343 value1 value2 = (output1263, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1264 value342 value1 value2 = (output1264, value4, value1) := by
  rw [input1264_def, output1264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  dsimp only
  rw [child1263]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1265_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value4 value1 value2 = (output677, value342, value1))
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value342 value1 value2 = (output1264, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1265 value4 value1 value2 = (output1265, value4, value1) := by
  rw [input1265_def, output1265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  dsimp only
  rw [child1264]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1266_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value337 value1 value2 = (output674, value4, value1))
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value4 value1 value2 = (output1265, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1266 value337 value1 value2 = (output1266, value4, value1) := by
  rw [input1266_def, output1266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  dsimp only
  rw [child1265]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1267_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value337 value1 value2 = (output667, value337, value1))
    (child1266 : Flapjack.WordAlloc.removeDeadStructural input1266 value337 value1 value2 = (output1266, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1267 value337 value1 value2 = (output1267, value4, value1) := by
  rw [input1267_def, output1267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  dsimp only
  rw [child1266]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1268_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value336 value1 value2 = (output666, value337, value1))
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value337 value1 value2 = (output1267, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1268 value336 value1 value2 = (output1268, value4, value1) := by
  rw [input1268_def, output1268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  dsimp only
  rw [child1267]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1269_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value4 value1 value2 = (output665, value336, value1))
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value336 value1 value2 = (output1268, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1269 value4 value1 value2 = (output1269, value4, value1) := by
  rw [input1269_def, output1269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  dsimp only
  rw [child1268]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1270_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value331 value1 value2 = (output662, value4, value1))
    (child1269 : Flapjack.WordAlloc.removeDeadStructural input1269 value4 value1 value2 = (output1269, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1270 value331 value1 value2 = (output1270, value4, value1) := by
  rw [input1270_def, output1270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  dsimp only
  rw [child1269]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1271_cond_eq
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value331 value1 value2 = (output655, value331, value1))
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value331 value1 value2 = (output1270, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1271 value331 value1 value2 = (output1271, value4, value1) := by
  rw [input1271_def, output1271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child655]
  dsimp only
  rw [child1270]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1272_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value330 value1 value2 = (output654, value331, value1))
    (child1271 : Flapjack.WordAlloc.removeDeadStructural input1271 value331 value1 value2 = (output1271, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1272 value330 value1 value2 = (output1272, value4, value1) := by
  rw [input1272_def, output1272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  dsimp only
  rw [child1271]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1273_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value4 value1 value2 = (output653, value330, value1))
    (child1272 : Flapjack.WordAlloc.removeDeadStructural input1272 value330 value1 value2 = (output1272, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1273 value4 value1 value2 = (output1273, value4, value1) := by
  rw [input1273_def, output1273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  dsimp only
  rw [child1272]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1274_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value325 value1 value2 = (output650, value4, value1))
    (child1273 : Flapjack.WordAlloc.removeDeadStructural input1273 value4 value1 value2 = (output1273, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1274 value325 value1 value2 = (output1274, value4, value1) := by
  rw [input1274_def, output1274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  dsimp only
  rw [child1273]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1275_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value325 value1 value2 = (output643, value325, value1))
    (child1274 : Flapjack.WordAlloc.removeDeadStructural input1274 value325 value1 value2 = (output1274, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1275 value325 value1 value2 = (output1275, value4, value1) := by
  rw [input1275_def, output1275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child643]
  dsimp only
  rw [child1274]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1276_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value324 value1 value2 = (output642, value325, value1))
    (child1275 : Flapjack.WordAlloc.removeDeadStructural input1275 value325 value1 value2 = (output1275, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1276 value324 value1 value2 = (output1276, value4, value1) := by
  rw [input1276_def, output1276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  dsimp only
  rw [child1275]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1277_cond_eq
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value4 value1 value2 = (output641, value324, value1))
    (child1276 : Flapjack.WordAlloc.removeDeadStructural input1276 value324 value1 value2 = (output1276, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1277 value4 value1 value2 = (output1277, value4, value1) := by
  rw [input1277_def, output1277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child641]
  dsimp only
  rw [child1276]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1278_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value319 value1 value2 = (output638, value4, value1))
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value4 value1 value2 = (output1277, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1278 value319 value1 value2 = (output1278, value4, value1) := by
  rw [input1278_def, output1278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  dsimp only
  rw [child1277]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1279_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value319 value1 value2 = (output631, value319, value1))
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value319 value1 value2 = (output1278, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1279 value319 value1 value2 = (output1279, value4, value1) := by
  rw [input1279_def, output1279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  dsimp only
  rw [child1278]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1279_cond_eq
end InitECandidate.Proofs.DeadStages64.Parallel
