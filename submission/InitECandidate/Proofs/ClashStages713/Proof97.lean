import InitECandidate.Proofs.ClashStages713.Proof96
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9312_agree : tree9312 = literal9312 := by
  rw [tree9312_def, tree9310_agree, tree9311_agree]
  rfl
theorem node9312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9312 live9312 coloured9312 = result9312 := by
  rw [tree9312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9310_eq
  unfold live9310 coloured9310 at child
  try dsimp only [live9312, coloured9312]
  rw [child]
  dsimp only [result9310]
  have child := node9311_eq
  unfold live9311 coloured9311 at child
  try dsimp only [live9312, coloured9312]
  rw [child]
  dsimp only [result9311]
  try dsimp only [colour, result9312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9313_agree : tree9313 = literal9313 := by
  rw [tree9313_def]
  rfl
theorem node9313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9313 live9313 coloured9313 = result9313 := by
  rw [tree9313_def]
  try dsimp only [colour, result9313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9314_agree : tree9314 = literal9314 := by
  rw [tree9314_def, tree9312_agree, tree9313_agree]
  rfl
theorem node9314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9314 live9314 coloured9314 = result9314 := by
  rw [tree9314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9312_eq
  unfold live9312 coloured9312 at child
  try dsimp only [live9314, coloured9314]
  rw [child]
  dsimp only [result9312]
  have child := node9313_eq
  unfold live9313 coloured9313 at child
  try dsimp only [live9314, coloured9314]
  rw [child]
  dsimp only [result9313]
  try dsimp only [colour, result9314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9315_agree : tree9315 = literal9315 := by
  rw [tree9315_def]
  rfl
theorem node9315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9315 live9315 coloured9315 = result9315 := by
  rw [tree9315_def]
  try dsimp only [colour, result9315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9316_agree : tree9316 = literal9316 := by
  rw [tree9316_def, tree9314_agree, tree9315_agree]
  rfl
theorem node9316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9316 live9316 coloured9316 = result9316 := by
  rw [tree9316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9314_eq
  unfold live9314 coloured9314 at child
  try dsimp only [live9316, coloured9316]
  rw [child]
  dsimp only [result9314]
  have child := node9315_eq
  unfold live9315 coloured9315 at child
  try dsimp only [live9316, coloured9316]
  rw [child]
  dsimp only [result9315]
  try dsimp only [colour, result9316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9317_agree : tree9317 = literal9317 := by
  rw [tree9317_def]
  rfl
theorem node9317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9317 live9317 coloured9317 = result9317 := by
  rw [tree9317_def]
  try dsimp only [colour, result9317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9318_agree : tree9318 = literal9318 := by
  rw [tree9318_def, tree9316_agree, tree9317_agree]
  rfl
theorem node9318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9318 live9318 coloured9318 = result9318 := by
  rw [tree9318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9316_eq
  unfold live9316 coloured9316 at child
  try dsimp only [live9318, coloured9318]
  rw [child]
  dsimp only [result9316]
  have child := node9317_eq
  unfold live9317 coloured9317 at child
  try dsimp only [live9318, coloured9318]
  rw [child]
  dsimp only [result9317]
  try dsimp only [colour, result9318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9319_agree : tree9319 = literal9319 := by
  rw [tree9319_def]
  rfl
theorem node9319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9319 live9319 coloured9319 = result9319 := by
  rw [tree9319_def]
  try dsimp only [colour, result9319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9320_agree : tree9320 = literal9320 := by
  rw [tree9320_def, tree9318_agree, tree9319_agree]
  rfl
theorem node9320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9320 live9320 coloured9320 = result9320 := by
  rw [tree9320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9318_eq
  unfold live9318 coloured9318 at child
  try dsimp only [live9320, coloured9320]
  rw [child]
  dsimp only [result9318]
  have child := node9319_eq
  unfold live9319 coloured9319 at child
  try dsimp only [live9320, coloured9320]
  rw [child]
  dsimp only [result9319]
  try dsimp only [colour, result9320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9321_agree : tree9321 = literal9321 := by
  rw [tree9321_def]
  rfl
theorem node9321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9321 live9321 coloured9321 = result9321 := by
  rw [tree9321_def]
  try dsimp only [colour, result9321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9322_agree : tree9322 = literal9322 := by
  rw [tree9322_def, tree9320_agree, tree9321_agree]
  rfl
theorem node9322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9322 live9322 coloured9322 = result9322 := by
  rw [tree9322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9320_eq
  unfold live9320 coloured9320 at child
  try dsimp only [live9322, coloured9322]
  rw [child]
  dsimp only [result9320]
  have child := node9321_eq
  unfold live9321 coloured9321 at child
  try dsimp only [live9322, coloured9322]
  rw [child]
  dsimp only [result9321]
  try dsimp only [colour, result9322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9323_agree : tree9323 = literal9323 := by
  rw [tree9323_def]
  rfl
theorem node9323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9323 live9323 coloured9323 = result9323 := by
  rw [tree9323_def]
  try dsimp only [colour, result9323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9324_agree : tree9324 = literal9324 := by
  rw [tree9324_def, tree9322_agree, tree9323_agree]
  rfl
theorem node9324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9324 live9324 coloured9324 = result9324 := by
  rw [tree9324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9322_eq
  unfold live9322 coloured9322 at child
  try dsimp only [live9324, coloured9324]
  rw [child]
  dsimp only [result9322]
  have child := node9323_eq
  unfold live9323 coloured9323 at child
  try dsimp only [live9324, coloured9324]
  rw [child]
  dsimp only [result9323]
  try dsimp only [colour, result9324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9325_agree : tree9325 = literal9325 := by
  rw [tree9325_def]
  rfl
theorem node9325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9325 live9325 coloured9325 = result9325 := by
  rw [tree9325_def]
  try dsimp only [colour, result9325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9326_agree : tree9326 = literal9326 := by
  rw [tree9326_def, tree9324_agree, tree9325_agree]
  rfl
theorem node9326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9326 live9326 coloured9326 = result9326 := by
  rw [tree9326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9324_eq
  unfold live9324 coloured9324 at child
  try dsimp only [live9326, coloured9326]
  rw [child]
  dsimp only [result9324]
  have child := node9325_eq
  unfold live9325 coloured9325 at child
  try dsimp only [live9326, coloured9326]
  rw [child]
  dsimp only [result9325]
  try dsimp only [colour, result9326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9327_agree : tree9327 = literal9327 := by
  rw [tree9327_def]
  rfl
theorem node9327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9327 live9327 coloured9327 = result9327 := by
  rw [tree9327_def]
  try dsimp only [colour, result9327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9328_agree : tree9328 = literal9328 := by
  rw [tree9328_def, tree9326_agree, tree9327_agree]
  rfl
theorem node9328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9328 live9328 coloured9328 = result9328 := by
  rw [tree9328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9326_eq
  unfold live9326 coloured9326 at child
  try dsimp only [live9328, coloured9328]
  rw [child]
  dsimp only [result9326]
  have child := node9327_eq
  unfold live9327 coloured9327 at child
  try dsimp only [live9328, coloured9328]
  rw [child]
  dsimp only [result9327]
  try dsimp only [colour, result9328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9329_agree : tree9329 = literal9329 := by
  rw [tree9329_def]
  rfl
theorem node9329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9329 live9329 coloured9329 = result9329 := by
  rw [tree9329_def]
  try dsimp only [colour, result9329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9330_agree : tree9330 = literal9330 := by
  rw [tree9330_def, tree9328_agree, tree9329_agree]
  rfl
theorem node9330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9330 live9330 coloured9330 = result9330 := by
  rw [tree9330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9328_eq
  unfold live9328 coloured9328 at child
  try dsimp only [live9330, coloured9330]
  rw [child]
  dsimp only [result9328]
  have child := node9329_eq
  unfold live9329 coloured9329 at child
  try dsimp only [live9330, coloured9330]
  rw [child]
  dsimp only [result9329]
  try dsimp only [colour, result9330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9331_agree : tree9331 = literal9331 := by
  rw [tree9331_def]
  rfl
theorem node9331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9331 live9331 coloured9331 = result9331 := by
  rw [tree9331_def]
  try dsimp only [colour, result9331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9332_agree : tree9332 = literal9332 := by
  rw [tree9332_def, tree9330_agree, tree9331_agree]
  rfl
theorem node9332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9332 live9332 coloured9332 = result9332 := by
  rw [tree9332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9330_eq
  unfold live9330 coloured9330 at child
  try dsimp only [live9332, coloured9332]
  rw [child]
  dsimp only [result9330]
  have child := node9331_eq
  unfold live9331 coloured9331 at child
  try dsimp only [live9332, coloured9332]
  rw [child]
  dsimp only [result9331]
  try dsimp only [colour, result9332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9333_agree : tree9333 = literal9333 := by
  rw [tree9333_def]
  rfl
theorem node9333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9333 live9333 coloured9333 = result9333 := by
  rw [tree9333_def]
  try dsimp only [colour, result9333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9334_agree : tree9334 = literal9334 := by
  rw [tree9334_def, tree9332_agree, tree9333_agree]
  rfl
theorem node9334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9334 live9334 coloured9334 = result9334 := by
  rw [tree9334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9332_eq
  unfold live9332 coloured9332 at child
  try dsimp only [live9334, coloured9334]
  rw [child]
  dsimp only [result9332]
  have child := node9333_eq
  unfold live9333 coloured9333 at child
  try dsimp only [live9334, coloured9334]
  rw [child]
  dsimp only [result9333]
  try dsimp only [colour, result9334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9335_agree : tree9335 = literal9335 := by
  rw [tree9335_def]
  rfl
theorem node9335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9335 live9335 coloured9335 = result9335 := by
  rw [tree9335_def]
  try dsimp only [colour, result9335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9336_agree : tree9336 = literal9336 := by
  rw [tree9336_def, tree9334_agree, tree9335_agree]
  rfl
theorem node9336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9336 live9336 coloured9336 = result9336 := by
  rw [tree9336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9334_eq
  unfold live9334 coloured9334 at child
  try dsimp only [live9336, coloured9336]
  rw [child]
  dsimp only [result9334]
  have child := node9335_eq
  unfold live9335 coloured9335 at child
  try dsimp only [live9336, coloured9336]
  rw [child]
  dsimp only [result9335]
  try dsimp only [colour, result9336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9337_agree : tree9337 = literal9337 := by
  rw [tree9337_def]
  rfl
theorem node9337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9337 live9337 coloured9337 = result9337 := by
  rw [tree9337_def]
  try dsimp only [colour, result9337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9338_agree : tree9338 = literal9338 := by
  rw [tree9338_def, tree9336_agree, tree9337_agree]
  rfl
theorem node9338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9338 live9338 coloured9338 = result9338 := by
  rw [tree9338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9336_eq
  unfold live9336 coloured9336 at child
  try dsimp only [live9338, coloured9338]
  rw [child]
  dsimp only [result9336]
  have child := node9337_eq
  unfold live9337 coloured9337 at child
  try dsimp only [live9338, coloured9338]
  rw [child]
  dsimp only [result9337]
  try dsimp only [colour, result9338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9339_agree : tree9339 = literal9339 := by
  rw [tree9339_def]
  rfl
theorem node9339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9339 live9339 coloured9339 = result9339 := by
  rw [tree9339_def]
  try dsimp only [colour, result9339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9340_agree : tree9340 = literal9340 := by
  rw [tree9340_def, tree9338_agree, tree9339_agree]
  rfl
theorem node9340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9340 live9340 coloured9340 = result9340 := by
  rw [tree9340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9338_eq
  unfold live9338 coloured9338 at child
  try dsimp only [live9340, coloured9340]
  rw [child]
  dsimp only [result9338]
  have child := node9339_eq
  unfold live9339 coloured9339 at child
  try dsimp only [live9340, coloured9340]
  rw [child]
  dsimp only [result9339]
  try dsimp only [colour, result9340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9341_agree : tree9341 = literal9341 := by
  rw [tree9341_def]
  rfl
theorem node9341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9341 live9341 coloured9341 = result9341 := by
  rw [tree9341_def]
  try dsimp only [colour, result9341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9342_agree : tree9342 = literal9342 := by
  rw [tree9342_def, tree9340_agree, tree9341_agree]
  rfl
theorem node9342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9342 live9342 coloured9342 = result9342 := by
  rw [tree9342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9340_eq
  unfold live9340 coloured9340 at child
  try dsimp only [live9342, coloured9342]
  rw [child]
  dsimp only [result9340]
  have child := node9341_eq
  unfold live9341 coloured9341 at child
  try dsimp only [live9342, coloured9342]
  rw [child]
  dsimp only [result9341]
  try dsimp only [colour, result9342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9343_agree : tree9343 = literal9343 := by
  rw [tree9343_def]
  rfl
theorem node9343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9343 live9343 coloured9343 = result9343 := by
  rw [tree9343_def]
  try dsimp only [colour, result9343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9344_agree : tree9344 = literal9344 := by
  rw [tree9344_def, tree9342_agree, tree9343_agree]
  rfl
theorem node9344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9344 live9344 coloured9344 = result9344 := by
  rw [tree9344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9342_eq
  unfold live9342 coloured9342 at child
  try dsimp only [live9344, coloured9344]
  rw [child]
  dsimp only [result9342]
  have child := node9343_eq
  unfold live9343 coloured9343 at child
  try dsimp only [live9344, coloured9344]
  rw [child]
  dsimp only [result9343]
  try dsimp only [colour, result9344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9345_agree : tree9345 = literal9345 := by
  rw [tree9345_def]
  rfl
theorem node9345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9345 live9345 coloured9345 = result9345 := by
  rw [tree9345_def]
  try dsimp only [colour, result9345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9346_agree : tree9346 = literal9346 := by
  rw [tree9346_def, tree9344_agree, tree9345_agree]
  rfl
theorem node9346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9346 live9346 coloured9346 = result9346 := by
  rw [tree9346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9344_eq
  unfold live9344 coloured9344 at child
  try dsimp only [live9346, coloured9346]
  rw [child]
  dsimp only [result9344]
  have child := node9345_eq
  unfold live9345 coloured9345 at child
  try dsimp only [live9346, coloured9346]
  rw [child]
  dsimp only [result9345]
  try dsimp only [colour, result9346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9347_agree : tree9347 = literal9347 := by
  rw [tree9347_def]
  rfl
theorem node9347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9347 live9347 coloured9347 = result9347 := by
  rw [tree9347_def]
  try dsimp only [colour, result9347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9348_agree : tree9348 = literal9348 := by
  rw [tree9348_def, tree9346_agree, tree9347_agree]
  rfl
theorem node9348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9348 live9348 coloured9348 = result9348 := by
  rw [tree9348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9346_eq
  unfold live9346 coloured9346 at child
  try dsimp only [live9348, coloured9348]
  rw [child]
  dsimp only [result9346]
  have child := node9347_eq
  unfold live9347 coloured9347 at child
  try dsimp only [live9348, coloured9348]
  rw [child]
  dsimp only [result9347]
  try dsimp only [colour, result9348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9349_agree : tree9349 = literal9349 := by
  rw [tree9349_def]
  rfl
theorem node9349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9349 live9349 coloured9349 = result9349 := by
  rw [tree9349_def]
  try dsimp only [colour, result9349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9350_agree : tree9350 = literal9350 := by
  rw [tree9350_def, tree9348_agree, tree9349_agree]
  rfl
theorem node9350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9350 live9350 coloured9350 = result9350 := by
  rw [tree9350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9348_eq
  unfold live9348 coloured9348 at child
  try dsimp only [live9350, coloured9350]
  rw [child]
  dsimp only [result9348]
  have child := node9349_eq
  unfold live9349 coloured9349 at child
  try dsimp only [live9350, coloured9350]
  rw [child]
  dsimp only [result9349]
  try dsimp only [colour, result9350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9351_agree : tree9351 = literal9351 := by
  rw [tree9351_def]
  rfl
theorem node9351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9351 live9351 coloured9351 = result9351 := by
  rw [tree9351_def]
  try dsimp only [colour, result9351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9352_agree : tree9352 = literal9352 := by
  rw [tree9352_def, tree9350_agree, tree9351_agree]
  rfl
theorem node9352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9352 live9352 coloured9352 = result9352 := by
  rw [tree9352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9350_eq
  unfold live9350 coloured9350 at child
  try dsimp only [live9352, coloured9352]
  rw [child]
  dsimp only [result9350]
  have child := node9351_eq
  unfold live9351 coloured9351 at child
  try dsimp only [live9352, coloured9352]
  rw [child]
  dsimp only [result9351]
  try dsimp only [colour, result9352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9353_agree : tree9353 = literal9353 := by
  rw [tree9353_def]
  rfl
theorem node9353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9353 live9353 coloured9353 = result9353 := by
  rw [tree9353_def]
  try dsimp only [colour, result9353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9354_agree : tree9354 = literal9354 := by
  rw [tree9354_def, tree9352_agree, tree9353_agree]
  rfl
theorem node9354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9354 live9354 coloured9354 = result9354 := by
  rw [tree9354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9352_eq
  unfold live9352 coloured9352 at child
  try dsimp only [live9354, coloured9354]
  rw [child]
  dsimp only [result9352]
  have child := node9353_eq
  unfold live9353 coloured9353 at child
  try dsimp only [live9354, coloured9354]
  rw [child]
  dsimp only [result9353]
  try dsimp only [colour, result9354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9355_agree : tree9355 = literal9355 := by
  rw [tree9355_def]
  rfl
theorem node9355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9355 live9355 coloured9355 = result9355 := by
  rw [tree9355_def]
  try dsimp only [colour, result9355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9356_agree : tree9356 = literal9356 := by
  rw [tree9356_def, tree9354_agree, tree9355_agree]
  rfl
theorem node9356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9356 live9356 coloured9356 = result9356 := by
  rw [tree9356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9354_eq
  unfold live9354 coloured9354 at child
  try dsimp only [live9356, coloured9356]
  rw [child]
  dsimp only [result9354]
  have child := node9355_eq
  unfold live9355 coloured9355 at child
  try dsimp only [live9356, coloured9356]
  rw [child]
  dsimp only [result9355]
  try dsimp only [colour, result9356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9357_agree : tree9357 = literal9357 := by
  rw [tree9357_def]
  rfl
theorem node9357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9357 live9357 coloured9357 = result9357 := by
  rw [tree9357_def]
  try dsimp only [colour, result9357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9358_agree : tree9358 = literal9358 := by
  rw [tree9358_def, tree9356_agree, tree9357_agree]
  rfl
theorem node9358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9358 live9358 coloured9358 = result9358 := by
  rw [tree9358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9356_eq
  unfold live9356 coloured9356 at child
  try dsimp only [live9358, coloured9358]
  rw [child]
  dsimp only [result9356]
  have child := node9357_eq
  unfold live9357 coloured9357 at child
  try dsimp only [live9358, coloured9358]
  rw [child]
  dsimp only [result9357]
  try dsimp only [colour, result9358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9359_agree : tree9359 = literal9359 := by
  rw [tree9359_def]
  rfl
theorem node9359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9359 live9359 coloured9359 = result9359 := by
  rw [tree9359_def]
  try dsimp only [colour, result9359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9360_agree : tree9360 = literal9360 := by
  rw [tree9360_def, tree9358_agree, tree9359_agree]
  rfl
theorem node9360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9360 live9360 coloured9360 = result9360 := by
  rw [tree9360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9358_eq
  unfold live9358 coloured9358 at child
  try dsimp only [live9360, coloured9360]
  rw [child]
  dsimp only [result9358]
  have child := node9359_eq
  unfold live9359 coloured9359 at child
  try dsimp only [live9360, coloured9360]
  rw [child]
  dsimp only [result9359]
  try dsimp only [colour, result9360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9361_agree : tree9361 = literal9361 := by
  rw [tree9361_def]
  rfl
theorem node9361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9361 live9361 coloured9361 = result9361 := by
  rw [tree9361_def]
  try dsimp only [colour, result9361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9362_agree : tree9362 = literal9362 := by
  rw [tree9362_def, tree9360_agree, tree9361_agree]
  rfl
theorem node9362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9362 live9362 coloured9362 = result9362 := by
  rw [tree9362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9360_eq
  unfold live9360 coloured9360 at child
  try dsimp only [live9362, coloured9362]
  rw [child]
  dsimp only [result9360]
  have child := node9361_eq
  unfold live9361 coloured9361 at child
  try dsimp only [live9362, coloured9362]
  rw [child]
  dsimp only [result9361]
  try dsimp only [colour, result9362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9363_agree : tree9363 = literal9363 := by
  rw [tree9363_def]
  rfl
theorem node9363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9363 live9363 coloured9363 = result9363 := by
  rw [tree9363_def]
  try dsimp only [colour, result9363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9364_agree : tree9364 = literal9364 := by
  rw [tree9364_def, tree9362_agree, tree9363_agree]
  rfl
theorem node9364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9364 live9364 coloured9364 = result9364 := by
  rw [tree9364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9362_eq
  unfold live9362 coloured9362 at child
  try dsimp only [live9364, coloured9364]
  rw [child]
  dsimp only [result9362]
  have child := node9363_eq
  unfold live9363 coloured9363 at child
  try dsimp only [live9364, coloured9364]
  rw [child]
  dsimp only [result9363]
  try dsimp only [colour, result9364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9365_agree : tree9365 = literal9365 := by
  rw [tree9365_def]
  rfl
theorem node9365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9365 live9365 coloured9365 = result9365 := by
  rw [tree9365_def]
  try dsimp only [colour, result9365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9366_agree : tree9366 = literal9366 := by
  rw [tree9366_def, tree9364_agree, tree9365_agree]
  rfl
theorem node9366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9366 live9366 coloured9366 = result9366 := by
  rw [tree9366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9364_eq
  unfold live9364 coloured9364 at child
  try dsimp only [live9366, coloured9366]
  rw [child]
  dsimp only [result9364]
  have child := node9365_eq
  unfold live9365 coloured9365 at child
  try dsimp only [live9366, coloured9366]
  rw [child]
  dsimp only [result9365]
  try dsimp only [colour, result9366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9367_agree : tree9367 = literal9367 := by
  rw [tree9367_def]
  rfl
theorem node9367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9367 live9367 coloured9367 = result9367 := by
  rw [tree9367_def]
  try dsimp only [colour, result9367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9368_agree : tree9368 = literal9368 := by
  rw [tree9368_def, tree9366_agree, tree9367_agree]
  rfl
theorem node9368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9368 live9368 coloured9368 = result9368 := by
  rw [tree9368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9366_eq
  unfold live9366 coloured9366 at child
  try dsimp only [live9368, coloured9368]
  rw [child]
  dsimp only [result9366]
  have child := node9367_eq
  unfold live9367 coloured9367 at child
  try dsimp only [live9368, coloured9368]
  rw [child]
  dsimp only [result9367]
  try dsimp only [colour, result9368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9369_agree : tree9369 = literal9369 := by
  rw [tree9369_def]
  rfl
theorem node9369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9369 live9369 coloured9369 = result9369 := by
  rw [tree9369_def]
  try dsimp only [colour, result9369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9370_agree : tree9370 = literal9370 := by
  rw [tree9370_def, tree9368_agree, tree9369_agree]
  rfl
theorem node9370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9370 live9370 coloured9370 = result9370 := by
  rw [tree9370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9368_eq
  unfold live9368 coloured9368 at child
  try dsimp only [live9370, coloured9370]
  rw [child]
  dsimp only [result9368]
  have child := node9369_eq
  unfold live9369 coloured9369 at child
  try dsimp only [live9370, coloured9370]
  rw [child]
  dsimp only [result9369]
  try dsimp only [colour, result9370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9371_agree : tree9371 = literal9371 := by
  rw [tree9371_def]
  rfl
theorem node9371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9371 live9371 coloured9371 = result9371 := by
  rw [tree9371_def]
  try dsimp only [colour, result9371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9372_agree : tree9372 = literal9372 := by
  rw [tree9372_def, tree9370_agree, tree9371_agree]
  rfl
theorem node9372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9372 live9372 coloured9372 = result9372 := by
  rw [tree9372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9370_eq
  unfold live9370 coloured9370 at child
  try dsimp only [live9372, coloured9372]
  rw [child]
  dsimp only [result9370]
  have child := node9371_eq
  unfold live9371 coloured9371 at child
  try dsimp only [live9372, coloured9372]
  rw [child]
  dsimp only [result9371]
  try dsimp only [colour, result9372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9373_agree : tree9373 = literal9373 := by
  rw [tree9373_def]
  rfl
theorem node9373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9373 live9373 coloured9373 = result9373 := by
  rw [tree9373_def]
  try dsimp only [colour, result9373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9374_agree : tree9374 = literal9374 := by
  rw [tree9374_def, tree9372_agree, tree9373_agree]
  rfl
theorem node9374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9374 live9374 coloured9374 = result9374 := by
  rw [tree9374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9372_eq
  unfold live9372 coloured9372 at child
  try dsimp only [live9374, coloured9374]
  rw [child]
  dsimp only [result9372]
  have child := node9373_eq
  unfold live9373 coloured9373 at child
  try dsimp only [live9374, coloured9374]
  rw [child]
  dsimp only [result9373]
  try dsimp only [colour, result9374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9375_agree : tree9375 = literal9375 := by
  rw [tree9375_def]
  rfl
theorem node9375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9375 live9375 coloured9375 = result9375 := by
  rw [tree9375_def]
  try dsimp only [colour, result9375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9376_agree : tree9376 = literal9376 := by
  rw [tree9376_def, tree9374_agree, tree9375_agree]
  rfl
theorem node9376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9376 live9376 coloured9376 = result9376 := by
  rw [tree9376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9374_eq
  unfold live9374 coloured9374 at child
  try dsimp only [live9376, coloured9376]
  rw [child]
  dsimp only [result9374]
  have child := node9375_eq
  unfold live9375 coloured9375 at child
  try dsimp only [live9376, coloured9376]
  rw [child]
  dsimp only [result9375]
  try dsimp only [colour, result9376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9377_agree : tree9377 = literal9377 := by
  rw [tree9377_def]
  rfl
theorem node9377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9377 live9377 coloured9377 = result9377 := by
  rw [tree9377_def]
  try dsimp only [colour, result9377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9378_agree : tree9378 = literal9378 := by
  rw [tree9378_def, tree9376_agree, tree9377_agree]
  rfl
theorem node9378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9378 live9378 coloured9378 = result9378 := by
  rw [tree9378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9376_eq
  unfold live9376 coloured9376 at child
  try dsimp only [live9378, coloured9378]
  rw [child]
  dsimp only [result9376]
  have child := node9377_eq
  unfold live9377 coloured9377 at child
  try dsimp only [live9378, coloured9378]
  rw [child]
  dsimp only [result9377]
  try dsimp only [colour, result9378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9379_agree : tree9379 = literal9379 := by
  rw [tree9379_def]
  rfl
theorem node9379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9379 live9379 coloured9379 = result9379 := by
  rw [tree9379_def]
  try dsimp only [colour, result9379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9380_agree : tree9380 = literal9380 := by
  rw [tree9380_def, tree9378_agree, tree9379_agree]
  rfl
theorem node9380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9380 live9380 coloured9380 = result9380 := by
  rw [tree9380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9378_eq
  unfold live9378 coloured9378 at child
  try dsimp only [live9380, coloured9380]
  rw [child]
  dsimp only [result9378]
  have child := node9379_eq
  unfold live9379 coloured9379 at child
  try dsimp only [live9380, coloured9380]
  rw [child]
  dsimp only [result9379]
  try dsimp only [colour, result9380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9381_agree : tree9381 = literal9381 := by
  rw [tree9381_def]
  rfl
theorem node9381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9381 live9381 coloured9381 = result9381 := by
  rw [tree9381_def]
  try dsimp only [colour, result9381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9382_agree : tree9382 = literal9382 := by
  rw [tree9382_def, tree9380_agree, tree9381_agree]
  rfl
theorem node9382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9382 live9382 coloured9382 = result9382 := by
  rw [tree9382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9380_eq
  unfold live9380 coloured9380 at child
  try dsimp only [live9382, coloured9382]
  rw [child]
  dsimp only [result9380]
  have child := node9381_eq
  unfold live9381 coloured9381 at child
  try dsimp only [live9382, coloured9382]
  rw [child]
  dsimp only [result9381]
  try dsimp only [colour, result9382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9383_agree : tree9383 = literal9383 := by
  rw [tree9383_def]
  rfl
theorem node9383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9383 live9383 coloured9383 = result9383 := by
  rw [tree9383_def]
  try dsimp only [colour, result9383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9384_agree : tree9384 = literal9384 := by
  rw [tree9384_def, tree9382_agree, tree9383_agree]
  rfl
theorem node9384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9384 live9384 coloured9384 = result9384 := by
  rw [tree9384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9382_eq
  unfold live9382 coloured9382 at child
  try dsimp only [live9384, coloured9384]
  rw [child]
  dsimp only [result9382]
  have child := node9383_eq
  unfold live9383 coloured9383 at child
  try dsimp only [live9384, coloured9384]
  rw [child]
  dsimp only [result9383]
  try dsimp only [colour, result9384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9385_agree : tree9385 = literal9385 := by
  rw [tree9385_def]
  rfl
theorem node9385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9385 live9385 coloured9385 = result9385 := by
  rw [tree9385_def]
  try dsimp only [colour, result9385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9386_agree : tree9386 = literal9386 := by
  rw [tree9386_def, tree9384_agree, tree9385_agree]
  rfl
theorem node9386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9386 live9386 coloured9386 = result9386 := by
  rw [tree9386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9384_eq
  unfold live9384 coloured9384 at child
  try dsimp only [live9386, coloured9386]
  rw [child]
  dsimp only [result9384]
  have child := node9385_eq
  unfold live9385 coloured9385 at child
  try dsimp only [live9386, coloured9386]
  rw [child]
  dsimp only [result9385]
  try dsimp only [colour, result9386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9387_agree : tree9387 = literal9387 := by
  rw [tree9387_def]
  rfl
theorem node9387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9387 live9387 coloured9387 = result9387 := by
  rw [tree9387_def]
  try dsimp only [colour, result9387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9388_agree : tree9388 = literal9388 := by
  rw [tree9388_def, tree9386_agree, tree9387_agree]
  rfl
theorem node9388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9388 live9388 coloured9388 = result9388 := by
  rw [tree9388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9386_eq
  unfold live9386 coloured9386 at child
  try dsimp only [live9388, coloured9388]
  rw [child]
  dsimp only [result9386]
  have child := node9387_eq
  unfold live9387 coloured9387 at child
  try dsimp only [live9388, coloured9388]
  rw [child]
  dsimp only [result9387]
  try dsimp only [colour, result9388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9389_agree : tree9389 = literal9389 := by
  rw [tree9389_def]
  rfl
theorem node9389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9389 live9389 coloured9389 = result9389 := by
  rw [tree9389_def]
  try dsimp only [colour, result9389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9390_agree : tree9390 = literal9390 := by
  rw [tree9390_def, tree9388_agree, tree9389_agree]
  rfl
theorem node9390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9390 live9390 coloured9390 = result9390 := by
  rw [tree9390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9388_eq
  unfold live9388 coloured9388 at child
  try dsimp only [live9390, coloured9390]
  rw [child]
  dsimp only [result9388]
  have child := node9389_eq
  unfold live9389 coloured9389 at child
  try dsimp only [live9390, coloured9390]
  rw [child]
  dsimp only [result9389]
  try dsimp only [colour, result9390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9391_agree : tree9391 = literal9391 := by
  rw [tree9391_def]
  rfl
theorem node9391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9391 live9391 coloured9391 = result9391 := by
  rw [tree9391_def]
  try dsimp only [colour, result9391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9392_agree : tree9392 = literal9392 := by
  rw [tree9392_def, tree9390_agree, tree9391_agree]
  rfl
theorem node9392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9392 live9392 coloured9392 = result9392 := by
  rw [tree9392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9390_eq
  unfold live9390 coloured9390 at child
  try dsimp only [live9392, coloured9392]
  rw [child]
  dsimp only [result9390]
  have child := node9391_eq
  unfold live9391 coloured9391 at child
  try dsimp only [live9392, coloured9392]
  rw [child]
  dsimp only [result9391]
  try dsimp only [colour, result9392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9393_agree : tree9393 = literal9393 := by
  rw [tree9393_def]
  rfl
theorem node9393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9393 live9393 coloured9393 = result9393 := by
  rw [tree9393_def]
  try dsimp only [colour, result9393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9394_agree : tree9394 = literal9394 := by
  rw [tree9394_def, tree9392_agree, tree9393_agree]
  rfl
theorem node9394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9394 live9394 coloured9394 = result9394 := by
  rw [tree9394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9392_eq
  unfold live9392 coloured9392 at child
  try dsimp only [live9394, coloured9394]
  rw [child]
  dsimp only [result9392]
  have child := node9393_eq
  unfold live9393 coloured9393 at child
  try dsimp only [live9394, coloured9394]
  rw [child]
  dsimp only [result9393]
  try dsimp only [colour, result9394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9395_agree : tree9395 = literal9395 := by
  rw [tree9395_def]
  rfl
theorem node9395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9395 live9395 coloured9395 = result9395 := by
  rw [tree9395_def]
  try dsimp only [colour, result9395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9396_agree : tree9396 = literal9396 := by
  rw [tree9396_def, tree9394_agree, tree9395_agree]
  rfl
theorem node9396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9396 live9396 coloured9396 = result9396 := by
  rw [tree9396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9394_eq
  unfold live9394 coloured9394 at child
  try dsimp only [live9396, coloured9396]
  rw [child]
  dsimp only [result9394]
  have child := node9395_eq
  unfold live9395 coloured9395 at child
  try dsimp only [live9396, coloured9396]
  rw [child]
  dsimp only [result9395]
  try dsimp only [colour, result9396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9397_agree : tree9397 = literal9397 := by
  rw [tree9397_def]
  rfl
theorem node9397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9397 live9397 coloured9397 = result9397 := by
  rw [tree9397_def]
  try dsimp only [colour, result9397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9398_agree : tree9398 = literal9398 := by
  rw [tree9398_def, tree9396_agree, tree9397_agree]
  rfl
theorem node9398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9398 live9398 coloured9398 = result9398 := by
  rw [tree9398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9396_eq
  unfold live9396 coloured9396 at child
  try dsimp only [live9398, coloured9398]
  rw [child]
  dsimp only [result9396]
  have child := node9397_eq
  unfold live9397 coloured9397 at child
  try dsimp only [live9398, coloured9398]
  rw [child]
  dsimp only [result9397]
  try dsimp only [colour, result9398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9399_agree : tree9399 = literal9399 := by
  rw [tree9399_def]
  rfl
theorem node9399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9399 live9399 coloured9399 = result9399 := by
  rw [tree9399_def]
  try dsimp only [colour, result9399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9400_agree : tree9400 = literal9400 := by
  rw [tree9400_def, tree9398_agree, tree9399_agree]
  rfl
theorem node9400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9400 live9400 coloured9400 = result9400 := by
  rw [tree9400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9398_eq
  unfold live9398 coloured9398 at child
  try dsimp only [live9400, coloured9400]
  rw [child]
  dsimp only [result9398]
  have child := node9399_eq
  unfold live9399 coloured9399 at child
  try dsimp only [live9400, coloured9400]
  rw [child]
  dsimp only [result9399]
  try dsimp only [colour, result9400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9401_agree : tree9401 = literal9401 := by
  rw [tree9401_def]
  rfl
theorem node9401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9401 live9401 coloured9401 = result9401 := by
  rw [tree9401_def]
  try dsimp only [colour, result9401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9402_agree : tree9402 = literal9402 := by
  rw [tree9402_def, tree9400_agree, tree9401_agree]
  rfl
theorem node9402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9402 live9402 coloured9402 = result9402 := by
  rw [tree9402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9400_eq
  unfold live9400 coloured9400 at child
  try dsimp only [live9402, coloured9402]
  rw [child]
  dsimp only [result9400]
  have child := node9401_eq
  unfold live9401 coloured9401 at child
  try dsimp only [live9402, coloured9402]
  rw [child]
  dsimp only [result9401]
  try dsimp only [colour, result9402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9403_agree : tree9403 = literal9403 := by
  rw [tree9403_def]
  rfl
theorem node9403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9403 live9403 coloured9403 = result9403 := by
  rw [tree9403_def]
  try dsimp only [colour, result9403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9404_agree : tree9404 = literal9404 := by
  rw [tree9404_def, tree9402_agree, tree9403_agree]
  rfl
theorem node9404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9404 live9404 coloured9404 = result9404 := by
  rw [tree9404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9402_eq
  unfold live9402 coloured9402 at child
  try dsimp only [live9404, coloured9404]
  rw [child]
  dsimp only [result9402]
  have child := node9403_eq
  unfold live9403 coloured9403 at child
  try dsimp only [live9404, coloured9404]
  rw [child]
  dsimp only [result9403]
  try dsimp only [colour, result9404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9405_agree : tree9405 = literal9405 := by
  rw [tree9405_def]
  rfl
theorem node9405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9405 live9405 coloured9405 = result9405 := by
  rw [tree9405_def]
  try dsimp only [colour, result9405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9406_agree : tree9406 = literal9406 := by
  rw [tree9406_def, tree9404_agree, tree9405_agree]
  rfl
theorem node9406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9406 live9406 coloured9406 = result9406 := by
  rw [tree9406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9404_eq
  unfold live9404 coloured9404 at child
  try dsimp only [live9406, coloured9406]
  rw [child]
  dsimp only [result9404]
  have child := node9405_eq
  unfold live9405 coloured9405 at child
  try dsimp only [live9406, coloured9406]
  rw [child]
  dsimp only [result9405]
  try dsimp only [colour, result9406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9407_agree : tree9407 = literal9407 := by
  rw [tree9407_def]
  rfl
theorem node9407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9407 live9407 coloured9407 = result9407 := by
  rw [tree9407_def]
  try dsimp only [colour, result9407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
