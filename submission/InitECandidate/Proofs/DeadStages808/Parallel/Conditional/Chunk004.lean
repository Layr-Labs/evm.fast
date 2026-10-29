import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages808.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages808.Parallel
theorem node1024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1024 value558 value1 value2 = (output1024, value559, value1) := by
  rw [input1024_def, output1024_def]
  kernel_rfl

theorem node1025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1025 value559 value1 value2 = (output1025, value560, value1) := by
  rw [input1025_def, output1025_def]
  kernel_rfl

theorem node1026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1026 value560 value1 value2 = (output1026, value561, value1) := by
  rw [input1026_def, output1026_def]
  kernel_rfl

theorem node1027_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1027 value561 value1 value2 = (output1027, value562, value1) := by
  rw [input1027_def, output1027_def]
  kernel_rfl

theorem node1028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1028 value562 value1 value2 = (output1028, value563, value1) := by
  rw [input1028_def, output1028_def]
  kernel_rfl

theorem node1029_cond_eq
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value561 value1 value2 = (output1027, value562, value1))
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value562 value1 value2 = (output1028, value563, value1)) : Flapjack.WordAlloc.removeDeadStructural input1029 value561 value1 value2 = (output1029, value563, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1027]
  try dsimp only
  rw [child1028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1027_skip, output1028_skip]
  kernel_rfl

theorem node1030_cond_eq
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value560 value1 value2 = (output1026, value561, value1))
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value561 value1 value2 = (output1029, value563, value1)) : Flapjack.WordAlloc.removeDeadStructural input1030 value560 value1 value2 = (output1030, value563, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1026]
  try dsimp only
  rw [child1029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1026_skip, output1029_skip]
  kernel_rfl

theorem node1031_cond_eq
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value559 value1 value2 = (output1025, value560, value1))
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value560 value1 value2 = (output1030, value563, value1)) : Flapjack.WordAlloc.removeDeadStructural input1031 value559 value1 value2 = (output1031, value563, value1) := by
  rw [input1031_def, output1031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1025]
  try dsimp only
  rw [child1030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1025_skip, output1030_skip]
  kernel_rfl

theorem node1032_cond_eq
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value558 value1 value2 = (output1024, value559, value1))
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value559 value1 value2 = (output1031, value563, value1)) : Flapjack.WordAlloc.removeDeadStructural input1032 value558 value1 value2 = (output1032, value563, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1024]
  try dsimp only
  rw [child1031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1024_skip, output1031_skip]
  kernel_rfl

theorem node1033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1033 value563 value1 value2 = (output1033, value564, value1) := by
  rw [input1033_def, output1033_def]
  kernel_rfl

theorem node1034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1034 value564 value1 value2 = (output1034, value565, value1) := by
  rw [input1034_def, output1034_def]
  kernel_rfl

theorem node1035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1035 value565 value1 value2 = (output1035, value566, value1) := by
  rw [input1035_def, output1035_def]
  kernel_rfl

theorem node1036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1036 value566 value1 value2 = (output1036, value567, value1) := by
  rw [input1036_def, output1036_def]
  kernel_rfl

theorem node1037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1037 value567 value1 value2 = (output1037, value568, value1) := by
  rw [input1037_def, output1037_def]
  kernel_rfl

theorem node1038_cond_eq
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value566 value1 value2 = (output1036, value567, value1))
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value567 value1 value2 = (output1037, value568, value1)) : Flapjack.WordAlloc.removeDeadStructural input1038 value566 value1 value2 = (output1038, value568, value1) := by
  rw [input1038_def, output1038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1036]
  try dsimp only
  rw [child1037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1036_skip, output1037_skip]
  kernel_rfl

theorem node1039_cond_eq
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value565 value1 value2 = (output1035, value566, value1))
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value566 value1 value2 = (output1038, value568, value1)) : Flapjack.WordAlloc.removeDeadStructural input1039 value565 value1 value2 = (output1039, value568, value1) := by
  rw [input1039_def, output1039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1035]
  try dsimp only
  rw [child1038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1035_skip, output1038_skip]
  kernel_rfl

theorem node1040_cond_eq
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value564 value1 value2 = (output1034, value565, value1))
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value565 value1 value2 = (output1039, value568, value1)) : Flapjack.WordAlloc.removeDeadStructural input1040 value564 value1 value2 = (output1040, value568, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1034]
  try dsimp only
  rw [child1039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1034_skip, output1039_skip]
  kernel_rfl

theorem node1041_cond_eq
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value563 value1 value2 = (output1033, value564, value1))
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value564 value1 value2 = (output1040, value568, value1)) : Flapjack.WordAlloc.removeDeadStructural input1041 value563 value1 value2 = (output1041, value568, value1) := by
  rw [input1041_def, output1041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1033]
  try dsimp only
  rw [child1040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1033_skip, output1040_skip]
  kernel_rfl

theorem node1042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1042 value568 value1 value2 = (output1042, value569, value1) := by
  rw [input1042_def, output1042_def]
  kernel_rfl

theorem node1043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1043 value569 value1 value2 = (output1043, value570, value1) := by
  rw [input1043_def, output1043_def]
  kernel_rfl

theorem node1044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1044 value570 value1 value2 = (output1044, value571, value1) := by
  rw [input1044_def, output1044_def]
  kernel_rfl

theorem node1045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1045 value571 value1 value2 = (output1045, value572, value1) := by
  rw [input1045_def, output1045_def]
  kernel_rfl

theorem node1046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1046 value572 value1 value2 = (output1046, value573, value1) := by
  rw [input1046_def, output1046_def]
  kernel_rfl

theorem node1047_cond_eq
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value571 value1 value2 = (output1045, value572, value1))
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value572 value1 value2 = (output1046, value573, value1)) : Flapjack.WordAlloc.removeDeadStructural input1047 value571 value1 value2 = (output1047, value573, value1) := by
  rw [input1047_def, output1047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1045]
  try dsimp only
  rw [child1046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1045_skip, output1046_skip]
  kernel_rfl

theorem node1048_cond_eq
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value570 value1 value2 = (output1044, value571, value1))
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value571 value1 value2 = (output1047, value573, value1)) : Flapjack.WordAlloc.removeDeadStructural input1048 value570 value1 value2 = (output1048, value573, value1) := by
  rw [input1048_def, output1048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1044]
  try dsimp only
  rw [child1047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1044_skip, output1047_skip]
  kernel_rfl

theorem node1049_cond_eq
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value569 value1 value2 = (output1043, value570, value1))
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value570 value1 value2 = (output1048, value573, value1)) : Flapjack.WordAlloc.removeDeadStructural input1049 value569 value1 value2 = (output1049, value573, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1043]
  try dsimp only
  rw [child1048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1043_skip, output1048_skip]
  kernel_rfl

theorem node1050_cond_eq
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value568 value1 value2 = (output1042, value569, value1))
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value569 value1 value2 = (output1049, value573, value1)) : Flapjack.WordAlloc.removeDeadStructural input1050 value568 value1 value2 = (output1050, value573, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1042]
  try dsimp only
  rw [child1049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1042_skip, output1049_skip]
  kernel_rfl

theorem node1051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1051 value573 value1 value2 = (output1051, value574, value1) := by
  rw [input1051_def, output1051_def]
  kernel_rfl

theorem node1052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1052 value574 value1 value2 = (output1052, value575, value1) := by
  rw [input1052_def, output1052_def]
  kernel_rfl

theorem node1053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1053 value575 value1 value2 = (output1053, value576, value1) := by
  rw [input1053_def, output1053_def]
  kernel_rfl

theorem node1054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1054 value576 value1 value2 = (output1054, value577, value1) := by
  rw [input1054_def, output1054_def]
  kernel_rfl

theorem node1055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1055 value577 value1 value2 = (output1055, value578, value1) := by
  rw [input1055_def, output1055_def]
  kernel_rfl

theorem node1056_cond_eq
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value576 value1 value2 = (output1054, value577, value1))
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value577 value1 value2 = (output1055, value578, value1)) : Flapjack.WordAlloc.removeDeadStructural input1056 value576 value1 value2 = (output1056, value578, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1054]
  try dsimp only
  rw [child1055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1054_skip, output1055_skip]
  kernel_rfl

theorem node1057_cond_eq
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value575 value1 value2 = (output1053, value576, value1))
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value576 value1 value2 = (output1056, value578, value1)) : Flapjack.WordAlloc.removeDeadStructural input1057 value575 value1 value2 = (output1057, value578, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1053]
  try dsimp only
  rw [child1056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1053_skip, output1056_skip]
  kernel_rfl

theorem node1058_cond_eq
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value574 value1 value2 = (output1052, value575, value1))
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value575 value1 value2 = (output1057, value578, value1)) : Flapjack.WordAlloc.removeDeadStructural input1058 value574 value1 value2 = (output1058, value578, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1052]
  try dsimp only
  rw [child1057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1052_skip, output1057_skip]
  kernel_rfl

theorem node1059_cond_eq
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value573 value1 value2 = (output1051, value574, value1))
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value574 value1 value2 = (output1058, value578, value1)) : Flapjack.WordAlloc.removeDeadStructural input1059 value573 value1 value2 = (output1059, value578, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1051]
  try dsimp only
  rw [child1058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1051_skip, output1058_skip]
  kernel_rfl

