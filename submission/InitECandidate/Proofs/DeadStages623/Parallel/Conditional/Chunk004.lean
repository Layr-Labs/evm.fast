import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages623.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages623.Parallel
theorem node1024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1024 value349 value1 value2 = (output1024, value350, value1) := by
  rw [input1024_def, output1024_def]
  kernel_rfl

theorem node1025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1025 value350 value1 value2 = (output1025, value350, value1) := by
  rw [input1025_def, output1025_def]
  kernel_rfl

theorem node1026_cond_eq
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value349 value1 value2 = (output1024, value350, value1))
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value350 value1 value2 = (output1025, value350, value1)) : Flapjack.WordAlloc.removeDeadStructural input1026 value349 value1 value2 = (output1026, value350, value1) := by
  rw [input1026_def, output1026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1024]
  try dsimp only
  rw [child1025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1024_skip, output1025_skip]
  kernel_rfl

theorem node1027_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1027 value350 value1 value2 = (output1027, value351, value1) := by
  rw [input1027_def, output1027_def]
  kernel_rfl

theorem node1028_cond_eq
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value349 value1 value2 = (output1026, value350, value1))
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value350 value1 value2 = (output1027, value351, value1)) : Flapjack.WordAlloc.removeDeadStructural input1028 value349 value1 value2 = (output1028, value351, value1) := by
  rw [input1028_def, output1028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1026]
  try dsimp only
  rw [child1027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1026_skip, output1027_skip]
  kernel_rfl

theorem node1029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1029 value351 value1 value2 = (output1029, value351, value1) := by
  rw [input1029_def, output1029_def]
  kernel_rfl

theorem node1030_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1030 value351 value1 value2 = (output1030, value352, value1) := by
  rw [input1030_def, output1030_def]
  kernel_rfl

theorem node1031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1031 value352 value1 value2 = (output1031, value353, value1) := by
  rw [input1031_def, output1031_def]
  kernel_rfl

theorem node1032_cond_eq
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value351 value1 value2 = (output1030, value352, value1))
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value352 value1 value2 = (output1031, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input1032 value351 value1 value2 = (output1032, value353, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1030]
  try dsimp only
  rw [child1031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1030_skip, output1031_skip]
  kernel_rfl

theorem node1033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1033 value353 value1 value2 = (output1033, value354, value1) := by
  rw [input1033_def, output1033_def]
  kernel_rfl

theorem node1034_cond_eq
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value351 value1 value2 = (output1032, value353, value1))
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value353 value1 value2 = (output1033, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input1034 value351 value1 value2 = (output1034, value354, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1032]
  try dsimp only
  rw [child1033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1032_skip, output1033_skip]
  kernel_rfl

theorem node1035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1035 value354 value1 value2 = (output1035, value355, value1) := by
  rw [input1035_def, output1035_def]
  kernel_rfl

theorem node1036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1036 value355 value1 value2 = (output1036, value356, value1) := by
  rw [input1036_def, output1036_def]
  kernel_rfl

theorem node1037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1037 value356 value1 value2 = (output1037, value357, value1) := by
  rw [input1037_def, output1037_def]
  kernel_rfl

theorem node1038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1038 value357 value1 value2 = (output1038, value358, value1) := by
  rw [input1038_def, output1038_def]
  kernel_rfl

theorem node1039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1039 value358 value1 value2 = (output1039, value358, value1) := by
  rw [input1039_def, output1039_def]
  kernel_rfl

theorem node1040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1040 value358 value1 value2 = (output1040, value359, value1) := by
  rw [input1040_def, output1040_def]
  kernel_rfl

theorem node1041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1041 value359 value1 value2 = (output1041, value359, value1) := by
  rw [input1041_def, output1041_def]
  kernel_rfl

theorem node1042_cond_eq
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value358 value1 value2 = (output1040, value359, value1))
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value359 value1 value2 = (output1041, value359, value1)) : Flapjack.WordAlloc.removeDeadStructural input1042 value358 value1 value2 = (output1042, value359, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1040]
  try dsimp only
  rw [child1041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1040_skip, output1041_skip]
  kernel_rfl

theorem node1043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1043 value359 value1 value2 = (output1043, value360, value1) := by
  rw [input1043_def, output1043_def]
  kernel_rfl

theorem node1044_cond_eq
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value358 value1 value2 = (output1042, value359, value1))
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value359 value1 value2 = (output1043, value360, value1)) : Flapjack.WordAlloc.removeDeadStructural input1044 value358 value1 value2 = (output1044, value360, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1042]
  try dsimp only
  rw [child1043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1042_skip, output1043_skip]
  kernel_rfl

theorem node1045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1045 value360 value1 value2 = (output1045, value360, value1) := by
  rw [input1045_def, output1045_def]
  kernel_rfl

theorem node1046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1046 value360 value1 value2 = (output1046, value361, value1) := by
  rw [input1046_def, output1046_def]
  kernel_rfl

theorem node1047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1047 value361 value1 value2 = (output1047, value361, value1) := by
  rw [input1047_def, output1047_def]
  kernel_rfl

theorem node1048_cond_eq
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value360 value1 value2 = (output1046, value361, value1))
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value361 value1 value2 = (output1047, value361, value1)) : Flapjack.WordAlloc.removeDeadStructural input1048 value360 value1 value2 = (output1048, value361, value1) := by
  rw [input1048_def, output1048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1046]
  try dsimp only
  rw [child1047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1046_skip, output1047_skip]
  kernel_rfl

theorem node1049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1049 value361 value1 value2 = (output1049, value362, value1) := by
  rw [input1049_def, output1049_def]
  kernel_rfl

