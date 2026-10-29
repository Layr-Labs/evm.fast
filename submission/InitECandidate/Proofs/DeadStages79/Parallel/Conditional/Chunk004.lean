import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages79.Parallel
theorem node1024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1024 value250 value1 value2 = (output1024, value250, value1) := by
  rw [input1024_def, output1024_def]
  kernel_rfl

theorem node1025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1025 value250 value1 value2 = (output1025, value250, value1) := by
  rw [input1025_def, output1025_def]
  kernel_rfl

theorem node1026_cond_eq
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value250 value1 value2 = (output1024, value250, value1))
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value250 value1 value2 = (output1025, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1026 value250 value1 value2 = (output1026, value250, value1) := by
  rw [input1026_def, output1026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1024]
  try dsimp only
  rw [child1025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1024_skip, output1025_skip]
  kernel_rfl

theorem node1027_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1027 value250 value1 value2 = (output1027, value250, value1) := by
  rw [input1027_def, output1027_def]
  kernel_rfl

theorem node1028_cond_eq
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value250 value1 value2 = (output1026, value250, value1))
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value250 value1 value2 = (output1027, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1028 value250 value1 value2 = (output1028, value250, value1) := by
  rw [input1028_def, output1028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1026]
  try dsimp only
  rw [child1027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1026_skip, output1027_skip]
  kernel_rfl

theorem node1029_cond_eq
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value250 value1 value2 = (output1023, value250, value1))
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value250 value1 value2 = (output1028, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input1029 value250 value1 value2 = (output1029, value255, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1023]
  try dsimp only
  rw [child1028]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1023_skip, output1028_skip]
  kernel_rfl

theorem node1030_cond_eq
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value250 value1 value2 = (output1008, value250, value1))
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value250 value1 value2 = (output1029, value255, value1)) : Flapjack.WordAlloc.removeDeadStructural input1030 value250 value1 value2 = (output1030, value255, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1008]
  try dsimp only
  rw [child1029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1008_skip, output1029_skip]
  kernel_rfl

theorem node1031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1031 value255 value1 value2 = (output1031, value256, value1) := by
  rw [input1031_def, output1031_def]
  kernel_rfl

theorem node1032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1032 value256 value1 value2 = (output1032, value257, value1) := by
  rw [input1032_def, output1032_def]
  kernel_rfl

theorem node1033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1033 value257 value1 value2 = (output1033, value258, value1) := by
  rw [input1033_def, output1033_def]
  kernel_rfl

theorem node1034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1034 value258 value1 value2 = (output1034, value259, value1) := by
  rw [input1034_def, output1034_def]
  kernel_rfl

theorem node1035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1035 value259 value1 value2 = (output1035, value260, value1) := by
  rw [input1035_def, output1035_def]
  kernel_rfl

theorem node1036_cond_eq
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value258 value1 value2 = (output1034, value259, value1))
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value259 value1 value2 = (output1035, value260, value1)) : Flapjack.WordAlloc.removeDeadStructural input1036 value258 value1 value2 = (output1036, value260, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1034]
  try dsimp only
  rw [child1035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1034_skip, output1035_skip]
  kernel_rfl

theorem node1037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1037 value260 value1 value2 = (output1037, value261, value1) := by
  rw [input1037_def, output1037_def]
  kernel_rfl

theorem node1038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1038 value261 value1 value2 = (output1038, value262, value1) := by
  rw [input1038_def, output1038_def]
  kernel_rfl

theorem node1039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1039 value262 value1 value2 = (output1039, value263, value1) := by
  rw [input1039_def, output1039_def]
  kernel_rfl

theorem node1040_cond_eq
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value261 value1 value2 = (output1038, value262, value1))
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value262 value1 value2 = (output1039, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1040 value261 value1 value2 = (output1040, value263, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1038]
  try dsimp only
  rw [child1039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1038_skip, output1039_skip]
  kernel_rfl

theorem node1041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1041 value263 value1 value2 = (output1041, value263, value1) := by
  rw [input1041_def, output1041_def]
  kernel_rfl

theorem node1042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1042 value263 value1 value2 = (output1042, value263, value1) := by
  rw [input1042_def, output1042_def]
  kernel_rfl

theorem node1043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1043 value263 value1 value2 = (output1043, value263, value1) := by
  rw [input1043_def, output1043_def]
  kernel_rfl

theorem node1044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1044 value263 value1 value2 = (output1044, value263, value1) := by
  rw [input1044_def, output1044_def]
  kernel_rfl

theorem node1045_cond_eq
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value263 value1 value2 = (output1043, value263, value1))
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value263 value1 value2 = (output1044, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1045 value263 value1 value2 = (output1045, value263, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1043]
  try dsimp only
  rw [child1044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1043_skip, output1044_skip]
  kernel_rfl

theorem node1046_cond_eq
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value263 value1 value2 = (output1042, value263, value1))
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value263 value1 value2 = (output1045, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1046 value263 value1 value2 = (output1046, value263, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1042]
  try dsimp only
  rw [child1045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1042_skip, output1045_skip]
  kernel_rfl

theorem node1047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1047 value263 value1 value2 = (output1047, value263, value1) := by
  rw [input1047_def, output1047_def]
  kernel_rfl

theorem node1048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1048 value263 value1 value2 = (output1048, value263, value1) := by
  rw [input1048_def, output1048_def]
  kernel_rfl

theorem node1049_cond_eq
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value263 value1 value2 = (output1047, value263, value1))
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value263 value1 value2 = (output1048, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1049 value263 value1 value2 = (output1049, value263, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1047]
  try dsimp only
  rw [child1048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1047_skip, output1048_skip]
  kernel_rfl

theorem node1050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1050 value263 value1 value2 = (output1050, value264, value1) := by
  rw [input1050_def, output1050_def]
  kernel_rfl

theorem node1051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1051 value264 value1 value2 = (output1051, value265, value1) := by
  rw [input1051_def, output1051_def]
  kernel_rfl

theorem node1052_cond_eq
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value263 value1 value2 = (output1050, value264, value1))
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value264 value1 value2 = (output1051, value265, value1)) : Flapjack.WordAlloc.removeDeadStructural input1052 value263 value1 value2 = (output1052, value265, value1) := by
  rw [input1052_def, output1052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1050]
  try dsimp only
  rw [child1051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1050_skip, output1051_skip]
  kernel_rfl

theorem node1053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1053 value265 value1 value2 = (output1053, value263, value1) := by
  rw [input1053_def, output1053_def]
  kernel_rfl

theorem node1054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1054 value263 value1 value2 = (output1054, value263, value1) := by
  rw [input1054_def, output1054_def]
  kernel_rfl

theorem node1055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1055 value263 value1 value2 = (output1055, value263, value1) := by
  rw [input1055_def, output1055_def]
  kernel_rfl

theorem node1056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1056 value263 value1 value2 = (output1056, value263, value1) := by
  rw [input1056_def, output1056_def]
  kernel_rfl

