import InitECandidate.Proofs.ClashStages713.Proof120
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree11616_agree : tree11616 = literal11616 := by
  rw [tree11616_def, tree11614_agree, tree11615_agree]
  rfl
theorem node11616_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11616 live11616 coloured11616 = result11616 := by
  rw [tree11616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11614_eq
  unfold live11614 coloured11614 at child
  try dsimp only [live11616, coloured11616]
  rw [child]
  dsimp only [result11614]
  have child := node11615_eq
  unfold live11615 coloured11615 at child
  try dsimp only [live11616, coloured11616]
  rw [child]
  dsimp only [result11615]
  try dsimp only [colour, result11616]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11617_agree : tree11617 = literal11617 := by
  rw [tree11617_def]
  rfl
theorem node11617_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11617 live11617 coloured11617 = result11617 := by
  rw [tree11617_def]
  try dsimp only [colour, result11617]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11618_agree : tree11618 = literal11618 := by
  rw [tree11618_def, tree11616_agree, tree11617_agree]
  rfl
theorem node11618_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11618 live11618 coloured11618 = result11618 := by
  rw [tree11618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11616_eq
  unfold live11616 coloured11616 at child
  try dsimp only [live11618, coloured11618]
  rw [child]
  dsimp only [result11616]
  have child := node11617_eq
  unfold live11617 coloured11617 at child
  try dsimp only [live11618, coloured11618]
  rw [child]
  dsimp only [result11617]
  try dsimp only [colour, result11618]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11619_agree : tree11619 = literal11619 := by
  rw [tree11619_def]
  rfl
theorem node11619_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11619 live11619 coloured11619 = result11619 := by
  rw [tree11619_def]
  try dsimp only [colour, result11619]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11620_agree : tree11620 = literal11620 := by
  rw [tree11620_def, tree11618_agree, tree11619_agree]
  rfl
theorem node11620_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11620 live11620 coloured11620 = result11620 := by
  rw [tree11620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11618_eq
  unfold live11618 coloured11618 at child
  try dsimp only [live11620, coloured11620]
  rw [child]
  dsimp only [result11618]
  have child := node11619_eq
  unfold live11619 coloured11619 at child
  try dsimp only [live11620, coloured11620]
  rw [child]
  dsimp only [result11619]
  try dsimp only [colour, result11620]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11621_agree : tree11621 = literal11621 := by
  rw [tree11621_def]
  rfl
theorem node11621_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11621 live11621 coloured11621 = result11621 := by
  rw [tree11621_def]
  try dsimp only [colour, result11621]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11622_agree : tree11622 = literal11622 := by
  rw [tree11622_def, tree11620_agree, tree11621_agree]
  rfl
theorem node11622_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11622 live11622 coloured11622 = result11622 := by
  rw [tree11622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11620_eq
  unfold live11620 coloured11620 at child
  try dsimp only [live11622, coloured11622]
  rw [child]
  dsimp only [result11620]
  have child := node11621_eq
  unfold live11621 coloured11621 at child
  try dsimp only [live11622, coloured11622]
  rw [child]
  dsimp only [result11621]
  try dsimp only [colour, result11622]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11623_agree : tree11623 = literal11623 := by
  rw [tree11623_def]
  rfl
theorem node11623_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11623 live11623 coloured11623 = result11623 := by
  rw [tree11623_def]
  try dsimp only [colour, result11623]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11624_agree : tree11624 = literal11624 := by
  rw [tree11624_def, tree11622_agree, tree11623_agree]
  rfl
theorem node11624_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11624 live11624 coloured11624 = result11624 := by
  rw [tree11624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11622_eq
  unfold live11622 coloured11622 at child
  try dsimp only [live11624, coloured11624]
  rw [child]
  dsimp only [result11622]
  have child := node11623_eq
  unfold live11623 coloured11623 at child
  try dsimp only [live11624, coloured11624]
  rw [child]
  dsimp only [result11623]
  try dsimp only [colour, result11624]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11625_agree : tree11625 = literal11625 := by
  rw [tree11625_def]
  rfl
theorem node11625_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11625 live11625 coloured11625 = result11625 := by
  rw [tree11625_def]
  try dsimp only [colour, result11625]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11626_agree : tree11626 = literal11626 := by
  rw [tree11626_def, tree11624_agree, tree11625_agree]
  rfl
theorem node11626_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11626 live11626 coloured11626 = result11626 := by
  rw [tree11626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11624_eq
  unfold live11624 coloured11624 at child
  try dsimp only [live11626, coloured11626]
  rw [child]
  dsimp only [result11624]
  have child := node11625_eq
  unfold live11625 coloured11625 at child
  try dsimp only [live11626, coloured11626]
  rw [child]
  dsimp only [result11625]
  try dsimp only [colour, result11626]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11627_agree : tree11627 = literal11627 := by
  rw [tree11627_def]
  rfl
theorem node11627_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11627 live11627 coloured11627 = result11627 := by
  rw [tree11627_def]
  try dsimp only [colour, result11627]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11628_agree : tree11628 = literal11628 := by
  rw [tree11628_def, tree11626_agree, tree11627_agree]
  rfl
theorem node11628_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11628 live11628 coloured11628 = result11628 := by
  rw [tree11628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11626_eq
  unfold live11626 coloured11626 at child
  try dsimp only [live11628, coloured11628]
  rw [child]
  dsimp only [result11626]
  have child := node11627_eq
  unfold live11627 coloured11627 at child
  try dsimp only [live11628, coloured11628]
  rw [child]
  dsimp only [result11627]
  try dsimp only [colour, result11628]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11629_agree : tree11629 = literal11629 := by
  rw [tree11629_def]
  rfl
theorem node11629_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11629 live11629 coloured11629 = result11629 := by
  rw [tree11629_def]
  try dsimp only [colour, result11629]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11630_agree : tree11630 = literal11630 := by
  rw [tree11630_def, tree11628_agree, tree11629_agree]
  rfl
theorem node11630_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11630 live11630 coloured11630 = result11630 := by
  rw [tree11630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11628_eq
  unfold live11628 coloured11628 at child
  try dsimp only [live11630, coloured11630]
  rw [child]
  dsimp only [result11628]
  have child := node11629_eq
  unfold live11629 coloured11629 at child
  try dsimp only [live11630, coloured11630]
  rw [child]
  dsimp only [result11629]
  try dsimp only [colour, result11630]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11631_agree : tree11631 = literal11631 := by
  rw [tree11631_def]
  rfl
theorem node11631_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11631 live11631 coloured11631 = result11631 := by
  rw [tree11631_def]
  try dsimp only [colour, result11631]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11632_agree : tree11632 = literal11632 := by
  rw [tree11632_def, tree11630_agree, tree11631_agree]
  rfl
theorem node11632_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11632 live11632 coloured11632 = result11632 := by
  rw [tree11632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11630_eq
  unfold live11630 coloured11630 at child
  try dsimp only [live11632, coloured11632]
  rw [child]
  dsimp only [result11630]
  have child := node11631_eq
  unfold live11631 coloured11631 at child
  try dsimp only [live11632, coloured11632]
  rw [child]
  dsimp only [result11631]
  try dsimp only [colour, result11632]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11633_agree : tree11633 = literal11633 := by
  rw [tree11633_def]
  rfl
theorem node11633_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11633 live11633 coloured11633 = result11633 := by
  rw [tree11633_def]
  try dsimp only [colour, result11633]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11634_agree : tree11634 = literal11634 := by
  rw [tree11634_def, tree11632_agree, tree11633_agree]
  rfl
theorem node11634_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11634 live11634 coloured11634 = result11634 := by
  rw [tree11634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11632_eq
  unfold live11632 coloured11632 at child
  try dsimp only [live11634, coloured11634]
  rw [child]
  dsimp only [result11632]
  have child := node11633_eq
  unfold live11633 coloured11633 at child
  try dsimp only [live11634, coloured11634]
  rw [child]
  dsimp only [result11633]
  try dsimp only [colour, result11634]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11635_agree : tree11635 = literal11635 := by
  rw [tree11635_def]
  rfl
theorem node11635_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11635 live11635 coloured11635 = result11635 := by
  rw [tree11635_def]
  try dsimp only [colour, result11635]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11636_agree : tree11636 = literal11636 := by
  rw [tree11636_def, tree11634_agree, tree11635_agree]
  rfl
theorem node11636_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11636 live11636 coloured11636 = result11636 := by
  rw [tree11636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11634_eq
  unfold live11634 coloured11634 at child
  try dsimp only [live11636, coloured11636]
  rw [child]
  dsimp only [result11634]
  have child := node11635_eq
  unfold live11635 coloured11635 at child
  try dsimp only [live11636, coloured11636]
  rw [child]
  dsimp only [result11635]
  try dsimp only [colour, result11636]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11637_agree : tree11637 = literal11637 := by
  rw [tree11637_def]
  rfl
theorem node11637_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11637 live11637 coloured11637 = result11637 := by
  rw [tree11637_def]
  try dsimp only [colour, result11637]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11638_agree : tree11638 = literal11638 := by
  rw [tree11638_def, tree11636_agree, tree11637_agree]
  rfl
theorem node11638_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11638 live11638 coloured11638 = result11638 := by
  rw [tree11638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11636_eq
  unfold live11636 coloured11636 at child
  try dsimp only [live11638, coloured11638]
  rw [child]
  dsimp only [result11636]
  have child := node11637_eq
  unfold live11637 coloured11637 at child
  try dsimp only [live11638, coloured11638]
  rw [child]
  dsimp only [result11637]
  try dsimp only [colour, result11638]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11639_agree : tree11639 = literal11639 := by
  rw [tree11639_def]
  rfl
theorem node11639_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11639 live11639 coloured11639 = result11639 := by
  rw [tree11639_def]
  try dsimp only [colour, result11639]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11640_agree : tree11640 = literal11640 := by
  rw [tree11640_def, tree11638_agree, tree11639_agree]
  rfl
theorem node11640_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11640 live11640 coloured11640 = result11640 := by
  rw [tree11640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11638_eq
  unfold live11638 coloured11638 at child
  try dsimp only [live11640, coloured11640]
  rw [child]
  dsimp only [result11638]
  have child := node11639_eq
  unfold live11639 coloured11639 at child
  try dsimp only [live11640, coloured11640]
  rw [child]
  dsimp only [result11639]
  try dsimp only [colour, result11640]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11641_agree : tree11641 = literal11641 := by
  rw [tree11641_def]
  rfl
theorem node11641_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11641 live11641 coloured11641 = result11641 := by
  rw [tree11641_def]
  try dsimp only [colour, result11641]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11642_agree : tree11642 = literal11642 := by
  rw [tree11642_def, tree11640_agree, tree11641_agree]
  rfl
theorem node11642_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11642 live11642 coloured11642 = result11642 := by
  rw [tree11642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11640_eq
  unfold live11640 coloured11640 at child
  try dsimp only [live11642, coloured11642]
  rw [child]
  dsimp only [result11640]
  have child := node11641_eq
  unfold live11641 coloured11641 at child
  try dsimp only [live11642, coloured11642]
  rw [child]
  dsimp only [result11641]
  try dsimp only [colour, result11642]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11643_agree : tree11643 = literal11643 := by
  rw [tree11643_def]
  rfl
theorem node11643_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11643 live11643 coloured11643 = result11643 := by
  rw [tree11643_def]
  try dsimp only [colour, result11643]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11644_agree : tree11644 = literal11644 := by
  rw [tree11644_def, tree11642_agree, tree11643_agree]
  rfl
theorem node11644_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11644 live11644 coloured11644 = result11644 := by
  rw [tree11644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11642_eq
  unfold live11642 coloured11642 at child
  try dsimp only [live11644, coloured11644]
  rw [child]
  dsimp only [result11642]
  have child := node11643_eq
  unfold live11643 coloured11643 at child
  try dsimp only [live11644, coloured11644]
  rw [child]
  dsimp only [result11643]
  try dsimp only [colour, result11644]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11645_agree : tree11645 = literal11645 := by
  rw [tree11645_def]
  rfl
theorem node11645_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11645 live11645 coloured11645 = result11645 := by
  rw [tree11645_def]
  try dsimp only [colour, result11645]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11646_agree : tree11646 = literal11646 := by
  rw [tree11646_def, tree11644_agree, tree11645_agree]
  rfl
theorem node11646_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11646 live11646 coloured11646 = result11646 := by
  rw [tree11646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11644_eq
  unfold live11644 coloured11644 at child
  try dsimp only [live11646, coloured11646]
  rw [child]
  dsimp only [result11644]
  have child := node11645_eq
  unfold live11645 coloured11645 at child
  try dsimp only [live11646, coloured11646]
  rw [child]
  dsimp only [result11645]
  try dsimp only [colour, result11646]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11647_agree : tree11647 = literal11647 := by
  rw [tree11647_def]
  rfl
theorem node11647_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11647 live11647 coloured11647 = result11647 := by
  rw [tree11647_def]
  try dsimp only [colour, result11647]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11648_agree : tree11648 = literal11648 := by
  rw [tree11648_def, tree11646_agree, tree11647_agree]
  rfl
theorem node11648_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11648 live11648 coloured11648 = result11648 := by
  rw [tree11648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11646_eq
  unfold live11646 coloured11646 at child
  try dsimp only [live11648, coloured11648]
  rw [child]
  dsimp only [result11646]
  have child := node11647_eq
  unfold live11647 coloured11647 at child
  try dsimp only [live11648, coloured11648]
  rw [child]
  dsimp only [result11647]
  try dsimp only [colour, result11648]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11649_agree : tree11649 = literal11649 := by
  rw [tree11649_def]
  rfl
theorem node11649_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11649 live11649 coloured11649 = result11649 := by
  rw [tree11649_def]
  try dsimp only [colour, result11649]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11650_agree : tree11650 = literal11650 := by
  rw [tree11650_def, tree11648_agree, tree11649_agree]
  rfl
theorem node11650_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11650 live11650 coloured11650 = result11650 := by
  rw [tree11650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11648_eq
  unfold live11648 coloured11648 at child
  try dsimp only [live11650, coloured11650]
  rw [child]
  dsimp only [result11648]
  have child := node11649_eq
  unfold live11649 coloured11649 at child
  try dsimp only [live11650, coloured11650]
  rw [child]
  dsimp only [result11649]
  try dsimp only [colour, result11650]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11651_agree : tree11651 = literal11651 := by
  rw [tree11651_def]
  rfl
theorem node11651_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11651 live11651 coloured11651 = result11651 := by
  rw [tree11651_def]
  try dsimp only [colour, result11651]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11652_agree : tree11652 = literal11652 := by
  rw [tree11652_def, tree11650_agree, tree11651_agree]
  rfl
theorem node11652_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11652 live11652 coloured11652 = result11652 := by
  rw [tree11652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11650_eq
  unfold live11650 coloured11650 at child
  try dsimp only [live11652, coloured11652]
  rw [child]
  dsimp only [result11650]
  have child := node11651_eq
  unfold live11651 coloured11651 at child
  try dsimp only [live11652, coloured11652]
  rw [child]
  dsimp only [result11651]
  try dsimp only [colour, result11652]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11653_agree : tree11653 = literal11653 := by
  rw [tree11653_def]
  rfl
theorem node11653_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11653 live11653 coloured11653 = result11653 := by
  rw [tree11653_def]
  try dsimp only [colour, result11653]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11654_agree : tree11654 = literal11654 := by
  rw [tree11654_def, tree11652_agree, tree11653_agree]
  rfl
theorem node11654_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11654 live11654 coloured11654 = result11654 := by
  rw [tree11654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11652_eq
  unfold live11652 coloured11652 at child
  try dsimp only [live11654, coloured11654]
  rw [child]
  dsimp only [result11652]
  have child := node11653_eq
  unfold live11653 coloured11653 at child
  try dsimp only [live11654, coloured11654]
  rw [child]
  dsimp only [result11653]
  try dsimp only [colour, result11654]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11655_agree : tree11655 = literal11655 := by
  rw [tree11655_def]
  rfl
theorem node11655_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11655 live11655 coloured11655 = result11655 := by
  rw [tree11655_def]
  try dsimp only [colour, result11655]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11656_agree : tree11656 = literal11656 := by
  rw [tree11656_def, tree11654_agree, tree11655_agree]
  rfl
theorem node11656_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11656 live11656 coloured11656 = result11656 := by
  rw [tree11656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11654_eq
  unfold live11654 coloured11654 at child
  try dsimp only [live11656, coloured11656]
  rw [child]
  dsimp only [result11654]
  have child := node11655_eq
  unfold live11655 coloured11655 at child
  try dsimp only [live11656, coloured11656]
  rw [child]
  dsimp only [result11655]
  try dsimp only [colour, result11656]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11657_agree : tree11657 = literal11657 := by
  rw [tree11657_def]
  rfl
theorem node11657_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11657 live11657 coloured11657 = result11657 := by
  rw [tree11657_def]
  try dsimp only [colour, result11657]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11658_agree : tree11658 = literal11658 := by
  rw [tree11658_def, tree11656_agree, tree11657_agree]
  rfl
theorem node11658_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11658 live11658 coloured11658 = result11658 := by
  rw [tree11658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11656_eq
  unfold live11656 coloured11656 at child
  try dsimp only [live11658, coloured11658]
  rw [child]
  dsimp only [result11656]
  have child := node11657_eq
  unfold live11657 coloured11657 at child
  try dsimp only [live11658, coloured11658]
  rw [child]
  dsimp only [result11657]
  try dsimp only [colour, result11658]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11659_agree : tree11659 = literal11659 := by
  rw [tree11659_def]
  rfl
theorem node11659_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11659 live11659 coloured11659 = result11659 := by
  rw [tree11659_def]
  try dsimp only [colour, result11659]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11660_agree : tree11660 = literal11660 := by
  rw [tree11660_def, tree11658_agree, tree11659_agree]
  rfl
theorem node11660_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11660 live11660 coloured11660 = result11660 := by
  rw [tree11660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11658_eq
  unfold live11658 coloured11658 at child
  try dsimp only [live11660, coloured11660]
  rw [child]
  dsimp only [result11658]
  have child := node11659_eq
  unfold live11659 coloured11659 at child
  try dsimp only [live11660, coloured11660]
  rw [child]
  dsimp only [result11659]
  try dsimp only [colour, result11660]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11661_agree : tree11661 = literal11661 := by
  rw [tree11661_def]
  rfl
theorem node11661_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11661 live11661 coloured11661 = result11661 := by
  rw [tree11661_def]
  try dsimp only [colour, result11661]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11662_agree : tree11662 = literal11662 := by
  rw [tree11662_def, tree11660_agree, tree11661_agree]
  rfl
theorem node11662_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11662 live11662 coloured11662 = result11662 := by
  rw [tree11662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11660_eq
  unfold live11660 coloured11660 at child
  try dsimp only [live11662, coloured11662]
  rw [child]
  dsimp only [result11660]
  have child := node11661_eq
  unfold live11661 coloured11661 at child
  try dsimp only [live11662, coloured11662]
  rw [child]
  dsimp only [result11661]
  try dsimp only [colour, result11662]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11663_agree : tree11663 = literal11663 := by
  rw [tree11663_def]
  rfl
theorem node11663_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11663 live11663 coloured11663 = result11663 := by
  rw [tree11663_def]
  try dsimp only [colour, result11663]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11664_agree : tree11664 = literal11664 := by
  rw [tree11664_def, tree11662_agree, tree11663_agree]
  rfl
theorem node11664_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11664 live11664 coloured11664 = result11664 := by
  rw [tree11664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11662_eq
  unfold live11662 coloured11662 at child
  try dsimp only [live11664, coloured11664]
  rw [child]
  dsimp only [result11662]
  have child := node11663_eq
  unfold live11663 coloured11663 at child
  try dsimp only [live11664, coloured11664]
  rw [child]
  dsimp only [result11663]
  try dsimp only [colour, result11664]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11665_agree : tree11665 = literal11665 := by
  rw [tree11665_def]
  rfl
theorem node11665_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11665 live11665 coloured11665 = result11665 := by
  rw [tree11665_def]
  try dsimp only [colour, result11665]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11666_agree : tree11666 = literal11666 := by
  rw [tree11666_def, tree11664_agree, tree11665_agree]
  rfl
theorem node11666_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11666 live11666 coloured11666 = result11666 := by
  rw [tree11666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11664_eq
  unfold live11664 coloured11664 at child
  try dsimp only [live11666, coloured11666]
  rw [child]
  dsimp only [result11664]
  have child := node11665_eq
  unfold live11665 coloured11665 at child
  try dsimp only [live11666, coloured11666]
  rw [child]
  dsimp only [result11665]
  try dsimp only [colour, result11666]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11667_agree : tree11667 = literal11667 := by
  rw [tree11667_def]
  rfl
theorem node11667_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11667 live11667 coloured11667 = result11667 := by
  rw [tree11667_def]
  try dsimp only [colour, result11667]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11668_agree : tree11668 = literal11668 := by
  rw [tree11668_def, tree11666_agree, tree11667_agree]
  rfl
theorem node11668_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11668 live11668 coloured11668 = result11668 := by
  rw [tree11668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11666_eq
  unfold live11666 coloured11666 at child
  try dsimp only [live11668, coloured11668]
  rw [child]
  dsimp only [result11666]
  have child := node11667_eq
  unfold live11667 coloured11667 at child
  try dsimp only [live11668, coloured11668]
  rw [child]
  dsimp only [result11667]
  try dsimp only [colour, result11668]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11669_agree : tree11669 = literal11669 := by
  rw [tree11669_def]
  rfl
theorem node11669_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11669 live11669 coloured11669 = result11669 := by
  rw [tree11669_def]
  try dsimp only [colour, result11669]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11670_agree : tree11670 = literal11670 := by
  rw [tree11670_def, tree11668_agree, tree11669_agree]
  rfl
theorem node11670_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11670 live11670 coloured11670 = result11670 := by
  rw [tree11670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11668_eq
  unfold live11668 coloured11668 at child
  try dsimp only [live11670, coloured11670]
  rw [child]
  dsimp only [result11668]
  have child := node11669_eq
  unfold live11669 coloured11669 at child
  try dsimp only [live11670, coloured11670]
  rw [child]
  dsimp only [result11669]
  try dsimp only [colour, result11670]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11671_agree : tree11671 = literal11671 := by
  rw [tree11671_def]
  rfl
theorem node11671_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11671 live11671 coloured11671 = result11671 := by
  rw [tree11671_def]
  try dsimp only [colour, result11671]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11672_agree : tree11672 = literal11672 := by
  rw [tree11672_def, tree11670_agree, tree11671_agree]
  rfl
theorem node11672_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11672 live11672 coloured11672 = result11672 := by
  rw [tree11672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11670_eq
  unfold live11670 coloured11670 at child
  try dsimp only [live11672, coloured11672]
  rw [child]
  dsimp only [result11670]
  have child := node11671_eq
  unfold live11671 coloured11671 at child
  try dsimp only [live11672, coloured11672]
  rw [child]
  dsimp only [result11671]
  try dsimp only [colour, result11672]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11673_agree : tree11673 = literal11673 := by
  rw [tree11673_def]
  rfl
theorem node11673_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11673 live11673 coloured11673 = result11673 := by
  rw [tree11673_def]
  try dsimp only [colour, result11673]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11674_agree : tree11674 = literal11674 := by
  rw [tree11674_def, tree11672_agree, tree11673_agree]
  rfl
theorem node11674_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11674 live11674 coloured11674 = result11674 := by
  rw [tree11674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11672_eq
  unfold live11672 coloured11672 at child
  try dsimp only [live11674, coloured11674]
  rw [child]
  dsimp only [result11672]
  have child := node11673_eq
  unfold live11673 coloured11673 at child
  try dsimp only [live11674, coloured11674]
  rw [child]
  dsimp only [result11673]
  try dsimp only [colour, result11674]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11675_agree : tree11675 = literal11675 := by
  rw [tree11675_def]
  rfl
theorem node11675_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11675 live11675 coloured11675 = result11675 := by
  rw [tree11675_def]
  try dsimp only [colour, result11675]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11676_agree : tree11676 = literal11676 := by
  rw [tree11676_def, tree11674_agree, tree11675_agree]
  rfl
theorem node11676_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11676 live11676 coloured11676 = result11676 := by
  rw [tree11676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11674_eq
  unfold live11674 coloured11674 at child
  try dsimp only [live11676, coloured11676]
  rw [child]
  dsimp only [result11674]
  have child := node11675_eq
  unfold live11675 coloured11675 at child
  try dsimp only [live11676, coloured11676]
  rw [child]
  dsimp only [result11675]
  try dsimp only [colour, result11676]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11677_agree : tree11677 = literal11677 := by
  rw [tree11677_def]
  rfl
theorem node11677_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11677 live11677 coloured11677 = result11677 := by
  rw [tree11677_def]
  try dsimp only [colour, result11677]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11678_agree : tree11678 = literal11678 := by
  rw [tree11678_def, tree11676_agree, tree11677_agree]
  rfl
theorem node11678_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11678 live11678 coloured11678 = result11678 := by
  rw [tree11678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11676_eq
  unfold live11676 coloured11676 at child
  try dsimp only [live11678, coloured11678]
  rw [child]
  dsimp only [result11676]
  have child := node11677_eq
  unfold live11677 coloured11677 at child
  try dsimp only [live11678, coloured11678]
  rw [child]
  dsimp only [result11677]
  try dsimp only [colour, result11678]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11679_agree : tree11679 = literal11679 := by
  rw [tree11679_def]
  rfl
theorem node11679_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11679 live11679 coloured11679 = result11679 := by
  rw [tree11679_def]
  try dsimp only [colour, result11679]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11680_agree : tree11680 = literal11680 := by
  rw [tree11680_def, tree11678_agree, tree11679_agree]
  rfl
theorem node11680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11680 live11680 coloured11680 = result11680 := by
  rw [tree11680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11678_eq
  unfold live11678 coloured11678 at child
  try dsimp only [live11680, coloured11680]
  rw [child]
  dsimp only [result11678]
  have child := node11679_eq
  unfold live11679 coloured11679 at child
  try dsimp only [live11680, coloured11680]
  rw [child]
  dsimp only [result11679]
  try dsimp only [colour, result11680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11681_agree : tree11681 = literal11681 := by
  rw [tree11681_def]
  rfl
theorem node11681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11681 live11681 coloured11681 = result11681 := by
  rw [tree11681_def]
  try dsimp only [colour, result11681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11682_agree : tree11682 = literal11682 := by
  rw [tree11682_def, tree11680_agree, tree11681_agree]
  rfl
theorem node11682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11682 live11682 coloured11682 = result11682 := by
  rw [tree11682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11680_eq
  unfold live11680 coloured11680 at child
  try dsimp only [live11682, coloured11682]
  rw [child]
  dsimp only [result11680]
  have child := node11681_eq
  unfold live11681 coloured11681 at child
  try dsimp only [live11682, coloured11682]
  rw [child]
  dsimp only [result11681]
  try dsimp only [colour, result11682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11683_agree : tree11683 = literal11683 := by
  rw [tree11683_def]
  rfl
theorem node11683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11683 live11683 coloured11683 = result11683 := by
  rw [tree11683_def]
  try dsimp only [colour, result11683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11684_agree : tree11684 = literal11684 := by
  rw [tree11684_def, tree11682_agree, tree11683_agree]
  rfl
theorem node11684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11684 live11684 coloured11684 = result11684 := by
  rw [tree11684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11682_eq
  unfold live11682 coloured11682 at child
  try dsimp only [live11684, coloured11684]
  rw [child]
  dsimp only [result11682]
  have child := node11683_eq
  unfold live11683 coloured11683 at child
  try dsimp only [live11684, coloured11684]
  rw [child]
  dsimp only [result11683]
  try dsimp only [colour, result11684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11685_agree : tree11685 = literal11685 := by
  rw [tree11685_def]
  rfl
theorem node11685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11685 live11685 coloured11685 = result11685 := by
  rw [tree11685_def]
  try dsimp only [colour, result11685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11686_agree : tree11686 = literal11686 := by
  rw [tree11686_def, tree11684_agree, tree11685_agree]
  rfl
theorem node11686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11686 live11686 coloured11686 = result11686 := by
  rw [tree11686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11684_eq
  unfold live11684 coloured11684 at child
  try dsimp only [live11686, coloured11686]
  rw [child]
  dsimp only [result11684]
  have child := node11685_eq
  unfold live11685 coloured11685 at child
  try dsimp only [live11686, coloured11686]
  rw [child]
  dsimp only [result11685]
  try dsimp only [colour, result11686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11687_agree : tree11687 = literal11687 := by
  rw [tree11687_def]
  rfl
theorem node11687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11687 live11687 coloured11687 = result11687 := by
  rw [tree11687_def]
  try dsimp only [colour, result11687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11688_agree : tree11688 = literal11688 := by
  rw [tree11688_def, tree11686_agree, tree11687_agree]
  rfl
theorem node11688_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11688 live11688 coloured11688 = result11688 := by
  rw [tree11688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11686_eq
  unfold live11686 coloured11686 at child
  try dsimp only [live11688, coloured11688]
  rw [child]
  dsimp only [result11686]
  have child := node11687_eq
  unfold live11687 coloured11687 at child
  try dsimp only [live11688, coloured11688]
  rw [child]
  dsimp only [result11687]
  try dsimp only [colour, result11688]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11689_agree : tree11689 = literal11689 := by
  rw [tree11689_def]
  rfl
theorem node11689_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11689 live11689 coloured11689 = result11689 := by
  rw [tree11689_def]
  try dsimp only [colour, result11689]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11690_agree : tree11690 = literal11690 := by
  rw [tree11690_def, tree11688_agree, tree11689_agree]
  rfl
theorem node11690_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11690 live11690 coloured11690 = result11690 := by
  rw [tree11690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11688_eq
  unfold live11688 coloured11688 at child
  try dsimp only [live11690, coloured11690]
  rw [child]
  dsimp only [result11688]
  have child := node11689_eq
  unfold live11689 coloured11689 at child
  try dsimp only [live11690, coloured11690]
  rw [child]
  dsimp only [result11689]
  try dsimp only [colour, result11690]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11691_agree : tree11691 = literal11691 := by
  rw [tree11691_def]
  rfl
theorem node11691_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11691 live11691 coloured11691 = result11691 := by
  rw [tree11691_def]
  try dsimp only [colour, result11691]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11692_agree : tree11692 = literal11692 := by
  rw [tree11692_def, tree11690_agree, tree11691_agree]
  rfl
theorem node11692_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11692 live11692 coloured11692 = result11692 := by
  rw [tree11692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11690_eq
  unfold live11690 coloured11690 at child
  try dsimp only [live11692, coloured11692]
  rw [child]
  dsimp only [result11690]
  have child := node11691_eq
  unfold live11691 coloured11691 at child
  try dsimp only [live11692, coloured11692]
  rw [child]
  dsimp only [result11691]
  try dsimp only [colour, result11692]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11693_agree : tree11693 = literal11693 := by
  rw [tree11693_def]
  rfl
theorem node11693_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11693 live11693 coloured11693 = result11693 := by
  rw [tree11693_def]
  try dsimp only [colour, result11693]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11694_agree : tree11694 = literal11694 := by
  rw [tree11694_def, tree11692_agree, tree11693_agree]
  rfl
theorem node11694_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11694 live11694 coloured11694 = result11694 := by
  rw [tree11694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11692_eq
  unfold live11692 coloured11692 at child
  try dsimp only [live11694, coloured11694]
  rw [child]
  dsimp only [result11692]
  have child := node11693_eq
  unfold live11693 coloured11693 at child
  try dsimp only [live11694, coloured11694]
  rw [child]
  dsimp only [result11693]
  try dsimp only [colour, result11694]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11695_agree : tree11695 = literal11695 := by
  rw [tree11695_def]
  rfl
theorem node11695_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11695 live11695 coloured11695 = result11695 := by
  rw [tree11695_def]
  try dsimp only [colour, result11695]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11696_agree : tree11696 = literal11696 := by
  rw [tree11696_def, tree11694_agree, tree11695_agree]
  rfl
theorem node11696_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11696 live11696 coloured11696 = result11696 := by
  rw [tree11696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11694_eq
  unfold live11694 coloured11694 at child
  try dsimp only [live11696, coloured11696]
  rw [child]
  dsimp only [result11694]
  have child := node11695_eq
  unfold live11695 coloured11695 at child
  try dsimp only [live11696, coloured11696]
  rw [child]
  dsimp only [result11695]
  try dsimp only [colour, result11696]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11697_agree : tree11697 = literal11697 := by
  rw [tree11697_def]
  rfl
theorem node11697_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11697 live11697 coloured11697 = result11697 := by
  rw [tree11697_def]
  try dsimp only [colour, result11697]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11698_agree : tree11698 = literal11698 := by
  rw [tree11698_def, tree11696_agree, tree11697_agree]
  rfl
theorem node11698_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11698 live11698 coloured11698 = result11698 := by
  rw [tree11698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11696_eq
  unfold live11696 coloured11696 at child
  try dsimp only [live11698, coloured11698]
  rw [child]
  dsimp only [result11696]
  have child := node11697_eq
  unfold live11697 coloured11697 at child
  try dsimp only [live11698, coloured11698]
  rw [child]
  dsimp only [result11697]
  try dsimp only [colour, result11698]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11699_agree : tree11699 = literal11699 := by
  rw [tree11699_def]
  rfl
theorem node11699_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11699 live11699 coloured11699 = result11699 := by
  rw [tree11699_def]
  try dsimp only [colour, result11699]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11700_agree : tree11700 = literal11700 := by
  rw [tree11700_def, tree11698_agree, tree11699_agree]
  rfl
theorem node11700_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11700 live11700 coloured11700 = result11700 := by
  rw [tree11700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11698_eq
  unfold live11698 coloured11698 at child
  try dsimp only [live11700, coloured11700]
  rw [child]
  dsimp only [result11698]
  have child := node11699_eq
  unfold live11699 coloured11699 at child
  try dsimp only [live11700, coloured11700]
  rw [child]
  dsimp only [result11699]
  try dsimp only [colour, result11700]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11701_agree : tree11701 = literal11701 := by
  rw [tree11701_def]
  rfl
theorem node11701_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11701 live11701 coloured11701 = result11701 := by
  rw [tree11701_def]
  try dsimp only [colour, result11701]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11702_agree : tree11702 = literal11702 := by
  rw [tree11702_def, tree11700_agree, tree11701_agree]
  rfl
theorem node11702_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11702 live11702 coloured11702 = result11702 := by
  rw [tree11702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11700_eq
  unfold live11700 coloured11700 at child
  try dsimp only [live11702, coloured11702]
  rw [child]
  dsimp only [result11700]
  have child := node11701_eq
  unfold live11701 coloured11701 at child
  try dsimp only [live11702, coloured11702]
  rw [child]
  dsimp only [result11701]
  try dsimp only [colour, result11702]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11703_agree : tree11703 = literal11703 := by
  rw [tree11703_def]
  rfl
theorem node11703_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11703 live11703 coloured11703 = result11703 := by
  rw [tree11703_def]
  try dsimp only [colour, result11703]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11704_agree : tree11704 = literal11704 := by
  rw [tree11704_def, tree11702_agree, tree11703_agree]
  rfl
theorem node11704_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11704 live11704 coloured11704 = result11704 := by
  rw [tree11704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11702_eq
  unfold live11702 coloured11702 at child
  try dsimp only [live11704, coloured11704]
  rw [child]
  dsimp only [result11702]
  have child := node11703_eq
  unfold live11703 coloured11703 at child
  try dsimp only [live11704, coloured11704]
  rw [child]
  dsimp only [result11703]
  try dsimp only [colour, result11704]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11705_agree : tree11705 = literal11705 := by
  rw [tree11705_def]
  rfl
theorem node11705_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11705 live11705 coloured11705 = result11705 := by
  rw [tree11705_def]
  try dsimp only [colour, result11705]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11706_agree : tree11706 = literal11706 := by
  rw [tree11706_def, tree11704_agree, tree11705_agree]
  rfl
theorem node11706_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11706 live11706 coloured11706 = result11706 := by
  rw [tree11706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11704_eq
  unfold live11704 coloured11704 at child
  try dsimp only [live11706, coloured11706]
  rw [child]
  dsimp only [result11704]
  have child := node11705_eq
  unfold live11705 coloured11705 at child
  try dsimp only [live11706, coloured11706]
  rw [child]
  dsimp only [result11705]
  try dsimp only [colour, result11706]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11707_agree : tree11707 = literal11707 := by
  rw [tree11707_def]
  rfl
theorem node11707_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11707 live11707 coloured11707 = result11707 := by
  rw [tree11707_def]
  try dsimp only [colour, result11707]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11708_agree : tree11708 = literal11708 := by
  rw [tree11708_def, tree11706_agree, tree11707_agree]
  rfl
theorem node11708_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11708 live11708 coloured11708 = result11708 := by
  rw [tree11708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11706_eq
  unfold live11706 coloured11706 at child
  try dsimp only [live11708, coloured11708]
  rw [child]
  dsimp only [result11706]
  have child := node11707_eq
  unfold live11707 coloured11707 at child
  try dsimp only [live11708, coloured11708]
  rw [child]
  dsimp only [result11707]
  try dsimp only [colour, result11708]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11709_agree : tree11709 = literal11709 := by
  rw [tree11709_def]
  rfl
theorem node11709_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11709 live11709 coloured11709 = result11709 := by
  rw [tree11709_def]
  try dsimp only [colour, result11709]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11710_agree : tree11710 = literal11710 := by
  rw [tree11710_def, tree11708_agree, tree11709_agree]
  rfl
theorem node11710_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11710 live11710 coloured11710 = result11710 := by
  rw [tree11710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11708_eq
  unfold live11708 coloured11708 at child
  try dsimp only [live11710, coloured11710]
  rw [child]
  dsimp only [result11708]
  have child := node11709_eq
  unfold live11709 coloured11709 at child
  try dsimp only [live11710, coloured11710]
  rw [child]
  dsimp only [result11709]
  try dsimp only [colour, result11710]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11711_agree : tree11711 = literal11711 := by
  rw [tree11711_def]
  rfl
theorem node11711_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11711 live11711 coloured11711 = result11711 := by
  rw [tree11711_def]
  try dsimp only [colour, result11711]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
