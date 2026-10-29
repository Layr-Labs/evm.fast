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
theorem tree10080_agree_conditional
    (child0 : tree10078 = literal10078)
    (child1 : tree10079 = literal10079) : tree10080 = literal10080 := by
  rw [tree10080_def, child0, child1]
  rfl
theorem node10080_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10078 live10078 coloured10078 = result10078)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10079 live10079 coloured10079 = result10079) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10080 live10080 coloured10080 = result10080 := by
  rw [tree10080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10078 coloured10078 at child
  try dsimp only [live10080, coloured10080]
  rw [child]
  dsimp only [result10078]
  have child := child1
  unfold live10079 coloured10079 at child
  try dsimp only [live10080, coloured10080]
  rw [child]
  dsimp only [result10079]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10081_agree_conditional : tree10081 = literal10081 := by
  rw [tree10081_def]
  rfl
theorem node10081_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10081 live10081 coloured10081 = result10081 := by
  rw [tree10081_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10082_agree_conditional
    (child0 : tree10080 = literal10080)
    (child1 : tree10081 = literal10081) : tree10082 = literal10082 := by
  rw [tree10082_def, child0, child1]
  rfl
theorem node10082_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10080 live10080 coloured10080 = result10080)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10081 live10081 coloured10081 = result10081) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10082 live10082 coloured10082 = result10082 := by
  rw [tree10082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10080 coloured10080 at child
  try dsimp only [live10082, coloured10082]
  rw [child]
  dsimp only [result10080]
  have child := child1
  unfold live10081 coloured10081 at child
  try dsimp only [live10082, coloured10082]
  rw [child]
  dsimp only [result10081]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10083_agree_conditional : tree10083 = literal10083 := by
  rw [tree10083_def]
  rfl
theorem node10083_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10083 live10083 coloured10083 = result10083 := by
  rw [tree10083_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10084_agree_conditional
    (child0 : tree10082 = literal10082)
    (child1 : tree10083 = literal10083) : tree10084 = literal10084 := by
  rw [tree10084_def, child0, child1]
  rfl
theorem node10084_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10082 live10082 coloured10082 = result10082)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10083 live10083 coloured10083 = result10083) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10084 live10084 coloured10084 = result10084 := by
  rw [tree10084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10082 coloured10082 at child
  try dsimp only [live10084, coloured10084]
  rw [child]
  dsimp only [result10082]
  have child := child1
  unfold live10083 coloured10083 at child
  try dsimp only [live10084, coloured10084]
  rw [child]
  dsimp only [result10083]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10085_agree_conditional : tree10085 = literal10085 := by
  rw [tree10085_def]
  rfl
theorem node10085_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10085 live10085 coloured10085 = result10085 := by
  rw [tree10085_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10086_agree_conditional
    (child0 : tree10084 = literal10084)
    (child1 : tree10085 = literal10085) : tree10086 = literal10086 := by
  rw [tree10086_def, child0, child1]
  rfl
theorem node10086_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10084 live10084 coloured10084 = result10084)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10085 live10085 coloured10085 = result10085) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10086 live10086 coloured10086 = result10086 := by
  rw [tree10086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10084 coloured10084 at child
  try dsimp only [live10086, coloured10086]
  rw [child]
  dsimp only [result10084]
  have child := child1
  unfold live10085 coloured10085 at child
  try dsimp only [live10086, coloured10086]
  rw [child]
  dsimp only [result10085]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10087_agree_conditional : tree10087 = literal10087 := by
  rw [tree10087_def]
  rfl
theorem node10087_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10087 live10087 coloured10087 = result10087 := by
  rw [tree10087_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10088_agree_conditional
    (child0 : tree10086 = literal10086)
    (child1 : tree10087 = literal10087) : tree10088 = literal10088 := by
  rw [tree10088_def, child0, child1]
  rfl
theorem node10088_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10086 live10086 coloured10086 = result10086)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10087 live10087 coloured10087 = result10087) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10088 live10088 coloured10088 = result10088 := by
  rw [tree10088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10086 coloured10086 at child
  try dsimp only [live10088, coloured10088]
  rw [child]
  dsimp only [result10086]
  have child := child1
  unfold live10087 coloured10087 at child
  try dsimp only [live10088, coloured10088]
  rw [child]
  dsimp only [result10087]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10089_agree_conditional : tree10089 = literal10089 := by
  rw [tree10089_def]
  rfl
theorem node10089_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10089 live10089 coloured10089 = result10089 := by
  rw [tree10089_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10090_agree_conditional
    (child0 : tree10088 = literal10088)
    (child1 : tree10089 = literal10089) : tree10090 = literal10090 := by
  rw [tree10090_def, child0, child1]
  rfl
theorem node10090_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10088 live10088 coloured10088 = result10088)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10089 live10089 coloured10089 = result10089) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10090 live10090 coloured10090 = result10090 := by
  rw [tree10090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10088 coloured10088 at child
  try dsimp only [live10090, coloured10090]
  rw [child]
  dsimp only [result10088]
  have child := child1
  unfold live10089 coloured10089 at child
  try dsimp only [live10090, coloured10090]
  rw [child]
  dsimp only [result10089]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10091_agree_conditional : tree10091 = literal10091 := by
  rw [tree10091_def]
  rfl
theorem node10091_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10091 live10091 coloured10091 = result10091 := by
  rw [tree10091_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10092_agree_conditional
    (child0 : tree10090 = literal10090)
    (child1 : tree10091 = literal10091) : tree10092 = literal10092 := by
  rw [tree10092_def, child0, child1]
  rfl
theorem node10092_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10090 live10090 coloured10090 = result10090)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10091 live10091 coloured10091 = result10091) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10092 live10092 coloured10092 = result10092 := by
  rw [tree10092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10090 coloured10090 at child
  try dsimp only [live10092, coloured10092]
  rw [child]
  dsimp only [result10090]
  have child := child1
  unfold live10091 coloured10091 at child
  try dsimp only [live10092, coloured10092]
  rw [child]
  dsimp only [result10091]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10093_agree_conditional : tree10093 = literal10093 := by
  rw [tree10093_def]
  rfl
theorem node10093_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10093 live10093 coloured10093 = result10093 := by
  rw [tree10093_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10094_agree_conditional
    (child0 : tree10092 = literal10092)
    (child1 : tree10093 = literal10093) : tree10094 = literal10094 := by
  rw [tree10094_def, child0, child1]
  rfl
theorem node10094_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10092 live10092 coloured10092 = result10092)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10093 live10093 coloured10093 = result10093) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10094 live10094 coloured10094 = result10094 := by
  rw [tree10094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10092 coloured10092 at child
  try dsimp only [live10094, coloured10094]
  rw [child]
  dsimp only [result10092]
  have child := child1
  unfold live10093 coloured10093 at child
  try dsimp only [live10094, coloured10094]
  rw [child]
  dsimp only [result10093]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10095_agree_conditional : tree10095 = literal10095 := by
  rw [tree10095_def]
  rfl
theorem node10095_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10095 live10095 coloured10095 = result10095 := by
  rw [tree10095_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10096_agree_conditional
    (child0 : tree10094 = literal10094)
    (child1 : tree10095 = literal10095) : tree10096 = literal10096 := by
  rw [tree10096_def, child0, child1]
  rfl
theorem node10096_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10094 live10094 coloured10094 = result10094)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10095 live10095 coloured10095 = result10095) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10096 live10096 coloured10096 = result10096 := by
  rw [tree10096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10094 coloured10094 at child
  try dsimp only [live10096, coloured10096]
  rw [child]
  dsimp only [result10094]
  have child := child1
  unfold live10095 coloured10095 at child
  try dsimp only [live10096, coloured10096]
  rw [child]
  dsimp only [result10095]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10097_agree_conditional : tree10097 = literal10097 := by
  rw [tree10097_def]
  rfl
theorem node10097_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10097 live10097 coloured10097 = result10097 := by
  rw [tree10097_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10098_agree_conditional
    (child0 : tree10096 = literal10096)
    (child1 : tree10097 = literal10097) : tree10098 = literal10098 := by
  rw [tree10098_def, child0, child1]
  rfl
theorem node10098_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10096 live10096 coloured10096 = result10096)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10097 live10097 coloured10097 = result10097) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10098 live10098 coloured10098 = result10098 := by
  rw [tree10098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10096 coloured10096 at child
  try dsimp only [live10098, coloured10098]
  rw [child]
  dsimp only [result10096]
  have child := child1
  unfold live10097 coloured10097 at child
  try dsimp only [live10098, coloured10098]
  rw [child]
  dsimp only [result10097]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10099_agree_conditional : tree10099 = literal10099 := by
  rw [tree10099_def]
  rfl
theorem node10099_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10099 live10099 coloured10099 = result10099 := by
  rw [tree10099_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10100_agree_conditional
    (child0 : tree10098 = literal10098)
    (child1 : tree10099 = literal10099) : tree10100 = literal10100 := by
  rw [tree10100_def, child0, child1]
  rfl
theorem node10100_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10098 live10098 coloured10098 = result10098)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10099 live10099 coloured10099 = result10099) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10100 live10100 coloured10100 = result10100 := by
  rw [tree10100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10098 coloured10098 at child
  try dsimp only [live10100, coloured10100]
  rw [child]
  dsimp only [result10098]
  have child := child1
  unfold live10099 coloured10099 at child
  try dsimp only [live10100, coloured10100]
  rw [child]
  dsimp only [result10099]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10101_agree_conditional : tree10101 = literal10101 := by
  rw [tree10101_def]
  rfl
theorem node10101_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10101 live10101 coloured10101 = result10101 := by
  rw [tree10101_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10102_agree_conditional
    (child0 : tree10100 = literal10100)
    (child1 : tree10101 = literal10101) : tree10102 = literal10102 := by
  rw [tree10102_def, child0, child1]
  rfl
theorem node10102_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10100 live10100 coloured10100 = result10100)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10101 live10101 coloured10101 = result10101) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10102 live10102 coloured10102 = result10102 := by
  rw [tree10102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10100 coloured10100 at child
  try dsimp only [live10102, coloured10102]
  rw [child]
  dsimp only [result10100]
  have child := child1
  unfold live10101 coloured10101 at child
  try dsimp only [live10102, coloured10102]
  rw [child]
  dsimp only [result10101]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10103_agree_conditional : tree10103 = literal10103 := by
  rw [tree10103_def]
  rfl
theorem node10103_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10103 live10103 coloured10103 = result10103 := by
  rw [tree10103_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10104_agree_conditional
    (child0 : tree10102 = literal10102)
    (child1 : tree10103 = literal10103) : tree10104 = literal10104 := by
  rw [tree10104_def, child0, child1]
  rfl
theorem node10104_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10102 live10102 coloured10102 = result10102)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10103 live10103 coloured10103 = result10103) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10104 live10104 coloured10104 = result10104 := by
  rw [tree10104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10102 coloured10102 at child
  try dsimp only [live10104, coloured10104]
  rw [child]
  dsimp only [result10102]
  have child := child1
  unfold live10103 coloured10103 at child
  try dsimp only [live10104, coloured10104]
  rw [child]
  dsimp only [result10103]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10105_agree_conditional : tree10105 = literal10105 := by
  rw [tree10105_def]
  rfl
theorem node10105_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10105 live10105 coloured10105 = result10105 := by
  rw [tree10105_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10106_agree_conditional
    (child0 : tree10104 = literal10104)
    (child1 : tree10105 = literal10105) : tree10106 = literal10106 := by
  rw [tree10106_def, child0, child1]
  rfl
theorem node10106_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10104 live10104 coloured10104 = result10104)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10105 live10105 coloured10105 = result10105) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10106 live10106 coloured10106 = result10106 := by
  rw [tree10106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10104 coloured10104 at child
  try dsimp only [live10106, coloured10106]
  rw [child]
  dsimp only [result10104]
  have child := child1
  unfold live10105 coloured10105 at child
  try dsimp only [live10106, coloured10106]
  rw [child]
  dsimp only [result10105]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10107_agree_conditional : tree10107 = literal10107 := by
  rw [tree10107_def]
  rfl
theorem node10107_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10107 live10107 coloured10107 = result10107 := by
  rw [tree10107_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10108_agree_conditional
    (child0 : tree10106 = literal10106)
    (child1 : tree10107 = literal10107) : tree10108 = literal10108 := by
  rw [tree10108_def, child0, child1]
  rfl
theorem node10108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10106 live10106 coloured10106 = result10106)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10107 live10107 coloured10107 = result10107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10108 live10108 coloured10108 = result10108 := by
  rw [tree10108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10106 coloured10106 at child
  try dsimp only [live10108, coloured10108]
  rw [child]
  dsimp only [result10106]
  have child := child1
  unfold live10107 coloured10107 at child
  try dsimp only [live10108, coloured10108]
  rw [child]
  dsimp only [result10107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10109_agree_conditional : tree10109 = literal10109 := by
  rw [tree10109_def]
  rfl
theorem node10109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10109 live10109 coloured10109 = result10109 := by
  rw [tree10109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10110_agree_conditional
    (child0 : tree10108 = literal10108)
    (child1 : tree10109 = literal10109) : tree10110 = literal10110 := by
  rw [tree10110_def, child0, child1]
  rfl
theorem node10110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10108 live10108 coloured10108 = result10108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10109 live10109 coloured10109 = result10109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10110 live10110 coloured10110 = result10110 := by
  rw [tree10110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10108 coloured10108 at child
  try dsimp only [live10110, coloured10110]
  rw [child]
  dsimp only [result10108]
  have child := child1
  unfold live10109 coloured10109 at child
  try dsimp only [live10110, coloured10110]
  rw [child]
  dsimp only [result10109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10111_agree_conditional : tree10111 = literal10111 := by
  rw [tree10111_def]
  rfl
theorem node10111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10111 live10111 coloured10111 = result10111 := by
  rw [tree10111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10112_agree_conditional
    (child0 : tree10110 = literal10110)
    (child1 : tree10111 = literal10111) : tree10112 = literal10112 := by
  rw [tree10112_def, child0, child1]
  rfl
theorem node10112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10110 live10110 coloured10110 = result10110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10111 live10111 coloured10111 = result10111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10112 live10112 coloured10112 = result10112 := by
  rw [tree10112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10110 coloured10110 at child
  try dsimp only [live10112, coloured10112]
  rw [child]
  dsimp only [result10110]
  have child := child1
  unfold live10111 coloured10111 at child
  try dsimp only [live10112, coloured10112]
  rw [child]
  dsimp only [result10111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10113_agree_conditional : tree10113 = literal10113 := by
  rw [tree10113_def]
  rfl
theorem node10113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10113 live10113 coloured10113 = result10113 := by
  rw [tree10113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10114_agree_conditional
    (child0 : tree10112 = literal10112)
    (child1 : tree10113 = literal10113) : tree10114 = literal10114 := by
  rw [tree10114_def, child0, child1]
  rfl
theorem node10114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10112 live10112 coloured10112 = result10112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10113 live10113 coloured10113 = result10113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10114 live10114 coloured10114 = result10114 := by
  rw [tree10114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10112 coloured10112 at child
  try dsimp only [live10114, coloured10114]
  rw [child]
  dsimp only [result10112]
  have child := child1
  unfold live10113 coloured10113 at child
  try dsimp only [live10114, coloured10114]
  rw [child]
  dsimp only [result10113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10115_agree_conditional : tree10115 = literal10115 := by
  rw [tree10115_def]
  rfl
theorem node10115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10115 live10115 coloured10115 = result10115 := by
  rw [tree10115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10116_agree_conditional
    (child0 : tree10114 = literal10114)
    (child1 : tree10115 = literal10115) : tree10116 = literal10116 := by
  rw [tree10116_def, child0, child1]
  rfl
theorem node10116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10114 live10114 coloured10114 = result10114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10115 live10115 coloured10115 = result10115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10116 live10116 coloured10116 = result10116 := by
  rw [tree10116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10114 coloured10114 at child
  try dsimp only [live10116, coloured10116]
  rw [child]
  dsimp only [result10114]
  have child := child1
  unfold live10115 coloured10115 at child
  try dsimp only [live10116, coloured10116]
  rw [child]
  dsimp only [result10115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10117_agree_conditional : tree10117 = literal10117 := by
  rw [tree10117_def]
  rfl
theorem node10117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10117 live10117 coloured10117 = result10117 := by
  rw [tree10117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10118_agree_conditional
    (child0 : tree10116 = literal10116)
    (child1 : tree10117 = literal10117) : tree10118 = literal10118 := by
  rw [tree10118_def, child0, child1]
  rfl
theorem node10118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10116 live10116 coloured10116 = result10116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10117 live10117 coloured10117 = result10117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10118 live10118 coloured10118 = result10118 := by
  rw [tree10118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10116 coloured10116 at child
  try dsimp only [live10118, coloured10118]
  rw [child]
  dsimp only [result10116]
  have child := child1
  unfold live10117 coloured10117 at child
  try dsimp only [live10118, coloured10118]
  rw [child]
  dsimp only [result10117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10119_agree_conditional : tree10119 = literal10119 := by
  rw [tree10119_def]
  rfl
theorem node10119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10119 live10119 coloured10119 = result10119 := by
  rw [tree10119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10120_agree_conditional
    (child0 : tree10118 = literal10118)
    (child1 : tree10119 = literal10119) : tree10120 = literal10120 := by
  rw [tree10120_def, child0, child1]
  rfl
theorem node10120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10118 live10118 coloured10118 = result10118)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10119 live10119 coloured10119 = result10119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10120 live10120 coloured10120 = result10120 := by
  rw [tree10120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10118 coloured10118 at child
  try dsimp only [live10120, coloured10120]
  rw [child]
  dsimp only [result10118]
  have child := child1
  unfold live10119 coloured10119 at child
  try dsimp only [live10120, coloured10120]
  rw [child]
  dsimp only [result10119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10121_agree_conditional : tree10121 = literal10121 := by
  rw [tree10121_def]
  rfl
theorem node10121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10121 live10121 coloured10121 = result10121 := by
  rw [tree10121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10122_agree_conditional
    (child0 : tree10120 = literal10120)
    (child1 : tree10121 = literal10121) : tree10122 = literal10122 := by
  rw [tree10122_def, child0, child1]
  rfl
theorem node10122_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10120 live10120 coloured10120 = result10120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10121 live10121 coloured10121 = result10121) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10122 live10122 coloured10122 = result10122 := by
  rw [tree10122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10120 coloured10120 at child
  try dsimp only [live10122, coloured10122]
  rw [child]
  dsimp only [result10120]
  have child := child1
  unfold live10121 coloured10121 at child
  try dsimp only [live10122, coloured10122]
  rw [child]
  dsimp only [result10121]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10123_agree_conditional : tree10123 = literal10123 := by
  rw [tree10123_def]
  rfl
theorem node10123_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10123 live10123 coloured10123 = result10123 := by
  rw [tree10123_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10124_agree_conditional
    (child0 : tree10122 = literal10122)
    (child1 : tree10123 = literal10123) : tree10124 = literal10124 := by
  rw [tree10124_def, child0, child1]
  rfl
theorem node10124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10122 live10122 coloured10122 = result10122)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10123 live10123 coloured10123 = result10123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10124 live10124 coloured10124 = result10124 := by
  rw [tree10124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10122 coloured10122 at child
  try dsimp only [live10124, coloured10124]
  rw [child]
  dsimp only [result10122]
  have child := child1
  unfold live10123 coloured10123 at child
  try dsimp only [live10124, coloured10124]
  rw [child]
  dsimp only [result10123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10125_agree_conditional : tree10125 = literal10125 := by
  rw [tree10125_def]
  rfl
theorem node10125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10125 live10125 coloured10125 = result10125 := by
  rw [tree10125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10126_agree_conditional
    (child0 : tree10124 = literal10124)
    (child1 : tree10125 = literal10125) : tree10126 = literal10126 := by
  rw [tree10126_def, child0, child1]
  rfl
theorem node10126_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10124 live10124 coloured10124 = result10124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10125 live10125 coloured10125 = result10125) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10126 live10126 coloured10126 = result10126 := by
  rw [tree10126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10124 coloured10124 at child
  try dsimp only [live10126, coloured10126]
  rw [child]
  dsimp only [result10124]
  have child := child1
  unfold live10125 coloured10125 at child
  try dsimp only [live10126, coloured10126]
  rw [child]
  dsimp only [result10125]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10127_agree_conditional : tree10127 = literal10127 := by
  rw [tree10127_def]
  rfl
theorem node10127_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10127 live10127 coloured10127 = result10127 := by
  rw [tree10127_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10128_agree_conditional
    (child0 : tree10126 = literal10126)
    (child1 : tree10127 = literal10127) : tree10128 = literal10128 := by
  rw [tree10128_def, child0, child1]
  rfl
theorem node10128_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10126 live10126 coloured10126 = result10126)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10127 live10127 coloured10127 = result10127) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10128 live10128 coloured10128 = result10128 := by
  rw [tree10128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10126 coloured10126 at child
  try dsimp only [live10128, coloured10128]
  rw [child]
  dsimp only [result10126]
  have child := child1
  unfold live10127 coloured10127 at child
  try dsimp only [live10128, coloured10128]
  rw [child]
  dsimp only [result10127]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10129_agree_conditional : tree10129 = literal10129 := by
  rw [tree10129_def]
  rfl
theorem node10129_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10129 live10129 coloured10129 = result10129 := by
  rw [tree10129_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10130_agree_conditional
    (child0 : tree10128 = literal10128)
    (child1 : tree10129 = literal10129) : tree10130 = literal10130 := by
  rw [tree10130_def, child0, child1]
  rfl
theorem node10130_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10128 live10128 coloured10128 = result10128)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10129 live10129 coloured10129 = result10129) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10130 live10130 coloured10130 = result10130 := by
  rw [tree10130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10128 coloured10128 at child
  try dsimp only [live10130, coloured10130]
  rw [child]
  dsimp only [result10128]
  have child := child1
  unfold live10129 coloured10129 at child
  try dsimp only [live10130, coloured10130]
  rw [child]
  dsimp only [result10129]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10131_agree_conditional : tree10131 = literal10131 := by
  rw [tree10131_def]
  rfl
theorem node10131_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10131 live10131 coloured10131 = result10131 := by
  rw [tree10131_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10132_agree_conditional
    (child0 : tree10130 = literal10130)
    (child1 : tree10131 = literal10131) : tree10132 = literal10132 := by
  rw [tree10132_def, child0, child1]
  rfl
theorem node10132_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10130 live10130 coloured10130 = result10130)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10131 live10131 coloured10131 = result10131) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10132 live10132 coloured10132 = result10132 := by
  rw [tree10132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10130 coloured10130 at child
  try dsimp only [live10132, coloured10132]
  rw [child]
  dsimp only [result10130]
  have child := child1
  unfold live10131 coloured10131 at child
  try dsimp only [live10132, coloured10132]
  rw [child]
  dsimp only [result10131]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10133_agree_conditional : tree10133 = literal10133 := by
  rw [tree10133_def]
  rfl
theorem node10133_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10133 live10133 coloured10133 = result10133 := by
  rw [tree10133_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10134_agree_conditional
    (child0 : tree10132 = literal10132)
    (child1 : tree10133 = literal10133) : tree10134 = literal10134 := by
  rw [tree10134_def, child0, child1]
  rfl
theorem node10134_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10132 live10132 coloured10132 = result10132)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10133 live10133 coloured10133 = result10133) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10134 live10134 coloured10134 = result10134 := by
  rw [tree10134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10132 coloured10132 at child
  try dsimp only [live10134, coloured10134]
  rw [child]
  dsimp only [result10132]
  have child := child1
  unfold live10133 coloured10133 at child
  try dsimp only [live10134, coloured10134]
  rw [child]
  dsimp only [result10133]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10135_agree_conditional : tree10135 = literal10135 := by
  rw [tree10135_def]
  rfl
theorem node10135_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10135 live10135 coloured10135 = result10135 := by
  rw [tree10135_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10136_agree_conditional
    (child0 : tree10134 = literal10134)
    (child1 : tree10135 = literal10135) : tree10136 = literal10136 := by
  rw [tree10136_def, child0, child1]
  rfl
theorem node10136_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10134 live10134 coloured10134 = result10134)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10135 live10135 coloured10135 = result10135) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10136 live10136 coloured10136 = result10136 := by
  rw [tree10136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10134 coloured10134 at child
  try dsimp only [live10136, coloured10136]
  rw [child]
  dsimp only [result10134]
  have child := child1
  unfold live10135 coloured10135 at child
  try dsimp only [live10136, coloured10136]
  rw [child]
  dsimp only [result10135]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10137_agree_conditional : tree10137 = literal10137 := by
  rw [tree10137_def]
  rfl
theorem node10137_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10137 live10137 coloured10137 = result10137 := by
  rw [tree10137_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10138_agree_conditional
    (child0 : tree10136 = literal10136)
    (child1 : tree10137 = literal10137) : tree10138 = literal10138 := by
  rw [tree10138_def, child0, child1]
  rfl
theorem node10138_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10136 live10136 coloured10136 = result10136)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10137 live10137 coloured10137 = result10137) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10138 live10138 coloured10138 = result10138 := by
  rw [tree10138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10136 coloured10136 at child
  try dsimp only [live10138, coloured10138]
  rw [child]
  dsimp only [result10136]
  have child := child1
  unfold live10137 coloured10137 at child
  try dsimp only [live10138, coloured10138]
  rw [child]
  dsimp only [result10137]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10139_agree_conditional : tree10139 = literal10139 := by
  rw [tree10139_def]
  rfl
theorem node10139_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10139 live10139 coloured10139 = result10139 := by
  rw [tree10139_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10140_agree_conditional
    (child0 : tree10138 = literal10138)
    (child1 : tree10139 = literal10139) : tree10140 = literal10140 := by
  rw [tree10140_def, child0, child1]
  rfl
theorem node10140_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10138 live10138 coloured10138 = result10138)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10139 live10139 coloured10139 = result10139) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10140 live10140 coloured10140 = result10140 := by
  rw [tree10140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10138 coloured10138 at child
  try dsimp only [live10140, coloured10140]
  rw [child]
  dsimp only [result10138]
  have child := child1
  unfold live10139 coloured10139 at child
  try dsimp only [live10140, coloured10140]
  rw [child]
  dsimp only [result10139]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10141_agree_conditional : tree10141 = literal10141 := by
  rw [tree10141_def]
  rfl
theorem node10141_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10141 live10141 coloured10141 = result10141 := by
  rw [tree10141_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10142_agree_conditional
    (child0 : tree10140 = literal10140)
    (child1 : tree10141 = literal10141) : tree10142 = literal10142 := by
  rw [tree10142_def, child0, child1]
  rfl
theorem node10142_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10140 live10140 coloured10140 = result10140)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10141 live10141 coloured10141 = result10141) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10142 live10142 coloured10142 = result10142 := by
  rw [tree10142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10140 coloured10140 at child
  try dsimp only [live10142, coloured10142]
  rw [child]
  dsimp only [result10140]
  have child := child1
  unfold live10141 coloured10141 at child
  try dsimp only [live10142, coloured10142]
  rw [child]
  dsimp only [result10141]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10143_agree_conditional : tree10143 = literal10143 := by
  rw [tree10143_def]
  rfl
theorem node10143_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10143 live10143 coloured10143 = result10143 := by
  rw [tree10143_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10144_agree_conditional
    (child0 : tree10142 = literal10142)
    (child1 : tree10143 = literal10143) : tree10144 = literal10144 := by
  rw [tree10144_def, child0, child1]
  rfl
theorem node10144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10142 live10142 coloured10142 = result10142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10143 live10143 coloured10143 = result10143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10144 live10144 coloured10144 = result10144 := by
  rw [tree10144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10142 coloured10142 at child
  try dsimp only [live10144, coloured10144]
  rw [child]
  dsimp only [result10142]
  have child := child1
  unfold live10143 coloured10143 at child
  try dsimp only [live10144, coloured10144]
  rw [child]
  dsimp only [result10143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10145_agree_conditional : tree10145 = literal10145 := by
  rw [tree10145_def]
  rfl
theorem node10145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10145 live10145 coloured10145 = result10145 := by
  rw [tree10145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10146_agree_conditional
    (child0 : tree10144 = literal10144)
    (child1 : tree10145 = literal10145) : tree10146 = literal10146 := by
  rw [tree10146_def, child0, child1]
  rfl
theorem node10146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10144 live10144 coloured10144 = result10144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10145 live10145 coloured10145 = result10145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10146 live10146 coloured10146 = result10146 := by
  rw [tree10146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10144 coloured10144 at child
  try dsimp only [live10146, coloured10146]
  rw [child]
  dsimp only [result10144]
  have child := child1
  unfold live10145 coloured10145 at child
  try dsimp only [live10146, coloured10146]
  rw [child]
  dsimp only [result10145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10147_agree_conditional : tree10147 = literal10147 := by
  rw [tree10147_def]
  rfl
theorem node10147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10147 live10147 coloured10147 = result10147 := by
  rw [tree10147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10148_agree_conditional
    (child0 : tree10146 = literal10146)
    (child1 : tree10147 = literal10147) : tree10148 = literal10148 := by
  rw [tree10148_def, child0, child1]
  rfl
theorem node10148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10146 live10146 coloured10146 = result10146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10147 live10147 coloured10147 = result10147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10148 live10148 coloured10148 = result10148 := by
  rw [tree10148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10146 coloured10146 at child
  try dsimp only [live10148, coloured10148]
  rw [child]
  dsimp only [result10146]
  have child := child1
  unfold live10147 coloured10147 at child
  try dsimp only [live10148, coloured10148]
  rw [child]
  dsimp only [result10147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10149_agree_conditional : tree10149 = literal10149 := by
  rw [tree10149_def]
  rfl
theorem node10149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10149 live10149 coloured10149 = result10149 := by
  rw [tree10149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10150_agree_conditional
    (child0 : tree10148 = literal10148)
    (child1 : tree10149 = literal10149) : tree10150 = literal10150 := by
  rw [tree10150_def, child0, child1]
  rfl
theorem node10150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10148 live10148 coloured10148 = result10148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10149 live10149 coloured10149 = result10149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10150 live10150 coloured10150 = result10150 := by
  rw [tree10150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10148 coloured10148 at child
  try dsimp only [live10150, coloured10150]
  rw [child]
  dsimp only [result10148]
  have child := child1
  unfold live10149 coloured10149 at child
  try dsimp only [live10150, coloured10150]
  rw [child]
  dsimp only [result10149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10151_agree_conditional : tree10151 = literal10151 := by
  rw [tree10151_def]
  rfl
theorem node10151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10151 live10151 coloured10151 = result10151 := by
  rw [tree10151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10152_agree_conditional
    (child0 : tree10150 = literal10150)
    (child1 : tree10151 = literal10151) : tree10152 = literal10152 := by
  rw [tree10152_def, child0, child1]
  rfl
theorem node10152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10150 live10150 coloured10150 = result10150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10151 live10151 coloured10151 = result10151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10152 live10152 coloured10152 = result10152 := by
  rw [tree10152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10150 coloured10150 at child
  try dsimp only [live10152, coloured10152]
  rw [child]
  dsimp only [result10150]
  have child := child1
  unfold live10151 coloured10151 at child
  try dsimp only [live10152, coloured10152]
  rw [child]
  dsimp only [result10151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10153_agree_conditional : tree10153 = literal10153 := by
  rw [tree10153_def]
  rfl
theorem node10153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10153 live10153 coloured10153 = result10153 := by
  rw [tree10153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10154_agree_conditional
    (child0 : tree10152 = literal10152)
    (child1 : tree10153 = literal10153) : tree10154 = literal10154 := by
  rw [tree10154_def, child0, child1]
  rfl
theorem node10154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10152 live10152 coloured10152 = result10152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10153 live10153 coloured10153 = result10153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10154 live10154 coloured10154 = result10154 := by
  rw [tree10154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10152 coloured10152 at child
  try dsimp only [live10154, coloured10154]
  rw [child]
  dsimp only [result10152]
  have child := child1
  unfold live10153 coloured10153 at child
  try dsimp only [live10154, coloured10154]
  rw [child]
  dsimp only [result10153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10155_agree_conditional : tree10155 = literal10155 := by
  rw [tree10155_def]
  rfl
theorem node10155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10155 live10155 coloured10155 = result10155 := by
  rw [tree10155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10156_agree_conditional
    (child0 : tree10154 = literal10154)
    (child1 : tree10155 = literal10155) : tree10156 = literal10156 := by
  rw [tree10156_def, child0, child1]
  rfl
theorem node10156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10154 live10154 coloured10154 = result10154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10155 live10155 coloured10155 = result10155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10156 live10156 coloured10156 = result10156 := by
  rw [tree10156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10154 coloured10154 at child
  try dsimp only [live10156, coloured10156]
  rw [child]
  dsimp only [result10154]
  have child := child1
  unfold live10155 coloured10155 at child
  try dsimp only [live10156, coloured10156]
  rw [child]
  dsimp only [result10155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10157_agree_conditional : tree10157 = literal10157 := by
  rw [tree10157_def]
  rfl
theorem node10157_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10157 live10157 coloured10157 = result10157 := by
  rw [tree10157_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10158_agree_conditional
    (child0 : tree10156 = literal10156)
    (child1 : tree10157 = literal10157) : tree10158 = literal10158 := by
  rw [tree10158_def, child0, child1]
  rfl
theorem node10158_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10156 live10156 coloured10156 = result10156)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10157 live10157 coloured10157 = result10157) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10158 live10158 coloured10158 = result10158 := by
  rw [tree10158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10156 coloured10156 at child
  try dsimp only [live10158, coloured10158]
  rw [child]
  dsimp only [result10156]
  have child := child1
  unfold live10157 coloured10157 at child
  try dsimp only [live10158, coloured10158]
  rw [child]
  dsimp only [result10157]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10159_agree_conditional : tree10159 = literal10159 := by
  rw [tree10159_def]
  rfl
theorem node10159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10159 live10159 coloured10159 = result10159 := by
  rw [tree10159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10160_agree_conditional
    (child0 : tree10158 = literal10158)
    (child1 : tree10159 = literal10159) : tree10160 = literal10160 := by
  rw [tree10160_def, child0, child1]
  rfl
theorem node10160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10158 live10158 coloured10158 = result10158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10159 live10159 coloured10159 = result10159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10160 live10160 coloured10160 = result10160 := by
  rw [tree10160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10158 coloured10158 at child
  try dsimp only [live10160, coloured10160]
  rw [child]
  dsimp only [result10158]
  have child := child1
  unfold live10159 coloured10159 at child
  try dsimp only [live10160, coloured10160]
  rw [child]
  dsimp only [result10159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10161_agree_conditional : tree10161 = literal10161 := by
  rw [tree10161_def]
  rfl
theorem node10161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10161 live10161 coloured10161 = result10161 := by
  rw [tree10161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10162_agree_conditional
    (child0 : tree10160 = literal10160)
    (child1 : tree10161 = literal10161) : tree10162 = literal10162 := by
  rw [tree10162_def, child0, child1]
  rfl
theorem node10162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10160 live10160 coloured10160 = result10160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10161 live10161 coloured10161 = result10161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10162 live10162 coloured10162 = result10162 := by
  rw [tree10162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10160 coloured10160 at child
  try dsimp only [live10162, coloured10162]
  rw [child]
  dsimp only [result10160]
  have child := child1
  unfold live10161 coloured10161 at child
  try dsimp only [live10162, coloured10162]
  rw [child]
  dsimp only [result10161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10163_agree_conditional : tree10163 = literal10163 := by
  rw [tree10163_def]
  rfl
theorem node10163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10163 live10163 coloured10163 = result10163 := by
  rw [tree10163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10164_agree_conditional
    (child0 : tree10162 = literal10162)
    (child1 : tree10163 = literal10163) : tree10164 = literal10164 := by
  rw [tree10164_def, child0, child1]
  rfl
theorem node10164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10162 live10162 coloured10162 = result10162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10163 live10163 coloured10163 = result10163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10164 live10164 coloured10164 = result10164 := by
  rw [tree10164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10162 coloured10162 at child
  try dsimp only [live10164, coloured10164]
  rw [child]
  dsimp only [result10162]
  have child := child1
  unfold live10163 coloured10163 at child
  try dsimp only [live10164, coloured10164]
  rw [child]
  dsimp only [result10163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10165_agree_conditional : tree10165 = literal10165 := by
  rw [tree10165_def]
  rfl
theorem node10165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10165 live10165 coloured10165 = result10165 := by
  rw [tree10165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10166_agree_conditional
    (child0 : tree10164 = literal10164)
    (child1 : tree10165 = literal10165) : tree10166 = literal10166 := by
  rw [tree10166_def, child0, child1]
  rfl
theorem node10166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10164 live10164 coloured10164 = result10164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10165 live10165 coloured10165 = result10165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10166 live10166 coloured10166 = result10166 := by
  rw [tree10166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10164 coloured10164 at child
  try dsimp only [live10166, coloured10166]
  rw [child]
  dsimp only [result10164]
  have child := child1
  unfold live10165 coloured10165 at child
  try dsimp only [live10166, coloured10166]
  rw [child]
  dsimp only [result10165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10167_agree_conditional : tree10167 = literal10167 := by
  rw [tree10167_def]
  rfl
theorem node10167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10167 live10167 coloured10167 = result10167 := by
  rw [tree10167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10168_agree_conditional
    (child0 : tree10166 = literal10166)
    (child1 : tree10167 = literal10167) : tree10168 = literal10168 := by
  rw [tree10168_def, child0, child1]
  rfl
theorem node10168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10166 live10166 coloured10166 = result10166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10167 live10167 coloured10167 = result10167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10168 live10168 coloured10168 = result10168 := by
  rw [tree10168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10166 coloured10166 at child
  try dsimp only [live10168, coloured10168]
  rw [child]
  dsimp only [result10166]
  have child := child1
  unfold live10167 coloured10167 at child
  try dsimp only [live10168, coloured10168]
  rw [child]
  dsimp only [result10167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10169_agree_conditional : tree10169 = literal10169 := by
  rw [tree10169_def]
  rfl
theorem node10169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10169 live10169 coloured10169 = result10169 := by
  rw [tree10169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10170_agree_conditional
    (child0 : tree10168 = literal10168)
    (child1 : tree10169 = literal10169) : tree10170 = literal10170 := by
  rw [tree10170_def, child0, child1]
  rfl
theorem node10170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10168 live10168 coloured10168 = result10168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10169 live10169 coloured10169 = result10169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10170 live10170 coloured10170 = result10170 := by
  rw [tree10170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10168 coloured10168 at child
  try dsimp only [live10170, coloured10170]
  rw [child]
  dsimp only [result10168]
  have child := child1
  unfold live10169 coloured10169 at child
  try dsimp only [live10170, coloured10170]
  rw [child]
  dsimp only [result10169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10171_agree_conditional : tree10171 = literal10171 := by
  rw [tree10171_def]
  rfl
theorem node10171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10171 live10171 coloured10171 = result10171 := by
  rw [tree10171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10172_agree_conditional
    (child0 : tree10170 = literal10170)
    (child1 : tree10171 = literal10171) : tree10172 = literal10172 := by
  rw [tree10172_def, child0, child1]
  rfl
theorem node10172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10170 live10170 coloured10170 = result10170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10171 live10171 coloured10171 = result10171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10172 live10172 coloured10172 = result10172 := by
  rw [tree10172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10170 coloured10170 at child
  try dsimp only [live10172, coloured10172]
  rw [child]
  dsimp only [result10170]
  have child := child1
  unfold live10171 coloured10171 at child
  try dsimp only [live10172, coloured10172]
  rw [child]
  dsimp only [result10171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10173_agree_conditional : tree10173 = literal10173 := by
  rw [tree10173_def]
  rfl
theorem node10173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10173 live10173 coloured10173 = result10173 := by
  rw [tree10173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10174_agree_conditional
    (child0 : tree10172 = literal10172)
    (child1 : tree10173 = literal10173) : tree10174 = literal10174 := by
  rw [tree10174_def, child0, child1]
  rfl
theorem node10174_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10172 live10172 coloured10172 = result10172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10173 live10173 coloured10173 = result10173) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10174 live10174 coloured10174 = result10174 := by
  rw [tree10174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10172 coloured10172 at child
  try dsimp only [live10174, coloured10174]
  rw [child]
  dsimp only [result10172]
  have child := child1
  unfold live10173 coloured10173 at child
  try dsimp only [live10174, coloured10174]
  rw [child]
  dsimp only [result10173]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10175_agree_conditional : tree10175 = literal10175 := by
  rw [tree10175_def]
  rfl
theorem node10175_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10175 live10175 coloured10175 = result10175 := by
  rw [tree10175_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
