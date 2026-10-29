import InitECandidate.Proofs.ClashStages713.Proof88
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree8544_agree : tree8544 = literal8544 := by
  rw [tree8544_def, tree8542_agree, tree8543_agree]
  rfl
theorem node8544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8544 live8544 coloured8544 = result8544 := by
  rw [tree8544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8542_eq
  unfold live8542 coloured8542 at child
  try dsimp only [live8544, coloured8544]
  rw [child]
  dsimp only [result8542]
  have child := node8543_eq
  unfold live8543 coloured8543 at child
  try dsimp only [live8544, coloured8544]
  rw [child]
  dsimp only [result8543]
  try dsimp only [colour, result8544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8545_agree : tree8545 = literal8545 := by
  rw [tree8545_def]
  rfl
theorem node8545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8545 live8545 coloured8545 = result8545 := by
  rw [tree8545_def]
  try dsimp only [colour, result8545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8546_agree : tree8546 = literal8546 := by
  rw [tree8546_def, tree8544_agree, tree8545_agree]
  rfl
theorem node8546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8546 live8546 coloured8546 = result8546 := by
  rw [tree8546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8544_eq
  unfold live8544 coloured8544 at child
  try dsimp only [live8546, coloured8546]
  rw [child]
  dsimp only [result8544]
  have child := node8545_eq
  unfold live8545 coloured8545 at child
  try dsimp only [live8546, coloured8546]
  rw [child]
  dsimp only [result8545]
  try dsimp only [colour, result8546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8547_agree : tree8547 = literal8547 := by
  rw [tree8547_def]
  rfl
theorem node8547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8547 live8547 coloured8547 = result8547 := by
  rw [tree8547_def]
  try dsimp only [colour, result8547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8548_agree : tree8548 = literal8548 := by
  rw [tree8548_def, tree8546_agree, tree8547_agree]
  rfl
theorem node8548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8548 live8548 coloured8548 = result8548 := by
  rw [tree8548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8546_eq
  unfold live8546 coloured8546 at child
  try dsimp only [live8548, coloured8548]
  rw [child]
  dsimp only [result8546]
  have child := node8547_eq
  unfold live8547 coloured8547 at child
  try dsimp only [live8548, coloured8548]
  rw [child]
  dsimp only [result8547]
  try dsimp only [colour, result8548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8549_agree : tree8549 = literal8549 := by
  rw [tree8549_def]
  rfl
theorem node8549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8549 live8549 coloured8549 = result8549 := by
  rw [tree8549_def]
  try dsimp only [colour, result8549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8550_agree : tree8550 = literal8550 := by
  rw [tree8550_def, tree8548_agree, tree8549_agree]
  rfl
theorem node8550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8550 live8550 coloured8550 = result8550 := by
  rw [tree8550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8548_eq
  unfold live8548 coloured8548 at child
  try dsimp only [live8550, coloured8550]
  rw [child]
  dsimp only [result8548]
  have child := node8549_eq
  unfold live8549 coloured8549 at child
  try dsimp only [live8550, coloured8550]
  rw [child]
  dsimp only [result8549]
  try dsimp only [colour, result8550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8551_agree : tree8551 = literal8551 := by
  rw [tree8551_def]
  rfl
theorem node8551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8551 live8551 coloured8551 = result8551 := by
  rw [tree8551_def]
  try dsimp only [colour, result8551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8552_agree : tree8552 = literal8552 := by
  rw [tree8552_def, tree8550_agree, tree8551_agree]
  rfl
theorem node8552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8552 live8552 coloured8552 = result8552 := by
  rw [tree8552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8550_eq
  unfold live8550 coloured8550 at child
  try dsimp only [live8552, coloured8552]
  rw [child]
  dsimp only [result8550]
  have child := node8551_eq
  unfold live8551 coloured8551 at child
  try dsimp only [live8552, coloured8552]
  rw [child]
  dsimp only [result8551]
  try dsimp only [colour, result8552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8553_agree : tree8553 = literal8553 := by
  rw [tree8553_def]
  rfl
theorem node8553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8553 live8553 coloured8553 = result8553 := by
  rw [tree8553_def]
  try dsimp only [colour, result8553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8554_agree : tree8554 = literal8554 := by
  rw [tree8554_def, tree8552_agree, tree8553_agree]
  rfl
theorem node8554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8554 live8554 coloured8554 = result8554 := by
  rw [tree8554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8552_eq
  unfold live8552 coloured8552 at child
  try dsimp only [live8554, coloured8554]
  rw [child]
  dsimp only [result8552]
  have child := node8553_eq
  unfold live8553 coloured8553 at child
  try dsimp only [live8554, coloured8554]
  rw [child]
  dsimp only [result8553]
  try dsimp only [colour, result8554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8555_agree : tree8555 = literal8555 := by
  rw [tree8555_def]
  rfl
theorem node8555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8555 live8555 coloured8555 = result8555 := by
  rw [tree8555_def]
  try dsimp only [colour, result8555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8556_agree : tree8556 = literal8556 := by
  rw [tree8556_def, tree8554_agree, tree8555_agree]
  rfl
theorem node8556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8556 live8556 coloured8556 = result8556 := by
  rw [tree8556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8554_eq
  unfold live8554 coloured8554 at child
  try dsimp only [live8556, coloured8556]
  rw [child]
  dsimp only [result8554]
  have child := node8555_eq
  unfold live8555 coloured8555 at child
  try dsimp only [live8556, coloured8556]
  rw [child]
  dsimp only [result8555]
  try dsimp only [colour, result8556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8557_agree : tree8557 = literal8557 := by
  rw [tree8557_def]
  rfl
theorem node8557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8557 live8557 coloured8557 = result8557 := by
  rw [tree8557_def]
  try dsimp only [colour, result8557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8558_agree : tree8558 = literal8558 := by
  rw [tree8558_def, tree8556_agree, tree8557_agree]
  rfl
theorem node8558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8558 live8558 coloured8558 = result8558 := by
  rw [tree8558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8556_eq
  unfold live8556 coloured8556 at child
  try dsimp only [live8558, coloured8558]
  rw [child]
  dsimp only [result8556]
  have child := node8557_eq
  unfold live8557 coloured8557 at child
  try dsimp only [live8558, coloured8558]
  rw [child]
  dsimp only [result8557]
  try dsimp only [colour, result8558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8559_agree : tree8559 = literal8559 := by
  rw [tree8559_def]
  rfl
theorem node8559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8559 live8559 coloured8559 = result8559 := by
  rw [tree8559_def]
  try dsimp only [colour, result8559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8560_agree : tree8560 = literal8560 := by
  rw [tree8560_def, tree8558_agree, tree8559_agree]
  rfl
theorem node8560_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8560 live8560 coloured8560 = result8560 := by
  rw [tree8560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8558_eq
  unfold live8558 coloured8558 at child
  try dsimp only [live8560, coloured8560]
  rw [child]
  dsimp only [result8558]
  have child := node8559_eq
  unfold live8559 coloured8559 at child
  try dsimp only [live8560, coloured8560]
  rw [child]
  dsimp only [result8559]
  try dsimp only [colour, result8560]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8561_agree : tree8561 = literal8561 := by
  rw [tree8561_def]
  rfl
theorem node8561_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8561 live8561 coloured8561 = result8561 := by
  rw [tree8561_def]
  try dsimp only [colour, result8561]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8562_agree : tree8562 = literal8562 := by
  rw [tree8562_def, tree8560_agree, tree8561_agree]
  rfl
theorem node8562_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8562 live8562 coloured8562 = result8562 := by
  rw [tree8562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8560_eq
  unfold live8560 coloured8560 at child
  try dsimp only [live8562, coloured8562]
  rw [child]
  dsimp only [result8560]
  have child := node8561_eq
  unfold live8561 coloured8561 at child
  try dsimp only [live8562, coloured8562]
  rw [child]
  dsimp only [result8561]
  try dsimp only [colour, result8562]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8563_agree : tree8563 = literal8563 := by
  rw [tree8563_def]
  rfl
theorem node8563_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8563 live8563 coloured8563 = result8563 := by
  rw [tree8563_def]
  try dsimp only [colour, result8563]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8564_agree : tree8564 = literal8564 := by
  rw [tree8564_def, tree8562_agree, tree8563_agree]
  rfl
theorem node8564_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8564 live8564 coloured8564 = result8564 := by
  rw [tree8564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8562_eq
  unfold live8562 coloured8562 at child
  try dsimp only [live8564, coloured8564]
  rw [child]
  dsimp only [result8562]
  have child := node8563_eq
  unfold live8563 coloured8563 at child
  try dsimp only [live8564, coloured8564]
  rw [child]
  dsimp only [result8563]
  try dsimp only [colour, result8564]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8565_agree : tree8565 = literal8565 := by
  rw [tree8565_def]
  rfl
theorem node8565_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8565 live8565 coloured8565 = result8565 := by
  rw [tree8565_def]
  try dsimp only [colour, result8565]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8566_agree : tree8566 = literal8566 := by
  rw [tree8566_def, tree8564_agree, tree8565_agree]
  rfl
theorem node8566_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8566 live8566 coloured8566 = result8566 := by
  rw [tree8566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8564_eq
  unfold live8564 coloured8564 at child
  try dsimp only [live8566, coloured8566]
  rw [child]
  dsimp only [result8564]
  have child := node8565_eq
  unfold live8565 coloured8565 at child
  try dsimp only [live8566, coloured8566]
  rw [child]
  dsimp only [result8565]
  try dsimp only [colour, result8566]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8567_agree : tree8567 = literal8567 := by
  rw [tree8567_def]
  rfl
theorem node8567_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8567 live8567 coloured8567 = result8567 := by
  rw [tree8567_def]
  try dsimp only [colour, result8567]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8568_agree : tree8568 = literal8568 := by
  rw [tree8568_def, tree8566_agree, tree8567_agree]
  rfl
theorem node8568_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8568 live8568 coloured8568 = result8568 := by
  rw [tree8568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8566_eq
  unfold live8566 coloured8566 at child
  try dsimp only [live8568, coloured8568]
  rw [child]
  dsimp only [result8566]
  have child := node8567_eq
  unfold live8567 coloured8567 at child
  try dsimp only [live8568, coloured8568]
  rw [child]
  dsimp only [result8567]
  try dsimp only [colour, result8568]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8569_agree : tree8569 = literal8569 := by
  rw [tree8569_def]
  rfl
theorem node8569_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8569 live8569 coloured8569 = result8569 := by
  rw [tree8569_def]
  try dsimp only [colour, result8569]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8570_agree : tree8570 = literal8570 := by
  rw [tree8570_def, tree8568_agree, tree8569_agree]
  rfl
theorem node8570_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8570 live8570 coloured8570 = result8570 := by
  rw [tree8570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8568_eq
  unfold live8568 coloured8568 at child
  try dsimp only [live8570, coloured8570]
  rw [child]
  dsimp only [result8568]
  have child := node8569_eq
  unfold live8569 coloured8569 at child
  try dsimp only [live8570, coloured8570]
  rw [child]
  dsimp only [result8569]
  try dsimp only [colour, result8570]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8571_agree : tree8571 = literal8571 := by
  rw [tree8571_def]
  rfl
theorem node8571_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8571 live8571 coloured8571 = result8571 := by
  rw [tree8571_def]
  try dsimp only [colour, result8571]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8572_agree : tree8572 = literal8572 := by
  rw [tree8572_def, tree8570_agree, tree8571_agree]
  rfl
theorem node8572_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8572 live8572 coloured8572 = result8572 := by
  rw [tree8572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8570_eq
  unfold live8570 coloured8570 at child
  try dsimp only [live8572, coloured8572]
  rw [child]
  dsimp only [result8570]
  have child := node8571_eq
  unfold live8571 coloured8571 at child
  try dsimp only [live8572, coloured8572]
  rw [child]
  dsimp only [result8571]
  try dsimp only [colour, result8572]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8573_agree : tree8573 = literal8573 := by
  rw [tree8573_def]
  rfl
theorem node8573_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8573 live8573 coloured8573 = result8573 := by
  rw [tree8573_def]
  try dsimp only [colour, result8573]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8574_agree : tree8574 = literal8574 := by
  rw [tree8574_def, tree8572_agree, tree8573_agree]
  rfl
theorem node8574_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8574 live8574 coloured8574 = result8574 := by
  rw [tree8574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8572_eq
  unfold live8572 coloured8572 at child
  try dsimp only [live8574, coloured8574]
  rw [child]
  dsimp only [result8572]
  have child := node8573_eq
  unfold live8573 coloured8573 at child
  try dsimp only [live8574, coloured8574]
  rw [child]
  dsimp only [result8573]
  try dsimp only [colour, result8574]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8575_agree : tree8575 = literal8575 := by
  rw [tree8575_def]
  rfl
theorem node8575_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8575 live8575 coloured8575 = result8575 := by
  rw [tree8575_def]
  try dsimp only [colour, result8575]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8576_agree : tree8576 = literal8576 := by
  rw [tree8576_def, tree8574_agree, tree8575_agree]
  rfl
theorem node8576_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8576 live8576 coloured8576 = result8576 := by
  rw [tree8576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8574_eq
  unfold live8574 coloured8574 at child
  try dsimp only [live8576, coloured8576]
  rw [child]
  dsimp only [result8574]
  have child := node8575_eq
  unfold live8575 coloured8575 at child
  try dsimp only [live8576, coloured8576]
  rw [child]
  dsimp only [result8575]
  try dsimp only [colour, result8576]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8577_agree : tree8577 = literal8577 := by
  rw [tree8577_def]
  rfl
theorem node8577_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8577 live8577 coloured8577 = result8577 := by
  rw [tree8577_def]
  try dsimp only [colour, result8577]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8578_agree : tree8578 = literal8578 := by
  rw [tree8578_def, tree8576_agree, tree8577_agree]
  rfl
theorem node8578_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8578 live8578 coloured8578 = result8578 := by
  rw [tree8578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8576_eq
  unfold live8576 coloured8576 at child
  try dsimp only [live8578, coloured8578]
  rw [child]
  dsimp only [result8576]
  have child := node8577_eq
  unfold live8577 coloured8577 at child
  try dsimp only [live8578, coloured8578]
  rw [child]
  dsimp only [result8577]
  try dsimp only [colour, result8578]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8579_agree : tree8579 = literal8579 := by
  rw [tree8579_def]
  rfl
theorem node8579_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8579 live8579 coloured8579 = result8579 := by
  rw [tree8579_def]
  try dsimp only [colour, result8579]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8580_agree : tree8580 = literal8580 := by
  rw [tree8580_def, tree8578_agree, tree8579_agree]
  rfl
theorem node8580_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8580 live8580 coloured8580 = result8580 := by
  rw [tree8580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8578_eq
  unfold live8578 coloured8578 at child
  try dsimp only [live8580, coloured8580]
  rw [child]
  dsimp only [result8578]
  have child := node8579_eq
  unfold live8579 coloured8579 at child
  try dsimp only [live8580, coloured8580]
  rw [child]
  dsimp only [result8579]
  try dsimp only [colour, result8580]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8581_agree : tree8581 = literal8581 := by
  rw [tree8581_def]
  rfl
theorem node8581_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8581 live8581 coloured8581 = result8581 := by
  rw [tree8581_def]
  try dsimp only [colour, result8581]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8582_agree : tree8582 = literal8582 := by
  rw [tree8582_def, tree8580_agree, tree8581_agree]
  rfl
theorem node8582_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8582 live8582 coloured8582 = result8582 := by
  rw [tree8582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8580_eq
  unfold live8580 coloured8580 at child
  try dsimp only [live8582, coloured8582]
  rw [child]
  dsimp only [result8580]
  have child := node8581_eq
  unfold live8581 coloured8581 at child
  try dsimp only [live8582, coloured8582]
  rw [child]
  dsimp only [result8581]
  try dsimp only [colour, result8582]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8583_agree : tree8583 = literal8583 := by
  rw [tree8583_def]
  rfl
theorem node8583_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8583 live8583 coloured8583 = result8583 := by
  rw [tree8583_def]
  try dsimp only [colour, result8583]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8584_agree : tree8584 = literal8584 := by
  rw [tree8584_def, tree8582_agree, tree8583_agree]
  rfl
theorem node8584_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8584 live8584 coloured8584 = result8584 := by
  rw [tree8584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8582_eq
  unfold live8582 coloured8582 at child
  try dsimp only [live8584, coloured8584]
  rw [child]
  dsimp only [result8582]
  have child := node8583_eq
  unfold live8583 coloured8583 at child
  try dsimp only [live8584, coloured8584]
  rw [child]
  dsimp only [result8583]
  try dsimp only [colour, result8584]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8585_agree : tree8585 = literal8585 := by
  rw [tree8585_def]
  rfl
theorem node8585_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8585 live8585 coloured8585 = result8585 := by
  rw [tree8585_def]
  try dsimp only [colour, result8585]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8586_agree : tree8586 = literal8586 := by
  rw [tree8586_def, tree8584_agree, tree8585_agree]
  rfl
theorem node8586_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8586 live8586 coloured8586 = result8586 := by
  rw [tree8586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8584_eq
  unfold live8584 coloured8584 at child
  try dsimp only [live8586, coloured8586]
  rw [child]
  dsimp only [result8584]
  have child := node8585_eq
  unfold live8585 coloured8585 at child
  try dsimp only [live8586, coloured8586]
  rw [child]
  dsimp only [result8585]
  try dsimp only [colour, result8586]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8587_agree : tree8587 = literal8587 := by
  rw [tree8587_def]
  rfl
theorem node8587_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8587 live8587 coloured8587 = result8587 := by
  rw [tree8587_def]
  try dsimp only [colour, result8587]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8588_agree : tree8588 = literal8588 := by
  rw [tree8588_def, tree8586_agree, tree8587_agree]
  rfl
theorem node8588_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8588 live8588 coloured8588 = result8588 := by
  rw [tree8588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8586_eq
  unfold live8586 coloured8586 at child
  try dsimp only [live8588, coloured8588]
  rw [child]
  dsimp only [result8586]
  have child := node8587_eq
  unfold live8587 coloured8587 at child
  try dsimp only [live8588, coloured8588]
  rw [child]
  dsimp only [result8587]
  try dsimp only [colour, result8588]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8589_agree : tree8589 = literal8589 := by
  rw [tree8589_def]
  rfl
theorem node8589_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8589 live8589 coloured8589 = result8589 := by
  rw [tree8589_def]
  try dsimp only [colour, result8589]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8590_agree : tree8590 = literal8590 := by
  rw [tree8590_def, tree8588_agree, tree8589_agree]
  rfl
theorem node8590_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8590 live8590 coloured8590 = result8590 := by
  rw [tree8590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8588_eq
  unfold live8588 coloured8588 at child
  try dsimp only [live8590, coloured8590]
  rw [child]
  dsimp only [result8588]
  have child := node8589_eq
  unfold live8589 coloured8589 at child
  try dsimp only [live8590, coloured8590]
  rw [child]
  dsimp only [result8589]
  try dsimp only [colour, result8590]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8591_agree : tree8591 = literal8591 := by
  rw [tree8591_def]
  rfl
theorem node8591_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8591 live8591 coloured8591 = result8591 := by
  rw [tree8591_def]
  try dsimp only [colour, result8591]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8592_agree : tree8592 = literal8592 := by
  rw [tree8592_def, tree8590_agree, tree8591_agree]
  rfl
theorem node8592_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8592 live8592 coloured8592 = result8592 := by
  rw [tree8592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8590_eq
  unfold live8590 coloured8590 at child
  try dsimp only [live8592, coloured8592]
  rw [child]
  dsimp only [result8590]
  have child := node8591_eq
  unfold live8591 coloured8591 at child
  try dsimp only [live8592, coloured8592]
  rw [child]
  dsimp only [result8591]
  try dsimp only [colour, result8592]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8593_agree : tree8593 = literal8593 := by
  rw [tree8593_def]
  rfl
theorem node8593_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8593 live8593 coloured8593 = result8593 := by
  rw [tree8593_def]
  try dsimp only [colour, result8593]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8594_agree : tree8594 = literal8594 := by
  rw [tree8594_def, tree8592_agree, tree8593_agree]
  rfl
theorem node8594_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8594 live8594 coloured8594 = result8594 := by
  rw [tree8594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8592_eq
  unfold live8592 coloured8592 at child
  try dsimp only [live8594, coloured8594]
  rw [child]
  dsimp only [result8592]
  have child := node8593_eq
  unfold live8593 coloured8593 at child
  try dsimp only [live8594, coloured8594]
  rw [child]
  dsimp only [result8593]
  try dsimp only [colour, result8594]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8595_agree : tree8595 = literal8595 := by
  rw [tree8595_def]
  rfl
theorem node8595_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8595 live8595 coloured8595 = result8595 := by
  rw [tree8595_def]
  try dsimp only [colour, result8595]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8596_agree : tree8596 = literal8596 := by
  rw [tree8596_def, tree8594_agree, tree8595_agree]
  rfl
theorem node8596_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8596 live8596 coloured8596 = result8596 := by
  rw [tree8596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8594_eq
  unfold live8594 coloured8594 at child
  try dsimp only [live8596, coloured8596]
  rw [child]
  dsimp only [result8594]
  have child := node8595_eq
  unfold live8595 coloured8595 at child
  try dsimp only [live8596, coloured8596]
  rw [child]
  dsimp only [result8595]
  try dsimp only [colour, result8596]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8597_agree : tree8597 = literal8597 := by
  rw [tree8597_def]
  rfl
theorem node8597_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8597 live8597 coloured8597 = result8597 := by
  rw [tree8597_def]
  try dsimp only [colour, result8597]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8598_agree : tree8598 = literal8598 := by
  rw [tree8598_def, tree8596_agree, tree8597_agree]
  rfl
theorem node8598_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8598 live8598 coloured8598 = result8598 := by
  rw [tree8598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8596_eq
  unfold live8596 coloured8596 at child
  try dsimp only [live8598, coloured8598]
  rw [child]
  dsimp only [result8596]
  have child := node8597_eq
  unfold live8597 coloured8597 at child
  try dsimp only [live8598, coloured8598]
  rw [child]
  dsimp only [result8597]
  try dsimp only [colour, result8598]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8599_agree : tree8599 = literal8599 := by
  rw [tree8599_def]
  rfl
theorem node8599_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8599 live8599 coloured8599 = result8599 := by
  rw [tree8599_def]
  try dsimp only [colour, result8599]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8600_agree : tree8600 = literal8600 := by
  rw [tree8600_def, tree8598_agree, tree8599_agree]
  rfl
theorem node8600_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8600 live8600 coloured8600 = result8600 := by
  rw [tree8600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8598_eq
  unfold live8598 coloured8598 at child
  try dsimp only [live8600, coloured8600]
  rw [child]
  dsimp only [result8598]
  have child := node8599_eq
  unfold live8599 coloured8599 at child
  try dsimp only [live8600, coloured8600]
  rw [child]
  dsimp only [result8599]
  try dsimp only [colour, result8600]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8601_agree : tree8601 = literal8601 := by
  rw [tree8601_def]
  rfl
theorem node8601_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8601 live8601 coloured8601 = result8601 := by
  rw [tree8601_def]
  try dsimp only [colour, result8601]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8602_agree : tree8602 = literal8602 := by
  rw [tree8602_def, tree8600_agree, tree8601_agree]
  rfl
theorem node8602_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8602 live8602 coloured8602 = result8602 := by
  rw [tree8602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8600_eq
  unfold live8600 coloured8600 at child
  try dsimp only [live8602, coloured8602]
  rw [child]
  dsimp only [result8600]
  have child := node8601_eq
  unfold live8601 coloured8601 at child
  try dsimp only [live8602, coloured8602]
  rw [child]
  dsimp only [result8601]
  try dsimp only [colour, result8602]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8603_agree : tree8603 = literal8603 := by
  rw [tree8603_def]
  rfl
theorem node8603_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8603 live8603 coloured8603 = result8603 := by
  rw [tree8603_def]
  try dsimp only [colour, result8603]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8604_agree : tree8604 = literal8604 := by
  rw [tree8604_def, tree8602_agree, tree8603_agree]
  rfl
theorem node8604_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8604 live8604 coloured8604 = result8604 := by
  rw [tree8604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8602_eq
  unfold live8602 coloured8602 at child
  try dsimp only [live8604, coloured8604]
  rw [child]
  dsimp only [result8602]
  have child := node8603_eq
  unfold live8603 coloured8603 at child
  try dsimp only [live8604, coloured8604]
  rw [child]
  dsimp only [result8603]
  try dsimp only [colour, result8604]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8605_agree : tree8605 = literal8605 := by
  rw [tree8605_def]
  rfl
theorem node8605_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8605 live8605 coloured8605 = result8605 := by
  rw [tree8605_def]
  try dsimp only [colour, result8605]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8606_agree : tree8606 = literal8606 := by
  rw [tree8606_def, tree8604_agree, tree8605_agree]
  rfl
theorem node8606_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8606 live8606 coloured8606 = result8606 := by
  rw [tree8606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8604_eq
  unfold live8604 coloured8604 at child
  try dsimp only [live8606, coloured8606]
  rw [child]
  dsimp only [result8604]
  have child := node8605_eq
  unfold live8605 coloured8605 at child
  try dsimp only [live8606, coloured8606]
  rw [child]
  dsimp only [result8605]
  try dsimp only [colour, result8606]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8607_agree : tree8607 = literal8607 := by
  rw [tree8607_def]
  rfl
theorem node8607_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8607 live8607 coloured8607 = result8607 := by
  rw [tree8607_def]
  try dsimp only [colour, result8607]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8608_agree : tree8608 = literal8608 := by
  rw [tree8608_def, tree8606_agree, tree8607_agree]
  rfl
theorem node8608_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8608 live8608 coloured8608 = result8608 := by
  rw [tree8608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8606_eq
  unfold live8606 coloured8606 at child
  try dsimp only [live8608, coloured8608]
  rw [child]
  dsimp only [result8606]
  have child := node8607_eq
  unfold live8607 coloured8607 at child
  try dsimp only [live8608, coloured8608]
  rw [child]
  dsimp only [result8607]
  try dsimp only [colour, result8608]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8609_agree : tree8609 = literal8609 := by
  rw [tree8609_def]
  rfl
theorem node8609_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8609 live8609 coloured8609 = result8609 := by
  rw [tree8609_def]
  try dsimp only [colour, result8609]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8610_agree : tree8610 = literal8610 := by
  rw [tree8610_def, tree8608_agree, tree8609_agree]
  rfl
theorem node8610_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8610 live8610 coloured8610 = result8610 := by
  rw [tree8610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8608_eq
  unfold live8608 coloured8608 at child
  try dsimp only [live8610, coloured8610]
  rw [child]
  dsimp only [result8608]
  have child := node8609_eq
  unfold live8609 coloured8609 at child
  try dsimp only [live8610, coloured8610]
  rw [child]
  dsimp only [result8609]
  try dsimp only [colour, result8610]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8611_agree : tree8611 = literal8611 := by
  rw [tree8611_def]
  rfl
theorem node8611_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8611 live8611 coloured8611 = result8611 := by
  rw [tree8611_def]
  try dsimp only [colour, result8611]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8612_agree : tree8612 = literal8612 := by
  rw [tree8612_def, tree8610_agree, tree8611_agree]
  rfl
theorem node8612_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8612 live8612 coloured8612 = result8612 := by
  rw [tree8612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8610_eq
  unfold live8610 coloured8610 at child
  try dsimp only [live8612, coloured8612]
  rw [child]
  dsimp only [result8610]
  have child := node8611_eq
  unfold live8611 coloured8611 at child
  try dsimp only [live8612, coloured8612]
  rw [child]
  dsimp only [result8611]
  try dsimp only [colour, result8612]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8613_agree : tree8613 = literal8613 := by
  rw [tree8613_def]
  rfl
theorem node8613_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8613 live8613 coloured8613 = result8613 := by
  rw [tree8613_def]
  try dsimp only [colour, result8613]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8614_agree : tree8614 = literal8614 := by
  rw [tree8614_def, tree8612_agree, tree8613_agree]
  rfl
theorem node8614_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8614 live8614 coloured8614 = result8614 := by
  rw [tree8614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8612_eq
  unfold live8612 coloured8612 at child
  try dsimp only [live8614, coloured8614]
  rw [child]
  dsimp only [result8612]
  have child := node8613_eq
  unfold live8613 coloured8613 at child
  try dsimp only [live8614, coloured8614]
  rw [child]
  dsimp only [result8613]
  try dsimp only [colour, result8614]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8615_agree : tree8615 = literal8615 := by
  rw [tree8615_def]
  rfl
theorem node8615_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8615 live8615 coloured8615 = result8615 := by
  rw [tree8615_def]
  try dsimp only [colour, result8615]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8616_agree : tree8616 = literal8616 := by
  rw [tree8616_def, tree8614_agree, tree8615_agree]
  rfl
theorem node8616_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8616 live8616 coloured8616 = result8616 := by
  rw [tree8616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8614_eq
  unfold live8614 coloured8614 at child
  try dsimp only [live8616, coloured8616]
  rw [child]
  dsimp only [result8614]
  have child := node8615_eq
  unfold live8615 coloured8615 at child
  try dsimp only [live8616, coloured8616]
  rw [child]
  dsimp only [result8615]
  try dsimp only [colour, result8616]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8617_agree : tree8617 = literal8617 := by
  rw [tree8617_def]
  rfl
theorem node8617_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8617 live8617 coloured8617 = result8617 := by
  rw [tree8617_def]
  try dsimp only [colour, result8617]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8618_agree : tree8618 = literal8618 := by
  rw [tree8618_def, tree8616_agree, tree8617_agree]
  rfl
theorem node8618_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8618 live8618 coloured8618 = result8618 := by
  rw [tree8618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8616_eq
  unfold live8616 coloured8616 at child
  try dsimp only [live8618, coloured8618]
  rw [child]
  dsimp only [result8616]
  have child := node8617_eq
  unfold live8617 coloured8617 at child
  try dsimp only [live8618, coloured8618]
  rw [child]
  dsimp only [result8617]
  try dsimp only [colour, result8618]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8619_agree : tree8619 = literal8619 := by
  rw [tree8619_def]
  rfl
theorem node8619_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8619 live8619 coloured8619 = result8619 := by
  rw [tree8619_def]
  try dsimp only [colour, result8619]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8620_agree : tree8620 = literal8620 := by
  rw [tree8620_def, tree8618_agree, tree8619_agree]
  rfl
theorem node8620_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8620 live8620 coloured8620 = result8620 := by
  rw [tree8620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8618_eq
  unfold live8618 coloured8618 at child
  try dsimp only [live8620, coloured8620]
  rw [child]
  dsimp only [result8618]
  have child := node8619_eq
  unfold live8619 coloured8619 at child
  try dsimp only [live8620, coloured8620]
  rw [child]
  dsimp only [result8619]
  try dsimp only [colour, result8620]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8621_agree : tree8621 = literal8621 := by
  rw [tree8621_def]
  rfl
theorem node8621_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8621 live8621 coloured8621 = result8621 := by
  rw [tree8621_def]
  try dsimp only [colour, result8621]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8622_agree : tree8622 = literal8622 := by
  rw [tree8622_def, tree8620_agree, tree8621_agree]
  rfl
theorem node8622_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8622 live8622 coloured8622 = result8622 := by
  rw [tree8622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8620_eq
  unfold live8620 coloured8620 at child
  try dsimp only [live8622, coloured8622]
  rw [child]
  dsimp only [result8620]
  have child := node8621_eq
  unfold live8621 coloured8621 at child
  try dsimp only [live8622, coloured8622]
  rw [child]
  dsimp only [result8621]
  try dsimp only [colour, result8622]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8623_agree : tree8623 = literal8623 := by
  rw [tree8623_def]
  rfl
theorem node8623_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8623 live8623 coloured8623 = result8623 := by
  rw [tree8623_def]
  try dsimp only [colour, result8623]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8624_agree : tree8624 = literal8624 := by
  rw [tree8624_def, tree8622_agree, tree8623_agree]
  rfl
theorem node8624_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8624 live8624 coloured8624 = result8624 := by
  rw [tree8624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8622_eq
  unfold live8622 coloured8622 at child
  try dsimp only [live8624, coloured8624]
  rw [child]
  dsimp only [result8622]
  have child := node8623_eq
  unfold live8623 coloured8623 at child
  try dsimp only [live8624, coloured8624]
  rw [child]
  dsimp only [result8623]
  try dsimp only [colour, result8624]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8625_agree : tree8625 = literal8625 := by
  rw [tree8625_def]
  rfl
theorem node8625_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8625 live8625 coloured8625 = result8625 := by
  rw [tree8625_def]
  try dsimp only [colour, result8625]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8626_agree : tree8626 = literal8626 := by
  rw [tree8626_def, tree8624_agree, tree8625_agree]
  rfl
theorem node8626_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8626 live8626 coloured8626 = result8626 := by
  rw [tree8626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8624_eq
  unfold live8624 coloured8624 at child
  try dsimp only [live8626, coloured8626]
  rw [child]
  dsimp only [result8624]
  have child := node8625_eq
  unfold live8625 coloured8625 at child
  try dsimp only [live8626, coloured8626]
  rw [child]
  dsimp only [result8625]
  try dsimp only [colour, result8626]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8627_agree : tree8627 = literal8627 := by
  rw [tree8627_def]
  rfl
theorem node8627_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8627 live8627 coloured8627 = result8627 := by
  rw [tree8627_def]
  try dsimp only [colour, result8627]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8628_agree : tree8628 = literal8628 := by
  rw [tree8628_def, tree8626_agree, tree8627_agree]
  rfl
theorem node8628_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8628 live8628 coloured8628 = result8628 := by
  rw [tree8628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8626_eq
  unfold live8626 coloured8626 at child
  try dsimp only [live8628, coloured8628]
  rw [child]
  dsimp only [result8626]
  have child := node8627_eq
  unfold live8627 coloured8627 at child
  try dsimp only [live8628, coloured8628]
  rw [child]
  dsimp only [result8627]
  try dsimp only [colour, result8628]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8629_agree : tree8629 = literal8629 := by
  rw [tree8629_def]
  rfl
theorem node8629_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8629 live8629 coloured8629 = result8629 := by
  rw [tree8629_def]
  try dsimp only [colour, result8629]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8630_agree : tree8630 = literal8630 := by
  rw [tree8630_def, tree8628_agree, tree8629_agree]
  rfl
theorem node8630_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8630 live8630 coloured8630 = result8630 := by
  rw [tree8630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8628_eq
  unfold live8628 coloured8628 at child
  try dsimp only [live8630, coloured8630]
  rw [child]
  dsimp only [result8628]
  have child := node8629_eq
  unfold live8629 coloured8629 at child
  try dsimp only [live8630, coloured8630]
  rw [child]
  dsimp only [result8629]
  try dsimp only [colour, result8630]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8631_agree : tree8631 = literal8631 := by
  rw [tree8631_def]
  rfl
theorem node8631_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8631 live8631 coloured8631 = result8631 := by
  rw [tree8631_def]
  try dsimp only [colour, result8631]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8632_agree : tree8632 = literal8632 := by
  rw [tree8632_def, tree8630_agree, tree8631_agree]
  rfl
theorem node8632_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8632 live8632 coloured8632 = result8632 := by
  rw [tree8632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8630_eq
  unfold live8630 coloured8630 at child
  try dsimp only [live8632, coloured8632]
  rw [child]
  dsimp only [result8630]
  have child := node8631_eq
  unfold live8631 coloured8631 at child
  try dsimp only [live8632, coloured8632]
  rw [child]
  dsimp only [result8631]
  try dsimp only [colour, result8632]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8633_agree : tree8633 = literal8633 := by
  rw [tree8633_def]
  rfl
theorem node8633_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8633 live8633 coloured8633 = result8633 := by
  rw [tree8633_def]
  try dsimp only [colour, result8633]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8634_agree : tree8634 = literal8634 := by
  rw [tree8634_def, tree8632_agree, tree8633_agree]
  rfl
theorem node8634_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8634 live8634 coloured8634 = result8634 := by
  rw [tree8634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8632_eq
  unfold live8632 coloured8632 at child
  try dsimp only [live8634, coloured8634]
  rw [child]
  dsimp only [result8632]
  have child := node8633_eq
  unfold live8633 coloured8633 at child
  try dsimp only [live8634, coloured8634]
  rw [child]
  dsimp only [result8633]
  try dsimp only [colour, result8634]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8635_agree : tree8635 = literal8635 := by
  rw [tree8635_def]
  rfl
theorem node8635_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8635 live8635 coloured8635 = result8635 := by
  rw [tree8635_def]
  try dsimp only [colour, result8635]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8636_agree : tree8636 = literal8636 := by
  rw [tree8636_def, tree8634_agree, tree8635_agree]
  rfl
theorem node8636_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8636 live8636 coloured8636 = result8636 := by
  rw [tree8636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8634_eq
  unfold live8634 coloured8634 at child
  try dsimp only [live8636, coloured8636]
  rw [child]
  dsimp only [result8634]
  have child := node8635_eq
  unfold live8635 coloured8635 at child
  try dsimp only [live8636, coloured8636]
  rw [child]
  dsimp only [result8635]
  try dsimp only [colour, result8636]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8637_agree : tree8637 = literal8637 := by
  rw [tree8637_def]
  rfl
theorem node8637_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8637 live8637 coloured8637 = result8637 := by
  rw [tree8637_def]
  try dsimp only [colour, result8637]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8638_agree : tree8638 = literal8638 := by
  rw [tree8638_def, tree8636_agree, tree8637_agree]
  rfl
theorem node8638_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8638 live8638 coloured8638 = result8638 := by
  rw [tree8638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8636_eq
  unfold live8636 coloured8636 at child
  try dsimp only [live8638, coloured8638]
  rw [child]
  dsimp only [result8636]
  have child := node8637_eq
  unfold live8637 coloured8637 at child
  try dsimp only [live8638, coloured8638]
  rw [child]
  dsimp only [result8637]
  try dsimp only [colour, result8638]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8639_agree : tree8639 = literal8639 := by
  rw [tree8639_def]
  rfl
theorem node8639_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8639 live8639 coloured8639 = result8639 := by
  rw [tree8639_def]
  try dsimp only [colour, result8639]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
