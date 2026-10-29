import InitECandidate.Proofs.ClashStages713.Proof52
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree5088_agree : tree5088 = literal5088 := by
  rw [tree5088_def, tree5086_agree, tree5087_agree]
  rfl
theorem node5088_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5088 live5088 coloured5088 = result5088 := by
  rw [tree5088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5086_eq
  unfold live5086 coloured5086 at child
  try dsimp only [live5088, coloured5088]
  rw [child]
  dsimp only [result5086]
  have child := node5087_eq
  unfold live5087 coloured5087 at child
  try dsimp only [live5088, coloured5088]
  rw [child]
  dsimp only [result5087]
  try dsimp only [colour, result5088]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5089_agree : tree5089 = literal5089 := by
  rw [tree5089_def]
  rfl
theorem node5089_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5089 live5089 coloured5089 = result5089 := by
  rw [tree5089_def]
  try dsimp only [colour, result5089]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5090_agree : tree5090 = literal5090 := by
  rw [tree5090_def, tree5088_agree, tree5089_agree]
  rfl
theorem node5090_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5090 live5090 coloured5090 = result5090 := by
  rw [tree5090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5088_eq
  unfold live5088 coloured5088 at child
  try dsimp only [live5090, coloured5090]
  rw [child]
  dsimp only [result5088]
  have child := node5089_eq
  unfold live5089 coloured5089 at child
  try dsimp only [live5090, coloured5090]
  rw [child]
  dsimp only [result5089]
  try dsimp only [colour, result5090]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5091_agree : tree5091 = literal5091 := by
  rw [tree5091_def]
  rfl
theorem node5091_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5091 live5091 coloured5091 = result5091 := by
  rw [tree5091_def]
  try dsimp only [colour, result5091]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5092_agree : tree5092 = literal5092 := by
  rw [tree5092_def, tree5090_agree, tree5091_agree]
  rfl
theorem node5092_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5092 live5092 coloured5092 = result5092 := by
  rw [tree5092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5090_eq
  unfold live5090 coloured5090 at child
  try dsimp only [live5092, coloured5092]
  rw [child]
  dsimp only [result5090]
  have child := node5091_eq
  unfold live5091 coloured5091 at child
  try dsimp only [live5092, coloured5092]
  rw [child]
  dsimp only [result5091]
  try dsimp only [colour, result5092]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5093_agree : tree5093 = literal5093 := by
  rw [tree5093_def]
  rfl
theorem node5093_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5093 live5093 coloured5093 = result5093 := by
  rw [tree5093_def]
  try dsimp only [colour, result5093]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5094_agree : tree5094 = literal5094 := by
  rw [tree5094_def, tree5092_agree, tree5093_agree]
  rfl
theorem node5094_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5094 live5094 coloured5094 = result5094 := by
  rw [tree5094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5092_eq
  unfold live5092 coloured5092 at child
  try dsimp only [live5094, coloured5094]
  rw [child]
  dsimp only [result5092]
  have child := node5093_eq
  unfold live5093 coloured5093 at child
  try dsimp only [live5094, coloured5094]
  rw [child]
  dsimp only [result5093]
  try dsimp only [colour, result5094]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5095_agree : tree5095 = literal5095 := by
  rw [tree5095_def]
  rfl
theorem node5095_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5095 live5095 coloured5095 = result5095 := by
  rw [tree5095_def]
  try dsimp only [colour, result5095]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5096_agree : tree5096 = literal5096 := by
  rw [tree5096_def, tree5094_agree, tree5095_agree]
  rfl
theorem node5096_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5096 live5096 coloured5096 = result5096 := by
  rw [tree5096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5094_eq
  unfold live5094 coloured5094 at child
  try dsimp only [live5096, coloured5096]
  rw [child]
  dsimp only [result5094]
  have child := node5095_eq
  unfold live5095 coloured5095 at child
  try dsimp only [live5096, coloured5096]
  rw [child]
  dsimp only [result5095]
  try dsimp only [colour, result5096]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5097_agree : tree5097 = literal5097 := by
  rw [tree5097_def]
  rfl
theorem node5097_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5097 live5097 coloured5097 = result5097 := by
  rw [tree5097_def]
  try dsimp only [colour, result5097]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5098_agree : tree5098 = literal5098 := by
  rw [tree5098_def, tree5096_agree, tree5097_agree]
  rfl
theorem node5098_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5098 live5098 coloured5098 = result5098 := by
  rw [tree5098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5096_eq
  unfold live5096 coloured5096 at child
  try dsimp only [live5098, coloured5098]
  rw [child]
  dsimp only [result5096]
  have child := node5097_eq
  unfold live5097 coloured5097 at child
  try dsimp only [live5098, coloured5098]
  rw [child]
  dsimp only [result5097]
  try dsimp only [colour, result5098]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5099_agree : tree5099 = literal5099 := by
  rw [tree5099_def]
  rfl
theorem node5099_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5099 live5099 coloured5099 = result5099 := by
  rw [tree5099_def]
  try dsimp only [colour, result5099]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5100_agree : tree5100 = literal5100 := by
  rw [tree5100_def, tree5098_agree, tree5099_agree]
  rfl
theorem node5100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5100 live5100 coloured5100 = result5100 := by
  rw [tree5100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5098_eq
  unfold live5098 coloured5098 at child
  try dsimp only [live5100, coloured5100]
  rw [child]
  dsimp only [result5098]
  have child := node5099_eq
  unfold live5099 coloured5099 at child
  try dsimp only [live5100, coloured5100]
  rw [child]
  dsimp only [result5099]
  try dsimp only [colour, result5100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5101_agree : tree5101 = literal5101 := by
  rw [tree5101_def]
  rfl
theorem node5101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5101 live5101 coloured5101 = result5101 := by
  rw [tree5101_def]
  try dsimp only [colour, result5101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5102_agree : tree5102 = literal5102 := by
  rw [tree5102_def, tree5100_agree, tree5101_agree]
  rfl
theorem node5102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5102 live5102 coloured5102 = result5102 := by
  rw [tree5102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5100_eq
  unfold live5100 coloured5100 at child
  try dsimp only [live5102, coloured5102]
  rw [child]
  dsimp only [result5100]
  have child := node5101_eq
  unfold live5101 coloured5101 at child
  try dsimp only [live5102, coloured5102]
  rw [child]
  dsimp only [result5101]
  try dsimp only [colour, result5102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5103_agree : tree5103 = literal5103 := by
  rw [tree5103_def]
  rfl
theorem node5103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5103 live5103 coloured5103 = result5103 := by
  rw [tree5103_def]
  try dsimp only [colour, result5103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5104_agree : tree5104 = literal5104 := by
  rw [tree5104_def, tree5102_agree, tree5103_agree]
  rfl
theorem node5104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5104 live5104 coloured5104 = result5104 := by
  rw [tree5104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5102_eq
  unfold live5102 coloured5102 at child
  try dsimp only [live5104, coloured5104]
  rw [child]
  dsimp only [result5102]
  have child := node5103_eq
  unfold live5103 coloured5103 at child
  try dsimp only [live5104, coloured5104]
  rw [child]
  dsimp only [result5103]
  try dsimp only [colour, result5104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5105_agree : tree5105 = literal5105 := by
  rw [tree5105_def]
  rfl
theorem node5105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5105 live5105 coloured5105 = result5105 := by
  rw [tree5105_def]
  try dsimp only [colour, result5105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5106_agree : tree5106 = literal5106 := by
  rw [tree5106_def, tree5104_agree, tree5105_agree]
  rfl
theorem node5106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5106 live5106 coloured5106 = result5106 := by
  rw [tree5106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5104_eq
  unfold live5104 coloured5104 at child
  try dsimp only [live5106, coloured5106]
  rw [child]
  dsimp only [result5104]
  have child := node5105_eq
  unfold live5105 coloured5105 at child
  try dsimp only [live5106, coloured5106]
  rw [child]
  dsimp only [result5105]
  try dsimp only [colour, result5106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5107_agree : tree5107 = literal5107 := by
  rw [tree5107_def]
  rfl
theorem node5107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5107 live5107 coloured5107 = result5107 := by
  rw [tree5107_def]
  try dsimp only [colour, result5107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5108_agree : tree5108 = literal5108 := by
  rw [tree5108_def, tree5106_agree, tree5107_agree]
  rfl
theorem node5108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5108 live5108 coloured5108 = result5108 := by
  rw [tree5108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5106_eq
  unfold live5106 coloured5106 at child
  try dsimp only [live5108, coloured5108]
  rw [child]
  dsimp only [result5106]
  have child := node5107_eq
  unfold live5107 coloured5107 at child
  try dsimp only [live5108, coloured5108]
  rw [child]
  dsimp only [result5107]
  try dsimp only [colour, result5108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5109_agree : tree5109 = literal5109 := by
  rw [tree5109_def]
  rfl
theorem node5109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5109 live5109 coloured5109 = result5109 := by
  rw [tree5109_def]
  try dsimp only [colour, result5109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5110_agree : tree5110 = literal5110 := by
  rw [tree5110_def, tree5108_agree, tree5109_agree]
  rfl
theorem node5110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5110 live5110 coloured5110 = result5110 := by
  rw [tree5110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5108_eq
  unfold live5108 coloured5108 at child
  try dsimp only [live5110, coloured5110]
  rw [child]
  dsimp only [result5108]
  have child := node5109_eq
  unfold live5109 coloured5109 at child
  try dsimp only [live5110, coloured5110]
  rw [child]
  dsimp only [result5109]
  try dsimp only [colour, result5110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5111_agree : tree5111 = literal5111 := by
  rw [tree5111_def]
  rfl
theorem node5111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5111 live5111 coloured5111 = result5111 := by
  rw [tree5111_def]
  try dsimp only [colour, result5111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5112_agree : tree5112 = literal5112 := by
  rw [tree5112_def, tree5110_agree, tree5111_agree]
  rfl
theorem node5112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5112 live5112 coloured5112 = result5112 := by
  rw [tree5112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5110_eq
  unfold live5110 coloured5110 at child
  try dsimp only [live5112, coloured5112]
  rw [child]
  dsimp only [result5110]
  have child := node5111_eq
  unfold live5111 coloured5111 at child
  try dsimp only [live5112, coloured5112]
  rw [child]
  dsimp only [result5111]
  try dsimp only [colour, result5112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5113_agree : tree5113 = literal5113 := by
  rw [tree5113_def]
  rfl
theorem node5113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5113 live5113 coloured5113 = result5113 := by
  rw [tree5113_def]
  try dsimp only [colour, result5113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5114_agree : tree5114 = literal5114 := by
  rw [tree5114_def, tree5112_agree, tree5113_agree]
  rfl
theorem node5114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5114 live5114 coloured5114 = result5114 := by
  rw [tree5114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5112_eq
  unfold live5112 coloured5112 at child
  try dsimp only [live5114, coloured5114]
  rw [child]
  dsimp only [result5112]
  have child := node5113_eq
  unfold live5113 coloured5113 at child
  try dsimp only [live5114, coloured5114]
  rw [child]
  dsimp only [result5113]
  try dsimp only [colour, result5114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5115_agree : tree5115 = literal5115 := by
  rw [tree5115_def]
  rfl
theorem node5115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5115 live5115 coloured5115 = result5115 := by
  rw [tree5115_def]
  try dsimp only [colour, result5115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5116_agree : tree5116 = literal5116 := by
  rw [tree5116_def, tree5114_agree, tree5115_agree]
  rfl
theorem node5116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5116 live5116 coloured5116 = result5116 := by
  rw [tree5116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5114_eq
  unfold live5114 coloured5114 at child
  try dsimp only [live5116, coloured5116]
  rw [child]
  dsimp only [result5114]
  have child := node5115_eq
  unfold live5115 coloured5115 at child
  try dsimp only [live5116, coloured5116]
  rw [child]
  dsimp only [result5115]
  try dsimp only [colour, result5116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5117_agree : tree5117 = literal5117 := by
  rw [tree5117_def]
  rfl
theorem node5117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5117 live5117 coloured5117 = result5117 := by
  rw [tree5117_def]
  try dsimp only [colour, result5117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5118_agree : tree5118 = literal5118 := by
  rw [tree5118_def, tree5116_agree, tree5117_agree]
  rfl
theorem node5118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5118 live5118 coloured5118 = result5118 := by
  rw [tree5118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5116_eq
  unfold live5116 coloured5116 at child
  try dsimp only [live5118, coloured5118]
  rw [child]
  dsimp only [result5116]
  have child := node5117_eq
  unfold live5117 coloured5117 at child
  try dsimp only [live5118, coloured5118]
  rw [child]
  dsimp only [result5117]
  try dsimp only [colour, result5118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5119_agree : tree5119 = literal5119 := by
  rw [tree5119_def]
  rfl
theorem node5119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5119 live5119 coloured5119 = result5119 := by
  rw [tree5119_def]
  try dsimp only [colour, result5119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5120_agree : tree5120 = literal5120 := by
  rw [tree5120_def, tree5118_agree, tree5119_agree]
  rfl
theorem node5120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5120 live5120 coloured5120 = result5120 := by
  rw [tree5120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5118_eq
  unfold live5118 coloured5118 at child
  try dsimp only [live5120, coloured5120]
  rw [child]
  dsimp only [result5118]
  have child := node5119_eq
  unfold live5119 coloured5119 at child
  try dsimp only [live5120, coloured5120]
  rw [child]
  dsimp only [result5119]
  try dsimp only [colour, result5120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5121_agree : tree5121 = literal5121 := by
  rw [tree5121_def]
  rfl
theorem node5121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5121 live5121 coloured5121 = result5121 := by
  rw [tree5121_def]
  try dsimp only [colour, result5121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5122_agree : tree5122 = literal5122 := by
  rw [tree5122_def, tree5120_agree, tree5121_agree]
  rfl
theorem node5122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5122 live5122 coloured5122 = result5122 := by
  rw [tree5122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5120_eq
  unfold live5120 coloured5120 at child
  try dsimp only [live5122, coloured5122]
  rw [child]
  dsimp only [result5120]
  have child := node5121_eq
  unfold live5121 coloured5121 at child
  try dsimp only [live5122, coloured5122]
  rw [child]
  dsimp only [result5121]
  try dsimp only [colour, result5122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5123_agree : tree5123 = literal5123 := by
  rw [tree5123_def]
  rfl
theorem node5123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5123 live5123 coloured5123 = result5123 := by
  rw [tree5123_def]
  try dsimp only [colour, result5123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5124_agree : tree5124 = literal5124 := by
  rw [tree5124_def, tree5122_agree, tree5123_agree]
  rfl
theorem node5124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5124 live5124 coloured5124 = result5124 := by
  rw [tree5124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5122_eq
  unfold live5122 coloured5122 at child
  try dsimp only [live5124, coloured5124]
  rw [child]
  dsimp only [result5122]
  have child := node5123_eq
  unfold live5123 coloured5123 at child
  try dsimp only [live5124, coloured5124]
  rw [child]
  dsimp only [result5123]
  try dsimp only [colour, result5124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5125_agree : tree5125 = literal5125 := by
  rw [tree5125_def]
  rfl
theorem node5125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5125 live5125 coloured5125 = result5125 := by
  rw [tree5125_def]
  try dsimp only [colour, result5125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5126_agree : tree5126 = literal5126 := by
  rw [tree5126_def, tree5124_agree, tree5125_agree]
  rfl
theorem node5126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5126 live5126 coloured5126 = result5126 := by
  rw [tree5126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5124_eq
  unfold live5124 coloured5124 at child
  try dsimp only [live5126, coloured5126]
  rw [child]
  dsimp only [result5124]
  have child := node5125_eq
  unfold live5125 coloured5125 at child
  try dsimp only [live5126, coloured5126]
  rw [child]
  dsimp only [result5125]
  try dsimp only [colour, result5126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5127_agree : tree5127 = literal5127 := by
  rw [tree5127_def]
  rfl
theorem node5127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5127 live5127 coloured5127 = result5127 := by
  rw [tree5127_def]
  try dsimp only [colour, result5127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5128_agree : tree5128 = literal5128 := by
  rw [tree5128_def, tree5126_agree, tree5127_agree]
  rfl
theorem node5128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5128 live5128 coloured5128 = result5128 := by
  rw [tree5128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5126_eq
  unfold live5126 coloured5126 at child
  try dsimp only [live5128, coloured5128]
  rw [child]
  dsimp only [result5126]
  have child := node5127_eq
  unfold live5127 coloured5127 at child
  try dsimp only [live5128, coloured5128]
  rw [child]
  dsimp only [result5127]
  try dsimp only [colour, result5128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5129_agree : tree5129 = literal5129 := by
  rw [tree5129_def]
  rfl
theorem node5129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5129 live5129 coloured5129 = result5129 := by
  rw [tree5129_def]
  try dsimp only [colour, result5129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5130_agree : tree5130 = literal5130 := by
  rw [tree5130_def, tree5128_agree, tree5129_agree]
  rfl
theorem node5130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5130 live5130 coloured5130 = result5130 := by
  rw [tree5130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5128_eq
  unfold live5128 coloured5128 at child
  try dsimp only [live5130, coloured5130]
  rw [child]
  dsimp only [result5128]
  have child := node5129_eq
  unfold live5129 coloured5129 at child
  try dsimp only [live5130, coloured5130]
  rw [child]
  dsimp only [result5129]
  try dsimp only [colour, result5130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5131_agree : tree5131 = literal5131 := by
  rw [tree5131_def]
  rfl
theorem node5131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5131 live5131 coloured5131 = result5131 := by
  rw [tree5131_def]
  try dsimp only [colour, result5131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5132_agree : tree5132 = literal5132 := by
  rw [tree5132_def, tree5130_agree, tree5131_agree]
  rfl
theorem node5132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5132 live5132 coloured5132 = result5132 := by
  rw [tree5132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5130_eq
  unfold live5130 coloured5130 at child
  try dsimp only [live5132, coloured5132]
  rw [child]
  dsimp only [result5130]
  have child := node5131_eq
  unfold live5131 coloured5131 at child
  try dsimp only [live5132, coloured5132]
  rw [child]
  dsimp only [result5131]
  try dsimp only [colour, result5132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5133_agree : tree5133 = literal5133 := by
  rw [tree5133_def]
  rfl
theorem node5133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5133 live5133 coloured5133 = result5133 := by
  rw [tree5133_def]
  try dsimp only [colour, result5133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5134_agree : tree5134 = literal5134 := by
  rw [tree5134_def, tree5132_agree, tree5133_agree]
  rfl
theorem node5134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5134 live5134 coloured5134 = result5134 := by
  rw [tree5134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5132_eq
  unfold live5132 coloured5132 at child
  try dsimp only [live5134, coloured5134]
  rw [child]
  dsimp only [result5132]
  have child := node5133_eq
  unfold live5133 coloured5133 at child
  try dsimp only [live5134, coloured5134]
  rw [child]
  dsimp only [result5133]
  try dsimp only [colour, result5134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5135_agree : tree5135 = literal5135 := by
  rw [tree5135_def]
  rfl
theorem node5135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5135 live5135 coloured5135 = result5135 := by
  rw [tree5135_def]
  try dsimp only [colour, result5135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5136_agree : tree5136 = literal5136 := by
  rw [tree5136_def, tree5134_agree, tree5135_agree]
  rfl
theorem node5136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5136 live5136 coloured5136 = result5136 := by
  rw [tree5136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5134_eq
  unfold live5134 coloured5134 at child
  try dsimp only [live5136, coloured5136]
  rw [child]
  dsimp only [result5134]
  have child := node5135_eq
  unfold live5135 coloured5135 at child
  try dsimp only [live5136, coloured5136]
  rw [child]
  dsimp only [result5135]
  try dsimp only [colour, result5136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5137_agree : tree5137 = literal5137 := by
  rw [tree5137_def]
  rfl
theorem node5137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5137 live5137 coloured5137 = result5137 := by
  rw [tree5137_def]
  try dsimp only [colour, result5137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5138_agree : tree5138 = literal5138 := by
  rw [tree5138_def, tree5136_agree, tree5137_agree]
  rfl
theorem node5138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5138 live5138 coloured5138 = result5138 := by
  rw [tree5138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5136_eq
  unfold live5136 coloured5136 at child
  try dsimp only [live5138, coloured5138]
  rw [child]
  dsimp only [result5136]
  have child := node5137_eq
  unfold live5137 coloured5137 at child
  try dsimp only [live5138, coloured5138]
  rw [child]
  dsimp only [result5137]
  try dsimp only [colour, result5138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5139_agree : tree5139 = literal5139 := by
  rw [tree5139_def]
  rfl
theorem node5139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5139 live5139 coloured5139 = result5139 := by
  rw [tree5139_def]
  try dsimp only [colour, result5139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5140_agree : tree5140 = literal5140 := by
  rw [tree5140_def, tree5138_agree, tree5139_agree]
  rfl
theorem node5140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5140 live5140 coloured5140 = result5140 := by
  rw [tree5140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5138_eq
  unfold live5138 coloured5138 at child
  try dsimp only [live5140, coloured5140]
  rw [child]
  dsimp only [result5138]
  have child := node5139_eq
  unfold live5139 coloured5139 at child
  try dsimp only [live5140, coloured5140]
  rw [child]
  dsimp only [result5139]
  try dsimp only [colour, result5140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5141_agree : tree5141 = literal5141 := by
  rw [tree5141_def]
  rfl
theorem node5141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5141 live5141 coloured5141 = result5141 := by
  rw [tree5141_def]
  try dsimp only [colour, result5141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5142_agree : tree5142 = literal5142 := by
  rw [tree5142_def, tree5140_agree, tree5141_agree]
  rfl
theorem node5142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5142 live5142 coloured5142 = result5142 := by
  rw [tree5142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5140_eq
  unfold live5140 coloured5140 at child
  try dsimp only [live5142, coloured5142]
  rw [child]
  dsimp only [result5140]
  have child := node5141_eq
  unfold live5141 coloured5141 at child
  try dsimp only [live5142, coloured5142]
  rw [child]
  dsimp only [result5141]
  try dsimp only [colour, result5142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5143_agree : tree5143 = literal5143 := by
  rw [tree5143_def]
  rfl
theorem node5143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5143 live5143 coloured5143 = result5143 := by
  rw [tree5143_def]
  try dsimp only [colour, result5143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5144_agree : tree5144 = literal5144 := by
  rw [tree5144_def, tree5142_agree, tree5143_agree]
  rfl
theorem node5144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5144 live5144 coloured5144 = result5144 := by
  rw [tree5144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5142_eq
  unfold live5142 coloured5142 at child
  try dsimp only [live5144, coloured5144]
  rw [child]
  dsimp only [result5142]
  have child := node5143_eq
  unfold live5143 coloured5143 at child
  try dsimp only [live5144, coloured5144]
  rw [child]
  dsimp only [result5143]
  try dsimp only [colour, result5144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5145_agree : tree5145 = literal5145 := by
  rw [tree5145_def]
  rfl
theorem node5145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5145 live5145 coloured5145 = result5145 := by
  rw [tree5145_def]
  try dsimp only [colour, result5145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5146_agree : tree5146 = literal5146 := by
  rw [tree5146_def, tree5144_agree, tree5145_agree]
  rfl
theorem node5146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5146 live5146 coloured5146 = result5146 := by
  rw [tree5146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5144_eq
  unfold live5144 coloured5144 at child
  try dsimp only [live5146, coloured5146]
  rw [child]
  dsimp only [result5144]
  have child := node5145_eq
  unfold live5145 coloured5145 at child
  try dsimp only [live5146, coloured5146]
  rw [child]
  dsimp only [result5145]
  try dsimp only [colour, result5146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5147_agree : tree5147 = literal5147 := by
  rw [tree5147_def]
  rfl
theorem node5147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5147 live5147 coloured5147 = result5147 := by
  rw [tree5147_def]
  try dsimp only [colour, result5147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5148_agree : tree5148 = literal5148 := by
  rw [tree5148_def, tree5146_agree, tree5147_agree]
  rfl
theorem node5148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5148 live5148 coloured5148 = result5148 := by
  rw [tree5148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5146_eq
  unfold live5146 coloured5146 at child
  try dsimp only [live5148, coloured5148]
  rw [child]
  dsimp only [result5146]
  have child := node5147_eq
  unfold live5147 coloured5147 at child
  try dsimp only [live5148, coloured5148]
  rw [child]
  dsimp only [result5147]
  try dsimp only [colour, result5148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5149_agree : tree5149 = literal5149 := by
  rw [tree5149_def]
  rfl
theorem node5149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5149 live5149 coloured5149 = result5149 := by
  rw [tree5149_def]
  try dsimp only [colour, result5149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5150_agree : tree5150 = literal5150 := by
  rw [tree5150_def, tree5148_agree, tree5149_agree]
  rfl
theorem node5150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5150 live5150 coloured5150 = result5150 := by
  rw [tree5150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5148_eq
  unfold live5148 coloured5148 at child
  try dsimp only [live5150, coloured5150]
  rw [child]
  dsimp only [result5148]
  have child := node5149_eq
  unfold live5149 coloured5149 at child
  try dsimp only [live5150, coloured5150]
  rw [child]
  dsimp only [result5149]
  try dsimp only [colour, result5150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5151_agree : tree5151 = literal5151 := by
  rw [tree5151_def]
  rfl
theorem node5151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5151 live5151 coloured5151 = result5151 := by
  rw [tree5151_def]
  try dsimp only [colour, result5151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5152_agree : tree5152 = literal5152 := by
  rw [tree5152_def, tree5150_agree, tree5151_agree]
  rfl
theorem node5152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5152 live5152 coloured5152 = result5152 := by
  rw [tree5152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5150_eq
  unfold live5150 coloured5150 at child
  try dsimp only [live5152, coloured5152]
  rw [child]
  dsimp only [result5150]
  have child := node5151_eq
  unfold live5151 coloured5151 at child
  try dsimp only [live5152, coloured5152]
  rw [child]
  dsimp only [result5151]
  try dsimp only [colour, result5152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5153_agree : tree5153 = literal5153 := by
  rw [tree5153_def]
  rfl
theorem node5153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5153 live5153 coloured5153 = result5153 := by
  rw [tree5153_def]
  try dsimp only [colour, result5153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5154_agree : tree5154 = literal5154 := by
  rw [tree5154_def, tree5152_agree, tree5153_agree]
  rfl
theorem node5154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5154 live5154 coloured5154 = result5154 := by
  rw [tree5154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5152_eq
  unfold live5152 coloured5152 at child
  try dsimp only [live5154, coloured5154]
  rw [child]
  dsimp only [result5152]
  have child := node5153_eq
  unfold live5153 coloured5153 at child
  try dsimp only [live5154, coloured5154]
  rw [child]
  dsimp only [result5153]
  try dsimp only [colour, result5154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5155_agree : tree5155 = literal5155 := by
  rw [tree5155_def]
  rfl
theorem node5155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5155 live5155 coloured5155 = result5155 := by
  rw [tree5155_def]
  try dsimp only [colour, result5155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5156_agree : tree5156 = literal5156 := by
  rw [tree5156_def, tree5154_agree, tree5155_agree]
  rfl
theorem node5156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5156 live5156 coloured5156 = result5156 := by
  rw [tree5156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5154_eq
  unfold live5154 coloured5154 at child
  try dsimp only [live5156, coloured5156]
  rw [child]
  dsimp only [result5154]
  have child := node5155_eq
  unfold live5155 coloured5155 at child
  try dsimp only [live5156, coloured5156]
  rw [child]
  dsimp only [result5155]
  try dsimp only [colour, result5156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5157_agree : tree5157 = literal5157 := by
  rw [tree5157_def]
  rfl
theorem node5157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5157 live5157 coloured5157 = result5157 := by
  rw [tree5157_def]
  try dsimp only [colour, result5157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5158_agree : tree5158 = literal5158 := by
  rw [tree5158_def, tree5156_agree, tree5157_agree]
  rfl
theorem node5158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5158 live5158 coloured5158 = result5158 := by
  rw [tree5158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5156_eq
  unfold live5156 coloured5156 at child
  try dsimp only [live5158, coloured5158]
  rw [child]
  dsimp only [result5156]
  have child := node5157_eq
  unfold live5157 coloured5157 at child
  try dsimp only [live5158, coloured5158]
  rw [child]
  dsimp only [result5157]
  try dsimp only [colour, result5158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5159_agree : tree5159 = literal5159 := by
  rw [tree5159_def]
  rfl
theorem node5159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5159 live5159 coloured5159 = result5159 := by
  rw [tree5159_def]
  try dsimp only [colour, result5159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5160_agree : tree5160 = literal5160 := by
  rw [tree5160_def, tree5158_agree, tree5159_agree]
  rfl
theorem node5160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5160 live5160 coloured5160 = result5160 := by
  rw [tree5160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5158_eq
  unfold live5158 coloured5158 at child
  try dsimp only [live5160, coloured5160]
  rw [child]
  dsimp only [result5158]
  have child := node5159_eq
  unfold live5159 coloured5159 at child
  try dsimp only [live5160, coloured5160]
  rw [child]
  dsimp only [result5159]
  try dsimp only [colour, result5160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5161_agree : tree5161 = literal5161 := by
  rw [tree5161_def]
  rfl
theorem node5161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5161 live5161 coloured5161 = result5161 := by
  rw [tree5161_def]
  try dsimp only [colour, result5161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5162_agree : tree5162 = literal5162 := by
  rw [tree5162_def, tree5160_agree, tree5161_agree]
  rfl
theorem node5162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5162 live5162 coloured5162 = result5162 := by
  rw [tree5162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5160_eq
  unfold live5160 coloured5160 at child
  try dsimp only [live5162, coloured5162]
  rw [child]
  dsimp only [result5160]
  have child := node5161_eq
  unfold live5161 coloured5161 at child
  try dsimp only [live5162, coloured5162]
  rw [child]
  dsimp only [result5161]
  try dsimp only [colour, result5162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5163_agree : tree5163 = literal5163 := by
  rw [tree5163_def]
  rfl
theorem node5163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5163 live5163 coloured5163 = result5163 := by
  rw [tree5163_def]
  try dsimp only [colour, result5163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5164_agree : tree5164 = literal5164 := by
  rw [tree5164_def, tree5162_agree, tree5163_agree]
  rfl
theorem node5164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5164 live5164 coloured5164 = result5164 := by
  rw [tree5164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5162_eq
  unfold live5162 coloured5162 at child
  try dsimp only [live5164, coloured5164]
  rw [child]
  dsimp only [result5162]
  have child := node5163_eq
  unfold live5163 coloured5163 at child
  try dsimp only [live5164, coloured5164]
  rw [child]
  dsimp only [result5163]
  try dsimp only [colour, result5164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5165_agree : tree5165 = literal5165 := by
  rw [tree5165_def]
  rfl
theorem node5165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5165 live5165 coloured5165 = result5165 := by
  rw [tree5165_def]
  try dsimp only [colour, result5165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5166_agree : tree5166 = literal5166 := by
  rw [tree5166_def, tree5164_agree, tree5165_agree]
  rfl
theorem node5166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5166 live5166 coloured5166 = result5166 := by
  rw [tree5166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5164_eq
  unfold live5164 coloured5164 at child
  try dsimp only [live5166, coloured5166]
  rw [child]
  dsimp only [result5164]
  have child := node5165_eq
  unfold live5165 coloured5165 at child
  try dsimp only [live5166, coloured5166]
  rw [child]
  dsimp only [result5165]
  try dsimp only [colour, result5166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5167_agree : tree5167 = literal5167 := by
  rw [tree5167_def]
  rfl
theorem node5167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5167 live5167 coloured5167 = result5167 := by
  rw [tree5167_def]
  try dsimp only [colour, result5167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5168_agree : tree5168 = literal5168 := by
  rw [tree5168_def, tree5166_agree, tree5167_agree]
  rfl
theorem node5168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5168 live5168 coloured5168 = result5168 := by
  rw [tree5168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5166_eq
  unfold live5166 coloured5166 at child
  try dsimp only [live5168, coloured5168]
  rw [child]
  dsimp only [result5166]
  have child := node5167_eq
  unfold live5167 coloured5167 at child
  try dsimp only [live5168, coloured5168]
  rw [child]
  dsimp only [result5167]
  try dsimp only [colour, result5168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5169_agree : tree5169 = literal5169 := by
  rw [tree5169_def]
  rfl
theorem node5169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5169 live5169 coloured5169 = result5169 := by
  rw [tree5169_def]
  try dsimp only [colour, result5169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5170_agree : tree5170 = literal5170 := by
  rw [tree5170_def, tree5168_agree, tree5169_agree]
  rfl
theorem node5170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5170 live5170 coloured5170 = result5170 := by
  rw [tree5170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5168_eq
  unfold live5168 coloured5168 at child
  try dsimp only [live5170, coloured5170]
  rw [child]
  dsimp only [result5168]
  have child := node5169_eq
  unfold live5169 coloured5169 at child
  try dsimp only [live5170, coloured5170]
  rw [child]
  dsimp only [result5169]
  try dsimp only [colour, result5170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5171_agree : tree5171 = literal5171 := by
  rw [tree5171_def]
  rfl
theorem node5171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5171 live5171 coloured5171 = result5171 := by
  rw [tree5171_def]
  try dsimp only [colour, result5171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5172_agree : tree5172 = literal5172 := by
  rw [tree5172_def, tree5170_agree, tree5171_agree]
  rfl
theorem node5172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5172 live5172 coloured5172 = result5172 := by
  rw [tree5172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5170_eq
  unfold live5170 coloured5170 at child
  try dsimp only [live5172, coloured5172]
  rw [child]
  dsimp only [result5170]
  have child := node5171_eq
  unfold live5171 coloured5171 at child
  try dsimp only [live5172, coloured5172]
  rw [child]
  dsimp only [result5171]
  try dsimp only [colour, result5172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5173_agree : tree5173 = literal5173 := by
  rw [tree5173_def]
  rfl
theorem node5173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5173 live5173 coloured5173 = result5173 := by
  rw [tree5173_def]
  try dsimp only [colour, result5173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5174_agree : tree5174 = literal5174 := by
  rw [tree5174_def, tree5172_agree, tree5173_agree]
  rfl
theorem node5174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5174 live5174 coloured5174 = result5174 := by
  rw [tree5174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5172_eq
  unfold live5172 coloured5172 at child
  try dsimp only [live5174, coloured5174]
  rw [child]
  dsimp only [result5172]
  have child := node5173_eq
  unfold live5173 coloured5173 at child
  try dsimp only [live5174, coloured5174]
  rw [child]
  dsimp only [result5173]
  try dsimp only [colour, result5174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5175_agree : tree5175 = literal5175 := by
  rw [tree5175_def]
  rfl
theorem node5175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5175 live5175 coloured5175 = result5175 := by
  rw [tree5175_def]
  try dsimp only [colour, result5175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5176_agree : tree5176 = literal5176 := by
  rw [tree5176_def, tree5174_agree, tree5175_agree]
  rfl
theorem node5176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5176 live5176 coloured5176 = result5176 := by
  rw [tree5176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5174_eq
  unfold live5174 coloured5174 at child
  try dsimp only [live5176, coloured5176]
  rw [child]
  dsimp only [result5174]
  have child := node5175_eq
  unfold live5175 coloured5175 at child
  try dsimp only [live5176, coloured5176]
  rw [child]
  dsimp only [result5175]
  try dsimp only [colour, result5176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5177_agree : tree5177 = literal5177 := by
  rw [tree5177_def]
  rfl
theorem node5177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5177 live5177 coloured5177 = result5177 := by
  rw [tree5177_def]
  try dsimp only [colour, result5177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5178_agree : tree5178 = literal5178 := by
  rw [tree5178_def, tree5176_agree, tree5177_agree]
  rfl
theorem node5178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5178 live5178 coloured5178 = result5178 := by
  rw [tree5178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5176_eq
  unfold live5176 coloured5176 at child
  try dsimp only [live5178, coloured5178]
  rw [child]
  dsimp only [result5176]
  have child := node5177_eq
  unfold live5177 coloured5177 at child
  try dsimp only [live5178, coloured5178]
  rw [child]
  dsimp only [result5177]
  try dsimp only [colour, result5178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5179_agree : tree5179 = literal5179 := by
  rw [tree5179_def]
  rfl
theorem node5179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5179 live5179 coloured5179 = result5179 := by
  rw [tree5179_def]
  try dsimp only [colour, result5179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5180_agree : tree5180 = literal5180 := by
  rw [tree5180_def, tree5178_agree, tree5179_agree]
  rfl
theorem node5180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5180 live5180 coloured5180 = result5180 := by
  rw [tree5180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5178_eq
  unfold live5178 coloured5178 at child
  try dsimp only [live5180, coloured5180]
  rw [child]
  dsimp only [result5178]
  have child := node5179_eq
  unfold live5179 coloured5179 at child
  try dsimp only [live5180, coloured5180]
  rw [child]
  dsimp only [result5179]
  try dsimp only [colour, result5180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5181_agree : tree5181 = literal5181 := by
  rw [tree5181_def]
  rfl
theorem node5181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5181 live5181 coloured5181 = result5181 := by
  rw [tree5181_def]
  try dsimp only [colour, result5181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5182_agree : tree5182 = literal5182 := by
  rw [tree5182_def, tree5180_agree, tree5181_agree]
  rfl
theorem node5182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5182 live5182 coloured5182 = result5182 := by
  rw [tree5182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5180_eq
  unfold live5180 coloured5180 at child
  try dsimp only [live5182, coloured5182]
  rw [child]
  dsimp only [result5180]
  have child := node5181_eq
  unfold live5181 coloured5181 at child
  try dsimp only [live5182, coloured5182]
  rw [child]
  dsimp only [result5181]
  try dsimp only [colour, result5182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5183_agree : tree5183 = literal5183 := by
  rw [tree5183_def]
  rfl
theorem node5183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5183 live5183 coloured5183 = result5183 := by
  rw [tree5183_def]
  try dsimp only [colour, result5183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
