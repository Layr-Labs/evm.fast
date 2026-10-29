import InitECandidate.Proofs.ClashStages713.Proof118
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree11424_agree : tree11424 = literal11424 := by
  rw [tree11424_def, tree11422_agree, tree11423_agree]
  rfl
theorem node11424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11424 live11424 coloured11424 = result11424 := by
  rw [tree11424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11422_eq
  unfold live11422 coloured11422 at child
  try dsimp only [live11424, coloured11424]
  rw [child]
  dsimp only [result11422]
  have child := node11423_eq
  unfold live11423 coloured11423 at child
  try dsimp only [live11424, coloured11424]
  rw [child]
  dsimp only [result11423]
  try dsimp only [colour, result11424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11425_agree : tree11425 = literal11425 := by
  rw [tree11425_def]
  rfl
theorem node11425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11425 live11425 coloured11425 = result11425 := by
  rw [tree11425_def]
  try dsimp only [colour, result11425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11426_agree : tree11426 = literal11426 := by
  rw [tree11426_def, tree11424_agree, tree11425_agree]
  rfl
theorem node11426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11426 live11426 coloured11426 = result11426 := by
  rw [tree11426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11424_eq
  unfold live11424 coloured11424 at child
  try dsimp only [live11426, coloured11426]
  rw [child]
  dsimp only [result11424]
  have child := node11425_eq
  unfold live11425 coloured11425 at child
  try dsimp only [live11426, coloured11426]
  rw [child]
  dsimp only [result11425]
  try dsimp only [colour, result11426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11427_agree : tree11427 = literal11427 := by
  rw [tree11427_def]
  rfl
theorem node11427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11427 live11427 coloured11427 = result11427 := by
  rw [tree11427_def]
  try dsimp only [colour, result11427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11428_agree : tree11428 = literal11428 := by
  rw [tree11428_def, tree11426_agree, tree11427_agree]
  rfl
theorem node11428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11428 live11428 coloured11428 = result11428 := by
  rw [tree11428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11426_eq
  unfold live11426 coloured11426 at child
  try dsimp only [live11428, coloured11428]
  rw [child]
  dsimp only [result11426]
  have child := node11427_eq
  unfold live11427 coloured11427 at child
  try dsimp only [live11428, coloured11428]
  rw [child]
  dsimp only [result11427]
  try dsimp only [colour, result11428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11429_agree : tree11429 = literal11429 := by
  rw [tree11429_def]
  rfl
theorem node11429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11429 live11429 coloured11429 = result11429 := by
  rw [tree11429_def]
  try dsimp only [colour, result11429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11430_agree : tree11430 = literal11430 := by
  rw [tree11430_def, tree11428_agree, tree11429_agree]
  rfl
theorem node11430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11430 live11430 coloured11430 = result11430 := by
  rw [tree11430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11428_eq
  unfold live11428 coloured11428 at child
  try dsimp only [live11430, coloured11430]
  rw [child]
  dsimp only [result11428]
  have child := node11429_eq
  unfold live11429 coloured11429 at child
  try dsimp only [live11430, coloured11430]
  rw [child]
  dsimp only [result11429]
  try dsimp only [colour, result11430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11431_agree : tree11431 = literal11431 := by
  rw [tree11431_def]
  rfl
theorem node11431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11431 live11431 coloured11431 = result11431 := by
  rw [tree11431_def]
  try dsimp only [colour, result11431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11432_agree : tree11432 = literal11432 := by
  rw [tree11432_def, tree11430_agree, tree11431_agree]
  rfl
theorem node11432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11432 live11432 coloured11432 = result11432 := by
  rw [tree11432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11430_eq
  unfold live11430 coloured11430 at child
  try dsimp only [live11432, coloured11432]
  rw [child]
  dsimp only [result11430]
  have child := node11431_eq
  unfold live11431 coloured11431 at child
  try dsimp only [live11432, coloured11432]
  rw [child]
  dsimp only [result11431]
  try dsimp only [colour, result11432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11433_agree : tree11433 = literal11433 := by
  rw [tree11433_def]
  rfl
theorem node11433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11433 live11433 coloured11433 = result11433 := by
  rw [tree11433_def]
  try dsimp only [colour, result11433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11434_agree : tree11434 = literal11434 := by
  rw [tree11434_def, tree11432_agree, tree11433_agree]
  rfl
theorem node11434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11434 live11434 coloured11434 = result11434 := by
  rw [tree11434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11432_eq
  unfold live11432 coloured11432 at child
  try dsimp only [live11434, coloured11434]
  rw [child]
  dsimp only [result11432]
  have child := node11433_eq
  unfold live11433 coloured11433 at child
  try dsimp only [live11434, coloured11434]
  rw [child]
  dsimp only [result11433]
  try dsimp only [colour, result11434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11435_agree : tree11435 = literal11435 := by
  rw [tree11435_def]
  rfl
theorem node11435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11435 live11435 coloured11435 = result11435 := by
  rw [tree11435_def]
  try dsimp only [colour, result11435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11436_agree : tree11436 = literal11436 := by
  rw [tree11436_def, tree11434_agree, tree11435_agree]
  rfl
theorem node11436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11436 live11436 coloured11436 = result11436 := by
  rw [tree11436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11434_eq
  unfold live11434 coloured11434 at child
  try dsimp only [live11436, coloured11436]
  rw [child]
  dsimp only [result11434]
  have child := node11435_eq
  unfold live11435 coloured11435 at child
  try dsimp only [live11436, coloured11436]
  rw [child]
  dsimp only [result11435]
  try dsimp only [colour, result11436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11437_agree : tree11437 = literal11437 := by
  rw [tree11437_def]
  rfl
theorem node11437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11437 live11437 coloured11437 = result11437 := by
  rw [tree11437_def]
  try dsimp only [colour, result11437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11438_agree : tree11438 = literal11438 := by
  rw [tree11438_def, tree11436_agree, tree11437_agree]
  rfl
theorem node11438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11438 live11438 coloured11438 = result11438 := by
  rw [tree11438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11436_eq
  unfold live11436 coloured11436 at child
  try dsimp only [live11438, coloured11438]
  rw [child]
  dsimp only [result11436]
  have child := node11437_eq
  unfold live11437 coloured11437 at child
  try dsimp only [live11438, coloured11438]
  rw [child]
  dsimp only [result11437]
  try dsimp only [colour, result11438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11439_agree : tree11439 = literal11439 := by
  rw [tree11439_def]
  rfl
theorem node11439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11439 live11439 coloured11439 = result11439 := by
  rw [tree11439_def]
  try dsimp only [colour, result11439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11440_agree : tree11440 = literal11440 := by
  rw [tree11440_def, tree11438_agree, tree11439_agree]
  rfl
theorem node11440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11440 live11440 coloured11440 = result11440 := by
  rw [tree11440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11438_eq
  unfold live11438 coloured11438 at child
  try dsimp only [live11440, coloured11440]
  rw [child]
  dsimp only [result11438]
  have child := node11439_eq
  unfold live11439 coloured11439 at child
  try dsimp only [live11440, coloured11440]
  rw [child]
  dsimp only [result11439]
  try dsimp only [colour, result11440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11441_agree : tree11441 = literal11441 := by
  rw [tree11441_def]
  rfl
theorem node11441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11441 live11441 coloured11441 = result11441 := by
  rw [tree11441_def]
  try dsimp only [colour, result11441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11442_agree : tree11442 = literal11442 := by
  rw [tree11442_def, tree11440_agree, tree11441_agree]
  rfl
theorem node11442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11442 live11442 coloured11442 = result11442 := by
  rw [tree11442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11440_eq
  unfold live11440 coloured11440 at child
  try dsimp only [live11442, coloured11442]
  rw [child]
  dsimp only [result11440]
  have child := node11441_eq
  unfold live11441 coloured11441 at child
  try dsimp only [live11442, coloured11442]
  rw [child]
  dsimp only [result11441]
  try dsimp only [colour, result11442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11443_agree : tree11443 = literal11443 := by
  rw [tree11443_def]
  rfl
theorem node11443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11443 live11443 coloured11443 = result11443 := by
  rw [tree11443_def]
  try dsimp only [colour, result11443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11444_agree : tree11444 = literal11444 := by
  rw [tree11444_def, tree11442_agree, tree11443_agree]
  rfl
theorem node11444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11444 live11444 coloured11444 = result11444 := by
  rw [tree11444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11442_eq
  unfold live11442 coloured11442 at child
  try dsimp only [live11444, coloured11444]
  rw [child]
  dsimp only [result11442]
  have child := node11443_eq
  unfold live11443 coloured11443 at child
  try dsimp only [live11444, coloured11444]
  rw [child]
  dsimp only [result11443]
  try dsimp only [colour, result11444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11445_agree : tree11445 = literal11445 := by
  rw [tree11445_def]
  rfl
theorem node11445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11445 live11445 coloured11445 = result11445 := by
  rw [tree11445_def]
  try dsimp only [colour, result11445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11446_agree : tree11446 = literal11446 := by
  rw [tree11446_def, tree11444_agree, tree11445_agree]
  rfl
theorem node11446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11446 live11446 coloured11446 = result11446 := by
  rw [tree11446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11444_eq
  unfold live11444 coloured11444 at child
  try dsimp only [live11446, coloured11446]
  rw [child]
  dsimp only [result11444]
  have child := node11445_eq
  unfold live11445 coloured11445 at child
  try dsimp only [live11446, coloured11446]
  rw [child]
  dsimp only [result11445]
  try dsimp only [colour, result11446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11447_agree : tree11447 = literal11447 := by
  rw [tree11447_def]
  rfl
theorem node11447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11447 live11447 coloured11447 = result11447 := by
  rw [tree11447_def]
  try dsimp only [colour, result11447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11448_agree : tree11448 = literal11448 := by
  rw [tree11448_def, tree11446_agree, tree11447_agree]
  rfl
theorem node11448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11448 live11448 coloured11448 = result11448 := by
  rw [tree11448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11446_eq
  unfold live11446 coloured11446 at child
  try dsimp only [live11448, coloured11448]
  rw [child]
  dsimp only [result11446]
  have child := node11447_eq
  unfold live11447 coloured11447 at child
  try dsimp only [live11448, coloured11448]
  rw [child]
  dsimp only [result11447]
  try dsimp only [colour, result11448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11449_agree : tree11449 = literal11449 := by
  rw [tree11449_def]
  rfl
theorem node11449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11449 live11449 coloured11449 = result11449 := by
  rw [tree11449_def]
  try dsimp only [colour, result11449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11450_agree : tree11450 = literal11450 := by
  rw [tree11450_def, tree11448_agree, tree11449_agree]
  rfl
theorem node11450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11450 live11450 coloured11450 = result11450 := by
  rw [tree11450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11448_eq
  unfold live11448 coloured11448 at child
  try dsimp only [live11450, coloured11450]
  rw [child]
  dsimp only [result11448]
  have child := node11449_eq
  unfold live11449 coloured11449 at child
  try dsimp only [live11450, coloured11450]
  rw [child]
  dsimp only [result11449]
  try dsimp only [colour, result11450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11451_agree : tree11451 = literal11451 := by
  rw [tree11451_def]
  rfl
theorem node11451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11451 live11451 coloured11451 = result11451 := by
  rw [tree11451_def]
  try dsimp only [colour, result11451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11452_agree : tree11452 = literal11452 := by
  rw [tree11452_def, tree11450_agree, tree11451_agree]
  rfl
theorem node11452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11452 live11452 coloured11452 = result11452 := by
  rw [tree11452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11450_eq
  unfold live11450 coloured11450 at child
  try dsimp only [live11452, coloured11452]
  rw [child]
  dsimp only [result11450]
  have child := node11451_eq
  unfold live11451 coloured11451 at child
  try dsimp only [live11452, coloured11452]
  rw [child]
  dsimp only [result11451]
  try dsimp only [colour, result11452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11453_agree : tree11453 = literal11453 := by
  rw [tree11453_def]
  rfl
theorem node11453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11453 live11453 coloured11453 = result11453 := by
  rw [tree11453_def]
  try dsimp only [colour, result11453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11454_agree : tree11454 = literal11454 := by
  rw [tree11454_def, tree11452_agree, tree11453_agree]
  rfl
theorem node11454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11454 live11454 coloured11454 = result11454 := by
  rw [tree11454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11452_eq
  unfold live11452 coloured11452 at child
  try dsimp only [live11454, coloured11454]
  rw [child]
  dsimp only [result11452]
  have child := node11453_eq
  unfold live11453 coloured11453 at child
  try dsimp only [live11454, coloured11454]
  rw [child]
  dsimp only [result11453]
  try dsimp only [colour, result11454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11455_agree : tree11455 = literal11455 := by
  rw [tree11455_def]
  rfl
theorem node11455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11455 live11455 coloured11455 = result11455 := by
  rw [tree11455_def]
  try dsimp only [colour, result11455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11456_agree : tree11456 = literal11456 := by
  rw [tree11456_def, tree11454_agree, tree11455_agree]
  rfl
theorem node11456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11456 live11456 coloured11456 = result11456 := by
  rw [tree11456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11454_eq
  unfold live11454 coloured11454 at child
  try dsimp only [live11456, coloured11456]
  rw [child]
  dsimp only [result11454]
  have child := node11455_eq
  unfold live11455 coloured11455 at child
  try dsimp only [live11456, coloured11456]
  rw [child]
  dsimp only [result11455]
  try dsimp only [colour, result11456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11457_agree : tree11457 = literal11457 := by
  rw [tree11457_def]
  rfl
theorem node11457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11457 live11457 coloured11457 = result11457 := by
  rw [tree11457_def]
  try dsimp only [colour, result11457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11458_agree : tree11458 = literal11458 := by
  rw [tree11458_def, tree11456_agree, tree11457_agree]
  rfl
theorem node11458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11458 live11458 coloured11458 = result11458 := by
  rw [tree11458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11456_eq
  unfold live11456 coloured11456 at child
  try dsimp only [live11458, coloured11458]
  rw [child]
  dsimp only [result11456]
  have child := node11457_eq
  unfold live11457 coloured11457 at child
  try dsimp only [live11458, coloured11458]
  rw [child]
  dsimp only [result11457]
  try dsimp only [colour, result11458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11459_agree : tree11459 = literal11459 := by
  rw [tree11459_def]
  rfl
theorem node11459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11459 live11459 coloured11459 = result11459 := by
  rw [tree11459_def]
  try dsimp only [colour, result11459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11460_agree : tree11460 = literal11460 := by
  rw [tree11460_def, tree11458_agree, tree11459_agree]
  rfl
theorem node11460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11460 live11460 coloured11460 = result11460 := by
  rw [tree11460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11458_eq
  unfold live11458 coloured11458 at child
  try dsimp only [live11460, coloured11460]
  rw [child]
  dsimp only [result11458]
  have child := node11459_eq
  unfold live11459 coloured11459 at child
  try dsimp only [live11460, coloured11460]
  rw [child]
  dsimp only [result11459]
  try dsimp only [colour, result11460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11461_agree : tree11461 = literal11461 := by
  rw [tree11461_def]
  rfl
theorem node11461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11461 live11461 coloured11461 = result11461 := by
  rw [tree11461_def]
  try dsimp only [colour, result11461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11462_agree : tree11462 = literal11462 := by
  rw [tree11462_def, tree11460_agree, tree11461_agree]
  rfl
theorem node11462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11462 live11462 coloured11462 = result11462 := by
  rw [tree11462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11460_eq
  unfold live11460 coloured11460 at child
  try dsimp only [live11462, coloured11462]
  rw [child]
  dsimp only [result11460]
  have child := node11461_eq
  unfold live11461 coloured11461 at child
  try dsimp only [live11462, coloured11462]
  rw [child]
  dsimp only [result11461]
  try dsimp only [colour, result11462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11463_agree : tree11463 = literal11463 := by
  rw [tree11463_def]
  rfl
theorem node11463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11463 live11463 coloured11463 = result11463 := by
  rw [tree11463_def]
  try dsimp only [colour, result11463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11464_agree : tree11464 = literal11464 := by
  rw [tree11464_def, tree11462_agree, tree11463_agree]
  rfl
theorem node11464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11464 live11464 coloured11464 = result11464 := by
  rw [tree11464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11462_eq
  unfold live11462 coloured11462 at child
  try dsimp only [live11464, coloured11464]
  rw [child]
  dsimp only [result11462]
  have child := node11463_eq
  unfold live11463 coloured11463 at child
  try dsimp only [live11464, coloured11464]
  rw [child]
  dsimp only [result11463]
  try dsimp only [colour, result11464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11465_agree : tree11465 = literal11465 := by
  rw [tree11465_def]
  rfl
theorem node11465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11465 live11465 coloured11465 = result11465 := by
  rw [tree11465_def]
  try dsimp only [colour, result11465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11466_agree : tree11466 = literal11466 := by
  rw [tree11466_def, tree11464_agree, tree11465_agree]
  rfl
theorem node11466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11466 live11466 coloured11466 = result11466 := by
  rw [tree11466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11464_eq
  unfold live11464 coloured11464 at child
  try dsimp only [live11466, coloured11466]
  rw [child]
  dsimp only [result11464]
  have child := node11465_eq
  unfold live11465 coloured11465 at child
  try dsimp only [live11466, coloured11466]
  rw [child]
  dsimp only [result11465]
  try dsimp only [colour, result11466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11467_agree : tree11467 = literal11467 := by
  rw [tree11467_def]
  rfl
theorem node11467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11467 live11467 coloured11467 = result11467 := by
  rw [tree11467_def]
  try dsimp only [colour, result11467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11468_agree : tree11468 = literal11468 := by
  rw [tree11468_def, tree11466_agree, tree11467_agree]
  rfl
theorem node11468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11468 live11468 coloured11468 = result11468 := by
  rw [tree11468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11466_eq
  unfold live11466 coloured11466 at child
  try dsimp only [live11468, coloured11468]
  rw [child]
  dsimp only [result11466]
  have child := node11467_eq
  unfold live11467 coloured11467 at child
  try dsimp only [live11468, coloured11468]
  rw [child]
  dsimp only [result11467]
  try dsimp only [colour, result11468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11469_agree : tree11469 = literal11469 := by
  rw [tree11469_def]
  rfl
theorem node11469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11469 live11469 coloured11469 = result11469 := by
  rw [tree11469_def]
  try dsimp only [colour, result11469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11470_agree : tree11470 = literal11470 := by
  rw [tree11470_def, tree11468_agree, tree11469_agree]
  rfl
theorem node11470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11470 live11470 coloured11470 = result11470 := by
  rw [tree11470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11468_eq
  unfold live11468 coloured11468 at child
  try dsimp only [live11470, coloured11470]
  rw [child]
  dsimp only [result11468]
  have child := node11469_eq
  unfold live11469 coloured11469 at child
  try dsimp only [live11470, coloured11470]
  rw [child]
  dsimp only [result11469]
  try dsimp only [colour, result11470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11471_agree : tree11471 = literal11471 := by
  rw [tree11471_def]
  rfl
theorem node11471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11471 live11471 coloured11471 = result11471 := by
  rw [tree11471_def]
  try dsimp only [colour, result11471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11472_agree : tree11472 = literal11472 := by
  rw [tree11472_def, tree11470_agree, tree11471_agree]
  rfl
theorem node11472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11472 live11472 coloured11472 = result11472 := by
  rw [tree11472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11470_eq
  unfold live11470 coloured11470 at child
  try dsimp only [live11472, coloured11472]
  rw [child]
  dsimp only [result11470]
  have child := node11471_eq
  unfold live11471 coloured11471 at child
  try dsimp only [live11472, coloured11472]
  rw [child]
  dsimp only [result11471]
  try dsimp only [colour, result11472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11473_agree : tree11473 = literal11473 := by
  rw [tree11473_def]
  rfl
theorem node11473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11473 live11473 coloured11473 = result11473 := by
  rw [tree11473_def]
  try dsimp only [colour, result11473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11474_agree : tree11474 = literal11474 := by
  rw [tree11474_def, tree11472_agree, tree11473_agree]
  rfl
theorem node11474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11474 live11474 coloured11474 = result11474 := by
  rw [tree11474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11472_eq
  unfold live11472 coloured11472 at child
  try dsimp only [live11474, coloured11474]
  rw [child]
  dsimp only [result11472]
  have child := node11473_eq
  unfold live11473 coloured11473 at child
  try dsimp only [live11474, coloured11474]
  rw [child]
  dsimp only [result11473]
  try dsimp only [colour, result11474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11475_agree : tree11475 = literal11475 := by
  rw [tree11475_def]
  rfl
theorem node11475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11475 live11475 coloured11475 = result11475 := by
  rw [tree11475_def]
  try dsimp only [colour, result11475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11476_agree : tree11476 = literal11476 := by
  rw [tree11476_def, tree11474_agree, tree11475_agree]
  rfl
theorem node11476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11476 live11476 coloured11476 = result11476 := by
  rw [tree11476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11474_eq
  unfold live11474 coloured11474 at child
  try dsimp only [live11476, coloured11476]
  rw [child]
  dsimp only [result11474]
  have child := node11475_eq
  unfold live11475 coloured11475 at child
  try dsimp only [live11476, coloured11476]
  rw [child]
  dsimp only [result11475]
  try dsimp only [colour, result11476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11477_agree : tree11477 = literal11477 := by
  rw [tree11477_def]
  rfl
theorem node11477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11477 live11477 coloured11477 = result11477 := by
  rw [tree11477_def]
  try dsimp only [colour, result11477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11478_agree : tree11478 = literal11478 := by
  rw [tree11478_def, tree11476_agree, tree11477_agree]
  rfl
theorem node11478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11478 live11478 coloured11478 = result11478 := by
  rw [tree11478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11476_eq
  unfold live11476 coloured11476 at child
  try dsimp only [live11478, coloured11478]
  rw [child]
  dsimp only [result11476]
  have child := node11477_eq
  unfold live11477 coloured11477 at child
  try dsimp only [live11478, coloured11478]
  rw [child]
  dsimp only [result11477]
  try dsimp only [colour, result11478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11479_agree : tree11479 = literal11479 := by
  rw [tree11479_def]
  rfl
theorem node11479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11479 live11479 coloured11479 = result11479 := by
  rw [tree11479_def]
  try dsimp only [colour, result11479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11480_agree : tree11480 = literal11480 := by
  rw [tree11480_def, tree11478_agree, tree11479_agree]
  rfl
theorem node11480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11480 live11480 coloured11480 = result11480 := by
  rw [tree11480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11478_eq
  unfold live11478 coloured11478 at child
  try dsimp only [live11480, coloured11480]
  rw [child]
  dsimp only [result11478]
  have child := node11479_eq
  unfold live11479 coloured11479 at child
  try dsimp only [live11480, coloured11480]
  rw [child]
  dsimp only [result11479]
  try dsimp only [colour, result11480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11481_agree : tree11481 = literal11481 := by
  rw [tree11481_def]
  rfl
theorem node11481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11481 live11481 coloured11481 = result11481 := by
  rw [tree11481_def]
  try dsimp only [colour, result11481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11482_agree : tree11482 = literal11482 := by
  rw [tree11482_def, tree11480_agree, tree11481_agree]
  rfl
theorem node11482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11482 live11482 coloured11482 = result11482 := by
  rw [tree11482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11480_eq
  unfold live11480 coloured11480 at child
  try dsimp only [live11482, coloured11482]
  rw [child]
  dsimp only [result11480]
  have child := node11481_eq
  unfold live11481 coloured11481 at child
  try dsimp only [live11482, coloured11482]
  rw [child]
  dsimp only [result11481]
  try dsimp only [colour, result11482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11483_agree : tree11483 = literal11483 := by
  rw [tree11483_def]
  rfl
theorem node11483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11483 live11483 coloured11483 = result11483 := by
  rw [tree11483_def]
  try dsimp only [colour, result11483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11484_agree : tree11484 = literal11484 := by
  rw [tree11484_def, tree11482_agree, tree11483_agree]
  rfl
theorem node11484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11484 live11484 coloured11484 = result11484 := by
  rw [tree11484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11482_eq
  unfold live11482 coloured11482 at child
  try dsimp only [live11484, coloured11484]
  rw [child]
  dsimp only [result11482]
  have child := node11483_eq
  unfold live11483 coloured11483 at child
  try dsimp only [live11484, coloured11484]
  rw [child]
  dsimp only [result11483]
  try dsimp only [colour, result11484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11485_agree : tree11485 = literal11485 := by
  rw [tree11485_def]
  rfl
theorem node11485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11485 live11485 coloured11485 = result11485 := by
  rw [tree11485_def]
  try dsimp only [colour, result11485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11486_agree : tree11486 = literal11486 := by
  rw [tree11486_def, tree11484_agree, tree11485_agree]
  rfl
theorem node11486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11486 live11486 coloured11486 = result11486 := by
  rw [tree11486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11484_eq
  unfold live11484 coloured11484 at child
  try dsimp only [live11486, coloured11486]
  rw [child]
  dsimp only [result11484]
  have child := node11485_eq
  unfold live11485 coloured11485 at child
  try dsimp only [live11486, coloured11486]
  rw [child]
  dsimp only [result11485]
  try dsimp only [colour, result11486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11487_agree : tree11487 = literal11487 := by
  rw [tree11487_def]
  rfl
theorem node11487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11487 live11487 coloured11487 = result11487 := by
  rw [tree11487_def]
  try dsimp only [colour, result11487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11488_agree : tree11488 = literal11488 := by
  rw [tree11488_def, tree11486_agree, tree11487_agree]
  rfl
theorem node11488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11488 live11488 coloured11488 = result11488 := by
  rw [tree11488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11486_eq
  unfold live11486 coloured11486 at child
  try dsimp only [live11488, coloured11488]
  rw [child]
  dsimp only [result11486]
  have child := node11487_eq
  unfold live11487 coloured11487 at child
  try dsimp only [live11488, coloured11488]
  rw [child]
  dsimp only [result11487]
  try dsimp only [colour, result11488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11489_agree : tree11489 = literal11489 := by
  rw [tree11489_def]
  rfl
theorem node11489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11489 live11489 coloured11489 = result11489 := by
  rw [tree11489_def]
  try dsimp only [colour, result11489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11490_agree : tree11490 = literal11490 := by
  rw [tree11490_def, tree11488_agree, tree11489_agree]
  rfl
theorem node11490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11490 live11490 coloured11490 = result11490 := by
  rw [tree11490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11488_eq
  unfold live11488 coloured11488 at child
  try dsimp only [live11490, coloured11490]
  rw [child]
  dsimp only [result11488]
  have child := node11489_eq
  unfold live11489 coloured11489 at child
  try dsimp only [live11490, coloured11490]
  rw [child]
  dsimp only [result11489]
  try dsimp only [colour, result11490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11491_agree : tree11491 = literal11491 := by
  rw [tree11491_def]
  rfl
theorem node11491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11491 live11491 coloured11491 = result11491 := by
  rw [tree11491_def]
  try dsimp only [colour, result11491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11492_agree : tree11492 = literal11492 := by
  rw [tree11492_def, tree11490_agree, tree11491_agree]
  rfl
theorem node11492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11492 live11492 coloured11492 = result11492 := by
  rw [tree11492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11490_eq
  unfold live11490 coloured11490 at child
  try dsimp only [live11492, coloured11492]
  rw [child]
  dsimp only [result11490]
  have child := node11491_eq
  unfold live11491 coloured11491 at child
  try dsimp only [live11492, coloured11492]
  rw [child]
  dsimp only [result11491]
  try dsimp only [colour, result11492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11493_agree : tree11493 = literal11493 := by
  rw [tree11493_def]
  rfl
theorem node11493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11493 live11493 coloured11493 = result11493 := by
  rw [tree11493_def]
  try dsimp only [colour, result11493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11494_agree : tree11494 = literal11494 := by
  rw [tree11494_def, tree11492_agree, tree11493_agree]
  rfl
theorem node11494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11494 live11494 coloured11494 = result11494 := by
  rw [tree11494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11492_eq
  unfold live11492 coloured11492 at child
  try dsimp only [live11494, coloured11494]
  rw [child]
  dsimp only [result11492]
  have child := node11493_eq
  unfold live11493 coloured11493 at child
  try dsimp only [live11494, coloured11494]
  rw [child]
  dsimp only [result11493]
  try dsimp only [colour, result11494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11495_agree : tree11495 = literal11495 := by
  rw [tree11495_def]
  rfl
theorem node11495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11495 live11495 coloured11495 = result11495 := by
  rw [tree11495_def]
  try dsimp only [colour, result11495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11496_agree : tree11496 = literal11496 := by
  rw [tree11496_def, tree11494_agree, tree11495_agree]
  rfl
theorem node11496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11496 live11496 coloured11496 = result11496 := by
  rw [tree11496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11494_eq
  unfold live11494 coloured11494 at child
  try dsimp only [live11496, coloured11496]
  rw [child]
  dsimp only [result11494]
  have child := node11495_eq
  unfold live11495 coloured11495 at child
  try dsimp only [live11496, coloured11496]
  rw [child]
  dsimp only [result11495]
  try dsimp only [colour, result11496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11497_agree : tree11497 = literal11497 := by
  rw [tree11497_def]
  rfl
theorem node11497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11497 live11497 coloured11497 = result11497 := by
  rw [tree11497_def]
  try dsimp only [colour, result11497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11498_agree : tree11498 = literal11498 := by
  rw [tree11498_def, tree11496_agree, tree11497_agree]
  rfl
theorem node11498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11498 live11498 coloured11498 = result11498 := by
  rw [tree11498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11496_eq
  unfold live11496 coloured11496 at child
  try dsimp only [live11498, coloured11498]
  rw [child]
  dsimp only [result11496]
  have child := node11497_eq
  unfold live11497 coloured11497 at child
  try dsimp only [live11498, coloured11498]
  rw [child]
  dsimp only [result11497]
  try dsimp only [colour, result11498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11499_agree : tree11499 = literal11499 := by
  rw [tree11499_def]
  rfl
theorem node11499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11499 live11499 coloured11499 = result11499 := by
  rw [tree11499_def]
  try dsimp only [colour, result11499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11500_agree : tree11500 = literal11500 := by
  rw [tree11500_def, tree11498_agree, tree11499_agree]
  rfl
theorem node11500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11500 live11500 coloured11500 = result11500 := by
  rw [tree11500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11498_eq
  unfold live11498 coloured11498 at child
  try dsimp only [live11500, coloured11500]
  rw [child]
  dsimp only [result11498]
  have child := node11499_eq
  unfold live11499 coloured11499 at child
  try dsimp only [live11500, coloured11500]
  rw [child]
  dsimp only [result11499]
  try dsimp only [colour, result11500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11501_agree : tree11501 = literal11501 := by
  rw [tree11501_def]
  rfl
theorem node11501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11501 live11501 coloured11501 = result11501 := by
  rw [tree11501_def]
  try dsimp only [colour, result11501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11502_agree : tree11502 = literal11502 := by
  rw [tree11502_def, tree11500_agree, tree11501_agree]
  rfl
theorem node11502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11502 live11502 coloured11502 = result11502 := by
  rw [tree11502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11500_eq
  unfold live11500 coloured11500 at child
  try dsimp only [live11502, coloured11502]
  rw [child]
  dsimp only [result11500]
  have child := node11501_eq
  unfold live11501 coloured11501 at child
  try dsimp only [live11502, coloured11502]
  rw [child]
  dsimp only [result11501]
  try dsimp only [colour, result11502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11503_agree : tree11503 = literal11503 := by
  rw [tree11503_def]
  rfl
theorem node11503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11503 live11503 coloured11503 = result11503 := by
  rw [tree11503_def]
  try dsimp only [colour, result11503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11504_agree : tree11504 = literal11504 := by
  rw [tree11504_def, tree11502_agree, tree11503_agree]
  rfl
theorem node11504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11504 live11504 coloured11504 = result11504 := by
  rw [tree11504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11502_eq
  unfold live11502 coloured11502 at child
  try dsimp only [live11504, coloured11504]
  rw [child]
  dsimp only [result11502]
  have child := node11503_eq
  unfold live11503 coloured11503 at child
  try dsimp only [live11504, coloured11504]
  rw [child]
  dsimp only [result11503]
  try dsimp only [colour, result11504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11505_agree : tree11505 = literal11505 := by
  rw [tree11505_def]
  rfl
theorem node11505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11505 live11505 coloured11505 = result11505 := by
  rw [tree11505_def]
  try dsimp only [colour, result11505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11506_agree : tree11506 = literal11506 := by
  rw [tree11506_def, tree11504_agree, tree11505_agree]
  rfl
theorem node11506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11506 live11506 coloured11506 = result11506 := by
  rw [tree11506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11504_eq
  unfold live11504 coloured11504 at child
  try dsimp only [live11506, coloured11506]
  rw [child]
  dsimp only [result11504]
  have child := node11505_eq
  unfold live11505 coloured11505 at child
  try dsimp only [live11506, coloured11506]
  rw [child]
  dsimp only [result11505]
  try dsimp only [colour, result11506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11507_agree : tree11507 = literal11507 := by
  rw [tree11507_def]
  rfl
theorem node11507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11507 live11507 coloured11507 = result11507 := by
  rw [tree11507_def]
  try dsimp only [colour, result11507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11508_agree : tree11508 = literal11508 := by
  rw [tree11508_def, tree11506_agree, tree11507_agree]
  rfl
theorem node11508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11508 live11508 coloured11508 = result11508 := by
  rw [tree11508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11506_eq
  unfold live11506 coloured11506 at child
  try dsimp only [live11508, coloured11508]
  rw [child]
  dsimp only [result11506]
  have child := node11507_eq
  unfold live11507 coloured11507 at child
  try dsimp only [live11508, coloured11508]
  rw [child]
  dsimp only [result11507]
  try dsimp only [colour, result11508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11509_agree : tree11509 = literal11509 := by
  rw [tree11509_def]
  rfl
theorem node11509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11509 live11509 coloured11509 = result11509 := by
  rw [tree11509_def]
  try dsimp only [colour, result11509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11510_agree : tree11510 = literal11510 := by
  rw [tree11510_def, tree11508_agree, tree11509_agree]
  rfl
theorem node11510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11510 live11510 coloured11510 = result11510 := by
  rw [tree11510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11508_eq
  unfold live11508 coloured11508 at child
  try dsimp only [live11510, coloured11510]
  rw [child]
  dsimp only [result11508]
  have child := node11509_eq
  unfold live11509 coloured11509 at child
  try dsimp only [live11510, coloured11510]
  rw [child]
  dsimp only [result11509]
  try dsimp only [colour, result11510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11511_agree : tree11511 = literal11511 := by
  rw [tree11511_def]
  rfl
theorem node11511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11511 live11511 coloured11511 = result11511 := by
  rw [tree11511_def]
  try dsimp only [colour, result11511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11512_agree : tree11512 = literal11512 := by
  rw [tree11512_def, tree11510_agree, tree11511_agree]
  rfl
theorem node11512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11512 live11512 coloured11512 = result11512 := by
  rw [tree11512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11510_eq
  unfold live11510 coloured11510 at child
  try dsimp only [live11512, coloured11512]
  rw [child]
  dsimp only [result11510]
  have child := node11511_eq
  unfold live11511 coloured11511 at child
  try dsimp only [live11512, coloured11512]
  rw [child]
  dsimp only [result11511]
  try dsimp only [colour, result11512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11513_agree : tree11513 = literal11513 := by
  rw [tree11513_def]
  rfl
theorem node11513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11513 live11513 coloured11513 = result11513 := by
  rw [tree11513_def]
  try dsimp only [colour, result11513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11514_agree : tree11514 = literal11514 := by
  rw [tree11514_def, tree11512_agree, tree11513_agree]
  rfl
theorem node11514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11514 live11514 coloured11514 = result11514 := by
  rw [tree11514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11512_eq
  unfold live11512 coloured11512 at child
  try dsimp only [live11514, coloured11514]
  rw [child]
  dsimp only [result11512]
  have child := node11513_eq
  unfold live11513 coloured11513 at child
  try dsimp only [live11514, coloured11514]
  rw [child]
  dsimp only [result11513]
  try dsimp only [colour, result11514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11515_agree : tree11515 = literal11515 := by
  rw [tree11515_def]
  rfl
theorem node11515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11515 live11515 coloured11515 = result11515 := by
  rw [tree11515_def]
  try dsimp only [colour, result11515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11516_agree : tree11516 = literal11516 := by
  rw [tree11516_def, tree11514_agree, tree11515_agree]
  rfl
theorem node11516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11516 live11516 coloured11516 = result11516 := by
  rw [tree11516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11514_eq
  unfold live11514 coloured11514 at child
  try dsimp only [live11516, coloured11516]
  rw [child]
  dsimp only [result11514]
  have child := node11515_eq
  unfold live11515 coloured11515 at child
  try dsimp only [live11516, coloured11516]
  rw [child]
  dsimp only [result11515]
  try dsimp only [colour, result11516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11517_agree : tree11517 = literal11517 := by
  rw [tree11517_def]
  rfl
theorem node11517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11517 live11517 coloured11517 = result11517 := by
  rw [tree11517_def]
  try dsimp only [colour, result11517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11518_agree : tree11518 = literal11518 := by
  rw [tree11518_def, tree11516_agree, tree11517_agree]
  rfl
theorem node11518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11518 live11518 coloured11518 = result11518 := by
  rw [tree11518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11516_eq
  unfold live11516 coloured11516 at child
  try dsimp only [live11518, coloured11518]
  rw [child]
  dsimp only [result11516]
  have child := node11517_eq
  unfold live11517 coloured11517 at child
  try dsimp only [live11518, coloured11518]
  rw [child]
  dsimp only [result11517]
  try dsimp only [colour, result11518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11519_agree : tree11519 = literal11519 := by
  rw [tree11519_def]
  rfl
theorem node11519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11519 live11519 coloured11519 = result11519 := by
  rw [tree11519_def]
  try dsimp only [colour, result11519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
