import InitECandidate.Proofs.ClashStages713.Data
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree0_agree : tree0 = literal0 := by
  rw [tree0_def]
  rfl
theorem node0_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree0 live0 coloured0 = result0 := by
  rw [tree0_def]
  try dsimp only [colour, result0]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1_agree : tree1 = literal1 := by
  rw [tree1_def]
  rfl
theorem node1_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1 live1 coloured1 = result1 := by
  rw [tree1_def]
  try dsimp only [colour, result1]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2_agree : tree2 = literal2 := by
  rw [tree2_def, tree0_agree, tree1_agree]
  rfl
theorem node2_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2 live2 coloured2 = result2 := by
  rw [tree2_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node0_eq
  unfold live0 coloured0 at child
  try dsimp only [live2, coloured2]
  rw [child]
  dsimp only [result0]
  have child := node1_eq
  unfold live1 coloured1 at child
  try dsimp only [live2, coloured2]
  rw [child]
  dsimp only [result1]
  try dsimp only [colour, result2]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3_agree : tree3 = literal3 := by
  rw [tree3_def]
  rfl
theorem node3_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3 live3 coloured3 = result3 := by
  rw [tree3_def]
  try dsimp only [colour, result3]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4_agree : tree4 = literal4 := by
  rw [tree4_def, tree2_agree, tree3_agree]
  rfl
theorem node4_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4 live4 coloured4 = result4 := by
  rw [tree4_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2_eq
  unfold live2 coloured2 at child
  try dsimp only [live4, coloured4]
  rw [child]
  dsimp only [result2]
  have child := node3_eq
  unfold live3 coloured3 at child
  try dsimp only [live4, coloured4]
  rw [child]
  dsimp only [result3]
  try dsimp only [colour, result4]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5_agree : tree5 = literal5 := by
  rw [tree5_def]
  rfl
theorem node5_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5 live5 coloured5 = result5 := by
  rw [tree5_def]
  try dsimp only [colour, result5]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6_agree : tree6 = literal6 := by
  rw [tree6_def, tree4_agree, tree5_agree]
  rfl
theorem node6_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6 live6 coloured6 = result6 := by
  rw [tree6_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4_eq
  unfold live4 coloured4 at child
  try dsimp only [live6, coloured6]
  rw [child]
  dsimp only [result4]
  have child := node5_eq
  unfold live5 coloured5 at child
  try dsimp only [live6, coloured6]
  rw [child]
  dsimp only [result5]
  try dsimp only [colour, result6]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7_agree : tree7 = literal7 := by
  rw [tree7_def]
  rfl
theorem node7_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7 live7 coloured7 = result7 := by
  rw [tree7_def]
  try dsimp only [colour, result7]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8_agree : tree8 = literal8 := by
  rw [tree8_def, tree6_agree, tree7_agree]
  rfl
theorem node8_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8 live8 coloured8 = result8 := by
  rw [tree8_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6_eq
  unfold live6 coloured6 at child
  try dsimp only [live8, coloured8]
  rw [child]
  dsimp only [result6]
  have child := node7_eq
  unfold live7 coloured7 at child
  try dsimp only [live8, coloured8]
  rw [child]
  dsimp only [result7]
  try dsimp only [colour, result8]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9_agree : tree9 = literal9 := by
  rw [tree9_def]
  rfl
theorem node9_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9 live9 coloured9 = result9 := by
  rw [tree9_def]
  try dsimp only [colour, result9]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10_agree : tree10 = literal10 := by
  rw [tree10_def, tree8_agree, tree9_agree]
  rfl
theorem node10_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10 live10 coloured10 = result10 := by
  rw [tree10_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8_eq
  unfold live8 coloured8 at child
  try dsimp only [live10, coloured10]
  rw [child]
  dsimp only [result8]
  have child := node9_eq
  unfold live9 coloured9 at child
  try dsimp only [live10, coloured10]
  rw [child]
  dsimp only [result9]
  try dsimp only [colour, result10]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11_agree : tree11 = literal11 := by
  rw [tree11_def]
  rfl
theorem node11_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11 live11 coloured11 = result11 := by
  rw [tree11_def]
  try dsimp only [colour, result11]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12_agree : tree12 = literal12 := by
  rw [tree12_def, tree10_agree, tree11_agree]
  rfl
theorem node12_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12 live12 coloured12 = result12 := by
  rw [tree12_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10_eq
  unfold live10 coloured10 at child
  try dsimp only [live12, coloured12]
  rw [child]
  dsimp only [result10]
  have child := node11_eq
  unfold live11 coloured11 at child
  try dsimp only [live12, coloured12]
  rw [child]
  dsimp only [result11]
  try dsimp only [colour, result12]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree13_agree : tree13 = literal13 := by
  rw [tree13_def]
  rfl
theorem node13_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree13 live13 coloured13 = result13 := by
  rw [tree13_def]
  try dsimp only [colour, result13]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree14_agree : tree14 = literal14 := by
  rw [tree14_def, tree12_agree, tree13_agree]
  rfl
theorem node14_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree14 live14 coloured14 = result14 := by
  rw [tree14_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12_eq
  unfold live12 coloured12 at child
  try dsimp only [live14, coloured14]
  rw [child]
  dsimp only [result12]
  have child := node13_eq
  unfold live13 coloured13 at child
  try dsimp only [live14, coloured14]
  rw [child]
  dsimp only [result13]
  try dsimp only [colour, result14]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree15_agree : tree15 = literal15 := by
  rw [tree15_def]
  rfl
theorem node15_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree15 live15 coloured15 = result15 := by
  rw [tree15_def]
  try dsimp only [colour, result15]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree16_agree : tree16 = literal16 := by
  rw [tree16_def, tree14_agree, tree15_agree]
  rfl
theorem node16_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree16 live16 coloured16 = result16 := by
  rw [tree16_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node14_eq
  unfold live14 coloured14 at child
  try dsimp only [live16, coloured16]
  rw [child]
  dsimp only [result14]
  have child := node15_eq
  unfold live15 coloured15 at child
  try dsimp only [live16, coloured16]
  rw [child]
  dsimp only [result15]
  try dsimp only [colour, result16]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree17_agree : tree17 = literal17 := by
  rw [tree17_def]
  rfl
theorem node17_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree17 live17 coloured17 = result17 := by
  rw [tree17_def]
  try dsimp only [colour, result17]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree18_agree : tree18 = literal18 := by
  rw [tree18_def, tree16_agree, tree17_agree]
  rfl
theorem node18_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree18 live18 coloured18 = result18 := by
  rw [tree18_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node16_eq
  unfold live16 coloured16 at child
  try dsimp only [live18, coloured18]
  rw [child]
  dsimp only [result16]
  have child := node17_eq
  unfold live17 coloured17 at child
  try dsimp only [live18, coloured18]
  rw [child]
  dsimp only [result17]
  try dsimp only [colour, result18]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree19_agree : tree19 = literal19 := by
  rw [tree19_def]
  rfl
theorem node19_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree19 live19 coloured19 = result19 := by
  rw [tree19_def]
  try dsimp only [colour, result19]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree20_agree : tree20 = literal20 := by
  rw [tree20_def, tree18_agree, tree19_agree]
  rfl
theorem node20_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree20 live20 coloured20 = result20 := by
  rw [tree20_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node18_eq
  unfold live18 coloured18 at child
  try dsimp only [live20, coloured20]
  rw [child]
  dsimp only [result18]
  have child := node19_eq
  unfold live19 coloured19 at child
  try dsimp only [live20, coloured20]
  rw [child]
  dsimp only [result19]
  try dsimp only [colour, result20]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree21_agree : tree21 = literal21 := by
  rw [tree21_def]
  rfl
theorem node21_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree21 live21 coloured21 = result21 := by
  rw [tree21_def]
  try dsimp only [colour, result21]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree22_agree : tree22 = literal22 := by
  rw [tree22_def, tree20_agree, tree21_agree]
  rfl
theorem node22_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree22 live22 coloured22 = result22 := by
  rw [tree22_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node20_eq
  unfold live20 coloured20 at child
  try dsimp only [live22, coloured22]
  rw [child]
  dsimp only [result20]
  have child := node21_eq
  unfold live21 coloured21 at child
  try dsimp only [live22, coloured22]
  rw [child]
  dsimp only [result21]
  try dsimp only [colour, result22]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree23_agree : tree23 = literal23 := by
  rw [tree23_def]
  rfl
theorem node23_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree23 live23 coloured23 = result23 := by
  rw [tree23_def]
  try dsimp only [colour, result23]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree24_agree : tree24 = literal24 := by
  rw [tree24_def, tree22_agree, tree23_agree]
  rfl
theorem node24_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree24 live24 coloured24 = result24 := by
  rw [tree24_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node22_eq
  unfold live22 coloured22 at child
  try dsimp only [live24, coloured24]
  rw [child]
  dsimp only [result22]
  have child := node23_eq
  unfold live23 coloured23 at child
  try dsimp only [live24, coloured24]
  rw [child]
  dsimp only [result23]
  try dsimp only [colour, result24]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree25_agree : tree25 = literal25 := by
  rw [tree25_def]
  rfl
theorem node25_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree25 live25 coloured25 = result25 := by
  rw [tree25_def]
  try dsimp only [colour, result25]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree26_agree : tree26 = literal26 := by
  rw [tree26_def, tree24_agree, tree25_agree]
  rfl
theorem node26_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree26 live26 coloured26 = result26 := by
  rw [tree26_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node24_eq
  unfold live24 coloured24 at child
  try dsimp only [live26, coloured26]
  rw [child]
  dsimp only [result24]
  have child := node25_eq
  unfold live25 coloured25 at child
  try dsimp only [live26, coloured26]
  rw [child]
  dsimp only [result25]
  try dsimp only [colour, result26]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree27_agree : tree27 = literal27 := by
  rw [tree27_def]
  rfl
theorem node27_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree27 live27 coloured27 = result27 := by
  rw [tree27_def]
  try dsimp only [colour, result27]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree28_agree : tree28 = literal28 := by
  rw [tree28_def, tree26_agree, tree27_agree]
  rfl
theorem node28_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree28 live28 coloured28 = result28 := by
  rw [tree28_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node26_eq
  unfold live26 coloured26 at child
  try dsimp only [live28, coloured28]
  rw [child]
  dsimp only [result26]
  have child := node27_eq
  unfold live27 coloured27 at child
  try dsimp only [live28, coloured28]
  rw [child]
  dsimp only [result27]
  try dsimp only [colour, result28]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree29_agree : tree29 = literal29 := by
  rw [tree29_def]
  rfl
theorem node29_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree29 live29 coloured29 = result29 := by
  rw [tree29_def]
  try dsimp only [colour, result29]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree30_agree : tree30 = literal30 := by
  rw [tree30_def, tree28_agree, tree29_agree]
  rfl
theorem node30_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree30 live30 coloured30 = result30 := by
  rw [tree30_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node28_eq
  unfold live28 coloured28 at child
  try dsimp only [live30, coloured30]
  rw [child]
  dsimp only [result28]
  have child := node29_eq
  unfold live29 coloured29 at child
  try dsimp only [live30, coloured30]
  rw [child]
  dsimp only [result29]
  try dsimp only [colour, result30]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree31_agree : tree31 = literal31 := by
  rw [tree31_def]
  rfl
theorem node31_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree31 live31 coloured31 = result31 := by
  rw [tree31_def]
  try dsimp only [colour, result31]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree32_agree : tree32 = literal32 := by
  rw [tree32_def, tree30_agree, tree31_agree]
  rfl
theorem node32_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree32 live32 coloured32 = result32 := by
  rw [tree32_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node30_eq
  unfold live30 coloured30 at child
  try dsimp only [live32, coloured32]
  rw [child]
  dsimp only [result30]
  have child := node31_eq
  unfold live31 coloured31 at child
  try dsimp only [live32, coloured32]
  rw [child]
  dsimp only [result31]
  try dsimp only [colour, result32]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree33_agree : tree33 = literal33 := by
  rw [tree33_def]
  rfl
theorem node33_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree33 live33 coloured33 = result33 := by
  rw [tree33_def]
  try dsimp only [colour, result33]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree34_agree : tree34 = literal34 := by
  rw [tree34_def, tree32_agree, tree33_agree]
  rfl
theorem node34_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree34 live34 coloured34 = result34 := by
  rw [tree34_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node32_eq
  unfold live32 coloured32 at child
  try dsimp only [live34, coloured34]
  rw [child]
  dsimp only [result32]
  have child := node33_eq
  unfold live33 coloured33 at child
  try dsimp only [live34, coloured34]
  rw [child]
  dsimp only [result33]
  try dsimp only [colour, result34]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree35_agree : tree35 = literal35 := by
  rw [tree35_def]
  rfl
theorem node35_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree35 live35 coloured35 = result35 := by
  rw [tree35_def]
  try dsimp only [colour, result35]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree36_agree : tree36 = literal36 := by
  rw [tree36_def, tree34_agree, tree35_agree]
  rfl
theorem node36_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree36 live36 coloured36 = result36 := by
  rw [tree36_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node34_eq
  unfold live34 coloured34 at child
  try dsimp only [live36, coloured36]
  rw [child]
  dsimp only [result34]
  have child := node35_eq
  unfold live35 coloured35 at child
  try dsimp only [live36, coloured36]
  rw [child]
  dsimp only [result35]
  try dsimp only [colour, result36]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree37_agree : tree37 = literal37 := by
  rw [tree37_def]
  rfl
theorem node37_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree37 live37 coloured37 = result37 := by
  rw [tree37_def]
  try dsimp only [colour, result37]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree38_agree : tree38 = literal38 := by
  rw [tree38_def, tree36_agree, tree37_agree]
  rfl
theorem node38_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree38 live38 coloured38 = result38 := by
  rw [tree38_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node36_eq
  unfold live36 coloured36 at child
  try dsimp only [live38, coloured38]
  rw [child]
  dsimp only [result36]
  have child := node37_eq
  unfold live37 coloured37 at child
  try dsimp only [live38, coloured38]
  rw [child]
  dsimp only [result37]
  try dsimp only [colour, result38]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree39_agree : tree39 = literal39 := by
  rw [tree39_def]
  rfl
theorem node39_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree39 live39 coloured39 = result39 := by
  rw [tree39_def]
  try dsimp only [colour, result39]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree40_agree : tree40 = literal40 := by
  rw [tree40_def, tree38_agree, tree39_agree]
  rfl
theorem node40_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree40 live40 coloured40 = result40 := by
  rw [tree40_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node38_eq
  unfold live38 coloured38 at child
  try dsimp only [live40, coloured40]
  rw [child]
  dsimp only [result38]
  have child := node39_eq
  unfold live39 coloured39 at child
  try dsimp only [live40, coloured40]
  rw [child]
  dsimp only [result39]
  try dsimp only [colour, result40]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree41_agree : tree41 = literal41 := by
  rw [tree41_def]
  rfl
theorem node41_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree41 live41 coloured41 = result41 := by
  rw [tree41_def]
  try dsimp only [colour, result41]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree42_agree : tree42 = literal42 := by
  rw [tree42_def, tree40_agree, tree41_agree]
  rfl
theorem node42_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree42 live42 coloured42 = result42 := by
  rw [tree42_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node40_eq
  unfold live40 coloured40 at child
  try dsimp only [live42, coloured42]
  rw [child]
  dsimp only [result40]
  have child := node41_eq
  unfold live41 coloured41 at child
  try dsimp only [live42, coloured42]
  rw [child]
  dsimp only [result41]
  try dsimp only [colour, result42]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree43_agree : tree43 = literal43 := by
  rw [tree43_def]
  rfl
theorem node43_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree43 live43 coloured43 = result43 := by
  rw [tree43_def]
  try dsimp only [colour, result43]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree44_agree : tree44 = literal44 := by
  rw [tree44_def, tree42_agree, tree43_agree]
  rfl
theorem node44_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree44 live44 coloured44 = result44 := by
  rw [tree44_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node42_eq
  unfold live42 coloured42 at child
  try dsimp only [live44, coloured44]
  rw [child]
  dsimp only [result42]
  have child := node43_eq
  unfold live43 coloured43 at child
  try dsimp only [live44, coloured44]
  rw [child]
  dsimp only [result43]
  try dsimp only [colour, result44]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree45_agree : tree45 = literal45 := by
  rw [tree45_def]
  rfl
theorem node45_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree45 live45 coloured45 = result45 := by
  rw [tree45_def]
  try dsimp only [colour, result45]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree46_agree : tree46 = literal46 := by
  rw [tree46_def, tree44_agree, tree45_agree]
  rfl
theorem node46_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree46 live46 coloured46 = result46 := by
  rw [tree46_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node44_eq
  unfold live44 coloured44 at child
  try dsimp only [live46, coloured46]
  rw [child]
  dsimp only [result44]
  have child := node45_eq
  unfold live45 coloured45 at child
  try dsimp only [live46, coloured46]
  rw [child]
  dsimp only [result45]
  try dsimp only [colour, result46]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree47_agree : tree47 = literal47 := by
  rw [tree47_def]
  rfl
theorem node47_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree47 live47 coloured47 = result47 := by
  rw [tree47_def]
  try dsimp only [colour, result47]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree48_agree : tree48 = literal48 := by
  rw [tree48_def, tree46_agree, tree47_agree]
  rfl
theorem node48_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree48 live48 coloured48 = result48 := by
  rw [tree48_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node46_eq
  unfold live46 coloured46 at child
  try dsimp only [live48, coloured48]
  rw [child]
  dsimp only [result46]
  have child := node47_eq
  unfold live47 coloured47 at child
  try dsimp only [live48, coloured48]
  rw [child]
  dsimp only [result47]
  try dsimp only [colour, result48]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree49_agree : tree49 = literal49 := by
  rw [tree49_def]
  rfl
theorem node49_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree49 live49 coloured49 = result49 := by
  rw [tree49_def]
  try dsimp only [colour, result49]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree50_agree : tree50 = literal50 := by
  rw [tree50_def, tree48_agree, tree49_agree]
  rfl
theorem node50_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree50 live50 coloured50 = result50 := by
  rw [tree50_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node48_eq
  unfold live48 coloured48 at child
  try dsimp only [live50, coloured50]
  rw [child]
  dsimp only [result48]
  have child := node49_eq
  unfold live49 coloured49 at child
  try dsimp only [live50, coloured50]
  rw [child]
  dsimp only [result49]
  try dsimp only [colour, result50]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree51_agree : tree51 = literal51 := by
  rw [tree51_def]
  rfl
theorem node51_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree51 live51 coloured51 = result51 := by
  rw [tree51_def]
  try dsimp only [colour, result51]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree52_agree : tree52 = literal52 := by
  rw [tree52_def, tree50_agree, tree51_agree]
  rfl
theorem node52_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree52 live52 coloured52 = result52 := by
  rw [tree52_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node50_eq
  unfold live50 coloured50 at child
  try dsimp only [live52, coloured52]
  rw [child]
  dsimp only [result50]
  have child := node51_eq
  unfold live51 coloured51 at child
  try dsimp only [live52, coloured52]
  rw [child]
  dsimp only [result51]
  try dsimp only [colour, result52]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree53_agree : tree53 = literal53 := by
  rw [tree53_def]
  rfl
theorem node53_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree53 live53 coloured53 = result53 := by
  rw [tree53_def]
  try dsimp only [colour, result53]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree54_agree : tree54 = literal54 := by
  rw [tree54_def, tree52_agree, tree53_agree]
  rfl
theorem node54_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree54 live54 coloured54 = result54 := by
  rw [tree54_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node52_eq
  unfold live52 coloured52 at child
  try dsimp only [live54, coloured54]
  rw [child]
  dsimp only [result52]
  have child := node53_eq
  unfold live53 coloured53 at child
  try dsimp only [live54, coloured54]
  rw [child]
  dsimp only [result53]
  try dsimp only [colour, result54]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree55_agree : tree55 = literal55 := by
  rw [tree55_def]
  rfl
theorem node55_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree55 live55 coloured55 = result55 := by
  rw [tree55_def]
  try dsimp only [colour, result55]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree56_agree : tree56 = literal56 := by
  rw [tree56_def, tree54_agree, tree55_agree]
  rfl
theorem node56_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree56 live56 coloured56 = result56 := by
  rw [tree56_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node54_eq
  unfold live54 coloured54 at child
  try dsimp only [live56, coloured56]
  rw [child]
  dsimp only [result54]
  have child := node55_eq
  unfold live55 coloured55 at child
  try dsimp only [live56, coloured56]
  rw [child]
  dsimp only [result55]
  try dsimp only [colour, result56]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree57_agree : tree57 = literal57 := by
  rw [tree57_def]
  rfl
theorem node57_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree57 live57 coloured57 = result57 := by
  rw [tree57_def]
  try dsimp only [colour, result57]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree58_agree : tree58 = literal58 := by
  rw [tree58_def, tree56_agree, tree57_agree]
  rfl
theorem node58_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree58 live58 coloured58 = result58 := by
  rw [tree58_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node56_eq
  unfold live56 coloured56 at child
  try dsimp only [live58, coloured58]
  rw [child]
  dsimp only [result56]
  have child := node57_eq
  unfold live57 coloured57 at child
  try dsimp only [live58, coloured58]
  rw [child]
  dsimp only [result57]
  try dsimp only [colour, result58]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree59_agree : tree59 = literal59 := by
  rw [tree59_def]
  rfl
theorem node59_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree59 live59 coloured59 = result59 := by
  rw [tree59_def]
  try dsimp only [colour, result59]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree60_agree : tree60 = literal60 := by
  rw [tree60_def, tree58_agree, tree59_agree]
  rfl
theorem node60_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree60 live60 coloured60 = result60 := by
  rw [tree60_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node58_eq
  unfold live58 coloured58 at child
  try dsimp only [live60, coloured60]
  rw [child]
  dsimp only [result58]
  have child := node59_eq
  unfold live59 coloured59 at child
  try dsimp only [live60, coloured60]
  rw [child]
  dsimp only [result59]
  try dsimp only [colour, result60]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree61_agree : tree61 = literal61 := by
  rw [tree61_def]
  rfl
theorem node61_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree61 live61 coloured61 = result61 := by
  rw [tree61_def]
  try dsimp only [colour, result61]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree62_agree : tree62 = literal62 := by
  rw [tree62_def, tree60_agree, tree61_agree]
  rfl
theorem node62_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree62 live62 coloured62 = result62 := by
  rw [tree62_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node60_eq
  unfold live60 coloured60 at child
  try dsimp only [live62, coloured62]
  rw [child]
  dsimp only [result60]
  have child := node61_eq
  unfold live61 coloured61 at child
  try dsimp only [live62, coloured62]
  rw [child]
  dsimp only [result61]
  try dsimp only [colour, result62]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree63_agree : tree63 = literal63 := by
  rw [tree63_def]
  rfl
theorem node63_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree63 live63 coloured63 = result63 := by
  rw [tree63_def]
  try dsimp only [colour, result63]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree64_agree : tree64 = literal64 := by
  rw [tree64_def, tree62_agree, tree63_agree]
  rfl
theorem node64_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree64 live64 coloured64 = result64 := by
  rw [tree64_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node62_eq
  unfold live62 coloured62 at child
  try dsimp only [live64, coloured64]
  rw [child]
  dsimp only [result62]
  have child := node63_eq
  unfold live63 coloured63 at child
  try dsimp only [live64, coloured64]
  rw [child]
  dsimp only [result63]
  try dsimp only [colour, result64]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree65_agree : tree65 = literal65 := by
  rw [tree65_def]
  rfl
theorem node65_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree65 live65 coloured65 = result65 := by
  rw [tree65_def]
  try dsimp only [colour, result65]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree66_agree : tree66 = literal66 := by
  rw [tree66_def, tree64_agree, tree65_agree]
  rfl
theorem node66_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree66 live66 coloured66 = result66 := by
  rw [tree66_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node64_eq
  unfold live64 coloured64 at child
  try dsimp only [live66, coloured66]
  rw [child]
  dsimp only [result64]
  have child := node65_eq
  unfold live65 coloured65 at child
  try dsimp only [live66, coloured66]
  rw [child]
  dsimp only [result65]
  try dsimp only [colour, result66]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree67_agree : tree67 = literal67 := by
  rw [tree67_def]
  rfl
theorem node67_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree67 live67 coloured67 = result67 := by
  rw [tree67_def]
  try dsimp only [colour, result67]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree68_agree : tree68 = literal68 := by
  rw [tree68_def, tree66_agree, tree67_agree]
  rfl
theorem node68_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree68 live68 coloured68 = result68 := by
  rw [tree68_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node66_eq
  unfold live66 coloured66 at child
  try dsimp only [live68, coloured68]
  rw [child]
  dsimp only [result66]
  have child := node67_eq
  unfold live67 coloured67 at child
  try dsimp only [live68, coloured68]
  rw [child]
  dsimp only [result67]
  try dsimp only [colour, result68]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree69_agree : tree69 = literal69 := by
  rw [tree69_def]
  rfl
theorem node69_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree69 live69 coloured69 = result69 := by
  rw [tree69_def]
  try dsimp only [colour, result69]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree70_agree : tree70 = literal70 := by
  rw [tree70_def, tree68_agree, tree69_agree]
  rfl
theorem node70_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree70 live70 coloured70 = result70 := by
  rw [tree70_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node68_eq
  unfold live68 coloured68 at child
  try dsimp only [live70, coloured70]
  rw [child]
  dsimp only [result68]
  have child := node69_eq
  unfold live69 coloured69 at child
  try dsimp only [live70, coloured70]
  rw [child]
  dsimp only [result69]
  try dsimp only [colour, result70]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree71_agree : tree71 = literal71 := by
  rw [tree71_def]
  rfl
theorem node71_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree71 live71 coloured71 = result71 := by
  rw [tree71_def]
  try dsimp only [colour, result71]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree72_agree : tree72 = literal72 := by
  rw [tree72_def, tree70_agree, tree71_agree]
  rfl
theorem node72_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree72 live72 coloured72 = result72 := by
  rw [tree72_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node70_eq
  unfold live70 coloured70 at child
  try dsimp only [live72, coloured72]
  rw [child]
  dsimp only [result70]
  have child := node71_eq
  unfold live71 coloured71 at child
  try dsimp only [live72, coloured72]
  rw [child]
  dsimp only [result71]
  try dsimp only [colour, result72]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree73_agree : tree73 = literal73 := by
  rw [tree73_def]
  rfl
theorem node73_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree73 live73 coloured73 = result73 := by
  rw [tree73_def]
  try dsimp only [colour, result73]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree74_agree : tree74 = literal74 := by
  rw [tree74_def, tree72_agree, tree73_agree]
  rfl
theorem node74_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree74 live74 coloured74 = result74 := by
  rw [tree74_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node72_eq
  unfold live72 coloured72 at child
  try dsimp only [live74, coloured74]
  rw [child]
  dsimp only [result72]
  have child := node73_eq
  unfold live73 coloured73 at child
  try dsimp only [live74, coloured74]
  rw [child]
  dsimp only [result73]
  try dsimp only [colour, result74]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree75_agree : tree75 = literal75 := by
  rw [tree75_def]
  rfl
theorem node75_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree75 live75 coloured75 = result75 := by
  rw [tree75_def]
  try dsimp only [colour, result75]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree76_agree : tree76 = literal76 := by
  rw [tree76_def, tree74_agree, tree75_agree]
  rfl
theorem node76_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree76 live76 coloured76 = result76 := by
  rw [tree76_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node74_eq
  unfold live74 coloured74 at child
  try dsimp only [live76, coloured76]
  rw [child]
  dsimp only [result74]
  have child := node75_eq
  unfold live75 coloured75 at child
  try dsimp only [live76, coloured76]
  rw [child]
  dsimp only [result75]
  try dsimp only [colour, result76]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree77_agree : tree77 = literal77 := by
  rw [tree77_def]
  rfl
theorem node77_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree77 live77 coloured77 = result77 := by
  rw [tree77_def]
  try dsimp only [colour, result77]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree78_agree : tree78 = literal78 := by
  rw [tree78_def, tree76_agree, tree77_agree]
  rfl
theorem node78_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree78 live78 coloured78 = result78 := by
  rw [tree78_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node76_eq
  unfold live76 coloured76 at child
  try dsimp only [live78, coloured78]
  rw [child]
  dsimp only [result76]
  have child := node77_eq
  unfold live77 coloured77 at child
  try dsimp only [live78, coloured78]
  rw [child]
  dsimp only [result77]
  try dsimp only [colour, result78]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree79_agree : tree79 = literal79 := by
  rw [tree79_def]
  rfl
theorem node79_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree79 live79 coloured79 = result79 := by
  rw [tree79_def]
  try dsimp only [colour, result79]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree80_agree : tree80 = literal80 := by
  rw [tree80_def, tree78_agree, tree79_agree]
  rfl
theorem node80_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree80 live80 coloured80 = result80 := by
  rw [tree80_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node78_eq
  unfold live78 coloured78 at child
  try dsimp only [live80, coloured80]
  rw [child]
  dsimp only [result78]
  have child := node79_eq
  unfold live79 coloured79 at child
  try dsimp only [live80, coloured80]
  rw [child]
  dsimp only [result79]
  try dsimp only [colour, result80]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree81_agree : tree81 = literal81 := by
  rw [tree81_def]
  rfl
theorem node81_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree81 live81 coloured81 = result81 := by
  rw [tree81_def]
  try dsimp only [colour, result81]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree82_agree : tree82 = literal82 := by
  rw [tree82_def, tree80_agree, tree81_agree]
  rfl
theorem node82_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree82 live82 coloured82 = result82 := by
  rw [tree82_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node80_eq
  unfold live80 coloured80 at child
  try dsimp only [live82, coloured82]
  rw [child]
  dsimp only [result80]
  have child := node81_eq
  unfold live81 coloured81 at child
  try dsimp only [live82, coloured82]
  rw [child]
  dsimp only [result81]
  try dsimp only [colour, result82]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree83_agree : tree83 = literal83 := by
  rw [tree83_def]
  rfl
theorem node83_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree83 live83 coloured83 = result83 := by
  rw [tree83_def]
  try dsimp only [colour, result83]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree84_agree : tree84 = literal84 := by
  rw [tree84_def, tree82_agree, tree83_agree]
  rfl
theorem node84_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree84 live84 coloured84 = result84 := by
  rw [tree84_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node82_eq
  unfold live82 coloured82 at child
  try dsimp only [live84, coloured84]
  rw [child]
  dsimp only [result82]
  have child := node83_eq
  unfold live83 coloured83 at child
  try dsimp only [live84, coloured84]
  rw [child]
  dsimp only [result83]
  try dsimp only [colour, result84]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree85_agree : tree85 = literal85 := by
  rw [tree85_def]
  rfl
theorem node85_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree85 live85 coloured85 = result85 := by
  rw [tree85_def]
  try dsimp only [colour, result85]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree86_agree : tree86 = literal86 := by
  rw [tree86_def, tree84_agree, tree85_agree]
  rfl
theorem node86_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree86 live86 coloured86 = result86 := by
  rw [tree86_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node84_eq
  unfold live84 coloured84 at child
  try dsimp only [live86, coloured86]
  rw [child]
  dsimp only [result84]
  have child := node85_eq
  unfold live85 coloured85 at child
  try dsimp only [live86, coloured86]
  rw [child]
  dsimp only [result85]
  try dsimp only [colour, result86]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree87_agree : tree87 = literal87 := by
  rw [tree87_def]
  rfl
theorem node87_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree87 live87 coloured87 = result87 := by
  rw [tree87_def]
  try dsimp only [colour, result87]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree88_agree : tree88 = literal88 := by
  rw [tree88_def, tree86_agree, tree87_agree]
  rfl
theorem node88_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree88 live88 coloured88 = result88 := by
  rw [tree88_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node86_eq
  unfold live86 coloured86 at child
  try dsimp only [live88, coloured88]
  rw [child]
  dsimp only [result86]
  have child := node87_eq
  unfold live87 coloured87 at child
  try dsimp only [live88, coloured88]
  rw [child]
  dsimp only [result87]
  try dsimp only [colour, result88]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree89_agree : tree89 = literal89 := by
  rw [tree89_def]
  rfl
theorem node89_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree89 live89 coloured89 = result89 := by
  rw [tree89_def]
  try dsimp only [colour, result89]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree90_agree : tree90 = literal90 := by
  rw [tree90_def, tree88_agree, tree89_agree]
  rfl
theorem node90_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree90 live90 coloured90 = result90 := by
  rw [tree90_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node88_eq
  unfold live88 coloured88 at child
  try dsimp only [live90, coloured90]
  rw [child]
  dsimp only [result88]
  have child := node89_eq
  unfold live89 coloured89 at child
  try dsimp only [live90, coloured90]
  rw [child]
  dsimp only [result89]
  try dsimp only [colour, result90]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree91_agree : tree91 = literal91 := by
  rw [tree91_def]
  rfl
theorem node91_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree91 live91 coloured91 = result91 := by
  rw [tree91_def]
  try dsimp only [colour, result91]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree92_agree : tree92 = literal92 := by
  rw [tree92_def, tree90_agree, tree91_agree]
  rfl
theorem node92_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree92 live92 coloured92 = result92 := by
  rw [tree92_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node90_eq
  unfold live90 coloured90 at child
  try dsimp only [live92, coloured92]
  rw [child]
  dsimp only [result90]
  have child := node91_eq
  unfold live91 coloured91 at child
  try dsimp only [live92, coloured92]
  rw [child]
  dsimp only [result91]
  try dsimp only [colour, result92]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree93_agree : tree93 = literal93 := by
  rw [tree93_def]
  rfl
theorem node93_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree93 live93 coloured93 = result93 := by
  rw [tree93_def]
  try dsimp only [colour, result93]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree94_agree : tree94 = literal94 := by
  rw [tree94_def, tree92_agree, tree93_agree]
  rfl
theorem node94_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree94 live94 coloured94 = result94 := by
  rw [tree94_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node92_eq
  unfold live92 coloured92 at child
  try dsimp only [live94, coloured94]
  rw [child]
  dsimp only [result92]
  have child := node93_eq
  unfold live93 coloured93 at child
  try dsimp only [live94, coloured94]
  rw [child]
  dsimp only [result93]
  try dsimp only [colour, result94]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree95_agree : tree95 = literal95 := by
  rw [tree95_def]
  rfl
theorem node95_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree95 live95 coloured95 = result95 := by
  rw [tree95_def]
  try dsimp only [colour, result95]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
