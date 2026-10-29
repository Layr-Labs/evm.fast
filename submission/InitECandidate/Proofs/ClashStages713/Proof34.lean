import InitECandidate.Proofs.ClashStages713.Proof33
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3264_agree : tree3264 = literal3264 := by
  rw [tree3264_def, tree3262_agree, tree3263_agree]
  rfl
theorem node3264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3264 live3264 coloured3264 = result3264 := by
  rw [tree3264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3262_eq
  unfold live3262 coloured3262 at child
  try dsimp only [live3264, coloured3264]
  rw [child]
  dsimp only [result3262]
  have child := node3263_eq
  unfold live3263 coloured3263 at child
  try dsimp only [live3264, coloured3264]
  rw [child]
  dsimp only [result3263]
  try dsimp only [colour, result3264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3265_agree : tree3265 = literal3265 := by
  rw [tree3265_def]
  rfl
theorem node3265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3265 live3265 coloured3265 = result3265 := by
  rw [tree3265_def]
  try dsimp only [colour, result3265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3266_agree : tree3266 = literal3266 := by
  rw [tree3266_def, tree3264_agree, tree3265_agree]
  rfl
theorem node3266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3266 live3266 coloured3266 = result3266 := by
  rw [tree3266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3264_eq
  unfold live3264 coloured3264 at child
  try dsimp only [live3266, coloured3266]
  rw [child]
  dsimp only [result3264]
  have child := node3265_eq
  unfold live3265 coloured3265 at child
  try dsimp only [live3266, coloured3266]
  rw [child]
  dsimp only [result3265]
  try dsimp only [colour, result3266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3267_agree : tree3267 = literal3267 := by
  rw [tree3267_def]
  rfl
theorem node3267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3267 live3267 coloured3267 = result3267 := by
  rw [tree3267_def]
  try dsimp only [colour, result3267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3268_agree : tree3268 = literal3268 := by
  rw [tree3268_def, tree3266_agree, tree3267_agree]
  rfl
theorem node3268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3268 live3268 coloured3268 = result3268 := by
  rw [tree3268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3266_eq
  unfold live3266 coloured3266 at child
  try dsimp only [live3268, coloured3268]
  rw [child]
  dsimp only [result3266]
  have child := node3267_eq
  unfold live3267 coloured3267 at child
  try dsimp only [live3268, coloured3268]
  rw [child]
  dsimp only [result3267]
  try dsimp only [colour, result3268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3269_agree : tree3269 = literal3269 := by
  rw [tree3269_def]
  rfl
theorem node3269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3269 live3269 coloured3269 = result3269 := by
  rw [tree3269_def]
  try dsimp only [colour, result3269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3270_agree : tree3270 = literal3270 := by
  rw [tree3270_def, tree3268_agree, tree3269_agree]
  rfl
theorem node3270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3270 live3270 coloured3270 = result3270 := by
  rw [tree3270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3268_eq
  unfold live3268 coloured3268 at child
  try dsimp only [live3270, coloured3270]
  rw [child]
  dsimp only [result3268]
  have child := node3269_eq
  unfold live3269 coloured3269 at child
  try dsimp only [live3270, coloured3270]
  rw [child]
  dsimp only [result3269]
  try dsimp only [colour, result3270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3271_agree : tree3271 = literal3271 := by
  rw [tree3271_def]
  rfl
theorem node3271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3271 live3271 coloured3271 = result3271 := by
  rw [tree3271_def]
  try dsimp only [colour, result3271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3272_agree : tree3272 = literal3272 := by
  rw [tree3272_def, tree3270_agree, tree3271_agree]
  rfl
theorem node3272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3272 live3272 coloured3272 = result3272 := by
  rw [tree3272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3270_eq
  unfold live3270 coloured3270 at child
  try dsimp only [live3272, coloured3272]
  rw [child]
  dsimp only [result3270]
  have child := node3271_eq
  unfold live3271 coloured3271 at child
  try dsimp only [live3272, coloured3272]
  rw [child]
  dsimp only [result3271]
  try dsimp only [colour, result3272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3273_agree : tree3273 = literal3273 := by
  rw [tree3273_def]
  rfl
theorem node3273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3273 live3273 coloured3273 = result3273 := by
  rw [tree3273_def]
  try dsimp only [colour, result3273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3274_agree : tree3274 = literal3274 := by
  rw [tree3274_def, tree3272_agree, tree3273_agree]
  rfl
theorem node3274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3274 live3274 coloured3274 = result3274 := by
  rw [tree3274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3272_eq
  unfold live3272 coloured3272 at child
  try dsimp only [live3274, coloured3274]
  rw [child]
  dsimp only [result3272]
  have child := node3273_eq
  unfold live3273 coloured3273 at child
  try dsimp only [live3274, coloured3274]
  rw [child]
  dsimp only [result3273]
  try dsimp only [colour, result3274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3275_agree : tree3275 = literal3275 := by
  rw [tree3275_def]
  rfl
theorem node3275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3275 live3275 coloured3275 = result3275 := by
  rw [tree3275_def]
  try dsimp only [colour, result3275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3276_agree : tree3276 = literal3276 := by
  rw [tree3276_def, tree3274_agree, tree3275_agree]
  rfl
theorem node3276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3276 live3276 coloured3276 = result3276 := by
  rw [tree3276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3274_eq
  unfold live3274 coloured3274 at child
  try dsimp only [live3276, coloured3276]
  rw [child]
  dsimp only [result3274]
  have child := node3275_eq
  unfold live3275 coloured3275 at child
  try dsimp only [live3276, coloured3276]
  rw [child]
  dsimp only [result3275]
  try dsimp only [colour, result3276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3277_agree : tree3277 = literal3277 := by
  rw [tree3277_def]
  rfl
theorem node3277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3277 live3277 coloured3277 = result3277 := by
  rw [tree3277_def]
  try dsimp only [colour, result3277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3278_agree : tree3278 = literal3278 := by
  rw [tree3278_def, tree3276_agree, tree3277_agree]
  rfl
theorem node3278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3278 live3278 coloured3278 = result3278 := by
  rw [tree3278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3276_eq
  unfold live3276 coloured3276 at child
  try dsimp only [live3278, coloured3278]
  rw [child]
  dsimp only [result3276]
  have child := node3277_eq
  unfold live3277 coloured3277 at child
  try dsimp only [live3278, coloured3278]
  rw [child]
  dsimp only [result3277]
  try dsimp only [colour, result3278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3279_agree : tree3279 = literal3279 := by
  rw [tree3279_def]
  rfl
theorem node3279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3279 live3279 coloured3279 = result3279 := by
  rw [tree3279_def]
  try dsimp only [colour, result3279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3280_agree : tree3280 = literal3280 := by
  rw [tree3280_def, tree3278_agree, tree3279_agree]
  rfl
theorem node3280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3280 live3280 coloured3280 = result3280 := by
  rw [tree3280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3278_eq
  unfold live3278 coloured3278 at child
  try dsimp only [live3280, coloured3280]
  rw [child]
  dsimp only [result3278]
  have child := node3279_eq
  unfold live3279 coloured3279 at child
  try dsimp only [live3280, coloured3280]
  rw [child]
  dsimp only [result3279]
  try dsimp only [colour, result3280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3281_agree : tree3281 = literal3281 := by
  rw [tree3281_def]
  rfl
theorem node3281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3281 live3281 coloured3281 = result3281 := by
  rw [tree3281_def]
  try dsimp only [colour, result3281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3282_agree : tree3282 = literal3282 := by
  rw [tree3282_def, tree3280_agree, tree3281_agree]
  rfl
theorem node3282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3282 live3282 coloured3282 = result3282 := by
  rw [tree3282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3280_eq
  unfold live3280 coloured3280 at child
  try dsimp only [live3282, coloured3282]
  rw [child]
  dsimp only [result3280]
  have child := node3281_eq
  unfold live3281 coloured3281 at child
  try dsimp only [live3282, coloured3282]
  rw [child]
  dsimp only [result3281]
  try dsimp only [colour, result3282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3283_agree : tree3283 = literal3283 := by
  rw [tree3283_def]
  rfl
theorem node3283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3283 live3283 coloured3283 = result3283 := by
  rw [tree3283_def]
  try dsimp only [colour, result3283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3284_agree : tree3284 = literal3284 := by
  rw [tree3284_def, tree3282_agree, tree3283_agree]
  rfl
theorem node3284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3284 live3284 coloured3284 = result3284 := by
  rw [tree3284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3282_eq
  unfold live3282 coloured3282 at child
  try dsimp only [live3284, coloured3284]
  rw [child]
  dsimp only [result3282]
  have child := node3283_eq
  unfold live3283 coloured3283 at child
  try dsimp only [live3284, coloured3284]
  rw [child]
  dsimp only [result3283]
  try dsimp only [colour, result3284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3285_agree : tree3285 = literal3285 := by
  rw [tree3285_def]
  rfl
theorem node3285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3285 live3285 coloured3285 = result3285 := by
  rw [tree3285_def]
  try dsimp only [colour, result3285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3286_agree : tree3286 = literal3286 := by
  rw [tree3286_def, tree3284_agree, tree3285_agree]
  rfl
theorem node3286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3286 live3286 coloured3286 = result3286 := by
  rw [tree3286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3284_eq
  unfold live3284 coloured3284 at child
  try dsimp only [live3286, coloured3286]
  rw [child]
  dsimp only [result3284]
  have child := node3285_eq
  unfold live3285 coloured3285 at child
  try dsimp only [live3286, coloured3286]
  rw [child]
  dsimp only [result3285]
  try dsimp only [colour, result3286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3287_agree : tree3287 = literal3287 := by
  rw [tree3287_def]
  rfl
theorem node3287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3287 live3287 coloured3287 = result3287 := by
  rw [tree3287_def]
  try dsimp only [colour, result3287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3288_agree : tree3288 = literal3288 := by
  rw [tree3288_def, tree3286_agree, tree3287_agree]
  rfl
theorem node3288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3288 live3288 coloured3288 = result3288 := by
  rw [tree3288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3286_eq
  unfold live3286 coloured3286 at child
  try dsimp only [live3288, coloured3288]
  rw [child]
  dsimp only [result3286]
  have child := node3287_eq
  unfold live3287 coloured3287 at child
  try dsimp only [live3288, coloured3288]
  rw [child]
  dsimp only [result3287]
  try dsimp only [colour, result3288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3289_agree : tree3289 = literal3289 := by
  rw [tree3289_def]
  rfl
theorem node3289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3289 live3289 coloured3289 = result3289 := by
  rw [tree3289_def]
  try dsimp only [colour, result3289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3290_agree : tree3290 = literal3290 := by
  rw [tree3290_def, tree3288_agree, tree3289_agree]
  rfl
theorem node3290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3290 live3290 coloured3290 = result3290 := by
  rw [tree3290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3288_eq
  unfold live3288 coloured3288 at child
  try dsimp only [live3290, coloured3290]
  rw [child]
  dsimp only [result3288]
  have child := node3289_eq
  unfold live3289 coloured3289 at child
  try dsimp only [live3290, coloured3290]
  rw [child]
  dsimp only [result3289]
  try dsimp only [colour, result3290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3291_agree : tree3291 = literal3291 := by
  rw [tree3291_def]
  rfl
theorem node3291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3291 live3291 coloured3291 = result3291 := by
  rw [tree3291_def]
  try dsimp only [colour, result3291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3292_agree : tree3292 = literal3292 := by
  rw [tree3292_def, tree3290_agree, tree3291_agree]
  rfl
theorem node3292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3292 live3292 coloured3292 = result3292 := by
  rw [tree3292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3290_eq
  unfold live3290 coloured3290 at child
  try dsimp only [live3292, coloured3292]
  rw [child]
  dsimp only [result3290]
  have child := node3291_eq
  unfold live3291 coloured3291 at child
  try dsimp only [live3292, coloured3292]
  rw [child]
  dsimp only [result3291]
  try dsimp only [colour, result3292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3293_agree : tree3293 = literal3293 := by
  rw [tree3293_def]
  rfl
theorem node3293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3293 live3293 coloured3293 = result3293 := by
  rw [tree3293_def]
  try dsimp only [colour, result3293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3294_agree : tree3294 = literal3294 := by
  rw [tree3294_def, tree3292_agree, tree3293_agree]
  rfl
theorem node3294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3294 live3294 coloured3294 = result3294 := by
  rw [tree3294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3292_eq
  unfold live3292 coloured3292 at child
  try dsimp only [live3294, coloured3294]
  rw [child]
  dsimp only [result3292]
  have child := node3293_eq
  unfold live3293 coloured3293 at child
  try dsimp only [live3294, coloured3294]
  rw [child]
  dsimp only [result3293]
  try dsimp only [colour, result3294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3295_agree : tree3295 = literal3295 := by
  rw [tree3295_def]
  rfl
theorem node3295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3295 live3295 coloured3295 = result3295 := by
  rw [tree3295_def]
  try dsimp only [colour, result3295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3296_agree : tree3296 = literal3296 := by
  rw [tree3296_def, tree3294_agree, tree3295_agree]
  rfl
theorem node3296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3296 live3296 coloured3296 = result3296 := by
  rw [tree3296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3294_eq
  unfold live3294 coloured3294 at child
  try dsimp only [live3296, coloured3296]
  rw [child]
  dsimp only [result3294]
  have child := node3295_eq
  unfold live3295 coloured3295 at child
  try dsimp only [live3296, coloured3296]
  rw [child]
  dsimp only [result3295]
  try dsimp only [colour, result3296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3297_agree : tree3297 = literal3297 := by
  rw [tree3297_def]
  rfl
theorem node3297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3297 live3297 coloured3297 = result3297 := by
  rw [tree3297_def]
  try dsimp only [colour, result3297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3298_agree : tree3298 = literal3298 := by
  rw [tree3298_def, tree3296_agree, tree3297_agree]
  rfl
theorem node3298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3298 live3298 coloured3298 = result3298 := by
  rw [tree3298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3296_eq
  unfold live3296 coloured3296 at child
  try dsimp only [live3298, coloured3298]
  rw [child]
  dsimp only [result3296]
  have child := node3297_eq
  unfold live3297 coloured3297 at child
  try dsimp only [live3298, coloured3298]
  rw [child]
  dsimp only [result3297]
  try dsimp only [colour, result3298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3299_agree : tree3299 = literal3299 := by
  rw [tree3299_def]
  rfl
theorem node3299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3299 live3299 coloured3299 = result3299 := by
  rw [tree3299_def]
  try dsimp only [colour, result3299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3300_agree : tree3300 = literal3300 := by
  rw [tree3300_def, tree3298_agree, tree3299_agree]
  rfl
theorem node3300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3300 live3300 coloured3300 = result3300 := by
  rw [tree3300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3298_eq
  unfold live3298 coloured3298 at child
  try dsimp only [live3300, coloured3300]
  rw [child]
  dsimp only [result3298]
  have child := node3299_eq
  unfold live3299 coloured3299 at child
  try dsimp only [live3300, coloured3300]
  rw [child]
  dsimp only [result3299]
  try dsimp only [colour, result3300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3301_agree : tree3301 = literal3301 := by
  rw [tree3301_def]
  rfl
theorem node3301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3301 live3301 coloured3301 = result3301 := by
  rw [tree3301_def]
  try dsimp only [colour, result3301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3302_agree : tree3302 = literal3302 := by
  rw [tree3302_def, tree3300_agree, tree3301_agree]
  rfl
theorem node3302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3302 live3302 coloured3302 = result3302 := by
  rw [tree3302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3300_eq
  unfold live3300 coloured3300 at child
  try dsimp only [live3302, coloured3302]
  rw [child]
  dsimp only [result3300]
  have child := node3301_eq
  unfold live3301 coloured3301 at child
  try dsimp only [live3302, coloured3302]
  rw [child]
  dsimp only [result3301]
  try dsimp only [colour, result3302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3303_agree : tree3303 = literal3303 := by
  rw [tree3303_def]
  rfl
theorem node3303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3303 live3303 coloured3303 = result3303 := by
  rw [tree3303_def]
  try dsimp only [colour, result3303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3304_agree : tree3304 = literal3304 := by
  rw [tree3304_def, tree3302_agree, tree3303_agree]
  rfl
theorem node3304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3304 live3304 coloured3304 = result3304 := by
  rw [tree3304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3302_eq
  unfold live3302 coloured3302 at child
  try dsimp only [live3304, coloured3304]
  rw [child]
  dsimp only [result3302]
  have child := node3303_eq
  unfold live3303 coloured3303 at child
  try dsimp only [live3304, coloured3304]
  rw [child]
  dsimp only [result3303]
  try dsimp only [colour, result3304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3305_agree : tree3305 = literal3305 := by
  rw [tree3305_def]
  rfl
theorem node3305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3305 live3305 coloured3305 = result3305 := by
  rw [tree3305_def]
  try dsimp only [colour, result3305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3306_agree : tree3306 = literal3306 := by
  rw [tree3306_def, tree3304_agree, tree3305_agree]
  rfl
theorem node3306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3306 live3306 coloured3306 = result3306 := by
  rw [tree3306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3304_eq
  unfold live3304 coloured3304 at child
  try dsimp only [live3306, coloured3306]
  rw [child]
  dsimp only [result3304]
  have child := node3305_eq
  unfold live3305 coloured3305 at child
  try dsimp only [live3306, coloured3306]
  rw [child]
  dsimp only [result3305]
  try dsimp only [colour, result3306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3307_agree : tree3307 = literal3307 := by
  rw [tree3307_def]
  rfl
theorem node3307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3307 live3307 coloured3307 = result3307 := by
  rw [tree3307_def]
  try dsimp only [colour, result3307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3308_agree : tree3308 = literal3308 := by
  rw [tree3308_def, tree3306_agree, tree3307_agree]
  rfl
theorem node3308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3308 live3308 coloured3308 = result3308 := by
  rw [tree3308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3306_eq
  unfold live3306 coloured3306 at child
  try dsimp only [live3308, coloured3308]
  rw [child]
  dsimp only [result3306]
  have child := node3307_eq
  unfold live3307 coloured3307 at child
  try dsimp only [live3308, coloured3308]
  rw [child]
  dsimp only [result3307]
  try dsimp only [colour, result3308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3309_agree : tree3309 = literal3309 := by
  rw [tree3309_def]
  rfl
theorem node3309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3309 live3309 coloured3309 = result3309 := by
  rw [tree3309_def]
  try dsimp only [colour, result3309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3310_agree : tree3310 = literal3310 := by
  rw [tree3310_def, tree3308_agree, tree3309_agree]
  rfl
theorem node3310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3310 live3310 coloured3310 = result3310 := by
  rw [tree3310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3308_eq
  unfold live3308 coloured3308 at child
  try dsimp only [live3310, coloured3310]
  rw [child]
  dsimp only [result3308]
  have child := node3309_eq
  unfold live3309 coloured3309 at child
  try dsimp only [live3310, coloured3310]
  rw [child]
  dsimp only [result3309]
  try dsimp only [colour, result3310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3311_agree : tree3311 = literal3311 := by
  rw [tree3311_def]
  rfl
theorem node3311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3311 live3311 coloured3311 = result3311 := by
  rw [tree3311_def]
  try dsimp only [colour, result3311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3312_agree : tree3312 = literal3312 := by
  rw [tree3312_def, tree3310_agree, tree3311_agree]
  rfl
theorem node3312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3312 live3312 coloured3312 = result3312 := by
  rw [tree3312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3310_eq
  unfold live3310 coloured3310 at child
  try dsimp only [live3312, coloured3312]
  rw [child]
  dsimp only [result3310]
  have child := node3311_eq
  unfold live3311 coloured3311 at child
  try dsimp only [live3312, coloured3312]
  rw [child]
  dsimp only [result3311]
  try dsimp only [colour, result3312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3313_agree : tree3313 = literal3313 := by
  rw [tree3313_def]
  rfl
theorem node3313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3313 live3313 coloured3313 = result3313 := by
  rw [tree3313_def]
  try dsimp only [colour, result3313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3314_agree : tree3314 = literal3314 := by
  rw [tree3314_def, tree3312_agree, tree3313_agree]
  rfl
theorem node3314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3314 live3314 coloured3314 = result3314 := by
  rw [tree3314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3312_eq
  unfold live3312 coloured3312 at child
  try dsimp only [live3314, coloured3314]
  rw [child]
  dsimp only [result3312]
  have child := node3313_eq
  unfold live3313 coloured3313 at child
  try dsimp only [live3314, coloured3314]
  rw [child]
  dsimp only [result3313]
  try dsimp only [colour, result3314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3315_agree : tree3315 = literal3315 := by
  rw [tree3315_def]
  rfl
theorem node3315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3315 live3315 coloured3315 = result3315 := by
  rw [tree3315_def]
  try dsimp only [colour, result3315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3316_agree : tree3316 = literal3316 := by
  rw [tree3316_def, tree3314_agree, tree3315_agree]
  rfl
theorem node3316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3316 live3316 coloured3316 = result3316 := by
  rw [tree3316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3314_eq
  unfold live3314 coloured3314 at child
  try dsimp only [live3316, coloured3316]
  rw [child]
  dsimp only [result3314]
  have child := node3315_eq
  unfold live3315 coloured3315 at child
  try dsimp only [live3316, coloured3316]
  rw [child]
  dsimp only [result3315]
  try dsimp only [colour, result3316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3317_agree : tree3317 = literal3317 := by
  rw [tree3317_def]
  rfl
theorem node3317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3317 live3317 coloured3317 = result3317 := by
  rw [tree3317_def]
  try dsimp only [colour, result3317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3318_agree : tree3318 = literal3318 := by
  rw [tree3318_def, tree3316_agree, tree3317_agree]
  rfl
theorem node3318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3318 live3318 coloured3318 = result3318 := by
  rw [tree3318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3316_eq
  unfold live3316 coloured3316 at child
  try dsimp only [live3318, coloured3318]
  rw [child]
  dsimp only [result3316]
  have child := node3317_eq
  unfold live3317 coloured3317 at child
  try dsimp only [live3318, coloured3318]
  rw [child]
  dsimp only [result3317]
  try dsimp only [colour, result3318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3319_agree : tree3319 = literal3319 := by
  rw [tree3319_def]
  rfl
theorem node3319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3319 live3319 coloured3319 = result3319 := by
  rw [tree3319_def]
  try dsimp only [colour, result3319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3320_agree : tree3320 = literal3320 := by
  rw [tree3320_def, tree3318_agree, tree3319_agree]
  rfl
theorem node3320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3320 live3320 coloured3320 = result3320 := by
  rw [tree3320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3318_eq
  unfold live3318 coloured3318 at child
  try dsimp only [live3320, coloured3320]
  rw [child]
  dsimp only [result3318]
  have child := node3319_eq
  unfold live3319 coloured3319 at child
  try dsimp only [live3320, coloured3320]
  rw [child]
  dsimp only [result3319]
  try dsimp only [colour, result3320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3321_agree : tree3321 = literal3321 := by
  rw [tree3321_def]
  rfl
theorem node3321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3321 live3321 coloured3321 = result3321 := by
  rw [tree3321_def]
  try dsimp only [colour, result3321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3322_agree : tree3322 = literal3322 := by
  rw [tree3322_def, tree3320_agree, tree3321_agree]
  rfl
theorem node3322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3322 live3322 coloured3322 = result3322 := by
  rw [tree3322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3320_eq
  unfold live3320 coloured3320 at child
  try dsimp only [live3322, coloured3322]
  rw [child]
  dsimp only [result3320]
  have child := node3321_eq
  unfold live3321 coloured3321 at child
  try dsimp only [live3322, coloured3322]
  rw [child]
  dsimp only [result3321]
  try dsimp only [colour, result3322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3323_agree : tree3323 = literal3323 := by
  rw [tree3323_def]
  rfl
theorem node3323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3323 live3323 coloured3323 = result3323 := by
  rw [tree3323_def]
  try dsimp only [colour, result3323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3324_agree : tree3324 = literal3324 := by
  rw [tree3324_def, tree3322_agree, tree3323_agree]
  rfl
theorem node3324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3324 live3324 coloured3324 = result3324 := by
  rw [tree3324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3322_eq
  unfold live3322 coloured3322 at child
  try dsimp only [live3324, coloured3324]
  rw [child]
  dsimp only [result3322]
  have child := node3323_eq
  unfold live3323 coloured3323 at child
  try dsimp only [live3324, coloured3324]
  rw [child]
  dsimp only [result3323]
  try dsimp only [colour, result3324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3325_agree : tree3325 = literal3325 := by
  rw [tree3325_def]
  rfl
theorem node3325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3325 live3325 coloured3325 = result3325 := by
  rw [tree3325_def]
  try dsimp only [colour, result3325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3326_agree : tree3326 = literal3326 := by
  rw [tree3326_def, tree3324_agree, tree3325_agree]
  rfl
theorem node3326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3326 live3326 coloured3326 = result3326 := by
  rw [tree3326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3324_eq
  unfold live3324 coloured3324 at child
  try dsimp only [live3326, coloured3326]
  rw [child]
  dsimp only [result3324]
  have child := node3325_eq
  unfold live3325 coloured3325 at child
  try dsimp only [live3326, coloured3326]
  rw [child]
  dsimp only [result3325]
  try dsimp only [colour, result3326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3327_agree : tree3327 = literal3327 := by
  rw [tree3327_def]
  rfl
theorem node3327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3327 live3327 coloured3327 = result3327 := by
  rw [tree3327_def]
  try dsimp only [colour, result3327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3328_agree : tree3328 = literal3328 := by
  rw [tree3328_def, tree3326_agree, tree3327_agree]
  rfl
theorem node3328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3328 live3328 coloured3328 = result3328 := by
  rw [tree3328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3326_eq
  unfold live3326 coloured3326 at child
  try dsimp only [live3328, coloured3328]
  rw [child]
  dsimp only [result3326]
  have child := node3327_eq
  unfold live3327 coloured3327 at child
  try dsimp only [live3328, coloured3328]
  rw [child]
  dsimp only [result3327]
  try dsimp only [colour, result3328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3329_agree : tree3329 = literal3329 := by
  rw [tree3329_def]
  rfl
theorem node3329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3329 live3329 coloured3329 = result3329 := by
  rw [tree3329_def]
  try dsimp only [colour, result3329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3330_agree : tree3330 = literal3330 := by
  rw [tree3330_def, tree3328_agree, tree3329_agree]
  rfl
theorem node3330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3330 live3330 coloured3330 = result3330 := by
  rw [tree3330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3328_eq
  unfold live3328 coloured3328 at child
  try dsimp only [live3330, coloured3330]
  rw [child]
  dsimp only [result3328]
  have child := node3329_eq
  unfold live3329 coloured3329 at child
  try dsimp only [live3330, coloured3330]
  rw [child]
  dsimp only [result3329]
  try dsimp only [colour, result3330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3331_agree : tree3331 = literal3331 := by
  rw [tree3331_def]
  rfl
theorem node3331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3331 live3331 coloured3331 = result3331 := by
  rw [tree3331_def]
  try dsimp only [colour, result3331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3332_agree : tree3332 = literal3332 := by
  rw [tree3332_def, tree3330_agree, tree3331_agree]
  rfl
theorem node3332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3332 live3332 coloured3332 = result3332 := by
  rw [tree3332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3330_eq
  unfold live3330 coloured3330 at child
  try dsimp only [live3332, coloured3332]
  rw [child]
  dsimp only [result3330]
  have child := node3331_eq
  unfold live3331 coloured3331 at child
  try dsimp only [live3332, coloured3332]
  rw [child]
  dsimp only [result3331]
  try dsimp only [colour, result3332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3333_agree : tree3333 = literal3333 := by
  rw [tree3333_def]
  rfl
theorem node3333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3333 live3333 coloured3333 = result3333 := by
  rw [tree3333_def]
  try dsimp only [colour, result3333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3334_agree : tree3334 = literal3334 := by
  rw [tree3334_def, tree3332_agree, tree3333_agree]
  rfl
theorem node3334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3334 live3334 coloured3334 = result3334 := by
  rw [tree3334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3332_eq
  unfold live3332 coloured3332 at child
  try dsimp only [live3334, coloured3334]
  rw [child]
  dsimp only [result3332]
  have child := node3333_eq
  unfold live3333 coloured3333 at child
  try dsimp only [live3334, coloured3334]
  rw [child]
  dsimp only [result3333]
  try dsimp only [colour, result3334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3335_agree : tree3335 = literal3335 := by
  rw [tree3335_def]
  rfl
theorem node3335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3335 live3335 coloured3335 = result3335 := by
  rw [tree3335_def]
  try dsimp only [colour, result3335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3336_agree : tree3336 = literal3336 := by
  rw [tree3336_def, tree3334_agree, tree3335_agree]
  rfl
theorem node3336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3336 live3336 coloured3336 = result3336 := by
  rw [tree3336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3334_eq
  unfold live3334 coloured3334 at child
  try dsimp only [live3336, coloured3336]
  rw [child]
  dsimp only [result3334]
  have child := node3335_eq
  unfold live3335 coloured3335 at child
  try dsimp only [live3336, coloured3336]
  rw [child]
  dsimp only [result3335]
  try dsimp only [colour, result3336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3337_agree : tree3337 = literal3337 := by
  rw [tree3337_def]
  rfl
theorem node3337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3337 live3337 coloured3337 = result3337 := by
  rw [tree3337_def]
  try dsimp only [colour, result3337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3338_agree : tree3338 = literal3338 := by
  rw [tree3338_def, tree3336_agree, tree3337_agree]
  rfl
theorem node3338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3338 live3338 coloured3338 = result3338 := by
  rw [tree3338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3336_eq
  unfold live3336 coloured3336 at child
  try dsimp only [live3338, coloured3338]
  rw [child]
  dsimp only [result3336]
  have child := node3337_eq
  unfold live3337 coloured3337 at child
  try dsimp only [live3338, coloured3338]
  rw [child]
  dsimp only [result3337]
  try dsimp only [colour, result3338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3339_agree : tree3339 = literal3339 := by
  rw [tree3339_def]
  rfl
theorem node3339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3339 live3339 coloured3339 = result3339 := by
  rw [tree3339_def]
  try dsimp only [colour, result3339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3340_agree : tree3340 = literal3340 := by
  rw [tree3340_def, tree3338_agree, tree3339_agree]
  rfl
theorem node3340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3340 live3340 coloured3340 = result3340 := by
  rw [tree3340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3338_eq
  unfold live3338 coloured3338 at child
  try dsimp only [live3340, coloured3340]
  rw [child]
  dsimp only [result3338]
  have child := node3339_eq
  unfold live3339 coloured3339 at child
  try dsimp only [live3340, coloured3340]
  rw [child]
  dsimp only [result3339]
  try dsimp only [colour, result3340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3341_agree : tree3341 = literal3341 := by
  rw [tree3341_def]
  rfl
theorem node3341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3341 live3341 coloured3341 = result3341 := by
  rw [tree3341_def]
  try dsimp only [colour, result3341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3342_agree : tree3342 = literal3342 := by
  rw [tree3342_def, tree3340_agree, tree3341_agree]
  rfl
theorem node3342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3342 live3342 coloured3342 = result3342 := by
  rw [tree3342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3340_eq
  unfold live3340 coloured3340 at child
  try dsimp only [live3342, coloured3342]
  rw [child]
  dsimp only [result3340]
  have child := node3341_eq
  unfold live3341 coloured3341 at child
  try dsimp only [live3342, coloured3342]
  rw [child]
  dsimp only [result3341]
  try dsimp only [colour, result3342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3343_agree : tree3343 = literal3343 := by
  rw [tree3343_def]
  rfl
theorem node3343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3343 live3343 coloured3343 = result3343 := by
  rw [tree3343_def]
  try dsimp only [colour, result3343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3344_agree : tree3344 = literal3344 := by
  rw [tree3344_def, tree3342_agree, tree3343_agree]
  rfl
theorem node3344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3344 live3344 coloured3344 = result3344 := by
  rw [tree3344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3342_eq
  unfold live3342 coloured3342 at child
  try dsimp only [live3344, coloured3344]
  rw [child]
  dsimp only [result3342]
  have child := node3343_eq
  unfold live3343 coloured3343 at child
  try dsimp only [live3344, coloured3344]
  rw [child]
  dsimp only [result3343]
  try dsimp only [colour, result3344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3345_agree : tree3345 = literal3345 := by
  rw [tree3345_def]
  rfl
theorem node3345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3345 live3345 coloured3345 = result3345 := by
  rw [tree3345_def]
  try dsimp only [colour, result3345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3346_agree : tree3346 = literal3346 := by
  rw [tree3346_def, tree3344_agree, tree3345_agree]
  rfl
theorem node3346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3346 live3346 coloured3346 = result3346 := by
  rw [tree3346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3344_eq
  unfold live3344 coloured3344 at child
  try dsimp only [live3346, coloured3346]
  rw [child]
  dsimp only [result3344]
  have child := node3345_eq
  unfold live3345 coloured3345 at child
  try dsimp only [live3346, coloured3346]
  rw [child]
  dsimp only [result3345]
  try dsimp only [colour, result3346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3347_agree : tree3347 = literal3347 := by
  rw [tree3347_def]
  rfl
theorem node3347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3347 live3347 coloured3347 = result3347 := by
  rw [tree3347_def]
  try dsimp only [colour, result3347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3348_agree : tree3348 = literal3348 := by
  rw [tree3348_def, tree3346_agree, tree3347_agree]
  rfl
theorem node3348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3348 live3348 coloured3348 = result3348 := by
  rw [tree3348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3346_eq
  unfold live3346 coloured3346 at child
  try dsimp only [live3348, coloured3348]
  rw [child]
  dsimp only [result3346]
  have child := node3347_eq
  unfold live3347 coloured3347 at child
  try dsimp only [live3348, coloured3348]
  rw [child]
  dsimp only [result3347]
  try dsimp only [colour, result3348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3349_agree : tree3349 = literal3349 := by
  rw [tree3349_def]
  rfl
theorem node3349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3349 live3349 coloured3349 = result3349 := by
  rw [tree3349_def]
  try dsimp only [colour, result3349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3350_agree : tree3350 = literal3350 := by
  rw [tree3350_def, tree3348_agree, tree3349_agree]
  rfl
theorem node3350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3350 live3350 coloured3350 = result3350 := by
  rw [tree3350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3348_eq
  unfold live3348 coloured3348 at child
  try dsimp only [live3350, coloured3350]
  rw [child]
  dsimp only [result3348]
  have child := node3349_eq
  unfold live3349 coloured3349 at child
  try dsimp only [live3350, coloured3350]
  rw [child]
  dsimp only [result3349]
  try dsimp only [colour, result3350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3351_agree : tree3351 = literal3351 := by
  rw [tree3351_def]
  rfl
theorem node3351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3351 live3351 coloured3351 = result3351 := by
  rw [tree3351_def]
  try dsimp only [colour, result3351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3352_agree : tree3352 = literal3352 := by
  rw [tree3352_def, tree3350_agree, tree3351_agree]
  rfl
theorem node3352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3352 live3352 coloured3352 = result3352 := by
  rw [tree3352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3350_eq
  unfold live3350 coloured3350 at child
  try dsimp only [live3352, coloured3352]
  rw [child]
  dsimp only [result3350]
  have child := node3351_eq
  unfold live3351 coloured3351 at child
  try dsimp only [live3352, coloured3352]
  rw [child]
  dsimp only [result3351]
  try dsimp only [colour, result3352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3353_agree : tree3353 = literal3353 := by
  rw [tree3353_def]
  rfl
theorem node3353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3353 live3353 coloured3353 = result3353 := by
  rw [tree3353_def]
  try dsimp only [colour, result3353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3354_agree : tree3354 = literal3354 := by
  rw [tree3354_def, tree3352_agree, tree3353_agree]
  rfl
theorem node3354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3354 live3354 coloured3354 = result3354 := by
  rw [tree3354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3352_eq
  unfold live3352 coloured3352 at child
  try dsimp only [live3354, coloured3354]
  rw [child]
  dsimp only [result3352]
  have child := node3353_eq
  unfold live3353 coloured3353 at child
  try dsimp only [live3354, coloured3354]
  rw [child]
  dsimp only [result3353]
  try dsimp only [colour, result3354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3355_agree : tree3355 = literal3355 := by
  rw [tree3355_def]
  rfl
theorem node3355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3355 live3355 coloured3355 = result3355 := by
  rw [tree3355_def]
  try dsimp only [colour, result3355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3356_agree : tree3356 = literal3356 := by
  rw [tree3356_def, tree3354_agree, tree3355_agree]
  rfl
theorem node3356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3356 live3356 coloured3356 = result3356 := by
  rw [tree3356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3354_eq
  unfold live3354 coloured3354 at child
  try dsimp only [live3356, coloured3356]
  rw [child]
  dsimp only [result3354]
  have child := node3355_eq
  unfold live3355 coloured3355 at child
  try dsimp only [live3356, coloured3356]
  rw [child]
  dsimp only [result3355]
  try dsimp only [colour, result3356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3357_agree : tree3357 = literal3357 := by
  rw [tree3357_def]
  rfl
theorem node3357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3357 live3357 coloured3357 = result3357 := by
  rw [tree3357_def]
  try dsimp only [colour, result3357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3358_agree : tree3358 = literal3358 := by
  rw [tree3358_def, tree3356_agree, tree3357_agree]
  rfl
theorem node3358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3358 live3358 coloured3358 = result3358 := by
  rw [tree3358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3356_eq
  unfold live3356 coloured3356 at child
  try dsimp only [live3358, coloured3358]
  rw [child]
  dsimp only [result3356]
  have child := node3357_eq
  unfold live3357 coloured3357 at child
  try dsimp only [live3358, coloured3358]
  rw [child]
  dsimp only [result3357]
  try dsimp only [colour, result3358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3359_agree : tree3359 = literal3359 := by
  rw [tree3359_def]
  rfl
theorem node3359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3359 live3359 coloured3359 = result3359 := by
  rw [tree3359_def]
  try dsimp only [colour, result3359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