theorem node1057_cond_eq
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value263 value1 value2 = (output1055, value263, value1))
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value263 value1 value2 = (output1056, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1057 value263 value1 value2 = (output1057, value263, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1055]
  try dsimp only
  rw [child1056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1055_skip, output1056_skip]
  kernel_rfl

theorem node1058_cond_eq
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value263 value1 value2 = (output1054, value263, value1))
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value263 value1 value2 = (output1057, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1058 value263 value1 value2 = (output1058, value263, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1054]
  try dsimp only
  rw [child1057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1054_skip, output1057_skip]
  kernel_rfl

theorem node1059_cond_eq
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value265 value1 value2 = (output1053, value263, value1))
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value263 value1 value2 = (output1058, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1059 value265 value1 value2 = (output1059, value263, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1053]
  try dsimp only
  rw [child1058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1053_skip, output1058_skip]
  kernel_rfl

theorem node1060_cond_eq
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value263 value1 value2 = (output1052, value265, value1))
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value265 value1 value2 = (output1059, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1060 value263 value1 value2 = (output1060, value263, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1052]
  try dsimp only
  rw [child1059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1052_skip, output1059_skip]
  kernel_rfl

theorem node1061_cond_eq
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value263 value1 value2 = (output1049, value263, value1))
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value263 value1 value2 = (output1060, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1061 value263 value1 value2 = (output1061, value263, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1049]
  try dsimp only
  rw [child1060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1049_skip, output1060_skip]
  kernel_rfl

theorem node1062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1062 value263 value1 value2 = (output1062, value263, value1) := by
  rw [input1062_def, output1062_def]
  kernel_rfl

theorem node1063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1063 value263 value1 value2 = (output1063, value263, value1) := by
  rw [input1063_def, output1063_def]
  kernel_rfl

theorem node1064_cond_eq
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value263 value1 value2 = (output1062, value263, value1))
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value263 value1 value2 = (output1063, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1064 value263 value1 value2 = (output1064, value263, value1) := by
  rw [input1064_def, output1064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1062]
  try dsimp only
  rw [child1063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1062_skip, output1063_skip]
  kernel_rfl

theorem node1065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1065 value263 value1 value2 = (output1065, value263, value1) := by
  rw [input1065_def, output1065_def]
  kernel_rfl

theorem node1066_cond_eq
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value263 value1 value2 = (output1064, value263, value1))
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value263 value1 value2 = (output1065, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1066 value263 value1 value2 = (output1066, value263, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1064]
  try dsimp only
  rw [child1065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1064_skip, output1065_skip]
  kernel_rfl

theorem node1067_cond_eq
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value263 value1 value2 = (output1061, value263, value1))
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value263 value1 value2 = (output1066, value263, value1)) : Flapjack.WordAlloc.removeDeadStructural input1067 value263 value1 value2 = (output1067, value267, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1061]
  try dsimp only
  rw [child1066]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1061_skip, output1066_skip]
  kernel_rfl

theorem node1068_cond_eq
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value263 value1 value2 = (output1046, value263, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value263 value1 value2 = (output1067, value267, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value263 value1 value2 = (output1068, value267, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1046]
  try dsimp only
  rw [child1067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1046_skip, output1067_skip]
  kernel_rfl

theorem node1069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1069 value267 value1 value2 = (output1069, value268, value1) := by
  rw [input1069_def, output1069_def]
  kernel_rfl

theorem node1070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1070 value268 value1 value2 = (output1070, value269, value1) := by
  rw [input1070_def, output1070_def]
  kernel_rfl

theorem node1071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1071 value269 value1 value2 = (output1071, value270, value1) := by
  rw [input1071_def, output1071_def]
  kernel_rfl

theorem node1072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1072 value270 value1 value2 = (output1072, value271, value1) := by
  rw [input1072_def, output1072_def]
  kernel_rfl

theorem node1073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1073 value271 value1 value2 = (output1073, value272, value1) := by
  rw [input1073_def, output1073_def]
  kernel_rfl

theorem node1074_cond_eq
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value270 value1 value2 = (output1072, value271, value1))
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value271 value1 value2 = (output1073, value272, value1)) : Flapjack.WordAlloc.removeDeadStructural input1074 value270 value1 value2 = (output1074, value272, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1072]
  try dsimp only
  rw [child1073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1072_skip, output1073_skip]
  kernel_rfl

theorem node1075_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1075 value272 value1 value2 = (output1075, value273, value1) := by
  rw [input1075_def, output1075_def]
  kernel_rfl

theorem node1076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1076 value273 value1 value2 = (output1076, value274, value1) := by
  rw [input1076_def, output1076_def]
  kernel_rfl

theorem node1077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1077 value274 value1 value2 = (output1077, value275, value1) := by
  rw [input1077_def, output1077_def]
  kernel_rfl

theorem node1078_cond_eq
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value273 value1 value2 = (output1076, value274, value1))
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value274 value1 value2 = (output1077, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1078 value273 value1 value2 = (output1078, value275, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1076]
  try dsimp only
  rw [child1077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1076_skip, output1077_skip]
  kernel_rfl

theorem node1079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1079 value275 value1 value2 = (output1079, value275, value1) := by
  rw [input1079_def, output1079_def]
  kernel_rfl

theorem node1080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1080 value275 value1 value2 = (output1080, value275, value1) := by
  rw [input1080_def, output1080_def]
  kernel_rfl

theorem node1081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1081 value275 value1 value2 = (output1081, value275, value1) := by
  rw [input1081_def, output1081_def]
  kernel_rfl

theorem node1082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1082 value275 value1 value2 = (output1082, value275, value1) := by
  rw [input1082_def, output1082_def]
  kernel_rfl

theorem node1083_cond_eq
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value275 value1 value2 = (output1081, value275, value1))
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value275 value1 value2 = (output1082, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1083 value275 value1 value2 = (output1083, value275, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1081]
  try dsimp only
  rw [child1082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1081_skip, output1082_skip]
  kernel_rfl

theorem node1084_cond_eq
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value275 value1 value2 = (output1080, value275, value1))
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value275 value1 value2 = (output1083, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1084 value275 value1 value2 = (output1084, value275, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1080]
  try dsimp only
  rw [child1083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1080_skip, output1083_skip]
  kernel_rfl

theorem node1085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1085 value275 value1 value2 = (output1085, value275, value1) := by
  rw [input1085_def, output1085_def]
  kernel_rfl

theorem node1086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1086 value275 value1 value2 = (output1086, value275, value1) := by
  rw [input1086_def, output1086_def]
  kernel_rfl

theorem node1087_cond_eq
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value275 value1 value2 = (output1085, value275, value1))
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value275 value1 value2 = (output1086, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1087 value275 value1 value2 = (output1087, value275, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1085]
  try dsimp only
  rw [child1086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1085_skip, output1086_skip]
  kernel_rfl

theorem node1088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1088 value275 value1 value2 = (output1088, value276, value1) := by
  rw [input1088_def, output1088_def]
  kernel_rfl

theorem node1089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1089 value276 value1 value2 = (output1089, value277, value1) := by
  rw [input1089_def, output1089_def]
  kernel_rfl

theorem node1090_cond_eq
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value275 value1 value2 = (output1088, value276, value1))
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value276 value1 value2 = (output1089, value277, value1)) : Flapjack.WordAlloc.removeDeadStructural input1090 value275 value1 value2 = (output1090, value277, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1088]
  try dsimp only
  rw [child1089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1088_skip, output1089_skip]
  kernel_rfl

theorem node1091_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1091 value277 value1 value2 = (output1091, value275, value1) := by
  rw [input1091_def, output1091_def]
  kernel_rfl

theorem node1092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1092 value275 value1 value2 = (output1092, value275, value1) := by
  rw [input1092_def, output1092_def]
  kernel_rfl

theorem node1093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1093 value275 value1 value2 = (output1093, value275, value1) := by
  rw [input1093_def, output1093_def]
  kernel_rfl

