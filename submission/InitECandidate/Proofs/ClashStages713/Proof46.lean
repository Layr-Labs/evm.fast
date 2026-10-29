import InitECandidate.Proofs.ClashStages713.Proof45
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree4416_agree : tree4416 = literal4416 := by
  rw [tree4416_def, tree4414_agree, tree4415_agree]
  rfl
theorem node4416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4416 live4416 coloured4416 = result4416 := by
  rw [tree4416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4414_eq
  unfold live4414 coloured4414 at child
  try dsimp only [live4416, coloured4416]
  rw [child]
  dsimp only [result4414]
  have child := node4415_eq
  unfold live4415 coloured4415 at child
  try dsimp only [live4416, coloured4416]
  rw [child]
  dsimp only [result4415]
  try dsimp only [colour, result4416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4417_agree : tree4417 = literal4417 := by
  rw [tree4417_def]
  rfl
theorem node4417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4417 live4417 coloured4417 = result4417 := by
  rw [tree4417_def]
  try dsimp only [colour, result4417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4418_agree : tree4418 = literal4418 := by
  rw [tree4418_def, tree4416_agree, tree4417_agree]
  rfl
theorem node4418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4418 live4418 coloured4418 = result4418 := by
  rw [tree4418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4416_eq
  unfold live4416 coloured4416 at child
  try dsimp only [live4418, coloured4418]
  rw [child]
  dsimp only [result4416]
  have child := node4417_eq
  unfold live4417 coloured4417 at child
  try dsimp only [live4418, coloured4418]
  rw [child]
  dsimp only [result4417]
  try dsimp only [colour, result4418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4419_agree : tree4419 = literal4419 := by
  rw [tree4419_def]
  rfl
theorem node4419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4419 live4419 coloured4419 = result4419 := by
  rw [tree4419_def]
  try dsimp only [colour, result4419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4420_agree : tree4420 = literal4420 := by
  rw [tree4420_def, tree4418_agree, tree4419_agree]
  rfl
theorem node4420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4420 live4420 coloured4420 = result4420 := by
  rw [tree4420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4418_eq
  unfold live4418 coloured4418 at child
  try dsimp only [live4420, coloured4420]
  rw [child]
  dsimp only [result4418]
  have child := node4419_eq
  unfold live4419 coloured4419 at child
  try dsimp only [live4420, coloured4420]
  rw [child]
  dsimp only [result4419]
  try dsimp only [colour, result4420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4421_agree : tree4421 = literal4421 := by
  rw [tree4421_def]
  rfl
theorem node4421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4421 live4421 coloured4421 = result4421 := by
  rw [tree4421_def]
  try dsimp only [colour, result4421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4422_agree : tree4422 = literal4422 := by
  rw [tree4422_def, tree4420_agree, tree4421_agree]
  rfl
theorem node4422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4422 live4422 coloured4422 = result4422 := by
  rw [tree4422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4420_eq
  unfold live4420 coloured4420 at child
  try dsimp only [live4422, coloured4422]
  rw [child]
  dsimp only [result4420]
  have child := node4421_eq
  unfold live4421 coloured4421 at child
  try dsimp only [live4422, coloured4422]
  rw [child]
  dsimp only [result4421]
  try dsimp only [colour, result4422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4423_agree : tree4423 = literal4423 := by
  rw [tree4423_def]
  rfl
theorem node4423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4423 live4423 coloured4423 = result4423 := by
  rw [tree4423_def]
  try dsimp only [colour, result4423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4424_agree : tree4424 = literal4424 := by
  rw [tree4424_def, tree4422_agree, tree4423_agree]
  rfl
theorem node4424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4424 live4424 coloured4424 = result4424 := by
  rw [tree4424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4422_eq
  unfold live4422 coloured4422 at child
  try dsimp only [live4424, coloured4424]
  rw [child]
  dsimp only [result4422]
  have child := node4423_eq
  unfold live4423 coloured4423 at child
  try dsimp only [live4424, coloured4424]
  rw [child]
  dsimp only [result4423]
  try dsimp only [colour, result4424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4425_agree : tree4425 = literal4425 := by
  rw [tree4425_def]
  rfl
theorem node4425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4425 live4425 coloured4425 = result4425 := by
  rw [tree4425_def]
  try dsimp only [colour, result4425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4426_agree : tree4426 = literal4426 := by
  rw [tree4426_def, tree4424_agree, tree4425_agree]
  rfl
theorem node4426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4426 live4426 coloured4426 = result4426 := by
  rw [tree4426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4424_eq
  unfold live4424 coloured4424 at child
  try dsimp only [live4426, coloured4426]
  rw [child]
  dsimp only [result4424]
  have child := node4425_eq
  unfold live4425 coloured4425 at child
  try dsimp only [live4426, coloured4426]
  rw [child]
  dsimp only [result4425]
  try dsimp only [colour, result4426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4427_agree : tree4427 = literal4427 := by
  rw [tree4427_def]
  rfl
theorem node4427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4427 live4427 coloured4427 = result4427 := by
  rw [tree4427_def]
  try dsimp only [colour, result4427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4428_agree : tree4428 = literal4428 := by
  rw [tree4428_def, tree4426_agree, tree4427_agree]
  rfl
theorem node4428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4428 live4428 coloured4428 = result4428 := by
  rw [tree4428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4426_eq
  unfold live4426 coloured4426 at child
  try dsimp only [live4428, coloured4428]
  rw [child]
  dsimp only [result4426]
  have child := node4427_eq
  unfold live4427 coloured4427 at child
  try dsimp only [live4428, coloured4428]
  rw [child]
  dsimp only [result4427]
  try dsimp only [colour, result4428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4429_agree : tree4429 = literal4429 := by
  rw [tree4429_def]
  rfl
theorem node4429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4429 live4429 coloured4429 = result4429 := by
  rw [tree4429_def]
  try dsimp only [colour, result4429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4430_agree : tree4430 = literal4430 := by
  rw [tree4430_def, tree4428_agree, tree4429_agree]
  rfl
theorem node4430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4430 live4430 coloured4430 = result4430 := by
  rw [tree4430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4428_eq
  unfold live4428 coloured4428 at child
  try dsimp only [live4430, coloured4430]
  rw [child]
  dsimp only [result4428]
  have child := node4429_eq
  unfold live4429 coloured4429 at child
  try dsimp only [live4430, coloured4430]
  rw [child]
  dsimp only [result4429]
  try dsimp only [colour, result4430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4431_agree : tree4431 = literal4431 := by
  rw [tree4431_def]
  rfl
theorem node4431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4431 live4431 coloured4431 = result4431 := by
  rw [tree4431_def]
  try dsimp only [colour, result4431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4432_agree : tree4432 = literal4432 := by
  rw [tree4432_def, tree4430_agree, tree4431_agree]
  rfl
theorem node4432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4432 live4432 coloured4432 = result4432 := by
  rw [tree4432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4430_eq
  unfold live4430 coloured4430 at child
  try dsimp only [live4432, coloured4432]
  rw [child]
  dsimp only [result4430]
  have child := node4431_eq
  unfold live4431 coloured4431 at child
  try dsimp only [live4432, coloured4432]
  rw [child]
  dsimp only [result4431]
  try dsimp only [colour, result4432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4433_agree : tree4433 = literal4433 := by
  rw [tree4433_def]
  rfl
theorem node4433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4433 live4433 coloured4433 = result4433 := by
  rw [tree4433_def]
  try dsimp only [colour, result4433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4434_agree : tree4434 = literal4434 := by
  rw [tree4434_def, tree4432_agree, tree4433_agree]
  rfl
theorem node4434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4434 live4434 coloured4434 = result4434 := by
  rw [tree4434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4432_eq
  unfold live4432 coloured4432 at child
  try dsimp only [live4434, coloured4434]
  rw [child]
  dsimp only [result4432]
  have child := node4433_eq
  unfold live4433 coloured4433 at child
  try dsimp only [live4434, coloured4434]
  rw [child]
  dsimp only [result4433]
  try dsimp only [colour, result4434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4435_agree : tree4435 = literal4435 := by
  rw [tree4435_def]
  rfl
theorem node4435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4435 live4435 coloured4435 = result4435 := by
  rw [tree4435_def]
  try dsimp only [colour, result4435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4436_agree : tree4436 = literal4436 := by
  rw [tree4436_def, tree4434_agree, tree4435_agree]
  rfl
theorem node4436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4436 live4436 coloured4436 = result4436 := by
  rw [tree4436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4434_eq
  unfold live4434 coloured4434 at child
  try dsimp only [live4436, coloured4436]
  rw [child]
  dsimp only [result4434]
  have child := node4435_eq
  unfold live4435 coloured4435 at child
  try dsimp only [live4436, coloured4436]
  rw [child]
  dsimp only [result4435]
  try dsimp only [colour, result4436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4437_agree : tree4437 = literal4437 := by
  rw [tree4437_def]
  rfl
theorem node4437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4437 live4437 coloured4437 = result4437 := by
  rw [tree4437_def]
  try dsimp only [colour, result4437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4438_agree : tree4438 = literal4438 := by
  rw [tree4438_def, tree4436_agree, tree4437_agree]
  rfl
theorem node4438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4438 live4438 coloured4438 = result4438 := by
  rw [tree4438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4436_eq
  unfold live4436 coloured4436 at child
  try dsimp only [live4438, coloured4438]
  rw [child]
  dsimp only [result4436]
  have child := node4437_eq
  unfold live4437 coloured4437 at child
  try dsimp only [live4438, coloured4438]
  rw [child]
  dsimp only [result4437]
  try dsimp only [colour, result4438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4439_agree : tree4439 = literal4439 := by
  rw [tree4439_def]
  rfl
theorem node4439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4439 live4439 coloured4439 = result4439 := by
  rw [tree4439_def]
  try dsimp only [colour, result4439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4440_agree : tree4440 = literal4440 := by
  rw [tree4440_def, tree4438_agree, tree4439_agree]
  rfl
theorem node4440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4440 live4440 coloured4440 = result4440 := by
  rw [tree4440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4438_eq
  unfold live4438 coloured4438 at child
  try dsimp only [live4440, coloured4440]
  rw [child]
  dsimp only [result4438]
  have child := node4439_eq
  unfold live4439 coloured4439 at child
  try dsimp only [live4440, coloured4440]
  rw [child]
  dsimp only [result4439]
  try dsimp only [colour, result4440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4441_agree : tree4441 = literal4441 := by
  rw [tree4441_def]
  rfl
theorem node4441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4441 live4441 coloured4441 = result4441 := by
  rw [tree4441_def]
  try dsimp only [colour, result4441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4442_agree : tree4442 = literal4442 := by
  rw [tree4442_def, tree4440_agree, tree4441_agree]
  rfl
theorem node4442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4442 live4442 coloured4442 = result4442 := by
  rw [tree4442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4440_eq
  unfold live4440 coloured4440 at child
  try dsimp only [live4442, coloured4442]
  rw [child]
  dsimp only [result4440]
  have child := node4441_eq
  unfold live4441 coloured4441 at child
  try dsimp only [live4442, coloured4442]
  rw [child]
  dsimp only [result4441]
  try dsimp only [colour, result4442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4443_agree : tree4443 = literal4443 := by
  rw [tree4443_def]
  rfl
theorem node4443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4443 live4443 coloured4443 = result4443 := by
  rw [tree4443_def]
  try dsimp only [colour, result4443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4444_agree : tree4444 = literal4444 := by
  rw [tree4444_def, tree4442_agree, tree4443_agree]
  rfl
theorem node4444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4444 live4444 coloured4444 = result4444 := by
  rw [tree4444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4442_eq
  unfold live4442 coloured4442 at child
  try dsimp only [live4444, coloured4444]
  rw [child]
  dsimp only [result4442]
  have child := node4443_eq
  unfold live4443 coloured4443 at child
  try dsimp only [live4444, coloured4444]
  rw [child]
  dsimp only [result4443]
  try dsimp only [colour, result4444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4445_agree : tree4445 = literal4445 := by
  rw [tree4445_def]
  rfl
theorem node4445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4445 live4445 coloured4445 = result4445 := by
  rw [tree4445_def]
  try dsimp only [colour, result4445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4446_agree : tree4446 = literal4446 := by
  rw [tree4446_def, tree4444_agree, tree4445_agree]
  rfl
theorem node4446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4446 live4446 coloured4446 = result4446 := by
  rw [tree4446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4444_eq
  unfold live4444 coloured4444 at child
  try dsimp only [live4446, coloured4446]
  rw [child]
  dsimp only [result4444]
  have child := node4445_eq
  unfold live4445 coloured4445 at child
  try dsimp only [live4446, coloured4446]
  rw [child]
  dsimp only [result4445]
  try dsimp only [colour, result4446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4447_agree : tree4447 = literal4447 := by
  rw [tree4447_def]
  rfl
theorem node4447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4447 live4447 coloured4447 = result4447 := by
  rw [tree4447_def]
  try dsimp only [colour, result4447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4448_agree : tree4448 = literal4448 := by
  rw [tree4448_def, tree4446_agree, tree4447_agree]
  rfl
theorem node4448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4448 live4448 coloured4448 = result4448 := by
  rw [tree4448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4446_eq
  unfold live4446 coloured4446 at child
  try dsimp only [live4448, coloured4448]
  rw [child]
  dsimp only [result4446]
  have child := node4447_eq
  unfold live4447 coloured4447 at child
  try dsimp only [live4448, coloured4448]
  rw [child]
  dsimp only [result4447]
  try dsimp only [colour, result4448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4449_agree : tree4449 = literal4449 := by
  rw [tree4449_def]
  rfl
theorem node4449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4449 live4449 coloured4449 = result4449 := by
  rw [tree4449_def]
  try dsimp only [colour, result4449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4450_agree : tree4450 = literal4450 := by
  rw [tree4450_def, tree4448_agree, tree4449_agree]
  rfl
theorem node4450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4450 live4450 coloured4450 = result4450 := by
  rw [tree4450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4448_eq
  unfold live4448 coloured4448 at child
  try dsimp only [live4450, coloured4450]
  rw [child]
  dsimp only [result4448]
  have child := node4449_eq
  unfold live4449 coloured4449 at child
  try dsimp only [live4450, coloured4450]
  rw [child]
  dsimp only [result4449]
  try dsimp only [colour, result4450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4451_agree : tree4451 = literal4451 := by
  rw [tree4451_def]
  rfl
theorem node4451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4451 live4451 coloured4451 = result4451 := by
  rw [tree4451_def]
  try dsimp only [colour, result4451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4452_agree : tree4452 = literal4452 := by
  rw [tree4452_def, tree4450_agree, tree4451_agree]
  rfl
theorem node4452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4452 live4452 coloured4452 = result4452 := by
  rw [tree4452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4450_eq
  unfold live4450 coloured4450 at child
  try dsimp only [live4452, coloured4452]
  rw [child]
  dsimp only [result4450]
  have child := node4451_eq
  unfold live4451 coloured4451 at child
  try dsimp only [live4452, coloured4452]
  rw [child]
  dsimp only [result4451]
  try dsimp only [colour, result4452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4453_agree : tree4453 = literal4453 := by
  rw [tree4453_def]
  rfl
theorem node4453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4453 live4453 coloured4453 = result4453 := by
  rw [tree4453_def]
  try dsimp only [colour, result4453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4454_agree : tree4454 = literal4454 := by
  rw [tree4454_def, tree4452_agree, tree4453_agree]
  rfl
theorem node4454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4454 live4454 coloured4454 = result4454 := by
  rw [tree4454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4452_eq
  unfold live4452 coloured4452 at child
  try dsimp only [live4454, coloured4454]
  rw [child]
  dsimp only [result4452]
  have child := node4453_eq
  unfold live4453 coloured4453 at child
  try dsimp only [live4454, coloured4454]
  rw [child]
  dsimp only [result4453]
  try dsimp only [colour, result4454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4455_agree : tree4455 = literal4455 := by
  rw [tree4455_def]
  rfl
theorem node4455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4455 live4455 coloured4455 = result4455 := by
  rw [tree4455_def]
  try dsimp only [colour, result4455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4456_agree : tree4456 = literal4456 := by
  rw [tree4456_def, tree4454_agree, tree4455_agree]
  rfl
theorem node4456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4456 live4456 coloured4456 = result4456 := by
  rw [tree4456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4454_eq
  unfold live4454 coloured4454 at child
  try dsimp only [live4456, coloured4456]
  rw [child]
  dsimp only [result4454]
  have child := node4455_eq
  unfold live4455 coloured4455 at child
  try dsimp only [live4456, coloured4456]
  rw [child]
  dsimp only [result4455]
  try dsimp only [colour, result4456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4457_agree : tree4457 = literal4457 := by
  rw [tree4457_def]
  rfl
theorem node4457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4457 live4457 coloured4457 = result4457 := by
  rw [tree4457_def]
  try dsimp only [colour, result4457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4458_agree : tree4458 = literal4458 := by
  rw [tree4458_def, tree4456_agree, tree4457_agree]
  rfl
theorem node4458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4458 live4458 coloured4458 = result4458 := by
  rw [tree4458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4456_eq
  unfold live4456 coloured4456 at child
  try dsimp only [live4458, coloured4458]
  rw [child]
  dsimp only [result4456]
  have child := node4457_eq
  unfold live4457 coloured4457 at child
  try dsimp only [live4458, coloured4458]
  rw [child]
  dsimp only [result4457]
  try dsimp only [colour, result4458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4459_agree : tree4459 = literal4459 := by
  rw [tree4459_def]
  rfl
theorem node4459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4459 live4459 coloured4459 = result4459 := by
  rw [tree4459_def]
  try dsimp only [colour, result4459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4460_agree : tree4460 = literal4460 := by
  rw [tree4460_def, tree4458_agree, tree4459_agree]
  rfl
theorem node4460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4460 live4460 coloured4460 = result4460 := by
  rw [tree4460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4458_eq
  unfold live4458 coloured4458 at child
  try dsimp only [live4460, coloured4460]
  rw [child]
  dsimp only [result4458]
  have child := node4459_eq
  unfold live4459 coloured4459 at child
  try dsimp only [live4460, coloured4460]
  rw [child]
  dsimp only [result4459]
  try dsimp only [colour, result4460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4461_agree : tree4461 = literal4461 := by
  rw [tree4461_def]
  rfl
theorem node4461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4461 live4461 coloured4461 = result4461 := by
  rw [tree4461_def]
  try dsimp only [colour, result4461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4462_agree : tree4462 = literal4462 := by
  rw [tree4462_def, tree4460_agree, tree4461_agree]
  rfl
theorem node4462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4462 live4462 coloured4462 = result4462 := by
  rw [tree4462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4460_eq
  unfold live4460 coloured4460 at child
  try dsimp only [live4462, coloured4462]
  rw [child]
  dsimp only [result4460]
  have child := node4461_eq
  unfold live4461 coloured4461 at child
  try dsimp only [live4462, coloured4462]
  rw [child]
  dsimp only [result4461]
  try dsimp only [colour, result4462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4463_agree : tree4463 = literal4463 := by
  rw [tree4463_def]
  rfl
theorem node4463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4463 live4463 coloured4463 = result4463 := by
  rw [tree4463_def]
  try dsimp only [colour, result4463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4464_agree : tree4464 = literal4464 := by
  rw [tree4464_def, tree4462_agree, tree4463_agree]
  rfl
theorem node4464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4464 live4464 coloured4464 = result4464 := by
  rw [tree4464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4462_eq
  unfold live4462 coloured4462 at child
  try dsimp only [live4464, coloured4464]
  rw [child]
  dsimp only [result4462]
  have child := node4463_eq
  unfold live4463 coloured4463 at child
  try dsimp only [live4464, coloured4464]
  rw [child]
  dsimp only [result4463]
  try dsimp only [colour, result4464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4465_agree : tree4465 = literal4465 := by
  rw [tree4465_def]
  rfl
theorem node4465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4465 live4465 coloured4465 = result4465 := by
  rw [tree4465_def]
  try dsimp only [colour, result4465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4466_agree : tree4466 = literal4466 := by
  rw [tree4466_def, tree4464_agree, tree4465_agree]
  rfl
theorem node4466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4466 live4466 coloured4466 = result4466 := by
  rw [tree4466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4464_eq
  unfold live4464 coloured4464 at child
  try dsimp only [live4466, coloured4466]
  rw [child]
  dsimp only [result4464]
  have child := node4465_eq
  unfold live4465 coloured4465 at child
  try dsimp only [live4466, coloured4466]
  rw [child]
  dsimp only [result4465]
  try dsimp only [colour, result4466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4467_agree : tree4467 = literal4467 := by
  rw [tree4467_def]
  rfl
theorem node4467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4467 live4467 coloured4467 = result4467 := by
  rw [tree4467_def]
  try dsimp only [colour, result4467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4468_agree : tree4468 = literal4468 := by
  rw [tree4468_def, tree4466_agree, tree4467_agree]
  rfl
theorem node4468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4468 live4468 coloured4468 = result4468 := by
  rw [tree4468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4466_eq
  unfold live4466 coloured4466 at child
  try dsimp only [live4468, coloured4468]
  rw [child]
  dsimp only [result4466]
  have child := node4467_eq
  unfold live4467 coloured4467 at child
  try dsimp only [live4468, coloured4468]
  rw [child]
  dsimp only [result4467]
  try dsimp only [colour, result4468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4469_agree : tree4469 = literal4469 := by
  rw [tree4469_def]
  rfl
theorem node4469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4469 live4469 coloured4469 = result4469 := by
  rw [tree4469_def]
  try dsimp only [colour, result4469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4470_agree : tree4470 = literal4470 := by
  rw [tree4470_def, tree4468_agree, tree4469_agree]
  rfl
theorem node4470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4470 live4470 coloured4470 = result4470 := by
  rw [tree4470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4468_eq
  unfold live4468 coloured4468 at child
  try dsimp only [live4470, coloured4470]
  rw [child]
  dsimp only [result4468]
  have child := node4469_eq
  unfold live4469 coloured4469 at child
  try dsimp only [live4470, coloured4470]
  rw [child]
  dsimp only [result4469]
  try dsimp only [colour, result4470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4471_agree : tree4471 = literal4471 := by
  rw [tree4471_def]
  rfl
theorem node4471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4471 live4471 coloured4471 = result4471 := by
  rw [tree4471_def]
  try dsimp only [colour, result4471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4472_agree : tree4472 = literal4472 := by
  rw [tree4472_def, tree4470_agree, tree4471_agree]
  rfl
theorem node4472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4472 live4472 coloured4472 = result4472 := by
  rw [tree4472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4470_eq
  unfold live4470 coloured4470 at child
  try dsimp only [live4472, coloured4472]
  rw [child]
  dsimp only [result4470]
  have child := node4471_eq
  unfold live4471 coloured4471 at child
  try dsimp only [live4472, coloured4472]
  rw [child]
  dsimp only [result4471]
  try dsimp only [colour, result4472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4473_agree : tree4473 = literal4473 := by
  rw [tree4473_def]
  rfl
theorem node4473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4473 live4473 coloured4473 = result4473 := by
  rw [tree4473_def]
  try dsimp only [colour, result4473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4474_agree : tree4474 = literal4474 := by
  rw [tree4474_def, tree4472_agree, tree4473_agree]
  rfl
theorem node4474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4474 live4474 coloured4474 = result4474 := by
  rw [tree4474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4472_eq
  unfold live4472 coloured4472 at child
  try dsimp only [live4474, coloured4474]
  rw [child]
  dsimp only [result4472]
  have child := node4473_eq
  unfold live4473 coloured4473 at child
  try dsimp only [live4474, coloured4474]
  rw [child]
  dsimp only [result4473]
  try dsimp only [colour, result4474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4475_agree : tree4475 = literal4475 := by
  rw [tree4475_def]
  rfl
theorem node4475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4475 live4475 coloured4475 = result4475 := by
  rw [tree4475_def]
  try dsimp only [colour, result4475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4476_agree : tree4476 = literal4476 := by
  rw [tree4476_def, tree4474_agree, tree4475_agree]
  rfl
theorem node4476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4476 live4476 coloured4476 = result4476 := by
  rw [tree4476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4474_eq
  unfold live4474 coloured4474 at child
  try dsimp only [live4476, coloured4476]
  rw [child]
  dsimp only [result4474]
  have child := node4475_eq
  unfold live4475 coloured4475 at child
  try dsimp only [live4476, coloured4476]
  rw [child]
  dsimp only [result4475]
  try dsimp only [colour, result4476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4477_agree : tree4477 = literal4477 := by
  rw [tree4477_def]
  rfl
theorem node4477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4477 live4477 coloured4477 = result4477 := by
  rw [tree4477_def]
  try dsimp only [colour, result4477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4478_agree : tree4478 = literal4478 := by
  rw [tree4478_def, tree4476_agree, tree4477_agree]
  rfl
theorem node4478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4478 live4478 coloured4478 = result4478 := by
  rw [tree4478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4476_eq
  unfold live4476 coloured4476 at child
  try dsimp only [live4478, coloured4478]
  rw [child]
  dsimp only [result4476]
  have child := node4477_eq
  unfold live4477 coloured4477 at child
  try dsimp only [live4478, coloured4478]
  rw [child]
  dsimp only [result4477]
  try dsimp only [colour, result4478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4479_agree : tree4479 = literal4479 := by
  rw [tree4479_def]
  rfl
theorem node4479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4479 live4479 coloured4479 = result4479 := by
  rw [tree4479_def]
  try dsimp only [colour, result4479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4480_agree : tree4480 = literal4480 := by
  rw [tree4480_def, tree4478_agree, tree4479_agree]
  rfl
theorem node4480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4480 live4480 coloured4480 = result4480 := by
  rw [tree4480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4478_eq
  unfold live4478 coloured4478 at child
  try dsimp only [live4480, coloured4480]
  rw [child]
  dsimp only [result4478]
  have child := node4479_eq
  unfold live4479 coloured4479 at child
  try dsimp only [live4480, coloured4480]
  rw [child]
  dsimp only [result4479]
  try dsimp only [colour, result4480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4481_agree : tree4481 = literal4481 := by
  rw [tree4481_def]
  rfl
theorem node4481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4481 live4481 coloured4481 = result4481 := by
  rw [tree4481_def]
  try dsimp only [colour, result4481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4482_agree : tree4482 = literal4482 := by
  rw [tree4482_def, tree4480_agree, tree4481_agree]
  rfl
theorem node4482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4482 live4482 coloured4482 = result4482 := by
  rw [tree4482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4480_eq
  unfold live4480 coloured4480 at child
  try dsimp only [live4482, coloured4482]
  rw [child]
  dsimp only [result4480]
  have child := node4481_eq
  unfold live4481 coloured4481 at child
  try dsimp only [live4482, coloured4482]
  rw [child]
  dsimp only [result4481]
  try dsimp only [colour, result4482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4483_agree : tree4483 = literal4483 := by
  rw [tree4483_def]
  rfl
theorem node4483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4483 live4483 coloured4483 = result4483 := by
  rw [tree4483_def]
  try dsimp only [colour, result4483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4484_agree : tree4484 = literal4484 := by
  rw [tree4484_def, tree4482_agree, tree4483_agree]
  rfl
theorem node4484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4484 live4484 coloured4484 = result4484 := by
  rw [tree4484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4482_eq
  unfold live4482 coloured4482 at child
  try dsimp only [live4484, coloured4484]
  rw [child]
  dsimp only [result4482]
  have child := node4483_eq
  unfold live4483 coloured4483 at child
  try dsimp only [live4484, coloured4484]
  rw [child]
  dsimp only [result4483]
  try dsimp only [colour, result4484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4485_agree : tree4485 = literal4485 := by
  rw [tree4485_def]
  rfl
theorem node4485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4485 live4485 coloured4485 = result4485 := by
  rw [tree4485_def]
  try dsimp only [colour, result4485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4486_agree : tree4486 = literal4486 := by
  rw [tree4486_def, tree4484_agree, tree4485_agree]
  rfl
theorem node4486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4486 live4486 coloured4486 = result4486 := by
  rw [tree4486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4484_eq
  unfold live4484 coloured4484 at child
  try dsimp only [live4486, coloured4486]
  rw [child]
  dsimp only [result4484]
  have child := node4485_eq
  unfold live4485 coloured4485 at child
  try dsimp only [live4486, coloured4486]
  rw [child]
  dsimp only [result4485]
  try dsimp only [colour, result4486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4487_agree : tree4487 = literal4487 := by
  rw [tree4487_def]
  rfl
theorem node4487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4487 live4487 coloured4487 = result4487 := by
  rw [tree4487_def]
  try dsimp only [colour, result4487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4488_agree : tree4488 = literal4488 := by
  rw [tree4488_def, tree4486_agree, tree4487_agree]
  rfl
theorem node4488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4488 live4488 coloured4488 = result4488 := by
  rw [tree4488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4486_eq
  unfold live4486 coloured4486 at child
  try dsimp only [live4488, coloured4488]
  rw [child]
  dsimp only [result4486]
  have child := node4487_eq
  unfold live4487 coloured4487 at child
  try dsimp only [live4488, coloured4488]
  rw [child]
  dsimp only [result4487]
  try dsimp only [colour, result4488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4489_agree : tree4489 = literal4489 := by
  rw [tree4489_def]
  rfl
theorem node4489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4489 live4489 coloured4489 = result4489 := by
  rw [tree4489_def]
  try dsimp only [colour, result4489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4490_agree : tree4490 = literal4490 := by
  rw [tree4490_def, tree4488_agree, tree4489_agree]
  rfl
theorem node4490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4490 live4490 coloured4490 = result4490 := by
  rw [tree4490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4488_eq
  unfold live4488 coloured4488 at child
  try dsimp only [live4490, coloured4490]
  rw [child]
  dsimp only [result4488]
  have child := node4489_eq
  unfold live4489 coloured4489 at child
  try dsimp only [live4490, coloured4490]
  rw [child]
  dsimp only [result4489]
  try dsimp only [colour, result4490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4491_agree : tree4491 = literal4491 := by
  rw [tree4491_def]
  rfl
theorem node4491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4491 live4491 coloured4491 = result4491 := by
  rw [tree4491_def]
  try dsimp only [colour, result4491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4492_agree : tree4492 = literal4492 := by
  rw [tree4492_def, tree4490_agree, tree4491_agree]
  rfl
theorem node4492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4492 live4492 coloured4492 = result4492 := by
  rw [tree4492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4490_eq
  unfold live4490 coloured4490 at child
  try dsimp only [live4492, coloured4492]
  rw [child]
  dsimp only [result4490]
  have child := node4491_eq
  unfold live4491 coloured4491 at child
  try dsimp only [live4492, coloured4492]
  rw [child]
  dsimp only [result4491]
  try dsimp only [colour, result4492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4493_agree : tree4493 = literal4493 := by
  rw [tree4493_def]
  rfl
theorem node4493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4493 live4493 coloured4493 = result4493 := by
  rw [tree4493_def]
  try dsimp only [colour, result4493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4494_agree : tree4494 = literal4494 := by
  rw [tree4494_def, tree4492_agree, tree4493_agree]
  rfl
theorem node4494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4494 live4494 coloured4494 = result4494 := by
  rw [tree4494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4492_eq
  unfold live4492 coloured4492 at child
  try dsimp only [live4494, coloured4494]
  rw [child]
  dsimp only [result4492]
  have child := node4493_eq
  unfold live4493 coloured4493 at child
  try dsimp only [live4494, coloured4494]
  rw [child]
  dsimp only [result4493]
  try dsimp only [colour, result4494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4495_agree : tree4495 = literal4495 := by
  rw [tree4495_def]
  rfl
theorem node4495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4495 live4495 coloured4495 = result4495 := by
  rw [tree4495_def]
  try dsimp only [colour, result4495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4496_agree : tree4496 = literal4496 := by
  rw [tree4496_def, tree4494_agree, tree4495_agree]
  rfl
theorem node4496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4496 live4496 coloured4496 = result4496 := by
  rw [tree4496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4494_eq
  unfold live4494 coloured4494 at child
  try dsimp only [live4496, coloured4496]
  rw [child]
  dsimp only [result4494]
  have child := node4495_eq
  unfold live4495 coloured4495 at child
  try dsimp only [live4496, coloured4496]
  rw [child]
  dsimp only [result4495]
  try dsimp only [colour, result4496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4497_agree : tree4497 = literal4497 := by
  rw [tree4497_def]
  rfl
theorem node4497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4497 live4497 coloured4497 = result4497 := by
  rw [tree4497_def]
  try dsimp only [colour, result4497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4498_agree : tree4498 = literal4498 := by
  rw [tree4498_def, tree4496_agree, tree4497_agree]
  rfl
theorem node4498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4498 live4498 coloured4498 = result4498 := by
  rw [tree4498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4496_eq
  unfold live4496 coloured4496 at child
  try dsimp only [live4498, coloured4498]
  rw [child]
  dsimp only [result4496]
  have child := node4497_eq
  unfold live4497 coloured4497 at child
  try dsimp only [live4498, coloured4498]
  rw [child]
  dsimp only [result4497]
  try dsimp only [colour, result4498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4499_agree : tree4499 = literal4499 := by
  rw [tree4499_def]
  rfl
theorem node4499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4499 live4499 coloured4499 = result4499 := by
  rw [tree4499_def]
  try dsimp only [colour, result4499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4500_agree : tree4500 = literal4500 := by
  rw [tree4500_def, tree4498_agree, tree4499_agree]
  rfl
theorem node4500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4500 live4500 coloured4500 = result4500 := by
  rw [tree4500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4498_eq
  unfold live4498 coloured4498 at child
  try dsimp only [live4500, coloured4500]
  rw [child]
  dsimp only [result4498]
  have child := node4499_eq
  unfold live4499 coloured4499 at child
  try dsimp only [live4500, coloured4500]
  rw [child]
  dsimp only [result4499]
  try dsimp only [colour, result4500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4501_agree : tree4501 = literal4501 := by
  rw [tree4501_def]
  rfl
theorem node4501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4501 live4501 coloured4501 = result4501 := by
  rw [tree4501_def]
  try dsimp only [colour, result4501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4502_agree : tree4502 = literal4502 := by
  rw [tree4502_def, tree4500_agree, tree4501_agree]
  rfl
theorem node4502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4502 live4502 coloured4502 = result4502 := by
  rw [tree4502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4500_eq
  unfold live4500 coloured4500 at child
  try dsimp only [live4502, coloured4502]
  rw [child]
  dsimp only [result4500]
  have child := node4501_eq
  unfold live4501 coloured4501 at child
  try dsimp only [live4502, coloured4502]
  rw [child]
  dsimp only [result4501]
  try dsimp only [colour, result4502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4503_agree : tree4503 = literal4503 := by
  rw [tree4503_def]
  rfl
theorem node4503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4503 live4503 coloured4503 = result4503 := by
  rw [tree4503_def]
  try dsimp only [colour, result4503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4504_agree : tree4504 = literal4504 := by
  rw [tree4504_def, tree4502_agree, tree4503_agree]
  rfl
theorem node4504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4504 live4504 coloured4504 = result4504 := by
  rw [tree4504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4502_eq
  unfold live4502 coloured4502 at child
  try dsimp only [live4504, coloured4504]
  rw [child]
  dsimp only [result4502]
  have child := node4503_eq
  unfold live4503 coloured4503 at child
  try dsimp only [live4504, coloured4504]
  rw [child]
  dsimp only [result4503]
  try dsimp only [colour, result4504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4505_agree : tree4505 = literal4505 := by
  rw [tree4505_def]
  rfl
theorem node4505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4505 live4505 coloured4505 = result4505 := by
  rw [tree4505_def]
  try dsimp only [colour, result4505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4506_agree : tree4506 = literal4506 := by
  rw [tree4506_def, tree4504_agree, tree4505_agree]
  rfl
theorem node4506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4506 live4506 coloured4506 = result4506 := by
  rw [tree4506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4504_eq
  unfold live4504 coloured4504 at child
  try dsimp only [live4506, coloured4506]
  rw [child]
  dsimp only [result4504]
  have child := node4505_eq
  unfold live4505 coloured4505 at child
  try dsimp only [live4506, coloured4506]
  rw [child]
  dsimp only [result4505]
  try dsimp only [colour, result4506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4507_agree : tree4507 = literal4507 := by
  rw [tree4507_def]
  rfl
theorem node4507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4507 live4507 coloured4507 = result4507 := by
  rw [tree4507_def]
  try dsimp only [colour, result4507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4508_agree : tree4508 = literal4508 := by
  rw [tree4508_def, tree4506_agree, tree4507_agree]
  rfl
theorem node4508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4508 live4508 coloured4508 = result4508 := by
  rw [tree4508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4506_eq
  unfold live4506 coloured4506 at child
  try dsimp only [live4508, coloured4508]
  rw [child]
  dsimp only [result4506]
  have child := node4507_eq
  unfold live4507 coloured4507 at child
  try dsimp only [live4508, coloured4508]
  rw [child]
  dsimp only [result4507]
  try dsimp only [colour, result4508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4509_agree : tree4509 = literal4509 := by
  rw [tree4509_def]
  rfl
theorem node4509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4509 live4509 coloured4509 = result4509 := by
  rw [tree4509_def]
  try dsimp only [colour, result4509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4510_agree : tree4510 = literal4510 := by
  rw [tree4510_def, tree4508_agree, tree4509_agree]
  rfl
theorem node4510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4510 live4510 coloured4510 = result4510 := by
  rw [tree4510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4508_eq
  unfold live4508 coloured4508 at child
  try dsimp only [live4510, coloured4510]
  rw [child]
  dsimp only [result4508]
  have child := node4509_eq
  unfold live4509 coloured4509 at child
  try dsimp only [live4510, coloured4510]
  rw [child]
  dsimp only [result4509]
  try dsimp only [colour, result4510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4511_agree : tree4511 = literal4511 := by
  rw [tree4511_def]
  rfl
theorem node4511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4511 live4511 coloured4511 = result4511 := by
  rw [tree4511_def]
  try dsimp only [colour, result4511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
