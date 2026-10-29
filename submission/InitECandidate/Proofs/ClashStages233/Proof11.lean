import InitECandidate.Proofs.ClashStages233.Proof10
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages233
theorem tree1056_agree : tree1056 = literal1056 := by
  rw [tree1056_def, tree1054_agree, tree1055_agree]
  rfl
theorem node1056_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1056 live1056 coloured1056 = result1056 := by
  rw [tree1056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1054_eq
  unfold live1054 coloured1054 at child
  try dsimp only [live1056, coloured1056]
  rw [child]
  dsimp only [result1054]
  have child := node1055_eq
  unfold live1055 coloured1055 at child
  try dsimp only [live1056, coloured1056]
  rw [child]
  dsimp only [result1055]
  try dsimp only [colour, result1056]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1057_agree : tree1057 = literal1057 := by
  rw [tree1057_def]
  rfl
theorem node1057_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1057 live1057 coloured1057 = result1057 := by
  rw [tree1057_def]
  try dsimp only [colour, result1057]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1058_agree : tree1058 = literal1058 := by
  rw [tree1058_def, tree1056_agree, tree1057_agree]
  rfl
theorem node1058_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1058 live1058 coloured1058 = result1058 := by
  rw [tree1058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1056_eq
  unfold live1056 coloured1056 at child
  try dsimp only [live1058, coloured1058]
  rw [child]
  dsimp only [result1056]
  have child := node1057_eq
  unfold live1057 coloured1057 at child
  try dsimp only [live1058, coloured1058]
  rw [child]
  dsimp only [result1057]
  try dsimp only [colour, result1058]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1059_agree : tree1059 = literal1059 := by
  rw [tree1059_def]
  rfl
theorem node1059_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1059 live1059 coloured1059 = result1059 := by
  rw [tree1059_def]
  try dsimp only [colour, result1059]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1060_agree : tree1060 = literal1060 := by
  rw [tree1060_def, tree1058_agree, tree1059_agree]
  rfl
theorem node1060_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1060 live1060 coloured1060 = result1060 := by
  rw [tree1060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1058_eq
  unfold live1058 coloured1058 at child
  try dsimp only [live1060, coloured1060]
  rw [child]
  dsimp only [result1058]
  have child := node1059_eq
  unfold live1059 coloured1059 at child
  try dsimp only [live1060, coloured1060]
  rw [child]
  dsimp only [result1059]
  try dsimp only [colour, result1060]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1061_agree : tree1061 = literal1061 := by
  rw [tree1061_def]
  rfl
theorem node1061_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1061 live1061 coloured1061 = result1061 := by
  rw [tree1061_def]
  try dsimp only [colour, result1061]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1062_agree : tree1062 = literal1062 := by
  rw [tree1062_def, tree1060_agree, tree1061_agree]
  rfl
theorem node1062_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1062 live1062 coloured1062 = result1062 := by
  rw [tree1062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1060_eq
  unfold live1060 coloured1060 at child
  try dsimp only [live1062, coloured1062]
  rw [child]
  dsimp only [result1060]
  have child := node1061_eq
  unfold live1061 coloured1061 at child
  try dsimp only [live1062, coloured1062]
  rw [child]
  dsimp only [result1061]
  try dsimp only [colour, result1062]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1063_agree : tree1063 = literal1063 := by
  rw [tree1063_def]
  rfl
theorem node1063_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1063 live1063 coloured1063 = result1063 := by
  rw [tree1063_def]
  try dsimp only [colour, result1063]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1064_agree : tree1064 = literal1064 := by
  rw [tree1064_def, tree1062_agree, tree1063_agree]
  rfl
theorem node1064_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1064 live1064 coloured1064 = result1064 := by
  rw [tree1064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1062_eq
  unfold live1062 coloured1062 at child
  try dsimp only [live1064, coloured1064]
  rw [child]
  dsimp only [result1062]
  have child := node1063_eq
  unfold live1063 coloured1063 at child
  try dsimp only [live1064, coloured1064]
  rw [child]
  dsimp only [result1063]
  try dsimp only [colour, result1064]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1065_agree : tree1065 = literal1065 := by
  rw [tree1065_def]
  rfl
theorem node1065_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1065 live1065 coloured1065 = result1065 := by
  rw [tree1065_def]
  try dsimp only [colour, result1065]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1066_agree : tree1066 = literal1066 := by
  rw [tree1066_def, tree1064_agree, tree1065_agree]
  rfl
theorem node1066_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1066 live1066 coloured1066 = result1066 := by
  rw [tree1066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1064_eq
  unfold live1064 coloured1064 at child
  try dsimp only [live1066, coloured1066]
  rw [child]
  dsimp only [result1064]
  have child := node1065_eq
  unfold live1065 coloured1065 at child
  try dsimp only [live1066, coloured1066]
  rw [child]
  dsimp only [result1065]
  try dsimp only [colour, result1066]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1067_agree : tree1067 = literal1067 := by
  rw [tree1067_def]
  rfl
theorem node1067_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1067 live1067 coloured1067 = result1067 := by
  rw [tree1067_def]
  try dsimp only [colour, result1067]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1068_agree : tree1068 = literal1068 := by
  rw [tree1068_def, tree1066_agree, tree1067_agree]
  rfl
theorem node1068_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1068 live1068 coloured1068 = result1068 := by
  rw [tree1068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1066_eq
  unfold live1066 coloured1066 at child
  try dsimp only [live1068, coloured1068]
  rw [child]
  dsimp only [result1066]
  have child := node1067_eq
  unfold live1067 coloured1067 at child
  try dsimp only [live1068, coloured1068]
  rw [child]
  dsimp only [result1067]
  try dsimp only [colour, result1068]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1069_agree : tree1069 = literal1069 := by
  rw [tree1069_def]
  rfl
theorem node1069_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1069 live1069 coloured1069 = result1069 := by
  rw [tree1069_def]
  try dsimp only [colour, result1069]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1070_agree : tree1070 = literal1070 := by
  rw [tree1070_def, tree1068_agree, tree1069_agree]
  rfl
theorem node1070_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1070 live1070 coloured1070 = result1070 := by
  rw [tree1070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1068_eq
  unfold live1068 coloured1068 at child
  try dsimp only [live1070, coloured1070]
  rw [child]
  dsimp only [result1068]
  have child := node1069_eq
  unfold live1069 coloured1069 at child
  try dsimp only [live1070, coloured1070]
  rw [child]
  dsimp only [result1069]
  try dsimp only [colour, result1070]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1071_agree : tree1071 = literal1071 := by
  rw [tree1071_def]
  rfl
theorem node1071_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1071 live1071 coloured1071 = result1071 := by
  rw [tree1071_def]
  try dsimp only [colour, result1071]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1072_agree : tree1072 = literal1072 := by
  rw [tree1072_def, tree1070_agree, tree1071_agree]
  rfl
theorem node1072_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1072 live1072 coloured1072 = result1072 := by
  rw [tree1072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1070_eq
  unfold live1070 coloured1070 at child
  try dsimp only [live1072, coloured1072]
  rw [child]
  dsimp only [result1070]
  have child := node1071_eq
  unfold live1071 coloured1071 at child
  try dsimp only [live1072, coloured1072]
  rw [child]
  dsimp only [result1071]
  try dsimp only [colour, result1072]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1073_agree : tree1073 = literal1073 := by
  rw [tree1073_def]
  rfl
theorem node1073_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1073 live1073 coloured1073 = result1073 := by
  rw [tree1073_def]
  try dsimp only [colour, result1073]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1074_agree : tree1074 = literal1074 := by
  rw [tree1074_def, tree1072_agree, tree1073_agree]
  rfl
theorem node1074_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1074 live1074 coloured1074 = result1074 := by
  rw [tree1074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1072_eq
  unfold live1072 coloured1072 at child
  try dsimp only [live1074, coloured1074]
  rw [child]
  dsimp only [result1072]
  have child := node1073_eq
  unfold live1073 coloured1073 at child
  try dsimp only [live1074, coloured1074]
  rw [child]
  dsimp only [result1073]
  try dsimp only [colour, result1074]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1075_agree : tree1075 = literal1075 := by
  rw [tree1075_def]
  rfl
theorem node1075_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1075 live1075 coloured1075 = result1075 := by
  rw [tree1075_def]
  try dsimp only [colour, result1075]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1076_agree : tree1076 = literal1076 := by
  rw [tree1076_def, tree1074_agree, tree1075_agree]
  rfl
theorem node1076_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1076 live1076 coloured1076 = result1076 := by
  rw [tree1076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1074_eq
  unfold live1074 coloured1074 at child
  try dsimp only [live1076, coloured1076]
  rw [child]
  dsimp only [result1074]
  have child := node1075_eq
  unfold live1075 coloured1075 at child
  try dsimp only [live1076, coloured1076]
  rw [child]
  dsimp only [result1075]
  try dsimp only [colour, result1076]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1077_agree : tree1077 = literal1077 := by
  rw [tree1077_def]
  rfl
theorem node1077_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1077 live1077 coloured1077 = result1077 := by
  rw [tree1077_def]
  try dsimp only [colour, result1077]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1078_agree : tree1078 = literal1078 := by
  rw [tree1078_def, tree1076_agree, tree1077_agree]
  rfl
theorem node1078_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1078 live1078 coloured1078 = result1078 := by
  rw [tree1078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1076_eq
  unfold live1076 coloured1076 at child
  try dsimp only [live1078, coloured1078]
  rw [child]
  dsimp only [result1076]
  have child := node1077_eq
  unfold live1077 coloured1077 at child
  try dsimp only [live1078, coloured1078]
  rw [child]
  dsimp only [result1077]
  try dsimp only [colour, result1078]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1079_agree : tree1079 = literal1079 := by
  rw [tree1079_def]
  rfl
theorem node1079_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1079 live1079 coloured1079 = result1079 := by
  rw [tree1079_def]
  try dsimp only [colour, result1079]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1080_agree : tree1080 = literal1080 := by
  rw [tree1080_def, tree1078_agree, tree1079_agree]
  rfl
theorem node1080_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1080 live1080 coloured1080 = result1080 := by
  rw [tree1080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1078_eq
  unfold live1078 coloured1078 at child
  try dsimp only [live1080, coloured1080]
  rw [child]
  dsimp only [result1078]
  have child := node1079_eq
  unfold live1079 coloured1079 at child
  try dsimp only [live1080, coloured1080]
  rw [child]
  dsimp only [result1079]
  try dsimp only [colour, result1080]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1081_agree : tree1081 = literal1081 := by
  rw [tree1081_def]
  rfl
theorem node1081_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1081 live1081 coloured1081 = result1081 := by
  rw [tree1081_def]
  try dsimp only [colour, result1081]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1082_agree : tree1082 = literal1082 := by
  rw [tree1082_def]
  rfl
theorem node1082_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1082 live1082 coloured1082 = result1082 := by
  rw [tree1082_def]
  try dsimp only [colour, result1082]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1083_agree : tree1083 = literal1083 := by
  rw [tree1083_def, tree1081_agree, tree1082_agree]
  rfl
theorem node1083_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1083 live1083 coloured1083 = result1083 := by
  rw [tree1083_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1081_eq
  unfold live1081 coloured1081 at child
  try dsimp only [live1083, coloured1083]
  rw [child]
  dsimp only [result1081]
  have child := node1082_eq
  unfold live1082 coloured1082 at child
  try dsimp only [live1083, coloured1083]
  rw [child]
  dsimp only [result1082]
  try dsimp only [colour, result1083]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1084_agree : tree1084 = literal1084 := by
  rw [tree1084_def]
  rfl
theorem node1084_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1084 live1084 coloured1084 = result1084 := by
  rw [tree1084_def]
  try dsimp only [colour, result1084]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1085_agree : tree1085 = literal1085 := by
  rw [tree1085_def]
  rfl
theorem node1085_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1085 live1085 coloured1085 = result1085 := by
  rw [tree1085_def]
  try dsimp only [colour, result1085]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1086_agree : tree1086 = literal1086 := by
  rw [tree1086_def, tree1084_agree, tree1085_agree]
  rfl
theorem node1086_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1086 live1086 coloured1086 = result1086 := by
  rw [tree1086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1084_eq
  unfold live1084 coloured1084 at child
  try dsimp only [live1086, coloured1086]
  rw [child]
  dsimp only [result1084]
  have child := node1085_eq
  unfold live1085 coloured1085 at child
  try dsimp only [live1086, coloured1086]
  rw [child]
  dsimp only [result1085]
  try dsimp only [colour, result1086]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1087_agree : tree1087 = literal1087 := by
  rw [tree1087_def]
  rfl
theorem node1087_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1087 live1087 coloured1087 = result1087 := by
  rw [tree1087_def]
  try dsimp only [colour, result1087]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1088_agree : tree1088 = literal1088 := by
  rw [tree1088_def, tree1086_agree, tree1087_agree]
  rfl
theorem node1088_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1088 live1088 coloured1088 = result1088 := by
  rw [tree1088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1086_eq
  unfold live1086 coloured1086 at child
  try dsimp only [live1088, coloured1088]
  rw [child]
  dsimp only [result1086]
  have child := node1087_eq
  unfold live1087 coloured1087 at child
  try dsimp only [live1088, coloured1088]
  rw [child]
  dsimp only [result1087]
  try dsimp only [colour, result1088]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1089_agree : tree1089 = literal1089 := by
  rw [tree1089_def, tree1083_agree, tree1088_agree]
  rfl
theorem node1089_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1089 live1089 coloured1089 = result1089 := by
  rw [tree1089_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1083_eq
  unfold live1083 coloured1083 at child
  try dsimp only [live1089, coloured1089]
  rw [child]
  dsimp only [result1083]
  have child := node1088_eq
  unfold live1088 coloured1088 at child
  try dsimp only [live1089, coloured1089]
  rw [child]
  dsimp only [result1088]
  try dsimp only [colour, result1089]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1090_agree : tree1090 = literal1090 := by
  rw [tree1090_def, tree1080_agree, tree1089_agree]
  rfl
theorem node1090_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1090 live1090 coloured1090 = result1090 := by
  rw [tree1090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1080_eq
  unfold live1080 coloured1080 at child
  try dsimp only [live1090, coloured1090]
  rw [child]
  dsimp only [result1080]
  have child := node1089_eq
  unfold live1089 coloured1089 at child
  try dsimp only [live1090, coloured1090]
  rw [child]
  dsimp only [result1089]
  try dsimp only [colour, result1090]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1091_agree : tree1091 = literal1091 := by
  rw [tree1091_def]
  rfl
theorem node1091_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1091 live1091 coloured1091 = result1091 := by
  rw [tree1091_def]
  try dsimp only [colour, result1091]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1092_agree : tree1092 = literal1092 := by
  rw [tree1092_def, tree1090_agree, tree1091_agree]
  rfl
theorem node1092_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1092 live1092 coloured1092 = result1092 := by
  rw [tree1092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1090_eq
  unfold live1090 coloured1090 at child
  try dsimp only [live1092, coloured1092]
  rw [child]
  dsimp only [result1090]
  have child := node1091_eq
  unfold live1091 coloured1091 at child
  try dsimp only [live1092, coloured1092]
  rw [child]
  dsimp only [result1091]
  try dsimp only [colour, result1092]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1093_agree : tree1093 = literal1093 := by
  rw [tree1093_def]
  rfl
theorem node1093_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1093 live1093 coloured1093 = result1093 := by
  rw [tree1093_def]
  try dsimp only [colour, result1093]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1094_agree : tree1094 = literal1094 := by
  rw [tree1094_def, tree1092_agree, tree1093_agree]
  rfl
theorem node1094_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1094 live1094 coloured1094 = result1094 := by
  rw [tree1094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1092_eq
  unfold live1092 coloured1092 at child
  try dsimp only [live1094, coloured1094]
  rw [child]
  dsimp only [result1092]
  have child := node1093_eq
  unfold live1093 coloured1093 at child
  try dsimp only [live1094, coloured1094]
  rw [child]
  dsimp only [result1093]
  try dsimp only [colour, result1094]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1095_agree : tree1095 = literal1095 := by
  rw [tree1095_def]
  rfl
theorem node1095_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1095 live1095 coloured1095 = result1095 := by
  rw [tree1095_def]
  try dsimp only [colour, result1095]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1096_agree : tree1096 = literal1096 := by
  rw [tree1096_def, tree1094_agree, tree1095_agree]
  rfl
theorem node1096_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1096 live1096 coloured1096 = result1096 := by
  rw [tree1096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1094_eq
  unfold live1094 coloured1094 at child
  try dsimp only [live1096, coloured1096]
  rw [child]
  dsimp only [result1094]
  have child := node1095_eq
  unfold live1095 coloured1095 at child
  try dsimp only [live1096, coloured1096]
  rw [child]
  dsimp only [result1095]
  try dsimp only [colour, result1096]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1097_agree : tree1097 = literal1097 := by
  rw [tree1097_def]
  rfl
theorem node1097_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1097 live1097 coloured1097 = result1097 := by
  rw [tree1097_def]
  try dsimp only [colour, result1097]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1098_agree : tree1098 = literal1098 := by
  rw [tree1098_def, tree1096_agree, tree1097_agree]
  rfl
theorem node1098_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1098 live1098 coloured1098 = result1098 := by
  rw [tree1098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1096_eq
  unfold live1096 coloured1096 at child
  try dsimp only [live1098, coloured1098]
  rw [child]
  dsimp only [result1096]
  have child := node1097_eq
  unfold live1097 coloured1097 at child
  try dsimp only [live1098, coloured1098]
  rw [child]
  dsimp only [result1097]
  try dsimp only [colour, result1098]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1099_agree : tree1099 = literal1099 := by
  rw [tree1099_def]
  rfl
theorem node1099_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1099 live1099 coloured1099 = result1099 := by
  rw [tree1099_def]
  try dsimp only [colour, result1099]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1100_agree : tree1100 = literal1100 := by
  rw [tree1100_def, tree1098_agree, tree1099_agree]
  rfl
theorem node1100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1100 live1100 coloured1100 = result1100 := by
  rw [tree1100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1098_eq
  unfold live1098 coloured1098 at child
  try dsimp only [live1100, coloured1100]
  rw [child]
  dsimp only [result1098]
  have child := node1099_eq
  unfold live1099 coloured1099 at child
  try dsimp only [live1100, coloured1100]
  rw [child]
  dsimp only [result1099]
  try dsimp only [colour, result1100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1101_agree : tree1101 = literal1101 := by
  rw [tree1101_def]
  rfl
theorem node1101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1101 live1101 coloured1101 = result1101 := by
  rw [tree1101_def]
  try dsimp only [colour, result1101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1102_agree : tree1102 = literal1102 := by
  rw [tree1102_def, tree1100_agree, tree1101_agree]
  rfl
theorem node1102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1102 live1102 coloured1102 = result1102 := by
  rw [tree1102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1100_eq
  unfold live1100 coloured1100 at child
  try dsimp only [live1102, coloured1102]
  rw [child]
  dsimp only [result1100]
  have child := node1101_eq
  unfold live1101 coloured1101 at child
  try dsimp only [live1102, coloured1102]
  rw [child]
  dsimp only [result1101]
  try dsimp only [colour, result1102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1103_agree : tree1103 = literal1103 := by
  rw [tree1103_def]
  rfl
theorem node1103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1103 live1103 coloured1103 = result1103 := by
  rw [tree1103_def]
  try dsimp only [colour, result1103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1104_agree : tree1104 = literal1104 := by
  rw [tree1104_def, tree1102_agree, tree1103_agree]
  rfl
theorem node1104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1104 live1104 coloured1104 = result1104 := by
  rw [tree1104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1102_eq
  unfold live1102 coloured1102 at child
  try dsimp only [live1104, coloured1104]
  rw [child]
  dsimp only [result1102]
  have child := node1103_eq
  unfold live1103 coloured1103 at child
  try dsimp only [live1104, coloured1104]
  rw [child]
  dsimp only [result1103]
  try dsimp only [colour, result1104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1105_agree : tree1105 = literal1105 := by
  rw [tree1105_def]
  rfl
theorem node1105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1105 live1105 coloured1105 = result1105 := by
  rw [tree1105_def]
  try dsimp only [colour, result1105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1106_agree : tree1106 = literal1106 := by
  rw [tree1106_def, tree1104_agree, tree1105_agree]
  rfl
theorem node1106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1106 live1106 coloured1106 = result1106 := by
  rw [tree1106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1104_eq
  unfold live1104 coloured1104 at child
  try dsimp only [live1106, coloured1106]
  rw [child]
  dsimp only [result1104]
  have child := node1105_eq
  unfold live1105 coloured1105 at child
  try dsimp only [live1106, coloured1106]
  rw [child]
  dsimp only [result1105]
  try dsimp only [colour, result1106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1107_agree : tree1107 = literal1107 := by
  rw [tree1107_def]
  rfl
theorem node1107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1107 live1107 coloured1107 = result1107 := by
  rw [tree1107_def]
  try dsimp only [colour, result1107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1108_agree : tree1108 = literal1108 := by
  rw [tree1108_def, tree1106_agree, tree1107_agree]
  rfl
theorem node1108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1108 live1108 coloured1108 = result1108 := by
  rw [tree1108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1106_eq
  unfold live1106 coloured1106 at child
  try dsimp only [live1108, coloured1108]
  rw [child]
  dsimp only [result1106]
  have child := node1107_eq
  unfold live1107 coloured1107 at child
  try dsimp only [live1108, coloured1108]
  rw [child]
  dsimp only [result1107]
  try dsimp only [colour, result1108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1109_agree : tree1109 = literal1109 := by
  rw [tree1109_def]
  rfl
theorem node1109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1109 live1109 coloured1109 = result1109 := by
  rw [tree1109_def]
  try dsimp only [colour, result1109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1110_agree : tree1110 = literal1110 := by
  rw [tree1110_def, tree1108_agree, tree1109_agree]
  rfl
theorem node1110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1110 live1110 coloured1110 = result1110 := by
  rw [tree1110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1108_eq
  unfold live1108 coloured1108 at child
  try dsimp only [live1110, coloured1110]
  rw [child]
  dsimp only [result1108]
  have child := node1109_eq
  unfold live1109 coloured1109 at child
  try dsimp only [live1110, coloured1110]
  rw [child]
  dsimp only [result1109]
  try dsimp only [colour, result1110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1111_agree : tree1111 = literal1111 := by
  rw [tree1111_def]
  rfl
theorem node1111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1111 live1111 coloured1111 = result1111 := by
  rw [tree1111_def]
  try dsimp only [colour, result1111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1112_agree : tree1112 = literal1112 := by
  rw [tree1112_def, tree1110_agree, tree1111_agree]
  rfl
theorem node1112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1112 live1112 coloured1112 = result1112 := by
  rw [tree1112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1110_eq
  unfold live1110 coloured1110 at child
  try dsimp only [live1112, coloured1112]
  rw [child]
  dsimp only [result1110]
  have child := node1111_eq
  unfold live1111 coloured1111 at child
  try dsimp only [live1112, coloured1112]
  rw [child]
  dsimp only [result1111]
  try dsimp only [colour, result1112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1113_agree : tree1113 = literal1113 := by
  rw [tree1113_def]
  rfl
theorem node1113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1113 live1113 coloured1113 = result1113 := by
  rw [tree1113_def]
  try dsimp only [colour, result1113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1114_agree : tree1114 = literal1114 := by
  rw [tree1114_def, tree1112_agree, tree1113_agree]
  rfl
theorem node1114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1114 live1114 coloured1114 = result1114 := by
  rw [tree1114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1112_eq
  unfold live1112 coloured1112 at child
  try dsimp only [live1114, coloured1114]
  rw [child]
  dsimp only [result1112]
  have child := node1113_eq
  unfold live1113 coloured1113 at child
  try dsimp only [live1114, coloured1114]
  rw [child]
  dsimp only [result1113]
  try dsimp only [colour, result1114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1115_agree : tree1115 = literal1115 := by
  rw [tree1115_def]
  rfl
theorem node1115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1115 live1115 coloured1115 = result1115 := by
  rw [tree1115_def]
  try dsimp only [colour, result1115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1116_agree : tree1116 = literal1116 := by
  rw [tree1116_def, tree1114_agree, tree1115_agree]
  rfl
theorem node1116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1116 live1116 coloured1116 = result1116 := by
  rw [tree1116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1114_eq
  unfold live1114 coloured1114 at child
  try dsimp only [live1116, coloured1116]
  rw [child]
  dsimp only [result1114]
  have child := node1115_eq
  unfold live1115 coloured1115 at child
  try dsimp only [live1116, coloured1116]
  rw [child]
  dsimp only [result1115]
  try dsimp only [colour, result1116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1117_agree : tree1117 = literal1117 := by
  rw [tree1117_def]
  rfl
theorem node1117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1117 live1117 coloured1117 = result1117 := by
  rw [tree1117_def]
  try dsimp only [colour, result1117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1118_agree : tree1118 = literal1118 := by
  rw [tree1118_def, tree1116_agree, tree1117_agree]
  rfl
theorem node1118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1118 live1118 coloured1118 = result1118 := by
  rw [tree1118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1116_eq
  unfold live1116 coloured1116 at child
  try dsimp only [live1118, coloured1118]
  rw [child]
  dsimp only [result1116]
  have child := node1117_eq
  unfold live1117 coloured1117 at child
  try dsimp only [live1118, coloured1118]
  rw [child]
  dsimp only [result1117]
  try dsimp only [colour, result1118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1119_agree : tree1119 = literal1119 := by
  rw [tree1119_def]
  rfl
theorem node1119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1119 live1119 coloured1119 = result1119 := by
  rw [tree1119_def]
  try dsimp only [colour, result1119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1120_agree : tree1120 = literal1120 := by
  rw [tree1120_def, tree1118_agree, tree1119_agree]
  rfl
theorem node1120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1120 live1120 coloured1120 = result1120 := by
  rw [tree1120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1118_eq
  unfold live1118 coloured1118 at child
  try dsimp only [live1120, coloured1120]
  rw [child]
  dsimp only [result1118]
  have child := node1119_eq
  unfold live1119 coloured1119 at child
  try dsimp only [live1120, coloured1120]
  rw [child]
  dsimp only [result1119]
  try dsimp only [colour, result1120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1121_agree : tree1121 = literal1121 := by
  rw [tree1121_def]
  rfl
theorem node1121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1121 live1121 coloured1121 = result1121 := by
  rw [tree1121_def]
  try dsimp only [colour, result1121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1122_agree : tree1122 = literal1122 := by
  rw [tree1122_def, tree1120_agree, tree1121_agree]
  rfl
theorem node1122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1122 live1122 coloured1122 = result1122 := by
  rw [tree1122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1120_eq
  unfold live1120 coloured1120 at child
  try dsimp only [live1122, coloured1122]
  rw [child]
  dsimp only [result1120]
  have child := node1121_eq
  unfold live1121 coloured1121 at child
  try dsimp only [live1122, coloured1122]
  rw [child]
  dsimp only [result1121]
  try dsimp only [colour, result1122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1123_agree : tree1123 = literal1123 := by
  rw [tree1123_def]
  rfl
theorem node1123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1123 live1123 coloured1123 = result1123 := by
  rw [tree1123_def]
  try dsimp only [colour, result1123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1124_agree : tree1124 = literal1124 := by
  rw [tree1124_def, tree1122_agree, tree1123_agree]
  rfl
theorem node1124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1124 live1124 coloured1124 = result1124 := by
  rw [tree1124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1122_eq
  unfold live1122 coloured1122 at child
  try dsimp only [live1124, coloured1124]
  rw [child]
  dsimp only [result1122]
  have child := node1123_eq
  unfold live1123 coloured1123 at child
  try dsimp only [live1124, coloured1124]
  rw [child]
  dsimp only [result1123]
  try dsimp only [colour, result1124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1125_agree : tree1125 = literal1125 := by
  rw [tree1125_def]
  rfl
theorem node1125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1125 live1125 coloured1125 = result1125 := by
  rw [tree1125_def]
  try dsimp only [colour, result1125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1126_agree : tree1126 = literal1126 := by
  rw [tree1126_def, tree1124_agree, tree1125_agree]
  rfl
theorem node1126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1126 live1126 coloured1126 = result1126 := by
  rw [tree1126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1124_eq
  unfold live1124 coloured1124 at child
  try dsimp only [live1126, coloured1126]
  rw [child]
  dsimp only [result1124]
  have child := node1125_eq
  unfold live1125 coloured1125 at child
  try dsimp only [live1126, coloured1126]
  rw [child]
  dsimp only [result1125]
  try dsimp only [colour, result1126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1127_agree : tree1127 = literal1127 := by
  rw [tree1127_def]
  rfl
theorem node1127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1127 live1127 coloured1127 = result1127 := by
  rw [tree1127_def]
  try dsimp only [colour, result1127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1128_agree : tree1128 = literal1128 := by
  rw [tree1128_def, tree1126_agree, tree1127_agree]
  rfl
theorem node1128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1128 live1128 coloured1128 = result1128 := by
  rw [tree1128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1126_eq
  unfold live1126 coloured1126 at child
  try dsimp only [live1128, coloured1128]
  rw [child]
  dsimp only [result1126]
  have child := node1127_eq
  unfold live1127 coloured1127 at child
  try dsimp only [live1128, coloured1128]
  rw [child]
  dsimp only [result1127]
  try dsimp only [colour, result1128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1129_agree : tree1129 = literal1129 := by
  rw [tree1129_def]
  rfl
theorem node1129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1129 live1129 coloured1129 = result1129 := by
  rw [tree1129_def]
  try dsimp only [colour, result1129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1130_agree : tree1130 = literal1130 := by
  rw [tree1130_def, tree1128_agree, tree1129_agree]
  rfl
theorem node1130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1130 live1130 coloured1130 = result1130 := by
  rw [tree1130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1128_eq
  unfold live1128 coloured1128 at child
  try dsimp only [live1130, coloured1130]
  rw [child]
  dsimp only [result1128]
  have child := node1129_eq
  unfold live1129 coloured1129 at child
  try dsimp only [live1130, coloured1130]
  rw [child]
  dsimp only [result1129]
  try dsimp only [colour, result1130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1131_agree : tree1131 = literal1131 := by
  rw [tree1131_def]
  rfl
theorem node1131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1131 live1131 coloured1131 = result1131 := by
  rw [tree1131_def]
  try dsimp only [colour, result1131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1132_agree : tree1132 = literal1132 := by
  rw [tree1132_def]
  rfl
theorem node1132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1132 live1132 coloured1132 = result1132 := by
  rw [tree1132_def]
  try dsimp only [colour, result1132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1133_agree : tree1133 = literal1133 := by
  rw [tree1133_def, tree1131_agree, tree1132_agree]
  rfl
theorem node1133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1133 live1133 coloured1133 = result1133 := by
  rw [tree1133_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1131_eq
  unfold live1131 coloured1131 at child
  try dsimp only [live1133, coloured1133]
  rw [child]
  dsimp only [result1131]
  have child := node1132_eq
  unfold live1132 coloured1132 at child
  try dsimp only [live1133, coloured1133]
  rw [child]
  dsimp only [result1132]
  try dsimp only [colour, result1133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1134_agree : tree1134 = literal1134 := by
  rw [tree1134_def]
  rfl
theorem node1134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1134 live1134 coloured1134 = result1134 := by
  rw [tree1134_def]
  try dsimp only [colour, result1134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1135_agree : tree1135 = literal1135 := by
  rw [tree1135_def]
  rfl
theorem node1135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1135 live1135 coloured1135 = result1135 := by
  rw [tree1135_def]
  try dsimp only [colour, result1135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1136_agree : tree1136 = literal1136 := by
  rw [tree1136_def, tree1134_agree, tree1135_agree]
  rfl
theorem node1136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1136 live1136 coloured1136 = result1136 := by
  rw [tree1136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1134_eq
  unfold live1134 coloured1134 at child
  try dsimp only [live1136, coloured1136]
  rw [child]
  dsimp only [result1134]
  have child := node1135_eq
  unfold live1135 coloured1135 at child
  try dsimp only [live1136, coloured1136]
  rw [child]
  dsimp only [result1135]
  try dsimp only [colour, result1136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1137_agree : tree1137 = literal1137 := by
  rw [tree1137_def]
  rfl
theorem node1137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1137 live1137 coloured1137 = result1137 := by
  rw [tree1137_def]
  try dsimp only [colour, result1137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1138_agree : tree1138 = literal1138 := by
  rw [tree1138_def, tree1136_agree, tree1137_agree]
  rfl
theorem node1138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1138 live1138 coloured1138 = result1138 := by
  rw [tree1138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1136_eq
  unfold live1136 coloured1136 at child
  try dsimp only [live1138, coloured1138]
  rw [child]
  dsimp only [result1136]
  have child := node1137_eq
  unfold live1137 coloured1137 at child
  try dsimp only [live1138, coloured1138]
  rw [child]
  dsimp only [result1137]
  try dsimp only [colour, result1138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1139_agree : tree1139 = literal1139 := by
  rw [tree1139_def, tree1133_agree, tree1138_agree]
  rfl
theorem node1139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1139 live1139 coloured1139 = result1139 := by
  rw [tree1139_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1133_eq
  unfold live1133 coloured1133 at child
  try dsimp only [live1139, coloured1139]
  rw [child]
  dsimp only [result1133]
  have child := node1138_eq
  unfold live1138 coloured1138 at child
  try dsimp only [live1139, coloured1139]
  rw [child]
  dsimp only [result1138]
  try dsimp only [colour, result1139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1140_agree : tree1140 = literal1140 := by
  rw [tree1140_def, tree1130_agree, tree1139_agree]
  rfl
theorem node1140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1140 live1140 coloured1140 = result1140 := by
  rw [tree1140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1130_eq
  unfold live1130 coloured1130 at child
  try dsimp only [live1140, coloured1140]
  rw [child]
  dsimp only [result1130]
  have child := node1139_eq
  unfold live1139 coloured1139 at child
  try dsimp only [live1140, coloured1140]
  rw [child]
  dsimp only [result1139]
  try dsimp only [colour, result1140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1141_agree : tree1141 = literal1141 := by
  rw [tree1141_def]
  rfl
theorem node1141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1141 live1141 coloured1141 = result1141 := by
  rw [tree1141_def]
  try dsimp only [colour, result1141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1142_agree : tree1142 = literal1142 := by
  rw [tree1142_def, tree1140_agree, tree1141_agree]
  rfl
theorem node1142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1142 live1142 coloured1142 = result1142 := by
  rw [tree1142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1140_eq
  unfold live1140 coloured1140 at child
  try dsimp only [live1142, coloured1142]
  rw [child]
  dsimp only [result1140]
  have child := node1141_eq
  unfold live1141 coloured1141 at child
  try dsimp only [live1142, coloured1142]
  rw [child]
  dsimp only [result1141]
  try dsimp only [colour, result1142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1143_agree : tree1143 = literal1143 := by
  rw [tree1143_def]
  rfl
theorem node1143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1143 live1143 coloured1143 = result1143 := by
  rw [tree1143_def]
  try dsimp only [colour, result1143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1144_agree : tree1144 = literal1144 := by
  rw [tree1144_def, tree1142_agree, tree1143_agree]
  rfl
theorem node1144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1144 live1144 coloured1144 = result1144 := by
  rw [tree1144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1142_eq
  unfold live1142 coloured1142 at child
  try dsimp only [live1144, coloured1144]
  rw [child]
  dsimp only [result1142]
  have child := node1143_eq
  unfold live1143 coloured1143 at child
  try dsimp only [live1144, coloured1144]
  rw [child]
  dsimp only [result1143]
  try dsimp only [colour, result1144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1145_agree : tree1145 = literal1145 := by
  rw [tree1145_def]
  rfl
theorem node1145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1145 live1145 coloured1145 = result1145 := by
  rw [tree1145_def]
  try dsimp only [colour, result1145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1146_agree : tree1146 = literal1146 := by
  rw [tree1146_def, tree1144_agree, tree1145_agree]
  rfl
theorem node1146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1146 live1146 coloured1146 = result1146 := by
  rw [tree1146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1144_eq
  unfold live1144 coloured1144 at child
  try dsimp only [live1146, coloured1146]
  rw [child]
  dsimp only [result1144]
  have child := node1145_eq
  unfold live1145 coloured1145 at child
  try dsimp only [live1146, coloured1146]
  rw [child]
  dsimp only [result1145]
  try dsimp only [colour, result1146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1147_agree : tree1147 = literal1147 := by
  rw [tree1147_def]
  rfl
theorem node1147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1147 live1147 coloured1147 = result1147 := by
  rw [tree1147_def]
  try dsimp only [colour, result1147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1148_agree : tree1148 = literal1148 := by
  rw [tree1148_def, tree1146_agree, tree1147_agree]
  rfl
theorem node1148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1148 live1148 coloured1148 = result1148 := by
  rw [tree1148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1146_eq
  unfold live1146 coloured1146 at child
  try dsimp only [live1148, coloured1148]
  rw [child]
  dsimp only [result1146]
  have child := node1147_eq
  unfold live1147 coloured1147 at child
  try dsimp only [live1148, coloured1148]
  rw [child]
  dsimp only [result1147]
  try dsimp only [colour, result1148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1149_agree : tree1149 = literal1149 := by
  rw [tree1149_def]
  rfl
theorem node1149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1149 live1149 coloured1149 = result1149 := by
  rw [tree1149_def]
  try dsimp only [colour, result1149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1150_agree : tree1150 = literal1150 := by
  rw [tree1150_def, tree1148_agree, tree1149_agree]
  rfl
theorem node1150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1150 live1150 coloured1150 = result1150 := by
  rw [tree1150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1148_eq
  unfold live1148 coloured1148 at child
  try dsimp only [live1150, coloured1150]
  rw [child]
  dsimp only [result1148]
  have child := node1149_eq
  unfold live1149 coloured1149 at child
  try dsimp only [live1150, coloured1150]
  rw [child]
  dsimp only [result1149]
  try dsimp only [colour, result1150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1151_agree : tree1151 = literal1151 := by
  rw [tree1151_def]
  rfl
theorem node1151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1151 live1151 coloured1151 = result1151 := by
  rw [tree1151_def]
  try dsimp only [colour, result1151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages233
