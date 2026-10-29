import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree5088_agree_conditional
    (child0 : tree5086 = literal5086)
    (child1 : tree5087 = literal5087) : tree5088 = literal5088 := by
  rw [tree5088_def, child0, child1]
  rfl
theorem node5088_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5086 live5086 coloured5086 = result5086)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5087 live5087 coloured5087 = result5087) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5088 live5088 coloured5088 = result5088 := by
  rw [tree5088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5086 coloured5086 at child
  try dsimp only [live5088, coloured5088]
  rw [child]
  dsimp only [result5086]
  have child := child1
  unfold live5087 coloured5087 at child
  try dsimp only [live5088, coloured5088]
  rw [child]
  dsimp only [result5087]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5089_agree_conditional : tree5089 = literal5089 := by
  rw [tree5089_def]
  rfl
theorem node5089_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5089 live5089 coloured5089 = result5089 := by
  rw [tree5089_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5090_agree_conditional
    (child0 : tree5088 = literal5088)
    (child1 : tree5089 = literal5089) : tree5090 = literal5090 := by
  rw [tree5090_def, child0, child1]
  rfl
theorem node5090_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5088 live5088 coloured5088 = result5088)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5089 live5089 coloured5089 = result5089) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5090 live5090 coloured5090 = result5090 := by
  rw [tree5090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5088 coloured5088 at child
  try dsimp only [live5090, coloured5090]
  rw [child]
  dsimp only [result5088]
  have child := child1
  unfold live5089 coloured5089 at child
  try dsimp only [live5090, coloured5090]
  rw [child]
  dsimp only [result5089]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5091_agree_conditional : tree5091 = literal5091 := by
  rw [tree5091_def]
  rfl
theorem node5091_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5091 live5091 coloured5091 = result5091 := by
  rw [tree5091_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5092_agree_conditional
    (child0 : tree5090 = literal5090)
    (child1 : tree5091 = literal5091) : tree5092 = literal5092 := by
  rw [tree5092_def, child0, child1]
  rfl
theorem node5092_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5090 live5090 coloured5090 = result5090)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5091 live5091 coloured5091 = result5091) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5092 live5092 coloured5092 = result5092 := by
  rw [tree5092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5090 coloured5090 at child
  try dsimp only [live5092, coloured5092]
  rw [child]
  dsimp only [result5090]
  have child := child1
  unfold live5091 coloured5091 at child
  try dsimp only [live5092, coloured5092]
  rw [child]
  dsimp only [result5091]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5093_agree_conditional : tree5093 = literal5093 := by
  rw [tree5093_def]
  rfl
theorem node5093_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5093 live5093 coloured5093 = result5093 := by
  rw [tree5093_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5094_agree_conditional
    (child0 : tree5092 = literal5092)
    (child1 : tree5093 = literal5093) : tree5094 = literal5094 := by
  rw [tree5094_def, child0, child1]
  rfl
theorem node5094_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5092 live5092 coloured5092 = result5092)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5093 live5093 coloured5093 = result5093) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5094 live5094 coloured5094 = result5094 := by
  rw [tree5094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5092 coloured5092 at child
  try dsimp only [live5094, coloured5094]
  rw [child]
  dsimp only [result5092]
  have child := child1
  unfold live5093 coloured5093 at child
  try dsimp only [live5094, coloured5094]
  rw [child]
  dsimp only [result5093]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5095_agree_conditional : tree5095 = literal5095 := by
  rw [tree5095_def]
  rfl
theorem node5095_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5095 live5095 coloured5095 = result5095 := by
  rw [tree5095_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5096_agree_conditional
    (child0 : tree5094 = literal5094)
    (child1 : tree5095 = literal5095) : tree5096 = literal5096 := by
  rw [tree5096_def, child0, child1]
  rfl
theorem node5096_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5094 live5094 coloured5094 = result5094)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5095 live5095 coloured5095 = result5095) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5096 live5096 coloured5096 = result5096 := by
  rw [tree5096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5094 coloured5094 at child
  try dsimp only [live5096, coloured5096]
  rw [child]
  dsimp only [result5094]
  have child := child1
  unfold live5095 coloured5095 at child
  try dsimp only [live5096, coloured5096]
  rw [child]
  dsimp only [result5095]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5097_agree_conditional : tree5097 = literal5097 := by
  rw [tree5097_def]
  rfl
theorem node5097_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5097 live5097 coloured5097 = result5097 := by
  rw [tree5097_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5098_agree_conditional
    (child0 : tree5096 = literal5096)
    (child1 : tree5097 = literal5097) : tree5098 = literal5098 := by
  rw [tree5098_def, child0, child1]
  rfl
theorem node5098_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5096 live5096 coloured5096 = result5096)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5097 live5097 coloured5097 = result5097) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5098 live5098 coloured5098 = result5098 := by
  rw [tree5098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5096 coloured5096 at child
  try dsimp only [live5098, coloured5098]
  rw [child]
  dsimp only [result5096]
  have child := child1
  unfold live5097 coloured5097 at child
  try dsimp only [live5098, coloured5098]
  rw [child]
  dsimp only [result5097]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5099_agree_conditional : tree5099 = literal5099 := by
  rw [tree5099_def]
  rfl
theorem node5099_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5099 live5099 coloured5099 = result5099 := by
  rw [tree5099_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5100_agree_conditional
    (child0 : tree5098 = literal5098)
    (child1 : tree5099 = literal5099) : tree5100 = literal5100 := by
  rw [tree5100_def, child0, child1]
  rfl
theorem node5100_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5098 live5098 coloured5098 = result5098)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5099 live5099 coloured5099 = result5099) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5100 live5100 coloured5100 = result5100 := by
  rw [tree5100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5098 coloured5098 at child
  try dsimp only [live5100, coloured5100]
  rw [child]
  dsimp only [result5098]
  have child := child1
  unfold live5099 coloured5099 at child
  try dsimp only [live5100, coloured5100]
  rw [child]
  dsimp only [result5099]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5101_agree_conditional : tree5101 = literal5101 := by
  rw [tree5101_def]
  rfl
theorem node5101_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5101 live5101 coloured5101 = result5101 := by
  rw [tree5101_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5102_agree_conditional
    (child0 : tree5100 = literal5100)
    (child1 : tree5101 = literal5101) : tree5102 = literal5102 := by
  rw [tree5102_def, child0, child1]
  rfl
theorem node5102_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5100 live5100 coloured5100 = result5100)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5101 live5101 coloured5101 = result5101) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5102 live5102 coloured5102 = result5102 := by
  rw [tree5102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5100 coloured5100 at child
  try dsimp only [live5102, coloured5102]
  rw [child]
  dsimp only [result5100]
  have child := child1
  unfold live5101 coloured5101 at child
  try dsimp only [live5102, coloured5102]
  rw [child]
  dsimp only [result5101]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5103_agree_conditional : tree5103 = literal5103 := by
  rw [tree5103_def]
  rfl
theorem node5103_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5103 live5103 coloured5103 = result5103 := by
  rw [tree5103_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5104_agree_conditional
    (child0 : tree5102 = literal5102)
    (child1 : tree5103 = literal5103) : tree5104 = literal5104 := by
  rw [tree5104_def, child0, child1]
  rfl
theorem node5104_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5102 live5102 coloured5102 = result5102)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5103 live5103 coloured5103 = result5103) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5104 live5104 coloured5104 = result5104 := by
  rw [tree5104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5102 coloured5102 at child
  try dsimp only [live5104, coloured5104]
  rw [child]
  dsimp only [result5102]
  have child := child1
  unfold live5103 coloured5103 at child
  try dsimp only [live5104, coloured5104]
  rw [child]
  dsimp only [result5103]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5105_agree_conditional : tree5105 = literal5105 := by
  rw [tree5105_def]
  rfl
theorem node5105_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5105 live5105 coloured5105 = result5105 := by
  rw [tree5105_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5106_agree_conditional
    (child0 : tree5104 = literal5104)
    (child1 : tree5105 = literal5105) : tree5106 = literal5106 := by
  rw [tree5106_def, child0, child1]
  rfl
theorem node5106_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5104 live5104 coloured5104 = result5104)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5105 live5105 coloured5105 = result5105) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5106 live5106 coloured5106 = result5106 := by
  rw [tree5106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5104 coloured5104 at child
  try dsimp only [live5106, coloured5106]
  rw [child]
  dsimp only [result5104]
  have child := child1
  unfold live5105 coloured5105 at child
  try dsimp only [live5106, coloured5106]
  rw [child]
  dsimp only [result5105]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5107_agree_conditional : tree5107 = literal5107 := by
  rw [tree5107_def]
  rfl
theorem node5107_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5107 live5107 coloured5107 = result5107 := by
  rw [tree5107_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5108_agree_conditional
    (child0 : tree5106 = literal5106)
    (child1 : tree5107 = literal5107) : tree5108 = literal5108 := by
  rw [tree5108_def, child0, child1]
  rfl
theorem node5108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5106 live5106 coloured5106 = result5106)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5107 live5107 coloured5107 = result5107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5108 live5108 coloured5108 = result5108 := by
  rw [tree5108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5106 coloured5106 at child
  try dsimp only [live5108, coloured5108]
  rw [child]
  dsimp only [result5106]
  have child := child1
  unfold live5107 coloured5107 at child
  try dsimp only [live5108, coloured5108]
  rw [child]
  dsimp only [result5107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5109_agree_conditional : tree5109 = literal5109 := by
  rw [tree5109_def]
  rfl
theorem node5109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5109 live5109 coloured5109 = result5109 := by
  rw [tree5109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5110_agree_conditional
    (child0 : tree5108 = literal5108)
    (child1 : tree5109 = literal5109) : tree5110 = literal5110 := by
  rw [tree5110_def, child0, child1]
  rfl
theorem node5110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5108 live5108 coloured5108 = result5108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5109 live5109 coloured5109 = result5109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5110 live5110 coloured5110 = result5110 := by
  rw [tree5110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5108 coloured5108 at child
  try dsimp only [live5110, coloured5110]
  rw [child]
  dsimp only [result5108]
  have child := child1
  unfold live5109 coloured5109 at child
  try dsimp only [live5110, coloured5110]
  rw [child]
  dsimp only [result5109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5111_agree_conditional : tree5111 = literal5111 := by
  rw [tree5111_def]
  rfl
theorem node5111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5111 live5111 coloured5111 = result5111 := by
  rw [tree5111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5112_agree_conditional
    (child0 : tree5110 = literal5110)
    (child1 : tree5111 = literal5111) : tree5112 = literal5112 := by
  rw [tree5112_def, child0, child1]
  rfl
theorem node5112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5110 live5110 coloured5110 = result5110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5111 live5111 coloured5111 = result5111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5112 live5112 coloured5112 = result5112 := by
  rw [tree5112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5110 coloured5110 at child
  try dsimp only [live5112, coloured5112]
  rw [child]
  dsimp only [result5110]
  have child := child1
  unfold live5111 coloured5111 at child
  try dsimp only [live5112, coloured5112]
  rw [child]
  dsimp only [result5111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5113_agree_conditional : tree5113 = literal5113 := by
  rw [tree5113_def]
  rfl
theorem node5113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5113 live5113 coloured5113 = result5113 := by
  rw [tree5113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5114_agree_conditional
    (child0 : tree5112 = literal5112)
    (child1 : tree5113 = literal5113) : tree5114 = literal5114 := by
  rw [tree5114_def, child0, child1]
  rfl
theorem node5114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5112 live5112 coloured5112 = result5112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5113 live5113 coloured5113 = result5113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5114 live5114 coloured5114 = result5114 := by
  rw [tree5114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5112 coloured5112 at child
  try dsimp only [live5114, coloured5114]
  rw [child]
  dsimp only [result5112]
  have child := child1
  unfold live5113 coloured5113 at child
  try dsimp only [live5114, coloured5114]
  rw [child]
  dsimp only [result5113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5115_agree_conditional : tree5115 = literal5115 := by
  rw [tree5115_def]
  rfl
theorem node5115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5115 live5115 coloured5115 = result5115 := by
  rw [tree5115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5116_agree_conditional
    (child0 : tree5114 = literal5114)
    (child1 : tree5115 = literal5115) : tree5116 = literal5116 := by
  rw [tree5116_def, child0, child1]
  rfl
theorem node5116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5114 live5114 coloured5114 = result5114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5115 live5115 coloured5115 = result5115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5116 live5116 coloured5116 = result5116 := by
  rw [tree5116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5114 coloured5114 at child
  try dsimp only [live5116, coloured5116]
  rw [child]
  dsimp only [result5114]
  have child := child1
  unfold live5115 coloured5115 at child
  try dsimp only [live5116, coloured5116]
  rw [child]
  dsimp only [result5115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5117_agree_conditional : tree5117 = literal5117 := by
  rw [tree5117_def]
  rfl
theorem node5117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5117 live5117 coloured5117 = result5117 := by
  rw [tree5117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5118_agree_conditional
    (child0 : tree5116 = literal5116)
    (child1 : tree5117 = literal5117) : tree5118 = literal5118 := by
  rw [tree5118_def, child0, child1]
  rfl
theorem node5118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5116 live5116 coloured5116 = result5116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5117 live5117 coloured5117 = result5117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5118 live5118 coloured5118 = result5118 := by
  rw [tree5118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5116 coloured5116 at child
  try dsimp only [live5118, coloured5118]
  rw [child]
  dsimp only [result5116]
  have child := child1
  unfold live5117 coloured5117 at child
  try dsimp only [live5118, coloured5118]
  rw [child]
  dsimp only [result5117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5119_agree_conditional : tree5119 = literal5119 := by
  rw [tree5119_def]
  rfl
theorem node5119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5119 live5119 coloured5119 = result5119 := by
  rw [tree5119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5120_agree_conditional
    (child0 : tree5118 = literal5118)
    (child1 : tree5119 = literal5119) : tree5120 = literal5120 := by
  rw [tree5120_def, child0, child1]
  rfl
theorem node5120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5118 live5118 coloured5118 = result5118)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5119 live5119 coloured5119 = result5119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5120 live5120 coloured5120 = result5120 := by
  rw [tree5120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5118 coloured5118 at child
  try dsimp only [live5120, coloured5120]
  rw [child]
  dsimp only [result5118]
  have child := child1
  unfold live5119 coloured5119 at child
  try dsimp only [live5120, coloured5120]
  rw [child]
  dsimp only [result5119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5121_agree_conditional : tree5121 = literal5121 := by
  rw [tree5121_def]
  rfl
theorem node5121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5121 live5121 coloured5121 = result5121 := by
  rw [tree5121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5122_agree_conditional
    (child0 : tree5120 = literal5120)
    (child1 : tree5121 = literal5121) : tree5122 = literal5122 := by
  rw [tree5122_def, child0, child1]
  rfl
theorem node5122_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5120 live5120 coloured5120 = result5120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5121 live5121 coloured5121 = result5121) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5122 live5122 coloured5122 = result5122 := by
  rw [tree5122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5120 coloured5120 at child
  try dsimp only [live5122, coloured5122]
  rw [child]
  dsimp only [result5120]
  have child := child1
  unfold live5121 coloured5121 at child
  try dsimp only [live5122, coloured5122]
  rw [child]
  dsimp only [result5121]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5123_agree_conditional : tree5123 = literal5123 := by
  rw [tree5123_def]
  rfl
theorem node5123_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5123 live5123 coloured5123 = result5123 := by
  rw [tree5123_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5124_agree_conditional
    (child0 : tree5122 = literal5122)
    (child1 : tree5123 = literal5123) : tree5124 = literal5124 := by
  rw [tree5124_def, child0, child1]
  rfl
theorem node5124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5122 live5122 coloured5122 = result5122)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5123 live5123 coloured5123 = result5123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5124 live5124 coloured5124 = result5124 := by
  rw [tree5124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5122 coloured5122 at child
  try dsimp only [live5124, coloured5124]
  rw [child]
  dsimp only [result5122]
  have child := child1
  unfold live5123 coloured5123 at child
  try dsimp only [live5124, coloured5124]
  rw [child]
  dsimp only [result5123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5125_agree_conditional : tree5125 = literal5125 := by
  rw [tree5125_def]
  rfl
theorem node5125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5125 live5125 coloured5125 = result5125 := by
  rw [tree5125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5126_agree_conditional
    (child0 : tree5124 = literal5124)
    (child1 : tree5125 = literal5125) : tree5126 = literal5126 := by
  rw [tree5126_def, child0, child1]
  rfl
theorem node5126_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5124 live5124 coloured5124 = result5124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5125 live5125 coloured5125 = result5125) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5126 live5126 coloured5126 = result5126 := by
  rw [tree5126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5124 coloured5124 at child
  try dsimp only [live5126, coloured5126]
  rw [child]
  dsimp only [result5124]
  have child := child1
  unfold live5125 coloured5125 at child
  try dsimp only [live5126, coloured5126]
  rw [child]
  dsimp only [result5125]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5127_agree_conditional : tree5127 = literal5127 := by
  rw [tree5127_def]
  rfl
theorem node5127_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5127 live5127 coloured5127 = result5127 := by
  rw [tree5127_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5128_agree_conditional
    (child0 : tree5126 = literal5126)
    (child1 : tree5127 = literal5127) : tree5128 = literal5128 := by
  rw [tree5128_def, child0, child1]
  rfl
theorem node5128_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5126 live5126 coloured5126 = result5126)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5127 live5127 coloured5127 = result5127) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5128 live5128 coloured5128 = result5128 := by
  rw [tree5128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5126 coloured5126 at child
  try dsimp only [live5128, coloured5128]
  rw [child]
  dsimp only [result5126]
  have child := child1
  unfold live5127 coloured5127 at child
  try dsimp only [live5128, coloured5128]
  rw [child]
  dsimp only [result5127]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5129_agree_conditional : tree5129 = literal5129 := by
  rw [tree5129_def]
  rfl
theorem node5129_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5129 live5129 coloured5129 = result5129 := by
  rw [tree5129_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5130_agree_conditional
    (child0 : tree5128 = literal5128)
    (child1 : tree5129 = literal5129) : tree5130 = literal5130 := by
  rw [tree5130_def, child0, child1]
  rfl
theorem node5130_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5128 live5128 coloured5128 = result5128)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5129 live5129 coloured5129 = result5129) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5130 live5130 coloured5130 = result5130 := by
  rw [tree5130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5128 coloured5128 at child
  try dsimp only [live5130, coloured5130]
  rw [child]
  dsimp only [result5128]
  have child := child1
  unfold live5129 coloured5129 at child
  try dsimp only [live5130, coloured5130]
  rw [child]
  dsimp only [result5129]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5131_agree_conditional : tree5131 = literal5131 := by
  rw [tree5131_def]
  rfl
theorem node5131_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5131 live5131 coloured5131 = result5131 := by
  rw [tree5131_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5132_agree_conditional
    (child0 : tree5130 = literal5130)
    (child1 : tree5131 = literal5131) : tree5132 = literal5132 := by
  rw [tree5132_def, child0, child1]
  rfl
theorem node5132_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5130 live5130 coloured5130 = result5130)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5131 live5131 coloured5131 = result5131) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5132 live5132 coloured5132 = result5132 := by
  rw [tree5132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5130 coloured5130 at child
  try dsimp only [live5132, coloured5132]
  rw [child]
  dsimp only [result5130]
  have child := child1
  unfold live5131 coloured5131 at child
  try dsimp only [live5132, coloured5132]
  rw [child]
  dsimp only [result5131]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5133_agree_conditional : tree5133 = literal5133 := by
  rw [tree5133_def]
  rfl
theorem node5133_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5133 live5133 coloured5133 = result5133 := by
  rw [tree5133_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5134_agree_conditional
    (child0 : tree5132 = literal5132)
    (child1 : tree5133 = literal5133) : tree5134 = literal5134 := by
  rw [tree5134_def, child0, child1]
  rfl
theorem node5134_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5132 live5132 coloured5132 = result5132)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5133 live5133 coloured5133 = result5133) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5134 live5134 coloured5134 = result5134 := by
  rw [tree5134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5132 coloured5132 at child
  try dsimp only [live5134, coloured5134]
  rw [child]
  dsimp only [result5132]
  have child := child1
  unfold live5133 coloured5133 at child
  try dsimp only [live5134, coloured5134]
  rw [child]
  dsimp only [result5133]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5135_agree_conditional : tree5135 = literal5135 := by
  rw [tree5135_def]
  rfl
theorem node5135_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5135 live5135 coloured5135 = result5135 := by
  rw [tree5135_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5136_agree_conditional
    (child0 : tree5134 = literal5134)
    (child1 : tree5135 = literal5135) : tree5136 = literal5136 := by
  rw [tree5136_def, child0, child1]
  rfl
theorem node5136_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5134 live5134 coloured5134 = result5134)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5135 live5135 coloured5135 = result5135) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5136 live5136 coloured5136 = result5136 := by
  rw [tree5136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5134 coloured5134 at child
  try dsimp only [live5136, coloured5136]
  rw [child]
  dsimp only [result5134]
  have child := child1
  unfold live5135 coloured5135 at child
  try dsimp only [live5136, coloured5136]
  rw [child]
  dsimp only [result5135]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5137_agree_conditional : tree5137 = literal5137 := by
  rw [tree5137_def]
  rfl
theorem node5137_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5137 live5137 coloured5137 = result5137 := by
  rw [tree5137_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5138_agree_conditional
    (child0 : tree5136 = literal5136)
    (child1 : tree5137 = literal5137) : tree5138 = literal5138 := by
  rw [tree5138_def, child0, child1]
  rfl
theorem node5138_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5136 live5136 coloured5136 = result5136)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5137 live5137 coloured5137 = result5137) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5138 live5138 coloured5138 = result5138 := by
  rw [tree5138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5136 coloured5136 at child
  try dsimp only [live5138, coloured5138]
  rw [child]
  dsimp only [result5136]
  have child := child1
  unfold live5137 coloured5137 at child
  try dsimp only [live5138, coloured5138]
  rw [child]
  dsimp only [result5137]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5139_agree_conditional : tree5139 = literal5139 := by
  rw [tree5139_def]
  rfl
theorem node5139_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5139 live5139 coloured5139 = result5139 := by
  rw [tree5139_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5140_agree_conditional
    (child0 : tree5138 = literal5138)
    (child1 : tree5139 = literal5139) : tree5140 = literal5140 := by
  rw [tree5140_def, child0, child1]
  rfl
theorem node5140_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5138 live5138 coloured5138 = result5138)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5139 live5139 coloured5139 = result5139) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5140 live5140 coloured5140 = result5140 := by
  rw [tree5140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5138 coloured5138 at child
  try dsimp only [live5140, coloured5140]
  rw [child]
  dsimp only [result5138]
  have child := child1
  unfold live5139 coloured5139 at child
  try dsimp only [live5140, coloured5140]
  rw [child]
  dsimp only [result5139]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5141_agree_conditional : tree5141 = literal5141 := by
  rw [tree5141_def]
  rfl
theorem node5141_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5141 live5141 coloured5141 = result5141 := by
  rw [tree5141_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5142_agree_conditional
    (child0 : tree5140 = literal5140)
    (child1 : tree5141 = literal5141) : tree5142 = literal5142 := by
  rw [tree5142_def, child0, child1]
  rfl
theorem node5142_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5140 live5140 coloured5140 = result5140)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5141 live5141 coloured5141 = result5141) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5142 live5142 coloured5142 = result5142 := by
  rw [tree5142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5140 coloured5140 at child
  try dsimp only [live5142, coloured5142]
  rw [child]
  dsimp only [result5140]
  have child := child1
  unfold live5141 coloured5141 at child
  try dsimp only [live5142, coloured5142]
  rw [child]
  dsimp only [result5141]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5143_agree_conditional : tree5143 = literal5143 := by
  rw [tree5143_def]
  rfl
theorem node5143_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5143 live5143 coloured5143 = result5143 := by
  rw [tree5143_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5144_agree_conditional
    (child0 : tree5142 = literal5142)
    (child1 : tree5143 = literal5143) : tree5144 = literal5144 := by
  rw [tree5144_def, child0, child1]
  rfl
theorem node5144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5142 live5142 coloured5142 = result5142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5143 live5143 coloured5143 = result5143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5144 live5144 coloured5144 = result5144 := by
  rw [tree5144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5142 coloured5142 at child
  try dsimp only [live5144, coloured5144]
  rw [child]
  dsimp only [result5142]
  have child := child1
  unfold live5143 coloured5143 at child
  try dsimp only [live5144, coloured5144]
  rw [child]
  dsimp only [result5143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5145_agree_conditional : tree5145 = literal5145 := by
  rw [tree5145_def]
  rfl
theorem node5145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5145 live5145 coloured5145 = result5145 := by
  rw [tree5145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5146_agree_conditional
    (child0 : tree5144 = literal5144)
    (child1 : tree5145 = literal5145) : tree5146 = literal5146 := by
  rw [tree5146_def, child0, child1]
  rfl
theorem node5146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5144 live5144 coloured5144 = result5144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5145 live5145 coloured5145 = result5145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5146 live5146 coloured5146 = result5146 := by
  rw [tree5146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5144 coloured5144 at child
  try dsimp only [live5146, coloured5146]
  rw [child]
  dsimp only [result5144]
  have child := child1
  unfold live5145 coloured5145 at child
  try dsimp only [live5146, coloured5146]
  rw [child]
  dsimp only [result5145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5147_agree_conditional : tree5147 = literal5147 := by
  rw [tree5147_def]
  rfl
theorem node5147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5147 live5147 coloured5147 = result5147 := by
  rw [tree5147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5148_agree_conditional
    (child0 : tree5146 = literal5146)
    (child1 : tree5147 = literal5147) : tree5148 = literal5148 := by
  rw [tree5148_def, child0, child1]
  rfl
theorem node5148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5146 live5146 coloured5146 = result5146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5147 live5147 coloured5147 = result5147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5148 live5148 coloured5148 = result5148 := by
  rw [tree5148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5146 coloured5146 at child
  try dsimp only [live5148, coloured5148]
  rw [child]
  dsimp only [result5146]
  have child := child1
  unfold live5147 coloured5147 at child
  try dsimp only [live5148, coloured5148]
  rw [child]
  dsimp only [result5147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5149_agree_conditional : tree5149 = literal5149 := by
  rw [tree5149_def]
  rfl
theorem node5149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5149 live5149 coloured5149 = result5149 := by
  rw [tree5149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5150_agree_conditional
    (child0 : tree5148 = literal5148)
    (child1 : tree5149 = literal5149) : tree5150 = literal5150 := by
  rw [tree5150_def, child0, child1]
  rfl
theorem node5150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5148 live5148 coloured5148 = result5148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5149 live5149 coloured5149 = result5149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5150 live5150 coloured5150 = result5150 := by
  rw [tree5150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5148 coloured5148 at child
  try dsimp only [live5150, coloured5150]
  rw [child]
  dsimp only [result5148]
  have child := child1
  unfold live5149 coloured5149 at child
  try dsimp only [live5150, coloured5150]
  rw [child]
  dsimp only [result5149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5151_agree_conditional : tree5151 = literal5151 := by
  rw [tree5151_def]
  rfl
theorem node5151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5151 live5151 coloured5151 = result5151 := by
  rw [tree5151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5152_agree_conditional
    (child0 : tree5150 = literal5150)
    (child1 : tree5151 = literal5151) : tree5152 = literal5152 := by
  rw [tree5152_def, child0, child1]
  rfl
theorem node5152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5150 live5150 coloured5150 = result5150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5151 live5151 coloured5151 = result5151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5152 live5152 coloured5152 = result5152 := by
  rw [tree5152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5150 coloured5150 at child
  try dsimp only [live5152, coloured5152]
  rw [child]
  dsimp only [result5150]
  have child := child1
  unfold live5151 coloured5151 at child
  try dsimp only [live5152, coloured5152]
  rw [child]
  dsimp only [result5151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5153_agree_conditional : tree5153 = literal5153 := by
  rw [tree5153_def]
  rfl
theorem node5153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5153 live5153 coloured5153 = result5153 := by
  rw [tree5153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5154_agree_conditional
    (child0 : tree5152 = literal5152)
    (child1 : tree5153 = literal5153) : tree5154 = literal5154 := by
  rw [tree5154_def, child0, child1]
  rfl
theorem node5154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5152 live5152 coloured5152 = result5152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5153 live5153 coloured5153 = result5153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5154 live5154 coloured5154 = result5154 := by
  rw [tree5154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5152 coloured5152 at child
  try dsimp only [live5154, coloured5154]
  rw [child]
  dsimp only [result5152]
  have child := child1
  unfold live5153 coloured5153 at child
  try dsimp only [live5154, coloured5154]
  rw [child]
  dsimp only [result5153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5155_agree_conditional : tree5155 = literal5155 := by
  rw [tree5155_def]
  rfl
theorem node5155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5155 live5155 coloured5155 = result5155 := by
  rw [tree5155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5156_agree_conditional
    (child0 : tree5154 = literal5154)
    (child1 : tree5155 = literal5155) : tree5156 = literal5156 := by
  rw [tree5156_def, child0, child1]
  rfl
theorem node5156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5154 live5154 coloured5154 = result5154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5155 live5155 coloured5155 = result5155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5156 live5156 coloured5156 = result5156 := by
  rw [tree5156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5154 coloured5154 at child
  try dsimp only [live5156, coloured5156]
  rw [child]
  dsimp only [result5154]
  have child := child1
  unfold live5155 coloured5155 at child
  try dsimp only [live5156, coloured5156]
  rw [child]
  dsimp only [result5155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5157_agree_conditional : tree5157 = literal5157 := by
  rw [tree5157_def]
  rfl
theorem node5157_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5157 live5157 coloured5157 = result5157 := by
  rw [tree5157_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5158_agree_conditional
    (child0 : tree5156 = literal5156)
    (child1 : tree5157 = literal5157) : tree5158 = literal5158 := by
  rw [tree5158_def, child0, child1]
  rfl
theorem node5158_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5156 live5156 coloured5156 = result5156)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5157 live5157 coloured5157 = result5157) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5158 live5158 coloured5158 = result5158 := by
  rw [tree5158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5156 coloured5156 at child
  try dsimp only [live5158, coloured5158]
  rw [child]
  dsimp only [result5156]
  have child := child1
  unfold live5157 coloured5157 at child
  try dsimp only [live5158, coloured5158]
  rw [child]
  dsimp only [result5157]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5159_agree_conditional : tree5159 = literal5159 := by
  rw [tree5159_def]
  rfl
theorem node5159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5159 live5159 coloured5159 = result5159 := by
  rw [tree5159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5160_agree_conditional
    (child0 : tree5158 = literal5158)
    (child1 : tree5159 = literal5159) : tree5160 = literal5160 := by
  rw [tree5160_def, child0, child1]
  rfl
theorem node5160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5158 live5158 coloured5158 = result5158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5159 live5159 coloured5159 = result5159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5160 live5160 coloured5160 = result5160 := by
  rw [tree5160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5158 coloured5158 at child
  try dsimp only [live5160, coloured5160]
  rw [child]
  dsimp only [result5158]
  have child := child1
  unfold live5159 coloured5159 at child
  try dsimp only [live5160, coloured5160]
  rw [child]
  dsimp only [result5159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5161_agree_conditional : tree5161 = literal5161 := by
  rw [tree5161_def]
  rfl
theorem node5161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5161 live5161 coloured5161 = result5161 := by
  rw [tree5161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5162_agree_conditional
    (child0 : tree5160 = literal5160)
    (child1 : tree5161 = literal5161) : tree5162 = literal5162 := by
  rw [tree5162_def, child0, child1]
  rfl
theorem node5162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5160 live5160 coloured5160 = result5160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5161 live5161 coloured5161 = result5161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5162 live5162 coloured5162 = result5162 := by
  rw [tree5162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5160 coloured5160 at child
  try dsimp only [live5162, coloured5162]
  rw [child]
  dsimp only [result5160]
  have child := child1
  unfold live5161 coloured5161 at child
  try dsimp only [live5162, coloured5162]
  rw [child]
  dsimp only [result5161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5163_agree_conditional : tree5163 = literal5163 := by
  rw [tree5163_def]
  rfl
theorem node5163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5163 live5163 coloured5163 = result5163 := by
  rw [tree5163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5164_agree_conditional
    (child0 : tree5162 = literal5162)
    (child1 : tree5163 = literal5163) : tree5164 = literal5164 := by
  rw [tree5164_def, child0, child1]
  rfl
theorem node5164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5162 live5162 coloured5162 = result5162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5163 live5163 coloured5163 = result5163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5164 live5164 coloured5164 = result5164 := by
  rw [tree5164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5162 coloured5162 at child
  try dsimp only [live5164, coloured5164]
  rw [child]
  dsimp only [result5162]
  have child := child1
  unfold live5163 coloured5163 at child
  try dsimp only [live5164, coloured5164]
  rw [child]
  dsimp only [result5163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5165_agree_conditional : tree5165 = literal5165 := by
  rw [tree5165_def]
  rfl
theorem node5165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5165 live5165 coloured5165 = result5165 := by
  rw [tree5165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5166_agree_conditional
    (child0 : tree5164 = literal5164)
    (child1 : tree5165 = literal5165) : tree5166 = literal5166 := by
  rw [tree5166_def, child0, child1]
  rfl
theorem node5166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5164 live5164 coloured5164 = result5164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5165 live5165 coloured5165 = result5165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5166 live5166 coloured5166 = result5166 := by
  rw [tree5166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5164 coloured5164 at child
  try dsimp only [live5166, coloured5166]
  rw [child]
  dsimp only [result5164]
  have child := child1
  unfold live5165 coloured5165 at child
  try dsimp only [live5166, coloured5166]
  rw [child]
  dsimp only [result5165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5167_agree_conditional : tree5167 = literal5167 := by
  rw [tree5167_def]
  rfl
theorem node5167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5167 live5167 coloured5167 = result5167 := by
  rw [tree5167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5168_agree_conditional
    (child0 : tree5166 = literal5166)
    (child1 : tree5167 = literal5167) : tree5168 = literal5168 := by
  rw [tree5168_def, child0, child1]
  rfl
theorem node5168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5166 live5166 coloured5166 = result5166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5167 live5167 coloured5167 = result5167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5168 live5168 coloured5168 = result5168 := by
  rw [tree5168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5166 coloured5166 at child
  try dsimp only [live5168, coloured5168]
  rw [child]
  dsimp only [result5166]
  have child := child1
  unfold live5167 coloured5167 at child
  try dsimp only [live5168, coloured5168]
  rw [child]
  dsimp only [result5167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5169_agree_conditional : tree5169 = literal5169 := by
  rw [tree5169_def]
  rfl
theorem node5169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5169 live5169 coloured5169 = result5169 := by
  rw [tree5169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5170_agree_conditional
    (child0 : tree5168 = literal5168)
    (child1 : tree5169 = literal5169) : tree5170 = literal5170 := by
  rw [tree5170_def, child0, child1]
  rfl
theorem node5170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5168 live5168 coloured5168 = result5168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5169 live5169 coloured5169 = result5169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5170 live5170 coloured5170 = result5170 := by
  rw [tree5170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5168 coloured5168 at child
  try dsimp only [live5170, coloured5170]
  rw [child]
  dsimp only [result5168]
  have child := child1
  unfold live5169 coloured5169 at child
  try dsimp only [live5170, coloured5170]
  rw [child]
  dsimp only [result5169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5171_agree_conditional : tree5171 = literal5171 := by
  rw [tree5171_def]
  rfl
theorem node5171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5171 live5171 coloured5171 = result5171 := by
  rw [tree5171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5172_agree_conditional
    (child0 : tree5170 = literal5170)
    (child1 : tree5171 = literal5171) : tree5172 = literal5172 := by
  rw [tree5172_def, child0, child1]
  rfl
theorem node5172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5170 live5170 coloured5170 = result5170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5171 live5171 coloured5171 = result5171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5172 live5172 coloured5172 = result5172 := by
  rw [tree5172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5170 coloured5170 at child
  try dsimp only [live5172, coloured5172]
  rw [child]
  dsimp only [result5170]
  have child := child1
  unfold live5171 coloured5171 at child
  try dsimp only [live5172, coloured5172]
  rw [child]
  dsimp only [result5171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5173_agree_conditional : tree5173 = literal5173 := by
  rw [tree5173_def]
  rfl
theorem node5173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5173 live5173 coloured5173 = result5173 := by
  rw [tree5173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5174_agree_conditional
    (child0 : tree5172 = literal5172)
    (child1 : tree5173 = literal5173) : tree5174 = literal5174 := by
  rw [tree5174_def, child0, child1]
  rfl
theorem node5174_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5172 live5172 coloured5172 = result5172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5173 live5173 coloured5173 = result5173) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5174 live5174 coloured5174 = result5174 := by
  rw [tree5174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5172 coloured5172 at child
  try dsimp only [live5174, coloured5174]
  rw [child]
  dsimp only [result5172]
  have child := child1
  unfold live5173 coloured5173 at child
  try dsimp only [live5174, coloured5174]
  rw [child]
  dsimp only [result5173]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5175_agree_conditional : tree5175 = literal5175 := by
  rw [tree5175_def]
  rfl
theorem node5175_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5175 live5175 coloured5175 = result5175 := by
  rw [tree5175_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5176_agree_conditional
    (child0 : tree5174 = literal5174)
    (child1 : tree5175 = literal5175) : tree5176 = literal5176 := by
  rw [tree5176_def, child0, child1]
  rfl
theorem node5176_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5174 live5174 coloured5174 = result5174)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5175 live5175 coloured5175 = result5175) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5176 live5176 coloured5176 = result5176 := by
  rw [tree5176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5174 coloured5174 at child
  try dsimp only [live5176, coloured5176]
  rw [child]
  dsimp only [result5174]
  have child := child1
  unfold live5175 coloured5175 at child
  try dsimp only [live5176, coloured5176]
  rw [child]
  dsimp only [result5175]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5177_agree_conditional : tree5177 = literal5177 := by
  rw [tree5177_def]
  rfl
theorem node5177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5177 live5177 coloured5177 = result5177 := by
  rw [tree5177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5178_agree_conditional
    (child0 : tree5176 = literal5176)
    (child1 : tree5177 = literal5177) : tree5178 = literal5178 := by
  rw [tree5178_def, child0, child1]
  rfl
theorem node5178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5176 live5176 coloured5176 = result5176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5177 live5177 coloured5177 = result5177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5178 live5178 coloured5178 = result5178 := by
  rw [tree5178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5176 coloured5176 at child
  try dsimp only [live5178, coloured5178]
  rw [child]
  dsimp only [result5176]
  have child := child1
  unfold live5177 coloured5177 at child
  try dsimp only [live5178, coloured5178]
  rw [child]
  dsimp only [result5177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5179_agree_conditional : tree5179 = literal5179 := by
  rw [tree5179_def]
  rfl
theorem node5179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5179 live5179 coloured5179 = result5179 := by
  rw [tree5179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5180_agree_conditional
    (child0 : tree5178 = literal5178)
    (child1 : tree5179 = literal5179) : tree5180 = literal5180 := by
  rw [tree5180_def, child0, child1]
  rfl
theorem node5180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5178 live5178 coloured5178 = result5178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5179 live5179 coloured5179 = result5179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5180 live5180 coloured5180 = result5180 := by
  rw [tree5180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5178 coloured5178 at child
  try dsimp only [live5180, coloured5180]
  rw [child]
  dsimp only [result5178]
  have child := child1
  unfold live5179 coloured5179 at child
  try dsimp only [live5180, coloured5180]
  rw [child]
  dsimp only [result5179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5181_agree_conditional : tree5181 = literal5181 := by
  rw [tree5181_def]
  rfl
theorem node5181_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5181 live5181 coloured5181 = result5181 := by
  rw [tree5181_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5182_agree_conditional
    (child0 : tree5180 = literal5180)
    (child1 : tree5181 = literal5181) : tree5182 = literal5182 := by
  rw [tree5182_def, child0, child1]
  rfl
theorem node5182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5180 live5180 coloured5180 = result5180)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5181 live5181 coloured5181 = result5181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5182 live5182 coloured5182 = result5182 := by
  rw [tree5182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5180 coloured5180 at child
  try dsimp only [live5182, coloured5182]
  rw [child]
  dsimp only [result5180]
  have child := child1
  unfold live5181 coloured5181 at child
  try dsimp only [live5182, coloured5182]
  rw [child]
  dsimp only [result5181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5183_agree_conditional : tree5183 = literal5183 := by
  rw [tree5183_def]
  rfl
theorem node5183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5183 live5183 coloured5183 = result5183 := by
  rw [tree5183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