theorem node1060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1060 value578 value1 value2 = (output1060, value579, value1) := by
  rw [input1060_def, output1060_def]
  kernel_rfl

theorem node1061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1061 value579 value1 value2 = (output1061, value580, value1) := by
  rw [input1061_def, output1061_def]
  kernel_rfl

theorem node1062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1062 value580 value1 value2 = (output1062, value581, value1) := by
  rw [input1062_def, output1062_def]
  kernel_rfl

theorem node1063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1063 value581 value1 value2 = (output1063, value582, value1) := by
  rw [input1063_def, output1063_def]
  kernel_rfl

theorem node1064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1064 value582 value1 value2 = (output1064, value583, value1) := by
  rw [input1064_def, output1064_def]
  kernel_rfl

theorem node1065_cond_eq
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value581 value1 value2 = (output1063, value582, value1))
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value582 value1 value2 = (output1064, value583, value1)) : Flapjack.WordAlloc.removeDeadStructural input1065 value581 value1 value2 = (output1065, value583, value1) := by
  rw [input1065_def, output1065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1063]
  try dsimp only
  rw [child1064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1063_skip, output1064_skip]
  kernel_rfl

theorem node1066_cond_eq
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value580 value1 value2 = (output1062, value581, value1))
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value581 value1 value2 = (output1065, value583, value1)) : Flapjack.WordAlloc.removeDeadStructural input1066 value580 value1 value2 = (output1066, value583, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1062]
  try dsimp only
  rw [child1065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1062_skip, output1065_skip]
  kernel_rfl

theorem node1067_cond_eq
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value579 value1 value2 = (output1061, value580, value1))
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value580 value1 value2 = (output1066, value583, value1)) : Flapjack.WordAlloc.removeDeadStructural input1067 value579 value1 value2 = (output1067, value583, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1061]
  try dsimp only
  rw [child1066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1061_skip, output1066_skip]
  kernel_rfl

theorem node1068_cond_eq
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value578 value1 value2 = (output1060, value579, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value579 value1 value2 = (output1067, value583, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value578 value1 value2 = (output1068, value583, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1060]
  try dsimp only
  rw [child1067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1060_skip, output1067_skip]
  kernel_rfl

theorem node1069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1069 value583 value1 value2 = (output1069, value584, value1) := by
  rw [input1069_def, output1069_def]
  kernel_rfl

theorem node1070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1070 value584 value1 value2 = (output1070, value585, value1) := by
  rw [input1070_def, output1070_def]
  kernel_rfl

theorem node1071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1071 value585 value1 value2 = (output1071, value586, value1) := by
  rw [input1071_def, output1071_def]
  kernel_rfl

theorem node1072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1072 value586 value1 value2 = (output1072, value587, value1) := by
  rw [input1072_def, output1072_def]
  kernel_rfl

theorem node1073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1073 value587 value1 value2 = (output1073, value588, value1) := by
  rw [input1073_def, output1073_def]
  kernel_rfl

theorem node1074_cond_eq
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value586 value1 value2 = (output1072, value587, value1))
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value587 value1 value2 = (output1073, value588, value1)) : Flapjack.WordAlloc.removeDeadStructural input1074 value586 value1 value2 = (output1074, value588, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1072]
  try dsimp only
  rw [child1073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1072_skip, output1073_skip]
  kernel_rfl

theorem node1075_cond_eq
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value585 value1 value2 = (output1071, value586, value1))
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value586 value1 value2 = (output1074, value588, value1)) : Flapjack.WordAlloc.removeDeadStructural input1075 value585 value1 value2 = (output1075, value588, value1) := by
  rw [input1075_def, output1075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1071]
  try dsimp only
  rw [child1074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1071_skip, output1074_skip]
  kernel_rfl

theorem node1076_cond_eq
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value584 value1 value2 = (output1070, value585, value1))
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value585 value1 value2 = (output1075, value588, value1)) : Flapjack.WordAlloc.removeDeadStructural input1076 value584 value1 value2 = (output1076, value588, value1) := by
  rw [input1076_def, output1076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1070]
  try dsimp only
  rw [child1075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1070_skip, output1075_skip]
  kernel_rfl

theorem node1077_cond_eq
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value583 value1 value2 = (output1069, value584, value1))
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value584 value1 value2 = (output1076, value588, value1)) : Flapjack.WordAlloc.removeDeadStructural input1077 value583 value1 value2 = (output1077, value588, value1) := by
  rw [input1077_def, output1077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1069]
  try dsimp only
  rw [child1076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1069_skip, output1076_skip]
  kernel_rfl

theorem node1078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1078 value588 value1 value2 = (output1078, value589, value1) := by
  rw [input1078_def, output1078_def]
  kernel_rfl

theorem node1079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1079 value589 value1 value2 = (output1079, value590, value1) := by
  rw [input1079_def, output1079_def]
  kernel_rfl

theorem node1080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1080 value590 value1 value2 = (output1080, value591, value1) := by
  rw [input1080_def, output1080_def]
  kernel_rfl

theorem node1081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1081 value591 value1 value2 = (output1081, value592, value1) := by
  rw [input1081_def, output1081_def]
  kernel_rfl

theorem node1082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1082 value592 value1 value2 = (output1082, value593, value1) := by
  rw [input1082_def, output1082_def]
  kernel_rfl

