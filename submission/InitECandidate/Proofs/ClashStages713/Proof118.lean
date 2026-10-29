import InitECandidate.Proofs.ClashStages713.Proof117
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree11328_agree : tree11328 = literal11328 := by
  rw [tree11328_def, tree11326_agree, tree11327_agree]
  rfl
theorem node11328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11328 live11328 coloured11328 = result11328 := by
  rw [tree11328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11326_eq
  unfold live11326 coloured11326 at child
  try dsimp only [live11328, coloured11328]
  rw [child]
  dsimp only [result11326]
  have child := node11327_eq
  unfold live11327 coloured11327 at child
  try dsimp only [live11328, coloured11328]
  rw [child]
  dsimp only [result11327]
  try dsimp only [colour, result11328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11329_agree : tree11329 = literal11329 := by
  rw [tree11329_def]
  rfl
theorem node11329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11329 live11329 coloured11329 = result11329 := by
  rw [tree11329_def]
  try dsimp only [colour, result11329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11330_agree : tree11330 = literal11330 := by
  rw [tree11330_def, tree11328_agree, tree11329_agree]
  rfl
theorem node11330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11330 live11330 coloured11330 = result11330 := by
  rw [tree11330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11328_eq
  unfold live11328 coloured11328 at child
  try dsimp only [live11330, coloured11330]
  rw [child]
  dsimp only [result11328]
  have child := node11329_eq
  unfold live11329 coloured11329 at child
  try dsimp only [live11330, coloured11330]
  rw [child]
  dsimp only [result11329]
  try dsimp only [colour, result11330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11331_agree : tree11331 = literal11331 := by
  rw [tree11331_def]
  rfl
theorem node11331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11331 live11331 coloured11331 = result11331 := by
  rw [tree11331_def]
  try dsimp only [colour, result11331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11332_agree : tree11332 = literal11332 := by
  rw [tree11332_def, tree11330_agree, tree11331_agree]
  rfl
theorem node11332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11332 live11332 coloured11332 = result11332 := by
  rw [tree11332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11330_eq
  unfold live11330 coloured11330 at child
  try dsimp only [live11332, coloured11332]
  rw [child]
  dsimp only [result11330]
  have child := node11331_eq
  unfold live11331 coloured11331 at child
  try dsimp only [live11332, coloured11332]
  rw [child]
  dsimp only [result11331]
  try dsimp only [colour, result11332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11333_agree : tree11333 = literal11333 := by
  rw [tree11333_def]
  rfl
theorem node11333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11333 live11333 coloured11333 = result11333 := by
  rw [tree11333_def]
  try dsimp only [colour, result11333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11334_agree : tree11334 = literal11334 := by
  rw [tree11334_def, tree11332_agree, tree11333_agree]
  rfl
theorem node11334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11334 live11334 coloured11334 = result11334 := by
  rw [tree11334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11332_eq
  unfold live11332 coloured11332 at child
  try dsimp only [live11334, coloured11334]
  rw [child]
  dsimp only [result11332]
  have child := node11333_eq
  unfold live11333 coloured11333 at child
  try dsimp only [live11334, coloured11334]
  rw [child]
  dsimp only [result11333]
  try dsimp only [colour, result11334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11335_agree : tree11335 = literal11335 := by
  rw [tree11335_def]
  rfl
theorem node11335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11335 live11335 coloured11335 = result11335 := by
  rw [tree11335_def]
  try dsimp only [colour, result11335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11336_agree : tree11336 = literal11336 := by
  rw [tree11336_def, tree11334_agree, tree11335_agree]
  rfl
theorem node11336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11336 live11336 coloured11336 = result11336 := by
  rw [tree11336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11334_eq
  unfold live11334 coloured11334 at child
  try dsimp only [live11336, coloured11336]
  rw [child]
  dsimp only [result11334]
  have child := node11335_eq
  unfold live11335 coloured11335 at child
  try dsimp only [live11336, coloured11336]
  rw [child]
  dsimp only [result11335]
  try dsimp only [colour, result11336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11337_agree : tree11337 = literal11337 := by
  rw [tree11337_def]
  rfl
theorem node11337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11337 live11337 coloured11337 = result11337 := by
  rw [tree11337_def]
  try dsimp only [colour, result11337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11338_agree : tree11338 = literal11338 := by
  rw [tree11338_def, tree11336_agree, tree11337_agree]
  rfl
theorem node11338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11338 live11338 coloured11338 = result11338 := by
  rw [tree11338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11336_eq
  unfold live11336 coloured11336 at child
  try dsimp only [live11338, coloured11338]
  rw [child]
  dsimp only [result11336]
  have child := node11337_eq
  unfold live11337 coloured11337 at child
  try dsimp only [live11338, coloured11338]
  rw [child]
  dsimp only [result11337]
  try dsimp only [colour, result11338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11339_agree : tree11339 = literal11339 := by
  rw [tree11339_def]
  rfl
theorem node11339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11339 live11339 coloured11339 = result11339 := by
  rw [tree11339_def]
  try dsimp only [colour, result11339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11340_agree : tree11340 = literal11340 := by
  rw [tree11340_def, tree11338_agree, tree11339_agree]
  rfl
theorem node11340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11340 live11340 coloured11340 = result11340 := by
  rw [tree11340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11338_eq
  unfold live11338 coloured11338 at child
  try dsimp only [live11340, coloured11340]
  rw [child]
  dsimp only [result11338]
  have child := node11339_eq
  unfold live11339 coloured11339 at child
  try dsimp only [live11340, coloured11340]
  rw [child]
  dsimp only [result11339]
  try dsimp only [colour, result11340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11341_agree : tree11341 = literal11341 := by
  rw [tree11341_def]
  rfl
theorem node11341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11341 live11341 coloured11341 = result11341 := by
  rw [tree11341_def]
  try dsimp only [colour, result11341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11342_agree : tree11342 = literal11342 := by
  rw [tree11342_def, tree11340_agree, tree11341_agree]
  rfl
theorem node11342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11342 live11342 coloured11342 = result11342 := by
  rw [tree11342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11340_eq
  unfold live11340 coloured11340 at child
  try dsimp only [live11342, coloured11342]
  rw [child]
  dsimp only [result11340]
  have child := node11341_eq
  unfold live11341 coloured11341 at child
  try dsimp only [live11342, coloured11342]
  rw [child]
  dsimp only [result11341]
  try dsimp only [colour, result11342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11343_agree : tree11343 = literal11343 := by
  rw [tree11343_def]
  rfl
theorem node11343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11343 live11343 coloured11343 = result11343 := by
  rw [tree11343_def]
  try dsimp only [colour, result11343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11344_agree : tree11344 = literal11344 := by
  rw [tree11344_def, tree11342_agree, tree11343_agree]
  rfl
theorem node11344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11344 live11344 coloured11344 = result11344 := by
  rw [tree11344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11342_eq
  unfold live11342 coloured11342 at child
  try dsimp only [live11344, coloured11344]
  rw [child]
  dsimp only [result11342]
  have child := node11343_eq
  unfold live11343 coloured11343 at child
  try dsimp only [live11344, coloured11344]
  rw [child]
  dsimp only [result11343]
  try dsimp only [colour, result11344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11345_agree : tree11345 = literal11345 := by
  rw [tree11345_def]
  rfl
theorem node11345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11345 live11345 coloured11345 = result11345 := by
  rw [tree11345_def]
  try dsimp only [colour, result11345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11346_agree : tree11346 = literal11346 := by
  rw [tree11346_def, tree11344_agree, tree11345_agree]
  rfl
theorem node11346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11346 live11346 coloured11346 = result11346 := by
  rw [tree11346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11344_eq
  unfold live11344 coloured11344 at child
  try dsimp only [live11346, coloured11346]
  rw [child]
  dsimp only [result11344]
  have child := node11345_eq
  unfold live11345 coloured11345 at child
  try dsimp only [live11346, coloured11346]
  rw [child]
  dsimp only [result11345]
  try dsimp only [colour, result11346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11347_agree : tree11347 = literal11347 := by
  rw [tree11347_def]
  rfl
theorem node11347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11347 live11347 coloured11347 = result11347 := by
  rw [tree11347_def]
  try dsimp only [colour, result11347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11348_agree : tree11348 = literal11348 := by
  rw [tree11348_def, tree11346_agree, tree11347_agree]
  rfl
theorem node11348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11348 live11348 coloured11348 = result11348 := by
  rw [tree11348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11346_eq
  unfold live11346 coloured11346 at child
  try dsimp only [live11348, coloured11348]
  rw [child]
  dsimp only [result11346]
  have child := node11347_eq
  unfold live11347 coloured11347 at child
  try dsimp only [live11348, coloured11348]
  rw [child]
  dsimp only [result11347]
  try dsimp only [colour, result11348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11349_agree : tree11349 = literal11349 := by
  rw [tree11349_def]
  rfl
theorem node11349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11349 live11349 coloured11349 = result11349 := by
  rw [tree11349_def]
  try dsimp only [colour, result11349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11350_agree : tree11350 = literal11350 := by
  rw [tree11350_def, tree11348_agree, tree11349_agree]
  rfl
theorem node11350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11350 live11350 coloured11350 = result11350 := by
  rw [tree11350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11348_eq
  unfold live11348 coloured11348 at child
  try dsimp only [live11350, coloured11350]
  rw [child]
  dsimp only [result11348]
  have child := node11349_eq
  unfold live11349 coloured11349 at child
  try dsimp only [live11350, coloured11350]
  rw [child]
  dsimp only [result11349]
  try dsimp only [colour, result11350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11351_agree : tree11351 = literal11351 := by
  rw [tree11351_def]
  rfl
theorem node11351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11351 live11351 coloured11351 = result11351 := by
  rw [tree11351_def]
  try dsimp only [colour, result11351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11352_agree : tree11352 = literal11352 := by
  rw [tree11352_def, tree11350_agree, tree11351_agree]
  rfl
theorem node11352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11352 live11352 coloured11352 = result11352 := by
  rw [tree11352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11350_eq
  unfold live11350 coloured11350 at child
  try dsimp only [live11352, coloured11352]
  rw [child]
  dsimp only [result11350]
  have child := node11351_eq
  unfold live11351 coloured11351 at child
  try dsimp only [live11352, coloured11352]
  rw [child]
  dsimp only [result11351]
  try dsimp only [colour, result11352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11353_agree : tree11353 = literal11353 := by
  rw [tree11353_def]
  rfl
theorem node11353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11353 live11353 coloured11353 = result11353 := by
  rw [tree11353_def]
  try dsimp only [colour, result11353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11354_agree : tree11354 = literal11354 := by
  rw [tree11354_def, tree11352_agree, tree11353_agree]
  rfl
theorem node11354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11354 live11354 coloured11354 = result11354 := by
  rw [tree11354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11352_eq
  unfold live11352 coloured11352 at child
  try dsimp only [live11354, coloured11354]
  rw [child]
  dsimp only [result11352]
  have child := node11353_eq
  unfold live11353 coloured11353 at child
  try dsimp only [live11354, coloured11354]
  rw [child]
  dsimp only [result11353]
  try dsimp only [colour, result11354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11355_agree : tree11355 = literal11355 := by
  rw [tree11355_def]
  rfl
theorem node11355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11355 live11355 coloured11355 = result11355 := by
  rw [tree11355_def]
  try dsimp only [colour, result11355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11356_agree : tree11356 = literal11356 := by
  rw [tree11356_def, tree11354_agree, tree11355_agree]
  rfl
theorem node11356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11356 live11356 coloured11356 = result11356 := by
  rw [tree11356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11354_eq
  unfold live11354 coloured11354 at child
  try dsimp only [live11356, coloured11356]
  rw [child]
  dsimp only [result11354]
  have child := node11355_eq
  unfold live11355 coloured11355 at child
  try dsimp only [live11356, coloured11356]
  rw [child]
  dsimp only [result11355]
  try dsimp only [colour, result11356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11357_agree : tree11357 = literal11357 := by
  rw [tree11357_def]
  rfl
theorem node11357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11357 live11357 coloured11357 = result11357 := by
  rw [tree11357_def]
  try dsimp only [colour, result11357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11358_agree : tree11358 = literal11358 := by
  rw [tree11358_def, tree11356_agree, tree11357_agree]
  rfl
theorem node11358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11358 live11358 coloured11358 = result11358 := by
  rw [tree11358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11356_eq
  unfold live11356 coloured11356 at child
  try dsimp only [live11358, coloured11358]
  rw [child]
  dsimp only [result11356]
  have child := node11357_eq
  unfold live11357 coloured11357 at child
  try dsimp only [live11358, coloured11358]
  rw [child]
  dsimp only [result11357]
  try dsimp only [colour, result11358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11359_agree : tree11359 = literal11359 := by
  rw [tree11359_def]
  rfl
theorem node11359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11359 live11359 coloured11359 = result11359 := by
  rw [tree11359_def]
  try dsimp only [colour, result11359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11360_agree : tree11360 = literal11360 := by
  rw [tree11360_def, tree11358_agree, tree11359_agree]
  rfl
theorem node11360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11360 live11360 coloured11360 = result11360 := by
  rw [tree11360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11358_eq
  unfold live11358 coloured11358 at child
  try dsimp only [live11360, coloured11360]
  rw [child]
  dsimp only [result11358]
  have child := node11359_eq
  unfold live11359 coloured11359 at child
  try dsimp only [live11360, coloured11360]
  rw [child]
  dsimp only [result11359]
  try dsimp only [colour, result11360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11361_agree : tree11361 = literal11361 := by
  rw [tree11361_def]
  rfl
theorem node11361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11361 live11361 coloured11361 = result11361 := by
  rw [tree11361_def]
  try dsimp only [colour, result11361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11362_agree : tree11362 = literal11362 := by
  rw [tree11362_def, tree11360_agree, tree11361_agree]
  rfl
theorem node11362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11362 live11362 coloured11362 = result11362 := by
  rw [tree11362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11360_eq
  unfold live11360 coloured11360 at child
  try dsimp only [live11362, coloured11362]
  rw [child]
  dsimp only [result11360]
  have child := node11361_eq
  unfold live11361 coloured11361 at child
  try dsimp only [live11362, coloured11362]
  rw [child]
  dsimp only [result11361]
  try dsimp only [colour, result11362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11363_agree : tree11363 = literal11363 := by
  rw [tree11363_def]
  rfl
theorem node11363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11363 live11363 coloured11363 = result11363 := by
  rw [tree11363_def]
  try dsimp only [colour, result11363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11364_agree : tree11364 = literal11364 := by
  rw [tree11364_def, tree11362_agree, tree11363_agree]
  rfl
theorem node11364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11364 live11364 coloured11364 = result11364 := by
  rw [tree11364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11362_eq
  unfold live11362 coloured11362 at child
  try dsimp only [live11364, coloured11364]
  rw [child]
  dsimp only [result11362]
  have child := node11363_eq
  unfold live11363 coloured11363 at child
  try dsimp only [live11364, coloured11364]
  rw [child]
  dsimp only [result11363]
  try dsimp only [colour, result11364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11365_agree : tree11365 = literal11365 := by
  rw [tree11365_def]
  rfl
theorem node11365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11365 live11365 coloured11365 = result11365 := by
  rw [tree11365_def]
  try dsimp only [colour, result11365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11366_agree : tree11366 = literal11366 := by
  rw [tree11366_def, tree11364_agree, tree11365_agree]
  rfl
theorem node11366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11366 live11366 coloured11366 = result11366 := by
  rw [tree11366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11364_eq
  unfold live11364 coloured11364 at child
  try dsimp only [live11366, coloured11366]
  rw [child]
  dsimp only [result11364]
  have child := node11365_eq
  unfold live11365 coloured11365 at child
  try dsimp only [live11366, coloured11366]
  rw [child]
  dsimp only [result11365]
  try dsimp only [colour, result11366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11367_agree : tree11367 = literal11367 := by
  rw [tree11367_def]
  rfl
theorem node11367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11367 live11367 coloured11367 = result11367 := by
  rw [tree11367_def]
  try dsimp only [colour, result11367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11368_agree : tree11368 = literal11368 := by
  rw [tree11368_def, tree11366_agree, tree11367_agree]
  rfl
theorem node11368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11368 live11368 coloured11368 = result11368 := by
  rw [tree11368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11366_eq
  unfold live11366 coloured11366 at child
  try dsimp only [live11368, coloured11368]
  rw [child]
  dsimp only [result11366]
  have child := node11367_eq
  unfold live11367 coloured11367 at child
  try dsimp only [live11368, coloured11368]
  rw [child]
  dsimp only [result11367]
  try dsimp only [colour, result11368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11369_agree : tree11369 = literal11369 := by
  rw [tree11369_def]
  rfl
theorem node11369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11369 live11369 coloured11369 = result11369 := by
  rw [tree11369_def]
  try dsimp only [colour, result11369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11370_agree : tree11370 = literal11370 := by
  rw [tree11370_def, tree11368_agree, tree11369_agree]
  rfl
theorem node11370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11370 live11370 coloured11370 = result11370 := by
  rw [tree11370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11368_eq
  unfold live11368 coloured11368 at child
  try dsimp only [live11370, coloured11370]
  rw [child]
  dsimp only [result11368]
  have child := node11369_eq
  unfold live11369 coloured11369 at child
  try dsimp only [live11370, coloured11370]
  rw [child]
  dsimp only [result11369]
  try dsimp only [colour, result11370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11371_agree : tree11371 = literal11371 := by
  rw [tree11371_def]
  rfl
theorem node11371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11371 live11371 coloured11371 = result11371 := by
  rw [tree11371_def]
  try dsimp only [colour, result11371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11372_agree : tree11372 = literal11372 := by
  rw [tree11372_def, tree11370_agree, tree11371_agree]
  rfl
theorem node11372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11372 live11372 coloured11372 = result11372 := by
  rw [tree11372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11370_eq
  unfold live11370 coloured11370 at child
  try dsimp only [live11372, coloured11372]
  rw [child]
  dsimp only [result11370]
  have child := node11371_eq
  unfold live11371 coloured11371 at child
  try dsimp only [live11372, coloured11372]
  rw [child]
  dsimp only [result11371]
  try dsimp only [colour, result11372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11373_agree : tree11373 = literal11373 := by
  rw [tree11373_def]
  rfl
theorem node11373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11373 live11373 coloured11373 = result11373 := by
  rw [tree11373_def]
  try dsimp only [colour, result11373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11374_agree : tree11374 = literal11374 := by
  rw [tree11374_def, tree11372_agree, tree11373_agree]
  rfl
theorem node11374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11374 live11374 coloured11374 = result11374 := by
  rw [tree11374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11372_eq
  unfold live11372 coloured11372 at child
  try dsimp only [live11374, coloured11374]
  rw [child]
  dsimp only [result11372]
  have child := node11373_eq
  unfold live11373 coloured11373 at child
  try dsimp only [live11374, coloured11374]
  rw [child]
  dsimp only [result11373]
  try dsimp only [colour, result11374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11375_agree : tree11375 = literal11375 := by
  rw [tree11375_def]
  rfl
theorem node11375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11375 live11375 coloured11375 = result11375 := by
  rw [tree11375_def]
  try dsimp only [colour, result11375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11376_agree : tree11376 = literal11376 := by
  rw [tree11376_def, tree11374_agree, tree11375_agree]
  rfl
theorem node11376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11376 live11376 coloured11376 = result11376 := by
  rw [tree11376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11374_eq
  unfold live11374 coloured11374 at child
  try dsimp only [live11376, coloured11376]
  rw [child]
  dsimp only [result11374]
  have child := node11375_eq
  unfold live11375 coloured11375 at child
  try dsimp only [live11376, coloured11376]
  rw [child]
  dsimp only [result11375]
  try dsimp only [colour, result11376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11377_agree : tree11377 = literal11377 := by
  rw [tree11377_def]
  rfl
theorem node11377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11377 live11377 coloured11377 = result11377 := by
  rw [tree11377_def]
  try dsimp only [colour, result11377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11378_agree : tree11378 = literal11378 := by
  rw [tree11378_def, tree11376_agree, tree11377_agree]
  rfl
theorem node11378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11378 live11378 coloured11378 = result11378 := by
  rw [tree11378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11376_eq
  unfold live11376 coloured11376 at child
  try dsimp only [live11378, coloured11378]
  rw [child]
  dsimp only [result11376]
  have child := node11377_eq
  unfold live11377 coloured11377 at child
  try dsimp only [live11378, coloured11378]
  rw [child]
  dsimp only [result11377]
  try dsimp only [colour, result11378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11379_agree : tree11379 = literal11379 := by
  rw [tree11379_def]
  rfl
theorem node11379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11379 live11379 coloured11379 = result11379 := by
  rw [tree11379_def]
  try dsimp only [colour, result11379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11380_agree : tree11380 = literal11380 := by
  rw [tree11380_def, tree11378_agree, tree11379_agree]
  rfl
theorem node11380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11380 live11380 coloured11380 = result11380 := by
  rw [tree11380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11378_eq
  unfold live11378 coloured11378 at child
  try dsimp only [live11380, coloured11380]
  rw [child]
  dsimp only [result11378]
  have child := node11379_eq
  unfold live11379 coloured11379 at child
  try dsimp only [live11380, coloured11380]
  rw [child]
  dsimp only [result11379]
  try dsimp only [colour, result11380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11381_agree : tree11381 = literal11381 := by
  rw [tree11381_def]
  rfl
theorem node11381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11381 live11381 coloured11381 = result11381 := by
  rw [tree11381_def]
  try dsimp only [colour, result11381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11382_agree : tree11382 = literal11382 := by
  rw [tree11382_def, tree11380_agree, tree11381_agree]
  rfl
theorem node11382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11382 live11382 coloured11382 = result11382 := by
  rw [tree11382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11380_eq
  unfold live11380 coloured11380 at child
  try dsimp only [live11382, coloured11382]
  rw [child]
  dsimp only [result11380]
  have child := node11381_eq
  unfold live11381 coloured11381 at child
  try dsimp only [live11382, coloured11382]
  rw [child]
  dsimp only [result11381]
  try dsimp only [colour, result11382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11383_agree : tree11383 = literal11383 := by
  rw [tree11383_def]
  rfl
theorem node11383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11383 live11383 coloured11383 = result11383 := by
  rw [tree11383_def]
  try dsimp only [colour, result11383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11384_agree : tree11384 = literal11384 := by
  rw [tree11384_def, tree11382_agree, tree11383_agree]
  rfl
theorem node11384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11384 live11384 coloured11384 = result11384 := by
  rw [tree11384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11382_eq
  unfold live11382 coloured11382 at child
  try dsimp only [live11384, coloured11384]
  rw [child]
  dsimp only [result11382]
  have child := node11383_eq
  unfold live11383 coloured11383 at child
  try dsimp only [live11384, coloured11384]
  rw [child]
  dsimp only [result11383]
  try dsimp only [colour, result11384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11385_agree : tree11385 = literal11385 := by
  rw [tree11385_def]
  rfl
theorem node11385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11385 live11385 coloured11385 = result11385 := by
  rw [tree11385_def]
  try dsimp only [colour, result11385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11386_agree : tree11386 = literal11386 := by
  rw [tree11386_def, tree11384_agree, tree11385_agree]
  rfl
theorem node11386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11386 live11386 coloured11386 = result11386 := by
  rw [tree11386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11384_eq
  unfold live11384 coloured11384 at child
  try dsimp only [live11386, coloured11386]
  rw [child]
  dsimp only [result11384]
  have child := node11385_eq
  unfold live11385 coloured11385 at child
  try dsimp only [live11386, coloured11386]
  rw [child]
  dsimp only [result11385]
  try dsimp only [colour, result11386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11387_agree : tree11387 = literal11387 := by
  rw [tree11387_def]
  rfl
theorem node11387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11387 live11387 coloured11387 = result11387 := by
  rw [tree11387_def]
  try dsimp only [colour, result11387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11388_agree : tree11388 = literal11388 := by
  rw [tree11388_def, tree11386_agree, tree11387_agree]
  rfl
theorem node11388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11388 live11388 coloured11388 = result11388 := by
  rw [tree11388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11386_eq
  unfold live11386 coloured11386 at child
  try dsimp only [live11388, coloured11388]
  rw [child]
  dsimp only [result11386]
  have child := node11387_eq
  unfold live11387 coloured11387 at child
  try dsimp only [live11388, coloured11388]
  rw [child]
  dsimp only [result11387]
  try dsimp only [colour, result11388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11389_agree : tree11389 = literal11389 := by
  rw [tree11389_def]
  rfl
theorem node11389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11389 live11389 coloured11389 = result11389 := by
  rw [tree11389_def]
  try dsimp only [colour, result11389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11390_agree : tree11390 = literal11390 := by
  rw [tree11390_def, tree11388_agree, tree11389_agree]
  rfl
theorem node11390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11390 live11390 coloured11390 = result11390 := by
  rw [tree11390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11388_eq
  unfold live11388 coloured11388 at child
  try dsimp only [live11390, coloured11390]
  rw [child]
  dsimp only [result11388]
  have child := node11389_eq
  unfold live11389 coloured11389 at child
  try dsimp only [live11390, coloured11390]
  rw [child]
  dsimp only [result11389]
  try dsimp only [colour, result11390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11391_agree : tree11391 = literal11391 := by
  rw [tree11391_def]
  rfl
theorem node11391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11391 live11391 coloured11391 = result11391 := by
  rw [tree11391_def]
  try dsimp only [colour, result11391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11392_agree : tree11392 = literal11392 := by
  rw [tree11392_def, tree11390_agree, tree11391_agree]
  rfl
theorem node11392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11392 live11392 coloured11392 = result11392 := by
  rw [tree11392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11390_eq
  unfold live11390 coloured11390 at child
  try dsimp only [live11392, coloured11392]
  rw [child]
  dsimp only [result11390]
  have child := node11391_eq
  unfold live11391 coloured11391 at child
  try dsimp only [live11392, coloured11392]
  rw [child]
  dsimp only [result11391]
  try dsimp only [colour, result11392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11393_agree : tree11393 = literal11393 := by
  rw [tree11393_def]
  rfl
theorem node11393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11393 live11393 coloured11393 = result11393 := by
  rw [tree11393_def]
  try dsimp only [colour, result11393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11394_agree : tree11394 = literal11394 := by
  rw [tree11394_def, tree11392_agree, tree11393_agree]
  rfl
theorem node11394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11394 live11394 coloured11394 = result11394 := by
  rw [tree11394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11392_eq
  unfold live11392 coloured11392 at child
  try dsimp only [live11394, coloured11394]
  rw [child]
  dsimp only [result11392]
  have child := node11393_eq
  unfold live11393 coloured11393 at child
  try dsimp only [live11394, coloured11394]
  rw [child]
  dsimp only [result11393]
  try dsimp only [colour, result11394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11395_agree : tree11395 = literal11395 := by
  rw [tree11395_def]
  rfl
theorem node11395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11395 live11395 coloured11395 = result11395 := by
  rw [tree11395_def]
  try dsimp only [colour, result11395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11396_agree : tree11396 = literal11396 := by
  rw [tree11396_def, tree11394_agree, tree11395_agree]
  rfl
theorem node11396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11396 live11396 coloured11396 = result11396 := by
  rw [tree11396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11394_eq
  unfold live11394 coloured11394 at child
  try dsimp only [live11396, coloured11396]
  rw [child]
  dsimp only [result11394]
  have child := node11395_eq
  unfold live11395 coloured11395 at child
  try dsimp only [live11396, coloured11396]
  rw [child]
  dsimp only [result11395]
  try dsimp only [colour, result11396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11397_agree : tree11397 = literal11397 := by
  rw [tree11397_def]
  rfl
theorem node11397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11397 live11397 coloured11397 = result11397 := by
  rw [tree11397_def]
  try dsimp only [colour, result11397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11398_agree : tree11398 = literal11398 := by
  rw [tree11398_def, tree11396_agree, tree11397_agree]
  rfl
theorem node11398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11398 live11398 coloured11398 = result11398 := by
  rw [tree11398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11396_eq
  unfold live11396 coloured11396 at child
  try dsimp only [live11398, coloured11398]
  rw [child]
  dsimp only [result11396]
  have child := node11397_eq
  unfold live11397 coloured11397 at child
  try dsimp only [live11398, coloured11398]
  rw [child]
  dsimp only [result11397]
  try dsimp only [colour, result11398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11399_agree : tree11399 = literal11399 := by
  rw [tree11399_def]
  rfl
theorem node11399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11399 live11399 coloured11399 = result11399 := by
  rw [tree11399_def]
  try dsimp only [colour, result11399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11400_agree : tree11400 = literal11400 := by
  rw [tree11400_def, tree11398_agree, tree11399_agree]
  rfl
theorem node11400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11400 live11400 coloured11400 = result11400 := by
  rw [tree11400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11398_eq
  unfold live11398 coloured11398 at child
  try dsimp only [live11400, coloured11400]
  rw [child]
  dsimp only [result11398]
  have child := node11399_eq
  unfold live11399 coloured11399 at child
  try dsimp only [live11400, coloured11400]
  rw [child]
  dsimp only [result11399]
  try dsimp only [colour, result11400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11401_agree : tree11401 = literal11401 := by
  rw [tree11401_def]
  rfl
theorem node11401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11401 live11401 coloured11401 = result11401 := by
  rw [tree11401_def]
  try dsimp only [colour, result11401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11402_agree : tree11402 = literal11402 := by
  rw [tree11402_def, tree11400_agree, tree11401_agree]
  rfl
theorem node11402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11402 live11402 coloured11402 = result11402 := by
  rw [tree11402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11400_eq
  unfold live11400 coloured11400 at child
  try dsimp only [live11402, coloured11402]
  rw [child]
  dsimp only [result11400]
  have child := node11401_eq
  unfold live11401 coloured11401 at child
  try dsimp only [live11402, coloured11402]
  rw [child]
  dsimp only [result11401]
  try dsimp only [colour, result11402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11403_agree : tree11403 = literal11403 := by
  rw [tree11403_def]
  rfl
theorem node11403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11403 live11403 coloured11403 = result11403 := by
  rw [tree11403_def]
  try dsimp only [colour, result11403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11404_agree : tree11404 = literal11404 := by
  rw [tree11404_def, tree11402_agree, tree11403_agree]
  rfl
theorem node11404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11404 live11404 coloured11404 = result11404 := by
  rw [tree11404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11402_eq
  unfold live11402 coloured11402 at child
  try dsimp only [live11404, coloured11404]
  rw [child]
  dsimp only [result11402]
  have child := node11403_eq
  unfold live11403 coloured11403 at child
  try dsimp only [live11404, coloured11404]
  rw [child]
  dsimp only [result11403]
  try dsimp only [colour, result11404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11405_agree : tree11405 = literal11405 := by
  rw [tree11405_def]
  rfl
theorem node11405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11405 live11405 coloured11405 = result11405 := by
  rw [tree11405_def]
  try dsimp only [colour, result11405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11406_agree : tree11406 = literal11406 := by
  rw [tree11406_def, tree11404_agree, tree11405_agree]
  rfl
theorem node11406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11406 live11406 coloured11406 = result11406 := by
  rw [tree11406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11404_eq
  unfold live11404 coloured11404 at child
  try dsimp only [live11406, coloured11406]
  rw [child]
  dsimp only [result11404]
  have child := node11405_eq
  unfold live11405 coloured11405 at child
  try dsimp only [live11406, coloured11406]
  rw [child]
  dsimp only [result11405]
  try dsimp only [colour, result11406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11407_agree : tree11407 = literal11407 := by
  rw [tree11407_def]
  rfl
theorem node11407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11407 live11407 coloured11407 = result11407 := by
  rw [tree11407_def]
  try dsimp only [colour, result11407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11408_agree : tree11408 = literal11408 := by
  rw [tree11408_def, tree11406_agree, tree11407_agree]
  rfl
theorem node11408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11408 live11408 coloured11408 = result11408 := by
  rw [tree11408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11406_eq
  unfold live11406 coloured11406 at child
  try dsimp only [live11408, coloured11408]
  rw [child]
  dsimp only [result11406]
  have child := node11407_eq
  unfold live11407 coloured11407 at child
  try dsimp only [live11408, coloured11408]
  rw [child]
  dsimp only [result11407]
  try dsimp only [colour, result11408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11409_agree : tree11409 = literal11409 := by
  rw [tree11409_def]
  rfl
theorem node11409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11409 live11409 coloured11409 = result11409 := by
  rw [tree11409_def]
  try dsimp only [colour, result11409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11410_agree : tree11410 = literal11410 := by
  rw [tree11410_def, tree11408_agree, tree11409_agree]
  rfl
theorem node11410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11410 live11410 coloured11410 = result11410 := by
  rw [tree11410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11408_eq
  unfold live11408 coloured11408 at child
  try dsimp only [live11410, coloured11410]
  rw [child]
  dsimp only [result11408]
  have child := node11409_eq
  unfold live11409 coloured11409 at child
  try dsimp only [live11410, coloured11410]
  rw [child]
  dsimp only [result11409]
  try dsimp only [colour, result11410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11411_agree : tree11411 = literal11411 := by
  rw [tree11411_def]
  rfl
theorem node11411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11411 live11411 coloured11411 = result11411 := by
  rw [tree11411_def]
  try dsimp only [colour, result11411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11412_agree : tree11412 = literal11412 := by
  rw [tree11412_def, tree11410_agree, tree11411_agree]
  rfl
theorem node11412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11412 live11412 coloured11412 = result11412 := by
  rw [tree11412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11410_eq
  unfold live11410 coloured11410 at child
  try dsimp only [live11412, coloured11412]
  rw [child]
  dsimp only [result11410]
  have child := node11411_eq
  unfold live11411 coloured11411 at child
  try dsimp only [live11412, coloured11412]
  rw [child]
  dsimp only [result11411]
  try dsimp only [colour, result11412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11413_agree : tree11413 = literal11413 := by
  rw [tree11413_def]
  rfl
theorem node11413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11413 live11413 coloured11413 = result11413 := by
  rw [tree11413_def]
  try dsimp only [colour, result11413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11414_agree : tree11414 = literal11414 := by
  rw [tree11414_def, tree11412_agree, tree11413_agree]
  rfl
theorem node11414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11414 live11414 coloured11414 = result11414 := by
  rw [tree11414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11412_eq
  unfold live11412 coloured11412 at child
  try dsimp only [live11414, coloured11414]
  rw [child]
  dsimp only [result11412]
  have child := node11413_eq
  unfold live11413 coloured11413 at child
  try dsimp only [live11414, coloured11414]
  rw [child]
  dsimp only [result11413]
  try dsimp only [colour, result11414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11415_agree : tree11415 = literal11415 := by
  rw [tree11415_def]
  rfl
theorem node11415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11415 live11415 coloured11415 = result11415 := by
  rw [tree11415_def]
  try dsimp only [colour, result11415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11416_agree : tree11416 = literal11416 := by
  rw [tree11416_def, tree11414_agree, tree11415_agree]
  rfl
theorem node11416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11416 live11416 coloured11416 = result11416 := by
  rw [tree11416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11414_eq
  unfold live11414 coloured11414 at child
  try dsimp only [live11416, coloured11416]
  rw [child]
  dsimp only [result11414]
  have child := node11415_eq
  unfold live11415 coloured11415 at child
  try dsimp only [live11416, coloured11416]
  rw [child]
  dsimp only [result11415]
  try dsimp only [colour, result11416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11417_agree : tree11417 = literal11417 := by
  rw [tree11417_def]
  rfl
theorem node11417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11417 live11417 coloured11417 = result11417 := by
  rw [tree11417_def]
  try dsimp only [colour, result11417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11418_agree : tree11418 = literal11418 := by
  rw [tree11418_def, tree11416_agree, tree11417_agree]
  rfl
theorem node11418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11418 live11418 coloured11418 = result11418 := by
  rw [tree11418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11416_eq
  unfold live11416 coloured11416 at child
  try dsimp only [live11418, coloured11418]
  rw [child]
  dsimp only [result11416]
  have child := node11417_eq
  unfold live11417 coloured11417 at child
  try dsimp only [live11418, coloured11418]
  rw [child]
  dsimp only [result11417]
  try dsimp only [colour, result11418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11419_agree : tree11419 = literal11419 := by
  rw [tree11419_def]
  rfl
theorem node11419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11419 live11419 coloured11419 = result11419 := by
  rw [tree11419_def]
  try dsimp only [colour, result11419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11420_agree : tree11420 = literal11420 := by
  rw [tree11420_def, tree11418_agree, tree11419_agree]
  rfl
theorem node11420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11420 live11420 coloured11420 = result11420 := by
  rw [tree11420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11418_eq
  unfold live11418 coloured11418 at child
  try dsimp only [live11420, coloured11420]
  rw [child]
  dsimp only [result11418]
  have child := node11419_eq
  unfold live11419 coloured11419 at child
  try dsimp only [live11420, coloured11420]
  rw [child]
  dsimp only [result11419]
  try dsimp only [colour, result11420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11421_agree : tree11421 = literal11421 := by
  rw [tree11421_def]
  rfl
theorem node11421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11421 live11421 coloured11421 = result11421 := by
  rw [tree11421_def]
  try dsimp only [colour, result11421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11422_agree : tree11422 = literal11422 := by
  rw [tree11422_def, tree11420_agree, tree11421_agree]
  rfl
theorem node11422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11422 live11422 coloured11422 = result11422 := by
  rw [tree11422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11420_eq
  unfold live11420 coloured11420 at child
  try dsimp only [live11422, coloured11422]
  rw [child]
  dsimp only [result11420]
  have child := node11421_eq
  unfold live11421 coloured11421 at child
  try dsimp only [live11422, coloured11422]
  rw [child]
  dsimp only [result11421]
  try dsimp only [colour, result11422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11423_agree : tree11423 = literal11423 := by
  rw [tree11423_def]
  rfl
theorem node11423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11423 live11423 coloured11423 = result11423 := by
  rw [tree11423_def]
  try dsimp only [colour, result11423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