theorem node1094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1094 value275 value1 value2 = (output1094, value275, value1) := by
  rw [input1094_def, output1094_def]
  kernel_rfl

theorem node1095_cond_eq
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value275 value1 value2 = (output1093, value275, value1))
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value275 value1 value2 = (output1094, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1095 value275 value1 value2 = (output1095, value275, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1093]
  try dsimp only
  rw [child1094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1093_skip, output1094_skip]
  kernel_rfl

theorem node1096_cond_eq
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value275 value1 value2 = (output1092, value275, value1))
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value275 value1 value2 = (output1095, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1096 value275 value1 value2 = (output1096, value275, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1092]
  try dsimp only
  rw [child1095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1092_skip, output1095_skip]
  kernel_rfl

theorem node1097_cond_eq
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value277 value1 value2 = (output1091, value275, value1))
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value275 value1 value2 = (output1096, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1097 value277 value1 value2 = (output1097, value275, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1091]
  try dsimp only
  rw [child1096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1091_skip, output1096_skip]
  kernel_rfl

theorem node1098_cond_eq
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value275 value1 value2 = (output1090, value277, value1))
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value277 value1 value2 = (output1097, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1098 value275 value1 value2 = (output1098, value275, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1090]
  try dsimp only
  rw [child1097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1090_skip, output1097_skip]
  kernel_rfl

theorem node1099_cond_eq
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value275 value1 value2 = (output1087, value275, value1))
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value275 value1 value2 = (output1098, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1099 value275 value1 value2 = (output1099, value275, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1087]
  try dsimp only
  rw [child1098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1087_skip, output1098_skip]
  kernel_rfl

theorem node1100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1100 value275 value1 value2 = (output1100, value275, value1) := by
  rw [input1100_def, output1100_def]
  kernel_rfl

theorem node1101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1101 value275 value1 value2 = (output1101, value275, value1) := by
  rw [input1101_def, output1101_def]
  kernel_rfl

theorem node1102_cond_eq
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value275 value1 value2 = (output1100, value275, value1))
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value275 value1 value2 = (output1101, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1102 value275 value1 value2 = (output1102, value275, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1100]
  try dsimp only
  rw [child1101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1100_skip, output1101_skip]
  kernel_rfl

theorem node1103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1103 value275 value1 value2 = (output1103, value275, value1) := by
  rw [input1103_def, output1103_def]
  kernel_rfl

theorem node1104_cond_eq
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value275 value1 value2 = (output1102, value275, value1))
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value275 value1 value2 = (output1103, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1104 value275 value1 value2 = (output1104, value275, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1102]
  try dsimp only
  rw [child1103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1102_skip, output1103_skip]
  kernel_rfl

theorem node1105_cond_eq
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value275 value1 value2 = (output1099, value275, value1))
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value275 value1 value2 = (output1104, value275, value1)) : Flapjack.WordAlloc.removeDeadStructural input1105 value275 value1 value2 = (output1105, value279, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1099]
  try dsimp only
  rw [child1104]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1099_skip, output1104_skip]
  kernel_rfl

theorem node1106_cond_eq
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value275 value1 value2 = (output1084, value275, value1))
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value275 value1 value2 = (output1105, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input1106 value275 value1 value2 = (output1106, value279, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1084]
  try dsimp only
  rw [child1105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1084_skip, output1105_skip]
  kernel_rfl

theorem node1107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1107 value279 value1 value2 = (output1107, value280, value1) := by
  rw [input1107_def, output1107_def]
  kernel_rfl

theorem node1108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1108 value280 value1 value2 = (output1108, value281, value1) := by
  rw [input1108_def, output1108_def]
  kernel_rfl

theorem node1109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1109 value281 value1 value2 = (output1109, value282, value1) := by
  rw [input1109_def, output1109_def]
  kernel_rfl

theorem node1110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1110 value282 value1 value2 = (output1110, value283, value1) := by
  rw [input1110_def, output1110_def]
  kernel_rfl

theorem node1111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1111 value283 value1 value2 = (output1111, value284, value1) := by
  rw [input1111_def, output1111_def]
  kernel_rfl

theorem node1112_cond_eq
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value282 value1 value2 = (output1110, value283, value1))
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value283 value1 value2 = (output1111, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input1112 value282 value1 value2 = (output1112, value284, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1110]
  try dsimp only
  rw [child1111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1110_skip, output1111_skip]
  kernel_rfl

theorem node1113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1113 value284 value1 value2 = (output1113, value285, value1) := by
  rw [input1113_def, output1113_def]
  kernel_rfl

theorem node1114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1114 value285 value1 value2 = (output1114, value286, value1) := by
  rw [input1114_def, output1114_def]
  kernel_rfl

theorem node1115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1115 value286 value1 value2 = (output1115, value287, value1) := by
  rw [input1115_def, output1115_def]
  kernel_rfl

theorem node1116_cond_eq
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value285 value1 value2 = (output1114, value286, value1))
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value286 value1 value2 = (output1115, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1116 value285 value1 value2 = (output1116, value287, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1114]
  try dsimp only
  rw [child1115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1114_skip, output1115_skip]
  kernel_rfl

theorem node1117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1117 value287 value1 value2 = (output1117, value287, value1) := by
  rw [input1117_def, output1117_def]
  kernel_rfl

theorem node1118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1118 value287 value1 value2 = (output1118, value287, value1) := by
  rw [input1118_def, output1118_def]
  kernel_rfl

theorem node1119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1119 value287 value1 value2 = (output1119, value287, value1) := by
  rw [input1119_def, output1119_def]
  kernel_rfl

theorem node1120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1120 value287 value1 value2 = (output1120, value287, value1) := by
  rw [input1120_def, output1120_def]
  kernel_rfl

theorem node1121_cond_eq
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value287 value1 value2 = (output1119, value287, value1))
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value287 value1 value2 = (output1120, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1121 value287 value1 value2 = (output1121, value287, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1119]
  try dsimp only
  rw [child1120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1119_skip, output1120_skip]
  kernel_rfl

theorem node1122_cond_eq
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value287 value1 value2 = (output1118, value287, value1))
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value287 value1 value2 = (output1121, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1122 value287 value1 value2 = (output1122, value287, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1118]
  try dsimp only
  rw [child1121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1118_skip, output1121_skip]
  kernel_rfl

theorem node1123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1123 value287 value1 value2 = (output1123, value287, value1) := by
  rw [input1123_def, output1123_def]
  kernel_rfl

theorem node1124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1124 value287 value1 value2 = (output1124, value287, value1) := by
  rw [input1124_def, output1124_def]
  kernel_rfl

theorem node1125_cond_eq
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value287 value1 value2 = (output1123, value287, value1))
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value287 value1 value2 = (output1124, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1125 value287 value1 value2 = (output1125, value287, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1123]
  try dsimp only
  rw [child1124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1123_skip, output1124_skip]
  kernel_rfl

theorem node1126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1126 value287 value1 value2 = (output1126, value288, value1) := by
  rw [input1126_def, output1126_def]
  kernel_rfl

theorem node1127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1127 value288 value1 value2 = (output1127, value289, value1) := by
  rw [input1127_def, output1127_def]
  kernel_rfl

theorem node1128_cond_eq
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value287 value1 value2 = (output1126, value288, value1))
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value288 value1 value2 = (output1127, value289, value1)) : Flapjack.WordAlloc.removeDeadStructural input1128 value287 value1 value2 = (output1128, value289, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1126]
  try dsimp only
  rw [child1127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1126_skip, output1127_skip]
  kernel_rfl

