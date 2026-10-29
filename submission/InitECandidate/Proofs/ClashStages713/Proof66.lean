import InitECandidate.Proofs.ClashStages713.Proof65
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree6336_agree : tree6336 = literal6336 := by
  rw [tree6336_def, tree6334_agree, tree6335_agree]
  rfl
theorem node6336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6336 live6336 coloured6336 = result6336 := by
  rw [tree6336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6334_eq
  unfold live6334 coloured6334 at child
  try dsimp only [live6336, coloured6336]
  rw [child]
  dsimp only [result6334]
  have child := node6335_eq
  unfold live6335 coloured6335 at child
  try dsimp only [live6336, coloured6336]
  rw [child]
  dsimp only [result6335]
  try dsimp only [colour, result6336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6337_agree : tree6337 = literal6337 := by
  rw [tree6337_def]
  rfl
theorem node6337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6337 live6337 coloured6337 = result6337 := by
  rw [tree6337_def]
  try dsimp only [colour, result6337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6338_agree : tree6338 = literal6338 := by
  rw [tree6338_def, tree6336_agree, tree6337_agree]
  rfl
theorem node6338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6338 live6338 coloured6338 = result6338 := by
  rw [tree6338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6336_eq
  unfold live6336 coloured6336 at child
  try dsimp only [live6338, coloured6338]
  rw [child]
  dsimp only [result6336]
  have child := node6337_eq
  unfold live6337 coloured6337 at child
  try dsimp only [live6338, coloured6338]
  rw [child]
  dsimp only [result6337]
  try dsimp only [colour, result6338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6339_agree : tree6339 = literal6339 := by
  rw [tree6339_def]
  rfl
theorem node6339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6339 live6339 coloured6339 = result6339 := by
  rw [tree6339_def]
  try dsimp only [colour, result6339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6340_agree : tree6340 = literal6340 := by
  rw [tree6340_def, tree6338_agree, tree6339_agree]
  rfl
theorem node6340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6340 live6340 coloured6340 = result6340 := by
  rw [tree6340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6338_eq
  unfold live6338 coloured6338 at child
  try dsimp only [live6340, coloured6340]
  rw [child]
  dsimp only [result6338]
  have child := node6339_eq
  unfold live6339 coloured6339 at child
  try dsimp only [live6340, coloured6340]
  rw [child]
  dsimp only [result6339]
  try dsimp only [colour, result6340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6341_agree : tree6341 = literal6341 := by
  rw [tree6341_def]
  rfl
theorem node6341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6341 live6341 coloured6341 = result6341 := by
  rw [tree6341_def]
  try dsimp only [colour, result6341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6342_agree : tree6342 = literal6342 := by
  rw [tree6342_def, tree6340_agree, tree6341_agree]
  rfl
theorem node6342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6342 live6342 coloured6342 = result6342 := by
  rw [tree6342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6340_eq
  unfold live6340 coloured6340 at child
  try dsimp only [live6342, coloured6342]
  rw [child]
  dsimp only [result6340]
  have child := node6341_eq
  unfold live6341 coloured6341 at child
  try dsimp only [live6342, coloured6342]
  rw [child]
  dsimp only [result6341]
  try dsimp only [colour, result6342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6343_agree : tree6343 = literal6343 := by
  rw [tree6343_def]
  rfl
theorem node6343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6343 live6343 coloured6343 = result6343 := by
  rw [tree6343_def]
  try dsimp only [colour, result6343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6344_agree : tree6344 = literal6344 := by
  rw [tree6344_def, tree6342_agree, tree6343_agree]
  rfl
theorem node6344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6344 live6344 coloured6344 = result6344 := by
  rw [tree6344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6342_eq
  unfold live6342 coloured6342 at child
  try dsimp only [live6344, coloured6344]
  rw [child]
  dsimp only [result6342]
  have child := node6343_eq
  unfold live6343 coloured6343 at child
  try dsimp only [live6344, coloured6344]
  rw [child]
  dsimp only [result6343]
  try dsimp only [colour, result6344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6345_agree : tree6345 = literal6345 := by
  rw [tree6345_def]
  rfl
theorem node6345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6345 live6345 coloured6345 = result6345 := by
  rw [tree6345_def]
  try dsimp only [colour, result6345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6346_agree : tree6346 = literal6346 := by
  rw [tree6346_def, tree6344_agree, tree6345_agree]
  rfl
theorem node6346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6346 live6346 coloured6346 = result6346 := by
  rw [tree6346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6344_eq
  unfold live6344 coloured6344 at child
  try dsimp only [live6346, coloured6346]
  rw [child]
  dsimp only [result6344]
  have child := node6345_eq
  unfold live6345 coloured6345 at child
  try dsimp only [live6346, coloured6346]
  rw [child]
  dsimp only [result6345]
  try dsimp only [colour, result6346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6347_agree : tree6347 = literal6347 := by
  rw [tree6347_def]
  rfl
theorem node6347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6347 live6347 coloured6347 = result6347 := by
  rw [tree6347_def]
  try dsimp only [colour, result6347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6348_agree : tree6348 = literal6348 := by
  rw [tree6348_def, tree6346_agree, tree6347_agree]
  rfl
theorem node6348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6348 live6348 coloured6348 = result6348 := by
  rw [tree6348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6346_eq
  unfold live6346 coloured6346 at child
  try dsimp only [live6348, coloured6348]
  rw [child]
  dsimp only [result6346]
  have child := node6347_eq
  unfold live6347 coloured6347 at child
  try dsimp only [live6348, coloured6348]
  rw [child]
  dsimp only [result6347]
  try dsimp only [colour, result6348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6349_agree : tree6349 = literal6349 := by
  rw [tree6349_def]
  rfl
theorem node6349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6349 live6349 coloured6349 = result6349 := by
  rw [tree6349_def]
  try dsimp only [colour, result6349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6350_agree : tree6350 = literal6350 := by
  rw [tree6350_def, tree6348_agree, tree6349_agree]
  rfl
theorem node6350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6350 live6350 coloured6350 = result6350 := by
  rw [tree6350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6348_eq
  unfold live6348 coloured6348 at child
  try dsimp only [live6350, coloured6350]
  rw [child]
  dsimp only [result6348]
  have child := node6349_eq
  unfold live6349 coloured6349 at child
  try dsimp only [live6350, coloured6350]
  rw [child]
  dsimp only [result6349]
  try dsimp only [colour, result6350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6351_agree : tree6351 = literal6351 := by
  rw [tree6351_def]
  rfl
theorem node6351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6351 live6351 coloured6351 = result6351 := by
  rw [tree6351_def]
  try dsimp only [colour, result6351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6352_agree : tree6352 = literal6352 := by
  rw [tree6352_def, tree6350_agree, tree6351_agree]
  rfl
theorem node6352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6352 live6352 coloured6352 = result6352 := by
  rw [tree6352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6350_eq
  unfold live6350 coloured6350 at child
  try dsimp only [live6352, coloured6352]
  rw [child]
  dsimp only [result6350]
  have child := node6351_eq
  unfold live6351 coloured6351 at child
  try dsimp only [live6352, coloured6352]
  rw [child]
  dsimp only [result6351]
  try dsimp only [colour, result6352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6353_agree : tree6353 = literal6353 := by
  rw [tree6353_def]
  rfl
theorem node6353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6353 live6353 coloured6353 = result6353 := by
  rw [tree6353_def]
  try dsimp only [colour, result6353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6354_agree : tree6354 = literal6354 := by
  rw [tree6354_def, tree6352_agree, tree6353_agree]
  rfl
theorem node6354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6354 live6354 coloured6354 = result6354 := by
  rw [tree6354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6352_eq
  unfold live6352 coloured6352 at child
  try dsimp only [live6354, coloured6354]
  rw [child]
  dsimp only [result6352]
  have child := node6353_eq
  unfold live6353 coloured6353 at child
  try dsimp only [live6354, coloured6354]
  rw [child]
  dsimp only [result6353]
  try dsimp only [colour, result6354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6355_agree : tree6355 = literal6355 := by
  rw [tree6355_def]
  rfl
theorem node6355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6355 live6355 coloured6355 = result6355 := by
  rw [tree6355_def]
  try dsimp only [colour, result6355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6356_agree : tree6356 = literal6356 := by
  rw [tree6356_def, tree6354_agree, tree6355_agree]
  rfl
theorem node6356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6356 live6356 coloured6356 = result6356 := by
  rw [tree6356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6354_eq
  unfold live6354 coloured6354 at child
  try dsimp only [live6356, coloured6356]
  rw [child]
  dsimp only [result6354]
  have child := node6355_eq
  unfold live6355 coloured6355 at child
  try dsimp only [live6356, coloured6356]
  rw [child]
  dsimp only [result6355]
  try dsimp only [colour, result6356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6357_agree : tree6357 = literal6357 := by
  rw [tree6357_def]
  rfl
theorem node6357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6357 live6357 coloured6357 = result6357 := by
  rw [tree6357_def]
  try dsimp only [colour, result6357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6358_agree : tree6358 = literal6358 := by
  rw [tree6358_def, tree6356_agree, tree6357_agree]
  rfl
theorem node6358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6358 live6358 coloured6358 = result6358 := by
  rw [tree6358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6356_eq
  unfold live6356 coloured6356 at child
  try dsimp only [live6358, coloured6358]
  rw [child]
  dsimp only [result6356]
  have child := node6357_eq
  unfold live6357 coloured6357 at child
  try dsimp only [live6358, coloured6358]
  rw [child]
  dsimp only [result6357]
  try dsimp only [colour, result6358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6359_agree : tree6359 = literal6359 := by
  rw [tree6359_def]
  rfl
theorem node6359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6359 live6359 coloured6359 = result6359 := by
  rw [tree6359_def]
  try dsimp only [colour, result6359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6360_agree : tree6360 = literal6360 := by
  rw [tree6360_def, tree6358_agree, tree6359_agree]
  rfl
theorem node6360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6360 live6360 coloured6360 = result6360 := by
  rw [tree6360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6358_eq
  unfold live6358 coloured6358 at child
  try dsimp only [live6360, coloured6360]
  rw [child]
  dsimp only [result6358]
  have child := node6359_eq
  unfold live6359 coloured6359 at child
  try dsimp only [live6360, coloured6360]
  rw [child]
  dsimp only [result6359]
  try dsimp only [colour, result6360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6361_agree : tree6361 = literal6361 := by
  rw [tree6361_def]
  rfl
theorem node6361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6361 live6361 coloured6361 = result6361 := by
  rw [tree6361_def]
  try dsimp only [colour, result6361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6362_agree : tree6362 = literal6362 := by
  rw [tree6362_def, tree6360_agree, tree6361_agree]
  rfl
theorem node6362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6362 live6362 coloured6362 = result6362 := by
  rw [tree6362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6360_eq
  unfold live6360 coloured6360 at child
  try dsimp only [live6362, coloured6362]
  rw [child]
  dsimp only [result6360]
  have child := node6361_eq
  unfold live6361 coloured6361 at child
  try dsimp only [live6362, coloured6362]
  rw [child]
  dsimp only [result6361]
  try dsimp only [colour, result6362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6363_agree : tree6363 = literal6363 := by
  rw [tree6363_def]
  rfl
theorem node6363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6363 live6363 coloured6363 = result6363 := by
  rw [tree6363_def]
  try dsimp only [colour, result6363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6364_agree : tree6364 = literal6364 := by
  rw [tree6364_def, tree6362_agree, tree6363_agree]
  rfl
theorem node6364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6364 live6364 coloured6364 = result6364 := by
  rw [tree6364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6362_eq
  unfold live6362 coloured6362 at child
  try dsimp only [live6364, coloured6364]
  rw [child]
  dsimp only [result6362]
  have child := node6363_eq
  unfold live6363 coloured6363 at child
  try dsimp only [live6364, coloured6364]
  rw [child]
  dsimp only [result6363]
  try dsimp only [colour, result6364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6365_agree : tree6365 = literal6365 := by
  rw [tree6365_def]
  rfl
theorem node6365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6365 live6365 coloured6365 = result6365 := by
  rw [tree6365_def]
  try dsimp only [colour, result6365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6366_agree : tree6366 = literal6366 := by
  rw [tree6366_def, tree6364_agree, tree6365_agree]
  rfl
theorem node6366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6366 live6366 coloured6366 = result6366 := by
  rw [tree6366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6364_eq
  unfold live6364 coloured6364 at child
  try dsimp only [live6366, coloured6366]
  rw [child]
  dsimp only [result6364]
  have child := node6365_eq
  unfold live6365 coloured6365 at child
  try dsimp only [live6366, coloured6366]
  rw [child]
  dsimp only [result6365]
  try dsimp only [colour, result6366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6367_agree : tree6367 = literal6367 := by
  rw [tree6367_def]
  rfl
theorem node6367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6367 live6367 coloured6367 = result6367 := by
  rw [tree6367_def]
  try dsimp only [colour, result6367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6368_agree : tree6368 = literal6368 := by
  rw [tree6368_def, tree6366_agree, tree6367_agree]
  rfl
theorem node6368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6368 live6368 coloured6368 = result6368 := by
  rw [tree6368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6366_eq
  unfold live6366 coloured6366 at child
  try dsimp only [live6368, coloured6368]
  rw [child]
  dsimp only [result6366]
  have child := node6367_eq
  unfold live6367 coloured6367 at child
  try dsimp only [live6368, coloured6368]
  rw [child]
  dsimp only [result6367]
  try dsimp only [colour, result6368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6369_agree : tree6369 = literal6369 := by
  rw [tree6369_def]
  rfl
theorem node6369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6369 live6369 coloured6369 = result6369 := by
  rw [tree6369_def]
  try dsimp only [colour, result6369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6370_agree : tree6370 = literal6370 := by
  rw [tree6370_def, tree6368_agree, tree6369_agree]
  rfl
theorem node6370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6370 live6370 coloured6370 = result6370 := by
  rw [tree6370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6368_eq
  unfold live6368 coloured6368 at child
  try dsimp only [live6370, coloured6370]
  rw [child]
  dsimp only [result6368]
  have child := node6369_eq
  unfold live6369 coloured6369 at child
  try dsimp only [live6370, coloured6370]
  rw [child]
  dsimp only [result6369]
  try dsimp only [colour, result6370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6371_agree : tree6371 = literal6371 := by
  rw [tree6371_def]
  rfl
theorem node6371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6371 live6371 coloured6371 = result6371 := by
  rw [tree6371_def]
  try dsimp only [colour, result6371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6372_agree : tree6372 = literal6372 := by
  rw [tree6372_def, tree6370_agree, tree6371_agree]
  rfl
theorem node6372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6372 live6372 coloured6372 = result6372 := by
  rw [tree6372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6370_eq
  unfold live6370 coloured6370 at child
  try dsimp only [live6372, coloured6372]
  rw [child]
  dsimp only [result6370]
  have child := node6371_eq
  unfold live6371 coloured6371 at child
  try dsimp only [live6372, coloured6372]
  rw [child]
  dsimp only [result6371]
  try dsimp only [colour, result6372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6373_agree : tree6373 = literal6373 := by
  rw [tree6373_def]
  rfl
theorem node6373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6373 live6373 coloured6373 = result6373 := by
  rw [tree6373_def]
  try dsimp only [colour, result6373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6374_agree : tree6374 = literal6374 := by
  rw [tree6374_def, tree6372_agree, tree6373_agree]
  rfl
theorem node6374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6374 live6374 coloured6374 = result6374 := by
  rw [tree6374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6372_eq
  unfold live6372 coloured6372 at child
  try dsimp only [live6374, coloured6374]
  rw [child]
  dsimp only [result6372]
  have child := node6373_eq
  unfold live6373 coloured6373 at child
  try dsimp only [live6374, coloured6374]
  rw [child]
  dsimp only [result6373]
  try dsimp only [colour, result6374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6375_agree : tree6375 = literal6375 := by
  rw [tree6375_def]
  rfl
theorem node6375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6375 live6375 coloured6375 = result6375 := by
  rw [tree6375_def]
  try dsimp only [colour, result6375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6376_agree : tree6376 = literal6376 := by
  rw [tree6376_def, tree6374_agree, tree6375_agree]
  rfl
theorem node6376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6376 live6376 coloured6376 = result6376 := by
  rw [tree6376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6374_eq
  unfold live6374 coloured6374 at child
  try dsimp only [live6376, coloured6376]
  rw [child]
  dsimp only [result6374]
  have child := node6375_eq
  unfold live6375 coloured6375 at child
  try dsimp only [live6376, coloured6376]
  rw [child]
  dsimp only [result6375]
  try dsimp only [colour, result6376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6377_agree : tree6377 = literal6377 := by
  rw [tree6377_def]
  rfl
theorem node6377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6377 live6377 coloured6377 = result6377 := by
  rw [tree6377_def]
  try dsimp only [colour, result6377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6378_agree : tree6378 = literal6378 := by
  rw [tree6378_def, tree6376_agree, tree6377_agree]
  rfl
theorem node6378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6378 live6378 coloured6378 = result6378 := by
  rw [tree6378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6376_eq
  unfold live6376 coloured6376 at child
  try dsimp only [live6378, coloured6378]
  rw [child]
  dsimp only [result6376]
  have child := node6377_eq
  unfold live6377 coloured6377 at child
  try dsimp only [live6378, coloured6378]
  rw [child]
  dsimp only [result6377]
  try dsimp only [colour, result6378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6379_agree : tree6379 = literal6379 := by
  rw [tree6379_def]
  rfl
theorem node6379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6379 live6379 coloured6379 = result6379 := by
  rw [tree6379_def]
  try dsimp only [colour, result6379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6380_agree : tree6380 = literal6380 := by
  rw [tree6380_def, tree6378_agree, tree6379_agree]
  rfl
theorem node6380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6380 live6380 coloured6380 = result6380 := by
  rw [tree6380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6378_eq
  unfold live6378 coloured6378 at child
  try dsimp only [live6380, coloured6380]
  rw [child]
  dsimp only [result6378]
  have child := node6379_eq
  unfold live6379 coloured6379 at child
  try dsimp only [live6380, coloured6380]
  rw [child]
  dsimp only [result6379]
  try dsimp only [colour, result6380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6381_agree : tree6381 = literal6381 := by
  rw [tree6381_def]
  rfl
theorem node6381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6381 live6381 coloured6381 = result6381 := by
  rw [tree6381_def]
  try dsimp only [colour, result6381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6382_agree : tree6382 = literal6382 := by
  rw [tree6382_def, tree6380_agree, tree6381_agree]
  rfl
theorem node6382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6382 live6382 coloured6382 = result6382 := by
  rw [tree6382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6380_eq
  unfold live6380 coloured6380 at child
  try dsimp only [live6382, coloured6382]
  rw [child]
  dsimp only [result6380]
  have child := node6381_eq
  unfold live6381 coloured6381 at child
  try dsimp only [live6382, coloured6382]
  rw [child]
  dsimp only [result6381]
  try dsimp only [colour, result6382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6383_agree : tree6383 = literal6383 := by
  rw [tree6383_def]
  rfl
theorem node6383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6383 live6383 coloured6383 = result6383 := by
  rw [tree6383_def]
  try dsimp only [colour, result6383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6384_agree : tree6384 = literal6384 := by
  rw [tree6384_def, tree6382_agree, tree6383_agree]
  rfl
theorem node6384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6384 live6384 coloured6384 = result6384 := by
  rw [tree6384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6382_eq
  unfold live6382 coloured6382 at child
  try dsimp only [live6384, coloured6384]
  rw [child]
  dsimp only [result6382]
  have child := node6383_eq
  unfold live6383 coloured6383 at child
  try dsimp only [live6384, coloured6384]
  rw [child]
  dsimp only [result6383]
  try dsimp only [colour, result6384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6385_agree : tree6385 = literal6385 := by
  rw [tree6385_def]
  rfl
theorem node6385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6385 live6385 coloured6385 = result6385 := by
  rw [tree6385_def]
  try dsimp only [colour, result6385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6386_agree : tree6386 = literal6386 := by
  rw [tree6386_def, tree6384_agree, tree6385_agree]
  rfl
theorem node6386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6386 live6386 coloured6386 = result6386 := by
  rw [tree6386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6384_eq
  unfold live6384 coloured6384 at child
  try dsimp only [live6386, coloured6386]
  rw [child]
  dsimp only [result6384]
  have child := node6385_eq
  unfold live6385 coloured6385 at child
  try dsimp only [live6386, coloured6386]
  rw [child]
  dsimp only [result6385]
  try dsimp only [colour, result6386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6387_agree : tree6387 = literal6387 := by
  rw [tree6387_def]
  rfl
theorem node6387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6387 live6387 coloured6387 = result6387 := by
  rw [tree6387_def]
  try dsimp only [colour, result6387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6388_agree : tree6388 = literal6388 := by
  rw [tree6388_def, tree6386_agree, tree6387_agree]
  rfl
theorem node6388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6388 live6388 coloured6388 = result6388 := by
  rw [tree6388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6386_eq
  unfold live6386 coloured6386 at child
  try dsimp only [live6388, coloured6388]
  rw [child]
  dsimp only [result6386]
  have child := node6387_eq
  unfold live6387 coloured6387 at child
  try dsimp only [live6388, coloured6388]
  rw [child]
  dsimp only [result6387]
  try dsimp only [colour, result6388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6389_agree : tree6389 = literal6389 := by
  rw [tree6389_def]
  rfl
theorem node6389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6389 live6389 coloured6389 = result6389 := by
  rw [tree6389_def]
  try dsimp only [colour, result6389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6390_agree : tree6390 = literal6390 := by
  rw [tree6390_def, tree6388_agree, tree6389_agree]
  rfl
theorem node6390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6390 live6390 coloured6390 = result6390 := by
  rw [tree6390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6388_eq
  unfold live6388 coloured6388 at child
  try dsimp only [live6390, coloured6390]
  rw [child]
  dsimp only [result6388]
  have child := node6389_eq
  unfold live6389 coloured6389 at child
  try dsimp only [live6390, coloured6390]
  rw [child]
  dsimp only [result6389]
  try dsimp only [colour, result6390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6391_agree : tree6391 = literal6391 := by
  rw [tree6391_def]
  rfl
theorem node6391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6391 live6391 coloured6391 = result6391 := by
  rw [tree6391_def]
  try dsimp only [colour, result6391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6392_agree : tree6392 = literal6392 := by
  rw [tree6392_def, tree6390_agree, tree6391_agree]
  rfl
theorem node6392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6392 live6392 coloured6392 = result6392 := by
  rw [tree6392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6390_eq
  unfold live6390 coloured6390 at child
  try dsimp only [live6392, coloured6392]
  rw [child]
  dsimp only [result6390]
  have child := node6391_eq
  unfold live6391 coloured6391 at child
  try dsimp only [live6392, coloured6392]
  rw [child]
  dsimp only [result6391]
  try dsimp only [colour, result6392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6393_agree : tree6393 = literal6393 := by
  rw [tree6393_def]
  rfl
theorem node6393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6393 live6393 coloured6393 = result6393 := by
  rw [tree6393_def]
  try dsimp only [colour, result6393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6394_agree : tree6394 = literal6394 := by
  rw [tree6394_def, tree6392_agree, tree6393_agree]
  rfl
theorem node6394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6394 live6394 coloured6394 = result6394 := by
  rw [tree6394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6392_eq
  unfold live6392 coloured6392 at child
  try dsimp only [live6394, coloured6394]
  rw [child]
  dsimp only [result6392]
  have child := node6393_eq
  unfold live6393 coloured6393 at child
  try dsimp only [live6394, coloured6394]
  rw [child]
  dsimp only [result6393]
  try dsimp only [colour, result6394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6395_agree : tree6395 = literal6395 := by
  rw [tree6395_def]
  rfl
theorem node6395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6395 live6395 coloured6395 = result6395 := by
  rw [tree6395_def]
  try dsimp only [colour, result6395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6396_agree : tree6396 = literal6396 := by
  rw [tree6396_def, tree6394_agree, tree6395_agree]
  rfl
theorem node6396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6396 live6396 coloured6396 = result6396 := by
  rw [tree6396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6394_eq
  unfold live6394 coloured6394 at child
  try dsimp only [live6396, coloured6396]
  rw [child]
  dsimp only [result6394]
  have child := node6395_eq
  unfold live6395 coloured6395 at child
  try dsimp only [live6396, coloured6396]
  rw [child]
  dsimp only [result6395]
  try dsimp only [colour, result6396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6397_agree : tree6397 = literal6397 := by
  rw [tree6397_def]
  rfl
theorem node6397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6397 live6397 coloured6397 = result6397 := by
  rw [tree6397_def]
  try dsimp only [colour, result6397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6398_agree : tree6398 = literal6398 := by
  rw [tree6398_def, tree6396_agree, tree6397_agree]
  rfl
theorem node6398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6398 live6398 coloured6398 = result6398 := by
  rw [tree6398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6396_eq
  unfold live6396 coloured6396 at child
  try dsimp only [live6398, coloured6398]
  rw [child]
  dsimp only [result6396]
  have child := node6397_eq
  unfold live6397 coloured6397 at child
  try dsimp only [live6398, coloured6398]
  rw [child]
  dsimp only [result6397]
  try dsimp only [colour, result6398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6399_agree : tree6399 = literal6399 := by
  rw [tree6399_def]
  rfl
theorem node6399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6399 live6399 coloured6399 = result6399 := by
  rw [tree6399_def]
  try dsimp only [colour, result6399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6400_agree : tree6400 = literal6400 := by
  rw [tree6400_def, tree6398_agree, tree6399_agree]
  rfl
theorem node6400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6400 live6400 coloured6400 = result6400 := by
  rw [tree6400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6398_eq
  unfold live6398 coloured6398 at child
  try dsimp only [live6400, coloured6400]
  rw [child]
  dsimp only [result6398]
  have child := node6399_eq
  unfold live6399 coloured6399 at child
  try dsimp only [live6400, coloured6400]
  rw [child]
  dsimp only [result6399]
  try dsimp only [colour, result6400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6401_agree : tree6401 = literal6401 := by
  rw [tree6401_def]
  rfl
theorem node6401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6401 live6401 coloured6401 = result6401 := by
  rw [tree6401_def]
  try dsimp only [colour, result6401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6402_agree : tree6402 = literal6402 := by
  rw [tree6402_def, tree6400_agree, tree6401_agree]
  rfl
theorem node6402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6402 live6402 coloured6402 = result6402 := by
  rw [tree6402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6400_eq
  unfold live6400 coloured6400 at child
  try dsimp only [live6402, coloured6402]
  rw [child]
  dsimp only [result6400]
  have child := node6401_eq
  unfold live6401 coloured6401 at child
  try dsimp only [live6402, coloured6402]
  rw [child]
  dsimp only [result6401]
  try dsimp only [colour, result6402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6403_agree : tree6403 = literal6403 := by
  rw [tree6403_def]
  rfl
theorem node6403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6403 live6403 coloured6403 = result6403 := by
  rw [tree6403_def]
  try dsimp only [colour, result6403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6404_agree : tree6404 = literal6404 := by
  rw [tree6404_def, tree6402_agree, tree6403_agree]
  rfl
theorem node6404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6404 live6404 coloured6404 = result6404 := by
  rw [tree6404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6402_eq
  unfold live6402 coloured6402 at child
  try dsimp only [live6404, coloured6404]
  rw [child]
  dsimp only [result6402]
  have child := node6403_eq
  unfold live6403 coloured6403 at child
  try dsimp only [live6404, coloured6404]
  rw [child]
  dsimp only [result6403]
  try dsimp only [colour, result6404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6405_agree : tree6405 = literal6405 := by
  rw [tree6405_def]
  rfl
theorem node6405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6405 live6405 coloured6405 = result6405 := by
  rw [tree6405_def]
  try dsimp only [colour, result6405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6406_agree : tree6406 = literal6406 := by
  rw [tree6406_def, tree6404_agree, tree6405_agree]
  rfl
theorem node6406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6406 live6406 coloured6406 = result6406 := by
  rw [tree6406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6404_eq
  unfold live6404 coloured6404 at child
  try dsimp only [live6406, coloured6406]
  rw [child]
  dsimp only [result6404]
  have child := node6405_eq
  unfold live6405 coloured6405 at child
  try dsimp only [live6406, coloured6406]
  rw [child]
  dsimp only [result6405]
  try dsimp only [colour, result6406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6407_agree : tree6407 = literal6407 := by
  rw [tree6407_def]
  rfl
theorem node6407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6407 live6407 coloured6407 = result6407 := by
  rw [tree6407_def]
  try dsimp only [colour, result6407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6408_agree : tree6408 = literal6408 := by
  rw [tree6408_def, tree6406_agree, tree6407_agree]
  rfl
theorem node6408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6408 live6408 coloured6408 = result6408 := by
  rw [tree6408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6406_eq
  unfold live6406 coloured6406 at child
  try dsimp only [live6408, coloured6408]
  rw [child]
  dsimp only [result6406]
  have child := node6407_eq
  unfold live6407 coloured6407 at child
  try dsimp only [live6408, coloured6408]
  rw [child]
  dsimp only [result6407]
  try dsimp only [colour, result6408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6409_agree : tree6409 = literal6409 := by
  rw [tree6409_def]
  rfl
theorem node6409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6409 live6409 coloured6409 = result6409 := by
  rw [tree6409_def]
  try dsimp only [colour, result6409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6410_agree : tree6410 = literal6410 := by
  rw [tree6410_def, tree6408_agree, tree6409_agree]
  rfl
theorem node6410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6410 live6410 coloured6410 = result6410 := by
  rw [tree6410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6408_eq
  unfold live6408 coloured6408 at child
  try dsimp only [live6410, coloured6410]
  rw [child]
  dsimp only [result6408]
  have child := node6409_eq
  unfold live6409 coloured6409 at child
  try dsimp only [live6410, coloured6410]
  rw [child]
  dsimp only [result6409]
  try dsimp only [colour, result6410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6411_agree : tree6411 = literal6411 := by
  rw [tree6411_def]
  rfl
theorem node6411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6411 live6411 coloured6411 = result6411 := by
  rw [tree6411_def]
  try dsimp only [colour, result6411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6412_agree : tree6412 = literal6412 := by
  rw [tree6412_def, tree6410_agree, tree6411_agree]
  rfl
theorem node6412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6412 live6412 coloured6412 = result6412 := by
  rw [tree6412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6410_eq
  unfold live6410 coloured6410 at child
  try dsimp only [live6412, coloured6412]
  rw [child]
  dsimp only [result6410]
  have child := node6411_eq
  unfold live6411 coloured6411 at child
  try dsimp only [live6412, coloured6412]
  rw [child]
  dsimp only [result6411]
  try dsimp only [colour, result6412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6413_agree : tree6413 = literal6413 := by
  rw [tree6413_def]
  rfl
theorem node6413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6413 live6413 coloured6413 = result6413 := by
  rw [tree6413_def]
  try dsimp only [colour, result6413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6414_agree : tree6414 = literal6414 := by
  rw [tree6414_def, tree6412_agree, tree6413_agree]
  rfl
theorem node6414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6414 live6414 coloured6414 = result6414 := by
  rw [tree6414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6412_eq
  unfold live6412 coloured6412 at child
  try dsimp only [live6414, coloured6414]
  rw [child]
  dsimp only [result6412]
  have child := node6413_eq
  unfold live6413 coloured6413 at child
  try dsimp only [live6414, coloured6414]
  rw [child]
  dsimp only [result6413]
  try dsimp only [colour, result6414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6415_agree : tree6415 = literal6415 := by
  rw [tree6415_def]
  rfl
theorem node6415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6415 live6415 coloured6415 = result6415 := by
  rw [tree6415_def]
  try dsimp only [colour, result6415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6416_agree : tree6416 = literal6416 := by
  rw [tree6416_def, tree6414_agree, tree6415_agree]
  rfl
theorem node6416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6416 live6416 coloured6416 = result6416 := by
  rw [tree6416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6414_eq
  unfold live6414 coloured6414 at child
  try dsimp only [live6416, coloured6416]
  rw [child]
  dsimp only [result6414]
  have child := node6415_eq
  unfold live6415 coloured6415 at child
  try dsimp only [live6416, coloured6416]
  rw [child]
  dsimp only [result6415]
  try dsimp only [colour, result6416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6417_agree : tree6417 = literal6417 := by
  rw [tree6417_def]
  rfl
theorem node6417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6417 live6417 coloured6417 = result6417 := by
  rw [tree6417_def]
  try dsimp only [colour, result6417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6418_agree : tree6418 = literal6418 := by
  rw [tree6418_def, tree6416_agree, tree6417_agree]
  rfl
theorem node6418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6418 live6418 coloured6418 = result6418 := by
  rw [tree6418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6416_eq
  unfold live6416 coloured6416 at child
  try dsimp only [live6418, coloured6418]
  rw [child]
  dsimp only [result6416]
  have child := node6417_eq
  unfold live6417 coloured6417 at child
  try dsimp only [live6418, coloured6418]
  rw [child]
  dsimp only [result6417]
  try dsimp only [colour, result6418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6419_agree : tree6419 = literal6419 := by
  rw [tree6419_def]
  rfl
theorem node6419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6419 live6419 coloured6419 = result6419 := by
  rw [tree6419_def]
  try dsimp only [colour, result6419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6420_agree : tree6420 = literal6420 := by
  rw [tree6420_def, tree6418_agree, tree6419_agree]
  rfl
theorem node6420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6420 live6420 coloured6420 = result6420 := by
  rw [tree6420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6418_eq
  unfold live6418 coloured6418 at child
  try dsimp only [live6420, coloured6420]
  rw [child]
  dsimp only [result6418]
  have child := node6419_eq
  unfold live6419 coloured6419 at child
  try dsimp only [live6420, coloured6420]
  rw [child]
  dsimp only [result6419]
  try dsimp only [colour, result6420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6421_agree : tree6421 = literal6421 := by
  rw [tree6421_def]
  rfl
theorem node6421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6421 live6421 coloured6421 = result6421 := by
  rw [tree6421_def]
  try dsimp only [colour, result6421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6422_agree : tree6422 = literal6422 := by
  rw [tree6422_def, tree6420_agree, tree6421_agree]
  rfl
theorem node6422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6422 live6422 coloured6422 = result6422 := by
  rw [tree6422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6420_eq
  unfold live6420 coloured6420 at child
  try dsimp only [live6422, coloured6422]
  rw [child]
  dsimp only [result6420]
  have child := node6421_eq
  unfold live6421 coloured6421 at child
  try dsimp only [live6422, coloured6422]
  rw [child]
  dsimp only [result6421]
  try dsimp only [colour, result6422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6423_agree : tree6423 = literal6423 := by
  rw [tree6423_def]
  rfl
theorem node6423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6423 live6423 coloured6423 = result6423 := by
  rw [tree6423_def]
  try dsimp only [colour, result6423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6424_agree : tree6424 = literal6424 := by
  rw [tree6424_def, tree6422_agree, tree6423_agree]
  rfl
theorem node6424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6424 live6424 coloured6424 = result6424 := by
  rw [tree6424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6422_eq
  unfold live6422 coloured6422 at child
  try dsimp only [live6424, coloured6424]
  rw [child]
  dsimp only [result6422]
  have child := node6423_eq
  unfold live6423 coloured6423 at child
  try dsimp only [live6424, coloured6424]
  rw [child]
  dsimp only [result6423]
  try dsimp only [colour, result6424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6425_agree : tree6425 = literal6425 := by
  rw [tree6425_def]
  rfl
theorem node6425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6425 live6425 coloured6425 = result6425 := by
  rw [tree6425_def]
  try dsimp only [colour, result6425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6426_agree : tree6426 = literal6426 := by
  rw [tree6426_def, tree6424_agree, tree6425_agree]
  rfl
theorem node6426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6426 live6426 coloured6426 = result6426 := by
  rw [tree6426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6424_eq
  unfold live6424 coloured6424 at child
  try dsimp only [live6426, coloured6426]
  rw [child]
  dsimp only [result6424]
  have child := node6425_eq
  unfold live6425 coloured6425 at child
  try dsimp only [live6426, coloured6426]
  rw [child]
  dsimp only [result6425]
  try dsimp only [colour, result6426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6427_agree : tree6427 = literal6427 := by
  rw [tree6427_def]
  rfl
theorem node6427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6427 live6427 coloured6427 = result6427 := by
  rw [tree6427_def]
  try dsimp only [colour, result6427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6428_agree : tree6428 = literal6428 := by
  rw [tree6428_def, tree6426_agree, tree6427_agree]
  rfl
theorem node6428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6428 live6428 coloured6428 = result6428 := by
  rw [tree6428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6426_eq
  unfold live6426 coloured6426 at child
  try dsimp only [live6428, coloured6428]
  rw [child]
  dsimp only [result6426]
  have child := node6427_eq
  unfold live6427 coloured6427 at child
  try dsimp only [live6428, coloured6428]
  rw [child]
  dsimp only [result6427]
  try dsimp only [colour, result6428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6429_agree : tree6429 = literal6429 := by
  rw [tree6429_def]
  rfl
theorem node6429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6429 live6429 coloured6429 = result6429 := by
  rw [tree6429_def]
  try dsimp only [colour, result6429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6430_agree : tree6430 = literal6430 := by
  rw [tree6430_def, tree6428_agree, tree6429_agree]
  rfl
theorem node6430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6430 live6430 coloured6430 = result6430 := by
  rw [tree6430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6428_eq
  unfold live6428 coloured6428 at child
  try dsimp only [live6430, coloured6430]
  rw [child]
  dsimp only [result6428]
  have child := node6429_eq
  unfold live6429 coloured6429 at child
  try dsimp only [live6430, coloured6430]
  rw [child]
  dsimp only [result6429]
  try dsimp only [colour, result6430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6431_agree : tree6431 = literal6431 := by
  rw [tree6431_def]
  rfl
theorem node6431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6431 live6431 coloured6431 = result6431 := by
  rw [tree6431_def]
  try dsimp only [colour, result6431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
