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
theorem tree3168_agree_conditional
    (child0 : tree3166 = literal3166)
    (child1 : tree3167 = literal3167) : tree3168 = literal3168 := by
  rw [tree3168_def, child0, child1]
  rfl
theorem node3168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3166 live3166 coloured3166 = result3166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3167 live3167 coloured3167 = result3167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3168 live3168 coloured3168 = result3168 := by
  rw [tree3168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3166 coloured3166 at child
  try dsimp only [live3168, coloured3168]
  rw [child]
  dsimp only [result3166]
  have child := child1
  unfold live3167 coloured3167 at child
  try dsimp only [live3168, coloured3168]
  rw [child]
  dsimp only [result3167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3169_agree_conditional : tree3169 = literal3169 := by
  rw [tree3169_def]
  rfl
theorem node3169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3169 live3169 coloured3169 = result3169 := by
  rw [tree3169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3170_agree_conditional
    (child0 : tree3168 = literal3168)
    (child1 : tree3169 = literal3169) : tree3170 = literal3170 := by
  rw [tree3170_def, child0, child1]
  rfl
theorem node3170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3168 live3168 coloured3168 = result3168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3169 live3169 coloured3169 = result3169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3170 live3170 coloured3170 = result3170 := by
  rw [tree3170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3168 coloured3168 at child
  try dsimp only [live3170, coloured3170]
  rw [child]
  dsimp only [result3168]
  have child := child1
  unfold live3169 coloured3169 at child
  try dsimp only [live3170, coloured3170]
  rw [child]
  dsimp only [result3169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3171_agree_conditional : tree3171 = literal3171 := by
  rw [tree3171_def]
  rfl
theorem node3171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3171 live3171 coloured3171 = result3171 := by
  rw [tree3171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3172_agree_conditional
    (child0 : tree3170 = literal3170)
    (child1 : tree3171 = literal3171) : tree3172 = literal3172 := by
  rw [tree3172_def, child0, child1]
  rfl
theorem node3172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3170 live3170 coloured3170 = result3170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3171 live3171 coloured3171 = result3171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3172 live3172 coloured3172 = result3172 := by
  rw [tree3172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3170 coloured3170 at child
  try dsimp only [live3172, coloured3172]
  rw [child]
  dsimp only [result3170]
  have child := child1
  unfold live3171 coloured3171 at child
  try dsimp only [live3172, coloured3172]
  rw [child]
  dsimp only [result3171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3173_agree_conditional : tree3173 = literal3173 := by
  rw [tree3173_def]
  rfl
theorem node3173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3173 live3173 coloured3173 = result3173 := by
  rw [tree3173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3174_agree_conditional
    (child0 : tree3172 = literal3172)
    (child1 : tree3173 = literal3173) : tree3174 = literal3174 := by
  rw [tree3174_def, child0, child1]
  rfl
theorem node3174_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3172 live3172 coloured3172 = result3172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3173 live3173 coloured3173 = result3173) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3174 live3174 coloured3174 = result3174 := by
  rw [tree3174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3172 coloured3172 at child
  try dsimp only [live3174, coloured3174]
  rw [child]
  dsimp only [result3172]
  have child := child1
  unfold live3173 coloured3173 at child
  try dsimp only [live3174, coloured3174]
  rw [child]
  dsimp only [result3173]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3175_agree_conditional : tree3175 = literal3175 := by
  rw [tree3175_def]
  rfl
theorem node3175_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3175 live3175 coloured3175 = result3175 := by
  rw [tree3175_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3176_agree_conditional
    (child0 : tree3174 = literal3174)
    (child1 : tree3175 = literal3175) : tree3176 = literal3176 := by
  rw [tree3176_def, child0, child1]
  rfl
theorem node3176_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3174 live3174 coloured3174 = result3174)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3175 live3175 coloured3175 = result3175) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3176 live3176 coloured3176 = result3176 := by
  rw [tree3176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3174 coloured3174 at child
  try dsimp only [live3176, coloured3176]
  rw [child]
  dsimp only [result3174]
  have child := child1
  unfold live3175 coloured3175 at child
  try dsimp only [live3176, coloured3176]
  rw [child]
  dsimp only [result3175]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3177_agree_conditional : tree3177 = literal3177 := by
  rw [tree3177_def]
  rfl
theorem node3177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3177 live3177 coloured3177 = result3177 := by
  rw [tree3177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3178_agree_conditional
    (child0 : tree3176 = literal3176)
    (child1 : tree3177 = literal3177) : tree3178 = literal3178 := by
  rw [tree3178_def, child0, child1]
  rfl
theorem node3178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3176 live3176 coloured3176 = result3176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3177 live3177 coloured3177 = result3177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3178 live3178 coloured3178 = result3178 := by
  rw [tree3178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3176 coloured3176 at child
  try dsimp only [live3178, coloured3178]
  rw [child]
  dsimp only [result3176]
  have child := child1
  unfold live3177 coloured3177 at child
  try dsimp only [live3178, coloured3178]
  rw [child]
  dsimp only [result3177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3179_agree_conditional : tree3179 = literal3179 := by
  rw [tree3179_def]
  rfl
theorem node3179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3179 live3179 coloured3179 = result3179 := by
  rw [tree3179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3180_agree_conditional
    (child0 : tree3178 = literal3178)
    (child1 : tree3179 = literal3179) : tree3180 = literal3180 := by
  rw [tree3180_def, child0, child1]
  rfl
theorem node3180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3178 live3178 coloured3178 = result3178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3179 live3179 coloured3179 = result3179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3180 live3180 coloured3180 = result3180 := by
  rw [tree3180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3178 coloured3178 at child
  try dsimp only [live3180, coloured3180]
  rw [child]
  dsimp only [result3178]
  have child := child1
  unfold live3179 coloured3179 at child
  try dsimp only [live3180, coloured3180]
  rw [child]
  dsimp only [result3179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3181_agree_conditional : tree3181 = literal3181 := by
  rw [tree3181_def]
  rfl
theorem node3181_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3181 live3181 coloured3181 = result3181 := by
  rw [tree3181_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3182_agree_conditional
    (child0 : tree3180 = literal3180)
    (child1 : tree3181 = literal3181) : tree3182 = literal3182 := by
  rw [tree3182_def, child0, child1]
  rfl
theorem node3182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3180 live3180 coloured3180 = result3180)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3181 live3181 coloured3181 = result3181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3182 live3182 coloured3182 = result3182 := by
  rw [tree3182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3180 coloured3180 at child
  try dsimp only [live3182, coloured3182]
  rw [child]
  dsimp only [result3180]
  have child := child1
  unfold live3181 coloured3181 at child
  try dsimp only [live3182, coloured3182]
  rw [child]
  dsimp only [result3181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3183_agree_conditional : tree3183 = literal3183 := by
  rw [tree3183_def]
  rfl
theorem node3183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3183 live3183 coloured3183 = result3183 := by
  rw [tree3183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3184_agree_conditional
    (child0 : tree3182 = literal3182)
    (child1 : tree3183 = literal3183) : tree3184 = literal3184 := by
  rw [tree3184_def, child0, child1]
  rfl
theorem node3184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3182 live3182 coloured3182 = result3182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3183 live3183 coloured3183 = result3183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3184 live3184 coloured3184 = result3184 := by
  rw [tree3184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3182 coloured3182 at child
  try dsimp only [live3184, coloured3184]
  rw [child]
  dsimp only [result3182]
  have child := child1
  unfold live3183 coloured3183 at child
  try dsimp only [live3184, coloured3184]
  rw [child]
  dsimp only [result3183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3185_agree_conditional : tree3185 = literal3185 := by
  rw [tree3185_def]
  rfl
theorem node3185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3185 live3185 coloured3185 = result3185 := by
  rw [tree3185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3186_agree_conditional
    (child0 : tree3184 = literal3184)
    (child1 : tree3185 = literal3185) : tree3186 = literal3186 := by
  rw [tree3186_def, child0, child1]
  rfl
theorem node3186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3184 live3184 coloured3184 = result3184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3185 live3185 coloured3185 = result3185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3186 live3186 coloured3186 = result3186 := by
  rw [tree3186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3184 coloured3184 at child
  try dsimp only [live3186, coloured3186]
  rw [child]
  dsimp only [result3184]
  have child := child1
  unfold live3185 coloured3185 at child
  try dsimp only [live3186, coloured3186]
  rw [child]
  dsimp only [result3185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3187_agree_conditional : tree3187 = literal3187 := by
  rw [tree3187_def]
  rfl
theorem node3187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3187 live3187 coloured3187 = result3187 := by
  rw [tree3187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3188_agree_conditional
    (child0 : tree3186 = literal3186)
    (child1 : tree3187 = literal3187) : tree3188 = literal3188 := by
  rw [tree3188_def, child0, child1]
  rfl
theorem node3188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3186 live3186 coloured3186 = result3186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3187 live3187 coloured3187 = result3187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3188 live3188 coloured3188 = result3188 := by
  rw [tree3188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3186 coloured3186 at child
  try dsimp only [live3188, coloured3188]
  rw [child]
  dsimp only [result3186]
  have child := child1
  unfold live3187 coloured3187 at child
  try dsimp only [live3188, coloured3188]
  rw [child]
  dsimp only [result3187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3189_agree_conditional : tree3189 = literal3189 := by
  rw [tree3189_def]
  rfl
theorem node3189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3189 live3189 coloured3189 = result3189 := by
  rw [tree3189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3190_agree_conditional
    (child0 : tree3188 = literal3188)
    (child1 : tree3189 = literal3189) : tree3190 = literal3190 := by
  rw [tree3190_def, child0, child1]
  rfl
theorem node3190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3188 live3188 coloured3188 = result3188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3189 live3189 coloured3189 = result3189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3190 live3190 coloured3190 = result3190 := by
  rw [tree3190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3188 coloured3188 at child
  try dsimp only [live3190, coloured3190]
  rw [child]
  dsimp only [result3188]
  have child := child1
  unfold live3189 coloured3189 at child
  try dsimp only [live3190, coloured3190]
  rw [child]
  dsimp only [result3189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3191_agree_conditional : tree3191 = literal3191 := by
  rw [tree3191_def]
  rfl
theorem node3191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3191 live3191 coloured3191 = result3191 := by
  rw [tree3191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3192_agree_conditional
    (child0 : tree3190 = literal3190)
    (child1 : tree3191 = literal3191) : tree3192 = literal3192 := by
  rw [tree3192_def, child0, child1]
  rfl
theorem node3192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3190 live3190 coloured3190 = result3190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3191 live3191 coloured3191 = result3191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3192 live3192 coloured3192 = result3192 := by
  rw [tree3192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3190 coloured3190 at child
  try dsimp only [live3192, coloured3192]
  rw [child]
  dsimp only [result3190]
  have child := child1
  unfold live3191 coloured3191 at child
  try dsimp only [live3192, coloured3192]
  rw [child]
  dsimp only [result3191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3193_agree_conditional : tree3193 = literal3193 := by
  rw [tree3193_def]
  rfl
theorem node3193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3193 live3193 coloured3193 = result3193 := by
  rw [tree3193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3194_agree_conditional
    (child0 : tree3192 = literal3192)
    (child1 : tree3193 = literal3193) : tree3194 = literal3194 := by
  rw [tree3194_def, child0, child1]
  rfl
theorem node3194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3192 live3192 coloured3192 = result3192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3193 live3193 coloured3193 = result3193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3194 live3194 coloured3194 = result3194 := by
  rw [tree3194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3192 coloured3192 at child
  try dsimp only [live3194, coloured3194]
  rw [child]
  dsimp only [result3192]
  have child := child1
  unfold live3193 coloured3193 at child
  try dsimp only [live3194, coloured3194]
  rw [child]
  dsimp only [result3193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3195_agree_conditional : tree3195 = literal3195 := by
  rw [tree3195_def]
  rfl
theorem node3195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3195 live3195 coloured3195 = result3195 := by
  rw [tree3195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3196_agree_conditional
    (child0 : tree3194 = literal3194)
    (child1 : tree3195 = literal3195) : tree3196 = literal3196 := by
  rw [tree3196_def, child0, child1]
  rfl
theorem node3196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3194 live3194 coloured3194 = result3194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3195 live3195 coloured3195 = result3195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3196 live3196 coloured3196 = result3196 := by
  rw [tree3196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3194 coloured3194 at child
  try dsimp only [live3196, coloured3196]
  rw [child]
  dsimp only [result3194]
  have child := child1
  unfold live3195 coloured3195 at child
  try dsimp only [live3196, coloured3196]
  rw [child]
  dsimp only [result3195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3197_agree_conditional : tree3197 = literal3197 := by
  rw [tree3197_def]
  rfl
theorem node3197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3197 live3197 coloured3197 = result3197 := by
  rw [tree3197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3198_agree_conditional
    (child0 : tree3196 = literal3196)
    (child1 : tree3197 = literal3197) : tree3198 = literal3198 := by
  rw [tree3198_def, child0, child1]
  rfl
theorem node3198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3196 live3196 coloured3196 = result3196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3197 live3197 coloured3197 = result3197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3198 live3198 coloured3198 = result3198 := by
  rw [tree3198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3196 coloured3196 at child
  try dsimp only [live3198, coloured3198]
  rw [child]
  dsimp only [result3196]
  have child := child1
  unfold live3197 coloured3197 at child
  try dsimp only [live3198, coloured3198]
  rw [child]
  dsimp only [result3197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3199_agree_conditional : tree3199 = literal3199 := by
  rw [tree3199_def]
  rfl
theorem node3199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3199 live3199 coloured3199 = result3199 := by
  rw [tree3199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3200_agree_conditional
    (child0 : tree3198 = literal3198)
    (child1 : tree3199 = literal3199) : tree3200 = literal3200 := by
  rw [tree3200_def, child0, child1]
  rfl
theorem node3200_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3198 live3198 coloured3198 = result3198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3199 live3199 coloured3199 = result3199) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3200 live3200 coloured3200 = result3200 := by
  rw [tree3200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3198 coloured3198 at child
  try dsimp only [live3200, coloured3200]
  rw [child]
  dsimp only [result3198]
  have child := child1
  unfold live3199 coloured3199 at child
  try dsimp only [live3200, coloured3200]
  rw [child]
  dsimp only [result3199]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3201_agree_conditional : tree3201 = literal3201 := by
  rw [tree3201_def]
  rfl
theorem node3201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3201 live3201 coloured3201 = result3201 := by
  rw [tree3201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3202_agree_conditional
    (child0 : tree3200 = literal3200)
    (child1 : tree3201 = literal3201) : tree3202 = literal3202 := by
  rw [tree3202_def, child0, child1]
  rfl
theorem node3202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3200 live3200 coloured3200 = result3200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3201 live3201 coloured3201 = result3201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3202 live3202 coloured3202 = result3202 := by
  rw [tree3202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3200 coloured3200 at child
  try dsimp only [live3202, coloured3202]
  rw [child]
  dsimp only [result3200]
  have child := child1
  unfold live3201 coloured3201 at child
  try dsimp only [live3202, coloured3202]
  rw [child]
  dsimp only [result3201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3203_agree_conditional : tree3203 = literal3203 := by
  rw [tree3203_def]
  rfl
theorem node3203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3203 live3203 coloured3203 = result3203 := by
  rw [tree3203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3204_agree_conditional
    (child0 : tree3202 = literal3202)
    (child1 : tree3203 = literal3203) : tree3204 = literal3204 := by
  rw [tree3204_def, child0, child1]
  rfl
theorem node3204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3202 live3202 coloured3202 = result3202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3203 live3203 coloured3203 = result3203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3204 live3204 coloured3204 = result3204 := by
  rw [tree3204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3202 coloured3202 at child
  try dsimp only [live3204, coloured3204]
  rw [child]
  dsimp only [result3202]
  have child := child1
  unfold live3203 coloured3203 at child
  try dsimp only [live3204, coloured3204]
  rw [child]
  dsimp only [result3203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3205_agree_conditional : tree3205 = literal3205 := by
  rw [tree3205_def]
  rfl
theorem node3205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3205 live3205 coloured3205 = result3205 := by
  rw [tree3205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3206_agree_conditional
    (child0 : tree3204 = literal3204)
    (child1 : tree3205 = literal3205) : tree3206 = literal3206 := by
  rw [tree3206_def, child0, child1]
  rfl
theorem node3206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3204 live3204 coloured3204 = result3204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3205 live3205 coloured3205 = result3205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3206 live3206 coloured3206 = result3206 := by
  rw [tree3206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3204 coloured3204 at child
  try dsimp only [live3206, coloured3206]
  rw [child]
  dsimp only [result3204]
  have child := child1
  unfold live3205 coloured3205 at child
  try dsimp only [live3206, coloured3206]
  rw [child]
  dsimp only [result3205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3207_agree_conditional : tree3207 = literal3207 := by
  rw [tree3207_def]
  rfl
theorem node3207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3207 live3207 coloured3207 = result3207 := by
  rw [tree3207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3208_agree_conditional
    (child0 : tree3206 = literal3206)
    (child1 : tree3207 = literal3207) : tree3208 = literal3208 := by
  rw [tree3208_def, child0, child1]
  rfl
theorem node3208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3206 live3206 coloured3206 = result3206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3207 live3207 coloured3207 = result3207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3208 live3208 coloured3208 = result3208 := by
  rw [tree3208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3206 coloured3206 at child
  try dsimp only [live3208, coloured3208]
  rw [child]
  dsimp only [result3206]
  have child := child1
  unfold live3207 coloured3207 at child
  try dsimp only [live3208, coloured3208]
  rw [child]
  dsimp only [result3207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3209_agree_conditional : tree3209 = literal3209 := by
  rw [tree3209_def]
  rfl
theorem node3209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3209 live3209 coloured3209 = result3209 := by
  rw [tree3209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3210_agree_conditional
    (child0 : tree3208 = literal3208)
    (child1 : tree3209 = literal3209) : tree3210 = literal3210 := by
  rw [tree3210_def, child0, child1]
  rfl
theorem node3210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3208 live3208 coloured3208 = result3208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3209 live3209 coloured3209 = result3209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3210 live3210 coloured3210 = result3210 := by
  rw [tree3210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3208 coloured3208 at child
  try dsimp only [live3210, coloured3210]
  rw [child]
  dsimp only [result3208]
  have child := child1
  unfold live3209 coloured3209 at child
  try dsimp only [live3210, coloured3210]
  rw [child]
  dsimp only [result3209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3211_agree_conditional : tree3211 = literal3211 := by
  rw [tree3211_def]
  rfl
theorem node3211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3211 live3211 coloured3211 = result3211 := by
  rw [tree3211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3212_agree_conditional
    (child0 : tree3210 = literal3210)
    (child1 : tree3211 = literal3211) : tree3212 = literal3212 := by
  rw [tree3212_def, child0, child1]
  rfl
theorem node3212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3210 live3210 coloured3210 = result3210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3211 live3211 coloured3211 = result3211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3212 live3212 coloured3212 = result3212 := by
  rw [tree3212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3210 coloured3210 at child
  try dsimp only [live3212, coloured3212]
  rw [child]
  dsimp only [result3210]
  have child := child1
  unfold live3211 coloured3211 at child
  try dsimp only [live3212, coloured3212]
  rw [child]
  dsimp only [result3211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3213_agree_conditional : tree3213 = literal3213 := by
  rw [tree3213_def]
  rfl
theorem node3213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3213 live3213 coloured3213 = result3213 := by
  rw [tree3213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3214_agree_conditional
    (child0 : tree3212 = literal3212)
    (child1 : tree3213 = literal3213) : tree3214 = literal3214 := by
  rw [tree3214_def, child0, child1]
  rfl
theorem node3214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3212 live3212 coloured3212 = result3212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3213 live3213 coloured3213 = result3213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3214 live3214 coloured3214 = result3214 := by
  rw [tree3214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3212 coloured3212 at child
  try dsimp only [live3214, coloured3214]
  rw [child]
  dsimp only [result3212]
  have child := child1
  unfold live3213 coloured3213 at child
  try dsimp only [live3214, coloured3214]
  rw [child]
  dsimp only [result3213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3215_agree_conditional : tree3215 = literal3215 := by
  rw [tree3215_def]
  rfl
theorem node3215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3215 live3215 coloured3215 = result3215 := by
  rw [tree3215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3216_agree_conditional
    (child0 : tree3214 = literal3214)
    (child1 : tree3215 = literal3215) : tree3216 = literal3216 := by
  rw [tree3216_def, child0, child1]
  rfl
theorem node3216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3214 live3214 coloured3214 = result3214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3215 live3215 coloured3215 = result3215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3216 live3216 coloured3216 = result3216 := by
  rw [tree3216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3214 coloured3214 at child
  try dsimp only [live3216, coloured3216]
  rw [child]
  dsimp only [result3214]
  have child := child1
  unfold live3215 coloured3215 at child
  try dsimp only [live3216, coloured3216]
  rw [child]
  dsimp only [result3215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3217_agree_conditional : tree3217 = literal3217 := by
  rw [tree3217_def]
  rfl
theorem node3217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3217 live3217 coloured3217 = result3217 := by
  rw [tree3217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3218_agree_conditional
    (child0 : tree3216 = literal3216)
    (child1 : tree3217 = literal3217) : tree3218 = literal3218 := by
  rw [tree3218_def, child0, child1]
  rfl
theorem node3218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3216 live3216 coloured3216 = result3216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3217 live3217 coloured3217 = result3217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3218 live3218 coloured3218 = result3218 := by
  rw [tree3218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3216 coloured3216 at child
  try dsimp only [live3218, coloured3218]
  rw [child]
  dsimp only [result3216]
  have child := child1
  unfold live3217 coloured3217 at child
  try dsimp only [live3218, coloured3218]
  rw [child]
  dsimp only [result3217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3219_agree_conditional : tree3219 = literal3219 := by
  rw [tree3219_def]
  rfl
theorem node3219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3219 live3219 coloured3219 = result3219 := by
  rw [tree3219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3220_agree_conditional
    (child0 : tree3218 = literal3218)
    (child1 : tree3219 = literal3219) : tree3220 = literal3220 := by
  rw [tree3220_def, child0, child1]
  rfl
theorem node3220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3218 live3218 coloured3218 = result3218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3219 live3219 coloured3219 = result3219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3220 live3220 coloured3220 = result3220 := by
  rw [tree3220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3218 coloured3218 at child
  try dsimp only [live3220, coloured3220]
  rw [child]
  dsimp only [result3218]
  have child := child1
  unfold live3219 coloured3219 at child
  try dsimp only [live3220, coloured3220]
  rw [child]
  dsimp only [result3219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3221_agree_conditional : tree3221 = literal3221 := by
  rw [tree3221_def]
  rfl
theorem node3221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3221 live3221 coloured3221 = result3221 := by
  rw [tree3221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3222_agree_conditional
    (child0 : tree3220 = literal3220)
    (child1 : tree3221 = literal3221) : tree3222 = literal3222 := by
  rw [tree3222_def, child0, child1]
  rfl
theorem node3222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3220 live3220 coloured3220 = result3220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3221 live3221 coloured3221 = result3221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3222 live3222 coloured3222 = result3222 := by
  rw [tree3222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3220 coloured3220 at child
  try dsimp only [live3222, coloured3222]
  rw [child]
  dsimp only [result3220]
  have child := child1
  unfold live3221 coloured3221 at child
  try dsimp only [live3222, coloured3222]
  rw [child]
  dsimp only [result3221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3223_agree_conditional : tree3223 = literal3223 := by
  rw [tree3223_def]
  rfl
theorem node3223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3223 live3223 coloured3223 = result3223 := by
  rw [tree3223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3224_agree_conditional
    (child0 : tree3222 = literal3222)
    (child1 : tree3223 = literal3223) : tree3224 = literal3224 := by
  rw [tree3224_def, child0, child1]
  rfl
theorem node3224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3222 live3222 coloured3222 = result3222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3223 live3223 coloured3223 = result3223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3224 live3224 coloured3224 = result3224 := by
  rw [tree3224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3222 coloured3222 at child
  try dsimp only [live3224, coloured3224]
  rw [child]
  dsimp only [result3222]
  have child := child1
  unfold live3223 coloured3223 at child
  try dsimp only [live3224, coloured3224]
  rw [child]
  dsimp only [result3223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3225_agree_conditional : tree3225 = literal3225 := by
  rw [tree3225_def]
  rfl
theorem node3225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3225 live3225 coloured3225 = result3225 := by
  rw [tree3225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3226_agree_conditional
    (child0 : tree3224 = literal3224)
    (child1 : tree3225 = literal3225) : tree3226 = literal3226 := by
  rw [tree3226_def, child0, child1]
  rfl
theorem node3226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3224 live3224 coloured3224 = result3224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3225 live3225 coloured3225 = result3225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3226 live3226 coloured3226 = result3226 := by
  rw [tree3226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3224 coloured3224 at child
  try dsimp only [live3226, coloured3226]
  rw [child]
  dsimp only [result3224]
  have child := child1
  unfold live3225 coloured3225 at child
  try dsimp only [live3226, coloured3226]
  rw [child]
  dsimp only [result3225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3227_agree_conditional : tree3227 = literal3227 := by
  rw [tree3227_def]
  rfl
theorem node3227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3227 live3227 coloured3227 = result3227 := by
  rw [tree3227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3228_agree_conditional
    (child0 : tree3226 = literal3226)
    (child1 : tree3227 = literal3227) : tree3228 = literal3228 := by
  rw [tree3228_def, child0, child1]
  rfl
theorem node3228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3226 live3226 coloured3226 = result3226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3227 live3227 coloured3227 = result3227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3228 live3228 coloured3228 = result3228 := by
  rw [tree3228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3226 coloured3226 at child
  try dsimp only [live3228, coloured3228]
  rw [child]
  dsimp only [result3226]
  have child := child1
  unfold live3227 coloured3227 at child
  try dsimp only [live3228, coloured3228]
  rw [child]
  dsimp only [result3227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3229_agree_conditional : tree3229 = literal3229 := by
  rw [tree3229_def]
  rfl
theorem node3229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3229 live3229 coloured3229 = result3229 := by
  rw [tree3229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3230_agree_conditional
    (child0 : tree3228 = literal3228)
    (child1 : tree3229 = literal3229) : tree3230 = literal3230 := by
  rw [tree3230_def, child0, child1]
  rfl
theorem node3230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3228 live3228 coloured3228 = result3228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3229 live3229 coloured3229 = result3229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3230 live3230 coloured3230 = result3230 := by
  rw [tree3230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3228 coloured3228 at child
  try dsimp only [live3230, coloured3230]
  rw [child]
  dsimp only [result3228]
  have child := child1
  unfold live3229 coloured3229 at child
  try dsimp only [live3230, coloured3230]
  rw [child]
  dsimp only [result3229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3231_agree_conditional : tree3231 = literal3231 := by
  rw [tree3231_def]
  rfl
theorem node3231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3231 live3231 coloured3231 = result3231 := by
  rw [tree3231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3232_agree_conditional
    (child0 : tree3230 = literal3230)
    (child1 : tree3231 = literal3231) : tree3232 = literal3232 := by
  rw [tree3232_def, child0, child1]
  rfl
theorem node3232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3230 live3230 coloured3230 = result3230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3231 live3231 coloured3231 = result3231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3232 live3232 coloured3232 = result3232 := by
  rw [tree3232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3230 coloured3230 at child
  try dsimp only [live3232, coloured3232]
  rw [child]
  dsimp only [result3230]
  have child := child1
  unfold live3231 coloured3231 at child
  try dsimp only [live3232, coloured3232]
  rw [child]
  dsimp only [result3231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3233_agree_conditional : tree3233 = literal3233 := by
  rw [tree3233_def]
  rfl
theorem node3233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3233 live3233 coloured3233 = result3233 := by
  rw [tree3233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3234_agree_conditional
    (child0 : tree3232 = literal3232)
    (child1 : tree3233 = literal3233) : tree3234 = literal3234 := by
  rw [tree3234_def, child0, child1]
  rfl
theorem node3234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3232 live3232 coloured3232 = result3232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3233 live3233 coloured3233 = result3233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3234 live3234 coloured3234 = result3234 := by
  rw [tree3234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3232 coloured3232 at child
  try dsimp only [live3234, coloured3234]
  rw [child]
  dsimp only [result3232]
  have child := child1
  unfold live3233 coloured3233 at child
  try dsimp only [live3234, coloured3234]
  rw [child]
  dsimp only [result3233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3235_agree_conditional : tree3235 = literal3235 := by
  rw [tree3235_def]
  rfl
theorem node3235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3235 live3235 coloured3235 = result3235 := by
  rw [tree3235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3236_agree_conditional
    (child0 : tree3234 = literal3234)
    (child1 : tree3235 = literal3235) : tree3236 = literal3236 := by
  rw [tree3236_def, child0, child1]
  rfl
theorem node3236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3234 live3234 coloured3234 = result3234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3235 live3235 coloured3235 = result3235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3236 live3236 coloured3236 = result3236 := by
  rw [tree3236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3234 coloured3234 at child
  try dsimp only [live3236, coloured3236]
  rw [child]
  dsimp only [result3234]
  have child := child1
  unfold live3235 coloured3235 at child
  try dsimp only [live3236, coloured3236]
  rw [child]
  dsimp only [result3235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3237_agree_conditional : tree3237 = literal3237 := by
  rw [tree3237_def]
  rfl
theorem node3237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3237 live3237 coloured3237 = result3237 := by
  rw [tree3237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3238_agree_conditional
    (child0 : tree3236 = literal3236)
    (child1 : tree3237 = literal3237) : tree3238 = literal3238 := by
  rw [tree3238_def, child0, child1]
  rfl
theorem node3238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3236 live3236 coloured3236 = result3236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3237 live3237 coloured3237 = result3237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3238 live3238 coloured3238 = result3238 := by
  rw [tree3238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3236 coloured3236 at child
  try dsimp only [live3238, coloured3238]
  rw [child]
  dsimp only [result3236]
  have child := child1
  unfold live3237 coloured3237 at child
  try dsimp only [live3238, coloured3238]
  rw [child]
  dsimp only [result3237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3239_agree_conditional : tree3239 = literal3239 := by
  rw [tree3239_def]
  rfl
theorem node3239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3239 live3239 coloured3239 = result3239 := by
  rw [tree3239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3240_agree_conditional
    (child0 : tree3238 = literal3238)
    (child1 : tree3239 = literal3239) : tree3240 = literal3240 := by
  rw [tree3240_def, child0, child1]
  rfl
theorem node3240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3238 live3238 coloured3238 = result3238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3239 live3239 coloured3239 = result3239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3240 live3240 coloured3240 = result3240 := by
  rw [tree3240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3238 coloured3238 at child
  try dsimp only [live3240, coloured3240]
  rw [child]
  dsimp only [result3238]
  have child := child1
  unfold live3239 coloured3239 at child
  try dsimp only [live3240, coloured3240]
  rw [child]
  dsimp only [result3239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3241_agree_conditional : tree3241 = literal3241 := by
  rw [tree3241_def]
  rfl
theorem node3241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3241 live3241 coloured3241 = result3241 := by
  rw [tree3241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3242_agree_conditional
    (child0 : tree3240 = literal3240)
    (child1 : tree3241 = literal3241) : tree3242 = literal3242 := by
  rw [tree3242_def, child0, child1]
  rfl
theorem node3242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3240 live3240 coloured3240 = result3240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3241 live3241 coloured3241 = result3241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3242 live3242 coloured3242 = result3242 := by
  rw [tree3242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3240 coloured3240 at child
  try dsimp only [live3242, coloured3242]
  rw [child]
  dsimp only [result3240]
  have child := child1
  unfold live3241 coloured3241 at child
  try dsimp only [live3242, coloured3242]
  rw [child]
  dsimp only [result3241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3243_agree_conditional : tree3243 = literal3243 := by
  rw [tree3243_def]
  rfl
theorem node3243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3243 live3243 coloured3243 = result3243 := by
  rw [tree3243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3244_agree_conditional
    (child0 : tree3242 = literal3242)
    (child1 : tree3243 = literal3243) : tree3244 = literal3244 := by
  rw [tree3244_def, child0, child1]
  rfl
theorem node3244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3242 live3242 coloured3242 = result3242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3243 live3243 coloured3243 = result3243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3244 live3244 coloured3244 = result3244 := by
  rw [tree3244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3242 coloured3242 at child
  try dsimp only [live3244, coloured3244]
  rw [child]
  dsimp only [result3242]
  have child := child1
  unfold live3243 coloured3243 at child
  try dsimp only [live3244, coloured3244]
  rw [child]
  dsimp only [result3243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3245_agree_conditional : tree3245 = literal3245 := by
  rw [tree3245_def]
  rfl
theorem node3245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3245 live3245 coloured3245 = result3245 := by
  rw [tree3245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3246_agree_conditional
    (child0 : tree3244 = literal3244)
    (child1 : tree3245 = literal3245) : tree3246 = literal3246 := by
  rw [tree3246_def, child0, child1]
  rfl
theorem node3246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3244 live3244 coloured3244 = result3244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3245 live3245 coloured3245 = result3245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3246 live3246 coloured3246 = result3246 := by
  rw [tree3246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3244 coloured3244 at child
  try dsimp only [live3246, coloured3246]
  rw [child]
  dsimp only [result3244]
  have child := child1
  unfold live3245 coloured3245 at child
  try dsimp only [live3246, coloured3246]
  rw [child]
  dsimp only [result3245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3247_agree_conditional : tree3247 = literal3247 := by
  rw [tree3247_def]
  rfl
theorem node3247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3247 live3247 coloured3247 = result3247 := by
  rw [tree3247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3248_agree_conditional
    (child0 : tree3246 = literal3246)
    (child1 : tree3247 = literal3247) : tree3248 = literal3248 := by
  rw [tree3248_def, child0, child1]
  rfl
theorem node3248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3246 live3246 coloured3246 = result3246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3247 live3247 coloured3247 = result3247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3248 live3248 coloured3248 = result3248 := by
  rw [tree3248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3246 coloured3246 at child
  try dsimp only [live3248, coloured3248]
  rw [child]
  dsimp only [result3246]
  have child := child1
  unfold live3247 coloured3247 at child
  try dsimp only [live3248, coloured3248]
  rw [child]
  dsimp only [result3247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3249_agree_conditional : tree3249 = literal3249 := by
  rw [tree3249_def]
  rfl
theorem node3249_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3249 live3249 coloured3249 = result3249 := by
  rw [tree3249_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3250_agree_conditional
    (child0 : tree3248 = literal3248)
    (child1 : tree3249 = literal3249) : tree3250 = literal3250 := by
  rw [tree3250_def, child0, child1]
  rfl
theorem node3250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3248 live3248 coloured3248 = result3248)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3249 live3249 coloured3249 = result3249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3250 live3250 coloured3250 = result3250 := by
  rw [tree3250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3248 coloured3248 at child
  try dsimp only [live3250, coloured3250]
  rw [child]
  dsimp only [result3248]
  have child := child1
  unfold live3249 coloured3249 at child
  try dsimp only [live3250, coloured3250]
  rw [child]
  dsimp only [result3249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3251_agree_conditional : tree3251 = literal3251 := by
  rw [tree3251_def]
  rfl
theorem node3251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3251 live3251 coloured3251 = result3251 := by
  rw [tree3251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3252_agree_conditional
    (child0 : tree3250 = literal3250)
    (child1 : tree3251 = literal3251) : tree3252 = literal3252 := by
  rw [tree3252_def, child0, child1]
  rfl
theorem node3252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3250 live3250 coloured3250 = result3250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3251 live3251 coloured3251 = result3251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3252 live3252 coloured3252 = result3252 := by
  rw [tree3252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3250 coloured3250 at child
  try dsimp only [live3252, coloured3252]
  rw [child]
  dsimp only [result3250]
  have child := child1
  unfold live3251 coloured3251 at child
  try dsimp only [live3252, coloured3252]
  rw [child]
  dsimp only [result3251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3253_agree_conditional : tree3253 = literal3253 := by
  rw [tree3253_def]
  rfl
theorem node3253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3253 live3253 coloured3253 = result3253 := by
  rw [tree3253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3254_agree_conditional
    (child0 : tree3252 = literal3252)
    (child1 : tree3253 = literal3253) : tree3254 = literal3254 := by
  rw [tree3254_def, child0, child1]
  rfl
theorem node3254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3252 live3252 coloured3252 = result3252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3253 live3253 coloured3253 = result3253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3254 live3254 coloured3254 = result3254 := by
  rw [tree3254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3252 coloured3252 at child
  try dsimp only [live3254, coloured3254]
  rw [child]
  dsimp only [result3252]
  have child := child1
  unfold live3253 coloured3253 at child
  try dsimp only [live3254, coloured3254]
  rw [child]
  dsimp only [result3253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3255_agree_conditional : tree3255 = literal3255 := by
  rw [tree3255_def]
  rfl
theorem node3255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3255 live3255 coloured3255 = result3255 := by
  rw [tree3255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3256_agree_conditional
    (child0 : tree3254 = literal3254)
    (child1 : tree3255 = literal3255) : tree3256 = literal3256 := by
  rw [tree3256_def, child0, child1]
  rfl
theorem node3256_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3254 live3254 coloured3254 = result3254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3255 live3255 coloured3255 = result3255) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3256 live3256 coloured3256 = result3256 := by
  rw [tree3256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3254 coloured3254 at child
  try dsimp only [live3256, coloured3256]
  rw [child]
  dsimp only [result3254]
  have child := child1
  unfold live3255 coloured3255 at child
  try dsimp only [live3256, coloured3256]
  rw [child]
  dsimp only [result3255]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3257_agree_conditional : tree3257 = literal3257 := by
  rw [tree3257_def]
  rfl
theorem node3257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3257 live3257 coloured3257 = result3257 := by
  rw [tree3257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3258_agree_conditional
    (child0 : tree3256 = literal3256)
    (child1 : tree3257 = literal3257) : tree3258 = literal3258 := by
  rw [tree3258_def, child0, child1]
  rfl
theorem node3258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3256 live3256 coloured3256 = result3256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3257 live3257 coloured3257 = result3257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3258 live3258 coloured3258 = result3258 := by
  rw [tree3258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3256 coloured3256 at child
  try dsimp only [live3258, coloured3258]
  rw [child]
  dsimp only [result3256]
  have child := child1
  unfold live3257 coloured3257 at child
  try dsimp only [live3258, coloured3258]
  rw [child]
  dsimp only [result3257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3259_agree_conditional : tree3259 = literal3259 := by
  rw [tree3259_def]
  rfl
theorem node3259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3259 live3259 coloured3259 = result3259 := by
  rw [tree3259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3260_agree_conditional
    (child0 : tree3258 = literal3258)
    (child1 : tree3259 = literal3259) : tree3260 = literal3260 := by
  rw [tree3260_def, child0, child1]
  rfl
theorem node3260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3258 live3258 coloured3258 = result3258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3259 live3259 coloured3259 = result3259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3260 live3260 coloured3260 = result3260 := by
  rw [tree3260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3258 coloured3258 at child
  try dsimp only [live3260, coloured3260]
  rw [child]
  dsimp only [result3258]
  have child := child1
  unfold live3259 coloured3259 at child
  try dsimp only [live3260, coloured3260]
  rw [child]
  dsimp only [result3259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3261_agree_conditional : tree3261 = literal3261 := by
  rw [tree3261_def]
  rfl
theorem node3261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3261 live3261 coloured3261 = result3261 := by
  rw [tree3261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3262_agree_conditional
    (child0 : tree3260 = literal3260)
    (child1 : tree3261 = literal3261) : tree3262 = literal3262 := by
  rw [tree3262_def, child0, child1]
  rfl
theorem node3262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3260 live3260 coloured3260 = result3260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3261 live3261 coloured3261 = result3261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3262 live3262 coloured3262 = result3262 := by
  rw [tree3262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3260 coloured3260 at child
  try dsimp only [live3262, coloured3262]
  rw [child]
  dsimp only [result3260]
  have child := child1
  unfold live3261 coloured3261 at child
  try dsimp only [live3262, coloured3262]
  rw [child]
  dsimp only [result3261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3263_agree_conditional : tree3263 = literal3263 := by
  rw [tree3263_def]
  rfl
theorem node3263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3263 live3263 coloured3263 = result3263 := by
  rw [tree3263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
