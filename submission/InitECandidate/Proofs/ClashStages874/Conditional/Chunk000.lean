import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages874.Data
import InitECandidate.Proofs.ClashComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages874
theorem tree0_agree_conditional : tree0 = literal0 := by
  rw [tree0_def]
  rfl
theorem node0_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree0 live0 coloured0 = result0 := by
  rw [tree0_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1_agree_conditional : tree1 = literal1 := by
  rw [tree1_def]
  rfl
theorem node1_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1 live1 coloured1 = result1 := by
  rw [tree1_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2_agree_conditional
    (child0 : tree0 = literal0)
    (child1 : tree1 = literal1) : tree2 = literal2 := by
  rw [tree2_def, child0, child1]
  rfl
theorem node2_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree0 live0 coloured0 = result0)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1 live1 coloured1 = result1) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2 live2 coloured2 = result2 := by
  rw [tree2_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live0 coloured0 at child
  try dsimp only [live2, coloured2]
  rw [child]
  dsimp only [result0]
  have child := child1
  unfold live1 coloured1 at child
  try dsimp only [live2, coloured2]
  rw [child]
  dsimp only [result1]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3_agree_conditional : tree3 = literal3 := by
  rw [tree3_def]
  rfl
theorem node3_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3 live3 coloured3 = result3 := by
  rw [tree3_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4_agree_conditional
    (child0 : tree2 = literal2)
    (child1 : tree3 = literal3) : tree4 = literal4 := by
  rw [tree4_def, child0, child1]
  rfl
theorem node4_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2 live2 coloured2 = result2)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3 live3 coloured3 = result3) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4 live4 coloured4 = result4 := by
  rw [tree4_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2 coloured2 at child
  try dsimp only [live4, coloured4]
  rw [child]
  dsimp only [result2]
  have child := child1
  unfold live3 coloured3 at child
  try dsimp only [live4, coloured4]
  rw [child]
  dsimp only [result3]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5_agree_conditional : tree5 = literal5 := by
  rw [tree5_def]
  rfl
theorem node5_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5 live5 coloured5 = result5 := by
  rw [tree5_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6_agree_conditional : tree6 = literal6 := by
  rw [tree6_def]
  rfl
theorem node6_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6 live6 coloured6 = result6 := by
  rw [tree6_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7_agree_conditional
    (child0 : tree5 = literal5)
    (child1 : tree6 = literal6) : tree7 = literal7 := by
  rw [tree7_def, child0, child1]
  rfl
theorem node7_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5 live5 coloured5 = result5)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6 live6 coloured6 = result6) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7 live7 coloured7 = result7 := by
  rw [tree7_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5 coloured5 at child
  try dsimp only [live7, coloured7]
  rw [child]
  dsimp only [result5]
  have child := child1
  unfold live6 coloured6 at child
  try dsimp only [live7, coloured7]
  rw [child]
  dsimp only [result6]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8_agree_conditional : tree8 = literal8 := by
  rw [tree8_def]
  rfl
theorem node8_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8 live8 coloured8 = result8 := by
  rw [tree8_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9_agree_conditional
    (child0 : tree7 = literal7)
    (child1 : tree8 = literal8) : tree9 = literal9 := by
  rw [tree9_def, child0, child1]
  rfl
theorem node9_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7 live7 coloured7 = result7)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8 live8 coloured8 = result8) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9 live9 coloured9 = result9 := by
  rw [tree9_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7 coloured7 at child
  try dsimp only [live9, coloured9]
  rw [child]
  dsimp only [result7]
  have child := child1
  unfold live8 coloured8 at child
  try dsimp only [live9, coloured9]
  rw [child]
  dsimp only [result8]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10_agree_conditional : tree10 = literal10 := by
  rw [tree10_def]
  rfl
theorem node10_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10 live10 coloured10 = result10 := by
  rw [tree10_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11_agree_conditional : tree11 = literal11 := by
  rw [tree11_def]
  rfl
theorem node11_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11 live11 coloured11 = result11 := by
  rw [tree11_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12_agree_conditional
    (child0 : tree10 = literal10)
    (child1 : tree11 = literal11) : tree12 = literal12 := by
  rw [tree12_def, child0, child1]
  rfl
theorem node12_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10 live10 coloured10 = result10)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11 live11 coloured11 = result11) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12 live12 coloured12 = result12 := by
  rw [tree12_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10 coloured10 at child
  try dsimp only [live12, coloured12]
  rw [child]
  dsimp only [result10]
  have child := child1
  unfold live11 coloured11 at child
  try dsimp only [live12, coloured12]
  rw [child]
  dsimp only [result11]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree13_agree_conditional : tree13 = literal13 := by
  rw [tree13_def]
  rfl
theorem node13_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree13 live13 coloured13 = result13 := by
  rw [tree13_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree14_agree_conditional
    (child0 : tree12 = literal12)
    (child1 : tree13 = literal13) : tree14 = literal14 := by
  rw [tree14_def, child0, child1]
  rfl
theorem node14_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12 live12 coloured12 = result12)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree13 live13 coloured13 = result13) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree14 live14 coloured14 = result14 := by
  rw [tree14_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12 coloured12 at child
  try dsimp only [live14, coloured14]
  rw [child]
  dsimp only [result12]
  have child := child1
  unfold live13 coloured13 at child
  try dsimp only [live14, coloured14]
  rw [child]
  dsimp only [result13]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree15_agree_conditional : tree15 = literal15 := by
  rw [tree15_def]
  rfl
theorem node15_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree15 live15 coloured15 = result15 := by
  rw [tree15_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree16_agree_conditional
    (child0 : tree14 = literal14)
    (child1 : tree15 = literal15) : tree16 = literal16 := by
  rw [tree16_def, child0, child1]
  rfl
theorem node16_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree14 live14 coloured14 = result14)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree15 live15 coloured15 = result15) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree16 live16 coloured16 = result16 := by
  rw [tree16_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live14 coloured14 at child
  try dsimp only [live16, coloured16]
  rw [child]
  dsimp only [result14]
  have child := child1
  unfold live15 coloured15 at child
  try dsimp only [live16, coloured16]
  rw [child]
  dsimp only [result15]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree17_agree_conditional : tree17 = literal17 := by
  rw [tree17_def]
  rfl
theorem node17_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree17 live17 coloured17 = result17 := by
  rw [tree17_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree18_agree_conditional
    (child0 : tree16 = literal16)
    (child1 : tree17 = literal17) : tree18 = literal18 := by
  rw [tree18_def, child0, child1]
  rfl
theorem node18_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree16 live16 coloured16 = result16)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree17 live17 coloured17 = result17) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree18 live18 coloured18 = result18 := by
  rw [tree18_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live16 coloured16 at child
  try dsimp only [live18, coloured18]
  rw [child]
  dsimp only [result16]
  have child := child1
  unfold live17 coloured17 at child
  try dsimp only [live18, coloured18]
  rw [child]
  dsimp only [result17]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree19_agree_conditional : tree19 = literal19 := by
  rw [tree19_def]
  rfl
theorem node19_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree19 live19 coloured19 = result19 := by
  rw [tree19_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree20_agree_conditional
    (child0 : tree18 = literal18)
    (child1 : tree19 = literal19) : tree20 = literal20 := by
  rw [tree20_def, child0, child1]
  rfl
theorem node20_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree18 live18 coloured18 = result18)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree19 live19 coloured19 = result19) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree20 live20 coloured20 = result20 := by
  rw [tree20_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live18 coloured18 at child
  try dsimp only [live20, coloured20]
  rw [child]
  dsimp only [result18]
  have child := child1
  unfold live19 coloured19 at child
  try dsimp only [live20, coloured20]
  rw [child]
  dsimp only [result19]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree21_agree_conditional : tree21 = literal21 := by
  rw [tree21_def]
  rfl
theorem node21_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree21 live21 coloured21 = result21 := by
  rw [tree21_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree22_agree_conditional
    (child0 : tree20 = literal20)
    (child1 : tree21 = literal21) : tree22 = literal22 := by
  rw [tree22_def, child0, child1]
  rfl
theorem node22_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree20 live20 coloured20 = result20)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree21 live21 coloured21 = result21) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree22 live22 coloured22 = result22 := by
  rw [tree22_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live20 coloured20 at child
  try dsimp only [live22, coloured22]
  rw [child]
  dsimp only [result20]
  have child := child1
  unfold live21 coloured21 at child
  try dsimp only [live22, coloured22]
  rw [child]
  dsimp only [result21]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree23_agree_conditional : tree23 = literal23 := by
  rw [tree23_def]
  rfl
theorem node23_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree23 live23 coloured23 = result23 := by
  rw [tree23_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree24_agree_conditional
    (child0 : tree22 = literal22)
    (child1 : tree23 = literal23) : tree24 = literal24 := by
  rw [tree24_def, child0, child1]
  rfl
theorem node24_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree22 live22 coloured22 = result22)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree23 live23 coloured23 = result23) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree24 live24 coloured24 = result24 := by
  rw [tree24_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live22 coloured22 at child
  try dsimp only [live24, coloured24]
  rw [child]
  dsimp only [result22]
  have child := child1
  unfold live23 coloured23 at child
  try dsimp only [live24, coloured24]
  rw [child]
  dsimp only [result23]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree25_agree_conditional : tree25 = literal25 := by
  rw [tree25_def]
  rfl
theorem node25_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree25 live25 coloured25 = result25 := by
  rw [tree25_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree26_agree_conditional
    (child0 : tree24 = literal24)
    (child1 : tree25 = literal25) : tree26 = literal26 := by
  rw [tree26_def, child0, child1]
  rfl
theorem node26_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree24 live24 coloured24 = result24)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree25 live25 coloured25 = result25) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree26 live26 coloured26 = result26 := by
  rw [tree26_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live24 coloured24 at child
  try dsimp only [live26, coloured26]
  rw [child]
  dsimp only [result24]
  have child := child1
  unfold live25 coloured25 at child
  try dsimp only [live26, coloured26]
  rw [child]
  dsimp only [result25]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree27_agree_conditional
    (child0 : tree9 = literal9)
    (child1 : tree26 = literal26) : tree27 = literal27 := by
  rw [tree27_def, child0, child1]
  rfl
theorem node27_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9 live9 coloured9 = result9)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree26 live26 coloured26 = result26) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree27 live27 coloured27 = result27 := by
  rw [tree27_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9 coloured9 at child
  try dsimp only [live27, coloured27]
  rw [child]
  dsimp only [result9]
  have child := child1
  unfold live26 coloured26 at child
  try dsimp only [live27, coloured27]
  rw [child]
  dsimp only [result26]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree28_agree_conditional : tree28 = literal28 := by
  rw [tree28_def]
  rfl
theorem node28_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree28 live28 coloured28 = result28 := by
  rw [tree28_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree29_agree_conditional
    (child0 : tree27 = literal27)
    (child1 : tree28 = literal28) : tree29 = literal29 := by
  rw [tree29_def, child0, child1]
  rfl
theorem node29_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree27 live27 coloured27 = result27)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree28 live28 coloured28 = result28) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree29 live29 coloured29 = result29 := by
  rw [tree29_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live27 coloured27 at child
  try dsimp only [live29, coloured29]
  rw [child]
  dsimp only [result27]
  have child := child1
  unfold live28 coloured28 at child
  try dsimp only [live29, coloured29]
  rw [child]
  dsimp only [result28]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree30_agree_conditional : tree30 = literal30 := by
  rw [tree30_def]
  rfl
theorem node30_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree30 live30 coloured30 = result30 := by
  rw [tree30_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree31_agree_conditional
    (child0 : tree29 = literal29)
    (child1 : tree30 = literal30) : tree31 = literal31 := by
  rw [tree31_def, child0, child1]
  rfl
theorem node31_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree29 live29 coloured29 = result29)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree30 live30 coloured30 = result30) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree31 live31 coloured31 = result31 := by
  rw [tree31_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live29 coloured29 at child
  try dsimp only [live31, coloured31]
  rw [child]
  dsimp only [result29]
  have child := child1
  unfold live30 coloured30 at child
  try dsimp only [live31, coloured31]
  rw [child]
  dsimp only [result30]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree32_agree_conditional : tree32 = literal32 := by
  rw [tree32_def]
  rfl
theorem node32_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree32 live32 coloured32 = result32 := by
  rw [tree32_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree33_agree_conditional
    (child0 : tree31 = literal31)
    (child1 : tree32 = literal32) : tree33 = literal33 := by
  rw [tree33_def, child0, child1]
  rfl
theorem node33_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree31 live31 coloured31 = result31)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree32 live32 coloured32 = result32) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree33 live33 coloured33 = result33 := by
  rw [tree33_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live31 coloured31 at child
  try dsimp only [live33, coloured33]
  rw [child]
  dsimp only [result31]
  have child := child1
  unfold live32 coloured32 at child
  try dsimp only [live33, coloured33]
  rw [child]
  dsimp only [result32]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree34_agree_conditional : tree34 = literal34 := by
  rw [tree34_def]
  rfl
theorem node34_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree34 live34 coloured34 = result34 := by
  rw [tree34_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree35_agree_conditional : tree35 = literal35 := by
  rw [tree35_def]
  rfl
theorem node35_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree35 live35 coloured35 = result35 := by
  rw [tree35_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree36_agree_conditional
    (child0 : tree34 = literal34)
    (child1 : tree35 = literal35) : tree36 = literal36 := by
  rw [tree36_def, child0, child1]
  rfl
theorem node36_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree34 live34 coloured34 = result34)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree35 live35 coloured35 = result35) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree36 live36 coloured36 = result36 := by
  rw [tree36_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live34 coloured34 at child
  try dsimp only [live36, coloured36]
  rw [child]
  dsimp only [result34]
  have child := child1
  unfold live35 coloured35 at child
  try dsimp only [live36, coloured36]
  rw [child]
  dsimp only [result35]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree37_agree_conditional : tree37 = literal37 := by
  rw [tree37_def]
  rfl
theorem node37_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree37 live37 coloured37 = result37 := by
  rw [tree37_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree38_agree_conditional : tree38 = literal38 := by
  rw [tree38_def]
  rfl
theorem node38_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree38 live38 coloured38 = result38 := by
  rw [tree38_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree39_agree_conditional
    (child0 : tree37 = literal37)
    (child1 : tree38 = literal38) : tree39 = literal39 := by
  rw [tree39_def, child0, child1]
  rfl
theorem node39_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree37 live37 coloured37 = result37)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree38 live38 coloured38 = result38) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree39 live39 coloured39 = result39 := by
  rw [tree39_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live37 coloured37 at child
  try dsimp only [live39, coloured39]
  rw [child]
  dsimp only [result37]
  have child := child1
  unfold live38 coloured38 at child
  try dsimp only [live39, coloured39]
  rw [child]
  dsimp only [result38]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree40_agree_conditional : tree40 = literal40 := by
  rw [tree40_def]
  rfl
theorem node40_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree40 live40 coloured40 = result40 := by
  rw [tree40_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree41_agree_conditional
    (child0 : tree39 = literal39)
    (child1 : tree40 = literal40) : tree41 = literal41 := by
  rw [tree41_def, child0, child1]
  rfl
theorem node41_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree39 live39 coloured39 = result39)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree40 live40 coloured40 = result40) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree41 live41 coloured41 = result41 := by
  rw [tree41_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live39 coloured39 at child
  try dsimp only [live41, coloured41]
  rw [child]
  dsimp only [result39]
  have child := child1
  unfold live40 coloured40 at child
  try dsimp only [live41, coloured41]
  rw [child]
  dsimp only [result40]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree42_agree_conditional
    (child0 : tree36 = literal36)
    (child1 : tree41 = literal41) : tree42 = literal42 := by
  rw [tree42_def, child0, child1]
  rfl
theorem node42_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree36 live36 coloured36 = result36)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree41 live41 coloured41 = result41) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree42 live42 coloured42 = result42 := by
  rw [tree42_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live36 coloured36 at child
  try dsimp only [live42, coloured42]
  rw [child]
  dsimp only [result36]
  have child := child1
  unfold live41 coloured41 at child
  try dsimp only [live42, coloured42]
  rw [child]
  dsimp only [result41]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree43_agree_conditional
    (child0 : tree33 = literal33)
    (child1 : tree42 = literal42) : tree43 = literal43 := by
  rw [tree43_def, child0, child1]
  rfl
theorem node43_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree33 live33 coloured33 = result33)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree42 live42 coloured42 = result42) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree43 live43 coloured43 = result43 := by
  rw [tree43_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live33 coloured33 at child
  try dsimp only [live43, coloured43]
  rw [child]
  dsimp only [result33]
  have child := child1
  unfold live42 coloured42 at child
  try dsimp only [live43, coloured43]
  rw [child]
  dsimp only [result42]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree44_agree_conditional : tree44 = literal44 := by
  rw [tree44_def]
  rfl
theorem node44_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree44 live44 coloured44 = result44 := by
  rw [tree44_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree45_agree_conditional
    (child0 : tree43 = literal43)
    (child1 : tree44 = literal44) : tree45 = literal45 := by
  rw [tree45_def, child0, child1]
  rfl
theorem node45_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree43 live43 coloured43 = result43)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree44 live44 coloured44 = result44) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree45 live45 coloured45 = result45 := by
  rw [tree45_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live43 coloured43 at child
  try dsimp only [live45, coloured45]
  rw [child]
  dsimp only [result43]
  have child := child1
  unfold live44 coloured44 at child
  try dsimp only [live45, coloured45]
  rw [child]
  dsimp only [result44]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree46_agree_conditional : tree46 = literal46 := by
  rw [tree46_def]
  rfl
theorem node46_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree46 live46 coloured46 = result46 := by
  rw [tree46_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree47_agree_conditional
    (child0 : tree45 = literal45)
    (child1 : tree46 = literal46) : tree47 = literal47 := by
  rw [tree47_def, child0, child1]
  rfl
theorem node47_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree45 live45 coloured45 = result45)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree46 live46 coloured46 = result46) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree47 live47 coloured47 = result47 := by
  rw [tree47_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live45 coloured45 at child
  try dsimp only [live47, coloured47]
  rw [child]
  dsimp only [result45]
  have child := child1
  unfold live46 coloured46 at child
  try dsimp only [live47, coloured47]
  rw [child]
  dsimp only [result46]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree48_agree_conditional : tree48 = literal48 := by
  rw [tree48_def]
  rfl
theorem node48_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree48 live48 coloured48 = result48 := by
  rw [tree48_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree49_agree_conditional : tree49 = literal49 := by
  rw [tree49_def]
  rfl
theorem node49_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree49 live49 coloured49 = result49 := by
  rw [tree49_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree50_agree_conditional
    (child0 : tree48 = literal48)
    (child1 : tree49 = literal49) : tree50 = literal50 := by
  rw [tree50_def, child0, child1]
  rfl
theorem node50_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree48 live48 coloured48 = result48)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree49 live49 coloured49 = result49) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree50 live50 coloured50 = result50 := by
  rw [tree50_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live48 coloured48 at child
  try dsimp only [live50, coloured50]
  rw [child]
  dsimp only [result48]
  have child := child1
  unfold live49 coloured49 at child
  try dsimp only [live50, coloured50]
  rw [child]
  dsimp only [result49]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree51_agree_conditional
    (child0 : tree47 = literal47)
    (child1 : tree50 = literal50) : tree51 = literal51 := by
  rw [tree51_def, child0, child1]
  rfl
theorem node51_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree47 live47 coloured47 = result47)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree50 live50 coloured50 = result50) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree51 live51 coloured51 = result51 := by
  rw [tree51_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live47 coloured47 at child
  try dsimp only [live51, coloured51]
  rw [child]
  dsimp only [result47]
  have child := child1
  unfold live50 coloured50 at child
  try dsimp only [live51, coloured51]
  rw [child]
  dsimp only [result50]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree52_agree_conditional : tree52 = literal52 := by
  rw [tree52_def]
  rfl
theorem node52_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree52 live52 coloured52 = result52 := by
  rw [tree52_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree53_agree_conditional
    (child0 : tree51 = literal51)
    (child1 : tree52 = literal52) : tree53 = literal53 := by
  rw [tree53_def, child0, child1]
  rfl
theorem node53_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree51 live51 coloured51 = result51)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree52 live52 coloured52 = result52) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree53 live53 coloured53 = result53 := by
  rw [tree53_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live51 coloured51 at child
  try dsimp only [live53, coloured53]
  rw [child]
  dsimp only [result51]
  have child := child1
  unfold live52 coloured52 at child
  try dsimp only [live53, coloured53]
  rw [child]
  dsimp only [result52]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree54_agree_conditional
    (child0 : tree4 = literal4)
    (child1 : tree53 = literal53) : tree54 = literal54 := by
  rw [tree54_def, child0, child1]
  rfl
theorem node54_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4 live4 coloured4 = result4)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree53 live53 coloured53 = result53) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree54 live54 coloured54 = result54 := by
  rw [tree54_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4 coloured4 at child
  try dsimp only [live54, coloured54]
  rw [child]
  dsimp only [result4]
  have child := child1
  unfold live53 coloured53 at child
  try dsimp only [live54, coloured54]
  rw [child]
  dsimp only [result53]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree55_agree_conditional : tree55 = literal55 := by
  rw [tree55_def]
  rfl
theorem node55_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree55 live55 coloured55 = result55 := by
  rw [tree55_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree56_agree_conditional
    (child0 : tree54 = literal54)
    (child1 : tree55 = literal55) : tree56 = literal56 := by
  rw [tree56_def, child0, child1]
  rfl
theorem node56_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree54 live54 coloured54 = result54)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree55 live55 coloured55 = result55) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree56 live56 coloured56 = result56 := by
  rw [tree56_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live54 coloured54 at child
  try dsimp only [live56, coloured56]
  rw [child]
  dsimp only [result54]
  have child := child1
  unfold live55 coloured55 at child
  try dsimp only [live56, coloured56]
  rw [child]
  dsimp only [result55]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree57_agree_conditional : tree57 = literal57 := by
  rw [tree57_def]
  rfl
theorem node57_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree57 live57 coloured57 = result57 := by
  rw [tree57_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree58_agree_conditional
    (child0 : tree56 = literal56)
    (child1 : tree57 = literal57) : tree58 = literal58 := by
  rw [tree58_def, child0, child1]
  rfl
theorem node58_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree56 live56 coloured56 = result56)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree57 live57 coloured57 = result57) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree58 live58 coloured58 = result58 := by
  rw [tree58_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live56 coloured56 at child
  try dsimp only [live58, coloured58]
  rw [child]
  dsimp only [result56]
  have child := child1
  unfold live57 coloured57 at child
  try dsimp only [live58, coloured58]
  rw [child]
  dsimp only [result57]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree59_agree_conditional : tree59 = literal59 := by
  rw [tree59_def]
  rfl
theorem node59_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree59 live59 coloured59 = result59 := by
  rw [tree59_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree60_agree_conditional
    (child0 : tree58 = literal58)
    (child1 : tree59 = literal59) : tree60 = literal60 := by
  rw [tree60_def, child0, child1]
  rfl
theorem node60_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree58 live58 coloured58 = result58)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree59 live59 coloured59 = result59) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree60 live60 coloured60 = result60 := by
  rw [tree60_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live58 coloured58 at child
  try dsimp only [live60, coloured60]
  rw [child]
  dsimp only [result58]
  have child := child1
  unfold live59 coloured59 at child
  try dsimp only [live60, coloured60]
  rw [child]
  dsimp only [result59]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree61_agree_conditional : tree61 = literal61 := by
  rw [tree61_def]
  rfl
theorem node61_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree61 live61 coloured61 = result61 := by
  rw [tree61_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree62_agree_conditional : tree62 = literal62 := by
  rw [tree62_def]
  rfl
theorem node62_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree62 live62 coloured62 = result62 := by
  rw [tree62_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree63_agree_conditional
    (child0 : tree61 = literal61)
    (child1 : tree62 = literal62) : tree63 = literal63 := by
  rw [tree63_def, child0, child1]
  rfl
theorem node63_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree61 live61 coloured61 = result61)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree62 live62 coloured62 = result62) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree63 live63 coloured63 = result63 := by
  rw [tree63_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live61 coloured61 at child
  try dsimp only [live63, coloured63]
  rw [child]
  dsimp only [result61]
  have child := child1
  unfold live62 coloured62 at child
  try dsimp only [live63, coloured63]
  rw [child]
  dsimp only [result62]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree64_agree_conditional : tree64 = literal64 := by
  rw [tree64_def]
  rfl
theorem node64_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree64 live64 coloured64 = result64 := by
  rw [tree64_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree65_agree_conditional : tree65 = literal65 := by
  rw [tree65_def]
  rfl
theorem node65_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree65 live65 coloured65 = result65 := by
  rw [tree65_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree66_agree_conditional
    (child0 : tree64 = literal64)
    (child1 : tree65 = literal65) : tree66 = literal66 := by
  rw [tree66_def, child0, child1]
  rfl
theorem node66_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree64 live64 coloured64 = result64)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree65 live65 coloured65 = result65) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree66 live66 coloured66 = result66 := by
  rw [tree66_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live64 coloured64 at child
  try dsimp only [live66, coloured66]
  rw [child]
  dsimp only [result64]
  have child := child1
  unfold live65 coloured65 at child
  try dsimp only [live66, coloured66]
  rw [child]
  dsimp only [result65]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree67_agree_conditional : tree67 = literal67 := by
  rw [tree67_def]
  rfl
theorem node67_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree67 live67 coloured67 = result67 := by
  rw [tree67_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree68_agree_conditional
    (child0 : tree66 = literal66)
    (child1 : tree67 = literal67) : tree68 = literal68 := by
  rw [tree68_def, child0, child1]
  rfl
theorem node68_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree66 live66 coloured66 = result66)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree67 live67 coloured67 = result67) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree68 live68 coloured68 = result68 := by
  rw [tree68_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live66 coloured66 at child
  try dsimp only [live68, coloured68]
  rw [child]
  dsimp only [result66]
  have child := child1
  unfold live67 coloured67 at child
  try dsimp only [live68, coloured68]
  rw [child]
  dsimp only [result67]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree69_agree_conditional
    (child0 : tree63 = literal63)
    (child1 : tree68 = literal68) : tree69 = literal69 := by
  rw [tree69_def, child0, child1]
  rfl
theorem node69_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree63 live63 coloured63 = result63)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree68 live68 coloured68 = result68) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree69 live69 coloured69 = result69 := by
  rw [tree69_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live63 coloured63 at child
  try dsimp only [live69, coloured69]
  rw [child]
  dsimp only [result63]
  have child := child1
  unfold live68 coloured68 at child
  try dsimp only [live69, coloured69]
  rw [child]
  dsimp only [result68]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree70_agree_conditional
    (child0 : tree60 = literal60)
    (child1 : tree69 = literal69) : tree70 = literal70 := by
  rw [tree70_def, child0, child1]
  rfl
theorem node70_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree60 live60 coloured60 = result60)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree69 live69 coloured69 = result69) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree70 live70 coloured70 = result70 := by
  rw [tree70_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live60 coloured60 at child
  try dsimp only [live70, coloured70]
  rw [child]
  dsimp only [result60]
  have child := child1
  unfold live69 coloured69 at child
  try dsimp only [live70, coloured70]
  rw [child]
  dsimp only [result69]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree71_agree_conditional : tree71 = literal71 := by
  rw [tree71_def]
  rfl
theorem node71_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree71 live71 coloured71 = result71 := by
  rw [tree71_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree72_agree_conditional
    (child0 : tree70 = literal70)
    (child1 : tree71 = literal71) : tree72 = literal72 := by
  rw [tree72_def, child0, child1]
  rfl
theorem node72_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree70 live70 coloured70 = result70)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree71 live71 coloured71 = result71) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree72 live72 coloured72 = result72 := by
  rw [tree72_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live70 coloured70 at child
  try dsimp only [live72, coloured72]
  rw [child]
  dsimp only [result70]
  have child := child1
  unfold live71 coloured71 at child
  try dsimp only [live72, coloured72]
  rw [child]
  dsimp only [result71]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree73_agree_conditional : tree73 = literal73 := by
  rw [tree73_def]
  rfl
theorem node73_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree73 live73 coloured73 = result73 := by
  rw [tree73_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree74_agree_conditional
    (child0 : tree72 = literal72)
    (child1 : tree73 = literal73) : tree74 = literal74 := by
  rw [tree74_def, child0, child1]
  rfl
theorem node74_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree72 live72 coloured72 = result72)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree73 live73 coloured73 = result73) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree74 live74 coloured74 = result74 := by
  rw [tree74_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live72 coloured72 at child
  try dsimp only [live74, coloured74]
  rw [child]
  dsimp only [result72]
  have child := child1
  unfold live73 coloured73 at child
  try dsimp only [live74, coloured74]
  rw [child]
  dsimp only [result73]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree75_agree_conditional : tree75 = literal75 := by
  rw [tree75_def]
  rfl
theorem node75_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree75 live75 coloured75 = result75 := by
  rw [tree75_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree76_agree_conditional
    (child0 : tree74 = literal74)
    (child1 : tree75 = literal75) : tree76 = literal76 := by
  rw [tree76_def, child0, child1]
  rfl
theorem node76_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree74 live74 coloured74 = result74)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree75 live75 coloured75 = result75) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree76 live76 coloured76 = result76 := by
  rw [tree76_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live74 coloured74 at child
  try dsimp only [live76, coloured76]
  rw [child]
  dsimp only [result74]
  have child := child1
  unfold live75 coloured75 at child
  try dsimp only [live76, coloured76]
  rw [child]
  dsimp only [result75]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree77_agree_conditional : tree77 = literal77 := by
  rw [tree77_def]
  rfl
theorem node77_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree77 live77 coloured77 = result77 := by
  rw [tree77_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree78_agree_conditional
    (child0 : tree76 = literal76)
    (child1 : tree77 = literal77) : tree78 = literal78 := by
  rw [tree78_def, child0, child1]
  rfl
theorem node78_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree76 live76 coloured76 = result76)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree77 live77 coloured77 = result77) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree78 live78 coloured78 = result78 := by
  rw [tree78_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live76 coloured76 at child
  try dsimp only [live78, coloured78]
  rw [child]
  dsimp only [result76]
  have child := child1
  unfold live77 coloured77 at child
  try dsimp only [live78, coloured78]
  rw [child]
  dsimp only [result77]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree79_agree_conditional : tree79 = literal79 := by
  rw [tree79_def]
  rfl
theorem node79_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree79 live79 coloured79 = result79 := by
  rw [tree79_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree80_agree_conditional
    (child0 : tree78 = literal78)
    (child1 : tree79 = literal79) : tree80 = literal80 := by
  rw [tree80_def, child0, child1]
  rfl
theorem node80_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree78 live78 coloured78 = result78)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree79 live79 coloured79 = result79) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree80 live80 coloured80 = result80 := by
  rw [tree80_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live78 coloured78 at child
  try dsimp only [live80, coloured80]
  rw [child]
  dsimp only [result78]
  have child := child1
  unfold live79 coloured79 at child
  try dsimp only [live80, coloured80]
  rw [child]
  dsimp only [result79]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree81_agree_conditional : tree81 = literal81 := by
  rw [tree81_def]
  rfl
theorem node81_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree81 live81 coloured81 = result81 := by
  rw [tree81_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree82_agree_conditional
    (child0 : tree80 = literal80)
    (child1 : tree81 = literal81) : tree82 = literal82 := by
  rw [tree82_def, child0, child1]
  rfl
theorem node82_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree80 live80 coloured80 = result80)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree81 live81 coloured81 = result81) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree82 live82 coloured82 = result82 := by
  rw [tree82_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live80 coloured80 at child
  try dsimp only [live82, coloured82]
  rw [child]
  dsimp only [result80]
  have child := child1
  unfold live81 coloured81 at child
  try dsimp only [live82, coloured82]
  rw [child]
  dsimp only [result81]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree83_agree_conditional : tree83 = literal83 := by
  rw [tree83_def]
  rfl
theorem node83_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree83 live83 coloured83 = result83 := by
  rw [tree83_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree84_agree_conditional
    (child0 : tree82 = literal82)
    (child1 : tree83 = literal83) : tree84 = literal84 := by
  rw [tree84_def, child0, child1]
  rfl
theorem node84_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree82 live82 coloured82 = result82)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree83 live83 coloured83 = result83) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree84 live84 coloured84 = result84 := by
  rw [tree84_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live82 coloured82 at child
  try dsimp only [live84, coloured84]
  rw [child]
  dsimp only [result82]
  have child := child1
  unfold live83 coloured83 at child
  try dsimp only [live84, coloured84]
  rw [child]
  dsimp only [result83]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree85_agree_conditional : tree85 = literal85 := by
  rw [tree85_def]
  rfl
theorem node85_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree85 live85 coloured85 = result85 := by
  rw [tree85_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree86_agree_conditional
    (child0 : tree84 = literal84)
    (child1 : tree85 = literal85) : tree86 = literal86 := by
  rw [tree86_def, child0, child1]
  rfl
theorem node86_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree84 live84 coloured84 = result84)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree85 live85 coloured85 = result85) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree86 live86 coloured86 = result86 := by
  rw [tree86_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live84 coloured84 at child
  try dsimp only [live86, coloured86]
  rw [child]
  dsimp only [result84]
  have child := child1
  unfold live85 coloured85 at child
  try dsimp only [live86, coloured86]
  rw [child]
  dsimp only [result85]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree87_agree_conditional : tree87 = literal87 := by
  rw [tree87_def]
  rfl
theorem node87_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree87 live87 coloured87 = result87 := by
  rw [tree87_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree88_agree_conditional
    (child0 : tree86 = literal86)
    (child1 : tree87 = literal87) : tree88 = literal88 := by
  rw [tree88_def, child0, child1]
  rfl
theorem node88_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree86 live86 coloured86 = result86)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree87 live87 coloured87 = result87) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree88 live88 coloured88 = result88 := by
  rw [tree88_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live86 coloured86 at child
  try dsimp only [live88, coloured88]
  rw [child]
  dsimp only [result86]
  have child := child1
  unfold live87 coloured87 at child
  try dsimp only [live88, coloured88]
  rw [child]
  dsimp only [result87]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree89_agree_conditional : tree89 = literal89 := by
  rw [tree89_def]
  rfl
theorem node89_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree89 live89 coloured89 = result89 := by
  rw [tree89_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree90_agree_conditional : tree90 = literal90 := by
  rw [tree90_def]
  rfl
theorem node90_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree90 live90 coloured90 = result90 := by
  rw [tree90_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree91_agree_conditional
    (child0 : tree89 = literal89)
    (child1 : tree90 = literal90) : tree91 = literal91 := by
  rw [tree91_def, child0, child1]
  rfl
theorem node91_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree89 live89 coloured89 = result89)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree90 live90 coloured90 = result90) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree91 live91 coloured91 = result91 := by
  rw [tree91_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live89 coloured89 at child
  try dsimp only [live91, coloured91]
  rw [child]
  dsimp only [result89]
  have child := child1
  unfold live90 coloured90 at child
  try dsimp only [live91, coloured91]
  rw [child]
  dsimp only [result90]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree92_agree_conditional : tree92 = literal92 := by
  rw [tree92_def]
  rfl
theorem node92_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree92 live92 coloured92 = result92 := by
  rw [tree92_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree93_agree_conditional : tree93 = literal93 := by
  rw [tree93_def]
  rfl
theorem node93_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree93 live93 coloured93 = result93 := by
  rw [tree93_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree94_agree_conditional
    (child0 : tree92 = literal92)
    (child1 : tree93 = literal93) : tree94 = literal94 := by
  rw [tree94_def, child0, child1]
  rfl
theorem node94_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree92 live92 coloured92 = result92)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree93 live93 coloured93 = result93) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree94 live94 coloured94 = result94 := by
  rw [tree94_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live92 coloured92 at child
  try dsimp only [live94, coloured94]
  rw [child]
  dsimp only [result92]
  have child := child1
  unfold live93 coloured93 at child
  try dsimp only [live94, coloured94]
  rw [child]
  dsimp only [result93]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree95_agree_conditional : tree95 = literal95 := by
  rw [tree95_def]
  rfl
theorem node95_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree95 live95 coloured95 = result95 := by
  rw [tree95_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages874