theorem node1050_cond_eq
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value360 value1 value2 = (output1048, value361, value1))
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value361 value1 value2 = (output1049, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1050 value360 value1 value2 = (output1050, value362, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1048]
  try dsimp only
  rw [child1049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1048_skip, output1049_skip]
  kernel_rfl

theorem node1051_cond_eq
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value360 value1 value2 = (output1045, value360, value1))
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value360 value1 value2 = (output1050, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1051 value360 value1 value2 = (output1051, value362, value1) := by
  rw [input1051_def, output1051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1045]
  try dsimp only
  rw [child1050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1045_skip, output1050_skip]
  kernel_rfl

theorem node1052_cond_eq
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value358 value1 value2 = (output1044, value360, value1))
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value360 value1 value2 = (output1051, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1052 value358 value1 value2 = (output1052, value362, value1) := by
  rw [input1052_def, output1052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1044]
  try dsimp only
  rw [child1051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1044_skip, output1051_skip]
  kernel_rfl

theorem node1053_cond_eq
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value358 value1 value2 = (output1039, value358, value1))
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value358 value1 value2 = (output1052, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1053 value358 value1 value2 = (output1053, value362, value1) := by
  rw [input1053_def, output1053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1039]
  try dsimp only
  rw [child1052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1039_skip, output1052_skip]
  kernel_rfl

theorem node1054_cond_eq
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value357 value1 value2 = (output1038, value358, value1))
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value358 value1 value2 = (output1053, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1054 value357 value1 value2 = (output1054, value362, value1) := by
  rw [input1054_def, output1054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1038]
  try dsimp only
  rw [child1053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1038_skip, output1053_skip]
  kernel_rfl

theorem node1055_cond_eq
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value356 value1 value2 = (output1037, value357, value1))
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value357 value1 value2 = (output1054, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1055 value356 value1 value2 = (output1055, value362, value1) := by
  rw [input1055_def, output1055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1037]
  try dsimp only
  rw [child1054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1037_skip, output1054_skip]
  kernel_rfl

theorem node1056_cond_eq
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value355 value1 value2 = (output1036, value356, value1))
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value356 value1 value2 = (output1055, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1056 value355 value1 value2 = (output1056, value362, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1036]
  try dsimp only
  rw [child1055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1036_skip, output1055_skip]
  kernel_rfl

theorem node1057_cond_eq
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value354 value1 value2 = (output1035, value355, value1))
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value355 value1 value2 = (output1056, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1057 value354 value1 value2 = (output1057, value362, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1035]
  try dsimp only
  rw [child1056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1035_skip, output1056_skip]
  kernel_rfl

theorem node1058_cond_eq
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value351 value1 value2 = (output1034, value354, value1))
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value354 value1 value2 = (output1057, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1058 value351 value1 value2 = (output1058, value362, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1034]
  try dsimp only
  rw [child1057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1034_skip, output1057_skip]
  kernel_rfl

theorem node1059_cond_eq
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value351 value1 value2 = (output1029, value351, value1))
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value351 value1 value2 = (output1058, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1059 value351 value1 value2 = (output1059, value362, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1029]
  try dsimp only
  rw [child1058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1029_skip, output1058_skip]
  kernel_rfl

theorem node1060_cond_eq
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value349 value1 value2 = (output1028, value351, value1))
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value351 value1 value2 = (output1059, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1060 value349 value1 value2 = (output1060, value362, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1028]
  try dsimp only
  rw [child1059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1028_skip, output1059_skip]
  kernel_rfl

theorem node1061_cond_eq
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value349 value1 value2 = (output1023, value349, value1))
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value349 value1 value2 = (output1060, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1061 value349 value1 value2 = (output1061, value362, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1023]
  try dsimp only
  rw [child1060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1023_skip, output1060_skip]
  kernel_rfl

theorem node1062_cond_eq
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value347 value1 value2 = (output1022, value349, value1))
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value349 value1 value2 = (output1061, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1062 value347 value1 value2 = (output1062, value362, value1) := by
  rw [input1062_def, output1062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1022]
  try dsimp only
  rw [child1061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1022_skip, output1061_skip]
  kernel_rfl

theorem node1063_cond_eq
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value347 value1 value2 = (output1017, value347, value1))
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value347 value1 value2 = (output1062, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1063 value347 value1 value2 = (output1063, value362, value1) := by
  rw [input1063_def, output1063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1017]
  try dsimp only
  rw [child1062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1017_skip, output1062_skip]
  kernel_rfl

theorem node1064_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value345 value1 value2 = (output1016, value347, value1))
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value347 value1 value2 = (output1063, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1064 value345 value1 value2 = (output1064, value362, value1) := by
  rw [input1064_def, output1064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  try dsimp only
  rw [child1063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output1063_skip]
  kernel_rfl

theorem node1065_cond_eq
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value345 value1 value2 = (output1011, value345, value1))
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value345 value1 value2 = (output1064, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1065 value345 value1 value2 = (output1065, value362, value1) := by
  rw [input1065_def, output1065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1011]
  try dsimp only
  rw [child1064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1011_skip, output1064_skip]
  kernel_rfl

theorem node1066_cond_eq
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value343 value1 value2 = (output1010, value345, value1))
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value345 value1 value2 = (output1065, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1066 value343 value1 value2 = (output1066, value362, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1010]
  try dsimp only
  rw [child1065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1010_skip, output1065_skip]
  kernel_rfl

theorem node1067_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value343 value1 value2 = (output1005, value343, value1))
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value343 value1 value2 = (output1066, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1067 value343 value1 value2 = (output1067, value362, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  try dsimp only
  rw [child1066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1066_skip]
  kernel_rfl

theorem node1068_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value341 value1 value2 = (output1004, value343, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value343 value1 value2 = (output1067, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value341 value1 value2 = (output1068, value362, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  try dsimp only
  rw [child1067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output1067_skip]
  kernel_rfl

theorem node1069_cond_eq
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value341 value1 value2 = (output999, value341, value1))
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value341 value1 value2 = (output1068, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1069 value341 value1 value2 = (output1069, value362, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child999]
  try dsimp only
  rw [child1068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output999_skip, output1068_skip]
  kernel_rfl

theorem node1070_cond_eq
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value336 value1 value2 = (output998, value341, value1))
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value341 value1 value2 = (output1069, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1070 value336 value1 value2 = (output1070, value362, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child998]
  try dsimp only
  rw [child1069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output998_skip, output1069_skip]
  kernel_rfl

theorem node1071_cond_eq
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value335 value1 value2 = (output989, value336, value1))
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value336 value1 value2 = (output1070, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1071 value335 value1 value2 = (output1071, value362, value1) := by
  rw [input1071_def, output1071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child989]
  try dsimp only
  rw [child1070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output989_skip, output1070_skip]
  kernel_rfl

theorem node1072_cond_eq
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value334 value1 value2 = (output988, value335, value1))
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value335 value1 value2 = (output1071, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1072 value334 value1 value2 = (output1072, value362, value1) := by
  rw [input1072_def, output1072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child988]
  try dsimp only
  rw [child1071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output988_skip, output1071_skip]
  kernel_rfl

theorem node1073_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value333 value1 value2 = (output987, value334, value1))
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value334 value1 value2 = (output1072, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1073 value333 value1 value2 = (output1073, value362, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  try dsimp only
  rw [child1072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output1072_skip]
  kernel_rfl

theorem node1074_cond_eq
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value332 value1 value2 = (output986, value333, value1))
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value333 value1 value2 = (output1073, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1074 value332 value1 value2 = (output1074, value362, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child986]
  try dsimp only
  rw [child1073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output986_skip, output1073_skip]
  kernel_rfl

theorem node1075_cond_eq
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value329 value1 value2 = (output985, value332, value1))
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value332 value1 value2 = (output1074, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1075 value329 value1 value2 = (output1075, value362, value1) := by
  rw [input1075_def, output1075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child985]
  try dsimp only
  rw [child1074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output985_skip, output1074_skip]
  kernel_rfl

theorem node1076_cond_eq
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value329 value1 value2 = (output980, value329, value1))
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value329 value1 value2 = (output1075, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1076 value329 value1 value2 = (output1076, value362, value1) := by
  rw [input1076_def, output1076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child980]
  try dsimp only
  rw [child1075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output980_skip, output1075_skip]
  kernel_rfl

theorem node1077_cond_eq
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value328 value1 value2 = (output979, value329, value1))
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value329 value1 value2 = (output1076, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1077 value328 value1 value2 = (output1077, value362, value1) := by
  rw [input1077_def, output1077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child979]
  try dsimp only
  rw [child1076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output979_skip, output1076_skip]
  kernel_rfl

theorem node1078_cond_eq
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value327 value1 value2 = (output976, value328, value1))
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value328 value1 value2 = (output1077, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1078 value327 value1 value2 = (output1078, value362, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child976]
  try dsimp only
  rw [child1077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output976_skip, output1077_skip]
  kernel_rfl

theorem node1079_cond_eq
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value322 value1 value2 = (output975, value327, value1))
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value327 value1 value2 = (output1078, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1079 value322 value1 value2 = (output1079, value362, value1) := by
  rw [input1079_def, output1079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child975]
  try dsimp only
  rw [child1078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output975_skip, output1078_skip]
  kernel_rfl

theorem node1080_cond_eq
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value322 value1 value2 = (output948, value322, value1))
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value322 value1 value2 = (output1079, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1080 value322 value1 value2 = (output1080, value362, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child948]
  try dsimp only
  rw [child1079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output948_skip, output1079_skip]
  kernel_rfl

theorem node1081_cond_eq
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value318 value1 value2 = (output947, value322, value1))
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value322 value1 value2 = (output1080, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1081 value318 value1 value2 = (output1081, value362, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child947]
  try dsimp only
  rw [child1080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output947_skip, output1080_skip]
  kernel_rfl

theorem node1082_cond_eq
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value321 value1 value2 = (output946, value318, value1))
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value318 value1 value2 = (output1081, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1082 value321 value1 value2 = (output1082, value362, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child946]
  try dsimp only
  rw [child1081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output946_skip, output1081_skip]
  kernel_rfl

theorem node1083_cond_eq
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value316 value1 value2 = (output945, value321, value1))
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value321 value1 value2 = (output1082, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1083 value316 value1 value2 = (output1083, value362, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child945]
  try dsimp only
  rw [child1082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output945_skip, output1082_skip]
  kernel_rfl

theorem node1084_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value316 value1 value2 = (output918, value316, value1))
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value316 value1 value2 = (output1083, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1084 value316 value1 value2 = (output1084, value362, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child1083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output1083_skip]
  kernel_rfl

theorem node1085_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value313 value1 value2 = (output917, value316, value1))
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value316 value1 value2 = (output1084, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1085 value313 value1 value2 = (output1085, value362, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child1084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output1084_skip]
  kernel_rfl

theorem node1086_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value306 value1 value2 = (output912, value313, value1))
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value313 value1 value2 = (output1085, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1086 value306 value1 value2 = (output1086, value362, value1) := by
  rw [input1086_def, output1086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child1085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output1085_skip]
  kernel_rfl

theorem node1087_cond_eq
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value306 value1 value2 = (output889, value306, value1))
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value306 value1 value2 = (output1086, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1087 value306 value1 value2 = (output1087, value362, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child889]
  try dsimp only
  rw [child1086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output889_skip, output1086_skip]
  kernel_rfl

theorem node1088_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value305 value1 value2 = (output888, value306, value1))
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value306 value1 value2 = (output1087, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1088 value305 value1 value2 = (output1088, value362, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child1087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output1087_skip]
  kernel_rfl

theorem node1089_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value304 value1 value2 = (output887, value305, value1))
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value305 value1 value2 = (output1088, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1089 value304 value1 value2 = (output1089, value362, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child1088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output1088_skip]
  kernel_rfl

theorem node1090_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value303 value1 value2 = (output886, value304, value1))
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value304 value1 value2 = (output1089, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1090 value303 value1 value2 = (output1090, value362, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  try dsimp only
  rw [child1089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output1089_skip]
  kernel_rfl

theorem node1091_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value302 value1 value2 = (output885, value303, value1))
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value303 value1 value2 = (output1090, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1091 value302 value1 value2 = (output1091, value362, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  try dsimp only
  rw [child1090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output1090_skip]
  kernel_rfl

theorem node1092_cond_eq
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value301 value1 value2 = (output884, value302, value1))
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value302 value1 value2 = (output1091, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1092 value301 value1 value2 = (output1092, value362, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child884]
  try dsimp only
  rw [child1091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output884_skip, output1091_skip]
  kernel_rfl

theorem node1093_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value300 value1 value2 = (output883, value301, value1))
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value301 value1 value2 = (output1092, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1093 value300 value1 value2 = (output1093, value362, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child1092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output1092_skip]
  kernel_rfl

theorem node1094_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value299 value1 value2 = (output882, value300, value1))
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value300 value1 value2 = (output1093, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1094 value299 value1 value2 = (output1094, value362, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child1093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output1093_skip]
  kernel_rfl

theorem node1095_cond_eq
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value298 value1 value2 = (output881, value299, value1))
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value299 value1 value2 = (output1094, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1095 value298 value1 value2 = (output1095, value362, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child881]
  try dsimp only
  rw [child1094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output881_skip, output1094_skip]
  kernel_rfl

theorem node1096_cond_eq
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value297 value1 value2 = (output880, value298, value1))
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value298 value1 value2 = (output1095, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1096 value297 value1 value2 = (output1096, value362, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child880]
  try dsimp only
  rw [child1095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output880_skip, output1095_skip]
  kernel_rfl

theorem node1097_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value296 value1 value2 = (output879, value297, value1))
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value297 value1 value2 = (output1096, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1097 value296 value1 value2 = (output1097, value362, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  try dsimp only
  rw [child1096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output1096_skip]
  kernel_rfl

theorem node1098_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value295 value1 value2 = (output878, value296, value1))
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value296 value1 value2 = (output1097, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1098 value295 value1 value2 = (output1098, value362, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child1097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output1097_skip]
  kernel_rfl

theorem node1099_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value294 value1 value2 = (output877, value295, value1))
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value295 value1 value2 = (output1098, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1099 value294 value1 value2 = (output1099, value362, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  try dsimp only
  rw [child1098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output1098_skip]
  kernel_rfl

theorem node1100_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value293 value1 value2 = (output876, value294, value1))
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value294 value1 value2 = (output1099, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1100 value293 value1 value2 = (output1100, value362, value1) := by
  rw [input1100_def, output1100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child1099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output1099_skip]
  kernel_rfl

theorem node1101_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value292 value1 value2 = (output875, value293, value1))
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value293 value1 value2 = (output1100, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1101 value292 value1 value2 = (output1101, value362, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child1100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output1100_skip]
  kernel_rfl

theorem node1102_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value291 value1 value2 = (output874, value292, value1))
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value292 value1 value2 = (output1101, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1102 value291 value1 value2 = (output1102, value362, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child1101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output1101_skip]
  kernel_rfl

theorem node1103_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value290 value1 value2 = (output873, value291, value1))
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value291 value1 value2 = (output1102, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1103 value290 value1 value2 = (output1103, value362, value1) := by
  rw [input1103_def, output1103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  try dsimp only
  rw [child1102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output1102_skip]
  kernel_rfl

theorem node1104_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value287 value1 value2 = (output872, value290, value1))
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value290 value1 value2 = (output1103, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1104 value287 value1 value2 = (output1104, value362, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child1103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output1103_skip]
  kernel_rfl

theorem node1105_cond_eq
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value287 value1 value2 = (output867, value287, value1))
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value287 value1 value2 = (output1104, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1105 value287 value1 value2 = (output1105, value362, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child867]
  try dsimp only
  rw [child1104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output867_skip, output1104_skip]
  kernel_rfl

theorem node1106_cond_eq
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value286 value1 value2 = (output866, value287, value1))
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value287 value1 value2 = (output1105, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1106 value286 value1 value2 = (output1106, value362, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child866]
  try dsimp only
  rw [child1105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output866_skip, output1105_skip]
  kernel_rfl

theorem node1107_cond_eq
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value283 value1 value2 = (output865, value286, value1))
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value286 value1 value2 = (output1106, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1107 value283 value1 value2 = (output1107, value362, value1) := by
  rw [input1107_def, output1107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child865]
  try dsimp only
  rw [child1106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output865_skip, output1106_skip]
  kernel_rfl

theorem node1108_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value283 value1 value2 = (output860, value283, value1))
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value283 value1 value2 = (output1107, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1108 value283 value1 value2 = (output1108, value362, value1) := by
  rw [input1108_def, output1108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  try dsimp only
  rw [child1107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output1107_skip]
  kernel_rfl

theorem node1109_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value282 value1 value2 = (output859, value283, value1))
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value283 value1 value2 = (output1108, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1109 value282 value1 value2 = (output1109, value362, value1) := by
  rw [input1109_def, output1109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  try dsimp only
  rw [child1108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output1108_skip]
  kernel_rfl

theorem node1110_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value279 value1 value2 = (output858, value282, value1))
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value282 value1 value2 = (output1109, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1110 value279 value1 value2 = (output1110, value362, value1) := by
  rw [input1110_def, output1110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child1109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output1109_skip]
  kernel_rfl

theorem node1111_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value281 value1 value2 = (output857, value279, value1))
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value279 value1 value2 = (output1110, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1111 value281 value1 value2 = (output1111, value362, value1) := by
  rw [input1111_def, output1111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  try dsimp only
  rw [child1110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output1110_skip]
  kernel_rfl

theorem node1112_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value276 value1 value2 = (output856, value281, value1))
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value281 value1 value2 = (output1111, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1112 value276 value1 value2 = (output1112, value362, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child1111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output1111_skip]
  kernel_rfl

theorem node1113_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value276 value1 value2 = (output835, value276, value1))
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value276 value1 value2 = (output1112, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1113 value276 value1 value2 = (output1113, value362, value1) := by
  rw [input1113_def, output1113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child835]
  try dsimp only
  rw [child1112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output835_skip, output1112_skip]
  kernel_rfl

theorem node1114_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value275 value1 value2 = (output834, value276, value1))
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value276 value1 value2 = (output1113, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1114 value275 value1 value2 = (output1114, value362, value1) := by
  rw [input1114_def, output1114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  try dsimp only
  rw [child1113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output834_skip, output1113_skip]
  kernel_rfl

theorem node1115_cond_eq
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value272 value1 value2 = (output833, value275, value1))
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value275 value1 value2 = (output1114, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1115 value272 value1 value2 = (output1115, value362, value1) := by
  rw [input1115_def, output1115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child833]
  try dsimp only
  rw [child1114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output833_skip, output1114_skip]
  kernel_rfl

theorem node1116_cond_eq
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value274 value1 value2 = (output832, value272, value1))
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value272 value1 value2 = (output1115, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1116 value274 value1 value2 = (output1116, value362, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child832]
  try dsimp only
  rw [child1115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output832_skip, output1115_skip]
  kernel_rfl

theorem node1117_cond_eq
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value269 value1 value2 = (output831, value274, value1))
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value274 value1 value2 = (output1116, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1117 value269 value1 value2 = (output1117, value362, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child831]
  try dsimp only
  rw [child1116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output831_skip, output1116_skip]
  kernel_rfl

theorem node1118_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value269 value1 value2 = (output810, value269, value1))
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value269 value1 value2 = (output1117, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1118 value269 value1 value2 = (output1118, value362, value1) := by
  rw [input1118_def, output1118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child1117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output1117_skip]
  kernel_rfl

theorem node1119_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value266 value1 value2 = (output809, value269, value1))
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value269 value1 value2 = (output1118, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1119 value266 value1 value2 = (output1119, value362, value1) := by
  rw [input1119_def, output1119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child1118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output1118_skip]
  kernel_rfl

theorem node1120_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value265 value1 value2 = (output804, value266, value1))
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value266 value1 value2 = (output1119, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1120 value265 value1 value2 = (output1120, value362, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child1119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output1119_skip]
  kernel_rfl

theorem node1121_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value262 value1 value2 = (output803, value265, value1))
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value265 value1 value2 = (output1120, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1121 value262 value1 value2 = (output1121, value362, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child1120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output1120_skip]
  kernel_rfl

theorem node1122_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value262 value1 value2 = (output798, value262, value1))
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value262 value1 value2 = (output1121, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1122 value262 value1 value2 = (output1122, value362, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child1121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output1121_skip]
  kernel_rfl

theorem node1123_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value261 value1 value2 = (output797, value262, value1))
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value262 value1 value2 = (output1122, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1123 value261 value1 value2 = (output1123, value362, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  try dsimp only
  rw [child1122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output1122_skip]
  kernel_rfl

theorem node1124_cond_eq
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value258 value1 value2 = (output796, value261, value1))
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value261 value1 value2 = (output1123, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1124 value258 value1 value2 = (output1124, value362, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child796]
  try dsimp only
  rw [child1123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output796_skip, output1123_skip]
  kernel_rfl

theorem node1125_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value258 value1 value2 = (output791, value258, value1))
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value258 value1 value2 = (output1124, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1125 value258 value1 value2 = (output1125, value362, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child1124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output1124_skip]
  kernel_rfl

theorem node1126_cond_eq
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value257 value1 value2 = (output790, value258, value1))
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value258 value1 value2 = (output1125, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1126 value257 value1 value2 = (output1126, value362, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child790]
  try dsimp only
  rw [child1125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output790_skip, output1125_skip]
  kernel_rfl

theorem node1127_cond_eq
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value256 value1 value2 = (output789, value257, value1))
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value257 value1 value2 = (output1126, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1127 value256 value1 value2 = (output1127, value362, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child789]
  try dsimp only
  rw [child1126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output789_skip, output1126_skip]
  kernel_rfl

theorem node1128_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value249 value1 value2 = (output788, value256, value1))
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value256 value1 value2 = (output1127, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1128 value249 value1 value2 = (output1128, value362, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child1127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output1127_skip]
  kernel_rfl

theorem node1129_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value249 value1 value2 = (output747, value249, value1))
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value249 value1 value2 = (output1128, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1129 value249 value1 value2 = (output1129, value362, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  try dsimp only
  rw [child1128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output1128_skip]
  kernel_rfl

theorem node1130_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value248 value1 value2 = (output746, value249, value1))
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value249 value1 value2 = (output1129, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1130 value248 value1 value2 = (output1130, value362, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child1129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output1129_skip]
  kernel_rfl

theorem node1131_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value245 value1 value2 = (output745, value248, value1))
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value248 value1 value2 = (output1130, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1131 value245 value1 value2 = (output1131, value362, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child1130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output1130_skip]
  kernel_rfl

theorem node1132_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value245 value1 value2 = (output740, value245, value1))
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value245 value1 value2 = (output1131, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1132 value245 value1 value2 = (output1132, value362, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  try dsimp only
  rw [child1131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output1131_skip]
  kernel_rfl

theorem node1133_cond_eq
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value244 value1 value2 = (output739, value245, value1))
    (child1132 : Flapjack.WordAlloc.removeDeadStructural input1132 value245 value1 value2 = (output1132, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1133 value244 value1 value2 = (output1133, value362, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child739]
  try dsimp only
  rw [child1132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output739_skip, output1132_skip]
  kernel_rfl

theorem node1134_cond_eq
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value240 value1 value2 = (output738, value244, value1))
    (child1133 : Flapjack.WordAlloc.removeDeadStructural input1133 value244 value1 value2 = (output1133, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1134 value240 value1 value2 = (output1134, value362, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child738]
  try dsimp only
  rw [child1133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output738_skip, output1133_skip]
  kernel_rfl

theorem node1135_cond_eq
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value243 value1 value2 = (output737, value240, value1))
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value240 value1 value2 = (output1134, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1135 value243 value1 value2 = (output1135, value362, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child737]
  try dsimp only
  rw [child1134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output737_skip, output1134_skip]
  kernel_rfl

theorem node1136_cond_eq
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value231 value1 value2 = (output736, value243, value1))
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value243 value1 value2 = (output1135, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1136 value231 value1 value2 = (output1136, value362, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child736]
  try dsimp only
  rw [child1135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output736_skip, output1135_skip]
  kernel_rfl

theorem node1137_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value231 value1 value2 = (output677, value231, value1))
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value231 value1 value2 = (output1136, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1137 value231 value1 value2 = (output1137, value362, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  try dsimp only
  rw [child1136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output677_skip, output1136_skip]
  kernel_rfl

theorem node1138_cond_eq
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value230 value1 value2 = (output676, value231, value1))
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value231 value1 value2 = (output1137, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1138 value230 value1 value2 = (output1138, value362, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child676]
  try dsimp only
  rw [child1137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output676_skip, output1137_skip]
  kernel_rfl

theorem node1139_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value227 value1 value2 = (output675, value230, value1))
    (child1138 : Flapjack.WordAlloc.removeDeadStructural input1138 value230 value1 value2 = (output1138, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1139 value227 value1 value2 = (output1139, value362, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  try dsimp only
  rw [child1138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output1138_skip]
  kernel_rfl

theorem node1140_cond_eq
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value227 value1 value2 = (output670, value227, value1))
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value227 value1 value2 = (output1139, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1140 value227 value1 value2 = (output1140, value362, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child670]
  try dsimp only
  rw [child1139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output670_skip, output1139_skip]
  kernel_rfl

theorem node1141_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value226 value1 value2 = (output669, value227, value1))
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value227 value1 value2 = (output1140, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1141 value226 value1 value2 = (output1141, value362, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child1140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output1140_skip]
  kernel_rfl

theorem node1142_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value225 value1 value2 = (output668, value226, value1))
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value226 value1 value2 = (output1141, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1142 value225 value1 value2 = (output1142, value362, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child1141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output1141_skip]
  kernel_rfl

theorem node1143_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value224 value1 value2 = (output667, value225, value1))
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value225 value1 value2 = (output1142, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1143 value224 value1 value2 = (output1143, value362, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child1142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output1142_skip]
  kernel_rfl

theorem node1144_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value206 value1 value2 = (output666, value224, value1))
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value224 value1 value2 = (output1143, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1144 value206 value1 value2 = (output1144, value362, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child1143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output1143_skip]
  kernel_rfl

theorem node1145_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value206 value1 value2 = (output569, value206, value1))
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value206 value1 value2 = (output1144, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1145 value206 value1 value2 = (output1145, value362, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  try dsimp only
  rw [child1144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output569_skip, output1144_skip]
  kernel_rfl

theorem node1146_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value205 value1 value2 = (output568, value206, value1))
    (child1145 : Flapjack.WordAlloc.removeDeadStructural input1145 value206 value1 value2 = (output1145, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1146 value205 value1 value2 = (output1146, value362, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child1145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output1145_skip]
  kernel_rfl

theorem node1147_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value204 value1 value2 = (output567, value205, value1))
    (child1146 : Flapjack.WordAlloc.removeDeadStructural input1146 value205 value1 value2 = (output1146, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1147 value204 value1 value2 = (output1147, value362, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child1146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output1146_skip]
  kernel_rfl

theorem node1148_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value203 value1 value2 = (output566, value204, value1))
    (child1147 : Flapjack.WordAlloc.removeDeadStructural input1147 value204 value1 value2 = (output1147, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1148 value203 value1 value2 = (output1148, value362, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child1147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output1147_skip]
  kernel_rfl

theorem node1149_cond_eq
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value202 value1 value2 = (output565, value203, value1))
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value203 value1 value2 = (output1148, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1149 value202 value1 value2 = (output1149, value362, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child565]
  try dsimp only
  rw [child1148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output565_skip, output1148_skip]
  kernel_rfl

theorem node1150_cond_eq
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value199 value1 value2 = (output564, value202, value1))
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value202 value1 value2 = (output1149, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1150 value199 value1 value2 = (output1150, value362, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child564]
  try dsimp only
  rw [child1149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output564_skip, output1149_skip]
  kernel_rfl

theorem node1151_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value199 value1 value2 = (output559, value199, value1))
    (child1150 : Flapjack.WordAlloc.removeDeadStructural input1150 value199 value1 value2 = (output1150, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1151 value199 value1 value2 = (output1151, value362, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child1150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output559_skip, output1150_skip]
  kernel_rfl

theorem node1152_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value198 value1 value2 = (output558, value199, value1))
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value199 value1 value2 = (output1151, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1152 value198 value1 value2 = (output1152, value362, value1) := by
  rw [input1152_def, output1152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child1151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output1151_skip]
  kernel_rfl

theorem node1153_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value197 value1 value2 = (output557, value198, value1))
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value198 value1 value2 = (output1152, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1153 value197 value1 value2 = (output1153, value362, value1) := by
  rw [input1153_def, output1153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child1152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output1152_skip]
  kernel_rfl

theorem node1154_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value196 value1 value2 = (output556, value197, value1))
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value197 value1 value2 = (output1153, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1154 value196 value1 value2 = (output1154, value362, value1) := by
  rw [input1154_def, output1154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child1153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output1153_skip]
  kernel_rfl

theorem node1155_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value195 value1 value2 = (output555, value196, value1))
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value196 value1 value2 = (output1154, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1155 value195 value1 value2 = (output1155, value362, value1) := by
  rw [input1155_def, output1155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  try dsimp only
  rw [child1154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output555_skip, output1154_skip]
  kernel_rfl

theorem node1156_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value194 value1 value2 = (output554, value195, value1))
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value195 value1 value2 = (output1155, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1156 value194 value1 value2 = (output1156, value362, value1) := by
  rw [input1156_def, output1156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child1155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output1155_skip]
  kernel_rfl

theorem node1157_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value189 value1 value2 = (output553, value194, value1))
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value194 value1 value2 = (output1156, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1157 value189 value1 value2 = (output1157, value362, value1) := by
  rw [input1157_def, output1157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child1156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output1156_skip]
  kernel_rfl

theorem node1158_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value189 value1 value2 = (output544, value189, value1))
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value189 value1 value2 = (output1157, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1158 value189 value1 value2 = (output1158, value362, value1) := by
  rw [input1158_def, output1158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child1157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output1157_skip]
  kernel_rfl

theorem node1159_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value189 value1 value2 = (output543, value189, value1))
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value189 value1 value2 = (output1158, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1159 value189 value1 value2 = (output1159, value362, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child1158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output1158_skip]
  kernel_rfl

theorem node1160_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value188 value1 value2 = (output542, value189, value1))
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value189 value1 value2 = (output1159, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1160 value188 value1 value2 = (output1160, value362, value1) := by
  rw [input1160_def, output1160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child1159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output1159_skip]
  kernel_rfl

theorem node1161_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value187 value1 value2 = (output541, value188, value1))
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value188 value1 value2 = (output1160, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1161 value187 value1 value2 = (output1161, value362, value1) := by
  rw [input1161_def, output1161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child1160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output1160_skip]
  kernel_rfl

theorem node1162_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value184 value1 value2 = (output540, value187, value1))
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value187 value1 value2 = (output1161, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1162 value184 value1 value2 = (output1162, value362, value1) := by
  rw [input1162_def, output1162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child1161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output1161_skip]
  kernel_rfl

theorem node1163_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value184 value1 value2 = (output535, value184, value1))
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value184 value1 value2 = (output1162, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1163 value184 value1 value2 = (output1163, value362, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child1162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output1162_skip]
  kernel_rfl

theorem node1164_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value183 value1 value2 = (output534, value184, value1))
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value184 value1 value2 = (output1163, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1164 value183 value1 value2 = (output1164, value362, value1) := by
  rw [input1164_def, output1164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child1163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output1163_skip]
  kernel_rfl

theorem node1165_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value180 value1 value2 = (output533, value183, value1))
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value183 value1 value2 = (output1164, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1165 value180 value1 value2 = (output1165, value362, value1) := by
  rw [input1165_def, output1165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child1164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output1164_skip]
  kernel_rfl

theorem node1166_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value180 value1 value2 = (output528, value180, value1))
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value180 value1 value2 = (output1165, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1166 value180 value1 value2 = (output1166, value362, value1) := by
  rw [input1166_def, output1166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child1165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output1165_skip]
  kernel_rfl

theorem node1167_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value175 value1 value2 = (output527, value180, value1))
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value180 value1 value2 = (output1166, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1167 value175 value1 value2 = (output1167, value362, value1) := by
  rw [input1167_def, output1167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child1166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output1166_skip]
  kernel_rfl

theorem node1168_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value168 value1 value2 = (output518, value175, value1))
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value175 value1 value2 = (output1167, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1168 value168 value1 value2 = (output1168, value362, value1) := by
  rw [input1168_def, output1168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child1167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output1167_skip]
  kernel_rfl

theorem node1169_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value167 value1 value2 = (output505, value168, value1))
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value168 value1 value2 = (output1168, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1169 value167 value1 value2 = (output1169, value362, value1) := by
  rw [input1169_def, output1169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child1168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output1168_skip]
  kernel_rfl

theorem node1170_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value165 value1 value2 = (output504, value167, value1))
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value167 value1 value2 = (output1169, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1170 value165 value1 value2 = (output1170, value362, value1) := by
  rw [input1170_def, output1170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child1169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output1169_skip]
  kernel_rfl

theorem node1171_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value164 value1 value2 = (output501, value165, value1))
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value165 value1 value2 = (output1170, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1171 value164 value1 value2 = (output1171, value362, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child1170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output1170_skip]
  kernel_rfl

theorem node1172_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value161 value1 value2 = (output500, value164, value1))
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value164 value1 value2 = (output1171, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1172 value161 value1 value2 = (output1172, value362, value1) := by
  rw [input1172_def, output1172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child1171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output1171_skip]
  kernel_rfl

theorem node1173_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value161 value1 value2 = (output495, value161, value1))
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value161 value1 value2 = (output1172, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1173 value161 value1 value2 = (output1173, value362, value1) := by
  rw [input1173_def, output1173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child1172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output1172_skip]
  kernel_rfl

theorem node1174_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value149 value1 value2 = (output494, value161, value1))
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value161 value1 value2 = (output1173, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1174 value149 value1 value2 = (output1174, value362, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child1173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output1173_skip]
  kernel_rfl

theorem node1175_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value152 value1 value2 = (output485, value149, value1))
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value149 value1 value2 = (output1174, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1175 value152 value1 value2 = (output1175, value362, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child1174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output1174_skip]
  kernel_rfl

theorem node1176_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value152 value1 value2 = (output476, value152, value1))
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value152 value1 value2 = (output1175, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1176 value152 value1 value2 = (output1176, value362, value1) := by
  rw [input1176_def, output1176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  try dsimp only
  rw [child1175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output476_skip, output1175_skip]
  kernel_rfl

theorem node1177_cond_eq
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value151 value1 value2 = (output475, value152, value1))
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value152 value1 value2 = (output1176, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1177 value151 value1 value2 = (output1177, value362, value1) := by
  rw [input1177_def, output1177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child475]
  try dsimp only
  rw [child1176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output475_skip, output1176_skip]
  kernel_rfl

theorem node1178_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value149 value1 value2 = (output474, value151, value1))
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value151 value1 value2 = (output1177, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1178 value149 value1 value2 = (output1178, value362, value1) := by
  rw [input1178_def, output1178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child1177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output1177_skip]
  kernel_rfl

theorem node1179_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value147 value1 value2 = (output471, value149, value1))
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value149 value1 value2 = (output1178, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1179 value147 value1 value2 = (output1179, value362, value1) := by
  rw [input1179_def, output1179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  try dsimp only
  rw [child1178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output471_skip, output1178_skip]
  kernel_rfl

theorem node1180_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value144 value1 value2 = (output468, value147, value1))
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value147 value1 value2 = (output1179, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1180 value144 value1 value2 = (output1180, value362, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child1179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output1179_skip]
  kernel_rfl

theorem node1181_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value144 value1 value2 = (output463, value144, value1))
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value144 value1 value2 = (output1180, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1181 value144 value1 value2 = (output1181, value362, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child1180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output1180_skip]
  kernel_rfl

theorem node1182_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value142 value1 value2 = (output462, value144, value1))
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value144 value1 value2 = (output1181, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1182 value142 value1 value2 = (output1182, value362, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child1181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output1181_skip]
  kernel_rfl

theorem node1183_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value140 value1 value2 = (output459, value142, value1))
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value142 value1 value2 = (output1182, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1183 value140 value1 value2 = (output1183, value362, value1) := by
  rw [input1183_def, output1183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child1182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output1182_skip]
  kernel_rfl

theorem node1184_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value138 value1 value2 = (output456, value140, value1))
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value140 value1 value2 = (output1183, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1184 value138 value1 value2 = (output1184, value362, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child1183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output1183_skip]
  kernel_rfl

theorem node1185_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value136 value1 value2 = (output453, value138, value1))
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value138 value1 value2 = (output1184, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1185 value136 value1 value2 = (output1185, value362, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  try dsimp only
  rw [child1184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output453_skip, output1184_skip]
  kernel_rfl

theorem node1186_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value135 value1 value2 = (output450, value136, value1))
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value136 value1 value2 = (output1185, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1186 value135 value1 value2 = (output1186, value362, value1) := by
  rw [input1186_def, output1186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child1185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output1185_skip]
  kernel_rfl

theorem node1187_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value134 value1 value2 = (output449, value135, value1))
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value135 value1 value2 = (output1186, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1187 value134 value1 value2 = (output1187, value362, value1) := by
  rw [input1187_def, output1187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child1186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output1186_skip]
  kernel_rfl

theorem node1188_cond_eq
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value133 value1 value2 = (output448, value134, value1))
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value134 value1 value2 = (output1187, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1188 value133 value1 value2 = (output1188, value362, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child448]
  try dsimp only
  rw [child1187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output448_skip, output1187_skip]
  kernel_rfl

theorem node1189_cond_eq
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value132 value1 value2 = (output447, value133, value1))
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value133 value1 value2 = (output1188, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1189 value132 value1 value2 = (output1189, value362, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child447]
  try dsimp only
  rw [child1188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output447_skip, output1188_skip]
  kernel_rfl

theorem node1190_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value129 value1 value2 = (output446, value132, value1))
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value132 value1 value2 = (output1189, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1190 value129 value1 value2 = (output1190, value362, value1) := by
  rw [input1190_def, output1190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child1189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output1189_skip]
  kernel_rfl

theorem node1191_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value129 value1 value2 = (output441, value129, value1))
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value129 value1 value2 = (output1190, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1191 value129 value1 value2 = (output1191, value362, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child1190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output1190_skip]
  kernel_rfl

theorem node1192_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value128 value1 value2 = (output440, value129, value1))
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value129 value1 value2 = (output1191, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1192 value128 value1 value2 = (output1192, value362, value1) := by
  rw [input1192_def, output1192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child1191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output1191_skip]
  kernel_rfl

theorem node1193_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value127 value1 value2 = (output439, value128, value1))
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value128 value1 value2 = (output1192, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1193 value127 value1 value2 = (output1193, value362, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child1192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output1192_skip]
  kernel_rfl

theorem node1194_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value126 value1 value2 = (output438, value127, value1))
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value127 value1 value2 = (output1193, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1194 value126 value1 value2 = (output1194, value362, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  try dsimp only
  rw [child1193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output438_skip, output1193_skip]
  kernel_rfl

theorem node1195_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value15 value1 value2 = (output437, value126, value1))
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value126 value1 value2 = (output1194, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1195 value15 value1 value2 = (output1195, value362, value1) := by
  rw [input1195_def, output1195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child1194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output1194_skip]
  kernel_rfl

theorem node1196_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value15 value1 value2 = (output80, value15, value1))
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value15 value1 value2 = (output1195, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1196 value15 value1 value2 = (output1196, value362, value1) := by
  rw [input1196_def, output1196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child1195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output1195_skip]
  kernel_rfl

theorem node1197_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value14 value1 value2 = (output79, value15, value1))
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value15 value1 value2 = (output1196, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1197 value14 value1 value2 = (output1197, value362, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child1196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output79_skip, output1196_skip]
  kernel_rfl

theorem node1198_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value13 value1 value2 = (output78, value14, value1))
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value14 value1 value2 = (output1197, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1198 value13 value1 value2 = (output1198, value362, value1) := by
  rw [input1198_def, output1198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child1197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output1197_skip]
  kernel_rfl

theorem node1199_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value5 value1 value2 = (output77, value13, value1))
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value13 value1 value2 = (output1198, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1199 value5 value1 value2 = (output1199, value362, value1) := by
  rw [input1199_def, output1199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child1198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output1198_skip]
  kernel_rfl

theorem node1200_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1))
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value5 value1 value2 = (output1199, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1200 value5 value1 value2 = (output1200, value362, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child1199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output1199_skip]
  kernel_rfl

theorem node1201_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value5 value1 value2 = (output1200, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1201 value4 value1 value2 = (output1201, value362, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1200_skip]
  kernel_rfl

theorem node1202_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value4 value1 value2 = (output1201, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input1202 value0 value1 value2 = (output1202, value362, value1) := by
  rw [input1202_def, output1202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1201_skip]
  kernel_rfl

theorem node1203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1203 value362 value1 value2 = (output1203, value363, value1) := by
  rw [input1203_def, output1203_def]
  kernel_rfl

theorem node1204_cond_eq
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value0 value1 value2 = (output1202, value362, value1))
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value362 value1 value2 = (output1203, value363, value1)) : Flapjack.WordAlloc.removeDeadStructural input1204 value0 value1 value2 = (output1204, value363, value1) := by
  rw [input1204_def, output1204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1202]
  try dsimp only
  rw [child1203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1202_skip, output1203_skip]
  kernel_rfl

#print axioms node1204_cond_eq
end InitECandidate.Proofs.DeadStages623.Parallel
