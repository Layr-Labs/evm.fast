import InitECandidate.Proofs.ClashStages713.Proof66
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree6432_agree : tree6432 = literal6432 := by
  rw [tree6432_def, tree6430_agree, tree6431_agree]
  rfl
theorem node6432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6432 live6432 coloured6432 = result6432 := by
  rw [tree6432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6430_eq
  unfold live6430 coloured6430 at child
  try dsimp only [live6432, coloured6432]
  rw [child]
  dsimp only [result6430]
  have child := node6431_eq
  unfold live6431 coloured6431 at child
  try dsimp only [live6432, coloured6432]
  rw [child]
  dsimp only [result6431]
  try dsimp only [colour, result6432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6433_agree : tree6433 = literal6433 := by
  rw [tree6433_def]
  rfl
theorem node6433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6433 live6433 coloured6433 = result6433 := by
  rw [tree6433_def]
  try dsimp only [colour, result6433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6434_agree : tree6434 = literal6434 := by
  rw [tree6434_def, tree6432_agree, tree6433_agree]
  rfl
theorem node6434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6434 live6434 coloured6434 = result6434 := by
  rw [tree6434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6432_eq
  unfold live6432 coloured6432 at child
  try dsimp only [live6434, coloured6434]
  rw [child]
  dsimp only [result6432]
  have child := node6433_eq
  unfold live6433 coloured6433 at child
  try dsimp only [live6434, coloured6434]
  rw [child]
  dsimp only [result6433]
  try dsimp only [colour, result6434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6435_agree : tree6435 = literal6435 := by
  rw [tree6435_def]
  rfl
theorem node6435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6435 live6435 coloured6435 = result6435 := by
  rw [tree6435_def]
  try dsimp only [colour, result6435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6436_agree : tree6436 = literal6436 := by
  rw [tree6436_def, tree6434_agree, tree6435_agree]
  rfl
theorem node6436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6436 live6436 coloured6436 = result6436 := by
  rw [tree6436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6434_eq
  unfold live6434 coloured6434 at child
  try dsimp only [live6436, coloured6436]
  rw [child]
  dsimp only [result6434]
  have child := node6435_eq
  unfold live6435 coloured6435 at child
  try dsimp only [live6436, coloured6436]
  rw [child]
  dsimp only [result6435]
  try dsimp only [colour, result6436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6437_agree : tree6437 = literal6437 := by
  rw [tree6437_def]
  rfl
theorem node6437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6437 live6437 coloured6437 = result6437 := by
  rw [tree6437_def]
  try dsimp only [colour, result6437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6438_agree : tree6438 = literal6438 := by
  rw [tree6438_def, tree6436_agree, tree6437_agree]
  rfl
theorem node6438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6438 live6438 coloured6438 = result6438 := by
  rw [tree6438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6436_eq
  unfold live6436 coloured6436 at child
  try dsimp only [live6438, coloured6438]
  rw [child]
  dsimp only [result6436]
  have child := node6437_eq
  unfold live6437 coloured6437 at child
  try dsimp only [live6438, coloured6438]
  rw [child]
  dsimp only [result6437]
  try dsimp only [colour, result6438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6439_agree : tree6439 = literal6439 := by
  rw [tree6439_def]
  rfl
theorem node6439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6439 live6439 coloured6439 = result6439 := by
  rw [tree6439_def]
  try dsimp only [colour, result6439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6440_agree : tree6440 = literal6440 := by
  rw [tree6440_def, tree6438_agree, tree6439_agree]
  rfl
theorem node6440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6440 live6440 coloured6440 = result6440 := by
  rw [tree6440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6438_eq
  unfold live6438 coloured6438 at child
  try dsimp only [live6440, coloured6440]
  rw [child]
  dsimp only [result6438]
  have child := node6439_eq
  unfold live6439 coloured6439 at child
  try dsimp only [live6440, coloured6440]
  rw [child]
  dsimp only [result6439]
  try dsimp only [colour, result6440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6441_agree : tree6441 = literal6441 := by
  rw [tree6441_def]
  rfl
theorem node6441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6441 live6441 coloured6441 = result6441 := by
  rw [tree6441_def]
  try dsimp only [colour, result6441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6442_agree : tree6442 = literal6442 := by
  rw [tree6442_def, tree6440_agree, tree6441_agree]
  rfl
theorem node6442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6442 live6442 coloured6442 = result6442 := by
  rw [tree6442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6440_eq
  unfold live6440 coloured6440 at child
  try dsimp only [live6442, coloured6442]
  rw [child]
  dsimp only [result6440]
  have child := node6441_eq
  unfold live6441 coloured6441 at child
  try dsimp only [live6442, coloured6442]
  rw [child]
  dsimp only [result6441]
  try dsimp only [colour, result6442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6443_agree : tree6443 = literal6443 := by
  rw [tree6443_def]
  rfl
theorem node6443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6443 live6443 coloured6443 = result6443 := by
  rw [tree6443_def]
  try dsimp only [colour, result6443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6444_agree : tree6444 = literal6444 := by
  rw [tree6444_def, tree6442_agree, tree6443_agree]
  rfl
theorem node6444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6444 live6444 coloured6444 = result6444 := by
  rw [tree6444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6442_eq
  unfold live6442 coloured6442 at child
  try dsimp only [live6444, coloured6444]
  rw [child]
  dsimp only [result6442]
  have child := node6443_eq
  unfold live6443 coloured6443 at child
  try dsimp only [live6444, coloured6444]
  rw [child]
  dsimp only [result6443]
  try dsimp only [colour, result6444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6445_agree : tree6445 = literal6445 := by
  rw [tree6445_def]
  rfl
theorem node6445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6445 live6445 coloured6445 = result6445 := by
  rw [tree6445_def]
  try dsimp only [colour, result6445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6446_agree : tree6446 = literal6446 := by
  rw [tree6446_def, tree6444_agree, tree6445_agree]
  rfl
theorem node6446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6446 live6446 coloured6446 = result6446 := by
  rw [tree6446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6444_eq
  unfold live6444 coloured6444 at child
  try dsimp only [live6446, coloured6446]
  rw [child]
  dsimp only [result6444]
  have child := node6445_eq
  unfold live6445 coloured6445 at child
  try dsimp only [live6446, coloured6446]
  rw [child]
  dsimp only [result6445]
  try dsimp only [colour, result6446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6447_agree : tree6447 = literal6447 := by
  rw [tree6447_def]
  rfl
theorem node6447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6447 live6447 coloured6447 = result6447 := by
  rw [tree6447_def]
  try dsimp only [colour, result6447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6448_agree : tree6448 = literal6448 := by
  rw [tree6448_def, tree6446_agree, tree6447_agree]
  rfl
theorem node6448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6448 live6448 coloured6448 = result6448 := by
  rw [tree6448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6446_eq
  unfold live6446 coloured6446 at child
  try dsimp only [live6448, coloured6448]
  rw [child]
  dsimp only [result6446]
  have child := node6447_eq
  unfold live6447 coloured6447 at child
  try dsimp only [live6448, coloured6448]
  rw [child]
  dsimp only [result6447]
  try dsimp only [colour, result6448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6449_agree : tree6449 = literal6449 := by
  rw [tree6449_def]
  rfl
theorem node6449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6449 live6449 coloured6449 = result6449 := by
  rw [tree6449_def]
  try dsimp only [colour, result6449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6450_agree : tree6450 = literal6450 := by
  rw [tree6450_def, tree6448_agree, tree6449_agree]
  rfl
theorem node6450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6450 live6450 coloured6450 = result6450 := by
  rw [tree6450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6448_eq
  unfold live6448 coloured6448 at child
  try dsimp only [live6450, coloured6450]
  rw [child]
  dsimp only [result6448]
  have child := node6449_eq
  unfold live6449 coloured6449 at child
  try dsimp only [live6450, coloured6450]
  rw [child]
  dsimp only [result6449]
  try dsimp only [colour, result6450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6451_agree : tree6451 = literal6451 := by
  rw [tree6451_def]
  rfl
theorem node6451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6451 live6451 coloured6451 = result6451 := by
  rw [tree6451_def]
  try dsimp only [colour, result6451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6452_agree : tree6452 = literal6452 := by
  rw [tree6452_def, tree6450_agree, tree6451_agree]
  rfl
theorem node6452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6452 live6452 coloured6452 = result6452 := by
  rw [tree6452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6450_eq
  unfold live6450 coloured6450 at child
  try dsimp only [live6452, coloured6452]
  rw [child]
  dsimp only [result6450]
  have child := node6451_eq
  unfold live6451 coloured6451 at child
  try dsimp only [live6452, coloured6452]
  rw [child]
  dsimp only [result6451]
  try dsimp only [colour, result6452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6453_agree : tree6453 = literal6453 := by
  rw [tree6453_def]
  rfl
theorem node6453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6453 live6453 coloured6453 = result6453 := by
  rw [tree6453_def]
  try dsimp only [colour, result6453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6454_agree : tree6454 = literal6454 := by
  rw [tree6454_def, tree6452_agree, tree6453_agree]
  rfl
theorem node6454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6454 live6454 coloured6454 = result6454 := by
  rw [tree6454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6452_eq
  unfold live6452 coloured6452 at child
  try dsimp only [live6454, coloured6454]
  rw [child]
  dsimp only [result6452]
  have child := node6453_eq
  unfold live6453 coloured6453 at child
  try dsimp only [live6454, coloured6454]
  rw [child]
  dsimp only [result6453]
  try dsimp only [colour, result6454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6455_agree : tree6455 = literal6455 := by
  rw [tree6455_def]
  rfl
theorem node6455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6455 live6455 coloured6455 = result6455 := by
  rw [tree6455_def]
  try dsimp only [colour, result6455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6456_agree : tree6456 = literal6456 := by
  rw [tree6456_def, tree6454_agree, tree6455_agree]
  rfl
theorem node6456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6456 live6456 coloured6456 = result6456 := by
  rw [tree6456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6454_eq
  unfold live6454 coloured6454 at child
  try dsimp only [live6456, coloured6456]
  rw [child]
  dsimp only [result6454]
  have child := node6455_eq
  unfold live6455 coloured6455 at child
  try dsimp only [live6456, coloured6456]
  rw [child]
  dsimp only [result6455]
  try dsimp only [colour, result6456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6457_agree : tree6457 = literal6457 := by
  rw [tree6457_def]
  rfl
theorem node6457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6457 live6457 coloured6457 = result6457 := by
  rw [tree6457_def]
  try dsimp only [colour, result6457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6458_agree : tree6458 = literal6458 := by
  rw [tree6458_def, tree6456_agree, tree6457_agree]
  rfl
theorem node6458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6458 live6458 coloured6458 = result6458 := by
  rw [tree6458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6456_eq
  unfold live6456 coloured6456 at child
  try dsimp only [live6458, coloured6458]
  rw [child]
  dsimp only [result6456]
  have child := node6457_eq
  unfold live6457 coloured6457 at child
  try dsimp only [live6458, coloured6458]
  rw [child]
  dsimp only [result6457]
  try dsimp only [colour, result6458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6459_agree : tree6459 = literal6459 := by
  rw [tree6459_def]
  rfl
theorem node6459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6459 live6459 coloured6459 = result6459 := by
  rw [tree6459_def]
  try dsimp only [colour, result6459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6460_agree : tree6460 = literal6460 := by
  rw [tree6460_def, tree6458_agree, tree6459_agree]
  rfl
theorem node6460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6460 live6460 coloured6460 = result6460 := by
  rw [tree6460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6458_eq
  unfold live6458 coloured6458 at child
  try dsimp only [live6460, coloured6460]
  rw [child]
  dsimp only [result6458]
  have child := node6459_eq
  unfold live6459 coloured6459 at child
  try dsimp only [live6460, coloured6460]
  rw [child]
  dsimp only [result6459]
  try dsimp only [colour, result6460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6461_agree : tree6461 = literal6461 := by
  rw [tree6461_def]
  rfl
theorem node6461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6461 live6461 coloured6461 = result6461 := by
  rw [tree6461_def]
  try dsimp only [colour, result6461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6462_agree : tree6462 = literal6462 := by
  rw [tree6462_def, tree6460_agree, tree6461_agree]
  rfl
theorem node6462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6462 live6462 coloured6462 = result6462 := by
  rw [tree6462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6460_eq
  unfold live6460 coloured6460 at child
  try dsimp only [live6462, coloured6462]
  rw [child]
  dsimp only [result6460]
  have child := node6461_eq
  unfold live6461 coloured6461 at child
  try dsimp only [live6462, coloured6462]
  rw [child]
  dsimp only [result6461]
  try dsimp only [colour, result6462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6463_agree : tree6463 = literal6463 := by
  rw [tree6463_def]
  rfl
theorem node6463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6463 live6463 coloured6463 = result6463 := by
  rw [tree6463_def]
  try dsimp only [colour, result6463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6464_agree : tree6464 = literal6464 := by
  rw [tree6464_def, tree6462_agree, tree6463_agree]
  rfl
theorem node6464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6464 live6464 coloured6464 = result6464 := by
  rw [tree6464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6462_eq
  unfold live6462 coloured6462 at child
  try dsimp only [live6464, coloured6464]
  rw [child]
  dsimp only [result6462]
  have child := node6463_eq
  unfold live6463 coloured6463 at child
  try dsimp only [live6464, coloured6464]
  rw [child]
  dsimp only [result6463]
  try dsimp only [colour, result6464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6465_agree : tree6465 = literal6465 := by
  rw [tree6465_def]
  rfl
theorem node6465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6465 live6465 coloured6465 = result6465 := by
  rw [tree6465_def]
  try dsimp only [colour, result6465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6466_agree : tree6466 = literal6466 := by
  rw [tree6466_def, tree6464_agree, tree6465_agree]
  rfl
theorem node6466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6466 live6466 coloured6466 = result6466 := by
  rw [tree6466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6464_eq
  unfold live6464 coloured6464 at child
  try dsimp only [live6466, coloured6466]
  rw [child]
  dsimp only [result6464]
  have child := node6465_eq
  unfold live6465 coloured6465 at child
  try dsimp only [live6466, coloured6466]
  rw [child]
  dsimp only [result6465]
  try dsimp only [colour, result6466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6467_agree : tree6467 = literal6467 := by
  rw [tree6467_def]
  rfl
theorem node6467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6467 live6467 coloured6467 = result6467 := by
  rw [tree6467_def]
  try dsimp only [colour, result6467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6468_agree : tree6468 = literal6468 := by
  rw [tree6468_def, tree6466_agree, tree6467_agree]
  rfl
theorem node6468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6468 live6468 coloured6468 = result6468 := by
  rw [tree6468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6466_eq
  unfold live6466 coloured6466 at child
  try dsimp only [live6468, coloured6468]
  rw [child]
  dsimp only [result6466]
  have child := node6467_eq
  unfold live6467 coloured6467 at child
  try dsimp only [live6468, coloured6468]
  rw [child]
  dsimp only [result6467]
  try dsimp only [colour, result6468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6469_agree : tree6469 = literal6469 := by
  rw [tree6469_def]
  rfl
theorem node6469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6469 live6469 coloured6469 = result6469 := by
  rw [tree6469_def]
  try dsimp only [colour, result6469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6470_agree : tree6470 = literal6470 := by
  rw [tree6470_def, tree6468_agree, tree6469_agree]
  rfl
theorem node6470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6470 live6470 coloured6470 = result6470 := by
  rw [tree6470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6468_eq
  unfold live6468 coloured6468 at child
  try dsimp only [live6470, coloured6470]
  rw [child]
  dsimp only [result6468]
  have child := node6469_eq
  unfold live6469 coloured6469 at child
  try dsimp only [live6470, coloured6470]
  rw [child]
  dsimp only [result6469]
  try dsimp only [colour, result6470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6471_agree : tree6471 = literal6471 := by
  rw [tree6471_def]
  rfl
theorem node6471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6471 live6471 coloured6471 = result6471 := by
  rw [tree6471_def]
  try dsimp only [colour, result6471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6472_agree : tree6472 = literal6472 := by
  rw [tree6472_def, tree6470_agree, tree6471_agree]
  rfl
theorem node6472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6472 live6472 coloured6472 = result6472 := by
  rw [tree6472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6470_eq
  unfold live6470 coloured6470 at child
  try dsimp only [live6472, coloured6472]
  rw [child]
  dsimp only [result6470]
  have child := node6471_eq
  unfold live6471 coloured6471 at child
  try dsimp only [live6472, coloured6472]
  rw [child]
  dsimp only [result6471]
  try dsimp only [colour, result6472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6473_agree : tree6473 = literal6473 := by
  rw [tree6473_def]
  rfl
theorem node6473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6473 live6473 coloured6473 = result6473 := by
  rw [tree6473_def]
  try dsimp only [colour, result6473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6474_agree : tree6474 = literal6474 := by
  rw [tree6474_def, tree6472_agree, tree6473_agree]
  rfl
theorem node6474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6474 live6474 coloured6474 = result6474 := by
  rw [tree6474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6472_eq
  unfold live6472 coloured6472 at child
  try dsimp only [live6474, coloured6474]
  rw [child]
  dsimp only [result6472]
  have child := node6473_eq
  unfold live6473 coloured6473 at child
  try dsimp only [live6474, coloured6474]
  rw [child]
  dsimp only [result6473]
  try dsimp only [colour, result6474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6475_agree : tree6475 = literal6475 := by
  rw [tree6475_def]
  rfl
theorem node6475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6475 live6475 coloured6475 = result6475 := by
  rw [tree6475_def]
  try dsimp only [colour, result6475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6476_agree : tree6476 = literal6476 := by
  rw [tree6476_def, tree6474_agree, tree6475_agree]
  rfl
theorem node6476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6476 live6476 coloured6476 = result6476 := by
  rw [tree6476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6474_eq
  unfold live6474 coloured6474 at child
  try dsimp only [live6476, coloured6476]
  rw [child]
  dsimp only [result6474]
  have child := node6475_eq
  unfold live6475 coloured6475 at child
  try dsimp only [live6476, coloured6476]
  rw [child]
  dsimp only [result6475]
  try dsimp only [colour, result6476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6477_agree : tree6477 = literal6477 := by
  rw [tree6477_def]
  rfl
theorem node6477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6477 live6477 coloured6477 = result6477 := by
  rw [tree6477_def]
  try dsimp only [colour, result6477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6478_agree : tree6478 = literal6478 := by
  rw [tree6478_def, tree6476_agree, tree6477_agree]
  rfl
theorem node6478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6478 live6478 coloured6478 = result6478 := by
  rw [tree6478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6476_eq
  unfold live6476 coloured6476 at child
  try dsimp only [live6478, coloured6478]
  rw [child]
  dsimp only [result6476]
  have child := node6477_eq
  unfold live6477 coloured6477 at child
  try dsimp only [live6478, coloured6478]
  rw [child]
  dsimp only [result6477]
  try dsimp only [colour, result6478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6479_agree : tree6479 = literal6479 := by
  rw [tree6479_def]
  rfl
theorem node6479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6479 live6479 coloured6479 = result6479 := by
  rw [tree6479_def]
  try dsimp only [colour, result6479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6480_agree : tree6480 = literal6480 := by
  rw [tree6480_def, tree6478_agree, tree6479_agree]
  rfl
theorem node6480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6480 live6480 coloured6480 = result6480 := by
  rw [tree6480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6478_eq
  unfold live6478 coloured6478 at child
  try dsimp only [live6480, coloured6480]
  rw [child]
  dsimp only [result6478]
  have child := node6479_eq
  unfold live6479 coloured6479 at child
  try dsimp only [live6480, coloured6480]
  rw [child]
  dsimp only [result6479]
  try dsimp only [colour, result6480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6481_agree : tree6481 = literal6481 := by
  rw [tree6481_def]
  rfl
theorem node6481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6481 live6481 coloured6481 = result6481 := by
  rw [tree6481_def]
  try dsimp only [colour, result6481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6482_agree : tree6482 = literal6482 := by
  rw [tree6482_def, tree6480_agree, tree6481_agree]
  rfl
theorem node6482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6482 live6482 coloured6482 = result6482 := by
  rw [tree6482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6480_eq
  unfold live6480 coloured6480 at child
  try dsimp only [live6482, coloured6482]
  rw [child]
  dsimp only [result6480]
  have child := node6481_eq
  unfold live6481 coloured6481 at child
  try dsimp only [live6482, coloured6482]
  rw [child]
  dsimp only [result6481]
  try dsimp only [colour, result6482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6483_agree : tree6483 = literal6483 := by
  rw [tree6483_def]
  rfl
theorem node6483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6483 live6483 coloured6483 = result6483 := by
  rw [tree6483_def]
  try dsimp only [colour, result6483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6484_agree : tree6484 = literal6484 := by
  rw [tree6484_def, tree6482_agree, tree6483_agree]
  rfl
theorem node6484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6484 live6484 coloured6484 = result6484 := by
  rw [tree6484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6482_eq
  unfold live6482 coloured6482 at child
  try dsimp only [live6484, coloured6484]
  rw [child]
  dsimp only [result6482]
  have child := node6483_eq
  unfold live6483 coloured6483 at child
  try dsimp only [live6484, coloured6484]
  rw [child]
  dsimp only [result6483]
  try dsimp only [colour, result6484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6485_agree : tree6485 = literal6485 := by
  rw [tree6485_def]
  rfl
theorem node6485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6485 live6485 coloured6485 = result6485 := by
  rw [tree6485_def]
  try dsimp only [colour, result6485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6486_agree : tree6486 = literal6486 := by
  rw [tree6486_def, tree6484_agree, tree6485_agree]
  rfl
theorem node6486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6486 live6486 coloured6486 = result6486 := by
  rw [tree6486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6484_eq
  unfold live6484 coloured6484 at child
  try dsimp only [live6486, coloured6486]
  rw [child]
  dsimp only [result6484]
  have child := node6485_eq
  unfold live6485 coloured6485 at child
  try dsimp only [live6486, coloured6486]
  rw [child]
  dsimp only [result6485]
  try dsimp only [colour, result6486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6487_agree : tree6487 = literal6487 := by
  rw [tree6487_def]
  rfl
theorem node6487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6487 live6487 coloured6487 = result6487 := by
  rw [tree6487_def]
  try dsimp only [colour, result6487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6488_agree : tree6488 = literal6488 := by
  rw [tree6488_def, tree6486_agree, tree6487_agree]
  rfl
theorem node6488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6488 live6488 coloured6488 = result6488 := by
  rw [tree6488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6486_eq
  unfold live6486 coloured6486 at child
  try dsimp only [live6488, coloured6488]
  rw [child]
  dsimp only [result6486]
  have child := node6487_eq
  unfold live6487 coloured6487 at child
  try dsimp only [live6488, coloured6488]
  rw [child]
  dsimp only [result6487]
  try dsimp only [colour, result6488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6489_agree : tree6489 = literal6489 := by
  rw [tree6489_def]
  rfl
theorem node6489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6489 live6489 coloured6489 = result6489 := by
  rw [tree6489_def]
  try dsimp only [colour, result6489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6490_agree : tree6490 = literal6490 := by
  rw [tree6490_def, tree6488_agree, tree6489_agree]
  rfl
theorem node6490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6490 live6490 coloured6490 = result6490 := by
  rw [tree6490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6488_eq
  unfold live6488 coloured6488 at child
  try dsimp only [live6490, coloured6490]
  rw [child]
  dsimp only [result6488]
  have child := node6489_eq
  unfold live6489 coloured6489 at child
  try dsimp only [live6490, coloured6490]
  rw [child]
  dsimp only [result6489]
  try dsimp only [colour, result6490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6491_agree : tree6491 = literal6491 := by
  rw [tree6491_def]
  rfl
theorem node6491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6491 live6491 coloured6491 = result6491 := by
  rw [tree6491_def]
  try dsimp only [colour, result6491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6492_agree : tree6492 = literal6492 := by
  rw [tree6492_def, tree6490_agree, tree6491_agree]
  rfl
theorem node6492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6492 live6492 coloured6492 = result6492 := by
  rw [tree6492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6490_eq
  unfold live6490 coloured6490 at child
  try dsimp only [live6492, coloured6492]
  rw [child]
  dsimp only [result6490]
  have child := node6491_eq
  unfold live6491 coloured6491 at child
  try dsimp only [live6492, coloured6492]
  rw [child]
  dsimp only [result6491]
  try dsimp only [colour, result6492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6493_agree : tree6493 = literal6493 := by
  rw [tree6493_def]
  rfl
theorem node6493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6493 live6493 coloured6493 = result6493 := by
  rw [tree6493_def]
  try dsimp only [colour, result6493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6494_agree : tree6494 = literal6494 := by
  rw [tree6494_def, tree6492_agree, tree6493_agree]
  rfl
theorem node6494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6494 live6494 coloured6494 = result6494 := by
  rw [tree6494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6492_eq
  unfold live6492 coloured6492 at child
  try dsimp only [live6494, coloured6494]
  rw [child]
  dsimp only [result6492]
  have child := node6493_eq
  unfold live6493 coloured6493 at child
  try dsimp only [live6494, coloured6494]
  rw [child]
  dsimp only [result6493]
  try dsimp only [colour, result6494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6495_agree : tree6495 = literal6495 := by
  rw [tree6495_def]
  rfl
theorem node6495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6495 live6495 coloured6495 = result6495 := by
  rw [tree6495_def]
  try dsimp only [colour, result6495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6496_agree : tree6496 = literal6496 := by
  rw [tree6496_def, tree6494_agree, tree6495_agree]
  rfl
theorem node6496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6496 live6496 coloured6496 = result6496 := by
  rw [tree6496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6494_eq
  unfold live6494 coloured6494 at child
  try dsimp only [live6496, coloured6496]
  rw [child]
  dsimp only [result6494]
  have child := node6495_eq
  unfold live6495 coloured6495 at child
  try dsimp only [live6496, coloured6496]
  rw [child]
  dsimp only [result6495]
  try dsimp only [colour, result6496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6497_agree : tree6497 = literal6497 := by
  rw [tree6497_def]
  rfl
theorem node6497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6497 live6497 coloured6497 = result6497 := by
  rw [tree6497_def]
  try dsimp only [colour, result6497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6498_agree : tree6498 = literal6498 := by
  rw [tree6498_def, tree6496_agree, tree6497_agree]
  rfl
theorem node6498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6498 live6498 coloured6498 = result6498 := by
  rw [tree6498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6496_eq
  unfold live6496 coloured6496 at child
  try dsimp only [live6498, coloured6498]
  rw [child]
  dsimp only [result6496]
  have child := node6497_eq
  unfold live6497 coloured6497 at child
  try dsimp only [live6498, coloured6498]
  rw [child]
  dsimp only [result6497]
  try dsimp only [colour, result6498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6499_agree : tree6499 = literal6499 := by
  rw [tree6499_def]
  rfl
theorem node6499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6499 live6499 coloured6499 = result6499 := by
  rw [tree6499_def]
  try dsimp only [colour, result6499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6500_agree : tree6500 = literal6500 := by
  rw [tree6500_def, tree6498_agree, tree6499_agree]
  rfl
theorem node6500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6500 live6500 coloured6500 = result6500 := by
  rw [tree6500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6498_eq
  unfold live6498 coloured6498 at child
  try dsimp only [live6500, coloured6500]
  rw [child]
  dsimp only [result6498]
  have child := node6499_eq
  unfold live6499 coloured6499 at child
  try dsimp only [live6500, coloured6500]
  rw [child]
  dsimp only [result6499]
  try dsimp only [colour, result6500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6501_agree : tree6501 = literal6501 := by
  rw [tree6501_def]
  rfl
theorem node6501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6501 live6501 coloured6501 = result6501 := by
  rw [tree6501_def]
  try dsimp only [colour, result6501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6502_agree : tree6502 = literal6502 := by
  rw [tree6502_def, tree6500_agree, tree6501_agree]
  rfl
theorem node6502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6502 live6502 coloured6502 = result6502 := by
  rw [tree6502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6500_eq
  unfold live6500 coloured6500 at child
  try dsimp only [live6502, coloured6502]
  rw [child]
  dsimp only [result6500]
  have child := node6501_eq
  unfold live6501 coloured6501 at child
  try dsimp only [live6502, coloured6502]
  rw [child]
  dsimp only [result6501]
  try dsimp only [colour, result6502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6503_agree : tree6503 = literal6503 := by
  rw [tree6503_def]
  rfl
theorem node6503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6503 live6503 coloured6503 = result6503 := by
  rw [tree6503_def]
  try dsimp only [colour, result6503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6504_agree : tree6504 = literal6504 := by
  rw [tree6504_def, tree6502_agree, tree6503_agree]
  rfl
theorem node6504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6504 live6504 coloured6504 = result6504 := by
  rw [tree6504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6502_eq
  unfold live6502 coloured6502 at child
  try dsimp only [live6504, coloured6504]
  rw [child]
  dsimp only [result6502]
  have child := node6503_eq
  unfold live6503 coloured6503 at child
  try dsimp only [live6504, coloured6504]
  rw [child]
  dsimp only [result6503]
  try dsimp only [colour, result6504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6505_agree : tree6505 = literal6505 := by
  rw [tree6505_def]
  rfl
theorem node6505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6505 live6505 coloured6505 = result6505 := by
  rw [tree6505_def]
  try dsimp only [colour, result6505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6506_agree : tree6506 = literal6506 := by
  rw [tree6506_def, tree6504_agree, tree6505_agree]
  rfl
theorem node6506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6506 live6506 coloured6506 = result6506 := by
  rw [tree6506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6504_eq
  unfold live6504 coloured6504 at child
  try dsimp only [live6506, coloured6506]
  rw [child]
  dsimp only [result6504]
  have child := node6505_eq
  unfold live6505 coloured6505 at child
  try dsimp only [live6506, coloured6506]
  rw [child]
  dsimp only [result6505]
  try dsimp only [colour, result6506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6507_agree : tree6507 = literal6507 := by
  rw [tree6507_def]
  rfl
theorem node6507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6507 live6507 coloured6507 = result6507 := by
  rw [tree6507_def]
  try dsimp only [colour, result6507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6508_agree : tree6508 = literal6508 := by
  rw [tree6508_def, tree6506_agree, tree6507_agree]
  rfl
theorem node6508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6508 live6508 coloured6508 = result6508 := by
  rw [tree6508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6506_eq
  unfold live6506 coloured6506 at child
  try dsimp only [live6508, coloured6508]
  rw [child]
  dsimp only [result6506]
  have child := node6507_eq
  unfold live6507 coloured6507 at child
  try dsimp only [live6508, coloured6508]
  rw [child]
  dsimp only [result6507]
  try dsimp only [colour, result6508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6509_agree : tree6509 = literal6509 := by
  rw [tree6509_def]
  rfl
theorem node6509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6509 live6509 coloured6509 = result6509 := by
  rw [tree6509_def]
  try dsimp only [colour, result6509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6510_agree : tree6510 = literal6510 := by
  rw [tree6510_def, tree6508_agree, tree6509_agree]
  rfl
theorem node6510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6510 live6510 coloured6510 = result6510 := by
  rw [tree6510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6508_eq
  unfold live6508 coloured6508 at child
  try dsimp only [live6510, coloured6510]
  rw [child]
  dsimp only [result6508]
  have child := node6509_eq
  unfold live6509 coloured6509 at child
  try dsimp only [live6510, coloured6510]
  rw [child]
  dsimp only [result6509]
  try dsimp only [colour, result6510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6511_agree : tree6511 = literal6511 := by
  rw [tree6511_def]
  rfl
theorem node6511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6511 live6511 coloured6511 = result6511 := by
  rw [tree6511_def]
  try dsimp only [colour, result6511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6512_agree : tree6512 = literal6512 := by
  rw [tree6512_def, tree6510_agree, tree6511_agree]
  rfl
theorem node6512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6512 live6512 coloured6512 = result6512 := by
  rw [tree6512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6510_eq
  unfold live6510 coloured6510 at child
  try dsimp only [live6512, coloured6512]
  rw [child]
  dsimp only [result6510]
  have child := node6511_eq
  unfold live6511 coloured6511 at child
  try dsimp only [live6512, coloured6512]
  rw [child]
  dsimp only [result6511]
  try dsimp only [colour, result6512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6513_agree : tree6513 = literal6513 := by
  rw [tree6513_def]
  rfl
theorem node6513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6513 live6513 coloured6513 = result6513 := by
  rw [tree6513_def]
  try dsimp only [colour, result6513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6514_agree : tree6514 = literal6514 := by
  rw [tree6514_def, tree6512_agree, tree6513_agree]
  rfl
theorem node6514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6514 live6514 coloured6514 = result6514 := by
  rw [tree6514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6512_eq
  unfold live6512 coloured6512 at child
  try dsimp only [live6514, coloured6514]
  rw [child]
  dsimp only [result6512]
  have child := node6513_eq
  unfold live6513 coloured6513 at child
  try dsimp only [live6514, coloured6514]
  rw [child]
  dsimp only [result6513]
  try dsimp only [colour, result6514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6515_agree : tree6515 = literal6515 := by
  rw [tree6515_def]
  rfl
theorem node6515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6515 live6515 coloured6515 = result6515 := by
  rw [tree6515_def]
  try dsimp only [colour, result6515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6516_agree : tree6516 = literal6516 := by
  rw [tree6516_def, tree6514_agree, tree6515_agree]
  rfl
theorem node6516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6516 live6516 coloured6516 = result6516 := by
  rw [tree6516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6514_eq
  unfold live6514 coloured6514 at child
  try dsimp only [live6516, coloured6516]
  rw [child]
  dsimp only [result6514]
  have child := node6515_eq
  unfold live6515 coloured6515 at child
  try dsimp only [live6516, coloured6516]
  rw [child]
  dsimp only [result6515]
  try dsimp only [colour, result6516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6517_agree : tree6517 = literal6517 := by
  rw [tree6517_def]
  rfl
theorem node6517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6517 live6517 coloured6517 = result6517 := by
  rw [tree6517_def]
  try dsimp only [colour, result6517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6518_agree : tree6518 = literal6518 := by
  rw [tree6518_def, tree6516_agree, tree6517_agree]
  rfl
theorem node6518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6518 live6518 coloured6518 = result6518 := by
  rw [tree6518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6516_eq
  unfold live6516 coloured6516 at child
  try dsimp only [live6518, coloured6518]
  rw [child]
  dsimp only [result6516]
  have child := node6517_eq
  unfold live6517 coloured6517 at child
  try dsimp only [live6518, coloured6518]
  rw [child]
  dsimp only [result6517]
  try dsimp only [colour, result6518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6519_agree : tree6519 = literal6519 := by
  rw [tree6519_def]
  rfl
theorem node6519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6519 live6519 coloured6519 = result6519 := by
  rw [tree6519_def]
  try dsimp only [colour, result6519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6520_agree : tree6520 = literal6520 := by
  rw [tree6520_def, tree6518_agree, tree6519_agree]
  rfl
theorem node6520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6520 live6520 coloured6520 = result6520 := by
  rw [tree6520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6518_eq
  unfold live6518 coloured6518 at child
  try dsimp only [live6520, coloured6520]
  rw [child]
  dsimp only [result6518]
  have child := node6519_eq
  unfold live6519 coloured6519 at child
  try dsimp only [live6520, coloured6520]
  rw [child]
  dsimp only [result6519]
  try dsimp only [colour, result6520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6521_agree : tree6521 = literal6521 := by
  rw [tree6521_def]
  rfl
theorem node6521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6521 live6521 coloured6521 = result6521 := by
  rw [tree6521_def]
  try dsimp only [colour, result6521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6522_agree : tree6522 = literal6522 := by
  rw [tree6522_def, tree6520_agree, tree6521_agree]
  rfl
theorem node6522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6522 live6522 coloured6522 = result6522 := by
  rw [tree6522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6520_eq
  unfold live6520 coloured6520 at child
  try dsimp only [live6522, coloured6522]
  rw [child]
  dsimp only [result6520]
  have child := node6521_eq
  unfold live6521 coloured6521 at child
  try dsimp only [live6522, coloured6522]
  rw [child]
  dsimp only [result6521]
  try dsimp only [colour, result6522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6523_agree : tree6523 = literal6523 := by
  rw [tree6523_def]
  rfl
theorem node6523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6523 live6523 coloured6523 = result6523 := by
  rw [tree6523_def]
  try dsimp only [colour, result6523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6524_agree : tree6524 = literal6524 := by
  rw [tree6524_def, tree6522_agree, tree6523_agree]
  rfl
theorem node6524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6524 live6524 coloured6524 = result6524 := by
  rw [tree6524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6522_eq
  unfold live6522 coloured6522 at child
  try dsimp only [live6524, coloured6524]
  rw [child]
  dsimp only [result6522]
  have child := node6523_eq
  unfold live6523 coloured6523 at child
  try dsimp only [live6524, coloured6524]
  rw [child]
  dsimp only [result6523]
  try dsimp only [colour, result6524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6525_agree : tree6525 = literal6525 := by
  rw [tree6525_def]
  rfl
theorem node6525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6525 live6525 coloured6525 = result6525 := by
  rw [tree6525_def]
  try dsimp only [colour, result6525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6526_agree : tree6526 = literal6526 := by
  rw [tree6526_def, tree6524_agree, tree6525_agree]
  rfl
theorem node6526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6526 live6526 coloured6526 = result6526 := by
  rw [tree6526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6524_eq
  unfold live6524 coloured6524 at child
  try dsimp only [live6526, coloured6526]
  rw [child]
  dsimp only [result6524]
  have child := node6525_eq
  unfold live6525 coloured6525 at child
  try dsimp only [live6526, coloured6526]
  rw [child]
  dsimp only [result6525]
  try dsimp only [colour, result6526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6527_agree : tree6527 = literal6527 := by
  rw [tree6527_def]
  rfl
theorem node6527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6527 live6527 coloured6527 = result6527 := by
  rw [tree6527_def]
  try dsimp only [colour, result6527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