theorem node1129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1129 value289 value1 value2 = (output1129, value287, value1) := by
  rw [input1129_def, output1129_def]
  kernel_rfl

theorem node1130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1130 value287 value1 value2 = (output1130, value287, value1) := by
  rw [input1130_def, output1130_def]
  kernel_rfl

theorem node1131_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1131 value287 value1 value2 = (output1131, value287, value1) := by
  rw [input1131_def, output1131_def]
  kernel_rfl

theorem node1132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1132 value287 value1 value2 = (output1132, value287, value1) := by
  rw [input1132_def, output1132_def]
  kernel_rfl

theorem node1133_cond_eq
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value287 value1 value2 = (output1131, value287, value1))
    (child1132 : Flapjack.WordAlloc.removeDeadStructural input1132 value287 value1 value2 = (output1132, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1133 value287 value1 value2 = (output1133, value287, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1131]
  try dsimp only
  rw [child1132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1131_skip, output1132_skip]
  kernel_rfl

theorem node1134_cond_eq
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value287 value1 value2 = (output1130, value287, value1))
    (child1133 : Flapjack.WordAlloc.removeDeadStructural input1133 value287 value1 value2 = (output1133, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1134 value287 value1 value2 = (output1134, value287, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1130]
  try dsimp only
  rw [child1133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1130_skip, output1133_skip]
  kernel_rfl

theorem node1135_cond_eq
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value289 value1 value2 = (output1129, value287, value1))
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value287 value1 value2 = (output1134, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1135 value289 value1 value2 = (output1135, value287, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1129]
  try dsimp only
  rw [child1134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1129_skip, output1134_skip]
  kernel_rfl

theorem node1136_cond_eq
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value287 value1 value2 = (output1128, value289, value1))
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value289 value1 value2 = (output1135, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1136 value287 value1 value2 = (output1136, value287, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1128]
  try dsimp only
  rw [child1135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1128_skip, output1135_skip]
  kernel_rfl

theorem node1137_cond_eq
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value287 value1 value2 = (output1125, value287, value1))
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value287 value1 value2 = (output1136, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1137 value287 value1 value2 = (output1137, value287, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1125]
  try dsimp only
  rw [child1136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1125_skip, output1136_skip]
  kernel_rfl

theorem node1138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1138 value287 value1 value2 = (output1138, value287, value1) := by
  rw [input1138_def, output1138_def]
  kernel_rfl

theorem node1139_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1139 value287 value1 value2 = (output1139, value287, value1) := by
  rw [input1139_def, output1139_def]
  kernel_rfl

theorem node1140_cond_eq
    (child1138 : Flapjack.WordAlloc.removeDeadStructural input1138 value287 value1 value2 = (output1138, value287, value1))
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value287 value1 value2 = (output1139, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1140 value287 value1 value2 = (output1140, value287, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1138]
  try dsimp only
  rw [child1139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1138_skip, output1139_skip]
  kernel_rfl

theorem node1141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1141 value287 value1 value2 = (output1141, value287, value1) := by
  rw [input1141_def, output1141_def]
  kernel_rfl

theorem node1142_cond_eq
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value287 value1 value2 = (output1140, value287, value1))
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value287 value1 value2 = (output1141, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1142 value287 value1 value2 = (output1142, value287, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1140]
  try dsimp only
  rw [child1141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1140_skip, output1141_skip]
  kernel_rfl

theorem node1143_cond_eq
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value287 value1 value2 = (output1137, value287, value1))
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value287 value1 value2 = (output1142, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1143 value287 value1 value2 = (output1143, value291, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1137]
  try dsimp only
  rw [child1142]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1137_skip, output1142_skip]
  kernel_rfl

theorem node1144_cond_eq
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value287 value1 value2 = (output1122, value287, value1))
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value287 value1 value2 = (output1143, value291, value1)) : Flapjack.WordAlloc.removeDeadStructural input1144 value287 value1 value2 = (output1144, value291, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1122]
  try dsimp only
  rw [child1143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1122_skip, output1143_skip]
  kernel_rfl

theorem node1145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1145 value291 value1 value2 = (output1145, value292, value1) := by
  rw [input1145_def, output1145_def]
  kernel_rfl

theorem node1146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1146 value292 value1 value2 = (output1146, value293, value1) := by
  rw [input1146_def, output1146_def]
  kernel_rfl

theorem node1147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1147 value293 value1 value2 = (output1147, value294, value1) := by
  rw [input1147_def, output1147_def]
  kernel_rfl

theorem node1148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1148 value294 value1 value2 = (output1148, value295, value1) := by
  rw [input1148_def, output1148_def]
  kernel_rfl

theorem node1149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1149 value295 value1 value2 = (output1149, value296, value1) := by
  rw [input1149_def, output1149_def]
  kernel_rfl

theorem node1150_cond_eq
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value294 value1 value2 = (output1148, value295, value1))
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value295 value1 value2 = (output1149, value296, value1)) : Flapjack.WordAlloc.removeDeadStructural input1150 value294 value1 value2 = (output1150, value296, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1148]
  try dsimp only
  rw [child1149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1148_skip, output1149_skip]
  kernel_rfl

theorem node1151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1151 value296 value1 value2 = (output1151, value297, value1) := by
  rw [input1151_def, output1151_def]
  kernel_rfl

theorem node1152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1152 value297 value1 value2 = (output1152, value298, value1) := by
  rw [input1152_def, output1152_def]
  kernel_rfl

theorem node1153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1153 value298 value1 value2 = (output1153, value299, value1) := by
  rw [input1153_def, output1153_def]
  kernel_rfl

theorem node1154_cond_eq
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value297 value1 value2 = (output1152, value298, value1))
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value298 value1 value2 = (output1153, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1154 value297 value1 value2 = (output1154, value299, value1) := by
  rw [input1154_def, output1154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1152]
  try dsimp only
  rw [child1153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1152_skip, output1153_skip]
  kernel_rfl

theorem node1155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1155 value299 value1 value2 = (output1155, value299, value1) := by
  rw [input1155_def, output1155_def]
  kernel_rfl

theorem node1156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1156 value299 value1 value2 = (output1156, value299, value1) := by
  rw [input1156_def, output1156_def]
  kernel_rfl

theorem node1157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1157 value299 value1 value2 = (output1157, value299, value1) := by
  rw [input1157_def, output1157_def]
  kernel_rfl

theorem node1158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1158 value299 value1 value2 = (output1158, value299, value1) := by
  rw [input1158_def, output1158_def]
  kernel_rfl

theorem node1159_cond_eq
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value299 value1 value2 = (output1157, value299, value1))
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value299 value1 value2 = (output1158, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1159 value299 value1 value2 = (output1159, value299, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1157]
  try dsimp only
  rw [child1158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1157_skip, output1158_skip]
  kernel_rfl

theorem node1160_cond_eq
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value299 value1 value2 = (output1156, value299, value1))
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value299 value1 value2 = (output1159, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1160 value299 value1 value2 = (output1160, value299, value1) := by
  rw [input1160_def, output1160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1156]
  try dsimp only
  rw [child1159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1156_skip, output1159_skip]
  kernel_rfl

theorem node1161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1161 value299 value1 value2 = (output1161, value299, value1) := by
  rw [input1161_def, output1161_def]
  kernel_rfl

theorem node1162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1162 value299 value1 value2 = (output1162, value299, value1) := by
  rw [input1162_def, output1162_def]
  kernel_rfl

theorem node1163_cond_eq
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value299 value1 value2 = (output1161, value299, value1))
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value299 value1 value2 = (output1162, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1163 value299 value1 value2 = (output1163, value299, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1161]
  try dsimp only
  rw [child1162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1161_skip, output1162_skip]
  kernel_rfl

theorem node1164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1164 value299 value1 value2 = (output1164, value300, value1) := by
  rw [input1164_def, output1164_def]
  kernel_rfl

theorem node1165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1165 value300 value1 value2 = (output1165, value301, value1) := by
  rw [input1165_def, output1165_def]
  kernel_rfl

theorem node1166_cond_eq
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value299 value1 value2 = (output1164, value300, value1))
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value300 value1 value2 = (output1165, value301, value1)) : Flapjack.WordAlloc.removeDeadStructural input1166 value299 value1 value2 = (output1166, value301, value1) := by
  rw [input1166_def, output1166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1164]
  try dsimp only
  rw [child1165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1164_skip, output1165_skip]
  kernel_rfl

