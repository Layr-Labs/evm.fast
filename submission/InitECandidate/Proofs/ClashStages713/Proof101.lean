import InitECandidate.Proofs.ClashStages713.Proof100
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9696_agree : tree9696 = literal9696 := by
  rw [tree9696_def, tree9694_agree, tree9695_agree]
  rfl
theorem node9696_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9696 live9696 coloured9696 = result9696 := by
  rw [tree9696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9694_eq
  unfold live9694 coloured9694 at child
  try dsimp only [live9696, coloured9696]
  rw [child]
  dsimp only [result9694]
  have child := node9695_eq
  unfold live9695 coloured9695 at child
  try dsimp only [live9696, coloured9696]
  rw [child]
  dsimp only [result9695]
  try dsimp only [colour, result9696]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9697_agree : tree9697 = literal9697 := by
  rw [tree9697_def]
  rfl
theorem node9697_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9697 live9697 coloured9697 = result9697 := by
  rw [tree9697_def]
  try dsimp only [colour, result9697]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9698_agree : tree9698 = literal9698 := by
  rw [tree9698_def, tree9696_agree, tree9697_agree]
  rfl
theorem node9698_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9698 live9698 coloured9698 = result9698 := by
  rw [tree9698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9696_eq
  unfold live9696 coloured9696 at child
  try dsimp only [live9698, coloured9698]
  rw [child]
  dsimp only [result9696]
  have child := node9697_eq
  unfold live9697 coloured9697 at child
  try dsimp only [live9698, coloured9698]
  rw [child]
  dsimp only [result9697]
  try dsimp only [colour, result9698]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9699_agree : tree9699 = literal9699 := by
  rw [tree9699_def]
  rfl
theorem node9699_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9699 live9699 coloured9699 = result9699 := by
  rw [tree9699_def]
  try dsimp only [colour, result9699]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9700_agree : tree9700 = literal9700 := by
  rw [tree9700_def, tree9698_agree, tree9699_agree]
  rfl
theorem node9700_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9700 live9700 coloured9700 = result9700 := by
  rw [tree9700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9698_eq
  unfold live9698 coloured9698 at child
  try dsimp only [live9700, coloured9700]
  rw [child]
  dsimp only [result9698]
  have child := node9699_eq
  unfold live9699 coloured9699 at child
  try dsimp only [live9700, coloured9700]
  rw [child]
  dsimp only [result9699]
  try dsimp only [colour, result9700]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9701_agree : tree9701 = literal9701 := by
  rw [tree9701_def]
  rfl
theorem node9701_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9701 live9701 coloured9701 = result9701 := by
  rw [tree9701_def]
  try dsimp only [colour, result9701]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9702_agree : tree9702 = literal9702 := by
  rw [tree9702_def, tree9700_agree, tree9701_agree]
  rfl
theorem node9702_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9702 live9702 coloured9702 = result9702 := by
  rw [tree9702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9700_eq
  unfold live9700 coloured9700 at child
  try dsimp only [live9702, coloured9702]
  rw [child]
  dsimp only [result9700]
  have child := node9701_eq
  unfold live9701 coloured9701 at child
  try dsimp only [live9702, coloured9702]
  rw [child]
  dsimp only [result9701]
  try dsimp only [colour, result9702]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9703_agree : tree9703 = literal9703 := by
  rw [tree9703_def]
  rfl
theorem node9703_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9703 live9703 coloured9703 = result9703 := by
  rw [tree9703_def]
  try dsimp only [colour, result9703]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9704_agree : tree9704 = literal9704 := by
  rw [tree9704_def, tree9702_agree, tree9703_agree]
  rfl
theorem node9704_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9704 live9704 coloured9704 = result9704 := by
  rw [tree9704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9702_eq
  unfold live9702 coloured9702 at child
  try dsimp only [live9704, coloured9704]
  rw [child]
  dsimp only [result9702]
  have child := node9703_eq
  unfold live9703 coloured9703 at child
  try dsimp only [live9704, coloured9704]
  rw [child]
  dsimp only [result9703]
  try dsimp only [colour, result9704]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9705_agree : tree9705 = literal9705 := by
  rw [tree9705_def]
  rfl
theorem node9705_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9705 live9705 coloured9705 = result9705 := by
  rw [tree9705_def]
  try dsimp only [colour, result9705]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9706_agree : tree9706 = literal9706 := by
  rw [tree9706_def, tree9704_agree, tree9705_agree]
  rfl
theorem node9706_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9706 live9706 coloured9706 = result9706 := by
  rw [tree9706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9704_eq
  unfold live9704 coloured9704 at child
  try dsimp only [live9706, coloured9706]
  rw [child]
  dsimp only [result9704]
  have child := node9705_eq
  unfold live9705 coloured9705 at child
  try dsimp only [live9706, coloured9706]
  rw [child]
  dsimp only [result9705]
  try dsimp only [colour, result9706]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9707_agree : tree9707 = literal9707 := by
  rw [tree9707_def]
  rfl
theorem node9707_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9707 live9707 coloured9707 = result9707 := by
  rw [tree9707_def]
  try dsimp only [colour, result9707]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9708_agree : tree9708 = literal9708 := by
  rw [tree9708_def, tree9706_agree, tree9707_agree]
  rfl
theorem node9708_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9708 live9708 coloured9708 = result9708 := by
  rw [tree9708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9706_eq
  unfold live9706 coloured9706 at child
  try dsimp only [live9708, coloured9708]
  rw [child]
  dsimp only [result9706]
  have child := node9707_eq
  unfold live9707 coloured9707 at child
  try dsimp only [live9708, coloured9708]
  rw [child]
  dsimp only [result9707]
  try dsimp only [colour, result9708]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9709_agree : tree9709 = literal9709 := by
  rw [tree9709_def]
  rfl
theorem node9709_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9709 live9709 coloured9709 = result9709 := by
  rw [tree9709_def]
  try dsimp only [colour, result9709]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9710_agree : tree9710 = literal9710 := by
  rw [tree9710_def, tree9708_agree, tree9709_agree]
  rfl
theorem node9710_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9710 live9710 coloured9710 = result9710 := by
  rw [tree9710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9708_eq
  unfold live9708 coloured9708 at child
  try dsimp only [live9710, coloured9710]
  rw [child]
  dsimp only [result9708]
  have child := node9709_eq
  unfold live9709 coloured9709 at child
  try dsimp only [live9710, coloured9710]
  rw [child]
  dsimp only [result9709]
  try dsimp only [colour, result9710]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9711_agree : tree9711 = literal9711 := by
  rw [tree9711_def]
  rfl
theorem node9711_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9711 live9711 coloured9711 = result9711 := by
  rw [tree9711_def]
  try dsimp only [colour, result9711]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9712_agree : tree9712 = literal9712 := by
  rw [tree9712_def, tree9710_agree, tree9711_agree]
  rfl
theorem node9712_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9712 live9712 coloured9712 = result9712 := by
  rw [tree9712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9710_eq
  unfold live9710 coloured9710 at child
  try dsimp only [live9712, coloured9712]
  rw [child]
  dsimp only [result9710]
  have child := node9711_eq
  unfold live9711 coloured9711 at child
  try dsimp only [live9712, coloured9712]
  rw [child]
  dsimp only [result9711]
  try dsimp only [colour, result9712]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9713_agree : tree9713 = literal9713 := by
  rw [tree9713_def]
  rfl
theorem node9713_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9713 live9713 coloured9713 = result9713 := by
  rw [tree9713_def]
  try dsimp only [colour, result9713]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9714_agree : tree9714 = literal9714 := by
  rw [tree9714_def, tree9712_agree, tree9713_agree]
  rfl
theorem node9714_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9714 live9714 coloured9714 = result9714 := by
  rw [tree9714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9712_eq
  unfold live9712 coloured9712 at child
  try dsimp only [live9714, coloured9714]
  rw [child]
  dsimp only [result9712]
  have child := node9713_eq
  unfold live9713 coloured9713 at child
  try dsimp only [live9714, coloured9714]
  rw [child]
  dsimp only [result9713]
  try dsimp only [colour, result9714]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9715_agree : tree9715 = literal9715 := by
  rw [tree9715_def]
  rfl
theorem node9715_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9715 live9715 coloured9715 = result9715 := by
  rw [tree9715_def]
  try dsimp only [colour, result9715]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9716_agree : tree9716 = literal9716 := by
  rw [tree9716_def, tree9714_agree, tree9715_agree]
  rfl
theorem node9716_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9716 live9716 coloured9716 = result9716 := by
  rw [tree9716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9714_eq
  unfold live9714 coloured9714 at child
  try dsimp only [live9716, coloured9716]
  rw [child]
  dsimp only [result9714]
  have child := node9715_eq
  unfold live9715 coloured9715 at child
  try dsimp only [live9716, coloured9716]
  rw [child]
  dsimp only [result9715]
  try dsimp only [colour, result9716]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9717_agree : tree9717 = literal9717 := by
  rw [tree9717_def]
  rfl
theorem node9717_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9717 live9717 coloured9717 = result9717 := by
  rw [tree9717_def]
  try dsimp only [colour, result9717]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9718_agree : tree9718 = literal9718 := by
  rw [tree9718_def, tree9716_agree, tree9717_agree]
  rfl
theorem node9718_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9718 live9718 coloured9718 = result9718 := by
  rw [tree9718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9716_eq
  unfold live9716 coloured9716 at child
  try dsimp only [live9718, coloured9718]
  rw [child]
  dsimp only [result9716]
  have child := node9717_eq
  unfold live9717 coloured9717 at child
  try dsimp only [live9718, coloured9718]
  rw [child]
  dsimp only [result9717]
  try dsimp only [colour, result9718]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9719_agree : tree9719 = literal9719 := by
  rw [tree9719_def]
  rfl
theorem node9719_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9719 live9719 coloured9719 = result9719 := by
  rw [tree9719_def]
  try dsimp only [colour, result9719]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9720_agree : tree9720 = literal9720 := by
  rw [tree9720_def, tree9718_agree, tree9719_agree]
  rfl
theorem node9720_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9720 live9720 coloured9720 = result9720 := by
  rw [tree9720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9718_eq
  unfold live9718 coloured9718 at child
  try dsimp only [live9720, coloured9720]
  rw [child]
  dsimp only [result9718]
  have child := node9719_eq
  unfold live9719 coloured9719 at child
  try dsimp only [live9720, coloured9720]
  rw [child]
  dsimp only [result9719]
  try dsimp only [colour, result9720]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9721_agree : tree9721 = literal9721 := by
  rw [tree9721_def]
  rfl
theorem node9721_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9721 live9721 coloured9721 = result9721 := by
  rw [tree9721_def]
  try dsimp only [colour, result9721]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9722_agree : tree9722 = literal9722 := by
  rw [tree9722_def, tree9720_agree, tree9721_agree]
  rfl
theorem node9722_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9722 live9722 coloured9722 = result9722 := by
  rw [tree9722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9720_eq
  unfold live9720 coloured9720 at child
  try dsimp only [live9722, coloured9722]
  rw [child]
  dsimp only [result9720]
  have child := node9721_eq
  unfold live9721 coloured9721 at child
  try dsimp only [live9722, coloured9722]
  rw [child]
  dsimp only [result9721]
  try dsimp only [colour, result9722]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9723_agree : tree9723 = literal9723 := by
  rw [tree9723_def]
  rfl
theorem node9723_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9723 live9723 coloured9723 = result9723 := by
  rw [tree9723_def]
  try dsimp only [colour, result9723]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9724_agree : tree9724 = literal9724 := by
  rw [tree9724_def, tree9722_agree, tree9723_agree]
  rfl
theorem node9724_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9724 live9724 coloured9724 = result9724 := by
  rw [tree9724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9722_eq
  unfold live9722 coloured9722 at child
  try dsimp only [live9724, coloured9724]
  rw [child]
  dsimp only [result9722]
  have child := node9723_eq
  unfold live9723 coloured9723 at child
  try dsimp only [live9724, coloured9724]
  rw [child]
  dsimp only [result9723]
  try dsimp only [colour, result9724]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9725_agree : tree9725 = literal9725 := by
  rw [tree9725_def]
  rfl
theorem node9725_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9725 live9725 coloured9725 = result9725 := by
  rw [tree9725_def]
  try dsimp only [colour, result9725]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9726_agree : tree9726 = literal9726 := by
  rw [tree9726_def, tree9724_agree, tree9725_agree]
  rfl
theorem node9726_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9726 live9726 coloured9726 = result9726 := by
  rw [tree9726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9724_eq
  unfold live9724 coloured9724 at child
  try dsimp only [live9726, coloured9726]
  rw [child]
  dsimp only [result9724]
  have child := node9725_eq
  unfold live9725 coloured9725 at child
  try dsimp only [live9726, coloured9726]
  rw [child]
  dsimp only [result9725]
  try dsimp only [colour, result9726]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9727_agree : tree9727 = literal9727 := by
  rw [tree9727_def]
  rfl
theorem node9727_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9727 live9727 coloured9727 = result9727 := by
  rw [tree9727_def]
  try dsimp only [colour, result9727]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9728_agree : tree9728 = literal9728 := by
  rw [tree9728_def, tree9726_agree, tree9727_agree]
  rfl
theorem node9728_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9728 live9728 coloured9728 = result9728 := by
  rw [tree9728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9726_eq
  unfold live9726 coloured9726 at child
  try dsimp only [live9728, coloured9728]
  rw [child]
  dsimp only [result9726]
  have child := node9727_eq
  unfold live9727 coloured9727 at child
  try dsimp only [live9728, coloured9728]
  rw [child]
  dsimp only [result9727]
  try dsimp only [colour, result9728]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9729_agree : tree9729 = literal9729 := by
  rw [tree9729_def]
  rfl
theorem node9729_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9729 live9729 coloured9729 = result9729 := by
  rw [tree9729_def]
  try dsimp only [colour, result9729]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9730_agree : tree9730 = literal9730 := by
  rw [tree9730_def, tree9728_agree, tree9729_agree]
  rfl
theorem node9730_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9730 live9730 coloured9730 = result9730 := by
  rw [tree9730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9728_eq
  unfold live9728 coloured9728 at child
  try dsimp only [live9730, coloured9730]
  rw [child]
  dsimp only [result9728]
  have child := node9729_eq
  unfold live9729 coloured9729 at child
  try dsimp only [live9730, coloured9730]
  rw [child]
  dsimp only [result9729]
  try dsimp only [colour, result9730]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9731_agree : tree9731 = literal9731 := by
  rw [tree9731_def]
  rfl
theorem node9731_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9731 live9731 coloured9731 = result9731 := by
  rw [tree9731_def]
  try dsimp only [colour, result9731]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9732_agree : tree9732 = literal9732 := by
  rw [tree9732_def, tree9730_agree, tree9731_agree]
  rfl
theorem node9732_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9732 live9732 coloured9732 = result9732 := by
  rw [tree9732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9730_eq
  unfold live9730 coloured9730 at child
  try dsimp only [live9732, coloured9732]
  rw [child]
  dsimp only [result9730]
  have child := node9731_eq
  unfold live9731 coloured9731 at child
  try dsimp only [live9732, coloured9732]
  rw [child]
  dsimp only [result9731]
  try dsimp only [colour, result9732]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9733_agree : tree9733 = literal9733 := by
  rw [tree9733_def]
  rfl
theorem node9733_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9733 live9733 coloured9733 = result9733 := by
  rw [tree9733_def]
  try dsimp only [colour, result9733]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9734_agree : tree9734 = literal9734 := by
  rw [tree9734_def, tree9732_agree, tree9733_agree]
  rfl
theorem node9734_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9734 live9734 coloured9734 = result9734 := by
  rw [tree9734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9732_eq
  unfold live9732 coloured9732 at child
  try dsimp only [live9734, coloured9734]
  rw [child]
  dsimp only [result9732]
  have child := node9733_eq
  unfold live9733 coloured9733 at child
  try dsimp only [live9734, coloured9734]
  rw [child]
  dsimp only [result9733]
  try dsimp only [colour, result9734]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9735_agree : tree9735 = literal9735 := by
  rw [tree9735_def]
  rfl
theorem node9735_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9735 live9735 coloured9735 = result9735 := by
  rw [tree9735_def]
  try dsimp only [colour, result9735]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9736_agree : tree9736 = literal9736 := by
  rw [tree9736_def, tree9734_agree, tree9735_agree]
  rfl
theorem node9736_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9736 live9736 coloured9736 = result9736 := by
  rw [tree9736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9734_eq
  unfold live9734 coloured9734 at child
  try dsimp only [live9736, coloured9736]
  rw [child]
  dsimp only [result9734]
  have child := node9735_eq
  unfold live9735 coloured9735 at child
  try dsimp only [live9736, coloured9736]
  rw [child]
  dsimp only [result9735]
  try dsimp only [colour, result9736]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9737_agree : tree9737 = literal9737 := by
  rw [tree9737_def]
  rfl
theorem node9737_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9737 live9737 coloured9737 = result9737 := by
  rw [tree9737_def]
  try dsimp only [colour, result9737]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9738_agree : tree9738 = literal9738 := by
  rw [tree9738_def, tree9736_agree, tree9737_agree]
  rfl
theorem node9738_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9738 live9738 coloured9738 = result9738 := by
  rw [tree9738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9736_eq
  unfold live9736 coloured9736 at child
  try dsimp only [live9738, coloured9738]
  rw [child]
  dsimp only [result9736]
  have child := node9737_eq
  unfold live9737 coloured9737 at child
  try dsimp only [live9738, coloured9738]
  rw [child]
  dsimp only [result9737]
  try dsimp only [colour, result9738]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9739_agree : tree9739 = literal9739 := by
  rw [tree9739_def]
  rfl
theorem node9739_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9739 live9739 coloured9739 = result9739 := by
  rw [tree9739_def]
  try dsimp only [colour, result9739]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9740_agree : tree9740 = literal9740 := by
  rw [tree9740_def, tree9738_agree, tree9739_agree]
  rfl
theorem node9740_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9740 live9740 coloured9740 = result9740 := by
  rw [tree9740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9738_eq
  unfold live9738 coloured9738 at child
  try dsimp only [live9740, coloured9740]
  rw [child]
  dsimp only [result9738]
  have child := node9739_eq
  unfold live9739 coloured9739 at child
  try dsimp only [live9740, coloured9740]
  rw [child]
  dsimp only [result9739]
  try dsimp only [colour, result9740]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9741_agree : tree9741 = literal9741 := by
  rw [tree9741_def]
  rfl
theorem node9741_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9741 live9741 coloured9741 = result9741 := by
  rw [tree9741_def]
  try dsimp only [colour, result9741]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9742_agree : tree9742 = literal9742 := by
  rw [tree9742_def, tree9740_agree, tree9741_agree]
  rfl
theorem node9742_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9742 live9742 coloured9742 = result9742 := by
  rw [tree9742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9740_eq
  unfold live9740 coloured9740 at child
  try dsimp only [live9742, coloured9742]
  rw [child]
  dsimp only [result9740]
  have child := node9741_eq
  unfold live9741 coloured9741 at child
  try dsimp only [live9742, coloured9742]
  rw [child]
  dsimp only [result9741]
  try dsimp only [colour, result9742]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9743_agree : tree9743 = literal9743 := by
  rw [tree9743_def]
  rfl
theorem node9743_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9743 live9743 coloured9743 = result9743 := by
  rw [tree9743_def]
  try dsimp only [colour, result9743]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9744_agree : tree9744 = literal9744 := by
  rw [tree9744_def, tree9742_agree, tree9743_agree]
  rfl
theorem node9744_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9744 live9744 coloured9744 = result9744 := by
  rw [tree9744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9742_eq
  unfold live9742 coloured9742 at child
  try dsimp only [live9744, coloured9744]
  rw [child]
  dsimp only [result9742]
  have child := node9743_eq
  unfold live9743 coloured9743 at child
  try dsimp only [live9744, coloured9744]
  rw [child]
  dsimp only [result9743]
  try dsimp only [colour, result9744]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9745_agree : tree9745 = literal9745 := by
  rw [tree9745_def]
  rfl
theorem node9745_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9745 live9745 coloured9745 = result9745 := by
  rw [tree9745_def]
  try dsimp only [colour, result9745]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9746_agree : tree9746 = literal9746 := by
  rw [tree9746_def, tree9744_agree, tree9745_agree]
  rfl
theorem node9746_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9746 live9746 coloured9746 = result9746 := by
  rw [tree9746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9744_eq
  unfold live9744 coloured9744 at child
  try dsimp only [live9746, coloured9746]
  rw [child]
  dsimp only [result9744]
  have child := node9745_eq
  unfold live9745 coloured9745 at child
  try dsimp only [live9746, coloured9746]
  rw [child]
  dsimp only [result9745]
  try dsimp only [colour, result9746]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9747_agree : tree9747 = literal9747 := by
  rw [tree9747_def]
  rfl
theorem node9747_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9747 live9747 coloured9747 = result9747 := by
  rw [tree9747_def]
  try dsimp only [colour, result9747]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9748_agree : tree9748 = literal9748 := by
  rw [tree9748_def, tree9746_agree, tree9747_agree]
  rfl
theorem node9748_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9748 live9748 coloured9748 = result9748 := by
  rw [tree9748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9746_eq
  unfold live9746 coloured9746 at child
  try dsimp only [live9748, coloured9748]
  rw [child]
  dsimp only [result9746]
  have child := node9747_eq
  unfold live9747 coloured9747 at child
  try dsimp only [live9748, coloured9748]
  rw [child]
  dsimp only [result9747]
  try dsimp only [colour, result9748]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9749_agree : tree9749 = literal9749 := by
  rw [tree9749_def]
  rfl
theorem node9749_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9749 live9749 coloured9749 = result9749 := by
  rw [tree9749_def]
  try dsimp only [colour, result9749]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9750_agree : tree9750 = literal9750 := by
  rw [tree9750_def, tree9748_agree, tree9749_agree]
  rfl
theorem node9750_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9750 live9750 coloured9750 = result9750 := by
  rw [tree9750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9748_eq
  unfold live9748 coloured9748 at child
  try dsimp only [live9750, coloured9750]
  rw [child]
  dsimp only [result9748]
  have child := node9749_eq
  unfold live9749 coloured9749 at child
  try dsimp only [live9750, coloured9750]
  rw [child]
  dsimp only [result9749]
  try dsimp only [colour, result9750]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9751_agree : tree9751 = literal9751 := by
  rw [tree9751_def]
  rfl
theorem node9751_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9751 live9751 coloured9751 = result9751 := by
  rw [tree9751_def]
  try dsimp only [colour, result9751]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9752_agree : tree9752 = literal9752 := by
  rw [tree9752_def, tree9750_agree, tree9751_agree]
  rfl
theorem node9752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9752 live9752 coloured9752 = result9752 := by
  rw [tree9752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9750_eq
  unfold live9750 coloured9750 at child
  try dsimp only [live9752, coloured9752]
  rw [child]
  dsimp only [result9750]
  have child := node9751_eq
  unfold live9751 coloured9751 at child
  try dsimp only [live9752, coloured9752]
  rw [child]
  dsimp only [result9751]
  try dsimp only [colour, result9752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9753_agree : tree9753 = literal9753 := by
  rw [tree9753_def]
  rfl
theorem node9753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9753 live9753 coloured9753 = result9753 := by
  rw [tree9753_def]
  try dsimp only [colour, result9753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9754_agree : tree9754 = literal9754 := by
  rw [tree9754_def, tree9752_agree, tree9753_agree]
  rfl
theorem node9754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9754 live9754 coloured9754 = result9754 := by
  rw [tree9754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9752_eq
  unfold live9752 coloured9752 at child
  try dsimp only [live9754, coloured9754]
  rw [child]
  dsimp only [result9752]
  have child := node9753_eq
  unfold live9753 coloured9753 at child
  try dsimp only [live9754, coloured9754]
  rw [child]
  dsimp only [result9753]
  try dsimp only [colour, result9754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9755_agree : tree9755 = literal9755 := by
  rw [tree9755_def]
  rfl
theorem node9755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9755 live9755 coloured9755 = result9755 := by
  rw [tree9755_def]
  try dsimp only [colour, result9755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9756_agree : tree9756 = literal9756 := by
  rw [tree9756_def, tree9754_agree, tree9755_agree]
  rfl
theorem node9756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9756 live9756 coloured9756 = result9756 := by
  rw [tree9756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9754_eq
  unfold live9754 coloured9754 at child
  try dsimp only [live9756, coloured9756]
  rw [child]
  dsimp only [result9754]
  have child := node9755_eq
  unfold live9755 coloured9755 at child
  try dsimp only [live9756, coloured9756]
  rw [child]
  dsimp only [result9755]
  try dsimp only [colour, result9756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9757_agree : tree9757 = literal9757 := by
  rw [tree9757_def]
  rfl
theorem node9757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9757 live9757 coloured9757 = result9757 := by
  rw [tree9757_def]
  try dsimp only [colour, result9757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9758_agree : tree9758 = literal9758 := by
  rw [tree9758_def, tree9756_agree, tree9757_agree]
  rfl
theorem node9758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9758 live9758 coloured9758 = result9758 := by
  rw [tree9758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9756_eq
  unfold live9756 coloured9756 at child
  try dsimp only [live9758, coloured9758]
  rw [child]
  dsimp only [result9756]
  have child := node9757_eq
  unfold live9757 coloured9757 at child
  try dsimp only [live9758, coloured9758]
  rw [child]
  dsimp only [result9757]
  try dsimp only [colour, result9758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9759_agree : tree9759 = literal9759 := by
  rw [tree9759_def]
  rfl
theorem node9759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9759 live9759 coloured9759 = result9759 := by
  rw [tree9759_def]
  try dsimp only [colour, result9759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9760_agree : tree9760 = literal9760 := by
  rw [tree9760_def, tree9758_agree, tree9759_agree]
  rfl
theorem node9760_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9760 live9760 coloured9760 = result9760 := by
  rw [tree9760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9758_eq
  unfold live9758 coloured9758 at child
  try dsimp only [live9760, coloured9760]
  rw [child]
  dsimp only [result9758]
  have child := node9759_eq
  unfold live9759 coloured9759 at child
  try dsimp only [live9760, coloured9760]
  rw [child]
  dsimp only [result9759]
  try dsimp only [colour, result9760]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9761_agree : tree9761 = literal9761 := by
  rw [tree9761_def]
  rfl
theorem node9761_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9761 live9761 coloured9761 = result9761 := by
  rw [tree9761_def]
  try dsimp only [colour, result9761]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9762_agree : tree9762 = literal9762 := by
  rw [tree9762_def, tree9760_agree, tree9761_agree]
  rfl
theorem node9762_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9762 live9762 coloured9762 = result9762 := by
  rw [tree9762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9760_eq
  unfold live9760 coloured9760 at child
  try dsimp only [live9762, coloured9762]
  rw [child]
  dsimp only [result9760]
  have child := node9761_eq
  unfold live9761 coloured9761 at child
  try dsimp only [live9762, coloured9762]
  rw [child]
  dsimp only [result9761]
  try dsimp only [colour, result9762]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9763_agree : tree9763 = literal9763 := by
  rw [tree9763_def]
  rfl
theorem node9763_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9763 live9763 coloured9763 = result9763 := by
  rw [tree9763_def]
  try dsimp only [colour, result9763]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9764_agree : tree9764 = literal9764 := by
  rw [tree9764_def, tree9762_agree, tree9763_agree]
  rfl
theorem node9764_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9764 live9764 coloured9764 = result9764 := by
  rw [tree9764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9762_eq
  unfold live9762 coloured9762 at child
  try dsimp only [live9764, coloured9764]
  rw [child]
  dsimp only [result9762]
  have child := node9763_eq
  unfold live9763 coloured9763 at child
  try dsimp only [live9764, coloured9764]
  rw [child]
  dsimp only [result9763]
  try dsimp only [colour, result9764]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9765_agree : tree9765 = literal9765 := by
  rw [tree9765_def]
  rfl
theorem node9765_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9765 live9765 coloured9765 = result9765 := by
  rw [tree9765_def]
  try dsimp only [colour, result9765]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9766_agree : tree9766 = literal9766 := by
  rw [tree9766_def, tree9764_agree, tree9765_agree]
  rfl
theorem node9766_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9766 live9766 coloured9766 = result9766 := by
  rw [tree9766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9764_eq
  unfold live9764 coloured9764 at child
  try dsimp only [live9766, coloured9766]
  rw [child]
  dsimp only [result9764]
  have child := node9765_eq
  unfold live9765 coloured9765 at child
  try dsimp only [live9766, coloured9766]
  rw [child]
  dsimp only [result9765]
  try dsimp only [colour, result9766]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9767_agree : tree9767 = literal9767 := by
  rw [tree9767_def]
  rfl
theorem node9767_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9767 live9767 coloured9767 = result9767 := by
  rw [tree9767_def]
  try dsimp only [colour, result9767]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9768_agree : tree9768 = literal9768 := by
  rw [tree9768_def, tree9766_agree, tree9767_agree]
  rfl
theorem node9768_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9768 live9768 coloured9768 = result9768 := by
  rw [tree9768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9766_eq
  unfold live9766 coloured9766 at child
  try dsimp only [live9768, coloured9768]
  rw [child]
  dsimp only [result9766]
  have child := node9767_eq
  unfold live9767 coloured9767 at child
  try dsimp only [live9768, coloured9768]
  rw [child]
  dsimp only [result9767]
  try dsimp only [colour, result9768]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9769_agree : tree9769 = literal9769 := by
  rw [tree9769_def]
  rfl
theorem node9769_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9769 live9769 coloured9769 = result9769 := by
  rw [tree9769_def]
  try dsimp only [colour, result9769]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9770_agree : tree9770 = literal9770 := by
  rw [tree9770_def, tree9768_agree, tree9769_agree]
  rfl
theorem node9770_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9770 live9770 coloured9770 = result9770 := by
  rw [tree9770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9768_eq
  unfold live9768 coloured9768 at child
  try dsimp only [live9770, coloured9770]
  rw [child]
  dsimp only [result9768]
  have child := node9769_eq
  unfold live9769 coloured9769 at child
  try dsimp only [live9770, coloured9770]
  rw [child]
  dsimp only [result9769]
  try dsimp only [colour, result9770]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9771_agree : tree9771 = literal9771 := by
  rw [tree9771_def]
  rfl
theorem node9771_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9771 live9771 coloured9771 = result9771 := by
  rw [tree9771_def]
  try dsimp only [colour, result9771]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9772_agree : tree9772 = literal9772 := by
  rw [tree9772_def, tree9770_agree, tree9771_agree]
  rfl
theorem node9772_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9772 live9772 coloured9772 = result9772 := by
  rw [tree9772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9770_eq
  unfold live9770 coloured9770 at child
  try dsimp only [live9772, coloured9772]
  rw [child]
  dsimp only [result9770]
  have child := node9771_eq
  unfold live9771 coloured9771 at child
  try dsimp only [live9772, coloured9772]
  rw [child]
  dsimp only [result9771]
  try dsimp only [colour, result9772]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9773_agree : tree9773 = literal9773 := by
  rw [tree9773_def]
  rfl
theorem node9773_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9773 live9773 coloured9773 = result9773 := by
  rw [tree9773_def]
  try dsimp only [colour, result9773]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9774_agree : tree9774 = literal9774 := by
  rw [tree9774_def, tree9772_agree, tree9773_agree]
  rfl
theorem node9774_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9774 live9774 coloured9774 = result9774 := by
  rw [tree9774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9772_eq
  unfold live9772 coloured9772 at child
  try dsimp only [live9774, coloured9774]
  rw [child]
  dsimp only [result9772]
  have child := node9773_eq
  unfold live9773 coloured9773 at child
  try dsimp only [live9774, coloured9774]
  rw [child]
  dsimp only [result9773]
  try dsimp only [colour, result9774]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9775_agree : tree9775 = literal9775 := by
  rw [tree9775_def]
  rfl
theorem node9775_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9775 live9775 coloured9775 = result9775 := by
  rw [tree9775_def]
  try dsimp only [colour, result9775]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9776_agree : tree9776 = literal9776 := by
  rw [tree9776_def, tree9774_agree, tree9775_agree]
  rfl
theorem node9776_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9776 live9776 coloured9776 = result9776 := by
  rw [tree9776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9774_eq
  unfold live9774 coloured9774 at child
  try dsimp only [live9776, coloured9776]
  rw [child]
  dsimp only [result9774]
  have child := node9775_eq
  unfold live9775 coloured9775 at child
  try dsimp only [live9776, coloured9776]
  rw [child]
  dsimp only [result9775]
  try dsimp only [colour, result9776]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9777_agree : tree9777 = literal9777 := by
  rw [tree9777_def]
  rfl
theorem node9777_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9777 live9777 coloured9777 = result9777 := by
  rw [tree9777_def]
  try dsimp only [colour, result9777]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9778_agree : tree9778 = literal9778 := by
  rw [tree9778_def, tree9776_agree, tree9777_agree]
  rfl
theorem node9778_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9778 live9778 coloured9778 = result9778 := by
  rw [tree9778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9776_eq
  unfold live9776 coloured9776 at child
  try dsimp only [live9778, coloured9778]
  rw [child]
  dsimp only [result9776]
  have child := node9777_eq
  unfold live9777 coloured9777 at child
  try dsimp only [live9778, coloured9778]
  rw [child]
  dsimp only [result9777]
  try dsimp only [colour, result9778]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9779_agree : tree9779 = literal9779 := by
  rw [tree9779_def]
  rfl
theorem node9779_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9779 live9779 coloured9779 = result9779 := by
  rw [tree9779_def]
  try dsimp only [colour, result9779]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9780_agree : tree9780 = literal9780 := by
  rw [tree9780_def, tree9778_agree, tree9779_agree]
  rfl
theorem node9780_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9780 live9780 coloured9780 = result9780 := by
  rw [tree9780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9778_eq
  unfold live9778 coloured9778 at child
  try dsimp only [live9780, coloured9780]
  rw [child]
  dsimp only [result9778]
  have child := node9779_eq
  unfold live9779 coloured9779 at child
  try dsimp only [live9780, coloured9780]
  rw [child]
  dsimp only [result9779]
  try dsimp only [colour, result9780]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9781_agree : tree9781 = literal9781 := by
  rw [tree9781_def]
  rfl
theorem node9781_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9781 live9781 coloured9781 = result9781 := by
  rw [tree9781_def]
  try dsimp only [colour, result9781]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9782_agree : tree9782 = literal9782 := by
  rw [tree9782_def, tree9780_agree, tree9781_agree]
  rfl
theorem node9782_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9782 live9782 coloured9782 = result9782 := by
  rw [tree9782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9780_eq
  unfold live9780 coloured9780 at child
  try dsimp only [live9782, coloured9782]
  rw [child]
  dsimp only [result9780]
  have child := node9781_eq
  unfold live9781 coloured9781 at child
  try dsimp only [live9782, coloured9782]
  rw [child]
  dsimp only [result9781]
  try dsimp only [colour, result9782]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9783_agree : tree9783 = literal9783 := by
  rw [tree9783_def]
  rfl
theorem node9783_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9783 live9783 coloured9783 = result9783 := by
  rw [tree9783_def]
  try dsimp only [colour, result9783]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9784_agree : tree9784 = literal9784 := by
  rw [tree9784_def, tree9782_agree, tree9783_agree]
  rfl
theorem node9784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9784 live9784 coloured9784 = result9784 := by
  rw [tree9784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9782_eq
  unfold live9782 coloured9782 at child
  try dsimp only [live9784, coloured9784]
  rw [child]
  dsimp only [result9782]
  have child := node9783_eq
  unfold live9783 coloured9783 at child
  try dsimp only [live9784, coloured9784]
  rw [child]
  dsimp only [result9783]
  try dsimp only [colour, result9784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9785_agree : tree9785 = literal9785 := by
  rw [tree9785_def]
  rfl
theorem node9785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9785 live9785 coloured9785 = result9785 := by
  rw [tree9785_def]
  try dsimp only [colour, result9785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9786_agree : tree9786 = literal9786 := by
  rw [tree9786_def, tree9784_agree, tree9785_agree]
  rfl
theorem node9786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9786 live9786 coloured9786 = result9786 := by
  rw [tree9786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9784_eq
  unfold live9784 coloured9784 at child
  try dsimp only [live9786, coloured9786]
  rw [child]
  dsimp only [result9784]
  have child := node9785_eq
  unfold live9785 coloured9785 at child
  try dsimp only [live9786, coloured9786]
  rw [child]
  dsimp only [result9785]
  try dsimp only [colour, result9786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9787_agree : tree9787 = literal9787 := by
  rw [tree9787_def]
  rfl
theorem node9787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9787 live9787 coloured9787 = result9787 := by
  rw [tree9787_def]
  try dsimp only [colour, result9787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9788_agree : tree9788 = literal9788 := by
  rw [tree9788_def, tree9786_agree, tree9787_agree]
  rfl
theorem node9788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9788 live9788 coloured9788 = result9788 := by
  rw [tree9788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9786_eq
  unfold live9786 coloured9786 at child
  try dsimp only [live9788, coloured9788]
  rw [child]
  dsimp only [result9786]
  have child := node9787_eq
  unfold live9787 coloured9787 at child
  try dsimp only [live9788, coloured9788]
  rw [child]
  dsimp only [result9787]
  try dsimp only [colour, result9788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9789_agree : tree9789 = literal9789 := by
  rw [tree9789_def]
  rfl
theorem node9789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9789 live9789 coloured9789 = result9789 := by
  rw [tree9789_def]
  try dsimp only [colour, result9789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9790_agree : tree9790 = literal9790 := by
  rw [tree9790_def, tree9788_agree, tree9789_agree]
  rfl
theorem node9790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9790 live9790 coloured9790 = result9790 := by
  rw [tree9790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9788_eq
  unfold live9788 coloured9788 at child
  try dsimp only [live9790, coloured9790]
  rw [child]
  dsimp only [result9788]
  have child := node9789_eq
  unfold live9789 coloured9789 at child
  try dsimp only [live9790, coloured9790]
  rw [child]
  dsimp only [result9789]
  try dsimp only [colour, result9790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9791_agree : tree9791 = literal9791 := by
  rw [tree9791_def]
  rfl
theorem node9791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9791 live9791 coloured9791 = result9791 := by
  rw [tree9791_def]
  try dsimp only [colour, result9791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
