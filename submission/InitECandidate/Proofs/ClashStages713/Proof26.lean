import InitECandidate.Proofs.ClashStages713.Proof25
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2496_agree : tree2496 = literal2496 := by
  rw [tree2496_def, tree2494_agree, tree2495_agree]
  rfl
theorem node2496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2496 live2496 coloured2496 = result2496 := by
  rw [tree2496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2494_eq
  unfold live2494 coloured2494 at child
  try dsimp only [live2496, coloured2496]
  rw [child]
  dsimp only [result2494]
  have child := node2495_eq
  unfold live2495 coloured2495 at child
  try dsimp only [live2496, coloured2496]
  rw [child]
  dsimp only [result2495]
  try dsimp only [colour, result2496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2497_agree : tree2497 = literal2497 := by
  rw [tree2497_def]
  rfl
theorem node2497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2497 live2497 coloured2497 = result2497 := by
  rw [tree2497_def]
  try dsimp only [colour, result2497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2498_agree : tree2498 = literal2498 := by
  rw [tree2498_def, tree2496_agree, tree2497_agree]
  rfl
theorem node2498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2498 live2498 coloured2498 = result2498 := by
  rw [tree2498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2496_eq
  unfold live2496 coloured2496 at child
  try dsimp only [live2498, coloured2498]
  rw [child]
  dsimp only [result2496]
  have child := node2497_eq
  unfold live2497 coloured2497 at child
  try dsimp only [live2498, coloured2498]
  rw [child]
  dsimp only [result2497]
  try dsimp only [colour, result2498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2499_agree : tree2499 = literal2499 := by
  rw [tree2499_def]
  rfl
theorem node2499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2499 live2499 coloured2499 = result2499 := by
  rw [tree2499_def]
  try dsimp only [colour, result2499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2500_agree : tree2500 = literal2500 := by
  rw [tree2500_def, tree2498_agree, tree2499_agree]
  rfl
theorem node2500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2500 live2500 coloured2500 = result2500 := by
  rw [tree2500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2498_eq
  unfold live2498 coloured2498 at child
  try dsimp only [live2500, coloured2500]
  rw [child]
  dsimp only [result2498]
  have child := node2499_eq
  unfold live2499 coloured2499 at child
  try dsimp only [live2500, coloured2500]
  rw [child]
  dsimp only [result2499]
  try dsimp only [colour, result2500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2501_agree : tree2501 = literal2501 := by
  rw [tree2501_def]
  rfl
theorem node2501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2501 live2501 coloured2501 = result2501 := by
  rw [tree2501_def]
  try dsimp only [colour, result2501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2502_agree : tree2502 = literal2502 := by
  rw [tree2502_def, tree2500_agree, tree2501_agree]
  rfl
theorem node2502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2502 live2502 coloured2502 = result2502 := by
  rw [tree2502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2500_eq
  unfold live2500 coloured2500 at child
  try dsimp only [live2502, coloured2502]
  rw [child]
  dsimp only [result2500]
  have child := node2501_eq
  unfold live2501 coloured2501 at child
  try dsimp only [live2502, coloured2502]
  rw [child]
  dsimp only [result2501]
  try dsimp only [colour, result2502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2503_agree : tree2503 = literal2503 := by
  rw [tree2503_def]
  rfl
theorem node2503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2503 live2503 coloured2503 = result2503 := by
  rw [tree2503_def]
  try dsimp only [colour, result2503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2504_agree : tree2504 = literal2504 := by
  rw [tree2504_def, tree2502_agree, tree2503_agree]
  rfl
theorem node2504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2504 live2504 coloured2504 = result2504 := by
  rw [tree2504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2502_eq
  unfold live2502 coloured2502 at child
  try dsimp only [live2504, coloured2504]
  rw [child]
  dsimp only [result2502]
  have child := node2503_eq
  unfold live2503 coloured2503 at child
  try dsimp only [live2504, coloured2504]
  rw [child]
  dsimp only [result2503]
  try dsimp only [colour, result2504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2505_agree : tree2505 = literal2505 := by
  rw [tree2505_def]
  rfl
theorem node2505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2505 live2505 coloured2505 = result2505 := by
  rw [tree2505_def]
  try dsimp only [colour, result2505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2506_agree : tree2506 = literal2506 := by
  rw [tree2506_def, tree2504_agree, tree2505_agree]
  rfl
theorem node2506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2506 live2506 coloured2506 = result2506 := by
  rw [tree2506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2504_eq
  unfold live2504 coloured2504 at child
  try dsimp only [live2506, coloured2506]
  rw [child]
  dsimp only [result2504]
  have child := node2505_eq
  unfold live2505 coloured2505 at child
  try dsimp only [live2506, coloured2506]
  rw [child]
  dsimp only [result2505]
  try dsimp only [colour, result2506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2507_agree : tree2507 = literal2507 := by
  rw [tree2507_def]
  rfl
theorem node2507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2507 live2507 coloured2507 = result2507 := by
  rw [tree2507_def]
  try dsimp only [colour, result2507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2508_agree : tree2508 = literal2508 := by
  rw [tree2508_def, tree2506_agree, tree2507_agree]
  rfl
theorem node2508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2508 live2508 coloured2508 = result2508 := by
  rw [tree2508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2506_eq
  unfold live2506 coloured2506 at child
  try dsimp only [live2508, coloured2508]
  rw [child]
  dsimp only [result2506]
  have child := node2507_eq
  unfold live2507 coloured2507 at child
  try dsimp only [live2508, coloured2508]
  rw [child]
  dsimp only [result2507]
  try dsimp only [colour, result2508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2509_agree : tree2509 = literal2509 := by
  rw [tree2509_def]
  rfl
theorem node2509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2509 live2509 coloured2509 = result2509 := by
  rw [tree2509_def]
  try dsimp only [colour, result2509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2510_agree : tree2510 = literal2510 := by
  rw [tree2510_def, tree2508_agree, tree2509_agree]
  rfl
theorem node2510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2510 live2510 coloured2510 = result2510 := by
  rw [tree2510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2508_eq
  unfold live2508 coloured2508 at child
  try dsimp only [live2510, coloured2510]
  rw [child]
  dsimp only [result2508]
  have child := node2509_eq
  unfold live2509 coloured2509 at child
  try dsimp only [live2510, coloured2510]
  rw [child]
  dsimp only [result2509]
  try dsimp only [colour, result2510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2511_agree : tree2511 = literal2511 := by
  rw [tree2511_def]
  rfl
theorem node2511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2511 live2511 coloured2511 = result2511 := by
  rw [tree2511_def]
  try dsimp only [colour, result2511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2512_agree : tree2512 = literal2512 := by
  rw [tree2512_def, tree2510_agree, tree2511_agree]
  rfl
theorem node2512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2512 live2512 coloured2512 = result2512 := by
  rw [tree2512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2510_eq
  unfold live2510 coloured2510 at child
  try dsimp only [live2512, coloured2512]
  rw [child]
  dsimp only [result2510]
  have child := node2511_eq
  unfold live2511 coloured2511 at child
  try dsimp only [live2512, coloured2512]
  rw [child]
  dsimp only [result2511]
  try dsimp only [colour, result2512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2513_agree : tree2513 = literal2513 := by
  rw [tree2513_def]
  rfl
theorem node2513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2513 live2513 coloured2513 = result2513 := by
  rw [tree2513_def]
  try dsimp only [colour, result2513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2514_agree : tree2514 = literal2514 := by
  rw [tree2514_def, tree2512_agree, tree2513_agree]
  rfl
theorem node2514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2514 live2514 coloured2514 = result2514 := by
  rw [tree2514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2512_eq
  unfold live2512 coloured2512 at child
  try dsimp only [live2514, coloured2514]
  rw [child]
  dsimp only [result2512]
  have child := node2513_eq
  unfold live2513 coloured2513 at child
  try dsimp only [live2514, coloured2514]
  rw [child]
  dsimp only [result2513]
  try dsimp only [colour, result2514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2515_agree : tree2515 = literal2515 := by
  rw [tree2515_def]
  rfl
theorem node2515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2515 live2515 coloured2515 = result2515 := by
  rw [tree2515_def]
  try dsimp only [colour, result2515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2516_agree : tree2516 = literal2516 := by
  rw [tree2516_def, tree2514_agree, tree2515_agree]
  rfl
theorem node2516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2516 live2516 coloured2516 = result2516 := by
  rw [tree2516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2514_eq
  unfold live2514 coloured2514 at child
  try dsimp only [live2516, coloured2516]
  rw [child]
  dsimp only [result2514]
  have child := node2515_eq
  unfold live2515 coloured2515 at child
  try dsimp only [live2516, coloured2516]
  rw [child]
  dsimp only [result2515]
  try dsimp only [colour, result2516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2517_agree : tree2517 = literal2517 := by
  rw [tree2517_def]
  rfl
theorem node2517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2517 live2517 coloured2517 = result2517 := by
  rw [tree2517_def]
  try dsimp only [colour, result2517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2518_agree : tree2518 = literal2518 := by
  rw [tree2518_def, tree2516_agree, tree2517_agree]
  rfl
theorem node2518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2518 live2518 coloured2518 = result2518 := by
  rw [tree2518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2516_eq
  unfold live2516 coloured2516 at child
  try dsimp only [live2518, coloured2518]
  rw [child]
  dsimp only [result2516]
  have child := node2517_eq
  unfold live2517 coloured2517 at child
  try dsimp only [live2518, coloured2518]
  rw [child]
  dsimp only [result2517]
  try dsimp only [colour, result2518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2519_agree : tree2519 = literal2519 := by
  rw [tree2519_def]
  rfl
theorem node2519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2519 live2519 coloured2519 = result2519 := by
  rw [tree2519_def]
  try dsimp only [colour, result2519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2520_agree : tree2520 = literal2520 := by
  rw [tree2520_def, tree2518_agree, tree2519_agree]
  rfl
theorem node2520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2520 live2520 coloured2520 = result2520 := by
  rw [tree2520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2518_eq
  unfold live2518 coloured2518 at child
  try dsimp only [live2520, coloured2520]
  rw [child]
  dsimp only [result2518]
  have child := node2519_eq
  unfold live2519 coloured2519 at child
  try dsimp only [live2520, coloured2520]
  rw [child]
  dsimp only [result2519]
  try dsimp only [colour, result2520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2521_agree : tree2521 = literal2521 := by
  rw [tree2521_def]
  rfl
theorem node2521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2521 live2521 coloured2521 = result2521 := by
  rw [tree2521_def]
  try dsimp only [colour, result2521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2522_agree : tree2522 = literal2522 := by
  rw [tree2522_def, tree2520_agree, tree2521_agree]
  rfl
theorem node2522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2522 live2522 coloured2522 = result2522 := by
  rw [tree2522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2520_eq
  unfold live2520 coloured2520 at child
  try dsimp only [live2522, coloured2522]
  rw [child]
  dsimp only [result2520]
  have child := node2521_eq
  unfold live2521 coloured2521 at child
  try dsimp only [live2522, coloured2522]
  rw [child]
  dsimp only [result2521]
  try dsimp only [colour, result2522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2523_agree : tree2523 = literal2523 := by
  rw [tree2523_def]
  rfl
theorem node2523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2523 live2523 coloured2523 = result2523 := by
  rw [tree2523_def]
  try dsimp only [colour, result2523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2524_agree : tree2524 = literal2524 := by
  rw [tree2524_def, tree2522_agree, tree2523_agree]
  rfl
theorem node2524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2524 live2524 coloured2524 = result2524 := by
  rw [tree2524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2522_eq
  unfold live2522 coloured2522 at child
  try dsimp only [live2524, coloured2524]
  rw [child]
  dsimp only [result2522]
  have child := node2523_eq
  unfold live2523 coloured2523 at child
  try dsimp only [live2524, coloured2524]
  rw [child]
  dsimp only [result2523]
  try dsimp only [colour, result2524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2525_agree : tree2525 = literal2525 := by
  rw [tree2525_def]
  rfl
theorem node2525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2525 live2525 coloured2525 = result2525 := by
  rw [tree2525_def]
  try dsimp only [colour, result2525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2526_agree : tree2526 = literal2526 := by
  rw [tree2526_def, tree2524_agree, tree2525_agree]
  rfl
theorem node2526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2526 live2526 coloured2526 = result2526 := by
  rw [tree2526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2524_eq
  unfold live2524 coloured2524 at child
  try dsimp only [live2526, coloured2526]
  rw [child]
  dsimp only [result2524]
  have child := node2525_eq
  unfold live2525 coloured2525 at child
  try dsimp only [live2526, coloured2526]
  rw [child]
  dsimp only [result2525]
  try dsimp only [colour, result2526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2527_agree : tree2527 = literal2527 := by
  rw [tree2527_def]
  rfl
theorem node2527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2527 live2527 coloured2527 = result2527 := by
  rw [tree2527_def]
  try dsimp only [colour, result2527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2528_agree : tree2528 = literal2528 := by
  rw [tree2528_def, tree2526_agree, tree2527_agree]
  rfl
theorem node2528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2528 live2528 coloured2528 = result2528 := by
  rw [tree2528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2526_eq
  unfold live2526 coloured2526 at child
  try dsimp only [live2528, coloured2528]
  rw [child]
  dsimp only [result2526]
  have child := node2527_eq
  unfold live2527 coloured2527 at child
  try dsimp only [live2528, coloured2528]
  rw [child]
  dsimp only [result2527]
  try dsimp only [colour, result2528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2529_agree : tree2529 = literal2529 := by
  rw [tree2529_def]
  rfl
theorem node2529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2529 live2529 coloured2529 = result2529 := by
  rw [tree2529_def]
  try dsimp only [colour, result2529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2530_agree : tree2530 = literal2530 := by
  rw [tree2530_def, tree2528_agree, tree2529_agree]
  rfl
theorem node2530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2530 live2530 coloured2530 = result2530 := by
  rw [tree2530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2528_eq
  unfold live2528 coloured2528 at child
  try dsimp only [live2530, coloured2530]
  rw [child]
  dsimp only [result2528]
  have child := node2529_eq
  unfold live2529 coloured2529 at child
  try dsimp only [live2530, coloured2530]
  rw [child]
  dsimp only [result2529]
  try dsimp only [colour, result2530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2531_agree : tree2531 = literal2531 := by
  rw [tree2531_def]
  rfl
theorem node2531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2531 live2531 coloured2531 = result2531 := by
  rw [tree2531_def]
  try dsimp only [colour, result2531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2532_agree : tree2532 = literal2532 := by
  rw [tree2532_def, tree2530_agree, tree2531_agree]
  rfl
theorem node2532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2532 live2532 coloured2532 = result2532 := by
  rw [tree2532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2530_eq
  unfold live2530 coloured2530 at child
  try dsimp only [live2532, coloured2532]
  rw [child]
  dsimp only [result2530]
  have child := node2531_eq
  unfold live2531 coloured2531 at child
  try dsimp only [live2532, coloured2532]
  rw [child]
  dsimp only [result2531]
  try dsimp only [colour, result2532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2533_agree : tree2533 = literal2533 := by
  rw [tree2533_def]
  rfl
theorem node2533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2533 live2533 coloured2533 = result2533 := by
  rw [tree2533_def]
  try dsimp only [colour, result2533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2534_agree : tree2534 = literal2534 := by
  rw [tree2534_def, tree2532_agree, tree2533_agree]
  rfl
theorem node2534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2534 live2534 coloured2534 = result2534 := by
  rw [tree2534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2532_eq
  unfold live2532 coloured2532 at child
  try dsimp only [live2534, coloured2534]
  rw [child]
  dsimp only [result2532]
  have child := node2533_eq
  unfold live2533 coloured2533 at child
  try dsimp only [live2534, coloured2534]
  rw [child]
  dsimp only [result2533]
  try dsimp only [colour, result2534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2535_agree : tree2535 = literal2535 := by
  rw [tree2535_def]
  rfl
theorem node2535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2535 live2535 coloured2535 = result2535 := by
  rw [tree2535_def]
  try dsimp only [colour, result2535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2536_agree : tree2536 = literal2536 := by
  rw [tree2536_def, tree2534_agree, tree2535_agree]
  rfl
theorem node2536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2536 live2536 coloured2536 = result2536 := by
  rw [tree2536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2534_eq
  unfold live2534 coloured2534 at child
  try dsimp only [live2536, coloured2536]
  rw [child]
  dsimp only [result2534]
  have child := node2535_eq
  unfold live2535 coloured2535 at child
  try dsimp only [live2536, coloured2536]
  rw [child]
  dsimp only [result2535]
  try dsimp only [colour, result2536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2537_agree : tree2537 = literal2537 := by
  rw [tree2537_def]
  rfl
theorem node2537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2537 live2537 coloured2537 = result2537 := by
  rw [tree2537_def]
  try dsimp only [colour, result2537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2538_agree : tree2538 = literal2538 := by
  rw [tree2538_def, tree2536_agree, tree2537_agree]
  rfl
theorem node2538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2538 live2538 coloured2538 = result2538 := by
  rw [tree2538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2536_eq
  unfold live2536 coloured2536 at child
  try dsimp only [live2538, coloured2538]
  rw [child]
  dsimp only [result2536]
  have child := node2537_eq
  unfold live2537 coloured2537 at child
  try dsimp only [live2538, coloured2538]
  rw [child]
  dsimp only [result2537]
  try dsimp only [colour, result2538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2539_agree : tree2539 = literal2539 := by
  rw [tree2539_def]
  rfl
theorem node2539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2539 live2539 coloured2539 = result2539 := by
  rw [tree2539_def]
  try dsimp only [colour, result2539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2540_agree : tree2540 = literal2540 := by
  rw [tree2540_def, tree2538_agree, tree2539_agree]
  rfl
theorem node2540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2540 live2540 coloured2540 = result2540 := by
  rw [tree2540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2538_eq
  unfold live2538 coloured2538 at child
  try dsimp only [live2540, coloured2540]
  rw [child]
  dsimp only [result2538]
  have child := node2539_eq
  unfold live2539 coloured2539 at child
  try dsimp only [live2540, coloured2540]
  rw [child]
  dsimp only [result2539]
  try dsimp only [colour, result2540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2541_agree : tree2541 = literal2541 := by
  rw [tree2541_def]
  rfl
theorem node2541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2541 live2541 coloured2541 = result2541 := by
  rw [tree2541_def]
  try dsimp only [colour, result2541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2542_agree : tree2542 = literal2542 := by
  rw [tree2542_def, tree2540_agree, tree2541_agree]
  rfl
theorem node2542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2542 live2542 coloured2542 = result2542 := by
  rw [tree2542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2540_eq
  unfold live2540 coloured2540 at child
  try dsimp only [live2542, coloured2542]
  rw [child]
  dsimp only [result2540]
  have child := node2541_eq
  unfold live2541 coloured2541 at child
  try dsimp only [live2542, coloured2542]
  rw [child]
  dsimp only [result2541]
  try dsimp only [colour, result2542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2543_agree : tree2543 = literal2543 := by
  rw [tree2543_def]
  rfl
theorem node2543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2543 live2543 coloured2543 = result2543 := by
  rw [tree2543_def]
  try dsimp only [colour, result2543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2544_agree : tree2544 = literal2544 := by
  rw [tree2544_def, tree2542_agree, tree2543_agree]
  rfl
theorem node2544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2544 live2544 coloured2544 = result2544 := by
  rw [tree2544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2542_eq
  unfold live2542 coloured2542 at child
  try dsimp only [live2544, coloured2544]
  rw [child]
  dsimp only [result2542]
  have child := node2543_eq
  unfold live2543 coloured2543 at child
  try dsimp only [live2544, coloured2544]
  rw [child]
  dsimp only [result2543]
  try dsimp only [colour, result2544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2545_agree : tree2545 = literal2545 := by
  rw [tree2545_def]
  rfl
theorem node2545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2545 live2545 coloured2545 = result2545 := by
  rw [tree2545_def]
  try dsimp only [colour, result2545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2546_agree : tree2546 = literal2546 := by
  rw [tree2546_def, tree2544_agree, tree2545_agree]
  rfl
theorem node2546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2546 live2546 coloured2546 = result2546 := by
  rw [tree2546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2544_eq
  unfold live2544 coloured2544 at child
  try dsimp only [live2546, coloured2546]
  rw [child]
  dsimp only [result2544]
  have child := node2545_eq
  unfold live2545 coloured2545 at child
  try dsimp only [live2546, coloured2546]
  rw [child]
  dsimp only [result2545]
  try dsimp only [colour, result2546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2547_agree : tree2547 = literal2547 := by
  rw [tree2547_def]
  rfl
theorem node2547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2547 live2547 coloured2547 = result2547 := by
  rw [tree2547_def]
  try dsimp only [colour, result2547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2548_agree : tree2548 = literal2548 := by
  rw [tree2548_def, tree2546_agree, tree2547_agree]
  rfl
theorem node2548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2548 live2548 coloured2548 = result2548 := by
  rw [tree2548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2546_eq
  unfold live2546 coloured2546 at child
  try dsimp only [live2548, coloured2548]
  rw [child]
  dsimp only [result2546]
  have child := node2547_eq
  unfold live2547 coloured2547 at child
  try dsimp only [live2548, coloured2548]
  rw [child]
  dsimp only [result2547]
  try dsimp only [colour, result2548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2549_agree : tree2549 = literal2549 := by
  rw [tree2549_def]
  rfl
theorem node2549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2549 live2549 coloured2549 = result2549 := by
  rw [tree2549_def]
  try dsimp only [colour, result2549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2550_agree : tree2550 = literal2550 := by
  rw [tree2550_def, tree2548_agree, tree2549_agree]
  rfl
theorem node2550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2550 live2550 coloured2550 = result2550 := by
  rw [tree2550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2548_eq
  unfold live2548 coloured2548 at child
  try dsimp only [live2550, coloured2550]
  rw [child]
  dsimp only [result2548]
  have child := node2549_eq
  unfold live2549 coloured2549 at child
  try dsimp only [live2550, coloured2550]
  rw [child]
  dsimp only [result2549]
  try dsimp only [colour, result2550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2551_agree : tree2551 = literal2551 := by
  rw [tree2551_def]
  rfl
theorem node2551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2551 live2551 coloured2551 = result2551 := by
  rw [tree2551_def]
  try dsimp only [colour, result2551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2552_agree : tree2552 = literal2552 := by
  rw [tree2552_def, tree2550_agree, tree2551_agree]
  rfl
theorem node2552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2552 live2552 coloured2552 = result2552 := by
  rw [tree2552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2550_eq
  unfold live2550 coloured2550 at child
  try dsimp only [live2552, coloured2552]
  rw [child]
  dsimp only [result2550]
  have child := node2551_eq
  unfold live2551 coloured2551 at child
  try dsimp only [live2552, coloured2552]
  rw [child]
  dsimp only [result2551]
  try dsimp only [colour, result2552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2553_agree : tree2553 = literal2553 := by
  rw [tree2553_def]
  rfl
theorem node2553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2553 live2553 coloured2553 = result2553 := by
  rw [tree2553_def]
  try dsimp only [colour, result2553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2554_agree : tree2554 = literal2554 := by
  rw [tree2554_def, tree2552_agree, tree2553_agree]
  rfl
theorem node2554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2554 live2554 coloured2554 = result2554 := by
  rw [tree2554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2552_eq
  unfold live2552 coloured2552 at child
  try dsimp only [live2554, coloured2554]
  rw [child]
  dsimp only [result2552]
  have child := node2553_eq
  unfold live2553 coloured2553 at child
  try dsimp only [live2554, coloured2554]
  rw [child]
  dsimp only [result2553]
  try dsimp only [colour, result2554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2555_agree : tree2555 = literal2555 := by
  rw [tree2555_def]
  rfl
theorem node2555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2555 live2555 coloured2555 = result2555 := by
  rw [tree2555_def]
  try dsimp only [colour, result2555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2556_agree : tree2556 = literal2556 := by
  rw [tree2556_def, tree2554_agree, tree2555_agree]
  rfl
theorem node2556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2556 live2556 coloured2556 = result2556 := by
  rw [tree2556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2554_eq
  unfold live2554 coloured2554 at child
  try dsimp only [live2556, coloured2556]
  rw [child]
  dsimp only [result2554]
  have child := node2555_eq
  unfold live2555 coloured2555 at child
  try dsimp only [live2556, coloured2556]
  rw [child]
  dsimp only [result2555]
  try dsimp only [colour, result2556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2557_agree : tree2557 = literal2557 := by
  rw [tree2557_def]
  rfl
theorem node2557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2557 live2557 coloured2557 = result2557 := by
  rw [tree2557_def]
  try dsimp only [colour, result2557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2558_agree : tree2558 = literal2558 := by
  rw [tree2558_def, tree2556_agree, tree2557_agree]
  rfl
theorem node2558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2558 live2558 coloured2558 = result2558 := by
  rw [tree2558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2556_eq
  unfold live2556 coloured2556 at child
  try dsimp only [live2558, coloured2558]
  rw [child]
  dsimp only [result2556]
  have child := node2557_eq
  unfold live2557 coloured2557 at child
  try dsimp only [live2558, coloured2558]
  rw [child]
  dsimp only [result2557]
  try dsimp only [colour, result2558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2559_agree : tree2559 = literal2559 := by
  rw [tree2559_def]
  rfl
theorem node2559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2559 live2559 coloured2559 = result2559 := by
  rw [tree2559_def]
  try dsimp only [colour, result2559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2560_agree : tree2560 = literal2560 := by
  rw [tree2560_def, tree2558_agree, tree2559_agree]
  rfl
theorem node2560_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2560 live2560 coloured2560 = result2560 := by
  rw [tree2560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2558_eq
  unfold live2558 coloured2558 at child
  try dsimp only [live2560, coloured2560]
  rw [child]
  dsimp only [result2558]
  have child := node2559_eq
  unfold live2559 coloured2559 at child
  try dsimp only [live2560, coloured2560]
  rw [child]
  dsimp only [result2559]
  try dsimp only [colour, result2560]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2561_agree : tree2561 = literal2561 := by
  rw [tree2561_def]
  rfl
theorem node2561_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2561 live2561 coloured2561 = result2561 := by
  rw [tree2561_def]
  try dsimp only [colour, result2561]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2562_agree : tree2562 = literal2562 := by
  rw [tree2562_def, tree2560_agree, tree2561_agree]
  rfl
theorem node2562_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2562 live2562 coloured2562 = result2562 := by
  rw [tree2562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2560_eq
  unfold live2560 coloured2560 at child
  try dsimp only [live2562, coloured2562]
  rw [child]
  dsimp only [result2560]
  have child := node2561_eq
  unfold live2561 coloured2561 at child
  try dsimp only [live2562, coloured2562]
  rw [child]
  dsimp only [result2561]
  try dsimp only [colour, result2562]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2563_agree : tree2563 = literal2563 := by
  rw [tree2563_def]
  rfl
theorem node2563_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2563 live2563 coloured2563 = result2563 := by
  rw [tree2563_def]
  try dsimp only [colour, result2563]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2564_agree : tree2564 = literal2564 := by
  rw [tree2564_def, tree2562_agree, tree2563_agree]
  rfl
theorem node2564_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2564 live2564 coloured2564 = result2564 := by
  rw [tree2564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2562_eq
  unfold live2562 coloured2562 at child
  try dsimp only [live2564, coloured2564]
  rw [child]
  dsimp only [result2562]
  have child := node2563_eq
  unfold live2563 coloured2563 at child
  try dsimp only [live2564, coloured2564]
  rw [child]
  dsimp only [result2563]
  try dsimp only [colour, result2564]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2565_agree : tree2565 = literal2565 := by
  rw [tree2565_def]
  rfl
theorem node2565_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2565 live2565 coloured2565 = result2565 := by
  rw [tree2565_def]
  try dsimp only [colour, result2565]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2566_agree : tree2566 = literal2566 := by
  rw [tree2566_def, tree2564_agree, tree2565_agree]
  rfl
theorem node2566_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2566 live2566 coloured2566 = result2566 := by
  rw [tree2566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2564_eq
  unfold live2564 coloured2564 at child
  try dsimp only [live2566, coloured2566]
  rw [child]
  dsimp only [result2564]
  have child := node2565_eq
  unfold live2565 coloured2565 at child
  try dsimp only [live2566, coloured2566]
  rw [child]
  dsimp only [result2565]
  try dsimp only [colour, result2566]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2567_agree : tree2567 = literal2567 := by
  rw [tree2567_def]
  rfl
theorem node2567_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2567 live2567 coloured2567 = result2567 := by
  rw [tree2567_def]
  try dsimp only [colour, result2567]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2568_agree : tree2568 = literal2568 := by
  rw [tree2568_def, tree2566_agree, tree2567_agree]
  rfl
theorem node2568_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2568 live2568 coloured2568 = result2568 := by
  rw [tree2568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2566_eq
  unfold live2566 coloured2566 at child
  try dsimp only [live2568, coloured2568]
  rw [child]
  dsimp only [result2566]
  have child := node2567_eq
  unfold live2567 coloured2567 at child
  try dsimp only [live2568, coloured2568]
  rw [child]
  dsimp only [result2567]
  try dsimp only [colour, result2568]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2569_agree : tree2569 = literal2569 := by
  rw [tree2569_def]
  rfl
theorem node2569_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2569 live2569 coloured2569 = result2569 := by
  rw [tree2569_def]
  try dsimp only [colour, result2569]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2570_agree : tree2570 = literal2570 := by
  rw [tree2570_def, tree2568_agree, tree2569_agree]
  rfl
theorem node2570_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2570 live2570 coloured2570 = result2570 := by
  rw [tree2570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2568_eq
  unfold live2568 coloured2568 at child
  try dsimp only [live2570, coloured2570]
  rw [child]
  dsimp only [result2568]
  have child := node2569_eq
  unfold live2569 coloured2569 at child
  try dsimp only [live2570, coloured2570]
  rw [child]
  dsimp only [result2569]
  try dsimp only [colour, result2570]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2571_agree : tree2571 = literal2571 := by
  rw [tree2571_def]
  rfl
theorem node2571_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2571 live2571 coloured2571 = result2571 := by
  rw [tree2571_def]
  try dsimp only [colour, result2571]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2572_agree : tree2572 = literal2572 := by
  rw [tree2572_def, tree2570_agree, tree2571_agree]
  rfl
theorem node2572_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2572 live2572 coloured2572 = result2572 := by
  rw [tree2572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2570_eq
  unfold live2570 coloured2570 at child
  try dsimp only [live2572, coloured2572]
  rw [child]
  dsimp only [result2570]
  have child := node2571_eq
  unfold live2571 coloured2571 at child
  try dsimp only [live2572, coloured2572]
  rw [child]
  dsimp only [result2571]
  try dsimp only [colour, result2572]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2573_agree : tree2573 = literal2573 := by
  rw [tree2573_def]
  rfl
theorem node2573_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2573 live2573 coloured2573 = result2573 := by
  rw [tree2573_def]
  try dsimp only [colour, result2573]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2574_agree : tree2574 = literal2574 := by
  rw [tree2574_def, tree2572_agree, tree2573_agree]
  rfl
theorem node2574_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2574 live2574 coloured2574 = result2574 := by
  rw [tree2574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2572_eq
  unfold live2572 coloured2572 at child
  try dsimp only [live2574, coloured2574]
  rw [child]
  dsimp only [result2572]
  have child := node2573_eq
  unfold live2573 coloured2573 at child
  try dsimp only [live2574, coloured2574]
  rw [child]
  dsimp only [result2573]
  try dsimp only [colour, result2574]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2575_agree : tree2575 = literal2575 := by
  rw [tree2575_def]
  rfl
theorem node2575_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2575 live2575 coloured2575 = result2575 := by
  rw [tree2575_def]
  try dsimp only [colour, result2575]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2576_agree : tree2576 = literal2576 := by
  rw [tree2576_def, tree2574_agree, tree2575_agree]
  rfl
theorem node2576_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2576 live2576 coloured2576 = result2576 := by
  rw [tree2576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2574_eq
  unfold live2574 coloured2574 at child
  try dsimp only [live2576, coloured2576]
  rw [child]
  dsimp only [result2574]
  have child := node2575_eq
  unfold live2575 coloured2575 at child
  try dsimp only [live2576, coloured2576]
  rw [child]
  dsimp only [result2575]
  try dsimp only [colour, result2576]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2577_agree : tree2577 = literal2577 := by
  rw [tree2577_def]
  rfl
theorem node2577_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2577 live2577 coloured2577 = result2577 := by
  rw [tree2577_def]
  try dsimp only [colour, result2577]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2578_agree : tree2578 = literal2578 := by
  rw [tree2578_def, tree2576_agree, tree2577_agree]
  rfl
theorem node2578_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2578 live2578 coloured2578 = result2578 := by
  rw [tree2578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2576_eq
  unfold live2576 coloured2576 at child
  try dsimp only [live2578, coloured2578]
  rw [child]
  dsimp only [result2576]
  have child := node2577_eq
  unfold live2577 coloured2577 at child
  try dsimp only [live2578, coloured2578]
  rw [child]
  dsimp only [result2577]
  try dsimp only [colour, result2578]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2579_agree : tree2579 = literal2579 := by
  rw [tree2579_def]
  rfl
theorem node2579_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2579 live2579 coloured2579 = result2579 := by
  rw [tree2579_def]
  try dsimp only [colour, result2579]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2580_agree : tree2580 = literal2580 := by
  rw [tree2580_def, tree2578_agree, tree2579_agree]
  rfl
theorem node2580_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2580 live2580 coloured2580 = result2580 := by
  rw [tree2580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2578_eq
  unfold live2578 coloured2578 at child
  try dsimp only [live2580, coloured2580]
  rw [child]
  dsimp only [result2578]
  have child := node2579_eq
  unfold live2579 coloured2579 at child
  try dsimp only [live2580, coloured2580]
  rw [child]
  dsimp only [result2579]
  try dsimp only [colour, result2580]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2581_agree : tree2581 = literal2581 := by
  rw [tree2581_def]
  rfl
theorem node2581_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2581 live2581 coloured2581 = result2581 := by
  rw [tree2581_def]
  try dsimp only [colour, result2581]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2582_agree : tree2582 = literal2582 := by
  rw [tree2582_def, tree2580_agree, tree2581_agree]
  rfl
theorem node2582_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2582 live2582 coloured2582 = result2582 := by
  rw [tree2582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2580_eq
  unfold live2580 coloured2580 at child
  try dsimp only [live2582, coloured2582]
  rw [child]
  dsimp only [result2580]
  have child := node2581_eq
  unfold live2581 coloured2581 at child
  try dsimp only [live2582, coloured2582]
  rw [child]
  dsimp only [result2581]
  try dsimp only [colour, result2582]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2583_agree : tree2583 = literal2583 := by
  rw [tree2583_def]
  rfl
theorem node2583_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2583 live2583 coloured2583 = result2583 := by
  rw [tree2583_def]
  try dsimp only [colour, result2583]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2584_agree : tree2584 = literal2584 := by
  rw [tree2584_def, tree2582_agree, tree2583_agree]
  rfl
theorem node2584_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2584 live2584 coloured2584 = result2584 := by
  rw [tree2584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2582_eq
  unfold live2582 coloured2582 at child
  try dsimp only [live2584, coloured2584]
  rw [child]
  dsimp only [result2582]
  have child := node2583_eq
  unfold live2583 coloured2583 at child
  try dsimp only [live2584, coloured2584]
  rw [child]
  dsimp only [result2583]
  try dsimp only [colour, result2584]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2585_agree : tree2585 = literal2585 := by
  rw [tree2585_def]
  rfl
theorem node2585_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2585 live2585 coloured2585 = result2585 := by
  rw [tree2585_def]
  try dsimp only [colour, result2585]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2586_agree : tree2586 = literal2586 := by
  rw [tree2586_def, tree2584_agree, tree2585_agree]
  rfl
theorem node2586_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2586 live2586 coloured2586 = result2586 := by
  rw [tree2586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2584_eq
  unfold live2584 coloured2584 at child
  try dsimp only [live2586, coloured2586]
  rw [child]
  dsimp only [result2584]
  have child := node2585_eq
  unfold live2585 coloured2585 at child
  try dsimp only [live2586, coloured2586]
  rw [child]
  dsimp only [result2585]
  try dsimp only [colour, result2586]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2587_agree : tree2587 = literal2587 := by
  rw [tree2587_def]
  rfl
theorem node2587_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2587 live2587 coloured2587 = result2587 := by
  rw [tree2587_def]
  try dsimp only [colour, result2587]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2588_agree : tree2588 = literal2588 := by
  rw [tree2588_def, tree2586_agree, tree2587_agree]
  rfl
theorem node2588_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2588 live2588 coloured2588 = result2588 := by
  rw [tree2588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2586_eq
  unfold live2586 coloured2586 at child
  try dsimp only [live2588, coloured2588]
  rw [child]
  dsimp only [result2586]
  have child := node2587_eq
  unfold live2587 coloured2587 at child
  try dsimp only [live2588, coloured2588]
  rw [child]
  dsimp only [result2587]
  try dsimp only [colour, result2588]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2589_agree : tree2589 = literal2589 := by
  rw [tree2589_def]
  rfl
theorem node2589_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2589 live2589 coloured2589 = result2589 := by
  rw [tree2589_def]
  try dsimp only [colour, result2589]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2590_agree : tree2590 = literal2590 := by
  rw [tree2590_def, tree2588_agree, tree2589_agree]
  rfl
theorem node2590_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2590 live2590 coloured2590 = result2590 := by
  rw [tree2590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2588_eq
  unfold live2588 coloured2588 at child
  try dsimp only [live2590, coloured2590]
  rw [child]
  dsimp only [result2588]
  have child := node2589_eq
  unfold live2589 coloured2589 at child
  try dsimp only [live2590, coloured2590]
  rw [child]
  dsimp only [result2589]
  try dsimp only [colour, result2590]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2591_agree : tree2591 = literal2591 := by
  rw [tree2591_def]
  rfl
theorem node2591_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2591 live2591 coloured2591 = result2591 := by
  rw [tree2591_def]
  try dsimp only [colour, result2591]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
