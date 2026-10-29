import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree6720_agree_conditional
    (child0 : tree6718 = literal6718)
    (child1 : tree6719 = literal6719) : tree6720 = literal6720 := by
  rw [tree6720_def, child0, child1]
  rfl
theorem node6720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6718 live6718 coloured6718 = result6718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6719 live6719 coloured6719 = result6719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6720 live6720 coloured6720 = result6720 := by
  rw [tree6720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6718 coloured6718 at child
  try dsimp only [live6720, coloured6720]
  rw [child]
  dsimp only [result6718]
  have child := child1
  unfold live6719 coloured6719 at child
  try dsimp only [live6720, coloured6720]
  rw [child]
  dsimp only [result6719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6721_agree_conditional : tree6721 = literal6721 := by
  rw [tree6721_def]
  rfl
theorem node6721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6721 live6721 coloured6721 = result6721 := by
  rw [tree6721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6722_agree_conditional
    (child0 : tree6720 = literal6720)
    (child1 : tree6721 = literal6721) : tree6722 = literal6722 := by
  rw [tree6722_def, child0, child1]
  rfl
theorem node6722_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6720 live6720 coloured6720 = result6720)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6721 live6721 coloured6721 = result6721) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6722 live6722 coloured6722 = result6722 := by
  rw [tree6722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6720 coloured6720 at child
  try dsimp only [live6722, coloured6722]
  rw [child]
  dsimp only [result6720]
  have child := child1
  unfold live6721 coloured6721 at child
  try dsimp only [live6722, coloured6722]
  rw [child]
  dsimp only [result6721]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6723_agree_conditional : tree6723 = literal6723 := by
  rw [tree6723_def]
  rfl
theorem node6723_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6723 live6723 coloured6723 = result6723 := by
  rw [tree6723_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6724_agree_conditional
    (child0 : tree6722 = literal6722)
    (child1 : tree6723 = literal6723) : tree6724 = literal6724 := by
  rw [tree6724_def, child0, child1]
  rfl
theorem node6724_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6722 live6722 coloured6722 = result6722)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6723 live6723 coloured6723 = result6723) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6724 live6724 coloured6724 = result6724 := by
  rw [tree6724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6722 coloured6722 at child
  try dsimp only [live6724, coloured6724]
  rw [child]
  dsimp only [result6722]
  have child := child1
  unfold live6723 coloured6723 at child
  try dsimp only [live6724, coloured6724]
  rw [child]
  dsimp only [result6723]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6725_agree_conditional : tree6725 = literal6725 := by
  rw [tree6725_def]
  rfl
theorem node6725_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6725 live6725 coloured6725 = result6725 := by
  rw [tree6725_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6726_agree_conditional
    (child0 : tree6724 = literal6724)
    (child1 : tree6725 = literal6725) : tree6726 = literal6726 := by
  rw [tree6726_def, child0, child1]
  rfl
theorem node6726_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6724 live6724 coloured6724 = result6724)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6725 live6725 coloured6725 = result6725) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6726 live6726 coloured6726 = result6726 := by
  rw [tree6726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6724 coloured6724 at child
  try dsimp only [live6726, coloured6726]
  rw [child]
  dsimp only [result6724]
  have child := child1
  unfold live6725 coloured6725 at child
  try dsimp only [live6726, coloured6726]
  rw [child]
  dsimp only [result6725]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6727_agree_conditional : tree6727 = literal6727 := by
  rw [tree6727_def]
  rfl
theorem node6727_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6727 live6727 coloured6727 = result6727 := by
  rw [tree6727_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6728_agree_conditional
    (child0 : tree6726 = literal6726)
    (child1 : tree6727 = literal6727) : tree6728 = literal6728 := by
  rw [tree6728_def, child0, child1]
  rfl
theorem node6728_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6726 live6726 coloured6726 = result6726)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6727 live6727 coloured6727 = result6727) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6728 live6728 coloured6728 = result6728 := by
  rw [tree6728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6726 coloured6726 at child
  try dsimp only [live6728, coloured6728]
  rw [child]
  dsimp only [result6726]
  have child := child1
  unfold live6727 coloured6727 at child
  try dsimp only [live6728, coloured6728]
  rw [child]
  dsimp only [result6727]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6729_agree_conditional : tree6729 = literal6729 := by
  rw [tree6729_def]
  rfl
theorem node6729_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6729 live6729 coloured6729 = result6729 := by
  rw [tree6729_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6730_agree_conditional
    (child0 : tree6728 = literal6728)
    (child1 : tree6729 = literal6729) : tree6730 = literal6730 := by
  rw [tree6730_def, child0, child1]
  rfl
theorem node6730_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6728 live6728 coloured6728 = result6728)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6729 live6729 coloured6729 = result6729) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6730 live6730 coloured6730 = result6730 := by
  rw [tree6730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6728 coloured6728 at child
  try dsimp only [live6730, coloured6730]
  rw [child]
  dsimp only [result6728]
  have child := child1
  unfold live6729 coloured6729 at child
  try dsimp only [live6730, coloured6730]
  rw [child]
  dsimp only [result6729]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6731_agree_conditional : tree6731 = literal6731 := by
  rw [tree6731_def]
  rfl
theorem node6731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6731 live6731 coloured6731 = result6731 := by
  rw [tree6731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6732_agree_conditional
    (child0 : tree6730 = literal6730)
    (child1 : tree6731 = literal6731) : tree6732 = literal6732 := by
  rw [tree6732_def, child0, child1]
  rfl
theorem node6732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6730 live6730 coloured6730 = result6730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6731 live6731 coloured6731 = result6731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6732 live6732 coloured6732 = result6732 := by
  rw [tree6732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6730 coloured6730 at child
  try dsimp only [live6732, coloured6732]
  rw [child]
  dsimp only [result6730]
  have child := child1
  unfold live6731 coloured6731 at child
  try dsimp only [live6732, coloured6732]
  rw [child]
  dsimp only [result6731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6733_agree_conditional : tree6733 = literal6733 := by
  rw [tree6733_def]
  rfl
theorem node6733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6733 live6733 coloured6733 = result6733 := by
  rw [tree6733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6734_agree_conditional
    (child0 : tree6732 = literal6732)
    (child1 : tree6733 = literal6733) : tree6734 = literal6734 := by
  rw [tree6734_def, child0, child1]
  rfl
theorem node6734_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6732 live6732 coloured6732 = result6732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6733 live6733 coloured6733 = result6733) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6734 live6734 coloured6734 = result6734 := by
  rw [tree6734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6732 coloured6732 at child
  try dsimp only [live6734, coloured6734]
  rw [child]
  dsimp only [result6732]
  have child := child1
  unfold live6733 coloured6733 at child
  try dsimp only [live6734, coloured6734]
  rw [child]
  dsimp only [result6733]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6735_agree_conditional : tree6735 = literal6735 := by
  rw [tree6735_def]
  rfl
theorem node6735_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6735 live6735 coloured6735 = result6735 := by
  rw [tree6735_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6736_agree_conditional
    (child0 : tree6734 = literal6734)
    (child1 : tree6735 = literal6735) : tree6736 = literal6736 := by
  rw [tree6736_def, child0, child1]
  rfl
theorem node6736_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6734 live6734 coloured6734 = result6734)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6735 live6735 coloured6735 = result6735) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6736 live6736 coloured6736 = result6736 := by
  rw [tree6736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6734 coloured6734 at child
  try dsimp only [live6736, coloured6736]
  rw [child]
  dsimp only [result6734]
  have child := child1
  unfold live6735 coloured6735 at child
  try dsimp only [live6736, coloured6736]
  rw [child]
  dsimp only [result6735]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6737_agree_conditional : tree6737 = literal6737 := by
  rw [tree6737_def]
  rfl
theorem node6737_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6737 live6737 coloured6737 = result6737 := by
  rw [tree6737_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6738_agree_conditional
    (child0 : tree6736 = literal6736)
    (child1 : tree6737 = literal6737) : tree6738 = literal6738 := by
  rw [tree6738_def, child0, child1]
  rfl
theorem node6738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6736 live6736 coloured6736 = result6736)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6737 live6737 coloured6737 = result6737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6738 live6738 coloured6738 = result6738 := by
  rw [tree6738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6736 coloured6736 at child
  try dsimp only [live6738, coloured6738]
  rw [child]
  dsimp only [result6736]
  have child := child1
  unfold live6737 coloured6737 at child
  try dsimp only [live6738, coloured6738]
  rw [child]
  dsimp only [result6737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6739_agree_conditional : tree6739 = literal6739 := by
  rw [tree6739_def]
  rfl
theorem node6739_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6739 live6739 coloured6739 = result6739 := by
  rw [tree6739_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6740_agree_conditional
    (child0 : tree6738 = literal6738)
    (child1 : tree6739 = literal6739) : tree6740 = literal6740 := by
  rw [tree6740_def, child0, child1]
  rfl
theorem node6740_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6738 live6738 coloured6738 = result6738)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6739 live6739 coloured6739 = result6739) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6740 live6740 coloured6740 = result6740 := by
  rw [tree6740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6738 coloured6738 at child
  try dsimp only [live6740, coloured6740]
  rw [child]
  dsimp only [result6738]
  have child := child1
  unfold live6739 coloured6739 at child
  try dsimp only [live6740, coloured6740]
  rw [child]
  dsimp only [result6739]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6741_agree_conditional : tree6741 = literal6741 := by
  rw [tree6741_def]
  rfl
theorem node6741_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6741 live6741 coloured6741 = result6741 := by
  rw [tree6741_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6742_agree_conditional
    (child0 : tree6740 = literal6740)
    (child1 : tree6741 = literal6741) : tree6742 = literal6742 := by
  rw [tree6742_def, child0, child1]
  rfl
theorem node6742_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6740 live6740 coloured6740 = result6740)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6741 live6741 coloured6741 = result6741) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6742 live6742 coloured6742 = result6742 := by
  rw [tree6742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6740 coloured6740 at child
  try dsimp only [live6742, coloured6742]
  rw [child]
  dsimp only [result6740]
  have child := child1
  unfold live6741 coloured6741 at child
  try dsimp only [live6742, coloured6742]
  rw [child]
  dsimp only [result6741]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6743_agree_conditional : tree6743 = literal6743 := by
  rw [tree6743_def]
  rfl
theorem node6743_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6743 live6743 coloured6743 = result6743 := by
  rw [tree6743_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6744_agree_conditional
    (child0 : tree6742 = literal6742)
    (child1 : tree6743 = literal6743) : tree6744 = literal6744 := by
  rw [tree6744_def, child0, child1]
  rfl
theorem node6744_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6742 live6742 coloured6742 = result6742)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6743 live6743 coloured6743 = result6743) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6744 live6744 coloured6744 = result6744 := by
  rw [tree6744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6742 coloured6742 at child
  try dsimp only [live6744, coloured6744]
  rw [child]
  dsimp only [result6742]
  have child := child1
  unfold live6743 coloured6743 at child
  try dsimp only [live6744, coloured6744]
  rw [child]
  dsimp only [result6743]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6745_agree_conditional : tree6745 = literal6745 := by
  rw [tree6745_def]
  rfl
theorem node6745_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6745 live6745 coloured6745 = result6745 := by
  rw [tree6745_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6746_agree_conditional
    (child0 : tree6744 = literal6744)
    (child1 : tree6745 = literal6745) : tree6746 = literal6746 := by
  rw [tree6746_def, child0, child1]
  rfl
theorem node6746_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6744 live6744 coloured6744 = result6744)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6745 live6745 coloured6745 = result6745) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6746 live6746 coloured6746 = result6746 := by
  rw [tree6746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6744 coloured6744 at child
  try dsimp only [live6746, coloured6746]
  rw [child]
  dsimp only [result6744]
  have child := child1
  unfold live6745 coloured6745 at child
  try dsimp only [live6746, coloured6746]
  rw [child]
  dsimp only [result6745]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6747_agree_conditional : tree6747 = literal6747 := by
  rw [tree6747_def]
  rfl
theorem node6747_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6747 live6747 coloured6747 = result6747 := by
  rw [tree6747_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6748_agree_conditional
    (child0 : tree6746 = literal6746)
    (child1 : tree6747 = literal6747) : tree6748 = literal6748 := by
  rw [tree6748_def, child0, child1]
  rfl
theorem node6748_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6746 live6746 coloured6746 = result6746)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6747 live6747 coloured6747 = result6747) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6748 live6748 coloured6748 = result6748 := by
  rw [tree6748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6746 coloured6746 at child
  try dsimp only [live6748, coloured6748]
  rw [child]
  dsimp only [result6746]
  have child := child1
  unfold live6747 coloured6747 at child
  try dsimp only [live6748, coloured6748]
  rw [child]
  dsimp only [result6747]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6749_agree_conditional : tree6749 = literal6749 := by
  rw [tree6749_def]
  rfl
theorem node6749_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6749 live6749 coloured6749 = result6749 := by
  rw [tree6749_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6750_agree_conditional
    (child0 : tree6748 = literal6748)
    (child1 : tree6749 = literal6749) : tree6750 = literal6750 := by
  rw [tree6750_def, child0, child1]
  rfl
theorem node6750_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6748 live6748 coloured6748 = result6748)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6749 live6749 coloured6749 = result6749) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6750 live6750 coloured6750 = result6750 := by
  rw [tree6750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6748 coloured6748 at child
  try dsimp only [live6750, coloured6750]
  rw [child]
  dsimp only [result6748]
  have child := child1
  unfold live6749 coloured6749 at child
  try dsimp only [live6750, coloured6750]
  rw [child]
  dsimp only [result6749]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6751_agree_conditional : tree6751 = literal6751 := by
  rw [tree6751_def]
  rfl
theorem node6751_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6751 live6751 coloured6751 = result6751 := by
  rw [tree6751_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6752_agree_conditional
    (child0 : tree6750 = literal6750)
    (child1 : tree6751 = literal6751) : tree6752 = literal6752 := by
  rw [tree6752_def, child0, child1]
  rfl
theorem node6752_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6750 live6750 coloured6750 = result6750)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6751 live6751 coloured6751 = result6751) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6752 live6752 coloured6752 = result6752 := by
  rw [tree6752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6750 coloured6750 at child
  try dsimp only [live6752, coloured6752]
  rw [child]
  dsimp only [result6750]
  have child := child1
  unfold live6751 coloured6751 at child
  try dsimp only [live6752, coloured6752]
  rw [child]
  dsimp only [result6751]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6753_agree_conditional : tree6753 = literal6753 := by
  rw [tree6753_def]
  rfl
theorem node6753_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6753 live6753 coloured6753 = result6753 := by
  rw [tree6753_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6754_agree_conditional
    (child0 : tree6752 = literal6752)
    (child1 : tree6753 = literal6753) : tree6754 = literal6754 := by
  rw [tree6754_def, child0, child1]
  rfl
theorem node6754_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6752 live6752 coloured6752 = result6752)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6753 live6753 coloured6753 = result6753) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6754 live6754 coloured6754 = result6754 := by
  rw [tree6754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6752 coloured6752 at child
  try dsimp only [live6754, coloured6754]
  rw [child]
  dsimp only [result6752]
  have child := child1
  unfold live6753 coloured6753 at child
  try dsimp only [live6754, coloured6754]
  rw [child]
  dsimp only [result6753]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6755_agree_conditional : tree6755 = literal6755 := by
  rw [tree6755_def]
  rfl
theorem node6755_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6755 live6755 coloured6755 = result6755 := by
  rw [tree6755_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6756_agree_conditional
    (child0 : tree6754 = literal6754)
    (child1 : tree6755 = literal6755) : tree6756 = literal6756 := by
  rw [tree6756_def, child0, child1]
  rfl
theorem node6756_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6754 live6754 coloured6754 = result6754)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6755 live6755 coloured6755 = result6755) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6756 live6756 coloured6756 = result6756 := by
  rw [tree6756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6754 coloured6754 at child
  try dsimp only [live6756, coloured6756]
  rw [child]
  dsimp only [result6754]
  have child := child1
  unfold live6755 coloured6755 at child
  try dsimp only [live6756, coloured6756]
  rw [child]
  dsimp only [result6755]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6757_agree_conditional : tree6757 = literal6757 := by
  rw [tree6757_def]
  rfl
theorem node6757_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6757 live6757 coloured6757 = result6757 := by
  rw [tree6757_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6758_agree_conditional
    (child0 : tree6756 = literal6756)
    (child1 : tree6757 = literal6757) : tree6758 = literal6758 := by
  rw [tree6758_def, child0, child1]
  rfl
theorem node6758_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6756 live6756 coloured6756 = result6756)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6757 live6757 coloured6757 = result6757) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6758 live6758 coloured6758 = result6758 := by
  rw [tree6758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6756 coloured6756 at child
  try dsimp only [live6758, coloured6758]
  rw [child]
  dsimp only [result6756]
  have child := child1
  unfold live6757 coloured6757 at child
  try dsimp only [live6758, coloured6758]
  rw [child]
  dsimp only [result6757]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6759_agree_conditional : tree6759 = literal6759 := by
  rw [tree6759_def]
  rfl
theorem node6759_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6759 live6759 coloured6759 = result6759 := by
  rw [tree6759_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6760_agree_conditional
    (child0 : tree6758 = literal6758)
    (child1 : tree6759 = literal6759) : tree6760 = literal6760 := by
  rw [tree6760_def, child0, child1]
  rfl
theorem node6760_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6758 live6758 coloured6758 = result6758)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6759 live6759 coloured6759 = result6759) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6760 live6760 coloured6760 = result6760 := by
  rw [tree6760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6758 coloured6758 at child
  try dsimp only [live6760, coloured6760]
  rw [child]
  dsimp only [result6758]
  have child := child1
  unfold live6759 coloured6759 at child
  try dsimp only [live6760, coloured6760]
  rw [child]
  dsimp only [result6759]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6761_agree_conditional : tree6761 = literal6761 := by
  rw [tree6761_def]
  rfl
theorem node6761_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6761 live6761 coloured6761 = result6761 := by
  rw [tree6761_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6762_agree_conditional
    (child0 : tree6760 = literal6760)
    (child1 : tree6761 = literal6761) : tree6762 = literal6762 := by
  rw [tree6762_def, child0, child1]
  rfl
theorem node6762_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6760 live6760 coloured6760 = result6760)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6761 live6761 coloured6761 = result6761) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6762 live6762 coloured6762 = result6762 := by
  rw [tree6762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6760 coloured6760 at child
  try dsimp only [live6762, coloured6762]
  rw [child]
  dsimp only [result6760]
  have child := child1
  unfold live6761 coloured6761 at child
  try dsimp only [live6762, coloured6762]
  rw [child]
  dsimp only [result6761]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6763_agree_conditional : tree6763 = literal6763 := by
  rw [tree6763_def]
  rfl
theorem node6763_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6763 live6763 coloured6763 = result6763 := by
  rw [tree6763_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6764_agree_conditional
    (child0 : tree6762 = literal6762)
    (child1 : tree6763 = literal6763) : tree6764 = literal6764 := by
  rw [tree6764_def, child0, child1]
  rfl
theorem node6764_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6762 live6762 coloured6762 = result6762)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6763 live6763 coloured6763 = result6763) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6764 live6764 coloured6764 = result6764 := by
  rw [tree6764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6762 coloured6762 at child
  try dsimp only [live6764, coloured6764]
  rw [child]
  dsimp only [result6762]
  have child := child1
  unfold live6763 coloured6763 at child
  try dsimp only [live6764, coloured6764]
  rw [child]
  dsimp only [result6763]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6765_agree_conditional : tree6765 = literal6765 := by
  rw [tree6765_def]
  rfl
theorem node6765_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6765 live6765 coloured6765 = result6765 := by
  rw [tree6765_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6766_agree_conditional
    (child0 : tree6764 = literal6764)
    (child1 : tree6765 = literal6765) : tree6766 = literal6766 := by
  rw [tree6766_def, child0, child1]
  rfl
theorem node6766_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6764 live6764 coloured6764 = result6764)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6765 live6765 coloured6765 = result6765) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6766 live6766 coloured6766 = result6766 := by
  rw [tree6766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6764 coloured6764 at child
  try dsimp only [live6766, coloured6766]
  rw [child]
  dsimp only [result6764]
  have child := child1
  unfold live6765 coloured6765 at child
  try dsimp only [live6766, coloured6766]
  rw [child]
  dsimp only [result6765]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6767_agree_conditional : tree6767 = literal6767 := by
  rw [tree6767_def]
  rfl
theorem node6767_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6767 live6767 coloured6767 = result6767 := by
  rw [tree6767_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6768_agree_conditional
    (child0 : tree6766 = literal6766)
    (child1 : tree6767 = literal6767) : tree6768 = literal6768 := by
  rw [tree6768_def, child0, child1]
  rfl
theorem node6768_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6766 live6766 coloured6766 = result6766)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6767 live6767 coloured6767 = result6767) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6768 live6768 coloured6768 = result6768 := by
  rw [tree6768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6766 coloured6766 at child
  try dsimp only [live6768, coloured6768]
  rw [child]
  dsimp only [result6766]
  have child := child1
  unfold live6767 coloured6767 at child
  try dsimp only [live6768, coloured6768]
  rw [child]
  dsimp only [result6767]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6769_agree_conditional : tree6769 = literal6769 := by
  rw [tree6769_def]
  rfl
theorem node6769_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6769 live6769 coloured6769 = result6769 := by
  rw [tree6769_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6770_agree_conditional
    (child0 : tree6768 = literal6768)
    (child1 : tree6769 = literal6769) : tree6770 = literal6770 := by
  rw [tree6770_def, child0, child1]
  rfl
theorem node6770_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6768 live6768 coloured6768 = result6768)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6769 live6769 coloured6769 = result6769) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6770 live6770 coloured6770 = result6770 := by
  rw [tree6770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6768 coloured6768 at child
  try dsimp only [live6770, coloured6770]
  rw [child]
  dsimp only [result6768]
  have child := child1
  unfold live6769 coloured6769 at child
  try dsimp only [live6770, coloured6770]
  rw [child]
  dsimp only [result6769]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6771_agree_conditional : tree6771 = literal6771 := by
  rw [tree6771_def]
  rfl
theorem node6771_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6771 live6771 coloured6771 = result6771 := by
  rw [tree6771_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6772_agree_conditional
    (child0 : tree6770 = literal6770)
    (child1 : tree6771 = literal6771) : tree6772 = literal6772 := by
  rw [tree6772_def, child0, child1]
  rfl
theorem node6772_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6770 live6770 coloured6770 = result6770)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6771 live6771 coloured6771 = result6771) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6772 live6772 coloured6772 = result6772 := by
  rw [tree6772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6770 coloured6770 at child
  try dsimp only [live6772, coloured6772]
  rw [child]
  dsimp only [result6770]
  have child := child1
  unfold live6771 coloured6771 at child
  try dsimp only [live6772, coloured6772]
  rw [child]
  dsimp only [result6771]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6773_agree_conditional : tree6773 = literal6773 := by
  rw [tree6773_def]
  rfl
theorem node6773_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6773 live6773 coloured6773 = result6773 := by
  rw [tree6773_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6774_agree_conditional
    (child0 : tree6772 = literal6772)
    (child1 : tree6773 = literal6773) : tree6774 = literal6774 := by
  rw [tree6774_def, child0, child1]
  rfl
theorem node6774_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6772 live6772 coloured6772 = result6772)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6773 live6773 coloured6773 = result6773) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6774 live6774 coloured6774 = result6774 := by
  rw [tree6774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6772 coloured6772 at child
  try dsimp only [live6774, coloured6774]
  rw [child]
  dsimp only [result6772]
  have child := child1
  unfold live6773 coloured6773 at child
  try dsimp only [live6774, coloured6774]
  rw [child]
  dsimp only [result6773]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6775_agree_conditional : tree6775 = literal6775 := by
  rw [tree6775_def]
  rfl
theorem node6775_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6775 live6775 coloured6775 = result6775 := by
  rw [tree6775_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6776_agree_conditional
    (child0 : tree6774 = literal6774)
    (child1 : tree6775 = literal6775) : tree6776 = literal6776 := by
  rw [tree6776_def, child0, child1]
  rfl
theorem node6776_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6774 live6774 coloured6774 = result6774)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6775 live6775 coloured6775 = result6775) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6776 live6776 coloured6776 = result6776 := by
  rw [tree6776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6774 coloured6774 at child
  try dsimp only [live6776, coloured6776]
  rw [child]
  dsimp only [result6774]
  have child := child1
  unfold live6775 coloured6775 at child
  try dsimp only [live6776, coloured6776]
  rw [child]
  dsimp only [result6775]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6777_agree_conditional : tree6777 = literal6777 := by
  rw [tree6777_def]
  rfl
theorem node6777_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6777 live6777 coloured6777 = result6777 := by
  rw [tree6777_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6778_agree_conditional
    (child0 : tree6776 = literal6776)
    (child1 : tree6777 = literal6777) : tree6778 = literal6778 := by
  rw [tree6778_def, child0, child1]
  rfl
theorem node6778_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6776 live6776 coloured6776 = result6776)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6777 live6777 coloured6777 = result6777) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6778 live6778 coloured6778 = result6778 := by
  rw [tree6778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6776 coloured6776 at child
  try dsimp only [live6778, coloured6778]
  rw [child]
  dsimp only [result6776]
  have child := child1
  unfold live6777 coloured6777 at child
  try dsimp only [live6778, coloured6778]
  rw [child]
  dsimp only [result6777]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6779_agree_conditional : tree6779 = literal6779 := by
  rw [tree6779_def]
  rfl
theorem node6779_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6779 live6779 coloured6779 = result6779 := by
  rw [tree6779_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6780_agree_conditional
    (child0 : tree6778 = literal6778)
    (child1 : tree6779 = literal6779) : tree6780 = literal6780 := by
  rw [tree6780_def, child0, child1]
  rfl
theorem node6780_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6778 live6778 coloured6778 = result6778)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6779 live6779 coloured6779 = result6779) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6780 live6780 coloured6780 = result6780 := by
  rw [tree6780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6778 coloured6778 at child
  try dsimp only [live6780, coloured6780]
  rw [child]
  dsimp only [result6778]
  have child := child1
  unfold live6779 coloured6779 at child
  try dsimp only [live6780, coloured6780]
  rw [child]
  dsimp only [result6779]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6781_agree_conditional : tree6781 = literal6781 := by
  rw [tree6781_def]
  rfl
theorem node6781_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6781 live6781 coloured6781 = result6781 := by
  rw [tree6781_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6782_agree_conditional
    (child0 : tree6780 = literal6780)
    (child1 : tree6781 = literal6781) : tree6782 = literal6782 := by
  rw [tree6782_def, child0, child1]
  rfl
theorem node6782_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6780 live6780 coloured6780 = result6780)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6781 live6781 coloured6781 = result6781) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6782 live6782 coloured6782 = result6782 := by
  rw [tree6782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6780 coloured6780 at child
  try dsimp only [live6782, coloured6782]
  rw [child]
  dsimp only [result6780]
  have child := child1
  unfold live6781 coloured6781 at child
  try dsimp only [live6782, coloured6782]
  rw [child]
  dsimp only [result6781]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6783_agree_conditional : tree6783 = literal6783 := by
  rw [tree6783_def]
  rfl
theorem node6783_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6783 live6783 coloured6783 = result6783 := by
  rw [tree6783_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6784_agree_conditional
    (child0 : tree6782 = literal6782)
    (child1 : tree6783 = literal6783) : tree6784 = literal6784 := by
  rw [tree6784_def, child0, child1]
  rfl
theorem node6784_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6782 live6782 coloured6782 = result6782)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6783 live6783 coloured6783 = result6783) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6784 live6784 coloured6784 = result6784 := by
  rw [tree6784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6782 coloured6782 at child
  try dsimp only [live6784, coloured6784]
  rw [child]
  dsimp only [result6782]
  have child := child1
  unfold live6783 coloured6783 at child
  try dsimp only [live6784, coloured6784]
  rw [child]
  dsimp only [result6783]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6785_agree_conditional : tree6785 = literal6785 := by
  rw [tree6785_def]
  rfl
theorem node6785_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6785 live6785 coloured6785 = result6785 := by
  rw [tree6785_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6786_agree_conditional
    (child0 : tree6784 = literal6784)
    (child1 : tree6785 = literal6785) : tree6786 = literal6786 := by
  rw [tree6786_def, child0, child1]
  rfl
theorem node6786_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6784 live6784 coloured6784 = result6784)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6785 live6785 coloured6785 = result6785) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6786 live6786 coloured6786 = result6786 := by
  rw [tree6786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6784 coloured6784 at child
  try dsimp only [live6786, coloured6786]
  rw [child]
  dsimp only [result6784]
  have child := child1
  unfold live6785 coloured6785 at child
  try dsimp only [live6786, coloured6786]
  rw [child]
  dsimp only [result6785]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6787_agree_conditional : tree6787 = literal6787 := by
  rw [tree6787_def]
  rfl
theorem node6787_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6787 live6787 coloured6787 = result6787 := by
  rw [tree6787_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6788_agree_conditional
    (child0 : tree6786 = literal6786)
    (child1 : tree6787 = literal6787) : tree6788 = literal6788 := by
  rw [tree6788_def, child0, child1]
  rfl
theorem node6788_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6786 live6786 coloured6786 = result6786)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6787 live6787 coloured6787 = result6787) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6788 live6788 coloured6788 = result6788 := by
  rw [tree6788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6786 coloured6786 at child
  try dsimp only [live6788, coloured6788]
  rw [child]
  dsimp only [result6786]
  have child := child1
  unfold live6787 coloured6787 at child
  try dsimp only [live6788, coloured6788]
  rw [child]
  dsimp only [result6787]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6789_agree_conditional : tree6789 = literal6789 := by
  rw [tree6789_def]
  rfl
theorem node6789_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6789 live6789 coloured6789 = result6789 := by
  rw [tree6789_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6790_agree_conditional
    (child0 : tree6788 = literal6788)
    (child1 : tree6789 = literal6789) : tree6790 = literal6790 := by
  rw [tree6790_def, child0, child1]
  rfl
theorem node6790_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6788 live6788 coloured6788 = result6788)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6789 live6789 coloured6789 = result6789) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6790 live6790 coloured6790 = result6790 := by
  rw [tree6790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6788 coloured6788 at child
  try dsimp only [live6790, coloured6790]
  rw [child]
  dsimp only [result6788]
  have child := child1
  unfold live6789 coloured6789 at child
  try dsimp only [live6790, coloured6790]
  rw [child]
  dsimp only [result6789]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6791_agree_conditional : tree6791 = literal6791 := by
  rw [tree6791_def]
  rfl
theorem node6791_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6791 live6791 coloured6791 = result6791 := by
  rw [tree6791_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6792_agree_conditional
    (child0 : tree6790 = literal6790)
    (child1 : tree6791 = literal6791) : tree6792 = literal6792 := by
  rw [tree6792_def, child0, child1]
  rfl
theorem node6792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6790 live6790 coloured6790 = result6790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6791 live6791 coloured6791 = result6791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6792 live6792 coloured6792 = result6792 := by
  rw [tree6792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6790 coloured6790 at child
  try dsimp only [live6792, coloured6792]
  rw [child]
  dsimp only [result6790]
  have child := child1
  unfold live6791 coloured6791 at child
  try dsimp only [live6792, coloured6792]
  rw [child]
  dsimp only [result6791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6793_agree_conditional : tree6793 = literal6793 := by
  rw [tree6793_def]
  rfl
theorem node6793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6793 live6793 coloured6793 = result6793 := by
  rw [tree6793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6794_agree_conditional
    (child0 : tree6792 = literal6792)
    (child1 : tree6793 = literal6793) : tree6794 = literal6794 := by
  rw [tree6794_def, child0, child1]
  rfl
theorem node6794_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6792 live6792 coloured6792 = result6792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6793 live6793 coloured6793 = result6793) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6794 live6794 coloured6794 = result6794 := by
  rw [tree6794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6792 coloured6792 at child
  try dsimp only [live6794, coloured6794]
  rw [child]
  dsimp only [result6792]
  have child := child1
  unfold live6793 coloured6793 at child
  try dsimp only [live6794, coloured6794]
  rw [child]
  dsimp only [result6793]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6795_agree_conditional : tree6795 = literal6795 := by
  rw [tree6795_def]
  rfl
theorem node6795_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6795 live6795 coloured6795 = result6795 := by
  rw [tree6795_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6796_agree_conditional
    (child0 : tree6794 = literal6794)
    (child1 : tree6795 = literal6795) : tree6796 = literal6796 := by
  rw [tree6796_def, child0, child1]
  rfl
theorem node6796_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6794 live6794 coloured6794 = result6794)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6795 live6795 coloured6795 = result6795) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6796 live6796 coloured6796 = result6796 := by
  rw [tree6796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6794 coloured6794 at child
  try dsimp only [live6796, coloured6796]
  rw [child]
  dsimp only [result6794]
  have child := child1
  unfold live6795 coloured6795 at child
  try dsimp only [live6796, coloured6796]
  rw [child]
  dsimp only [result6795]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6797_agree_conditional : tree6797 = literal6797 := by
  rw [tree6797_def]
  rfl
theorem node6797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6797 live6797 coloured6797 = result6797 := by
  rw [tree6797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6798_agree_conditional
    (child0 : tree6796 = literal6796)
    (child1 : tree6797 = literal6797) : tree6798 = literal6798 := by
  rw [tree6798_def, child0, child1]
  rfl
theorem node6798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6796 live6796 coloured6796 = result6796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6797 live6797 coloured6797 = result6797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6798 live6798 coloured6798 = result6798 := by
  rw [tree6798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6796 coloured6796 at child
  try dsimp only [live6798, coloured6798]
  rw [child]
  dsimp only [result6796]
  have child := child1
  unfold live6797 coloured6797 at child
  try dsimp only [live6798, coloured6798]
  rw [child]
  dsimp only [result6797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6799_agree_conditional : tree6799 = literal6799 := by
  rw [tree6799_def]
  rfl
theorem node6799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6799 live6799 coloured6799 = result6799 := by
  rw [tree6799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6800_agree_conditional
    (child0 : tree6798 = literal6798)
    (child1 : tree6799 = literal6799) : tree6800 = literal6800 := by
  rw [tree6800_def, child0, child1]
  rfl
theorem node6800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6798 live6798 coloured6798 = result6798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6799 live6799 coloured6799 = result6799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6800 live6800 coloured6800 = result6800 := by
  rw [tree6800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6798 coloured6798 at child
  try dsimp only [live6800, coloured6800]
  rw [child]
  dsimp only [result6798]
  have child := child1
  unfold live6799 coloured6799 at child
  try dsimp only [live6800, coloured6800]
  rw [child]
  dsimp only [result6799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6801_agree_conditional : tree6801 = literal6801 := by
  rw [tree6801_def]
  rfl
theorem node6801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6801 live6801 coloured6801 = result6801 := by
  rw [tree6801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6802_agree_conditional
    (child0 : tree6800 = literal6800)
    (child1 : tree6801 = literal6801) : tree6802 = literal6802 := by
  rw [tree6802_def, child0, child1]
  rfl
theorem node6802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6800 live6800 coloured6800 = result6800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6801 live6801 coloured6801 = result6801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6802 live6802 coloured6802 = result6802 := by
  rw [tree6802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6800 coloured6800 at child
  try dsimp only [live6802, coloured6802]
  rw [child]
  dsimp only [result6800]
  have child := child1
  unfold live6801 coloured6801 at child
  try dsimp only [live6802, coloured6802]
  rw [child]
  dsimp only [result6801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6803_agree_conditional : tree6803 = literal6803 := by
  rw [tree6803_def]
  rfl
theorem node6803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6803 live6803 coloured6803 = result6803 := by
  rw [tree6803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6804_agree_conditional
    (child0 : tree6802 = literal6802)
    (child1 : tree6803 = literal6803) : tree6804 = literal6804 := by
  rw [tree6804_def, child0, child1]
  rfl
theorem node6804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6802 live6802 coloured6802 = result6802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6803 live6803 coloured6803 = result6803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6804 live6804 coloured6804 = result6804 := by
  rw [tree6804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6802 coloured6802 at child
  try dsimp only [live6804, coloured6804]
  rw [child]
  dsimp only [result6802]
  have child := child1
  unfold live6803 coloured6803 at child
  try dsimp only [live6804, coloured6804]
  rw [child]
  dsimp only [result6803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6805_agree_conditional : tree6805 = literal6805 := by
  rw [tree6805_def]
  rfl
theorem node6805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6805 live6805 coloured6805 = result6805 := by
  rw [tree6805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6806_agree_conditional
    (child0 : tree6804 = literal6804)
    (child1 : tree6805 = literal6805) : tree6806 = literal6806 := by
  rw [tree6806_def, child0, child1]
  rfl
theorem node6806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6804 live6804 coloured6804 = result6804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6805 live6805 coloured6805 = result6805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6806 live6806 coloured6806 = result6806 := by
  rw [tree6806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6804 coloured6804 at child
  try dsimp only [live6806, coloured6806]
  rw [child]
  dsimp only [result6804]
  have child := child1
  unfold live6805 coloured6805 at child
  try dsimp only [live6806, coloured6806]
  rw [child]
  dsimp only [result6805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6807_agree_conditional : tree6807 = literal6807 := by
  rw [tree6807_def]
  rfl
theorem node6807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6807 live6807 coloured6807 = result6807 := by
  rw [tree6807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6808_agree_conditional
    (child0 : tree6806 = literal6806)
    (child1 : tree6807 = literal6807) : tree6808 = literal6808 := by
  rw [tree6808_def, child0, child1]
  rfl
theorem node6808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6806 live6806 coloured6806 = result6806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6807 live6807 coloured6807 = result6807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6808 live6808 coloured6808 = result6808 := by
  rw [tree6808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6806 coloured6806 at child
  try dsimp only [live6808, coloured6808]
  rw [child]
  dsimp only [result6806]
  have child := child1
  unfold live6807 coloured6807 at child
  try dsimp only [live6808, coloured6808]
  rw [child]
  dsimp only [result6807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6809_agree_conditional : tree6809 = literal6809 := by
  rw [tree6809_def]
  rfl
theorem node6809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6809 live6809 coloured6809 = result6809 := by
  rw [tree6809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6810_agree_conditional
    (child0 : tree6808 = literal6808)
    (child1 : tree6809 = literal6809) : tree6810 = literal6810 := by
  rw [tree6810_def, child0, child1]
  rfl
theorem node6810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6808 live6808 coloured6808 = result6808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6809 live6809 coloured6809 = result6809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6810 live6810 coloured6810 = result6810 := by
  rw [tree6810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6808 coloured6808 at child
  try dsimp only [live6810, coloured6810]
  rw [child]
  dsimp only [result6808]
  have child := child1
  unfold live6809 coloured6809 at child
  try dsimp only [live6810, coloured6810]
  rw [child]
  dsimp only [result6809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6811_agree_conditional : tree6811 = literal6811 := by
  rw [tree6811_def]
  rfl
theorem node6811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6811 live6811 coloured6811 = result6811 := by
  rw [tree6811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6812_agree_conditional
    (child0 : tree6810 = literal6810)
    (child1 : tree6811 = literal6811) : tree6812 = literal6812 := by
  rw [tree6812_def, child0, child1]
  rfl
theorem node6812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6810 live6810 coloured6810 = result6810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6811 live6811 coloured6811 = result6811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6812 live6812 coloured6812 = result6812 := by
  rw [tree6812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6810 coloured6810 at child
  try dsimp only [live6812, coloured6812]
  rw [child]
  dsimp only [result6810]
  have child := child1
  unfold live6811 coloured6811 at child
  try dsimp only [live6812, coloured6812]
  rw [child]
  dsimp only [result6811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6813_agree_conditional : tree6813 = literal6813 := by
  rw [tree6813_def]
  rfl
theorem node6813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6813 live6813 coloured6813 = result6813 := by
  rw [tree6813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6814_agree_conditional
    (child0 : tree6812 = literal6812)
    (child1 : tree6813 = literal6813) : tree6814 = literal6814 := by
  rw [tree6814_def, child0, child1]
  rfl
theorem node6814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6812 live6812 coloured6812 = result6812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6813 live6813 coloured6813 = result6813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6814 live6814 coloured6814 = result6814 := by
  rw [tree6814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6812 coloured6812 at child
  try dsimp only [live6814, coloured6814]
  rw [child]
  dsimp only [result6812]
  have child := child1
  unfold live6813 coloured6813 at child
  try dsimp only [live6814, coloured6814]
  rw [child]
  dsimp only [result6813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6815_agree_conditional : tree6815 = literal6815 := by
  rw [tree6815_def]
  rfl
theorem node6815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6815 live6815 coloured6815 = result6815 := by
  rw [tree6815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
