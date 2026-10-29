import InitECandidate.Proofs.ClashStages713.Proof104
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree10080_agree : tree10080 = literal10080 := by
  rw [tree10080_def, tree10078_agree, tree10079_agree]
  rfl
theorem node10080_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10080 live10080 coloured10080 = result10080 := by
  rw [tree10080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10078_eq
  unfold live10078 coloured10078 at child
  try dsimp only [live10080, coloured10080]
  rw [child]
  dsimp only [result10078]
  have child := node10079_eq
  unfold live10079 coloured10079 at child
  try dsimp only [live10080, coloured10080]
  rw [child]
  dsimp only [result10079]
  try dsimp only [colour, result10080]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10081_agree : tree10081 = literal10081 := by
  rw [tree10081_def]
  rfl
theorem node10081_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10081 live10081 coloured10081 = result10081 := by
  rw [tree10081_def]
  try dsimp only [colour, result10081]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10082_agree : tree10082 = literal10082 := by
  rw [tree10082_def, tree10080_agree, tree10081_agree]
  rfl
theorem node10082_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10082 live10082 coloured10082 = result10082 := by
  rw [tree10082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10080_eq
  unfold live10080 coloured10080 at child
  try dsimp only [live10082, coloured10082]
  rw [child]
  dsimp only [result10080]
  have child := node10081_eq
  unfold live10081 coloured10081 at child
  try dsimp only [live10082, coloured10082]
  rw [child]
  dsimp only [result10081]
  try dsimp only [colour, result10082]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10083_agree : tree10083 = literal10083 := by
  rw [tree10083_def]
  rfl
theorem node10083_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10083 live10083 coloured10083 = result10083 := by
  rw [tree10083_def]
  try dsimp only [colour, result10083]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10084_agree : tree10084 = literal10084 := by
  rw [tree10084_def, tree10082_agree, tree10083_agree]
  rfl
theorem node10084_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10084 live10084 coloured10084 = result10084 := by
  rw [tree10084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10082_eq
  unfold live10082 coloured10082 at child
  try dsimp only [live10084, coloured10084]
  rw [child]
  dsimp only [result10082]
  have child := node10083_eq
  unfold live10083 coloured10083 at child
  try dsimp only [live10084, coloured10084]
  rw [child]
  dsimp only [result10083]
  try dsimp only [colour, result10084]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10085_agree : tree10085 = literal10085 := by
  rw [tree10085_def]
  rfl
theorem node10085_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10085 live10085 coloured10085 = result10085 := by
  rw [tree10085_def]
  try dsimp only [colour, result10085]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10086_agree : tree10086 = literal10086 := by
  rw [tree10086_def, tree10084_agree, tree10085_agree]
  rfl
theorem node10086_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10086 live10086 coloured10086 = result10086 := by
  rw [tree10086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10084_eq
  unfold live10084 coloured10084 at child
  try dsimp only [live10086, coloured10086]
  rw [child]
  dsimp only [result10084]
  have child := node10085_eq
  unfold live10085 coloured10085 at child
  try dsimp only [live10086, coloured10086]
  rw [child]
  dsimp only [result10085]
  try dsimp only [colour, result10086]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10087_agree : tree10087 = literal10087 := by
  rw [tree10087_def]
  rfl
theorem node10087_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10087 live10087 coloured10087 = result10087 := by
  rw [tree10087_def]
  try dsimp only [colour, result10087]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10088_agree : tree10088 = literal10088 := by
  rw [tree10088_def, tree10086_agree, tree10087_agree]
  rfl
theorem node10088_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10088 live10088 coloured10088 = result10088 := by
  rw [tree10088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10086_eq
  unfold live10086 coloured10086 at child
  try dsimp only [live10088, coloured10088]
  rw [child]
  dsimp only [result10086]
  have child := node10087_eq
  unfold live10087 coloured10087 at child
  try dsimp only [live10088, coloured10088]
  rw [child]
  dsimp only [result10087]
  try dsimp only [colour, result10088]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10089_agree : tree10089 = literal10089 := by
  rw [tree10089_def]
  rfl
theorem node10089_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10089 live10089 coloured10089 = result10089 := by
  rw [tree10089_def]
  try dsimp only [colour, result10089]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10090_agree : tree10090 = literal10090 := by
  rw [tree10090_def, tree10088_agree, tree10089_agree]
  rfl
theorem node10090_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10090 live10090 coloured10090 = result10090 := by
  rw [tree10090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10088_eq
  unfold live10088 coloured10088 at child
  try dsimp only [live10090, coloured10090]
  rw [child]
  dsimp only [result10088]
  have child := node10089_eq
  unfold live10089 coloured10089 at child
  try dsimp only [live10090, coloured10090]
  rw [child]
  dsimp only [result10089]
  try dsimp only [colour, result10090]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10091_agree : tree10091 = literal10091 := by
  rw [tree10091_def]
  rfl
theorem node10091_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10091 live10091 coloured10091 = result10091 := by
  rw [tree10091_def]
  try dsimp only [colour, result10091]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10092_agree : tree10092 = literal10092 := by
  rw [tree10092_def, tree10090_agree, tree10091_agree]
  rfl
theorem node10092_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10092 live10092 coloured10092 = result10092 := by
  rw [tree10092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10090_eq
  unfold live10090 coloured10090 at child
  try dsimp only [live10092, coloured10092]
  rw [child]
  dsimp only [result10090]
  have child := node10091_eq
  unfold live10091 coloured10091 at child
  try dsimp only [live10092, coloured10092]
  rw [child]
  dsimp only [result10091]
  try dsimp only [colour, result10092]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10093_agree : tree10093 = literal10093 := by
  rw [tree10093_def]
  rfl
theorem node10093_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10093 live10093 coloured10093 = result10093 := by
  rw [tree10093_def]
  try dsimp only [colour, result10093]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10094_agree : tree10094 = literal10094 := by
  rw [tree10094_def, tree10092_agree, tree10093_agree]
  rfl
theorem node10094_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10094 live10094 coloured10094 = result10094 := by
  rw [tree10094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10092_eq
  unfold live10092 coloured10092 at child
  try dsimp only [live10094, coloured10094]
  rw [child]
  dsimp only [result10092]
  have child := node10093_eq
  unfold live10093 coloured10093 at child
  try dsimp only [live10094, coloured10094]
  rw [child]
  dsimp only [result10093]
  try dsimp only [colour, result10094]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10095_agree : tree10095 = literal10095 := by
  rw [tree10095_def]
  rfl
theorem node10095_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10095 live10095 coloured10095 = result10095 := by
  rw [tree10095_def]
  try dsimp only [colour, result10095]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10096_agree : tree10096 = literal10096 := by
  rw [tree10096_def, tree10094_agree, tree10095_agree]
  rfl
theorem node10096_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10096 live10096 coloured10096 = result10096 := by
  rw [tree10096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10094_eq
  unfold live10094 coloured10094 at child
  try dsimp only [live10096, coloured10096]
  rw [child]
  dsimp only [result10094]
  have child := node10095_eq
  unfold live10095 coloured10095 at child
  try dsimp only [live10096, coloured10096]
  rw [child]
  dsimp only [result10095]
  try dsimp only [colour, result10096]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10097_agree : tree10097 = literal10097 := by
  rw [tree10097_def]
  rfl
theorem node10097_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10097 live10097 coloured10097 = result10097 := by
  rw [tree10097_def]
  try dsimp only [colour, result10097]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10098_agree : tree10098 = literal10098 := by
  rw [tree10098_def, tree10096_agree, tree10097_agree]
  rfl
theorem node10098_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10098 live10098 coloured10098 = result10098 := by
  rw [tree10098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10096_eq
  unfold live10096 coloured10096 at child
  try dsimp only [live10098, coloured10098]
  rw [child]
  dsimp only [result10096]
  have child := node10097_eq
  unfold live10097 coloured10097 at child
  try dsimp only [live10098, coloured10098]
  rw [child]
  dsimp only [result10097]
  try dsimp only [colour, result10098]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10099_agree : tree10099 = literal10099 := by
  rw [tree10099_def]
  rfl
theorem node10099_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10099 live10099 coloured10099 = result10099 := by
  rw [tree10099_def]
  try dsimp only [colour, result10099]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10100_agree : tree10100 = literal10100 := by
  rw [tree10100_def, tree10098_agree, tree10099_agree]
  rfl
theorem node10100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10100 live10100 coloured10100 = result10100 := by
  rw [tree10100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10098_eq
  unfold live10098 coloured10098 at child
  try dsimp only [live10100, coloured10100]
  rw [child]
  dsimp only [result10098]
  have child := node10099_eq
  unfold live10099 coloured10099 at child
  try dsimp only [live10100, coloured10100]
  rw [child]
  dsimp only [result10099]
  try dsimp only [colour, result10100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10101_agree : tree10101 = literal10101 := by
  rw [tree10101_def]
  rfl
theorem node10101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10101 live10101 coloured10101 = result10101 := by
  rw [tree10101_def]
  try dsimp only [colour, result10101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10102_agree : tree10102 = literal10102 := by
  rw [tree10102_def, tree10100_agree, tree10101_agree]
  rfl
theorem node10102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10102 live10102 coloured10102 = result10102 := by
  rw [tree10102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10100_eq
  unfold live10100 coloured10100 at child
  try dsimp only [live10102, coloured10102]
  rw [child]
  dsimp only [result10100]
  have child := node10101_eq
  unfold live10101 coloured10101 at child
  try dsimp only [live10102, coloured10102]
  rw [child]
  dsimp only [result10101]
  try dsimp only [colour, result10102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10103_agree : tree10103 = literal10103 := by
  rw [tree10103_def]
  rfl
theorem node10103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10103 live10103 coloured10103 = result10103 := by
  rw [tree10103_def]
  try dsimp only [colour, result10103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10104_agree : tree10104 = literal10104 := by
  rw [tree10104_def, tree10102_agree, tree10103_agree]
  rfl
theorem node10104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10104 live10104 coloured10104 = result10104 := by
  rw [tree10104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10102_eq
  unfold live10102 coloured10102 at child
  try dsimp only [live10104, coloured10104]
  rw [child]
  dsimp only [result10102]
  have child := node10103_eq
  unfold live10103 coloured10103 at child
  try dsimp only [live10104, coloured10104]
  rw [child]
  dsimp only [result10103]
  try dsimp only [colour, result10104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10105_agree : tree10105 = literal10105 := by
  rw [tree10105_def]
  rfl
theorem node10105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10105 live10105 coloured10105 = result10105 := by
  rw [tree10105_def]
  try dsimp only [colour, result10105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10106_agree : tree10106 = literal10106 := by
  rw [tree10106_def, tree10104_agree, tree10105_agree]
  rfl
theorem node10106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10106 live10106 coloured10106 = result10106 := by
  rw [tree10106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10104_eq
  unfold live10104 coloured10104 at child
  try dsimp only [live10106, coloured10106]
  rw [child]
  dsimp only [result10104]
  have child := node10105_eq
  unfold live10105 coloured10105 at child
  try dsimp only [live10106, coloured10106]
  rw [child]
  dsimp only [result10105]
  try dsimp only [colour, result10106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10107_agree : tree10107 = literal10107 := by
  rw [tree10107_def]
  rfl
theorem node10107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10107 live10107 coloured10107 = result10107 := by
  rw [tree10107_def]
  try dsimp only [colour, result10107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10108_agree : tree10108 = literal10108 := by
  rw [tree10108_def, tree10106_agree, tree10107_agree]
  rfl
theorem node10108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10108 live10108 coloured10108 = result10108 := by
  rw [tree10108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10106_eq
  unfold live10106 coloured10106 at child
  try dsimp only [live10108, coloured10108]
  rw [child]
  dsimp only [result10106]
  have child := node10107_eq
  unfold live10107 coloured10107 at child
  try dsimp only [live10108, coloured10108]
  rw [child]
  dsimp only [result10107]
  try dsimp only [colour, result10108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10109_agree : tree10109 = literal10109 := by
  rw [tree10109_def]
  rfl
theorem node10109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10109 live10109 coloured10109 = result10109 := by
  rw [tree10109_def]
  try dsimp only [colour, result10109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10110_agree : tree10110 = literal10110 := by
  rw [tree10110_def, tree10108_agree, tree10109_agree]
  rfl
theorem node10110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10110 live10110 coloured10110 = result10110 := by
  rw [tree10110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10108_eq
  unfold live10108 coloured10108 at child
  try dsimp only [live10110, coloured10110]
  rw [child]
  dsimp only [result10108]
  have child := node10109_eq
  unfold live10109 coloured10109 at child
  try dsimp only [live10110, coloured10110]
  rw [child]
  dsimp only [result10109]
  try dsimp only [colour, result10110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10111_agree : tree10111 = literal10111 := by
  rw [tree10111_def]
  rfl
theorem node10111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10111 live10111 coloured10111 = result10111 := by
  rw [tree10111_def]
  try dsimp only [colour, result10111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10112_agree : tree10112 = literal10112 := by
  rw [tree10112_def, tree10110_agree, tree10111_agree]
  rfl
theorem node10112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10112 live10112 coloured10112 = result10112 := by
  rw [tree10112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10110_eq
  unfold live10110 coloured10110 at child
  try dsimp only [live10112, coloured10112]
  rw [child]
  dsimp only [result10110]
  have child := node10111_eq
  unfold live10111 coloured10111 at child
  try dsimp only [live10112, coloured10112]
  rw [child]
  dsimp only [result10111]
  try dsimp only [colour, result10112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10113_agree : tree10113 = literal10113 := by
  rw [tree10113_def]
  rfl
theorem node10113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10113 live10113 coloured10113 = result10113 := by
  rw [tree10113_def]
  try dsimp only [colour, result10113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10114_agree : tree10114 = literal10114 := by
  rw [tree10114_def, tree10112_agree, tree10113_agree]
  rfl
theorem node10114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10114 live10114 coloured10114 = result10114 := by
  rw [tree10114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10112_eq
  unfold live10112 coloured10112 at child
  try dsimp only [live10114, coloured10114]
  rw [child]
  dsimp only [result10112]
  have child := node10113_eq
  unfold live10113 coloured10113 at child
  try dsimp only [live10114, coloured10114]
  rw [child]
  dsimp only [result10113]
  try dsimp only [colour, result10114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10115_agree : tree10115 = literal10115 := by
  rw [tree10115_def]
  rfl
theorem node10115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10115 live10115 coloured10115 = result10115 := by
  rw [tree10115_def]
  try dsimp only [colour, result10115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10116_agree : tree10116 = literal10116 := by
  rw [tree10116_def, tree10114_agree, tree10115_agree]
  rfl
theorem node10116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10116 live10116 coloured10116 = result10116 := by
  rw [tree10116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10114_eq
  unfold live10114 coloured10114 at child
  try dsimp only [live10116, coloured10116]
  rw [child]
  dsimp only [result10114]
  have child := node10115_eq
  unfold live10115 coloured10115 at child
  try dsimp only [live10116, coloured10116]
  rw [child]
  dsimp only [result10115]
  try dsimp only [colour, result10116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10117_agree : tree10117 = literal10117 := by
  rw [tree10117_def]
  rfl
theorem node10117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10117 live10117 coloured10117 = result10117 := by
  rw [tree10117_def]
  try dsimp only [colour, result10117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10118_agree : tree10118 = literal10118 := by
  rw [tree10118_def, tree10116_agree, tree10117_agree]
  rfl
theorem node10118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10118 live10118 coloured10118 = result10118 := by
  rw [tree10118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10116_eq
  unfold live10116 coloured10116 at child
  try dsimp only [live10118, coloured10118]
  rw [child]
  dsimp only [result10116]
  have child := node10117_eq
  unfold live10117 coloured10117 at child
  try dsimp only [live10118, coloured10118]
  rw [child]
  dsimp only [result10117]
  try dsimp only [colour, result10118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10119_agree : tree10119 = literal10119 := by
  rw [tree10119_def]
  rfl
theorem node10119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10119 live10119 coloured10119 = result10119 := by
  rw [tree10119_def]
  try dsimp only [colour, result10119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10120_agree : tree10120 = literal10120 := by
  rw [tree10120_def, tree10118_agree, tree10119_agree]
  rfl
theorem node10120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10120 live10120 coloured10120 = result10120 := by
  rw [tree10120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10118_eq
  unfold live10118 coloured10118 at child
  try dsimp only [live10120, coloured10120]
  rw [child]
  dsimp only [result10118]
  have child := node10119_eq
  unfold live10119 coloured10119 at child
  try dsimp only [live10120, coloured10120]
  rw [child]
  dsimp only [result10119]
  try dsimp only [colour, result10120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10121_agree : tree10121 = literal10121 := by
  rw [tree10121_def]
  rfl
theorem node10121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10121 live10121 coloured10121 = result10121 := by
  rw [tree10121_def]
  try dsimp only [colour, result10121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10122_agree : tree10122 = literal10122 := by
  rw [tree10122_def, tree10120_agree, tree10121_agree]
  rfl
theorem node10122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10122 live10122 coloured10122 = result10122 := by
  rw [tree10122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10120_eq
  unfold live10120 coloured10120 at child
  try dsimp only [live10122, coloured10122]
  rw [child]
  dsimp only [result10120]
  have child := node10121_eq
  unfold live10121 coloured10121 at child
  try dsimp only [live10122, coloured10122]
  rw [child]
  dsimp only [result10121]
  try dsimp only [colour, result10122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10123_agree : tree10123 = literal10123 := by
  rw [tree10123_def]
  rfl
theorem node10123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10123 live10123 coloured10123 = result10123 := by
  rw [tree10123_def]
  try dsimp only [colour, result10123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10124_agree : tree10124 = literal10124 := by
  rw [tree10124_def, tree10122_agree, tree10123_agree]
  rfl
theorem node10124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10124 live10124 coloured10124 = result10124 := by
  rw [tree10124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10122_eq
  unfold live10122 coloured10122 at child
  try dsimp only [live10124, coloured10124]
  rw [child]
  dsimp only [result10122]
  have child := node10123_eq
  unfold live10123 coloured10123 at child
  try dsimp only [live10124, coloured10124]
  rw [child]
  dsimp only [result10123]
  try dsimp only [colour, result10124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10125_agree : tree10125 = literal10125 := by
  rw [tree10125_def]
  rfl
theorem node10125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10125 live10125 coloured10125 = result10125 := by
  rw [tree10125_def]
  try dsimp only [colour, result10125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10126_agree : tree10126 = literal10126 := by
  rw [tree10126_def, tree10124_agree, tree10125_agree]
  rfl
theorem node10126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10126 live10126 coloured10126 = result10126 := by
  rw [tree10126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10124_eq
  unfold live10124 coloured10124 at child
  try dsimp only [live10126, coloured10126]
  rw [child]
  dsimp only [result10124]
  have child := node10125_eq
  unfold live10125 coloured10125 at child
  try dsimp only [live10126, coloured10126]
  rw [child]
  dsimp only [result10125]
  try dsimp only [colour, result10126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10127_agree : tree10127 = literal10127 := by
  rw [tree10127_def]
  rfl
theorem node10127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10127 live10127 coloured10127 = result10127 := by
  rw [tree10127_def]
  try dsimp only [colour, result10127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10128_agree : tree10128 = literal10128 := by
  rw [tree10128_def, tree10126_agree, tree10127_agree]
  rfl
theorem node10128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10128 live10128 coloured10128 = result10128 := by
  rw [tree10128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10126_eq
  unfold live10126 coloured10126 at child
  try dsimp only [live10128, coloured10128]
  rw [child]
  dsimp only [result10126]
  have child := node10127_eq
  unfold live10127 coloured10127 at child
  try dsimp only [live10128, coloured10128]
  rw [child]
  dsimp only [result10127]
  try dsimp only [colour, result10128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10129_agree : tree10129 = literal10129 := by
  rw [tree10129_def]
  rfl
theorem node10129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10129 live10129 coloured10129 = result10129 := by
  rw [tree10129_def]
  try dsimp only [colour, result10129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10130_agree : tree10130 = literal10130 := by
  rw [tree10130_def, tree10128_agree, tree10129_agree]
  rfl
theorem node10130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10130 live10130 coloured10130 = result10130 := by
  rw [tree10130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10128_eq
  unfold live10128 coloured10128 at child
  try dsimp only [live10130, coloured10130]
  rw [child]
  dsimp only [result10128]
  have child := node10129_eq
  unfold live10129 coloured10129 at child
  try dsimp only [live10130, coloured10130]
  rw [child]
  dsimp only [result10129]
  try dsimp only [colour, result10130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10131_agree : tree10131 = literal10131 := by
  rw [tree10131_def]
  rfl
theorem node10131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10131 live10131 coloured10131 = result10131 := by
  rw [tree10131_def]
  try dsimp only [colour, result10131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10132_agree : tree10132 = literal10132 := by
  rw [tree10132_def, tree10130_agree, tree10131_agree]
  rfl
theorem node10132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10132 live10132 coloured10132 = result10132 := by
  rw [tree10132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10130_eq
  unfold live10130 coloured10130 at child
  try dsimp only [live10132, coloured10132]
  rw [child]
  dsimp only [result10130]
  have child := node10131_eq
  unfold live10131 coloured10131 at child
  try dsimp only [live10132, coloured10132]
  rw [child]
  dsimp only [result10131]
  try dsimp only [colour, result10132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10133_agree : tree10133 = literal10133 := by
  rw [tree10133_def]
  rfl
theorem node10133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10133 live10133 coloured10133 = result10133 := by
  rw [tree10133_def]
  try dsimp only [colour, result10133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10134_agree : tree10134 = literal10134 := by
  rw [tree10134_def, tree10132_agree, tree10133_agree]
  rfl
theorem node10134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10134 live10134 coloured10134 = result10134 := by
  rw [tree10134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10132_eq
  unfold live10132 coloured10132 at child
  try dsimp only [live10134, coloured10134]
  rw [child]
  dsimp only [result10132]
  have child := node10133_eq
  unfold live10133 coloured10133 at child
  try dsimp only [live10134, coloured10134]
  rw [child]
  dsimp only [result10133]
  try dsimp only [colour, result10134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10135_agree : tree10135 = literal10135 := by
  rw [tree10135_def]
  rfl
theorem node10135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10135 live10135 coloured10135 = result10135 := by
  rw [tree10135_def]
  try dsimp only [colour, result10135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10136_agree : tree10136 = literal10136 := by
  rw [tree10136_def, tree10134_agree, tree10135_agree]
  rfl
theorem node10136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10136 live10136 coloured10136 = result10136 := by
  rw [tree10136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10134_eq
  unfold live10134 coloured10134 at child
  try dsimp only [live10136, coloured10136]
  rw [child]
  dsimp only [result10134]
  have child := node10135_eq
  unfold live10135 coloured10135 at child
  try dsimp only [live10136, coloured10136]
  rw [child]
  dsimp only [result10135]
  try dsimp only [colour, result10136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10137_agree : tree10137 = literal10137 := by
  rw [tree10137_def]
  rfl
theorem node10137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10137 live10137 coloured10137 = result10137 := by
  rw [tree10137_def]
  try dsimp only [colour, result10137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10138_agree : tree10138 = literal10138 := by
  rw [tree10138_def, tree10136_agree, tree10137_agree]
  rfl
theorem node10138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10138 live10138 coloured10138 = result10138 := by
  rw [tree10138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10136_eq
  unfold live10136 coloured10136 at child
  try dsimp only [live10138, coloured10138]
  rw [child]
  dsimp only [result10136]
  have child := node10137_eq
  unfold live10137 coloured10137 at child
  try dsimp only [live10138, coloured10138]
  rw [child]
  dsimp only [result10137]
  try dsimp only [colour, result10138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10139_agree : tree10139 = literal10139 := by
  rw [tree10139_def]
  rfl
theorem node10139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10139 live10139 coloured10139 = result10139 := by
  rw [tree10139_def]
  try dsimp only [colour, result10139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10140_agree : tree10140 = literal10140 := by
  rw [tree10140_def, tree10138_agree, tree10139_agree]
  rfl
theorem node10140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10140 live10140 coloured10140 = result10140 := by
  rw [tree10140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10138_eq
  unfold live10138 coloured10138 at child
  try dsimp only [live10140, coloured10140]
  rw [child]
  dsimp only [result10138]
  have child := node10139_eq
  unfold live10139 coloured10139 at child
  try dsimp only [live10140, coloured10140]
  rw [child]
  dsimp only [result10139]
  try dsimp only [colour, result10140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10141_agree : tree10141 = literal10141 := by
  rw [tree10141_def]
  rfl
theorem node10141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10141 live10141 coloured10141 = result10141 := by
  rw [tree10141_def]
  try dsimp only [colour, result10141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10142_agree : tree10142 = literal10142 := by
  rw [tree10142_def, tree10140_agree, tree10141_agree]
  rfl
theorem node10142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10142 live10142 coloured10142 = result10142 := by
  rw [tree10142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10140_eq
  unfold live10140 coloured10140 at child
  try dsimp only [live10142, coloured10142]
  rw [child]
  dsimp only [result10140]
  have child := node10141_eq
  unfold live10141 coloured10141 at child
  try dsimp only [live10142, coloured10142]
  rw [child]
  dsimp only [result10141]
  try dsimp only [colour, result10142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10143_agree : tree10143 = literal10143 := by
  rw [tree10143_def]
  rfl
theorem node10143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10143 live10143 coloured10143 = result10143 := by
  rw [tree10143_def]
  try dsimp only [colour, result10143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10144_agree : tree10144 = literal10144 := by
  rw [tree10144_def, tree10142_agree, tree10143_agree]
  rfl
theorem node10144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10144 live10144 coloured10144 = result10144 := by
  rw [tree10144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10142_eq
  unfold live10142 coloured10142 at child
  try dsimp only [live10144, coloured10144]
  rw [child]
  dsimp only [result10142]
  have child := node10143_eq
  unfold live10143 coloured10143 at child
  try dsimp only [live10144, coloured10144]
  rw [child]
  dsimp only [result10143]
  try dsimp only [colour, result10144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10145_agree : tree10145 = literal10145 := by
  rw [tree10145_def]
  rfl
theorem node10145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10145 live10145 coloured10145 = result10145 := by
  rw [tree10145_def]
  try dsimp only [colour, result10145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10146_agree : tree10146 = literal10146 := by
  rw [tree10146_def, tree10144_agree, tree10145_agree]
  rfl
theorem node10146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10146 live10146 coloured10146 = result10146 := by
  rw [tree10146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10144_eq
  unfold live10144 coloured10144 at child
  try dsimp only [live10146, coloured10146]
  rw [child]
  dsimp only [result10144]
  have child := node10145_eq
  unfold live10145 coloured10145 at child
  try dsimp only [live10146, coloured10146]
  rw [child]
  dsimp only [result10145]
  try dsimp only [colour, result10146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10147_agree : tree10147 = literal10147 := by
  rw [tree10147_def]
  rfl
theorem node10147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10147 live10147 coloured10147 = result10147 := by
  rw [tree10147_def]
  try dsimp only [colour, result10147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10148_agree : tree10148 = literal10148 := by
  rw [tree10148_def, tree10146_agree, tree10147_agree]
  rfl
theorem node10148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10148 live10148 coloured10148 = result10148 := by
  rw [tree10148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10146_eq
  unfold live10146 coloured10146 at child
  try dsimp only [live10148, coloured10148]
  rw [child]
  dsimp only [result10146]
  have child := node10147_eq
  unfold live10147 coloured10147 at child
  try dsimp only [live10148, coloured10148]
  rw [child]
  dsimp only [result10147]
  try dsimp only [colour, result10148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10149_agree : tree10149 = literal10149 := by
  rw [tree10149_def]
  rfl
theorem node10149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10149 live10149 coloured10149 = result10149 := by
  rw [tree10149_def]
  try dsimp only [colour, result10149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10150_agree : tree10150 = literal10150 := by
  rw [tree10150_def, tree10148_agree, tree10149_agree]
  rfl
theorem node10150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10150 live10150 coloured10150 = result10150 := by
  rw [tree10150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10148_eq
  unfold live10148 coloured10148 at child
  try dsimp only [live10150, coloured10150]
  rw [child]
  dsimp only [result10148]
  have child := node10149_eq
  unfold live10149 coloured10149 at child
  try dsimp only [live10150, coloured10150]
  rw [child]
  dsimp only [result10149]
  try dsimp only [colour, result10150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10151_agree : tree10151 = literal10151 := by
  rw [tree10151_def]
  rfl
theorem node10151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10151 live10151 coloured10151 = result10151 := by
  rw [tree10151_def]
  try dsimp only [colour, result10151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10152_agree : tree10152 = literal10152 := by
  rw [tree10152_def, tree10150_agree, tree10151_agree]
  rfl
theorem node10152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10152 live10152 coloured10152 = result10152 := by
  rw [tree10152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10150_eq
  unfold live10150 coloured10150 at child
  try dsimp only [live10152, coloured10152]
  rw [child]
  dsimp only [result10150]
  have child := node10151_eq
  unfold live10151 coloured10151 at child
  try dsimp only [live10152, coloured10152]
  rw [child]
  dsimp only [result10151]
  try dsimp only [colour, result10152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10153_agree : tree10153 = literal10153 := by
  rw [tree10153_def]
  rfl
theorem node10153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10153 live10153 coloured10153 = result10153 := by
  rw [tree10153_def]
  try dsimp only [colour, result10153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10154_agree : tree10154 = literal10154 := by
  rw [tree10154_def, tree10152_agree, tree10153_agree]
  rfl
theorem node10154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10154 live10154 coloured10154 = result10154 := by
  rw [tree10154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10152_eq
  unfold live10152 coloured10152 at child
  try dsimp only [live10154, coloured10154]
  rw [child]
  dsimp only [result10152]
  have child := node10153_eq
  unfold live10153 coloured10153 at child
  try dsimp only [live10154, coloured10154]
  rw [child]
  dsimp only [result10153]
  try dsimp only [colour, result10154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10155_agree : tree10155 = literal10155 := by
  rw [tree10155_def]
  rfl
theorem node10155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10155 live10155 coloured10155 = result10155 := by
  rw [tree10155_def]
  try dsimp only [colour, result10155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10156_agree : tree10156 = literal10156 := by
  rw [tree10156_def, tree10154_agree, tree10155_agree]
  rfl
theorem node10156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10156 live10156 coloured10156 = result10156 := by
  rw [tree10156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10154_eq
  unfold live10154 coloured10154 at child
  try dsimp only [live10156, coloured10156]
  rw [child]
  dsimp only [result10154]
  have child := node10155_eq
  unfold live10155 coloured10155 at child
  try dsimp only [live10156, coloured10156]
  rw [child]
  dsimp only [result10155]
  try dsimp only [colour, result10156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10157_agree : tree10157 = literal10157 := by
  rw [tree10157_def]
  rfl
theorem node10157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10157 live10157 coloured10157 = result10157 := by
  rw [tree10157_def]
  try dsimp only [colour, result10157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10158_agree : tree10158 = literal10158 := by
  rw [tree10158_def, tree10156_agree, tree10157_agree]
  rfl
theorem node10158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10158 live10158 coloured10158 = result10158 := by
  rw [tree10158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10156_eq
  unfold live10156 coloured10156 at child
  try dsimp only [live10158, coloured10158]
  rw [child]
  dsimp only [result10156]
  have child := node10157_eq
  unfold live10157 coloured10157 at child
  try dsimp only [live10158, coloured10158]
  rw [child]
  dsimp only [result10157]
  try dsimp only [colour, result10158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10159_agree : tree10159 = literal10159 := by
  rw [tree10159_def]
  rfl
theorem node10159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10159 live10159 coloured10159 = result10159 := by
  rw [tree10159_def]
  try dsimp only [colour, result10159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10160_agree : tree10160 = literal10160 := by
  rw [tree10160_def, tree10158_agree, tree10159_agree]
  rfl
theorem node10160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10160 live10160 coloured10160 = result10160 := by
  rw [tree10160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10158_eq
  unfold live10158 coloured10158 at child
  try dsimp only [live10160, coloured10160]
  rw [child]
  dsimp only [result10158]
  have child := node10159_eq
  unfold live10159 coloured10159 at child
  try dsimp only [live10160, coloured10160]
  rw [child]
  dsimp only [result10159]
  try dsimp only [colour, result10160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10161_agree : tree10161 = literal10161 := by
  rw [tree10161_def]
  rfl
theorem node10161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10161 live10161 coloured10161 = result10161 := by
  rw [tree10161_def]
  try dsimp only [colour, result10161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10162_agree : tree10162 = literal10162 := by
  rw [tree10162_def, tree10160_agree, tree10161_agree]
  rfl
theorem node10162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10162 live10162 coloured10162 = result10162 := by
  rw [tree10162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10160_eq
  unfold live10160 coloured10160 at child
  try dsimp only [live10162, coloured10162]
  rw [child]
  dsimp only [result10160]
  have child := node10161_eq
  unfold live10161 coloured10161 at child
  try dsimp only [live10162, coloured10162]
  rw [child]
  dsimp only [result10161]
  try dsimp only [colour, result10162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10163_agree : tree10163 = literal10163 := by
  rw [tree10163_def]
  rfl
theorem node10163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10163 live10163 coloured10163 = result10163 := by
  rw [tree10163_def]
  try dsimp only [colour, result10163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10164_agree : tree10164 = literal10164 := by
  rw [tree10164_def, tree10162_agree, tree10163_agree]
  rfl
theorem node10164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10164 live10164 coloured10164 = result10164 := by
  rw [tree10164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10162_eq
  unfold live10162 coloured10162 at child
  try dsimp only [live10164, coloured10164]
  rw [child]
  dsimp only [result10162]
  have child := node10163_eq
  unfold live10163 coloured10163 at child
  try dsimp only [live10164, coloured10164]
  rw [child]
  dsimp only [result10163]
  try dsimp only [colour, result10164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10165_agree : tree10165 = literal10165 := by
  rw [tree10165_def]
  rfl
theorem node10165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10165 live10165 coloured10165 = result10165 := by
  rw [tree10165_def]
  try dsimp only [colour, result10165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10166_agree : tree10166 = literal10166 := by
  rw [tree10166_def, tree10164_agree, tree10165_agree]
  rfl
theorem node10166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10166 live10166 coloured10166 = result10166 := by
  rw [tree10166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10164_eq
  unfold live10164 coloured10164 at child
  try dsimp only [live10166, coloured10166]
  rw [child]
  dsimp only [result10164]
  have child := node10165_eq
  unfold live10165 coloured10165 at child
  try dsimp only [live10166, coloured10166]
  rw [child]
  dsimp only [result10165]
  try dsimp only [colour, result10166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10167_agree : tree10167 = literal10167 := by
  rw [tree10167_def]
  rfl
theorem node10167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10167 live10167 coloured10167 = result10167 := by
  rw [tree10167_def]
  try dsimp only [colour, result10167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10168_agree : tree10168 = literal10168 := by
  rw [tree10168_def, tree10166_agree, tree10167_agree]
  rfl
theorem node10168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10168 live10168 coloured10168 = result10168 := by
  rw [tree10168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10166_eq
  unfold live10166 coloured10166 at child
  try dsimp only [live10168, coloured10168]
  rw [child]
  dsimp only [result10166]
  have child := node10167_eq
  unfold live10167 coloured10167 at child
  try dsimp only [live10168, coloured10168]
  rw [child]
  dsimp only [result10167]
  try dsimp only [colour, result10168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10169_agree : tree10169 = literal10169 := by
  rw [tree10169_def]
  rfl
theorem node10169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10169 live10169 coloured10169 = result10169 := by
  rw [tree10169_def]
  try dsimp only [colour, result10169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10170_agree : tree10170 = literal10170 := by
  rw [tree10170_def, tree10168_agree, tree10169_agree]
  rfl
theorem node10170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10170 live10170 coloured10170 = result10170 := by
  rw [tree10170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10168_eq
  unfold live10168 coloured10168 at child
  try dsimp only [live10170, coloured10170]
  rw [child]
  dsimp only [result10168]
  have child := node10169_eq
  unfold live10169 coloured10169 at child
  try dsimp only [live10170, coloured10170]
  rw [child]
  dsimp only [result10169]
  try dsimp only [colour, result10170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10171_agree : tree10171 = literal10171 := by
  rw [tree10171_def]
  rfl
theorem node10171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10171 live10171 coloured10171 = result10171 := by
  rw [tree10171_def]
  try dsimp only [colour, result10171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10172_agree : tree10172 = literal10172 := by
  rw [tree10172_def, tree10170_agree, tree10171_agree]
  rfl
theorem node10172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10172 live10172 coloured10172 = result10172 := by
  rw [tree10172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10170_eq
  unfold live10170 coloured10170 at child
  try dsimp only [live10172, coloured10172]
  rw [child]
  dsimp only [result10170]
  have child := node10171_eq
  unfold live10171 coloured10171 at child
  try dsimp only [live10172, coloured10172]
  rw [child]
  dsimp only [result10171]
  try dsimp only [colour, result10172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10173_agree : tree10173 = literal10173 := by
  rw [tree10173_def]
  rfl
theorem node10173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10173 live10173 coloured10173 = result10173 := by
  rw [tree10173_def]
  try dsimp only [colour, result10173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10174_agree : tree10174 = literal10174 := by
  rw [tree10174_def, tree10172_agree, tree10173_agree]
  rfl
theorem node10174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10174 live10174 coloured10174 = result10174 := by
  rw [tree10174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10172_eq
  unfold live10172 coloured10172 at child
  try dsimp only [live10174, coloured10174]
  rw [child]
  dsimp only [result10172]
  have child := node10173_eq
  unfold live10173 coloured10173 at child
  try dsimp only [live10174, coloured10174]
  rw [child]
  dsimp only [result10173]
  try dsimp only [colour, result10174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10175_agree : tree10175 = literal10175 := by
  rw [tree10175_def]
  rfl
theorem node10175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10175 live10175 coloured10175 = result10175 := by
  rw [tree10175_def]
  try dsimp only [colour, result10175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
