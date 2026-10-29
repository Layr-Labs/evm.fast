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
theorem tree3264_agree_conditional
    (child0 : tree3262 = literal3262)
    (child1 : tree3263 = literal3263) : tree3264 = literal3264 := by
  rw [tree3264_def, child0, child1]
  rfl
theorem node3264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3262 live3262 coloured3262 = result3262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3263 live3263 coloured3263 = result3263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3264 live3264 coloured3264 = result3264 := by
  rw [tree3264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3262 coloured3262 at child
  try dsimp only [live3264, coloured3264]
  rw [child]
  dsimp only [result3262]
  have child := child1
  unfold live3263 coloured3263 at child
  try dsimp only [live3264, coloured3264]
  rw [child]
  dsimp only [result3263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3265_agree_conditional : tree3265 = literal3265 := by
  rw [tree3265_def]
  rfl
theorem node3265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3265 live3265 coloured3265 = result3265 := by
  rw [tree3265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3266_agree_conditional
    (child0 : tree3264 = literal3264)
    (child1 : tree3265 = literal3265) : tree3266 = literal3266 := by
  rw [tree3266_def, child0, child1]
  rfl
theorem node3266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3264 live3264 coloured3264 = result3264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3265 live3265 coloured3265 = result3265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3266 live3266 coloured3266 = result3266 := by
  rw [tree3266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3264 coloured3264 at child
  try dsimp only [live3266, coloured3266]
  rw [child]
  dsimp only [result3264]
  have child := child1
  unfold live3265 coloured3265 at child
  try dsimp only [live3266, coloured3266]
  rw [child]
  dsimp only [result3265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3267_agree_conditional : tree3267 = literal3267 := by
  rw [tree3267_def]
  rfl
theorem node3267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3267 live3267 coloured3267 = result3267 := by
  rw [tree3267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3268_agree_conditional
    (child0 : tree3266 = literal3266)
    (child1 : tree3267 = literal3267) : tree3268 = literal3268 := by
  rw [tree3268_def, child0, child1]
  rfl
theorem node3268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3266 live3266 coloured3266 = result3266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3267 live3267 coloured3267 = result3267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3268 live3268 coloured3268 = result3268 := by
  rw [tree3268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3266 coloured3266 at child
  try dsimp only [live3268, coloured3268]
  rw [child]
  dsimp only [result3266]
  have child := child1
  unfold live3267 coloured3267 at child
  try dsimp only [live3268, coloured3268]
  rw [child]
  dsimp only [result3267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3269_agree_conditional : tree3269 = literal3269 := by
  rw [tree3269_def]
  rfl
theorem node3269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3269 live3269 coloured3269 = result3269 := by
  rw [tree3269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3270_agree_conditional
    (child0 : tree3268 = literal3268)
    (child1 : tree3269 = literal3269) : tree3270 = literal3270 := by
  rw [tree3270_def, child0, child1]
  rfl
theorem node3270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3268 live3268 coloured3268 = result3268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3269 live3269 coloured3269 = result3269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3270 live3270 coloured3270 = result3270 := by
  rw [tree3270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3268 coloured3268 at child
  try dsimp only [live3270, coloured3270]
  rw [child]
  dsimp only [result3268]
  have child := child1
  unfold live3269 coloured3269 at child
  try dsimp only [live3270, coloured3270]
  rw [child]
  dsimp only [result3269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3271_agree_conditional : tree3271 = literal3271 := by
  rw [tree3271_def]
  rfl
theorem node3271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3271 live3271 coloured3271 = result3271 := by
  rw [tree3271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3272_agree_conditional
    (child0 : tree3270 = literal3270)
    (child1 : tree3271 = literal3271) : tree3272 = literal3272 := by
  rw [tree3272_def, child0, child1]
  rfl
theorem node3272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3270 live3270 coloured3270 = result3270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3271 live3271 coloured3271 = result3271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3272 live3272 coloured3272 = result3272 := by
  rw [tree3272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3270 coloured3270 at child
  try dsimp only [live3272, coloured3272]
  rw [child]
  dsimp only [result3270]
  have child := child1
  unfold live3271 coloured3271 at child
  try dsimp only [live3272, coloured3272]
  rw [child]
  dsimp only [result3271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3273_agree_conditional : tree3273 = literal3273 := by
  rw [tree3273_def]
  rfl
theorem node3273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3273 live3273 coloured3273 = result3273 := by
  rw [tree3273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3274_agree_conditional
    (child0 : tree3272 = literal3272)
    (child1 : tree3273 = literal3273) : tree3274 = literal3274 := by
  rw [tree3274_def, child0, child1]
  rfl
theorem node3274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3272 live3272 coloured3272 = result3272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3273 live3273 coloured3273 = result3273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3274 live3274 coloured3274 = result3274 := by
  rw [tree3274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3272 coloured3272 at child
  try dsimp only [live3274, coloured3274]
  rw [child]
  dsimp only [result3272]
  have child := child1
  unfold live3273 coloured3273 at child
  try dsimp only [live3274, coloured3274]
  rw [child]
  dsimp only [result3273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3275_agree_conditional : tree3275 = literal3275 := by
  rw [tree3275_def]
  rfl
theorem node3275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3275 live3275 coloured3275 = result3275 := by
  rw [tree3275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3276_agree_conditional
    (child0 : tree3274 = literal3274)
    (child1 : tree3275 = literal3275) : tree3276 = literal3276 := by
  rw [tree3276_def, child0, child1]
  rfl
theorem node3276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3274 live3274 coloured3274 = result3274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3275 live3275 coloured3275 = result3275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3276 live3276 coloured3276 = result3276 := by
  rw [tree3276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3274 coloured3274 at child
  try dsimp only [live3276, coloured3276]
  rw [child]
  dsimp only [result3274]
  have child := child1
  unfold live3275 coloured3275 at child
  try dsimp only [live3276, coloured3276]
  rw [child]
  dsimp only [result3275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3277_agree_conditional : tree3277 = literal3277 := by
  rw [tree3277_def]
  rfl
theorem node3277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3277 live3277 coloured3277 = result3277 := by
  rw [tree3277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3278_agree_conditional
    (child0 : tree3276 = literal3276)
    (child1 : tree3277 = literal3277) : tree3278 = literal3278 := by
  rw [tree3278_def, child0, child1]
  rfl
theorem node3278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3276 live3276 coloured3276 = result3276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3277 live3277 coloured3277 = result3277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3278 live3278 coloured3278 = result3278 := by
  rw [tree3278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3276 coloured3276 at child
  try dsimp only [live3278, coloured3278]
  rw [child]
  dsimp only [result3276]
  have child := child1
  unfold live3277 coloured3277 at child
  try dsimp only [live3278, coloured3278]
  rw [child]
  dsimp only [result3277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3279_agree_conditional : tree3279 = literal3279 := by
  rw [tree3279_def]
  rfl
theorem node3279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3279 live3279 coloured3279 = result3279 := by
  rw [tree3279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3280_agree_conditional
    (child0 : tree3278 = literal3278)
    (child1 : tree3279 = literal3279) : tree3280 = literal3280 := by
  rw [tree3280_def, child0, child1]
  rfl
theorem node3280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3278 live3278 coloured3278 = result3278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3279 live3279 coloured3279 = result3279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3280 live3280 coloured3280 = result3280 := by
  rw [tree3280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3278 coloured3278 at child
  try dsimp only [live3280, coloured3280]
  rw [child]
  dsimp only [result3278]
  have child := child1
  unfold live3279 coloured3279 at child
  try dsimp only [live3280, coloured3280]
  rw [child]
  dsimp only [result3279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3281_agree_conditional : tree3281 = literal3281 := by
  rw [tree3281_def]
  rfl
theorem node3281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3281 live3281 coloured3281 = result3281 := by
  rw [tree3281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3282_agree_conditional
    (child0 : tree3280 = literal3280)
    (child1 : tree3281 = literal3281) : tree3282 = literal3282 := by
  rw [tree3282_def, child0, child1]
  rfl
theorem node3282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3280 live3280 coloured3280 = result3280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3281 live3281 coloured3281 = result3281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3282 live3282 coloured3282 = result3282 := by
  rw [tree3282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3280 coloured3280 at child
  try dsimp only [live3282, coloured3282]
  rw [child]
  dsimp only [result3280]
  have child := child1
  unfold live3281 coloured3281 at child
  try dsimp only [live3282, coloured3282]
  rw [child]
  dsimp only [result3281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3283_agree_conditional : tree3283 = literal3283 := by
  rw [tree3283_def]
  rfl
theorem node3283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3283 live3283 coloured3283 = result3283 := by
  rw [tree3283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3284_agree_conditional
    (child0 : tree3282 = literal3282)
    (child1 : tree3283 = literal3283) : tree3284 = literal3284 := by
  rw [tree3284_def, child0, child1]
  rfl
theorem node3284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3282 live3282 coloured3282 = result3282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3283 live3283 coloured3283 = result3283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3284 live3284 coloured3284 = result3284 := by
  rw [tree3284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3282 coloured3282 at child
  try dsimp only [live3284, coloured3284]
  rw [child]
  dsimp only [result3282]
  have child := child1
  unfold live3283 coloured3283 at child
  try dsimp only [live3284, coloured3284]
  rw [child]
  dsimp only [result3283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3285_agree_conditional : tree3285 = literal3285 := by
  rw [tree3285_def]
  rfl
theorem node3285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3285 live3285 coloured3285 = result3285 := by
  rw [tree3285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3286_agree_conditional
    (child0 : tree3284 = literal3284)
    (child1 : tree3285 = literal3285) : tree3286 = literal3286 := by
  rw [tree3286_def, child0, child1]
  rfl
theorem node3286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3284 live3284 coloured3284 = result3284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3285 live3285 coloured3285 = result3285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3286 live3286 coloured3286 = result3286 := by
  rw [tree3286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3284 coloured3284 at child
  try dsimp only [live3286, coloured3286]
  rw [child]
  dsimp only [result3284]
  have child := child1
  unfold live3285 coloured3285 at child
  try dsimp only [live3286, coloured3286]
  rw [child]
  dsimp only [result3285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3287_agree_conditional : tree3287 = literal3287 := by
  rw [tree3287_def]
  rfl
theorem node3287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3287 live3287 coloured3287 = result3287 := by
  rw [tree3287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3288_agree_conditional
    (child0 : tree3286 = literal3286)
    (child1 : tree3287 = literal3287) : tree3288 = literal3288 := by
  rw [tree3288_def, child0, child1]
  rfl
theorem node3288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3286 live3286 coloured3286 = result3286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3287 live3287 coloured3287 = result3287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3288 live3288 coloured3288 = result3288 := by
  rw [tree3288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3286 coloured3286 at child
  try dsimp only [live3288, coloured3288]
  rw [child]
  dsimp only [result3286]
  have child := child1
  unfold live3287 coloured3287 at child
  try dsimp only [live3288, coloured3288]
  rw [child]
  dsimp only [result3287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3289_agree_conditional : tree3289 = literal3289 := by
  rw [tree3289_def]
  rfl
theorem node3289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3289 live3289 coloured3289 = result3289 := by
  rw [tree3289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3290_agree_conditional
    (child0 : tree3288 = literal3288)
    (child1 : tree3289 = literal3289) : tree3290 = literal3290 := by
  rw [tree3290_def, child0, child1]
  rfl
theorem node3290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3288 live3288 coloured3288 = result3288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3289 live3289 coloured3289 = result3289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3290 live3290 coloured3290 = result3290 := by
  rw [tree3290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3288 coloured3288 at child
  try dsimp only [live3290, coloured3290]
  rw [child]
  dsimp only [result3288]
  have child := child1
  unfold live3289 coloured3289 at child
  try dsimp only [live3290, coloured3290]
  rw [child]
  dsimp only [result3289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3291_agree_conditional : tree3291 = literal3291 := by
  rw [tree3291_def]
  rfl
theorem node3291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3291 live3291 coloured3291 = result3291 := by
  rw [tree3291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3292_agree_conditional
    (child0 : tree3290 = literal3290)
    (child1 : tree3291 = literal3291) : tree3292 = literal3292 := by
  rw [tree3292_def, child0, child1]
  rfl
theorem node3292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3290 live3290 coloured3290 = result3290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3291 live3291 coloured3291 = result3291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3292 live3292 coloured3292 = result3292 := by
  rw [tree3292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3290 coloured3290 at child
  try dsimp only [live3292, coloured3292]
  rw [child]
  dsimp only [result3290]
  have child := child1
  unfold live3291 coloured3291 at child
  try dsimp only [live3292, coloured3292]
  rw [child]
  dsimp only [result3291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3293_agree_conditional : tree3293 = literal3293 := by
  rw [tree3293_def]
  rfl
theorem node3293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3293 live3293 coloured3293 = result3293 := by
  rw [tree3293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3294_agree_conditional
    (child0 : tree3292 = literal3292)
    (child1 : tree3293 = literal3293) : tree3294 = literal3294 := by
  rw [tree3294_def, child0, child1]
  rfl
theorem node3294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3292 live3292 coloured3292 = result3292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3293 live3293 coloured3293 = result3293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3294 live3294 coloured3294 = result3294 := by
  rw [tree3294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3292 coloured3292 at child
  try dsimp only [live3294, coloured3294]
  rw [child]
  dsimp only [result3292]
  have child := child1
  unfold live3293 coloured3293 at child
  try dsimp only [live3294, coloured3294]
  rw [child]
  dsimp only [result3293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3295_agree_conditional : tree3295 = literal3295 := by
  rw [tree3295_def]
  rfl
theorem node3295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3295 live3295 coloured3295 = result3295 := by
  rw [tree3295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3296_agree_conditional
    (child0 : tree3294 = literal3294)
    (child1 : tree3295 = literal3295) : tree3296 = literal3296 := by
  rw [tree3296_def, child0, child1]
  rfl
theorem node3296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3294 live3294 coloured3294 = result3294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3295 live3295 coloured3295 = result3295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3296 live3296 coloured3296 = result3296 := by
  rw [tree3296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3294 coloured3294 at child
  try dsimp only [live3296, coloured3296]
  rw [child]
  dsimp only [result3294]
  have child := child1
  unfold live3295 coloured3295 at child
  try dsimp only [live3296, coloured3296]
  rw [child]
  dsimp only [result3295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3297_agree_conditional : tree3297 = literal3297 := by
  rw [tree3297_def]
  rfl
theorem node3297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3297 live3297 coloured3297 = result3297 := by
  rw [tree3297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3298_agree_conditional
    (child0 : tree3296 = literal3296)
    (child1 : tree3297 = literal3297) : tree3298 = literal3298 := by
  rw [tree3298_def, child0, child1]
  rfl
theorem node3298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3296 live3296 coloured3296 = result3296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3297 live3297 coloured3297 = result3297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3298 live3298 coloured3298 = result3298 := by
  rw [tree3298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3296 coloured3296 at child
  try dsimp only [live3298, coloured3298]
  rw [child]
  dsimp only [result3296]
  have child := child1
  unfold live3297 coloured3297 at child
  try dsimp only [live3298, coloured3298]
  rw [child]
  dsimp only [result3297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3299_agree_conditional : tree3299 = literal3299 := by
  rw [tree3299_def]
  rfl
theorem node3299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3299 live3299 coloured3299 = result3299 := by
  rw [tree3299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3300_agree_conditional
    (child0 : tree3298 = literal3298)
    (child1 : tree3299 = literal3299) : tree3300 = literal3300 := by
  rw [tree3300_def, child0, child1]
  rfl
theorem node3300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3298 live3298 coloured3298 = result3298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3299 live3299 coloured3299 = result3299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3300 live3300 coloured3300 = result3300 := by
  rw [tree3300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3298 coloured3298 at child
  try dsimp only [live3300, coloured3300]
  rw [child]
  dsimp only [result3298]
  have child := child1
  unfold live3299 coloured3299 at child
  try dsimp only [live3300, coloured3300]
  rw [child]
  dsimp only [result3299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3301_agree_conditional : tree3301 = literal3301 := by
  rw [tree3301_def]
  rfl
theorem node3301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3301 live3301 coloured3301 = result3301 := by
  rw [tree3301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3302_agree_conditional
    (child0 : tree3300 = literal3300)
    (child1 : tree3301 = literal3301) : tree3302 = literal3302 := by
  rw [tree3302_def, child0, child1]
  rfl
theorem node3302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3300 live3300 coloured3300 = result3300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3301 live3301 coloured3301 = result3301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3302 live3302 coloured3302 = result3302 := by
  rw [tree3302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3300 coloured3300 at child
  try dsimp only [live3302, coloured3302]
  rw [child]
  dsimp only [result3300]
  have child := child1
  unfold live3301 coloured3301 at child
  try dsimp only [live3302, coloured3302]
  rw [child]
  dsimp only [result3301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3303_agree_conditional : tree3303 = literal3303 := by
  rw [tree3303_def]
  rfl
theorem node3303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3303 live3303 coloured3303 = result3303 := by
  rw [tree3303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3304_agree_conditional
    (child0 : tree3302 = literal3302)
    (child1 : tree3303 = literal3303) : tree3304 = literal3304 := by
  rw [tree3304_def, child0, child1]
  rfl
theorem node3304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3302 live3302 coloured3302 = result3302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3303 live3303 coloured3303 = result3303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3304 live3304 coloured3304 = result3304 := by
  rw [tree3304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3302 coloured3302 at child
  try dsimp only [live3304, coloured3304]
  rw [child]
  dsimp only [result3302]
  have child := child1
  unfold live3303 coloured3303 at child
  try dsimp only [live3304, coloured3304]
  rw [child]
  dsimp only [result3303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3305_agree_conditional : tree3305 = literal3305 := by
  rw [tree3305_def]
  rfl
theorem node3305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3305 live3305 coloured3305 = result3305 := by
  rw [tree3305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3306_agree_conditional
    (child0 : tree3304 = literal3304)
    (child1 : tree3305 = literal3305) : tree3306 = literal3306 := by
  rw [tree3306_def, child0, child1]
  rfl
theorem node3306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3304 live3304 coloured3304 = result3304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3305 live3305 coloured3305 = result3305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3306 live3306 coloured3306 = result3306 := by
  rw [tree3306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3304 coloured3304 at child
  try dsimp only [live3306, coloured3306]
  rw [child]
  dsimp only [result3304]
  have child := child1
  unfold live3305 coloured3305 at child
  try dsimp only [live3306, coloured3306]
  rw [child]
  dsimp only [result3305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3307_agree_conditional : tree3307 = literal3307 := by
  rw [tree3307_def]
  rfl
theorem node3307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3307 live3307 coloured3307 = result3307 := by
  rw [tree3307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3308_agree_conditional
    (child0 : tree3306 = literal3306)
    (child1 : tree3307 = literal3307) : tree3308 = literal3308 := by
  rw [tree3308_def, child0, child1]
  rfl
theorem node3308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3306 live3306 coloured3306 = result3306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3307 live3307 coloured3307 = result3307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3308 live3308 coloured3308 = result3308 := by
  rw [tree3308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3306 coloured3306 at child
  try dsimp only [live3308, coloured3308]
  rw [child]
  dsimp only [result3306]
  have child := child1
  unfold live3307 coloured3307 at child
  try dsimp only [live3308, coloured3308]
  rw [child]
  dsimp only [result3307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3309_agree_conditional : tree3309 = literal3309 := by
  rw [tree3309_def]
  rfl
theorem node3309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3309 live3309 coloured3309 = result3309 := by
  rw [tree3309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3310_agree_conditional
    (child0 : tree3308 = literal3308)
    (child1 : tree3309 = literal3309) : tree3310 = literal3310 := by
  rw [tree3310_def, child0, child1]
  rfl
theorem node3310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3308 live3308 coloured3308 = result3308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3309 live3309 coloured3309 = result3309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3310 live3310 coloured3310 = result3310 := by
  rw [tree3310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3308 coloured3308 at child
  try dsimp only [live3310, coloured3310]
  rw [child]
  dsimp only [result3308]
  have child := child1
  unfold live3309 coloured3309 at child
  try dsimp only [live3310, coloured3310]
  rw [child]
  dsimp only [result3309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3311_agree_conditional : tree3311 = literal3311 := by
  rw [tree3311_def]
  rfl
theorem node3311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3311 live3311 coloured3311 = result3311 := by
  rw [tree3311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3312_agree_conditional
    (child0 : tree3310 = literal3310)
    (child1 : tree3311 = literal3311) : tree3312 = literal3312 := by
  rw [tree3312_def, child0, child1]
  rfl
theorem node3312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3310 live3310 coloured3310 = result3310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3311 live3311 coloured3311 = result3311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3312 live3312 coloured3312 = result3312 := by
  rw [tree3312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3310 coloured3310 at child
  try dsimp only [live3312, coloured3312]
  rw [child]
  dsimp only [result3310]
  have child := child1
  unfold live3311 coloured3311 at child
  try dsimp only [live3312, coloured3312]
  rw [child]
  dsimp only [result3311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3313_agree_conditional : tree3313 = literal3313 := by
  rw [tree3313_def]
  rfl
theorem node3313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3313 live3313 coloured3313 = result3313 := by
  rw [tree3313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3314_agree_conditional
    (child0 : tree3312 = literal3312)
    (child1 : tree3313 = literal3313) : tree3314 = literal3314 := by
  rw [tree3314_def, child0, child1]
  rfl
theorem node3314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3312 live3312 coloured3312 = result3312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3313 live3313 coloured3313 = result3313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3314 live3314 coloured3314 = result3314 := by
  rw [tree3314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3312 coloured3312 at child
  try dsimp only [live3314, coloured3314]
  rw [child]
  dsimp only [result3312]
  have child := child1
  unfold live3313 coloured3313 at child
  try dsimp only [live3314, coloured3314]
  rw [child]
  dsimp only [result3313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3315_agree_conditional : tree3315 = literal3315 := by
  rw [tree3315_def]
  rfl
theorem node3315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3315 live3315 coloured3315 = result3315 := by
  rw [tree3315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3316_agree_conditional
    (child0 : tree3314 = literal3314)
    (child1 : tree3315 = literal3315) : tree3316 = literal3316 := by
  rw [tree3316_def, child0, child1]
  rfl
theorem node3316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3314 live3314 coloured3314 = result3314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3315 live3315 coloured3315 = result3315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3316 live3316 coloured3316 = result3316 := by
  rw [tree3316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3314 coloured3314 at child
  try dsimp only [live3316, coloured3316]
  rw [child]
  dsimp only [result3314]
  have child := child1
  unfold live3315 coloured3315 at child
  try dsimp only [live3316, coloured3316]
  rw [child]
  dsimp only [result3315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3317_agree_conditional : tree3317 = literal3317 := by
  rw [tree3317_def]
  rfl
theorem node3317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3317 live3317 coloured3317 = result3317 := by
  rw [tree3317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3318_agree_conditional
    (child0 : tree3316 = literal3316)
    (child1 : tree3317 = literal3317) : tree3318 = literal3318 := by
  rw [tree3318_def, child0, child1]
  rfl
theorem node3318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3316 live3316 coloured3316 = result3316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3317 live3317 coloured3317 = result3317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3318 live3318 coloured3318 = result3318 := by
  rw [tree3318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3316 coloured3316 at child
  try dsimp only [live3318, coloured3318]
  rw [child]
  dsimp only [result3316]
  have child := child1
  unfold live3317 coloured3317 at child
  try dsimp only [live3318, coloured3318]
  rw [child]
  dsimp only [result3317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3319_agree_conditional : tree3319 = literal3319 := by
  rw [tree3319_def]
  rfl
theorem node3319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3319 live3319 coloured3319 = result3319 := by
  rw [tree3319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3320_agree_conditional
    (child0 : tree3318 = literal3318)
    (child1 : tree3319 = literal3319) : tree3320 = literal3320 := by
  rw [tree3320_def, child0, child1]
  rfl
theorem node3320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3318 live3318 coloured3318 = result3318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3319 live3319 coloured3319 = result3319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3320 live3320 coloured3320 = result3320 := by
  rw [tree3320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3318 coloured3318 at child
  try dsimp only [live3320, coloured3320]
  rw [child]
  dsimp only [result3318]
  have child := child1
  unfold live3319 coloured3319 at child
  try dsimp only [live3320, coloured3320]
  rw [child]
  dsimp only [result3319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3321_agree_conditional : tree3321 = literal3321 := by
  rw [tree3321_def]
  rfl
theorem node3321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3321 live3321 coloured3321 = result3321 := by
  rw [tree3321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3322_agree_conditional
    (child0 : tree3320 = literal3320)
    (child1 : tree3321 = literal3321) : tree3322 = literal3322 := by
  rw [tree3322_def, child0, child1]
  rfl
theorem node3322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3320 live3320 coloured3320 = result3320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3321 live3321 coloured3321 = result3321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3322 live3322 coloured3322 = result3322 := by
  rw [tree3322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3320 coloured3320 at child
  try dsimp only [live3322, coloured3322]
  rw [child]
  dsimp only [result3320]
  have child := child1
  unfold live3321 coloured3321 at child
  try dsimp only [live3322, coloured3322]
  rw [child]
  dsimp only [result3321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3323_agree_conditional : tree3323 = literal3323 := by
  rw [tree3323_def]
  rfl
theorem node3323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3323 live3323 coloured3323 = result3323 := by
  rw [tree3323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3324_agree_conditional
    (child0 : tree3322 = literal3322)
    (child1 : tree3323 = literal3323) : tree3324 = literal3324 := by
  rw [tree3324_def, child0, child1]
  rfl
theorem node3324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3322 live3322 coloured3322 = result3322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3323 live3323 coloured3323 = result3323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3324 live3324 coloured3324 = result3324 := by
  rw [tree3324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3322 coloured3322 at child
  try dsimp only [live3324, coloured3324]
  rw [child]
  dsimp only [result3322]
  have child := child1
  unfold live3323 coloured3323 at child
  try dsimp only [live3324, coloured3324]
  rw [child]
  dsimp only [result3323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3325_agree_conditional : tree3325 = literal3325 := by
  rw [tree3325_def]
  rfl
theorem node3325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3325 live3325 coloured3325 = result3325 := by
  rw [tree3325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3326_agree_conditional
    (child0 : tree3324 = literal3324)
    (child1 : tree3325 = literal3325) : tree3326 = literal3326 := by
  rw [tree3326_def, child0, child1]
  rfl
theorem node3326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3324 live3324 coloured3324 = result3324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3325 live3325 coloured3325 = result3325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3326 live3326 coloured3326 = result3326 := by
  rw [tree3326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3324 coloured3324 at child
  try dsimp only [live3326, coloured3326]
  rw [child]
  dsimp only [result3324]
  have child := child1
  unfold live3325 coloured3325 at child
  try dsimp only [live3326, coloured3326]
  rw [child]
  dsimp only [result3325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3327_agree_conditional : tree3327 = literal3327 := by
  rw [tree3327_def]
  rfl
theorem node3327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3327 live3327 coloured3327 = result3327 := by
  rw [tree3327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3328_agree_conditional
    (child0 : tree3326 = literal3326)
    (child1 : tree3327 = literal3327) : tree3328 = literal3328 := by
  rw [tree3328_def, child0, child1]
  rfl
theorem node3328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3326 live3326 coloured3326 = result3326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3327 live3327 coloured3327 = result3327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3328 live3328 coloured3328 = result3328 := by
  rw [tree3328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3326 coloured3326 at child
  try dsimp only [live3328, coloured3328]
  rw [child]
  dsimp only [result3326]
  have child := child1
  unfold live3327 coloured3327 at child
  try dsimp only [live3328, coloured3328]
  rw [child]
  dsimp only [result3327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3329_agree_conditional : tree3329 = literal3329 := by
  rw [tree3329_def]
  rfl
theorem node3329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3329 live3329 coloured3329 = result3329 := by
  rw [tree3329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3330_agree_conditional
    (child0 : tree3328 = literal3328)
    (child1 : tree3329 = literal3329) : tree3330 = literal3330 := by
  rw [tree3330_def, child0, child1]
  rfl
theorem node3330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3328 live3328 coloured3328 = result3328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3329 live3329 coloured3329 = result3329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3330 live3330 coloured3330 = result3330 := by
  rw [tree3330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3328 coloured3328 at child
  try dsimp only [live3330, coloured3330]
  rw [child]
  dsimp only [result3328]
  have child := child1
  unfold live3329 coloured3329 at child
  try dsimp only [live3330, coloured3330]
  rw [child]
  dsimp only [result3329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3331_agree_conditional : tree3331 = literal3331 := by
  rw [tree3331_def]
  rfl
theorem node3331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3331 live3331 coloured3331 = result3331 := by
  rw [tree3331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3332_agree_conditional
    (child0 : tree3330 = literal3330)
    (child1 : tree3331 = literal3331) : tree3332 = literal3332 := by
  rw [tree3332_def, child0, child1]
  rfl
theorem node3332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3330 live3330 coloured3330 = result3330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3331 live3331 coloured3331 = result3331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3332 live3332 coloured3332 = result3332 := by
  rw [tree3332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3330 coloured3330 at child
  try dsimp only [live3332, coloured3332]
  rw [child]
  dsimp only [result3330]
  have child := child1
  unfold live3331 coloured3331 at child
  try dsimp only [live3332, coloured3332]
  rw [child]
  dsimp only [result3331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3333_agree_conditional : tree3333 = literal3333 := by
  rw [tree3333_def]
  rfl
theorem node3333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3333 live3333 coloured3333 = result3333 := by
  rw [tree3333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3334_agree_conditional
    (child0 : tree3332 = literal3332)
    (child1 : tree3333 = literal3333) : tree3334 = literal3334 := by
  rw [tree3334_def, child0, child1]
  rfl
theorem node3334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3332 live3332 coloured3332 = result3332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3333 live3333 coloured3333 = result3333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3334 live3334 coloured3334 = result3334 := by
  rw [tree3334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3332 coloured3332 at child
  try dsimp only [live3334, coloured3334]
  rw [child]
  dsimp only [result3332]
  have child := child1
  unfold live3333 coloured3333 at child
  try dsimp only [live3334, coloured3334]
  rw [child]
  dsimp only [result3333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3335_agree_conditional : tree3335 = literal3335 := by
  rw [tree3335_def]
  rfl
theorem node3335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3335 live3335 coloured3335 = result3335 := by
  rw [tree3335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3336_agree_conditional
    (child0 : tree3334 = literal3334)
    (child1 : tree3335 = literal3335) : tree3336 = literal3336 := by
  rw [tree3336_def, child0, child1]
  rfl
theorem node3336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3334 live3334 coloured3334 = result3334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3335 live3335 coloured3335 = result3335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3336 live3336 coloured3336 = result3336 := by
  rw [tree3336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3334 coloured3334 at child
  try dsimp only [live3336, coloured3336]
  rw [child]
  dsimp only [result3334]
  have child := child1
  unfold live3335 coloured3335 at child
  try dsimp only [live3336, coloured3336]
  rw [child]
  dsimp only [result3335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3337_agree_conditional : tree3337 = literal3337 := by
  rw [tree3337_def]
  rfl
theorem node3337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3337 live3337 coloured3337 = result3337 := by
  rw [tree3337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3338_agree_conditional
    (child0 : tree3336 = literal3336)
    (child1 : tree3337 = literal3337) : tree3338 = literal3338 := by
  rw [tree3338_def, child0, child1]
  rfl
theorem node3338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3336 live3336 coloured3336 = result3336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3337 live3337 coloured3337 = result3337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3338 live3338 coloured3338 = result3338 := by
  rw [tree3338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3336 coloured3336 at child
  try dsimp only [live3338, coloured3338]
  rw [child]
  dsimp only [result3336]
  have child := child1
  unfold live3337 coloured3337 at child
  try dsimp only [live3338, coloured3338]
  rw [child]
  dsimp only [result3337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3339_agree_conditional : tree3339 = literal3339 := by
  rw [tree3339_def]
  rfl
theorem node3339_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3339 live3339 coloured3339 = result3339 := by
  rw [tree3339_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3340_agree_conditional
    (child0 : tree3338 = literal3338)
    (child1 : tree3339 = literal3339) : tree3340 = literal3340 := by
  rw [tree3340_def, child0, child1]
  rfl
theorem node3340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3338 live3338 coloured3338 = result3338)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3339 live3339 coloured3339 = result3339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3340 live3340 coloured3340 = result3340 := by
  rw [tree3340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3338 coloured3338 at child
  try dsimp only [live3340, coloured3340]
  rw [child]
  dsimp only [result3338]
  have child := child1
  unfold live3339 coloured3339 at child
  try dsimp only [live3340, coloured3340]
  rw [child]
  dsimp only [result3339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3341_agree_conditional : tree3341 = literal3341 := by
  rw [tree3341_def]
  rfl
theorem node3341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3341 live3341 coloured3341 = result3341 := by
  rw [tree3341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3342_agree_conditional
    (child0 : tree3340 = literal3340)
    (child1 : tree3341 = literal3341) : tree3342 = literal3342 := by
  rw [tree3342_def, child0, child1]
  rfl
theorem node3342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3340 live3340 coloured3340 = result3340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3341 live3341 coloured3341 = result3341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3342 live3342 coloured3342 = result3342 := by
  rw [tree3342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3340 coloured3340 at child
  try dsimp only [live3342, coloured3342]
  rw [child]
  dsimp only [result3340]
  have child := child1
  unfold live3341 coloured3341 at child
  try dsimp only [live3342, coloured3342]
  rw [child]
  dsimp only [result3341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3343_agree_conditional : tree3343 = literal3343 := by
  rw [tree3343_def]
  rfl
theorem node3343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3343 live3343 coloured3343 = result3343 := by
  rw [tree3343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3344_agree_conditional
    (child0 : tree3342 = literal3342)
    (child1 : tree3343 = literal3343) : tree3344 = literal3344 := by
  rw [tree3344_def, child0, child1]
  rfl
theorem node3344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3342 live3342 coloured3342 = result3342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3343 live3343 coloured3343 = result3343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3344 live3344 coloured3344 = result3344 := by
  rw [tree3344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3342 coloured3342 at child
  try dsimp only [live3344, coloured3344]
  rw [child]
  dsimp only [result3342]
  have child := child1
  unfold live3343 coloured3343 at child
  try dsimp only [live3344, coloured3344]
  rw [child]
  dsimp only [result3343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3345_agree_conditional : tree3345 = literal3345 := by
  rw [tree3345_def]
  rfl
theorem node3345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3345 live3345 coloured3345 = result3345 := by
  rw [tree3345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3346_agree_conditional
    (child0 : tree3344 = literal3344)
    (child1 : tree3345 = literal3345) : tree3346 = literal3346 := by
  rw [tree3346_def, child0, child1]
  rfl
theorem node3346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3344 live3344 coloured3344 = result3344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3345 live3345 coloured3345 = result3345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3346 live3346 coloured3346 = result3346 := by
  rw [tree3346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3344 coloured3344 at child
  try dsimp only [live3346, coloured3346]
  rw [child]
  dsimp only [result3344]
  have child := child1
  unfold live3345 coloured3345 at child
  try dsimp only [live3346, coloured3346]
  rw [child]
  dsimp only [result3345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3347_agree_conditional : tree3347 = literal3347 := by
  rw [tree3347_def]
  rfl
theorem node3347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3347 live3347 coloured3347 = result3347 := by
  rw [tree3347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3348_agree_conditional
    (child0 : tree3346 = literal3346)
    (child1 : tree3347 = literal3347) : tree3348 = literal3348 := by
  rw [tree3348_def, child0, child1]
  rfl
theorem node3348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3346 live3346 coloured3346 = result3346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3347 live3347 coloured3347 = result3347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3348 live3348 coloured3348 = result3348 := by
  rw [tree3348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3346 coloured3346 at child
  try dsimp only [live3348, coloured3348]
  rw [child]
  dsimp only [result3346]
  have child := child1
  unfold live3347 coloured3347 at child
  try dsimp only [live3348, coloured3348]
  rw [child]
  dsimp only [result3347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3349_agree_conditional : tree3349 = literal3349 := by
  rw [tree3349_def]
  rfl
theorem node3349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3349 live3349 coloured3349 = result3349 := by
  rw [tree3349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3350_agree_conditional
    (child0 : tree3348 = literal3348)
    (child1 : tree3349 = literal3349) : tree3350 = literal3350 := by
  rw [tree3350_def, child0, child1]
  rfl
theorem node3350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3348 live3348 coloured3348 = result3348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3349 live3349 coloured3349 = result3349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3350 live3350 coloured3350 = result3350 := by
  rw [tree3350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3348 coloured3348 at child
  try dsimp only [live3350, coloured3350]
  rw [child]
  dsimp only [result3348]
  have child := child1
  unfold live3349 coloured3349 at child
  try dsimp only [live3350, coloured3350]
  rw [child]
  dsimp only [result3349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3351_agree_conditional : tree3351 = literal3351 := by
  rw [tree3351_def]
  rfl
theorem node3351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3351 live3351 coloured3351 = result3351 := by
  rw [tree3351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3352_agree_conditional
    (child0 : tree3350 = literal3350)
    (child1 : tree3351 = literal3351) : tree3352 = literal3352 := by
  rw [tree3352_def, child0, child1]
  rfl
theorem node3352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3350 live3350 coloured3350 = result3350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3351 live3351 coloured3351 = result3351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3352 live3352 coloured3352 = result3352 := by
  rw [tree3352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3350 coloured3350 at child
  try dsimp only [live3352, coloured3352]
  rw [child]
  dsimp only [result3350]
  have child := child1
  unfold live3351 coloured3351 at child
  try dsimp only [live3352, coloured3352]
  rw [child]
  dsimp only [result3351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3353_agree_conditional : tree3353 = literal3353 := by
  rw [tree3353_def]
  rfl
theorem node3353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3353 live3353 coloured3353 = result3353 := by
  rw [tree3353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3354_agree_conditional
    (child0 : tree3352 = literal3352)
    (child1 : tree3353 = literal3353) : tree3354 = literal3354 := by
  rw [tree3354_def, child0, child1]
  rfl
theorem node3354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3352 live3352 coloured3352 = result3352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3353 live3353 coloured3353 = result3353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3354 live3354 coloured3354 = result3354 := by
  rw [tree3354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3352 coloured3352 at child
  try dsimp only [live3354, coloured3354]
  rw [child]
  dsimp only [result3352]
  have child := child1
  unfold live3353 coloured3353 at child
  try dsimp only [live3354, coloured3354]
  rw [child]
  dsimp only [result3353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3355_agree_conditional : tree3355 = literal3355 := by
  rw [tree3355_def]
  rfl
theorem node3355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3355 live3355 coloured3355 = result3355 := by
  rw [tree3355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3356_agree_conditional
    (child0 : tree3354 = literal3354)
    (child1 : tree3355 = literal3355) : tree3356 = literal3356 := by
  rw [tree3356_def, child0, child1]
  rfl
theorem node3356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3354 live3354 coloured3354 = result3354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3355 live3355 coloured3355 = result3355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3356 live3356 coloured3356 = result3356 := by
  rw [tree3356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3354 coloured3354 at child
  try dsimp only [live3356, coloured3356]
  rw [child]
  dsimp only [result3354]
  have child := child1
  unfold live3355 coloured3355 at child
  try dsimp only [live3356, coloured3356]
  rw [child]
  dsimp only [result3355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3357_agree_conditional : tree3357 = literal3357 := by
  rw [tree3357_def]
  rfl
theorem node3357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3357 live3357 coloured3357 = result3357 := by
  rw [tree3357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3358_agree_conditional
    (child0 : tree3356 = literal3356)
    (child1 : tree3357 = literal3357) : tree3358 = literal3358 := by
  rw [tree3358_def, child0, child1]
  rfl
theorem node3358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3356 live3356 coloured3356 = result3356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3357 live3357 coloured3357 = result3357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3358 live3358 coloured3358 = result3358 := by
  rw [tree3358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3356 coloured3356 at child
  try dsimp only [live3358, coloured3358]
  rw [child]
  dsimp only [result3356]
  have child := child1
  unfold live3357 coloured3357 at child
  try dsimp only [live3358, coloured3358]
  rw [child]
  dsimp only [result3357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3359_agree_conditional : tree3359 = literal3359 := by
  rw [tree3359_def]
  rfl
theorem node3359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3359 live3359 coloured3359 = result3359 := by
  rw [tree3359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
