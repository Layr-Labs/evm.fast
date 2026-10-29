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
theorem tree11712_agree_conditional
    (child0 : tree11710 = literal11710)
    (child1 : tree11711 = literal11711) : tree11712 = literal11712 := by
  rw [tree11712_def, child0, child1]
  rfl
theorem node11712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11710 live11710 coloured11710 = result11710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11711 live11711 coloured11711 = result11711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11712 live11712 coloured11712 = result11712 := by
  rw [tree11712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11710 coloured11710 at child
  try dsimp only [live11712, coloured11712]
  rw [child]
  dsimp only [result11710]
  have child := child1
  unfold live11711 coloured11711 at child
  try dsimp only [live11712, coloured11712]
  rw [child]
  dsimp only [result11711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11713_agree_conditional : tree11713 = literal11713 := by
  rw [tree11713_def]
  rfl
theorem node11713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11713 live11713 coloured11713 = result11713 := by
  rw [tree11713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11714_agree_conditional
    (child0 : tree11712 = literal11712)
    (child1 : tree11713 = literal11713) : tree11714 = literal11714 := by
  rw [tree11714_def, child0, child1]
  rfl
theorem node11714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11712 live11712 coloured11712 = result11712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11713 live11713 coloured11713 = result11713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11714 live11714 coloured11714 = result11714 := by
  rw [tree11714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11712 coloured11712 at child
  try dsimp only [live11714, coloured11714]
  rw [child]
  dsimp only [result11712]
  have child := child1
  unfold live11713 coloured11713 at child
  try dsimp only [live11714, coloured11714]
  rw [child]
  dsimp only [result11713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11715_agree_conditional : tree11715 = literal11715 := by
  rw [tree11715_def]
  rfl
theorem node11715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11715 live11715 coloured11715 = result11715 := by
  rw [tree11715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11716_agree_conditional
    (child0 : tree11714 = literal11714)
    (child1 : tree11715 = literal11715) : tree11716 = literal11716 := by
  rw [tree11716_def, child0, child1]
  rfl
theorem node11716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11714 live11714 coloured11714 = result11714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11715 live11715 coloured11715 = result11715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11716 live11716 coloured11716 = result11716 := by
  rw [tree11716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11714 coloured11714 at child
  try dsimp only [live11716, coloured11716]
  rw [child]
  dsimp only [result11714]
  have child := child1
  unfold live11715 coloured11715 at child
  try dsimp only [live11716, coloured11716]
  rw [child]
  dsimp only [result11715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11717_agree_conditional : tree11717 = literal11717 := by
  rw [tree11717_def]
  rfl
theorem node11717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11717 live11717 coloured11717 = result11717 := by
  rw [tree11717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11718_agree_conditional
    (child0 : tree11716 = literal11716)
    (child1 : tree11717 = literal11717) : tree11718 = literal11718 := by
  rw [tree11718_def, child0, child1]
  rfl
theorem node11718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11716 live11716 coloured11716 = result11716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11717 live11717 coloured11717 = result11717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11718 live11718 coloured11718 = result11718 := by
  rw [tree11718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11716 coloured11716 at child
  try dsimp only [live11718, coloured11718]
  rw [child]
  dsimp only [result11716]
  have child := child1
  unfold live11717 coloured11717 at child
  try dsimp only [live11718, coloured11718]
  rw [child]
  dsimp only [result11717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11719_agree_conditional : tree11719 = literal11719 := by
  rw [tree11719_def]
  rfl
theorem node11719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11719 live11719 coloured11719 = result11719 := by
  rw [tree11719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11720_agree_conditional
    (child0 : tree11718 = literal11718)
    (child1 : tree11719 = literal11719) : tree11720 = literal11720 := by
  rw [tree11720_def, child0, child1]
  rfl
theorem node11720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11718 live11718 coloured11718 = result11718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11719 live11719 coloured11719 = result11719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11720 live11720 coloured11720 = result11720 := by
  rw [tree11720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11718 coloured11718 at child
  try dsimp only [live11720, coloured11720]
  rw [child]
  dsimp only [result11718]
  have child := child1
  unfold live11719 coloured11719 at child
  try dsimp only [live11720, coloured11720]
  rw [child]
  dsimp only [result11719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11721_agree_conditional : tree11721 = literal11721 := by
  rw [tree11721_def]
  rfl
theorem node11721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11721 live11721 coloured11721 = result11721 := by
  rw [tree11721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11722_agree_conditional
    (child0 : tree11720 = literal11720)
    (child1 : tree11721 = literal11721) : tree11722 = literal11722 := by
  rw [tree11722_def, child0, child1]
  rfl
theorem node11722_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11720 live11720 coloured11720 = result11720)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11721 live11721 coloured11721 = result11721) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11722 live11722 coloured11722 = result11722 := by
  rw [tree11722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11720 coloured11720 at child
  try dsimp only [live11722, coloured11722]
  rw [child]
  dsimp only [result11720]
  have child := child1
  unfold live11721 coloured11721 at child
  try dsimp only [live11722, coloured11722]
  rw [child]
  dsimp only [result11721]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11723_agree_conditional : tree11723 = literal11723 := by
  rw [tree11723_def]
  rfl
theorem node11723_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11723 live11723 coloured11723 = result11723 := by
  rw [tree11723_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11724_agree_conditional
    (child0 : tree11722 = literal11722)
    (child1 : tree11723 = literal11723) : tree11724 = literal11724 := by
  rw [tree11724_def, child0, child1]
  rfl
theorem node11724_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11722 live11722 coloured11722 = result11722)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11723 live11723 coloured11723 = result11723) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11724 live11724 coloured11724 = result11724 := by
  rw [tree11724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11722 coloured11722 at child
  try dsimp only [live11724, coloured11724]
  rw [child]
  dsimp only [result11722]
  have child := child1
  unfold live11723 coloured11723 at child
  try dsimp only [live11724, coloured11724]
  rw [child]
  dsimp only [result11723]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11725_agree_conditional : tree11725 = literal11725 := by
  rw [tree11725_def]
  rfl
theorem node11725_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11725 live11725 coloured11725 = result11725 := by
  rw [tree11725_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11726_agree_conditional
    (child0 : tree11724 = literal11724)
    (child1 : tree11725 = literal11725) : tree11726 = literal11726 := by
  rw [tree11726_def, child0, child1]
  rfl
theorem node11726_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11724 live11724 coloured11724 = result11724)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11725 live11725 coloured11725 = result11725) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11726 live11726 coloured11726 = result11726 := by
  rw [tree11726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11724 coloured11724 at child
  try dsimp only [live11726, coloured11726]
  rw [child]
  dsimp only [result11724]
  have child := child1
  unfold live11725 coloured11725 at child
  try dsimp only [live11726, coloured11726]
  rw [child]
  dsimp only [result11725]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11727_agree_conditional : tree11727 = literal11727 := by
  rw [tree11727_def]
  rfl
theorem node11727_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11727 live11727 coloured11727 = result11727 := by
  rw [tree11727_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11728_agree_conditional
    (child0 : tree11726 = literal11726)
    (child1 : tree11727 = literal11727) : tree11728 = literal11728 := by
  rw [tree11728_def, child0, child1]
  rfl
theorem node11728_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11726 live11726 coloured11726 = result11726)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11727 live11727 coloured11727 = result11727) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11728 live11728 coloured11728 = result11728 := by
  rw [tree11728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11726 coloured11726 at child
  try dsimp only [live11728, coloured11728]
  rw [child]
  dsimp only [result11726]
  have child := child1
  unfold live11727 coloured11727 at child
  try dsimp only [live11728, coloured11728]
  rw [child]
  dsimp only [result11727]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11729_agree_conditional : tree11729 = literal11729 := by
  rw [tree11729_def]
  rfl
theorem node11729_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11729 live11729 coloured11729 = result11729 := by
  rw [tree11729_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11730_agree_conditional
    (child0 : tree11728 = literal11728)
    (child1 : tree11729 = literal11729) : tree11730 = literal11730 := by
  rw [tree11730_def, child0, child1]
  rfl
theorem node11730_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11728 live11728 coloured11728 = result11728)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11729 live11729 coloured11729 = result11729) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11730 live11730 coloured11730 = result11730 := by
  rw [tree11730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11728 coloured11728 at child
  try dsimp only [live11730, coloured11730]
  rw [child]
  dsimp only [result11728]
  have child := child1
  unfold live11729 coloured11729 at child
  try dsimp only [live11730, coloured11730]
  rw [child]
  dsimp only [result11729]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11731_agree_conditional : tree11731 = literal11731 := by
  rw [tree11731_def]
  rfl
theorem node11731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11731 live11731 coloured11731 = result11731 := by
  rw [tree11731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11732_agree_conditional
    (child0 : tree11730 = literal11730)
    (child1 : tree11731 = literal11731) : tree11732 = literal11732 := by
  rw [tree11732_def, child0, child1]
  rfl
theorem node11732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11730 live11730 coloured11730 = result11730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11731 live11731 coloured11731 = result11731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11732 live11732 coloured11732 = result11732 := by
  rw [tree11732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11730 coloured11730 at child
  try dsimp only [live11732, coloured11732]
  rw [child]
  dsimp only [result11730]
  have child := child1
  unfold live11731 coloured11731 at child
  try dsimp only [live11732, coloured11732]
  rw [child]
  dsimp only [result11731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11733_agree_conditional : tree11733 = literal11733 := by
  rw [tree11733_def]
  rfl
theorem node11733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11733 live11733 coloured11733 = result11733 := by
  rw [tree11733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11734_agree_conditional
    (child0 : tree11732 = literal11732)
    (child1 : tree11733 = literal11733) : tree11734 = literal11734 := by
  rw [tree11734_def, child0, child1]
  rfl
theorem node11734_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11732 live11732 coloured11732 = result11732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11733 live11733 coloured11733 = result11733) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11734 live11734 coloured11734 = result11734 := by
  rw [tree11734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11732 coloured11732 at child
  try dsimp only [live11734, coloured11734]
  rw [child]
  dsimp only [result11732]
  have child := child1
  unfold live11733 coloured11733 at child
  try dsimp only [live11734, coloured11734]
  rw [child]
  dsimp only [result11733]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11735_agree_conditional : tree11735 = literal11735 := by
  rw [tree11735_def]
  rfl
theorem node11735_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11735 live11735 coloured11735 = result11735 := by
  rw [tree11735_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11736_agree_conditional
    (child0 : tree11734 = literal11734)
    (child1 : tree11735 = literal11735) : tree11736 = literal11736 := by
  rw [tree11736_def, child0, child1]
  rfl
theorem node11736_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11734 live11734 coloured11734 = result11734)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11735 live11735 coloured11735 = result11735) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11736 live11736 coloured11736 = result11736 := by
  rw [tree11736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11734 coloured11734 at child
  try dsimp only [live11736, coloured11736]
  rw [child]
  dsimp only [result11734]
  have child := child1
  unfold live11735 coloured11735 at child
  try dsimp only [live11736, coloured11736]
  rw [child]
  dsimp only [result11735]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11737_agree_conditional : tree11737 = literal11737 := by
  rw [tree11737_def]
  rfl
theorem node11737_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11737 live11737 coloured11737 = result11737 := by
  rw [tree11737_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11738_agree_conditional
    (child0 : tree11736 = literal11736)
    (child1 : tree11737 = literal11737) : tree11738 = literal11738 := by
  rw [tree11738_def, child0, child1]
  rfl
theorem node11738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11736 live11736 coloured11736 = result11736)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11737 live11737 coloured11737 = result11737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11738 live11738 coloured11738 = result11738 := by
  rw [tree11738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11736 coloured11736 at child
  try dsimp only [live11738, coloured11738]
  rw [child]
  dsimp only [result11736]
  have child := child1
  unfold live11737 coloured11737 at child
  try dsimp only [live11738, coloured11738]
  rw [child]
  dsimp only [result11737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11739_agree_conditional : tree11739 = literal11739 := by
  rw [tree11739_def]
  rfl
theorem node11739_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11739 live11739 coloured11739 = result11739 := by
  rw [tree11739_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11740_agree_conditional
    (child0 : tree11738 = literal11738)
    (child1 : tree11739 = literal11739) : tree11740 = literal11740 := by
  rw [tree11740_def, child0, child1]
  rfl
theorem node11740_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11738 live11738 coloured11738 = result11738)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11739 live11739 coloured11739 = result11739) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11740 live11740 coloured11740 = result11740 := by
  rw [tree11740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11738 coloured11738 at child
  try dsimp only [live11740, coloured11740]
  rw [child]
  dsimp only [result11738]
  have child := child1
  unfold live11739 coloured11739 at child
  try dsimp only [live11740, coloured11740]
  rw [child]
  dsimp only [result11739]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11741_agree_conditional : tree11741 = literal11741 := by
  rw [tree11741_def]
  rfl
theorem node11741_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11741 live11741 coloured11741 = result11741 := by
  rw [tree11741_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11742_agree_conditional
    (child0 : tree11740 = literal11740)
    (child1 : tree11741 = literal11741) : tree11742 = literal11742 := by
  rw [tree11742_def, child0, child1]
  rfl
theorem node11742_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11740 live11740 coloured11740 = result11740)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11741 live11741 coloured11741 = result11741) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11742 live11742 coloured11742 = result11742 := by
  rw [tree11742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11740 coloured11740 at child
  try dsimp only [live11742, coloured11742]
  rw [child]
  dsimp only [result11740]
  have child := child1
  unfold live11741 coloured11741 at child
  try dsimp only [live11742, coloured11742]
  rw [child]
  dsimp only [result11741]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11743_agree_conditional : tree11743 = literal11743 := by
  rw [tree11743_def]
  rfl
theorem node11743_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11743 live11743 coloured11743 = result11743 := by
  rw [tree11743_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11744_agree_conditional
    (child0 : tree11742 = literal11742)
    (child1 : tree11743 = literal11743) : tree11744 = literal11744 := by
  rw [tree11744_def, child0, child1]
  rfl
theorem node11744_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11742 live11742 coloured11742 = result11742)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11743 live11743 coloured11743 = result11743) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11744 live11744 coloured11744 = result11744 := by
  rw [tree11744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11742 coloured11742 at child
  try dsimp only [live11744, coloured11744]
  rw [child]
  dsimp only [result11742]
  have child := child1
  unfold live11743 coloured11743 at child
  try dsimp only [live11744, coloured11744]
  rw [child]
  dsimp only [result11743]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11745_agree_conditional : tree11745 = literal11745 := by
  rw [tree11745_def]
  rfl
theorem node11745_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11745 live11745 coloured11745 = result11745 := by
  rw [tree11745_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11746_agree_conditional
    (child0 : tree11744 = literal11744)
    (child1 : tree11745 = literal11745) : tree11746 = literal11746 := by
  rw [tree11746_def, child0, child1]
  rfl
theorem node11746_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11744 live11744 coloured11744 = result11744)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11745 live11745 coloured11745 = result11745) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11746 live11746 coloured11746 = result11746 := by
  rw [tree11746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11744 coloured11744 at child
  try dsimp only [live11746, coloured11746]
  rw [child]
  dsimp only [result11744]
  have child := child1
  unfold live11745 coloured11745 at child
  try dsimp only [live11746, coloured11746]
  rw [child]
  dsimp only [result11745]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11747_agree_conditional : tree11747 = literal11747 := by
  rw [tree11747_def]
  rfl
theorem node11747_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11747 live11747 coloured11747 = result11747 := by
  rw [tree11747_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11748_agree_conditional
    (child0 : tree11746 = literal11746)
    (child1 : tree11747 = literal11747) : tree11748 = literal11748 := by
  rw [tree11748_def, child0, child1]
  rfl
theorem node11748_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11746 live11746 coloured11746 = result11746)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11747 live11747 coloured11747 = result11747) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11748 live11748 coloured11748 = result11748 := by
  rw [tree11748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11746 coloured11746 at child
  try dsimp only [live11748, coloured11748]
  rw [child]
  dsimp only [result11746]
  have child := child1
  unfold live11747 coloured11747 at child
  try dsimp only [live11748, coloured11748]
  rw [child]
  dsimp only [result11747]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11749_agree_conditional : tree11749 = literal11749 := by
  rw [tree11749_def]
  rfl
theorem node11749_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11749 live11749 coloured11749 = result11749 := by
  rw [tree11749_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11750_agree_conditional
    (child0 : tree11748 = literal11748)
    (child1 : tree11749 = literal11749) : tree11750 = literal11750 := by
  rw [tree11750_def, child0, child1]
  rfl
theorem node11750_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11748 live11748 coloured11748 = result11748)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11749 live11749 coloured11749 = result11749) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11750 live11750 coloured11750 = result11750 := by
  rw [tree11750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11748 coloured11748 at child
  try dsimp only [live11750, coloured11750]
  rw [child]
  dsimp only [result11748]
  have child := child1
  unfold live11749 coloured11749 at child
  try dsimp only [live11750, coloured11750]
  rw [child]
  dsimp only [result11749]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11751_agree_conditional : tree11751 = literal11751 := by
  rw [tree11751_def]
  rfl
theorem node11751_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11751 live11751 coloured11751 = result11751 := by
  rw [tree11751_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11752_agree_conditional
    (child0 : tree11750 = literal11750)
    (child1 : tree11751 = literal11751) : tree11752 = literal11752 := by
  rw [tree11752_def, child0, child1]
  rfl
theorem node11752_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11750 live11750 coloured11750 = result11750)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11751 live11751 coloured11751 = result11751) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11752 live11752 coloured11752 = result11752 := by
  rw [tree11752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11750 coloured11750 at child
  try dsimp only [live11752, coloured11752]
  rw [child]
  dsimp only [result11750]
  have child := child1
  unfold live11751 coloured11751 at child
  try dsimp only [live11752, coloured11752]
  rw [child]
  dsimp only [result11751]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11753_agree_conditional : tree11753 = literal11753 := by
  rw [tree11753_def]
  rfl
theorem node11753_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11753 live11753 coloured11753 = result11753 := by
  rw [tree11753_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11754_agree_conditional
    (child0 : tree11752 = literal11752)
    (child1 : tree11753 = literal11753) : tree11754 = literal11754 := by
  rw [tree11754_def, child0, child1]
  rfl
theorem node11754_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11752 live11752 coloured11752 = result11752)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11753 live11753 coloured11753 = result11753) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11754 live11754 coloured11754 = result11754 := by
  rw [tree11754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11752 coloured11752 at child
  try dsimp only [live11754, coloured11754]
  rw [child]
  dsimp only [result11752]
  have child := child1
  unfold live11753 coloured11753 at child
  try dsimp only [live11754, coloured11754]
  rw [child]
  dsimp only [result11753]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11755_agree_conditional : tree11755 = literal11755 := by
  rw [tree11755_def]
  rfl
theorem node11755_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11755 live11755 coloured11755 = result11755 := by
  rw [tree11755_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11756_agree_conditional
    (child0 : tree11754 = literal11754)
    (child1 : tree11755 = literal11755) : tree11756 = literal11756 := by
  rw [tree11756_def, child0, child1]
  rfl
theorem node11756_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11754 live11754 coloured11754 = result11754)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11755 live11755 coloured11755 = result11755) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11756 live11756 coloured11756 = result11756 := by
  rw [tree11756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11754 coloured11754 at child
  try dsimp only [live11756, coloured11756]
  rw [child]
  dsimp only [result11754]
  have child := child1
  unfold live11755 coloured11755 at child
  try dsimp only [live11756, coloured11756]
  rw [child]
  dsimp only [result11755]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11757_agree_conditional : tree11757 = literal11757 := by
  rw [tree11757_def]
  rfl
theorem node11757_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11757 live11757 coloured11757 = result11757 := by
  rw [tree11757_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11758_agree_conditional
    (child0 : tree11756 = literal11756)
    (child1 : tree11757 = literal11757) : tree11758 = literal11758 := by
  rw [tree11758_def, child0, child1]
  rfl
theorem node11758_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11756 live11756 coloured11756 = result11756)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11757 live11757 coloured11757 = result11757) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11758 live11758 coloured11758 = result11758 := by
  rw [tree11758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11756 coloured11756 at child
  try dsimp only [live11758, coloured11758]
  rw [child]
  dsimp only [result11756]
  have child := child1
  unfold live11757 coloured11757 at child
  try dsimp only [live11758, coloured11758]
  rw [child]
  dsimp only [result11757]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11759_agree_conditional : tree11759 = literal11759 := by
  rw [tree11759_def]
  rfl
theorem node11759_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11759 live11759 coloured11759 = result11759 := by
  rw [tree11759_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11760_agree_conditional
    (child0 : tree11758 = literal11758)
    (child1 : tree11759 = literal11759) : tree11760 = literal11760 := by
  rw [tree11760_def, child0, child1]
  rfl
theorem node11760_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11758 live11758 coloured11758 = result11758)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11759 live11759 coloured11759 = result11759) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11760 live11760 coloured11760 = result11760 := by
  rw [tree11760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11758 coloured11758 at child
  try dsimp only [live11760, coloured11760]
  rw [child]
  dsimp only [result11758]
  have child := child1
  unfold live11759 coloured11759 at child
  try dsimp only [live11760, coloured11760]
  rw [child]
  dsimp only [result11759]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11761_agree_conditional : tree11761 = literal11761 := by
  rw [tree11761_def]
  rfl
theorem node11761_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11761 live11761 coloured11761 = result11761 := by
  rw [tree11761_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11762_agree_conditional
    (child0 : tree11760 = literal11760)
    (child1 : tree11761 = literal11761) : tree11762 = literal11762 := by
  rw [tree11762_def, child0, child1]
  rfl
theorem node11762_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11760 live11760 coloured11760 = result11760)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11761 live11761 coloured11761 = result11761) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11762 live11762 coloured11762 = result11762 := by
  rw [tree11762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11760 coloured11760 at child
  try dsimp only [live11762, coloured11762]
  rw [child]
  dsimp only [result11760]
  have child := child1
  unfold live11761 coloured11761 at child
  try dsimp only [live11762, coloured11762]
  rw [child]
  dsimp only [result11761]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11763_agree_conditional : tree11763 = literal11763 := by
  rw [tree11763_def]
  rfl
theorem node11763_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11763 live11763 coloured11763 = result11763 := by
  rw [tree11763_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11764_agree_conditional
    (child0 : tree11762 = literal11762)
    (child1 : tree11763 = literal11763) : tree11764 = literal11764 := by
  rw [tree11764_def, child0, child1]
  rfl
theorem node11764_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11762 live11762 coloured11762 = result11762)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11763 live11763 coloured11763 = result11763) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11764 live11764 coloured11764 = result11764 := by
  rw [tree11764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11762 coloured11762 at child
  try dsimp only [live11764, coloured11764]
  rw [child]
  dsimp only [result11762]
  have child := child1
  unfold live11763 coloured11763 at child
  try dsimp only [live11764, coloured11764]
  rw [child]
  dsimp only [result11763]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11765_agree_conditional : tree11765 = literal11765 := by
  rw [tree11765_def]
  rfl
theorem node11765_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11765 live11765 coloured11765 = result11765 := by
  rw [tree11765_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11766_agree_conditional
    (child0 : tree11764 = literal11764)
    (child1 : tree11765 = literal11765) : tree11766 = literal11766 := by
  rw [tree11766_def, child0, child1]
  rfl
theorem node11766_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11764 live11764 coloured11764 = result11764)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11765 live11765 coloured11765 = result11765) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11766 live11766 coloured11766 = result11766 := by
  rw [tree11766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11764 coloured11764 at child
  try dsimp only [live11766, coloured11766]
  rw [child]
  dsimp only [result11764]
  have child := child1
  unfold live11765 coloured11765 at child
  try dsimp only [live11766, coloured11766]
  rw [child]
  dsimp only [result11765]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11767_agree_conditional : tree11767 = literal11767 := by
  rw [tree11767_def]
  rfl
theorem node11767_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11767 live11767 coloured11767 = result11767 := by
  rw [tree11767_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11768_agree_conditional
    (child0 : tree11766 = literal11766)
    (child1 : tree11767 = literal11767) : tree11768 = literal11768 := by
  rw [tree11768_def, child0, child1]
  rfl
theorem node11768_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11766 live11766 coloured11766 = result11766)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11767 live11767 coloured11767 = result11767) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11768 live11768 coloured11768 = result11768 := by
  rw [tree11768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11766 coloured11766 at child
  try dsimp only [live11768, coloured11768]
  rw [child]
  dsimp only [result11766]
  have child := child1
  unfold live11767 coloured11767 at child
  try dsimp only [live11768, coloured11768]
  rw [child]
  dsimp only [result11767]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11769_agree_conditional : tree11769 = literal11769 := by
  rw [tree11769_def]
  rfl
theorem node11769_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11769 live11769 coloured11769 = result11769 := by
  rw [tree11769_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11770_agree_conditional
    (child0 : tree11768 = literal11768)
    (child1 : tree11769 = literal11769) : tree11770 = literal11770 := by
  rw [tree11770_def, child0, child1]
  rfl
theorem node11770_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11768 live11768 coloured11768 = result11768)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11769 live11769 coloured11769 = result11769) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11770 live11770 coloured11770 = result11770 := by
  rw [tree11770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11768 coloured11768 at child
  try dsimp only [live11770, coloured11770]
  rw [child]
  dsimp only [result11768]
  have child := child1
  unfold live11769 coloured11769 at child
  try dsimp only [live11770, coloured11770]
  rw [child]
  dsimp only [result11769]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11771_agree_conditional : tree11771 = literal11771 := by
  rw [tree11771_def]
  rfl
theorem node11771_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11771 live11771 coloured11771 = result11771 := by
  rw [tree11771_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11772_agree_conditional
    (child0 : tree11770 = literal11770)
    (child1 : tree11771 = literal11771) : tree11772 = literal11772 := by
  rw [tree11772_def, child0, child1]
  rfl
theorem node11772_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11770 live11770 coloured11770 = result11770)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11771 live11771 coloured11771 = result11771) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11772 live11772 coloured11772 = result11772 := by
  rw [tree11772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11770 coloured11770 at child
  try dsimp only [live11772, coloured11772]
  rw [child]
  dsimp only [result11770]
  have child := child1
  unfold live11771 coloured11771 at child
  try dsimp only [live11772, coloured11772]
  rw [child]
  dsimp only [result11771]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11773_agree_conditional : tree11773 = literal11773 := by
  rw [tree11773_def]
  rfl
theorem node11773_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11773 live11773 coloured11773 = result11773 := by
  rw [tree11773_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11774_agree_conditional
    (child0 : tree11772 = literal11772)
    (child1 : tree11773 = literal11773) : tree11774 = literal11774 := by
  rw [tree11774_def, child0, child1]
  rfl
theorem node11774_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11772 live11772 coloured11772 = result11772)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11773 live11773 coloured11773 = result11773) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11774 live11774 coloured11774 = result11774 := by
  rw [tree11774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11772 coloured11772 at child
  try dsimp only [live11774, coloured11774]
  rw [child]
  dsimp only [result11772]
  have child := child1
  unfold live11773 coloured11773 at child
  try dsimp only [live11774, coloured11774]
  rw [child]
  dsimp only [result11773]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11775_agree_conditional : tree11775 = literal11775 := by
  rw [tree11775_def]
  rfl
theorem node11775_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11775 live11775 coloured11775 = result11775 := by
  rw [tree11775_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11776_agree_conditional
    (child0 : tree11774 = literal11774)
    (child1 : tree11775 = literal11775) : tree11776 = literal11776 := by
  rw [tree11776_def, child0, child1]
  rfl
theorem node11776_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11774 live11774 coloured11774 = result11774)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11775 live11775 coloured11775 = result11775) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11776 live11776 coloured11776 = result11776 := by
  rw [tree11776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11774 coloured11774 at child
  try dsimp only [live11776, coloured11776]
  rw [child]
  dsimp only [result11774]
  have child := child1
  unfold live11775 coloured11775 at child
  try dsimp only [live11776, coloured11776]
  rw [child]
  dsimp only [result11775]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11777_agree_conditional : tree11777 = literal11777 := by
  rw [tree11777_def]
  rfl
theorem node11777_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11777 live11777 coloured11777 = result11777 := by
  rw [tree11777_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11778_agree_conditional
    (child0 : tree11776 = literal11776)
    (child1 : tree11777 = literal11777) : tree11778 = literal11778 := by
  rw [tree11778_def, child0, child1]
  rfl
theorem node11778_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11776 live11776 coloured11776 = result11776)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11777 live11777 coloured11777 = result11777) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11778 live11778 coloured11778 = result11778 := by
  rw [tree11778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11776 coloured11776 at child
  try dsimp only [live11778, coloured11778]
  rw [child]
  dsimp only [result11776]
  have child := child1
  unfold live11777 coloured11777 at child
  try dsimp only [live11778, coloured11778]
  rw [child]
  dsimp only [result11777]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11779_agree_conditional : tree11779 = literal11779 := by
  rw [tree11779_def]
  rfl
theorem node11779_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11779 live11779 coloured11779 = result11779 := by
  rw [tree11779_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11780_agree_conditional
    (child0 : tree11778 = literal11778)
    (child1 : tree11779 = literal11779) : tree11780 = literal11780 := by
  rw [tree11780_def, child0, child1]
  rfl
theorem node11780_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11778 live11778 coloured11778 = result11778)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11779 live11779 coloured11779 = result11779) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11780 live11780 coloured11780 = result11780 := by
  rw [tree11780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11778 coloured11778 at child
  try dsimp only [live11780, coloured11780]
  rw [child]
  dsimp only [result11778]
  have child := child1
  unfold live11779 coloured11779 at child
  try dsimp only [live11780, coloured11780]
  rw [child]
  dsimp only [result11779]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11781_agree_conditional : tree11781 = literal11781 := by
  rw [tree11781_def]
  rfl
theorem node11781_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11781 live11781 coloured11781 = result11781 := by
  rw [tree11781_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11782_agree_conditional
    (child0 : tree11780 = literal11780)
    (child1 : tree11781 = literal11781) : tree11782 = literal11782 := by
  rw [tree11782_def, child0, child1]
  rfl
theorem node11782_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11780 live11780 coloured11780 = result11780)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11781 live11781 coloured11781 = result11781) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11782 live11782 coloured11782 = result11782 := by
  rw [tree11782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11780 coloured11780 at child
  try dsimp only [live11782, coloured11782]
  rw [child]
  dsimp only [result11780]
  have child := child1
  unfold live11781 coloured11781 at child
  try dsimp only [live11782, coloured11782]
  rw [child]
  dsimp only [result11781]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11783_agree_conditional : tree11783 = literal11783 := by
  rw [tree11783_def]
  rfl
theorem node11783_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11783 live11783 coloured11783 = result11783 := by
  rw [tree11783_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11784_agree_conditional
    (child0 : tree11782 = literal11782)
    (child1 : tree11783 = literal11783) : tree11784 = literal11784 := by
  rw [tree11784_def, child0, child1]
  rfl
theorem node11784_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11782 live11782 coloured11782 = result11782)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11783 live11783 coloured11783 = result11783) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11784 live11784 coloured11784 = result11784 := by
  rw [tree11784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11782 coloured11782 at child
  try dsimp only [live11784, coloured11784]
  rw [child]
  dsimp only [result11782]
  have child := child1
  unfold live11783 coloured11783 at child
  try dsimp only [live11784, coloured11784]
  rw [child]
  dsimp only [result11783]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11785_agree_conditional : tree11785 = literal11785 := by
  rw [tree11785_def]
  rfl
theorem node11785_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11785 live11785 coloured11785 = result11785 := by
  rw [tree11785_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11786_agree_conditional
    (child0 : tree11784 = literal11784)
    (child1 : tree11785 = literal11785) : tree11786 = literal11786 := by
  rw [tree11786_def, child0, child1]
  rfl
theorem node11786_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11784 live11784 coloured11784 = result11784)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11785 live11785 coloured11785 = result11785) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11786 live11786 coloured11786 = result11786 := by
  rw [tree11786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11784 coloured11784 at child
  try dsimp only [live11786, coloured11786]
  rw [child]
  dsimp only [result11784]
  have child := child1
  unfold live11785 coloured11785 at child
  try dsimp only [live11786, coloured11786]
  rw [child]
  dsimp only [result11785]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11787_agree_conditional : tree11787 = literal11787 := by
  rw [tree11787_def]
  rfl
theorem node11787_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11787 live11787 coloured11787 = result11787 := by
  rw [tree11787_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11788_agree_conditional
    (child0 : tree11786 = literal11786)
    (child1 : tree11787 = literal11787) : tree11788 = literal11788 := by
  rw [tree11788_def, child0, child1]
  rfl
theorem node11788_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11786 live11786 coloured11786 = result11786)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11787 live11787 coloured11787 = result11787) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11788 live11788 coloured11788 = result11788 := by
  rw [tree11788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11786 coloured11786 at child
  try dsimp only [live11788, coloured11788]
  rw [child]
  dsimp only [result11786]
  have child := child1
  unfold live11787 coloured11787 at child
  try dsimp only [live11788, coloured11788]
  rw [child]
  dsimp only [result11787]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11789_agree_conditional : tree11789 = literal11789 := by
  rw [tree11789_def]
  rfl
theorem node11789_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11789 live11789 coloured11789 = result11789 := by
  rw [tree11789_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11790_agree_conditional
    (child0 : tree11788 = literal11788)
    (child1 : tree11789 = literal11789) : tree11790 = literal11790 := by
  rw [tree11790_def, child0, child1]
  rfl
theorem node11790_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11788 live11788 coloured11788 = result11788)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11789 live11789 coloured11789 = result11789) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11790 live11790 coloured11790 = result11790 := by
  rw [tree11790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11788 coloured11788 at child
  try dsimp only [live11790, coloured11790]
  rw [child]
  dsimp only [result11788]
  have child := child1
  unfold live11789 coloured11789 at child
  try dsimp only [live11790, coloured11790]
  rw [child]
  dsimp only [result11789]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11791_agree_conditional : tree11791 = literal11791 := by
  rw [tree11791_def]
  rfl
theorem node11791_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11791 live11791 coloured11791 = result11791 := by
  rw [tree11791_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11792_agree_conditional
    (child0 : tree11790 = literal11790)
    (child1 : tree11791 = literal11791) : tree11792 = literal11792 := by
  rw [tree11792_def, child0, child1]
  rfl
theorem node11792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11790 live11790 coloured11790 = result11790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11791 live11791 coloured11791 = result11791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11792 live11792 coloured11792 = result11792 := by
  rw [tree11792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11790 coloured11790 at child
  try dsimp only [live11792, coloured11792]
  rw [child]
  dsimp only [result11790]
  have child := child1
  unfold live11791 coloured11791 at child
  try dsimp only [live11792, coloured11792]
  rw [child]
  dsimp only [result11791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11793_agree_conditional : tree11793 = literal11793 := by
  rw [tree11793_def]
  rfl
theorem node11793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11793 live11793 coloured11793 = result11793 := by
  rw [tree11793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11794_agree_conditional
    (child0 : tree11792 = literal11792)
    (child1 : tree11793 = literal11793) : tree11794 = literal11794 := by
  rw [tree11794_def, child0, child1]
  rfl
theorem node11794_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11792 live11792 coloured11792 = result11792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11793 live11793 coloured11793 = result11793) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11794 live11794 coloured11794 = result11794 := by
  rw [tree11794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11792 coloured11792 at child
  try dsimp only [live11794, coloured11794]
  rw [child]
  dsimp only [result11792]
  have child := child1
  unfold live11793 coloured11793 at child
  try dsimp only [live11794, coloured11794]
  rw [child]
  dsimp only [result11793]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11795_agree_conditional : tree11795 = literal11795 := by
  rw [tree11795_def]
  rfl
theorem node11795_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11795 live11795 coloured11795 = result11795 := by
  rw [tree11795_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11796_agree_conditional
    (child0 : tree11794 = literal11794)
    (child1 : tree11795 = literal11795) : tree11796 = literal11796 := by
  rw [tree11796_def, child0, child1]
  rfl
theorem node11796_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11794 live11794 coloured11794 = result11794)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11795 live11795 coloured11795 = result11795) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11796 live11796 coloured11796 = result11796 := by
  rw [tree11796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11794 coloured11794 at child
  try dsimp only [live11796, coloured11796]
  rw [child]
  dsimp only [result11794]
  have child := child1
  unfold live11795 coloured11795 at child
  try dsimp only [live11796, coloured11796]
  rw [child]
  dsimp only [result11795]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11797_agree_conditional : tree11797 = literal11797 := by
  rw [tree11797_def]
  rfl
theorem node11797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11797 live11797 coloured11797 = result11797 := by
  rw [tree11797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11798_agree_conditional
    (child0 : tree11796 = literal11796)
    (child1 : tree11797 = literal11797) : tree11798 = literal11798 := by
  rw [tree11798_def, child0, child1]
  rfl
theorem node11798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11796 live11796 coloured11796 = result11796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11797 live11797 coloured11797 = result11797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11798 live11798 coloured11798 = result11798 := by
  rw [tree11798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11796 coloured11796 at child
  try dsimp only [live11798, coloured11798]
  rw [child]
  dsimp only [result11796]
  have child := child1
  unfold live11797 coloured11797 at child
  try dsimp only [live11798, coloured11798]
  rw [child]
  dsimp only [result11797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11799_agree_conditional : tree11799 = literal11799 := by
  rw [tree11799_def]
  rfl
theorem node11799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11799 live11799 coloured11799 = result11799 := by
  rw [tree11799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11800_agree_conditional
    (child0 : tree11798 = literal11798)
    (child1 : tree11799 = literal11799) : tree11800 = literal11800 := by
  rw [tree11800_def, child0, child1]
  rfl
theorem node11800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11798 live11798 coloured11798 = result11798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11799 live11799 coloured11799 = result11799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11800 live11800 coloured11800 = result11800 := by
  rw [tree11800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11798 coloured11798 at child
  try dsimp only [live11800, coloured11800]
  rw [child]
  dsimp only [result11798]
  have child := child1
  unfold live11799 coloured11799 at child
  try dsimp only [live11800, coloured11800]
  rw [child]
  dsimp only [result11799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11801_agree_conditional : tree11801 = literal11801 := by
  rw [tree11801_def]
  rfl
theorem node11801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11801 live11801 coloured11801 = result11801 := by
  rw [tree11801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11802_agree_conditional
    (child0 : tree11800 = literal11800)
    (child1 : tree11801 = literal11801) : tree11802 = literal11802 := by
  rw [tree11802_def, child0, child1]
  rfl
theorem node11802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11800 live11800 coloured11800 = result11800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11801 live11801 coloured11801 = result11801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11802 live11802 coloured11802 = result11802 := by
  rw [tree11802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11800 coloured11800 at child
  try dsimp only [live11802, coloured11802]
  rw [child]
  dsimp only [result11800]
  have child := child1
  unfold live11801 coloured11801 at child
  try dsimp only [live11802, coloured11802]
  rw [child]
  dsimp only [result11801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11803_agree_conditional : tree11803 = literal11803 := by
  rw [tree11803_def]
  rfl
theorem node11803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11803 live11803 coloured11803 = result11803 := by
  rw [tree11803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11804_agree_conditional
    (child0 : tree11802 = literal11802)
    (child1 : tree11803 = literal11803) : tree11804 = literal11804 := by
  rw [tree11804_def, child0, child1]
  rfl
theorem node11804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11802 live11802 coloured11802 = result11802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11803 live11803 coloured11803 = result11803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11804 live11804 coloured11804 = result11804 := by
  rw [tree11804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11802 coloured11802 at child
  try dsimp only [live11804, coloured11804]
  rw [child]
  dsimp only [result11802]
  have child := child1
  unfold live11803 coloured11803 at child
  try dsimp only [live11804, coloured11804]
  rw [child]
  dsimp only [result11803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11805_agree_conditional : tree11805 = literal11805 := by
  rw [tree11805_def]
  rfl
theorem node11805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11805 live11805 coloured11805 = result11805 := by
  rw [tree11805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11806_agree_conditional
    (child0 : tree11804 = literal11804)
    (child1 : tree11805 = literal11805) : tree11806 = literal11806 := by
  rw [tree11806_def, child0, child1]
  rfl
theorem node11806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11804 live11804 coloured11804 = result11804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11805 live11805 coloured11805 = result11805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11806 live11806 coloured11806 = result11806 := by
  rw [tree11806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11804 coloured11804 at child
  try dsimp only [live11806, coloured11806]
  rw [child]
  dsimp only [result11804]
  have child := child1
  unfold live11805 coloured11805 at child
  try dsimp only [live11806, coloured11806]
  rw [child]
  dsimp only [result11805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11807_agree_conditional : tree11807 = literal11807 := by
  rw [tree11807_def]
  rfl
theorem node11807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11807 live11807 coloured11807 = result11807 := by
  rw [tree11807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
