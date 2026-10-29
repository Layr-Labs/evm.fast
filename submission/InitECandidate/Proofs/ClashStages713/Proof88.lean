import InitECandidate.Proofs.ClashStages713.Proof87
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree8448_agree : tree8448 = literal8448 := by
  rw [tree8448_def, tree8446_agree, tree8447_agree]
  rfl
theorem node8448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8448 live8448 coloured8448 = result8448 := by
  rw [tree8448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8446_eq
  unfold live8446 coloured8446 at child
  try dsimp only [live8448, coloured8448]
  rw [child]
  dsimp only [result8446]
  have child := node8447_eq
  unfold live8447 coloured8447 at child
  try dsimp only [live8448, coloured8448]
  rw [child]
  dsimp only [result8447]
  try dsimp only [colour, result8448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8449_agree : tree8449 = literal8449 := by
  rw [tree8449_def]
  rfl
theorem node8449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8449 live8449 coloured8449 = result8449 := by
  rw [tree8449_def]
  try dsimp only [colour, result8449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8450_agree : tree8450 = literal8450 := by
  rw [tree8450_def, tree8448_agree, tree8449_agree]
  rfl
theorem node8450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8450 live8450 coloured8450 = result8450 := by
  rw [tree8450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8448_eq
  unfold live8448 coloured8448 at child
  try dsimp only [live8450, coloured8450]
  rw [child]
  dsimp only [result8448]
  have child := node8449_eq
  unfold live8449 coloured8449 at child
  try dsimp only [live8450, coloured8450]
  rw [child]
  dsimp only [result8449]
  try dsimp only [colour, result8450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8451_agree : tree8451 = literal8451 := by
  rw [tree8451_def]
  rfl
theorem node8451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8451 live8451 coloured8451 = result8451 := by
  rw [tree8451_def]
  try dsimp only [colour, result8451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8452_agree : tree8452 = literal8452 := by
  rw [tree8452_def, tree8450_agree, tree8451_agree]
  rfl
theorem node8452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8452 live8452 coloured8452 = result8452 := by
  rw [tree8452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8450_eq
  unfold live8450 coloured8450 at child
  try dsimp only [live8452, coloured8452]
  rw [child]
  dsimp only [result8450]
  have child := node8451_eq
  unfold live8451 coloured8451 at child
  try dsimp only [live8452, coloured8452]
  rw [child]
  dsimp only [result8451]
  try dsimp only [colour, result8452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8453_agree : tree8453 = literal8453 := by
  rw [tree8453_def]
  rfl
theorem node8453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8453 live8453 coloured8453 = result8453 := by
  rw [tree8453_def]
  try dsimp only [colour, result8453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8454_agree : tree8454 = literal8454 := by
  rw [tree8454_def, tree8452_agree, tree8453_agree]
  rfl
theorem node8454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8454 live8454 coloured8454 = result8454 := by
  rw [tree8454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8452_eq
  unfold live8452 coloured8452 at child
  try dsimp only [live8454, coloured8454]
  rw [child]
  dsimp only [result8452]
  have child := node8453_eq
  unfold live8453 coloured8453 at child
  try dsimp only [live8454, coloured8454]
  rw [child]
  dsimp only [result8453]
  try dsimp only [colour, result8454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8455_agree : tree8455 = literal8455 := by
  rw [tree8455_def]
  rfl
theorem node8455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8455 live8455 coloured8455 = result8455 := by
  rw [tree8455_def]
  try dsimp only [colour, result8455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8456_agree : tree8456 = literal8456 := by
  rw [tree8456_def, tree8454_agree, tree8455_agree]
  rfl
theorem node8456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8456 live8456 coloured8456 = result8456 := by
  rw [tree8456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8454_eq
  unfold live8454 coloured8454 at child
  try dsimp only [live8456, coloured8456]
  rw [child]
  dsimp only [result8454]
  have child := node8455_eq
  unfold live8455 coloured8455 at child
  try dsimp only [live8456, coloured8456]
  rw [child]
  dsimp only [result8455]
  try dsimp only [colour, result8456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8457_agree : tree8457 = literal8457 := by
  rw [tree8457_def]
  rfl
theorem node8457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8457 live8457 coloured8457 = result8457 := by
  rw [tree8457_def]
  try dsimp only [colour, result8457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8458_agree : tree8458 = literal8458 := by
  rw [tree8458_def, tree8456_agree, tree8457_agree]
  rfl
theorem node8458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8458 live8458 coloured8458 = result8458 := by
  rw [tree8458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8456_eq
  unfold live8456 coloured8456 at child
  try dsimp only [live8458, coloured8458]
  rw [child]
  dsimp only [result8456]
  have child := node8457_eq
  unfold live8457 coloured8457 at child
  try dsimp only [live8458, coloured8458]
  rw [child]
  dsimp only [result8457]
  try dsimp only [colour, result8458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8459_agree : tree8459 = literal8459 := by
  rw [tree8459_def]
  rfl
theorem node8459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8459 live8459 coloured8459 = result8459 := by
  rw [tree8459_def]
  try dsimp only [colour, result8459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8460_agree : tree8460 = literal8460 := by
  rw [tree8460_def, tree8458_agree, tree8459_agree]
  rfl
theorem node8460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8460 live8460 coloured8460 = result8460 := by
  rw [tree8460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8458_eq
  unfold live8458 coloured8458 at child
  try dsimp only [live8460, coloured8460]
  rw [child]
  dsimp only [result8458]
  have child := node8459_eq
  unfold live8459 coloured8459 at child
  try dsimp only [live8460, coloured8460]
  rw [child]
  dsimp only [result8459]
  try dsimp only [colour, result8460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8461_agree : tree8461 = literal8461 := by
  rw [tree8461_def]
  rfl
theorem node8461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8461 live8461 coloured8461 = result8461 := by
  rw [tree8461_def]
  try dsimp only [colour, result8461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8462_agree : tree8462 = literal8462 := by
  rw [tree8462_def, tree8460_agree, tree8461_agree]
  rfl
theorem node8462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8462 live8462 coloured8462 = result8462 := by
  rw [tree8462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8460_eq
  unfold live8460 coloured8460 at child
  try dsimp only [live8462, coloured8462]
  rw [child]
  dsimp only [result8460]
  have child := node8461_eq
  unfold live8461 coloured8461 at child
  try dsimp only [live8462, coloured8462]
  rw [child]
  dsimp only [result8461]
  try dsimp only [colour, result8462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8463_agree : tree8463 = literal8463 := by
  rw [tree8463_def]
  rfl
theorem node8463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8463 live8463 coloured8463 = result8463 := by
  rw [tree8463_def]
  try dsimp only [colour, result8463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8464_agree : tree8464 = literal8464 := by
  rw [tree8464_def, tree8462_agree, tree8463_agree]
  rfl
theorem node8464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8464 live8464 coloured8464 = result8464 := by
  rw [tree8464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8462_eq
  unfold live8462 coloured8462 at child
  try dsimp only [live8464, coloured8464]
  rw [child]
  dsimp only [result8462]
  have child := node8463_eq
  unfold live8463 coloured8463 at child
  try dsimp only [live8464, coloured8464]
  rw [child]
  dsimp only [result8463]
  try dsimp only [colour, result8464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8465_agree : tree8465 = literal8465 := by
  rw [tree8465_def]
  rfl
theorem node8465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8465 live8465 coloured8465 = result8465 := by
  rw [tree8465_def]
  try dsimp only [colour, result8465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8466_agree : tree8466 = literal8466 := by
  rw [tree8466_def, tree8464_agree, tree8465_agree]
  rfl
theorem node8466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8466 live8466 coloured8466 = result8466 := by
  rw [tree8466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8464_eq
  unfold live8464 coloured8464 at child
  try dsimp only [live8466, coloured8466]
  rw [child]
  dsimp only [result8464]
  have child := node8465_eq
  unfold live8465 coloured8465 at child
  try dsimp only [live8466, coloured8466]
  rw [child]
  dsimp only [result8465]
  try dsimp only [colour, result8466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8467_agree : tree8467 = literal8467 := by
  rw [tree8467_def]
  rfl
theorem node8467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8467 live8467 coloured8467 = result8467 := by
  rw [tree8467_def]
  try dsimp only [colour, result8467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8468_agree : tree8468 = literal8468 := by
  rw [tree8468_def, tree8466_agree, tree8467_agree]
  rfl
theorem node8468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8468 live8468 coloured8468 = result8468 := by
  rw [tree8468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8466_eq
  unfold live8466 coloured8466 at child
  try dsimp only [live8468, coloured8468]
  rw [child]
  dsimp only [result8466]
  have child := node8467_eq
  unfold live8467 coloured8467 at child
  try dsimp only [live8468, coloured8468]
  rw [child]
  dsimp only [result8467]
  try dsimp only [colour, result8468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8469_agree : tree8469 = literal8469 := by
  rw [tree8469_def]
  rfl
theorem node8469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8469 live8469 coloured8469 = result8469 := by
  rw [tree8469_def]
  try dsimp only [colour, result8469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8470_agree : tree8470 = literal8470 := by
  rw [tree8470_def, tree8468_agree, tree8469_agree]
  rfl
theorem node8470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8470 live8470 coloured8470 = result8470 := by
  rw [tree8470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8468_eq
  unfold live8468 coloured8468 at child
  try dsimp only [live8470, coloured8470]
  rw [child]
  dsimp only [result8468]
  have child := node8469_eq
  unfold live8469 coloured8469 at child
  try dsimp only [live8470, coloured8470]
  rw [child]
  dsimp only [result8469]
  try dsimp only [colour, result8470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8471_agree : tree8471 = literal8471 := by
  rw [tree8471_def]
  rfl
theorem node8471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8471 live8471 coloured8471 = result8471 := by
  rw [tree8471_def]
  try dsimp only [colour, result8471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8472_agree : tree8472 = literal8472 := by
  rw [tree8472_def, tree8470_agree, tree8471_agree]
  rfl
theorem node8472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8472 live8472 coloured8472 = result8472 := by
  rw [tree8472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8470_eq
  unfold live8470 coloured8470 at child
  try dsimp only [live8472, coloured8472]
  rw [child]
  dsimp only [result8470]
  have child := node8471_eq
  unfold live8471 coloured8471 at child
  try dsimp only [live8472, coloured8472]
  rw [child]
  dsimp only [result8471]
  try dsimp only [colour, result8472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8473_agree : tree8473 = literal8473 := by
  rw [tree8473_def]
  rfl
theorem node8473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8473 live8473 coloured8473 = result8473 := by
  rw [tree8473_def]
  try dsimp only [colour, result8473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8474_agree : tree8474 = literal8474 := by
  rw [tree8474_def, tree8472_agree, tree8473_agree]
  rfl
theorem node8474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8474 live8474 coloured8474 = result8474 := by
  rw [tree8474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8472_eq
  unfold live8472 coloured8472 at child
  try dsimp only [live8474, coloured8474]
  rw [child]
  dsimp only [result8472]
  have child := node8473_eq
  unfold live8473 coloured8473 at child
  try dsimp only [live8474, coloured8474]
  rw [child]
  dsimp only [result8473]
  try dsimp only [colour, result8474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8475_agree : tree8475 = literal8475 := by
  rw [tree8475_def]
  rfl
theorem node8475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8475 live8475 coloured8475 = result8475 := by
  rw [tree8475_def]
  try dsimp only [colour, result8475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8476_agree : tree8476 = literal8476 := by
  rw [tree8476_def, tree8474_agree, tree8475_agree]
  rfl
theorem node8476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8476 live8476 coloured8476 = result8476 := by
  rw [tree8476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8474_eq
  unfold live8474 coloured8474 at child
  try dsimp only [live8476, coloured8476]
  rw [child]
  dsimp only [result8474]
  have child := node8475_eq
  unfold live8475 coloured8475 at child
  try dsimp only [live8476, coloured8476]
  rw [child]
  dsimp only [result8475]
  try dsimp only [colour, result8476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8477_agree : tree8477 = literal8477 := by
  rw [tree8477_def]
  rfl
theorem node8477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8477 live8477 coloured8477 = result8477 := by
  rw [tree8477_def]
  try dsimp only [colour, result8477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8478_agree : tree8478 = literal8478 := by
  rw [tree8478_def, tree8476_agree, tree8477_agree]
  rfl
theorem node8478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8478 live8478 coloured8478 = result8478 := by
  rw [tree8478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8476_eq
  unfold live8476 coloured8476 at child
  try dsimp only [live8478, coloured8478]
  rw [child]
  dsimp only [result8476]
  have child := node8477_eq
  unfold live8477 coloured8477 at child
  try dsimp only [live8478, coloured8478]
  rw [child]
  dsimp only [result8477]
  try dsimp only [colour, result8478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8479_agree : tree8479 = literal8479 := by
  rw [tree8479_def]
  rfl
theorem node8479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8479 live8479 coloured8479 = result8479 := by
  rw [tree8479_def]
  try dsimp only [colour, result8479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8480_agree : tree8480 = literal8480 := by
  rw [tree8480_def, tree8478_agree, tree8479_agree]
  rfl
theorem node8480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8480 live8480 coloured8480 = result8480 := by
  rw [tree8480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8478_eq
  unfold live8478 coloured8478 at child
  try dsimp only [live8480, coloured8480]
  rw [child]
  dsimp only [result8478]
  have child := node8479_eq
  unfold live8479 coloured8479 at child
  try dsimp only [live8480, coloured8480]
  rw [child]
  dsimp only [result8479]
  try dsimp only [colour, result8480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8481_agree : tree8481 = literal8481 := by
  rw [tree8481_def]
  rfl
theorem node8481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8481 live8481 coloured8481 = result8481 := by
  rw [tree8481_def]
  try dsimp only [colour, result8481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8482_agree : tree8482 = literal8482 := by
  rw [tree8482_def, tree8480_agree, tree8481_agree]
  rfl
theorem node8482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8482 live8482 coloured8482 = result8482 := by
  rw [tree8482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8480_eq
  unfold live8480 coloured8480 at child
  try dsimp only [live8482, coloured8482]
  rw [child]
  dsimp only [result8480]
  have child := node8481_eq
  unfold live8481 coloured8481 at child
  try dsimp only [live8482, coloured8482]
  rw [child]
  dsimp only [result8481]
  try dsimp only [colour, result8482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8483_agree : tree8483 = literal8483 := by
  rw [tree8483_def]
  rfl
theorem node8483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8483 live8483 coloured8483 = result8483 := by
  rw [tree8483_def]
  try dsimp only [colour, result8483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8484_agree : tree8484 = literal8484 := by
  rw [tree8484_def, tree8482_agree, tree8483_agree]
  rfl
theorem node8484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8484 live8484 coloured8484 = result8484 := by
  rw [tree8484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8482_eq
  unfold live8482 coloured8482 at child
  try dsimp only [live8484, coloured8484]
  rw [child]
  dsimp only [result8482]
  have child := node8483_eq
  unfold live8483 coloured8483 at child
  try dsimp only [live8484, coloured8484]
  rw [child]
  dsimp only [result8483]
  try dsimp only [colour, result8484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8485_agree : tree8485 = literal8485 := by
  rw [tree8485_def]
  rfl
theorem node8485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8485 live8485 coloured8485 = result8485 := by
  rw [tree8485_def]
  try dsimp only [colour, result8485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8486_agree : tree8486 = literal8486 := by
  rw [tree8486_def, tree8484_agree, tree8485_agree]
  rfl
theorem node8486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8486 live8486 coloured8486 = result8486 := by
  rw [tree8486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8484_eq
  unfold live8484 coloured8484 at child
  try dsimp only [live8486, coloured8486]
  rw [child]
  dsimp only [result8484]
  have child := node8485_eq
  unfold live8485 coloured8485 at child
  try dsimp only [live8486, coloured8486]
  rw [child]
  dsimp only [result8485]
  try dsimp only [colour, result8486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8487_agree : tree8487 = literal8487 := by
  rw [tree8487_def]
  rfl
theorem node8487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8487 live8487 coloured8487 = result8487 := by
  rw [tree8487_def]
  try dsimp only [colour, result8487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8488_agree : tree8488 = literal8488 := by
  rw [tree8488_def, tree8486_agree, tree8487_agree]
  rfl
theorem node8488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8488 live8488 coloured8488 = result8488 := by
  rw [tree8488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8486_eq
  unfold live8486 coloured8486 at child
  try dsimp only [live8488, coloured8488]
  rw [child]
  dsimp only [result8486]
  have child := node8487_eq
  unfold live8487 coloured8487 at child
  try dsimp only [live8488, coloured8488]
  rw [child]
  dsimp only [result8487]
  try dsimp only [colour, result8488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8489_agree : tree8489 = literal8489 := by
  rw [tree8489_def]
  rfl
theorem node8489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8489 live8489 coloured8489 = result8489 := by
  rw [tree8489_def]
  try dsimp only [colour, result8489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8490_agree : tree8490 = literal8490 := by
  rw [tree8490_def, tree8488_agree, tree8489_agree]
  rfl
theorem node8490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8490 live8490 coloured8490 = result8490 := by
  rw [tree8490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8488_eq
  unfold live8488 coloured8488 at child
  try dsimp only [live8490, coloured8490]
  rw [child]
  dsimp only [result8488]
  have child := node8489_eq
  unfold live8489 coloured8489 at child
  try dsimp only [live8490, coloured8490]
  rw [child]
  dsimp only [result8489]
  try dsimp only [colour, result8490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8491_agree : tree8491 = literal8491 := by
  rw [tree8491_def]
  rfl
theorem node8491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8491 live8491 coloured8491 = result8491 := by
  rw [tree8491_def]
  try dsimp only [colour, result8491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8492_agree : tree8492 = literal8492 := by
  rw [tree8492_def, tree8490_agree, tree8491_agree]
  rfl
theorem node8492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8492 live8492 coloured8492 = result8492 := by
  rw [tree8492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8490_eq
  unfold live8490 coloured8490 at child
  try dsimp only [live8492, coloured8492]
  rw [child]
  dsimp only [result8490]
  have child := node8491_eq
  unfold live8491 coloured8491 at child
  try dsimp only [live8492, coloured8492]
  rw [child]
  dsimp only [result8491]
  try dsimp only [colour, result8492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8493_agree : tree8493 = literal8493 := by
  rw [tree8493_def]
  rfl
theorem node8493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8493 live8493 coloured8493 = result8493 := by
  rw [tree8493_def]
  try dsimp only [colour, result8493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8494_agree : tree8494 = literal8494 := by
  rw [tree8494_def, tree8492_agree, tree8493_agree]
  rfl
theorem node8494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8494 live8494 coloured8494 = result8494 := by
  rw [tree8494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8492_eq
  unfold live8492 coloured8492 at child
  try dsimp only [live8494, coloured8494]
  rw [child]
  dsimp only [result8492]
  have child := node8493_eq
  unfold live8493 coloured8493 at child
  try dsimp only [live8494, coloured8494]
  rw [child]
  dsimp only [result8493]
  try dsimp only [colour, result8494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8495_agree : tree8495 = literal8495 := by
  rw [tree8495_def]
  rfl
theorem node8495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8495 live8495 coloured8495 = result8495 := by
  rw [tree8495_def]
  try dsimp only [colour, result8495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8496_agree : tree8496 = literal8496 := by
  rw [tree8496_def, tree8494_agree, tree8495_agree]
  rfl
theorem node8496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8496 live8496 coloured8496 = result8496 := by
  rw [tree8496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8494_eq
  unfold live8494 coloured8494 at child
  try dsimp only [live8496, coloured8496]
  rw [child]
  dsimp only [result8494]
  have child := node8495_eq
  unfold live8495 coloured8495 at child
  try dsimp only [live8496, coloured8496]
  rw [child]
  dsimp only [result8495]
  try dsimp only [colour, result8496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8497_agree : tree8497 = literal8497 := by
  rw [tree8497_def]
  rfl
theorem node8497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8497 live8497 coloured8497 = result8497 := by
  rw [tree8497_def]
  try dsimp only [colour, result8497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8498_agree : tree8498 = literal8498 := by
  rw [tree8498_def, tree8496_agree, tree8497_agree]
  rfl
theorem node8498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8498 live8498 coloured8498 = result8498 := by
  rw [tree8498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8496_eq
  unfold live8496 coloured8496 at child
  try dsimp only [live8498, coloured8498]
  rw [child]
  dsimp only [result8496]
  have child := node8497_eq
  unfold live8497 coloured8497 at child
  try dsimp only [live8498, coloured8498]
  rw [child]
  dsimp only [result8497]
  try dsimp only [colour, result8498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8499_agree : tree8499 = literal8499 := by
  rw [tree8499_def]
  rfl
theorem node8499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8499 live8499 coloured8499 = result8499 := by
  rw [tree8499_def]
  try dsimp only [colour, result8499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8500_agree : tree8500 = literal8500 := by
  rw [tree8500_def, tree8498_agree, tree8499_agree]
  rfl
theorem node8500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8500 live8500 coloured8500 = result8500 := by
  rw [tree8500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8498_eq
  unfold live8498 coloured8498 at child
  try dsimp only [live8500, coloured8500]
  rw [child]
  dsimp only [result8498]
  have child := node8499_eq
  unfold live8499 coloured8499 at child
  try dsimp only [live8500, coloured8500]
  rw [child]
  dsimp only [result8499]
  try dsimp only [colour, result8500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8501_agree : tree8501 = literal8501 := by
  rw [tree8501_def]
  rfl
theorem node8501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8501 live8501 coloured8501 = result8501 := by
  rw [tree8501_def]
  try dsimp only [colour, result8501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8502_agree : tree8502 = literal8502 := by
  rw [tree8502_def, tree8500_agree, tree8501_agree]
  rfl
theorem node8502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8502 live8502 coloured8502 = result8502 := by
  rw [tree8502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8500_eq
  unfold live8500 coloured8500 at child
  try dsimp only [live8502, coloured8502]
  rw [child]
  dsimp only [result8500]
  have child := node8501_eq
  unfold live8501 coloured8501 at child
  try dsimp only [live8502, coloured8502]
  rw [child]
  dsimp only [result8501]
  try dsimp only [colour, result8502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8503_agree : tree8503 = literal8503 := by
  rw [tree8503_def]
  rfl
theorem node8503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8503 live8503 coloured8503 = result8503 := by
  rw [tree8503_def]
  try dsimp only [colour, result8503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8504_agree : tree8504 = literal8504 := by
  rw [tree8504_def, tree8502_agree, tree8503_agree]
  rfl
theorem node8504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8504 live8504 coloured8504 = result8504 := by
  rw [tree8504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8502_eq
  unfold live8502 coloured8502 at child
  try dsimp only [live8504, coloured8504]
  rw [child]
  dsimp only [result8502]
  have child := node8503_eq
  unfold live8503 coloured8503 at child
  try dsimp only [live8504, coloured8504]
  rw [child]
  dsimp only [result8503]
  try dsimp only [colour, result8504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8505_agree : tree8505 = literal8505 := by
  rw [tree8505_def]
  rfl
theorem node8505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8505 live8505 coloured8505 = result8505 := by
  rw [tree8505_def]
  try dsimp only [colour, result8505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8506_agree : tree8506 = literal8506 := by
  rw [tree8506_def, tree8504_agree, tree8505_agree]
  rfl
theorem node8506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8506 live8506 coloured8506 = result8506 := by
  rw [tree8506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8504_eq
  unfold live8504 coloured8504 at child
  try dsimp only [live8506, coloured8506]
  rw [child]
  dsimp only [result8504]
  have child := node8505_eq
  unfold live8505 coloured8505 at child
  try dsimp only [live8506, coloured8506]
  rw [child]
  dsimp only [result8505]
  try dsimp only [colour, result8506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8507_agree : tree8507 = literal8507 := by
  rw [tree8507_def]
  rfl
theorem node8507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8507 live8507 coloured8507 = result8507 := by
  rw [tree8507_def]
  try dsimp only [colour, result8507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8508_agree : tree8508 = literal8508 := by
  rw [tree8508_def, tree8506_agree, tree8507_agree]
  rfl
theorem node8508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8508 live8508 coloured8508 = result8508 := by
  rw [tree8508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8506_eq
  unfold live8506 coloured8506 at child
  try dsimp only [live8508, coloured8508]
  rw [child]
  dsimp only [result8506]
  have child := node8507_eq
  unfold live8507 coloured8507 at child
  try dsimp only [live8508, coloured8508]
  rw [child]
  dsimp only [result8507]
  try dsimp only [colour, result8508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8509_agree : tree8509 = literal8509 := by
  rw [tree8509_def]
  rfl
theorem node8509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8509 live8509 coloured8509 = result8509 := by
  rw [tree8509_def]
  try dsimp only [colour, result8509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8510_agree : tree8510 = literal8510 := by
  rw [tree8510_def, tree8508_agree, tree8509_agree]
  rfl
theorem node8510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8510 live8510 coloured8510 = result8510 := by
  rw [tree8510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8508_eq
  unfold live8508 coloured8508 at child
  try dsimp only [live8510, coloured8510]
  rw [child]
  dsimp only [result8508]
  have child := node8509_eq
  unfold live8509 coloured8509 at child
  try dsimp only [live8510, coloured8510]
  rw [child]
  dsimp only [result8509]
  try dsimp only [colour, result8510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8511_agree : tree8511 = literal8511 := by
  rw [tree8511_def]
  rfl
theorem node8511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8511 live8511 coloured8511 = result8511 := by
  rw [tree8511_def]
  try dsimp only [colour, result8511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8512_agree : tree8512 = literal8512 := by
  rw [tree8512_def, tree8510_agree, tree8511_agree]
  rfl
theorem node8512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8512 live8512 coloured8512 = result8512 := by
  rw [tree8512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8510_eq
  unfold live8510 coloured8510 at child
  try dsimp only [live8512, coloured8512]
  rw [child]
  dsimp only [result8510]
  have child := node8511_eq
  unfold live8511 coloured8511 at child
  try dsimp only [live8512, coloured8512]
  rw [child]
  dsimp only [result8511]
  try dsimp only [colour, result8512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8513_agree : tree8513 = literal8513 := by
  rw [tree8513_def]
  rfl
theorem node8513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8513 live8513 coloured8513 = result8513 := by
  rw [tree8513_def]
  try dsimp only [colour, result8513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8514_agree : tree8514 = literal8514 := by
  rw [tree8514_def, tree8512_agree, tree8513_agree]
  rfl
theorem node8514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8514 live8514 coloured8514 = result8514 := by
  rw [tree8514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8512_eq
  unfold live8512 coloured8512 at child
  try dsimp only [live8514, coloured8514]
  rw [child]
  dsimp only [result8512]
  have child := node8513_eq
  unfold live8513 coloured8513 at child
  try dsimp only [live8514, coloured8514]
  rw [child]
  dsimp only [result8513]
  try dsimp only [colour, result8514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8515_agree : tree8515 = literal8515 := by
  rw [tree8515_def]
  rfl
theorem node8515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8515 live8515 coloured8515 = result8515 := by
  rw [tree8515_def]
  try dsimp only [colour, result8515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8516_agree : tree8516 = literal8516 := by
  rw [tree8516_def, tree8514_agree, tree8515_agree]
  rfl
theorem node8516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8516 live8516 coloured8516 = result8516 := by
  rw [tree8516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8514_eq
  unfold live8514 coloured8514 at child
  try dsimp only [live8516, coloured8516]
  rw [child]
  dsimp only [result8514]
  have child := node8515_eq
  unfold live8515 coloured8515 at child
  try dsimp only [live8516, coloured8516]
  rw [child]
  dsimp only [result8515]
  try dsimp only [colour, result8516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8517_agree : tree8517 = literal8517 := by
  rw [tree8517_def]
  rfl
theorem node8517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8517 live8517 coloured8517 = result8517 := by
  rw [tree8517_def]
  try dsimp only [colour, result8517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8518_agree : tree8518 = literal8518 := by
  rw [tree8518_def, tree8516_agree, tree8517_agree]
  rfl
theorem node8518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8518 live8518 coloured8518 = result8518 := by
  rw [tree8518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8516_eq
  unfold live8516 coloured8516 at child
  try dsimp only [live8518, coloured8518]
  rw [child]
  dsimp only [result8516]
  have child := node8517_eq
  unfold live8517 coloured8517 at child
  try dsimp only [live8518, coloured8518]
  rw [child]
  dsimp only [result8517]
  try dsimp only [colour, result8518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8519_agree : tree8519 = literal8519 := by
  rw [tree8519_def]
  rfl
theorem node8519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8519 live8519 coloured8519 = result8519 := by
  rw [tree8519_def]
  try dsimp only [colour, result8519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8520_agree : tree8520 = literal8520 := by
  rw [tree8520_def, tree8518_agree, tree8519_agree]
  rfl
theorem node8520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8520 live8520 coloured8520 = result8520 := by
  rw [tree8520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8518_eq
  unfold live8518 coloured8518 at child
  try dsimp only [live8520, coloured8520]
  rw [child]
  dsimp only [result8518]
  have child := node8519_eq
  unfold live8519 coloured8519 at child
  try dsimp only [live8520, coloured8520]
  rw [child]
  dsimp only [result8519]
  try dsimp only [colour, result8520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8521_agree : tree8521 = literal8521 := by
  rw [tree8521_def]
  rfl
theorem node8521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8521 live8521 coloured8521 = result8521 := by
  rw [tree8521_def]
  try dsimp only [colour, result8521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8522_agree : tree8522 = literal8522 := by
  rw [tree8522_def, tree8520_agree, tree8521_agree]
  rfl
theorem node8522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8522 live8522 coloured8522 = result8522 := by
  rw [tree8522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8520_eq
  unfold live8520 coloured8520 at child
  try dsimp only [live8522, coloured8522]
  rw [child]
  dsimp only [result8520]
  have child := node8521_eq
  unfold live8521 coloured8521 at child
  try dsimp only [live8522, coloured8522]
  rw [child]
  dsimp only [result8521]
  try dsimp only [colour, result8522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8523_agree : tree8523 = literal8523 := by
  rw [tree8523_def]
  rfl
theorem node8523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8523 live8523 coloured8523 = result8523 := by
  rw [tree8523_def]
  try dsimp only [colour, result8523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8524_agree : tree8524 = literal8524 := by
  rw [tree8524_def, tree8522_agree, tree8523_agree]
  rfl
theorem node8524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8524 live8524 coloured8524 = result8524 := by
  rw [tree8524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8522_eq
  unfold live8522 coloured8522 at child
  try dsimp only [live8524, coloured8524]
  rw [child]
  dsimp only [result8522]
  have child := node8523_eq
  unfold live8523 coloured8523 at child
  try dsimp only [live8524, coloured8524]
  rw [child]
  dsimp only [result8523]
  try dsimp only [colour, result8524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8525_agree : tree8525 = literal8525 := by
  rw [tree8525_def]
  rfl
theorem node8525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8525 live8525 coloured8525 = result8525 := by
  rw [tree8525_def]
  try dsimp only [colour, result8525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8526_agree : tree8526 = literal8526 := by
  rw [tree8526_def, tree8524_agree, tree8525_agree]
  rfl
theorem node8526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8526 live8526 coloured8526 = result8526 := by
  rw [tree8526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8524_eq
  unfold live8524 coloured8524 at child
  try dsimp only [live8526, coloured8526]
  rw [child]
  dsimp only [result8524]
  have child := node8525_eq
  unfold live8525 coloured8525 at child
  try dsimp only [live8526, coloured8526]
  rw [child]
  dsimp only [result8525]
  try dsimp only [colour, result8526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8527_agree : tree8527 = literal8527 := by
  rw [tree8527_def]
  rfl
theorem node8527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8527 live8527 coloured8527 = result8527 := by
  rw [tree8527_def]
  try dsimp only [colour, result8527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8528_agree : tree8528 = literal8528 := by
  rw [tree8528_def, tree8526_agree, tree8527_agree]
  rfl
theorem node8528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8528 live8528 coloured8528 = result8528 := by
  rw [tree8528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8526_eq
  unfold live8526 coloured8526 at child
  try dsimp only [live8528, coloured8528]
  rw [child]
  dsimp only [result8526]
  have child := node8527_eq
  unfold live8527 coloured8527 at child
  try dsimp only [live8528, coloured8528]
  rw [child]
  dsimp only [result8527]
  try dsimp only [colour, result8528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8529_agree : tree8529 = literal8529 := by
  rw [tree8529_def]
  rfl
theorem node8529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8529 live8529 coloured8529 = result8529 := by
  rw [tree8529_def]
  try dsimp only [colour, result8529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8530_agree : tree8530 = literal8530 := by
  rw [tree8530_def, tree8528_agree, tree8529_agree]
  rfl
theorem node8530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8530 live8530 coloured8530 = result8530 := by
  rw [tree8530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8528_eq
  unfold live8528 coloured8528 at child
  try dsimp only [live8530, coloured8530]
  rw [child]
  dsimp only [result8528]
  have child := node8529_eq
  unfold live8529 coloured8529 at child
  try dsimp only [live8530, coloured8530]
  rw [child]
  dsimp only [result8529]
  try dsimp only [colour, result8530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8531_agree : tree8531 = literal8531 := by
  rw [tree8531_def]
  rfl
theorem node8531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8531 live8531 coloured8531 = result8531 := by
  rw [tree8531_def]
  try dsimp only [colour, result8531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8532_agree : tree8532 = literal8532 := by
  rw [tree8532_def, tree8530_agree, tree8531_agree]
  rfl
theorem node8532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8532 live8532 coloured8532 = result8532 := by
  rw [tree8532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8530_eq
  unfold live8530 coloured8530 at child
  try dsimp only [live8532, coloured8532]
  rw [child]
  dsimp only [result8530]
  have child := node8531_eq
  unfold live8531 coloured8531 at child
  try dsimp only [live8532, coloured8532]
  rw [child]
  dsimp only [result8531]
  try dsimp only [colour, result8532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8533_agree : tree8533 = literal8533 := by
  rw [tree8533_def]
  rfl
theorem node8533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8533 live8533 coloured8533 = result8533 := by
  rw [tree8533_def]
  try dsimp only [colour, result8533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8534_agree : tree8534 = literal8534 := by
  rw [tree8534_def, tree8532_agree, tree8533_agree]
  rfl
theorem node8534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8534 live8534 coloured8534 = result8534 := by
  rw [tree8534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8532_eq
  unfold live8532 coloured8532 at child
  try dsimp only [live8534, coloured8534]
  rw [child]
  dsimp only [result8532]
  have child := node8533_eq
  unfold live8533 coloured8533 at child
  try dsimp only [live8534, coloured8534]
  rw [child]
  dsimp only [result8533]
  try dsimp only [colour, result8534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8535_agree : tree8535 = literal8535 := by
  rw [tree8535_def]
  rfl
theorem node8535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8535 live8535 coloured8535 = result8535 := by
  rw [tree8535_def]
  try dsimp only [colour, result8535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8536_agree : tree8536 = literal8536 := by
  rw [tree8536_def, tree8534_agree, tree8535_agree]
  rfl
theorem node8536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8536 live8536 coloured8536 = result8536 := by
  rw [tree8536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8534_eq
  unfold live8534 coloured8534 at child
  try dsimp only [live8536, coloured8536]
  rw [child]
  dsimp only [result8534]
  have child := node8535_eq
  unfold live8535 coloured8535 at child
  try dsimp only [live8536, coloured8536]
  rw [child]
  dsimp only [result8535]
  try dsimp only [colour, result8536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8537_agree : tree8537 = literal8537 := by
  rw [tree8537_def]
  rfl
theorem node8537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8537 live8537 coloured8537 = result8537 := by
  rw [tree8537_def]
  try dsimp only [colour, result8537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8538_agree : tree8538 = literal8538 := by
  rw [tree8538_def, tree8536_agree, tree8537_agree]
  rfl
theorem node8538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8538 live8538 coloured8538 = result8538 := by
  rw [tree8538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8536_eq
  unfold live8536 coloured8536 at child
  try dsimp only [live8538, coloured8538]
  rw [child]
  dsimp only [result8536]
  have child := node8537_eq
  unfold live8537 coloured8537 at child
  try dsimp only [live8538, coloured8538]
  rw [child]
  dsimp only [result8537]
  try dsimp only [colour, result8538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8539_agree : tree8539 = literal8539 := by
  rw [tree8539_def]
  rfl
theorem node8539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8539 live8539 coloured8539 = result8539 := by
  rw [tree8539_def]
  try dsimp only [colour, result8539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8540_agree : tree8540 = literal8540 := by
  rw [tree8540_def, tree8538_agree, tree8539_agree]
  rfl
theorem node8540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8540 live8540 coloured8540 = result8540 := by
  rw [tree8540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8538_eq
  unfold live8538 coloured8538 at child
  try dsimp only [live8540, coloured8540]
  rw [child]
  dsimp only [result8538]
  have child := node8539_eq
  unfold live8539 coloured8539 at child
  try dsimp only [live8540, coloured8540]
  rw [child]
  dsimp only [result8539]
  try dsimp only [colour, result8540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8541_agree : tree8541 = literal8541 := by
  rw [tree8541_def]
  rfl
theorem node8541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8541 live8541 coloured8541 = result8541 := by
  rw [tree8541_def]
  try dsimp only [colour, result8541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8542_agree : tree8542 = literal8542 := by
  rw [tree8542_def, tree8540_agree, tree8541_agree]
  rfl
theorem node8542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8542 live8542 coloured8542 = result8542 := by
  rw [tree8542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8540_eq
  unfold live8540 coloured8540 at child
  try dsimp only [live8542, coloured8542]
  rw [child]
  dsimp only [result8540]
  have child := node8541_eq
  unfold live8541 coloured8541 at child
  try dsimp only [live8542, coloured8542]
  rw [child]
  dsimp only [result8541]
  try dsimp only [colour, result8542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8543_agree : tree8543 = literal8543 := by
  rw [tree8543_def]
  rfl
theorem node8543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8543 live8543 coloured8543 = result8543 := by
  rw [tree8543_def]
  try dsimp only [colour, result8543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