theorem node1167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1167 value301 value1 value2 = (output1167, value299, value1) := by
  rw [input1167_def, output1167_def]
  kernel_rfl

theorem node1168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1168 value299 value1 value2 = (output1168, value299, value1) := by
  rw [input1168_def, output1168_def]
  kernel_rfl

theorem node1169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1169 value299 value1 value2 = (output1169, value299, value1) := by
  rw [input1169_def, output1169_def]
  kernel_rfl

theorem node1170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1170 value299 value1 value2 = (output1170, value299, value1) := by
  rw [input1170_def, output1170_def]
  kernel_rfl

theorem node1171_cond_eq
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value299 value1 value2 = (output1169, value299, value1))
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value299 value1 value2 = (output1170, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1171 value299 value1 value2 = (output1171, value299, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1169]
  try dsimp only
  rw [child1170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1169_skip, output1170_skip]
  kernel_rfl

theorem node1172_cond_eq
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value299 value1 value2 = (output1168, value299, value1))
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value299 value1 value2 = (output1171, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1172 value299 value1 value2 = (output1172, value299, value1) := by
  rw [input1172_def, output1172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1168]
  try dsimp only
  rw [child1171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1168_skip, output1171_skip]
  kernel_rfl

theorem node1173_cond_eq
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value301 value1 value2 = (output1167, value299, value1))
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value299 value1 value2 = (output1172, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1173 value301 value1 value2 = (output1173, value299, value1) := by
  rw [input1173_def, output1173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1167]
  try dsimp only
  rw [child1172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1167_skip, output1172_skip]
  kernel_rfl

theorem node1174_cond_eq
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value299 value1 value2 = (output1166, value301, value1))
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value301 value1 value2 = (output1173, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1174 value299 value1 value2 = (output1174, value299, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1166]
  try dsimp only
  rw [child1173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1166_skip, output1173_skip]
  kernel_rfl

theorem node1175_cond_eq
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value299 value1 value2 = (output1163, value299, value1))
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value299 value1 value2 = (output1174, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1175 value299 value1 value2 = (output1175, value299, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1163]
  try dsimp only
  rw [child1174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1163_skip, output1174_skip]
  kernel_rfl

theorem node1176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1176 value299 value1 value2 = (output1176, value299, value1) := by
  rw [input1176_def, output1176_def]
  kernel_rfl

theorem node1177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1177 value299 value1 value2 = (output1177, value299, value1) := by
  rw [input1177_def, output1177_def]
  kernel_rfl

theorem node1178_cond_eq
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value299 value1 value2 = (output1176, value299, value1))
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value299 value1 value2 = (output1177, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1178 value299 value1 value2 = (output1178, value299, value1) := by
  rw [input1178_def, output1178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1176]
  try dsimp only
  rw [child1177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1176_skip, output1177_skip]
  kernel_rfl

theorem node1179_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1179 value299 value1 value2 = (output1179, value299, value1) := by
  rw [input1179_def, output1179_def]
  kernel_rfl

theorem node1180_cond_eq
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value299 value1 value2 = (output1178, value299, value1))
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value299 value1 value2 = (output1179, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1180 value299 value1 value2 = (output1180, value299, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1178]
  try dsimp only
  rw [child1179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1178_skip, output1179_skip]
  kernel_rfl

theorem node1181_cond_eq
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value299 value1 value2 = (output1175, value299, value1))
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value299 value1 value2 = (output1180, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1181 value299 value1 value2 = (output1181, value303, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1175]
  try dsimp only
  rw [child1180]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1175_skip, output1180_skip]
  kernel_rfl

theorem node1182_cond_eq
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value299 value1 value2 = (output1160, value299, value1))
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value299 value1 value2 = (output1181, value303, value1)) : Flapjack.WordAlloc.removeDeadStructural input1182 value299 value1 value2 = (output1182, value303, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1160]
  try dsimp only
  rw [child1181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1160_skip, output1181_skip]
  kernel_rfl

theorem node1183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1183 value303 value1 value2 = (output1183, value304, value1) := by
  rw [input1183_def, output1183_def]
  kernel_rfl

theorem node1184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1184 value304 value1 value2 = (output1184, value305, value1) := by
  rw [input1184_def, output1184_def]
  kernel_rfl

theorem node1185_cond_eq
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value303 value1 value2 = (output1183, value304, value1))
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value304 value1 value2 = (output1184, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1185 value303 value1 value2 = (output1185, value305, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1183]
  try dsimp only
  rw [child1184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1183_skip, output1184_skip]
  kernel_rfl

theorem node1186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1186 value305 value1 value2 = (output1186, value306, value1) := by
  rw [input1186_def, output1186_def]
  kernel_rfl

theorem node1187_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1187 value306 value1 value2 = (output1187, value307, value1) := by
  rw [input1187_def, output1187_def]
  kernel_rfl

theorem node1188_cond_eq
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value305 value1 value2 = (output1186, value306, value1))
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value306 value1 value2 = (output1187, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1188 value305 value1 value2 = (output1188, value307, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1186]
  try dsimp only
  rw [child1187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1186_skip, output1187_skip]
  kernel_rfl

theorem node1189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1189 value307 value1 value2 = (output1189, value307, value1) := by
  rw [input1189_def, output1189_def]
  kernel_rfl

theorem node1190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1190 value307 value1 value2 = (output1190, value307, value1) := by
  rw [input1190_def, output1190_def]
  kernel_rfl

theorem node1191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1191 value307 value1 value2 = (output1191, value307, value1) := by
  rw [input1191_def, output1191_def]
  kernel_rfl

theorem node1192_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1192 value307 value1 value2 = (output1192, value307, value1) := by
  rw [input1192_def, output1192_def]
  kernel_rfl

theorem node1193_cond_eq
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value307 value1 value2 = (output1191, value307, value1))
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value307 value1 value2 = (output1192, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1193 value307 value1 value2 = (output1193, value307, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1191]
  try dsimp only
  rw [child1192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1191_skip, output1192_skip]
  kernel_rfl

theorem node1194_cond_eq
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value307 value1 value2 = (output1190, value307, value1))
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value307 value1 value2 = (output1193, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1194 value307 value1 value2 = (output1194, value307, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1190]
  try dsimp only
  rw [child1193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1190_skip, output1193_skip]
  kernel_rfl

theorem node1195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1195 value307 value1 value2 = (output1195, value307, value1) := by
  rw [input1195_def, output1195_def]
  kernel_rfl

theorem node1196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1196 value307 value1 value2 = (output1196, value307, value1) := by
  rw [input1196_def, output1196_def]
  kernel_rfl

theorem node1197_cond_eq
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value307 value1 value2 = (output1195, value307, value1))
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value307 value1 value2 = (output1196, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1197 value307 value1 value2 = (output1197, value307, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1195]
  try dsimp only
  rw [child1196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1195_skip, output1196_skip]
  kernel_rfl

theorem node1198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1198 value307 value1 value2 = (output1198, value308, value1) := by
  rw [input1198_def, output1198_def]
  kernel_rfl

theorem node1199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1199 value308 value1 value2 = (output1199, value309, value1) := by
  rw [input1199_def, output1199_def]
  kernel_rfl

theorem node1200_cond_eq
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value307 value1 value2 = (output1198, value308, value1))
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value308 value1 value2 = (output1199, value309, value1)) : Flapjack.WordAlloc.removeDeadStructural input1200 value307 value1 value2 = (output1200, value309, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1198]
  try dsimp only
  rw [child1199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1198_skip, output1199_skip]
  kernel_rfl

