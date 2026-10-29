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
theorem tree1728_agree_conditional
    (child0 : tree1726 = literal1726)
    (child1 : tree1727 = literal1727) : tree1728 = literal1728 := by
  rw [tree1728_def, child0, child1]
  rfl
theorem node1728_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1726 live1726 coloured1726 = result1726)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1727 live1727 coloured1727 = result1727) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1728 live1728 coloured1728 = result1728 := by
  rw [tree1728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1726 coloured1726 at child
  try dsimp only [live1728, coloured1728]
  rw [child]
  dsimp only [result1726]
  have child := child1
  unfold live1727 coloured1727 at child
  try dsimp only [live1728, coloured1728]
  rw [child]
  dsimp only [result1727]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1729_agree_conditional : tree1729 = literal1729 := by
  rw [tree1729_def]
  rfl
theorem node1729_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1729 live1729 coloured1729 = result1729 := by
  rw [tree1729_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1730_agree_conditional
    (child0 : tree1728 = literal1728)
    (child1 : tree1729 = literal1729) : tree1730 = literal1730 := by
  rw [tree1730_def, child0, child1]
  rfl
theorem node1730_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1728 live1728 coloured1728 = result1728)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1729 live1729 coloured1729 = result1729) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1730 live1730 coloured1730 = result1730 := by
  rw [tree1730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1728 coloured1728 at child
  try dsimp only [live1730, coloured1730]
  rw [child]
  dsimp only [result1728]
  have child := child1
  unfold live1729 coloured1729 at child
  try dsimp only [live1730, coloured1730]
  rw [child]
  dsimp only [result1729]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1731_agree_conditional : tree1731 = literal1731 := by
  rw [tree1731_def]
  rfl
theorem node1731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1731 live1731 coloured1731 = result1731 := by
  rw [tree1731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1732_agree_conditional
    (child0 : tree1730 = literal1730)
    (child1 : tree1731 = literal1731) : tree1732 = literal1732 := by
  rw [tree1732_def, child0, child1]
  rfl
theorem node1732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1730 live1730 coloured1730 = result1730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1731 live1731 coloured1731 = result1731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1732 live1732 coloured1732 = result1732 := by
  rw [tree1732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1730 coloured1730 at child
  try dsimp only [live1732, coloured1732]
  rw [child]
  dsimp only [result1730]
  have child := child1
  unfold live1731 coloured1731 at child
  try dsimp only [live1732, coloured1732]
  rw [child]
  dsimp only [result1731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1733_agree_conditional : tree1733 = literal1733 := by
  rw [tree1733_def]
  rfl
theorem node1733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1733 live1733 coloured1733 = result1733 := by
  rw [tree1733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1734_agree_conditional
    (child0 : tree1732 = literal1732)
    (child1 : tree1733 = literal1733) : tree1734 = literal1734 := by
  rw [tree1734_def, child0, child1]
  rfl
theorem node1734_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1732 live1732 coloured1732 = result1732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1733 live1733 coloured1733 = result1733) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1734 live1734 coloured1734 = result1734 := by
  rw [tree1734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1732 coloured1732 at child
  try dsimp only [live1734, coloured1734]
  rw [child]
  dsimp only [result1732]
  have child := child1
  unfold live1733 coloured1733 at child
  try dsimp only [live1734, coloured1734]
  rw [child]
  dsimp only [result1733]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1735_agree_conditional : tree1735 = literal1735 := by
  rw [tree1735_def]
  rfl
theorem node1735_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1735 live1735 coloured1735 = result1735 := by
  rw [tree1735_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1736_agree_conditional
    (child0 : tree1734 = literal1734)
    (child1 : tree1735 = literal1735) : tree1736 = literal1736 := by
  rw [tree1736_def, child0, child1]
  rfl
theorem node1736_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1734 live1734 coloured1734 = result1734)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1735 live1735 coloured1735 = result1735) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1736 live1736 coloured1736 = result1736 := by
  rw [tree1736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1734 coloured1734 at child
  try dsimp only [live1736, coloured1736]
  rw [child]
  dsimp only [result1734]
  have child := child1
  unfold live1735 coloured1735 at child
  try dsimp only [live1736, coloured1736]
  rw [child]
  dsimp only [result1735]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1737_agree_conditional : tree1737 = literal1737 := by
  rw [tree1737_def]
  rfl
theorem node1737_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1737 live1737 coloured1737 = result1737 := by
  rw [tree1737_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1738_agree_conditional
    (child0 : tree1736 = literal1736)
    (child1 : tree1737 = literal1737) : tree1738 = literal1738 := by
  rw [tree1738_def, child0, child1]
  rfl
theorem node1738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1736 live1736 coloured1736 = result1736)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1737 live1737 coloured1737 = result1737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1738 live1738 coloured1738 = result1738 := by
  rw [tree1738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1736 coloured1736 at child
  try dsimp only [live1738, coloured1738]
  rw [child]
  dsimp only [result1736]
  have child := child1
  unfold live1737 coloured1737 at child
  try dsimp only [live1738, coloured1738]
  rw [child]
  dsimp only [result1737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1739_agree_conditional : tree1739 = literal1739 := by
  rw [tree1739_def]
  rfl
theorem node1739_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1739 live1739 coloured1739 = result1739 := by
  rw [tree1739_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1740_agree_conditional
    (child0 : tree1738 = literal1738)
    (child1 : tree1739 = literal1739) : tree1740 = literal1740 := by
  rw [tree1740_def, child0, child1]
  rfl
theorem node1740_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1738 live1738 coloured1738 = result1738)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1739 live1739 coloured1739 = result1739) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1740 live1740 coloured1740 = result1740 := by
  rw [tree1740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1738 coloured1738 at child
  try dsimp only [live1740, coloured1740]
  rw [child]
  dsimp only [result1738]
  have child := child1
  unfold live1739 coloured1739 at child
  try dsimp only [live1740, coloured1740]
  rw [child]
  dsimp only [result1739]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1741_agree_conditional : tree1741 = literal1741 := by
  rw [tree1741_def]
  rfl
theorem node1741_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1741 live1741 coloured1741 = result1741 := by
  rw [tree1741_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1742_agree_conditional
    (child0 : tree1740 = literal1740)
    (child1 : tree1741 = literal1741) : tree1742 = literal1742 := by
  rw [tree1742_def, child0, child1]
  rfl
theorem node1742_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1740 live1740 coloured1740 = result1740)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1741 live1741 coloured1741 = result1741) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1742 live1742 coloured1742 = result1742 := by
  rw [tree1742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1740 coloured1740 at child
  try dsimp only [live1742, coloured1742]
  rw [child]
  dsimp only [result1740]
  have child := child1
  unfold live1741 coloured1741 at child
  try dsimp only [live1742, coloured1742]
  rw [child]
  dsimp only [result1741]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1743_agree_conditional : tree1743 = literal1743 := by
  rw [tree1743_def]
  rfl
theorem node1743_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1743 live1743 coloured1743 = result1743 := by
  rw [tree1743_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1744_agree_conditional
    (child0 : tree1742 = literal1742)
    (child1 : tree1743 = literal1743) : tree1744 = literal1744 := by
  rw [tree1744_def, child0, child1]
  rfl
theorem node1744_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1742 live1742 coloured1742 = result1742)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1743 live1743 coloured1743 = result1743) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1744 live1744 coloured1744 = result1744 := by
  rw [tree1744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1742 coloured1742 at child
  try dsimp only [live1744, coloured1744]
  rw [child]
  dsimp only [result1742]
  have child := child1
  unfold live1743 coloured1743 at child
  try dsimp only [live1744, coloured1744]
  rw [child]
  dsimp only [result1743]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1745_agree_conditional : tree1745 = literal1745 := by
  rw [tree1745_def]
  rfl
theorem node1745_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1745 live1745 coloured1745 = result1745 := by
  rw [tree1745_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1746_agree_conditional
    (child0 : tree1744 = literal1744)
    (child1 : tree1745 = literal1745) : tree1746 = literal1746 := by
  rw [tree1746_def, child0, child1]
  rfl
theorem node1746_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1744 live1744 coloured1744 = result1744)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1745 live1745 coloured1745 = result1745) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1746 live1746 coloured1746 = result1746 := by
  rw [tree1746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1744 coloured1744 at child
  try dsimp only [live1746, coloured1746]
  rw [child]
  dsimp only [result1744]
  have child := child1
  unfold live1745 coloured1745 at child
  try dsimp only [live1746, coloured1746]
  rw [child]
  dsimp only [result1745]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1747_agree_conditional : tree1747 = literal1747 := by
  rw [tree1747_def]
  rfl
theorem node1747_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1747 live1747 coloured1747 = result1747 := by
  rw [tree1747_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1748_agree_conditional
    (child0 : tree1746 = literal1746)
    (child1 : tree1747 = literal1747) : tree1748 = literal1748 := by
  rw [tree1748_def, child0, child1]
  rfl
theorem node1748_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1746 live1746 coloured1746 = result1746)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1747 live1747 coloured1747 = result1747) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1748 live1748 coloured1748 = result1748 := by
  rw [tree1748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1746 coloured1746 at child
  try dsimp only [live1748, coloured1748]
  rw [child]
  dsimp only [result1746]
  have child := child1
  unfold live1747 coloured1747 at child
  try dsimp only [live1748, coloured1748]
  rw [child]
  dsimp only [result1747]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1749_agree_conditional : tree1749 = literal1749 := by
  rw [tree1749_def]
  rfl
theorem node1749_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1749 live1749 coloured1749 = result1749 := by
  rw [tree1749_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1750_agree_conditional
    (child0 : tree1748 = literal1748)
    (child1 : tree1749 = literal1749) : tree1750 = literal1750 := by
  rw [tree1750_def, child0, child1]
  rfl
theorem node1750_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1748 live1748 coloured1748 = result1748)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1749 live1749 coloured1749 = result1749) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1750 live1750 coloured1750 = result1750 := by
  rw [tree1750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1748 coloured1748 at child
  try dsimp only [live1750, coloured1750]
  rw [child]
  dsimp only [result1748]
  have child := child1
  unfold live1749 coloured1749 at child
  try dsimp only [live1750, coloured1750]
  rw [child]
  dsimp only [result1749]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1751_agree_conditional : tree1751 = literal1751 := by
  rw [tree1751_def]
  rfl
theorem node1751_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1751 live1751 coloured1751 = result1751 := by
  rw [tree1751_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1752_agree_conditional
    (child0 : tree1750 = literal1750)
    (child1 : tree1751 = literal1751) : tree1752 = literal1752 := by
  rw [tree1752_def, child0, child1]
  rfl
theorem node1752_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1750 live1750 coloured1750 = result1750)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1751 live1751 coloured1751 = result1751) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1752 live1752 coloured1752 = result1752 := by
  rw [tree1752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1750 coloured1750 at child
  try dsimp only [live1752, coloured1752]
  rw [child]
  dsimp only [result1750]
  have child := child1
  unfold live1751 coloured1751 at child
  try dsimp only [live1752, coloured1752]
  rw [child]
  dsimp only [result1751]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1753_agree_conditional : tree1753 = literal1753 := by
  rw [tree1753_def]
  rfl
theorem node1753_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1753 live1753 coloured1753 = result1753 := by
  rw [tree1753_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1754_agree_conditional
    (child0 : tree1752 = literal1752)
    (child1 : tree1753 = literal1753) : tree1754 = literal1754 := by
  rw [tree1754_def, child0, child1]
  rfl
theorem node1754_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1752 live1752 coloured1752 = result1752)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1753 live1753 coloured1753 = result1753) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1754 live1754 coloured1754 = result1754 := by
  rw [tree1754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1752 coloured1752 at child
  try dsimp only [live1754, coloured1754]
  rw [child]
  dsimp only [result1752]
  have child := child1
  unfold live1753 coloured1753 at child
  try dsimp only [live1754, coloured1754]
  rw [child]
  dsimp only [result1753]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1755_agree_conditional : tree1755 = literal1755 := by
  rw [tree1755_def]
  rfl
theorem node1755_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1755 live1755 coloured1755 = result1755 := by
  rw [tree1755_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1756_agree_conditional
    (child0 : tree1754 = literal1754)
    (child1 : tree1755 = literal1755) : tree1756 = literal1756 := by
  rw [tree1756_def, child0, child1]
  rfl
theorem node1756_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1754 live1754 coloured1754 = result1754)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1755 live1755 coloured1755 = result1755) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1756 live1756 coloured1756 = result1756 := by
  rw [tree1756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1754 coloured1754 at child
  try dsimp only [live1756, coloured1756]
  rw [child]
  dsimp only [result1754]
  have child := child1
  unfold live1755 coloured1755 at child
  try dsimp only [live1756, coloured1756]
  rw [child]
  dsimp only [result1755]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1757_agree_conditional : tree1757 = literal1757 := by
  rw [tree1757_def]
  rfl
theorem node1757_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1757 live1757 coloured1757 = result1757 := by
  rw [tree1757_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1758_agree_conditional
    (child0 : tree1756 = literal1756)
    (child1 : tree1757 = literal1757) : tree1758 = literal1758 := by
  rw [tree1758_def, child0, child1]
  rfl
theorem node1758_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1756 live1756 coloured1756 = result1756)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1757 live1757 coloured1757 = result1757) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1758 live1758 coloured1758 = result1758 := by
  rw [tree1758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1756 coloured1756 at child
  try dsimp only [live1758, coloured1758]
  rw [child]
  dsimp only [result1756]
  have child := child1
  unfold live1757 coloured1757 at child
  try dsimp only [live1758, coloured1758]
  rw [child]
  dsimp only [result1757]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1759_agree_conditional : tree1759 = literal1759 := by
  rw [tree1759_def]
  rfl
theorem node1759_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1759 live1759 coloured1759 = result1759 := by
  rw [tree1759_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1760_agree_conditional
    (child0 : tree1758 = literal1758)
    (child1 : tree1759 = literal1759) : tree1760 = literal1760 := by
  rw [tree1760_def, child0, child1]
  rfl
theorem node1760_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1758 live1758 coloured1758 = result1758)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1759 live1759 coloured1759 = result1759) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1760 live1760 coloured1760 = result1760 := by
  rw [tree1760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1758 coloured1758 at child
  try dsimp only [live1760, coloured1760]
  rw [child]
  dsimp only [result1758]
  have child := child1
  unfold live1759 coloured1759 at child
  try dsimp only [live1760, coloured1760]
  rw [child]
  dsimp only [result1759]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1761_agree_conditional : tree1761 = literal1761 := by
  rw [tree1761_def]
  rfl
theorem node1761_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1761 live1761 coloured1761 = result1761 := by
  rw [tree1761_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1762_agree_conditional
    (child0 : tree1760 = literal1760)
    (child1 : tree1761 = literal1761) : tree1762 = literal1762 := by
  rw [tree1762_def, child0, child1]
  rfl
theorem node1762_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1760 live1760 coloured1760 = result1760)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1761 live1761 coloured1761 = result1761) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1762 live1762 coloured1762 = result1762 := by
  rw [tree1762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1760 coloured1760 at child
  try dsimp only [live1762, coloured1762]
  rw [child]
  dsimp only [result1760]
  have child := child1
  unfold live1761 coloured1761 at child
  try dsimp only [live1762, coloured1762]
  rw [child]
  dsimp only [result1761]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1763_agree_conditional : tree1763 = literal1763 := by
  rw [tree1763_def]
  rfl
theorem node1763_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1763 live1763 coloured1763 = result1763 := by
  rw [tree1763_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1764_agree_conditional
    (child0 : tree1762 = literal1762)
    (child1 : tree1763 = literal1763) : tree1764 = literal1764 := by
  rw [tree1764_def, child0, child1]
  rfl
theorem node1764_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1762 live1762 coloured1762 = result1762)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1763 live1763 coloured1763 = result1763) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1764 live1764 coloured1764 = result1764 := by
  rw [tree1764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1762 coloured1762 at child
  try dsimp only [live1764, coloured1764]
  rw [child]
  dsimp only [result1762]
  have child := child1
  unfold live1763 coloured1763 at child
  try dsimp only [live1764, coloured1764]
  rw [child]
  dsimp only [result1763]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1765_agree_conditional : tree1765 = literal1765 := by
  rw [tree1765_def]
  rfl
theorem node1765_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1765 live1765 coloured1765 = result1765 := by
  rw [tree1765_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1766_agree_conditional
    (child0 : tree1764 = literal1764)
    (child1 : tree1765 = literal1765) : tree1766 = literal1766 := by
  rw [tree1766_def, child0, child1]
  rfl
theorem node1766_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1764 live1764 coloured1764 = result1764)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1765 live1765 coloured1765 = result1765) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1766 live1766 coloured1766 = result1766 := by
  rw [tree1766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1764 coloured1764 at child
  try dsimp only [live1766, coloured1766]
  rw [child]
  dsimp only [result1764]
  have child := child1
  unfold live1765 coloured1765 at child
  try dsimp only [live1766, coloured1766]
  rw [child]
  dsimp only [result1765]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1767_agree_conditional : tree1767 = literal1767 := by
  rw [tree1767_def]
  rfl
theorem node1767_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1767 live1767 coloured1767 = result1767 := by
  rw [tree1767_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1768_agree_conditional
    (child0 : tree1766 = literal1766)
    (child1 : tree1767 = literal1767) : tree1768 = literal1768 := by
  rw [tree1768_def, child0, child1]
  rfl
theorem node1768_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1766 live1766 coloured1766 = result1766)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1767 live1767 coloured1767 = result1767) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1768 live1768 coloured1768 = result1768 := by
  rw [tree1768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1766 coloured1766 at child
  try dsimp only [live1768, coloured1768]
  rw [child]
  dsimp only [result1766]
  have child := child1
  unfold live1767 coloured1767 at child
  try dsimp only [live1768, coloured1768]
  rw [child]
  dsimp only [result1767]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1769_agree_conditional : tree1769 = literal1769 := by
  rw [tree1769_def]
  rfl
theorem node1769_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1769 live1769 coloured1769 = result1769 := by
  rw [tree1769_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1770_agree_conditional
    (child0 : tree1768 = literal1768)
    (child1 : tree1769 = literal1769) : tree1770 = literal1770 := by
  rw [tree1770_def, child0, child1]
  rfl
theorem node1770_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1768 live1768 coloured1768 = result1768)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1769 live1769 coloured1769 = result1769) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1770 live1770 coloured1770 = result1770 := by
  rw [tree1770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1768 coloured1768 at child
  try dsimp only [live1770, coloured1770]
  rw [child]
  dsimp only [result1768]
  have child := child1
  unfold live1769 coloured1769 at child
  try dsimp only [live1770, coloured1770]
  rw [child]
  dsimp only [result1769]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1771_agree_conditional : tree1771 = literal1771 := by
  rw [tree1771_def]
  rfl
theorem node1771_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1771 live1771 coloured1771 = result1771 := by
  rw [tree1771_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1772_agree_conditional
    (child0 : tree1770 = literal1770)
    (child1 : tree1771 = literal1771) : tree1772 = literal1772 := by
  rw [tree1772_def, child0, child1]
  rfl
theorem node1772_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1770 live1770 coloured1770 = result1770)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1771 live1771 coloured1771 = result1771) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1772 live1772 coloured1772 = result1772 := by
  rw [tree1772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1770 coloured1770 at child
  try dsimp only [live1772, coloured1772]
  rw [child]
  dsimp only [result1770]
  have child := child1
  unfold live1771 coloured1771 at child
  try dsimp only [live1772, coloured1772]
  rw [child]
  dsimp only [result1771]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1773_agree_conditional : tree1773 = literal1773 := by
  rw [tree1773_def]
  rfl
theorem node1773_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1773 live1773 coloured1773 = result1773 := by
  rw [tree1773_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1774_agree_conditional
    (child0 : tree1772 = literal1772)
    (child1 : tree1773 = literal1773) : tree1774 = literal1774 := by
  rw [tree1774_def, child0, child1]
  rfl
theorem node1774_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1772 live1772 coloured1772 = result1772)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1773 live1773 coloured1773 = result1773) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1774 live1774 coloured1774 = result1774 := by
  rw [tree1774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1772 coloured1772 at child
  try dsimp only [live1774, coloured1774]
  rw [child]
  dsimp only [result1772]
  have child := child1
  unfold live1773 coloured1773 at child
  try dsimp only [live1774, coloured1774]
  rw [child]
  dsimp only [result1773]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1775_agree_conditional : tree1775 = literal1775 := by
  rw [tree1775_def]
  rfl
theorem node1775_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1775 live1775 coloured1775 = result1775 := by
  rw [tree1775_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1776_agree_conditional
    (child0 : tree1774 = literal1774)
    (child1 : tree1775 = literal1775) : tree1776 = literal1776 := by
  rw [tree1776_def, child0, child1]
  rfl
theorem node1776_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1774 live1774 coloured1774 = result1774)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1775 live1775 coloured1775 = result1775) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1776 live1776 coloured1776 = result1776 := by
  rw [tree1776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1774 coloured1774 at child
  try dsimp only [live1776, coloured1776]
  rw [child]
  dsimp only [result1774]
  have child := child1
  unfold live1775 coloured1775 at child
  try dsimp only [live1776, coloured1776]
  rw [child]
  dsimp only [result1775]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1777_agree_conditional : tree1777 = literal1777 := by
  rw [tree1777_def]
  rfl
theorem node1777_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1777 live1777 coloured1777 = result1777 := by
  rw [tree1777_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1778_agree_conditional
    (child0 : tree1776 = literal1776)
    (child1 : tree1777 = literal1777) : tree1778 = literal1778 := by
  rw [tree1778_def, child0, child1]
  rfl
theorem node1778_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1776 live1776 coloured1776 = result1776)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1777 live1777 coloured1777 = result1777) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1778 live1778 coloured1778 = result1778 := by
  rw [tree1778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1776 coloured1776 at child
  try dsimp only [live1778, coloured1778]
  rw [child]
  dsimp only [result1776]
  have child := child1
  unfold live1777 coloured1777 at child
  try dsimp only [live1778, coloured1778]
  rw [child]
  dsimp only [result1777]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1779_agree_conditional : tree1779 = literal1779 := by
  rw [tree1779_def]
  rfl
theorem node1779_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1779 live1779 coloured1779 = result1779 := by
  rw [tree1779_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1780_agree_conditional
    (child0 : tree1778 = literal1778)
    (child1 : tree1779 = literal1779) : tree1780 = literal1780 := by
  rw [tree1780_def, child0, child1]
  rfl
theorem node1780_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1778 live1778 coloured1778 = result1778)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1779 live1779 coloured1779 = result1779) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1780 live1780 coloured1780 = result1780 := by
  rw [tree1780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1778 coloured1778 at child
  try dsimp only [live1780, coloured1780]
  rw [child]
  dsimp only [result1778]
  have child := child1
  unfold live1779 coloured1779 at child
  try dsimp only [live1780, coloured1780]
  rw [child]
  dsimp only [result1779]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1781_agree_conditional : tree1781 = literal1781 := by
  rw [tree1781_def]
  rfl
theorem node1781_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1781 live1781 coloured1781 = result1781 := by
  rw [tree1781_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1782_agree_conditional
    (child0 : tree1780 = literal1780)
    (child1 : tree1781 = literal1781) : tree1782 = literal1782 := by
  rw [tree1782_def, child0, child1]
  rfl
theorem node1782_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1780 live1780 coloured1780 = result1780)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1781 live1781 coloured1781 = result1781) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1782 live1782 coloured1782 = result1782 := by
  rw [tree1782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1780 coloured1780 at child
  try dsimp only [live1782, coloured1782]
  rw [child]
  dsimp only [result1780]
  have child := child1
  unfold live1781 coloured1781 at child
  try dsimp only [live1782, coloured1782]
  rw [child]
  dsimp only [result1781]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1783_agree_conditional : tree1783 = literal1783 := by
  rw [tree1783_def]
  rfl
theorem node1783_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1783 live1783 coloured1783 = result1783 := by
  rw [tree1783_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1784_agree_conditional
    (child0 : tree1782 = literal1782)
    (child1 : tree1783 = literal1783) : tree1784 = literal1784 := by
  rw [tree1784_def, child0, child1]
  rfl
theorem node1784_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1782 live1782 coloured1782 = result1782)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1783 live1783 coloured1783 = result1783) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1784 live1784 coloured1784 = result1784 := by
  rw [tree1784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1782 coloured1782 at child
  try dsimp only [live1784, coloured1784]
  rw [child]
  dsimp only [result1782]
  have child := child1
  unfold live1783 coloured1783 at child
  try dsimp only [live1784, coloured1784]
  rw [child]
  dsimp only [result1783]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1785_agree_conditional : tree1785 = literal1785 := by
  rw [tree1785_def]
  rfl
theorem node1785_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1785 live1785 coloured1785 = result1785 := by
  rw [tree1785_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1786_agree_conditional
    (child0 : tree1784 = literal1784)
    (child1 : tree1785 = literal1785) : tree1786 = literal1786 := by
  rw [tree1786_def, child0, child1]
  rfl
theorem node1786_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1784 live1784 coloured1784 = result1784)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1785 live1785 coloured1785 = result1785) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1786 live1786 coloured1786 = result1786 := by
  rw [tree1786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1784 coloured1784 at child
  try dsimp only [live1786, coloured1786]
  rw [child]
  dsimp only [result1784]
  have child := child1
  unfold live1785 coloured1785 at child
  try dsimp only [live1786, coloured1786]
  rw [child]
  dsimp only [result1785]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1787_agree_conditional : tree1787 = literal1787 := by
  rw [tree1787_def]
  rfl
theorem node1787_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1787 live1787 coloured1787 = result1787 := by
  rw [tree1787_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1788_agree_conditional
    (child0 : tree1786 = literal1786)
    (child1 : tree1787 = literal1787) : tree1788 = literal1788 := by
  rw [tree1788_def, child0, child1]
  rfl
theorem node1788_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1786 live1786 coloured1786 = result1786)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1787 live1787 coloured1787 = result1787) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1788 live1788 coloured1788 = result1788 := by
  rw [tree1788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1786 coloured1786 at child
  try dsimp only [live1788, coloured1788]
  rw [child]
  dsimp only [result1786]
  have child := child1
  unfold live1787 coloured1787 at child
  try dsimp only [live1788, coloured1788]
  rw [child]
  dsimp only [result1787]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1789_agree_conditional : tree1789 = literal1789 := by
  rw [tree1789_def]
  rfl
theorem node1789_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1789 live1789 coloured1789 = result1789 := by
  rw [tree1789_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1790_agree_conditional
    (child0 : tree1788 = literal1788)
    (child1 : tree1789 = literal1789) : tree1790 = literal1790 := by
  rw [tree1790_def, child0, child1]
  rfl
theorem node1790_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1788 live1788 coloured1788 = result1788)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1789 live1789 coloured1789 = result1789) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1790 live1790 coloured1790 = result1790 := by
  rw [tree1790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1788 coloured1788 at child
  try dsimp only [live1790, coloured1790]
  rw [child]
  dsimp only [result1788]
  have child := child1
  unfold live1789 coloured1789 at child
  try dsimp only [live1790, coloured1790]
  rw [child]
  dsimp only [result1789]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1791_agree_conditional : tree1791 = literal1791 := by
  rw [tree1791_def]
  rfl
theorem node1791_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1791 live1791 coloured1791 = result1791 := by
  rw [tree1791_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1792_agree_conditional
    (child0 : tree1790 = literal1790)
    (child1 : tree1791 = literal1791) : tree1792 = literal1792 := by
  rw [tree1792_def, child0, child1]
  rfl
theorem node1792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1790 live1790 coloured1790 = result1790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1791 live1791 coloured1791 = result1791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1792 live1792 coloured1792 = result1792 := by
  rw [tree1792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1790 coloured1790 at child
  try dsimp only [live1792, coloured1792]
  rw [child]
  dsimp only [result1790]
  have child := child1
  unfold live1791 coloured1791 at child
  try dsimp only [live1792, coloured1792]
  rw [child]
  dsimp only [result1791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1793_agree_conditional : tree1793 = literal1793 := by
  rw [tree1793_def]
  rfl
theorem node1793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1793 live1793 coloured1793 = result1793 := by
  rw [tree1793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1794_agree_conditional
    (child0 : tree1792 = literal1792)
    (child1 : tree1793 = literal1793) : tree1794 = literal1794 := by
  rw [tree1794_def, child0, child1]
  rfl
theorem node1794_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1792 live1792 coloured1792 = result1792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1793 live1793 coloured1793 = result1793) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1794 live1794 coloured1794 = result1794 := by
  rw [tree1794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1792 coloured1792 at child
  try dsimp only [live1794, coloured1794]
  rw [child]
  dsimp only [result1792]
  have child := child1
  unfold live1793 coloured1793 at child
  try dsimp only [live1794, coloured1794]
  rw [child]
  dsimp only [result1793]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1795_agree_conditional : tree1795 = literal1795 := by
  rw [tree1795_def]
  rfl
theorem node1795_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1795 live1795 coloured1795 = result1795 := by
  rw [tree1795_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1796_agree_conditional
    (child0 : tree1794 = literal1794)
    (child1 : tree1795 = literal1795) : tree1796 = literal1796 := by
  rw [tree1796_def, child0, child1]
  rfl
theorem node1796_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1794 live1794 coloured1794 = result1794)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1795 live1795 coloured1795 = result1795) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1796 live1796 coloured1796 = result1796 := by
  rw [tree1796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1794 coloured1794 at child
  try dsimp only [live1796, coloured1796]
  rw [child]
  dsimp only [result1794]
  have child := child1
  unfold live1795 coloured1795 at child
  try dsimp only [live1796, coloured1796]
  rw [child]
  dsimp only [result1795]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1797_agree_conditional : tree1797 = literal1797 := by
  rw [tree1797_def]
  rfl
theorem node1797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1797 live1797 coloured1797 = result1797 := by
  rw [tree1797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1798_agree_conditional
    (child0 : tree1796 = literal1796)
    (child1 : tree1797 = literal1797) : tree1798 = literal1798 := by
  rw [tree1798_def, child0, child1]
  rfl
theorem node1798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1796 live1796 coloured1796 = result1796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1797 live1797 coloured1797 = result1797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1798 live1798 coloured1798 = result1798 := by
  rw [tree1798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1796 coloured1796 at child
  try dsimp only [live1798, coloured1798]
  rw [child]
  dsimp only [result1796]
  have child := child1
  unfold live1797 coloured1797 at child
  try dsimp only [live1798, coloured1798]
  rw [child]
  dsimp only [result1797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1799_agree_conditional : tree1799 = literal1799 := by
  rw [tree1799_def]
  rfl
theorem node1799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1799 live1799 coloured1799 = result1799 := by
  rw [tree1799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1800_agree_conditional
    (child0 : tree1798 = literal1798)
    (child1 : tree1799 = literal1799) : tree1800 = literal1800 := by
  rw [tree1800_def, child0, child1]
  rfl
theorem node1800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1798 live1798 coloured1798 = result1798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1799 live1799 coloured1799 = result1799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1800 live1800 coloured1800 = result1800 := by
  rw [tree1800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1798 coloured1798 at child
  try dsimp only [live1800, coloured1800]
  rw [child]
  dsimp only [result1798]
  have child := child1
  unfold live1799 coloured1799 at child
  try dsimp only [live1800, coloured1800]
  rw [child]
  dsimp only [result1799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1801_agree_conditional : tree1801 = literal1801 := by
  rw [tree1801_def]
  rfl
theorem node1801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1801 live1801 coloured1801 = result1801 := by
  rw [tree1801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1802_agree_conditional
    (child0 : tree1800 = literal1800)
    (child1 : tree1801 = literal1801) : tree1802 = literal1802 := by
  rw [tree1802_def, child0, child1]
  rfl
theorem node1802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1800 live1800 coloured1800 = result1800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1801 live1801 coloured1801 = result1801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1802 live1802 coloured1802 = result1802 := by
  rw [tree1802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1800 coloured1800 at child
  try dsimp only [live1802, coloured1802]
  rw [child]
  dsimp only [result1800]
  have child := child1
  unfold live1801 coloured1801 at child
  try dsimp only [live1802, coloured1802]
  rw [child]
  dsimp only [result1801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1803_agree_conditional : tree1803 = literal1803 := by
  rw [tree1803_def]
  rfl
theorem node1803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1803 live1803 coloured1803 = result1803 := by
  rw [tree1803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1804_agree_conditional
    (child0 : tree1802 = literal1802)
    (child1 : tree1803 = literal1803) : tree1804 = literal1804 := by
  rw [tree1804_def, child0, child1]
  rfl
theorem node1804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1802 live1802 coloured1802 = result1802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1803 live1803 coloured1803 = result1803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1804 live1804 coloured1804 = result1804 := by
  rw [tree1804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1802 coloured1802 at child
  try dsimp only [live1804, coloured1804]
  rw [child]
  dsimp only [result1802]
  have child := child1
  unfold live1803 coloured1803 at child
  try dsimp only [live1804, coloured1804]
  rw [child]
  dsimp only [result1803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1805_agree_conditional : tree1805 = literal1805 := by
  rw [tree1805_def]
  rfl
theorem node1805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1805 live1805 coloured1805 = result1805 := by
  rw [tree1805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1806_agree_conditional
    (child0 : tree1804 = literal1804)
    (child1 : tree1805 = literal1805) : tree1806 = literal1806 := by
  rw [tree1806_def, child0, child1]
  rfl
theorem node1806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1804 live1804 coloured1804 = result1804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1805 live1805 coloured1805 = result1805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1806 live1806 coloured1806 = result1806 := by
  rw [tree1806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1804 coloured1804 at child
  try dsimp only [live1806, coloured1806]
  rw [child]
  dsimp only [result1804]
  have child := child1
  unfold live1805 coloured1805 at child
  try dsimp only [live1806, coloured1806]
  rw [child]
  dsimp only [result1805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1807_agree_conditional : tree1807 = literal1807 := by
  rw [tree1807_def]
  rfl
theorem node1807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1807 live1807 coloured1807 = result1807 := by
  rw [tree1807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1808_agree_conditional
    (child0 : tree1806 = literal1806)
    (child1 : tree1807 = literal1807) : tree1808 = literal1808 := by
  rw [tree1808_def, child0, child1]
  rfl
theorem node1808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1806 live1806 coloured1806 = result1806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1807 live1807 coloured1807 = result1807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1808 live1808 coloured1808 = result1808 := by
  rw [tree1808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1806 coloured1806 at child
  try dsimp only [live1808, coloured1808]
  rw [child]
  dsimp only [result1806]
  have child := child1
  unfold live1807 coloured1807 at child
  try dsimp only [live1808, coloured1808]
  rw [child]
  dsimp only [result1807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1809_agree_conditional : tree1809 = literal1809 := by
  rw [tree1809_def]
  rfl
theorem node1809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1809 live1809 coloured1809 = result1809 := by
  rw [tree1809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1810_agree_conditional
    (child0 : tree1808 = literal1808)
    (child1 : tree1809 = literal1809) : tree1810 = literal1810 := by
  rw [tree1810_def, child0, child1]
  rfl
theorem node1810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1808 live1808 coloured1808 = result1808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1809 live1809 coloured1809 = result1809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1810 live1810 coloured1810 = result1810 := by
  rw [tree1810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1808 coloured1808 at child
  try dsimp only [live1810, coloured1810]
  rw [child]
  dsimp only [result1808]
  have child := child1
  unfold live1809 coloured1809 at child
  try dsimp only [live1810, coloured1810]
  rw [child]
  dsimp only [result1809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1811_agree_conditional : tree1811 = literal1811 := by
  rw [tree1811_def]
  rfl
theorem node1811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1811 live1811 coloured1811 = result1811 := by
  rw [tree1811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1812_agree_conditional
    (child0 : tree1810 = literal1810)
    (child1 : tree1811 = literal1811) : tree1812 = literal1812 := by
  rw [tree1812_def, child0, child1]
  rfl
theorem node1812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1810 live1810 coloured1810 = result1810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1811 live1811 coloured1811 = result1811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1812 live1812 coloured1812 = result1812 := by
  rw [tree1812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1810 coloured1810 at child
  try dsimp only [live1812, coloured1812]
  rw [child]
  dsimp only [result1810]
  have child := child1
  unfold live1811 coloured1811 at child
  try dsimp only [live1812, coloured1812]
  rw [child]
  dsimp only [result1811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1813_agree_conditional : tree1813 = literal1813 := by
  rw [tree1813_def]
  rfl
theorem node1813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1813 live1813 coloured1813 = result1813 := by
  rw [tree1813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1814_agree_conditional
    (child0 : tree1812 = literal1812)
    (child1 : tree1813 = literal1813) : tree1814 = literal1814 := by
  rw [tree1814_def, child0, child1]
  rfl
theorem node1814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1812 live1812 coloured1812 = result1812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1813 live1813 coloured1813 = result1813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1814 live1814 coloured1814 = result1814 := by
  rw [tree1814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1812 coloured1812 at child
  try dsimp only [live1814, coloured1814]
  rw [child]
  dsimp only [result1812]
  have child := child1
  unfold live1813 coloured1813 at child
  try dsimp only [live1814, coloured1814]
  rw [child]
  dsimp only [result1813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1815_agree_conditional : tree1815 = literal1815 := by
  rw [tree1815_def]
  rfl
theorem node1815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1815 live1815 coloured1815 = result1815 := by
  rw [tree1815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1816_agree_conditional
    (child0 : tree1814 = literal1814)
    (child1 : tree1815 = literal1815) : tree1816 = literal1816 := by
  rw [tree1816_def, child0, child1]
  rfl
theorem node1816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1814 live1814 coloured1814 = result1814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1815 live1815 coloured1815 = result1815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1816 live1816 coloured1816 = result1816 := by
  rw [tree1816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1814 coloured1814 at child
  try dsimp only [live1816, coloured1816]
  rw [child]
  dsimp only [result1814]
  have child := child1
  unfold live1815 coloured1815 at child
  try dsimp only [live1816, coloured1816]
  rw [child]
  dsimp only [result1815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1817_agree_conditional : tree1817 = literal1817 := by
  rw [tree1817_def]
  rfl
theorem node1817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1817 live1817 coloured1817 = result1817 := by
  rw [tree1817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1818_agree_conditional
    (child0 : tree1816 = literal1816)
    (child1 : tree1817 = literal1817) : tree1818 = literal1818 := by
  rw [tree1818_def, child0, child1]
  rfl
theorem node1818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1816 live1816 coloured1816 = result1816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1817 live1817 coloured1817 = result1817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1818 live1818 coloured1818 = result1818 := by
  rw [tree1818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1816 coloured1816 at child
  try dsimp only [live1818, coloured1818]
  rw [child]
  dsimp only [result1816]
  have child := child1
  unfold live1817 coloured1817 at child
  try dsimp only [live1818, coloured1818]
  rw [child]
  dsimp only [result1817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1819_agree_conditional : tree1819 = literal1819 := by
  rw [tree1819_def]
  rfl
theorem node1819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1819 live1819 coloured1819 = result1819 := by
  rw [tree1819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1820_agree_conditional
    (child0 : tree1818 = literal1818)
    (child1 : tree1819 = literal1819) : tree1820 = literal1820 := by
  rw [tree1820_def, child0, child1]
  rfl
theorem node1820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1818 live1818 coloured1818 = result1818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1819 live1819 coloured1819 = result1819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1820 live1820 coloured1820 = result1820 := by
  rw [tree1820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1818 coloured1818 at child
  try dsimp only [live1820, coloured1820]
  rw [child]
  dsimp only [result1818]
  have child := child1
  unfold live1819 coloured1819 at child
  try dsimp only [live1820, coloured1820]
  rw [child]
  dsimp only [result1819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1821_agree_conditional : tree1821 = literal1821 := by
  rw [tree1821_def]
  rfl
theorem node1821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1821 live1821 coloured1821 = result1821 := by
  rw [tree1821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1822_agree_conditional
    (child0 : tree1820 = literal1820)
    (child1 : tree1821 = literal1821) : tree1822 = literal1822 := by
  rw [tree1822_def, child0, child1]
  rfl
theorem node1822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1820 live1820 coloured1820 = result1820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1821 live1821 coloured1821 = result1821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1822 live1822 coloured1822 = result1822 := by
  rw [tree1822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1820 coloured1820 at child
  try dsimp only [live1822, coloured1822]
  rw [child]
  dsimp only [result1820]
  have child := child1
  unfold live1821 coloured1821 at child
  try dsimp only [live1822, coloured1822]
  rw [child]
  dsimp only [result1821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1823_agree_conditional : tree1823 = literal1823 := by
  rw [tree1823_def]
  rfl
theorem node1823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1823 live1823 coloured1823 = result1823 := by
  rw [tree1823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
