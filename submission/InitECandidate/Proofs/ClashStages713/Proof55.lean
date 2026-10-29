import InitECandidate.Proofs.ClashStages713.Proof54
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree5280_agree : tree5280 = literal5280 := by
  rw [tree5280_def, tree5278_agree, tree5279_agree]
  rfl
theorem node5280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5280 live5280 coloured5280 = result5280 := by
  rw [tree5280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5278_eq
  unfold live5278 coloured5278 at child
  try dsimp only [live5280, coloured5280]
  rw [child]
  dsimp only [result5278]
  have child := node5279_eq
  unfold live5279 coloured5279 at child
  try dsimp only [live5280, coloured5280]
  rw [child]
  dsimp only [result5279]
  try dsimp only [colour, result5280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5281_agree : tree5281 = literal5281 := by
  rw [tree5281_def]
  rfl
theorem node5281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5281 live5281 coloured5281 = result5281 := by
  rw [tree5281_def]
  try dsimp only [colour, result5281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5282_agree : tree5282 = literal5282 := by
  rw [tree5282_def, tree5280_agree, tree5281_agree]
  rfl
theorem node5282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5282 live5282 coloured5282 = result5282 := by
  rw [tree5282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5280_eq
  unfold live5280 coloured5280 at child
  try dsimp only [live5282, coloured5282]
  rw [child]
  dsimp only [result5280]
  have child := node5281_eq
  unfold live5281 coloured5281 at child
  try dsimp only [live5282, coloured5282]
  rw [child]
  dsimp only [result5281]
  try dsimp only [colour, result5282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5283_agree : tree5283 = literal5283 := by
  rw [tree5283_def]
  rfl
theorem node5283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5283 live5283 coloured5283 = result5283 := by
  rw [tree5283_def]
  try dsimp only [colour, result5283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5284_agree : tree5284 = literal5284 := by
  rw [tree5284_def, tree5282_agree, tree5283_agree]
  rfl
theorem node5284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5284 live5284 coloured5284 = result5284 := by
  rw [tree5284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5282_eq
  unfold live5282 coloured5282 at child
  try dsimp only [live5284, coloured5284]
  rw [child]
  dsimp only [result5282]
  have child := node5283_eq
  unfold live5283 coloured5283 at child
  try dsimp only [live5284, coloured5284]
  rw [child]
  dsimp only [result5283]
  try dsimp only [colour, result5284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5285_agree : tree5285 = literal5285 := by
  rw [tree5285_def]
  rfl
theorem node5285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5285 live5285 coloured5285 = result5285 := by
  rw [tree5285_def]
  try dsimp only [colour, result5285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5286_agree : tree5286 = literal5286 := by
  rw [tree5286_def, tree5284_agree, tree5285_agree]
  rfl
theorem node5286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5286 live5286 coloured5286 = result5286 := by
  rw [tree5286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5284_eq
  unfold live5284 coloured5284 at child
  try dsimp only [live5286, coloured5286]
  rw [child]
  dsimp only [result5284]
  have child := node5285_eq
  unfold live5285 coloured5285 at child
  try dsimp only [live5286, coloured5286]
  rw [child]
  dsimp only [result5285]
  try dsimp only [colour, result5286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5287_agree : tree5287 = literal5287 := by
  rw [tree5287_def]
  rfl
theorem node5287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5287 live5287 coloured5287 = result5287 := by
  rw [tree5287_def]
  try dsimp only [colour, result5287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5288_agree : tree5288 = literal5288 := by
  rw [tree5288_def, tree5286_agree, tree5287_agree]
  rfl
theorem node5288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5288 live5288 coloured5288 = result5288 := by
  rw [tree5288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5286_eq
  unfold live5286 coloured5286 at child
  try dsimp only [live5288, coloured5288]
  rw [child]
  dsimp only [result5286]
  have child := node5287_eq
  unfold live5287 coloured5287 at child
  try dsimp only [live5288, coloured5288]
  rw [child]
  dsimp only [result5287]
  try dsimp only [colour, result5288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5289_agree : tree5289 = literal5289 := by
  rw [tree5289_def]
  rfl
theorem node5289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5289 live5289 coloured5289 = result5289 := by
  rw [tree5289_def]
  try dsimp only [colour, result5289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5290_agree : tree5290 = literal5290 := by
  rw [tree5290_def, tree5288_agree, tree5289_agree]
  rfl
theorem node5290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5290 live5290 coloured5290 = result5290 := by
  rw [tree5290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5288_eq
  unfold live5288 coloured5288 at child
  try dsimp only [live5290, coloured5290]
  rw [child]
  dsimp only [result5288]
  have child := node5289_eq
  unfold live5289 coloured5289 at child
  try dsimp only [live5290, coloured5290]
  rw [child]
  dsimp only [result5289]
  try dsimp only [colour, result5290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5291_agree : tree5291 = literal5291 := by
  rw [tree5291_def]
  rfl
theorem node5291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5291 live5291 coloured5291 = result5291 := by
  rw [tree5291_def]
  try dsimp only [colour, result5291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5292_agree : tree5292 = literal5292 := by
  rw [tree5292_def, tree5290_agree, tree5291_agree]
  rfl
theorem node5292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5292 live5292 coloured5292 = result5292 := by
  rw [tree5292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5290_eq
  unfold live5290 coloured5290 at child
  try dsimp only [live5292, coloured5292]
  rw [child]
  dsimp only [result5290]
  have child := node5291_eq
  unfold live5291 coloured5291 at child
  try dsimp only [live5292, coloured5292]
  rw [child]
  dsimp only [result5291]
  try dsimp only [colour, result5292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5293_agree : tree5293 = literal5293 := by
  rw [tree5293_def]
  rfl
theorem node5293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5293 live5293 coloured5293 = result5293 := by
  rw [tree5293_def]
  try dsimp only [colour, result5293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5294_agree : tree5294 = literal5294 := by
  rw [tree5294_def, tree5292_agree, tree5293_agree]
  rfl
theorem node5294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5294 live5294 coloured5294 = result5294 := by
  rw [tree5294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5292_eq
  unfold live5292 coloured5292 at child
  try dsimp only [live5294, coloured5294]
  rw [child]
  dsimp only [result5292]
  have child := node5293_eq
  unfold live5293 coloured5293 at child
  try dsimp only [live5294, coloured5294]
  rw [child]
  dsimp only [result5293]
  try dsimp only [colour, result5294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5295_agree : tree5295 = literal5295 := by
  rw [tree5295_def]
  rfl
theorem node5295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5295 live5295 coloured5295 = result5295 := by
  rw [tree5295_def]
  try dsimp only [colour, result5295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5296_agree : tree5296 = literal5296 := by
  rw [tree5296_def, tree5294_agree, tree5295_agree]
  rfl
theorem node5296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5296 live5296 coloured5296 = result5296 := by
  rw [tree5296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5294_eq
  unfold live5294 coloured5294 at child
  try dsimp only [live5296, coloured5296]
  rw [child]
  dsimp only [result5294]
  have child := node5295_eq
  unfold live5295 coloured5295 at child
  try dsimp only [live5296, coloured5296]
  rw [child]
  dsimp only [result5295]
  try dsimp only [colour, result5296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5297_agree : tree5297 = literal5297 := by
  rw [tree5297_def]
  rfl
theorem node5297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5297 live5297 coloured5297 = result5297 := by
  rw [tree5297_def]
  try dsimp only [colour, result5297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5298_agree : tree5298 = literal5298 := by
  rw [tree5298_def, tree5296_agree, tree5297_agree]
  rfl
theorem node5298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5298 live5298 coloured5298 = result5298 := by
  rw [tree5298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5296_eq
  unfold live5296 coloured5296 at child
  try dsimp only [live5298, coloured5298]
  rw [child]
  dsimp only [result5296]
  have child := node5297_eq
  unfold live5297 coloured5297 at child
  try dsimp only [live5298, coloured5298]
  rw [child]
  dsimp only [result5297]
  try dsimp only [colour, result5298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5299_agree : tree5299 = literal5299 := by
  rw [tree5299_def]
  rfl
theorem node5299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5299 live5299 coloured5299 = result5299 := by
  rw [tree5299_def]
  try dsimp only [colour, result5299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5300_agree : tree5300 = literal5300 := by
  rw [tree5300_def, tree5298_agree, tree5299_agree]
  rfl
theorem node5300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5300 live5300 coloured5300 = result5300 := by
  rw [tree5300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5298_eq
  unfold live5298 coloured5298 at child
  try dsimp only [live5300, coloured5300]
  rw [child]
  dsimp only [result5298]
  have child := node5299_eq
  unfold live5299 coloured5299 at child
  try dsimp only [live5300, coloured5300]
  rw [child]
  dsimp only [result5299]
  try dsimp only [colour, result5300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5301_agree : tree5301 = literal5301 := by
  rw [tree5301_def]
  rfl
theorem node5301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5301 live5301 coloured5301 = result5301 := by
  rw [tree5301_def]
  try dsimp only [colour, result5301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5302_agree : tree5302 = literal5302 := by
  rw [tree5302_def, tree5300_agree, tree5301_agree]
  rfl
theorem node5302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5302 live5302 coloured5302 = result5302 := by
  rw [tree5302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5300_eq
  unfold live5300 coloured5300 at child
  try dsimp only [live5302, coloured5302]
  rw [child]
  dsimp only [result5300]
  have child := node5301_eq
  unfold live5301 coloured5301 at child
  try dsimp only [live5302, coloured5302]
  rw [child]
  dsimp only [result5301]
  try dsimp only [colour, result5302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5303_agree : tree5303 = literal5303 := by
  rw [tree5303_def]
  rfl
theorem node5303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5303 live5303 coloured5303 = result5303 := by
  rw [tree5303_def]
  try dsimp only [colour, result5303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5304_agree : tree5304 = literal5304 := by
  rw [tree5304_def, tree5302_agree, tree5303_agree]
  rfl
theorem node5304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5304 live5304 coloured5304 = result5304 := by
  rw [tree5304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5302_eq
  unfold live5302 coloured5302 at child
  try dsimp only [live5304, coloured5304]
  rw [child]
  dsimp only [result5302]
  have child := node5303_eq
  unfold live5303 coloured5303 at child
  try dsimp only [live5304, coloured5304]
  rw [child]
  dsimp only [result5303]
  try dsimp only [colour, result5304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5305_agree : tree5305 = literal5305 := by
  rw [tree5305_def]
  rfl
theorem node5305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5305 live5305 coloured5305 = result5305 := by
  rw [tree5305_def]
  try dsimp only [colour, result5305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5306_agree : tree5306 = literal5306 := by
  rw [tree5306_def, tree5304_agree, tree5305_agree]
  rfl
theorem node5306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5306 live5306 coloured5306 = result5306 := by
  rw [tree5306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5304_eq
  unfold live5304 coloured5304 at child
  try dsimp only [live5306, coloured5306]
  rw [child]
  dsimp only [result5304]
  have child := node5305_eq
  unfold live5305 coloured5305 at child
  try dsimp only [live5306, coloured5306]
  rw [child]
  dsimp only [result5305]
  try dsimp only [colour, result5306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5307_agree : tree5307 = literal5307 := by
  rw [tree5307_def]
  rfl
theorem node5307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5307 live5307 coloured5307 = result5307 := by
  rw [tree5307_def]
  try dsimp only [colour, result5307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5308_agree : tree5308 = literal5308 := by
  rw [tree5308_def, tree5306_agree, tree5307_agree]
  rfl
theorem node5308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5308 live5308 coloured5308 = result5308 := by
  rw [tree5308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5306_eq
  unfold live5306 coloured5306 at child
  try dsimp only [live5308, coloured5308]
  rw [child]
  dsimp only [result5306]
  have child := node5307_eq
  unfold live5307 coloured5307 at child
  try dsimp only [live5308, coloured5308]
  rw [child]
  dsimp only [result5307]
  try dsimp only [colour, result5308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5309_agree : tree5309 = literal5309 := by
  rw [tree5309_def]
  rfl
theorem node5309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5309 live5309 coloured5309 = result5309 := by
  rw [tree5309_def]
  try dsimp only [colour, result5309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5310_agree : tree5310 = literal5310 := by
  rw [tree5310_def, tree5308_agree, tree5309_agree]
  rfl
theorem node5310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5310 live5310 coloured5310 = result5310 := by
  rw [tree5310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5308_eq
  unfold live5308 coloured5308 at child
  try dsimp only [live5310, coloured5310]
  rw [child]
  dsimp only [result5308]
  have child := node5309_eq
  unfold live5309 coloured5309 at child
  try dsimp only [live5310, coloured5310]
  rw [child]
  dsimp only [result5309]
  try dsimp only [colour, result5310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5311_agree : tree5311 = literal5311 := by
  rw [tree5311_def]
  rfl
theorem node5311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5311 live5311 coloured5311 = result5311 := by
  rw [tree5311_def]
  try dsimp only [colour, result5311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5312_agree : tree5312 = literal5312 := by
  rw [tree5312_def, tree5310_agree, tree5311_agree]
  rfl
theorem node5312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5312 live5312 coloured5312 = result5312 := by
  rw [tree5312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5310_eq
  unfold live5310 coloured5310 at child
  try dsimp only [live5312, coloured5312]
  rw [child]
  dsimp only [result5310]
  have child := node5311_eq
  unfold live5311 coloured5311 at child
  try dsimp only [live5312, coloured5312]
  rw [child]
  dsimp only [result5311]
  try dsimp only [colour, result5312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5313_agree : tree5313 = literal5313 := by
  rw [tree5313_def]
  rfl
theorem node5313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5313 live5313 coloured5313 = result5313 := by
  rw [tree5313_def]
  try dsimp only [colour, result5313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5314_agree : tree5314 = literal5314 := by
  rw [tree5314_def, tree5312_agree, tree5313_agree]
  rfl
theorem node5314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5314 live5314 coloured5314 = result5314 := by
  rw [tree5314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5312_eq
  unfold live5312 coloured5312 at child
  try dsimp only [live5314, coloured5314]
  rw [child]
  dsimp only [result5312]
  have child := node5313_eq
  unfold live5313 coloured5313 at child
  try dsimp only [live5314, coloured5314]
  rw [child]
  dsimp only [result5313]
  try dsimp only [colour, result5314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5315_agree : tree5315 = literal5315 := by
  rw [tree5315_def]
  rfl
theorem node5315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5315 live5315 coloured5315 = result5315 := by
  rw [tree5315_def]
  try dsimp only [colour, result5315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5316_agree : tree5316 = literal5316 := by
  rw [tree5316_def, tree5314_agree, tree5315_agree]
  rfl
theorem node5316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5316 live5316 coloured5316 = result5316 := by
  rw [tree5316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5314_eq
  unfold live5314 coloured5314 at child
  try dsimp only [live5316, coloured5316]
  rw [child]
  dsimp only [result5314]
  have child := node5315_eq
  unfold live5315 coloured5315 at child
  try dsimp only [live5316, coloured5316]
  rw [child]
  dsimp only [result5315]
  try dsimp only [colour, result5316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5317_agree : tree5317 = literal5317 := by
  rw [tree5317_def]
  rfl
theorem node5317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5317 live5317 coloured5317 = result5317 := by
  rw [tree5317_def]
  try dsimp only [colour, result5317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5318_agree : tree5318 = literal5318 := by
  rw [tree5318_def, tree5316_agree, tree5317_agree]
  rfl
theorem node5318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5318 live5318 coloured5318 = result5318 := by
  rw [tree5318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5316_eq
  unfold live5316 coloured5316 at child
  try dsimp only [live5318, coloured5318]
  rw [child]
  dsimp only [result5316]
  have child := node5317_eq
  unfold live5317 coloured5317 at child
  try dsimp only [live5318, coloured5318]
  rw [child]
  dsimp only [result5317]
  try dsimp only [colour, result5318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5319_agree : tree5319 = literal5319 := by
  rw [tree5319_def]
  rfl
theorem node5319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5319 live5319 coloured5319 = result5319 := by
  rw [tree5319_def]
  try dsimp only [colour, result5319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5320_agree : tree5320 = literal5320 := by
  rw [tree5320_def, tree5318_agree, tree5319_agree]
  rfl
theorem node5320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5320 live5320 coloured5320 = result5320 := by
  rw [tree5320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5318_eq
  unfold live5318 coloured5318 at child
  try dsimp only [live5320, coloured5320]
  rw [child]
  dsimp only [result5318]
  have child := node5319_eq
  unfold live5319 coloured5319 at child
  try dsimp only [live5320, coloured5320]
  rw [child]
  dsimp only [result5319]
  try dsimp only [colour, result5320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5321_agree : tree5321 = literal5321 := by
  rw [tree5321_def]
  rfl
theorem node5321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5321 live5321 coloured5321 = result5321 := by
  rw [tree5321_def]
  try dsimp only [colour, result5321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5322_agree : tree5322 = literal5322 := by
  rw [tree5322_def, tree5320_agree, tree5321_agree]
  rfl
theorem node5322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5322 live5322 coloured5322 = result5322 := by
  rw [tree5322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5320_eq
  unfold live5320 coloured5320 at child
  try dsimp only [live5322, coloured5322]
  rw [child]
  dsimp only [result5320]
  have child := node5321_eq
  unfold live5321 coloured5321 at child
  try dsimp only [live5322, coloured5322]
  rw [child]
  dsimp only [result5321]
  try dsimp only [colour, result5322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5323_agree : tree5323 = literal5323 := by
  rw [tree5323_def]
  rfl
theorem node5323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5323 live5323 coloured5323 = result5323 := by
  rw [tree5323_def]
  try dsimp only [colour, result5323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5324_agree : tree5324 = literal5324 := by
  rw [tree5324_def, tree5322_agree, tree5323_agree]
  rfl
theorem node5324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5324 live5324 coloured5324 = result5324 := by
  rw [tree5324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5322_eq
  unfold live5322 coloured5322 at child
  try dsimp only [live5324, coloured5324]
  rw [child]
  dsimp only [result5322]
  have child := node5323_eq
  unfold live5323 coloured5323 at child
  try dsimp only [live5324, coloured5324]
  rw [child]
  dsimp only [result5323]
  try dsimp only [colour, result5324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5325_agree : tree5325 = literal5325 := by
  rw [tree5325_def]
  rfl
theorem node5325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5325 live5325 coloured5325 = result5325 := by
  rw [tree5325_def]
  try dsimp only [colour, result5325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5326_agree : tree5326 = literal5326 := by
  rw [tree5326_def, tree5324_agree, tree5325_agree]
  rfl
theorem node5326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5326 live5326 coloured5326 = result5326 := by
  rw [tree5326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5324_eq
  unfold live5324 coloured5324 at child
  try dsimp only [live5326, coloured5326]
  rw [child]
  dsimp only [result5324]
  have child := node5325_eq
  unfold live5325 coloured5325 at child
  try dsimp only [live5326, coloured5326]
  rw [child]
  dsimp only [result5325]
  try dsimp only [colour, result5326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5327_agree : tree5327 = literal5327 := by
  rw [tree5327_def]
  rfl
theorem node5327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5327 live5327 coloured5327 = result5327 := by
  rw [tree5327_def]
  try dsimp only [colour, result5327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5328_agree : tree5328 = literal5328 := by
  rw [tree5328_def, tree5326_agree, tree5327_agree]
  rfl
theorem node5328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5328 live5328 coloured5328 = result5328 := by
  rw [tree5328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5326_eq
  unfold live5326 coloured5326 at child
  try dsimp only [live5328, coloured5328]
  rw [child]
  dsimp only [result5326]
  have child := node5327_eq
  unfold live5327 coloured5327 at child
  try dsimp only [live5328, coloured5328]
  rw [child]
  dsimp only [result5327]
  try dsimp only [colour, result5328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5329_agree : tree5329 = literal5329 := by
  rw [tree5329_def]
  rfl
theorem node5329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5329 live5329 coloured5329 = result5329 := by
  rw [tree5329_def]
  try dsimp only [colour, result5329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5330_agree : tree5330 = literal5330 := by
  rw [tree5330_def, tree5328_agree, tree5329_agree]
  rfl
theorem node5330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5330 live5330 coloured5330 = result5330 := by
  rw [tree5330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5328_eq
  unfold live5328 coloured5328 at child
  try dsimp only [live5330, coloured5330]
  rw [child]
  dsimp only [result5328]
  have child := node5329_eq
  unfold live5329 coloured5329 at child
  try dsimp only [live5330, coloured5330]
  rw [child]
  dsimp only [result5329]
  try dsimp only [colour, result5330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5331_agree : tree5331 = literal5331 := by
  rw [tree5331_def]
  rfl
theorem node5331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5331 live5331 coloured5331 = result5331 := by
  rw [tree5331_def]
  try dsimp only [colour, result5331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5332_agree : tree5332 = literal5332 := by
  rw [tree5332_def, tree5330_agree, tree5331_agree]
  rfl
theorem node5332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5332 live5332 coloured5332 = result5332 := by
  rw [tree5332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5330_eq
  unfold live5330 coloured5330 at child
  try dsimp only [live5332, coloured5332]
  rw [child]
  dsimp only [result5330]
  have child := node5331_eq
  unfold live5331 coloured5331 at child
  try dsimp only [live5332, coloured5332]
  rw [child]
  dsimp only [result5331]
  try dsimp only [colour, result5332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5333_agree : tree5333 = literal5333 := by
  rw [tree5333_def]
  rfl
theorem node5333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5333 live5333 coloured5333 = result5333 := by
  rw [tree5333_def]
  try dsimp only [colour, result5333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5334_agree : tree5334 = literal5334 := by
  rw [tree5334_def, tree5332_agree, tree5333_agree]
  rfl
theorem node5334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5334 live5334 coloured5334 = result5334 := by
  rw [tree5334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5332_eq
  unfold live5332 coloured5332 at child
  try dsimp only [live5334, coloured5334]
  rw [child]
  dsimp only [result5332]
  have child := node5333_eq
  unfold live5333 coloured5333 at child
  try dsimp only [live5334, coloured5334]
  rw [child]
  dsimp only [result5333]
  try dsimp only [colour, result5334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5335_agree : tree5335 = literal5335 := by
  rw [tree5335_def]
  rfl
theorem node5335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5335 live5335 coloured5335 = result5335 := by
  rw [tree5335_def]
  try dsimp only [colour, result5335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5336_agree : tree5336 = literal5336 := by
  rw [tree5336_def, tree5334_agree, tree5335_agree]
  rfl
theorem node5336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5336 live5336 coloured5336 = result5336 := by
  rw [tree5336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5334_eq
  unfold live5334 coloured5334 at child
  try dsimp only [live5336, coloured5336]
  rw [child]
  dsimp only [result5334]
  have child := node5335_eq
  unfold live5335 coloured5335 at child
  try dsimp only [live5336, coloured5336]
  rw [child]
  dsimp only [result5335]
  try dsimp only [colour, result5336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5337_agree : tree5337 = literal5337 := by
  rw [tree5337_def]
  rfl
theorem node5337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5337 live5337 coloured5337 = result5337 := by
  rw [tree5337_def]
  try dsimp only [colour, result5337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5338_agree : tree5338 = literal5338 := by
  rw [tree5338_def, tree5336_agree, tree5337_agree]
  rfl
theorem node5338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5338 live5338 coloured5338 = result5338 := by
  rw [tree5338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5336_eq
  unfold live5336 coloured5336 at child
  try dsimp only [live5338, coloured5338]
  rw [child]
  dsimp only [result5336]
  have child := node5337_eq
  unfold live5337 coloured5337 at child
  try dsimp only [live5338, coloured5338]
  rw [child]
  dsimp only [result5337]
  try dsimp only [colour, result5338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5339_agree : tree5339 = literal5339 := by
  rw [tree5339_def]
  rfl
theorem node5339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5339 live5339 coloured5339 = result5339 := by
  rw [tree5339_def]
  try dsimp only [colour, result5339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5340_agree : tree5340 = literal5340 := by
  rw [tree5340_def, tree5338_agree, tree5339_agree]
  rfl
theorem node5340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5340 live5340 coloured5340 = result5340 := by
  rw [tree5340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5338_eq
  unfold live5338 coloured5338 at child
  try dsimp only [live5340, coloured5340]
  rw [child]
  dsimp only [result5338]
  have child := node5339_eq
  unfold live5339 coloured5339 at child
  try dsimp only [live5340, coloured5340]
  rw [child]
  dsimp only [result5339]
  try dsimp only [colour, result5340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5341_agree : tree5341 = literal5341 := by
  rw [tree5341_def]
  rfl
theorem node5341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5341 live5341 coloured5341 = result5341 := by
  rw [tree5341_def]
  try dsimp only [colour, result5341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5342_agree : tree5342 = literal5342 := by
  rw [tree5342_def, tree5340_agree, tree5341_agree]
  rfl
theorem node5342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5342 live5342 coloured5342 = result5342 := by
  rw [tree5342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5340_eq
  unfold live5340 coloured5340 at child
  try dsimp only [live5342, coloured5342]
  rw [child]
  dsimp only [result5340]
  have child := node5341_eq
  unfold live5341 coloured5341 at child
  try dsimp only [live5342, coloured5342]
  rw [child]
  dsimp only [result5341]
  try dsimp only [colour, result5342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5343_agree : tree5343 = literal5343 := by
  rw [tree5343_def]
  rfl
theorem node5343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5343 live5343 coloured5343 = result5343 := by
  rw [tree5343_def]
  try dsimp only [colour, result5343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5344_agree : tree5344 = literal5344 := by
  rw [tree5344_def, tree5342_agree, tree5343_agree]
  rfl
theorem node5344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5344 live5344 coloured5344 = result5344 := by
  rw [tree5344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5342_eq
  unfold live5342 coloured5342 at child
  try dsimp only [live5344, coloured5344]
  rw [child]
  dsimp only [result5342]
  have child := node5343_eq
  unfold live5343 coloured5343 at child
  try dsimp only [live5344, coloured5344]
  rw [child]
  dsimp only [result5343]
  try dsimp only [colour, result5344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5345_agree : tree5345 = literal5345 := by
  rw [tree5345_def]
  rfl
theorem node5345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5345 live5345 coloured5345 = result5345 := by
  rw [tree5345_def]
  try dsimp only [colour, result5345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5346_agree : tree5346 = literal5346 := by
  rw [tree5346_def, tree5344_agree, tree5345_agree]
  rfl
theorem node5346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5346 live5346 coloured5346 = result5346 := by
  rw [tree5346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5344_eq
  unfold live5344 coloured5344 at child
  try dsimp only [live5346, coloured5346]
  rw [child]
  dsimp only [result5344]
  have child := node5345_eq
  unfold live5345 coloured5345 at child
  try dsimp only [live5346, coloured5346]
  rw [child]
  dsimp only [result5345]
  try dsimp only [colour, result5346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5347_agree : tree5347 = literal5347 := by
  rw [tree5347_def]
  rfl
theorem node5347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5347 live5347 coloured5347 = result5347 := by
  rw [tree5347_def]
  try dsimp only [colour, result5347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5348_agree : tree5348 = literal5348 := by
  rw [tree5348_def, tree5346_agree, tree5347_agree]
  rfl
theorem node5348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5348 live5348 coloured5348 = result5348 := by
  rw [tree5348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5346_eq
  unfold live5346 coloured5346 at child
  try dsimp only [live5348, coloured5348]
  rw [child]
  dsimp only [result5346]
  have child := node5347_eq
  unfold live5347 coloured5347 at child
  try dsimp only [live5348, coloured5348]
  rw [child]
  dsimp only [result5347]
  try dsimp only [colour, result5348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5349_agree : tree5349 = literal5349 := by
  rw [tree5349_def]
  rfl
theorem node5349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5349 live5349 coloured5349 = result5349 := by
  rw [tree5349_def]
  try dsimp only [colour, result5349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5350_agree : tree5350 = literal5350 := by
  rw [tree5350_def, tree5348_agree, tree5349_agree]
  rfl
theorem node5350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5350 live5350 coloured5350 = result5350 := by
  rw [tree5350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5348_eq
  unfold live5348 coloured5348 at child
  try dsimp only [live5350, coloured5350]
  rw [child]
  dsimp only [result5348]
  have child := node5349_eq
  unfold live5349 coloured5349 at child
  try dsimp only [live5350, coloured5350]
  rw [child]
  dsimp only [result5349]
  try dsimp only [colour, result5350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5351_agree : tree5351 = literal5351 := by
  rw [tree5351_def]
  rfl
theorem node5351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5351 live5351 coloured5351 = result5351 := by
  rw [tree5351_def]
  try dsimp only [colour, result5351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5352_agree : tree5352 = literal5352 := by
  rw [tree5352_def, tree5350_agree, tree5351_agree]
  rfl
theorem node5352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5352 live5352 coloured5352 = result5352 := by
  rw [tree5352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5350_eq
  unfold live5350 coloured5350 at child
  try dsimp only [live5352, coloured5352]
  rw [child]
  dsimp only [result5350]
  have child := node5351_eq
  unfold live5351 coloured5351 at child
  try dsimp only [live5352, coloured5352]
  rw [child]
  dsimp only [result5351]
  try dsimp only [colour, result5352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5353_agree : tree5353 = literal5353 := by
  rw [tree5353_def]
  rfl
theorem node5353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5353 live5353 coloured5353 = result5353 := by
  rw [tree5353_def]
  try dsimp only [colour, result5353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5354_agree : tree5354 = literal5354 := by
  rw [tree5354_def, tree5352_agree, tree5353_agree]
  rfl
theorem node5354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5354 live5354 coloured5354 = result5354 := by
  rw [tree5354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5352_eq
  unfold live5352 coloured5352 at child
  try dsimp only [live5354, coloured5354]
  rw [child]
  dsimp only [result5352]
  have child := node5353_eq
  unfold live5353 coloured5353 at child
  try dsimp only [live5354, coloured5354]
  rw [child]
  dsimp only [result5353]
  try dsimp only [colour, result5354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5355_agree : tree5355 = literal5355 := by
  rw [tree5355_def]
  rfl
theorem node5355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5355 live5355 coloured5355 = result5355 := by
  rw [tree5355_def]
  try dsimp only [colour, result5355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5356_agree : tree5356 = literal5356 := by
  rw [tree5356_def, tree5354_agree, tree5355_agree]
  rfl
theorem node5356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5356 live5356 coloured5356 = result5356 := by
  rw [tree5356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5354_eq
  unfold live5354 coloured5354 at child
  try dsimp only [live5356, coloured5356]
  rw [child]
  dsimp only [result5354]
  have child := node5355_eq
  unfold live5355 coloured5355 at child
  try dsimp only [live5356, coloured5356]
  rw [child]
  dsimp only [result5355]
  try dsimp only [colour, result5356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5357_agree : tree5357 = literal5357 := by
  rw [tree5357_def]
  rfl
theorem node5357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5357 live5357 coloured5357 = result5357 := by
  rw [tree5357_def]
  try dsimp only [colour, result5357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5358_agree : tree5358 = literal5358 := by
  rw [tree5358_def, tree5356_agree, tree5357_agree]
  rfl
theorem node5358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5358 live5358 coloured5358 = result5358 := by
  rw [tree5358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5356_eq
  unfold live5356 coloured5356 at child
  try dsimp only [live5358, coloured5358]
  rw [child]
  dsimp only [result5356]
  have child := node5357_eq
  unfold live5357 coloured5357 at child
  try dsimp only [live5358, coloured5358]
  rw [child]
  dsimp only [result5357]
  try dsimp only [colour, result5358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5359_agree : tree5359 = literal5359 := by
  rw [tree5359_def]
  rfl
theorem node5359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5359 live5359 coloured5359 = result5359 := by
  rw [tree5359_def]
  try dsimp only [colour, result5359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5360_agree : tree5360 = literal5360 := by
  rw [tree5360_def, tree5358_agree, tree5359_agree]
  rfl
theorem node5360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5360 live5360 coloured5360 = result5360 := by
  rw [tree5360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5358_eq
  unfold live5358 coloured5358 at child
  try dsimp only [live5360, coloured5360]
  rw [child]
  dsimp only [result5358]
  have child := node5359_eq
  unfold live5359 coloured5359 at child
  try dsimp only [live5360, coloured5360]
  rw [child]
  dsimp only [result5359]
  try dsimp only [colour, result5360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5361_agree : tree5361 = literal5361 := by
  rw [tree5361_def]
  rfl
theorem node5361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5361 live5361 coloured5361 = result5361 := by
  rw [tree5361_def]
  try dsimp only [colour, result5361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5362_agree : tree5362 = literal5362 := by
  rw [tree5362_def, tree5360_agree, tree5361_agree]
  rfl
theorem node5362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5362 live5362 coloured5362 = result5362 := by
  rw [tree5362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5360_eq
  unfold live5360 coloured5360 at child
  try dsimp only [live5362, coloured5362]
  rw [child]
  dsimp only [result5360]
  have child := node5361_eq
  unfold live5361 coloured5361 at child
  try dsimp only [live5362, coloured5362]
  rw [child]
  dsimp only [result5361]
  try dsimp only [colour, result5362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5363_agree : tree5363 = literal5363 := by
  rw [tree5363_def]
  rfl
theorem node5363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5363 live5363 coloured5363 = result5363 := by
  rw [tree5363_def]
  try dsimp only [colour, result5363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5364_agree : tree5364 = literal5364 := by
  rw [tree5364_def, tree5362_agree, tree5363_agree]
  rfl
theorem node5364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5364 live5364 coloured5364 = result5364 := by
  rw [tree5364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5362_eq
  unfold live5362 coloured5362 at child
  try dsimp only [live5364, coloured5364]
  rw [child]
  dsimp only [result5362]
  have child := node5363_eq
  unfold live5363 coloured5363 at child
  try dsimp only [live5364, coloured5364]
  rw [child]
  dsimp only [result5363]
  try dsimp only [colour, result5364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5365_agree : tree5365 = literal5365 := by
  rw [tree5365_def]
  rfl
theorem node5365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5365 live5365 coloured5365 = result5365 := by
  rw [tree5365_def]
  try dsimp only [colour, result5365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5366_agree : tree5366 = literal5366 := by
  rw [tree5366_def, tree5364_agree, tree5365_agree]
  rfl
theorem node5366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5366 live5366 coloured5366 = result5366 := by
  rw [tree5366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5364_eq
  unfold live5364 coloured5364 at child
  try dsimp only [live5366, coloured5366]
  rw [child]
  dsimp only [result5364]
  have child := node5365_eq
  unfold live5365 coloured5365 at child
  try dsimp only [live5366, coloured5366]
  rw [child]
  dsimp only [result5365]
  try dsimp only [colour, result5366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5367_agree : tree5367 = literal5367 := by
  rw [tree5367_def]
  rfl
theorem node5367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5367 live5367 coloured5367 = result5367 := by
  rw [tree5367_def]
  try dsimp only [colour, result5367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5368_agree : tree5368 = literal5368 := by
  rw [tree5368_def, tree5366_agree, tree5367_agree]
  rfl
theorem node5368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5368 live5368 coloured5368 = result5368 := by
  rw [tree5368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5366_eq
  unfold live5366 coloured5366 at child
  try dsimp only [live5368, coloured5368]
  rw [child]
  dsimp only [result5366]
  have child := node5367_eq
  unfold live5367 coloured5367 at child
  try dsimp only [live5368, coloured5368]
  rw [child]
  dsimp only [result5367]
  try dsimp only [colour, result5368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5369_agree : tree5369 = literal5369 := by
  rw [tree5369_def]
  rfl
theorem node5369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5369 live5369 coloured5369 = result5369 := by
  rw [tree5369_def]
  try dsimp only [colour, result5369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5370_agree : tree5370 = literal5370 := by
  rw [tree5370_def, tree5368_agree, tree5369_agree]
  rfl
theorem node5370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5370 live5370 coloured5370 = result5370 := by
  rw [tree5370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5368_eq
  unfold live5368 coloured5368 at child
  try dsimp only [live5370, coloured5370]
  rw [child]
  dsimp only [result5368]
  have child := node5369_eq
  unfold live5369 coloured5369 at child
  try dsimp only [live5370, coloured5370]
  rw [child]
  dsimp only [result5369]
  try dsimp only [colour, result5370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5371_agree : tree5371 = literal5371 := by
  rw [tree5371_def]
  rfl
theorem node5371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5371 live5371 coloured5371 = result5371 := by
  rw [tree5371_def]
  try dsimp only [colour, result5371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5372_agree : tree5372 = literal5372 := by
  rw [tree5372_def, tree5370_agree, tree5371_agree]
  rfl
theorem node5372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5372 live5372 coloured5372 = result5372 := by
  rw [tree5372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5370_eq
  unfold live5370 coloured5370 at child
  try dsimp only [live5372, coloured5372]
  rw [child]
  dsimp only [result5370]
  have child := node5371_eq
  unfold live5371 coloured5371 at child
  try dsimp only [live5372, coloured5372]
  rw [child]
  dsimp only [result5371]
  try dsimp only [colour, result5372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5373_agree : tree5373 = literal5373 := by
  rw [tree5373_def]
  rfl
theorem node5373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5373 live5373 coloured5373 = result5373 := by
  rw [tree5373_def]
  try dsimp only [colour, result5373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5374_agree : tree5374 = literal5374 := by
  rw [tree5374_def, tree5372_agree, tree5373_agree]
  rfl
theorem node5374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5374 live5374 coloured5374 = result5374 := by
  rw [tree5374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5372_eq
  unfold live5372 coloured5372 at child
  try dsimp only [live5374, coloured5374]
  rw [child]
  dsimp only [result5372]
  have child := node5373_eq
  unfold live5373 coloured5373 at child
  try dsimp only [live5374, coloured5374]
  rw [child]
  dsimp only [result5373]
  try dsimp only [colour, result5374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5375_agree : tree5375 = literal5375 := by
  rw [tree5375_def]
  rfl
theorem node5375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5375 live5375 coloured5375 = result5375 := by
  rw [tree5375_def]
  try dsimp only [colour, result5375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
