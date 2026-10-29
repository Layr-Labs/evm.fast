import InitECandidate.Proofs.ClashStages713.Proof108
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree10464_agree : tree10464 = literal10464 := by
  rw [tree10464_def, tree10462_agree, tree10463_agree]
  rfl
theorem node10464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10464 live10464 coloured10464 = result10464 := by
  rw [tree10464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10462_eq
  unfold live10462 coloured10462 at child
  try dsimp only [live10464, coloured10464]
  rw [child]
  dsimp only [result10462]
  have child := node10463_eq
  unfold live10463 coloured10463 at child
  try dsimp only [live10464, coloured10464]
  rw [child]
  dsimp only [result10463]
  try dsimp only [colour, result10464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10465_agree : tree10465 = literal10465 := by
  rw [tree10465_def]
  rfl
theorem node10465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10465 live10465 coloured10465 = result10465 := by
  rw [tree10465_def]
  try dsimp only [colour, result10465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10466_agree : tree10466 = literal10466 := by
  rw [tree10466_def, tree10464_agree, tree10465_agree]
  rfl
theorem node10466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10466 live10466 coloured10466 = result10466 := by
  rw [tree10466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10464_eq
  unfold live10464 coloured10464 at child
  try dsimp only [live10466, coloured10466]
  rw [child]
  dsimp only [result10464]
  have child := node10465_eq
  unfold live10465 coloured10465 at child
  try dsimp only [live10466, coloured10466]
  rw [child]
  dsimp only [result10465]
  try dsimp only [colour, result10466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10467_agree : tree10467 = literal10467 := by
  rw [tree10467_def]
  rfl
theorem node10467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10467 live10467 coloured10467 = result10467 := by
  rw [tree10467_def]
  try dsimp only [colour, result10467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10468_agree : tree10468 = literal10468 := by
  rw [tree10468_def, tree10466_agree, tree10467_agree]
  rfl
theorem node10468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10468 live10468 coloured10468 = result10468 := by
  rw [tree10468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10466_eq
  unfold live10466 coloured10466 at child
  try dsimp only [live10468, coloured10468]
  rw [child]
  dsimp only [result10466]
  have child := node10467_eq
  unfold live10467 coloured10467 at child
  try dsimp only [live10468, coloured10468]
  rw [child]
  dsimp only [result10467]
  try dsimp only [colour, result10468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10469_agree : tree10469 = literal10469 := by
  rw [tree10469_def]
  rfl
theorem node10469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10469 live10469 coloured10469 = result10469 := by
  rw [tree10469_def]
  try dsimp only [colour, result10469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10470_agree : tree10470 = literal10470 := by
  rw [tree10470_def, tree10468_agree, tree10469_agree]
  rfl
theorem node10470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10470 live10470 coloured10470 = result10470 := by
  rw [tree10470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10468_eq
  unfold live10468 coloured10468 at child
  try dsimp only [live10470, coloured10470]
  rw [child]
  dsimp only [result10468]
  have child := node10469_eq
  unfold live10469 coloured10469 at child
  try dsimp only [live10470, coloured10470]
  rw [child]
  dsimp only [result10469]
  try dsimp only [colour, result10470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10471_agree : tree10471 = literal10471 := by
  rw [tree10471_def]
  rfl
theorem node10471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10471 live10471 coloured10471 = result10471 := by
  rw [tree10471_def]
  try dsimp only [colour, result10471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10472_agree : tree10472 = literal10472 := by
  rw [tree10472_def, tree10470_agree, tree10471_agree]
  rfl
theorem node10472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10472 live10472 coloured10472 = result10472 := by
  rw [tree10472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10470_eq
  unfold live10470 coloured10470 at child
  try dsimp only [live10472, coloured10472]
  rw [child]
  dsimp only [result10470]
  have child := node10471_eq
  unfold live10471 coloured10471 at child
  try dsimp only [live10472, coloured10472]
  rw [child]
  dsimp only [result10471]
  try dsimp only [colour, result10472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10473_agree : tree10473 = literal10473 := by
  rw [tree10473_def]
  rfl
theorem node10473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10473 live10473 coloured10473 = result10473 := by
  rw [tree10473_def]
  try dsimp only [colour, result10473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10474_agree : tree10474 = literal10474 := by
  rw [tree10474_def, tree10472_agree, tree10473_agree]
  rfl
theorem node10474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10474 live10474 coloured10474 = result10474 := by
  rw [tree10474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10472_eq
  unfold live10472 coloured10472 at child
  try dsimp only [live10474, coloured10474]
  rw [child]
  dsimp only [result10472]
  have child := node10473_eq
  unfold live10473 coloured10473 at child
  try dsimp only [live10474, coloured10474]
  rw [child]
  dsimp only [result10473]
  try dsimp only [colour, result10474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10475_agree : tree10475 = literal10475 := by
  rw [tree10475_def]
  rfl
theorem node10475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10475 live10475 coloured10475 = result10475 := by
  rw [tree10475_def]
  try dsimp only [colour, result10475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10476_agree : tree10476 = literal10476 := by
  rw [tree10476_def, tree10474_agree, tree10475_agree]
  rfl
theorem node10476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10476 live10476 coloured10476 = result10476 := by
  rw [tree10476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10474_eq
  unfold live10474 coloured10474 at child
  try dsimp only [live10476, coloured10476]
  rw [child]
  dsimp only [result10474]
  have child := node10475_eq
  unfold live10475 coloured10475 at child
  try dsimp only [live10476, coloured10476]
  rw [child]
  dsimp only [result10475]
  try dsimp only [colour, result10476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10477_agree : tree10477 = literal10477 := by
  rw [tree10477_def]
  rfl
theorem node10477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10477 live10477 coloured10477 = result10477 := by
  rw [tree10477_def]
  try dsimp only [colour, result10477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10478_agree : tree10478 = literal10478 := by
  rw [tree10478_def, tree10476_agree, tree10477_agree]
  rfl
theorem node10478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10478 live10478 coloured10478 = result10478 := by
  rw [tree10478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10476_eq
  unfold live10476 coloured10476 at child
  try dsimp only [live10478, coloured10478]
  rw [child]
  dsimp only [result10476]
  have child := node10477_eq
  unfold live10477 coloured10477 at child
  try dsimp only [live10478, coloured10478]
  rw [child]
  dsimp only [result10477]
  try dsimp only [colour, result10478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10479_agree : tree10479 = literal10479 := by
  rw [tree10479_def]
  rfl
theorem node10479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10479 live10479 coloured10479 = result10479 := by
  rw [tree10479_def]
  try dsimp only [colour, result10479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10480_agree : tree10480 = literal10480 := by
  rw [tree10480_def, tree10478_agree, tree10479_agree]
  rfl
theorem node10480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10480 live10480 coloured10480 = result10480 := by
  rw [tree10480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10478_eq
  unfold live10478 coloured10478 at child
  try dsimp only [live10480, coloured10480]
  rw [child]
  dsimp only [result10478]
  have child := node10479_eq
  unfold live10479 coloured10479 at child
  try dsimp only [live10480, coloured10480]
  rw [child]
  dsimp only [result10479]
  try dsimp only [colour, result10480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10481_agree : tree10481 = literal10481 := by
  rw [tree10481_def]
  rfl
theorem node10481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10481 live10481 coloured10481 = result10481 := by
  rw [tree10481_def]
  try dsimp only [colour, result10481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10482_agree : tree10482 = literal10482 := by
  rw [tree10482_def, tree10480_agree, tree10481_agree]
  rfl
theorem node10482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10482 live10482 coloured10482 = result10482 := by
  rw [tree10482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10480_eq
  unfold live10480 coloured10480 at child
  try dsimp only [live10482, coloured10482]
  rw [child]
  dsimp only [result10480]
  have child := node10481_eq
  unfold live10481 coloured10481 at child
  try dsimp only [live10482, coloured10482]
  rw [child]
  dsimp only [result10481]
  try dsimp only [colour, result10482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10483_agree : tree10483 = literal10483 := by
  rw [tree10483_def]
  rfl
theorem node10483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10483 live10483 coloured10483 = result10483 := by
  rw [tree10483_def]
  try dsimp only [colour, result10483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10484_agree : tree10484 = literal10484 := by
  rw [tree10484_def, tree10482_agree, tree10483_agree]
  rfl
theorem node10484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10484 live10484 coloured10484 = result10484 := by
  rw [tree10484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10482_eq
  unfold live10482 coloured10482 at child
  try dsimp only [live10484, coloured10484]
  rw [child]
  dsimp only [result10482]
  have child := node10483_eq
  unfold live10483 coloured10483 at child
  try dsimp only [live10484, coloured10484]
  rw [child]
  dsimp only [result10483]
  try dsimp only [colour, result10484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10485_agree : tree10485 = literal10485 := by
  rw [tree10485_def]
  rfl
theorem node10485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10485 live10485 coloured10485 = result10485 := by
  rw [tree10485_def]
  try dsimp only [colour, result10485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10486_agree : tree10486 = literal10486 := by
  rw [tree10486_def, tree10484_agree, tree10485_agree]
  rfl
theorem node10486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10486 live10486 coloured10486 = result10486 := by
  rw [tree10486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10484_eq
  unfold live10484 coloured10484 at child
  try dsimp only [live10486, coloured10486]
  rw [child]
  dsimp only [result10484]
  have child := node10485_eq
  unfold live10485 coloured10485 at child
  try dsimp only [live10486, coloured10486]
  rw [child]
  dsimp only [result10485]
  try dsimp only [colour, result10486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10487_agree : tree10487 = literal10487 := by
  rw [tree10487_def]
  rfl
theorem node10487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10487 live10487 coloured10487 = result10487 := by
  rw [tree10487_def]
  try dsimp only [colour, result10487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10488_agree : tree10488 = literal10488 := by
  rw [tree10488_def, tree10486_agree, tree10487_agree]
  rfl
theorem node10488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10488 live10488 coloured10488 = result10488 := by
  rw [tree10488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10486_eq
  unfold live10486 coloured10486 at child
  try dsimp only [live10488, coloured10488]
  rw [child]
  dsimp only [result10486]
  have child := node10487_eq
  unfold live10487 coloured10487 at child
  try dsimp only [live10488, coloured10488]
  rw [child]
  dsimp only [result10487]
  try dsimp only [colour, result10488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10489_agree : tree10489 = literal10489 := by
  rw [tree10489_def]
  rfl
theorem node10489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10489 live10489 coloured10489 = result10489 := by
  rw [tree10489_def]
  try dsimp only [colour, result10489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10490_agree : tree10490 = literal10490 := by
  rw [tree10490_def, tree10488_agree, tree10489_agree]
  rfl
theorem node10490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10490 live10490 coloured10490 = result10490 := by
  rw [tree10490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10488_eq
  unfold live10488 coloured10488 at child
  try dsimp only [live10490, coloured10490]
  rw [child]
  dsimp only [result10488]
  have child := node10489_eq
  unfold live10489 coloured10489 at child
  try dsimp only [live10490, coloured10490]
  rw [child]
  dsimp only [result10489]
  try dsimp only [colour, result10490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10491_agree : tree10491 = literal10491 := by
  rw [tree10491_def]
  rfl
theorem node10491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10491 live10491 coloured10491 = result10491 := by
  rw [tree10491_def]
  try dsimp only [colour, result10491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10492_agree : tree10492 = literal10492 := by
  rw [tree10492_def, tree10490_agree, tree10491_agree]
  rfl
theorem node10492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10492 live10492 coloured10492 = result10492 := by
  rw [tree10492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10490_eq
  unfold live10490 coloured10490 at child
  try dsimp only [live10492, coloured10492]
  rw [child]
  dsimp only [result10490]
  have child := node10491_eq
  unfold live10491 coloured10491 at child
  try dsimp only [live10492, coloured10492]
  rw [child]
  dsimp only [result10491]
  try dsimp only [colour, result10492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10493_agree : tree10493 = literal10493 := by
  rw [tree10493_def]
  rfl
theorem node10493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10493 live10493 coloured10493 = result10493 := by
  rw [tree10493_def]
  try dsimp only [colour, result10493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10494_agree : tree10494 = literal10494 := by
  rw [tree10494_def, tree10492_agree, tree10493_agree]
  rfl
theorem node10494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10494 live10494 coloured10494 = result10494 := by
  rw [tree10494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10492_eq
  unfold live10492 coloured10492 at child
  try dsimp only [live10494, coloured10494]
  rw [child]
  dsimp only [result10492]
  have child := node10493_eq
  unfold live10493 coloured10493 at child
  try dsimp only [live10494, coloured10494]
  rw [child]
  dsimp only [result10493]
  try dsimp only [colour, result10494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10495_agree : tree10495 = literal10495 := by
  rw [tree10495_def]
  rfl
theorem node10495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10495 live10495 coloured10495 = result10495 := by
  rw [tree10495_def]
  try dsimp only [colour, result10495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10496_agree : tree10496 = literal10496 := by
  rw [tree10496_def, tree10494_agree, tree10495_agree]
  rfl
theorem node10496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10496 live10496 coloured10496 = result10496 := by
  rw [tree10496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10494_eq
  unfold live10494 coloured10494 at child
  try dsimp only [live10496, coloured10496]
  rw [child]
  dsimp only [result10494]
  have child := node10495_eq
  unfold live10495 coloured10495 at child
  try dsimp only [live10496, coloured10496]
  rw [child]
  dsimp only [result10495]
  try dsimp only [colour, result10496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10497_agree : tree10497 = literal10497 := by
  rw [tree10497_def]
  rfl
theorem node10497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10497 live10497 coloured10497 = result10497 := by
  rw [tree10497_def]
  try dsimp only [colour, result10497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10498_agree : tree10498 = literal10498 := by
  rw [tree10498_def, tree10496_agree, tree10497_agree]
  rfl
theorem node10498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10498 live10498 coloured10498 = result10498 := by
  rw [tree10498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10496_eq
  unfold live10496 coloured10496 at child
  try dsimp only [live10498, coloured10498]
  rw [child]
  dsimp only [result10496]
  have child := node10497_eq
  unfold live10497 coloured10497 at child
  try dsimp only [live10498, coloured10498]
  rw [child]
  dsimp only [result10497]
  try dsimp only [colour, result10498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10499_agree : tree10499 = literal10499 := by
  rw [tree10499_def]
  rfl
theorem node10499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10499 live10499 coloured10499 = result10499 := by
  rw [tree10499_def]
  try dsimp only [colour, result10499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10500_agree : tree10500 = literal10500 := by
  rw [tree10500_def, tree10498_agree, tree10499_agree]
  rfl
theorem node10500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10500 live10500 coloured10500 = result10500 := by
  rw [tree10500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10498_eq
  unfold live10498 coloured10498 at child
  try dsimp only [live10500, coloured10500]
  rw [child]
  dsimp only [result10498]
  have child := node10499_eq
  unfold live10499 coloured10499 at child
  try dsimp only [live10500, coloured10500]
  rw [child]
  dsimp only [result10499]
  try dsimp only [colour, result10500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10501_agree : tree10501 = literal10501 := by
  rw [tree10501_def]
  rfl
theorem node10501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10501 live10501 coloured10501 = result10501 := by
  rw [tree10501_def]
  try dsimp only [colour, result10501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10502_agree : tree10502 = literal10502 := by
  rw [tree10502_def, tree10500_agree, tree10501_agree]
  rfl
theorem node10502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10502 live10502 coloured10502 = result10502 := by
  rw [tree10502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10500_eq
  unfold live10500 coloured10500 at child
  try dsimp only [live10502, coloured10502]
  rw [child]
  dsimp only [result10500]
  have child := node10501_eq
  unfold live10501 coloured10501 at child
  try dsimp only [live10502, coloured10502]
  rw [child]
  dsimp only [result10501]
  try dsimp only [colour, result10502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10503_agree : tree10503 = literal10503 := by
  rw [tree10503_def]
  rfl
theorem node10503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10503 live10503 coloured10503 = result10503 := by
  rw [tree10503_def]
  try dsimp only [colour, result10503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10504_agree : tree10504 = literal10504 := by
  rw [tree10504_def, tree10502_agree, tree10503_agree]
  rfl
theorem node10504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10504 live10504 coloured10504 = result10504 := by
  rw [tree10504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10502_eq
  unfold live10502 coloured10502 at child
  try dsimp only [live10504, coloured10504]
  rw [child]
  dsimp only [result10502]
  have child := node10503_eq
  unfold live10503 coloured10503 at child
  try dsimp only [live10504, coloured10504]
  rw [child]
  dsimp only [result10503]
  try dsimp only [colour, result10504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10505_agree : tree10505 = literal10505 := by
  rw [tree10505_def]
  rfl
theorem node10505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10505 live10505 coloured10505 = result10505 := by
  rw [tree10505_def]
  try dsimp only [colour, result10505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10506_agree : tree10506 = literal10506 := by
  rw [tree10506_def, tree10504_agree, tree10505_agree]
  rfl
theorem node10506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10506 live10506 coloured10506 = result10506 := by
  rw [tree10506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10504_eq
  unfold live10504 coloured10504 at child
  try dsimp only [live10506, coloured10506]
  rw [child]
  dsimp only [result10504]
  have child := node10505_eq
  unfold live10505 coloured10505 at child
  try dsimp only [live10506, coloured10506]
  rw [child]
  dsimp only [result10505]
  try dsimp only [colour, result10506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10507_agree : tree10507 = literal10507 := by
  rw [tree10507_def]
  rfl
theorem node10507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10507 live10507 coloured10507 = result10507 := by
  rw [tree10507_def]
  try dsimp only [colour, result10507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10508_agree : tree10508 = literal10508 := by
  rw [tree10508_def, tree10506_agree, tree10507_agree]
  rfl
theorem node10508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10508 live10508 coloured10508 = result10508 := by
  rw [tree10508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10506_eq
  unfold live10506 coloured10506 at child
  try dsimp only [live10508, coloured10508]
  rw [child]
  dsimp only [result10506]
  have child := node10507_eq
  unfold live10507 coloured10507 at child
  try dsimp only [live10508, coloured10508]
  rw [child]
  dsimp only [result10507]
  try dsimp only [colour, result10508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10509_agree : tree10509 = literal10509 := by
  rw [tree10509_def]
  rfl
theorem node10509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10509 live10509 coloured10509 = result10509 := by
  rw [tree10509_def]
  try dsimp only [colour, result10509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10510_agree : tree10510 = literal10510 := by
  rw [tree10510_def, tree10508_agree, tree10509_agree]
  rfl
theorem node10510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10510 live10510 coloured10510 = result10510 := by
  rw [tree10510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10508_eq
  unfold live10508 coloured10508 at child
  try dsimp only [live10510, coloured10510]
  rw [child]
  dsimp only [result10508]
  have child := node10509_eq
  unfold live10509 coloured10509 at child
  try dsimp only [live10510, coloured10510]
  rw [child]
  dsimp only [result10509]
  try dsimp only [colour, result10510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10511_agree : tree10511 = literal10511 := by
  rw [tree10511_def]
  rfl
theorem node10511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10511 live10511 coloured10511 = result10511 := by
  rw [tree10511_def]
  try dsimp only [colour, result10511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10512_agree : tree10512 = literal10512 := by
  rw [tree10512_def, tree10510_agree, tree10511_agree]
  rfl
theorem node10512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10512 live10512 coloured10512 = result10512 := by
  rw [tree10512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10510_eq
  unfold live10510 coloured10510 at child
  try dsimp only [live10512, coloured10512]
  rw [child]
  dsimp only [result10510]
  have child := node10511_eq
  unfold live10511 coloured10511 at child
  try dsimp only [live10512, coloured10512]
  rw [child]
  dsimp only [result10511]
  try dsimp only [colour, result10512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10513_agree : tree10513 = literal10513 := by
  rw [tree10513_def]
  rfl
theorem node10513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10513 live10513 coloured10513 = result10513 := by
  rw [tree10513_def]
  try dsimp only [colour, result10513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10514_agree : tree10514 = literal10514 := by
  rw [tree10514_def, tree10512_agree, tree10513_agree]
  rfl
theorem node10514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10514 live10514 coloured10514 = result10514 := by
  rw [tree10514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10512_eq
  unfold live10512 coloured10512 at child
  try dsimp only [live10514, coloured10514]
  rw [child]
  dsimp only [result10512]
  have child := node10513_eq
  unfold live10513 coloured10513 at child
  try dsimp only [live10514, coloured10514]
  rw [child]
  dsimp only [result10513]
  try dsimp only [colour, result10514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10515_agree : tree10515 = literal10515 := by
  rw [tree10515_def]
  rfl
theorem node10515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10515 live10515 coloured10515 = result10515 := by
  rw [tree10515_def]
  try dsimp only [colour, result10515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10516_agree : tree10516 = literal10516 := by
  rw [tree10516_def, tree10514_agree, tree10515_agree]
  rfl
theorem node10516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10516 live10516 coloured10516 = result10516 := by
  rw [tree10516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10514_eq
  unfold live10514 coloured10514 at child
  try dsimp only [live10516, coloured10516]
  rw [child]
  dsimp only [result10514]
  have child := node10515_eq
  unfold live10515 coloured10515 at child
  try dsimp only [live10516, coloured10516]
  rw [child]
  dsimp only [result10515]
  try dsimp only [colour, result10516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10517_agree : tree10517 = literal10517 := by
  rw [tree10517_def]
  rfl
theorem node10517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10517 live10517 coloured10517 = result10517 := by
  rw [tree10517_def]
  try dsimp only [colour, result10517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10518_agree : tree10518 = literal10518 := by
  rw [tree10518_def, tree10516_agree, tree10517_agree]
  rfl
theorem node10518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10518 live10518 coloured10518 = result10518 := by
  rw [tree10518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10516_eq
  unfold live10516 coloured10516 at child
  try dsimp only [live10518, coloured10518]
  rw [child]
  dsimp only [result10516]
  have child := node10517_eq
  unfold live10517 coloured10517 at child
  try dsimp only [live10518, coloured10518]
  rw [child]
  dsimp only [result10517]
  try dsimp only [colour, result10518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10519_agree : tree10519 = literal10519 := by
  rw [tree10519_def]
  rfl
theorem node10519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10519 live10519 coloured10519 = result10519 := by
  rw [tree10519_def]
  try dsimp only [colour, result10519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10520_agree : tree10520 = literal10520 := by
  rw [tree10520_def, tree10518_agree, tree10519_agree]
  rfl
theorem node10520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10520 live10520 coloured10520 = result10520 := by
  rw [tree10520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10518_eq
  unfold live10518 coloured10518 at child
  try dsimp only [live10520, coloured10520]
  rw [child]
  dsimp only [result10518]
  have child := node10519_eq
  unfold live10519 coloured10519 at child
  try dsimp only [live10520, coloured10520]
  rw [child]
  dsimp only [result10519]
  try dsimp only [colour, result10520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10521_agree : tree10521 = literal10521 := by
  rw [tree10521_def]
  rfl
theorem node10521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10521 live10521 coloured10521 = result10521 := by
  rw [tree10521_def]
  try dsimp only [colour, result10521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10522_agree : tree10522 = literal10522 := by
  rw [tree10522_def, tree10520_agree, tree10521_agree]
  rfl
theorem node10522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10522 live10522 coloured10522 = result10522 := by
  rw [tree10522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10520_eq
  unfold live10520 coloured10520 at child
  try dsimp only [live10522, coloured10522]
  rw [child]
  dsimp only [result10520]
  have child := node10521_eq
  unfold live10521 coloured10521 at child
  try dsimp only [live10522, coloured10522]
  rw [child]
  dsimp only [result10521]
  try dsimp only [colour, result10522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10523_agree : tree10523 = literal10523 := by
  rw [tree10523_def]
  rfl
theorem node10523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10523 live10523 coloured10523 = result10523 := by
  rw [tree10523_def]
  try dsimp only [colour, result10523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10524_agree : tree10524 = literal10524 := by
  rw [tree10524_def, tree10522_agree, tree10523_agree]
  rfl
theorem node10524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10524 live10524 coloured10524 = result10524 := by
  rw [tree10524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10522_eq
  unfold live10522 coloured10522 at child
  try dsimp only [live10524, coloured10524]
  rw [child]
  dsimp only [result10522]
  have child := node10523_eq
  unfold live10523 coloured10523 at child
  try dsimp only [live10524, coloured10524]
  rw [child]
  dsimp only [result10523]
  try dsimp only [colour, result10524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10525_agree : tree10525 = literal10525 := by
  rw [tree10525_def]
  rfl
theorem node10525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10525 live10525 coloured10525 = result10525 := by
  rw [tree10525_def]
  try dsimp only [colour, result10525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10526_agree : tree10526 = literal10526 := by
  rw [tree10526_def, tree10524_agree, tree10525_agree]
  rfl
theorem node10526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10526 live10526 coloured10526 = result10526 := by
  rw [tree10526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10524_eq
  unfold live10524 coloured10524 at child
  try dsimp only [live10526, coloured10526]
  rw [child]
  dsimp only [result10524]
  have child := node10525_eq
  unfold live10525 coloured10525 at child
  try dsimp only [live10526, coloured10526]
  rw [child]
  dsimp only [result10525]
  try dsimp only [colour, result10526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10527_agree : tree10527 = literal10527 := by
  rw [tree10527_def]
  rfl
theorem node10527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10527 live10527 coloured10527 = result10527 := by
  rw [tree10527_def]
  try dsimp only [colour, result10527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10528_agree : tree10528 = literal10528 := by
  rw [tree10528_def, tree10526_agree, tree10527_agree]
  rfl
theorem node10528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10528 live10528 coloured10528 = result10528 := by
  rw [tree10528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10526_eq
  unfold live10526 coloured10526 at child
  try dsimp only [live10528, coloured10528]
  rw [child]
  dsimp only [result10526]
  have child := node10527_eq
  unfold live10527 coloured10527 at child
  try dsimp only [live10528, coloured10528]
  rw [child]
  dsimp only [result10527]
  try dsimp only [colour, result10528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10529_agree : tree10529 = literal10529 := by
  rw [tree10529_def]
  rfl
theorem node10529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10529 live10529 coloured10529 = result10529 := by
  rw [tree10529_def]
  try dsimp only [colour, result10529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10530_agree : tree10530 = literal10530 := by
  rw [tree10530_def, tree10528_agree, tree10529_agree]
  rfl
theorem node10530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10530 live10530 coloured10530 = result10530 := by
  rw [tree10530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10528_eq
  unfold live10528 coloured10528 at child
  try dsimp only [live10530, coloured10530]
  rw [child]
  dsimp only [result10528]
  have child := node10529_eq
  unfold live10529 coloured10529 at child
  try dsimp only [live10530, coloured10530]
  rw [child]
  dsimp only [result10529]
  try dsimp only [colour, result10530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10531_agree : tree10531 = literal10531 := by
  rw [tree10531_def]
  rfl
theorem node10531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10531 live10531 coloured10531 = result10531 := by
  rw [tree10531_def]
  try dsimp only [colour, result10531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10532_agree : tree10532 = literal10532 := by
  rw [tree10532_def, tree10530_agree, tree10531_agree]
  rfl
theorem node10532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10532 live10532 coloured10532 = result10532 := by
  rw [tree10532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10530_eq
  unfold live10530 coloured10530 at child
  try dsimp only [live10532, coloured10532]
  rw [child]
  dsimp only [result10530]
  have child := node10531_eq
  unfold live10531 coloured10531 at child
  try dsimp only [live10532, coloured10532]
  rw [child]
  dsimp only [result10531]
  try dsimp only [colour, result10532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10533_agree : tree10533 = literal10533 := by
  rw [tree10533_def]
  rfl
theorem node10533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10533 live10533 coloured10533 = result10533 := by
  rw [tree10533_def]
  try dsimp only [colour, result10533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10534_agree : tree10534 = literal10534 := by
  rw [tree10534_def, tree10532_agree, tree10533_agree]
  rfl
theorem node10534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10534 live10534 coloured10534 = result10534 := by
  rw [tree10534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10532_eq
  unfold live10532 coloured10532 at child
  try dsimp only [live10534, coloured10534]
  rw [child]
  dsimp only [result10532]
  have child := node10533_eq
  unfold live10533 coloured10533 at child
  try dsimp only [live10534, coloured10534]
  rw [child]
  dsimp only [result10533]
  try dsimp only [colour, result10534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10535_agree : tree10535 = literal10535 := by
  rw [tree10535_def]
  rfl
theorem node10535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10535 live10535 coloured10535 = result10535 := by
  rw [tree10535_def]
  try dsimp only [colour, result10535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10536_agree : tree10536 = literal10536 := by
  rw [tree10536_def, tree10534_agree, tree10535_agree]
  rfl
theorem node10536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10536 live10536 coloured10536 = result10536 := by
  rw [tree10536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10534_eq
  unfold live10534 coloured10534 at child
  try dsimp only [live10536, coloured10536]
  rw [child]
  dsimp only [result10534]
  have child := node10535_eq
  unfold live10535 coloured10535 at child
  try dsimp only [live10536, coloured10536]
  rw [child]
  dsimp only [result10535]
  try dsimp only [colour, result10536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10537_agree : tree10537 = literal10537 := by
  rw [tree10537_def]
  rfl
theorem node10537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10537 live10537 coloured10537 = result10537 := by
  rw [tree10537_def]
  try dsimp only [colour, result10537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10538_agree : tree10538 = literal10538 := by
  rw [tree10538_def, tree10536_agree, tree10537_agree]
  rfl
theorem node10538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10538 live10538 coloured10538 = result10538 := by
  rw [tree10538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10536_eq
  unfold live10536 coloured10536 at child
  try dsimp only [live10538, coloured10538]
  rw [child]
  dsimp only [result10536]
  have child := node10537_eq
  unfold live10537 coloured10537 at child
  try dsimp only [live10538, coloured10538]
  rw [child]
  dsimp only [result10537]
  try dsimp only [colour, result10538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10539_agree : tree10539 = literal10539 := by
  rw [tree10539_def]
  rfl
theorem node10539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10539 live10539 coloured10539 = result10539 := by
  rw [tree10539_def]
  try dsimp only [colour, result10539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10540_agree : tree10540 = literal10540 := by
  rw [tree10540_def, tree10538_agree, tree10539_agree]
  rfl
theorem node10540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10540 live10540 coloured10540 = result10540 := by
  rw [tree10540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10538_eq
  unfold live10538 coloured10538 at child
  try dsimp only [live10540, coloured10540]
  rw [child]
  dsimp only [result10538]
  have child := node10539_eq
  unfold live10539 coloured10539 at child
  try dsimp only [live10540, coloured10540]
  rw [child]
  dsimp only [result10539]
  try dsimp only [colour, result10540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10541_agree : tree10541 = literal10541 := by
  rw [tree10541_def]
  rfl
theorem node10541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10541 live10541 coloured10541 = result10541 := by
  rw [tree10541_def]
  try dsimp only [colour, result10541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10542_agree : tree10542 = literal10542 := by
  rw [tree10542_def, tree10540_agree, tree10541_agree]
  rfl
theorem node10542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10542 live10542 coloured10542 = result10542 := by
  rw [tree10542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10540_eq
  unfold live10540 coloured10540 at child
  try dsimp only [live10542, coloured10542]
  rw [child]
  dsimp only [result10540]
  have child := node10541_eq
  unfold live10541 coloured10541 at child
  try dsimp only [live10542, coloured10542]
  rw [child]
  dsimp only [result10541]
  try dsimp only [colour, result10542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10543_agree : tree10543 = literal10543 := by
  rw [tree10543_def]
  rfl
theorem node10543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10543 live10543 coloured10543 = result10543 := by
  rw [tree10543_def]
  try dsimp only [colour, result10543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10544_agree : tree10544 = literal10544 := by
  rw [tree10544_def, tree10542_agree, tree10543_agree]
  rfl
theorem node10544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10544 live10544 coloured10544 = result10544 := by
  rw [tree10544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10542_eq
  unfold live10542 coloured10542 at child
  try dsimp only [live10544, coloured10544]
  rw [child]
  dsimp only [result10542]
  have child := node10543_eq
  unfold live10543 coloured10543 at child
  try dsimp only [live10544, coloured10544]
  rw [child]
  dsimp only [result10543]
  try dsimp only [colour, result10544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10545_agree : tree10545 = literal10545 := by
  rw [tree10545_def]
  rfl
theorem node10545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10545 live10545 coloured10545 = result10545 := by
  rw [tree10545_def]
  try dsimp only [colour, result10545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10546_agree : tree10546 = literal10546 := by
  rw [tree10546_def, tree10544_agree, tree10545_agree]
  rfl
theorem node10546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10546 live10546 coloured10546 = result10546 := by
  rw [tree10546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10544_eq
  unfold live10544 coloured10544 at child
  try dsimp only [live10546, coloured10546]
  rw [child]
  dsimp only [result10544]
  have child := node10545_eq
  unfold live10545 coloured10545 at child
  try dsimp only [live10546, coloured10546]
  rw [child]
  dsimp only [result10545]
  try dsimp only [colour, result10546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10547_agree : tree10547 = literal10547 := by
  rw [tree10547_def]
  rfl
theorem node10547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10547 live10547 coloured10547 = result10547 := by
  rw [tree10547_def]
  try dsimp only [colour, result10547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10548_agree : tree10548 = literal10548 := by
  rw [tree10548_def, tree10546_agree, tree10547_agree]
  rfl
theorem node10548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10548 live10548 coloured10548 = result10548 := by
  rw [tree10548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10546_eq
  unfold live10546 coloured10546 at child
  try dsimp only [live10548, coloured10548]
  rw [child]
  dsimp only [result10546]
  have child := node10547_eq
  unfold live10547 coloured10547 at child
  try dsimp only [live10548, coloured10548]
  rw [child]
  dsimp only [result10547]
  try dsimp only [colour, result10548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10549_agree : tree10549 = literal10549 := by
  rw [tree10549_def]
  rfl
theorem node10549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10549 live10549 coloured10549 = result10549 := by
  rw [tree10549_def]
  try dsimp only [colour, result10549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10550_agree : tree10550 = literal10550 := by
  rw [tree10550_def, tree10548_agree, tree10549_agree]
  rfl
theorem node10550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10550 live10550 coloured10550 = result10550 := by
  rw [tree10550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10548_eq
  unfold live10548 coloured10548 at child
  try dsimp only [live10550, coloured10550]
  rw [child]
  dsimp only [result10548]
  have child := node10549_eq
  unfold live10549 coloured10549 at child
  try dsimp only [live10550, coloured10550]
  rw [child]
  dsimp only [result10549]
  try dsimp only [colour, result10550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10551_agree : tree10551 = literal10551 := by
  rw [tree10551_def]
  rfl
theorem node10551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10551 live10551 coloured10551 = result10551 := by
  rw [tree10551_def]
  try dsimp only [colour, result10551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10552_agree : tree10552 = literal10552 := by
  rw [tree10552_def, tree10550_agree, tree10551_agree]
  rfl
theorem node10552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10552 live10552 coloured10552 = result10552 := by
  rw [tree10552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10550_eq
  unfold live10550 coloured10550 at child
  try dsimp only [live10552, coloured10552]
  rw [child]
  dsimp only [result10550]
  have child := node10551_eq
  unfold live10551 coloured10551 at child
  try dsimp only [live10552, coloured10552]
  rw [child]
  dsimp only [result10551]
  try dsimp only [colour, result10552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10553_agree : tree10553 = literal10553 := by
  rw [tree10553_def]
  rfl
theorem node10553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10553 live10553 coloured10553 = result10553 := by
  rw [tree10553_def]
  try dsimp only [colour, result10553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10554_agree : tree10554 = literal10554 := by
  rw [tree10554_def, tree10552_agree, tree10553_agree]
  rfl
theorem node10554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10554 live10554 coloured10554 = result10554 := by
  rw [tree10554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10552_eq
  unfold live10552 coloured10552 at child
  try dsimp only [live10554, coloured10554]
  rw [child]
  dsimp only [result10552]
  have child := node10553_eq
  unfold live10553 coloured10553 at child
  try dsimp only [live10554, coloured10554]
  rw [child]
  dsimp only [result10553]
  try dsimp only [colour, result10554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10555_agree : tree10555 = literal10555 := by
  rw [tree10555_def]
  rfl
theorem node10555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10555 live10555 coloured10555 = result10555 := by
  rw [tree10555_def]
  try dsimp only [colour, result10555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10556_agree : tree10556 = literal10556 := by
  rw [tree10556_def, tree10554_agree, tree10555_agree]
  rfl
theorem node10556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10556 live10556 coloured10556 = result10556 := by
  rw [tree10556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10554_eq
  unfold live10554 coloured10554 at child
  try dsimp only [live10556, coloured10556]
  rw [child]
  dsimp only [result10554]
  have child := node10555_eq
  unfold live10555 coloured10555 at child
  try dsimp only [live10556, coloured10556]
  rw [child]
  dsimp only [result10555]
  try dsimp only [colour, result10556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10557_agree : tree10557 = literal10557 := by
  rw [tree10557_def]
  rfl
theorem node10557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10557 live10557 coloured10557 = result10557 := by
  rw [tree10557_def]
  try dsimp only [colour, result10557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10558_agree : tree10558 = literal10558 := by
  rw [tree10558_def, tree10556_agree, tree10557_agree]
  rfl
theorem node10558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10558 live10558 coloured10558 = result10558 := by
  rw [tree10558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10556_eq
  unfold live10556 coloured10556 at child
  try dsimp only [live10558, coloured10558]
  rw [child]
  dsimp only [result10556]
  have child := node10557_eq
  unfold live10557 coloured10557 at child
  try dsimp only [live10558, coloured10558]
  rw [child]
  dsimp only [result10557]
  try dsimp only [colour, result10558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10559_agree : tree10559 = literal10559 := by
  rw [tree10559_def]
  rfl
theorem node10559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10559 live10559 coloured10559 = result10559 := by
  rw [tree10559_def]
  try dsimp only [colour, result10559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
