import InitECandidate.Proofs.ClashStages713.Proof99
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9600_agree : tree9600 = literal9600 := by
  rw [tree9600_def, tree9598_agree, tree9599_agree]
  rfl
theorem node9600_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9600 live9600 coloured9600 = result9600 := by
  rw [tree9600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9598_eq
  unfold live9598 coloured9598 at child
  try dsimp only [live9600, coloured9600]
  rw [child]
  dsimp only [result9598]
  have child := node9599_eq
  unfold live9599 coloured9599 at child
  try dsimp only [live9600, coloured9600]
  rw [child]
  dsimp only [result9599]
  try dsimp only [colour, result9600]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9601_agree : tree9601 = literal9601 := by
  rw [tree9601_def]
  rfl
theorem node9601_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9601 live9601 coloured9601 = result9601 := by
  rw [tree9601_def]
  try dsimp only [colour, result9601]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9602_agree : tree9602 = literal9602 := by
  rw [tree9602_def, tree9600_agree, tree9601_agree]
  rfl
theorem node9602_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9602 live9602 coloured9602 = result9602 := by
  rw [tree9602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9600_eq
  unfold live9600 coloured9600 at child
  try dsimp only [live9602, coloured9602]
  rw [child]
  dsimp only [result9600]
  have child := node9601_eq
  unfold live9601 coloured9601 at child
  try dsimp only [live9602, coloured9602]
  rw [child]
  dsimp only [result9601]
  try dsimp only [colour, result9602]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9603_agree : tree9603 = literal9603 := by
  rw [tree9603_def]
  rfl
theorem node9603_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9603 live9603 coloured9603 = result9603 := by
  rw [tree9603_def]
  try dsimp only [colour, result9603]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9604_agree : tree9604 = literal9604 := by
  rw [tree9604_def, tree9602_agree, tree9603_agree]
  rfl
theorem node9604_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9604 live9604 coloured9604 = result9604 := by
  rw [tree9604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9602_eq
  unfold live9602 coloured9602 at child
  try dsimp only [live9604, coloured9604]
  rw [child]
  dsimp only [result9602]
  have child := node9603_eq
  unfold live9603 coloured9603 at child
  try dsimp only [live9604, coloured9604]
  rw [child]
  dsimp only [result9603]
  try dsimp only [colour, result9604]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9605_agree : tree9605 = literal9605 := by
  rw [tree9605_def]
  rfl
theorem node9605_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9605 live9605 coloured9605 = result9605 := by
  rw [tree9605_def]
  try dsimp only [colour, result9605]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9606_agree : tree9606 = literal9606 := by
  rw [tree9606_def, tree9604_agree, tree9605_agree]
  rfl
theorem node9606_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9606 live9606 coloured9606 = result9606 := by
  rw [tree9606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9604_eq
  unfold live9604 coloured9604 at child
  try dsimp only [live9606, coloured9606]
  rw [child]
  dsimp only [result9604]
  have child := node9605_eq
  unfold live9605 coloured9605 at child
  try dsimp only [live9606, coloured9606]
  rw [child]
  dsimp only [result9605]
  try dsimp only [colour, result9606]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9607_agree : tree9607 = literal9607 := by
  rw [tree9607_def]
  rfl
theorem node9607_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9607 live9607 coloured9607 = result9607 := by
  rw [tree9607_def]
  try dsimp only [colour, result9607]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9608_agree : tree9608 = literal9608 := by
  rw [tree9608_def, tree9606_agree, tree9607_agree]
  rfl
theorem node9608_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9608 live9608 coloured9608 = result9608 := by
  rw [tree9608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9606_eq
  unfold live9606 coloured9606 at child
  try dsimp only [live9608, coloured9608]
  rw [child]
  dsimp only [result9606]
  have child := node9607_eq
  unfold live9607 coloured9607 at child
  try dsimp only [live9608, coloured9608]
  rw [child]
  dsimp only [result9607]
  try dsimp only [colour, result9608]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9609_agree : tree9609 = literal9609 := by
  rw [tree9609_def]
  rfl
theorem node9609_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9609 live9609 coloured9609 = result9609 := by
  rw [tree9609_def]
  try dsimp only [colour, result9609]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9610_agree : tree9610 = literal9610 := by
  rw [tree9610_def, tree9608_agree, tree9609_agree]
  rfl
theorem node9610_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9610 live9610 coloured9610 = result9610 := by
  rw [tree9610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9608_eq
  unfold live9608 coloured9608 at child
  try dsimp only [live9610, coloured9610]
  rw [child]
  dsimp only [result9608]
  have child := node9609_eq
  unfold live9609 coloured9609 at child
  try dsimp only [live9610, coloured9610]
  rw [child]
  dsimp only [result9609]
  try dsimp only [colour, result9610]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9611_agree : tree9611 = literal9611 := by
  rw [tree9611_def]
  rfl
theorem node9611_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9611 live9611 coloured9611 = result9611 := by
  rw [tree9611_def]
  try dsimp only [colour, result9611]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9612_agree : tree9612 = literal9612 := by
  rw [tree9612_def, tree9610_agree, tree9611_agree]
  rfl
theorem node9612_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9612 live9612 coloured9612 = result9612 := by
  rw [tree9612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9610_eq
  unfold live9610 coloured9610 at child
  try dsimp only [live9612, coloured9612]
  rw [child]
  dsimp only [result9610]
  have child := node9611_eq
  unfold live9611 coloured9611 at child
  try dsimp only [live9612, coloured9612]
  rw [child]
  dsimp only [result9611]
  try dsimp only [colour, result9612]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9613_agree : tree9613 = literal9613 := by
  rw [tree9613_def]
  rfl
theorem node9613_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9613 live9613 coloured9613 = result9613 := by
  rw [tree9613_def]
  try dsimp only [colour, result9613]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9614_agree : tree9614 = literal9614 := by
  rw [tree9614_def, tree9612_agree, tree9613_agree]
  rfl
theorem node9614_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9614 live9614 coloured9614 = result9614 := by
  rw [tree9614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9612_eq
  unfold live9612 coloured9612 at child
  try dsimp only [live9614, coloured9614]
  rw [child]
  dsimp only [result9612]
  have child := node9613_eq
  unfold live9613 coloured9613 at child
  try dsimp only [live9614, coloured9614]
  rw [child]
  dsimp only [result9613]
  try dsimp only [colour, result9614]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9615_agree : tree9615 = literal9615 := by
  rw [tree9615_def]
  rfl
theorem node9615_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9615 live9615 coloured9615 = result9615 := by
  rw [tree9615_def]
  try dsimp only [colour, result9615]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9616_agree : tree9616 = literal9616 := by
  rw [tree9616_def, tree9614_agree, tree9615_agree]
  rfl
theorem node9616_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9616 live9616 coloured9616 = result9616 := by
  rw [tree9616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9614_eq
  unfold live9614 coloured9614 at child
  try dsimp only [live9616, coloured9616]
  rw [child]
  dsimp only [result9614]
  have child := node9615_eq
  unfold live9615 coloured9615 at child
  try dsimp only [live9616, coloured9616]
  rw [child]
  dsimp only [result9615]
  try dsimp only [colour, result9616]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9617_agree : tree9617 = literal9617 := by
  rw [tree9617_def]
  rfl
theorem node9617_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9617 live9617 coloured9617 = result9617 := by
  rw [tree9617_def]
  try dsimp only [colour, result9617]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9618_agree : tree9618 = literal9618 := by
  rw [tree9618_def, tree9616_agree, tree9617_agree]
  rfl
theorem node9618_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9618 live9618 coloured9618 = result9618 := by
  rw [tree9618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9616_eq
  unfold live9616 coloured9616 at child
  try dsimp only [live9618, coloured9618]
  rw [child]
  dsimp only [result9616]
  have child := node9617_eq
  unfold live9617 coloured9617 at child
  try dsimp only [live9618, coloured9618]
  rw [child]
  dsimp only [result9617]
  try dsimp only [colour, result9618]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9619_agree : tree9619 = literal9619 := by
  rw [tree9619_def]
  rfl
theorem node9619_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9619 live9619 coloured9619 = result9619 := by
  rw [tree9619_def]
  try dsimp only [colour, result9619]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9620_agree : tree9620 = literal9620 := by
  rw [tree9620_def, tree9618_agree, tree9619_agree]
  rfl
theorem node9620_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9620 live9620 coloured9620 = result9620 := by
  rw [tree9620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9618_eq
  unfold live9618 coloured9618 at child
  try dsimp only [live9620, coloured9620]
  rw [child]
  dsimp only [result9618]
  have child := node9619_eq
  unfold live9619 coloured9619 at child
  try dsimp only [live9620, coloured9620]
  rw [child]
  dsimp only [result9619]
  try dsimp only [colour, result9620]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9621_agree : tree9621 = literal9621 := by
  rw [tree9621_def]
  rfl
theorem node9621_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9621 live9621 coloured9621 = result9621 := by
  rw [tree9621_def]
  try dsimp only [colour, result9621]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9622_agree : tree9622 = literal9622 := by
  rw [tree9622_def, tree9620_agree, tree9621_agree]
  rfl
theorem node9622_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9622 live9622 coloured9622 = result9622 := by
  rw [tree9622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9620_eq
  unfold live9620 coloured9620 at child
  try dsimp only [live9622, coloured9622]
  rw [child]
  dsimp only [result9620]
  have child := node9621_eq
  unfold live9621 coloured9621 at child
  try dsimp only [live9622, coloured9622]
  rw [child]
  dsimp only [result9621]
  try dsimp only [colour, result9622]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9623_agree : tree9623 = literal9623 := by
  rw [tree9623_def]
  rfl
theorem node9623_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9623 live9623 coloured9623 = result9623 := by
  rw [tree9623_def]
  try dsimp only [colour, result9623]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9624_agree : tree9624 = literal9624 := by
  rw [tree9624_def, tree9622_agree, tree9623_agree]
  rfl
theorem node9624_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9624 live9624 coloured9624 = result9624 := by
  rw [tree9624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9622_eq
  unfold live9622 coloured9622 at child
  try dsimp only [live9624, coloured9624]
  rw [child]
  dsimp only [result9622]
  have child := node9623_eq
  unfold live9623 coloured9623 at child
  try dsimp only [live9624, coloured9624]
  rw [child]
  dsimp only [result9623]
  try dsimp only [colour, result9624]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9625_agree : tree9625 = literal9625 := by
  rw [tree9625_def]
  rfl
theorem node9625_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9625 live9625 coloured9625 = result9625 := by
  rw [tree9625_def]
  try dsimp only [colour, result9625]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9626_agree : tree9626 = literal9626 := by
  rw [tree9626_def, tree9624_agree, tree9625_agree]
  rfl
theorem node9626_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9626 live9626 coloured9626 = result9626 := by
  rw [tree9626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9624_eq
  unfold live9624 coloured9624 at child
  try dsimp only [live9626, coloured9626]
  rw [child]
  dsimp only [result9624]
  have child := node9625_eq
  unfold live9625 coloured9625 at child
  try dsimp only [live9626, coloured9626]
  rw [child]
  dsimp only [result9625]
  try dsimp only [colour, result9626]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9627_agree : tree9627 = literal9627 := by
  rw [tree9627_def]
  rfl
theorem node9627_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9627 live9627 coloured9627 = result9627 := by
  rw [tree9627_def]
  try dsimp only [colour, result9627]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9628_agree : tree9628 = literal9628 := by
  rw [tree9628_def, tree9626_agree, tree9627_agree]
  rfl
theorem node9628_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9628 live9628 coloured9628 = result9628 := by
  rw [tree9628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9626_eq
  unfold live9626 coloured9626 at child
  try dsimp only [live9628, coloured9628]
  rw [child]
  dsimp only [result9626]
  have child := node9627_eq
  unfold live9627 coloured9627 at child
  try dsimp only [live9628, coloured9628]
  rw [child]
  dsimp only [result9627]
  try dsimp only [colour, result9628]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9629_agree : tree9629 = literal9629 := by
  rw [tree9629_def]
  rfl
theorem node9629_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9629 live9629 coloured9629 = result9629 := by
  rw [tree9629_def]
  try dsimp only [colour, result9629]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9630_agree : tree9630 = literal9630 := by
  rw [tree9630_def, tree9628_agree, tree9629_agree]
  rfl
theorem node9630_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9630 live9630 coloured9630 = result9630 := by
  rw [tree9630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9628_eq
  unfold live9628 coloured9628 at child
  try dsimp only [live9630, coloured9630]
  rw [child]
  dsimp only [result9628]
  have child := node9629_eq
  unfold live9629 coloured9629 at child
  try dsimp only [live9630, coloured9630]
  rw [child]
  dsimp only [result9629]
  try dsimp only [colour, result9630]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9631_agree : tree9631 = literal9631 := by
  rw [tree9631_def]
  rfl
theorem node9631_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9631 live9631 coloured9631 = result9631 := by
  rw [tree9631_def]
  try dsimp only [colour, result9631]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9632_agree : tree9632 = literal9632 := by
  rw [tree9632_def, tree9630_agree, tree9631_agree]
  rfl
theorem node9632_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9632 live9632 coloured9632 = result9632 := by
  rw [tree9632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9630_eq
  unfold live9630 coloured9630 at child
  try dsimp only [live9632, coloured9632]
  rw [child]
  dsimp only [result9630]
  have child := node9631_eq
  unfold live9631 coloured9631 at child
  try dsimp only [live9632, coloured9632]
  rw [child]
  dsimp only [result9631]
  try dsimp only [colour, result9632]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9633_agree : tree9633 = literal9633 := by
  rw [tree9633_def]
  rfl
theorem node9633_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9633 live9633 coloured9633 = result9633 := by
  rw [tree9633_def]
  try dsimp only [colour, result9633]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9634_agree : tree9634 = literal9634 := by
  rw [tree9634_def, tree9632_agree, tree9633_agree]
  rfl
theorem node9634_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9634 live9634 coloured9634 = result9634 := by
  rw [tree9634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9632_eq
  unfold live9632 coloured9632 at child
  try dsimp only [live9634, coloured9634]
  rw [child]
  dsimp only [result9632]
  have child := node9633_eq
  unfold live9633 coloured9633 at child
  try dsimp only [live9634, coloured9634]
  rw [child]
  dsimp only [result9633]
  try dsimp only [colour, result9634]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9635_agree : tree9635 = literal9635 := by
  rw [tree9635_def]
  rfl
theorem node9635_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9635 live9635 coloured9635 = result9635 := by
  rw [tree9635_def]
  try dsimp only [colour, result9635]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9636_agree : tree9636 = literal9636 := by
  rw [tree9636_def, tree9634_agree, tree9635_agree]
  rfl
theorem node9636_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9636 live9636 coloured9636 = result9636 := by
  rw [tree9636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9634_eq
  unfold live9634 coloured9634 at child
  try dsimp only [live9636, coloured9636]
  rw [child]
  dsimp only [result9634]
  have child := node9635_eq
  unfold live9635 coloured9635 at child
  try dsimp only [live9636, coloured9636]
  rw [child]
  dsimp only [result9635]
  try dsimp only [colour, result9636]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9637_agree : tree9637 = literal9637 := by
  rw [tree9637_def]
  rfl
theorem node9637_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9637 live9637 coloured9637 = result9637 := by
  rw [tree9637_def]
  try dsimp only [colour, result9637]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9638_agree : tree9638 = literal9638 := by
  rw [tree9638_def, tree9636_agree, tree9637_agree]
  rfl
theorem node9638_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9638 live9638 coloured9638 = result9638 := by
  rw [tree9638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9636_eq
  unfold live9636 coloured9636 at child
  try dsimp only [live9638, coloured9638]
  rw [child]
  dsimp only [result9636]
  have child := node9637_eq
  unfold live9637 coloured9637 at child
  try dsimp only [live9638, coloured9638]
  rw [child]
  dsimp only [result9637]
  try dsimp only [colour, result9638]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9639_agree : tree9639 = literal9639 := by
  rw [tree9639_def]
  rfl
theorem node9639_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9639 live9639 coloured9639 = result9639 := by
  rw [tree9639_def]
  try dsimp only [colour, result9639]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9640_agree : tree9640 = literal9640 := by
  rw [tree9640_def, tree9638_agree, tree9639_agree]
  rfl
theorem node9640_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9640 live9640 coloured9640 = result9640 := by
  rw [tree9640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9638_eq
  unfold live9638 coloured9638 at child
  try dsimp only [live9640, coloured9640]
  rw [child]
  dsimp only [result9638]
  have child := node9639_eq
  unfold live9639 coloured9639 at child
  try dsimp only [live9640, coloured9640]
  rw [child]
  dsimp only [result9639]
  try dsimp only [colour, result9640]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9641_agree : tree9641 = literal9641 := by
  rw [tree9641_def]
  rfl
theorem node9641_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9641 live9641 coloured9641 = result9641 := by
  rw [tree9641_def]
  try dsimp only [colour, result9641]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9642_agree : tree9642 = literal9642 := by
  rw [tree9642_def, tree9640_agree, tree9641_agree]
  rfl
theorem node9642_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9642 live9642 coloured9642 = result9642 := by
  rw [tree9642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9640_eq
  unfold live9640 coloured9640 at child
  try dsimp only [live9642, coloured9642]
  rw [child]
  dsimp only [result9640]
  have child := node9641_eq
  unfold live9641 coloured9641 at child
  try dsimp only [live9642, coloured9642]
  rw [child]
  dsimp only [result9641]
  try dsimp only [colour, result9642]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9643_agree : tree9643 = literal9643 := by
  rw [tree9643_def]
  rfl
theorem node9643_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9643 live9643 coloured9643 = result9643 := by
  rw [tree9643_def]
  try dsimp only [colour, result9643]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9644_agree : tree9644 = literal9644 := by
  rw [tree9644_def, tree9642_agree, tree9643_agree]
  rfl
theorem node9644_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9644 live9644 coloured9644 = result9644 := by
  rw [tree9644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9642_eq
  unfold live9642 coloured9642 at child
  try dsimp only [live9644, coloured9644]
  rw [child]
  dsimp only [result9642]
  have child := node9643_eq
  unfold live9643 coloured9643 at child
  try dsimp only [live9644, coloured9644]
  rw [child]
  dsimp only [result9643]
  try dsimp only [colour, result9644]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9645_agree : tree9645 = literal9645 := by
  rw [tree9645_def]
  rfl
theorem node9645_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9645 live9645 coloured9645 = result9645 := by
  rw [tree9645_def]
  try dsimp only [colour, result9645]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9646_agree : tree9646 = literal9646 := by
  rw [tree9646_def, tree9644_agree, tree9645_agree]
  rfl
theorem node9646_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9646 live9646 coloured9646 = result9646 := by
  rw [tree9646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9644_eq
  unfold live9644 coloured9644 at child
  try dsimp only [live9646, coloured9646]
  rw [child]
  dsimp only [result9644]
  have child := node9645_eq
  unfold live9645 coloured9645 at child
  try dsimp only [live9646, coloured9646]
  rw [child]
  dsimp only [result9645]
  try dsimp only [colour, result9646]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9647_agree : tree9647 = literal9647 := by
  rw [tree9647_def]
  rfl
theorem node9647_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9647 live9647 coloured9647 = result9647 := by
  rw [tree9647_def]
  try dsimp only [colour, result9647]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9648_agree : tree9648 = literal9648 := by
  rw [tree9648_def, tree9646_agree, tree9647_agree]
  rfl
theorem node9648_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9648 live9648 coloured9648 = result9648 := by
  rw [tree9648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9646_eq
  unfold live9646 coloured9646 at child
  try dsimp only [live9648, coloured9648]
  rw [child]
  dsimp only [result9646]
  have child := node9647_eq
  unfold live9647 coloured9647 at child
  try dsimp only [live9648, coloured9648]
  rw [child]
  dsimp only [result9647]
  try dsimp only [colour, result9648]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9649_agree : tree9649 = literal9649 := by
  rw [tree9649_def]
  rfl
theorem node9649_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9649 live9649 coloured9649 = result9649 := by
  rw [tree9649_def]
  try dsimp only [colour, result9649]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9650_agree : tree9650 = literal9650 := by
  rw [tree9650_def, tree9648_agree, tree9649_agree]
  rfl
theorem node9650_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9650 live9650 coloured9650 = result9650 := by
  rw [tree9650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9648_eq
  unfold live9648 coloured9648 at child
  try dsimp only [live9650, coloured9650]
  rw [child]
  dsimp only [result9648]
  have child := node9649_eq
  unfold live9649 coloured9649 at child
  try dsimp only [live9650, coloured9650]
  rw [child]
  dsimp only [result9649]
  try dsimp only [colour, result9650]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9651_agree : tree9651 = literal9651 := by
  rw [tree9651_def]
  rfl
theorem node9651_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9651 live9651 coloured9651 = result9651 := by
  rw [tree9651_def]
  try dsimp only [colour, result9651]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9652_agree : tree9652 = literal9652 := by
  rw [tree9652_def, tree9650_agree, tree9651_agree]
  rfl
theorem node9652_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9652 live9652 coloured9652 = result9652 := by
  rw [tree9652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9650_eq
  unfold live9650 coloured9650 at child
  try dsimp only [live9652, coloured9652]
  rw [child]
  dsimp only [result9650]
  have child := node9651_eq
  unfold live9651 coloured9651 at child
  try dsimp only [live9652, coloured9652]
  rw [child]
  dsimp only [result9651]
  try dsimp only [colour, result9652]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9653_agree : tree9653 = literal9653 := by
  rw [tree9653_def]
  rfl
theorem node9653_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9653 live9653 coloured9653 = result9653 := by
  rw [tree9653_def]
  try dsimp only [colour, result9653]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9654_agree : tree9654 = literal9654 := by
  rw [tree9654_def, tree9652_agree, tree9653_agree]
  rfl
theorem node9654_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9654 live9654 coloured9654 = result9654 := by
  rw [tree9654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9652_eq
  unfold live9652 coloured9652 at child
  try dsimp only [live9654, coloured9654]
  rw [child]
  dsimp only [result9652]
  have child := node9653_eq
  unfold live9653 coloured9653 at child
  try dsimp only [live9654, coloured9654]
  rw [child]
  dsimp only [result9653]
  try dsimp only [colour, result9654]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9655_agree : tree9655 = literal9655 := by
  rw [tree9655_def]
  rfl
theorem node9655_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9655 live9655 coloured9655 = result9655 := by
  rw [tree9655_def]
  try dsimp only [colour, result9655]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9656_agree : tree9656 = literal9656 := by
  rw [tree9656_def, tree9654_agree, tree9655_agree]
  rfl
theorem node9656_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9656 live9656 coloured9656 = result9656 := by
  rw [tree9656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9654_eq
  unfold live9654 coloured9654 at child
  try dsimp only [live9656, coloured9656]
  rw [child]
  dsimp only [result9654]
  have child := node9655_eq
  unfold live9655 coloured9655 at child
  try dsimp only [live9656, coloured9656]
  rw [child]
  dsimp only [result9655]
  try dsimp only [colour, result9656]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9657_agree : tree9657 = literal9657 := by
  rw [tree9657_def]
  rfl
theorem node9657_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9657 live9657 coloured9657 = result9657 := by
  rw [tree9657_def]
  try dsimp only [colour, result9657]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9658_agree : tree9658 = literal9658 := by
  rw [tree9658_def, tree9656_agree, tree9657_agree]
  rfl
theorem node9658_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9658 live9658 coloured9658 = result9658 := by
  rw [tree9658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9656_eq
  unfold live9656 coloured9656 at child
  try dsimp only [live9658, coloured9658]
  rw [child]
  dsimp only [result9656]
  have child := node9657_eq
  unfold live9657 coloured9657 at child
  try dsimp only [live9658, coloured9658]
  rw [child]
  dsimp only [result9657]
  try dsimp only [colour, result9658]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9659_agree : tree9659 = literal9659 := by
  rw [tree9659_def]
  rfl
theorem node9659_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9659 live9659 coloured9659 = result9659 := by
  rw [tree9659_def]
  try dsimp only [colour, result9659]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9660_agree : tree9660 = literal9660 := by
  rw [tree9660_def, tree9658_agree, tree9659_agree]
  rfl
theorem node9660_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9660 live9660 coloured9660 = result9660 := by
  rw [tree9660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9658_eq
  unfold live9658 coloured9658 at child
  try dsimp only [live9660, coloured9660]
  rw [child]
  dsimp only [result9658]
  have child := node9659_eq
  unfold live9659 coloured9659 at child
  try dsimp only [live9660, coloured9660]
  rw [child]
  dsimp only [result9659]
  try dsimp only [colour, result9660]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9661_agree : tree9661 = literal9661 := by
  rw [tree9661_def]
  rfl
theorem node9661_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9661 live9661 coloured9661 = result9661 := by
  rw [tree9661_def]
  try dsimp only [colour, result9661]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9662_agree : tree9662 = literal9662 := by
  rw [tree9662_def, tree9660_agree, tree9661_agree]
  rfl
theorem node9662_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9662 live9662 coloured9662 = result9662 := by
  rw [tree9662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9660_eq
  unfold live9660 coloured9660 at child
  try dsimp only [live9662, coloured9662]
  rw [child]
  dsimp only [result9660]
  have child := node9661_eq
  unfold live9661 coloured9661 at child
  try dsimp only [live9662, coloured9662]
  rw [child]
  dsimp only [result9661]
  try dsimp only [colour, result9662]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9663_agree : tree9663 = literal9663 := by
  rw [tree9663_def]
  rfl
theorem node9663_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9663 live9663 coloured9663 = result9663 := by
  rw [tree9663_def]
  try dsimp only [colour, result9663]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9664_agree : tree9664 = literal9664 := by
  rw [tree9664_def, tree9662_agree, tree9663_agree]
  rfl
theorem node9664_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9664 live9664 coloured9664 = result9664 := by
  rw [tree9664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9662_eq
  unfold live9662 coloured9662 at child
  try dsimp only [live9664, coloured9664]
  rw [child]
  dsimp only [result9662]
  have child := node9663_eq
  unfold live9663 coloured9663 at child
  try dsimp only [live9664, coloured9664]
  rw [child]
  dsimp only [result9663]
  try dsimp only [colour, result9664]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9665_agree : tree9665 = literal9665 := by
  rw [tree9665_def]
  rfl
theorem node9665_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9665 live9665 coloured9665 = result9665 := by
  rw [tree9665_def]
  try dsimp only [colour, result9665]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9666_agree : tree9666 = literal9666 := by
  rw [tree9666_def, tree9664_agree, tree9665_agree]
  rfl
theorem node9666_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9666 live9666 coloured9666 = result9666 := by
  rw [tree9666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9664_eq
  unfold live9664 coloured9664 at child
  try dsimp only [live9666, coloured9666]
  rw [child]
  dsimp only [result9664]
  have child := node9665_eq
  unfold live9665 coloured9665 at child
  try dsimp only [live9666, coloured9666]
  rw [child]
  dsimp only [result9665]
  try dsimp only [colour, result9666]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9667_agree : tree9667 = literal9667 := by
  rw [tree9667_def]
  rfl
theorem node9667_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9667 live9667 coloured9667 = result9667 := by
  rw [tree9667_def]
  try dsimp only [colour, result9667]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9668_agree : tree9668 = literal9668 := by
  rw [tree9668_def, tree9666_agree, tree9667_agree]
  rfl
theorem node9668_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9668 live9668 coloured9668 = result9668 := by
  rw [tree9668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9666_eq
  unfold live9666 coloured9666 at child
  try dsimp only [live9668, coloured9668]
  rw [child]
  dsimp only [result9666]
  have child := node9667_eq
  unfold live9667 coloured9667 at child
  try dsimp only [live9668, coloured9668]
  rw [child]
  dsimp only [result9667]
  try dsimp only [colour, result9668]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9669_agree : tree9669 = literal9669 := by
  rw [tree9669_def]
  rfl
theorem node9669_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9669 live9669 coloured9669 = result9669 := by
  rw [tree9669_def]
  try dsimp only [colour, result9669]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9670_agree : tree9670 = literal9670 := by
  rw [tree9670_def, tree9668_agree, tree9669_agree]
  rfl
theorem node9670_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9670 live9670 coloured9670 = result9670 := by
  rw [tree9670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9668_eq
  unfold live9668 coloured9668 at child
  try dsimp only [live9670, coloured9670]
  rw [child]
  dsimp only [result9668]
  have child := node9669_eq
  unfold live9669 coloured9669 at child
  try dsimp only [live9670, coloured9670]
  rw [child]
  dsimp only [result9669]
  try dsimp only [colour, result9670]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9671_agree : tree9671 = literal9671 := by
  rw [tree9671_def]
  rfl
theorem node9671_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9671 live9671 coloured9671 = result9671 := by
  rw [tree9671_def]
  try dsimp only [colour, result9671]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9672_agree : tree9672 = literal9672 := by
  rw [tree9672_def, tree9670_agree, tree9671_agree]
  rfl
theorem node9672_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9672 live9672 coloured9672 = result9672 := by
  rw [tree9672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9670_eq
  unfold live9670 coloured9670 at child
  try dsimp only [live9672, coloured9672]
  rw [child]
  dsimp only [result9670]
  have child := node9671_eq
  unfold live9671 coloured9671 at child
  try dsimp only [live9672, coloured9672]
  rw [child]
  dsimp only [result9671]
  try dsimp only [colour, result9672]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9673_agree : tree9673 = literal9673 := by
  rw [tree9673_def]
  rfl
theorem node9673_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9673 live9673 coloured9673 = result9673 := by
  rw [tree9673_def]
  try dsimp only [colour, result9673]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9674_agree : tree9674 = literal9674 := by
  rw [tree9674_def, tree9672_agree, tree9673_agree]
  rfl
theorem node9674_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9674 live9674 coloured9674 = result9674 := by
  rw [tree9674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9672_eq
  unfold live9672 coloured9672 at child
  try dsimp only [live9674, coloured9674]
  rw [child]
  dsimp only [result9672]
  have child := node9673_eq
  unfold live9673 coloured9673 at child
  try dsimp only [live9674, coloured9674]
  rw [child]
  dsimp only [result9673]
  try dsimp only [colour, result9674]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9675_agree : tree9675 = literal9675 := by
  rw [tree9675_def]
  rfl
theorem node9675_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9675 live9675 coloured9675 = result9675 := by
  rw [tree9675_def]
  try dsimp only [colour, result9675]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9676_agree : tree9676 = literal9676 := by
  rw [tree9676_def, tree9674_agree, tree9675_agree]
  rfl
theorem node9676_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9676 live9676 coloured9676 = result9676 := by
  rw [tree9676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9674_eq
  unfold live9674 coloured9674 at child
  try dsimp only [live9676, coloured9676]
  rw [child]
  dsimp only [result9674]
  have child := node9675_eq
  unfold live9675 coloured9675 at child
  try dsimp only [live9676, coloured9676]
  rw [child]
  dsimp only [result9675]
  try dsimp only [colour, result9676]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9677_agree : tree9677 = literal9677 := by
  rw [tree9677_def]
  rfl
theorem node9677_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9677 live9677 coloured9677 = result9677 := by
  rw [tree9677_def]
  try dsimp only [colour, result9677]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9678_agree : tree9678 = literal9678 := by
  rw [tree9678_def, tree9676_agree, tree9677_agree]
  rfl
theorem node9678_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9678 live9678 coloured9678 = result9678 := by
  rw [tree9678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9676_eq
  unfold live9676 coloured9676 at child
  try dsimp only [live9678, coloured9678]
  rw [child]
  dsimp only [result9676]
  have child := node9677_eq
  unfold live9677 coloured9677 at child
  try dsimp only [live9678, coloured9678]
  rw [child]
  dsimp only [result9677]
  try dsimp only [colour, result9678]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9679_agree : tree9679 = literal9679 := by
  rw [tree9679_def]
  rfl
theorem node9679_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9679 live9679 coloured9679 = result9679 := by
  rw [tree9679_def]
  try dsimp only [colour, result9679]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9680_agree : tree9680 = literal9680 := by
  rw [tree9680_def, tree9678_agree, tree9679_agree]
  rfl
theorem node9680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9680 live9680 coloured9680 = result9680 := by
  rw [tree9680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9678_eq
  unfold live9678 coloured9678 at child
  try dsimp only [live9680, coloured9680]
  rw [child]
  dsimp only [result9678]
  have child := node9679_eq
  unfold live9679 coloured9679 at child
  try dsimp only [live9680, coloured9680]
  rw [child]
  dsimp only [result9679]
  try dsimp only [colour, result9680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9681_agree : tree9681 = literal9681 := by
  rw [tree9681_def]
  rfl
theorem node9681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9681 live9681 coloured9681 = result9681 := by
  rw [tree9681_def]
  try dsimp only [colour, result9681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9682_agree : tree9682 = literal9682 := by
  rw [tree9682_def, tree9680_agree, tree9681_agree]
  rfl
theorem node9682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9682 live9682 coloured9682 = result9682 := by
  rw [tree9682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9680_eq
  unfold live9680 coloured9680 at child
  try dsimp only [live9682, coloured9682]
  rw [child]
  dsimp only [result9680]
  have child := node9681_eq
  unfold live9681 coloured9681 at child
  try dsimp only [live9682, coloured9682]
  rw [child]
  dsimp only [result9681]
  try dsimp only [colour, result9682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9683_agree : tree9683 = literal9683 := by
  rw [tree9683_def]
  rfl
theorem node9683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9683 live9683 coloured9683 = result9683 := by
  rw [tree9683_def]
  try dsimp only [colour, result9683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9684_agree : tree9684 = literal9684 := by
  rw [tree9684_def, tree9682_agree, tree9683_agree]
  rfl
theorem node9684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9684 live9684 coloured9684 = result9684 := by
  rw [tree9684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9682_eq
  unfold live9682 coloured9682 at child
  try dsimp only [live9684, coloured9684]
  rw [child]
  dsimp only [result9682]
  have child := node9683_eq
  unfold live9683 coloured9683 at child
  try dsimp only [live9684, coloured9684]
  rw [child]
  dsimp only [result9683]
  try dsimp only [colour, result9684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9685_agree : tree9685 = literal9685 := by
  rw [tree9685_def]
  rfl
theorem node9685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9685 live9685 coloured9685 = result9685 := by
  rw [tree9685_def]
  try dsimp only [colour, result9685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9686_agree : tree9686 = literal9686 := by
  rw [tree9686_def, tree9684_agree, tree9685_agree]
  rfl
theorem node9686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9686 live9686 coloured9686 = result9686 := by
  rw [tree9686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9684_eq
  unfold live9684 coloured9684 at child
  try dsimp only [live9686, coloured9686]
  rw [child]
  dsimp only [result9684]
  have child := node9685_eq
  unfold live9685 coloured9685 at child
  try dsimp only [live9686, coloured9686]
  rw [child]
  dsimp only [result9685]
  try dsimp only [colour, result9686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9687_agree : tree9687 = literal9687 := by
  rw [tree9687_def]
  rfl
theorem node9687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9687 live9687 coloured9687 = result9687 := by
  rw [tree9687_def]
  try dsimp only [colour, result9687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9688_agree : tree9688 = literal9688 := by
  rw [tree9688_def, tree9686_agree, tree9687_agree]
  rfl
theorem node9688_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9688 live9688 coloured9688 = result9688 := by
  rw [tree9688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9686_eq
  unfold live9686 coloured9686 at child
  try dsimp only [live9688, coloured9688]
  rw [child]
  dsimp only [result9686]
  have child := node9687_eq
  unfold live9687 coloured9687 at child
  try dsimp only [live9688, coloured9688]
  rw [child]
  dsimp only [result9687]
  try dsimp only [colour, result9688]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9689_agree : tree9689 = literal9689 := by
  rw [tree9689_def]
  rfl
theorem node9689_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9689 live9689 coloured9689 = result9689 := by
  rw [tree9689_def]
  try dsimp only [colour, result9689]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9690_agree : tree9690 = literal9690 := by
  rw [tree9690_def, tree9688_agree, tree9689_agree]
  rfl
theorem node9690_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9690 live9690 coloured9690 = result9690 := by
  rw [tree9690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9688_eq
  unfold live9688 coloured9688 at child
  try dsimp only [live9690, coloured9690]
  rw [child]
  dsimp only [result9688]
  have child := node9689_eq
  unfold live9689 coloured9689 at child
  try dsimp only [live9690, coloured9690]
  rw [child]
  dsimp only [result9689]
  try dsimp only [colour, result9690]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9691_agree : tree9691 = literal9691 := by
  rw [tree9691_def]
  rfl
theorem node9691_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9691 live9691 coloured9691 = result9691 := by
  rw [tree9691_def]
  try dsimp only [colour, result9691]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9692_agree : tree9692 = literal9692 := by
  rw [tree9692_def, tree9690_agree, tree9691_agree]
  rfl
theorem node9692_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9692 live9692 coloured9692 = result9692 := by
  rw [tree9692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9690_eq
  unfold live9690 coloured9690 at child
  try dsimp only [live9692, coloured9692]
  rw [child]
  dsimp only [result9690]
  have child := node9691_eq
  unfold live9691 coloured9691 at child
  try dsimp only [live9692, coloured9692]
  rw [child]
  dsimp only [result9691]
  try dsimp only [colour, result9692]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9693_agree : tree9693 = literal9693 := by
  rw [tree9693_def]
  rfl
theorem node9693_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9693 live9693 coloured9693 = result9693 := by
  rw [tree9693_def]
  try dsimp only [colour, result9693]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9694_agree : tree9694 = literal9694 := by
  rw [tree9694_def, tree9692_agree, tree9693_agree]
  rfl
theorem node9694_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9694 live9694 coloured9694 = result9694 := by
  rw [tree9694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9692_eq
  unfold live9692 coloured9692 at child
  try dsimp only [live9694, coloured9694]
  rw [child]
  dsimp only [result9692]
  have child := node9693_eq
  unfold live9693 coloured9693 at child
  try dsimp only [live9694, coloured9694]
  rw [child]
  dsimp only [result9693]
  try dsimp only [colour, result9694]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9695_agree : tree9695 = literal9695 := by
  rw [tree9695_def]
  rfl
theorem node9695_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9695 live9695 coloured9695 = result9695 := by
  rw [tree9695_def]
  try dsimp only [colour, result9695]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