theorem node1201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1201 value309 value1 value2 = (output1201, value307, value1) := by
  rw [input1201_def, output1201_def]
  kernel_rfl

theorem node1202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1202 value307 value1 value2 = (output1202, value307, value1) := by
  rw [input1202_def, output1202_def]
  kernel_rfl

theorem node1203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1203 value307 value1 value2 = (output1203, value307, value1) := by
  rw [input1203_def, output1203_def]
  kernel_rfl

theorem node1204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1204 value307 value1 value2 = (output1204, value307, value1) := by
  rw [input1204_def, output1204_def]
  kernel_rfl

theorem node1205_cond_eq
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value307 value1 value2 = (output1203, value307, value1))
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value307 value1 value2 = (output1204, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1205 value307 value1 value2 = (output1205, value307, value1) := by
  rw [input1205_def, output1205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1203]
  try dsimp only
  rw [child1204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1203_skip, output1204_skip]
  kernel_rfl

theorem node1206_cond_eq
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value307 value1 value2 = (output1202, value307, value1))
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value307 value1 value2 = (output1205, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1206 value307 value1 value2 = (output1206, value307, value1) := by
  rw [input1206_def, output1206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1202]
  try dsimp only
  rw [child1205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1202_skip, output1205_skip]
  kernel_rfl

theorem node1207_cond_eq
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value309 value1 value2 = (output1201, value307, value1))
    (child1206 : Flapjack.WordAlloc.removeDeadStructural input1206 value307 value1 value2 = (output1206, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1207 value309 value1 value2 = (output1207, value307, value1) := by
  rw [input1207_def, output1207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1201]
  try dsimp only
  rw [child1206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1201_skip, output1206_skip]
  kernel_rfl

theorem node1208_cond_eq
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value307 value1 value2 = (output1200, value309, value1))
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value309 value1 value2 = (output1207, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1208 value307 value1 value2 = (output1208, value307, value1) := by
  rw [input1208_def, output1208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1200]
  try dsimp only
  rw [child1207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1200_skip, output1207_skip]
  kernel_rfl

theorem node1209_cond_eq
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value307 value1 value2 = (output1197, value307, value1))
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value307 value1 value2 = (output1208, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1209 value307 value1 value2 = (output1209, value307, value1) := by
  rw [input1209_def, output1209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1197]
  try dsimp only
  rw [child1208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1197_skip, output1208_skip]
  kernel_rfl

theorem node1210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1210 value307 value1 value2 = (output1210, value307, value1) := by
  rw [input1210_def, output1210_def]
  kernel_rfl

theorem node1211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1211 value307 value1 value2 = (output1211, value307, value1) := by
  rw [input1211_def, output1211_def]
  kernel_rfl

theorem node1212_cond_eq
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value307 value1 value2 = (output1210, value307, value1))
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value307 value1 value2 = (output1211, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1212 value307 value1 value2 = (output1212, value307, value1) := by
  rw [input1212_def, output1212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1210]
  try dsimp only
  rw [child1211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1210_skip, output1211_skip]
  kernel_rfl

theorem node1213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1213 value307 value1 value2 = (output1213, value307, value1) := by
  rw [input1213_def, output1213_def]
  kernel_rfl

theorem node1214_cond_eq
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value307 value1 value2 = (output1212, value307, value1))
    (child1213 : Flapjack.WordAlloc.removeDeadStructural input1213 value307 value1 value2 = (output1213, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1214 value307 value1 value2 = (output1214, value307, value1) := by
  rw [input1214_def, output1214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1212]
  try dsimp only
  rw [child1213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1212_skip, output1213_skip]
  kernel_rfl

theorem node1215_cond_eq
    (child1209 : Flapjack.WordAlloc.removeDeadStructural input1209 value307 value1 value2 = (output1209, value307, value1))
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value307 value1 value2 = (output1214, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input1215 value307 value1 value2 = (output1215, value311, value1) := by
  rw [input1215_def, output1215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1209]
  try dsimp only
  rw [child1214]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1209_skip, output1214_skip]
  kernel_rfl

theorem node1216_cond_eq
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value307 value1 value2 = (output1194, value307, value1))
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value307 value1 value2 = (output1215, value311, value1)) : Flapjack.WordAlloc.removeDeadStructural input1216 value307 value1 value2 = (output1216, value311, value1) := by
  rw [input1216_def, output1216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1194]
  try dsimp only
  rw [child1215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1194_skip, output1215_skip]
  kernel_rfl

theorem node1217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1217 value311 value1 value2 = (output1217, value312, value1) := by
  rw [input1217_def, output1217_def]
  kernel_rfl

theorem node1218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1218 value312 value1 value2 = (output1218, value313, value1) := by
  rw [input1218_def, output1218_def]
  kernel_rfl

theorem node1219_cond_eq
    (child1217 : Flapjack.WordAlloc.removeDeadStructural input1217 value311 value1 value2 = (output1217, value312, value1))
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value312 value1 value2 = (output1218, value313, value1)) : Flapjack.WordAlloc.removeDeadStructural input1219 value311 value1 value2 = (output1219, value313, value1) := by
  rw [input1219_def, output1219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1217]
  try dsimp only
  rw [child1218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1217_skip, output1218_skip]
  kernel_rfl

theorem node1220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1220 value313 value1 value2 = (output1220, value314, value1) := by
  rw [input1220_def, output1220_def]
  kernel_rfl

theorem node1221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1221 value314 value1 value2 = (output1221, value315, value1) := by
  rw [input1221_def, output1221_def]
  kernel_rfl

