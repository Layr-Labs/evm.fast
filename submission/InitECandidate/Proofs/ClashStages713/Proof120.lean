import InitECandidate.Proofs.ClashStages713.Proof119
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree11520_agree : tree11520 = literal11520 := by
  rw [tree11520_def, tree11518_agree, tree11519_agree]
  rfl
theorem node11520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11520 live11520 coloured11520 = result11520 := by
  rw [tree11520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11518_eq
  unfold live11518 coloured11518 at child
  try dsimp only [live11520, coloured11520]
  rw [child]
  dsimp only [result11518]
  have child := node11519_eq
  unfold live11519 coloured11519 at child
  try dsimp only [live11520, coloured11520]
  rw [child]
  dsimp only [result11519]
  try dsimp only [colour, result11520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11521_agree : tree11521 = literal11521 := by
  rw [tree11521_def]
  rfl
theorem node11521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11521 live11521 coloured11521 = result11521 := by
  rw [tree11521_def]
  try dsimp only [colour, result11521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11522_agree : tree11522 = literal11522 := by
  rw [tree11522_def, tree11520_agree, tree11521_agree]
  rfl
theorem node11522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11522 live11522 coloured11522 = result11522 := by
  rw [tree11522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11520_eq
  unfold live11520 coloured11520 at child
  try dsimp only [live11522, coloured11522]
  rw [child]
  dsimp only [result11520]
  have child := node11521_eq
  unfold live11521 coloured11521 at child
  try dsimp only [live11522, coloured11522]
  rw [child]
  dsimp only [result11521]
  try dsimp only [colour, result11522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11523_agree : tree11523 = literal11523 := by
  rw [tree11523_def]
  rfl
theorem node11523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11523 live11523 coloured11523 = result11523 := by
  rw [tree11523_def]
  try dsimp only [colour, result11523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11524_agree : tree11524 = literal11524 := by
  rw [tree11524_def, tree11522_agree, tree11523_agree]
  rfl
theorem node11524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11524 live11524 coloured11524 = result11524 := by
  rw [tree11524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11522_eq
  unfold live11522 coloured11522 at child
  try dsimp only [live11524, coloured11524]
  rw [child]
  dsimp only [result11522]
  have child := node11523_eq
  unfold live11523 coloured11523 at child
  try dsimp only [live11524, coloured11524]
  rw [child]
  dsimp only [result11523]
  try dsimp only [colour, result11524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11525_agree : tree11525 = literal11525 := by
  rw [tree11525_def]
  rfl
theorem node11525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11525 live11525 coloured11525 = result11525 := by
  rw [tree11525_def]
  try dsimp only [colour, result11525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11526_agree : tree11526 = literal11526 := by
  rw [tree11526_def, tree11524_agree, tree11525_agree]
  rfl
theorem node11526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11526 live11526 coloured11526 = result11526 := by
  rw [tree11526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11524_eq
  unfold live11524 coloured11524 at child
  try dsimp only [live11526, coloured11526]
  rw [child]
  dsimp only [result11524]
  have child := node11525_eq
  unfold live11525 coloured11525 at child
  try dsimp only [live11526, coloured11526]
  rw [child]
  dsimp only [result11525]
  try dsimp only [colour, result11526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11527_agree : tree11527 = literal11527 := by
  rw [tree11527_def]
  rfl
theorem node11527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11527 live11527 coloured11527 = result11527 := by
  rw [tree11527_def]
  try dsimp only [colour, result11527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11528_agree : tree11528 = literal11528 := by
  rw [tree11528_def, tree11526_agree, tree11527_agree]
  rfl
theorem node11528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11528 live11528 coloured11528 = result11528 := by
  rw [tree11528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11526_eq
  unfold live11526 coloured11526 at child
  try dsimp only [live11528, coloured11528]
  rw [child]
  dsimp only [result11526]
  have child := node11527_eq
  unfold live11527 coloured11527 at child
  try dsimp only [live11528, coloured11528]
  rw [child]
  dsimp only [result11527]
  try dsimp only [colour, result11528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11529_agree : tree11529 = literal11529 := by
  rw [tree11529_def]
  rfl
theorem node11529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11529 live11529 coloured11529 = result11529 := by
  rw [tree11529_def]
  try dsimp only [colour, result11529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11530_agree : tree11530 = literal11530 := by
  rw [tree11530_def, tree11528_agree, tree11529_agree]
  rfl
theorem node11530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11530 live11530 coloured11530 = result11530 := by
  rw [tree11530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11528_eq
  unfold live11528 coloured11528 at child
  try dsimp only [live11530, coloured11530]
  rw [child]
  dsimp only [result11528]
  have child := node11529_eq
  unfold live11529 coloured11529 at child
  try dsimp only [live11530, coloured11530]
  rw [child]
  dsimp only [result11529]
  try dsimp only [colour, result11530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11531_agree : tree11531 = literal11531 := by
  rw [tree11531_def]
  rfl
theorem node11531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11531 live11531 coloured11531 = result11531 := by
  rw [tree11531_def]
  try dsimp only [colour, result11531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11532_agree : tree11532 = literal11532 := by
  rw [tree11532_def, tree11530_agree, tree11531_agree]
  rfl
theorem node11532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11532 live11532 coloured11532 = result11532 := by
  rw [tree11532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11530_eq
  unfold live11530 coloured11530 at child
  try dsimp only [live11532, coloured11532]
  rw [child]
  dsimp only [result11530]
  have child := node11531_eq
  unfold live11531 coloured11531 at child
  try dsimp only [live11532, coloured11532]
  rw [child]
  dsimp only [result11531]
  try dsimp only [colour, result11532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11533_agree : tree11533 = literal11533 := by
  rw [tree11533_def]
  rfl
theorem node11533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11533 live11533 coloured11533 = result11533 := by
  rw [tree11533_def]
  try dsimp only [colour, result11533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11534_agree : tree11534 = literal11534 := by
  rw [tree11534_def, tree11532_agree, tree11533_agree]
  rfl
theorem node11534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11534 live11534 coloured11534 = result11534 := by
  rw [tree11534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11532_eq
  unfold live11532 coloured11532 at child
  try dsimp only [live11534, coloured11534]
  rw [child]
  dsimp only [result11532]
  have child := node11533_eq
  unfold live11533 coloured11533 at child
  try dsimp only [live11534, coloured11534]
  rw [child]
  dsimp only [result11533]
  try dsimp only [colour, result11534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11535_agree : tree11535 = literal11535 := by
  rw [tree11535_def]
  rfl
theorem node11535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11535 live11535 coloured11535 = result11535 := by
  rw [tree11535_def]
  try dsimp only [colour, result11535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11536_agree : tree11536 = literal11536 := by
  rw [tree11536_def, tree11534_agree, tree11535_agree]
  rfl
theorem node11536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11536 live11536 coloured11536 = result11536 := by
  rw [tree11536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11534_eq
  unfold live11534 coloured11534 at child
  try dsimp only [live11536, coloured11536]
  rw [child]
  dsimp only [result11534]
  have child := node11535_eq
  unfold live11535 coloured11535 at child
  try dsimp only [live11536, coloured11536]
  rw [child]
  dsimp only [result11535]
  try dsimp only [colour, result11536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11537_agree : tree11537 = literal11537 := by
  rw [tree11537_def]
  rfl
theorem node11537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11537 live11537 coloured11537 = result11537 := by
  rw [tree11537_def]
  try dsimp only [colour, result11537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11538_agree : tree11538 = literal11538 := by
  rw [tree11538_def, tree11536_agree, tree11537_agree]
  rfl
theorem node11538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11538 live11538 coloured11538 = result11538 := by
  rw [tree11538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11536_eq
  unfold live11536 coloured11536 at child
  try dsimp only [live11538, coloured11538]
  rw [child]
  dsimp only [result11536]
  have child := node11537_eq
  unfold live11537 coloured11537 at child
  try dsimp only [live11538, coloured11538]
  rw [child]
  dsimp only [result11537]
  try dsimp only [colour, result11538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11539_agree : tree11539 = literal11539 := by
  rw [tree11539_def]
  rfl
theorem node11539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11539 live11539 coloured11539 = result11539 := by
  rw [tree11539_def]
  try dsimp only [colour, result11539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11540_agree : tree11540 = literal11540 := by
  rw [tree11540_def, tree11538_agree, tree11539_agree]
  rfl
theorem node11540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11540 live11540 coloured11540 = result11540 := by
  rw [tree11540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11538_eq
  unfold live11538 coloured11538 at child
  try dsimp only [live11540, coloured11540]
  rw [child]
  dsimp only [result11538]
  have child := node11539_eq
  unfold live11539 coloured11539 at child
  try dsimp only [live11540, coloured11540]
  rw [child]
  dsimp only [result11539]
  try dsimp only [colour, result11540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11541_agree : tree11541 = literal11541 := by
  rw [tree11541_def]
  rfl
theorem node11541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11541 live11541 coloured11541 = result11541 := by
  rw [tree11541_def]
  try dsimp only [colour, result11541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11542_agree : tree11542 = literal11542 := by
  rw [tree11542_def, tree11540_agree, tree11541_agree]
  rfl
theorem node11542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11542 live11542 coloured11542 = result11542 := by
  rw [tree11542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11540_eq
  unfold live11540 coloured11540 at child
  try dsimp only [live11542, coloured11542]
  rw [child]
  dsimp only [result11540]
  have child := node11541_eq
  unfold live11541 coloured11541 at child
  try dsimp only [live11542, coloured11542]
  rw [child]
  dsimp only [result11541]
  try dsimp only [colour, result11542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11543_agree : tree11543 = literal11543 := by
  rw [tree11543_def]
  rfl
theorem node11543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11543 live11543 coloured11543 = result11543 := by
  rw [tree11543_def]
  try dsimp only [colour, result11543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11544_agree : tree11544 = literal11544 := by
  rw [tree11544_def, tree11542_agree, tree11543_agree]
  rfl
theorem node11544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11544 live11544 coloured11544 = result11544 := by
  rw [tree11544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11542_eq
  unfold live11542 coloured11542 at child
  try dsimp only [live11544, coloured11544]
  rw [child]
  dsimp only [result11542]
  have child := node11543_eq
  unfold live11543 coloured11543 at child
  try dsimp only [live11544, coloured11544]
  rw [child]
  dsimp only [result11543]
  try dsimp only [colour, result11544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11545_agree : tree11545 = literal11545 := by
  rw [tree11545_def]
  rfl
theorem node11545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11545 live11545 coloured11545 = result11545 := by
  rw [tree11545_def]
  try dsimp only [colour, result11545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11546_agree : tree11546 = literal11546 := by
  rw [tree11546_def, tree11544_agree, tree11545_agree]
  rfl
theorem node11546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11546 live11546 coloured11546 = result11546 := by
  rw [tree11546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11544_eq
  unfold live11544 coloured11544 at child
  try dsimp only [live11546, coloured11546]
  rw [child]
  dsimp only [result11544]
  have child := node11545_eq
  unfold live11545 coloured11545 at child
  try dsimp only [live11546, coloured11546]
  rw [child]
  dsimp only [result11545]
  try dsimp only [colour, result11546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11547_agree : tree11547 = literal11547 := by
  rw [tree11547_def]
  rfl
theorem node11547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11547 live11547 coloured11547 = result11547 := by
  rw [tree11547_def]
  try dsimp only [colour, result11547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11548_agree : tree11548 = literal11548 := by
  rw [tree11548_def, tree11546_agree, tree11547_agree]
  rfl
theorem node11548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11548 live11548 coloured11548 = result11548 := by
  rw [tree11548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11546_eq
  unfold live11546 coloured11546 at child
  try dsimp only [live11548, coloured11548]
  rw [child]
  dsimp only [result11546]
  have child := node11547_eq
  unfold live11547 coloured11547 at child
  try dsimp only [live11548, coloured11548]
  rw [child]
  dsimp only [result11547]
  try dsimp only [colour, result11548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11549_agree : tree11549 = literal11549 := by
  rw [tree11549_def]
  rfl
theorem node11549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11549 live11549 coloured11549 = result11549 := by
  rw [tree11549_def]
  try dsimp only [colour, result11549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11550_agree : tree11550 = literal11550 := by
  rw [tree11550_def, tree11548_agree, tree11549_agree]
  rfl
theorem node11550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11550 live11550 coloured11550 = result11550 := by
  rw [tree11550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11548_eq
  unfold live11548 coloured11548 at child
  try dsimp only [live11550, coloured11550]
  rw [child]
  dsimp only [result11548]
  have child := node11549_eq
  unfold live11549 coloured11549 at child
  try dsimp only [live11550, coloured11550]
  rw [child]
  dsimp only [result11549]
  try dsimp only [colour, result11550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11551_agree : tree11551 = literal11551 := by
  rw [tree11551_def]
  rfl
theorem node11551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11551 live11551 coloured11551 = result11551 := by
  rw [tree11551_def]
  try dsimp only [colour, result11551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11552_agree : tree11552 = literal11552 := by
  rw [tree11552_def, tree11550_agree, tree11551_agree]
  rfl
theorem node11552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11552 live11552 coloured11552 = result11552 := by
  rw [tree11552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11550_eq
  unfold live11550 coloured11550 at child
  try dsimp only [live11552, coloured11552]
  rw [child]
  dsimp only [result11550]
  have child := node11551_eq
  unfold live11551 coloured11551 at child
  try dsimp only [live11552, coloured11552]
  rw [child]
  dsimp only [result11551]
  try dsimp only [colour, result11552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11553_agree : tree11553 = literal11553 := by
  rw [tree11553_def]
  rfl
theorem node11553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11553 live11553 coloured11553 = result11553 := by
  rw [tree11553_def]
  try dsimp only [colour, result11553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11554_agree : tree11554 = literal11554 := by
  rw [tree11554_def, tree11552_agree, tree11553_agree]
  rfl
theorem node11554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11554 live11554 coloured11554 = result11554 := by
  rw [tree11554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11552_eq
  unfold live11552 coloured11552 at child
  try dsimp only [live11554, coloured11554]
  rw [child]
  dsimp only [result11552]
  have child := node11553_eq
  unfold live11553 coloured11553 at child
  try dsimp only [live11554, coloured11554]
  rw [child]
  dsimp only [result11553]
  try dsimp only [colour, result11554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11555_agree : tree11555 = literal11555 := by
  rw [tree11555_def]
  rfl
theorem node11555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11555 live11555 coloured11555 = result11555 := by
  rw [tree11555_def]
  try dsimp only [colour, result11555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11556_agree : tree11556 = literal11556 := by
  rw [tree11556_def, tree11554_agree, tree11555_agree]
  rfl
theorem node11556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11556 live11556 coloured11556 = result11556 := by
  rw [tree11556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11554_eq
  unfold live11554 coloured11554 at child
  try dsimp only [live11556, coloured11556]
  rw [child]
  dsimp only [result11554]
  have child := node11555_eq
  unfold live11555 coloured11555 at child
  try dsimp only [live11556, coloured11556]
  rw [child]
  dsimp only [result11555]
  try dsimp only [colour, result11556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11557_agree : tree11557 = literal11557 := by
  rw [tree11557_def]
  rfl
theorem node11557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11557 live11557 coloured11557 = result11557 := by
  rw [tree11557_def]
  try dsimp only [colour, result11557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11558_agree : tree11558 = literal11558 := by
  rw [tree11558_def, tree11556_agree, tree11557_agree]
  rfl
theorem node11558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11558 live11558 coloured11558 = result11558 := by
  rw [tree11558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11556_eq
  unfold live11556 coloured11556 at child
  try dsimp only [live11558, coloured11558]
  rw [child]
  dsimp only [result11556]
  have child := node11557_eq
  unfold live11557 coloured11557 at child
  try dsimp only [live11558, coloured11558]
  rw [child]
  dsimp only [result11557]
  try dsimp only [colour, result11558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11559_agree : tree11559 = literal11559 := by
  rw [tree11559_def]
  rfl
theorem node11559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11559 live11559 coloured11559 = result11559 := by
  rw [tree11559_def]
  try dsimp only [colour, result11559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11560_agree : tree11560 = literal11560 := by
  rw [tree11560_def, tree11558_agree, tree11559_agree]
  rfl
theorem node11560_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11560 live11560 coloured11560 = result11560 := by
  rw [tree11560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11558_eq
  unfold live11558 coloured11558 at child
  try dsimp only [live11560, coloured11560]
  rw [child]
  dsimp only [result11558]
  have child := node11559_eq
  unfold live11559 coloured11559 at child
  try dsimp only [live11560, coloured11560]
  rw [child]
  dsimp only [result11559]
  try dsimp only [colour, result11560]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11561_agree : tree11561 = literal11561 := by
  rw [tree11561_def]
  rfl
theorem node11561_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11561 live11561 coloured11561 = result11561 := by
  rw [tree11561_def]
  try dsimp only [colour, result11561]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11562_agree : tree11562 = literal11562 := by
  rw [tree11562_def, tree11560_agree, tree11561_agree]
  rfl
theorem node11562_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11562 live11562 coloured11562 = result11562 := by
  rw [tree11562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11560_eq
  unfold live11560 coloured11560 at child
  try dsimp only [live11562, coloured11562]
  rw [child]
  dsimp only [result11560]
  have child := node11561_eq
  unfold live11561 coloured11561 at child
  try dsimp only [live11562, coloured11562]
  rw [child]
  dsimp only [result11561]
  try dsimp only [colour, result11562]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11563_agree : tree11563 = literal11563 := by
  rw [tree11563_def]
  rfl
theorem node11563_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11563 live11563 coloured11563 = result11563 := by
  rw [tree11563_def]
  try dsimp only [colour, result11563]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11564_agree : tree11564 = literal11564 := by
  rw [tree11564_def, tree11562_agree, tree11563_agree]
  rfl
theorem node11564_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11564 live11564 coloured11564 = result11564 := by
  rw [tree11564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11562_eq
  unfold live11562 coloured11562 at child
  try dsimp only [live11564, coloured11564]
  rw [child]
  dsimp only [result11562]
  have child := node11563_eq
  unfold live11563 coloured11563 at child
  try dsimp only [live11564, coloured11564]
  rw [child]
  dsimp only [result11563]
  try dsimp only [colour, result11564]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11565_agree : tree11565 = literal11565 := by
  rw [tree11565_def]
  rfl
theorem node11565_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11565 live11565 coloured11565 = result11565 := by
  rw [tree11565_def]
  try dsimp only [colour, result11565]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11566_agree : tree11566 = literal11566 := by
  rw [tree11566_def, tree11564_agree, tree11565_agree]
  rfl
theorem node11566_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11566 live11566 coloured11566 = result11566 := by
  rw [tree11566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11564_eq
  unfold live11564 coloured11564 at child
  try dsimp only [live11566, coloured11566]
  rw [child]
  dsimp only [result11564]
  have child := node11565_eq
  unfold live11565 coloured11565 at child
  try dsimp only [live11566, coloured11566]
  rw [child]
  dsimp only [result11565]
  try dsimp only [colour, result11566]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11567_agree : tree11567 = literal11567 := by
  rw [tree11567_def]
  rfl
theorem node11567_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11567 live11567 coloured11567 = result11567 := by
  rw [tree11567_def]
  try dsimp only [colour, result11567]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11568_agree : tree11568 = literal11568 := by
  rw [tree11568_def, tree11566_agree, tree11567_agree]
  rfl
theorem node11568_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11568 live11568 coloured11568 = result11568 := by
  rw [tree11568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11566_eq
  unfold live11566 coloured11566 at child
  try dsimp only [live11568, coloured11568]
  rw [child]
  dsimp only [result11566]
  have child := node11567_eq
  unfold live11567 coloured11567 at child
  try dsimp only [live11568, coloured11568]
  rw [child]
  dsimp only [result11567]
  try dsimp only [colour, result11568]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11569_agree : tree11569 = literal11569 := by
  rw [tree11569_def]
  rfl
theorem node11569_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11569 live11569 coloured11569 = result11569 := by
  rw [tree11569_def]
  try dsimp only [colour, result11569]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11570_agree : tree11570 = literal11570 := by
  rw [tree11570_def, tree11568_agree, tree11569_agree]
  rfl
theorem node11570_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11570 live11570 coloured11570 = result11570 := by
  rw [tree11570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11568_eq
  unfold live11568 coloured11568 at child
  try dsimp only [live11570, coloured11570]
  rw [child]
  dsimp only [result11568]
  have child := node11569_eq
  unfold live11569 coloured11569 at child
  try dsimp only [live11570, coloured11570]
  rw [child]
  dsimp only [result11569]
  try dsimp only [colour, result11570]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11571_agree : tree11571 = literal11571 := by
  rw [tree11571_def]
  rfl
theorem node11571_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11571 live11571 coloured11571 = result11571 := by
  rw [tree11571_def]
  try dsimp only [colour, result11571]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11572_agree : tree11572 = literal11572 := by
  rw [tree11572_def, tree11570_agree, tree11571_agree]
  rfl
theorem node11572_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11572 live11572 coloured11572 = result11572 := by
  rw [tree11572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11570_eq
  unfold live11570 coloured11570 at child
  try dsimp only [live11572, coloured11572]
  rw [child]
  dsimp only [result11570]
  have child := node11571_eq
  unfold live11571 coloured11571 at child
  try dsimp only [live11572, coloured11572]
  rw [child]
  dsimp only [result11571]
  try dsimp only [colour, result11572]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11573_agree : tree11573 = literal11573 := by
  rw [tree11573_def]
  rfl
theorem node11573_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11573 live11573 coloured11573 = result11573 := by
  rw [tree11573_def]
  try dsimp only [colour, result11573]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11574_agree : tree11574 = literal11574 := by
  rw [tree11574_def, tree11572_agree, tree11573_agree]
  rfl
theorem node11574_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11574 live11574 coloured11574 = result11574 := by
  rw [tree11574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11572_eq
  unfold live11572 coloured11572 at child
  try dsimp only [live11574, coloured11574]
  rw [child]
  dsimp only [result11572]
  have child := node11573_eq
  unfold live11573 coloured11573 at child
  try dsimp only [live11574, coloured11574]
  rw [child]
  dsimp only [result11573]
  try dsimp only [colour, result11574]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11575_agree : tree11575 = literal11575 := by
  rw [tree11575_def]
  rfl
theorem node11575_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11575 live11575 coloured11575 = result11575 := by
  rw [tree11575_def]
  try dsimp only [colour, result11575]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11576_agree : tree11576 = literal11576 := by
  rw [tree11576_def, tree11574_agree, tree11575_agree]
  rfl
theorem node11576_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11576 live11576 coloured11576 = result11576 := by
  rw [tree11576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11574_eq
  unfold live11574 coloured11574 at child
  try dsimp only [live11576, coloured11576]
  rw [child]
  dsimp only [result11574]
  have child := node11575_eq
  unfold live11575 coloured11575 at child
  try dsimp only [live11576, coloured11576]
  rw [child]
  dsimp only [result11575]
  try dsimp only [colour, result11576]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11577_agree : tree11577 = literal11577 := by
  rw [tree11577_def]
  rfl
theorem node11577_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11577 live11577 coloured11577 = result11577 := by
  rw [tree11577_def]
  try dsimp only [colour, result11577]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11578_agree : tree11578 = literal11578 := by
  rw [tree11578_def, tree11576_agree, tree11577_agree]
  rfl
theorem node11578_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11578 live11578 coloured11578 = result11578 := by
  rw [tree11578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11576_eq
  unfold live11576 coloured11576 at child
  try dsimp only [live11578, coloured11578]
  rw [child]
  dsimp only [result11576]
  have child := node11577_eq
  unfold live11577 coloured11577 at child
  try dsimp only [live11578, coloured11578]
  rw [child]
  dsimp only [result11577]
  try dsimp only [colour, result11578]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11579_agree : tree11579 = literal11579 := by
  rw [tree11579_def]
  rfl
theorem node11579_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11579 live11579 coloured11579 = result11579 := by
  rw [tree11579_def]
  try dsimp only [colour, result11579]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11580_agree : tree11580 = literal11580 := by
  rw [tree11580_def, tree11578_agree, tree11579_agree]
  rfl
theorem node11580_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11580 live11580 coloured11580 = result11580 := by
  rw [tree11580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11578_eq
  unfold live11578 coloured11578 at child
  try dsimp only [live11580, coloured11580]
  rw [child]
  dsimp only [result11578]
  have child := node11579_eq
  unfold live11579 coloured11579 at child
  try dsimp only [live11580, coloured11580]
  rw [child]
  dsimp only [result11579]
  try dsimp only [colour, result11580]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11581_agree : tree11581 = literal11581 := by
  rw [tree11581_def]
  rfl
theorem node11581_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11581 live11581 coloured11581 = result11581 := by
  rw [tree11581_def]
  try dsimp only [colour, result11581]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11582_agree : tree11582 = literal11582 := by
  rw [tree11582_def, tree11580_agree, tree11581_agree]
  rfl
theorem node11582_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11582 live11582 coloured11582 = result11582 := by
  rw [tree11582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11580_eq
  unfold live11580 coloured11580 at child
  try dsimp only [live11582, coloured11582]
  rw [child]
  dsimp only [result11580]
  have child := node11581_eq
  unfold live11581 coloured11581 at child
  try dsimp only [live11582, coloured11582]
  rw [child]
  dsimp only [result11581]
  try dsimp only [colour, result11582]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11583_agree : tree11583 = literal11583 := by
  rw [tree11583_def]
  rfl
theorem node11583_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11583 live11583 coloured11583 = result11583 := by
  rw [tree11583_def]
  try dsimp only [colour, result11583]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11584_agree : tree11584 = literal11584 := by
  rw [tree11584_def, tree11582_agree, tree11583_agree]
  rfl
theorem node11584_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11584 live11584 coloured11584 = result11584 := by
  rw [tree11584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11582_eq
  unfold live11582 coloured11582 at child
  try dsimp only [live11584, coloured11584]
  rw [child]
  dsimp only [result11582]
  have child := node11583_eq
  unfold live11583 coloured11583 at child
  try dsimp only [live11584, coloured11584]
  rw [child]
  dsimp only [result11583]
  try dsimp only [colour, result11584]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11585_agree : tree11585 = literal11585 := by
  rw [tree11585_def]
  rfl
theorem node11585_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11585 live11585 coloured11585 = result11585 := by
  rw [tree11585_def]
  try dsimp only [colour, result11585]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11586_agree : tree11586 = literal11586 := by
  rw [tree11586_def, tree11584_agree, tree11585_agree]
  rfl
theorem node11586_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11586 live11586 coloured11586 = result11586 := by
  rw [tree11586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11584_eq
  unfold live11584 coloured11584 at child
  try dsimp only [live11586, coloured11586]
  rw [child]
  dsimp only [result11584]
  have child := node11585_eq
  unfold live11585 coloured11585 at child
  try dsimp only [live11586, coloured11586]
  rw [child]
  dsimp only [result11585]
  try dsimp only [colour, result11586]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11587_agree : tree11587 = literal11587 := by
  rw [tree11587_def]
  rfl
theorem node11587_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11587 live11587 coloured11587 = result11587 := by
  rw [tree11587_def]
  try dsimp only [colour, result11587]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11588_agree : tree11588 = literal11588 := by
  rw [tree11588_def, tree11586_agree, tree11587_agree]
  rfl
theorem node11588_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11588 live11588 coloured11588 = result11588 := by
  rw [tree11588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11586_eq
  unfold live11586 coloured11586 at child
  try dsimp only [live11588, coloured11588]
  rw [child]
  dsimp only [result11586]
  have child := node11587_eq
  unfold live11587 coloured11587 at child
  try dsimp only [live11588, coloured11588]
  rw [child]
  dsimp only [result11587]
  try dsimp only [colour, result11588]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11589_agree : tree11589 = literal11589 := by
  rw [tree11589_def]
  rfl
theorem node11589_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11589 live11589 coloured11589 = result11589 := by
  rw [tree11589_def]
  try dsimp only [colour, result11589]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11590_agree : tree11590 = literal11590 := by
  rw [tree11590_def, tree11588_agree, tree11589_agree]
  rfl
theorem node11590_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11590 live11590 coloured11590 = result11590 := by
  rw [tree11590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11588_eq
  unfold live11588 coloured11588 at child
  try dsimp only [live11590, coloured11590]
  rw [child]
  dsimp only [result11588]
  have child := node11589_eq
  unfold live11589 coloured11589 at child
  try dsimp only [live11590, coloured11590]
  rw [child]
  dsimp only [result11589]
  try dsimp only [colour, result11590]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11591_agree : tree11591 = literal11591 := by
  rw [tree11591_def]
  rfl
theorem node11591_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11591 live11591 coloured11591 = result11591 := by
  rw [tree11591_def]
  try dsimp only [colour, result11591]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11592_agree : tree11592 = literal11592 := by
  rw [tree11592_def, tree11590_agree, tree11591_agree]
  rfl
theorem node11592_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11592 live11592 coloured11592 = result11592 := by
  rw [tree11592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11590_eq
  unfold live11590 coloured11590 at child
  try dsimp only [live11592, coloured11592]
  rw [child]
  dsimp only [result11590]
  have child := node11591_eq
  unfold live11591 coloured11591 at child
  try dsimp only [live11592, coloured11592]
  rw [child]
  dsimp only [result11591]
  try dsimp only [colour, result11592]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11593_agree : tree11593 = literal11593 := by
  rw [tree11593_def]
  rfl
theorem node11593_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11593 live11593 coloured11593 = result11593 := by
  rw [tree11593_def]
  try dsimp only [colour, result11593]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11594_agree : tree11594 = literal11594 := by
  rw [tree11594_def, tree11592_agree, tree11593_agree]
  rfl
theorem node11594_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11594 live11594 coloured11594 = result11594 := by
  rw [tree11594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11592_eq
  unfold live11592 coloured11592 at child
  try dsimp only [live11594, coloured11594]
  rw [child]
  dsimp only [result11592]
  have child := node11593_eq
  unfold live11593 coloured11593 at child
  try dsimp only [live11594, coloured11594]
  rw [child]
  dsimp only [result11593]
  try dsimp only [colour, result11594]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11595_agree : tree11595 = literal11595 := by
  rw [tree11595_def]
  rfl
theorem node11595_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11595 live11595 coloured11595 = result11595 := by
  rw [tree11595_def]
  try dsimp only [colour, result11595]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11596_agree : tree11596 = literal11596 := by
  rw [tree11596_def, tree11594_agree, tree11595_agree]
  rfl
theorem node11596_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11596 live11596 coloured11596 = result11596 := by
  rw [tree11596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11594_eq
  unfold live11594 coloured11594 at child
  try dsimp only [live11596, coloured11596]
  rw [child]
  dsimp only [result11594]
  have child := node11595_eq
  unfold live11595 coloured11595 at child
  try dsimp only [live11596, coloured11596]
  rw [child]
  dsimp only [result11595]
  try dsimp only [colour, result11596]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11597_agree : tree11597 = literal11597 := by
  rw [tree11597_def]
  rfl
theorem node11597_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11597 live11597 coloured11597 = result11597 := by
  rw [tree11597_def]
  try dsimp only [colour, result11597]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11598_agree : tree11598 = literal11598 := by
  rw [tree11598_def, tree11596_agree, tree11597_agree]
  rfl
theorem node11598_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11598 live11598 coloured11598 = result11598 := by
  rw [tree11598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11596_eq
  unfold live11596 coloured11596 at child
  try dsimp only [live11598, coloured11598]
  rw [child]
  dsimp only [result11596]
  have child := node11597_eq
  unfold live11597 coloured11597 at child
  try dsimp only [live11598, coloured11598]
  rw [child]
  dsimp only [result11597]
  try dsimp only [colour, result11598]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11599_agree : tree11599 = literal11599 := by
  rw [tree11599_def]
  rfl
theorem node11599_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11599 live11599 coloured11599 = result11599 := by
  rw [tree11599_def]
  try dsimp only [colour, result11599]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11600_agree : tree11600 = literal11600 := by
  rw [tree11600_def, tree11598_agree, tree11599_agree]
  rfl
theorem node11600_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11600 live11600 coloured11600 = result11600 := by
  rw [tree11600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11598_eq
  unfold live11598 coloured11598 at child
  try dsimp only [live11600, coloured11600]
  rw [child]
  dsimp only [result11598]
  have child := node11599_eq
  unfold live11599 coloured11599 at child
  try dsimp only [live11600, coloured11600]
  rw [child]
  dsimp only [result11599]
  try dsimp only [colour, result11600]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11601_agree : tree11601 = literal11601 := by
  rw [tree11601_def]
  rfl
theorem node11601_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11601 live11601 coloured11601 = result11601 := by
  rw [tree11601_def]
  try dsimp only [colour, result11601]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11602_agree : tree11602 = literal11602 := by
  rw [tree11602_def, tree11600_agree, tree11601_agree]
  rfl
theorem node11602_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11602 live11602 coloured11602 = result11602 := by
  rw [tree11602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11600_eq
  unfold live11600 coloured11600 at child
  try dsimp only [live11602, coloured11602]
  rw [child]
  dsimp only [result11600]
  have child := node11601_eq
  unfold live11601 coloured11601 at child
  try dsimp only [live11602, coloured11602]
  rw [child]
  dsimp only [result11601]
  try dsimp only [colour, result11602]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11603_agree : tree11603 = literal11603 := by
  rw [tree11603_def]
  rfl
theorem node11603_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11603 live11603 coloured11603 = result11603 := by
  rw [tree11603_def]
  try dsimp only [colour, result11603]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11604_agree : tree11604 = literal11604 := by
  rw [tree11604_def, tree11602_agree, tree11603_agree]
  rfl
theorem node11604_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11604 live11604 coloured11604 = result11604 := by
  rw [tree11604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11602_eq
  unfold live11602 coloured11602 at child
  try dsimp only [live11604, coloured11604]
  rw [child]
  dsimp only [result11602]
  have child := node11603_eq
  unfold live11603 coloured11603 at child
  try dsimp only [live11604, coloured11604]
  rw [child]
  dsimp only [result11603]
  try dsimp only [colour, result11604]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11605_agree : tree11605 = literal11605 := by
  rw [tree11605_def]
  rfl
theorem node11605_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11605 live11605 coloured11605 = result11605 := by
  rw [tree11605_def]
  try dsimp only [colour, result11605]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11606_agree : tree11606 = literal11606 := by
  rw [tree11606_def, tree11604_agree, tree11605_agree]
  rfl
theorem node11606_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11606 live11606 coloured11606 = result11606 := by
  rw [tree11606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11604_eq
  unfold live11604 coloured11604 at child
  try dsimp only [live11606, coloured11606]
  rw [child]
  dsimp only [result11604]
  have child := node11605_eq
  unfold live11605 coloured11605 at child
  try dsimp only [live11606, coloured11606]
  rw [child]
  dsimp only [result11605]
  try dsimp only [colour, result11606]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11607_agree : tree11607 = literal11607 := by
  rw [tree11607_def]
  rfl
theorem node11607_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11607 live11607 coloured11607 = result11607 := by
  rw [tree11607_def]
  try dsimp only [colour, result11607]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11608_agree : tree11608 = literal11608 := by
  rw [tree11608_def, tree11606_agree, tree11607_agree]
  rfl
theorem node11608_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11608 live11608 coloured11608 = result11608 := by
  rw [tree11608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11606_eq
  unfold live11606 coloured11606 at child
  try dsimp only [live11608, coloured11608]
  rw [child]
  dsimp only [result11606]
  have child := node11607_eq
  unfold live11607 coloured11607 at child
  try dsimp only [live11608, coloured11608]
  rw [child]
  dsimp only [result11607]
  try dsimp only [colour, result11608]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11609_agree : tree11609 = literal11609 := by
  rw [tree11609_def]
  rfl
theorem node11609_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11609 live11609 coloured11609 = result11609 := by
  rw [tree11609_def]
  try dsimp only [colour, result11609]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11610_agree : tree11610 = literal11610 := by
  rw [tree11610_def, tree11608_agree, tree11609_agree]
  rfl
theorem node11610_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11610 live11610 coloured11610 = result11610 := by
  rw [tree11610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11608_eq
  unfold live11608 coloured11608 at child
  try dsimp only [live11610, coloured11610]
  rw [child]
  dsimp only [result11608]
  have child := node11609_eq
  unfold live11609 coloured11609 at child
  try dsimp only [live11610, coloured11610]
  rw [child]
  dsimp only [result11609]
  try dsimp only [colour, result11610]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11611_agree : tree11611 = literal11611 := by
  rw [tree11611_def]
  rfl
theorem node11611_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11611 live11611 coloured11611 = result11611 := by
  rw [tree11611_def]
  try dsimp only [colour, result11611]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11612_agree : tree11612 = literal11612 := by
  rw [tree11612_def, tree11610_agree, tree11611_agree]
  rfl
theorem node11612_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11612 live11612 coloured11612 = result11612 := by
  rw [tree11612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11610_eq
  unfold live11610 coloured11610 at child
  try dsimp only [live11612, coloured11612]
  rw [child]
  dsimp only [result11610]
  have child := node11611_eq
  unfold live11611 coloured11611 at child
  try dsimp only [live11612, coloured11612]
  rw [child]
  dsimp only [result11611]
  try dsimp only [colour, result11612]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11613_agree : tree11613 = literal11613 := by
  rw [tree11613_def]
  rfl
theorem node11613_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11613 live11613 coloured11613 = result11613 := by
  rw [tree11613_def]
  try dsimp only [colour, result11613]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11614_agree : tree11614 = literal11614 := by
  rw [tree11614_def, tree11612_agree, tree11613_agree]
  rfl
theorem node11614_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11614 live11614 coloured11614 = result11614 := by
  rw [tree11614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11612_eq
  unfold live11612 coloured11612 at child
  try dsimp only [live11614, coloured11614]
  rw [child]
  dsimp only [result11612]
  have child := node11613_eq
  unfold live11613 coloured11613 at child
  try dsimp only [live11614, coloured11614]
  rw [child]
  dsimp only [result11613]
  try dsimp only [colour, result11614]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11615_agree : tree11615 = literal11615 := by
  rw [tree11615_def]
  rfl
theorem node11615_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11615 live11615 coloured11615 = result11615 := by
  rw [tree11615_def]
  try dsimp only [colour, result11615]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
