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
theorem tree3072_agree_conditional
    (child0 : tree3070 = literal3070)
    (child1 : tree3071 = literal3071) : tree3072 = literal3072 := by
  rw [tree3072_def, child0, child1]
  rfl
theorem node3072_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3070 live3070 coloured3070 = result3070)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3071 live3071 coloured3071 = result3071) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3072 live3072 coloured3072 = result3072 := by
  rw [tree3072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3070 coloured3070 at child
  try dsimp only [live3072, coloured3072]
  rw [child]
  dsimp only [result3070]
  have child := child1
  unfold live3071 coloured3071 at child
  try dsimp only [live3072, coloured3072]
  rw [child]
  dsimp only [result3071]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3073_agree_conditional : tree3073 = literal3073 := by
  rw [tree3073_def]
  rfl
theorem node3073_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3073 live3073 coloured3073 = result3073 := by
  rw [tree3073_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3074_agree_conditional
    (child0 : tree3072 = literal3072)
    (child1 : tree3073 = literal3073) : tree3074 = literal3074 := by
  rw [tree3074_def, child0, child1]
  rfl
theorem node3074_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3072 live3072 coloured3072 = result3072)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3073 live3073 coloured3073 = result3073) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3074 live3074 coloured3074 = result3074 := by
  rw [tree3074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3072 coloured3072 at child
  try dsimp only [live3074, coloured3074]
  rw [child]
  dsimp only [result3072]
  have child := child1
  unfold live3073 coloured3073 at child
  try dsimp only [live3074, coloured3074]
  rw [child]
  dsimp only [result3073]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3075_agree_conditional : tree3075 = literal3075 := by
  rw [tree3075_def]
  rfl
theorem node3075_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3075 live3075 coloured3075 = result3075 := by
  rw [tree3075_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3076_agree_conditional
    (child0 : tree3074 = literal3074)
    (child1 : tree3075 = literal3075) : tree3076 = literal3076 := by
  rw [tree3076_def, child0, child1]
  rfl
theorem node3076_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3074 live3074 coloured3074 = result3074)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3075 live3075 coloured3075 = result3075) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3076 live3076 coloured3076 = result3076 := by
  rw [tree3076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3074 coloured3074 at child
  try dsimp only [live3076, coloured3076]
  rw [child]
  dsimp only [result3074]
  have child := child1
  unfold live3075 coloured3075 at child
  try dsimp only [live3076, coloured3076]
  rw [child]
  dsimp only [result3075]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3077_agree_conditional : tree3077 = literal3077 := by
  rw [tree3077_def]
  rfl
theorem node3077_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3077 live3077 coloured3077 = result3077 := by
  rw [tree3077_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3078_agree_conditional
    (child0 : tree3076 = literal3076)
    (child1 : tree3077 = literal3077) : tree3078 = literal3078 := by
  rw [tree3078_def, child0, child1]
  rfl
theorem node3078_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3076 live3076 coloured3076 = result3076)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3077 live3077 coloured3077 = result3077) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3078 live3078 coloured3078 = result3078 := by
  rw [tree3078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3076 coloured3076 at child
  try dsimp only [live3078, coloured3078]
  rw [child]
  dsimp only [result3076]
  have child := child1
  unfold live3077 coloured3077 at child
  try dsimp only [live3078, coloured3078]
  rw [child]
  dsimp only [result3077]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3079_agree_conditional : tree3079 = literal3079 := by
  rw [tree3079_def]
  rfl
theorem node3079_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3079 live3079 coloured3079 = result3079 := by
  rw [tree3079_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3080_agree_conditional
    (child0 : tree3078 = literal3078)
    (child1 : tree3079 = literal3079) : tree3080 = literal3080 := by
  rw [tree3080_def, child0, child1]
  rfl
theorem node3080_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3078 live3078 coloured3078 = result3078)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3079 live3079 coloured3079 = result3079) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3080 live3080 coloured3080 = result3080 := by
  rw [tree3080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3078 coloured3078 at child
  try dsimp only [live3080, coloured3080]
  rw [child]
  dsimp only [result3078]
  have child := child1
  unfold live3079 coloured3079 at child
  try dsimp only [live3080, coloured3080]
  rw [child]
  dsimp only [result3079]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3081_agree_conditional : tree3081 = literal3081 := by
  rw [tree3081_def]
  rfl
theorem node3081_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3081 live3081 coloured3081 = result3081 := by
  rw [tree3081_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3082_agree_conditional
    (child0 : tree3080 = literal3080)
    (child1 : tree3081 = literal3081) : tree3082 = literal3082 := by
  rw [tree3082_def, child0, child1]
  rfl
theorem node3082_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3080 live3080 coloured3080 = result3080)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3081 live3081 coloured3081 = result3081) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3082 live3082 coloured3082 = result3082 := by
  rw [tree3082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3080 coloured3080 at child
  try dsimp only [live3082, coloured3082]
  rw [child]
  dsimp only [result3080]
  have child := child1
  unfold live3081 coloured3081 at child
  try dsimp only [live3082, coloured3082]
  rw [child]
  dsimp only [result3081]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3083_agree_conditional : tree3083 = literal3083 := by
  rw [tree3083_def]
  rfl
theorem node3083_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3083 live3083 coloured3083 = result3083 := by
  rw [tree3083_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3084_agree_conditional
    (child0 : tree3082 = literal3082)
    (child1 : tree3083 = literal3083) : tree3084 = literal3084 := by
  rw [tree3084_def, child0, child1]
  rfl
theorem node3084_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3082 live3082 coloured3082 = result3082)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3083 live3083 coloured3083 = result3083) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3084 live3084 coloured3084 = result3084 := by
  rw [tree3084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3082 coloured3082 at child
  try dsimp only [live3084, coloured3084]
  rw [child]
  dsimp only [result3082]
  have child := child1
  unfold live3083 coloured3083 at child
  try dsimp only [live3084, coloured3084]
  rw [child]
  dsimp only [result3083]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3085_agree_conditional : tree3085 = literal3085 := by
  rw [tree3085_def]
  rfl
theorem node3085_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3085 live3085 coloured3085 = result3085 := by
  rw [tree3085_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3086_agree_conditional
    (child0 : tree3084 = literal3084)
    (child1 : tree3085 = literal3085) : tree3086 = literal3086 := by
  rw [tree3086_def, child0, child1]
  rfl
theorem node3086_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3084 live3084 coloured3084 = result3084)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3085 live3085 coloured3085 = result3085) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3086 live3086 coloured3086 = result3086 := by
  rw [tree3086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3084 coloured3084 at child
  try dsimp only [live3086, coloured3086]
  rw [child]
  dsimp only [result3084]
  have child := child1
  unfold live3085 coloured3085 at child
  try dsimp only [live3086, coloured3086]
  rw [child]
  dsimp only [result3085]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3087_agree_conditional : tree3087 = literal3087 := by
  rw [tree3087_def]
  rfl
theorem node3087_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3087 live3087 coloured3087 = result3087 := by
  rw [tree3087_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3088_agree_conditional
    (child0 : tree3086 = literal3086)
    (child1 : tree3087 = literal3087) : tree3088 = literal3088 := by
  rw [tree3088_def, child0, child1]
  rfl
theorem node3088_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3086 live3086 coloured3086 = result3086)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3087 live3087 coloured3087 = result3087) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3088 live3088 coloured3088 = result3088 := by
  rw [tree3088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3086 coloured3086 at child
  try dsimp only [live3088, coloured3088]
  rw [child]
  dsimp only [result3086]
  have child := child1
  unfold live3087 coloured3087 at child
  try dsimp only [live3088, coloured3088]
  rw [child]
  dsimp only [result3087]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3089_agree_conditional : tree3089 = literal3089 := by
  rw [tree3089_def]
  rfl
theorem node3089_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3089 live3089 coloured3089 = result3089 := by
  rw [tree3089_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3090_agree_conditional
    (child0 : tree3088 = literal3088)
    (child1 : tree3089 = literal3089) : tree3090 = literal3090 := by
  rw [tree3090_def, child0, child1]
  rfl
theorem node3090_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3088 live3088 coloured3088 = result3088)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3089 live3089 coloured3089 = result3089) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3090 live3090 coloured3090 = result3090 := by
  rw [tree3090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3088 coloured3088 at child
  try dsimp only [live3090, coloured3090]
  rw [child]
  dsimp only [result3088]
  have child := child1
  unfold live3089 coloured3089 at child
  try dsimp only [live3090, coloured3090]
  rw [child]
  dsimp only [result3089]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3091_agree_conditional : tree3091 = literal3091 := by
  rw [tree3091_def]
  rfl
theorem node3091_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3091 live3091 coloured3091 = result3091 := by
  rw [tree3091_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3092_agree_conditional
    (child0 : tree3090 = literal3090)
    (child1 : tree3091 = literal3091) : tree3092 = literal3092 := by
  rw [tree3092_def, child0, child1]
  rfl
theorem node3092_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3090 live3090 coloured3090 = result3090)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3091 live3091 coloured3091 = result3091) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3092 live3092 coloured3092 = result3092 := by
  rw [tree3092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3090 coloured3090 at child
  try dsimp only [live3092, coloured3092]
  rw [child]
  dsimp only [result3090]
  have child := child1
  unfold live3091 coloured3091 at child
  try dsimp only [live3092, coloured3092]
  rw [child]
  dsimp only [result3091]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3093_agree_conditional : tree3093 = literal3093 := by
  rw [tree3093_def]
  rfl
theorem node3093_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3093 live3093 coloured3093 = result3093 := by
  rw [tree3093_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3094_agree_conditional
    (child0 : tree3092 = literal3092)
    (child1 : tree3093 = literal3093) : tree3094 = literal3094 := by
  rw [tree3094_def, child0, child1]
  rfl
theorem node3094_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3092 live3092 coloured3092 = result3092)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3093 live3093 coloured3093 = result3093) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3094 live3094 coloured3094 = result3094 := by
  rw [tree3094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3092 coloured3092 at child
  try dsimp only [live3094, coloured3094]
  rw [child]
  dsimp only [result3092]
  have child := child1
  unfold live3093 coloured3093 at child
  try dsimp only [live3094, coloured3094]
  rw [child]
  dsimp only [result3093]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3095_agree_conditional : tree3095 = literal3095 := by
  rw [tree3095_def]
  rfl
theorem node3095_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3095 live3095 coloured3095 = result3095 := by
  rw [tree3095_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3096_agree_conditional
    (child0 : tree3094 = literal3094)
    (child1 : tree3095 = literal3095) : tree3096 = literal3096 := by
  rw [tree3096_def, child0, child1]
  rfl
theorem node3096_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3094 live3094 coloured3094 = result3094)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3095 live3095 coloured3095 = result3095) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3096 live3096 coloured3096 = result3096 := by
  rw [tree3096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3094 coloured3094 at child
  try dsimp only [live3096, coloured3096]
  rw [child]
  dsimp only [result3094]
  have child := child1
  unfold live3095 coloured3095 at child
  try dsimp only [live3096, coloured3096]
  rw [child]
  dsimp only [result3095]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3097_agree_conditional : tree3097 = literal3097 := by
  rw [tree3097_def]
  rfl
theorem node3097_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3097 live3097 coloured3097 = result3097 := by
  rw [tree3097_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3098_agree_conditional
    (child0 : tree3096 = literal3096)
    (child1 : tree3097 = literal3097) : tree3098 = literal3098 := by
  rw [tree3098_def, child0, child1]
  rfl
theorem node3098_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3096 live3096 coloured3096 = result3096)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3097 live3097 coloured3097 = result3097) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3098 live3098 coloured3098 = result3098 := by
  rw [tree3098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3096 coloured3096 at child
  try dsimp only [live3098, coloured3098]
  rw [child]
  dsimp only [result3096]
  have child := child1
  unfold live3097 coloured3097 at child
  try dsimp only [live3098, coloured3098]
  rw [child]
  dsimp only [result3097]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3099_agree_conditional : tree3099 = literal3099 := by
  rw [tree3099_def]
  rfl
theorem node3099_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3099 live3099 coloured3099 = result3099 := by
  rw [tree3099_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3100_agree_conditional
    (child0 : tree3098 = literal3098)
    (child1 : tree3099 = literal3099) : tree3100 = literal3100 := by
  rw [tree3100_def, child0, child1]
  rfl
theorem node3100_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3098 live3098 coloured3098 = result3098)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3099 live3099 coloured3099 = result3099) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3100 live3100 coloured3100 = result3100 := by
  rw [tree3100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3098 coloured3098 at child
  try dsimp only [live3100, coloured3100]
  rw [child]
  dsimp only [result3098]
  have child := child1
  unfold live3099 coloured3099 at child
  try dsimp only [live3100, coloured3100]
  rw [child]
  dsimp only [result3099]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3101_agree_conditional : tree3101 = literal3101 := by
  rw [tree3101_def]
  rfl
theorem node3101_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3101 live3101 coloured3101 = result3101 := by
  rw [tree3101_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3102_agree_conditional
    (child0 : tree3100 = literal3100)
    (child1 : tree3101 = literal3101) : tree3102 = literal3102 := by
  rw [tree3102_def, child0, child1]
  rfl
theorem node3102_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3100 live3100 coloured3100 = result3100)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3101 live3101 coloured3101 = result3101) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3102 live3102 coloured3102 = result3102 := by
  rw [tree3102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3100 coloured3100 at child
  try dsimp only [live3102, coloured3102]
  rw [child]
  dsimp only [result3100]
  have child := child1
  unfold live3101 coloured3101 at child
  try dsimp only [live3102, coloured3102]
  rw [child]
  dsimp only [result3101]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3103_agree_conditional : tree3103 = literal3103 := by
  rw [tree3103_def]
  rfl
theorem node3103_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3103 live3103 coloured3103 = result3103 := by
  rw [tree3103_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3104_agree_conditional
    (child0 : tree3102 = literal3102)
    (child1 : tree3103 = literal3103) : tree3104 = literal3104 := by
  rw [tree3104_def, child0, child1]
  rfl
theorem node3104_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3102 live3102 coloured3102 = result3102)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3103 live3103 coloured3103 = result3103) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3104 live3104 coloured3104 = result3104 := by
  rw [tree3104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3102 coloured3102 at child
  try dsimp only [live3104, coloured3104]
  rw [child]
  dsimp only [result3102]
  have child := child1
  unfold live3103 coloured3103 at child
  try dsimp only [live3104, coloured3104]
  rw [child]
  dsimp only [result3103]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3105_agree_conditional : tree3105 = literal3105 := by
  rw [tree3105_def]
  rfl
theorem node3105_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3105 live3105 coloured3105 = result3105 := by
  rw [tree3105_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3106_agree_conditional
    (child0 : tree3104 = literal3104)
    (child1 : tree3105 = literal3105) : tree3106 = literal3106 := by
  rw [tree3106_def, child0, child1]
  rfl
theorem node3106_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3104 live3104 coloured3104 = result3104)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3105 live3105 coloured3105 = result3105) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3106 live3106 coloured3106 = result3106 := by
  rw [tree3106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3104 coloured3104 at child
  try dsimp only [live3106, coloured3106]
  rw [child]
  dsimp only [result3104]
  have child := child1
  unfold live3105 coloured3105 at child
  try dsimp only [live3106, coloured3106]
  rw [child]
  dsimp only [result3105]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3107_agree_conditional : tree3107 = literal3107 := by
  rw [tree3107_def]
  rfl
theorem node3107_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3107 live3107 coloured3107 = result3107 := by
  rw [tree3107_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3108_agree_conditional
    (child0 : tree3106 = literal3106)
    (child1 : tree3107 = literal3107) : tree3108 = literal3108 := by
  rw [tree3108_def, child0, child1]
  rfl
theorem node3108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3106 live3106 coloured3106 = result3106)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3107 live3107 coloured3107 = result3107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3108 live3108 coloured3108 = result3108 := by
  rw [tree3108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3106 coloured3106 at child
  try dsimp only [live3108, coloured3108]
  rw [child]
  dsimp only [result3106]
  have child := child1
  unfold live3107 coloured3107 at child
  try dsimp only [live3108, coloured3108]
  rw [child]
  dsimp only [result3107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3109_agree_conditional : tree3109 = literal3109 := by
  rw [tree3109_def]
  rfl
theorem node3109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3109 live3109 coloured3109 = result3109 := by
  rw [tree3109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3110_agree_conditional
    (child0 : tree3108 = literal3108)
    (child1 : tree3109 = literal3109) : tree3110 = literal3110 := by
  rw [tree3110_def, child0, child1]
  rfl
theorem node3110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3108 live3108 coloured3108 = result3108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3109 live3109 coloured3109 = result3109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3110 live3110 coloured3110 = result3110 := by
  rw [tree3110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3108 coloured3108 at child
  try dsimp only [live3110, coloured3110]
  rw [child]
  dsimp only [result3108]
  have child := child1
  unfold live3109 coloured3109 at child
  try dsimp only [live3110, coloured3110]
  rw [child]
  dsimp only [result3109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3111_agree_conditional : tree3111 = literal3111 := by
  rw [tree3111_def]
  rfl
theorem node3111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3111 live3111 coloured3111 = result3111 := by
  rw [tree3111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3112_agree_conditional
    (child0 : tree3110 = literal3110)
    (child1 : tree3111 = literal3111) : tree3112 = literal3112 := by
  rw [tree3112_def, child0, child1]
  rfl
theorem node3112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3110 live3110 coloured3110 = result3110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3111 live3111 coloured3111 = result3111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3112 live3112 coloured3112 = result3112 := by
  rw [tree3112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3110 coloured3110 at child
  try dsimp only [live3112, coloured3112]
  rw [child]
  dsimp only [result3110]
  have child := child1
  unfold live3111 coloured3111 at child
  try dsimp only [live3112, coloured3112]
  rw [child]
  dsimp only [result3111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3113_agree_conditional : tree3113 = literal3113 := by
  rw [tree3113_def]
  rfl
theorem node3113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3113 live3113 coloured3113 = result3113 := by
  rw [tree3113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3114_agree_conditional
    (child0 : tree3112 = literal3112)
    (child1 : tree3113 = literal3113) : tree3114 = literal3114 := by
  rw [tree3114_def, child0, child1]
  rfl
theorem node3114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3112 live3112 coloured3112 = result3112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3113 live3113 coloured3113 = result3113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3114 live3114 coloured3114 = result3114 := by
  rw [tree3114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3112 coloured3112 at child
  try dsimp only [live3114, coloured3114]
  rw [child]
  dsimp only [result3112]
  have child := child1
  unfold live3113 coloured3113 at child
  try dsimp only [live3114, coloured3114]
  rw [child]
  dsimp only [result3113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3115_agree_conditional : tree3115 = literal3115 := by
  rw [tree3115_def]
  rfl
theorem node3115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3115 live3115 coloured3115 = result3115 := by
  rw [tree3115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3116_agree_conditional
    (child0 : tree3114 = literal3114)
    (child1 : tree3115 = literal3115) : tree3116 = literal3116 := by
  rw [tree3116_def, child0, child1]
  rfl
theorem node3116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3114 live3114 coloured3114 = result3114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3115 live3115 coloured3115 = result3115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3116 live3116 coloured3116 = result3116 := by
  rw [tree3116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3114 coloured3114 at child
  try dsimp only [live3116, coloured3116]
  rw [child]
  dsimp only [result3114]
  have child := child1
  unfold live3115 coloured3115 at child
  try dsimp only [live3116, coloured3116]
  rw [child]
  dsimp only [result3115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3117_agree_conditional : tree3117 = literal3117 := by
  rw [tree3117_def]
  rfl
theorem node3117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3117 live3117 coloured3117 = result3117 := by
  rw [tree3117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3118_agree_conditional
    (child0 : tree3116 = literal3116)
    (child1 : tree3117 = literal3117) : tree3118 = literal3118 := by
  rw [tree3118_def, child0, child1]
  rfl
theorem node3118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3116 live3116 coloured3116 = result3116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3117 live3117 coloured3117 = result3117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3118 live3118 coloured3118 = result3118 := by
  rw [tree3118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3116 coloured3116 at child
  try dsimp only [live3118, coloured3118]
  rw [child]
  dsimp only [result3116]
  have child := child1
  unfold live3117 coloured3117 at child
  try dsimp only [live3118, coloured3118]
  rw [child]
  dsimp only [result3117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3119_agree_conditional : tree3119 = literal3119 := by
  rw [tree3119_def]
  rfl
theorem node3119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3119 live3119 coloured3119 = result3119 := by
  rw [tree3119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3120_agree_conditional
    (child0 : tree3118 = literal3118)
    (child1 : tree3119 = literal3119) : tree3120 = literal3120 := by
  rw [tree3120_def, child0, child1]
  rfl
theorem node3120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3118 live3118 coloured3118 = result3118)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3119 live3119 coloured3119 = result3119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3120 live3120 coloured3120 = result3120 := by
  rw [tree3120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3118 coloured3118 at child
  try dsimp only [live3120, coloured3120]
  rw [child]
  dsimp only [result3118]
  have child := child1
  unfold live3119 coloured3119 at child
  try dsimp only [live3120, coloured3120]
  rw [child]
  dsimp only [result3119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3121_agree_conditional : tree3121 = literal3121 := by
  rw [tree3121_def]
  rfl
theorem node3121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3121 live3121 coloured3121 = result3121 := by
  rw [tree3121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3122_agree_conditional
    (child0 : tree3120 = literal3120)
    (child1 : tree3121 = literal3121) : tree3122 = literal3122 := by
  rw [tree3122_def, child0, child1]
  rfl
theorem node3122_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3120 live3120 coloured3120 = result3120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3121 live3121 coloured3121 = result3121) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3122 live3122 coloured3122 = result3122 := by
  rw [tree3122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3120 coloured3120 at child
  try dsimp only [live3122, coloured3122]
  rw [child]
  dsimp only [result3120]
  have child := child1
  unfold live3121 coloured3121 at child
  try dsimp only [live3122, coloured3122]
  rw [child]
  dsimp only [result3121]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3123_agree_conditional : tree3123 = literal3123 := by
  rw [tree3123_def]
  rfl
theorem node3123_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3123 live3123 coloured3123 = result3123 := by
  rw [tree3123_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3124_agree_conditional
    (child0 : tree3122 = literal3122)
    (child1 : tree3123 = literal3123) : tree3124 = literal3124 := by
  rw [tree3124_def, child0, child1]
  rfl
theorem node3124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3122 live3122 coloured3122 = result3122)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3123 live3123 coloured3123 = result3123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3124 live3124 coloured3124 = result3124 := by
  rw [tree3124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3122 coloured3122 at child
  try dsimp only [live3124, coloured3124]
  rw [child]
  dsimp only [result3122]
  have child := child1
  unfold live3123 coloured3123 at child
  try dsimp only [live3124, coloured3124]
  rw [child]
  dsimp only [result3123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3125_agree_conditional : tree3125 = literal3125 := by
  rw [tree3125_def]
  rfl
theorem node3125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3125 live3125 coloured3125 = result3125 := by
  rw [tree3125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3126_agree_conditional
    (child0 : tree3124 = literal3124)
    (child1 : tree3125 = literal3125) : tree3126 = literal3126 := by
  rw [tree3126_def, child0, child1]
  rfl
theorem node3126_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3124 live3124 coloured3124 = result3124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3125 live3125 coloured3125 = result3125) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3126 live3126 coloured3126 = result3126 := by
  rw [tree3126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3124 coloured3124 at child
  try dsimp only [live3126, coloured3126]
  rw [child]
  dsimp only [result3124]
  have child := child1
  unfold live3125 coloured3125 at child
  try dsimp only [live3126, coloured3126]
  rw [child]
  dsimp only [result3125]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3127_agree_conditional : tree3127 = literal3127 := by
  rw [tree3127_def]
  rfl
theorem node3127_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3127 live3127 coloured3127 = result3127 := by
  rw [tree3127_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3128_agree_conditional
    (child0 : tree3126 = literal3126)
    (child1 : tree3127 = literal3127) : tree3128 = literal3128 := by
  rw [tree3128_def, child0, child1]
  rfl
theorem node3128_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3126 live3126 coloured3126 = result3126)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3127 live3127 coloured3127 = result3127) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3128 live3128 coloured3128 = result3128 := by
  rw [tree3128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3126 coloured3126 at child
  try dsimp only [live3128, coloured3128]
  rw [child]
  dsimp only [result3126]
  have child := child1
  unfold live3127 coloured3127 at child
  try dsimp only [live3128, coloured3128]
  rw [child]
  dsimp only [result3127]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3129_agree_conditional : tree3129 = literal3129 := by
  rw [tree3129_def]
  rfl
theorem node3129_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3129 live3129 coloured3129 = result3129 := by
  rw [tree3129_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3130_agree_conditional
    (child0 : tree3128 = literal3128)
    (child1 : tree3129 = literal3129) : tree3130 = literal3130 := by
  rw [tree3130_def, child0, child1]
  rfl
theorem node3130_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3128 live3128 coloured3128 = result3128)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3129 live3129 coloured3129 = result3129) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3130 live3130 coloured3130 = result3130 := by
  rw [tree3130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3128 coloured3128 at child
  try dsimp only [live3130, coloured3130]
  rw [child]
  dsimp only [result3128]
  have child := child1
  unfold live3129 coloured3129 at child
  try dsimp only [live3130, coloured3130]
  rw [child]
  dsimp only [result3129]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3131_agree_conditional : tree3131 = literal3131 := by
  rw [tree3131_def]
  rfl
theorem node3131_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3131 live3131 coloured3131 = result3131 := by
  rw [tree3131_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3132_agree_conditional
    (child0 : tree3130 = literal3130)
    (child1 : tree3131 = literal3131) : tree3132 = literal3132 := by
  rw [tree3132_def, child0, child1]
  rfl
theorem node3132_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3130 live3130 coloured3130 = result3130)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3131 live3131 coloured3131 = result3131) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3132 live3132 coloured3132 = result3132 := by
  rw [tree3132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3130 coloured3130 at child
  try dsimp only [live3132, coloured3132]
  rw [child]
  dsimp only [result3130]
  have child := child1
  unfold live3131 coloured3131 at child
  try dsimp only [live3132, coloured3132]
  rw [child]
  dsimp only [result3131]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3133_agree_conditional : tree3133 = literal3133 := by
  rw [tree3133_def]
  rfl
theorem node3133_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3133 live3133 coloured3133 = result3133 := by
  rw [tree3133_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3134_agree_conditional
    (child0 : tree3132 = literal3132)
    (child1 : tree3133 = literal3133) : tree3134 = literal3134 := by
  rw [tree3134_def, child0, child1]
  rfl
theorem node3134_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3132 live3132 coloured3132 = result3132)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3133 live3133 coloured3133 = result3133) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3134 live3134 coloured3134 = result3134 := by
  rw [tree3134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3132 coloured3132 at child
  try dsimp only [live3134, coloured3134]
  rw [child]
  dsimp only [result3132]
  have child := child1
  unfold live3133 coloured3133 at child
  try dsimp only [live3134, coloured3134]
  rw [child]
  dsimp only [result3133]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3135_agree_conditional : tree3135 = literal3135 := by
  rw [tree3135_def]
  rfl
theorem node3135_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3135 live3135 coloured3135 = result3135 := by
  rw [tree3135_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3136_agree_conditional
    (child0 : tree3134 = literal3134)
    (child1 : tree3135 = literal3135) : tree3136 = literal3136 := by
  rw [tree3136_def, child0, child1]
  rfl
theorem node3136_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3134 live3134 coloured3134 = result3134)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3135 live3135 coloured3135 = result3135) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3136 live3136 coloured3136 = result3136 := by
  rw [tree3136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3134 coloured3134 at child
  try dsimp only [live3136, coloured3136]
  rw [child]
  dsimp only [result3134]
  have child := child1
  unfold live3135 coloured3135 at child
  try dsimp only [live3136, coloured3136]
  rw [child]
  dsimp only [result3135]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3137_agree_conditional : tree3137 = literal3137 := by
  rw [tree3137_def]
  rfl
theorem node3137_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3137 live3137 coloured3137 = result3137 := by
  rw [tree3137_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3138_agree_conditional
    (child0 : tree3136 = literal3136)
    (child1 : tree3137 = literal3137) : tree3138 = literal3138 := by
  rw [tree3138_def, child0, child1]
  rfl
theorem node3138_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3136 live3136 coloured3136 = result3136)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3137 live3137 coloured3137 = result3137) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3138 live3138 coloured3138 = result3138 := by
  rw [tree3138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3136 coloured3136 at child
  try dsimp only [live3138, coloured3138]
  rw [child]
  dsimp only [result3136]
  have child := child1
  unfold live3137 coloured3137 at child
  try dsimp only [live3138, coloured3138]
  rw [child]
  dsimp only [result3137]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3139_agree_conditional : tree3139 = literal3139 := by
  rw [tree3139_def]
  rfl
theorem node3139_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3139 live3139 coloured3139 = result3139 := by
  rw [tree3139_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3140_agree_conditional
    (child0 : tree3138 = literal3138)
    (child1 : tree3139 = literal3139) : tree3140 = literal3140 := by
  rw [tree3140_def, child0, child1]
  rfl
theorem node3140_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3138 live3138 coloured3138 = result3138)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3139 live3139 coloured3139 = result3139) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3140 live3140 coloured3140 = result3140 := by
  rw [tree3140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3138 coloured3138 at child
  try dsimp only [live3140, coloured3140]
  rw [child]
  dsimp only [result3138]
  have child := child1
  unfold live3139 coloured3139 at child
  try dsimp only [live3140, coloured3140]
  rw [child]
  dsimp only [result3139]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3141_agree_conditional : tree3141 = literal3141 := by
  rw [tree3141_def]
  rfl
theorem node3141_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3141 live3141 coloured3141 = result3141 := by
  rw [tree3141_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3142_agree_conditional
    (child0 : tree3140 = literal3140)
    (child1 : tree3141 = literal3141) : tree3142 = literal3142 := by
  rw [tree3142_def, child0, child1]
  rfl
theorem node3142_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3140 live3140 coloured3140 = result3140)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3141 live3141 coloured3141 = result3141) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3142 live3142 coloured3142 = result3142 := by
  rw [tree3142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3140 coloured3140 at child
  try dsimp only [live3142, coloured3142]
  rw [child]
  dsimp only [result3140]
  have child := child1
  unfold live3141 coloured3141 at child
  try dsimp only [live3142, coloured3142]
  rw [child]
  dsimp only [result3141]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3143_agree_conditional : tree3143 = literal3143 := by
  rw [tree3143_def]
  rfl
theorem node3143_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3143 live3143 coloured3143 = result3143 := by
  rw [tree3143_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3144_agree_conditional
    (child0 : tree3142 = literal3142)
    (child1 : tree3143 = literal3143) : tree3144 = literal3144 := by
  rw [tree3144_def, child0, child1]
  rfl
theorem node3144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3142 live3142 coloured3142 = result3142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3143 live3143 coloured3143 = result3143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3144 live3144 coloured3144 = result3144 := by
  rw [tree3144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3142 coloured3142 at child
  try dsimp only [live3144, coloured3144]
  rw [child]
  dsimp only [result3142]
  have child := child1
  unfold live3143 coloured3143 at child
  try dsimp only [live3144, coloured3144]
  rw [child]
  dsimp only [result3143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3145_agree_conditional : tree3145 = literal3145 := by
  rw [tree3145_def]
  rfl
theorem node3145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3145 live3145 coloured3145 = result3145 := by
  rw [tree3145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3146_agree_conditional
    (child0 : tree3144 = literal3144)
    (child1 : tree3145 = literal3145) : tree3146 = literal3146 := by
  rw [tree3146_def, child0, child1]
  rfl
theorem node3146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3144 live3144 coloured3144 = result3144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3145 live3145 coloured3145 = result3145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3146 live3146 coloured3146 = result3146 := by
  rw [tree3146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3144 coloured3144 at child
  try dsimp only [live3146, coloured3146]
  rw [child]
  dsimp only [result3144]
  have child := child1
  unfold live3145 coloured3145 at child
  try dsimp only [live3146, coloured3146]
  rw [child]
  dsimp only [result3145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3147_agree_conditional : tree3147 = literal3147 := by
  rw [tree3147_def]
  rfl
theorem node3147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3147 live3147 coloured3147 = result3147 := by
  rw [tree3147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3148_agree_conditional
    (child0 : tree3146 = literal3146)
    (child1 : tree3147 = literal3147) : tree3148 = literal3148 := by
  rw [tree3148_def, child0, child1]
  rfl
theorem node3148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3146 live3146 coloured3146 = result3146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3147 live3147 coloured3147 = result3147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3148 live3148 coloured3148 = result3148 := by
  rw [tree3148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3146 coloured3146 at child
  try dsimp only [live3148, coloured3148]
  rw [child]
  dsimp only [result3146]
  have child := child1
  unfold live3147 coloured3147 at child
  try dsimp only [live3148, coloured3148]
  rw [child]
  dsimp only [result3147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3149_agree_conditional : tree3149 = literal3149 := by
  rw [tree3149_def]
  rfl
theorem node3149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3149 live3149 coloured3149 = result3149 := by
  rw [tree3149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3150_agree_conditional
    (child0 : tree3148 = literal3148)
    (child1 : tree3149 = literal3149) : tree3150 = literal3150 := by
  rw [tree3150_def, child0, child1]
  rfl
theorem node3150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3148 live3148 coloured3148 = result3148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3149 live3149 coloured3149 = result3149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3150 live3150 coloured3150 = result3150 := by
  rw [tree3150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3148 coloured3148 at child
  try dsimp only [live3150, coloured3150]
  rw [child]
  dsimp only [result3148]
  have child := child1
  unfold live3149 coloured3149 at child
  try dsimp only [live3150, coloured3150]
  rw [child]
  dsimp only [result3149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3151_agree_conditional : tree3151 = literal3151 := by
  rw [tree3151_def]
  rfl
theorem node3151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3151 live3151 coloured3151 = result3151 := by
  rw [tree3151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3152_agree_conditional
    (child0 : tree3150 = literal3150)
    (child1 : tree3151 = literal3151) : tree3152 = literal3152 := by
  rw [tree3152_def, child0, child1]
  rfl
theorem node3152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3150 live3150 coloured3150 = result3150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3151 live3151 coloured3151 = result3151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3152 live3152 coloured3152 = result3152 := by
  rw [tree3152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3150 coloured3150 at child
  try dsimp only [live3152, coloured3152]
  rw [child]
  dsimp only [result3150]
  have child := child1
  unfold live3151 coloured3151 at child
  try dsimp only [live3152, coloured3152]
  rw [child]
  dsimp only [result3151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3153_agree_conditional : tree3153 = literal3153 := by
  rw [tree3153_def]
  rfl
theorem node3153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3153 live3153 coloured3153 = result3153 := by
  rw [tree3153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3154_agree_conditional
    (child0 : tree3152 = literal3152)
    (child1 : tree3153 = literal3153) : tree3154 = literal3154 := by
  rw [tree3154_def, child0, child1]
  rfl
theorem node3154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3152 live3152 coloured3152 = result3152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3153 live3153 coloured3153 = result3153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3154 live3154 coloured3154 = result3154 := by
  rw [tree3154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3152 coloured3152 at child
  try dsimp only [live3154, coloured3154]
  rw [child]
  dsimp only [result3152]
  have child := child1
  unfold live3153 coloured3153 at child
  try dsimp only [live3154, coloured3154]
  rw [child]
  dsimp only [result3153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3155_agree_conditional : tree3155 = literal3155 := by
  rw [tree3155_def]
  rfl
theorem node3155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3155 live3155 coloured3155 = result3155 := by
  rw [tree3155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3156_agree_conditional
    (child0 : tree3154 = literal3154)
    (child1 : tree3155 = literal3155) : tree3156 = literal3156 := by
  rw [tree3156_def, child0, child1]
  rfl
theorem node3156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3154 live3154 coloured3154 = result3154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3155 live3155 coloured3155 = result3155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3156 live3156 coloured3156 = result3156 := by
  rw [tree3156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3154 coloured3154 at child
  try dsimp only [live3156, coloured3156]
  rw [child]
  dsimp only [result3154]
  have child := child1
  unfold live3155 coloured3155 at child
  try dsimp only [live3156, coloured3156]
  rw [child]
  dsimp only [result3155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3157_agree_conditional : tree3157 = literal3157 := by
  rw [tree3157_def]
  rfl
theorem node3157_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3157 live3157 coloured3157 = result3157 := by
  rw [tree3157_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3158_agree_conditional
    (child0 : tree3156 = literal3156)
    (child1 : tree3157 = literal3157) : tree3158 = literal3158 := by
  rw [tree3158_def, child0, child1]
  rfl
theorem node3158_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3156 live3156 coloured3156 = result3156)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3157 live3157 coloured3157 = result3157) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3158 live3158 coloured3158 = result3158 := by
  rw [tree3158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3156 coloured3156 at child
  try dsimp only [live3158, coloured3158]
  rw [child]
  dsimp only [result3156]
  have child := child1
  unfold live3157 coloured3157 at child
  try dsimp only [live3158, coloured3158]
  rw [child]
  dsimp only [result3157]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3159_agree_conditional : tree3159 = literal3159 := by
  rw [tree3159_def]
  rfl
theorem node3159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3159 live3159 coloured3159 = result3159 := by
  rw [tree3159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3160_agree_conditional
    (child0 : tree3158 = literal3158)
    (child1 : tree3159 = literal3159) : tree3160 = literal3160 := by
  rw [tree3160_def, child0, child1]
  rfl
theorem node3160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3158 live3158 coloured3158 = result3158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3159 live3159 coloured3159 = result3159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3160 live3160 coloured3160 = result3160 := by
  rw [tree3160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3158 coloured3158 at child
  try dsimp only [live3160, coloured3160]
  rw [child]
  dsimp only [result3158]
  have child := child1
  unfold live3159 coloured3159 at child
  try dsimp only [live3160, coloured3160]
  rw [child]
  dsimp only [result3159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3161_agree_conditional : tree3161 = literal3161 := by
  rw [tree3161_def]
  rfl
theorem node3161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3161 live3161 coloured3161 = result3161 := by
  rw [tree3161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3162_agree_conditional
    (child0 : tree3160 = literal3160)
    (child1 : tree3161 = literal3161) : tree3162 = literal3162 := by
  rw [tree3162_def, child0, child1]
  rfl
theorem node3162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3160 live3160 coloured3160 = result3160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3161 live3161 coloured3161 = result3161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3162 live3162 coloured3162 = result3162 := by
  rw [tree3162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3160 coloured3160 at child
  try dsimp only [live3162, coloured3162]
  rw [child]
  dsimp only [result3160]
  have child := child1
  unfold live3161 coloured3161 at child
  try dsimp only [live3162, coloured3162]
  rw [child]
  dsimp only [result3161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3163_agree_conditional : tree3163 = literal3163 := by
  rw [tree3163_def]
  rfl
theorem node3163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3163 live3163 coloured3163 = result3163 := by
  rw [tree3163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3164_agree_conditional
    (child0 : tree3162 = literal3162)
    (child1 : tree3163 = literal3163) : tree3164 = literal3164 := by
  rw [tree3164_def, child0, child1]
  rfl
theorem node3164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3162 live3162 coloured3162 = result3162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3163 live3163 coloured3163 = result3163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3164 live3164 coloured3164 = result3164 := by
  rw [tree3164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3162 coloured3162 at child
  try dsimp only [live3164, coloured3164]
  rw [child]
  dsimp only [result3162]
  have child := child1
  unfold live3163 coloured3163 at child
  try dsimp only [live3164, coloured3164]
  rw [child]
  dsimp only [result3163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3165_agree_conditional : tree3165 = literal3165 := by
  rw [tree3165_def]
  rfl
theorem node3165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3165 live3165 coloured3165 = result3165 := by
  rw [tree3165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3166_agree_conditional
    (child0 : tree3164 = literal3164)
    (child1 : tree3165 = literal3165) : tree3166 = literal3166 := by
  rw [tree3166_def, child0, child1]
  rfl
theorem node3166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3164 live3164 coloured3164 = result3164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3165 live3165 coloured3165 = result3165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3166 live3166 coloured3166 = result3166 := by
  rw [tree3166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3164 coloured3164 at child
  try dsimp only [live3166, coloured3166]
  rw [child]
  dsimp only [result3164]
  have child := child1
  unfold live3165 coloured3165 at child
  try dsimp only [live3166, coloured3166]
  rw [child]
  dsimp only [result3165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3167_agree_conditional : tree3167 = literal3167 := by
  rw [tree3167_def]
  rfl
theorem node3167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3167 live3167 coloured3167 = result3167 := by
  rw [tree3167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