theorem node1083_cond_eq
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value591 value1 value2 = (output1081, value592, value1))
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value592 value1 value2 = (output1082, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1083 value591 value1 value2 = (output1083, value593, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1081]
  try dsimp only
  rw [child1082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1081_skip, output1082_skip]
  kernel_rfl

theorem node1084_cond_eq
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value590 value1 value2 = (output1080, value591, value1))
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value591 value1 value2 = (output1083, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1084 value590 value1 value2 = (output1084, value593, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1080]
  try dsimp only
  rw [child1083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1080_skip, output1083_skip]
  kernel_rfl

theorem node1085_cond_eq
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value589 value1 value2 = (output1079, value590, value1))
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value590 value1 value2 = (output1084, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1085 value589 value1 value2 = (output1085, value593, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1079]
  try dsimp only
  rw [child1084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1079_skip, output1084_skip]
  kernel_rfl

theorem node1086_cond_eq
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value588 value1 value2 = (output1078, value589, value1))
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value589 value1 value2 = (output1085, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1086 value588 value1 value2 = (output1086, value593, value1) := by
  rw [input1086_def, output1086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1078]
  try dsimp only
  rw [child1085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1078_skip, output1085_skip]
  kernel_rfl

theorem node1087_cond_eq
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value583 value1 value2 = (output1077, value588, value1))
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value588 value1 value2 = (output1086, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1087 value583 value1 value2 = (output1087, value593, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1077]
  try dsimp only
  rw [child1086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1077_skip, output1086_skip]
  kernel_rfl

theorem node1088_cond_eq
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value578 value1 value2 = (output1068, value583, value1))
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value583 value1 value2 = (output1087, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1088 value578 value1 value2 = (output1088, value593, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1068]
  try dsimp only
  rw [child1087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1068_skip, output1087_skip]
  kernel_rfl

theorem node1089_cond_eq
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value573 value1 value2 = (output1059, value578, value1))
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value578 value1 value2 = (output1088, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1089 value573 value1 value2 = (output1089, value593, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1059]
  try dsimp only
  rw [child1088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1059_skip, output1088_skip]
  kernel_rfl

theorem node1090_cond_eq
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value568 value1 value2 = (output1050, value573, value1))
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value573 value1 value2 = (output1089, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1090 value568 value1 value2 = (output1090, value593, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1050]
  try dsimp only
  rw [child1089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1050_skip, output1089_skip]
  kernel_rfl

theorem node1091_cond_eq
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value563 value1 value2 = (output1041, value568, value1))
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value568 value1 value2 = (output1090, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1091 value563 value1 value2 = (output1091, value593, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1041]
  try dsimp only
  rw [child1090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1041_skip, output1090_skip]
  kernel_rfl

theorem node1092_cond_eq
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value558 value1 value2 = (output1032, value563, value1))
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value563 value1 value2 = (output1091, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1092 value558 value1 value2 = (output1092, value593, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1032]
  try dsimp only
  rw [child1091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1032_skip, output1091_skip]
  kernel_rfl

theorem node1093_cond_eq
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value553 value1 value2 = (output1023, value558, value1))
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value558 value1 value2 = (output1092, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1093 value553 value1 value2 = (output1093, value593, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1023]
  try dsimp only
  rw [child1092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1023_skip, output1092_skip]
  kernel_rfl

theorem node1094_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value548 value1 value2 = (output1014, value553, value1))
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value553 value1 value2 = (output1093, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1094 value548 value1 value2 = (output1094, value593, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  try dsimp only
  rw [child1093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1014_skip, output1093_skip]
  kernel_rfl

theorem node1095_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value543 value1 value2 = (output1005, value548, value1))
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value548 value1 value2 = (output1094, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1095 value543 value1 value2 = (output1095, value593, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  try dsimp only
  rw [child1094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1094_skip]
  kernel_rfl

theorem node1096_cond_eq
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value538 value1 value2 = (output996, value543, value1))
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value543 value1 value2 = (output1095, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1096 value538 value1 value2 = (output1096, value593, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child996]
  try dsimp only
  rw [child1095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output996_skip, output1095_skip]
  kernel_rfl

theorem node1097_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value533 value1 value2 = (output987, value538, value1))
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value538 value1 value2 = (output1096, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1097 value533 value1 value2 = (output1097, value593, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  try dsimp only
  rw [child1096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output1096_skip]
  kernel_rfl

theorem node1098_cond_eq
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value528 value1 value2 = (output978, value533, value1))
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value533 value1 value2 = (output1097, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1098 value528 value1 value2 = (output1098, value593, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child978]
  try dsimp only
  rw [child1097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output978_skip, output1097_skip]
  kernel_rfl

theorem node1099_cond_eq
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value523 value1 value2 = (output969, value528, value1))
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value528 value1 value2 = (output1098, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1099 value523 value1 value2 = (output1099, value593, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child969]
  try dsimp only
  rw [child1098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output969_skip, output1098_skip]
  kernel_rfl

theorem node1100_cond_eq
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value518 value1 value2 = (output960, value523, value1))
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value523 value1 value2 = (output1099, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1100 value518 value1 value2 = (output1100, value593, value1) := by
  rw [input1100_def, output1100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child960]
  try dsimp only
  rw [child1099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output960_skip, output1099_skip]
  kernel_rfl

theorem node1101_cond_eq
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value513 value1 value2 = (output951, value518, value1))
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value518 value1 value2 = (output1100, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1101 value513 value1 value2 = (output1101, value593, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child951]
  try dsimp only
  rw [child1100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output951_skip, output1100_skip]
  kernel_rfl

theorem node1102_cond_eq
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value508 value1 value2 = (output942, value513, value1))
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value513 value1 value2 = (output1101, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1102 value508 value1 value2 = (output1102, value593, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child942]
  try dsimp only
  rw [child1101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output942_skip, output1101_skip]
  kernel_rfl

theorem node1103_cond_eq
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value503 value1 value2 = (output933, value508, value1))
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value508 value1 value2 = (output1102, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1103 value503 value1 value2 = (output1103, value593, value1) := by
  rw [input1103_def, output1103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child933]
  try dsimp only
  rw [child1102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output933_skip, output1102_skip]
  kernel_rfl

theorem node1104_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value502 value1 value2 = (output924, value503, value1))
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value503 value1 value2 = (output1103, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1104 value502 value1 value2 = (output1104, value593, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  try dsimp only
  rw [child1103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output1103_skip]
  kernel_rfl

theorem node1105_cond_eq
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value501 value1 value2 = (output923, value502, value1))
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value502 value1 value2 = (output1104, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1105 value501 value1 value2 = (output1105, value593, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child923]
  try dsimp only
  rw [child1104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output923_skip, output1104_skip]
  kernel_rfl

theorem node1106_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value500 value1 value2 = (output922, value501, value1))
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value501 value1 value2 = (output1105, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1106 value500 value1 value2 = (output1106, value593, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  try dsimp only
  rw [child1105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output1105_skip]
  kernel_rfl

theorem node1107_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value499 value1 value2 = (output921, value500, value1))
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value500 value1 value2 = (output1106, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1107 value499 value1 value2 = (output1107, value593, value1) := by
  rw [input1107_def, output1107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  try dsimp only
  rw [child1106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output1106_skip]
  kernel_rfl

theorem node1108_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value498 value1 value2 = (output920, value499, value1))
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value499 value1 value2 = (output1107, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1108 value498 value1 value2 = (output1108, value593, value1) := by
  rw [input1108_def, output1108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child1107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output1107_skip]
  kernel_rfl

theorem node1109_cond_eq
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value497 value1 value2 = (output919, value498, value1))
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value498 value1 value2 = (output1108, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1109 value497 value1 value2 = (output1109, value593, value1) := by
  rw [input1109_def, output1109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child919]
  try dsimp only
  rw [child1108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output919_skip, output1108_skip]
  kernel_rfl

theorem node1110_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value494 value1 value2 = (output918, value497, value1))
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value497 value1 value2 = (output1109, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1110 value494 value1 value2 = (output1110, value593, value1) := by
  rw [input1110_def, output1110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child1109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output1109_skip]
  kernel_rfl

theorem node1111_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value494 value1 value2 = (output913, value494, value1))
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value494 value1 value2 = (output1110, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1111 value494 value1 value2 = (output1111, value593, value1) := by
  rw [input1111_def, output1111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child1110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output1110_skip]
  kernel_rfl

theorem node1112_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value493 value1 value2 = (output912, value494, value1))
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value494 value1 value2 = (output1111, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1112 value493 value1 value2 = (output1112, value593, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child1111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output1111_skip]
  kernel_rfl

theorem node1113_cond_eq
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value492 value1 value2 = (output911, value493, value1))
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value493 value1 value2 = (output1112, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1113 value492 value1 value2 = (output1113, value593, value1) := by
  rw [input1113_def, output1113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child911]
  try dsimp only
  rw [child1112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output911_skip, output1112_skip]
  kernel_rfl

theorem node1114_cond_eq
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value491 value1 value2 = (output910, value492, value1))
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value492 value1 value2 = (output1113, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1114 value491 value1 value2 = (output1114, value593, value1) := by
  rw [input1114_def, output1114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child910]
  try dsimp only
  rw [child1113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output910_skip, output1113_skip]
  kernel_rfl

theorem node1115_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value490 value1 value2 = (output909, value491, value1))
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value491 value1 value2 = (output1114, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1115 value490 value1 value2 = (output1115, value593, value1) := by
  rw [input1115_def, output1115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  try dsimp only
  rw [child1114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output1114_skip]
  kernel_rfl

theorem node1116_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value489 value1 value2 = (output908, value490, value1))
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value490 value1 value2 = (output1115, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1116 value489 value1 value2 = (output1116, value593, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child1115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output1115_skip]
  kernel_rfl

theorem node1117_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value488 value1 value2 = (output907, value489, value1))
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value489 value1 value2 = (output1116, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1117 value488 value1 value2 = (output1117, value593, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  try dsimp only
  rw [child1116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output907_skip, output1116_skip]
  kernel_rfl

theorem node1118_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value487 value1 value2 = (output906, value488, value1))
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value488 value1 value2 = (output1117, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1118 value487 value1 value2 = (output1118, value593, value1) := by
  rw [input1118_def, output1118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  try dsimp only
  rw [child1117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output906_skip, output1117_skip]
  kernel_rfl

theorem node1119_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value486 value1 value2 = (output905, value487, value1))
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value487 value1 value2 = (output1118, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1119 value486 value1 value2 = (output1119, value593, value1) := by
  rw [input1119_def, output1119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child1118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output1118_skip]
  kernel_rfl

theorem node1120_cond_eq
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value485 value1 value2 = (output904, value486, value1))
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value486 value1 value2 = (output1119, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1120 value485 value1 value2 = (output1120, value593, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child904]
  try dsimp only
  rw [child1119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output904_skip, output1119_skip]
  kernel_rfl

theorem node1121_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value484 value1 value2 = (output903, value485, value1))
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value485 value1 value2 = (output1120, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1121 value484 value1 value2 = (output1121, value593, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child1120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output1120_skip]
  kernel_rfl

theorem node1122_cond_eq
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value483 value1 value2 = (output902, value484, value1))
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value484 value1 value2 = (output1121, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1122 value483 value1 value2 = (output1122, value593, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child902]
  try dsimp only
  rw [child1121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output902_skip, output1121_skip]
  kernel_rfl

theorem node1123_cond_eq
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value482 value1 value2 = (output901, value483, value1))
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value483 value1 value2 = (output1122, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1123 value482 value1 value2 = (output1123, value593, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child901]
  try dsimp only
  rw [child1122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output901_skip, output1122_skip]
  kernel_rfl

theorem node1124_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value479 value1 value2 = (output900, value482, value1))
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value482 value1 value2 = (output1123, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1124 value479 value1 value2 = (output1124, value593, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child1123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output1123_skip]
  kernel_rfl

theorem node1125_cond_eq
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value479 value1 value2 = (output895, value479, value1))
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value479 value1 value2 = (output1124, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1125 value479 value1 value2 = (output1125, value593, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child895]
  try dsimp only
  rw [child1124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output895_skip, output1124_skip]
  kernel_rfl

theorem node1126_cond_eq
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value478 value1 value2 = (output894, value479, value1))
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value479 value1 value2 = (output1125, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1126 value478 value1 value2 = (output1126, value593, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child894]
  try dsimp only
  rw [child1125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output894_skip, output1125_skip]
  kernel_rfl

theorem node1127_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value477 value1 value2 = (output893, value478, value1))
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value478 value1 value2 = (output1126, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1127 value477 value1 value2 = (output1127, value593, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  try dsimp only
  rw [child1126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output893_skip, output1126_skip]
  kernel_rfl

theorem node1128_cond_eq
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value476 value1 value2 = (output892, value477, value1))
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value477 value1 value2 = (output1127, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1128 value476 value1 value2 = (output1128, value593, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child892]
  try dsimp only
  rw [child1127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output892_skip, output1127_skip]
  kernel_rfl

theorem node1129_cond_eq
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value475 value1 value2 = (output891, value476, value1))
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value476 value1 value2 = (output1128, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1129 value475 value1 value2 = (output1129, value593, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child891]
  try dsimp only
  rw [child1128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output891_skip, output1128_skip]
  kernel_rfl

theorem node1130_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value474 value1 value2 = (output890, value475, value1))
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value475 value1 value2 = (output1129, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1130 value474 value1 value2 = (output1130, value593, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child1129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output1129_skip]
  kernel_rfl

theorem node1131_cond_eq
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value473 value1 value2 = (output889, value474, value1))
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value474 value1 value2 = (output1130, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1131 value473 value1 value2 = (output1131, value593, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child889]
  try dsimp only
  rw [child1130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output889_skip, output1130_skip]
  kernel_rfl

theorem node1132_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value470 value1 value2 = (output888, value473, value1))
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value473 value1 value2 = (output1131, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1132 value470 value1 value2 = (output1132, value593, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child1131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output1131_skip]
  kernel_rfl

theorem node1133_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value470 value1 value2 = (output883, value470, value1))
    (child1132 : Flapjack.WordAlloc.removeDeadStructural input1132 value470 value1 value2 = (output1132, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1133 value470 value1 value2 = (output1133, value593, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child1132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output1132_skip]
  kernel_rfl

theorem node1134_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value469 value1 value2 = (output882, value470, value1))
    (child1133 : Flapjack.WordAlloc.removeDeadStructural input1133 value470 value1 value2 = (output1133, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1134 value469 value1 value2 = (output1134, value593, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child1133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output1133_skip]
  kernel_rfl

theorem node1135_cond_eq
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value468 value1 value2 = (output881, value469, value1))
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value469 value1 value2 = (output1134, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1135 value468 value1 value2 = (output1135, value593, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child881]
  try dsimp only
  rw [child1134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output881_skip, output1134_skip]
  kernel_rfl

theorem node1136_cond_eq
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value467 value1 value2 = (output880, value468, value1))
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value468 value1 value2 = (output1135, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1136 value467 value1 value2 = (output1136, value593, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child880]
  try dsimp only
  rw [child1135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output880_skip, output1135_skip]
  kernel_rfl

theorem node1137_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value466 value1 value2 = (output879, value467, value1))
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value467 value1 value2 = (output1136, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1137 value466 value1 value2 = (output1137, value593, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  try dsimp only
  rw [child1136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output1136_skip]
  kernel_rfl

theorem node1138_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value465 value1 value2 = (output878, value466, value1))
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value466 value1 value2 = (output1137, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1138 value465 value1 value2 = (output1138, value593, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child1137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output1137_skip]
  kernel_rfl

theorem node1139_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value464 value1 value2 = (output877, value465, value1))
    (child1138 : Flapjack.WordAlloc.removeDeadStructural input1138 value465 value1 value2 = (output1138, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1139 value464 value1 value2 = (output1139, value593, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  try dsimp only
  rw [child1138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output1138_skip]
  kernel_rfl

theorem node1140_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value463 value1 value2 = (output876, value464, value1))
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value464 value1 value2 = (output1139, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1140 value463 value1 value2 = (output1140, value593, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child1139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output1139_skip]
  kernel_rfl

theorem node1141_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value462 value1 value2 = (output875, value463, value1))
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value463 value1 value2 = (output1140, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1141 value462 value1 value2 = (output1141, value593, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child1140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output1140_skip]
  kernel_rfl

theorem node1142_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value461 value1 value2 = (output874, value462, value1))
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value462 value1 value2 = (output1141, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1142 value461 value1 value2 = (output1142, value593, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child1141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output1141_skip]
  kernel_rfl

theorem node1143_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value460 value1 value2 = (output873, value461, value1))
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value461 value1 value2 = (output1142, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1143 value460 value1 value2 = (output1143, value593, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  try dsimp only
  rw [child1142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output1142_skip]
  kernel_rfl

theorem node1144_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value459 value1 value2 = (output872, value460, value1))
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value460 value1 value2 = (output1143, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1144 value459 value1 value2 = (output1144, value593, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child1143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output1143_skip]
  kernel_rfl

theorem node1145_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value458 value1 value2 = (output871, value459, value1))
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value459 value1 value2 = (output1144, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1145 value458 value1 value2 = (output1145, value593, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  try dsimp only
  rw [child1144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output871_skip, output1144_skip]
  kernel_rfl

theorem node1146_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value455 value1 value2 = (output870, value458, value1))
    (child1145 : Flapjack.WordAlloc.removeDeadStructural input1145 value458 value1 value2 = (output1145, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1146 value455 value1 value2 = (output1146, value593, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  try dsimp only
  rw [child1145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output870_skip, output1145_skip]
  kernel_rfl

theorem node1147_cond_eq
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value455 value1 value2 = (output865, value455, value1))
    (child1146 : Flapjack.WordAlloc.removeDeadStructural input1146 value455 value1 value2 = (output1146, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1147 value455 value1 value2 = (output1147, value593, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child865]
  try dsimp only
  rw [child1146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output865_skip, output1146_skip]
  kernel_rfl

theorem node1148_cond_eq
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value454 value1 value2 = (output864, value455, value1))
    (child1147 : Flapjack.WordAlloc.removeDeadStructural input1147 value455 value1 value2 = (output1147, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1148 value454 value1 value2 = (output1148, value593, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child864]
  try dsimp only
  rw [child1147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output864_skip, output1147_skip]
  kernel_rfl

theorem node1149_cond_eq
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value453 value1 value2 = (output863, value454, value1))
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value454 value1 value2 = (output1148, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1149 value453 value1 value2 = (output1149, value593, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child863]
  try dsimp only
  rw [child1148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output863_skip, output1148_skip]
  kernel_rfl

theorem node1150_cond_eq
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value452 value1 value2 = (output862, value453, value1))
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value453 value1 value2 = (output1149, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1150 value452 value1 value2 = (output1150, value593, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child862]
  try dsimp only
  rw [child1149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output862_skip, output1149_skip]
  kernel_rfl

theorem node1151_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value451 value1 value2 = (output861, value452, value1))
    (child1150 : Flapjack.WordAlloc.removeDeadStructural input1150 value452 value1 value2 = (output1150, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1151 value451 value1 value2 = (output1151, value593, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  try dsimp only
  rw [child1150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output1150_skip]
  kernel_rfl

theorem node1152_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value450 value1 value2 = (output860, value451, value1))
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value451 value1 value2 = (output1151, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1152 value450 value1 value2 = (output1152, value593, value1) := by
  rw [input1152_def, output1152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  try dsimp only
  rw [child1151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output1151_skip]
  kernel_rfl

theorem node1153_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value449 value1 value2 = (output859, value450, value1))
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value450 value1 value2 = (output1152, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1153 value449 value1 value2 = (output1153, value593, value1) := by
  rw [input1153_def, output1153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  try dsimp only
  rw [child1152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output1152_skip]
  kernel_rfl

theorem node1154_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value448 value1 value2 = (output858, value449, value1))
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value449 value1 value2 = (output1153, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1154 value448 value1 value2 = (output1154, value593, value1) := by
  rw [input1154_def, output1154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child1153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output1153_skip]
  kernel_rfl

theorem node1155_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value447 value1 value2 = (output857, value448, value1))
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value448 value1 value2 = (output1154, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1155 value447 value1 value2 = (output1155, value593, value1) := by
  rw [input1155_def, output1155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  try dsimp only
  rw [child1154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output1154_skip]
  kernel_rfl

theorem node1156_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value446 value1 value2 = (output856, value447, value1))
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value447 value1 value2 = (output1155, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1156 value446 value1 value2 = (output1156, value593, value1) := by
  rw [input1156_def, output1156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child1155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output1155_skip]
  kernel_rfl

theorem node1157_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value445 value1 value2 = (output855, value446, value1))
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value446 value1 value2 = (output1156, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1157 value445 value1 value2 = (output1157, value593, value1) := by
  rw [input1157_def, output1157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  try dsimp only
  rw [child1156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output1156_skip]
  kernel_rfl

theorem node1158_cond_eq
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value444 value1 value2 = (output854, value445, value1))
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value445 value1 value2 = (output1157, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1158 value444 value1 value2 = (output1158, value593, value1) := by
  rw [input1158_def, output1158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child854]
  try dsimp only
  rw [child1157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output854_skip, output1157_skip]
  kernel_rfl

theorem node1159_cond_eq
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value443 value1 value2 = (output853, value444, value1))
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value444 value1 value2 = (output1158, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1159 value443 value1 value2 = (output1159, value593, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child853]
  try dsimp only
  rw [child1158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output853_skip, output1158_skip]
  kernel_rfl

theorem node1160_cond_eq
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value440 value1 value2 = (output852, value443, value1))
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value443 value1 value2 = (output1159, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1160 value440 value1 value2 = (output1160, value593, value1) := by
  rw [input1160_def, output1160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child852]
  try dsimp only
  rw [child1159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output852_skip, output1159_skip]
  kernel_rfl

theorem node1161_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value440 value1 value2 = (output847, value440, value1))
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value440 value1 value2 = (output1160, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1161 value440 value1 value2 = (output1161, value593, value1) := by
  rw [input1161_def, output1161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  try dsimp only
  rw [child1160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output847_skip, output1160_skip]
  kernel_rfl

theorem node1162_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value439 value1 value2 = (output846, value440, value1))
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value440 value1 value2 = (output1161, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1162 value439 value1 value2 = (output1162, value593, value1) := by
  rw [input1162_def, output1162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  try dsimp only
  rw [child1161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output1161_skip]
  kernel_rfl

theorem node1163_cond_eq
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value438 value1 value2 = (output845, value439, value1))
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value439 value1 value2 = (output1162, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1163 value438 value1 value2 = (output1163, value593, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child845]
  try dsimp only
  rw [child1162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output845_skip, output1162_skip]
  kernel_rfl

theorem node1164_cond_eq
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value437 value1 value2 = (output844, value438, value1))
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value438 value1 value2 = (output1163, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1164 value437 value1 value2 = (output1164, value593, value1) := by
  rw [input1164_def, output1164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child844]
  try dsimp only
  rw [child1163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output844_skip, output1163_skip]
  kernel_rfl

theorem node1165_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value436 value1 value2 = (output843, value437, value1))
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value437 value1 value2 = (output1164, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1165 value436 value1 value2 = (output1165, value593, value1) := by
  rw [input1165_def, output1165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  try dsimp only
  rw [child1164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output1164_skip]
  kernel_rfl

theorem node1166_cond_eq
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value435 value1 value2 = (output842, value436, value1))
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value436 value1 value2 = (output1165, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1166 value435 value1 value2 = (output1166, value593, value1) := by
  rw [input1166_def, output1166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child842]
  try dsimp only
  rw [child1165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output842_skip, output1165_skip]
  kernel_rfl

theorem node1167_cond_eq
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value434 value1 value2 = (output841, value435, value1))
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value435 value1 value2 = (output1166, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1167 value434 value1 value2 = (output1167, value593, value1) := by
  rw [input1167_def, output1167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child841]
  try dsimp only
  rw [child1166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output841_skip, output1166_skip]
  kernel_rfl

theorem node1168_cond_eq
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value431 value1 value2 = (output840, value434, value1))
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value434 value1 value2 = (output1167, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1168 value431 value1 value2 = (output1168, value593, value1) := by
  rw [input1168_def, output1168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child840]
  try dsimp only
  rw [child1167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output840_skip, output1167_skip]
  kernel_rfl

theorem node1169_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value431 value1 value2 = (output835, value431, value1))
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value431 value1 value2 = (output1168, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1169 value431 value1 value2 = (output1169, value593, value1) := by
  rw [input1169_def, output1169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child835]
  try dsimp only
  rw [child1168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output835_skip, output1168_skip]
  kernel_rfl

theorem node1170_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value431 value1 value2 = (output834, value431, value1))
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value431 value1 value2 = (output1169, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1170 value431 value1 value2 = (output1170, value593, value1) := by
  rw [input1170_def, output1170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  try dsimp only
  rw [child1169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output834_skip, output1169_skip]
  kernel_rfl

theorem node1171_cond_eq
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value431 value1 value2 = (output833, value431, value1))
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value431 value1 value2 = (output1170, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1171 value431 value1 value2 = (output1171, value593, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child833]
  try dsimp only
  rw [child1170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output833_skip, output1170_skip]
  kernel_rfl

theorem node1172_cond_eq
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value431 value1 value2 = (output832, value431, value1))
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value431 value1 value2 = (output1171, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1172 value431 value1 value2 = (output1172, value593, value1) := by
  rw [input1172_def, output1172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child832]
  try dsimp only
  rw [child1171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output832_skip, output1171_skip]
  kernel_rfl

theorem node1173_cond_eq
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value431 value1 value2 = (output831, value431, value1))
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value431 value1 value2 = (output1172, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1173 value431 value1 value2 = (output1173, value593, value1) := by
  rw [input1173_def, output1173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child831]
  try dsimp only
  rw [child1172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output831_skip, output1172_skip]
  kernel_rfl

theorem node1174_cond_eq
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value431 value1 value2 = (output830, value431, value1))
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value431 value1 value2 = (output1173, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1174 value431 value1 value2 = (output1174, value593, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child830]
  try dsimp only
  rw [child1173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output830_skip, output1173_skip]
  kernel_rfl

theorem node1175_cond_eq
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value431 value1 value2 = (output829, value431, value1))
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value431 value1 value2 = (output1174, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1175 value431 value1 value2 = (output1175, value593, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child829]
  try dsimp only
  rw [child1174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output829_skip, output1174_skip]
  kernel_rfl

theorem node1176_cond_eq
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value430 value1 value2 = (output828, value431, value1))
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value431 value1 value2 = (output1175, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1176 value430 value1 value2 = (output1176, value593, value1) := by
  rw [input1176_def, output1176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child828]
  try dsimp only
  rw [child1175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output828_skip, output1175_skip]
  kernel_rfl

theorem node1177_cond_eq
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value429 value1 value2 = (output827, value430, value1))
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value430 value1 value2 = (output1176, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1177 value429 value1 value2 = (output1177, value593, value1) := by
  rw [input1177_def, output1177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child827]
  try dsimp only
  rw [child1176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output827_skip, output1176_skip]
  kernel_rfl

theorem node1178_cond_eq
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value428 value1 value2 = (output826, value429, value1))
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value429 value1 value2 = (output1177, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1178 value428 value1 value2 = (output1178, value593, value1) := by
  rw [input1178_def, output1178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child826]
  try dsimp only
  rw [child1177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output826_skip, output1177_skip]
  kernel_rfl

theorem node1179_cond_eq
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value427 value1 value2 = (output825, value428, value1))
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value428 value1 value2 = (output1178, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1179 value427 value1 value2 = (output1179, value593, value1) := by
  rw [input1179_def, output1179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child825]
  try dsimp only
  rw [child1178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output825_skip, output1178_skip]
  kernel_rfl

theorem node1180_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value426 value1 value2 = (output824, value427, value1))
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value427 value1 value2 = (output1179, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1180 value426 value1 value2 = (output1180, value593, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child1179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output1179_skip]
  kernel_rfl

theorem node1181_cond_eq
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value425 value1 value2 = (output823, value426, value1))
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value426 value1 value2 = (output1180, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1181 value425 value1 value2 = (output1181, value593, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child823]
  try dsimp only
  rw [child1180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output823_skip, output1180_skip]
  kernel_rfl

theorem node1182_cond_eq
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value425 value1 value2 = (output822, value425, value1))
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value425 value1 value2 = (output1181, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1182 value425 value1 value2 = (output1182, value593, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child822]
  try dsimp only
  rw [child1181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output822_skip, output1181_skip]
  kernel_rfl

theorem node1183_cond_eq
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value425 value1 value2 = (output821, value425, value1))
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value425 value1 value2 = (output1182, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1183 value425 value1 value2 = (output1183, value593, value1) := by
  rw [input1183_def, output1183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child821]
  try dsimp only
  rw [child1182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output821_skip, output1182_skip]
  kernel_rfl

theorem node1184_cond_eq
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value425 value1 value2 = (output820, value425, value1))
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value425 value1 value2 = (output1183, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1184 value425 value1 value2 = (output1184, value593, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child820]
  try dsimp only
  rw [child1183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output820_skip, output1183_skip]
  kernel_rfl

theorem node1185_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value425 value1 value2 = (output819, value425, value1))
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value425 value1 value2 = (output1184, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1185 value425 value1 value2 = (output1185, value593, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  try dsimp only
  rw [child1184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output1184_skip]
  kernel_rfl

theorem node1186_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value425 value1 value2 = (output818, value425, value1))
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value425 value1 value2 = (output1185, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1186 value425 value1 value2 = (output1186, value593, value1) := by
  rw [input1186_def, output1186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child1185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output1185_skip]
  kernel_rfl

theorem node1187_cond_eq
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value425 value1 value2 = (output817, value425, value1))
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value425 value1 value2 = (output1186, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1187 value425 value1 value2 = (output1187, value593, value1) := by
  rw [input1187_def, output1187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child817]
  try dsimp only
  rw [child1186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output817_skip, output1186_skip]
  kernel_rfl

theorem node1188_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value424 value1 value2 = (output816, value425, value1))
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value425 value1 value2 = (output1187, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1188 value424 value1 value2 = (output1188, value593, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child1187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output1187_skip]
  kernel_rfl

theorem node1189_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value423 value1 value2 = (output815, value424, value1))
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value424 value1 value2 = (output1188, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1189 value423 value1 value2 = (output1189, value593, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child1188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output1188_skip]
  kernel_rfl

theorem node1190_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value422 value1 value2 = (output814, value423, value1))
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value423 value1 value2 = (output1189, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1190 value422 value1 value2 = (output1190, value593, value1) := by
  rw [input1190_def, output1190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  try dsimp only
  rw [child1189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output1189_skip]
  kernel_rfl

theorem node1191_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value421 value1 value2 = (output813, value422, value1))
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value422 value1 value2 = (output1190, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1191 value421 value1 value2 = (output1191, value593, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child1190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output1190_skip]
  kernel_rfl

theorem node1192_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value420 value1 value2 = (output812, value421, value1))
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value421 value1 value2 = (output1191, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1192 value420 value1 value2 = (output1192, value593, value1) := by
  rw [input1192_def, output1192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  try dsimp only
  rw [child1191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output1191_skip]
  kernel_rfl

theorem node1193_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value419 value1 value2 = (output811, value420, value1))
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value420 value1 value2 = (output1192, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1193 value419 value1 value2 = (output1193, value593, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child1192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output1192_skip]
  kernel_rfl

theorem node1194_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value416 value1 value2 = (output810, value419, value1))
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value419 value1 value2 = (output1193, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1194 value416 value1 value2 = (output1194, value593, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child1193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output1193_skip]
  kernel_rfl

theorem node1195_cond_eq
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value416 value1 value2 = (output805, value416, value1))
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value416 value1 value2 = (output1194, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1195 value416 value1 value2 = (output1195, value593, value1) := by
  rw [input1195_def, output1195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child805]
  try dsimp only
  rw [child1194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output805_skip, output1194_skip]
  kernel_rfl

theorem node1196_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value415 value1 value2 = (output804, value416, value1))
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value416 value1 value2 = (output1195, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1196 value415 value1 value2 = (output1196, value593, value1) := by
  rw [input1196_def, output1196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child1195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output1195_skip]
  kernel_rfl

theorem node1197_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value414 value1 value2 = (output803, value415, value1))
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value415 value1 value2 = (output1196, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1197 value414 value1 value2 = (output1197, value593, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child1196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output1196_skip]
  kernel_rfl

theorem node1198_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value413 value1 value2 = (output802, value414, value1))
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value414 value1 value2 = (output1197, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1198 value413 value1 value2 = (output1198, value593, value1) := by
  rw [input1198_def, output1198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child1197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output1197_skip]
  kernel_rfl

theorem node1199_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value412 value1 value2 = (output801, value413, value1))
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value413 value1 value2 = (output1198, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1199 value412 value1 value2 = (output1199, value593, value1) := by
  rw [input1199_def, output1199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child1198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output1198_skip]
  kernel_rfl

theorem node1200_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value411 value1 value2 = (output800, value412, value1))
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value412 value1 value2 = (output1199, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1200 value411 value1 value2 = (output1200, value593, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  try dsimp only
  rw [child1199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output1199_skip]
  kernel_rfl

theorem node1201_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value410 value1 value2 = (output799, value411, value1))
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value411 value1 value2 = (output1200, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1201 value410 value1 value2 = (output1201, value593, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  try dsimp only
  rw [child1200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output799_skip, output1200_skip]
  kernel_rfl

theorem node1202_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value409 value1 value2 = (output798, value410, value1))
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value410 value1 value2 = (output1201, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1202 value409 value1 value2 = (output1202, value593, value1) := by
  rw [input1202_def, output1202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child1201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output1201_skip]
  kernel_rfl

theorem node1203_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value408 value1 value2 = (output797, value409, value1))
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value409 value1 value2 = (output1202, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1203 value408 value1 value2 = (output1203, value593, value1) := by
  rw [input1203_def, output1203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  try dsimp only
  rw [child1202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output1202_skip]
  kernel_rfl

theorem node1204_cond_eq
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value407 value1 value2 = (output796, value408, value1))
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value408 value1 value2 = (output1203, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1204 value407 value1 value2 = (output1204, value593, value1) := by
  rw [input1204_def, output1204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child796]
  try dsimp only
  rw [child1203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output796_skip, output1203_skip]
  kernel_rfl

theorem node1205_cond_eq
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value406 value1 value2 = (output795, value407, value1))
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value407 value1 value2 = (output1204, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1205 value406 value1 value2 = (output1205, value593, value1) := by
  rw [input1205_def, output1205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child795]
  try dsimp only
  rw [child1204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output795_skip, output1204_skip]
  kernel_rfl

theorem node1206_cond_eq
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value405 value1 value2 = (output794, value406, value1))
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value406 value1 value2 = (output1205, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1206 value405 value1 value2 = (output1206, value593, value1) := by
  rw [input1206_def, output1206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child794]
  try dsimp only
  rw [child1205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output794_skip, output1205_skip]
  kernel_rfl

theorem node1207_cond_eq
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value404 value1 value2 = (output793, value405, value1))
    (child1206 : Flapjack.WordAlloc.removeDeadStructural input1206 value405 value1 value2 = (output1206, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1207 value404 value1 value2 = (output1207, value593, value1) := by
  rw [input1207_def, output1207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child793]
  try dsimp only
  rw [child1206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output793_skip, output1206_skip]
  kernel_rfl

theorem node1208_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value401 value1 value2 = (output792, value404, value1))
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value404 value1 value2 = (output1207, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1208 value401 value1 value2 = (output1208, value593, value1) := by
  rw [input1208_def, output1208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child1207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output1207_skip]
  kernel_rfl

theorem node1209_cond_eq
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value401 value1 value2 = (output787, value401, value1))
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value401 value1 value2 = (output1208, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1209 value401 value1 value2 = (output1209, value593, value1) := by
  rw [input1209_def, output1209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child787]
  try dsimp only
  rw [child1208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output787_skip, output1208_skip]
  kernel_rfl

theorem node1210_cond_eq
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value400 value1 value2 = (output786, value401, value1))
    (child1209 : Flapjack.WordAlloc.removeDeadStructural input1209 value401 value1 value2 = (output1209, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1210 value400 value1 value2 = (output1210, value593, value1) := by
  rw [input1210_def, output1210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child786]
  try dsimp only
  rw [child1209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output786_skip, output1209_skip]
  kernel_rfl

theorem node1211_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value399 value1 value2 = (output785, value400, value1))
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value400 value1 value2 = (output1210, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1211 value399 value1 value2 = (output1211, value593, value1) := by
  rw [input1211_def, output1211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  try dsimp only
  rw [child1210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output785_skip, output1210_skip]
  kernel_rfl

theorem node1212_cond_eq
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value398 value1 value2 = (output784, value399, value1))
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value399 value1 value2 = (output1211, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1212 value398 value1 value2 = (output1212, value593, value1) := by
  rw [input1212_def, output1212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child784]
  try dsimp only
  rw [child1211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output784_skip, output1211_skip]
  kernel_rfl

theorem node1213_cond_eq
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value397 value1 value2 = (output783, value398, value1))
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value398 value1 value2 = (output1212, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1213 value397 value1 value2 = (output1213, value593, value1) := by
  rw [input1213_def, output1213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child783]
  try dsimp only
  rw [child1212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output783_skip, output1212_skip]
  kernel_rfl

theorem node1214_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value396 value1 value2 = (output782, value397, value1))
    (child1213 : Flapjack.WordAlloc.removeDeadStructural input1213 value397 value1 value2 = (output1213, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1214 value396 value1 value2 = (output1214, value593, value1) := by
  rw [input1214_def, output1214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child1213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output1213_skip]
  kernel_rfl

theorem node1215_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value395 value1 value2 = (output781, value396, value1))
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value396 value1 value2 = (output1214, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1215 value395 value1 value2 = (output1215, value593, value1) := by
  rw [input1215_def, output1215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child1214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output1214_skip]
  kernel_rfl

theorem node1216_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value392 value1 value2 = (output780, value395, value1))
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value395 value1 value2 = (output1215, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1216 value392 value1 value2 = (output1216, value593, value1) := by
  rw [input1216_def, output1216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child780]
  try dsimp only
  rw [child1215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output1215_skip]
  kernel_rfl

theorem node1217_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value392 value1 value2 = (output775, value392, value1))
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value392 value1 value2 = (output1216, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1217 value392 value1 value2 = (output1217, value593, value1) := by
  rw [input1217_def, output1217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child1216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output1216_skip]
  kernel_rfl

theorem node1218_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value391 value1 value2 = (output774, value392, value1))
    (child1217 : Flapjack.WordAlloc.removeDeadStructural input1217 value392 value1 value2 = (output1217, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1218 value391 value1 value2 = (output1218, value593, value1) := by
  rw [input1218_def, output1218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child1217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output1217_skip]
  kernel_rfl

theorem node1219_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value390 value1 value2 = (output773, value391, value1))
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value391 value1 value2 = (output1218, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1219 value390 value1 value2 = (output1219, value593, value1) := by
  rw [input1219_def, output1219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child1218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output1218_skip]
  kernel_rfl

theorem node1220_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value371 value1 value2 = (output772, value390, value1))
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value390 value1 value2 = (output1219, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1220 value371 value1 value2 = (output1220, value593, value1) := by
  rw [input1220_def, output1220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child772]
  try dsimp only
  rw [child1219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output1219_skip]
  kernel_rfl

theorem node1221_cond_eq
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value371 value1 value2 = (output681, value371, value1))
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value371 value1 value2 = (output1220, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1221 value371 value1 value2 = (output1221, value593, value1) := by
  rw [input1221_def, output1221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child681]
  try dsimp only
  rw [child1220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output681_skip, output1220_skip]
  kernel_rfl

theorem node1222_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value370 value1 value2 = (output680, value371, value1))
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value371 value1 value2 = (output1221, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1222 value370 value1 value2 = (output1222, value593, value1) := by
  rw [input1222_def, output1222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child1221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output1221_skip]
  kernel_rfl

theorem node1223_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value369 value1 value2 = (output679, value370, value1))
    (child1222 : Flapjack.WordAlloc.removeDeadStructural input1222 value370 value1 value2 = (output1222, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1223 value369 value1 value2 = (output1223, value593, value1) := by
  rw [input1223_def, output1223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child1222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output679_skip, output1222_skip]
  kernel_rfl

theorem node1224_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value368 value1 value2 = (output678, value369, value1))
    (child1223 : Flapjack.WordAlloc.removeDeadStructural input1223 value369 value1 value2 = (output1223, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1224 value368 value1 value2 = (output1224, value593, value1) := by
  rw [input1224_def, output1224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  try dsimp only
  rw [child1223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output678_skip, output1223_skip]
  kernel_rfl

theorem node1225_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value367 value1 value2 = (output677, value368, value1))
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value368 value1 value2 = (output1224, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1225 value367 value1 value2 = (output1225, value593, value1) := by
  rw [input1225_def, output1225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  try dsimp only
  rw [child1224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output677_skip, output1224_skip]
  kernel_rfl

theorem node1226_cond_eq
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value366 value1 value2 = (output676, value367, value1))
    (child1225 : Flapjack.WordAlloc.removeDeadStructural input1225 value367 value1 value2 = (output1225, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1226 value366 value1 value2 = (output1226, value593, value1) := by
  rw [input1226_def, output1226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child676]
  try dsimp only
  rw [child1225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output676_skip, output1225_skip]
  kernel_rfl

theorem node1227_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value365 value1 value2 = (output675, value366, value1))
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value366 value1 value2 = (output1226, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1227 value365 value1 value2 = (output1227, value593, value1) := by
  rw [input1227_def, output1227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  try dsimp only
  rw [child1226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output1226_skip]
  kernel_rfl

theorem node1228_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value362 value1 value2 = (output674, value365, value1))
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value365 value1 value2 = (output1227, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1228 value362 value1 value2 = (output1228, value593, value1) := by
  rw [input1228_def, output1228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child1227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output1227_skip]
  kernel_rfl

theorem node1229_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value362 value1 value2 = (output669, value362, value1))
    (child1228 : Flapjack.WordAlloc.removeDeadStructural input1228 value362 value1 value2 = (output1228, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1229 value362 value1 value2 = (output1229, value593, value1) := by
  rw [input1229_def, output1229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child1228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output1228_skip]
  kernel_rfl

theorem node1230_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value361 value1 value2 = (output668, value362, value1))
    (child1229 : Flapjack.WordAlloc.removeDeadStructural input1229 value362 value1 value2 = (output1229, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1230 value361 value1 value2 = (output1230, value593, value1) := by
  rw [input1230_def, output1230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child1229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output1229_skip]
  kernel_rfl

theorem node1231_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value360 value1 value2 = (output667, value361, value1))
    (child1230 : Flapjack.WordAlloc.removeDeadStructural input1230 value361 value1 value2 = (output1230, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1231 value360 value1 value2 = (output1231, value593, value1) := by
  rw [input1231_def, output1231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child1230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output1230_skip]
  kernel_rfl

theorem node1232_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value359 value1 value2 = (output666, value360, value1))
    (child1231 : Flapjack.WordAlloc.removeDeadStructural input1231 value360 value1 value2 = (output1231, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1232 value359 value1 value2 = (output1232, value593, value1) := by
  rw [input1232_def, output1232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child1231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output1231_skip]
  kernel_rfl

theorem node1233_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value358 value1 value2 = (output665, value359, value1))
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value359 value1 value2 = (output1232, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1233 value358 value1 value2 = (output1233, value593, value1) := by
  rw [input1233_def, output1233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child1232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output1232_skip]
  kernel_rfl

theorem node1234_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value357 value1 value2 = (output664, value358, value1))
    (child1233 : Flapjack.WordAlloc.removeDeadStructural input1233 value358 value1 value2 = (output1233, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1234 value357 value1 value2 = (output1234, value593, value1) := by
  rw [input1234_def, output1234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child1233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output1233_skip]
  kernel_rfl

theorem node1235_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value356 value1 value2 = (output663, value357, value1))
    (child1234 : Flapjack.WordAlloc.removeDeadStructural input1234 value357 value1 value2 = (output1234, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1235 value356 value1 value2 = (output1235, value593, value1) := by
  rw [input1235_def, output1235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child1234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output1234_skip]
  kernel_rfl

theorem node1236_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value355 value1 value2 = (output662, value356, value1))
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value356 value1 value2 = (output1235, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1236 value355 value1 value2 = (output1236, value593, value1) := by
  rw [input1236_def, output1236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child1235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output1235_skip]
  kernel_rfl

theorem node1237_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value354 value1 value2 = (output661, value355, value1))
    (child1236 : Flapjack.WordAlloc.removeDeadStructural input1236 value355 value1 value2 = (output1236, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1237 value354 value1 value2 = (output1237, value593, value1) := by
  rw [input1237_def, output1237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child1236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output661_skip, output1236_skip]
  kernel_rfl

theorem node1238_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value353 value1 value2 = (output660, value354, value1))
    (child1237 : Flapjack.WordAlloc.removeDeadStructural input1237 value354 value1 value2 = (output1237, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1238 value353 value1 value2 = (output1238, value593, value1) := by
  rw [input1238_def, output1238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child1237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output1237_skip]
  kernel_rfl

theorem node1239_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value352 value1 value2 = (output659, value353, value1))
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value353 value1 value2 = (output1238, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1239 value352 value1 value2 = (output1239, value593, value1) := by
  rw [input1239_def, output1239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child1238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output1238_skip]
  kernel_rfl

theorem node1240_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value351 value1 value2 = (output658, value352, value1))
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value352 value1 value2 = (output1239, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1240 value351 value1 value2 = (output1240, value593, value1) := by
  rw [input1240_def, output1240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child1239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output1239_skip]
  kernel_rfl

theorem node1241_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value350 value1 value2 = (output657, value351, value1))
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value351 value1 value2 = (output1240, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1241 value350 value1 value2 = (output1241, value593, value1) := by
  rw [input1241_def, output1241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child1240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output1240_skip]
  kernel_rfl

theorem node1242_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value347 value1 value2 = (output656, value350, value1))
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value350 value1 value2 = (output1241, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1242 value347 value1 value2 = (output1242, value593, value1) := by
  rw [input1242_def, output1242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child1241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output1241_skip]
  kernel_rfl

theorem node1243_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value347 value1 value2 = (output651, value347, value1))
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value347 value1 value2 = (output1242, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1243 value347 value1 value2 = (output1243, value593, value1) := by
  rw [input1243_def, output1243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child1242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output1242_skip]
  kernel_rfl

theorem node1244_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value346 value1 value2 = (output650, value347, value1))
    (child1243 : Flapjack.WordAlloc.removeDeadStructural input1243 value347 value1 value2 = (output1243, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1244 value346 value1 value2 = (output1244, value593, value1) := by
  rw [input1244_def, output1244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child1243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output1243_skip]
  kernel_rfl

theorem node1245_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value345 value1 value2 = (output649, value346, value1))
    (child1244 : Flapjack.WordAlloc.removeDeadStructural input1244 value346 value1 value2 = (output1244, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1245 value345 value1 value2 = (output1245, value593, value1) := by
  rw [input1245_def, output1245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child1244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output1244_skip]
  kernel_rfl

theorem node1246_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value344 value1 value2 = (output648, value345, value1))
    (child1245 : Flapjack.WordAlloc.removeDeadStructural input1245 value345 value1 value2 = (output1245, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1246 value344 value1 value2 = (output1246, value593, value1) := by
  rw [input1246_def, output1246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child1245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output1245_skip]
  kernel_rfl

theorem node1247_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value343 value1 value2 = (output647, value344, value1))
    (child1246 : Flapjack.WordAlloc.removeDeadStructural input1246 value344 value1 value2 = (output1246, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1247 value343 value1 value2 = (output1247, value593, value1) := by
  rw [input1247_def, output1247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child1246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output1246_skip]
  kernel_rfl

theorem node1248_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value342 value1 value2 = (output646, value343, value1))
    (child1247 : Flapjack.WordAlloc.removeDeadStructural input1247 value343 value1 value2 = (output1247, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1248 value342 value1 value2 = (output1248, value593, value1) := by
  rw [input1248_def, output1248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child1247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output1247_skip]
  kernel_rfl

theorem node1249_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value341 value1 value2 = (output645, value342, value1))
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value342 value1 value2 = (output1248, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1249 value341 value1 value2 = (output1249, value593, value1) := by
  rw [input1249_def, output1249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child1248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output1248_skip]
  kernel_rfl

theorem node1250_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value338 value1 value2 = (output644, value341, value1))
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value341 value1 value2 = (output1249, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1250 value338 value1 value2 = (output1250, value593, value1) := by
  rw [input1250_def, output1250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  try dsimp only
  rw [child1249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output1249_skip]
  kernel_rfl

theorem node1251_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value338 value1 value2 = (output639, value338, value1))
    (child1250 : Flapjack.WordAlloc.removeDeadStructural input1250 value338 value1 value2 = (output1250, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1251 value338 value1 value2 = (output1251, value593, value1) := by
  rw [input1251_def, output1251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child1250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output1250_skip]
  kernel_rfl

theorem node1252_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value337 value1 value2 = (output638, value338, value1))
    (child1251 : Flapjack.WordAlloc.removeDeadStructural input1251 value338 value1 value2 = (output1251, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1252 value337 value1 value2 = (output1252, value593, value1) := by
  rw [input1252_def, output1252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child1251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output1251_skip]
  kernel_rfl

theorem node1253_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value336 value1 value2 = (output637, value337, value1))
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value337 value1 value2 = (output1252, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1253 value336 value1 value2 = (output1253, value593, value1) := by
  rw [input1253_def, output1253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child1252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output1252_skip]
  kernel_rfl

theorem node1254_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value335 value1 value2 = (output636, value336, value1))
    (child1253 : Flapjack.WordAlloc.removeDeadStructural input1253 value336 value1 value2 = (output1253, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1254 value335 value1 value2 = (output1254, value593, value1) := by
  rw [input1254_def, output1254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child1253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output1253_skip]
  kernel_rfl

theorem node1255_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value334 value1 value2 = (output635, value335, value1))
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value335 value1 value2 = (output1254, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1255 value334 value1 value2 = (output1255, value593, value1) := by
  rw [input1255_def, output1255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child1254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output1254_skip]
  kernel_rfl

theorem node1256_cond_eq
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value333 value1 value2 = (output634, value334, value1))
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value334 value1 value2 = (output1255, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1256 value333 value1 value2 = (output1256, value593, value1) := by
  rw [input1256_def, output1256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child634]
  try dsimp only
  rw [child1255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output634_skip, output1255_skip]
  kernel_rfl

theorem node1257_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value332 value1 value2 = (output633, value333, value1))
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value333 value1 value2 = (output1256, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1257 value332 value1 value2 = (output1257, value593, value1) := by
  rw [input1257_def, output1257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child1256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output1256_skip]
  kernel_rfl

theorem node1258_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value331 value1 value2 = (output632, value332, value1))
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value332 value1 value2 = (output1257, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1258 value331 value1 value2 = (output1258, value593, value1) := by
  rw [input1258_def, output1258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child1257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output1257_skip]
  kernel_rfl

theorem node1259_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value330 value1 value2 = (output631, value331, value1))
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value331 value1 value2 = (output1258, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1259 value330 value1 value2 = (output1259, value593, value1) := by
  rw [input1259_def, output1259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child1258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output1258_skip]
  kernel_rfl

theorem node1260_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value329 value1 value2 = (output630, value330, value1))
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value330 value1 value2 = (output1259, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1260 value329 value1 value2 = (output1260, value593, value1) := by
  rw [input1260_def, output1260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child1259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output1259_skip]
  kernel_rfl

theorem node1261_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value328 value1 value2 = (output629, value329, value1))
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value329 value1 value2 = (output1260, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1261 value328 value1 value2 = (output1261, value593, value1) := by
  rw [input1261_def, output1261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child1260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output1260_skip]
  kernel_rfl

theorem node1262_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value327 value1 value2 = (output628, value328, value1))
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value328 value1 value2 = (output1261, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1262 value327 value1 value2 = (output1262, value593, value1) := by
  rw [input1262_def, output1262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child1261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output1261_skip]
  kernel_rfl

theorem node1263_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value326 value1 value2 = (output627, value327, value1))
    (child1262 : Flapjack.WordAlloc.removeDeadStructural input1262 value327 value1 value2 = (output1262, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1263 value326 value1 value2 = (output1263, value593, value1) := by
  rw [input1263_def, output1263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child1262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output1262_skip]
  kernel_rfl

theorem node1264_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value323 value1 value2 = (output626, value326, value1))
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value326 value1 value2 = (output1263, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1264 value323 value1 value2 = (output1264, value593, value1) := by
  rw [input1264_def, output1264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child1263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output1263_skip]
  kernel_rfl

theorem node1265_cond_eq
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value323 value1 value2 = (output621, value323, value1))
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value323 value1 value2 = (output1264, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1265 value323 value1 value2 = (output1265, value593, value1) := by
  rw [input1265_def, output1265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child621]
  try dsimp only
  rw [child1264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output621_skip, output1264_skip]
  kernel_rfl

theorem node1266_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value322 value1 value2 = (output620, value323, value1))
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value323 value1 value2 = (output1265, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1266 value322 value1 value2 = (output1266, value593, value1) := by
  rw [input1266_def, output1266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child1265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output1265_skip]
  kernel_rfl

theorem node1267_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value321 value1 value2 = (output619, value322, value1))
    (child1266 : Flapjack.WordAlloc.removeDeadStructural input1266 value322 value1 value2 = (output1266, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1267 value321 value1 value2 = (output1267, value593, value1) := by
  rw [input1267_def, output1267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  try dsimp only
  rw [child1266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output1266_skip]
  kernel_rfl

theorem node1268_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value320 value1 value2 = (output618, value321, value1))
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value321 value1 value2 = (output1267, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1268 value320 value1 value2 = (output1268, value593, value1) := by
  rw [input1268_def, output1268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child1267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output1267_skip]
  kernel_rfl

theorem node1269_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value319 value1 value2 = (output617, value320, value1))
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value320 value1 value2 = (output1268, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1269 value319 value1 value2 = (output1269, value593, value1) := by
  rw [input1269_def, output1269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child1268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output1268_skip]
  kernel_rfl

theorem node1270_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value318 value1 value2 = (output616, value319, value1))
    (child1269 : Flapjack.WordAlloc.removeDeadStructural input1269 value319 value1 value2 = (output1269, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1270 value318 value1 value2 = (output1270, value593, value1) := by
  rw [input1270_def, output1270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child1269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output1269_skip]
  kernel_rfl

theorem node1271_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value317 value1 value2 = (output615, value318, value1))
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value318 value1 value2 = (output1270, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1271 value317 value1 value2 = (output1271, value593, value1) := by
  rw [input1271_def, output1271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child1270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output1270_skip]
  kernel_rfl

theorem node1272_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value316 value1 value2 = (output614, value317, value1))
    (child1271 : Flapjack.WordAlloc.removeDeadStructural input1271 value317 value1 value2 = (output1271, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1272 value316 value1 value2 = (output1272, value593, value1) := by
  rw [input1272_def, output1272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  try dsimp only
  rw [child1271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output614_skip, output1271_skip]
  kernel_rfl

theorem node1273_cond_eq
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value315 value1 value2 = (output613, value316, value1))
    (child1272 : Flapjack.WordAlloc.removeDeadStructural input1272 value316 value1 value2 = (output1272, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1273 value315 value1 value2 = (output1273, value593, value1) := by
  rw [input1273_def, output1273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child613]
  try dsimp only
  rw [child1272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output613_skip, output1272_skip]
  kernel_rfl

theorem node1274_cond_eq
    (child612 : Flapjack.WordAlloc.removeDeadStructural input612 value314 value1 value2 = (output612, value315, value1))
    (child1273 : Flapjack.WordAlloc.removeDeadStructural input1273 value315 value1 value2 = (output1273, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1274 value314 value1 value2 = (output1274, value593, value1) := by
  rw [input1274_def, output1274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child612]
  try dsimp only
  rw [child1273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output612_skip, output1273_skip]
  kernel_rfl

theorem node1275_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value313 value1 value2 = (output611, value314, value1))
    (child1274 : Flapjack.WordAlloc.removeDeadStructural input1274 value314 value1 value2 = (output1274, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1275 value313 value1 value2 = (output1275, value593, value1) := by
  rw [input1275_def, output1275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child1274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output1274_skip]
  kernel_rfl

theorem node1276_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value312 value1 value2 = (output610, value313, value1))
    (child1275 : Flapjack.WordAlloc.removeDeadStructural input1275 value313 value1 value2 = (output1275, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1276 value312 value1 value2 = (output1276, value593, value1) := by
  rw [input1276_def, output1276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child1275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output1275_skip]
  kernel_rfl

theorem node1277_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value311 value1 value2 = (output609, value312, value1))
    (child1276 : Flapjack.WordAlloc.removeDeadStructural input1276 value312 value1 value2 = (output1276, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1277 value311 value1 value2 = (output1277, value593, value1) := by
  rw [input1277_def, output1277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child1276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output1276_skip]
  kernel_rfl

theorem node1278_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value308 value1 value2 = (output608, value311, value1))
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value311 value1 value2 = (output1277, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1278 value308 value1 value2 = (output1278, value593, value1) := by
  rw [input1278_def, output1278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child1277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output1277_skip]
  kernel_rfl

theorem node1279_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value308 value1 value2 = (output603, value308, value1))
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value308 value1 value2 = (output1278, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1279 value308 value1 value2 = (output1279, value593, value1) := by
  rw [input1279_def, output1279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  try dsimp only
  rw [child1278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output1278_skip]
  kernel_rfl

#print axioms node1279_cond_eq
end InitECandidate.Proofs.DeadStages808.Parallel
