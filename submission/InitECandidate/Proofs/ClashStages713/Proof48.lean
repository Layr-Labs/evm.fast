import InitECandidate.Proofs.ClashStages713.Proof47
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree4608_agree : tree4608 = literal4608 := by
  rw [tree4608_def, tree4606_agree, tree4607_agree]
  rfl
theorem node4608_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4608 live4608 coloured4608 = result4608 := by
  rw [tree4608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4606_eq
  unfold live4606 coloured4606 at child
  try dsimp only [live4608, coloured4608]
  rw [child]
  dsimp only [result4606]
  have child := node4607_eq
  unfold live4607 coloured4607 at child
  try dsimp only [live4608, coloured4608]
  rw [child]
  dsimp only [result4607]
  try dsimp only [colour, result4608]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4609_agree : tree4609 = literal4609 := by
  rw [tree4609_def]
  rfl
theorem node4609_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4609 live4609 coloured4609 = result4609 := by
  rw [tree4609_def]
  try dsimp only [colour, result4609]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4610_agree : tree4610 = literal4610 := by
  rw [tree4610_def, tree4608_agree, tree4609_agree]
  rfl
theorem node4610_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4610 live4610 coloured4610 = result4610 := by
  rw [tree4610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4608_eq
  unfold live4608 coloured4608 at child
  try dsimp only [live4610, coloured4610]
  rw [child]
  dsimp only [result4608]
  have child := node4609_eq
  unfold live4609 coloured4609 at child
  try dsimp only [live4610, coloured4610]
  rw [child]
  dsimp only [result4609]
  try dsimp only [colour, result4610]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4611_agree : tree4611 = literal4611 := by
  rw [tree4611_def]
  rfl
theorem node4611_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4611 live4611 coloured4611 = result4611 := by
  rw [tree4611_def]
  try dsimp only [colour, result4611]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4612_agree : tree4612 = literal4612 := by
  rw [tree4612_def, tree4610_agree, tree4611_agree]
  rfl
theorem node4612_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4612 live4612 coloured4612 = result4612 := by
  rw [tree4612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4610_eq
  unfold live4610 coloured4610 at child
  try dsimp only [live4612, coloured4612]
  rw [child]
  dsimp only [result4610]
  have child := node4611_eq
  unfold live4611 coloured4611 at child
  try dsimp only [live4612, coloured4612]
  rw [child]
  dsimp only [result4611]
  try dsimp only [colour, result4612]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4613_agree : tree4613 = literal4613 := by
  rw [tree4613_def]
  rfl
theorem node4613_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4613 live4613 coloured4613 = result4613 := by
  rw [tree4613_def]
  try dsimp only [colour, result4613]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4614_agree : tree4614 = literal4614 := by
  rw [tree4614_def, tree4612_agree, tree4613_agree]
  rfl
theorem node4614_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4614 live4614 coloured4614 = result4614 := by
  rw [tree4614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4612_eq
  unfold live4612 coloured4612 at child
  try dsimp only [live4614, coloured4614]
  rw [child]
  dsimp only [result4612]
  have child := node4613_eq
  unfold live4613 coloured4613 at child
  try dsimp only [live4614, coloured4614]
  rw [child]
  dsimp only [result4613]
  try dsimp only [colour, result4614]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4615_agree : tree4615 = literal4615 := by
  rw [tree4615_def]
  rfl
theorem node4615_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4615 live4615 coloured4615 = result4615 := by
  rw [tree4615_def]
  try dsimp only [colour, result4615]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4616_agree : tree4616 = literal4616 := by
  rw [tree4616_def, tree4614_agree, tree4615_agree]
  rfl
theorem node4616_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4616 live4616 coloured4616 = result4616 := by
  rw [tree4616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4614_eq
  unfold live4614 coloured4614 at child
  try dsimp only [live4616, coloured4616]
  rw [child]
  dsimp only [result4614]
  have child := node4615_eq
  unfold live4615 coloured4615 at child
  try dsimp only [live4616, coloured4616]
  rw [child]
  dsimp only [result4615]
  try dsimp only [colour, result4616]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4617_agree : tree4617 = literal4617 := by
  rw [tree4617_def]
  rfl
theorem node4617_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4617 live4617 coloured4617 = result4617 := by
  rw [tree4617_def]
  try dsimp only [colour, result4617]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4618_agree : tree4618 = literal4618 := by
  rw [tree4618_def, tree4616_agree, tree4617_agree]
  rfl
theorem node4618_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4618 live4618 coloured4618 = result4618 := by
  rw [tree4618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4616_eq
  unfold live4616 coloured4616 at child
  try dsimp only [live4618, coloured4618]
  rw [child]
  dsimp only [result4616]
  have child := node4617_eq
  unfold live4617 coloured4617 at child
  try dsimp only [live4618, coloured4618]
  rw [child]
  dsimp only [result4617]
  try dsimp only [colour, result4618]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4619_agree : tree4619 = literal4619 := by
  rw [tree4619_def]
  rfl
theorem node4619_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4619 live4619 coloured4619 = result4619 := by
  rw [tree4619_def]
  try dsimp only [colour, result4619]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4620_agree : tree4620 = literal4620 := by
  rw [tree4620_def, tree4618_agree, tree4619_agree]
  rfl
theorem node4620_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4620 live4620 coloured4620 = result4620 := by
  rw [tree4620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4618_eq
  unfold live4618 coloured4618 at child
  try dsimp only [live4620, coloured4620]
  rw [child]
  dsimp only [result4618]
  have child := node4619_eq
  unfold live4619 coloured4619 at child
  try dsimp only [live4620, coloured4620]
  rw [child]
  dsimp only [result4619]
  try dsimp only [colour, result4620]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4621_agree : tree4621 = literal4621 := by
  rw [tree4621_def]
  rfl
theorem node4621_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4621 live4621 coloured4621 = result4621 := by
  rw [tree4621_def]
  try dsimp only [colour, result4621]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4622_agree : tree4622 = literal4622 := by
  rw [tree4622_def, tree4620_agree, tree4621_agree]
  rfl
theorem node4622_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4622 live4622 coloured4622 = result4622 := by
  rw [tree4622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4620_eq
  unfold live4620 coloured4620 at child
  try dsimp only [live4622, coloured4622]
  rw [child]
  dsimp only [result4620]
  have child := node4621_eq
  unfold live4621 coloured4621 at child
  try dsimp only [live4622, coloured4622]
  rw [child]
  dsimp only [result4621]
  try dsimp only [colour, result4622]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4623_agree : tree4623 = literal4623 := by
  rw [tree4623_def]
  rfl
theorem node4623_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4623 live4623 coloured4623 = result4623 := by
  rw [tree4623_def]
  try dsimp only [colour, result4623]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4624_agree : tree4624 = literal4624 := by
  rw [tree4624_def, tree4622_agree, tree4623_agree]
  rfl
theorem node4624_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4624 live4624 coloured4624 = result4624 := by
  rw [tree4624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4622_eq
  unfold live4622 coloured4622 at child
  try dsimp only [live4624, coloured4624]
  rw [child]
  dsimp only [result4622]
  have child := node4623_eq
  unfold live4623 coloured4623 at child
  try dsimp only [live4624, coloured4624]
  rw [child]
  dsimp only [result4623]
  try dsimp only [colour, result4624]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4625_agree : tree4625 = literal4625 := by
  rw [tree4625_def]
  rfl
theorem node4625_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4625 live4625 coloured4625 = result4625 := by
  rw [tree4625_def]
  try dsimp only [colour, result4625]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4626_agree : tree4626 = literal4626 := by
  rw [tree4626_def, tree4624_agree, tree4625_agree]
  rfl
theorem node4626_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4626 live4626 coloured4626 = result4626 := by
  rw [tree4626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4624_eq
  unfold live4624 coloured4624 at child
  try dsimp only [live4626, coloured4626]
  rw [child]
  dsimp only [result4624]
  have child := node4625_eq
  unfold live4625 coloured4625 at child
  try dsimp only [live4626, coloured4626]
  rw [child]
  dsimp only [result4625]
  try dsimp only [colour, result4626]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4627_agree : tree4627 = literal4627 := by
  rw [tree4627_def]
  rfl
theorem node4627_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4627 live4627 coloured4627 = result4627 := by
  rw [tree4627_def]
  try dsimp only [colour, result4627]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4628_agree : tree4628 = literal4628 := by
  rw [tree4628_def, tree4626_agree, tree4627_agree]
  rfl
theorem node4628_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4628 live4628 coloured4628 = result4628 := by
  rw [tree4628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4626_eq
  unfold live4626 coloured4626 at child
  try dsimp only [live4628, coloured4628]
  rw [child]
  dsimp only [result4626]
  have child := node4627_eq
  unfold live4627 coloured4627 at child
  try dsimp only [live4628, coloured4628]
  rw [child]
  dsimp only [result4627]
  try dsimp only [colour, result4628]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4629_agree : tree4629 = literal4629 := by
  rw [tree4629_def]
  rfl
theorem node4629_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4629 live4629 coloured4629 = result4629 := by
  rw [tree4629_def]
  try dsimp only [colour, result4629]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4630_agree : tree4630 = literal4630 := by
  rw [tree4630_def, tree4628_agree, tree4629_agree]
  rfl
theorem node4630_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4630 live4630 coloured4630 = result4630 := by
  rw [tree4630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4628_eq
  unfold live4628 coloured4628 at child
  try dsimp only [live4630, coloured4630]
  rw [child]
  dsimp only [result4628]
  have child := node4629_eq
  unfold live4629 coloured4629 at child
  try dsimp only [live4630, coloured4630]
  rw [child]
  dsimp only [result4629]
  try dsimp only [colour, result4630]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4631_agree : tree4631 = literal4631 := by
  rw [tree4631_def]
  rfl
theorem node4631_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4631 live4631 coloured4631 = result4631 := by
  rw [tree4631_def]
  try dsimp only [colour, result4631]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4632_agree : tree4632 = literal4632 := by
  rw [tree4632_def, tree4630_agree, tree4631_agree]
  rfl
theorem node4632_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4632 live4632 coloured4632 = result4632 := by
  rw [tree4632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4630_eq
  unfold live4630 coloured4630 at child
  try dsimp only [live4632, coloured4632]
  rw [child]
  dsimp only [result4630]
  have child := node4631_eq
  unfold live4631 coloured4631 at child
  try dsimp only [live4632, coloured4632]
  rw [child]
  dsimp only [result4631]
  try dsimp only [colour, result4632]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4633_agree : tree4633 = literal4633 := by
  rw [tree4633_def]
  rfl
theorem node4633_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4633 live4633 coloured4633 = result4633 := by
  rw [tree4633_def]
  try dsimp only [colour, result4633]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4634_agree : tree4634 = literal4634 := by
  rw [tree4634_def, tree4632_agree, tree4633_agree]
  rfl
theorem node4634_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4634 live4634 coloured4634 = result4634 := by
  rw [tree4634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4632_eq
  unfold live4632 coloured4632 at child
  try dsimp only [live4634, coloured4634]
  rw [child]
  dsimp only [result4632]
  have child := node4633_eq
  unfold live4633 coloured4633 at child
  try dsimp only [live4634, coloured4634]
  rw [child]
  dsimp only [result4633]
  try dsimp only [colour, result4634]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4635_agree : tree4635 = literal4635 := by
  rw [tree4635_def]
  rfl
theorem node4635_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4635 live4635 coloured4635 = result4635 := by
  rw [tree4635_def]
  try dsimp only [colour, result4635]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4636_agree : tree4636 = literal4636 := by
  rw [tree4636_def, tree4634_agree, tree4635_agree]
  rfl
theorem node4636_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4636 live4636 coloured4636 = result4636 := by
  rw [tree4636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4634_eq
  unfold live4634 coloured4634 at child
  try dsimp only [live4636, coloured4636]
  rw [child]
  dsimp only [result4634]
  have child := node4635_eq
  unfold live4635 coloured4635 at child
  try dsimp only [live4636, coloured4636]
  rw [child]
  dsimp only [result4635]
  try dsimp only [colour, result4636]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4637_agree : tree4637 = literal4637 := by
  rw [tree4637_def]
  rfl
theorem node4637_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4637 live4637 coloured4637 = result4637 := by
  rw [tree4637_def]
  try dsimp only [colour, result4637]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4638_agree : tree4638 = literal4638 := by
  rw [tree4638_def, tree4636_agree, tree4637_agree]
  rfl
theorem node4638_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4638 live4638 coloured4638 = result4638 := by
  rw [tree4638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4636_eq
  unfold live4636 coloured4636 at child
  try dsimp only [live4638, coloured4638]
  rw [child]
  dsimp only [result4636]
  have child := node4637_eq
  unfold live4637 coloured4637 at child
  try dsimp only [live4638, coloured4638]
  rw [child]
  dsimp only [result4637]
  try dsimp only [colour, result4638]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4639_agree : tree4639 = literal4639 := by
  rw [tree4639_def]
  rfl
theorem node4639_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4639 live4639 coloured4639 = result4639 := by
  rw [tree4639_def]
  try dsimp only [colour, result4639]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4640_agree : tree4640 = literal4640 := by
  rw [tree4640_def, tree4638_agree, tree4639_agree]
  rfl
theorem node4640_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4640 live4640 coloured4640 = result4640 := by
  rw [tree4640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4638_eq
  unfold live4638 coloured4638 at child
  try dsimp only [live4640, coloured4640]
  rw [child]
  dsimp only [result4638]
  have child := node4639_eq
  unfold live4639 coloured4639 at child
  try dsimp only [live4640, coloured4640]
  rw [child]
  dsimp only [result4639]
  try dsimp only [colour, result4640]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4641_agree : tree4641 = literal4641 := by
  rw [tree4641_def]
  rfl
theorem node4641_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4641 live4641 coloured4641 = result4641 := by
  rw [tree4641_def]
  try dsimp only [colour, result4641]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4642_agree : tree4642 = literal4642 := by
  rw [tree4642_def, tree4640_agree, tree4641_agree]
  rfl
theorem node4642_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4642 live4642 coloured4642 = result4642 := by
  rw [tree4642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4640_eq
  unfold live4640 coloured4640 at child
  try dsimp only [live4642, coloured4642]
  rw [child]
  dsimp only [result4640]
  have child := node4641_eq
  unfold live4641 coloured4641 at child
  try dsimp only [live4642, coloured4642]
  rw [child]
  dsimp only [result4641]
  try dsimp only [colour, result4642]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4643_agree : tree4643 = literal4643 := by
  rw [tree4643_def]
  rfl
theorem node4643_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4643 live4643 coloured4643 = result4643 := by
  rw [tree4643_def]
  try dsimp only [colour, result4643]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4644_agree : tree4644 = literal4644 := by
  rw [tree4644_def, tree4642_agree, tree4643_agree]
  rfl
theorem node4644_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4644 live4644 coloured4644 = result4644 := by
  rw [tree4644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4642_eq
  unfold live4642 coloured4642 at child
  try dsimp only [live4644, coloured4644]
  rw [child]
  dsimp only [result4642]
  have child := node4643_eq
  unfold live4643 coloured4643 at child
  try dsimp only [live4644, coloured4644]
  rw [child]
  dsimp only [result4643]
  try dsimp only [colour, result4644]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4645_agree : tree4645 = literal4645 := by
  rw [tree4645_def]
  rfl
theorem node4645_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4645 live4645 coloured4645 = result4645 := by
  rw [tree4645_def]
  try dsimp only [colour, result4645]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4646_agree : tree4646 = literal4646 := by
  rw [tree4646_def, tree4644_agree, tree4645_agree]
  rfl
theorem node4646_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4646 live4646 coloured4646 = result4646 := by
  rw [tree4646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4644_eq
  unfold live4644 coloured4644 at child
  try dsimp only [live4646, coloured4646]
  rw [child]
  dsimp only [result4644]
  have child := node4645_eq
  unfold live4645 coloured4645 at child
  try dsimp only [live4646, coloured4646]
  rw [child]
  dsimp only [result4645]
  try dsimp only [colour, result4646]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4647_agree : tree4647 = literal4647 := by
  rw [tree4647_def]
  rfl
theorem node4647_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4647 live4647 coloured4647 = result4647 := by
  rw [tree4647_def]
  try dsimp only [colour, result4647]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4648_agree : tree4648 = literal4648 := by
  rw [tree4648_def, tree4646_agree, tree4647_agree]
  rfl
theorem node4648_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4648 live4648 coloured4648 = result4648 := by
  rw [tree4648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4646_eq
  unfold live4646 coloured4646 at child
  try dsimp only [live4648, coloured4648]
  rw [child]
  dsimp only [result4646]
  have child := node4647_eq
  unfold live4647 coloured4647 at child
  try dsimp only [live4648, coloured4648]
  rw [child]
  dsimp only [result4647]
  try dsimp only [colour, result4648]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4649_agree : tree4649 = literal4649 := by
  rw [tree4649_def]
  rfl
theorem node4649_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4649 live4649 coloured4649 = result4649 := by
  rw [tree4649_def]
  try dsimp only [colour, result4649]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4650_agree : tree4650 = literal4650 := by
  rw [tree4650_def, tree4648_agree, tree4649_agree]
  rfl
theorem node4650_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4650 live4650 coloured4650 = result4650 := by
  rw [tree4650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4648_eq
  unfold live4648 coloured4648 at child
  try dsimp only [live4650, coloured4650]
  rw [child]
  dsimp only [result4648]
  have child := node4649_eq
  unfold live4649 coloured4649 at child
  try dsimp only [live4650, coloured4650]
  rw [child]
  dsimp only [result4649]
  try dsimp only [colour, result4650]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4651_agree : tree4651 = literal4651 := by
  rw [tree4651_def]
  rfl
theorem node4651_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4651 live4651 coloured4651 = result4651 := by
  rw [tree4651_def]
  try dsimp only [colour, result4651]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4652_agree : tree4652 = literal4652 := by
  rw [tree4652_def, tree4650_agree, tree4651_agree]
  rfl
theorem node4652_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4652 live4652 coloured4652 = result4652 := by
  rw [tree4652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4650_eq
  unfold live4650 coloured4650 at child
  try dsimp only [live4652, coloured4652]
  rw [child]
  dsimp only [result4650]
  have child := node4651_eq
  unfold live4651 coloured4651 at child
  try dsimp only [live4652, coloured4652]
  rw [child]
  dsimp only [result4651]
  try dsimp only [colour, result4652]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4653_agree : tree4653 = literal4653 := by
  rw [tree4653_def]
  rfl
theorem node4653_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4653 live4653 coloured4653 = result4653 := by
  rw [tree4653_def]
  try dsimp only [colour, result4653]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4654_agree : tree4654 = literal4654 := by
  rw [tree4654_def, tree4652_agree, tree4653_agree]
  rfl
theorem node4654_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4654 live4654 coloured4654 = result4654 := by
  rw [tree4654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4652_eq
  unfold live4652 coloured4652 at child
  try dsimp only [live4654, coloured4654]
  rw [child]
  dsimp only [result4652]
  have child := node4653_eq
  unfold live4653 coloured4653 at child
  try dsimp only [live4654, coloured4654]
  rw [child]
  dsimp only [result4653]
  try dsimp only [colour, result4654]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4655_agree : tree4655 = literal4655 := by
  rw [tree4655_def]
  rfl
theorem node4655_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4655 live4655 coloured4655 = result4655 := by
  rw [tree4655_def]
  try dsimp only [colour, result4655]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4656_agree : tree4656 = literal4656 := by
  rw [tree4656_def, tree4654_agree, tree4655_agree]
  rfl
theorem node4656_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4656 live4656 coloured4656 = result4656 := by
  rw [tree4656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4654_eq
  unfold live4654 coloured4654 at child
  try dsimp only [live4656, coloured4656]
  rw [child]
  dsimp only [result4654]
  have child := node4655_eq
  unfold live4655 coloured4655 at child
  try dsimp only [live4656, coloured4656]
  rw [child]
  dsimp only [result4655]
  try dsimp only [colour, result4656]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4657_agree : tree4657 = literal4657 := by
  rw [tree4657_def]
  rfl
theorem node4657_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4657 live4657 coloured4657 = result4657 := by
  rw [tree4657_def]
  try dsimp only [colour, result4657]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4658_agree : tree4658 = literal4658 := by
  rw [tree4658_def, tree4656_agree, tree4657_agree]
  rfl
theorem node4658_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4658 live4658 coloured4658 = result4658 := by
  rw [tree4658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4656_eq
  unfold live4656 coloured4656 at child
  try dsimp only [live4658, coloured4658]
  rw [child]
  dsimp only [result4656]
  have child := node4657_eq
  unfold live4657 coloured4657 at child
  try dsimp only [live4658, coloured4658]
  rw [child]
  dsimp only [result4657]
  try dsimp only [colour, result4658]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4659_agree : tree4659 = literal4659 := by
  rw [tree4659_def]
  rfl
theorem node4659_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4659 live4659 coloured4659 = result4659 := by
  rw [tree4659_def]
  try dsimp only [colour, result4659]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4660_agree : tree4660 = literal4660 := by
  rw [tree4660_def, tree4658_agree, tree4659_agree]
  rfl
theorem node4660_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4660 live4660 coloured4660 = result4660 := by
  rw [tree4660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4658_eq
  unfold live4658 coloured4658 at child
  try dsimp only [live4660, coloured4660]
  rw [child]
  dsimp only [result4658]
  have child := node4659_eq
  unfold live4659 coloured4659 at child
  try dsimp only [live4660, coloured4660]
  rw [child]
  dsimp only [result4659]
  try dsimp only [colour, result4660]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4661_agree : tree4661 = literal4661 := by
  rw [tree4661_def]
  rfl
theorem node4661_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4661 live4661 coloured4661 = result4661 := by
  rw [tree4661_def]
  try dsimp only [colour, result4661]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4662_agree : tree4662 = literal4662 := by
  rw [tree4662_def, tree4660_agree, tree4661_agree]
  rfl
theorem node4662_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4662 live4662 coloured4662 = result4662 := by
  rw [tree4662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4660_eq
  unfold live4660 coloured4660 at child
  try dsimp only [live4662, coloured4662]
  rw [child]
  dsimp only [result4660]
  have child := node4661_eq
  unfold live4661 coloured4661 at child
  try dsimp only [live4662, coloured4662]
  rw [child]
  dsimp only [result4661]
  try dsimp only [colour, result4662]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4663_agree : tree4663 = literal4663 := by
  rw [tree4663_def]
  rfl
theorem node4663_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4663 live4663 coloured4663 = result4663 := by
  rw [tree4663_def]
  try dsimp only [colour, result4663]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4664_agree : tree4664 = literal4664 := by
  rw [tree4664_def, tree4662_agree, tree4663_agree]
  rfl
theorem node4664_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4664 live4664 coloured4664 = result4664 := by
  rw [tree4664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4662_eq
  unfold live4662 coloured4662 at child
  try dsimp only [live4664, coloured4664]
  rw [child]
  dsimp only [result4662]
  have child := node4663_eq
  unfold live4663 coloured4663 at child
  try dsimp only [live4664, coloured4664]
  rw [child]
  dsimp only [result4663]
  try dsimp only [colour, result4664]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4665_agree : tree4665 = literal4665 := by
  rw [tree4665_def]
  rfl
theorem node4665_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4665 live4665 coloured4665 = result4665 := by
  rw [tree4665_def]
  try dsimp only [colour, result4665]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4666_agree : tree4666 = literal4666 := by
  rw [tree4666_def, tree4664_agree, tree4665_agree]
  rfl
theorem node4666_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4666 live4666 coloured4666 = result4666 := by
  rw [tree4666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4664_eq
  unfold live4664 coloured4664 at child
  try dsimp only [live4666, coloured4666]
  rw [child]
  dsimp only [result4664]
  have child := node4665_eq
  unfold live4665 coloured4665 at child
  try dsimp only [live4666, coloured4666]
  rw [child]
  dsimp only [result4665]
  try dsimp only [colour, result4666]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4667_agree : tree4667 = literal4667 := by
  rw [tree4667_def]
  rfl
theorem node4667_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4667 live4667 coloured4667 = result4667 := by
  rw [tree4667_def]
  try dsimp only [colour, result4667]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4668_agree : tree4668 = literal4668 := by
  rw [tree4668_def, tree4666_agree, tree4667_agree]
  rfl
theorem node4668_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4668 live4668 coloured4668 = result4668 := by
  rw [tree4668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4666_eq
  unfold live4666 coloured4666 at child
  try dsimp only [live4668, coloured4668]
  rw [child]
  dsimp only [result4666]
  have child := node4667_eq
  unfold live4667 coloured4667 at child
  try dsimp only [live4668, coloured4668]
  rw [child]
  dsimp only [result4667]
  try dsimp only [colour, result4668]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4669_agree : tree4669 = literal4669 := by
  rw [tree4669_def]
  rfl
theorem node4669_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4669 live4669 coloured4669 = result4669 := by
  rw [tree4669_def]
  try dsimp only [colour, result4669]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4670_agree : tree4670 = literal4670 := by
  rw [tree4670_def, tree4668_agree, tree4669_agree]
  rfl
theorem node4670_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4670 live4670 coloured4670 = result4670 := by
  rw [tree4670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4668_eq
  unfold live4668 coloured4668 at child
  try dsimp only [live4670, coloured4670]
  rw [child]
  dsimp only [result4668]
  have child := node4669_eq
  unfold live4669 coloured4669 at child
  try dsimp only [live4670, coloured4670]
  rw [child]
  dsimp only [result4669]
  try dsimp only [colour, result4670]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4671_agree : tree4671 = literal4671 := by
  rw [tree4671_def]
  rfl
theorem node4671_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4671 live4671 coloured4671 = result4671 := by
  rw [tree4671_def]
  try dsimp only [colour, result4671]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4672_agree : tree4672 = literal4672 := by
  rw [tree4672_def, tree4670_agree, tree4671_agree]
  rfl
theorem node4672_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4672 live4672 coloured4672 = result4672 := by
  rw [tree4672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4670_eq
  unfold live4670 coloured4670 at child
  try dsimp only [live4672, coloured4672]
  rw [child]
  dsimp only [result4670]
  have child := node4671_eq
  unfold live4671 coloured4671 at child
  try dsimp only [live4672, coloured4672]
  rw [child]
  dsimp only [result4671]
  try dsimp only [colour, result4672]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4673_agree : tree4673 = literal4673 := by
  rw [tree4673_def]
  rfl
theorem node4673_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4673 live4673 coloured4673 = result4673 := by
  rw [tree4673_def]
  try dsimp only [colour, result4673]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4674_agree : tree4674 = literal4674 := by
  rw [tree4674_def, tree4672_agree, tree4673_agree]
  rfl
theorem node4674_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4674 live4674 coloured4674 = result4674 := by
  rw [tree4674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4672_eq
  unfold live4672 coloured4672 at child
  try dsimp only [live4674, coloured4674]
  rw [child]
  dsimp only [result4672]
  have child := node4673_eq
  unfold live4673 coloured4673 at child
  try dsimp only [live4674, coloured4674]
  rw [child]
  dsimp only [result4673]
  try dsimp only [colour, result4674]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4675_agree : tree4675 = literal4675 := by
  rw [tree4675_def]
  rfl
theorem node4675_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4675 live4675 coloured4675 = result4675 := by
  rw [tree4675_def]
  try dsimp only [colour, result4675]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4676_agree : tree4676 = literal4676 := by
  rw [tree4676_def, tree4674_agree, tree4675_agree]
  rfl
theorem node4676_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4676 live4676 coloured4676 = result4676 := by
  rw [tree4676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4674_eq
  unfold live4674 coloured4674 at child
  try dsimp only [live4676, coloured4676]
  rw [child]
  dsimp only [result4674]
  have child := node4675_eq
  unfold live4675 coloured4675 at child
  try dsimp only [live4676, coloured4676]
  rw [child]
  dsimp only [result4675]
  try dsimp only [colour, result4676]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4677_agree : tree4677 = literal4677 := by
  rw [tree4677_def]
  rfl
theorem node4677_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4677 live4677 coloured4677 = result4677 := by
  rw [tree4677_def]
  try dsimp only [colour, result4677]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4678_agree : tree4678 = literal4678 := by
  rw [tree4678_def, tree4676_agree, tree4677_agree]
  rfl
theorem node4678_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4678 live4678 coloured4678 = result4678 := by
  rw [tree4678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4676_eq
  unfold live4676 coloured4676 at child
  try dsimp only [live4678, coloured4678]
  rw [child]
  dsimp only [result4676]
  have child := node4677_eq
  unfold live4677 coloured4677 at child
  try dsimp only [live4678, coloured4678]
  rw [child]
  dsimp only [result4677]
  try dsimp only [colour, result4678]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4679_agree : tree4679 = literal4679 := by
  rw [tree4679_def]
  rfl
theorem node4679_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4679 live4679 coloured4679 = result4679 := by
  rw [tree4679_def]
  try dsimp only [colour, result4679]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4680_agree : tree4680 = literal4680 := by
  rw [tree4680_def, tree4678_agree, tree4679_agree]
  rfl
theorem node4680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4680 live4680 coloured4680 = result4680 := by
  rw [tree4680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4678_eq
  unfold live4678 coloured4678 at child
  try dsimp only [live4680, coloured4680]
  rw [child]
  dsimp only [result4678]
  have child := node4679_eq
  unfold live4679 coloured4679 at child
  try dsimp only [live4680, coloured4680]
  rw [child]
  dsimp only [result4679]
  try dsimp only [colour, result4680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4681_agree : tree4681 = literal4681 := by
  rw [tree4681_def]
  rfl
theorem node4681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4681 live4681 coloured4681 = result4681 := by
  rw [tree4681_def]
  try dsimp only [colour, result4681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4682_agree : tree4682 = literal4682 := by
  rw [tree4682_def, tree4680_agree, tree4681_agree]
  rfl
theorem node4682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4682 live4682 coloured4682 = result4682 := by
  rw [tree4682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4680_eq
  unfold live4680 coloured4680 at child
  try dsimp only [live4682, coloured4682]
  rw [child]
  dsimp only [result4680]
  have child := node4681_eq
  unfold live4681 coloured4681 at child
  try dsimp only [live4682, coloured4682]
  rw [child]
  dsimp only [result4681]
  try dsimp only [colour, result4682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4683_agree : tree4683 = literal4683 := by
  rw [tree4683_def]
  rfl
theorem node4683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4683 live4683 coloured4683 = result4683 := by
  rw [tree4683_def]
  try dsimp only [colour, result4683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4684_agree : tree4684 = literal4684 := by
  rw [tree4684_def, tree4682_agree, tree4683_agree]
  rfl
theorem node4684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4684 live4684 coloured4684 = result4684 := by
  rw [tree4684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4682_eq
  unfold live4682 coloured4682 at child
  try dsimp only [live4684, coloured4684]
  rw [child]
  dsimp only [result4682]
  have child := node4683_eq
  unfold live4683 coloured4683 at child
  try dsimp only [live4684, coloured4684]
  rw [child]
  dsimp only [result4683]
  try dsimp only [colour, result4684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4685_agree : tree4685 = literal4685 := by
  rw [tree4685_def]
  rfl
theorem node4685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4685 live4685 coloured4685 = result4685 := by
  rw [tree4685_def]
  try dsimp only [colour, result4685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4686_agree : tree4686 = literal4686 := by
  rw [tree4686_def, tree4684_agree, tree4685_agree]
  rfl
theorem node4686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4686 live4686 coloured4686 = result4686 := by
  rw [tree4686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4684_eq
  unfold live4684 coloured4684 at child
  try dsimp only [live4686, coloured4686]
  rw [child]
  dsimp only [result4684]
  have child := node4685_eq
  unfold live4685 coloured4685 at child
  try dsimp only [live4686, coloured4686]
  rw [child]
  dsimp only [result4685]
  try dsimp only [colour, result4686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4687_agree : tree4687 = literal4687 := by
  rw [tree4687_def]
  rfl
theorem node4687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4687 live4687 coloured4687 = result4687 := by
  rw [tree4687_def]
  try dsimp only [colour, result4687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4688_agree : tree4688 = literal4688 := by
  rw [tree4688_def, tree4686_agree, tree4687_agree]
  rfl
theorem node4688_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4688 live4688 coloured4688 = result4688 := by
  rw [tree4688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4686_eq
  unfold live4686 coloured4686 at child
  try dsimp only [live4688, coloured4688]
  rw [child]
  dsimp only [result4686]
  have child := node4687_eq
  unfold live4687 coloured4687 at child
  try dsimp only [live4688, coloured4688]
  rw [child]
  dsimp only [result4687]
  try dsimp only [colour, result4688]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4689_agree : tree4689 = literal4689 := by
  rw [tree4689_def]
  rfl
theorem node4689_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4689 live4689 coloured4689 = result4689 := by
  rw [tree4689_def]
  try dsimp only [colour, result4689]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4690_agree : tree4690 = literal4690 := by
  rw [tree4690_def, tree4688_agree, tree4689_agree]
  rfl
theorem node4690_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4690 live4690 coloured4690 = result4690 := by
  rw [tree4690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4688_eq
  unfold live4688 coloured4688 at child
  try dsimp only [live4690, coloured4690]
  rw [child]
  dsimp only [result4688]
  have child := node4689_eq
  unfold live4689 coloured4689 at child
  try dsimp only [live4690, coloured4690]
  rw [child]
  dsimp only [result4689]
  try dsimp only [colour, result4690]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4691_agree : tree4691 = literal4691 := by
  rw [tree4691_def]
  rfl
theorem node4691_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4691 live4691 coloured4691 = result4691 := by
  rw [tree4691_def]
  try dsimp only [colour, result4691]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4692_agree : tree4692 = literal4692 := by
  rw [tree4692_def, tree4690_agree, tree4691_agree]
  rfl
theorem node4692_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4692 live4692 coloured4692 = result4692 := by
  rw [tree4692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4690_eq
  unfold live4690 coloured4690 at child
  try dsimp only [live4692, coloured4692]
  rw [child]
  dsimp only [result4690]
  have child := node4691_eq
  unfold live4691 coloured4691 at child
  try dsimp only [live4692, coloured4692]
  rw [child]
  dsimp only [result4691]
  try dsimp only [colour, result4692]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4693_agree : tree4693 = literal4693 := by
  rw [tree4693_def]
  rfl
theorem node4693_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4693 live4693 coloured4693 = result4693 := by
  rw [tree4693_def]
  try dsimp only [colour, result4693]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4694_agree : tree4694 = literal4694 := by
  rw [tree4694_def, tree4692_agree, tree4693_agree]
  rfl
theorem node4694_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4694 live4694 coloured4694 = result4694 := by
  rw [tree4694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4692_eq
  unfold live4692 coloured4692 at child
  try dsimp only [live4694, coloured4694]
  rw [child]
  dsimp only [result4692]
  have child := node4693_eq
  unfold live4693 coloured4693 at child
  try dsimp only [live4694, coloured4694]
  rw [child]
  dsimp only [result4693]
  try dsimp only [colour, result4694]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4695_agree : tree4695 = literal4695 := by
  rw [tree4695_def]
  rfl
theorem node4695_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4695 live4695 coloured4695 = result4695 := by
  rw [tree4695_def]
  try dsimp only [colour, result4695]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4696_agree : tree4696 = literal4696 := by
  rw [tree4696_def, tree4694_agree, tree4695_agree]
  rfl
theorem node4696_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4696 live4696 coloured4696 = result4696 := by
  rw [tree4696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4694_eq
  unfold live4694 coloured4694 at child
  try dsimp only [live4696, coloured4696]
  rw [child]
  dsimp only [result4694]
  have child := node4695_eq
  unfold live4695 coloured4695 at child
  try dsimp only [live4696, coloured4696]
  rw [child]
  dsimp only [result4695]
  try dsimp only [colour, result4696]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4697_agree : tree4697 = literal4697 := by
  rw [tree4697_def]
  rfl
theorem node4697_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4697 live4697 coloured4697 = result4697 := by
  rw [tree4697_def]
  try dsimp only [colour, result4697]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4698_agree : tree4698 = literal4698 := by
  rw [tree4698_def, tree4696_agree, tree4697_agree]
  rfl
theorem node4698_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4698 live4698 coloured4698 = result4698 := by
  rw [tree4698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4696_eq
  unfold live4696 coloured4696 at child
  try dsimp only [live4698, coloured4698]
  rw [child]
  dsimp only [result4696]
  have child := node4697_eq
  unfold live4697 coloured4697 at child
  try dsimp only [live4698, coloured4698]
  rw [child]
  dsimp only [result4697]
  try dsimp only [colour, result4698]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4699_agree : tree4699 = literal4699 := by
  rw [tree4699_def]
  rfl
theorem node4699_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4699 live4699 coloured4699 = result4699 := by
  rw [tree4699_def]
  try dsimp only [colour, result4699]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4700_agree : tree4700 = literal4700 := by
  rw [tree4700_def, tree4698_agree, tree4699_agree]
  rfl
theorem node4700_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4700 live4700 coloured4700 = result4700 := by
  rw [tree4700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4698_eq
  unfold live4698 coloured4698 at child
  try dsimp only [live4700, coloured4700]
  rw [child]
  dsimp only [result4698]
  have child := node4699_eq
  unfold live4699 coloured4699 at child
  try dsimp only [live4700, coloured4700]
  rw [child]
  dsimp only [result4699]
  try dsimp only [colour, result4700]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4701_agree : tree4701 = literal4701 := by
  rw [tree4701_def]
  rfl
theorem node4701_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4701 live4701 coloured4701 = result4701 := by
  rw [tree4701_def]
  try dsimp only [colour, result4701]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4702_agree : tree4702 = literal4702 := by
  rw [tree4702_def, tree4700_agree, tree4701_agree]
  rfl
theorem node4702_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4702 live4702 coloured4702 = result4702 := by
  rw [tree4702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4700_eq
  unfold live4700 coloured4700 at child
  try dsimp only [live4702, coloured4702]
  rw [child]
  dsimp only [result4700]
  have child := node4701_eq
  unfold live4701 coloured4701 at child
  try dsimp only [live4702, coloured4702]
  rw [child]
  dsimp only [result4701]
  try dsimp only [colour, result4702]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4703_agree : tree4703 = literal4703 := by
  rw [tree4703_def]
  rfl
theorem node4703_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4703 live4703 coloured4703 = result4703 := by
  rw [tree4703_def]
  try dsimp only [colour, result4703]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
