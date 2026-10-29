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
theorem tree8736_agree_conditional
    (child0 : tree8734 = literal8734)
    (child1 : tree8735 = literal8735) : tree8736 = literal8736 := by
  rw [tree8736_def, child0, child1]
  rfl
theorem node8736_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8734 live8734 coloured8734 = result8734)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8735 live8735 coloured8735 = result8735) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8736 live8736 coloured8736 = result8736 := by
  rw [tree8736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8734 coloured8734 at child
  try dsimp only [live8736, coloured8736]
  rw [child]
  dsimp only [result8734]
  have child := child1
  unfold live8735 coloured8735 at child
  try dsimp only [live8736, coloured8736]
  rw [child]
  dsimp only [result8735]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8737_agree_conditional : tree8737 = literal8737 := by
  rw [tree8737_def]
  rfl
theorem node8737_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8737 live8737 coloured8737 = result8737 := by
  rw [tree8737_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8738_agree_conditional
    (child0 : tree8736 = literal8736)
    (child1 : tree8737 = literal8737) : tree8738 = literal8738 := by
  rw [tree8738_def, child0, child1]
  rfl
theorem node8738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8736 live8736 coloured8736 = result8736)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8737 live8737 coloured8737 = result8737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8738 live8738 coloured8738 = result8738 := by
  rw [tree8738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8736 coloured8736 at child
  try dsimp only [live8738, coloured8738]
  rw [child]
  dsimp only [result8736]
  have child := child1
  unfold live8737 coloured8737 at child
  try dsimp only [live8738, coloured8738]
  rw [child]
  dsimp only [result8737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8739_agree_conditional : tree8739 = literal8739 := by
  rw [tree8739_def]
  rfl
theorem node8739_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8739 live8739 coloured8739 = result8739 := by
  rw [tree8739_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8740_agree_conditional
    (child0 : tree8738 = literal8738)
    (child1 : tree8739 = literal8739) : tree8740 = literal8740 := by
  rw [tree8740_def, child0, child1]
  rfl
theorem node8740_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8738 live8738 coloured8738 = result8738)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8739 live8739 coloured8739 = result8739) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8740 live8740 coloured8740 = result8740 := by
  rw [tree8740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8738 coloured8738 at child
  try dsimp only [live8740, coloured8740]
  rw [child]
  dsimp only [result8738]
  have child := child1
  unfold live8739 coloured8739 at child
  try dsimp only [live8740, coloured8740]
  rw [child]
  dsimp only [result8739]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8741_agree_conditional : tree8741 = literal8741 := by
  rw [tree8741_def]
  rfl
theorem node8741_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8741 live8741 coloured8741 = result8741 := by
  rw [tree8741_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8742_agree_conditional
    (child0 : tree8740 = literal8740)
    (child1 : tree8741 = literal8741) : tree8742 = literal8742 := by
  rw [tree8742_def, child0, child1]
  rfl
theorem node8742_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8740 live8740 coloured8740 = result8740)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8741 live8741 coloured8741 = result8741) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8742 live8742 coloured8742 = result8742 := by
  rw [tree8742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8740 coloured8740 at child
  try dsimp only [live8742, coloured8742]
  rw [child]
  dsimp only [result8740]
  have child := child1
  unfold live8741 coloured8741 at child
  try dsimp only [live8742, coloured8742]
  rw [child]
  dsimp only [result8741]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8743_agree_conditional : tree8743 = literal8743 := by
  rw [tree8743_def]
  rfl
theorem node8743_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8743 live8743 coloured8743 = result8743 := by
  rw [tree8743_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8744_agree_conditional
    (child0 : tree8742 = literal8742)
    (child1 : tree8743 = literal8743) : tree8744 = literal8744 := by
  rw [tree8744_def, child0, child1]
  rfl
theorem node8744_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8742 live8742 coloured8742 = result8742)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8743 live8743 coloured8743 = result8743) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8744 live8744 coloured8744 = result8744 := by
  rw [tree8744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8742 coloured8742 at child
  try dsimp only [live8744, coloured8744]
  rw [child]
  dsimp only [result8742]
  have child := child1
  unfold live8743 coloured8743 at child
  try dsimp only [live8744, coloured8744]
  rw [child]
  dsimp only [result8743]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8745_agree_conditional : tree8745 = literal8745 := by
  rw [tree8745_def]
  rfl
theorem node8745_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8745 live8745 coloured8745 = result8745 := by
  rw [tree8745_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8746_agree_conditional
    (child0 : tree8744 = literal8744)
    (child1 : tree8745 = literal8745) : tree8746 = literal8746 := by
  rw [tree8746_def, child0, child1]
  rfl
theorem node8746_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8744 live8744 coloured8744 = result8744)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8745 live8745 coloured8745 = result8745) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8746 live8746 coloured8746 = result8746 := by
  rw [tree8746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8744 coloured8744 at child
  try dsimp only [live8746, coloured8746]
  rw [child]
  dsimp only [result8744]
  have child := child1
  unfold live8745 coloured8745 at child
  try dsimp only [live8746, coloured8746]
  rw [child]
  dsimp only [result8745]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8747_agree_conditional : tree8747 = literal8747 := by
  rw [tree8747_def]
  rfl
theorem node8747_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8747 live8747 coloured8747 = result8747 := by
  rw [tree8747_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8748_agree_conditional
    (child0 : tree8746 = literal8746)
    (child1 : tree8747 = literal8747) : tree8748 = literal8748 := by
  rw [tree8748_def, child0, child1]
  rfl
theorem node8748_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8746 live8746 coloured8746 = result8746)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8747 live8747 coloured8747 = result8747) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8748 live8748 coloured8748 = result8748 := by
  rw [tree8748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8746 coloured8746 at child
  try dsimp only [live8748, coloured8748]
  rw [child]
  dsimp only [result8746]
  have child := child1
  unfold live8747 coloured8747 at child
  try dsimp only [live8748, coloured8748]
  rw [child]
  dsimp only [result8747]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8749_agree_conditional : tree8749 = literal8749 := by
  rw [tree8749_def]
  rfl
theorem node8749_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8749 live8749 coloured8749 = result8749 := by
  rw [tree8749_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8750_agree_conditional
    (child0 : tree8748 = literal8748)
    (child1 : tree8749 = literal8749) : tree8750 = literal8750 := by
  rw [tree8750_def, child0, child1]
  rfl
theorem node8750_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8748 live8748 coloured8748 = result8748)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8749 live8749 coloured8749 = result8749) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8750 live8750 coloured8750 = result8750 := by
  rw [tree8750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8748 coloured8748 at child
  try dsimp only [live8750, coloured8750]
  rw [child]
  dsimp only [result8748]
  have child := child1
  unfold live8749 coloured8749 at child
  try dsimp only [live8750, coloured8750]
  rw [child]
  dsimp only [result8749]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8751_agree_conditional : tree8751 = literal8751 := by
  rw [tree8751_def]
  rfl
theorem node8751_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8751 live8751 coloured8751 = result8751 := by
  rw [tree8751_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8752_agree_conditional
    (child0 : tree8750 = literal8750)
    (child1 : tree8751 = literal8751) : tree8752 = literal8752 := by
  rw [tree8752_def, child0, child1]
  rfl
theorem node8752_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8750 live8750 coloured8750 = result8750)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8751 live8751 coloured8751 = result8751) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8752 live8752 coloured8752 = result8752 := by
  rw [tree8752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8750 coloured8750 at child
  try dsimp only [live8752, coloured8752]
  rw [child]
  dsimp only [result8750]
  have child := child1
  unfold live8751 coloured8751 at child
  try dsimp only [live8752, coloured8752]
  rw [child]
  dsimp only [result8751]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8753_agree_conditional : tree8753 = literal8753 := by
  rw [tree8753_def]
  rfl
theorem node8753_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8753 live8753 coloured8753 = result8753 := by
  rw [tree8753_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8754_agree_conditional
    (child0 : tree8752 = literal8752)
    (child1 : tree8753 = literal8753) : tree8754 = literal8754 := by
  rw [tree8754_def, child0, child1]
  rfl
theorem node8754_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8752 live8752 coloured8752 = result8752)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8753 live8753 coloured8753 = result8753) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8754 live8754 coloured8754 = result8754 := by
  rw [tree8754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8752 coloured8752 at child
  try dsimp only [live8754, coloured8754]
  rw [child]
  dsimp only [result8752]
  have child := child1
  unfold live8753 coloured8753 at child
  try dsimp only [live8754, coloured8754]
  rw [child]
  dsimp only [result8753]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8755_agree_conditional : tree8755 = literal8755 := by
  rw [tree8755_def]
  rfl
theorem node8755_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8755 live8755 coloured8755 = result8755 := by
  rw [tree8755_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8756_agree_conditional
    (child0 : tree8754 = literal8754)
    (child1 : tree8755 = literal8755) : tree8756 = literal8756 := by
  rw [tree8756_def, child0, child1]
  rfl
theorem node8756_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8754 live8754 coloured8754 = result8754)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8755 live8755 coloured8755 = result8755) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8756 live8756 coloured8756 = result8756 := by
  rw [tree8756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8754 coloured8754 at child
  try dsimp only [live8756, coloured8756]
  rw [child]
  dsimp only [result8754]
  have child := child1
  unfold live8755 coloured8755 at child
  try dsimp only [live8756, coloured8756]
  rw [child]
  dsimp only [result8755]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8757_agree_conditional : tree8757 = literal8757 := by
  rw [tree8757_def]
  rfl
theorem node8757_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8757 live8757 coloured8757 = result8757 := by
  rw [tree8757_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8758_agree_conditional
    (child0 : tree8756 = literal8756)
    (child1 : tree8757 = literal8757) : tree8758 = literal8758 := by
  rw [tree8758_def, child0, child1]
  rfl
theorem node8758_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8756 live8756 coloured8756 = result8756)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8757 live8757 coloured8757 = result8757) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8758 live8758 coloured8758 = result8758 := by
  rw [tree8758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8756 coloured8756 at child
  try dsimp only [live8758, coloured8758]
  rw [child]
  dsimp only [result8756]
  have child := child1
  unfold live8757 coloured8757 at child
  try dsimp only [live8758, coloured8758]
  rw [child]
  dsimp only [result8757]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8759_agree_conditional : tree8759 = literal8759 := by
  rw [tree8759_def]
  rfl
theorem node8759_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8759 live8759 coloured8759 = result8759 := by
  rw [tree8759_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8760_agree_conditional
    (child0 : tree8758 = literal8758)
    (child1 : tree8759 = literal8759) : tree8760 = literal8760 := by
  rw [tree8760_def, child0, child1]
  rfl
theorem node8760_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8758 live8758 coloured8758 = result8758)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8759 live8759 coloured8759 = result8759) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8760 live8760 coloured8760 = result8760 := by
  rw [tree8760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8758 coloured8758 at child
  try dsimp only [live8760, coloured8760]
  rw [child]
  dsimp only [result8758]
  have child := child1
  unfold live8759 coloured8759 at child
  try dsimp only [live8760, coloured8760]
  rw [child]
  dsimp only [result8759]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8761_agree_conditional : tree8761 = literal8761 := by
  rw [tree8761_def]
  rfl
theorem node8761_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8761 live8761 coloured8761 = result8761 := by
  rw [tree8761_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8762_agree_conditional
    (child0 : tree8760 = literal8760)
    (child1 : tree8761 = literal8761) : tree8762 = literal8762 := by
  rw [tree8762_def, child0, child1]
  rfl
theorem node8762_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8760 live8760 coloured8760 = result8760)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8761 live8761 coloured8761 = result8761) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8762 live8762 coloured8762 = result8762 := by
  rw [tree8762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8760 coloured8760 at child
  try dsimp only [live8762, coloured8762]
  rw [child]
  dsimp only [result8760]
  have child := child1
  unfold live8761 coloured8761 at child
  try dsimp only [live8762, coloured8762]
  rw [child]
  dsimp only [result8761]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8763_agree_conditional : tree8763 = literal8763 := by
  rw [tree8763_def]
  rfl
theorem node8763_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8763 live8763 coloured8763 = result8763 := by
  rw [tree8763_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8764_agree_conditional
    (child0 : tree8762 = literal8762)
    (child1 : tree8763 = literal8763) : tree8764 = literal8764 := by
  rw [tree8764_def, child0, child1]
  rfl
theorem node8764_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8762 live8762 coloured8762 = result8762)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8763 live8763 coloured8763 = result8763) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8764 live8764 coloured8764 = result8764 := by
  rw [tree8764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8762 coloured8762 at child
  try dsimp only [live8764, coloured8764]
  rw [child]
  dsimp only [result8762]
  have child := child1
  unfold live8763 coloured8763 at child
  try dsimp only [live8764, coloured8764]
  rw [child]
  dsimp only [result8763]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8765_agree_conditional : tree8765 = literal8765 := by
  rw [tree8765_def]
  rfl
theorem node8765_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8765 live8765 coloured8765 = result8765 := by
  rw [tree8765_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8766_agree_conditional
    (child0 : tree8764 = literal8764)
    (child1 : tree8765 = literal8765) : tree8766 = literal8766 := by
  rw [tree8766_def, child0, child1]
  rfl
theorem node8766_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8764 live8764 coloured8764 = result8764)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8765 live8765 coloured8765 = result8765) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8766 live8766 coloured8766 = result8766 := by
  rw [tree8766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8764 coloured8764 at child
  try dsimp only [live8766, coloured8766]
  rw [child]
  dsimp only [result8764]
  have child := child1
  unfold live8765 coloured8765 at child
  try dsimp only [live8766, coloured8766]
  rw [child]
  dsimp only [result8765]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8767_agree_conditional : tree8767 = literal8767 := by
  rw [tree8767_def]
  rfl
theorem node8767_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8767 live8767 coloured8767 = result8767 := by
  rw [tree8767_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8768_agree_conditional
    (child0 : tree8766 = literal8766)
    (child1 : tree8767 = literal8767) : tree8768 = literal8768 := by
  rw [tree8768_def, child0, child1]
  rfl
theorem node8768_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8766 live8766 coloured8766 = result8766)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8767 live8767 coloured8767 = result8767) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8768 live8768 coloured8768 = result8768 := by
  rw [tree8768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8766 coloured8766 at child
  try dsimp only [live8768, coloured8768]
  rw [child]
  dsimp only [result8766]
  have child := child1
  unfold live8767 coloured8767 at child
  try dsimp only [live8768, coloured8768]
  rw [child]
  dsimp only [result8767]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8769_agree_conditional : tree8769 = literal8769 := by
  rw [tree8769_def]
  rfl
theorem node8769_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8769 live8769 coloured8769 = result8769 := by
  rw [tree8769_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8770_agree_conditional
    (child0 : tree8768 = literal8768)
    (child1 : tree8769 = literal8769) : tree8770 = literal8770 := by
  rw [tree8770_def, child0, child1]
  rfl
theorem node8770_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8768 live8768 coloured8768 = result8768)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8769 live8769 coloured8769 = result8769) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8770 live8770 coloured8770 = result8770 := by
  rw [tree8770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8768 coloured8768 at child
  try dsimp only [live8770, coloured8770]
  rw [child]
  dsimp only [result8768]
  have child := child1
  unfold live8769 coloured8769 at child
  try dsimp only [live8770, coloured8770]
  rw [child]
  dsimp only [result8769]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8771_agree_conditional : tree8771 = literal8771 := by
  rw [tree8771_def]
  rfl
theorem node8771_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8771 live8771 coloured8771 = result8771 := by
  rw [tree8771_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8772_agree_conditional
    (child0 : tree8770 = literal8770)
    (child1 : tree8771 = literal8771) : tree8772 = literal8772 := by
  rw [tree8772_def, child0, child1]
  rfl
theorem node8772_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8770 live8770 coloured8770 = result8770)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8771 live8771 coloured8771 = result8771) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8772 live8772 coloured8772 = result8772 := by
  rw [tree8772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8770 coloured8770 at child
  try dsimp only [live8772, coloured8772]
  rw [child]
  dsimp only [result8770]
  have child := child1
  unfold live8771 coloured8771 at child
  try dsimp only [live8772, coloured8772]
  rw [child]
  dsimp only [result8771]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8773_agree_conditional : tree8773 = literal8773 := by
  rw [tree8773_def]
  rfl
theorem node8773_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8773 live8773 coloured8773 = result8773 := by
  rw [tree8773_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8774_agree_conditional
    (child0 : tree8772 = literal8772)
    (child1 : tree8773 = literal8773) : tree8774 = literal8774 := by
  rw [tree8774_def, child0, child1]
  rfl
theorem node8774_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8772 live8772 coloured8772 = result8772)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8773 live8773 coloured8773 = result8773) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8774 live8774 coloured8774 = result8774 := by
  rw [tree8774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8772 coloured8772 at child
  try dsimp only [live8774, coloured8774]
  rw [child]
  dsimp only [result8772]
  have child := child1
  unfold live8773 coloured8773 at child
  try dsimp only [live8774, coloured8774]
  rw [child]
  dsimp only [result8773]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8775_agree_conditional : tree8775 = literal8775 := by
  rw [tree8775_def]
  rfl
theorem node8775_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8775 live8775 coloured8775 = result8775 := by
  rw [tree8775_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8776_agree_conditional
    (child0 : tree8774 = literal8774)
    (child1 : tree8775 = literal8775) : tree8776 = literal8776 := by
  rw [tree8776_def, child0, child1]
  rfl
theorem node8776_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8774 live8774 coloured8774 = result8774)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8775 live8775 coloured8775 = result8775) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8776 live8776 coloured8776 = result8776 := by
  rw [tree8776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8774 coloured8774 at child
  try dsimp only [live8776, coloured8776]
  rw [child]
  dsimp only [result8774]
  have child := child1
  unfold live8775 coloured8775 at child
  try dsimp only [live8776, coloured8776]
  rw [child]
  dsimp only [result8775]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8777_agree_conditional : tree8777 = literal8777 := by
  rw [tree8777_def]
  rfl
theorem node8777_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8777 live8777 coloured8777 = result8777 := by
  rw [tree8777_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8778_agree_conditional
    (child0 : tree8776 = literal8776)
    (child1 : tree8777 = literal8777) : tree8778 = literal8778 := by
  rw [tree8778_def, child0, child1]
  rfl
theorem node8778_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8776 live8776 coloured8776 = result8776)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8777 live8777 coloured8777 = result8777) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8778 live8778 coloured8778 = result8778 := by
  rw [tree8778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8776 coloured8776 at child
  try dsimp only [live8778, coloured8778]
  rw [child]
  dsimp only [result8776]
  have child := child1
  unfold live8777 coloured8777 at child
  try dsimp only [live8778, coloured8778]
  rw [child]
  dsimp only [result8777]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8779_agree_conditional : tree8779 = literal8779 := by
  rw [tree8779_def]
  rfl
theorem node8779_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8779 live8779 coloured8779 = result8779 := by
  rw [tree8779_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8780_agree_conditional
    (child0 : tree8778 = literal8778)
    (child1 : tree8779 = literal8779) : tree8780 = literal8780 := by
  rw [tree8780_def, child0, child1]
  rfl
theorem node8780_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8778 live8778 coloured8778 = result8778)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8779 live8779 coloured8779 = result8779) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8780 live8780 coloured8780 = result8780 := by
  rw [tree8780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8778 coloured8778 at child
  try dsimp only [live8780, coloured8780]
  rw [child]
  dsimp only [result8778]
  have child := child1
  unfold live8779 coloured8779 at child
  try dsimp only [live8780, coloured8780]
  rw [child]
  dsimp only [result8779]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8781_agree_conditional : tree8781 = literal8781 := by
  rw [tree8781_def]
  rfl
theorem node8781_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8781 live8781 coloured8781 = result8781 := by
  rw [tree8781_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8782_agree_conditional
    (child0 : tree8780 = literal8780)
    (child1 : tree8781 = literal8781) : tree8782 = literal8782 := by
  rw [tree8782_def, child0, child1]
  rfl
theorem node8782_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8780 live8780 coloured8780 = result8780)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8781 live8781 coloured8781 = result8781) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8782 live8782 coloured8782 = result8782 := by
  rw [tree8782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8780 coloured8780 at child
  try dsimp only [live8782, coloured8782]
  rw [child]
  dsimp only [result8780]
  have child := child1
  unfold live8781 coloured8781 at child
  try dsimp only [live8782, coloured8782]
  rw [child]
  dsimp only [result8781]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8783_agree_conditional : tree8783 = literal8783 := by
  rw [tree8783_def]
  rfl
theorem node8783_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8783 live8783 coloured8783 = result8783 := by
  rw [tree8783_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8784_agree_conditional
    (child0 : tree8782 = literal8782)
    (child1 : tree8783 = literal8783) : tree8784 = literal8784 := by
  rw [tree8784_def, child0, child1]
  rfl
theorem node8784_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8782 live8782 coloured8782 = result8782)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8783 live8783 coloured8783 = result8783) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8784 live8784 coloured8784 = result8784 := by
  rw [tree8784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8782 coloured8782 at child
  try dsimp only [live8784, coloured8784]
  rw [child]
  dsimp only [result8782]
  have child := child1
  unfold live8783 coloured8783 at child
  try dsimp only [live8784, coloured8784]
  rw [child]
  dsimp only [result8783]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8785_agree_conditional : tree8785 = literal8785 := by
  rw [tree8785_def]
  rfl
theorem node8785_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8785 live8785 coloured8785 = result8785 := by
  rw [tree8785_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8786_agree_conditional
    (child0 : tree8784 = literal8784)
    (child1 : tree8785 = literal8785) : tree8786 = literal8786 := by
  rw [tree8786_def, child0, child1]
  rfl
theorem node8786_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8784 live8784 coloured8784 = result8784)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8785 live8785 coloured8785 = result8785) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8786 live8786 coloured8786 = result8786 := by
  rw [tree8786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8784 coloured8784 at child
  try dsimp only [live8786, coloured8786]
  rw [child]
  dsimp only [result8784]
  have child := child1
  unfold live8785 coloured8785 at child
  try dsimp only [live8786, coloured8786]
  rw [child]
  dsimp only [result8785]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8787_agree_conditional : tree8787 = literal8787 := by
  rw [tree8787_def]
  rfl
theorem node8787_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8787 live8787 coloured8787 = result8787 := by
  rw [tree8787_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8788_agree_conditional
    (child0 : tree8786 = literal8786)
    (child1 : tree8787 = literal8787) : tree8788 = literal8788 := by
  rw [tree8788_def, child0, child1]
  rfl
theorem node8788_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8786 live8786 coloured8786 = result8786)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8787 live8787 coloured8787 = result8787) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8788 live8788 coloured8788 = result8788 := by
  rw [tree8788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8786 coloured8786 at child
  try dsimp only [live8788, coloured8788]
  rw [child]
  dsimp only [result8786]
  have child := child1
  unfold live8787 coloured8787 at child
  try dsimp only [live8788, coloured8788]
  rw [child]
  dsimp only [result8787]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8789_agree_conditional : tree8789 = literal8789 := by
  rw [tree8789_def]
  rfl
theorem node8789_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8789 live8789 coloured8789 = result8789 := by
  rw [tree8789_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8790_agree_conditional
    (child0 : tree8788 = literal8788)
    (child1 : tree8789 = literal8789) : tree8790 = literal8790 := by
  rw [tree8790_def, child0, child1]
  rfl
theorem node8790_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8788 live8788 coloured8788 = result8788)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8789 live8789 coloured8789 = result8789) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8790 live8790 coloured8790 = result8790 := by
  rw [tree8790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8788 coloured8788 at child
  try dsimp only [live8790, coloured8790]
  rw [child]
  dsimp only [result8788]
  have child := child1
  unfold live8789 coloured8789 at child
  try dsimp only [live8790, coloured8790]
  rw [child]
  dsimp only [result8789]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8791_agree_conditional : tree8791 = literal8791 := by
  rw [tree8791_def]
  rfl
theorem node8791_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8791 live8791 coloured8791 = result8791 := by
  rw [tree8791_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8792_agree_conditional
    (child0 : tree8790 = literal8790)
    (child1 : tree8791 = literal8791) : tree8792 = literal8792 := by
  rw [tree8792_def, child0, child1]
  rfl
theorem node8792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8790 live8790 coloured8790 = result8790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8791 live8791 coloured8791 = result8791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8792 live8792 coloured8792 = result8792 := by
  rw [tree8792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8790 coloured8790 at child
  try dsimp only [live8792, coloured8792]
  rw [child]
  dsimp only [result8790]
  have child := child1
  unfold live8791 coloured8791 at child
  try dsimp only [live8792, coloured8792]
  rw [child]
  dsimp only [result8791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8793_agree_conditional : tree8793 = literal8793 := by
  rw [tree8793_def]
  rfl
theorem node8793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8793 live8793 coloured8793 = result8793 := by
  rw [tree8793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8794_agree_conditional
    (child0 : tree8792 = literal8792)
    (child1 : tree8793 = literal8793) : tree8794 = literal8794 := by
  rw [tree8794_def, child0, child1]
  rfl
theorem node8794_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8792 live8792 coloured8792 = result8792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8793 live8793 coloured8793 = result8793) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8794 live8794 coloured8794 = result8794 := by
  rw [tree8794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8792 coloured8792 at child
  try dsimp only [live8794, coloured8794]
  rw [child]
  dsimp only [result8792]
  have child := child1
  unfold live8793 coloured8793 at child
  try dsimp only [live8794, coloured8794]
  rw [child]
  dsimp only [result8793]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8795_agree_conditional : tree8795 = literal8795 := by
  rw [tree8795_def]
  rfl
theorem node8795_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8795 live8795 coloured8795 = result8795 := by
  rw [tree8795_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8796_agree_conditional
    (child0 : tree8794 = literal8794)
    (child1 : tree8795 = literal8795) : tree8796 = literal8796 := by
  rw [tree8796_def, child0, child1]
  rfl
theorem node8796_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8794 live8794 coloured8794 = result8794)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8795 live8795 coloured8795 = result8795) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8796 live8796 coloured8796 = result8796 := by
  rw [tree8796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8794 coloured8794 at child
  try dsimp only [live8796, coloured8796]
  rw [child]
  dsimp only [result8794]
  have child := child1
  unfold live8795 coloured8795 at child
  try dsimp only [live8796, coloured8796]
  rw [child]
  dsimp only [result8795]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8797_agree_conditional : tree8797 = literal8797 := by
  rw [tree8797_def]
  rfl
theorem node8797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8797 live8797 coloured8797 = result8797 := by
  rw [tree8797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8798_agree_conditional
    (child0 : tree8796 = literal8796)
    (child1 : tree8797 = literal8797) : tree8798 = literal8798 := by
  rw [tree8798_def, child0, child1]
  rfl
theorem node8798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8796 live8796 coloured8796 = result8796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8797 live8797 coloured8797 = result8797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8798 live8798 coloured8798 = result8798 := by
  rw [tree8798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8796 coloured8796 at child
  try dsimp only [live8798, coloured8798]
  rw [child]
  dsimp only [result8796]
  have child := child1
  unfold live8797 coloured8797 at child
  try dsimp only [live8798, coloured8798]
  rw [child]
  dsimp only [result8797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8799_agree_conditional : tree8799 = literal8799 := by
  rw [tree8799_def]
  rfl
theorem node8799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8799 live8799 coloured8799 = result8799 := by
  rw [tree8799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8800_agree_conditional
    (child0 : tree8798 = literal8798)
    (child1 : tree8799 = literal8799) : tree8800 = literal8800 := by
  rw [tree8800_def, child0, child1]
  rfl
theorem node8800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8798 live8798 coloured8798 = result8798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8799 live8799 coloured8799 = result8799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8800 live8800 coloured8800 = result8800 := by
  rw [tree8800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8798 coloured8798 at child
  try dsimp only [live8800, coloured8800]
  rw [child]
  dsimp only [result8798]
  have child := child1
  unfold live8799 coloured8799 at child
  try dsimp only [live8800, coloured8800]
  rw [child]
  dsimp only [result8799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8801_agree_conditional : tree8801 = literal8801 := by
  rw [tree8801_def]
  rfl
theorem node8801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8801 live8801 coloured8801 = result8801 := by
  rw [tree8801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8802_agree_conditional
    (child0 : tree8800 = literal8800)
    (child1 : tree8801 = literal8801) : tree8802 = literal8802 := by
  rw [tree8802_def, child0, child1]
  rfl
theorem node8802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8800 live8800 coloured8800 = result8800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8801 live8801 coloured8801 = result8801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8802 live8802 coloured8802 = result8802 := by
  rw [tree8802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8800 coloured8800 at child
  try dsimp only [live8802, coloured8802]
  rw [child]
  dsimp only [result8800]
  have child := child1
  unfold live8801 coloured8801 at child
  try dsimp only [live8802, coloured8802]
  rw [child]
  dsimp only [result8801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8803_agree_conditional : tree8803 = literal8803 := by
  rw [tree8803_def]
  rfl
theorem node8803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8803 live8803 coloured8803 = result8803 := by
  rw [tree8803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8804_agree_conditional
    (child0 : tree8802 = literal8802)
    (child1 : tree8803 = literal8803) : tree8804 = literal8804 := by
  rw [tree8804_def, child0, child1]
  rfl
theorem node8804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8802 live8802 coloured8802 = result8802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8803 live8803 coloured8803 = result8803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8804 live8804 coloured8804 = result8804 := by
  rw [tree8804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8802 coloured8802 at child
  try dsimp only [live8804, coloured8804]
  rw [child]
  dsimp only [result8802]
  have child := child1
  unfold live8803 coloured8803 at child
  try dsimp only [live8804, coloured8804]
  rw [child]
  dsimp only [result8803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8805_agree_conditional : tree8805 = literal8805 := by
  rw [tree8805_def]
  rfl
theorem node8805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8805 live8805 coloured8805 = result8805 := by
  rw [tree8805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8806_agree_conditional
    (child0 : tree8804 = literal8804)
    (child1 : tree8805 = literal8805) : tree8806 = literal8806 := by
  rw [tree8806_def, child0, child1]
  rfl
theorem node8806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8804 live8804 coloured8804 = result8804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8805 live8805 coloured8805 = result8805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8806 live8806 coloured8806 = result8806 := by
  rw [tree8806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8804 coloured8804 at child
  try dsimp only [live8806, coloured8806]
  rw [child]
  dsimp only [result8804]
  have child := child1
  unfold live8805 coloured8805 at child
  try dsimp only [live8806, coloured8806]
  rw [child]
  dsimp only [result8805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8807_agree_conditional : tree8807 = literal8807 := by
  rw [tree8807_def]
  rfl
theorem node8807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8807 live8807 coloured8807 = result8807 := by
  rw [tree8807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8808_agree_conditional
    (child0 : tree8806 = literal8806)
    (child1 : tree8807 = literal8807) : tree8808 = literal8808 := by
  rw [tree8808_def, child0, child1]
  rfl
theorem node8808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8806 live8806 coloured8806 = result8806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8807 live8807 coloured8807 = result8807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8808 live8808 coloured8808 = result8808 := by
  rw [tree8808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8806 coloured8806 at child
  try dsimp only [live8808, coloured8808]
  rw [child]
  dsimp only [result8806]
  have child := child1
  unfold live8807 coloured8807 at child
  try dsimp only [live8808, coloured8808]
  rw [child]
  dsimp only [result8807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8809_agree_conditional : tree8809 = literal8809 := by
  rw [tree8809_def]
  rfl
theorem node8809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8809 live8809 coloured8809 = result8809 := by
  rw [tree8809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8810_agree_conditional
    (child0 : tree8808 = literal8808)
    (child1 : tree8809 = literal8809) : tree8810 = literal8810 := by
  rw [tree8810_def, child0, child1]
  rfl
theorem node8810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8808 live8808 coloured8808 = result8808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8809 live8809 coloured8809 = result8809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8810 live8810 coloured8810 = result8810 := by
  rw [tree8810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8808 coloured8808 at child
  try dsimp only [live8810, coloured8810]
  rw [child]
  dsimp only [result8808]
  have child := child1
  unfold live8809 coloured8809 at child
  try dsimp only [live8810, coloured8810]
  rw [child]
  dsimp only [result8809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8811_agree_conditional : tree8811 = literal8811 := by
  rw [tree8811_def]
  rfl
theorem node8811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8811 live8811 coloured8811 = result8811 := by
  rw [tree8811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8812_agree_conditional
    (child0 : tree8810 = literal8810)
    (child1 : tree8811 = literal8811) : tree8812 = literal8812 := by
  rw [tree8812_def, child0, child1]
  rfl
theorem node8812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8810 live8810 coloured8810 = result8810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8811 live8811 coloured8811 = result8811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8812 live8812 coloured8812 = result8812 := by
  rw [tree8812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8810 coloured8810 at child
  try dsimp only [live8812, coloured8812]
  rw [child]
  dsimp only [result8810]
  have child := child1
  unfold live8811 coloured8811 at child
  try dsimp only [live8812, coloured8812]
  rw [child]
  dsimp only [result8811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8813_agree_conditional : tree8813 = literal8813 := by
  rw [tree8813_def]
  rfl
theorem node8813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8813 live8813 coloured8813 = result8813 := by
  rw [tree8813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8814_agree_conditional
    (child0 : tree8812 = literal8812)
    (child1 : tree8813 = literal8813) : tree8814 = literal8814 := by
  rw [tree8814_def, child0, child1]
  rfl
theorem node8814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8812 live8812 coloured8812 = result8812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8813 live8813 coloured8813 = result8813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8814 live8814 coloured8814 = result8814 := by
  rw [tree8814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8812 coloured8812 at child
  try dsimp only [live8814, coloured8814]
  rw [child]
  dsimp only [result8812]
  have child := child1
  unfold live8813 coloured8813 at child
  try dsimp only [live8814, coloured8814]
  rw [child]
  dsimp only [result8813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8815_agree_conditional : tree8815 = literal8815 := by
  rw [tree8815_def]
  rfl
theorem node8815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8815 live8815 coloured8815 = result8815 := by
  rw [tree8815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8816_agree_conditional
    (child0 : tree8814 = literal8814)
    (child1 : tree8815 = literal8815) : tree8816 = literal8816 := by
  rw [tree8816_def, child0, child1]
  rfl
theorem node8816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8814 live8814 coloured8814 = result8814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8815 live8815 coloured8815 = result8815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8816 live8816 coloured8816 = result8816 := by
  rw [tree8816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8814 coloured8814 at child
  try dsimp only [live8816, coloured8816]
  rw [child]
  dsimp only [result8814]
  have child := child1
  unfold live8815 coloured8815 at child
  try dsimp only [live8816, coloured8816]
  rw [child]
  dsimp only [result8815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8817_agree_conditional : tree8817 = literal8817 := by
  rw [tree8817_def]
  rfl
theorem node8817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8817 live8817 coloured8817 = result8817 := by
  rw [tree8817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8818_agree_conditional
    (child0 : tree8816 = literal8816)
    (child1 : tree8817 = literal8817) : tree8818 = literal8818 := by
  rw [tree8818_def, child0, child1]
  rfl
theorem node8818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8816 live8816 coloured8816 = result8816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8817 live8817 coloured8817 = result8817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8818 live8818 coloured8818 = result8818 := by
  rw [tree8818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8816 coloured8816 at child
  try dsimp only [live8818, coloured8818]
  rw [child]
  dsimp only [result8816]
  have child := child1
  unfold live8817 coloured8817 at child
  try dsimp only [live8818, coloured8818]
  rw [child]
  dsimp only [result8817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8819_agree_conditional : tree8819 = literal8819 := by
  rw [tree8819_def]
  rfl
theorem node8819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8819 live8819 coloured8819 = result8819 := by
  rw [tree8819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8820_agree_conditional
    (child0 : tree8818 = literal8818)
    (child1 : tree8819 = literal8819) : tree8820 = literal8820 := by
  rw [tree8820_def, child0, child1]
  rfl
theorem node8820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8818 live8818 coloured8818 = result8818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8819 live8819 coloured8819 = result8819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8820 live8820 coloured8820 = result8820 := by
  rw [tree8820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8818 coloured8818 at child
  try dsimp only [live8820, coloured8820]
  rw [child]
  dsimp only [result8818]
  have child := child1
  unfold live8819 coloured8819 at child
  try dsimp only [live8820, coloured8820]
  rw [child]
  dsimp only [result8819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8821_agree_conditional : tree8821 = literal8821 := by
  rw [tree8821_def]
  rfl
theorem node8821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8821 live8821 coloured8821 = result8821 := by
  rw [tree8821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8822_agree_conditional
    (child0 : tree8820 = literal8820)
    (child1 : tree8821 = literal8821) : tree8822 = literal8822 := by
  rw [tree8822_def, child0, child1]
  rfl
theorem node8822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8820 live8820 coloured8820 = result8820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8821 live8821 coloured8821 = result8821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8822 live8822 coloured8822 = result8822 := by
  rw [tree8822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8820 coloured8820 at child
  try dsimp only [live8822, coloured8822]
  rw [child]
  dsimp only [result8820]
  have child := child1
  unfold live8821 coloured8821 at child
  try dsimp only [live8822, coloured8822]
  rw [child]
  dsimp only [result8821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8823_agree_conditional : tree8823 = literal8823 := by
  rw [tree8823_def]
  rfl
theorem node8823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8823 live8823 coloured8823 = result8823 := by
  rw [tree8823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8824_agree_conditional
    (child0 : tree8822 = literal8822)
    (child1 : tree8823 = literal8823) : tree8824 = literal8824 := by
  rw [tree8824_def, child0, child1]
  rfl
theorem node8824_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8822 live8822 coloured8822 = result8822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8823 live8823 coloured8823 = result8823) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8824 live8824 coloured8824 = result8824 := by
  rw [tree8824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8822 coloured8822 at child
  try dsimp only [live8824, coloured8824]
  rw [child]
  dsimp only [result8822]
  have child := child1
  unfold live8823 coloured8823 at child
  try dsimp only [live8824, coloured8824]
  rw [child]
  dsimp only [result8823]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8825_agree_conditional : tree8825 = literal8825 := by
  rw [tree8825_def]
  rfl
theorem node8825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8825 live8825 coloured8825 = result8825 := by
  rw [tree8825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8826_agree_conditional
    (child0 : tree8824 = literal8824)
    (child1 : tree8825 = literal8825) : tree8826 = literal8826 := by
  rw [tree8826_def, child0, child1]
  rfl
theorem node8826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8824 live8824 coloured8824 = result8824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8825 live8825 coloured8825 = result8825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8826 live8826 coloured8826 = result8826 := by
  rw [tree8826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8824 coloured8824 at child
  try dsimp only [live8826, coloured8826]
  rw [child]
  dsimp only [result8824]
  have child := child1
  unfold live8825 coloured8825 at child
  try dsimp only [live8826, coloured8826]
  rw [child]
  dsimp only [result8825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8827_agree_conditional : tree8827 = literal8827 := by
  rw [tree8827_def]
  rfl
theorem node8827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8827 live8827 coloured8827 = result8827 := by
  rw [tree8827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8828_agree_conditional
    (child0 : tree8826 = literal8826)
    (child1 : tree8827 = literal8827) : tree8828 = literal8828 := by
  rw [tree8828_def, child0, child1]
  rfl
theorem node8828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8826 live8826 coloured8826 = result8826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8827 live8827 coloured8827 = result8827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8828 live8828 coloured8828 = result8828 := by
  rw [tree8828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8826 coloured8826 at child
  try dsimp only [live8828, coloured8828]
  rw [child]
  dsimp only [result8826]
  have child := child1
  unfold live8827 coloured8827 at child
  try dsimp only [live8828, coloured8828]
  rw [child]
  dsimp only [result8827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8829_agree_conditional : tree8829 = literal8829 := by
  rw [tree8829_def]
  rfl
theorem node8829_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8829 live8829 coloured8829 = result8829 := by
  rw [tree8829_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8830_agree_conditional
    (child0 : tree8828 = literal8828)
    (child1 : tree8829 = literal8829) : tree8830 = literal8830 := by
  rw [tree8830_def, child0, child1]
  rfl
theorem node8830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8828 live8828 coloured8828 = result8828)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8829 live8829 coloured8829 = result8829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8830 live8830 coloured8830 = result8830 := by
  rw [tree8830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8828 coloured8828 at child
  try dsimp only [live8830, coloured8830]
  rw [child]
  dsimp only [result8828]
  have child := child1
  unfold live8829 coloured8829 at child
  try dsimp only [live8830, coloured8830]
  rw [child]
  dsimp only [result8829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8831_agree_conditional : tree8831 = literal8831 := by
  rw [tree8831_def]
  rfl
theorem node8831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8831 live8831 coloured8831 = result8831 := by
  rw [tree8831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
