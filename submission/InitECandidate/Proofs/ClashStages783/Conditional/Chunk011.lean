import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages783.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages783
theorem tree1056_agree_conditional
    (child0 : tree1054 = literal1054)
    (child1 : tree1055 = literal1055) : tree1056 = literal1056 := by
  rw [tree1056_def, child0, child1]
  rfl
theorem node1056_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1054 live1054 coloured1054 = result1054)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1055 live1055 coloured1055 = result1055) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1056 live1056 coloured1056 = result1056 := by
  rw [tree1056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1054 coloured1054 at child
  try dsimp only [live1056, coloured1056]
  rw [child]
  dsimp only [result1054]
  have child := child1
  unfold live1055 coloured1055 at child
  try dsimp only [live1056, coloured1056]
  rw [child]
  dsimp only [result1055]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1057_agree_conditional : tree1057 = literal1057 := by
  rw [tree1057_def]
  rfl
theorem node1057_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1057 live1057 coloured1057 = result1057 := by
  rw [tree1057_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1058_agree_conditional
    (child0 : tree1056 = literal1056)
    (child1 : tree1057 = literal1057) : tree1058 = literal1058 := by
  rw [tree1058_def, child0, child1]
  rfl
theorem node1058_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1056 live1056 coloured1056 = result1056)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1057 live1057 coloured1057 = result1057) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1058 live1058 coloured1058 = result1058 := by
  rw [tree1058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1056 coloured1056 at child
  try dsimp only [live1058, coloured1058]
  rw [child]
  dsimp only [result1056]
  have child := child1
  unfold live1057 coloured1057 at child
  try dsimp only [live1058, coloured1058]
  rw [child]
  dsimp only [result1057]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1059_agree_conditional : tree1059 = literal1059 := by
  rw [tree1059_def]
  rfl
theorem node1059_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1059 live1059 coloured1059 = result1059 := by
  rw [tree1059_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1060_agree_conditional
    (child0 : tree1058 = literal1058)
    (child1 : tree1059 = literal1059) : tree1060 = literal1060 := by
  rw [tree1060_def, child0, child1]
  rfl
theorem node1060_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1058 live1058 coloured1058 = result1058)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1059 live1059 coloured1059 = result1059) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1060 live1060 coloured1060 = result1060 := by
  rw [tree1060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1058 coloured1058 at child
  try dsimp only [live1060, coloured1060]
  rw [child]
  dsimp only [result1058]
  have child := child1
  unfold live1059 coloured1059 at child
  try dsimp only [live1060, coloured1060]
  rw [child]
  dsimp only [result1059]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1061_agree_conditional : tree1061 = literal1061 := by
  rw [tree1061_def]
  rfl
theorem node1061_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1061 live1061 coloured1061 = result1061 := by
  rw [tree1061_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1062_agree_conditional
    (child0 : tree1060 = literal1060)
    (child1 : tree1061 = literal1061) : tree1062 = literal1062 := by
  rw [tree1062_def, child0, child1]
  rfl
theorem node1062_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1060 live1060 coloured1060 = result1060)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1061 live1061 coloured1061 = result1061) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1062 live1062 coloured1062 = result1062 := by
  rw [tree1062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1060 coloured1060 at child
  try dsimp only [live1062, coloured1062]
  rw [child]
  dsimp only [result1060]
  have child := child1
  unfold live1061 coloured1061 at child
  try dsimp only [live1062, coloured1062]
  rw [child]
  dsimp only [result1061]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1063_agree_conditional : tree1063 = literal1063 := by
  rw [tree1063_def]
  rfl
theorem node1063_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1063 live1063 coloured1063 = result1063 := by
  rw [tree1063_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1064_agree_conditional
    (child0 : tree1062 = literal1062)
    (child1 : tree1063 = literal1063) : tree1064 = literal1064 := by
  rw [tree1064_def, child0, child1]
  rfl
theorem node1064_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1062 live1062 coloured1062 = result1062)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1063 live1063 coloured1063 = result1063) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1064 live1064 coloured1064 = result1064 := by
  rw [tree1064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1062 coloured1062 at child
  try dsimp only [live1064, coloured1064]
  rw [child]
  dsimp only [result1062]
  have child := child1
  unfold live1063 coloured1063 at child
  try dsimp only [live1064, coloured1064]
  rw [child]
  dsimp only [result1063]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1065_agree_conditional : tree1065 = literal1065 := by
  rw [tree1065_def]
  rfl
theorem node1065_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1065 live1065 coloured1065 = result1065 := by
  rw [tree1065_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1066_agree_conditional
    (child0 : tree1064 = literal1064)
    (child1 : tree1065 = literal1065) : tree1066 = literal1066 := by
  rw [tree1066_def, child0, child1]
  rfl
theorem node1066_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1064 live1064 coloured1064 = result1064)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1065 live1065 coloured1065 = result1065) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1066 live1066 coloured1066 = result1066 := by
  rw [tree1066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1064 coloured1064 at child
  try dsimp only [live1066, coloured1066]
  rw [child]
  dsimp only [result1064]
  have child := child1
  unfold live1065 coloured1065 at child
  try dsimp only [live1066, coloured1066]
  rw [child]
  dsimp only [result1065]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1067_agree_conditional : tree1067 = literal1067 := by
  rw [tree1067_def]
  rfl
theorem node1067_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1067 live1067 coloured1067 = result1067 := by
  rw [tree1067_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1068_agree_conditional
    (child0 : tree1066 = literal1066)
    (child1 : tree1067 = literal1067) : tree1068 = literal1068 := by
  rw [tree1068_def, child0, child1]
  rfl
theorem node1068_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1066 live1066 coloured1066 = result1066)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1067 live1067 coloured1067 = result1067) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1068 live1068 coloured1068 = result1068 := by
  rw [tree1068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1066 coloured1066 at child
  try dsimp only [live1068, coloured1068]
  rw [child]
  dsimp only [result1066]
  have child := child1
  unfold live1067 coloured1067 at child
  try dsimp only [live1068, coloured1068]
  rw [child]
  dsimp only [result1067]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1069_agree_conditional : tree1069 = literal1069 := by
  rw [tree1069_def]
  rfl
theorem node1069_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1069 live1069 coloured1069 = result1069 := by
  rw [tree1069_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1070_agree_conditional
    (child0 : tree1068 = literal1068)
    (child1 : tree1069 = literal1069) : tree1070 = literal1070 := by
  rw [tree1070_def, child0, child1]
  rfl
theorem node1070_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1068 live1068 coloured1068 = result1068)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1069 live1069 coloured1069 = result1069) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1070 live1070 coloured1070 = result1070 := by
  rw [tree1070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1068 coloured1068 at child
  try dsimp only [live1070, coloured1070]
  rw [child]
  dsimp only [result1068]
  have child := child1
  unfold live1069 coloured1069 at child
  try dsimp only [live1070, coloured1070]
  rw [child]
  dsimp only [result1069]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1071_agree_conditional : tree1071 = literal1071 := by
  rw [tree1071_def]
  rfl
theorem node1071_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1071 live1071 coloured1071 = result1071 := by
  rw [tree1071_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1072_agree_conditional
    (child0 : tree1070 = literal1070)
    (child1 : tree1071 = literal1071) : tree1072 = literal1072 := by
  rw [tree1072_def, child0, child1]
  rfl
theorem node1072_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1070 live1070 coloured1070 = result1070)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1071 live1071 coloured1071 = result1071) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1072 live1072 coloured1072 = result1072 := by
  rw [tree1072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1070 coloured1070 at child
  try dsimp only [live1072, coloured1072]
  rw [child]
  dsimp only [result1070]
  have child := child1
  unfold live1071 coloured1071 at child
  try dsimp only [live1072, coloured1072]
  rw [child]
  dsimp only [result1071]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1073_agree_conditional : tree1073 = literal1073 := by
  rw [tree1073_def]
  rfl
theorem node1073_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1073 live1073 coloured1073 = result1073 := by
  rw [tree1073_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1074_agree_conditional
    (child0 : tree1072 = literal1072)
    (child1 : tree1073 = literal1073) : tree1074 = literal1074 := by
  rw [tree1074_def, child0, child1]
  rfl
theorem node1074_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1072 live1072 coloured1072 = result1072)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1073 live1073 coloured1073 = result1073) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1074 live1074 coloured1074 = result1074 := by
  rw [tree1074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1072 coloured1072 at child
  try dsimp only [live1074, coloured1074]
  rw [child]
  dsimp only [result1072]
  have child := child1
  unfold live1073 coloured1073 at child
  try dsimp only [live1074, coloured1074]
  rw [child]
  dsimp only [result1073]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1075_agree_conditional : tree1075 = literal1075 := by
  rw [tree1075_def]
  rfl
theorem node1075_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1075 live1075 coloured1075 = result1075 := by
  rw [tree1075_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1076_agree_conditional
    (child0 : tree1074 = literal1074)
    (child1 : tree1075 = literal1075) : tree1076 = literal1076 := by
  rw [tree1076_def, child0, child1]
  rfl
theorem node1076_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1074 live1074 coloured1074 = result1074)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1075 live1075 coloured1075 = result1075) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1076 live1076 coloured1076 = result1076 := by
  rw [tree1076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1074 coloured1074 at child
  try dsimp only [live1076, coloured1076]
  rw [child]
  dsimp only [result1074]
  have child := child1
  unfold live1075 coloured1075 at child
  try dsimp only [live1076, coloured1076]
  rw [child]
  dsimp only [result1075]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1077_agree_conditional : tree1077 = literal1077 := by
  rw [tree1077_def]
  rfl
theorem node1077_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1077 live1077 coloured1077 = result1077 := by
  rw [tree1077_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1078_agree_conditional
    (child0 : tree1076 = literal1076)
    (child1 : tree1077 = literal1077) : tree1078 = literal1078 := by
  rw [tree1078_def, child0, child1]
  rfl
theorem node1078_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1076 live1076 coloured1076 = result1076)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1077 live1077 coloured1077 = result1077) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1078 live1078 coloured1078 = result1078 := by
  rw [tree1078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1076 coloured1076 at child
  try dsimp only [live1078, coloured1078]
  rw [child]
  dsimp only [result1076]
  have child := child1
  unfold live1077 coloured1077 at child
  try dsimp only [live1078, coloured1078]
  rw [child]
  dsimp only [result1077]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1079_agree_conditional : tree1079 = literal1079 := by
  rw [tree1079_def]
  rfl
theorem node1079_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1079 live1079 coloured1079 = result1079 := by
  rw [tree1079_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1080_agree_conditional
    (child0 : tree1078 = literal1078)
    (child1 : tree1079 = literal1079) : tree1080 = literal1080 := by
  rw [tree1080_def, child0, child1]
  rfl
theorem node1080_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1078 live1078 coloured1078 = result1078)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1079 live1079 coloured1079 = result1079) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1080 live1080 coloured1080 = result1080 := by
  rw [tree1080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1078 coloured1078 at child
  try dsimp only [live1080, coloured1080]
  rw [child]
  dsimp only [result1078]
  have child := child1
  unfold live1079 coloured1079 at child
  try dsimp only [live1080, coloured1080]
  rw [child]
  dsimp only [result1079]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1081_agree_conditional : tree1081 = literal1081 := by
  rw [tree1081_def]
  rfl
theorem node1081_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1081 live1081 coloured1081 = result1081 := by
  rw [tree1081_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1082_agree_conditional
    (child0 : tree1080 = literal1080)
    (child1 : tree1081 = literal1081) : tree1082 = literal1082 := by
  rw [tree1082_def, child0, child1]
  rfl
theorem node1082_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1080 live1080 coloured1080 = result1080)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1081 live1081 coloured1081 = result1081) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1082 live1082 coloured1082 = result1082 := by
  rw [tree1082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1080 coloured1080 at child
  try dsimp only [live1082, coloured1082]
  rw [child]
  dsimp only [result1080]
  have child := child1
  unfold live1081 coloured1081 at child
  try dsimp only [live1082, coloured1082]
  rw [child]
  dsimp only [result1081]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1083_agree_conditional : tree1083 = literal1083 := by
  rw [tree1083_def]
  rfl
theorem node1083_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1083 live1083 coloured1083 = result1083 := by
  rw [tree1083_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1084_agree_conditional : tree1084 = literal1084 := by
  rw [tree1084_def]
  rfl
theorem node1084_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1084 live1084 coloured1084 = result1084 := by
  rw [tree1084_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1085_agree_conditional
    (child0 : tree1083 = literal1083)
    (child1 : tree1084 = literal1084) : tree1085 = literal1085 := by
  rw [tree1085_def, child0, child1]
  rfl
theorem node1085_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1083 live1083 coloured1083 = result1083)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1084 live1084 coloured1084 = result1084) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1085 live1085 coloured1085 = result1085 := by
  rw [tree1085_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1083 coloured1083 at child
  try dsimp only [live1085, coloured1085]
  rw [child]
  dsimp only [result1083]
  have child := child1
  unfold live1084 coloured1084 at child
  try dsimp only [live1085, coloured1085]
  rw [child]
  dsimp only [result1084]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1086_agree_conditional : tree1086 = literal1086 := by
  rw [tree1086_def]
  rfl
theorem node1086_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1086 live1086 coloured1086 = result1086 := by
  rw [tree1086_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1087_agree_conditional
    (child0 : tree1085 = literal1085)
    (child1 : tree1086 = literal1086) : tree1087 = literal1087 := by
  rw [tree1087_def, child0, child1]
  rfl
theorem node1087_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1085 live1085 coloured1085 = result1085)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1086 live1086 coloured1086 = result1086) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1087 live1087 coloured1087 = result1087 := by
  rw [tree1087_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1085 coloured1085 at child
  try dsimp only [live1087, coloured1087]
  rw [child]
  dsimp only [result1085]
  have child := child1
  unfold live1086 coloured1086 at child
  try dsimp only [live1087, coloured1087]
  rw [child]
  dsimp only [result1086]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1088_agree_conditional : tree1088 = literal1088 := by
  rw [tree1088_def]
  rfl
theorem node1088_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1088 live1088 coloured1088 = result1088 := by
  rw [tree1088_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1089_agree_conditional
    (child0 : tree1087 = literal1087)
    (child1 : tree1088 = literal1088) : tree1089 = literal1089 := by
  rw [tree1089_def, child0, child1]
  rfl
theorem node1089_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1087 live1087 coloured1087 = result1087)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1088 live1088 coloured1088 = result1088) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1089 live1089 coloured1089 = result1089 := by
  rw [tree1089_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1087 coloured1087 at child
  try dsimp only [live1089, coloured1089]
  rw [child]
  dsimp only [result1087]
  have child := child1
  unfold live1088 coloured1088 at child
  try dsimp only [live1089, coloured1089]
  rw [child]
  dsimp only [result1088]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1090_agree_conditional : tree1090 = literal1090 := by
  rw [tree1090_def]
  rfl
theorem node1090_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1090 live1090 coloured1090 = result1090 := by
  rw [tree1090_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1091_agree_conditional : tree1091 = literal1091 := by
  rw [tree1091_def]
  rfl
theorem node1091_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1091 live1091 coloured1091 = result1091 := by
  rw [tree1091_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1092_agree_conditional
    (child0 : tree1090 = literal1090)
    (child1 : tree1091 = literal1091) : tree1092 = literal1092 := by
  rw [tree1092_def, child0, child1]
  rfl
theorem node1092_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1090 live1090 coloured1090 = result1090)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1091 live1091 coloured1091 = result1091) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1092 live1092 coloured1092 = result1092 := by
  rw [tree1092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1090 coloured1090 at child
  try dsimp only [live1092, coloured1092]
  rw [child]
  dsimp only [result1090]
  have child := child1
  unfold live1091 coloured1091 at child
  try dsimp only [live1092, coloured1092]
  rw [child]
  dsimp only [result1091]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1093_agree_conditional : tree1093 = literal1093 := by
  rw [tree1093_def]
  rfl
theorem node1093_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1093 live1093 coloured1093 = result1093 := by
  rw [tree1093_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1094_agree_conditional : tree1094 = literal1094 := by
  rw [tree1094_def]
  rfl
theorem node1094_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1094 live1094 coloured1094 = result1094 := by
  rw [tree1094_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1095_agree_conditional
    (child0 : tree1093 = literal1093)
    (child1 : tree1094 = literal1094) : tree1095 = literal1095 := by
  rw [tree1095_def, child0, child1]
  rfl
theorem node1095_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1093 live1093 coloured1093 = result1093)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1094 live1094 coloured1094 = result1094) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1095 live1095 coloured1095 = result1095 := by
  rw [tree1095_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1093 coloured1093 at child
  try dsimp only [live1095, coloured1095]
  rw [child]
  dsimp only [result1093]
  have child := child1
  unfold live1094 coloured1094 at child
  try dsimp only [live1095, coloured1095]
  rw [child]
  dsimp only [result1094]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1096_agree_conditional : tree1096 = literal1096 := by
  rw [tree1096_def]
  rfl
theorem node1096_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1096 live1096 coloured1096 = result1096 := by
  rw [tree1096_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1097_agree_conditional
    (child0 : tree1095 = literal1095)
    (child1 : tree1096 = literal1096) : tree1097 = literal1097 := by
  rw [tree1097_def, child0, child1]
  rfl
theorem node1097_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1095 live1095 coloured1095 = result1095)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1096 live1096 coloured1096 = result1096) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1097 live1097 coloured1097 = result1097 := by
  rw [tree1097_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1095 coloured1095 at child
  try dsimp only [live1097, coloured1097]
  rw [child]
  dsimp only [result1095]
  have child := child1
  unfold live1096 coloured1096 at child
  try dsimp only [live1097, coloured1097]
  rw [child]
  dsimp only [result1096]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1098_agree_conditional
    (child0 : tree1092 = literal1092)
    (child1 : tree1097 = literal1097) : tree1098 = literal1098 := by
  rw [tree1098_def, child0, child1]
  rfl
theorem node1098_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1092 live1092 coloured1092 = result1092)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1097 live1097 coloured1097 = result1097) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1098 live1098 coloured1098 = result1098 := by
  rw [tree1098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1092 coloured1092 at child
  try dsimp only [live1098, coloured1098]
  rw [child]
  dsimp only [result1092]
  have child := child1
  unfold live1097 coloured1097 at child
  try dsimp only [live1098, coloured1098]
  rw [child]
  dsimp only [result1097]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1099_agree_conditional
    (child0 : tree1089 = literal1089)
    (child1 : tree1098 = literal1098) : tree1099 = literal1099 := by
  rw [tree1099_def, child0, child1]
  rfl
theorem node1099_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1089 live1089 coloured1089 = result1089)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1098 live1098 coloured1098 = result1098) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1099 live1099 coloured1099 = result1099 := by
  rw [tree1099_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1089 coloured1089 at child
  try dsimp only [live1099, coloured1099]
  rw [child]
  dsimp only [result1089]
  have child := child1
  unfold live1098 coloured1098 at child
  try dsimp only [live1099, coloured1099]
  rw [child]
  dsimp only [result1098]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1100_agree_conditional : tree1100 = literal1100 := by
  rw [tree1100_def]
  rfl
theorem node1100_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1100 live1100 coloured1100 = result1100 := by
  rw [tree1100_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1101_agree_conditional
    (child0 : tree1099 = literal1099)
    (child1 : tree1100 = literal1100) : tree1101 = literal1101 := by
  rw [tree1101_def, child0, child1]
  rfl
theorem node1101_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1099 live1099 coloured1099 = result1099)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1100 live1100 coloured1100 = result1100) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1101 live1101 coloured1101 = result1101 := by
  rw [tree1101_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1099 coloured1099 at child
  try dsimp only [live1101, coloured1101]
  rw [child]
  dsimp only [result1099]
  have child := child1
  unfold live1100 coloured1100 at child
  try dsimp only [live1101, coloured1101]
  rw [child]
  dsimp only [result1100]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1102_agree_conditional : tree1102 = literal1102 := by
  rw [tree1102_def]
  rfl
theorem node1102_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1102 live1102 coloured1102 = result1102 := by
  rw [tree1102_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1103_agree_conditional
    (child0 : tree1101 = literal1101)
    (child1 : tree1102 = literal1102) : tree1103 = literal1103 := by
  rw [tree1103_def, child0, child1]
  rfl
theorem node1103_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1101 live1101 coloured1101 = result1101)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1102 live1102 coloured1102 = result1102) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1103 live1103 coloured1103 = result1103 := by
  rw [tree1103_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1101 coloured1101 at child
  try dsimp only [live1103, coloured1103]
  rw [child]
  dsimp only [result1101]
  have child := child1
  unfold live1102 coloured1102 at child
  try dsimp only [live1103, coloured1103]
  rw [child]
  dsimp only [result1102]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1104_agree_conditional : tree1104 = literal1104 := by
  rw [tree1104_def]
  rfl
theorem node1104_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1104 live1104 coloured1104 = result1104 := by
  rw [tree1104_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1105_agree_conditional
    (child0 : tree1103 = literal1103)
    (child1 : tree1104 = literal1104) : tree1105 = literal1105 := by
  rw [tree1105_def, child0, child1]
  rfl
theorem node1105_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1103 live1103 coloured1103 = result1103)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1104 live1104 coloured1104 = result1104) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1105 live1105 coloured1105 = result1105 := by
  rw [tree1105_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1103 coloured1103 at child
  try dsimp only [live1105, coloured1105]
  rw [child]
  dsimp only [result1103]
  have child := child1
  unfold live1104 coloured1104 at child
  try dsimp only [live1105, coloured1105]
  rw [child]
  dsimp only [result1104]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1106_agree_conditional : tree1106 = literal1106 := by
  rw [tree1106_def]
  rfl
theorem node1106_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1106 live1106 coloured1106 = result1106 := by
  rw [tree1106_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1107_agree_conditional
    (child0 : tree1105 = literal1105)
    (child1 : tree1106 = literal1106) : tree1107 = literal1107 := by
  rw [tree1107_def, child0, child1]
  rfl
theorem node1107_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1105 live1105 coloured1105 = result1105)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1106 live1106 coloured1106 = result1106) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1107 live1107 coloured1107 = result1107 := by
  rw [tree1107_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1105 coloured1105 at child
  try dsimp only [live1107, coloured1107]
  rw [child]
  dsimp only [result1105]
  have child := child1
  unfold live1106 coloured1106 at child
  try dsimp only [live1107, coloured1107]
  rw [child]
  dsimp only [result1106]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1108_agree_conditional
    (child0 : tree1082 = literal1082)
    (child1 : tree1107 = literal1107) : tree1108 = literal1108 := by
  rw [tree1108_def, child0, child1]
  rfl
theorem node1108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1082 live1082 coloured1082 = result1082)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1107 live1107 coloured1107 = result1107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1108 live1108 coloured1108 = result1108 := by
  rw [tree1108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1082 coloured1082 at child
  try dsimp only [live1108, coloured1108]
  rw [child]
  dsimp only [result1082]
  have child := child1
  unfold live1107 coloured1107 at child
  try dsimp only [live1108, coloured1108]
  rw [child]
  dsimp only [result1107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1109_agree_conditional : tree1109 = literal1109 := by
  rw [tree1109_def]
  rfl
theorem node1109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1109 live1109 coloured1109 = result1109 := by
  rw [tree1109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1110_agree_conditional
    (child0 : tree1108 = literal1108)
    (child1 : tree1109 = literal1109) : tree1110 = literal1110 := by
  rw [tree1110_def, child0, child1]
  rfl
theorem node1110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1108 live1108 coloured1108 = result1108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1109 live1109 coloured1109 = result1109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1110 live1110 coloured1110 = result1110 := by
  rw [tree1110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1108 coloured1108 at child
  try dsimp only [live1110, coloured1110]
  rw [child]
  dsimp only [result1108]
  have child := child1
  unfold live1109 coloured1109 at child
  try dsimp only [live1110, coloured1110]
  rw [child]
  dsimp only [result1109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1111_agree_conditional : tree1111 = literal1111 := by
  rw [tree1111_def]
  rfl
theorem node1111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1111 live1111 coloured1111 = result1111 := by
  rw [tree1111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1112_agree_conditional
    (child0 : tree1110 = literal1110)
    (child1 : tree1111 = literal1111) : tree1112 = literal1112 := by
  rw [tree1112_def, child0, child1]
  rfl
theorem node1112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1110 live1110 coloured1110 = result1110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1111 live1111 coloured1111 = result1111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1112 live1112 coloured1112 = result1112 := by
  rw [tree1112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1110 coloured1110 at child
  try dsimp only [live1112, coloured1112]
  rw [child]
  dsimp only [result1110]
  have child := child1
  unfold live1111 coloured1111 at child
  try dsimp only [live1112, coloured1112]
  rw [child]
  dsimp only [result1111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1113_agree_conditional : tree1113 = literal1113 := by
  rw [tree1113_def]
  rfl
theorem node1113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1113 live1113 coloured1113 = result1113 := by
  rw [tree1113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1114_agree_conditional
    (child0 : tree1112 = literal1112)
    (child1 : tree1113 = literal1113) : tree1114 = literal1114 := by
  rw [tree1114_def, child0, child1]
  rfl
theorem node1114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1112 live1112 coloured1112 = result1112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1113 live1113 coloured1113 = result1113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1114 live1114 coloured1114 = result1114 := by
  rw [tree1114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1112 coloured1112 at child
  try dsimp only [live1114, coloured1114]
  rw [child]
  dsimp only [result1112]
  have child := child1
  unfold live1113 coloured1113 at child
  try dsimp only [live1114, coloured1114]
  rw [child]
  dsimp only [result1113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1115_agree_conditional : tree1115 = literal1115 := by
  rw [tree1115_def]
  rfl
theorem node1115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1115 live1115 coloured1115 = result1115 := by
  rw [tree1115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1116_agree_conditional : tree1116 = literal1116 := by
  rw [tree1116_def]
  rfl
theorem node1116_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1116 live1116 coloured1116 = result1116 := by
  rw [tree1116_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1117_agree_conditional
    (child0 : tree1115 = literal1115)
    (child1 : tree1116 = literal1116) : tree1117 = literal1117 := by
  rw [tree1117_def, child0, child1]
  rfl
theorem node1117_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1115 live1115 coloured1115 = result1115)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1116 live1116 coloured1116 = result1116) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1117 live1117 coloured1117 = result1117 := by
  rw [tree1117_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1115 coloured1115 at child
  try dsimp only [live1117, coloured1117]
  rw [child]
  dsimp only [result1115]
  have child := child1
  unfold live1116 coloured1116 at child
  try dsimp only [live1117, coloured1117]
  rw [child]
  dsimp only [result1116]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1118_agree_conditional : tree1118 = literal1118 := by
  rw [tree1118_def]
  rfl
theorem node1118_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1118 live1118 coloured1118 = result1118 := by
  rw [tree1118_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1119_agree_conditional : tree1119 = literal1119 := by
  rw [tree1119_def]
  rfl
theorem node1119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1119 live1119 coloured1119 = result1119 := by
  rw [tree1119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1120_agree_conditional
    (child0 : tree1118 = literal1118)
    (child1 : tree1119 = literal1119) : tree1120 = literal1120 := by
  rw [tree1120_def, child0, child1]
  rfl
theorem node1120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1118 live1118 coloured1118 = result1118)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1119 live1119 coloured1119 = result1119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1120 live1120 coloured1120 = result1120 := by
  rw [tree1120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1118 coloured1118 at child
  try dsimp only [live1120, coloured1120]
  rw [child]
  dsimp only [result1118]
  have child := child1
  unfold live1119 coloured1119 at child
  try dsimp only [live1120, coloured1120]
  rw [child]
  dsimp only [result1119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1121_agree_conditional : tree1121 = literal1121 := by
  rw [tree1121_def]
  rfl
theorem node1121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1121 live1121 coloured1121 = result1121 := by
  rw [tree1121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1122_agree_conditional
    (child0 : tree1120 = literal1120)
    (child1 : tree1121 = literal1121) : tree1122 = literal1122 := by
  rw [tree1122_def, child0, child1]
  rfl
theorem node1122_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1120 live1120 coloured1120 = result1120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1121 live1121 coloured1121 = result1121) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1122 live1122 coloured1122 = result1122 := by
  rw [tree1122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1120 coloured1120 at child
  try dsimp only [live1122, coloured1122]
  rw [child]
  dsimp only [result1120]
  have child := child1
  unfold live1121 coloured1121 at child
  try dsimp only [live1122, coloured1122]
  rw [child]
  dsimp only [result1121]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1123_agree_conditional
    (child0 : tree1117 = literal1117)
    (child1 : tree1122 = literal1122) : tree1123 = literal1123 := by
  rw [tree1123_def, child0, child1]
  rfl
theorem node1123_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1117 live1117 coloured1117 = result1117)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1122 live1122 coloured1122 = result1122) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1123 live1123 coloured1123 = result1123 := by
  rw [tree1123_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1117 coloured1117 at child
  try dsimp only [live1123, coloured1123]
  rw [child]
  dsimp only [result1117]
  have child := child1
  unfold live1122 coloured1122 at child
  try dsimp only [live1123, coloured1123]
  rw [child]
  dsimp only [result1122]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1124_agree_conditional
    (child0 : tree1114 = literal1114)
    (child1 : tree1123 = literal1123) : tree1124 = literal1124 := by
  rw [tree1124_def, child0, child1]
  rfl
theorem node1124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1114 live1114 coloured1114 = result1114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1123 live1123 coloured1123 = result1123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1124 live1124 coloured1124 = result1124 := by
  rw [tree1124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1114 coloured1114 at child
  try dsimp only [live1124, coloured1124]
  rw [child]
  dsimp only [result1114]
  have child := child1
  unfold live1123 coloured1123 at child
  try dsimp only [live1124, coloured1124]
  rw [child]
  dsimp only [result1123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1125_agree_conditional : tree1125 = literal1125 := by
  rw [tree1125_def]
  rfl
theorem node1125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1125 live1125 coloured1125 = result1125 := by
  rw [tree1125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1126_agree_conditional
    (child0 : tree1124 = literal1124)
    (child1 : tree1125 = literal1125) : tree1126 = literal1126 := by
  rw [tree1126_def, child0, child1]
  rfl
theorem node1126_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1124 live1124 coloured1124 = result1124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1125 live1125 coloured1125 = result1125) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1126 live1126 coloured1126 = result1126 := by
  rw [tree1126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1124 coloured1124 at child
  try dsimp only [live1126, coloured1126]
  rw [child]
  dsimp only [result1124]
  have child := child1
  unfold live1125 coloured1125 at child
  try dsimp only [live1126, coloured1126]
  rw [child]
  dsimp only [result1125]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1127_agree_conditional : tree1127 = literal1127 := by
  rw [tree1127_def]
  rfl
theorem node1127_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1127 live1127 coloured1127 = result1127 := by
  rw [tree1127_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1128_agree_conditional
    (child0 : tree1126 = literal1126)
    (child1 : tree1127 = literal1127) : tree1128 = literal1128 := by
  rw [tree1128_def, child0, child1]
  rfl
theorem node1128_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1126 live1126 coloured1126 = result1126)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1127 live1127 coloured1127 = result1127) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1128 live1128 coloured1128 = result1128 := by
  rw [tree1128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1126 coloured1126 at child
  try dsimp only [live1128, coloured1128]
  rw [child]
  dsimp only [result1126]
  have child := child1
  unfold live1127 coloured1127 at child
  try dsimp only [live1128, coloured1128]
  rw [child]
  dsimp only [result1127]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1129_agree_conditional : tree1129 = literal1129 := by
  rw [tree1129_def]
  rfl
theorem node1129_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1129 live1129 coloured1129 = result1129 := by
  rw [tree1129_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1130_agree_conditional
    (child0 : tree1128 = literal1128)
    (child1 : tree1129 = literal1129) : tree1130 = literal1130 := by
  rw [tree1130_def, child0, child1]
  rfl
theorem node1130_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1128 live1128 coloured1128 = result1128)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1129 live1129 coloured1129 = result1129) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1130 live1130 coloured1130 = result1130 := by
  rw [tree1130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1128 coloured1128 at child
  try dsimp only [live1130, coloured1130]
  rw [child]
  dsimp only [result1128]
  have child := child1
  unfold live1129 coloured1129 at child
  try dsimp only [live1130, coloured1130]
  rw [child]
  dsimp only [result1129]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1131_agree_conditional : tree1131 = literal1131 := by
  rw [tree1131_def]
  rfl
theorem node1131_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1131 live1131 coloured1131 = result1131 := by
  rw [tree1131_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1132_agree_conditional
    (child0 : tree1130 = literal1130)
    (child1 : tree1131 = literal1131) : tree1132 = literal1132 := by
  rw [tree1132_def, child0, child1]
  rfl
theorem node1132_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1130 live1130 coloured1130 = result1130)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1131 live1131 coloured1131 = result1131) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1132 live1132 coloured1132 = result1132 := by
  rw [tree1132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1130 coloured1130 at child
  try dsimp only [live1132, coloured1132]
  rw [child]
  dsimp only [result1130]
  have child := child1
  unfold live1131 coloured1131 at child
  try dsimp only [live1132, coloured1132]
  rw [child]
  dsimp only [result1131]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1133_agree_conditional : tree1133 = literal1133 := by
  rw [tree1133_def]
  rfl
theorem node1133_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1133 live1133 coloured1133 = result1133 := by
  rw [tree1133_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1134_agree_conditional
    (child0 : tree1132 = literal1132)
    (child1 : tree1133 = literal1133) : tree1134 = literal1134 := by
  rw [tree1134_def, child0, child1]
  rfl
theorem node1134_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1132 live1132 coloured1132 = result1132)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1133 live1133 coloured1133 = result1133) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1134 live1134 coloured1134 = result1134 := by
  rw [tree1134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1132 coloured1132 at child
  try dsimp only [live1134, coloured1134]
  rw [child]
  dsimp only [result1132]
  have child := child1
  unfold live1133 coloured1133 at child
  try dsimp only [live1134, coloured1134]
  rw [child]
  dsimp only [result1133]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1135_agree_conditional : tree1135 = literal1135 := by
  rw [tree1135_def]
  rfl
theorem node1135_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1135 live1135 coloured1135 = result1135 := by
  rw [tree1135_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1136_agree_conditional
    (child0 : tree1134 = literal1134)
    (child1 : tree1135 = literal1135) : tree1136 = literal1136 := by
  rw [tree1136_def, child0, child1]
  rfl
theorem node1136_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1134 live1134 coloured1134 = result1134)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1135 live1135 coloured1135 = result1135) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1136 live1136 coloured1136 = result1136 := by
  rw [tree1136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1134 coloured1134 at child
  try dsimp only [live1136, coloured1136]
  rw [child]
  dsimp only [result1134]
  have child := child1
  unfold live1135 coloured1135 at child
  try dsimp only [live1136, coloured1136]
  rw [child]
  dsimp only [result1135]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1137_agree_conditional : tree1137 = literal1137 := by
  rw [tree1137_def]
  rfl
theorem node1137_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1137 live1137 coloured1137 = result1137 := by
  rw [tree1137_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1138_agree_conditional
    (child0 : tree1136 = literal1136)
    (child1 : tree1137 = literal1137) : tree1138 = literal1138 := by
  rw [tree1138_def, child0, child1]
  rfl
theorem node1138_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1136 live1136 coloured1136 = result1136)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1137 live1137 coloured1137 = result1137) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1138 live1138 coloured1138 = result1138 := by
  rw [tree1138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1136 coloured1136 at child
  try dsimp only [live1138, coloured1138]
  rw [child]
  dsimp only [result1136]
  have child := child1
  unfold live1137 coloured1137 at child
  try dsimp only [live1138, coloured1138]
  rw [child]
  dsimp only [result1137]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1139_agree_conditional : tree1139 = literal1139 := by
  rw [tree1139_def]
  rfl
theorem node1139_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1139 live1139 coloured1139 = result1139 := by
  rw [tree1139_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1140_agree_conditional
    (child0 : tree1138 = literal1138)
    (child1 : tree1139 = literal1139) : tree1140 = literal1140 := by
  rw [tree1140_def, child0, child1]
  rfl
theorem node1140_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1138 live1138 coloured1138 = result1138)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1139 live1139 coloured1139 = result1139) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1140 live1140 coloured1140 = result1140 := by
  rw [tree1140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1138 coloured1138 at child
  try dsimp only [live1140, coloured1140]
  rw [child]
  dsimp only [result1138]
  have child := child1
  unfold live1139 coloured1139 at child
  try dsimp only [live1140, coloured1140]
  rw [child]
  dsimp only [result1139]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1141_agree_conditional : tree1141 = literal1141 := by
  rw [tree1141_def]
  rfl
theorem node1141_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1141 live1141 coloured1141 = result1141 := by
  rw [tree1141_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1142_agree_conditional
    (child0 : tree1140 = literal1140)
    (child1 : tree1141 = literal1141) : tree1142 = literal1142 := by
  rw [tree1142_def, child0, child1]
  rfl
theorem node1142_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1140 live1140 coloured1140 = result1140)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1141 live1141 coloured1141 = result1141) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1142 live1142 coloured1142 = result1142 := by
  rw [tree1142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1140 coloured1140 at child
  try dsimp only [live1142, coloured1142]
  rw [child]
  dsimp only [result1140]
  have child := child1
  unfold live1141 coloured1141 at child
  try dsimp only [live1142, coloured1142]
  rw [child]
  dsimp only [result1141]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1143_agree_conditional : tree1143 = literal1143 := by
  rw [tree1143_def]
  rfl
theorem node1143_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1143 live1143 coloured1143 = result1143 := by
  rw [tree1143_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1144_agree_conditional
    (child0 : tree1142 = literal1142)
    (child1 : tree1143 = literal1143) : tree1144 = literal1144 := by
  rw [tree1144_def, child0, child1]
  rfl
theorem node1144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1142 live1142 coloured1142 = result1142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1143 live1143 coloured1143 = result1143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1144 live1144 coloured1144 = result1144 := by
  rw [tree1144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1142 coloured1142 at child
  try dsimp only [live1144, coloured1144]
  rw [child]
  dsimp only [result1142]
  have child := child1
  unfold live1143 coloured1143 at child
  try dsimp only [live1144, coloured1144]
  rw [child]
  dsimp only [result1143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1145_agree_conditional : tree1145 = literal1145 := by
  rw [tree1145_def]
  rfl
theorem node1145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1145 live1145 coloured1145 = result1145 := by
  rw [tree1145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1146_agree_conditional
    (child0 : tree1144 = literal1144)
    (child1 : tree1145 = literal1145) : tree1146 = literal1146 := by
  rw [tree1146_def, child0, child1]
  rfl
theorem node1146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1144 live1144 coloured1144 = result1144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1145 live1145 coloured1145 = result1145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1146 live1146 coloured1146 = result1146 := by
  rw [tree1146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1144 coloured1144 at child
  try dsimp only [live1146, coloured1146]
  rw [child]
  dsimp only [result1144]
  have child := child1
  unfold live1145 coloured1145 at child
  try dsimp only [live1146, coloured1146]
  rw [child]
  dsimp only [result1145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1147_agree_conditional : tree1147 = literal1147 := by
  rw [tree1147_def]
  rfl
theorem node1147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1147 live1147 coloured1147 = result1147 := by
  rw [tree1147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1148_agree_conditional
    (child0 : tree1146 = literal1146)
    (child1 : tree1147 = literal1147) : tree1148 = literal1148 := by
  rw [tree1148_def, child0, child1]
  rfl
theorem node1148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1146 live1146 coloured1146 = result1146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1147 live1147 coloured1147 = result1147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1148 live1148 coloured1148 = result1148 := by
  rw [tree1148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1146 coloured1146 at child
  try dsimp only [live1148, coloured1148]
  rw [child]
  dsimp only [result1146]
  have child := child1
  unfold live1147 coloured1147 at child
  try dsimp only [live1148, coloured1148]
  rw [child]
  dsimp only [result1147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1149_agree_conditional : tree1149 = literal1149 := by
  rw [tree1149_def]
  rfl
theorem node1149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1149 live1149 coloured1149 = result1149 := by
  rw [tree1149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1150_agree_conditional
    (child0 : tree1148 = literal1148)
    (child1 : tree1149 = literal1149) : tree1150 = literal1150 := by
  rw [tree1150_def, child0, child1]
  rfl
theorem node1150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1148 live1148 coloured1148 = result1148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1149 live1149 coloured1149 = result1149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1150 live1150 coloured1150 = result1150 := by
  rw [tree1150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1148 coloured1148 at child
  try dsimp only [live1150, coloured1150]
  rw [child]
  dsimp only [result1148]
  have child := child1
  unfold live1149 coloured1149 at child
  try dsimp only [live1150, coloured1150]
  rw [child]
  dsimp only [result1149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1151_agree_conditional : tree1151 = literal1151 := by
  rw [tree1151_def]
  rfl
theorem node1151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1151 live1151 coloured1151 = result1151 := by
  rw [tree1151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages783
