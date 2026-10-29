import InitECandidate.Proofs.ClashStages713.Proof69
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree6720_agree : tree6720 = literal6720 := by
  rw [tree6720_def, tree6718_agree, tree6719_agree]
  rfl
theorem node6720_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6720 live6720 coloured6720 = result6720 := by
  rw [tree6720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6718_eq
  unfold live6718 coloured6718 at child
  try dsimp only [live6720, coloured6720]
  rw [child]
  dsimp only [result6718]
  have child := node6719_eq
  unfold live6719 coloured6719 at child
  try dsimp only [live6720, coloured6720]
  rw [child]
  dsimp only [result6719]
  try dsimp only [colour, result6720]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6721_agree : tree6721 = literal6721 := by
  rw [tree6721_def]
  rfl
theorem node6721_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6721 live6721 coloured6721 = result6721 := by
  rw [tree6721_def]
  try dsimp only [colour, result6721]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6722_agree : tree6722 = literal6722 := by
  rw [tree6722_def, tree6720_agree, tree6721_agree]
  rfl
theorem node6722_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6722 live6722 coloured6722 = result6722 := by
  rw [tree6722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6720_eq
  unfold live6720 coloured6720 at child
  try dsimp only [live6722, coloured6722]
  rw [child]
  dsimp only [result6720]
  have child := node6721_eq
  unfold live6721 coloured6721 at child
  try dsimp only [live6722, coloured6722]
  rw [child]
  dsimp only [result6721]
  try dsimp only [colour, result6722]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6723_agree : tree6723 = literal6723 := by
  rw [tree6723_def]
  rfl
theorem node6723_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6723 live6723 coloured6723 = result6723 := by
  rw [tree6723_def]
  try dsimp only [colour, result6723]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6724_agree : tree6724 = literal6724 := by
  rw [tree6724_def, tree6722_agree, tree6723_agree]
  rfl
theorem node6724_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6724 live6724 coloured6724 = result6724 := by
  rw [tree6724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6722_eq
  unfold live6722 coloured6722 at child
  try dsimp only [live6724, coloured6724]
  rw [child]
  dsimp only [result6722]
  have child := node6723_eq
  unfold live6723 coloured6723 at child
  try dsimp only [live6724, coloured6724]
  rw [child]
  dsimp only [result6723]
  try dsimp only [colour, result6724]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6725_agree : tree6725 = literal6725 := by
  rw [tree6725_def]
  rfl
theorem node6725_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6725 live6725 coloured6725 = result6725 := by
  rw [tree6725_def]
  try dsimp only [colour, result6725]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6726_agree : tree6726 = literal6726 := by
  rw [tree6726_def, tree6724_agree, tree6725_agree]
  rfl
theorem node6726_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6726 live6726 coloured6726 = result6726 := by
  rw [tree6726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6724_eq
  unfold live6724 coloured6724 at child
  try dsimp only [live6726, coloured6726]
  rw [child]
  dsimp only [result6724]
  have child := node6725_eq
  unfold live6725 coloured6725 at child
  try dsimp only [live6726, coloured6726]
  rw [child]
  dsimp only [result6725]
  try dsimp only [colour, result6726]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6727_agree : tree6727 = literal6727 := by
  rw [tree6727_def]
  rfl
theorem node6727_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6727 live6727 coloured6727 = result6727 := by
  rw [tree6727_def]
  try dsimp only [colour, result6727]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6728_agree : tree6728 = literal6728 := by
  rw [tree6728_def, tree6726_agree, tree6727_agree]
  rfl
theorem node6728_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6728 live6728 coloured6728 = result6728 := by
  rw [tree6728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6726_eq
  unfold live6726 coloured6726 at child
  try dsimp only [live6728, coloured6728]
  rw [child]
  dsimp only [result6726]
  have child := node6727_eq
  unfold live6727 coloured6727 at child
  try dsimp only [live6728, coloured6728]
  rw [child]
  dsimp only [result6727]
  try dsimp only [colour, result6728]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6729_agree : tree6729 = literal6729 := by
  rw [tree6729_def]
  rfl
theorem node6729_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6729 live6729 coloured6729 = result6729 := by
  rw [tree6729_def]
  try dsimp only [colour, result6729]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6730_agree : tree6730 = literal6730 := by
  rw [tree6730_def, tree6728_agree, tree6729_agree]
  rfl
theorem node6730_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6730 live6730 coloured6730 = result6730 := by
  rw [tree6730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6728_eq
  unfold live6728 coloured6728 at child
  try dsimp only [live6730, coloured6730]
  rw [child]
  dsimp only [result6728]
  have child := node6729_eq
  unfold live6729 coloured6729 at child
  try dsimp only [live6730, coloured6730]
  rw [child]
  dsimp only [result6729]
  try dsimp only [colour, result6730]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6731_agree : tree6731 = literal6731 := by
  rw [tree6731_def]
  rfl
theorem node6731_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6731 live6731 coloured6731 = result6731 := by
  rw [tree6731_def]
  try dsimp only [colour, result6731]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6732_agree : tree6732 = literal6732 := by
  rw [tree6732_def, tree6730_agree, tree6731_agree]
  rfl
theorem node6732_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6732 live6732 coloured6732 = result6732 := by
  rw [tree6732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6730_eq
  unfold live6730 coloured6730 at child
  try dsimp only [live6732, coloured6732]
  rw [child]
  dsimp only [result6730]
  have child := node6731_eq
  unfold live6731 coloured6731 at child
  try dsimp only [live6732, coloured6732]
  rw [child]
  dsimp only [result6731]
  try dsimp only [colour, result6732]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6733_agree : tree6733 = literal6733 := by
  rw [tree6733_def]
  rfl
theorem node6733_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6733 live6733 coloured6733 = result6733 := by
  rw [tree6733_def]
  try dsimp only [colour, result6733]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6734_agree : tree6734 = literal6734 := by
  rw [tree6734_def, tree6732_agree, tree6733_agree]
  rfl
theorem node6734_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6734 live6734 coloured6734 = result6734 := by
  rw [tree6734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6732_eq
  unfold live6732 coloured6732 at child
  try dsimp only [live6734, coloured6734]
  rw [child]
  dsimp only [result6732]
  have child := node6733_eq
  unfold live6733 coloured6733 at child
  try dsimp only [live6734, coloured6734]
  rw [child]
  dsimp only [result6733]
  try dsimp only [colour, result6734]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6735_agree : tree6735 = literal6735 := by
  rw [tree6735_def]
  rfl
theorem node6735_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6735 live6735 coloured6735 = result6735 := by
  rw [tree6735_def]
  try dsimp only [colour, result6735]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6736_agree : tree6736 = literal6736 := by
  rw [tree6736_def, tree6734_agree, tree6735_agree]
  rfl
theorem node6736_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6736 live6736 coloured6736 = result6736 := by
  rw [tree6736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6734_eq
  unfold live6734 coloured6734 at child
  try dsimp only [live6736, coloured6736]
  rw [child]
  dsimp only [result6734]
  have child := node6735_eq
  unfold live6735 coloured6735 at child
  try dsimp only [live6736, coloured6736]
  rw [child]
  dsimp only [result6735]
  try dsimp only [colour, result6736]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6737_agree : tree6737 = literal6737 := by
  rw [tree6737_def]
  rfl
theorem node6737_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6737 live6737 coloured6737 = result6737 := by
  rw [tree6737_def]
  try dsimp only [colour, result6737]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6738_agree : tree6738 = literal6738 := by
  rw [tree6738_def, tree6736_agree, tree6737_agree]
  rfl
theorem node6738_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6738 live6738 coloured6738 = result6738 := by
  rw [tree6738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6736_eq
  unfold live6736 coloured6736 at child
  try dsimp only [live6738, coloured6738]
  rw [child]
  dsimp only [result6736]
  have child := node6737_eq
  unfold live6737 coloured6737 at child
  try dsimp only [live6738, coloured6738]
  rw [child]
  dsimp only [result6737]
  try dsimp only [colour, result6738]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6739_agree : tree6739 = literal6739 := by
  rw [tree6739_def]
  rfl
theorem node6739_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6739 live6739 coloured6739 = result6739 := by
  rw [tree6739_def]
  try dsimp only [colour, result6739]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6740_agree : tree6740 = literal6740 := by
  rw [tree6740_def, tree6738_agree, tree6739_agree]
  rfl
theorem node6740_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6740 live6740 coloured6740 = result6740 := by
  rw [tree6740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6738_eq
  unfold live6738 coloured6738 at child
  try dsimp only [live6740, coloured6740]
  rw [child]
  dsimp only [result6738]
  have child := node6739_eq
  unfold live6739 coloured6739 at child
  try dsimp only [live6740, coloured6740]
  rw [child]
  dsimp only [result6739]
  try dsimp only [colour, result6740]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6741_agree : tree6741 = literal6741 := by
  rw [tree6741_def]
  rfl
theorem node6741_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6741 live6741 coloured6741 = result6741 := by
  rw [tree6741_def]
  try dsimp only [colour, result6741]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6742_agree : tree6742 = literal6742 := by
  rw [tree6742_def, tree6740_agree, tree6741_agree]
  rfl
theorem node6742_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6742 live6742 coloured6742 = result6742 := by
  rw [tree6742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6740_eq
  unfold live6740 coloured6740 at child
  try dsimp only [live6742, coloured6742]
  rw [child]
  dsimp only [result6740]
  have child := node6741_eq
  unfold live6741 coloured6741 at child
  try dsimp only [live6742, coloured6742]
  rw [child]
  dsimp only [result6741]
  try dsimp only [colour, result6742]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6743_agree : tree6743 = literal6743 := by
  rw [tree6743_def]
  rfl
theorem node6743_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6743 live6743 coloured6743 = result6743 := by
  rw [tree6743_def]
  try dsimp only [colour, result6743]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6744_agree : tree6744 = literal6744 := by
  rw [tree6744_def, tree6742_agree, tree6743_agree]
  rfl
theorem node6744_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6744 live6744 coloured6744 = result6744 := by
  rw [tree6744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6742_eq
  unfold live6742 coloured6742 at child
  try dsimp only [live6744, coloured6744]
  rw [child]
  dsimp only [result6742]
  have child := node6743_eq
  unfold live6743 coloured6743 at child
  try dsimp only [live6744, coloured6744]
  rw [child]
  dsimp only [result6743]
  try dsimp only [colour, result6744]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6745_agree : tree6745 = literal6745 := by
  rw [tree6745_def]
  rfl
theorem node6745_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6745 live6745 coloured6745 = result6745 := by
  rw [tree6745_def]
  try dsimp only [colour, result6745]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6746_agree : tree6746 = literal6746 := by
  rw [tree6746_def, tree6744_agree, tree6745_agree]
  rfl
theorem node6746_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6746 live6746 coloured6746 = result6746 := by
  rw [tree6746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6744_eq
  unfold live6744 coloured6744 at child
  try dsimp only [live6746, coloured6746]
  rw [child]
  dsimp only [result6744]
  have child := node6745_eq
  unfold live6745 coloured6745 at child
  try dsimp only [live6746, coloured6746]
  rw [child]
  dsimp only [result6745]
  try dsimp only [colour, result6746]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6747_agree : tree6747 = literal6747 := by
  rw [tree6747_def]
  rfl
theorem node6747_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6747 live6747 coloured6747 = result6747 := by
  rw [tree6747_def]
  try dsimp only [colour, result6747]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6748_agree : tree6748 = literal6748 := by
  rw [tree6748_def, tree6746_agree, tree6747_agree]
  rfl
theorem node6748_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6748 live6748 coloured6748 = result6748 := by
  rw [tree6748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6746_eq
  unfold live6746 coloured6746 at child
  try dsimp only [live6748, coloured6748]
  rw [child]
  dsimp only [result6746]
  have child := node6747_eq
  unfold live6747 coloured6747 at child
  try dsimp only [live6748, coloured6748]
  rw [child]
  dsimp only [result6747]
  try dsimp only [colour, result6748]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6749_agree : tree6749 = literal6749 := by
  rw [tree6749_def]
  rfl
theorem node6749_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6749 live6749 coloured6749 = result6749 := by
  rw [tree6749_def]
  try dsimp only [colour, result6749]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6750_agree : tree6750 = literal6750 := by
  rw [tree6750_def, tree6748_agree, tree6749_agree]
  rfl
theorem node6750_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6750 live6750 coloured6750 = result6750 := by
  rw [tree6750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6748_eq
  unfold live6748 coloured6748 at child
  try dsimp only [live6750, coloured6750]
  rw [child]
  dsimp only [result6748]
  have child := node6749_eq
  unfold live6749 coloured6749 at child
  try dsimp only [live6750, coloured6750]
  rw [child]
  dsimp only [result6749]
  try dsimp only [colour, result6750]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6751_agree : tree6751 = literal6751 := by
  rw [tree6751_def]
  rfl
theorem node6751_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6751 live6751 coloured6751 = result6751 := by
  rw [tree6751_def]
  try dsimp only [colour, result6751]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6752_agree : tree6752 = literal6752 := by
  rw [tree6752_def, tree6750_agree, tree6751_agree]
  rfl
theorem node6752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6752 live6752 coloured6752 = result6752 := by
  rw [tree6752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6750_eq
  unfold live6750 coloured6750 at child
  try dsimp only [live6752, coloured6752]
  rw [child]
  dsimp only [result6750]
  have child := node6751_eq
  unfold live6751 coloured6751 at child
  try dsimp only [live6752, coloured6752]
  rw [child]
  dsimp only [result6751]
  try dsimp only [colour, result6752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6753_agree : tree6753 = literal6753 := by
  rw [tree6753_def]
  rfl
theorem node6753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6753 live6753 coloured6753 = result6753 := by
  rw [tree6753_def]
  try dsimp only [colour, result6753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6754_agree : tree6754 = literal6754 := by
  rw [tree6754_def, tree6752_agree, tree6753_agree]
  rfl
theorem node6754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6754 live6754 coloured6754 = result6754 := by
  rw [tree6754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6752_eq
  unfold live6752 coloured6752 at child
  try dsimp only [live6754, coloured6754]
  rw [child]
  dsimp only [result6752]
  have child := node6753_eq
  unfold live6753 coloured6753 at child
  try dsimp only [live6754, coloured6754]
  rw [child]
  dsimp only [result6753]
  try dsimp only [colour, result6754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6755_agree : tree6755 = literal6755 := by
  rw [tree6755_def]
  rfl
theorem node6755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6755 live6755 coloured6755 = result6755 := by
  rw [tree6755_def]
  try dsimp only [colour, result6755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6756_agree : tree6756 = literal6756 := by
  rw [tree6756_def, tree6754_agree, tree6755_agree]
  rfl
theorem node6756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6756 live6756 coloured6756 = result6756 := by
  rw [tree6756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6754_eq
  unfold live6754 coloured6754 at child
  try dsimp only [live6756, coloured6756]
  rw [child]
  dsimp only [result6754]
  have child := node6755_eq
  unfold live6755 coloured6755 at child
  try dsimp only [live6756, coloured6756]
  rw [child]
  dsimp only [result6755]
  try dsimp only [colour, result6756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6757_agree : tree6757 = literal6757 := by
  rw [tree6757_def]
  rfl
theorem node6757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6757 live6757 coloured6757 = result6757 := by
  rw [tree6757_def]
  try dsimp only [colour, result6757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6758_agree : tree6758 = literal6758 := by
  rw [tree6758_def, tree6756_agree, tree6757_agree]
  rfl
theorem node6758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6758 live6758 coloured6758 = result6758 := by
  rw [tree6758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6756_eq
  unfold live6756 coloured6756 at child
  try dsimp only [live6758, coloured6758]
  rw [child]
  dsimp only [result6756]
  have child := node6757_eq
  unfold live6757 coloured6757 at child
  try dsimp only [live6758, coloured6758]
  rw [child]
  dsimp only [result6757]
  try dsimp only [colour, result6758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6759_agree : tree6759 = literal6759 := by
  rw [tree6759_def]
  rfl
theorem node6759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6759 live6759 coloured6759 = result6759 := by
  rw [tree6759_def]
  try dsimp only [colour, result6759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6760_agree : tree6760 = literal6760 := by
  rw [tree6760_def, tree6758_agree, tree6759_agree]
  rfl
theorem node6760_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6760 live6760 coloured6760 = result6760 := by
  rw [tree6760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6758_eq
  unfold live6758 coloured6758 at child
  try dsimp only [live6760, coloured6760]
  rw [child]
  dsimp only [result6758]
  have child := node6759_eq
  unfold live6759 coloured6759 at child
  try dsimp only [live6760, coloured6760]
  rw [child]
  dsimp only [result6759]
  try dsimp only [colour, result6760]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6761_agree : tree6761 = literal6761 := by
  rw [tree6761_def]
  rfl
theorem node6761_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6761 live6761 coloured6761 = result6761 := by
  rw [tree6761_def]
  try dsimp only [colour, result6761]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6762_agree : tree6762 = literal6762 := by
  rw [tree6762_def, tree6760_agree, tree6761_agree]
  rfl
theorem node6762_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6762 live6762 coloured6762 = result6762 := by
  rw [tree6762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6760_eq
  unfold live6760 coloured6760 at child
  try dsimp only [live6762, coloured6762]
  rw [child]
  dsimp only [result6760]
  have child := node6761_eq
  unfold live6761 coloured6761 at child
  try dsimp only [live6762, coloured6762]
  rw [child]
  dsimp only [result6761]
  try dsimp only [colour, result6762]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6763_agree : tree6763 = literal6763 := by
  rw [tree6763_def]
  rfl
theorem node6763_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6763 live6763 coloured6763 = result6763 := by
  rw [tree6763_def]
  try dsimp only [colour, result6763]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6764_agree : tree6764 = literal6764 := by
  rw [tree6764_def, tree6762_agree, tree6763_agree]
  rfl
theorem node6764_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6764 live6764 coloured6764 = result6764 := by
  rw [tree6764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6762_eq
  unfold live6762 coloured6762 at child
  try dsimp only [live6764, coloured6764]
  rw [child]
  dsimp only [result6762]
  have child := node6763_eq
  unfold live6763 coloured6763 at child
  try dsimp only [live6764, coloured6764]
  rw [child]
  dsimp only [result6763]
  try dsimp only [colour, result6764]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6765_agree : tree6765 = literal6765 := by
  rw [tree6765_def]
  rfl
theorem node6765_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6765 live6765 coloured6765 = result6765 := by
  rw [tree6765_def]
  try dsimp only [colour, result6765]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6766_agree : tree6766 = literal6766 := by
  rw [tree6766_def, tree6764_agree, tree6765_agree]
  rfl
theorem node6766_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6766 live6766 coloured6766 = result6766 := by
  rw [tree6766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6764_eq
  unfold live6764 coloured6764 at child
  try dsimp only [live6766, coloured6766]
  rw [child]
  dsimp only [result6764]
  have child := node6765_eq
  unfold live6765 coloured6765 at child
  try dsimp only [live6766, coloured6766]
  rw [child]
  dsimp only [result6765]
  try dsimp only [colour, result6766]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6767_agree : tree6767 = literal6767 := by
  rw [tree6767_def]
  rfl
theorem node6767_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6767 live6767 coloured6767 = result6767 := by
  rw [tree6767_def]
  try dsimp only [colour, result6767]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6768_agree : tree6768 = literal6768 := by
  rw [tree6768_def, tree6766_agree, tree6767_agree]
  rfl
theorem node6768_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6768 live6768 coloured6768 = result6768 := by
  rw [tree6768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6766_eq
  unfold live6766 coloured6766 at child
  try dsimp only [live6768, coloured6768]
  rw [child]
  dsimp only [result6766]
  have child := node6767_eq
  unfold live6767 coloured6767 at child
  try dsimp only [live6768, coloured6768]
  rw [child]
  dsimp only [result6767]
  try dsimp only [colour, result6768]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6769_agree : tree6769 = literal6769 := by
  rw [tree6769_def]
  rfl
theorem node6769_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6769 live6769 coloured6769 = result6769 := by
  rw [tree6769_def]
  try dsimp only [colour, result6769]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6770_agree : tree6770 = literal6770 := by
  rw [tree6770_def, tree6768_agree, tree6769_agree]
  rfl
theorem node6770_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6770 live6770 coloured6770 = result6770 := by
  rw [tree6770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6768_eq
  unfold live6768 coloured6768 at child
  try dsimp only [live6770, coloured6770]
  rw [child]
  dsimp only [result6768]
  have child := node6769_eq
  unfold live6769 coloured6769 at child
  try dsimp only [live6770, coloured6770]
  rw [child]
  dsimp only [result6769]
  try dsimp only [colour, result6770]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6771_agree : tree6771 = literal6771 := by
  rw [tree6771_def]
  rfl
theorem node6771_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6771 live6771 coloured6771 = result6771 := by
  rw [tree6771_def]
  try dsimp only [colour, result6771]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6772_agree : tree6772 = literal6772 := by
  rw [tree6772_def, tree6770_agree, tree6771_agree]
  rfl
theorem node6772_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6772 live6772 coloured6772 = result6772 := by
  rw [tree6772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6770_eq
  unfold live6770 coloured6770 at child
  try dsimp only [live6772, coloured6772]
  rw [child]
  dsimp only [result6770]
  have child := node6771_eq
  unfold live6771 coloured6771 at child
  try dsimp only [live6772, coloured6772]
  rw [child]
  dsimp only [result6771]
  try dsimp only [colour, result6772]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6773_agree : tree6773 = literal6773 := by
  rw [tree6773_def]
  rfl
theorem node6773_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6773 live6773 coloured6773 = result6773 := by
  rw [tree6773_def]
  try dsimp only [colour, result6773]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6774_agree : tree6774 = literal6774 := by
  rw [tree6774_def, tree6772_agree, tree6773_agree]
  rfl
theorem node6774_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6774 live6774 coloured6774 = result6774 := by
  rw [tree6774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6772_eq
  unfold live6772 coloured6772 at child
  try dsimp only [live6774, coloured6774]
  rw [child]
  dsimp only [result6772]
  have child := node6773_eq
  unfold live6773 coloured6773 at child
  try dsimp only [live6774, coloured6774]
  rw [child]
  dsimp only [result6773]
  try dsimp only [colour, result6774]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6775_agree : tree6775 = literal6775 := by
  rw [tree6775_def]
  rfl
theorem node6775_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6775 live6775 coloured6775 = result6775 := by
  rw [tree6775_def]
  try dsimp only [colour, result6775]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6776_agree : tree6776 = literal6776 := by
  rw [tree6776_def, tree6774_agree, tree6775_agree]
  rfl
theorem node6776_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6776 live6776 coloured6776 = result6776 := by
  rw [tree6776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6774_eq
  unfold live6774 coloured6774 at child
  try dsimp only [live6776, coloured6776]
  rw [child]
  dsimp only [result6774]
  have child := node6775_eq
  unfold live6775 coloured6775 at child
  try dsimp only [live6776, coloured6776]
  rw [child]
  dsimp only [result6775]
  try dsimp only [colour, result6776]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6777_agree : tree6777 = literal6777 := by
  rw [tree6777_def]
  rfl
theorem node6777_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6777 live6777 coloured6777 = result6777 := by
  rw [tree6777_def]
  try dsimp only [colour, result6777]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6778_agree : tree6778 = literal6778 := by
  rw [tree6778_def, tree6776_agree, tree6777_agree]
  rfl
theorem node6778_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6778 live6778 coloured6778 = result6778 := by
  rw [tree6778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6776_eq
  unfold live6776 coloured6776 at child
  try dsimp only [live6778, coloured6778]
  rw [child]
  dsimp only [result6776]
  have child := node6777_eq
  unfold live6777 coloured6777 at child
  try dsimp only [live6778, coloured6778]
  rw [child]
  dsimp only [result6777]
  try dsimp only [colour, result6778]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6779_agree : tree6779 = literal6779 := by
  rw [tree6779_def]
  rfl
theorem node6779_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6779 live6779 coloured6779 = result6779 := by
  rw [tree6779_def]
  try dsimp only [colour, result6779]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6780_agree : tree6780 = literal6780 := by
  rw [tree6780_def, tree6778_agree, tree6779_agree]
  rfl
theorem node6780_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6780 live6780 coloured6780 = result6780 := by
  rw [tree6780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6778_eq
  unfold live6778 coloured6778 at child
  try dsimp only [live6780, coloured6780]
  rw [child]
  dsimp only [result6778]
  have child := node6779_eq
  unfold live6779 coloured6779 at child
  try dsimp only [live6780, coloured6780]
  rw [child]
  dsimp only [result6779]
  try dsimp only [colour, result6780]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6781_agree : tree6781 = literal6781 := by
  rw [tree6781_def]
  rfl
theorem node6781_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6781 live6781 coloured6781 = result6781 := by
  rw [tree6781_def]
  try dsimp only [colour, result6781]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6782_agree : tree6782 = literal6782 := by
  rw [tree6782_def, tree6780_agree, tree6781_agree]
  rfl
theorem node6782_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6782 live6782 coloured6782 = result6782 := by
  rw [tree6782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6780_eq
  unfold live6780 coloured6780 at child
  try dsimp only [live6782, coloured6782]
  rw [child]
  dsimp only [result6780]
  have child := node6781_eq
  unfold live6781 coloured6781 at child
  try dsimp only [live6782, coloured6782]
  rw [child]
  dsimp only [result6781]
  try dsimp only [colour, result6782]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6783_agree : tree6783 = literal6783 := by
  rw [tree6783_def]
  rfl
theorem node6783_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6783 live6783 coloured6783 = result6783 := by
  rw [tree6783_def]
  try dsimp only [colour, result6783]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6784_agree : tree6784 = literal6784 := by
  rw [tree6784_def, tree6782_agree, tree6783_agree]
  rfl
theorem node6784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6784 live6784 coloured6784 = result6784 := by
  rw [tree6784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6782_eq
  unfold live6782 coloured6782 at child
  try dsimp only [live6784, coloured6784]
  rw [child]
  dsimp only [result6782]
  have child := node6783_eq
  unfold live6783 coloured6783 at child
  try dsimp only [live6784, coloured6784]
  rw [child]
  dsimp only [result6783]
  try dsimp only [colour, result6784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6785_agree : tree6785 = literal6785 := by
  rw [tree6785_def]
  rfl
theorem node6785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6785 live6785 coloured6785 = result6785 := by
  rw [tree6785_def]
  try dsimp only [colour, result6785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6786_agree : tree6786 = literal6786 := by
  rw [tree6786_def, tree6784_agree, tree6785_agree]
  rfl
theorem node6786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6786 live6786 coloured6786 = result6786 := by
  rw [tree6786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6784_eq
  unfold live6784 coloured6784 at child
  try dsimp only [live6786, coloured6786]
  rw [child]
  dsimp only [result6784]
  have child := node6785_eq
  unfold live6785 coloured6785 at child
  try dsimp only [live6786, coloured6786]
  rw [child]
  dsimp only [result6785]
  try dsimp only [colour, result6786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6787_agree : tree6787 = literal6787 := by
  rw [tree6787_def]
  rfl
theorem node6787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6787 live6787 coloured6787 = result6787 := by
  rw [tree6787_def]
  try dsimp only [colour, result6787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6788_agree : tree6788 = literal6788 := by
  rw [tree6788_def, tree6786_agree, tree6787_agree]
  rfl
theorem node6788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6788 live6788 coloured6788 = result6788 := by
  rw [tree6788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6786_eq
  unfold live6786 coloured6786 at child
  try dsimp only [live6788, coloured6788]
  rw [child]
  dsimp only [result6786]
  have child := node6787_eq
  unfold live6787 coloured6787 at child
  try dsimp only [live6788, coloured6788]
  rw [child]
  dsimp only [result6787]
  try dsimp only [colour, result6788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6789_agree : tree6789 = literal6789 := by
  rw [tree6789_def]
  rfl
theorem node6789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6789 live6789 coloured6789 = result6789 := by
  rw [tree6789_def]
  try dsimp only [colour, result6789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6790_agree : tree6790 = literal6790 := by
  rw [tree6790_def, tree6788_agree, tree6789_agree]
  rfl
theorem node6790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6790 live6790 coloured6790 = result6790 := by
  rw [tree6790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6788_eq
  unfold live6788 coloured6788 at child
  try dsimp only [live6790, coloured6790]
  rw [child]
  dsimp only [result6788]
  have child := node6789_eq
  unfold live6789 coloured6789 at child
  try dsimp only [live6790, coloured6790]
  rw [child]
  dsimp only [result6789]
  try dsimp only [colour, result6790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6791_agree : tree6791 = literal6791 := by
  rw [tree6791_def]
  rfl
theorem node6791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6791 live6791 coloured6791 = result6791 := by
  rw [tree6791_def]
  try dsimp only [colour, result6791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6792_agree : tree6792 = literal6792 := by
  rw [tree6792_def, tree6790_agree, tree6791_agree]
  rfl
theorem node6792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6792 live6792 coloured6792 = result6792 := by
  rw [tree6792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6790_eq
  unfold live6790 coloured6790 at child
  try dsimp only [live6792, coloured6792]
  rw [child]
  dsimp only [result6790]
  have child := node6791_eq
  unfold live6791 coloured6791 at child
  try dsimp only [live6792, coloured6792]
  rw [child]
  dsimp only [result6791]
  try dsimp only [colour, result6792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6793_agree : tree6793 = literal6793 := by
  rw [tree6793_def]
  rfl
theorem node6793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6793 live6793 coloured6793 = result6793 := by
  rw [tree6793_def]
  try dsimp only [colour, result6793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6794_agree : tree6794 = literal6794 := by
  rw [tree6794_def, tree6792_agree, tree6793_agree]
  rfl
theorem node6794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6794 live6794 coloured6794 = result6794 := by
  rw [tree6794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6792_eq
  unfold live6792 coloured6792 at child
  try dsimp only [live6794, coloured6794]
  rw [child]
  dsimp only [result6792]
  have child := node6793_eq
  unfold live6793 coloured6793 at child
  try dsimp only [live6794, coloured6794]
  rw [child]
  dsimp only [result6793]
  try dsimp only [colour, result6794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6795_agree : tree6795 = literal6795 := by
  rw [tree6795_def]
  rfl
theorem node6795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6795 live6795 coloured6795 = result6795 := by
  rw [tree6795_def]
  try dsimp only [colour, result6795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6796_agree : tree6796 = literal6796 := by
  rw [tree6796_def, tree6794_agree, tree6795_agree]
  rfl
theorem node6796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6796 live6796 coloured6796 = result6796 := by
  rw [tree6796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6794_eq
  unfold live6794 coloured6794 at child
  try dsimp only [live6796, coloured6796]
  rw [child]
  dsimp only [result6794]
  have child := node6795_eq
  unfold live6795 coloured6795 at child
  try dsimp only [live6796, coloured6796]
  rw [child]
  dsimp only [result6795]
  try dsimp only [colour, result6796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6797_agree : tree6797 = literal6797 := by
  rw [tree6797_def]
  rfl
theorem node6797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6797 live6797 coloured6797 = result6797 := by
  rw [tree6797_def]
  try dsimp only [colour, result6797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6798_agree : tree6798 = literal6798 := by
  rw [tree6798_def, tree6796_agree, tree6797_agree]
  rfl
theorem node6798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6798 live6798 coloured6798 = result6798 := by
  rw [tree6798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6796_eq
  unfold live6796 coloured6796 at child
  try dsimp only [live6798, coloured6798]
  rw [child]
  dsimp only [result6796]
  have child := node6797_eq
  unfold live6797 coloured6797 at child
  try dsimp only [live6798, coloured6798]
  rw [child]
  dsimp only [result6797]
  try dsimp only [colour, result6798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6799_agree : tree6799 = literal6799 := by
  rw [tree6799_def]
  rfl
theorem node6799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6799 live6799 coloured6799 = result6799 := by
  rw [tree6799_def]
  try dsimp only [colour, result6799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6800_agree : tree6800 = literal6800 := by
  rw [tree6800_def, tree6798_agree, tree6799_agree]
  rfl
theorem node6800_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6800 live6800 coloured6800 = result6800 := by
  rw [tree6800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6798_eq
  unfold live6798 coloured6798 at child
  try dsimp only [live6800, coloured6800]
  rw [child]
  dsimp only [result6798]
  have child := node6799_eq
  unfold live6799 coloured6799 at child
  try dsimp only [live6800, coloured6800]
  rw [child]
  dsimp only [result6799]
  try dsimp only [colour, result6800]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6801_agree : tree6801 = literal6801 := by
  rw [tree6801_def]
  rfl
theorem node6801_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6801 live6801 coloured6801 = result6801 := by
  rw [tree6801_def]
  try dsimp only [colour, result6801]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6802_agree : tree6802 = literal6802 := by
  rw [tree6802_def, tree6800_agree, tree6801_agree]
  rfl
theorem node6802_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6802 live6802 coloured6802 = result6802 := by
  rw [tree6802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6800_eq
  unfold live6800 coloured6800 at child
  try dsimp only [live6802, coloured6802]
  rw [child]
  dsimp only [result6800]
  have child := node6801_eq
  unfold live6801 coloured6801 at child
  try dsimp only [live6802, coloured6802]
  rw [child]
  dsimp only [result6801]
  try dsimp only [colour, result6802]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6803_agree : tree6803 = literal6803 := by
  rw [tree6803_def]
  rfl
theorem node6803_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6803 live6803 coloured6803 = result6803 := by
  rw [tree6803_def]
  try dsimp only [colour, result6803]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6804_agree : tree6804 = literal6804 := by
  rw [tree6804_def, tree6802_agree, tree6803_agree]
  rfl
theorem node6804_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6804 live6804 coloured6804 = result6804 := by
  rw [tree6804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6802_eq
  unfold live6802 coloured6802 at child
  try dsimp only [live6804, coloured6804]
  rw [child]
  dsimp only [result6802]
  have child := node6803_eq
  unfold live6803 coloured6803 at child
  try dsimp only [live6804, coloured6804]
  rw [child]
  dsimp only [result6803]
  try dsimp only [colour, result6804]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6805_agree : tree6805 = literal6805 := by
  rw [tree6805_def]
  rfl
theorem node6805_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6805 live6805 coloured6805 = result6805 := by
  rw [tree6805_def]
  try dsimp only [colour, result6805]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6806_agree : tree6806 = literal6806 := by
  rw [tree6806_def, tree6804_agree, tree6805_agree]
  rfl
theorem node6806_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6806 live6806 coloured6806 = result6806 := by
  rw [tree6806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6804_eq
  unfold live6804 coloured6804 at child
  try dsimp only [live6806, coloured6806]
  rw [child]
  dsimp only [result6804]
  have child := node6805_eq
  unfold live6805 coloured6805 at child
  try dsimp only [live6806, coloured6806]
  rw [child]
  dsimp only [result6805]
  try dsimp only [colour, result6806]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6807_agree : tree6807 = literal6807 := by
  rw [tree6807_def]
  rfl
theorem node6807_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6807 live6807 coloured6807 = result6807 := by
  rw [tree6807_def]
  try dsimp only [colour, result6807]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6808_agree : tree6808 = literal6808 := by
  rw [tree6808_def, tree6806_agree, tree6807_agree]
  rfl
theorem node6808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6808 live6808 coloured6808 = result6808 := by
  rw [tree6808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6806_eq
  unfold live6806 coloured6806 at child
  try dsimp only [live6808, coloured6808]
  rw [child]
  dsimp only [result6806]
  have child := node6807_eq
  unfold live6807 coloured6807 at child
  try dsimp only [live6808, coloured6808]
  rw [child]
  dsimp only [result6807]
  try dsimp only [colour, result6808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6809_agree : tree6809 = literal6809 := by
  rw [tree6809_def]
  rfl
theorem node6809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6809 live6809 coloured6809 = result6809 := by
  rw [tree6809_def]
  try dsimp only [colour, result6809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6810_agree : tree6810 = literal6810 := by
  rw [tree6810_def, tree6808_agree, tree6809_agree]
  rfl
theorem node6810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6810 live6810 coloured6810 = result6810 := by
  rw [tree6810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6808_eq
  unfold live6808 coloured6808 at child
  try dsimp only [live6810, coloured6810]
  rw [child]
  dsimp only [result6808]
  have child := node6809_eq
  unfold live6809 coloured6809 at child
  try dsimp only [live6810, coloured6810]
  rw [child]
  dsimp only [result6809]
  try dsimp only [colour, result6810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6811_agree : tree6811 = literal6811 := by
  rw [tree6811_def]
  rfl
theorem node6811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6811 live6811 coloured6811 = result6811 := by
  rw [tree6811_def]
  try dsimp only [colour, result6811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6812_agree : tree6812 = literal6812 := by
  rw [tree6812_def, tree6810_agree, tree6811_agree]
  rfl
theorem node6812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6812 live6812 coloured6812 = result6812 := by
  rw [tree6812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6810_eq
  unfold live6810 coloured6810 at child
  try dsimp only [live6812, coloured6812]
  rw [child]
  dsimp only [result6810]
  have child := node6811_eq
  unfold live6811 coloured6811 at child
  try dsimp only [live6812, coloured6812]
  rw [child]
  dsimp only [result6811]
  try dsimp only [colour, result6812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6813_agree : tree6813 = literal6813 := by
  rw [tree6813_def]
  rfl
theorem node6813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6813 live6813 coloured6813 = result6813 := by
  rw [tree6813_def]
  try dsimp only [colour, result6813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6814_agree : tree6814 = literal6814 := by
  rw [tree6814_def, tree6812_agree, tree6813_agree]
  rfl
theorem node6814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6814 live6814 coloured6814 = result6814 := by
  rw [tree6814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6812_eq
  unfold live6812 coloured6812 at child
  try dsimp only [live6814, coloured6814]
  rw [child]
  dsimp only [result6812]
  have child := node6813_eq
  unfold live6813 coloured6813 at child
  try dsimp only [live6814, coloured6814]
  rw [child]
  dsimp only [result6813]
  try dsimp only [colour, result6814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6815_agree : tree6815 = literal6815 := by
  rw [tree6815_def]
  rfl
theorem node6815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6815 live6815 coloured6815 = result6815 := by
  rw [tree6815_def]
  try dsimp only [colour, result6815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