theorem node1222_cond_eq
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value313 value1 value2 = (output1220, value314, value1))
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value314 value1 value2 = (output1221, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1222 value313 value1 value2 = (output1222, value315, value1) := by
  rw [input1222_def, output1222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1220]
  try dsimp only
  rw [child1221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1220_skip, output1221_skip]
  kernel_rfl

theorem node1223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1223 value315 value1 value2 = (output1223, value315, value1) := by
  rw [input1223_def, output1223_def]
  kernel_rfl

theorem node1224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1224 value315 value1 value2 = (output1224, value315, value1) := by
  rw [input1224_def, output1224_def]
  kernel_rfl

theorem node1225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1225 value315 value1 value2 = (output1225, value315, value1) := by
  rw [input1225_def, output1225_def]
  kernel_rfl

theorem node1226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1226 value315 value1 value2 = (output1226, value315, value1) := by
  rw [input1226_def, output1226_def]
  kernel_rfl

theorem node1227_cond_eq
    (child1225 : Flapjack.WordAlloc.removeDeadStructural input1225 value315 value1 value2 = (output1225, value315, value1))
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value315 value1 value2 = (output1226, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1227 value315 value1 value2 = (output1227, value315, value1) := by
  rw [input1227_def, output1227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1225]
  try dsimp only
  rw [child1226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1225_skip, output1226_skip]
  kernel_rfl

theorem node1228_cond_eq
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value315 value1 value2 = (output1224, value315, value1))
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value315 value1 value2 = (output1227, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1228 value315 value1 value2 = (output1228, value315, value1) := by
  rw [input1228_def, output1228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1224]
  try dsimp only
  rw [child1227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1224_skip, output1227_skip]
  kernel_rfl

theorem node1229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1229 value315 value1 value2 = (output1229, value315, value1) := by
  rw [input1229_def, output1229_def]
  kernel_rfl

theorem node1230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1230 value315 value1 value2 = (output1230, value315, value1) := by
  rw [input1230_def, output1230_def]
  kernel_rfl

theorem node1231_cond_eq
    (child1229 : Flapjack.WordAlloc.removeDeadStructural input1229 value315 value1 value2 = (output1229, value315, value1))
    (child1230 : Flapjack.WordAlloc.removeDeadStructural input1230 value315 value1 value2 = (output1230, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1231 value315 value1 value2 = (output1231, value315, value1) := by
  rw [input1231_def, output1231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1229]
  try dsimp only
  rw [child1230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1229_skip, output1230_skip]
  kernel_rfl

theorem node1232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1232 value315 value1 value2 = (output1232, value316, value1) := by
  rw [input1232_def, output1232_def]
  kernel_rfl

theorem node1233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1233 value316 value1 value2 = (output1233, value317, value1) := by
  rw [input1233_def, output1233_def]
  kernel_rfl

theorem node1234_cond_eq
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value315 value1 value2 = (output1232, value316, value1))
    (child1233 : Flapjack.WordAlloc.removeDeadStructural input1233 value316 value1 value2 = (output1233, value317, value1)) : Flapjack.WordAlloc.removeDeadStructural input1234 value315 value1 value2 = (output1234, value317, value1) := by
  rw [input1234_def, output1234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1232]
  try dsimp only
  rw [child1233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1232_skip, output1233_skip]
  kernel_rfl

theorem node1235_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1235 value317 value1 value2 = (output1235, value315, value1) := by
  rw [input1235_def, output1235_def]
  kernel_rfl

theorem node1236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1236 value315 value1 value2 = (output1236, value315, value1) := by
  rw [input1236_def, output1236_def]
  kernel_rfl

theorem node1237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1237 value315 value1 value2 = (output1237, value315, value1) := by
  rw [input1237_def, output1237_def]
  kernel_rfl

theorem node1238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1238 value315 value1 value2 = (output1238, value315, value1) := by
  rw [input1238_def, output1238_def]
  kernel_rfl

theorem node1239_cond_eq
    (child1237 : Flapjack.WordAlloc.removeDeadStructural input1237 value315 value1 value2 = (output1237, value315, value1))
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value315 value1 value2 = (output1238, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1239 value315 value1 value2 = (output1239, value315, value1) := by
  rw [input1239_def, output1239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1237]
  try dsimp only
  rw [child1238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1237_skip, output1238_skip]
  kernel_rfl

theorem node1240_cond_eq
    (child1236 : Flapjack.WordAlloc.removeDeadStructural input1236 value315 value1 value2 = (output1236, value315, value1))
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value315 value1 value2 = (output1239, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1240 value315 value1 value2 = (output1240, value315, value1) := by
  rw [input1240_def, output1240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1236]
  try dsimp only
  rw [child1239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1236_skip, output1239_skip]
  kernel_rfl

theorem node1241_cond_eq
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value317 value1 value2 = (output1235, value315, value1))
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value315 value1 value2 = (output1240, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1241 value317 value1 value2 = (output1241, value315, value1) := by
  rw [input1241_def, output1241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1235]
  try dsimp only
  rw [child1240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1235_skip, output1240_skip]
  kernel_rfl

theorem node1242_cond_eq
    (child1234 : Flapjack.WordAlloc.removeDeadStructural input1234 value315 value1 value2 = (output1234, value317, value1))
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value317 value1 value2 = (output1241, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1242 value315 value1 value2 = (output1242, value315, value1) := by
  rw [input1242_def, output1242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1234]
  try dsimp only
  rw [child1241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1234_skip, output1241_skip]
  kernel_rfl

theorem node1243_cond_eq
    (child1231 : Flapjack.WordAlloc.removeDeadStructural input1231 value315 value1 value2 = (output1231, value315, value1))
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value315 value1 value2 = (output1242, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1243 value315 value1 value2 = (output1243, value315, value1) := by
  rw [input1243_def, output1243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1231]
  try dsimp only
  rw [child1242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1231_skip, output1242_skip]
  kernel_rfl

theorem node1244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1244 value315 value1 value2 = (output1244, value315, value1) := by
  rw [input1244_def, output1244_def]
  kernel_rfl

theorem node1245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1245 value315 value1 value2 = (output1245, value315, value1) := by
  rw [input1245_def, output1245_def]
  kernel_rfl

theorem node1246_cond_eq
    (child1244 : Flapjack.WordAlloc.removeDeadStructural input1244 value315 value1 value2 = (output1244, value315, value1))
    (child1245 : Flapjack.WordAlloc.removeDeadStructural input1245 value315 value1 value2 = (output1245, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1246 value315 value1 value2 = (output1246, value315, value1) := by
  rw [input1246_def, output1246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1244]
  try dsimp only
  rw [child1245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1244_skip, output1245_skip]
  kernel_rfl

theorem node1247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1247 value315 value1 value2 = (output1247, value315, value1) := by
  rw [input1247_def, output1247_def]
  kernel_rfl

theorem node1248_cond_eq
    (child1246 : Flapjack.WordAlloc.removeDeadStructural input1246 value315 value1 value2 = (output1246, value315, value1))
    (child1247 : Flapjack.WordAlloc.removeDeadStructural input1247 value315 value1 value2 = (output1247, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1248 value315 value1 value2 = (output1248, value315, value1) := by
  rw [input1248_def, output1248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1246]
  try dsimp only
  rw [child1247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1246_skip, output1247_skip]
  kernel_rfl

theorem node1249_cond_eq
    (child1243 : Flapjack.WordAlloc.removeDeadStructural input1243 value315 value1 value2 = (output1243, value315, value1))
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value315 value1 value2 = (output1248, value315, value1)) : Flapjack.WordAlloc.removeDeadStructural input1249 value315 value1 value2 = (output1249, value319, value1) := by
  rw [input1249_def, output1249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1243]
  try dsimp only
  rw [child1248]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1243_skip, output1248_skip]
  kernel_rfl

theorem node1250_cond_eq
    (child1228 : Flapjack.WordAlloc.removeDeadStructural input1228 value315 value1 value2 = (output1228, value315, value1))
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value315 value1 value2 = (output1249, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input1250 value315 value1 value2 = (output1250, value319, value1) := by
  rw [input1250_def, output1250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1228]
  try dsimp only
  rw [child1249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1228_skip, output1249_skip]
  kernel_rfl

theorem node1251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1251 value319 value1 value2 = (output1251, value320, value1) := by
  rw [input1251_def, output1251_def]
  kernel_rfl

theorem node1252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1252 value320 value1 value2 = (output1252, value321, value1) := by
  rw [input1252_def, output1252_def]
  kernel_rfl

theorem node1253_cond_eq
    (child1251 : Flapjack.WordAlloc.removeDeadStructural input1251 value319 value1 value2 = (output1251, value320, value1))
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value320 value1 value2 = (output1252, value321, value1)) : Flapjack.WordAlloc.removeDeadStructural input1253 value319 value1 value2 = (output1253, value321, value1) := by
  rw [input1253_def, output1253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1251]
  try dsimp only
  rw [child1252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1251_skip, output1252_skip]
  kernel_rfl

theorem node1254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1254 value321 value1 value2 = (output1254, value322, value1) := by
  rw [input1254_def, output1254_def]
  kernel_rfl

theorem node1255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1255 value322 value1 value2 = (output1255, value323, value1) := by
  rw [input1255_def, output1255_def]
  kernel_rfl

theorem node1256_cond_eq
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value321 value1 value2 = (output1254, value322, value1))
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value322 value1 value2 = (output1255, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input1256 value321 value1 value2 = (output1256, value323, value1) := by
  rw [input1256_def, output1256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1254]
  try dsimp only
  rw [child1255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1254_skip, output1255_skip]
  kernel_rfl

theorem node1257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1257 value323 value1 value2 = (output1257, value323, value1) := by
  rw [input1257_def, output1257_def]
  kernel_rfl

theorem node1258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1258 value323 value1 value2 = (output1258, value323, value1) := by
  rw [input1258_def, output1258_def]
  kernel_rfl

theorem node1259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1259 value323 value1 value2 = (output1259, value323, value1) := by
  rw [input1259_def, output1259_def]
  kernel_rfl

theorem node1260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1260 value323 value1 value2 = (output1260, value323, value1) := by
  rw [input1260_def, output1260_def]
  kernel_rfl

theorem node1261_cond_eq
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value323 value1 value2 = (output1259, value323, value1))
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value323 value1 value2 = (output1260, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input1261 value323 value1 value2 = (output1261, value323, value1) := by
  rw [input1261_def, output1261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1259]
  try dsimp only
  rw [child1260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1259_skip, output1260_skip]
  kernel_rfl

theorem node1262_cond_eq
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value323 value1 value2 = (output1258, value323, value1))
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value323 value1 value2 = (output1261, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input1262 value323 value1 value2 = (output1262, value323, value1) := by
  rw [input1262_def, output1262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1258]
  try dsimp only
  rw [child1261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1258_skip, output1261_skip]
  kernel_rfl

theorem node1263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1263 value323 value1 value2 = (output1263, value323, value1) := by
  rw [input1263_def, output1263_def]
  kernel_rfl

theorem node1264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1264 value323 value1 value2 = (output1264, value323, value1) := by
  rw [input1264_def, output1264_def]
  kernel_rfl

theorem node1265_cond_eq
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value323 value1 value2 = (output1263, value323, value1))
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value323 value1 value2 = (output1264, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input1265 value323 value1 value2 = (output1265, value323, value1) := by
  rw [input1265_def, output1265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1263]
  try dsimp only
  rw [child1264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1263_skip, output1264_skip]
  kernel_rfl

theorem node1266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1266 value323 value1 value2 = (output1266, value324, value1) := by
  rw [input1266_def, output1266_def]
  kernel_rfl

theorem node1267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1267 value324 value1 value2 = (output1267, value325, value1) := by
  rw [input1267_def, output1267_def]
  kernel_rfl

theorem node1268_cond_eq
    (child1266 : Flapjack.WordAlloc.removeDeadStructural input1266 value323 value1 value2 = (output1266, value324, value1))
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value324 value1 value2 = (output1267, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input1268 value323 value1 value2 = (output1268, value325, value1) := by
  rw [input1268_def, output1268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1266]
  try dsimp only
  rw [child1267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1266_skip, output1267_skip]
  kernel_rfl

theorem node1269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1269 value325 value1 value2 = (output1269, value323, value1) := by
  rw [input1269_def, output1269_def]
  kernel_rfl

theorem node1270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1270 value323 value1 value2 = (output1270, value323, value1) := by
  rw [input1270_def, output1270_def]
  kernel_rfl

theorem node1271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1271 value323 value1 value2 = (output1271, value323, value1) := by
  rw [input1271_def, output1271_def]
  kernel_rfl

theorem node1272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1272 value323 value1 value2 = (output1272, value323, value1) := by
  rw [input1272_def, output1272_def]
  kernel_rfl

theorem node1273_cond_eq
    (child1271 : Flapjack.WordAlloc.removeDeadStructural input1271 value323 value1 value2 = (output1271, value323, value1))
    (child1272 : Flapjack.WordAlloc.removeDeadStructural input1272 value323 value1 value2 = (output1272, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input1273 value323 value1 value2 = (output1273, value323, value1) := by
  rw [input1273_def, output1273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1271]
  try dsimp only
  rw [child1272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1271_skip, output1272_skip]
  kernel_rfl

theorem node1274_cond_eq
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value323 value1 value2 = (output1270, value323, value1))
    (child1273 : Flapjack.WordAlloc.removeDeadStructural input1273 value323 value1 value2 = (output1273, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input1274 value323 value1 value2 = (output1274, value323, value1) := by
  rw [input1274_def, output1274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1270]
  try dsimp only
  rw [child1273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1270_skip, output1273_skip]
  kernel_rfl

theorem node1275_cond_eq
    (child1269 : Flapjack.WordAlloc.removeDeadStructural input1269 value325 value1 value2 = (output1269, value323, value1))
    (child1274 : Flapjack.WordAlloc.removeDeadStructural input1274 value323 value1 value2 = (output1274, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input1275 value325 value1 value2 = (output1275, value323, value1) := by
  rw [input1275_def, output1275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1269]
  try dsimp only
  rw [child1274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1269_skip, output1274_skip]
  kernel_rfl

theorem node1276_cond_eq
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value323 value1 value2 = (output1268, value325, value1))
    (child1275 : Flapjack.WordAlloc.removeDeadStructural input1275 value325 value1 value2 = (output1275, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input1276 value323 value1 value2 = (output1276, value323, value1) := by
  rw [input1276_def, output1276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1268]
  try dsimp only
  rw [child1275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1268_skip, output1275_skip]
  kernel_rfl

theorem node1277_cond_eq
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value323 value1 value2 = (output1265, value323, value1))
    (child1276 : Flapjack.WordAlloc.removeDeadStructural input1276 value323 value1 value2 = (output1276, value323, value1)) : Flapjack.WordAlloc.removeDeadStructural input1277 value323 value1 value2 = (output1277, value323, value1) := by
  rw [input1277_def, output1277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1265]
  try dsimp only
  rw [child1276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1265_skip, output1276_skip]
  kernel_rfl

theorem node1278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1278 value323 value1 value2 = (output1278, value323, value1) := by
  rw [input1278_def, output1278_def]
  kernel_rfl

theorem node1279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1279 value323 value1 value2 = (output1279, value323, value1) := by
  rw [input1279_def, output1279_def]
  kernel_rfl

#print axioms node1279_cond_eq
end InitECandidate.Proofs.DeadStages79.Parallel
