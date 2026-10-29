import InitECandidate.Proofs.ClashStages713.Proof31
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3072_agree : tree3072 = literal3072 := by
  rw [tree3072_def, tree3070_agree, tree3071_agree]
  rfl
theorem node3072_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3072 live3072 coloured3072 = result3072 := by
  rw [tree3072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3070_eq
  unfold live3070 coloured3070 at child
  try dsimp only [live3072, coloured3072]
  rw [child]
  dsimp only [result3070]
  have child := node3071_eq
  unfold live3071 coloured3071 at child
  try dsimp only [live3072, coloured3072]
  rw [child]
  dsimp only [result3071]
  try dsimp only [colour, result3072]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3073_agree : tree3073 = literal3073 := by
  rw [tree3073_def]
  rfl
theorem node3073_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3073 live3073 coloured3073 = result3073 := by
  rw [tree3073_def]
  try dsimp only [colour, result3073]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3074_agree : tree3074 = literal3074 := by
  rw [tree3074_def, tree3072_agree, tree3073_agree]
  rfl
theorem node3074_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3074 live3074 coloured3074 = result3074 := by
  rw [tree3074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3072_eq
  unfold live3072 coloured3072 at child
  try dsimp only [live3074, coloured3074]
  rw [child]
  dsimp only [result3072]
  have child := node3073_eq
  unfold live3073 coloured3073 at child
  try dsimp only [live3074, coloured3074]
  rw [child]
  dsimp only [result3073]
  try dsimp only [colour, result3074]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3075_agree : tree3075 = literal3075 := by
  rw [tree3075_def]
  rfl
theorem node3075_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3075 live3075 coloured3075 = result3075 := by
  rw [tree3075_def]
  try dsimp only [colour, result3075]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3076_agree : tree3076 = literal3076 := by
  rw [tree3076_def, tree3074_agree, tree3075_agree]
  rfl
theorem node3076_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3076 live3076 coloured3076 = result3076 := by
  rw [tree3076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3074_eq
  unfold live3074 coloured3074 at child
  try dsimp only [live3076, coloured3076]
  rw [child]
  dsimp only [result3074]
  have child := node3075_eq
  unfold live3075 coloured3075 at child
  try dsimp only [live3076, coloured3076]
  rw [child]
  dsimp only [result3075]
  try dsimp only [colour, result3076]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3077_agree : tree3077 = literal3077 := by
  rw [tree3077_def]
  rfl
theorem node3077_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3077 live3077 coloured3077 = result3077 := by
  rw [tree3077_def]
  try dsimp only [colour, result3077]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3078_agree : tree3078 = literal3078 := by
  rw [tree3078_def, tree3076_agree, tree3077_agree]
  rfl
theorem node3078_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3078 live3078 coloured3078 = result3078 := by
  rw [tree3078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3076_eq
  unfold live3076 coloured3076 at child
  try dsimp only [live3078, coloured3078]
  rw [child]
  dsimp only [result3076]
  have child := node3077_eq
  unfold live3077 coloured3077 at child
  try dsimp only [live3078, coloured3078]
  rw [child]
  dsimp only [result3077]
  try dsimp only [colour, result3078]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3079_agree : tree3079 = literal3079 := by
  rw [tree3079_def]
  rfl
theorem node3079_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3079 live3079 coloured3079 = result3079 := by
  rw [tree3079_def]
  try dsimp only [colour, result3079]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3080_agree : tree3080 = literal3080 := by
  rw [tree3080_def, tree3078_agree, tree3079_agree]
  rfl
theorem node3080_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3080 live3080 coloured3080 = result3080 := by
  rw [tree3080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3078_eq
  unfold live3078 coloured3078 at child
  try dsimp only [live3080, coloured3080]
  rw [child]
  dsimp only [result3078]
  have child := node3079_eq
  unfold live3079 coloured3079 at child
  try dsimp only [live3080, coloured3080]
  rw [child]
  dsimp only [result3079]
  try dsimp only [colour, result3080]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3081_agree : tree3081 = literal3081 := by
  rw [tree3081_def]
  rfl
theorem node3081_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3081 live3081 coloured3081 = result3081 := by
  rw [tree3081_def]
  try dsimp only [colour, result3081]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3082_agree : tree3082 = literal3082 := by
  rw [tree3082_def, tree3080_agree, tree3081_agree]
  rfl
theorem node3082_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3082 live3082 coloured3082 = result3082 := by
  rw [tree3082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3080_eq
  unfold live3080 coloured3080 at child
  try dsimp only [live3082, coloured3082]
  rw [child]
  dsimp only [result3080]
  have child := node3081_eq
  unfold live3081 coloured3081 at child
  try dsimp only [live3082, coloured3082]
  rw [child]
  dsimp only [result3081]
  try dsimp only [colour, result3082]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3083_agree : tree3083 = literal3083 := by
  rw [tree3083_def]
  rfl
theorem node3083_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3083 live3083 coloured3083 = result3083 := by
  rw [tree3083_def]
  try dsimp only [colour, result3083]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3084_agree : tree3084 = literal3084 := by
  rw [tree3084_def, tree3082_agree, tree3083_agree]
  rfl
theorem node3084_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3084 live3084 coloured3084 = result3084 := by
  rw [tree3084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3082_eq
  unfold live3082 coloured3082 at child
  try dsimp only [live3084, coloured3084]
  rw [child]
  dsimp only [result3082]
  have child := node3083_eq
  unfold live3083 coloured3083 at child
  try dsimp only [live3084, coloured3084]
  rw [child]
  dsimp only [result3083]
  try dsimp only [colour, result3084]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3085_agree : tree3085 = literal3085 := by
  rw [tree3085_def]
  rfl
theorem node3085_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3085 live3085 coloured3085 = result3085 := by
  rw [tree3085_def]
  try dsimp only [colour, result3085]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3086_agree : tree3086 = literal3086 := by
  rw [tree3086_def, tree3084_agree, tree3085_agree]
  rfl
theorem node3086_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3086 live3086 coloured3086 = result3086 := by
  rw [tree3086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3084_eq
  unfold live3084 coloured3084 at child
  try dsimp only [live3086, coloured3086]
  rw [child]
  dsimp only [result3084]
  have child := node3085_eq
  unfold live3085 coloured3085 at child
  try dsimp only [live3086, coloured3086]
  rw [child]
  dsimp only [result3085]
  try dsimp only [colour, result3086]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3087_agree : tree3087 = literal3087 := by
  rw [tree3087_def]
  rfl
theorem node3087_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3087 live3087 coloured3087 = result3087 := by
  rw [tree3087_def]
  try dsimp only [colour, result3087]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3088_agree : tree3088 = literal3088 := by
  rw [tree3088_def, tree3086_agree, tree3087_agree]
  rfl
theorem node3088_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3088 live3088 coloured3088 = result3088 := by
  rw [tree3088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3086_eq
  unfold live3086 coloured3086 at child
  try dsimp only [live3088, coloured3088]
  rw [child]
  dsimp only [result3086]
  have child := node3087_eq
  unfold live3087 coloured3087 at child
  try dsimp only [live3088, coloured3088]
  rw [child]
  dsimp only [result3087]
  try dsimp only [colour, result3088]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3089_agree : tree3089 = literal3089 := by
  rw [tree3089_def]
  rfl
theorem node3089_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3089 live3089 coloured3089 = result3089 := by
  rw [tree3089_def]
  try dsimp only [colour, result3089]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3090_agree : tree3090 = literal3090 := by
  rw [tree3090_def, tree3088_agree, tree3089_agree]
  rfl
theorem node3090_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3090 live3090 coloured3090 = result3090 := by
  rw [tree3090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3088_eq
  unfold live3088 coloured3088 at child
  try dsimp only [live3090, coloured3090]
  rw [child]
  dsimp only [result3088]
  have child := node3089_eq
  unfold live3089 coloured3089 at child
  try dsimp only [live3090, coloured3090]
  rw [child]
  dsimp only [result3089]
  try dsimp only [colour, result3090]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3091_agree : tree3091 = literal3091 := by
  rw [tree3091_def]
  rfl
theorem node3091_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3091 live3091 coloured3091 = result3091 := by
  rw [tree3091_def]
  try dsimp only [colour, result3091]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3092_agree : tree3092 = literal3092 := by
  rw [tree3092_def, tree3090_agree, tree3091_agree]
  rfl
theorem node3092_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3092 live3092 coloured3092 = result3092 := by
  rw [tree3092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3090_eq
  unfold live3090 coloured3090 at child
  try dsimp only [live3092, coloured3092]
  rw [child]
  dsimp only [result3090]
  have child := node3091_eq
  unfold live3091 coloured3091 at child
  try dsimp only [live3092, coloured3092]
  rw [child]
  dsimp only [result3091]
  try dsimp only [colour, result3092]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3093_agree : tree3093 = literal3093 := by
  rw [tree3093_def]
  rfl
theorem node3093_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3093 live3093 coloured3093 = result3093 := by
  rw [tree3093_def]
  try dsimp only [colour, result3093]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3094_agree : tree3094 = literal3094 := by
  rw [tree3094_def, tree3092_agree, tree3093_agree]
  rfl
theorem node3094_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3094 live3094 coloured3094 = result3094 := by
  rw [tree3094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3092_eq
  unfold live3092 coloured3092 at child
  try dsimp only [live3094, coloured3094]
  rw [child]
  dsimp only [result3092]
  have child := node3093_eq
  unfold live3093 coloured3093 at child
  try dsimp only [live3094, coloured3094]
  rw [child]
  dsimp only [result3093]
  try dsimp only [colour, result3094]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3095_agree : tree3095 = literal3095 := by
  rw [tree3095_def]
  rfl
theorem node3095_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3095 live3095 coloured3095 = result3095 := by
  rw [tree3095_def]
  try dsimp only [colour, result3095]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3096_agree : tree3096 = literal3096 := by
  rw [tree3096_def, tree3094_agree, tree3095_agree]
  rfl
theorem node3096_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3096 live3096 coloured3096 = result3096 := by
  rw [tree3096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3094_eq
  unfold live3094 coloured3094 at child
  try dsimp only [live3096, coloured3096]
  rw [child]
  dsimp only [result3094]
  have child := node3095_eq
  unfold live3095 coloured3095 at child
  try dsimp only [live3096, coloured3096]
  rw [child]
  dsimp only [result3095]
  try dsimp only [colour, result3096]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3097_agree : tree3097 = literal3097 := by
  rw [tree3097_def]
  rfl
theorem node3097_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3097 live3097 coloured3097 = result3097 := by
  rw [tree3097_def]
  try dsimp only [colour, result3097]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3098_agree : tree3098 = literal3098 := by
  rw [tree3098_def, tree3096_agree, tree3097_agree]
  rfl
theorem node3098_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3098 live3098 coloured3098 = result3098 := by
  rw [tree3098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3096_eq
  unfold live3096 coloured3096 at child
  try dsimp only [live3098, coloured3098]
  rw [child]
  dsimp only [result3096]
  have child := node3097_eq
  unfold live3097 coloured3097 at child
  try dsimp only [live3098, coloured3098]
  rw [child]
  dsimp only [result3097]
  try dsimp only [colour, result3098]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3099_agree : tree3099 = literal3099 := by
  rw [tree3099_def]
  rfl
theorem node3099_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3099 live3099 coloured3099 = result3099 := by
  rw [tree3099_def]
  try dsimp only [colour, result3099]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3100_agree : tree3100 = literal3100 := by
  rw [tree3100_def, tree3098_agree, tree3099_agree]
  rfl
theorem node3100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3100 live3100 coloured3100 = result3100 := by
  rw [tree3100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3098_eq
  unfold live3098 coloured3098 at child
  try dsimp only [live3100, coloured3100]
  rw [child]
  dsimp only [result3098]
  have child := node3099_eq
  unfold live3099 coloured3099 at child
  try dsimp only [live3100, coloured3100]
  rw [child]
  dsimp only [result3099]
  try dsimp only [colour, result3100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3101_agree : tree3101 = literal3101 := by
  rw [tree3101_def]
  rfl
theorem node3101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3101 live3101 coloured3101 = result3101 := by
  rw [tree3101_def]
  try dsimp only [colour, result3101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3102_agree : tree3102 = literal3102 := by
  rw [tree3102_def, tree3100_agree, tree3101_agree]
  rfl
theorem node3102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3102 live3102 coloured3102 = result3102 := by
  rw [tree3102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3100_eq
  unfold live3100 coloured3100 at child
  try dsimp only [live3102, coloured3102]
  rw [child]
  dsimp only [result3100]
  have child := node3101_eq
  unfold live3101 coloured3101 at child
  try dsimp only [live3102, coloured3102]
  rw [child]
  dsimp only [result3101]
  try dsimp only [colour, result3102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3103_agree : tree3103 = literal3103 := by
  rw [tree3103_def]
  rfl
theorem node3103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3103 live3103 coloured3103 = result3103 := by
  rw [tree3103_def]
  try dsimp only [colour, result3103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3104_agree : tree3104 = literal3104 := by
  rw [tree3104_def, tree3102_agree, tree3103_agree]
  rfl
theorem node3104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3104 live3104 coloured3104 = result3104 := by
  rw [tree3104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3102_eq
  unfold live3102 coloured3102 at child
  try dsimp only [live3104, coloured3104]
  rw [child]
  dsimp only [result3102]
  have child := node3103_eq
  unfold live3103 coloured3103 at child
  try dsimp only [live3104, coloured3104]
  rw [child]
  dsimp only [result3103]
  try dsimp only [colour, result3104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3105_agree : tree3105 = literal3105 := by
  rw [tree3105_def]
  rfl
theorem node3105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3105 live3105 coloured3105 = result3105 := by
  rw [tree3105_def]
  try dsimp only [colour, result3105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3106_agree : tree3106 = literal3106 := by
  rw [tree3106_def, tree3104_agree, tree3105_agree]
  rfl
theorem node3106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3106 live3106 coloured3106 = result3106 := by
  rw [tree3106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3104_eq
  unfold live3104 coloured3104 at child
  try dsimp only [live3106, coloured3106]
  rw [child]
  dsimp only [result3104]
  have child := node3105_eq
  unfold live3105 coloured3105 at child
  try dsimp only [live3106, coloured3106]
  rw [child]
  dsimp only [result3105]
  try dsimp only [colour, result3106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3107_agree : tree3107 = literal3107 := by
  rw [tree3107_def]
  rfl
theorem node3107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3107 live3107 coloured3107 = result3107 := by
  rw [tree3107_def]
  try dsimp only [colour, result3107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3108_agree : tree3108 = literal3108 := by
  rw [tree3108_def, tree3106_agree, tree3107_agree]
  rfl
theorem node3108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3108 live3108 coloured3108 = result3108 := by
  rw [tree3108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3106_eq
  unfold live3106 coloured3106 at child
  try dsimp only [live3108, coloured3108]
  rw [child]
  dsimp only [result3106]
  have child := node3107_eq
  unfold live3107 coloured3107 at child
  try dsimp only [live3108, coloured3108]
  rw [child]
  dsimp only [result3107]
  try dsimp only [colour, result3108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3109_agree : tree3109 = literal3109 := by
  rw [tree3109_def]
  rfl
theorem node3109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3109 live3109 coloured3109 = result3109 := by
  rw [tree3109_def]
  try dsimp only [colour, result3109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3110_agree : tree3110 = literal3110 := by
  rw [tree3110_def, tree3108_agree, tree3109_agree]
  rfl
theorem node3110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3110 live3110 coloured3110 = result3110 := by
  rw [tree3110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3108_eq
  unfold live3108 coloured3108 at child
  try dsimp only [live3110, coloured3110]
  rw [child]
  dsimp only [result3108]
  have child := node3109_eq
  unfold live3109 coloured3109 at child
  try dsimp only [live3110, coloured3110]
  rw [child]
  dsimp only [result3109]
  try dsimp only [colour, result3110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3111_agree : tree3111 = literal3111 := by
  rw [tree3111_def]
  rfl
theorem node3111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3111 live3111 coloured3111 = result3111 := by
  rw [tree3111_def]
  try dsimp only [colour, result3111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3112_agree : tree3112 = literal3112 := by
  rw [tree3112_def, tree3110_agree, tree3111_agree]
  rfl
theorem node3112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3112 live3112 coloured3112 = result3112 := by
  rw [tree3112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3110_eq
  unfold live3110 coloured3110 at child
  try dsimp only [live3112, coloured3112]
  rw [child]
  dsimp only [result3110]
  have child := node3111_eq
  unfold live3111 coloured3111 at child
  try dsimp only [live3112, coloured3112]
  rw [child]
  dsimp only [result3111]
  try dsimp only [colour, result3112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3113_agree : tree3113 = literal3113 := by
  rw [tree3113_def]
  rfl
theorem node3113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3113 live3113 coloured3113 = result3113 := by
  rw [tree3113_def]
  try dsimp only [colour, result3113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3114_agree : tree3114 = literal3114 := by
  rw [tree3114_def, tree3112_agree, tree3113_agree]
  rfl
theorem node3114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3114 live3114 coloured3114 = result3114 := by
  rw [tree3114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3112_eq
  unfold live3112 coloured3112 at child
  try dsimp only [live3114, coloured3114]
  rw [child]
  dsimp only [result3112]
  have child := node3113_eq
  unfold live3113 coloured3113 at child
  try dsimp only [live3114, coloured3114]
  rw [child]
  dsimp only [result3113]
  try dsimp only [colour, result3114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3115_agree : tree3115 = literal3115 := by
  rw [tree3115_def]
  rfl
theorem node3115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3115 live3115 coloured3115 = result3115 := by
  rw [tree3115_def]
  try dsimp only [colour, result3115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3116_agree : tree3116 = literal3116 := by
  rw [tree3116_def, tree3114_agree, tree3115_agree]
  rfl
theorem node3116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3116 live3116 coloured3116 = result3116 := by
  rw [tree3116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3114_eq
  unfold live3114 coloured3114 at child
  try dsimp only [live3116, coloured3116]
  rw [child]
  dsimp only [result3114]
  have child := node3115_eq
  unfold live3115 coloured3115 at child
  try dsimp only [live3116, coloured3116]
  rw [child]
  dsimp only [result3115]
  try dsimp only [colour, result3116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3117_agree : tree3117 = literal3117 := by
  rw [tree3117_def]
  rfl
theorem node3117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3117 live3117 coloured3117 = result3117 := by
  rw [tree3117_def]
  try dsimp only [colour, result3117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3118_agree : tree3118 = literal3118 := by
  rw [tree3118_def, tree3116_agree, tree3117_agree]
  rfl
theorem node3118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3118 live3118 coloured3118 = result3118 := by
  rw [tree3118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3116_eq
  unfold live3116 coloured3116 at child
  try dsimp only [live3118, coloured3118]
  rw [child]
  dsimp only [result3116]
  have child := node3117_eq
  unfold live3117 coloured3117 at child
  try dsimp only [live3118, coloured3118]
  rw [child]
  dsimp only [result3117]
  try dsimp only [colour, result3118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3119_agree : tree3119 = literal3119 := by
  rw [tree3119_def]
  rfl
theorem node3119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3119 live3119 coloured3119 = result3119 := by
  rw [tree3119_def]
  try dsimp only [colour, result3119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3120_agree : tree3120 = literal3120 := by
  rw [tree3120_def, tree3118_agree, tree3119_agree]
  rfl
theorem node3120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3120 live3120 coloured3120 = result3120 := by
  rw [tree3120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3118_eq
  unfold live3118 coloured3118 at child
  try dsimp only [live3120, coloured3120]
  rw [child]
  dsimp only [result3118]
  have child := node3119_eq
  unfold live3119 coloured3119 at child
  try dsimp only [live3120, coloured3120]
  rw [child]
  dsimp only [result3119]
  try dsimp only [colour, result3120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3121_agree : tree3121 = literal3121 := by
  rw [tree3121_def]
  rfl
theorem node3121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3121 live3121 coloured3121 = result3121 := by
  rw [tree3121_def]
  try dsimp only [colour, result3121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3122_agree : tree3122 = literal3122 := by
  rw [tree3122_def, tree3120_agree, tree3121_agree]
  rfl
theorem node3122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3122 live3122 coloured3122 = result3122 := by
  rw [tree3122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3120_eq
  unfold live3120 coloured3120 at child
  try dsimp only [live3122, coloured3122]
  rw [child]
  dsimp only [result3120]
  have child := node3121_eq
  unfold live3121 coloured3121 at child
  try dsimp only [live3122, coloured3122]
  rw [child]
  dsimp only [result3121]
  try dsimp only [colour, result3122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3123_agree : tree3123 = literal3123 := by
  rw [tree3123_def]
  rfl
theorem node3123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3123 live3123 coloured3123 = result3123 := by
  rw [tree3123_def]
  try dsimp only [colour, result3123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3124_agree : tree3124 = literal3124 := by
  rw [tree3124_def, tree3122_agree, tree3123_agree]
  rfl
theorem node3124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3124 live3124 coloured3124 = result3124 := by
  rw [tree3124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3122_eq
  unfold live3122 coloured3122 at child
  try dsimp only [live3124, coloured3124]
  rw [child]
  dsimp only [result3122]
  have child := node3123_eq
  unfold live3123 coloured3123 at child
  try dsimp only [live3124, coloured3124]
  rw [child]
  dsimp only [result3123]
  try dsimp only [colour, result3124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3125_agree : tree3125 = literal3125 := by
  rw [tree3125_def]
  rfl
theorem node3125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3125 live3125 coloured3125 = result3125 := by
  rw [tree3125_def]
  try dsimp only [colour, result3125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3126_agree : tree3126 = literal3126 := by
  rw [tree3126_def, tree3124_agree, tree3125_agree]
  rfl
theorem node3126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3126 live3126 coloured3126 = result3126 := by
  rw [tree3126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3124_eq
  unfold live3124 coloured3124 at child
  try dsimp only [live3126, coloured3126]
  rw [child]
  dsimp only [result3124]
  have child := node3125_eq
  unfold live3125 coloured3125 at child
  try dsimp only [live3126, coloured3126]
  rw [child]
  dsimp only [result3125]
  try dsimp only [colour, result3126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3127_agree : tree3127 = literal3127 := by
  rw [tree3127_def]
  rfl
theorem node3127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3127 live3127 coloured3127 = result3127 := by
  rw [tree3127_def]
  try dsimp only [colour, result3127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3128_agree : tree3128 = literal3128 := by
  rw [tree3128_def, tree3126_agree, tree3127_agree]
  rfl
theorem node3128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3128 live3128 coloured3128 = result3128 := by
  rw [tree3128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3126_eq
  unfold live3126 coloured3126 at child
  try dsimp only [live3128, coloured3128]
  rw [child]
  dsimp only [result3126]
  have child := node3127_eq
  unfold live3127 coloured3127 at child
  try dsimp only [live3128, coloured3128]
  rw [child]
  dsimp only [result3127]
  try dsimp only [colour, result3128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3129_agree : tree3129 = literal3129 := by
  rw [tree3129_def]
  rfl
theorem node3129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3129 live3129 coloured3129 = result3129 := by
  rw [tree3129_def]
  try dsimp only [colour, result3129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3130_agree : tree3130 = literal3130 := by
  rw [tree3130_def, tree3128_agree, tree3129_agree]
  rfl
theorem node3130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3130 live3130 coloured3130 = result3130 := by
  rw [tree3130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3128_eq
  unfold live3128 coloured3128 at child
  try dsimp only [live3130, coloured3130]
  rw [child]
  dsimp only [result3128]
  have child := node3129_eq
  unfold live3129 coloured3129 at child
  try dsimp only [live3130, coloured3130]
  rw [child]
  dsimp only [result3129]
  try dsimp only [colour, result3130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3131_agree : tree3131 = literal3131 := by
  rw [tree3131_def]
  rfl
theorem node3131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3131 live3131 coloured3131 = result3131 := by
  rw [tree3131_def]
  try dsimp only [colour, result3131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3132_agree : tree3132 = literal3132 := by
  rw [tree3132_def, tree3130_agree, tree3131_agree]
  rfl
theorem node3132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3132 live3132 coloured3132 = result3132 := by
  rw [tree3132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3130_eq
  unfold live3130 coloured3130 at child
  try dsimp only [live3132, coloured3132]
  rw [child]
  dsimp only [result3130]
  have child := node3131_eq
  unfold live3131 coloured3131 at child
  try dsimp only [live3132, coloured3132]
  rw [child]
  dsimp only [result3131]
  try dsimp only [colour, result3132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3133_agree : tree3133 = literal3133 := by
  rw [tree3133_def]
  rfl
theorem node3133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3133 live3133 coloured3133 = result3133 := by
  rw [tree3133_def]
  try dsimp only [colour, result3133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3134_agree : tree3134 = literal3134 := by
  rw [tree3134_def, tree3132_agree, tree3133_agree]
  rfl
theorem node3134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3134 live3134 coloured3134 = result3134 := by
  rw [tree3134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3132_eq
  unfold live3132 coloured3132 at child
  try dsimp only [live3134, coloured3134]
  rw [child]
  dsimp only [result3132]
  have child := node3133_eq
  unfold live3133 coloured3133 at child
  try dsimp only [live3134, coloured3134]
  rw [child]
  dsimp only [result3133]
  try dsimp only [colour, result3134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3135_agree : tree3135 = literal3135 := by
  rw [tree3135_def]
  rfl
theorem node3135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3135 live3135 coloured3135 = result3135 := by
  rw [tree3135_def]
  try dsimp only [colour, result3135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3136_agree : tree3136 = literal3136 := by
  rw [tree3136_def, tree3134_agree, tree3135_agree]
  rfl
theorem node3136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3136 live3136 coloured3136 = result3136 := by
  rw [tree3136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3134_eq
  unfold live3134 coloured3134 at child
  try dsimp only [live3136, coloured3136]
  rw [child]
  dsimp only [result3134]
  have child := node3135_eq
  unfold live3135 coloured3135 at child
  try dsimp only [live3136, coloured3136]
  rw [child]
  dsimp only [result3135]
  try dsimp only [colour, result3136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3137_agree : tree3137 = literal3137 := by
  rw [tree3137_def]
  rfl
theorem node3137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3137 live3137 coloured3137 = result3137 := by
  rw [tree3137_def]
  try dsimp only [colour, result3137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3138_agree : tree3138 = literal3138 := by
  rw [tree3138_def, tree3136_agree, tree3137_agree]
  rfl
theorem node3138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3138 live3138 coloured3138 = result3138 := by
  rw [tree3138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3136_eq
  unfold live3136 coloured3136 at child
  try dsimp only [live3138, coloured3138]
  rw [child]
  dsimp only [result3136]
  have child := node3137_eq
  unfold live3137 coloured3137 at child
  try dsimp only [live3138, coloured3138]
  rw [child]
  dsimp only [result3137]
  try dsimp only [colour, result3138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3139_agree : tree3139 = literal3139 := by
  rw [tree3139_def]
  rfl
theorem node3139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3139 live3139 coloured3139 = result3139 := by
  rw [tree3139_def]
  try dsimp only [colour, result3139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3140_agree : tree3140 = literal3140 := by
  rw [tree3140_def, tree3138_agree, tree3139_agree]
  rfl
theorem node3140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3140 live3140 coloured3140 = result3140 := by
  rw [tree3140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3138_eq
  unfold live3138 coloured3138 at child
  try dsimp only [live3140, coloured3140]
  rw [child]
  dsimp only [result3138]
  have child := node3139_eq
  unfold live3139 coloured3139 at child
  try dsimp only [live3140, coloured3140]
  rw [child]
  dsimp only [result3139]
  try dsimp only [colour, result3140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3141_agree : tree3141 = literal3141 := by
  rw [tree3141_def]
  rfl
theorem node3141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3141 live3141 coloured3141 = result3141 := by
  rw [tree3141_def]
  try dsimp only [colour, result3141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3142_agree : tree3142 = literal3142 := by
  rw [tree3142_def, tree3140_agree, tree3141_agree]
  rfl
theorem node3142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3142 live3142 coloured3142 = result3142 := by
  rw [tree3142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3140_eq
  unfold live3140 coloured3140 at child
  try dsimp only [live3142, coloured3142]
  rw [child]
  dsimp only [result3140]
  have child := node3141_eq
  unfold live3141 coloured3141 at child
  try dsimp only [live3142, coloured3142]
  rw [child]
  dsimp only [result3141]
  try dsimp only [colour, result3142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3143_agree : tree3143 = literal3143 := by
  rw [tree3143_def]
  rfl
theorem node3143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3143 live3143 coloured3143 = result3143 := by
  rw [tree3143_def]
  try dsimp only [colour, result3143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3144_agree : tree3144 = literal3144 := by
  rw [tree3144_def, tree3142_agree, tree3143_agree]
  rfl
theorem node3144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3144 live3144 coloured3144 = result3144 := by
  rw [tree3144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3142_eq
  unfold live3142 coloured3142 at child
  try dsimp only [live3144, coloured3144]
  rw [child]
  dsimp only [result3142]
  have child := node3143_eq
  unfold live3143 coloured3143 at child
  try dsimp only [live3144, coloured3144]
  rw [child]
  dsimp only [result3143]
  try dsimp only [colour, result3144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3145_agree : tree3145 = literal3145 := by
  rw [tree3145_def]
  rfl
theorem node3145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3145 live3145 coloured3145 = result3145 := by
  rw [tree3145_def]
  try dsimp only [colour, result3145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3146_agree : tree3146 = literal3146 := by
  rw [tree3146_def, tree3144_agree, tree3145_agree]
  rfl
theorem node3146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3146 live3146 coloured3146 = result3146 := by
  rw [tree3146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3144_eq
  unfold live3144 coloured3144 at child
  try dsimp only [live3146, coloured3146]
  rw [child]
  dsimp only [result3144]
  have child := node3145_eq
  unfold live3145 coloured3145 at child
  try dsimp only [live3146, coloured3146]
  rw [child]
  dsimp only [result3145]
  try dsimp only [colour, result3146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3147_agree : tree3147 = literal3147 := by
  rw [tree3147_def]
  rfl
theorem node3147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3147 live3147 coloured3147 = result3147 := by
  rw [tree3147_def]
  try dsimp only [colour, result3147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3148_agree : tree3148 = literal3148 := by
  rw [tree3148_def, tree3146_agree, tree3147_agree]
  rfl
theorem node3148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3148 live3148 coloured3148 = result3148 := by
  rw [tree3148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3146_eq
  unfold live3146 coloured3146 at child
  try dsimp only [live3148, coloured3148]
  rw [child]
  dsimp only [result3146]
  have child := node3147_eq
  unfold live3147 coloured3147 at child
  try dsimp only [live3148, coloured3148]
  rw [child]
  dsimp only [result3147]
  try dsimp only [colour, result3148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3149_agree : tree3149 = literal3149 := by
  rw [tree3149_def]
  rfl
theorem node3149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3149 live3149 coloured3149 = result3149 := by
  rw [tree3149_def]
  try dsimp only [colour, result3149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3150_agree : tree3150 = literal3150 := by
  rw [tree3150_def, tree3148_agree, tree3149_agree]
  rfl
theorem node3150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3150 live3150 coloured3150 = result3150 := by
  rw [tree3150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3148_eq
  unfold live3148 coloured3148 at child
  try dsimp only [live3150, coloured3150]
  rw [child]
  dsimp only [result3148]
  have child := node3149_eq
  unfold live3149 coloured3149 at child
  try dsimp only [live3150, coloured3150]
  rw [child]
  dsimp only [result3149]
  try dsimp only [colour, result3150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3151_agree : tree3151 = literal3151 := by
  rw [tree3151_def]
  rfl
theorem node3151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3151 live3151 coloured3151 = result3151 := by
  rw [tree3151_def]
  try dsimp only [colour, result3151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3152_agree : tree3152 = literal3152 := by
  rw [tree3152_def, tree3150_agree, tree3151_agree]
  rfl
theorem node3152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3152 live3152 coloured3152 = result3152 := by
  rw [tree3152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3150_eq
  unfold live3150 coloured3150 at child
  try dsimp only [live3152, coloured3152]
  rw [child]
  dsimp only [result3150]
  have child := node3151_eq
  unfold live3151 coloured3151 at child
  try dsimp only [live3152, coloured3152]
  rw [child]
  dsimp only [result3151]
  try dsimp only [colour, result3152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3153_agree : tree3153 = literal3153 := by
  rw [tree3153_def]
  rfl
theorem node3153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3153 live3153 coloured3153 = result3153 := by
  rw [tree3153_def]
  try dsimp only [colour, result3153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3154_agree : tree3154 = literal3154 := by
  rw [tree3154_def, tree3152_agree, tree3153_agree]
  rfl
theorem node3154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3154 live3154 coloured3154 = result3154 := by
  rw [tree3154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3152_eq
  unfold live3152 coloured3152 at child
  try dsimp only [live3154, coloured3154]
  rw [child]
  dsimp only [result3152]
  have child := node3153_eq
  unfold live3153 coloured3153 at child
  try dsimp only [live3154, coloured3154]
  rw [child]
  dsimp only [result3153]
  try dsimp only [colour, result3154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3155_agree : tree3155 = literal3155 := by
  rw [tree3155_def]
  rfl
theorem node3155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3155 live3155 coloured3155 = result3155 := by
  rw [tree3155_def]
  try dsimp only [colour, result3155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3156_agree : tree3156 = literal3156 := by
  rw [tree3156_def, tree3154_agree, tree3155_agree]
  rfl
theorem node3156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3156 live3156 coloured3156 = result3156 := by
  rw [tree3156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3154_eq
  unfold live3154 coloured3154 at child
  try dsimp only [live3156, coloured3156]
  rw [child]
  dsimp only [result3154]
  have child := node3155_eq
  unfold live3155 coloured3155 at child
  try dsimp only [live3156, coloured3156]
  rw [child]
  dsimp only [result3155]
  try dsimp only [colour, result3156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3157_agree : tree3157 = literal3157 := by
  rw [tree3157_def]
  rfl
theorem node3157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3157 live3157 coloured3157 = result3157 := by
  rw [tree3157_def]
  try dsimp only [colour, result3157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3158_agree : tree3158 = literal3158 := by
  rw [tree3158_def, tree3156_agree, tree3157_agree]
  rfl
theorem node3158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3158 live3158 coloured3158 = result3158 := by
  rw [tree3158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3156_eq
  unfold live3156 coloured3156 at child
  try dsimp only [live3158, coloured3158]
  rw [child]
  dsimp only [result3156]
  have child := node3157_eq
  unfold live3157 coloured3157 at child
  try dsimp only [live3158, coloured3158]
  rw [child]
  dsimp only [result3157]
  try dsimp only [colour, result3158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3159_agree : tree3159 = literal3159 := by
  rw [tree3159_def]
  rfl
theorem node3159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3159 live3159 coloured3159 = result3159 := by
  rw [tree3159_def]
  try dsimp only [colour, result3159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3160_agree : tree3160 = literal3160 := by
  rw [tree3160_def, tree3158_agree, tree3159_agree]
  rfl
theorem node3160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3160 live3160 coloured3160 = result3160 := by
  rw [tree3160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3158_eq
  unfold live3158 coloured3158 at child
  try dsimp only [live3160, coloured3160]
  rw [child]
  dsimp only [result3158]
  have child := node3159_eq
  unfold live3159 coloured3159 at child
  try dsimp only [live3160, coloured3160]
  rw [child]
  dsimp only [result3159]
  try dsimp only [colour, result3160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3161_agree : tree3161 = literal3161 := by
  rw [tree3161_def]
  rfl
theorem node3161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3161 live3161 coloured3161 = result3161 := by
  rw [tree3161_def]
  try dsimp only [colour, result3161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3162_agree : tree3162 = literal3162 := by
  rw [tree3162_def, tree3160_agree, tree3161_agree]
  rfl
theorem node3162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3162 live3162 coloured3162 = result3162 := by
  rw [tree3162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3160_eq
  unfold live3160 coloured3160 at child
  try dsimp only [live3162, coloured3162]
  rw [child]
  dsimp only [result3160]
  have child := node3161_eq
  unfold live3161 coloured3161 at child
  try dsimp only [live3162, coloured3162]
  rw [child]
  dsimp only [result3161]
  try dsimp only [colour, result3162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3163_agree : tree3163 = literal3163 := by
  rw [tree3163_def]
  rfl
theorem node3163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3163 live3163 coloured3163 = result3163 := by
  rw [tree3163_def]
  try dsimp only [colour, result3163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3164_agree : tree3164 = literal3164 := by
  rw [tree3164_def, tree3162_agree, tree3163_agree]
  rfl
theorem node3164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3164 live3164 coloured3164 = result3164 := by
  rw [tree3164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3162_eq
  unfold live3162 coloured3162 at child
  try dsimp only [live3164, coloured3164]
  rw [child]
  dsimp only [result3162]
  have child := node3163_eq
  unfold live3163 coloured3163 at child
  try dsimp only [live3164, coloured3164]
  rw [child]
  dsimp only [result3163]
  try dsimp only [colour, result3164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3165_agree : tree3165 = literal3165 := by
  rw [tree3165_def]
  rfl
theorem node3165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3165 live3165 coloured3165 = result3165 := by
  rw [tree3165_def]
  try dsimp only [colour, result3165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3166_agree : tree3166 = literal3166 := by
  rw [tree3166_def, tree3164_agree, tree3165_agree]
  rfl
theorem node3166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3166 live3166 coloured3166 = result3166 := by
  rw [tree3166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3164_eq
  unfold live3164 coloured3164 at child
  try dsimp only [live3166, coloured3166]
  rw [child]
  dsimp only [result3164]
  have child := node3165_eq
  unfold live3165 coloured3165 at child
  try dsimp only [live3166, coloured3166]
  rw [child]
  dsimp only [result3165]
  try dsimp only [colour, result3166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3167_agree : tree3167 = literal3167 := by
  rw [tree3167_def]
  rfl
theorem node3167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3167 live3167 coloured3167 = result3167 := by
  rw [tree3167_def]
  try dsimp only [colour, result3167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
