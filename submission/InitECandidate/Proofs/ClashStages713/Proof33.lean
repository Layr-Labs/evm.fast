import InitECandidate.Proofs.ClashStages713.Proof32
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3168_agree : tree3168 = literal3168 := by
  rw [tree3168_def, tree3166_agree, tree3167_agree]
  rfl
theorem node3168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3168 live3168 coloured3168 = result3168 := by
  rw [tree3168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3166_eq
  unfold live3166 coloured3166 at child
  try dsimp only [live3168, coloured3168]
  rw [child]
  dsimp only [result3166]
  have child := node3167_eq
  unfold live3167 coloured3167 at child
  try dsimp only [live3168, coloured3168]
  rw [child]
  dsimp only [result3167]
  try dsimp only [colour, result3168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3169_agree : tree3169 = literal3169 := by
  rw [tree3169_def]
  rfl
theorem node3169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3169 live3169 coloured3169 = result3169 := by
  rw [tree3169_def]
  try dsimp only [colour, result3169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3170_agree : tree3170 = literal3170 := by
  rw [tree3170_def, tree3168_agree, tree3169_agree]
  rfl
theorem node3170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3170 live3170 coloured3170 = result3170 := by
  rw [tree3170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3168_eq
  unfold live3168 coloured3168 at child
  try dsimp only [live3170, coloured3170]
  rw [child]
  dsimp only [result3168]
  have child := node3169_eq
  unfold live3169 coloured3169 at child
  try dsimp only [live3170, coloured3170]
  rw [child]
  dsimp only [result3169]
  try dsimp only [colour, result3170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3171_agree : tree3171 = literal3171 := by
  rw [tree3171_def]
  rfl
theorem node3171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3171 live3171 coloured3171 = result3171 := by
  rw [tree3171_def]
  try dsimp only [colour, result3171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3172_agree : tree3172 = literal3172 := by
  rw [tree3172_def, tree3170_agree, tree3171_agree]
  rfl
theorem node3172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3172 live3172 coloured3172 = result3172 := by
  rw [tree3172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3170_eq
  unfold live3170 coloured3170 at child
  try dsimp only [live3172, coloured3172]
  rw [child]
  dsimp only [result3170]
  have child := node3171_eq
  unfold live3171 coloured3171 at child
  try dsimp only [live3172, coloured3172]
  rw [child]
  dsimp only [result3171]
  try dsimp only [colour, result3172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3173_agree : tree3173 = literal3173 := by
  rw [tree3173_def]
  rfl
theorem node3173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3173 live3173 coloured3173 = result3173 := by
  rw [tree3173_def]
  try dsimp only [colour, result3173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3174_agree : tree3174 = literal3174 := by
  rw [tree3174_def, tree3172_agree, tree3173_agree]
  rfl
theorem node3174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3174 live3174 coloured3174 = result3174 := by
  rw [tree3174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3172_eq
  unfold live3172 coloured3172 at child
  try dsimp only [live3174, coloured3174]
  rw [child]
  dsimp only [result3172]
  have child := node3173_eq
  unfold live3173 coloured3173 at child
  try dsimp only [live3174, coloured3174]
  rw [child]
  dsimp only [result3173]
  try dsimp only [colour, result3174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3175_agree : tree3175 = literal3175 := by
  rw [tree3175_def]
  rfl
theorem node3175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3175 live3175 coloured3175 = result3175 := by
  rw [tree3175_def]
  try dsimp only [colour, result3175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3176_agree : tree3176 = literal3176 := by
  rw [tree3176_def, tree3174_agree, tree3175_agree]
  rfl
theorem node3176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3176 live3176 coloured3176 = result3176 := by
  rw [tree3176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3174_eq
  unfold live3174 coloured3174 at child
  try dsimp only [live3176, coloured3176]
  rw [child]
  dsimp only [result3174]
  have child := node3175_eq
  unfold live3175 coloured3175 at child
  try dsimp only [live3176, coloured3176]
  rw [child]
  dsimp only [result3175]
  try dsimp only [colour, result3176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3177_agree : tree3177 = literal3177 := by
  rw [tree3177_def]
  rfl
theorem node3177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3177 live3177 coloured3177 = result3177 := by
  rw [tree3177_def]
  try dsimp only [colour, result3177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3178_agree : tree3178 = literal3178 := by
  rw [tree3178_def, tree3176_agree, tree3177_agree]
  rfl
theorem node3178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3178 live3178 coloured3178 = result3178 := by
  rw [tree3178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3176_eq
  unfold live3176 coloured3176 at child
  try dsimp only [live3178, coloured3178]
  rw [child]
  dsimp only [result3176]
  have child := node3177_eq
  unfold live3177 coloured3177 at child
  try dsimp only [live3178, coloured3178]
  rw [child]
  dsimp only [result3177]
  try dsimp only [colour, result3178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3179_agree : tree3179 = literal3179 := by
  rw [tree3179_def]
  rfl
theorem node3179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3179 live3179 coloured3179 = result3179 := by
  rw [tree3179_def]
  try dsimp only [colour, result3179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3180_agree : tree3180 = literal3180 := by
  rw [tree3180_def, tree3178_agree, tree3179_agree]
  rfl
theorem node3180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3180 live3180 coloured3180 = result3180 := by
  rw [tree3180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3178_eq
  unfold live3178 coloured3178 at child
  try dsimp only [live3180, coloured3180]
  rw [child]
  dsimp only [result3178]
  have child := node3179_eq
  unfold live3179 coloured3179 at child
  try dsimp only [live3180, coloured3180]
  rw [child]
  dsimp only [result3179]
  try dsimp only [colour, result3180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3181_agree : tree3181 = literal3181 := by
  rw [tree3181_def]
  rfl
theorem node3181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3181 live3181 coloured3181 = result3181 := by
  rw [tree3181_def]
  try dsimp only [colour, result3181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3182_agree : tree3182 = literal3182 := by
  rw [tree3182_def, tree3180_agree, tree3181_agree]
  rfl
theorem node3182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3182 live3182 coloured3182 = result3182 := by
  rw [tree3182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3180_eq
  unfold live3180 coloured3180 at child
  try dsimp only [live3182, coloured3182]
  rw [child]
  dsimp only [result3180]
  have child := node3181_eq
  unfold live3181 coloured3181 at child
  try dsimp only [live3182, coloured3182]
  rw [child]
  dsimp only [result3181]
  try dsimp only [colour, result3182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3183_agree : tree3183 = literal3183 := by
  rw [tree3183_def]
  rfl
theorem node3183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3183 live3183 coloured3183 = result3183 := by
  rw [tree3183_def]
  try dsimp only [colour, result3183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3184_agree : tree3184 = literal3184 := by
  rw [tree3184_def, tree3182_agree, tree3183_agree]
  rfl
theorem node3184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3184 live3184 coloured3184 = result3184 := by
  rw [tree3184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3182_eq
  unfold live3182 coloured3182 at child
  try dsimp only [live3184, coloured3184]
  rw [child]
  dsimp only [result3182]
  have child := node3183_eq
  unfold live3183 coloured3183 at child
  try dsimp only [live3184, coloured3184]
  rw [child]
  dsimp only [result3183]
  try dsimp only [colour, result3184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3185_agree : tree3185 = literal3185 := by
  rw [tree3185_def]
  rfl
theorem node3185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3185 live3185 coloured3185 = result3185 := by
  rw [tree3185_def]
  try dsimp only [colour, result3185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3186_agree : tree3186 = literal3186 := by
  rw [tree3186_def, tree3184_agree, tree3185_agree]
  rfl
theorem node3186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3186 live3186 coloured3186 = result3186 := by
  rw [tree3186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3184_eq
  unfold live3184 coloured3184 at child
  try dsimp only [live3186, coloured3186]
  rw [child]
  dsimp only [result3184]
  have child := node3185_eq
  unfold live3185 coloured3185 at child
  try dsimp only [live3186, coloured3186]
  rw [child]
  dsimp only [result3185]
  try dsimp only [colour, result3186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3187_agree : tree3187 = literal3187 := by
  rw [tree3187_def]
  rfl
theorem node3187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3187 live3187 coloured3187 = result3187 := by
  rw [tree3187_def]
  try dsimp only [colour, result3187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3188_agree : tree3188 = literal3188 := by
  rw [tree3188_def, tree3186_agree, tree3187_agree]
  rfl
theorem node3188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3188 live3188 coloured3188 = result3188 := by
  rw [tree3188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3186_eq
  unfold live3186 coloured3186 at child
  try dsimp only [live3188, coloured3188]
  rw [child]
  dsimp only [result3186]
  have child := node3187_eq
  unfold live3187 coloured3187 at child
  try dsimp only [live3188, coloured3188]
  rw [child]
  dsimp only [result3187]
  try dsimp only [colour, result3188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3189_agree : tree3189 = literal3189 := by
  rw [tree3189_def]
  rfl
theorem node3189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3189 live3189 coloured3189 = result3189 := by
  rw [tree3189_def]
  try dsimp only [colour, result3189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3190_agree : tree3190 = literal3190 := by
  rw [tree3190_def, tree3188_agree, tree3189_agree]
  rfl
theorem node3190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3190 live3190 coloured3190 = result3190 := by
  rw [tree3190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3188_eq
  unfold live3188 coloured3188 at child
  try dsimp only [live3190, coloured3190]
  rw [child]
  dsimp only [result3188]
  have child := node3189_eq
  unfold live3189 coloured3189 at child
  try dsimp only [live3190, coloured3190]
  rw [child]
  dsimp only [result3189]
  try dsimp only [colour, result3190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3191_agree : tree3191 = literal3191 := by
  rw [tree3191_def]
  rfl
theorem node3191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3191 live3191 coloured3191 = result3191 := by
  rw [tree3191_def]
  try dsimp only [colour, result3191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3192_agree : tree3192 = literal3192 := by
  rw [tree3192_def, tree3190_agree, tree3191_agree]
  rfl
theorem node3192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3192 live3192 coloured3192 = result3192 := by
  rw [tree3192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3190_eq
  unfold live3190 coloured3190 at child
  try dsimp only [live3192, coloured3192]
  rw [child]
  dsimp only [result3190]
  have child := node3191_eq
  unfold live3191 coloured3191 at child
  try dsimp only [live3192, coloured3192]
  rw [child]
  dsimp only [result3191]
  try dsimp only [colour, result3192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3193_agree : tree3193 = literal3193 := by
  rw [tree3193_def]
  rfl
theorem node3193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3193 live3193 coloured3193 = result3193 := by
  rw [tree3193_def]
  try dsimp only [colour, result3193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3194_agree : tree3194 = literal3194 := by
  rw [tree3194_def, tree3192_agree, tree3193_agree]
  rfl
theorem node3194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3194 live3194 coloured3194 = result3194 := by
  rw [tree3194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3192_eq
  unfold live3192 coloured3192 at child
  try dsimp only [live3194, coloured3194]
  rw [child]
  dsimp only [result3192]
  have child := node3193_eq
  unfold live3193 coloured3193 at child
  try dsimp only [live3194, coloured3194]
  rw [child]
  dsimp only [result3193]
  try dsimp only [colour, result3194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3195_agree : tree3195 = literal3195 := by
  rw [tree3195_def]
  rfl
theorem node3195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3195 live3195 coloured3195 = result3195 := by
  rw [tree3195_def]
  try dsimp only [colour, result3195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3196_agree : tree3196 = literal3196 := by
  rw [tree3196_def, tree3194_agree, tree3195_agree]
  rfl
theorem node3196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3196 live3196 coloured3196 = result3196 := by
  rw [tree3196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3194_eq
  unfold live3194 coloured3194 at child
  try dsimp only [live3196, coloured3196]
  rw [child]
  dsimp only [result3194]
  have child := node3195_eq
  unfold live3195 coloured3195 at child
  try dsimp only [live3196, coloured3196]
  rw [child]
  dsimp only [result3195]
  try dsimp only [colour, result3196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3197_agree : tree3197 = literal3197 := by
  rw [tree3197_def]
  rfl
theorem node3197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3197 live3197 coloured3197 = result3197 := by
  rw [tree3197_def]
  try dsimp only [colour, result3197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3198_agree : tree3198 = literal3198 := by
  rw [tree3198_def, tree3196_agree, tree3197_agree]
  rfl
theorem node3198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3198 live3198 coloured3198 = result3198 := by
  rw [tree3198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3196_eq
  unfold live3196 coloured3196 at child
  try dsimp only [live3198, coloured3198]
  rw [child]
  dsimp only [result3196]
  have child := node3197_eq
  unfold live3197 coloured3197 at child
  try dsimp only [live3198, coloured3198]
  rw [child]
  dsimp only [result3197]
  try dsimp only [colour, result3198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3199_agree : tree3199 = literal3199 := by
  rw [tree3199_def]
  rfl
theorem node3199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3199 live3199 coloured3199 = result3199 := by
  rw [tree3199_def]
  try dsimp only [colour, result3199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3200_agree : tree3200 = literal3200 := by
  rw [tree3200_def, tree3198_agree, tree3199_agree]
  rfl
theorem node3200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3200 live3200 coloured3200 = result3200 := by
  rw [tree3200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3198_eq
  unfold live3198 coloured3198 at child
  try dsimp only [live3200, coloured3200]
  rw [child]
  dsimp only [result3198]
  have child := node3199_eq
  unfold live3199 coloured3199 at child
  try dsimp only [live3200, coloured3200]
  rw [child]
  dsimp only [result3199]
  try dsimp only [colour, result3200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3201_agree : tree3201 = literal3201 := by
  rw [tree3201_def]
  rfl
theorem node3201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3201 live3201 coloured3201 = result3201 := by
  rw [tree3201_def]
  try dsimp only [colour, result3201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3202_agree : tree3202 = literal3202 := by
  rw [tree3202_def, tree3200_agree, tree3201_agree]
  rfl
theorem node3202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3202 live3202 coloured3202 = result3202 := by
  rw [tree3202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3200_eq
  unfold live3200 coloured3200 at child
  try dsimp only [live3202, coloured3202]
  rw [child]
  dsimp only [result3200]
  have child := node3201_eq
  unfold live3201 coloured3201 at child
  try dsimp only [live3202, coloured3202]
  rw [child]
  dsimp only [result3201]
  try dsimp only [colour, result3202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3203_agree : tree3203 = literal3203 := by
  rw [tree3203_def]
  rfl
theorem node3203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3203 live3203 coloured3203 = result3203 := by
  rw [tree3203_def]
  try dsimp only [colour, result3203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3204_agree : tree3204 = literal3204 := by
  rw [tree3204_def, tree3202_agree, tree3203_agree]
  rfl
theorem node3204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3204 live3204 coloured3204 = result3204 := by
  rw [tree3204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3202_eq
  unfold live3202 coloured3202 at child
  try dsimp only [live3204, coloured3204]
  rw [child]
  dsimp only [result3202]
  have child := node3203_eq
  unfold live3203 coloured3203 at child
  try dsimp only [live3204, coloured3204]
  rw [child]
  dsimp only [result3203]
  try dsimp only [colour, result3204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3205_agree : tree3205 = literal3205 := by
  rw [tree3205_def]
  rfl
theorem node3205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3205 live3205 coloured3205 = result3205 := by
  rw [tree3205_def]
  try dsimp only [colour, result3205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3206_agree : tree3206 = literal3206 := by
  rw [tree3206_def, tree3204_agree, tree3205_agree]
  rfl
theorem node3206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3206 live3206 coloured3206 = result3206 := by
  rw [tree3206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3204_eq
  unfold live3204 coloured3204 at child
  try dsimp only [live3206, coloured3206]
  rw [child]
  dsimp only [result3204]
  have child := node3205_eq
  unfold live3205 coloured3205 at child
  try dsimp only [live3206, coloured3206]
  rw [child]
  dsimp only [result3205]
  try dsimp only [colour, result3206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3207_agree : tree3207 = literal3207 := by
  rw [tree3207_def]
  rfl
theorem node3207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3207 live3207 coloured3207 = result3207 := by
  rw [tree3207_def]
  try dsimp only [colour, result3207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3208_agree : tree3208 = literal3208 := by
  rw [tree3208_def, tree3206_agree, tree3207_agree]
  rfl
theorem node3208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3208 live3208 coloured3208 = result3208 := by
  rw [tree3208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3206_eq
  unfold live3206 coloured3206 at child
  try dsimp only [live3208, coloured3208]
  rw [child]
  dsimp only [result3206]
  have child := node3207_eq
  unfold live3207 coloured3207 at child
  try dsimp only [live3208, coloured3208]
  rw [child]
  dsimp only [result3207]
  try dsimp only [colour, result3208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3209_agree : tree3209 = literal3209 := by
  rw [tree3209_def]
  rfl
theorem node3209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3209 live3209 coloured3209 = result3209 := by
  rw [tree3209_def]
  try dsimp only [colour, result3209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3210_agree : tree3210 = literal3210 := by
  rw [tree3210_def, tree3208_agree, tree3209_agree]
  rfl
theorem node3210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3210 live3210 coloured3210 = result3210 := by
  rw [tree3210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3208_eq
  unfold live3208 coloured3208 at child
  try dsimp only [live3210, coloured3210]
  rw [child]
  dsimp only [result3208]
  have child := node3209_eq
  unfold live3209 coloured3209 at child
  try dsimp only [live3210, coloured3210]
  rw [child]
  dsimp only [result3209]
  try dsimp only [colour, result3210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3211_agree : tree3211 = literal3211 := by
  rw [tree3211_def]
  rfl
theorem node3211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3211 live3211 coloured3211 = result3211 := by
  rw [tree3211_def]
  try dsimp only [colour, result3211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3212_agree : tree3212 = literal3212 := by
  rw [tree3212_def, tree3210_agree, tree3211_agree]
  rfl
theorem node3212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3212 live3212 coloured3212 = result3212 := by
  rw [tree3212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3210_eq
  unfold live3210 coloured3210 at child
  try dsimp only [live3212, coloured3212]
  rw [child]
  dsimp only [result3210]
  have child := node3211_eq
  unfold live3211 coloured3211 at child
  try dsimp only [live3212, coloured3212]
  rw [child]
  dsimp only [result3211]
  try dsimp only [colour, result3212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3213_agree : tree3213 = literal3213 := by
  rw [tree3213_def]
  rfl
theorem node3213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3213 live3213 coloured3213 = result3213 := by
  rw [tree3213_def]
  try dsimp only [colour, result3213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3214_agree : tree3214 = literal3214 := by
  rw [tree3214_def, tree3212_agree, tree3213_agree]
  rfl
theorem node3214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3214 live3214 coloured3214 = result3214 := by
  rw [tree3214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3212_eq
  unfold live3212 coloured3212 at child
  try dsimp only [live3214, coloured3214]
  rw [child]
  dsimp only [result3212]
  have child := node3213_eq
  unfold live3213 coloured3213 at child
  try dsimp only [live3214, coloured3214]
  rw [child]
  dsimp only [result3213]
  try dsimp only [colour, result3214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3215_agree : tree3215 = literal3215 := by
  rw [tree3215_def]
  rfl
theorem node3215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3215 live3215 coloured3215 = result3215 := by
  rw [tree3215_def]
  try dsimp only [colour, result3215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3216_agree : tree3216 = literal3216 := by
  rw [tree3216_def, tree3214_agree, tree3215_agree]
  rfl
theorem node3216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3216 live3216 coloured3216 = result3216 := by
  rw [tree3216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3214_eq
  unfold live3214 coloured3214 at child
  try dsimp only [live3216, coloured3216]
  rw [child]
  dsimp only [result3214]
  have child := node3215_eq
  unfold live3215 coloured3215 at child
  try dsimp only [live3216, coloured3216]
  rw [child]
  dsimp only [result3215]
  try dsimp only [colour, result3216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3217_agree : tree3217 = literal3217 := by
  rw [tree3217_def]
  rfl
theorem node3217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3217 live3217 coloured3217 = result3217 := by
  rw [tree3217_def]
  try dsimp only [colour, result3217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3218_agree : tree3218 = literal3218 := by
  rw [tree3218_def, tree3216_agree, tree3217_agree]
  rfl
theorem node3218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3218 live3218 coloured3218 = result3218 := by
  rw [tree3218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3216_eq
  unfold live3216 coloured3216 at child
  try dsimp only [live3218, coloured3218]
  rw [child]
  dsimp only [result3216]
  have child := node3217_eq
  unfold live3217 coloured3217 at child
  try dsimp only [live3218, coloured3218]
  rw [child]
  dsimp only [result3217]
  try dsimp only [colour, result3218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3219_agree : tree3219 = literal3219 := by
  rw [tree3219_def]
  rfl
theorem node3219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3219 live3219 coloured3219 = result3219 := by
  rw [tree3219_def]
  try dsimp only [colour, result3219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3220_agree : tree3220 = literal3220 := by
  rw [tree3220_def, tree3218_agree, tree3219_agree]
  rfl
theorem node3220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3220 live3220 coloured3220 = result3220 := by
  rw [tree3220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3218_eq
  unfold live3218 coloured3218 at child
  try dsimp only [live3220, coloured3220]
  rw [child]
  dsimp only [result3218]
  have child := node3219_eq
  unfold live3219 coloured3219 at child
  try dsimp only [live3220, coloured3220]
  rw [child]
  dsimp only [result3219]
  try dsimp only [colour, result3220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3221_agree : tree3221 = literal3221 := by
  rw [tree3221_def]
  rfl
theorem node3221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3221 live3221 coloured3221 = result3221 := by
  rw [tree3221_def]
  try dsimp only [colour, result3221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3222_agree : tree3222 = literal3222 := by
  rw [tree3222_def, tree3220_agree, tree3221_agree]
  rfl
theorem node3222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3222 live3222 coloured3222 = result3222 := by
  rw [tree3222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3220_eq
  unfold live3220 coloured3220 at child
  try dsimp only [live3222, coloured3222]
  rw [child]
  dsimp only [result3220]
  have child := node3221_eq
  unfold live3221 coloured3221 at child
  try dsimp only [live3222, coloured3222]
  rw [child]
  dsimp only [result3221]
  try dsimp only [colour, result3222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3223_agree : tree3223 = literal3223 := by
  rw [tree3223_def]
  rfl
theorem node3223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3223 live3223 coloured3223 = result3223 := by
  rw [tree3223_def]
  try dsimp only [colour, result3223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3224_agree : tree3224 = literal3224 := by
  rw [tree3224_def, tree3222_agree, tree3223_agree]
  rfl
theorem node3224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3224 live3224 coloured3224 = result3224 := by
  rw [tree3224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3222_eq
  unfold live3222 coloured3222 at child
  try dsimp only [live3224, coloured3224]
  rw [child]
  dsimp only [result3222]
  have child := node3223_eq
  unfold live3223 coloured3223 at child
  try dsimp only [live3224, coloured3224]
  rw [child]
  dsimp only [result3223]
  try dsimp only [colour, result3224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3225_agree : tree3225 = literal3225 := by
  rw [tree3225_def]
  rfl
theorem node3225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3225 live3225 coloured3225 = result3225 := by
  rw [tree3225_def]
  try dsimp only [colour, result3225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3226_agree : tree3226 = literal3226 := by
  rw [tree3226_def, tree3224_agree, tree3225_agree]
  rfl
theorem node3226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3226 live3226 coloured3226 = result3226 := by
  rw [tree3226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3224_eq
  unfold live3224 coloured3224 at child
  try dsimp only [live3226, coloured3226]
  rw [child]
  dsimp only [result3224]
  have child := node3225_eq
  unfold live3225 coloured3225 at child
  try dsimp only [live3226, coloured3226]
  rw [child]
  dsimp only [result3225]
  try dsimp only [colour, result3226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3227_agree : tree3227 = literal3227 := by
  rw [tree3227_def]
  rfl
theorem node3227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3227 live3227 coloured3227 = result3227 := by
  rw [tree3227_def]
  try dsimp only [colour, result3227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3228_agree : tree3228 = literal3228 := by
  rw [tree3228_def, tree3226_agree, tree3227_agree]
  rfl
theorem node3228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3228 live3228 coloured3228 = result3228 := by
  rw [tree3228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3226_eq
  unfold live3226 coloured3226 at child
  try dsimp only [live3228, coloured3228]
  rw [child]
  dsimp only [result3226]
  have child := node3227_eq
  unfold live3227 coloured3227 at child
  try dsimp only [live3228, coloured3228]
  rw [child]
  dsimp only [result3227]
  try dsimp only [colour, result3228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3229_agree : tree3229 = literal3229 := by
  rw [tree3229_def]
  rfl
theorem node3229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3229 live3229 coloured3229 = result3229 := by
  rw [tree3229_def]
  try dsimp only [colour, result3229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3230_agree : tree3230 = literal3230 := by
  rw [tree3230_def, tree3228_agree, tree3229_agree]
  rfl
theorem node3230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3230 live3230 coloured3230 = result3230 := by
  rw [tree3230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3228_eq
  unfold live3228 coloured3228 at child
  try dsimp only [live3230, coloured3230]
  rw [child]
  dsimp only [result3228]
  have child := node3229_eq
  unfold live3229 coloured3229 at child
  try dsimp only [live3230, coloured3230]
  rw [child]
  dsimp only [result3229]
  try dsimp only [colour, result3230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3231_agree : tree3231 = literal3231 := by
  rw [tree3231_def]
  rfl
theorem node3231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3231 live3231 coloured3231 = result3231 := by
  rw [tree3231_def]
  try dsimp only [colour, result3231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3232_agree : tree3232 = literal3232 := by
  rw [tree3232_def, tree3230_agree, tree3231_agree]
  rfl
theorem node3232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3232 live3232 coloured3232 = result3232 := by
  rw [tree3232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3230_eq
  unfold live3230 coloured3230 at child
  try dsimp only [live3232, coloured3232]
  rw [child]
  dsimp only [result3230]
  have child := node3231_eq
  unfold live3231 coloured3231 at child
  try dsimp only [live3232, coloured3232]
  rw [child]
  dsimp only [result3231]
  try dsimp only [colour, result3232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3233_agree : tree3233 = literal3233 := by
  rw [tree3233_def]
  rfl
theorem node3233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3233 live3233 coloured3233 = result3233 := by
  rw [tree3233_def]
  try dsimp only [colour, result3233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3234_agree : tree3234 = literal3234 := by
  rw [tree3234_def, tree3232_agree, tree3233_agree]
  rfl
theorem node3234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3234 live3234 coloured3234 = result3234 := by
  rw [tree3234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3232_eq
  unfold live3232 coloured3232 at child
  try dsimp only [live3234, coloured3234]
  rw [child]
  dsimp only [result3232]
  have child := node3233_eq
  unfold live3233 coloured3233 at child
  try dsimp only [live3234, coloured3234]
  rw [child]
  dsimp only [result3233]
  try dsimp only [colour, result3234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3235_agree : tree3235 = literal3235 := by
  rw [tree3235_def]
  rfl
theorem node3235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3235 live3235 coloured3235 = result3235 := by
  rw [tree3235_def]
  try dsimp only [colour, result3235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3236_agree : tree3236 = literal3236 := by
  rw [tree3236_def, tree3234_agree, tree3235_agree]
  rfl
theorem node3236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3236 live3236 coloured3236 = result3236 := by
  rw [tree3236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3234_eq
  unfold live3234 coloured3234 at child
  try dsimp only [live3236, coloured3236]
  rw [child]
  dsimp only [result3234]
  have child := node3235_eq
  unfold live3235 coloured3235 at child
  try dsimp only [live3236, coloured3236]
  rw [child]
  dsimp only [result3235]
  try dsimp only [colour, result3236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3237_agree : tree3237 = literal3237 := by
  rw [tree3237_def]
  rfl
theorem node3237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3237 live3237 coloured3237 = result3237 := by
  rw [tree3237_def]
  try dsimp only [colour, result3237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3238_agree : tree3238 = literal3238 := by
  rw [tree3238_def, tree3236_agree, tree3237_agree]
  rfl
theorem node3238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3238 live3238 coloured3238 = result3238 := by
  rw [tree3238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3236_eq
  unfold live3236 coloured3236 at child
  try dsimp only [live3238, coloured3238]
  rw [child]
  dsimp only [result3236]
  have child := node3237_eq
  unfold live3237 coloured3237 at child
  try dsimp only [live3238, coloured3238]
  rw [child]
  dsimp only [result3237]
  try dsimp only [colour, result3238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3239_agree : tree3239 = literal3239 := by
  rw [tree3239_def]
  rfl
theorem node3239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3239 live3239 coloured3239 = result3239 := by
  rw [tree3239_def]
  try dsimp only [colour, result3239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3240_agree : tree3240 = literal3240 := by
  rw [tree3240_def, tree3238_agree, tree3239_agree]
  rfl
theorem node3240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3240 live3240 coloured3240 = result3240 := by
  rw [tree3240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3238_eq
  unfold live3238 coloured3238 at child
  try dsimp only [live3240, coloured3240]
  rw [child]
  dsimp only [result3238]
  have child := node3239_eq
  unfold live3239 coloured3239 at child
  try dsimp only [live3240, coloured3240]
  rw [child]
  dsimp only [result3239]
  try dsimp only [colour, result3240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3241_agree : tree3241 = literal3241 := by
  rw [tree3241_def]
  rfl
theorem node3241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3241 live3241 coloured3241 = result3241 := by
  rw [tree3241_def]
  try dsimp only [colour, result3241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3242_agree : tree3242 = literal3242 := by
  rw [tree3242_def, tree3240_agree, tree3241_agree]
  rfl
theorem node3242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3242 live3242 coloured3242 = result3242 := by
  rw [tree3242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3240_eq
  unfold live3240 coloured3240 at child
  try dsimp only [live3242, coloured3242]
  rw [child]
  dsimp only [result3240]
  have child := node3241_eq
  unfold live3241 coloured3241 at child
  try dsimp only [live3242, coloured3242]
  rw [child]
  dsimp only [result3241]
  try dsimp only [colour, result3242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3243_agree : tree3243 = literal3243 := by
  rw [tree3243_def]
  rfl
theorem node3243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3243 live3243 coloured3243 = result3243 := by
  rw [tree3243_def]
  try dsimp only [colour, result3243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3244_agree : tree3244 = literal3244 := by
  rw [tree3244_def, tree3242_agree, tree3243_agree]
  rfl
theorem node3244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3244 live3244 coloured3244 = result3244 := by
  rw [tree3244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3242_eq
  unfold live3242 coloured3242 at child
  try dsimp only [live3244, coloured3244]
  rw [child]
  dsimp only [result3242]
  have child := node3243_eq
  unfold live3243 coloured3243 at child
  try dsimp only [live3244, coloured3244]
  rw [child]
  dsimp only [result3243]
  try dsimp only [colour, result3244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3245_agree : tree3245 = literal3245 := by
  rw [tree3245_def]
  rfl
theorem node3245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3245 live3245 coloured3245 = result3245 := by
  rw [tree3245_def]
  try dsimp only [colour, result3245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3246_agree : tree3246 = literal3246 := by
  rw [tree3246_def, tree3244_agree, tree3245_agree]
  rfl
theorem node3246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3246 live3246 coloured3246 = result3246 := by
  rw [tree3246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3244_eq
  unfold live3244 coloured3244 at child
  try dsimp only [live3246, coloured3246]
  rw [child]
  dsimp only [result3244]
  have child := node3245_eq
  unfold live3245 coloured3245 at child
  try dsimp only [live3246, coloured3246]
  rw [child]
  dsimp only [result3245]
  try dsimp only [colour, result3246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3247_agree : tree3247 = literal3247 := by
  rw [tree3247_def]
  rfl
theorem node3247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3247 live3247 coloured3247 = result3247 := by
  rw [tree3247_def]
  try dsimp only [colour, result3247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3248_agree : tree3248 = literal3248 := by
  rw [tree3248_def, tree3246_agree, tree3247_agree]
  rfl
theorem node3248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3248 live3248 coloured3248 = result3248 := by
  rw [tree3248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3246_eq
  unfold live3246 coloured3246 at child
  try dsimp only [live3248, coloured3248]
  rw [child]
  dsimp only [result3246]
  have child := node3247_eq
  unfold live3247 coloured3247 at child
  try dsimp only [live3248, coloured3248]
  rw [child]
  dsimp only [result3247]
  try dsimp only [colour, result3248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3249_agree : tree3249 = literal3249 := by
  rw [tree3249_def]
  rfl
theorem node3249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3249 live3249 coloured3249 = result3249 := by
  rw [tree3249_def]
  try dsimp only [colour, result3249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3250_agree : tree3250 = literal3250 := by
  rw [tree3250_def, tree3248_agree, tree3249_agree]
  rfl
theorem node3250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3250 live3250 coloured3250 = result3250 := by
  rw [tree3250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3248_eq
  unfold live3248 coloured3248 at child
  try dsimp only [live3250, coloured3250]
  rw [child]
  dsimp only [result3248]
  have child := node3249_eq
  unfold live3249 coloured3249 at child
  try dsimp only [live3250, coloured3250]
  rw [child]
  dsimp only [result3249]
  try dsimp only [colour, result3250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3251_agree : tree3251 = literal3251 := by
  rw [tree3251_def]
  rfl
theorem node3251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3251 live3251 coloured3251 = result3251 := by
  rw [tree3251_def]
  try dsimp only [colour, result3251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3252_agree : tree3252 = literal3252 := by
  rw [tree3252_def, tree3250_agree, tree3251_agree]
  rfl
theorem node3252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3252 live3252 coloured3252 = result3252 := by
  rw [tree3252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3250_eq
  unfold live3250 coloured3250 at child
  try dsimp only [live3252, coloured3252]
  rw [child]
  dsimp only [result3250]
  have child := node3251_eq
  unfold live3251 coloured3251 at child
  try dsimp only [live3252, coloured3252]
  rw [child]
  dsimp only [result3251]
  try dsimp only [colour, result3252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3253_agree : tree3253 = literal3253 := by
  rw [tree3253_def]
  rfl
theorem node3253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3253 live3253 coloured3253 = result3253 := by
  rw [tree3253_def]
  try dsimp only [colour, result3253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3254_agree : tree3254 = literal3254 := by
  rw [tree3254_def, tree3252_agree, tree3253_agree]
  rfl
theorem node3254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3254 live3254 coloured3254 = result3254 := by
  rw [tree3254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3252_eq
  unfold live3252 coloured3252 at child
  try dsimp only [live3254, coloured3254]
  rw [child]
  dsimp only [result3252]
  have child := node3253_eq
  unfold live3253 coloured3253 at child
  try dsimp only [live3254, coloured3254]
  rw [child]
  dsimp only [result3253]
  try dsimp only [colour, result3254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3255_agree : tree3255 = literal3255 := by
  rw [tree3255_def]
  rfl
theorem node3255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3255 live3255 coloured3255 = result3255 := by
  rw [tree3255_def]
  try dsimp only [colour, result3255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3256_agree : tree3256 = literal3256 := by
  rw [tree3256_def, tree3254_agree, tree3255_agree]
  rfl
theorem node3256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3256 live3256 coloured3256 = result3256 := by
  rw [tree3256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3254_eq
  unfold live3254 coloured3254 at child
  try dsimp only [live3256, coloured3256]
  rw [child]
  dsimp only [result3254]
  have child := node3255_eq
  unfold live3255 coloured3255 at child
  try dsimp only [live3256, coloured3256]
  rw [child]
  dsimp only [result3255]
  try dsimp only [colour, result3256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3257_agree : tree3257 = literal3257 := by
  rw [tree3257_def]
  rfl
theorem node3257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3257 live3257 coloured3257 = result3257 := by
  rw [tree3257_def]
  try dsimp only [colour, result3257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3258_agree : tree3258 = literal3258 := by
  rw [tree3258_def, tree3256_agree, tree3257_agree]
  rfl
theorem node3258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3258 live3258 coloured3258 = result3258 := by
  rw [tree3258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3256_eq
  unfold live3256 coloured3256 at child
  try dsimp only [live3258, coloured3258]
  rw [child]
  dsimp only [result3256]
  have child := node3257_eq
  unfold live3257 coloured3257 at child
  try dsimp only [live3258, coloured3258]
  rw [child]
  dsimp only [result3257]
  try dsimp only [colour, result3258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3259_agree : tree3259 = literal3259 := by
  rw [tree3259_def]
  rfl
theorem node3259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3259 live3259 coloured3259 = result3259 := by
  rw [tree3259_def]
  try dsimp only [colour, result3259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3260_agree : tree3260 = literal3260 := by
  rw [tree3260_def, tree3258_agree, tree3259_agree]
  rfl
theorem node3260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3260 live3260 coloured3260 = result3260 := by
  rw [tree3260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3258_eq
  unfold live3258 coloured3258 at child
  try dsimp only [live3260, coloured3260]
  rw [child]
  dsimp only [result3258]
  have child := node3259_eq
  unfold live3259 coloured3259 at child
  try dsimp only [live3260, coloured3260]
  rw [child]
  dsimp only [result3259]
  try dsimp only [colour, result3260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3261_agree : tree3261 = literal3261 := by
  rw [tree3261_def]
  rfl
theorem node3261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3261 live3261 coloured3261 = result3261 := by
  rw [tree3261_def]
  try dsimp only [colour, result3261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3262_agree : tree3262 = literal3262 := by
  rw [tree3262_def, tree3260_agree, tree3261_agree]
  rfl
theorem node3262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3262 live3262 coloured3262 = result3262 := by
  rw [tree3262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3260_eq
  unfold live3260 coloured3260 at child
  try dsimp only [live3262, coloured3262]
  rw [child]
  dsimp only [result3260]
  have child := node3261_eq
  unfold live3261 coloured3261 at child
  try dsimp only [live3262, coloured3262]
  rw [child]
  dsimp only [result3261]
  try dsimp only [colour, result3262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3263_agree : tree3263 = literal3263 := by
  rw [tree3263_def]
  rfl
theorem node3263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3263 live3263 coloured3263 = result3263 := by
  rw [tree3263_def]
  try dsimp only [colour, result3263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
