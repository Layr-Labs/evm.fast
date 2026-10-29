import InitECandidate.Proofs.ClashStages713.Proof44
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree4320_agree : tree4320 = literal4320 := by
  rw [tree4320_def, tree4318_agree, tree4319_agree]
  rfl
theorem node4320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4320 live4320 coloured4320 = result4320 := by
  rw [tree4320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4318_eq
  unfold live4318 coloured4318 at child
  try dsimp only [live4320, coloured4320]
  rw [child]
  dsimp only [result4318]
  have child := node4319_eq
  unfold live4319 coloured4319 at child
  try dsimp only [live4320, coloured4320]
  rw [child]
  dsimp only [result4319]
  try dsimp only [colour, result4320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4321_agree : tree4321 = literal4321 := by
  rw [tree4321_def]
  rfl
theorem node4321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4321 live4321 coloured4321 = result4321 := by
  rw [tree4321_def]
  try dsimp only [colour, result4321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4322_agree : tree4322 = literal4322 := by
  rw [tree4322_def, tree4320_agree, tree4321_agree]
  rfl
theorem node4322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4322 live4322 coloured4322 = result4322 := by
  rw [tree4322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4320_eq
  unfold live4320 coloured4320 at child
  try dsimp only [live4322, coloured4322]
  rw [child]
  dsimp only [result4320]
  have child := node4321_eq
  unfold live4321 coloured4321 at child
  try dsimp only [live4322, coloured4322]
  rw [child]
  dsimp only [result4321]
  try dsimp only [colour, result4322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4323_agree : tree4323 = literal4323 := by
  rw [tree4323_def]
  rfl
theorem node4323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4323 live4323 coloured4323 = result4323 := by
  rw [tree4323_def]
  try dsimp only [colour, result4323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4324_agree : tree4324 = literal4324 := by
  rw [tree4324_def, tree4322_agree, tree4323_agree]
  rfl
theorem node4324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4324 live4324 coloured4324 = result4324 := by
  rw [tree4324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4322_eq
  unfold live4322 coloured4322 at child
  try dsimp only [live4324, coloured4324]
  rw [child]
  dsimp only [result4322]
  have child := node4323_eq
  unfold live4323 coloured4323 at child
  try dsimp only [live4324, coloured4324]
  rw [child]
  dsimp only [result4323]
  try dsimp only [colour, result4324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4325_agree : tree4325 = literal4325 := by
  rw [tree4325_def]
  rfl
theorem node4325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4325 live4325 coloured4325 = result4325 := by
  rw [tree4325_def]
  try dsimp only [colour, result4325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4326_agree : tree4326 = literal4326 := by
  rw [tree4326_def, tree4324_agree, tree4325_agree]
  rfl
theorem node4326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4326 live4326 coloured4326 = result4326 := by
  rw [tree4326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4324_eq
  unfold live4324 coloured4324 at child
  try dsimp only [live4326, coloured4326]
  rw [child]
  dsimp only [result4324]
  have child := node4325_eq
  unfold live4325 coloured4325 at child
  try dsimp only [live4326, coloured4326]
  rw [child]
  dsimp only [result4325]
  try dsimp only [colour, result4326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4327_agree : tree4327 = literal4327 := by
  rw [tree4327_def]
  rfl
theorem node4327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4327 live4327 coloured4327 = result4327 := by
  rw [tree4327_def]
  try dsimp only [colour, result4327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4328_agree : tree4328 = literal4328 := by
  rw [tree4328_def, tree4326_agree, tree4327_agree]
  rfl
theorem node4328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4328 live4328 coloured4328 = result4328 := by
  rw [tree4328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4326_eq
  unfold live4326 coloured4326 at child
  try dsimp only [live4328, coloured4328]
  rw [child]
  dsimp only [result4326]
  have child := node4327_eq
  unfold live4327 coloured4327 at child
  try dsimp only [live4328, coloured4328]
  rw [child]
  dsimp only [result4327]
  try dsimp only [colour, result4328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4329_agree : tree4329 = literal4329 := by
  rw [tree4329_def]
  rfl
theorem node4329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4329 live4329 coloured4329 = result4329 := by
  rw [tree4329_def]
  try dsimp only [colour, result4329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4330_agree : tree4330 = literal4330 := by
  rw [tree4330_def, tree4328_agree, tree4329_agree]
  rfl
theorem node4330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4330 live4330 coloured4330 = result4330 := by
  rw [tree4330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4328_eq
  unfold live4328 coloured4328 at child
  try dsimp only [live4330, coloured4330]
  rw [child]
  dsimp only [result4328]
  have child := node4329_eq
  unfold live4329 coloured4329 at child
  try dsimp only [live4330, coloured4330]
  rw [child]
  dsimp only [result4329]
  try dsimp only [colour, result4330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4331_agree : tree4331 = literal4331 := by
  rw [tree4331_def]
  rfl
theorem node4331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4331 live4331 coloured4331 = result4331 := by
  rw [tree4331_def]
  try dsimp only [colour, result4331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4332_agree : tree4332 = literal4332 := by
  rw [tree4332_def, tree4330_agree, tree4331_agree]
  rfl
theorem node4332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4332 live4332 coloured4332 = result4332 := by
  rw [tree4332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4330_eq
  unfold live4330 coloured4330 at child
  try dsimp only [live4332, coloured4332]
  rw [child]
  dsimp only [result4330]
  have child := node4331_eq
  unfold live4331 coloured4331 at child
  try dsimp only [live4332, coloured4332]
  rw [child]
  dsimp only [result4331]
  try dsimp only [colour, result4332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4333_agree : tree4333 = literal4333 := by
  rw [tree4333_def]
  rfl
theorem node4333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4333 live4333 coloured4333 = result4333 := by
  rw [tree4333_def]
  try dsimp only [colour, result4333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4334_agree : tree4334 = literal4334 := by
  rw [tree4334_def, tree4332_agree, tree4333_agree]
  rfl
theorem node4334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4334 live4334 coloured4334 = result4334 := by
  rw [tree4334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4332_eq
  unfold live4332 coloured4332 at child
  try dsimp only [live4334, coloured4334]
  rw [child]
  dsimp only [result4332]
  have child := node4333_eq
  unfold live4333 coloured4333 at child
  try dsimp only [live4334, coloured4334]
  rw [child]
  dsimp only [result4333]
  try dsimp only [colour, result4334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4335_agree : tree4335 = literal4335 := by
  rw [tree4335_def]
  rfl
theorem node4335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4335 live4335 coloured4335 = result4335 := by
  rw [tree4335_def]
  try dsimp only [colour, result4335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4336_agree : tree4336 = literal4336 := by
  rw [tree4336_def, tree4334_agree, tree4335_agree]
  rfl
theorem node4336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4336 live4336 coloured4336 = result4336 := by
  rw [tree4336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4334_eq
  unfold live4334 coloured4334 at child
  try dsimp only [live4336, coloured4336]
  rw [child]
  dsimp only [result4334]
  have child := node4335_eq
  unfold live4335 coloured4335 at child
  try dsimp only [live4336, coloured4336]
  rw [child]
  dsimp only [result4335]
  try dsimp only [colour, result4336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4337_agree : tree4337 = literal4337 := by
  rw [tree4337_def]
  rfl
theorem node4337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4337 live4337 coloured4337 = result4337 := by
  rw [tree4337_def]
  try dsimp only [colour, result4337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4338_agree : tree4338 = literal4338 := by
  rw [tree4338_def, tree4336_agree, tree4337_agree]
  rfl
theorem node4338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4338 live4338 coloured4338 = result4338 := by
  rw [tree4338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4336_eq
  unfold live4336 coloured4336 at child
  try dsimp only [live4338, coloured4338]
  rw [child]
  dsimp only [result4336]
  have child := node4337_eq
  unfold live4337 coloured4337 at child
  try dsimp only [live4338, coloured4338]
  rw [child]
  dsimp only [result4337]
  try dsimp only [colour, result4338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4339_agree : tree4339 = literal4339 := by
  rw [tree4339_def]
  rfl
theorem node4339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4339 live4339 coloured4339 = result4339 := by
  rw [tree4339_def]
  try dsimp only [colour, result4339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4340_agree : tree4340 = literal4340 := by
  rw [tree4340_def, tree4338_agree, tree4339_agree]
  rfl
theorem node4340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4340 live4340 coloured4340 = result4340 := by
  rw [tree4340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4338_eq
  unfold live4338 coloured4338 at child
  try dsimp only [live4340, coloured4340]
  rw [child]
  dsimp only [result4338]
  have child := node4339_eq
  unfold live4339 coloured4339 at child
  try dsimp only [live4340, coloured4340]
  rw [child]
  dsimp only [result4339]
  try dsimp only [colour, result4340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4341_agree : tree4341 = literal4341 := by
  rw [tree4341_def]
  rfl
theorem node4341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4341 live4341 coloured4341 = result4341 := by
  rw [tree4341_def]
  try dsimp only [colour, result4341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4342_agree : tree4342 = literal4342 := by
  rw [tree4342_def, tree4340_agree, tree4341_agree]
  rfl
theorem node4342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4342 live4342 coloured4342 = result4342 := by
  rw [tree4342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4340_eq
  unfold live4340 coloured4340 at child
  try dsimp only [live4342, coloured4342]
  rw [child]
  dsimp only [result4340]
  have child := node4341_eq
  unfold live4341 coloured4341 at child
  try dsimp only [live4342, coloured4342]
  rw [child]
  dsimp only [result4341]
  try dsimp only [colour, result4342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4343_agree : tree4343 = literal4343 := by
  rw [tree4343_def]
  rfl
theorem node4343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4343 live4343 coloured4343 = result4343 := by
  rw [tree4343_def]
  try dsimp only [colour, result4343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4344_agree : tree4344 = literal4344 := by
  rw [tree4344_def, tree4342_agree, tree4343_agree]
  rfl
theorem node4344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4344 live4344 coloured4344 = result4344 := by
  rw [tree4344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4342_eq
  unfold live4342 coloured4342 at child
  try dsimp only [live4344, coloured4344]
  rw [child]
  dsimp only [result4342]
  have child := node4343_eq
  unfold live4343 coloured4343 at child
  try dsimp only [live4344, coloured4344]
  rw [child]
  dsimp only [result4343]
  try dsimp only [colour, result4344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4345_agree : tree4345 = literal4345 := by
  rw [tree4345_def]
  rfl
theorem node4345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4345 live4345 coloured4345 = result4345 := by
  rw [tree4345_def]
  try dsimp only [colour, result4345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4346_agree : tree4346 = literal4346 := by
  rw [tree4346_def, tree4344_agree, tree4345_agree]
  rfl
theorem node4346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4346 live4346 coloured4346 = result4346 := by
  rw [tree4346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4344_eq
  unfold live4344 coloured4344 at child
  try dsimp only [live4346, coloured4346]
  rw [child]
  dsimp only [result4344]
  have child := node4345_eq
  unfold live4345 coloured4345 at child
  try dsimp only [live4346, coloured4346]
  rw [child]
  dsimp only [result4345]
  try dsimp only [colour, result4346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4347_agree : tree4347 = literal4347 := by
  rw [tree4347_def]
  rfl
theorem node4347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4347 live4347 coloured4347 = result4347 := by
  rw [tree4347_def]
  try dsimp only [colour, result4347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4348_agree : tree4348 = literal4348 := by
  rw [tree4348_def, tree4346_agree, tree4347_agree]
  rfl
theorem node4348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4348 live4348 coloured4348 = result4348 := by
  rw [tree4348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4346_eq
  unfold live4346 coloured4346 at child
  try dsimp only [live4348, coloured4348]
  rw [child]
  dsimp only [result4346]
  have child := node4347_eq
  unfold live4347 coloured4347 at child
  try dsimp only [live4348, coloured4348]
  rw [child]
  dsimp only [result4347]
  try dsimp only [colour, result4348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4349_agree : tree4349 = literal4349 := by
  rw [tree4349_def]
  rfl
theorem node4349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4349 live4349 coloured4349 = result4349 := by
  rw [tree4349_def]
  try dsimp only [colour, result4349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4350_agree : tree4350 = literal4350 := by
  rw [tree4350_def, tree4348_agree, tree4349_agree]
  rfl
theorem node4350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4350 live4350 coloured4350 = result4350 := by
  rw [tree4350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4348_eq
  unfold live4348 coloured4348 at child
  try dsimp only [live4350, coloured4350]
  rw [child]
  dsimp only [result4348]
  have child := node4349_eq
  unfold live4349 coloured4349 at child
  try dsimp only [live4350, coloured4350]
  rw [child]
  dsimp only [result4349]
  try dsimp only [colour, result4350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4351_agree : tree4351 = literal4351 := by
  rw [tree4351_def]
  rfl
theorem node4351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4351 live4351 coloured4351 = result4351 := by
  rw [tree4351_def]
  try dsimp only [colour, result4351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4352_agree : tree4352 = literal4352 := by
  rw [tree4352_def, tree4350_agree, tree4351_agree]
  rfl
theorem node4352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4352 live4352 coloured4352 = result4352 := by
  rw [tree4352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4350_eq
  unfold live4350 coloured4350 at child
  try dsimp only [live4352, coloured4352]
  rw [child]
  dsimp only [result4350]
  have child := node4351_eq
  unfold live4351 coloured4351 at child
  try dsimp only [live4352, coloured4352]
  rw [child]
  dsimp only [result4351]
  try dsimp only [colour, result4352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4353_agree : tree4353 = literal4353 := by
  rw [tree4353_def]
  rfl
theorem node4353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4353 live4353 coloured4353 = result4353 := by
  rw [tree4353_def]
  try dsimp only [colour, result4353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4354_agree : tree4354 = literal4354 := by
  rw [tree4354_def, tree4352_agree, tree4353_agree]
  rfl
theorem node4354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4354 live4354 coloured4354 = result4354 := by
  rw [tree4354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4352_eq
  unfold live4352 coloured4352 at child
  try dsimp only [live4354, coloured4354]
  rw [child]
  dsimp only [result4352]
  have child := node4353_eq
  unfold live4353 coloured4353 at child
  try dsimp only [live4354, coloured4354]
  rw [child]
  dsimp only [result4353]
  try dsimp only [colour, result4354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4355_agree : tree4355 = literal4355 := by
  rw [tree4355_def]
  rfl
theorem node4355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4355 live4355 coloured4355 = result4355 := by
  rw [tree4355_def]
  try dsimp only [colour, result4355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4356_agree : tree4356 = literal4356 := by
  rw [tree4356_def, tree4354_agree, tree4355_agree]
  rfl
theorem node4356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4356 live4356 coloured4356 = result4356 := by
  rw [tree4356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4354_eq
  unfold live4354 coloured4354 at child
  try dsimp only [live4356, coloured4356]
  rw [child]
  dsimp only [result4354]
  have child := node4355_eq
  unfold live4355 coloured4355 at child
  try dsimp only [live4356, coloured4356]
  rw [child]
  dsimp only [result4355]
  try dsimp only [colour, result4356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4357_agree : tree4357 = literal4357 := by
  rw [tree4357_def]
  rfl
theorem node4357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4357 live4357 coloured4357 = result4357 := by
  rw [tree4357_def]
  try dsimp only [colour, result4357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4358_agree : tree4358 = literal4358 := by
  rw [tree4358_def, tree4356_agree, tree4357_agree]
  rfl
theorem node4358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4358 live4358 coloured4358 = result4358 := by
  rw [tree4358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4356_eq
  unfold live4356 coloured4356 at child
  try dsimp only [live4358, coloured4358]
  rw [child]
  dsimp only [result4356]
  have child := node4357_eq
  unfold live4357 coloured4357 at child
  try dsimp only [live4358, coloured4358]
  rw [child]
  dsimp only [result4357]
  try dsimp only [colour, result4358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4359_agree : tree4359 = literal4359 := by
  rw [tree4359_def]
  rfl
theorem node4359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4359 live4359 coloured4359 = result4359 := by
  rw [tree4359_def]
  try dsimp only [colour, result4359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4360_agree : tree4360 = literal4360 := by
  rw [tree4360_def, tree4358_agree, tree4359_agree]
  rfl
theorem node4360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4360 live4360 coloured4360 = result4360 := by
  rw [tree4360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4358_eq
  unfold live4358 coloured4358 at child
  try dsimp only [live4360, coloured4360]
  rw [child]
  dsimp only [result4358]
  have child := node4359_eq
  unfold live4359 coloured4359 at child
  try dsimp only [live4360, coloured4360]
  rw [child]
  dsimp only [result4359]
  try dsimp only [colour, result4360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4361_agree : tree4361 = literal4361 := by
  rw [tree4361_def]
  rfl
theorem node4361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4361 live4361 coloured4361 = result4361 := by
  rw [tree4361_def]
  try dsimp only [colour, result4361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4362_agree : tree4362 = literal4362 := by
  rw [tree4362_def, tree4360_agree, tree4361_agree]
  rfl
theorem node4362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4362 live4362 coloured4362 = result4362 := by
  rw [tree4362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4360_eq
  unfold live4360 coloured4360 at child
  try dsimp only [live4362, coloured4362]
  rw [child]
  dsimp only [result4360]
  have child := node4361_eq
  unfold live4361 coloured4361 at child
  try dsimp only [live4362, coloured4362]
  rw [child]
  dsimp only [result4361]
  try dsimp only [colour, result4362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4363_agree : tree4363 = literal4363 := by
  rw [tree4363_def]
  rfl
theorem node4363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4363 live4363 coloured4363 = result4363 := by
  rw [tree4363_def]
  try dsimp only [colour, result4363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4364_agree : tree4364 = literal4364 := by
  rw [tree4364_def, tree4362_agree, tree4363_agree]
  rfl
theorem node4364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4364 live4364 coloured4364 = result4364 := by
  rw [tree4364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4362_eq
  unfold live4362 coloured4362 at child
  try dsimp only [live4364, coloured4364]
  rw [child]
  dsimp only [result4362]
  have child := node4363_eq
  unfold live4363 coloured4363 at child
  try dsimp only [live4364, coloured4364]
  rw [child]
  dsimp only [result4363]
  try dsimp only [colour, result4364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4365_agree : tree4365 = literal4365 := by
  rw [tree4365_def]
  rfl
theorem node4365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4365 live4365 coloured4365 = result4365 := by
  rw [tree4365_def]
  try dsimp only [colour, result4365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4366_agree : tree4366 = literal4366 := by
  rw [tree4366_def, tree4364_agree, tree4365_agree]
  rfl
theorem node4366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4366 live4366 coloured4366 = result4366 := by
  rw [tree4366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4364_eq
  unfold live4364 coloured4364 at child
  try dsimp only [live4366, coloured4366]
  rw [child]
  dsimp only [result4364]
  have child := node4365_eq
  unfold live4365 coloured4365 at child
  try dsimp only [live4366, coloured4366]
  rw [child]
  dsimp only [result4365]
  try dsimp only [colour, result4366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4367_agree : tree4367 = literal4367 := by
  rw [tree4367_def]
  rfl
theorem node4367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4367 live4367 coloured4367 = result4367 := by
  rw [tree4367_def]
  try dsimp only [colour, result4367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4368_agree : tree4368 = literal4368 := by
  rw [tree4368_def, tree4366_agree, tree4367_agree]
  rfl
theorem node4368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4368 live4368 coloured4368 = result4368 := by
  rw [tree4368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4366_eq
  unfold live4366 coloured4366 at child
  try dsimp only [live4368, coloured4368]
  rw [child]
  dsimp only [result4366]
  have child := node4367_eq
  unfold live4367 coloured4367 at child
  try dsimp only [live4368, coloured4368]
  rw [child]
  dsimp only [result4367]
  try dsimp only [colour, result4368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4369_agree : tree4369 = literal4369 := by
  rw [tree4369_def]
  rfl
theorem node4369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4369 live4369 coloured4369 = result4369 := by
  rw [tree4369_def]
  try dsimp only [colour, result4369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4370_agree : tree4370 = literal4370 := by
  rw [tree4370_def, tree4368_agree, tree4369_agree]
  rfl
theorem node4370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4370 live4370 coloured4370 = result4370 := by
  rw [tree4370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4368_eq
  unfold live4368 coloured4368 at child
  try dsimp only [live4370, coloured4370]
  rw [child]
  dsimp only [result4368]
  have child := node4369_eq
  unfold live4369 coloured4369 at child
  try dsimp only [live4370, coloured4370]
  rw [child]
  dsimp only [result4369]
  try dsimp only [colour, result4370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4371_agree : tree4371 = literal4371 := by
  rw [tree4371_def]
  rfl
theorem node4371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4371 live4371 coloured4371 = result4371 := by
  rw [tree4371_def]
  try dsimp only [colour, result4371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4372_agree : tree4372 = literal4372 := by
  rw [tree4372_def, tree4370_agree, tree4371_agree]
  rfl
theorem node4372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4372 live4372 coloured4372 = result4372 := by
  rw [tree4372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4370_eq
  unfold live4370 coloured4370 at child
  try dsimp only [live4372, coloured4372]
  rw [child]
  dsimp only [result4370]
  have child := node4371_eq
  unfold live4371 coloured4371 at child
  try dsimp only [live4372, coloured4372]
  rw [child]
  dsimp only [result4371]
  try dsimp only [colour, result4372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4373_agree : tree4373 = literal4373 := by
  rw [tree4373_def]
  rfl
theorem node4373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4373 live4373 coloured4373 = result4373 := by
  rw [tree4373_def]
  try dsimp only [colour, result4373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4374_agree : tree4374 = literal4374 := by
  rw [tree4374_def, tree4372_agree, tree4373_agree]
  rfl
theorem node4374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4374 live4374 coloured4374 = result4374 := by
  rw [tree4374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4372_eq
  unfold live4372 coloured4372 at child
  try dsimp only [live4374, coloured4374]
  rw [child]
  dsimp only [result4372]
  have child := node4373_eq
  unfold live4373 coloured4373 at child
  try dsimp only [live4374, coloured4374]
  rw [child]
  dsimp only [result4373]
  try dsimp only [colour, result4374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4375_agree : tree4375 = literal4375 := by
  rw [tree4375_def]
  rfl
theorem node4375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4375 live4375 coloured4375 = result4375 := by
  rw [tree4375_def]
  try dsimp only [colour, result4375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4376_agree : tree4376 = literal4376 := by
  rw [tree4376_def, tree4374_agree, tree4375_agree]
  rfl
theorem node4376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4376 live4376 coloured4376 = result4376 := by
  rw [tree4376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4374_eq
  unfold live4374 coloured4374 at child
  try dsimp only [live4376, coloured4376]
  rw [child]
  dsimp only [result4374]
  have child := node4375_eq
  unfold live4375 coloured4375 at child
  try dsimp only [live4376, coloured4376]
  rw [child]
  dsimp only [result4375]
  try dsimp only [colour, result4376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4377_agree : tree4377 = literal4377 := by
  rw [tree4377_def]
  rfl
theorem node4377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4377 live4377 coloured4377 = result4377 := by
  rw [tree4377_def]
  try dsimp only [colour, result4377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4378_agree : tree4378 = literal4378 := by
  rw [tree4378_def, tree4376_agree, tree4377_agree]
  rfl
theorem node4378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4378 live4378 coloured4378 = result4378 := by
  rw [tree4378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4376_eq
  unfold live4376 coloured4376 at child
  try dsimp only [live4378, coloured4378]
  rw [child]
  dsimp only [result4376]
  have child := node4377_eq
  unfold live4377 coloured4377 at child
  try dsimp only [live4378, coloured4378]
  rw [child]
  dsimp only [result4377]
  try dsimp only [colour, result4378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4379_agree : tree4379 = literal4379 := by
  rw [tree4379_def]
  rfl
theorem node4379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4379 live4379 coloured4379 = result4379 := by
  rw [tree4379_def]
  try dsimp only [colour, result4379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4380_agree : tree4380 = literal4380 := by
  rw [tree4380_def, tree4378_agree, tree4379_agree]
  rfl
theorem node4380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4380 live4380 coloured4380 = result4380 := by
  rw [tree4380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4378_eq
  unfold live4378 coloured4378 at child
  try dsimp only [live4380, coloured4380]
  rw [child]
  dsimp only [result4378]
  have child := node4379_eq
  unfold live4379 coloured4379 at child
  try dsimp only [live4380, coloured4380]
  rw [child]
  dsimp only [result4379]
  try dsimp only [colour, result4380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4381_agree : tree4381 = literal4381 := by
  rw [tree4381_def]
  rfl
theorem node4381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4381 live4381 coloured4381 = result4381 := by
  rw [tree4381_def]
  try dsimp only [colour, result4381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4382_agree : tree4382 = literal4382 := by
  rw [tree4382_def, tree4380_agree, tree4381_agree]
  rfl
theorem node4382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4382 live4382 coloured4382 = result4382 := by
  rw [tree4382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4380_eq
  unfold live4380 coloured4380 at child
  try dsimp only [live4382, coloured4382]
  rw [child]
  dsimp only [result4380]
  have child := node4381_eq
  unfold live4381 coloured4381 at child
  try dsimp only [live4382, coloured4382]
  rw [child]
  dsimp only [result4381]
  try dsimp only [colour, result4382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4383_agree : tree4383 = literal4383 := by
  rw [tree4383_def]
  rfl
theorem node4383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4383 live4383 coloured4383 = result4383 := by
  rw [tree4383_def]
  try dsimp only [colour, result4383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4384_agree : tree4384 = literal4384 := by
  rw [tree4384_def, tree4382_agree, tree4383_agree]
  rfl
theorem node4384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4384 live4384 coloured4384 = result4384 := by
  rw [tree4384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4382_eq
  unfold live4382 coloured4382 at child
  try dsimp only [live4384, coloured4384]
  rw [child]
  dsimp only [result4382]
  have child := node4383_eq
  unfold live4383 coloured4383 at child
  try dsimp only [live4384, coloured4384]
  rw [child]
  dsimp only [result4383]
  try dsimp only [colour, result4384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4385_agree : tree4385 = literal4385 := by
  rw [tree4385_def]
  rfl
theorem node4385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4385 live4385 coloured4385 = result4385 := by
  rw [tree4385_def]
  try dsimp only [colour, result4385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4386_agree : tree4386 = literal4386 := by
  rw [tree4386_def, tree4384_agree, tree4385_agree]
  rfl
theorem node4386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4386 live4386 coloured4386 = result4386 := by
  rw [tree4386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4384_eq
  unfold live4384 coloured4384 at child
  try dsimp only [live4386, coloured4386]
  rw [child]
  dsimp only [result4384]
  have child := node4385_eq
  unfold live4385 coloured4385 at child
  try dsimp only [live4386, coloured4386]
  rw [child]
  dsimp only [result4385]
  try dsimp only [colour, result4386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4387_agree : tree4387 = literal4387 := by
  rw [tree4387_def]
  rfl
theorem node4387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4387 live4387 coloured4387 = result4387 := by
  rw [tree4387_def]
  try dsimp only [colour, result4387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4388_agree : tree4388 = literal4388 := by
  rw [tree4388_def, tree4386_agree, tree4387_agree]
  rfl
theorem node4388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4388 live4388 coloured4388 = result4388 := by
  rw [tree4388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4386_eq
  unfold live4386 coloured4386 at child
  try dsimp only [live4388, coloured4388]
  rw [child]
  dsimp only [result4386]
  have child := node4387_eq
  unfold live4387 coloured4387 at child
  try dsimp only [live4388, coloured4388]
  rw [child]
  dsimp only [result4387]
  try dsimp only [colour, result4388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4389_agree : tree4389 = literal4389 := by
  rw [tree4389_def]
  rfl
theorem node4389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4389 live4389 coloured4389 = result4389 := by
  rw [tree4389_def]
  try dsimp only [colour, result4389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4390_agree : tree4390 = literal4390 := by
  rw [tree4390_def, tree4388_agree, tree4389_agree]
  rfl
theorem node4390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4390 live4390 coloured4390 = result4390 := by
  rw [tree4390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4388_eq
  unfold live4388 coloured4388 at child
  try dsimp only [live4390, coloured4390]
  rw [child]
  dsimp only [result4388]
  have child := node4389_eq
  unfold live4389 coloured4389 at child
  try dsimp only [live4390, coloured4390]
  rw [child]
  dsimp only [result4389]
  try dsimp only [colour, result4390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4391_agree : tree4391 = literal4391 := by
  rw [tree4391_def]
  rfl
theorem node4391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4391 live4391 coloured4391 = result4391 := by
  rw [tree4391_def]
  try dsimp only [colour, result4391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4392_agree : tree4392 = literal4392 := by
  rw [tree4392_def, tree4390_agree, tree4391_agree]
  rfl
theorem node4392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4392 live4392 coloured4392 = result4392 := by
  rw [tree4392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4390_eq
  unfold live4390 coloured4390 at child
  try dsimp only [live4392, coloured4392]
  rw [child]
  dsimp only [result4390]
  have child := node4391_eq
  unfold live4391 coloured4391 at child
  try dsimp only [live4392, coloured4392]
  rw [child]
  dsimp only [result4391]
  try dsimp only [colour, result4392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4393_agree : tree4393 = literal4393 := by
  rw [tree4393_def]
  rfl
theorem node4393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4393 live4393 coloured4393 = result4393 := by
  rw [tree4393_def]
  try dsimp only [colour, result4393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4394_agree : tree4394 = literal4394 := by
  rw [tree4394_def, tree4392_agree, tree4393_agree]
  rfl
theorem node4394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4394 live4394 coloured4394 = result4394 := by
  rw [tree4394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4392_eq
  unfold live4392 coloured4392 at child
  try dsimp only [live4394, coloured4394]
  rw [child]
  dsimp only [result4392]
  have child := node4393_eq
  unfold live4393 coloured4393 at child
  try dsimp only [live4394, coloured4394]
  rw [child]
  dsimp only [result4393]
  try dsimp only [colour, result4394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4395_agree : tree4395 = literal4395 := by
  rw [tree4395_def]
  rfl
theorem node4395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4395 live4395 coloured4395 = result4395 := by
  rw [tree4395_def]
  try dsimp only [colour, result4395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4396_agree : tree4396 = literal4396 := by
  rw [tree4396_def, tree4394_agree, tree4395_agree]
  rfl
theorem node4396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4396 live4396 coloured4396 = result4396 := by
  rw [tree4396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4394_eq
  unfold live4394 coloured4394 at child
  try dsimp only [live4396, coloured4396]
  rw [child]
  dsimp only [result4394]
  have child := node4395_eq
  unfold live4395 coloured4395 at child
  try dsimp only [live4396, coloured4396]
  rw [child]
  dsimp only [result4395]
  try dsimp only [colour, result4396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4397_agree : tree4397 = literal4397 := by
  rw [tree4397_def]
  rfl
theorem node4397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4397 live4397 coloured4397 = result4397 := by
  rw [tree4397_def]
  try dsimp only [colour, result4397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4398_agree : tree4398 = literal4398 := by
  rw [tree4398_def, tree4396_agree, tree4397_agree]
  rfl
theorem node4398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4398 live4398 coloured4398 = result4398 := by
  rw [tree4398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4396_eq
  unfold live4396 coloured4396 at child
  try dsimp only [live4398, coloured4398]
  rw [child]
  dsimp only [result4396]
  have child := node4397_eq
  unfold live4397 coloured4397 at child
  try dsimp only [live4398, coloured4398]
  rw [child]
  dsimp only [result4397]
  try dsimp only [colour, result4398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4399_agree : tree4399 = literal4399 := by
  rw [tree4399_def]
  rfl
theorem node4399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4399 live4399 coloured4399 = result4399 := by
  rw [tree4399_def]
  try dsimp only [colour, result4399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4400_agree : tree4400 = literal4400 := by
  rw [tree4400_def, tree4398_agree, tree4399_agree]
  rfl
theorem node4400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4400 live4400 coloured4400 = result4400 := by
  rw [tree4400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4398_eq
  unfold live4398 coloured4398 at child
  try dsimp only [live4400, coloured4400]
  rw [child]
  dsimp only [result4398]
  have child := node4399_eq
  unfold live4399 coloured4399 at child
  try dsimp only [live4400, coloured4400]
  rw [child]
  dsimp only [result4399]
  try dsimp only [colour, result4400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4401_agree : tree4401 = literal4401 := by
  rw [tree4401_def]
  rfl
theorem node4401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4401 live4401 coloured4401 = result4401 := by
  rw [tree4401_def]
  try dsimp only [colour, result4401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4402_agree : tree4402 = literal4402 := by
  rw [tree4402_def, tree4400_agree, tree4401_agree]
  rfl
theorem node4402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4402 live4402 coloured4402 = result4402 := by
  rw [tree4402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4400_eq
  unfold live4400 coloured4400 at child
  try dsimp only [live4402, coloured4402]
  rw [child]
  dsimp only [result4400]
  have child := node4401_eq
  unfold live4401 coloured4401 at child
  try dsimp only [live4402, coloured4402]
  rw [child]
  dsimp only [result4401]
  try dsimp only [colour, result4402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4403_agree : tree4403 = literal4403 := by
  rw [tree4403_def]
  rfl
theorem node4403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4403 live4403 coloured4403 = result4403 := by
  rw [tree4403_def]
  try dsimp only [colour, result4403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4404_agree : tree4404 = literal4404 := by
  rw [tree4404_def, tree4402_agree, tree4403_agree]
  rfl
theorem node4404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4404 live4404 coloured4404 = result4404 := by
  rw [tree4404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4402_eq
  unfold live4402 coloured4402 at child
  try dsimp only [live4404, coloured4404]
  rw [child]
  dsimp only [result4402]
  have child := node4403_eq
  unfold live4403 coloured4403 at child
  try dsimp only [live4404, coloured4404]
  rw [child]
  dsimp only [result4403]
  try dsimp only [colour, result4404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4405_agree : tree4405 = literal4405 := by
  rw [tree4405_def]
  rfl
theorem node4405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4405 live4405 coloured4405 = result4405 := by
  rw [tree4405_def]
  try dsimp only [colour, result4405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4406_agree : tree4406 = literal4406 := by
  rw [tree4406_def, tree4404_agree, tree4405_agree]
  rfl
theorem node4406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4406 live4406 coloured4406 = result4406 := by
  rw [tree4406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4404_eq
  unfold live4404 coloured4404 at child
  try dsimp only [live4406, coloured4406]
  rw [child]
  dsimp only [result4404]
  have child := node4405_eq
  unfold live4405 coloured4405 at child
  try dsimp only [live4406, coloured4406]
  rw [child]
  dsimp only [result4405]
  try dsimp only [colour, result4406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4407_agree : tree4407 = literal4407 := by
  rw [tree4407_def]
  rfl
theorem node4407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4407 live4407 coloured4407 = result4407 := by
  rw [tree4407_def]
  try dsimp only [colour, result4407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4408_agree : tree4408 = literal4408 := by
  rw [tree4408_def, tree4406_agree, tree4407_agree]
  rfl
theorem node4408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4408 live4408 coloured4408 = result4408 := by
  rw [tree4408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4406_eq
  unfold live4406 coloured4406 at child
  try dsimp only [live4408, coloured4408]
  rw [child]
  dsimp only [result4406]
  have child := node4407_eq
  unfold live4407 coloured4407 at child
  try dsimp only [live4408, coloured4408]
  rw [child]
  dsimp only [result4407]
  try dsimp only [colour, result4408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4409_agree : tree4409 = literal4409 := by
  rw [tree4409_def]
  rfl
theorem node4409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4409 live4409 coloured4409 = result4409 := by
  rw [tree4409_def]
  try dsimp only [colour, result4409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4410_agree : tree4410 = literal4410 := by
  rw [tree4410_def, tree4408_agree, tree4409_agree]
  rfl
theorem node4410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4410 live4410 coloured4410 = result4410 := by
  rw [tree4410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4408_eq
  unfold live4408 coloured4408 at child
  try dsimp only [live4410, coloured4410]
  rw [child]
  dsimp only [result4408]
  have child := node4409_eq
  unfold live4409 coloured4409 at child
  try dsimp only [live4410, coloured4410]
  rw [child]
  dsimp only [result4409]
  try dsimp only [colour, result4410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4411_agree : tree4411 = literal4411 := by
  rw [tree4411_def]
  rfl
theorem node4411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4411 live4411 coloured4411 = result4411 := by
  rw [tree4411_def]
  try dsimp only [colour, result4411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4412_agree : tree4412 = literal4412 := by
  rw [tree4412_def, tree4410_agree, tree4411_agree]
  rfl
theorem node4412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4412 live4412 coloured4412 = result4412 := by
  rw [tree4412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4410_eq
  unfold live4410 coloured4410 at child
  try dsimp only [live4412, coloured4412]
  rw [child]
  dsimp only [result4410]
  have child := node4411_eq
  unfold live4411 coloured4411 at child
  try dsimp only [live4412, coloured4412]
  rw [child]
  dsimp only [result4411]
  try dsimp only [colour, result4412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4413_agree : tree4413 = literal4413 := by
  rw [tree4413_def]
  rfl
theorem node4413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4413 live4413 coloured4413 = result4413 := by
  rw [tree4413_def]
  try dsimp only [colour, result4413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4414_agree : tree4414 = literal4414 := by
  rw [tree4414_def, tree4412_agree, tree4413_agree]
  rfl
theorem node4414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4414 live4414 coloured4414 = result4414 := by
  rw [tree4414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4412_eq
  unfold live4412 coloured4412 at child
  try dsimp only [live4414, coloured4414]
  rw [child]
  dsimp only [result4412]
  have child := node4413_eq
  unfold live4413 coloured4413 at child
  try dsimp only [live4414, coloured4414]
  rw [child]
  dsimp only [result4413]
  try dsimp only [colour, result4414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4415_agree : tree4415 = literal4415 := by
  rw [tree4415_def]
  rfl
theorem node4415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4415 live4415 coloured4415 = result4415 := by
  rw [tree4415_def]
  try dsimp only [colour, result4415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
