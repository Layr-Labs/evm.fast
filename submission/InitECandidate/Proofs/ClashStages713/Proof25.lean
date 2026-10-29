import InitECandidate.Proofs.ClashStages713.Proof24
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2400_agree : tree2400 = literal2400 := by
  rw [tree2400_def, tree2398_agree, tree2399_agree]
  rfl
theorem node2400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2400 live2400 coloured2400 = result2400 := by
  rw [tree2400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2398_eq
  unfold live2398 coloured2398 at child
  try dsimp only [live2400, coloured2400]
  rw [child]
  dsimp only [result2398]
  have child := node2399_eq
  unfold live2399 coloured2399 at child
  try dsimp only [live2400, coloured2400]
  rw [child]
  dsimp only [result2399]
  try dsimp only [colour, result2400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2401_agree : tree2401 = literal2401 := by
  rw [tree2401_def]
  rfl
theorem node2401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2401 live2401 coloured2401 = result2401 := by
  rw [tree2401_def]
  try dsimp only [colour, result2401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2402_agree : tree2402 = literal2402 := by
  rw [tree2402_def, tree2400_agree, tree2401_agree]
  rfl
theorem node2402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2402 live2402 coloured2402 = result2402 := by
  rw [tree2402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2400_eq
  unfold live2400 coloured2400 at child
  try dsimp only [live2402, coloured2402]
  rw [child]
  dsimp only [result2400]
  have child := node2401_eq
  unfold live2401 coloured2401 at child
  try dsimp only [live2402, coloured2402]
  rw [child]
  dsimp only [result2401]
  try dsimp only [colour, result2402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2403_agree : tree2403 = literal2403 := by
  rw [tree2403_def]
  rfl
theorem node2403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2403 live2403 coloured2403 = result2403 := by
  rw [tree2403_def]
  try dsimp only [colour, result2403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2404_agree : tree2404 = literal2404 := by
  rw [tree2404_def, tree2402_agree, tree2403_agree]
  rfl
theorem node2404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2404 live2404 coloured2404 = result2404 := by
  rw [tree2404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2402_eq
  unfold live2402 coloured2402 at child
  try dsimp only [live2404, coloured2404]
  rw [child]
  dsimp only [result2402]
  have child := node2403_eq
  unfold live2403 coloured2403 at child
  try dsimp only [live2404, coloured2404]
  rw [child]
  dsimp only [result2403]
  try dsimp only [colour, result2404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2405_agree : tree2405 = literal2405 := by
  rw [tree2405_def]
  rfl
theorem node2405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2405 live2405 coloured2405 = result2405 := by
  rw [tree2405_def]
  try dsimp only [colour, result2405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2406_agree : tree2406 = literal2406 := by
  rw [tree2406_def, tree2404_agree, tree2405_agree]
  rfl
theorem node2406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2406 live2406 coloured2406 = result2406 := by
  rw [tree2406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2404_eq
  unfold live2404 coloured2404 at child
  try dsimp only [live2406, coloured2406]
  rw [child]
  dsimp only [result2404]
  have child := node2405_eq
  unfold live2405 coloured2405 at child
  try dsimp only [live2406, coloured2406]
  rw [child]
  dsimp only [result2405]
  try dsimp only [colour, result2406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2407_agree : tree2407 = literal2407 := by
  rw [tree2407_def]
  rfl
theorem node2407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2407 live2407 coloured2407 = result2407 := by
  rw [tree2407_def]
  try dsimp only [colour, result2407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2408_agree : tree2408 = literal2408 := by
  rw [tree2408_def, tree2406_agree, tree2407_agree]
  rfl
theorem node2408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2408 live2408 coloured2408 = result2408 := by
  rw [tree2408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2406_eq
  unfold live2406 coloured2406 at child
  try dsimp only [live2408, coloured2408]
  rw [child]
  dsimp only [result2406]
  have child := node2407_eq
  unfold live2407 coloured2407 at child
  try dsimp only [live2408, coloured2408]
  rw [child]
  dsimp only [result2407]
  try dsimp only [colour, result2408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2409_agree : tree2409 = literal2409 := by
  rw [tree2409_def]
  rfl
theorem node2409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2409 live2409 coloured2409 = result2409 := by
  rw [tree2409_def]
  try dsimp only [colour, result2409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2410_agree : tree2410 = literal2410 := by
  rw [tree2410_def, tree2408_agree, tree2409_agree]
  rfl
theorem node2410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2410 live2410 coloured2410 = result2410 := by
  rw [tree2410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2408_eq
  unfold live2408 coloured2408 at child
  try dsimp only [live2410, coloured2410]
  rw [child]
  dsimp only [result2408]
  have child := node2409_eq
  unfold live2409 coloured2409 at child
  try dsimp only [live2410, coloured2410]
  rw [child]
  dsimp only [result2409]
  try dsimp only [colour, result2410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2411_agree : tree2411 = literal2411 := by
  rw [tree2411_def]
  rfl
theorem node2411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2411 live2411 coloured2411 = result2411 := by
  rw [tree2411_def]
  try dsimp only [colour, result2411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2412_agree : tree2412 = literal2412 := by
  rw [tree2412_def, tree2410_agree, tree2411_agree]
  rfl
theorem node2412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2412 live2412 coloured2412 = result2412 := by
  rw [tree2412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2410_eq
  unfold live2410 coloured2410 at child
  try dsimp only [live2412, coloured2412]
  rw [child]
  dsimp only [result2410]
  have child := node2411_eq
  unfold live2411 coloured2411 at child
  try dsimp only [live2412, coloured2412]
  rw [child]
  dsimp only [result2411]
  try dsimp only [colour, result2412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2413_agree : tree2413 = literal2413 := by
  rw [tree2413_def]
  rfl
theorem node2413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2413 live2413 coloured2413 = result2413 := by
  rw [tree2413_def]
  try dsimp only [colour, result2413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2414_agree : tree2414 = literal2414 := by
  rw [tree2414_def, tree2412_agree, tree2413_agree]
  rfl
theorem node2414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2414 live2414 coloured2414 = result2414 := by
  rw [tree2414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2412_eq
  unfold live2412 coloured2412 at child
  try dsimp only [live2414, coloured2414]
  rw [child]
  dsimp only [result2412]
  have child := node2413_eq
  unfold live2413 coloured2413 at child
  try dsimp only [live2414, coloured2414]
  rw [child]
  dsimp only [result2413]
  try dsimp only [colour, result2414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2415_agree : tree2415 = literal2415 := by
  rw [tree2415_def]
  rfl
theorem node2415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2415 live2415 coloured2415 = result2415 := by
  rw [tree2415_def]
  try dsimp only [colour, result2415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2416_agree : tree2416 = literal2416 := by
  rw [tree2416_def, tree2414_agree, tree2415_agree]
  rfl
theorem node2416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2416 live2416 coloured2416 = result2416 := by
  rw [tree2416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2414_eq
  unfold live2414 coloured2414 at child
  try dsimp only [live2416, coloured2416]
  rw [child]
  dsimp only [result2414]
  have child := node2415_eq
  unfold live2415 coloured2415 at child
  try dsimp only [live2416, coloured2416]
  rw [child]
  dsimp only [result2415]
  try dsimp only [colour, result2416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2417_agree : tree2417 = literal2417 := by
  rw [tree2417_def]
  rfl
theorem node2417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2417 live2417 coloured2417 = result2417 := by
  rw [tree2417_def]
  try dsimp only [colour, result2417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2418_agree : tree2418 = literal2418 := by
  rw [tree2418_def, tree2416_agree, tree2417_agree]
  rfl
theorem node2418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2418 live2418 coloured2418 = result2418 := by
  rw [tree2418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2416_eq
  unfold live2416 coloured2416 at child
  try dsimp only [live2418, coloured2418]
  rw [child]
  dsimp only [result2416]
  have child := node2417_eq
  unfold live2417 coloured2417 at child
  try dsimp only [live2418, coloured2418]
  rw [child]
  dsimp only [result2417]
  try dsimp only [colour, result2418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2419_agree : tree2419 = literal2419 := by
  rw [tree2419_def]
  rfl
theorem node2419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2419 live2419 coloured2419 = result2419 := by
  rw [tree2419_def]
  try dsimp only [colour, result2419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2420_agree : tree2420 = literal2420 := by
  rw [tree2420_def, tree2418_agree, tree2419_agree]
  rfl
theorem node2420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2420 live2420 coloured2420 = result2420 := by
  rw [tree2420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2418_eq
  unfold live2418 coloured2418 at child
  try dsimp only [live2420, coloured2420]
  rw [child]
  dsimp only [result2418]
  have child := node2419_eq
  unfold live2419 coloured2419 at child
  try dsimp only [live2420, coloured2420]
  rw [child]
  dsimp only [result2419]
  try dsimp only [colour, result2420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2421_agree : tree2421 = literal2421 := by
  rw [tree2421_def]
  rfl
theorem node2421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2421 live2421 coloured2421 = result2421 := by
  rw [tree2421_def]
  try dsimp only [colour, result2421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2422_agree : tree2422 = literal2422 := by
  rw [tree2422_def, tree2420_agree, tree2421_agree]
  rfl
theorem node2422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2422 live2422 coloured2422 = result2422 := by
  rw [tree2422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2420_eq
  unfold live2420 coloured2420 at child
  try dsimp only [live2422, coloured2422]
  rw [child]
  dsimp only [result2420]
  have child := node2421_eq
  unfold live2421 coloured2421 at child
  try dsimp only [live2422, coloured2422]
  rw [child]
  dsimp only [result2421]
  try dsimp only [colour, result2422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2423_agree : tree2423 = literal2423 := by
  rw [tree2423_def]
  rfl
theorem node2423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2423 live2423 coloured2423 = result2423 := by
  rw [tree2423_def]
  try dsimp only [colour, result2423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2424_agree : tree2424 = literal2424 := by
  rw [tree2424_def, tree2422_agree, tree2423_agree]
  rfl
theorem node2424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2424 live2424 coloured2424 = result2424 := by
  rw [tree2424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2422_eq
  unfold live2422 coloured2422 at child
  try dsimp only [live2424, coloured2424]
  rw [child]
  dsimp only [result2422]
  have child := node2423_eq
  unfold live2423 coloured2423 at child
  try dsimp only [live2424, coloured2424]
  rw [child]
  dsimp only [result2423]
  try dsimp only [colour, result2424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2425_agree : tree2425 = literal2425 := by
  rw [tree2425_def]
  rfl
theorem node2425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2425 live2425 coloured2425 = result2425 := by
  rw [tree2425_def]
  try dsimp only [colour, result2425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2426_agree : tree2426 = literal2426 := by
  rw [tree2426_def, tree2424_agree, tree2425_agree]
  rfl
theorem node2426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2426 live2426 coloured2426 = result2426 := by
  rw [tree2426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2424_eq
  unfold live2424 coloured2424 at child
  try dsimp only [live2426, coloured2426]
  rw [child]
  dsimp only [result2424]
  have child := node2425_eq
  unfold live2425 coloured2425 at child
  try dsimp only [live2426, coloured2426]
  rw [child]
  dsimp only [result2425]
  try dsimp only [colour, result2426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2427_agree : tree2427 = literal2427 := by
  rw [tree2427_def]
  rfl
theorem node2427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2427 live2427 coloured2427 = result2427 := by
  rw [tree2427_def]
  try dsimp only [colour, result2427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2428_agree : tree2428 = literal2428 := by
  rw [tree2428_def, tree2426_agree, tree2427_agree]
  rfl
theorem node2428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2428 live2428 coloured2428 = result2428 := by
  rw [tree2428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2426_eq
  unfold live2426 coloured2426 at child
  try dsimp only [live2428, coloured2428]
  rw [child]
  dsimp only [result2426]
  have child := node2427_eq
  unfold live2427 coloured2427 at child
  try dsimp only [live2428, coloured2428]
  rw [child]
  dsimp only [result2427]
  try dsimp only [colour, result2428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2429_agree : tree2429 = literal2429 := by
  rw [tree2429_def]
  rfl
theorem node2429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2429 live2429 coloured2429 = result2429 := by
  rw [tree2429_def]
  try dsimp only [colour, result2429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2430_agree : tree2430 = literal2430 := by
  rw [tree2430_def, tree2428_agree, tree2429_agree]
  rfl
theorem node2430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2430 live2430 coloured2430 = result2430 := by
  rw [tree2430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2428_eq
  unfold live2428 coloured2428 at child
  try dsimp only [live2430, coloured2430]
  rw [child]
  dsimp only [result2428]
  have child := node2429_eq
  unfold live2429 coloured2429 at child
  try dsimp only [live2430, coloured2430]
  rw [child]
  dsimp only [result2429]
  try dsimp only [colour, result2430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2431_agree : tree2431 = literal2431 := by
  rw [tree2431_def]
  rfl
theorem node2431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2431 live2431 coloured2431 = result2431 := by
  rw [tree2431_def]
  try dsimp only [colour, result2431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2432_agree : tree2432 = literal2432 := by
  rw [tree2432_def, tree2430_agree, tree2431_agree]
  rfl
theorem node2432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2432 live2432 coloured2432 = result2432 := by
  rw [tree2432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2430_eq
  unfold live2430 coloured2430 at child
  try dsimp only [live2432, coloured2432]
  rw [child]
  dsimp only [result2430]
  have child := node2431_eq
  unfold live2431 coloured2431 at child
  try dsimp only [live2432, coloured2432]
  rw [child]
  dsimp only [result2431]
  try dsimp only [colour, result2432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2433_agree : tree2433 = literal2433 := by
  rw [tree2433_def]
  rfl
theorem node2433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2433 live2433 coloured2433 = result2433 := by
  rw [tree2433_def]
  try dsimp only [colour, result2433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2434_agree : tree2434 = literal2434 := by
  rw [tree2434_def, tree2432_agree, tree2433_agree]
  rfl
theorem node2434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2434 live2434 coloured2434 = result2434 := by
  rw [tree2434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2432_eq
  unfold live2432 coloured2432 at child
  try dsimp only [live2434, coloured2434]
  rw [child]
  dsimp only [result2432]
  have child := node2433_eq
  unfold live2433 coloured2433 at child
  try dsimp only [live2434, coloured2434]
  rw [child]
  dsimp only [result2433]
  try dsimp only [colour, result2434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2435_agree : tree2435 = literal2435 := by
  rw [tree2435_def]
  rfl
theorem node2435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2435 live2435 coloured2435 = result2435 := by
  rw [tree2435_def]
  try dsimp only [colour, result2435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2436_agree : tree2436 = literal2436 := by
  rw [tree2436_def, tree2434_agree, tree2435_agree]
  rfl
theorem node2436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2436 live2436 coloured2436 = result2436 := by
  rw [tree2436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2434_eq
  unfold live2434 coloured2434 at child
  try dsimp only [live2436, coloured2436]
  rw [child]
  dsimp only [result2434]
  have child := node2435_eq
  unfold live2435 coloured2435 at child
  try dsimp only [live2436, coloured2436]
  rw [child]
  dsimp only [result2435]
  try dsimp only [colour, result2436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2437_agree : tree2437 = literal2437 := by
  rw [tree2437_def]
  rfl
theorem node2437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2437 live2437 coloured2437 = result2437 := by
  rw [tree2437_def]
  try dsimp only [colour, result2437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2438_agree : tree2438 = literal2438 := by
  rw [tree2438_def, tree2436_agree, tree2437_agree]
  rfl
theorem node2438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2438 live2438 coloured2438 = result2438 := by
  rw [tree2438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2436_eq
  unfold live2436 coloured2436 at child
  try dsimp only [live2438, coloured2438]
  rw [child]
  dsimp only [result2436]
  have child := node2437_eq
  unfold live2437 coloured2437 at child
  try dsimp only [live2438, coloured2438]
  rw [child]
  dsimp only [result2437]
  try dsimp only [colour, result2438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2439_agree : tree2439 = literal2439 := by
  rw [tree2439_def]
  rfl
theorem node2439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2439 live2439 coloured2439 = result2439 := by
  rw [tree2439_def]
  try dsimp only [colour, result2439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2440_agree : tree2440 = literal2440 := by
  rw [tree2440_def, tree2438_agree, tree2439_agree]
  rfl
theorem node2440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2440 live2440 coloured2440 = result2440 := by
  rw [tree2440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2438_eq
  unfold live2438 coloured2438 at child
  try dsimp only [live2440, coloured2440]
  rw [child]
  dsimp only [result2438]
  have child := node2439_eq
  unfold live2439 coloured2439 at child
  try dsimp only [live2440, coloured2440]
  rw [child]
  dsimp only [result2439]
  try dsimp only [colour, result2440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2441_agree : tree2441 = literal2441 := by
  rw [tree2441_def]
  rfl
theorem node2441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2441 live2441 coloured2441 = result2441 := by
  rw [tree2441_def]
  try dsimp only [colour, result2441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2442_agree : tree2442 = literal2442 := by
  rw [tree2442_def, tree2440_agree, tree2441_agree]
  rfl
theorem node2442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2442 live2442 coloured2442 = result2442 := by
  rw [tree2442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2440_eq
  unfold live2440 coloured2440 at child
  try dsimp only [live2442, coloured2442]
  rw [child]
  dsimp only [result2440]
  have child := node2441_eq
  unfold live2441 coloured2441 at child
  try dsimp only [live2442, coloured2442]
  rw [child]
  dsimp only [result2441]
  try dsimp only [colour, result2442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2443_agree : tree2443 = literal2443 := by
  rw [tree2443_def]
  rfl
theorem node2443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2443 live2443 coloured2443 = result2443 := by
  rw [tree2443_def]
  try dsimp only [colour, result2443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2444_agree : tree2444 = literal2444 := by
  rw [tree2444_def, tree2442_agree, tree2443_agree]
  rfl
theorem node2444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2444 live2444 coloured2444 = result2444 := by
  rw [tree2444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2442_eq
  unfold live2442 coloured2442 at child
  try dsimp only [live2444, coloured2444]
  rw [child]
  dsimp only [result2442]
  have child := node2443_eq
  unfold live2443 coloured2443 at child
  try dsimp only [live2444, coloured2444]
  rw [child]
  dsimp only [result2443]
  try dsimp only [colour, result2444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2445_agree : tree2445 = literal2445 := by
  rw [tree2445_def]
  rfl
theorem node2445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2445 live2445 coloured2445 = result2445 := by
  rw [tree2445_def]
  try dsimp only [colour, result2445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2446_agree : tree2446 = literal2446 := by
  rw [tree2446_def, tree2444_agree, tree2445_agree]
  rfl
theorem node2446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2446 live2446 coloured2446 = result2446 := by
  rw [tree2446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2444_eq
  unfold live2444 coloured2444 at child
  try dsimp only [live2446, coloured2446]
  rw [child]
  dsimp only [result2444]
  have child := node2445_eq
  unfold live2445 coloured2445 at child
  try dsimp only [live2446, coloured2446]
  rw [child]
  dsimp only [result2445]
  try dsimp only [colour, result2446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2447_agree : tree2447 = literal2447 := by
  rw [tree2447_def]
  rfl
theorem node2447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2447 live2447 coloured2447 = result2447 := by
  rw [tree2447_def]
  try dsimp only [colour, result2447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2448_agree : tree2448 = literal2448 := by
  rw [tree2448_def, tree2446_agree, tree2447_agree]
  rfl
theorem node2448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2448 live2448 coloured2448 = result2448 := by
  rw [tree2448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2446_eq
  unfold live2446 coloured2446 at child
  try dsimp only [live2448, coloured2448]
  rw [child]
  dsimp only [result2446]
  have child := node2447_eq
  unfold live2447 coloured2447 at child
  try dsimp only [live2448, coloured2448]
  rw [child]
  dsimp only [result2447]
  try dsimp only [colour, result2448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2449_agree : tree2449 = literal2449 := by
  rw [tree2449_def]
  rfl
theorem node2449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2449 live2449 coloured2449 = result2449 := by
  rw [tree2449_def]
  try dsimp only [colour, result2449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2450_agree : tree2450 = literal2450 := by
  rw [tree2450_def, tree2448_agree, tree2449_agree]
  rfl
theorem node2450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2450 live2450 coloured2450 = result2450 := by
  rw [tree2450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2448_eq
  unfold live2448 coloured2448 at child
  try dsimp only [live2450, coloured2450]
  rw [child]
  dsimp only [result2448]
  have child := node2449_eq
  unfold live2449 coloured2449 at child
  try dsimp only [live2450, coloured2450]
  rw [child]
  dsimp only [result2449]
  try dsimp only [colour, result2450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2451_agree : tree2451 = literal2451 := by
  rw [tree2451_def]
  rfl
theorem node2451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2451 live2451 coloured2451 = result2451 := by
  rw [tree2451_def]
  try dsimp only [colour, result2451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2452_agree : tree2452 = literal2452 := by
  rw [tree2452_def, tree2450_agree, tree2451_agree]
  rfl
theorem node2452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2452 live2452 coloured2452 = result2452 := by
  rw [tree2452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2450_eq
  unfold live2450 coloured2450 at child
  try dsimp only [live2452, coloured2452]
  rw [child]
  dsimp only [result2450]
  have child := node2451_eq
  unfold live2451 coloured2451 at child
  try dsimp only [live2452, coloured2452]
  rw [child]
  dsimp only [result2451]
  try dsimp only [colour, result2452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2453_agree : tree2453 = literal2453 := by
  rw [tree2453_def]
  rfl
theorem node2453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2453 live2453 coloured2453 = result2453 := by
  rw [tree2453_def]
  try dsimp only [colour, result2453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2454_agree : tree2454 = literal2454 := by
  rw [tree2454_def, tree2452_agree, tree2453_agree]
  rfl
theorem node2454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2454 live2454 coloured2454 = result2454 := by
  rw [tree2454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2452_eq
  unfold live2452 coloured2452 at child
  try dsimp only [live2454, coloured2454]
  rw [child]
  dsimp only [result2452]
  have child := node2453_eq
  unfold live2453 coloured2453 at child
  try dsimp only [live2454, coloured2454]
  rw [child]
  dsimp only [result2453]
  try dsimp only [colour, result2454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2455_agree : tree2455 = literal2455 := by
  rw [tree2455_def]
  rfl
theorem node2455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2455 live2455 coloured2455 = result2455 := by
  rw [tree2455_def]
  try dsimp only [colour, result2455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2456_agree : tree2456 = literal2456 := by
  rw [tree2456_def, tree2454_agree, tree2455_agree]
  rfl
theorem node2456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2456 live2456 coloured2456 = result2456 := by
  rw [tree2456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2454_eq
  unfold live2454 coloured2454 at child
  try dsimp only [live2456, coloured2456]
  rw [child]
  dsimp only [result2454]
  have child := node2455_eq
  unfold live2455 coloured2455 at child
  try dsimp only [live2456, coloured2456]
  rw [child]
  dsimp only [result2455]
  try dsimp only [colour, result2456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2457_agree : tree2457 = literal2457 := by
  rw [tree2457_def]
  rfl
theorem node2457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2457 live2457 coloured2457 = result2457 := by
  rw [tree2457_def]
  try dsimp only [colour, result2457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2458_agree : tree2458 = literal2458 := by
  rw [tree2458_def, tree2456_agree, tree2457_agree]
  rfl
theorem node2458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2458 live2458 coloured2458 = result2458 := by
  rw [tree2458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2456_eq
  unfold live2456 coloured2456 at child
  try dsimp only [live2458, coloured2458]
  rw [child]
  dsimp only [result2456]
  have child := node2457_eq
  unfold live2457 coloured2457 at child
  try dsimp only [live2458, coloured2458]
  rw [child]
  dsimp only [result2457]
  try dsimp only [colour, result2458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2459_agree : tree2459 = literal2459 := by
  rw [tree2459_def]
  rfl
theorem node2459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2459 live2459 coloured2459 = result2459 := by
  rw [tree2459_def]
  try dsimp only [colour, result2459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2460_agree : tree2460 = literal2460 := by
  rw [tree2460_def, tree2458_agree, tree2459_agree]
  rfl
theorem node2460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2460 live2460 coloured2460 = result2460 := by
  rw [tree2460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2458_eq
  unfold live2458 coloured2458 at child
  try dsimp only [live2460, coloured2460]
  rw [child]
  dsimp only [result2458]
  have child := node2459_eq
  unfold live2459 coloured2459 at child
  try dsimp only [live2460, coloured2460]
  rw [child]
  dsimp only [result2459]
  try dsimp only [colour, result2460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2461_agree : tree2461 = literal2461 := by
  rw [tree2461_def]
  rfl
theorem node2461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2461 live2461 coloured2461 = result2461 := by
  rw [tree2461_def]
  try dsimp only [colour, result2461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2462_agree : tree2462 = literal2462 := by
  rw [tree2462_def, tree2460_agree, tree2461_agree]
  rfl
theorem node2462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2462 live2462 coloured2462 = result2462 := by
  rw [tree2462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2460_eq
  unfold live2460 coloured2460 at child
  try dsimp only [live2462, coloured2462]
  rw [child]
  dsimp only [result2460]
  have child := node2461_eq
  unfold live2461 coloured2461 at child
  try dsimp only [live2462, coloured2462]
  rw [child]
  dsimp only [result2461]
  try dsimp only [colour, result2462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2463_agree : tree2463 = literal2463 := by
  rw [tree2463_def]
  rfl
theorem node2463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2463 live2463 coloured2463 = result2463 := by
  rw [tree2463_def]
  try dsimp only [colour, result2463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2464_agree : tree2464 = literal2464 := by
  rw [tree2464_def, tree2462_agree, tree2463_agree]
  rfl
theorem node2464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2464 live2464 coloured2464 = result2464 := by
  rw [tree2464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2462_eq
  unfold live2462 coloured2462 at child
  try dsimp only [live2464, coloured2464]
  rw [child]
  dsimp only [result2462]
  have child := node2463_eq
  unfold live2463 coloured2463 at child
  try dsimp only [live2464, coloured2464]
  rw [child]
  dsimp only [result2463]
  try dsimp only [colour, result2464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2465_agree : tree2465 = literal2465 := by
  rw [tree2465_def]
  rfl
theorem node2465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2465 live2465 coloured2465 = result2465 := by
  rw [tree2465_def]
  try dsimp only [colour, result2465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2466_agree : tree2466 = literal2466 := by
  rw [tree2466_def, tree2464_agree, tree2465_agree]
  rfl
theorem node2466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2466 live2466 coloured2466 = result2466 := by
  rw [tree2466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2464_eq
  unfold live2464 coloured2464 at child
  try dsimp only [live2466, coloured2466]
  rw [child]
  dsimp only [result2464]
  have child := node2465_eq
  unfold live2465 coloured2465 at child
  try dsimp only [live2466, coloured2466]
  rw [child]
  dsimp only [result2465]
  try dsimp only [colour, result2466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2467_agree : tree2467 = literal2467 := by
  rw [tree2467_def]
  rfl
theorem node2467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2467 live2467 coloured2467 = result2467 := by
  rw [tree2467_def]
  try dsimp only [colour, result2467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2468_agree : tree2468 = literal2468 := by
  rw [tree2468_def, tree2466_agree, tree2467_agree]
  rfl
theorem node2468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2468 live2468 coloured2468 = result2468 := by
  rw [tree2468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2466_eq
  unfold live2466 coloured2466 at child
  try dsimp only [live2468, coloured2468]
  rw [child]
  dsimp only [result2466]
  have child := node2467_eq
  unfold live2467 coloured2467 at child
  try dsimp only [live2468, coloured2468]
  rw [child]
  dsimp only [result2467]
  try dsimp only [colour, result2468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2469_agree : tree2469 = literal2469 := by
  rw [tree2469_def]
  rfl
theorem node2469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2469 live2469 coloured2469 = result2469 := by
  rw [tree2469_def]
  try dsimp only [colour, result2469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2470_agree : tree2470 = literal2470 := by
  rw [tree2470_def, tree2468_agree, tree2469_agree]
  rfl
theorem node2470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2470 live2470 coloured2470 = result2470 := by
  rw [tree2470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2468_eq
  unfold live2468 coloured2468 at child
  try dsimp only [live2470, coloured2470]
  rw [child]
  dsimp only [result2468]
  have child := node2469_eq
  unfold live2469 coloured2469 at child
  try dsimp only [live2470, coloured2470]
  rw [child]
  dsimp only [result2469]
  try dsimp only [colour, result2470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2471_agree : tree2471 = literal2471 := by
  rw [tree2471_def]
  rfl
theorem node2471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2471 live2471 coloured2471 = result2471 := by
  rw [tree2471_def]
  try dsimp only [colour, result2471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2472_agree : tree2472 = literal2472 := by
  rw [tree2472_def, tree2470_agree, tree2471_agree]
  rfl
theorem node2472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2472 live2472 coloured2472 = result2472 := by
  rw [tree2472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2470_eq
  unfold live2470 coloured2470 at child
  try dsimp only [live2472, coloured2472]
  rw [child]
  dsimp only [result2470]
  have child := node2471_eq
  unfold live2471 coloured2471 at child
  try dsimp only [live2472, coloured2472]
  rw [child]
  dsimp only [result2471]
  try dsimp only [colour, result2472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2473_agree : tree2473 = literal2473 := by
  rw [tree2473_def]
  rfl
theorem node2473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2473 live2473 coloured2473 = result2473 := by
  rw [tree2473_def]
  try dsimp only [colour, result2473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2474_agree : tree2474 = literal2474 := by
  rw [tree2474_def, tree2472_agree, tree2473_agree]
  rfl
theorem node2474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2474 live2474 coloured2474 = result2474 := by
  rw [tree2474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2472_eq
  unfold live2472 coloured2472 at child
  try dsimp only [live2474, coloured2474]
  rw [child]
  dsimp only [result2472]
  have child := node2473_eq
  unfold live2473 coloured2473 at child
  try dsimp only [live2474, coloured2474]
  rw [child]
  dsimp only [result2473]
  try dsimp only [colour, result2474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2475_agree : tree2475 = literal2475 := by
  rw [tree2475_def]
  rfl
theorem node2475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2475 live2475 coloured2475 = result2475 := by
  rw [tree2475_def]
  try dsimp only [colour, result2475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2476_agree : tree2476 = literal2476 := by
  rw [tree2476_def, tree2474_agree, tree2475_agree]
  rfl
theorem node2476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2476 live2476 coloured2476 = result2476 := by
  rw [tree2476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2474_eq
  unfold live2474 coloured2474 at child
  try dsimp only [live2476, coloured2476]
  rw [child]
  dsimp only [result2474]
  have child := node2475_eq
  unfold live2475 coloured2475 at child
  try dsimp only [live2476, coloured2476]
  rw [child]
  dsimp only [result2475]
  try dsimp only [colour, result2476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2477_agree : tree2477 = literal2477 := by
  rw [tree2477_def]
  rfl
theorem node2477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2477 live2477 coloured2477 = result2477 := by
  rw [tree2477_def]
  try dsimp only [colour, result2477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2478_agree : tree2478 = literal2478 := by
  rw [tree2478_def, tree2476_agree, tree2477_agree]
  rfl
theorem node2478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2478 live2478 coloured2478 = result2478 := by
  rw [tree2478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2476_eq
  unfold live2476 coloured2476 at child
  try dsimp only [live2478, coloured2478]
  rw [child]
  dsimp only [result2476]
  have child := node2477_eq
  unfold live2477 coloured2477 at child
  try dsimp only [live2478, coloured2478]
  rw [child]
  dsimp only [result2477]
  try dsimp only [colour, result2478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2479_agree : tree2479 = literal2479 := by
  rw [tree2479_def]
  rfl
theorem node2479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2479 live2479 coloured2479 = result2479 := by
  rw [tree2479_def]
  try dsimp only [colour, result2479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2480_agree : tree2480 = literal2480 := by
  rw [tree2480_def, tree2478_agree, tree2479_agree]
  rfl
theorem node2480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2480 live2480 coloured2480 = result2480 := by
  rw [tree2480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2478_eq
  unfold live2478 coloured2478 at child
  try dsimp only [live2480, coloured2480]
  rw [child]
  dsimp only [result2478]
  have child := node2479_eq
  unfold live2479 coloured2479 at child
  try dsimp only [live2480, coloured2480]
  rw [child]
  dsimp only [result2479]
  try dsimp only [colour, result2480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2481_agree : tree2481 = literal2481 := by
  rw [tree2481_def]
  rfl
theorem node2481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2481 live2481 coloured2481 = result2481 := by
  rw [tree2481_def]
  try dsimp only [colour, result2481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2482_agree : tree2482 = literal2482 := by
  rw [tree2482_def, tree2480_agree, tree2481_agree]
  rfl
theorem node2482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2482 live2482 coloured2482 = result2482 := by
  rw [tree2482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2480_eq
  unfold live2480 coloured2480 at child
  try dsimp only [live2482, coloured2482]
  rw [child]
  dsimp only [result2480]
  have child := node2481_eq
  unfold live2481 coloured2481 at child
  try dsimp only [live2482, coloured2482]
  rw [child]
  dsimp only [result2481]
  try dsimp only [colour, result2482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2483_agree : tree2483 = literal2483 := by
  rw [tree2483_def]
  rfl
theorem node2483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2483 live2483 coloured2483 = result2483 := by
  rw [tree2483_def]
  try dsimp only [colour, result2483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2484_agree : tree2484 = literal2484 := by
  rw [tree2484_def, tree2482_agree, tree2483_agree]
  rfl
theorem node2484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2484 live2484 coloured2484 = result2484 := by
  rw [tree2484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2482_eq
  unfold live2482 coloured2482 at child
  try dsimp only [live2484, coloured2484]
  rw [child]
  dsimp only [result2482]
  have child := node2483_eq
  unfold live2483 coloured2483 at child
  try dsimp only [live2484, coloured2484]
  rw [child]
  dsimp only [result2483]
  try dsimp only [colour, result2484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2485_agree : tree2485 = literal2485 := by
  rw [tree2485_def]
  rfl
theorem node2485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2485 live2485 coloured2485 = result2485 := by
  rw [tree2485_def]
  try dsimp only [colour, result2485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2486_agree : tree2486 = literal2486 := by
  rw [tree2486_def, tree2484_agree, tree2485_agree]
  rfl
theorem node2486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2486 live2486 coloured2486 = result2486 := by
  rw [tree2486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2484_eq
  unfold live2484 coloured2484 at child
  try dsimp only [live2486, coloured2486]
  rw [child]
  dsimp only [result2484]
  have child := node2485_eq
  unfold live2485 coloured2485 at child
  try dsimp only [live2486, coloured2486]
  rw [child]
  dsimp only [result2485]
  try dsimp only [colour, result2486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2487_agree : tree2487 = literal2487 := by
  rw [tree2487_def]
  rfl
theorem node2487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2487 live2487 coloured2487 = result2487 := by
  rw [tree2487_def]
  try dsimp only [colour, result2487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2488_agree : tree2488 = literal2488 := by
  rw [tree2488_def, tree2486_agree, tree2487_agree]
  rfl
theorem node2488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2488 live2488 coloured2488 = result2488 := by
  rw [tree2488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2486_eq
  unfold live2486 coloured2486 at child
  try dsimp only [live2488, coloured2488]
  rw [child]
  dsimp only [result2486]
  have child := node2487_eq
  unfold live2487 coloured2487 at child
  try dsimp only [live2488, coloured2488]
  rw [child]
  dsimp only [result2487]
  try dsimp only [colour, result2488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2489_agree : tree2489 = literal2489 := by
  rw [tree2489_def]
  rfl
theorem node2489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2489 live2489 coloured2489 = result2489 := by
  rw [tree2489_def]
  try dsimp only [colour, result2489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2490_agree : tree2490 = literal2490 := by
  rw [tree2490_def, tree2488_agree, tree2489_agree]
  rfl
theorem node2490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2490 live2490 coloured2490 = result2490 := by
  rw [tree2490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2488_eq
  unfold live2488 coloured2488 at child
  try dsimp only [live2490, coloured2490]
  rw [child]
  dsimp only [result2488]
  have child := node2489_eq
  unfold live2489 coloured2489 at child
  try dsimp only [live2490, coloured2490]
  rw [child]
  dsimp only [result2489]
  try dsimp only [colour, result2490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2491_agree : tree2491 = literal2491 := by
  rw [tree2491_def]
  rfl
theorem node2491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2491 live2491 coloured2491 = result2491 := by
  rw [tree2491_def]
  try dsimp only [colour, result2491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2492_agree : tree2492 = literal2492 := by
  rw [tree2492_def, tree2490_agree, tree2491_agree]
  rfl
theorem node2492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2492 live2492 coloured2492 = result2492 := by
  rw [tree2492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2490_eq
  unfold live2490 coloured2490 at child
  try dsimp only [live2492, coloured2492]
  rw [child]
  dsimp only [result2490]
  have child := node2491_eq
  unfold live2491 coloured2491 at child
  try dsimp only [live2492, coloured2492]
  rw [child]
  dsimp only [result2491]
  try dsimp only [colour, result2492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2493_agree : tree2493 = literal2493 := by
  rw [tree2493_def]
  rfl
theorem node2493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2493 live2493 coloured2493 = result2493 := by
  rw [tree2493_def]
  try dsimp only [colour, result2493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2494_agree : tree2494 = literal2494 := by
  rw [tree2494_def, tree2492_agree, tree2493_agree]
  rfl
theorem node2494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2494 live2494 coloured2494 = result2494 := by
  rw [tree2494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2492_eq
  unfold live2492 coloured2492 at child
  try dsimp only [live2494, coloured2494]
  rw [child]
  dsimp only [result2492]
  have child := node2493_eq
  unfold live2493 coloured2493 at child
  try dsimp only [live2494, coloured2494]
  rw [child]
  dsimp only [result2493]
  try dsimp only [colour, result2494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2495_agree : tree2495 = literal2495 := by
  rw [tree2495_def]
  rfl
theorem node2495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2495 live2495 coloured2495 = result2495 := by
  rw [tree2495_def]
  try dsimp only [colour, result2495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
