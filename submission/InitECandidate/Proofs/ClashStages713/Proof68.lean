import InitECandidate.Proofs.ClashStages713.Proof67
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree6528_agree : tree6528 = literal6528 := by
  rw [tree6528_def, tree6526_agree, tree6527_agree]
  rfl
theorem node6528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6528 live6528 coloured6528 = result6528 := by
  rw [tree6528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6526_eq
  unfold live6526 coloured6526 at child
  try dsimp only [live6528, coloured6528]
  rw [child]
  dsimp only [result6526]
  have child := node6527_eq
  unfold live6527 coloured6527 at child
  try dsimp only [live6528, coloured6528]
  rw [child]
  dsimp only [result6527]
  try dsimp only [colour, result6528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6529_agree : tree6529 = literal6529 := by
  rw [tree6529_def]
  rfl
theorem node6529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6529 live6529 coloured6529 = result6529 := by
  rw [tree6529_def]
  try dsimp only [colour, result6529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6530_agree : tree6530 = literal6530 := by
  rw [tree6530_def, tree6528_agree, tree6529_agree]
  rfl
theorem node6530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6530 live6530 coloured6530 = result6530 := by
  rw [tree6530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6528_eq
  unfold live6528 coloured6528 at child
  try dsimp only [live6530, coloured6530]
  rw [child]
  dsimp only [result6528]
  have child := node6529_eq
  unfold live6529 coloured6529 at child
  try dsimp only [live6530, coloured6530]
  rw [child]
  dsimp only [result6529]
  try dsimp only [colour, result6530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6531_agree : tree6531 = literal6531 := by
  rw [tree6531_def]
  rfl
theorem node6531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6531 live6531 coloured6531 = result6531 := by
  rw [tree6531_def]
  try dsimp only [colour, result6531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6532_agree : tree6532 = literal6532 := by
  rw [tree6532_def, tree6530_agree, tree6531_agree]
  rfl
theorem node6532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6532 live6532 coloured6532 = result6532 := by
  rw [tree6532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6530_eq
  unfold live6530 coloured6530 at child
  try dsimp only [live6532, coloured6532]
  rw [child]
  dsimp only [result6530]
  have child := node6531_eq
  unfold live6531 coloured6531 at child
  try dsimp only [live6532, coloured6532]
  rw [child]
  dsimp only [result6531]
  try dsimp only [colour, result6532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6533_agree : tree6533 = literal6533 := by
  rw [tree6533_def]
  rfl
theorem node6533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6533 live6533 coloured6533 = result6533 := by
  rw [tree6533_def]
  try dsimp only [colour, result6533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6534_agree : tree6534 = literal6534 := by
  rw [tree6534_def, tree6532_agree, tree6533_agree]
  rfl
theorem node6534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6534 live6534 coloured6534 = result6534 := by
  rw [tree6534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6532_eq
  unfold live6532 coloured6532 at child
  try dsimp only [live6534, coloured6534]
  rw [child]
  dsimp only [result6532]
  have child := node6533_eq
  unfold live6533 coloured6533 at child
  try dsimp only [live6534, coloured6534]
  rw [child]
  dsimp only [result6533]
  try dsimp only [colour, result6534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6535_agree : tree6535 = literal6535 := by
  rw [tree6535_def]
  rfl
theorem node6535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6535 live6535 coloured6535 = result6535 := by
  rw [tree6535_def]
  try dsimp only [colour, result6535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6536_agree : tree6536 = literal6536 := by
  rw [tree6536_def, tree6534_agree, tree6535_agree]
  rfl
theorem node6536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6536 live6536 coloured6536 = result6536 := by
  rw [tree6536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6534_eq
  unfold live6534 coloured6534 at child
  try dsimp only [live6536, coloured6536]
  rw [child]
  dsimp only [result6534]
  have child := node6535_eq
  unfold live6535 coloured6535 at child
  try dsimp only [live6536, coloured6536]
  rw [child]
  dsimp only [result6535]
  try dsimp only [colour, result6536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6537_agree : tree6537 = literal6537 := by
  rw [tree6537_def]
  rfl
theorem node6537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6537 live6537 coloured6537 = result6537 := by
  rw [tree6537_def]
  try dsimp only [colour, result6537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6538_agree : tree6538 = literal6538 := by
  rw [tree6538_def, tree6536_agree, tree6537_agree]
  rfl
theorem node6538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6538 live6538 coloured6538 = result6538 := by
  rw [tree6538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6536_eq
  unfold live6536 coloured6536 at child
  try dsimp only [live6538, coloured6538]
  rw [child]
  dsimp only [result6536]
  have child := node6537_eq
  unfold live6537 coloured6537 at child
  try dsimp only [live6538, coloured6538]
  rw [child]
  dsimp only [result6537]
  try dsimp only [colour, result6538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6539_agree : tree6539 = literal6539 := by
  rw [tree6539_def]
  rfl
theorem node6539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6539 live6539 coloured6539 = result6539 := by
  rw [tree6539_def]
  try dsimp only [colour, result6539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6540_agree : tree6540 = literal6540 := by
  rw [tree6540_def, tree6538_agree, tree6539_agree]
  rfl
theorem node6540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6540 live6540 coloured6540 = result6540 := by
  rw [tree6540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6538_eq
  unfold live6538 coloured6538 at child
  try dsimp only [live6540, coloured6540]
  rw [child]
  dsimp only [result6538]
  have child := node6539_eq
  unfold live6539 coloured6539 at child
  try dsimp only [live6540, coloured6540]
  rw [child]
  dsimp only [result6539]
  try dsimp only [colour, result6540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6541_agree : tree6541 = literal6541 := by
  rw [tree6541_def]
  rfl
theorem node6541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6541 live6541 coloured6541 = result6541 := by
  rw [tree6541_def]
  try dsimp only [colour, result6541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6542_agree : tree6542 = literal6542 := by
  rw [tree6542_def, tree6540_agree, tree6541_agree]
  rfl
theorem node6542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6542 live6542 coloured6542 = result6542 := by
  rw [tree6542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6540_eq
  unfold live6540 coloured6540 at child
  try dsimp only [live6542, coloured6542]
  rw [child]
  dsimp only [result6540]
  have child := node6541_eq
  unfold live6541 coloured6541 at child
  try dsimp only [live6542, coloured6542]
  rw [child]
  dsimp only [result6541]
  try dsimp only [colour, result6542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6543_agree : tree6543 = literal6543 := by
  rw [tree6543_def]
  rfl
theorem node6543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6543 live6543 coloured6543 = result6543 := by
  rw [tree6543_def]
  try dsimp only [colour, result6543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6544_agree : tree6544 = literal6544 := by
  rw [tree6544_def, tree6542_agree, tree6543_agree]
  rfl
theorem node6544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6544 live6544 coloured6544 = result6544 := by
  rw [tree6544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6542_eq
  unfold live6542 coloured6542 at child
  try dsimp only [live6544, coloured6544]
  rw [child]
  dsimp only [result6542]
  have child := node6543_eq
  unfold live6543 coloured6543 at child
  try dsimp only [live6544, coloured6544]
  rw [child]
  dsimp only [result6543]
  try dsimp only [colour, result6544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6545_agree : tree6545 = literal6545 := by
  rw [tree6545_def]
  rfl
theorem node6545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6545 live6545 coloured6545 = result6545 := by
  rw [tree6545_def]
  try dsimp only [colour, result6545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6546_agree : tree6546 = literal6546 := by
  rw [tree6546_def, tree6544_agree, tree6545_agree]
  rfl
theorem node6546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6546 live6546 coloured6546 = result6546 := by
  rw [tree6546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6544_eq
  unfold live6544 coloured6544 at child
  try dsimp only [live6546, coloured6546]
  rw [child]
  dsimp only [result6544]
  have child := node6545_eq
  unfold live6545 coloured6545 at child
  try dsimp only [live6546, coloured6546]
  rw [child]
  dsimp only [result6545]
  try dsimp only [colour, result6546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6547_agree : tree6547 = literal6547 := by
  rw [tree6547_def]
  rfl
theorem node6547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6547 live6547 coloured6547 = result6547 := by
  rw [tree6547_def]
  try dsimp only [colour, result6547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6548_agree : tree6548 = literal6548 := by
  rw [tree6548_def, tree6546_agree, tree6547_agree]
  rfl
theorem node6548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6548 live6548 coloured6548 = result6548 := by
  rw [tree6548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6546_eq
  unfold live6546 coloured6546 at child
  try dsimp only [live6548, coloured6548]
  rw [child]
  dsimp only [result6546]
  have child := node6547_eq
  unfold live6547 coloured6547 at child
  try dsimp only [live6548, coloured6548]
  rw [child]
  dsimp only [result6547]
  try dsimp only [colour, result6548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6549_agree : tree6549 = literal6549 := by
  rw [tree6549_def]
  rfl
theorem node6549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6549 live6549 coloured6549 = result6549 := by
  rw [tree6549_def]
  try dsimp only [colour, result6549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6550_agree : tree6550 = literal6550 := by
  rw [tree6550_def, tree6548_agree, tree6549_agree]
  rfl
theorem node6550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6550 live6550 coloured6550 = result6550 := by
  rw [tree6550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6548_eq
  unfold live6548 coloured6548 at child
  try dsimp only [live6550, coloured6550]
  rw [child]
  dsimp only [result6548]
  have child := node6549_eq
  unfold live6549 coloured6549 at child
  try dsimp only [live6550, coloured6550]
  rw [child]
  dsimp only [result6549]
  try dsimp only [colour, result6550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6551_agree : tree6551 = literal6551 := by
  rw [tree6551_def]
  rfl
theorem node6551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6551 live6551 coloured6551 = result6551 := by
  rw [tree6551_def]
  try dsimp only [colour, result6551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6552_agree : tree6552 = literal6552 := by
  rw [tree6552_def, tree6550_agree, tree6551_agree]
  rfl
theorem node6552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6552 live6552 coloured6552 = result6552 := by
  rw [tree6552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6550_eq
  unfold live6550 coloured6550 at child
  try dsimp only [live6552, coloured6552]
  rw [child]
  dsimp only [result6550]
  have child := node6551_eq
  unfold live6551 coloured6551 at child
  try dsimp only [live6552, coloured6552]
  rw [child]
  dsimp only [result6551]
  try dsimp only [colour, result6552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6553_agree : tree6553 = literal6553 := by
  rw [tree6553_def]
  rfl
theorem node6553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6553 live6553 coloured6553 = result6553 := by
  rw [tree6553_def]
  try dsimp only [colour, result6553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6554_agree : tree6554 = literal6554 := by
  rw [tree6554_def, tree6552_agree, tree6553_agree]
  rfl
theorem node6554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6554 live6554 coloured6554 = result6554 := by
  rw [tree6554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6552_eq
  unfold live6552 coloured6552 at child
  try dsimp only [live6554, coloured6554]
  rw [child]
  dsimp only [result6552]
  have child := node6553_eq
  unfold live6553 coloured6553 at child
  try dsimp only [live6554, coloured6554]
  rw [child]
  dsimp only [result6553]
  try dsimp only [colour, result6554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6555_agree : tree6555 = literal6555 := by
  rw [tree6555_def]
  rfl
theorem node6555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6555 live6555 coloured6555 = result6555 := by
  rw [tree6555_def]
  try dsimp only [colour, result6555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6556_agree : tree6556 = literal6556 := by
  rw [tree6556_def, tree6554_agree, tree6555_agree]
  rfl
theorem node6556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6556 live6556 coloured6556 = result6556 := by
  rw [tree6556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6554_eq
  unfold live6554 coloured6554 at child
  try dsimp only [live6556, coloured6556]
  rw [child]
  dsimp only [result6554]
  have child := node6555_eq
  unfold live6555 coloured6555 at child
  try dsimp only [live6556, coloured6556]
  rw [child]
  dsimp only [result6555]
  try dsimp only [colour, result6556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6557_agree : tree6557 = literal6557 := by
  rw [tree6557_def]
  rfl
theorem node6557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6557 live6557 coloured6557 = result6557 := by
  rw [tree6557_def]
  try dsimp only [colour, result6557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6558_agree : tree6558 = literal6558 := by
  rw [tree6558_def, tree6556_agree, tree6557_agree]
  rfl
theorem node6558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6558 live6558 coloured6558 = result6558 := by
  rw [tree6558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6556_eq
  unfold live6556 coloured6556 at child
  try dsimp only [live6558, coloured6558]
  rw [child]
  dsimp only [result6556]
  have child := node6557_eq
  unfold live6557 coloured6557 at child
  try dsimp only [live6558, coloured6558]
  rw [child]
  dsimp only [result6557]
  try dsimp only [colour, result6558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6559_agree : tree6559 = literal6559 := by
  rw [tree6559_def]
  rfl
theorem node6559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6559 live6559 coloured6559 = result6559 := by
  rw [tree6559_def]
  try dsimp only [colour, result6559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6560_agree : tree6560 = literal6560 := by
  rw [tree6560_def, tree6558_agree, tree6559_agree]
  rfl
theorem node6560_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6560 live6560 coloured6560 = result6560 := by
  rw [tree6560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6558_eq
  unfold live6558 coloured6558 at child
  try dsimp only [live6560, coloured6560]
  rw [child]
  dsimp only [result6558]
  have child := node6559_eq
  unfold live6559 coloured6559 at child
  try dsimp only [live6560, coloured6560]
  rw [child]
  dsimp only [result6559]
  try dsimp only [colour, result6560]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6561_agree : tree6561 = literal6561 := by
  rw [tree6561_def]
  rfl
theorem node6561_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6561 live6561 coloured6561 = result6561 := by
  rw [tree6561_def]
  try dsimp only [colour, result6561]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6562_agree : tree6562 = literal6562 := by
  rw [tree6562_def, tree6560_agree, tree6561_agree]
  rfl
theorem node6562_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6562 live6562 coloured6562 = result6562 := by
  rw [tree6562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6560_eq
  unfold live6560 coloured6560 at child
  try dsimp only [live6562, coloured6562]
  rw [child]
  dsimp only [result6560]
  have child := node6561_eq
  unfold live6561 coloured6561 at child
  try dsimp only [live6562, coloured6562]
  rw [child]
  dsimp only [result6561]
  try dsimp only [colour, result6562]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6563_agree : tree6563 = literal6563 := by
  rw [tree6563_def]
  rfl
theorem node6563_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6563 live6563 coloured6563 = result6563 := by
  rw [tree6563_def]
  try dsimp only [colour, result6563]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6564_agree : tree6564 = literal6564 := by
  rw [tree6564_def, tree6562_agree, tree6563_agree]
  rfl
theorem node6564_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6564 live6564 coloured6564 = result6564 := by
  rw [tree6564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6562_eq
  unfold live6562 coloured6562 at child
  try dsimp only [live6564, coloured6564]
  rw [child]
  dsimp only [result6562]
  have child := node6563_eq
  unfold live6563 coloured6563 at child
  try dsimp only [live6564, coloured6564]
  rw [child]
  dsimp only [result6563]
  try dsimp only [colour, result6564]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6565_agree : tree6565 = literal6565 := by
  rw [tree6565_def]
  rfl
theorem node6565_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6565 live6565 coloured6565 = result6565 := by
  rw [tree6565_def]
  try dsimp only [colour, result6565]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6566_agree : tree6566 = literal6566 := by
  rw [tree6566_def, tree6564_agree, tree6565_agree]
  rfl
theorem node6566_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6566 live6566 coloured6566 = result6566 := by
  rw [tree6566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6564_eq
  unfold live6564 coloured6564 at child
  try dsimp only [live6566, coloured6566]
  rw [child]
  dsimp only [result6564]
  have child := node6565_eq
  unfold live6565 coloured6565 at child
  try dsimp only [live6566, coloured6566]
  rw [child]
  dsimp only [result6565]
  try dsimp only [colour, result6566]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6567_agree : tree6567 = literal6567 := by
  rw [tree6567_def]
  rfl
theorem node6567_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6567 live6567 coloured6567 = result6567 := by
  rw [tree6567_def]
  try dsimp only [colour, result6567]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6568_agree : tree6568 = literal6568 := by
  rw [tree6568_def, tree6566_agree, tree6567_agree]
  rfl
theorem node6568_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6568 live6568 coloured6568 = result6568 := by
  rw [tree6568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6566_eq
  unfold live6566 coloured6566 at child
  try dsimp only [live6568, coloured6568]
  rw [child]
  dsimp only [result6566]
  have child := node6567_eq
  unfold live6567 coloured6567 at child
  try dsimp only [live6568, coloured6568]
  rw [child]
  dsimp only [result6567]
  try dsimp only [colour, result6568]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6569_agree : tree6569 = literal6569 := by
  rw [tree6569_def]
  rfl
theorem node6569_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6569 live6569 coloured6569 = result6569 := by
  rw [tree6569_def]
  try dsimp only [colour, result6569]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6570_agree : tree6570 = literal6570 := by
  rw [tree6570_def, tree6568_agree, tree6569_agree]
  rfl
theorem node6570_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6570 live6570 coloured6570 = result6570 := by
  rw [tree6570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6568_eq
  unfold live6568 coloured6568 at child
  try dsimp only [live6570, coloured6570]
  rw [child]
  dsimp only [result6568]
  have child := node6569_eq
  unfold live6569 coloured6569 at child
  try dsimp only [live6570, coloured6570]
  rw [child]
  dsimp only [result6569]
  try dsimp only [colour, result6570]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6571_agree : tree6571 = literal6571 := by
  rw [tree6571_def]
  rfl
theorem node6571_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6571 live6571 coloured6571 = result6571 := by
  rw [tree6571_def]
  try dsimp only [colour, result6571]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6572_agree : tree6572 = literal6572 := by
  rw [tree6572_def, tree6570_agree, tree6571_agree]
  rfl
theorem node6572_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6572 live6572 coloured6572 = result6572 := by
  rw [tree6572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6570_eq
  unfold live6570 coloured6570 at child
  try dsimp only [live6572, coloured6572]
  rw [child]
  dsimp only [result6570]
  have child := node6571_eq
  unfold live6571 coloured6571 at child
  try dsimp only [live6572, coloured6572]
  rw [child]
  dsimp only [result6571]
  try dsimp only [colour, result6572]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6573_agree : tree6573 = literal6573 := by
  rw [tree6573_def]
  rfl
theorem node6573_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6573 live6573 coloured6573 = result6573 := by
  rw [tree6573_def]
  try dsimp only [colour, result6573]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6574_agree : tree6574 = literal6574 := by
  rw [tree6574_def, tree6572_agree, tree6573_agree]
  rfl
theorem node6574_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6574 live6574 coloured6574 = result6574 := by
  rw [tree6574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6572_eq
  unfold live6572 coloured6572 at child
  try dsimp only [live6574, coloured6574]
  rw [child]
  dsimp only [result6572]
  have child := node6573_eq
  unfold live6573 coloured6573 at child
  try dsimp only [live6574, coloured6574]
  rw [child]
  dsimp only [result6573]
  try dsimp only [colour, result6574]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6575_agree : tree6575 = literal6575 := by
  rw [tree6575_def]
  rfl
theorem node6575_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6575 live6575 coloured6575 = result6575 := by
  rw [tree6575_def]
  try dsimp only [colour, result6575]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6576_agree : tree6576 = literal6576 := by
  rw [tree6576_def, tree6574_agree, tree6575_agree]
  rfl
theorem node6576_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6576 live6576 coloured6576 = result6576 := by
  rw [tree6576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6574_eq
  unfold live6574 coloured6574 at child
  try dsimp only [live6576, coloured6576]
  rw [child]
  dsimp only [result6574]
  have child := node6575_eq
  unfold live6575 coloured6575 at child
  try dsimp only [live6576, coloured6576]
  rw [child]
  dsimp only [result6575]
  try dsimp only [colour, result6576]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6577_agree : tree6577 = literal6577 := by
  rw [tree6577_def]
  rfl
theorem node6577_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6577 live6577 coloured6577 = result6577 := by
  rw [tree6577_def]
  try dsimp only [colour, result6577]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6578_agree : tree6578 = literal6578 := by
  rw [tree6578_def, tree6576_agree, tree6577_agree]
  rfl
theorem node6578_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6578 live6578 coloured6578 = result6578 := by
  rw [tree6578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6576_eq
  unfold live6576 coloured6576 at child
  try dsimp only [live6578, coloured6578]
  rw [child]
  dsimp only [result6576]
  have child := node6577_eq
  unfold live6577 coloured6577 at child
  try dsimp only [live6578, coloured6578]
  rw [child]
  dsimp only [result6577]
  try dsimp only [colour, result6578]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6579_agree : tree6579 = literal6579 := by
  rw [tree6579_def]
  rfl
theorem node6579_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6579 live6579 coloured6579 = result6579 := by
  rw [tree6579_def]
  try dsimp only [colour, result6579]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6580_agree : tree6580 = literal6580 := by
  rw [tree6580_def, tree6578_agree, tree6579_agree]
  rfl
theorem node6580_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6580 live6580 coloured6580 = result6580 := by
  rw [tree6580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6578_eq
  unfold live6578 coloured6578 at child
  try dsimp only [live6580, coloured6580]
  rw [child]
  dsimp only [result6578]
  have child := node6579_eq
  unfold live6579 coloured6579 at child
  try dsimp only [live6580, coloured6580]
  rw [child]
  dsimp only [result6579]
  try dsimp only [colour, result6580]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6581_agree : tree6581 = literal6581 := by
  rw [tree6581_def]
  rfl
theorem node6581_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6581 live6581 coloured6581 = result6581 := by
  rw [tree6581_def]
  try dsimp only [colour, result6581]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6582_agree : tree6582 = literal6582 := by
  rw [tree6582_def, tree6580_agree, tree6581_agree]
  rfl
theorem node6582_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6582 live6582 coloured6582 = result6582 := by
  rw [tree6582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6580_eq
  unfold live6580 coloured6580 at child
  try dsimp only [live6582, coloured6582]
  rw [child]
  dsimp only [result6580]
  have child := node6581_eq
  unfold live6581 coloured6581 at child
  try dsimp only [live6582, coloured6582]
  rw [child]
  dsimp only [result6581]
  try dsimp only [colour, result6582]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6583_agree : tree6583 = literal6583 := by
  rw [tree6583_def]
  rfl
theorem node6583_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6583 live6583 coloured6583 = result6583 := by
  rw [tree6583_def]
  try dsimp only [colour, result6583]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6584_agree : tree6584 = literal6584 := by
  rw [tree6584_def, tree6582_agree, tree6583_agree]
  rfl
theorem node6584_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6584 live6584 coloured6584 = result6584 := by
  rw [tree6584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6582_eq
  unfold live6582 coloured6582 at child
  try dsimp only [live6584, coloured6584]
  rw [child]
  dsimp only [result6582]
  have child := node6583_eq
  unfold live6583 coloured6583 at child
  try dsimp only [live6584, coloured6584]
  rw [child]
  dsimp only [result6583]
  try dsimp only [colour, result6584]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6585_agree : tree6585 = literal6585 := by
  rw [tree6585_def]
  rfl
theorem node6585_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6585 live6585 coloured6585 = result6585 := by
  rw [tree6585_def]
  try dsimp only [colour, result6585]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6586_agree : tree6586 = literal6586 := by
  rw [tree6586_def, tree6584_agree, tree6585_agree]
  rfl
theorem node6586_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6586 live6586 coloured6586 = result6586 := by
  rw [tree6586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6584_eq
  unfold live6584 coloured6584 at child
  try dsimp only [live6586, coloured6586]
  rw [child]
  dsimp only [result6584]
  have child := node6585_eq
  unfold live6585 coloured6585 at child
  try dsimp only [live6586, coloured6586]
  rw [child]
  dsimp only [result6585]
  try dsimp only [colour, result6586]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6587_agree : tree6587 = literal6587 := by
  rw [tree6587_def]
  rfl
theorem node6587_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6587 live6587 coloured6587 = result6587 := by
  rw [tree6587_def]
  try dsimp only [colour, result6587]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6588_agree : tree6588 = literal6588 := by
  rw [tree6588_def, tree6586_agree, tree6587_agree]
  rfl
theorem node6588_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6588 live6588 coloured6588 = result6588 := by
  rw [tree6588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6586_eq
  unfold live6586 coloured6586 at child
  try dsimp only [live6588, coloured6588]
  rw [child]
  dsimp only [result6586]
  have child := node6587_eq
  unfold live6587 coloured6587 at child
  try dsimp only [live6588, coloured6588]
  rw [child]
  dsimp only [result6587]
  try dsimp only [colour, result6588]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6589_agree : tree6589 = literal6589 := by
  rw [tree6589_def]
  rfl
theorem node6589_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6589 live6589 coloured6589 = result6589 := by
  rw [tree6589_def]
  try dsimp only [colour, result6589]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6590_agree : tree6590 = literal6590 := by
  rw [tree6590_def, tree6588_agree, tree6589_agree]
  rfl
theorem node6590_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6590 live6590 coloured6590 = result6590 := by
  rw [tree6590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6588_eq
  unfold live6588 coloured6588 at child
  try dsimp only [live6590, coloured6590]
  rw [child]
  dsimp only [result6588]
  have child := node6589_eq
  unfold live6589 coloured6589 at child
  try dsimp only [live6590, coloured6590]
  rw [child]
  dsimp only [result6589]
  try dsimp only [colour, result6590]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6591_agree : tree6591 = literal6591 := by
  rw [tree6591_def]
  rfl
theorem node6591_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6591 live6591 coloured6591 = result6591 := by
  rw [tree6591_def]
  try dsimp only [colour, result6591]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6592_agree : tree6592 = literal6592 := by
  rw [tree6592_def, tree6590_agree, tree6591_agree]
  rfl
theorem node6592_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6592 live6592 coloured6592 = result6592 := by
  rw [tree6592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6590_eq
  unfold live6590 coloured6590 at child
  try dsimp only [live6592, coloured6592]
  rw [child]
  dsimp only [result6590]
  have child := node6591_eq
  unfold live6591 coloured6591 at child
  try dsimp only [live6592, coloured6592]
  rw [child]
  dsimp only [result6591]
  try dsimp only [colour, result6592]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6593_agree : tree6593 = literal6593 := by
  rw [tree6593_def]
  rfl
theorem node6593_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6593 live6593 coloured6593 = result6593 := by
  rw [tree6593_def]
  try dsimp only [colour, result6593]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6594_agree : tree6594 = literal6594 := by
  rw [tree6594_def, tree6592_agree, tree6593_agree]
  rfl
theorem node6594_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6594 live6594 coloured6594 = result6594 := by
  rw [tree6594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6592_eq
  unfold live6592 coloured6592 at child
  try dsimp only [live6594, coloured6594]
  rw [child]
  dsimp only [result6592]
  have child := node6593_eq
  unfold live6593 coloured6593 at child
  try dsimp only [live6594, coloured6594]
  rw [child]
  dsimp only [result6593]
  try dsimp only [colour, result6594]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6595_agree : tree6595 = literal6595 := by
  rw [tree6595_def]
  rfl
theorem node6595_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6595 live6595 coloured6595 = result6595 := by
  rw [tree6595_def]
  try dsimp only [colour, result6595]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6596_agree : tree6596 = literal6596 := by
  rw [tree6596_def, tree6594_agree, tree6595_agree]
  rfl
theorem node6596_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6596 live6596 coloured6596 = result6596 := by
  rw [tree6596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6594_eq
  unfold live6594 coloured6594 at child
  try dsimp only [live6596, coloured6596]
  rw [child]
  dsimp only [result6594]
  have child := node6595_eq
  unfold live6595 coloured6595 at child
  try dsimp only [live6596, coloured6596]
  rw [child]
  dsimp only [result6595]
  try dsimp only [colour, result6596]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6597_agree : tree6597 = literal6597 := by
  rw [tree6597_def]
  rfl
theorem node6597_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6597 live6597 coloured6597 = result6597 := by
  rw [tree6597_def]
  try dsimp only [colour, result6597]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6598_agree : tree6598 = literal6598 := by
  rw [tree6598_def, tree6596_agree, tree6597_agree]
  rfl
theorem node6598_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6598 live6598 coloured6598 = result6598 := by
  rw [tree6598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6596_eq
  unfold live6596 coloured6596 at child
  try dsimp only [live6598, coloured6598]
  rw [child]
  dsimp only [result6596]
  have child := node6597_eq
  unfold live6597 coloured6597 at child
  try dsimp only [live6598, coloured6598]
  rw [child]
  dsimp only [result6597]
  try dsimp only [colour, result6598]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6599_agree : tree6599 = literal6599 := by
  rw [tree6599_def]
  rfl
theorem node6599_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6599 live6599 coloured6599 = result6599 := by
  rw [tree6599_def]
  try dsimp only [colour, result6599]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6600_agree : tree6600 = literal6600 := by
  rw [tree6600_def, tree6598_agree, tree6599_agree]
  rfl
theorem node6600_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6600 live6600 coloured6600 = result6600 := by
  rw [tree6600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6598_eq
  unfold live6598 coloured6598 at child
  try dsimp only [live6600, coloured6600]
  rw [child]
  dsimp only [result6598]
  have child := node6599_eq
  unfold live6599 coloured6599 at child
  try dsimp only [live6600, coloured6600]
  rw [child]
  dsimp only [result6599]
  try dsimp only [colour, result6600]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6601_agree : tree6601 = literal6601 := by
  rw [tree6601_def]
  rfl
theorem node6601_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6601 live6601 coloured6601 = result6601 := by
  rw [tree6601_def]
  try dsimp only [colour, result6601]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6602_agree : tree6602 = literal6602 := by
  rw [tree6602_def, tree6600_agree, tree6601_agree]
  rfl
theorem node6602_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6602 live6602 coloured6602 = result6602 := by
  rw [tree6602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6600_eq
  unfold live6600 coloured6600 at child
  try dsimp only [live6602, coloured6602]
  rw [child]
  dsimp only [result6600]
  have child := node6601_eq
  unfold live6601 coloured6601 at child
  try dsimp only [live6602, coloured6602]
  rw [child]
  dsimp only [result6601]
  try dsimp only [colour, result6602]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6603_agree : tree6603 = literal6603 := by
  rw [tree6603_def]
  rfl
theorem node6603_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6603 live6603 coloured6603 = result6603 := by
  rw [tree6603_def]
  try dsimp only [colour, result6603]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6604_agree : tree6604 = literal6604 := by
  rw [tree6604_def, tree6602_agree, tree6603_agree]
  rfl
theorem node6604_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6604 live6604 coloured6604 = result6604 := by
  rw [tree6604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6602_eq
  unfold live6602 coloured6602 at child
  try dsimp only [live6604, coloured6604]
  rw [child]
  dsimp only [result6602]
  have child := node6603_eq
  unfold live6603 coloured6603 at child
  try dsimp only [live6604, coloured6604]
  rw [child]
  dsimp only [result6603]
  try dsimp only [colour, result6604]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6605_agree : tree6605 = literal6605 := by
  rw [tree6605_def]
  rfl
theorem node6605_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6605 live6605 coloured6605 = result6605 := by
  rw [tree6605_def]
  try dsimp only [colour, result6605]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6606_agree : tree6606 = literal6606 := by
  rw [tree6606_def, tree6604_agree, tree6605_agree]
  rfl
theorem node6606_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6606 live6606 coloured6606 = result6606 := by
  rw [tree6606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6604_eq
  unfold live6604 coloured6604 at child
  try dsimp only [live6606, coloured6606]
  rw [child]
  dsimp only [result6604]
  have child := node6605_eq
  unfold live6605 coloured6605 at child
  try dsimp only [live6606, coloured6606]
  rw [child]
  dsimp only [result6605]
  try dsimp only [colour, result6606]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6607_agree : tree6607 = literal6607 := by
  rw [tree6607_def]
  rfl
theorem node6607_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6607 live6607 coloured6607 = result6607 := by
  rw [tree6607_def]
  try dsimp only [colour, result6607]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6608_agree : tree6608 = literal6608 := by
  rw [tree6608_def, tree6606_agree, tree6607_agree]
  rfl
theorem node6608_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6608 live6608 coloured6608 = result6608 := by
  rw [tree6608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6606_eq
  unfold live6606 coloured6606 at child
  try dsimp only [live6608, coloured6608]
  rw [child]
  dsimp only [result6606]
  have child := node6607_eq
  unfold live6607 coloured6607 at child
  try dsimp only [live6608, coloured6608]
  rw [child]
  dsimp only [result6607]
  try dsimp only [colour, result6608]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6609_agree : tree6609 = literal6609 := by
  rw [tree6609_def]
  rfl
theorem node6609_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6609 live6609 coloured6609 = result6609 := by
  rw [tree6609_def]
  try dsimp only [colour, result6609]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6610_agree : tree6610 = literal6610 := by
  rw [tree6610_def, tree6608_agree, tree6609_agree]
  rfl
theorem node6610_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6610 live6610 coloured6610 = result6610 := by
  rw [tree6610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6608_eq
  unfold live6608 coloured6608 at child
  try dsimp only [live6610, coloured6610]
  rw [child]
  dsimp only [result6608]
  have child := node6609_eq
  unfold live6609 coloured6609 at child
  try dsimp only [live6610, coloured6610]
  rw [child]
  dsimp only [result6609]
  try dsimp only [colour, result6610]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6611_agree : tree6611 = literal6611 := by
  rw [tree6611_def]
  rfl
theorem node6611_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6611 live6611 coloured6611 = result6611 := by
  rw [tree6611_def]
  try dsimp only [colour, result6611]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6612_agree : tree6612 = literal6612 := by
  rw [tree6612_def, tree6610_agree, tree6611_agree]
  rfl
theorem node6612_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6612 live6612 coloured6612 = result6612 := by
  rw [tree6612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6610_eq
  unfold live6610 coloured6610 at child
  try dsimp only [live6612, coloured6612]
  rw [child]
  dsimp only [result6610]
  have child := node6611_eq
  unfold live6611 coloured6611 at child
  try dsimp only [live6612, coloured6612]
  rw [child]
  dsimp only [result6611]
  try dsimp only [colour, result6612]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6613_agree : tree6613 = literal6613 := by
  rw [tree6613_def]
  rfl
theorem node6613_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6613 live6613 coloured6613 = result6613 := by
  rw [tree6613_def]
  try dsimp only [colour, result6613]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6614_agree : tree6614 = literal6614 := by
  rw [tree6614_def, tree6612_agree, tree6613_agree]
  rfl
theorem node6614_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6614 live6614 coloured6614 = result6614 := by
  rw [tree6614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6612_eq
  unfold live6612 coloured6612 at child
  try dsimp only [live6614, coloured6614]
  rw [child]
  dsimp only [result6612]
  have child := node6613_eq
  unfold live6613 coloured6613 at child
  try dsimp only [live6614, coloured6614]
  rw [child]
  dsimp only [result6613]
  try dsimp only [colour, result6614]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6615_agree : tree6615 = literal6615 := by
  rw [tree6615_def]
  rfl
theorem node6615_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6615 live6615 coloured6615 = result6615 := by
  rw [tree6615_def]
  try dsimp only [colour, result6615]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6616_agree : tree6616 = literal6616 := by
  rw [tree6616_def, tree6614_agree, tree6615_agree]
  rfl
theorem node6616_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6616 live6616 coloured6616 = result6616 := by
  rw [tree6616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6614_eq
  unfold live6614 coloured6614 at child
  try dsimp only [live6616, coloured6616]
  rw [child]
  dsimp only [result6614]
  have child := node6615_eq
  unfold live6615 coloured6615 at child
  try dsimp only [live6616, coloured6616]
  rw [child]
  dsimp only [result6615]
  try dsimp only [colour, result6616]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6617_agree : tree6617 = literal6617 := by
  rw [tree6617_def]
  rfl
theorem node6617_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6617 live6617 coloured6617 = result6617 := by
  rw [tree6617_def]
  try dsimp only [colour, result6617]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6618_agree : tree6618 = literal6618 := by
  rw [tree6618_def, tree6616_agree, tree6617_agree]
  rfl
theorem node6618_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6618 live6618 coloured6618 = result6618 := by
  rw [tree6618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6616_eq
  unfold live6616 coloured6616 at child
  try dsimp only [live6618, coloured6618]
  rw [child]
  dsimp only [result6616]
  have child := node6617_eq
  unfold live6617 coloured6617 at child
  try dsimp only [live6618, coloured6618]
  rw [child]
  dsimp only [result6617]
  try dsimp only [colour, result6618]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6619_agree : tree6619 = literal6619 := by
  rw [tree6619_def]
  rfl
theorem node6619_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6619 live6619 coloured6619 = result6619 := by
  rw [tree6619_def]
  try dsimp only [colour, result6619]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6620_agree : tree6620 = literal6620 := by
  rw [tree6620_def, tree6618_agree, tree6619_agree]
  rfl
theorem node6620_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6620 live6620 coloured6620 = result6620 := by
  rw [tree6620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6618_eq
  unfold live6618 coloured6618 at child
  try dsimp only [live6620, coloured6620]
  rw [child]
  dsimp only [result6618]
  have child := node6619_eq
  unfold live6619 coloured6619 at child
  try dsimp only [live6620, coloured6620]
  rw [child]
  dsimp only [result6619]
  try dsimp only [colour, result6620]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6621_agree : tree6621 = literal6621 := by
  rw [tree6621_def]
  rfl
theorem node6621_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6621 live6621 coloured6621 = result6621 := by
  rw [tree6621_def]
  try dsimp only [colour, result6621]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6622_agree : tree6622 = literal6622 := by
  rw [tree6622_def, tree6620_agree, tree6621_agree]
  rfl
theorem node6622_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6622 live6622 coloured6622 = result6622 := by
  rw [tree6622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6620_eq
  unfold live6620 coloured6620 at child
  try dsimp only [live6622, coloured6622]
  rw [child]
  dsimp only [result6620]
  have child := node6621_eq
  unfold live6621 coloured6621 at child
  try dsimp only [live6622, coloured6622]
  rw [child]
  dsimp only [result6621]
  try dsimp only [colour, result6622]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6623_agree : tree6623 = literal6623 := by
  rw [tree6623_def]
  rfl
theorem node6623_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6623 live6623 coloured6623 = result6623 := by
  rw [tree6623_def]
  try dsimp only [colour, result6623]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
