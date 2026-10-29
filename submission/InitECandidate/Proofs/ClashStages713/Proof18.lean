import InitECandidate.Proofs.ClashStages713.Proof17
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree1728_agree : tree1728 = literal1728 := by
  rw [tree1728_def, tree1726_agree, tree1727_agree]
  rfl
theorem node1728_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1728 live1728 coloured1728 = result1728 := by
  rw [tree1728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1726_eq
  unfold live1726 coloured1726 at child
  try dsimp only [live1728, coloured1728]
  rw [child]
  dsimp only [result1726]
  have child := node1727_eq
  unfold live1727 coloured1727 at child
  try dsimp only [live1728, coloured1728]
  rw [child]
  dsimp only [result1727]
  try dsimp only [colour, result1728]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1729_agree : tree1729 = literal1729 := by
  rw [tree1729_def]
  rfl
theorem node1729_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1729 live1729 coloured1729 = result1729 := by
  rw [tree1729_def]
  try dsimp only [colour, result1729]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1730_agree : tree1730 = literal1730 := by
  rw [tree1730_def, tree1728_agree, tree1729_agree]
  rfl
theorem node1730_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1730 live1730 coloured1730 = result1730 := by
  rw [tree1730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1728_eq
  unfold live1728 coloured1728 at child
  try dsimp only [live1730, coloured1730]
  rw [child]
  dsimp only [result1728]
  have child := node1729_eq
  unfold live1729 coloured1729 at child
  try dsimp only [live1730, coloured1730]
  rw [child]
  dsimp only [result1729]
  try dsimp only [colour, result1730]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1731_agree : tree1731 = literal1731 := by
  rw [tree1731_def]
  rfl
theorem node1731_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1731 live1731 coloured1731 = result1731 := by
  rw [tree1731_def]
  try dsimp only [colour, result1731]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1732_agree : tree1732 = literal1732 := by
  rw [tree1732_def, tree1730_agree, tree1731_agree]
  rfl
theorem node1732_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1732 live1732 coloured1732 = result1732 := by
  rw [tree1732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1730_eq
  unfold live1730 coloured1730 at child
  try dsimp only [live1732, coloured1732]
  rw [child]
  dsimp only [result1730]
  have child := node1731_eq
  unfold live1731 coloured1731 at child
  try dsimp only [live1732, coloured1732]
  rw [child]
  dsimp only [result1731]
  try dsimp only [colour, result1732]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1733_agree : tree1733 = literal1733 := by
  rw [tree1733_def]
  rfl
theorem node1733_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1733 live1733 coloured1733 = result1733 := by
  rw [tree1733_def]
  try dsimp only [colour, result1733]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1734_agree : tree1734 = literal1734 := by
  rw [tree1734_def, tree1732_agree, tree1733_agree]
  rfl
theorem node1734_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1734 live1734 coloured1734 = result1734 := by
  rw [tree1734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1732_eq
  unfold live1732 coloured1732 at child
  try dsimp only [live1734, coloured1734]
  rw [child]
  dsimp only [result1732]
  have child := node1733_eq
  unfold live1733 coloured1733 at child
  try dsimp only [live1734, coloured1734]
  rw [child]
  dsimp only [result1733]
  try dsimp only [colour, result1734]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1735_agree : tree1735 = literal1735 := by
  rw [tree1735_def]
  rfl
theorem node1735_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1735 live1735 coloured1735 = result1735 := by
  rw [tree1735_def]
  try dsimp only [colour, result1735]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1736_agree : tree1736 = literal1736 := by
  rw [tree1736_def, tree1734_agree, tree1735_agree]
  rfl
theorem node1736_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1736 live1736 coloured1736 = result1736 := by
  rw [tree1736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1734_eq
  unfold live1734 coloured1734 at child
  try dsimp only [live1736, coloured1736]
  rw [child]
  dsimp only [result1734]
  have child := node1735_eq
  unfold live1735 coloured1735 at child
  try dsimp only [live1736, coloured1736]
  rw [child]
  dsimp only [result1735]
  try dsimp only [colour, result1736]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1737_agree : tree1737 = literal1737 := by
  rw [tree1737_def]
  rfl
theorem node1737_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1737 live1737 coloured1737 = result1737 := by
  rw [tree1737_def]
  try dsimp only [colour, result1737]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1738_agree : tree1738 = literal1738 := by
  rw [tree1738_def, tree1736_agree, tree1737_agree]
  rfl
theorem node1738_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1738 live1738 coloured1738 = result1738 := by
  rw [tree1738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1736_eq
  unfold live1736 coloured1736 at child
  try dsimp only [live1738, coloured1738]
  rw [child]
  dsimp only [result1736]
  have child := node1737_eq
  unfold live1737 coloured1737 at child
  try dsimp only [live1738, coloured1738]
  rw [child]
  dsimp only [result1737]
  try dsimp only [colour, result1738]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1739_agree : tree1739 = literal1739 := by
  rw [tree1739_def]
  rfl
theorem node1739_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1739 live1739 coloured1739 = result1739 := by
  rw [tree1739_def]
  try dsimp only [colour, result1739]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1740_agree : tree1740 = literal1740 := by
  rw [tree1740_def, tree1738_agree, tree1739_agree]
  rfl
theorem node1740_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1740 live1740 coloured1740 = result1740 := by
  rw [tree1740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1738_eq
  unfold live1738 coloured1738 at child
  try dsimp only [live1740, coloured1740]
  rw [child]
  dsimp only [result1738]
  have child := node1739_eq
  unfold live1739 coloured1739 at child
  try dsimp only [live1740, coloured1740]
  rw [child]
  dsimp only [result1739]
  try dsimp only [colour, result1740]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1741_agree : tree1741 = literal1741 := by
  rw [tree1741_def]
  rfl
theorem node1741_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1741 live1741 coloured1741 = result1741 := by
  rw [tree1741_def]
  try dsimp only [colour, result1741]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1742_agree : tree1742 = literal1742 := by
  rw [tree1742_def, tree1740_agree, tree1741_agree]
  rfl
theorem node1742_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1742 live1742 coloured1742 = result1742 := by
  rw [tree1742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1740_eq
  unfold live1740 coloured1740 at child
  try dsimp only [live1742, coloured1742]
  rw [child]
  dsimp only [result1740]
  have child := node1741_eq
  unfold live1741 coloured1741 at child
  try dsimp only [live1742, coloured1742]
  rw [child]
  dsimp only [result1741]
  try dsimp only [colour, result1742]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1743_agree : tree1743 = literal1743 := by
  rw [tree1743_def]
  rfl
theorem node1743_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1743 live1743 coloured1743 = result1743 := by
  rw [tree1743_def]
  try dsimp only [colour, result1743]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1744_agree : tree1744 = literal1744 := by
  rw [tree1744_def, tree1742_agree, tree1743_agree]
  rfl
theorem node1744_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1744 live1744 coloured1744 = result1744 := by
  rw [tree1744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1742_eq
  unfold live1742 coloured1742 at child
  try dsimp only [live1744, coloured1744]
  rw [child]
  dsimp only [result1742]
  have child := node1743_eq
  unfold live1743 coloured1743 at child
  try dsimp only [live1744, coloured1744]
  rw [child]
  dsimp only [result1743]
  try dsimp only [colour, result1744]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1745_agree : tree1745 = literal1745 := by
  rw [tree1745_def]
  rfl
theorem node1745_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1745 live1745 coloured1745 = result1745 := by
  rw [tree1745_def]
  try dsimp only [colour, result1745]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1746_agree : tree1746 = literal1746 := by
  rw [tree1746_def, tree1744_agree, tree1745_agree]
  rfl
theorem node1746_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1746 live1746 coloured1746 = result1746 := by
  rw [tree1746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1744_eq
  unfold live1744 coloured1744 at child
  try dsimp only [live1746, coloured1746]
  rw [child]
  dsimp only [result1744]
  have child := node1745_eq
  unfold live1745 coloured1745 at child
  try dsimp only [live1746, coloured1746]
  rw [child]
  dsimp only [result1745]
  try dsimp only [colour, result1746]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1747_agree : tree1747 = literal1747 := by
  rw [tree1747_def]
  rfl
theorem node1747_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1747 live1747 coloured1747 = result1747 := by
  rw [tree1747_def]
  try dsimp only [colour, result1747]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1748_agree : tree1748 = literal1748 := by
  rw [tree1748_def, tree1746_agree, tree1747_agree]
  rfl
theorem node1748_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1748 live1748 coloured1748 = result1748 := by
  rw [tree1748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1746_eq
  unfold live1746 coloured1746 at child
  try dsimp only [live1748, coloured1748]
  rw [child]
  dsimp only [result1746]
  have child := node1747_eq
  unfold live1747 coloured1747 at child
  try dsimp only [live1748, coloured1748]
  rw [child]
  dsimp only [result1747]
  try dsimp only [colour, result1748]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1749_agree : tree1749 = literal1749 := by
  rw [tree1749_def]
  rfl
theorem node1749_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1749 live1749 coloured1749 = result1749 := by
  rw [tree1749_def]
  try dsimp only [colour, result1749]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1750_agree : tree1750 = literal1750 := by
  rw [tree1750_def, tree1748_agree, tree1749_agree]
  rfl
theorem node1750_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1750 live1750 coloured1750 = result1750 := by
  rw [tree1750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1748_eq
  unfold live1748 coloured1748 at child
  try dsimp only [live1750, coloured1750]
  rw [child]
  dsimp only [result1748]
  have child := node1749_eq
  unfold live1749 coloured1749 at child
  try dsimp only [live1750, coloured1750]
  rw [child]
  dsimp only [result1749]
  try dsimp only [colour, result1750]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1751_agree : tree1751 = literal1751 := by
  rw [tree1751_def]
  rfl
theorem node1751_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1751 live1751 coloured1751 = result1751 := by
  rw [tree1751_def]
  try dsimp only [colour, result1751]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1752_agree : tree1752 = literal1752 := by
  rw [tree1752_def, tree1750_agree, tree1751_agree]
  rfl
theorem node1752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1752 live1752 coloured1752 = result1752 := by
  rw [tree1752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1750_eq
  unfold live1750 coloured1750 at child
  try dsimp only [live1752, coloured1752]
  rw [child]
  dsimp only [result1750]
  have child := node1751_eq
  unfold live1751 coloured1751 at child
  try dsimp only [live1752, coloured1752]
  rw [child]
  dsimp only [result1751]
  try dsimp only [colour, result1752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1753_agree : tree1753 = literal1753 := by
  rw [tree1753_def]
  rfl
theorem node1753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1753 live1753 coloured1753 = result1753 := by
  rw [tree1753_def]
  try dsimp only [colour, result1753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1754_agree : tree1754 = literal1754 := by
  rw [tree1754_def, tree1752_agree, tree1753_agree]
  rfl
theorem node1754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1754 live1754 coloured1754 = result1754 := by
  rw [tree1754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1752_eq
  unfold live1752 coloured1752 at child
  try dsimp only [live1754, coloured1754]
  rw [child]
  dsimp only [result1752]
  have child := node1753_eq
  unfold live1753 coloured1753 at child
  try dsimp only [live1754, coloured1754]
  rw [child]
  dsimp only [result1753]
  try dsimp only [colour, result1754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1755_agree : tree1755 = literal1755 := by
  rw [tree1755_def]
  rfl
theorem node1755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1755 live1755 coloured1755 = result1755 := by
  rw [tree1755_def]
  try dsimp only [colour, result1755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1756_agree : tree1756 = literal1756 := by
  rw [tree1756_def, tree1754_agree, tree1755_agree]
  rfl
theorem node1756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1756 live1756 coloured1756 = result1756 := by
  rw [tree1756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1754_eq
  unfold live1754 coloured1754 at child
  try dsimp only [live1756, coloured1756]
  rw [child]
  dsimp only [result1754]
  have child := node1755_eq
  unfold live1755 coloured1755 at child
  try dsimp only [live1756, coloured1756]
  rw [child]
  dsimp only [result1755]
  try dsimp only [colour, result1756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1757_agree : tree1757 = literal1757 := by
  rw [tree1757_def]
  rfl
theorem node1757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1757 live1757 coloured1757 = result1757 := by
  rw [tree1757_def]
  try dsimp only [colour, result1757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1758_agree : tree1758 = literal1758 := by
  rw [tree1758_def, tree1756_agree, tree1757_agree]
  rfl
theorem node1758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1758 live1758 coloured1758 = result1758 := by
  rw [tree1758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1756_eq
  unfold live1756 coloured1756 at child
  try dsimp only [live1758, coloured1758]
  rw [child]
  dsimp only [result1756]
  have child := node1757_eq
  unfold live1757 coloured1757 at child
  try dsimp only [live1758, coloured1758]
  rw [child]
  dsimp only [result1757]
  try dsimp only [colour, result1758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1759_agree : tree1759 = literal1759 := by
  rw [tree1759_def]
  rfl
theorem node1759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1759 live1759 coloured1759 = result1759 := by
  rw [tree1759_def]
  try dsimp only [colour, result1759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1760_agree : tree1760 = literal1760 := by
  rw [tree1760_def, tree1758_agree, tree1759_agree]
  rfl
theorem node1760_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1760 live1760 coloured1760 = result1760 := by
  rw [tree1760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1758_eq
  unfold live1758 coloured1758 at child
  try dsimp only [live1760, coloured1760]
  rw [child]
  dsimp only [result1758]
  have child := node1759_eq
  unfold live1759 coloured1759 at child
  try dsimp only [live1760, coloured1760]
  rw [child]
  dsimp only [result1759]
  try dsimp only [colour, result1760]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1761_agree : tree1761 = literal1761 := by
  rw [tree1761_def]
  rfl
theorem node1761_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1761 live1761 coloured1761 = result1761 := by
  rw [tree1761_def]
  try dsimp only [colour, result1761]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1762_agree : tree1762 = literal1762 := by
  rw [tree1762_def, tree1760_agree, tree1761_agree]
  rfl
theorem node1762_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1762 live1762 coloured1762 = result1762 := by
  rw [tree1762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1760_eq
  unfold live1760 coloured1760 at child
  try dsimp only [live1762, coloured1762]
  rw [child]
  dsimp only [result1760]
  have child := node1761_eq
  unfold live1761 coloured1761 at child
  try dsimp only [live1762, coloured1762]
  rw [child]
  dsimp only [result1761]
  try dsimp only [colour, result1762]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1763_agree : tree1763 = literal1763 := by
  rw [tree1763_def]
  rfl
theorem node1763_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1763 live1763 coloured1763 = result1763 := by
  rw [tree1763_def]
  try dsimp only [colour, result1763]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1764_agree : tree1764 = literal1764 := by
  rw [tree1764_def, tree1762_agree, tree1763_agree]
  rfl
theorem node1764_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1764 live1764 coloured1764 = result1764 := by
  rw [tree1764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1762_eq
  unfold live1762 coloured1762 at child
  try dsimp only [live1764, coloured1764]
  rw [child]
  dsimp only [result1762]
  have child := node1763_eq
  unfold live1763 coloured1763 at child
  try dsimp only [live1764, coloured1764]
  rw [child]
  dsimp only [result1763]
  try dsimp only [colour, result1764]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1765_agree : tree1765 = literal1765 := by
  rw [tree1765_def]
  rfl
theorem node1765_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1765 live1765 coloured1765 = result1765 := by
  rw [tree1765_def]
  try dsimp only [colour, result1765]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1766_agree : tree1766 = literal1766 := by
  rw [tree1766_def, tree1764_agree, tree1765_agree]
  rfl
theorem node1766_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1766 live1766 coloured1766 = result1766 := by
  rw [tree1766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1764_eq
  unfold live1764 coloured1764 at child
  try dsimp only [live1766, coloured1766]
  rw [child]
  dsimp only [result1764]
  have child := node1765_eq
  unfold live1765 coloured1765 at child
  try dsimp only [live1766, coloured1766]
  rw [child]
  dsimp only [result1765]
  try dsimp only [colour, result1766]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1767_agree : tree1767 = literal1767 := by
  rw [tree1767_def]
  rfl
theorem node1767_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1767 live1767 coloured1767 = result1767 := by
  rw [tree1767_def]
  try dsimp only [colour, result1767]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1768_agree : tree1768 = literal1768 := by
  rw [tree1768_def, tree1766_agree, tree1767_agree]
  rfl
theorem node1768_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1768 live1768 coloured1768 = result1768 := by
  rw [tree1768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1766_eq
  unfold live1766 coloured1766 at child
  try dsimp only [live1768, coloured1768]
  rw [child]
  dsimp only [result1766]
  have child := node1767_eq
  unfold live1767 coloured1767 at child
  try dsimp only [live1768, coloured1768]
  rw [child]
  dsimp only [result1767]
  try dsimp only [colour, result1768]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1769_agree : tree1769 = literal1769 := by
  rw [tree1769_def]
  rfl
theorem node1769_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1769 live1769 coloured1769 = result1769 := by
  rw [tree1769_def]
  try dsimp only [colour, result1769]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1770_agree : tree1770 = literal1770 := by
  rw [tree1770_def, tree1768_agree, tree1769_agree]
  rfl
theorem node1770_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1770 live1770 coloured1770 = result1770 := by
  rw [tree1770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1768_eq
  unfold live1768 coloured1768 at child
  try dsimp only [live1770, coloured1770]
  rw [child]
  dsimp only [result1768]
  have child := node1769_eq
  unfold live1769 coloured1769 at child
  try dsimp only [live1770, coloured1770]
  rw [child]
  dsimp only [result1769]
  try dsimp only [colour, result1770]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1771_agree : tree1771 = literal1771 := by
  rw [tree1771_def]
  rfl
theorem node1771_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1771 live1771 coloured1771 = result1771 := by
  rw [tree1771_def]
  try dsimp only [colour, result1771]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1772_agree : tree1772 = literal1772 := by
  rw [tree1772_def, tree1770_agree, tree1771_agree]
  rfl
theorem node1772_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1772 live1772 coloured1772 = result1772 := by
  rw [tree1772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1770_eq
  unfold live1770 coloured1770 at child
  try dsimp only [live1772, coloured1772]
  rw [child]
  dsimp only [result1770]
  have child := node1771_eq
  unfold live1771 coloured1771 at child
  try dsimp only [live1772, coloured1772]
  rw [child]
  dsimp only [result1771]
  try dsimp only [colour, result1772]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1773_agree : tree1773 = literal1773 := by
  rw [tree1773_def]
  rfl
theorem node1773_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1773 live1773 coloured1773 = result1773 := by
  rw [tree1773_def]
  try dsimp only [colour, result1773]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1774_agree : tree1774 = literal1774 := by
  rw [tree1774_def, tree1772_agree, tree1773_agree]
  rfl
theorem node1774_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1774 live1774 coloured1774 = result1774 := by
  rw [tree1774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1772_eq
  unfold live1772 coloured1772 at child
  try dsimp only [live1774, coloured1774]
  rw [child]
  dsimp only [result1772]
  have child := node1773_eq
  unfold live1773 coloured1773 at child
  try dsimp only [live1774, coloured1774]
  rw [child]
  dsimp only [result1773]
  try dsimp only [colour, result1774]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1775_agree : tree1775 = literal1775 := by
  rw [tree1775_def]
  rfl
theorem node1775_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1775 live1775 coloured1775 = result1775 := by
  rw [tree1775_def]
  try dsimp only [colour, result1775]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1776_agree : tree1776 = literal1776 := by
  rw [tree1776_def, tree1774_agree, tree1775_agree]
  rfl
theorem node1776_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1776 live1776 coloured1776 = result1776 := by
  rw [tree1776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1774_eq
  unfold live1774 coloured1774 at child
  try dsimp only [live1776, coloured1776]
  rw [child]
  dsimp only [result1774]
  have child := node1775_eq
  unfold live1775 coloured1775 at child
  try dsimp only [live1776, coloured1776]
  rw [child]
  dsimp only [result1775]
  try dsimp only [colour, result1776]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1777_agree : tree1777 = literal1777 := by
  rw [tree1777_def]
  rfl
theorem node1777_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1777 live1777 coloured1777 = result1777 := by
  rw [tree1777_def]
  try dsimp only [colour, result1777]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1778_agree : tree1778 = literal1778 := by
  rw [tree1778_def, tree1776_agree, tree1777_agree]
  rfl
theorem node1778_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1778 live1778 coloured1778 = result1778 := by
  rw [tree1778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1776_eq
  unfold live1776 coloured1776 at child
  try dsimp only [live1778, coloured1778]
  rw [child]
  dsimp only [result1776]
  have child := node1777_eq
  unfold live1777 coloured1777 at child
  try dsimp only [live1778, coloured1778]
  rw [child]
  dsimp only [result1777]
  try dsimp only [colour, result1778]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1779_agree : tree1779 = literal1779 := by
  rw [tree1779_def]
  rfl
theorem node1779_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1779 live1779 coloured1779 = result1779 := by
  rw [tree1779_def]
  try dsimp only [colour, result1779]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1780_agree : tree1780 = literal1780 := by
  rw [tree1780_def, tree1778_agree, tree1779_agree]
  rfl
theorem node1780_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1780 live1780 coloured1780 = result1780 := by
  rw [tree1780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1778_eq
  unfold live1778 coloured1778 at child
  try dsimp only [live1780, coloured1780]
  rw [child]
  dsimp only [result1778]
  have child := node1779_eq
  unfold live1779 coloured1779 at child
  try dsimp only [live1780, coloured1780]
  rw [child]
  dsimp only [result1779]
  try dsimp only [colour, result1780]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1781_agree : tree1781 = literal1781 := by
  rw [tree1781_def]
  rfl
theorem node1781_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1781 live1781 coloured1781 = result1781 := by
  rw [tree1781_def]
  try dsimp only [colour, result1781]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1782_agree : tree1782 = literal1782 := by
  rw [tree1782_def, tree1780_agree, tree1781_agree]
  rfl
theorem node1782_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1782 live1782 coloured1782 = result1782 := by
  rw [tree1782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1780_eq
  unfold live1780 coloured1780 at child
  try dsimp only [live1782, coloured1782]
  rw [child]
  dsimp only [result1780]
  have child := node1781_eq
  unfold live1781 coloured1781 at child
  try dsimp only [live1782, coloured1782]
  rw [child]
  dsimp only [result1781]
  try dsimp only [colour, result1782]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1783_agree : tree1783 = literal1783 := by
  rw [tree1783_def]
  rfl
theorem node1783_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1783 live1783 coloured1783 = result1783 := by
  rw [tree1783_def]
  try dsimp only [colour, result1783]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1784_agree : tree1784 = literal1784 := by
  rw [tree1784_def, tree1782_agree, tree1783_agree]
  rfl
theorem node1784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1784 live1784 coloured1784 = result1784 := by
  rw [tree1784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1782_eq
  unfold live1782 coloured1782 at child
  try dsimp only [live1784, coloured1784]
  rw [child]
  dsimp only [result1782]
  have child := node1783_eq
  unfold live1783 coloured1783 at child
  try dsimp only [live1784, coloured1784]
  rw [child]
  dsimp only [result1783]
  try dsimp only [colour, result1784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1785_agree : tree1785 = literal1785 := by
  rw [tree1785_def]
  rfl
theorem node1785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1785 live1785 coloured1785 = result1785 := by
  rw [tree1785_def]
  try dsimp only [colour, result1785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1786_agree : tree1786 = literal1786 := by
  rw [tree1786_def, tree1784_agree, tree1785_agree]
  rfl
theorem node1786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1786 live1786 coloured1786 = result1786 := by
  rw [tree1786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1784_eq
  unfold live1784 coloured1784 at child
  try dsimp only [live1786, coloured1786]
  rw [child]
  dsimp only [result1784]
  have child := node1785_eq
  unfold live1785 coloured1785 at child
  try dsimp only [live1786, coloured1786]
  rw [child]
  dsimp only [result1785]
  try dsimp only [colour, result1786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1787_agree : tree1787 = literal1787 := by
  rw [tree1787_def]
  rfl
theorem node1787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1787 live1787 coloured1787 = result1787 := by
  rw [tree1787_def]
  try dsimp only [colour, result1787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1788_agree : tree1788 = literal1788 := by
  rw [tree1788_def, tree1786_agree, tree1787_agree]
  rfl
theorem node1788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1788 live1788 coloured1788 = result1788 := by
  rw [tree1788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1786_eq
  unfold live1786 coloured1786 at child
  try dsimp only [live1788, coloured1788]
  rw [child]
  dsimp only [result1786]
  have child := node1787_eq
  unfold live1787 coloured1787 at child
  try dsimp only [live1788, coloured1788]
  rw [child]
  dsimp only [result1787]
  try dsimp only [colour, result1788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1789_agree : tree1789 = literal1789 := by
  rw [tree1789_def]
  rfl
theorem node1789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1789 live1789 coloured1789 = result1789 := by
  rw [tree1789_def]
  try dsimp only [colour, result1789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1790_agree : tree1790 = literal1790 := by
  rw [tree1790_def, tree1788_agree, tree1789_agree]
  rfl
theorem node1790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1790 live1790 coloured1790 = result1790 := by
  rw [tree1790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1788_eq
  unfold live1788 coloured1788 at child
  try dsimp only [live1790, coloured1790]
  rw [child]
  dsimp only [result1788]
  have child := node1789_eq
  unfold live1789 coloured1789 at child
  try dsimp only [live1790, coloured1790]
  rw [child]
  dsimp only [result1789]
  try dsimp only [colour, result1790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1791_agree : tree1791 = literal1791 := by
  rw [tree1791_def]
  rfl
theorem node1791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1791 live1791 coloured1791 = result1791 := by
  rw [tree1791_def]
  try dsimp only [colour, result1791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1792_agree : tree1792 = literal1792 := by
  rw [tree1792_def, tree1790_agree, tree1791_agree]
  rfl
theorem node1792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1792 live1792 coloured1792 = result1792 := by
  rw [tree1792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1790_eq
  unfold live1790 coloured1790 at child
  try dsimp only [live1792, coloured1792]
  rw [child]
  dsimp only [result1790]
  have child := node1791_eq
  unfold live1791 coloured1791 at child
  try dsimp only [live1792, coloured1792]
  rw [child]
  dsimp only [result1791]
  try dsimp only [colour, result1792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1793_agree : tree1793 = literal1793 := by
  rw [tree1793_def]
  rfl
theorem node1793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1793 live1793 coloured1793 = result1793 := by
  rw [tree1793_def]
  try dsimp only [colour, result1793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1794_agree : tree1794 = literal1794 := by
  rw [tree1794_def, tree1792_agree, tree1793_agree]
  rfl
theorem node1794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1794 live1794 coloured1794 = result1794 := by
  rw [tree1794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1792_eq
  unfold live1792 coloured1792 at child
  try dsimp only [live1794, coloured1794]
  rw [child]
  dsimp only [result1792]
  have child := node1793_eq
  unfold live1793 coloured1793 at child
  try dsimp only [live1794, coloured1794]
  rw [child]
  dsimp only [result1793]
  try dsimp only [colour, result1794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1795_agree : tree1795 = literal1795 := by
  rw [tree1795_def]
  rfl
theorem node1795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1795 live1795 coloured1795 = result1795 := by
  rw [tree1795_def]
  try dsimp only [colour, result1795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1796_agree : tree1796 = literal1796 := by
  rw [tree1796_def, tree1794_agree, tree1795_agree]
  rfl
theorem node1796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1796 live1796 coloured1796 = result1796 := by
  rw [tree1796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1794_eq
  unfold live1794 coloured1794 at child
  try dsimp only [live1796, coloured1796]
  rw [child]
  dsimp only [result1794]
  have child := node1795_eq
  unfold live1795 coloured1795 at child
  try dsimp only [live1796, coloured1796]
  rw [child]
  dsimp only [result1795]
  try dsimp only [colour, result1796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1797_agree : tree1797 = literal1797 := by
  rw [tree1797_def]
  rfl
theorem node1797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1797 live1797 coloured1797 = result1797 := by
  rw [tree1797_def]
  try dsimp only [colour, result1797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1798_agree : tree1798 = literal1798 := by
  rw [tree1798_def, tree1796_agree, tree1797_agree]
  rfl
theorem node1798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1798 live1798 coloured1798 = result1798 := by
  rw [tree1798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1796_eq
  unfold live1796 coloured1796 at child
  try dsimp only [live1798, coloured1798]
  rw [child]
  dsimp only [result1796]
  have child := node1797_eq
  unfold live1797 coloured1797 at child
  try dsimp only [live1798, coloured1798]
  rw [child]
  dsimp only [result1797]
  try dsimp only [colour, result1798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1799_agree : tree1799 = literal1799 := by
  rw [tree1799_def]
  rfl
theorem node1799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1799 live1799 coloured1799 = result1799 := by
  rw [tree1799_def]
  try dsimp only [colour, result1799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1800_agree : tree1800 = literal1800 := by
  rw [tree1800_def, tree1798_agree, tree1799_agree]
  rfl
theorem node1800_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1800 live1800 coloured1800 = result1800 := by
  rw [tree1800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1798_eq
  unfold live1798 coloured1798 at child
  try dsimp only [live1800, coloured1800]
  rw [child]
  dsimp only [result1798]
  have child := node1799_eq
  unfold live1799 coloured1799 at child
  try dsimp only [live1800, coloured1800]
  rw [child]
  dsimp only [result1799]
  try dsimp only [colour, result1800]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1801_agree : tree1801 = literal1801 := by
  rw [tree1801_def]
  rfl
theorem node1801_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1801 live1801 coloured1801 = result1801 := by
  rw [tree1801_def]
  try dsimp only [colour, result1801]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1802_agree : tree1802 = literal1802 := by
  rw [tree1802_def, tree1800_agree, tree1801_agree]
  rfl
theorem node1802_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1802 live1802 coloured1802 = result1802 := by
  rw [tree1802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1800_eq
  unfold live1800 coloured1800 at child
  try dsimp only [live1802, coloured1802]
  rw [child]
  dsimp only [result1800]
  have child := node1801_eq
  unfold live1801 coloured1801 at child
  try dsimp only [live1802, coloured1802]
  rw [child]
  dsimp only [result1801]
  try dsimp only [colour, result1802]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1803_agree : tree1803 = literal1803 := by
  rw [tree1803_def]
  rfl
theorem node1803_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1803 live1803 coloured1803 = result1803 := by
  rw [tree1803_def]
  try dsimp only [colour, result1803]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1804_agree : tree1804 = literal1804 := by
  rw [tree1804_def, tree1802_agree, tree1803_agree]
  rfl
theorem node1804_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1804 live1804 coloured1804 = result1804 := by
  rw [tree1804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1802_eq
  unfold live1802 coloured1802 at child
  try dsimp only [live1804, coloured1804]
  rw [child]
  dsimp only [result1802]
  have child := node1803_eq
  unfold live1803 coloured1803 at child
  try dsimp only [live1804, coloured1804]
  rw [child]
  dsimp only [result1803]
  try dsimp only [colour, result1804]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1805_agree : tree1805 = literal1805 := by
  rw [tree1805_def]
  rfl
theorem node1805_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1805 live1805 coloured1805 = result1805 := by
  rw [tree1805_def]
  try dsimp only [colour, result1805]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1806_agree : tree1806 = literal1806 := by
  rw [tree1806_def, tree1804_agree, tree1805_agree]
  rfl
theorem node1806_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1806 live1806 coloured1806 = result1806 := by
  rw [tree1806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1804_eq
  unfold live1804 coloured1804 at child
  try dsimp only [live1806, coloured1806]
  rw [child]
  dsimp only [result1804]
  have child := node1805_eq
  unfold live1805 coloured1805 at child
  try dsimp only [live1806, coloured1806]
  rw [child]
  dsimp only [result1805]
  try dsimp only [colour, result1806]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1807_agree : tree1807 = literal1807 := by
  rw [tree1807_def]
  rfl
theorem node1807_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1807 live1807 coloured1807 = result1807 := by
  rw [tree1807_def]
  try dsimp only [colour, result1807]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1808_agree : tree1808 = literal1808 := by
  rw [tree1808_def, tree1806_agree, tree1807_agree]
  rfl
theorem node1808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1808 live1808 coloured1808 = result1808 := by
  rw [tree1808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1806_eq
  unfold live1806 coloured1806 at child
  try dsimp only [live1808, coloured1808]
  rw [child]
  dsimp only [result1806]
  have child := node1807_eq
  unfold live1807 coloured1807 at child
  try dsimp only [live1808, coloured1808]
  rw [child]
  dsimp only [result1807]
  try dsimp only [colour, result1808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1809_agree : tree1809 = literal1809 := by
  rw [tree1809_def]
  rfl
theorem node1809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1809 live1809 coloured1809 = result1809 := by
  rw [tree1809_def]
  try dsimp only [colour, result1809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1810_agree : tree1810 = literal1810 := by
  rw [tree1810_def, tree1808_agree, tree1809_agree]
  rfl
theorem node1810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1810 live1810 coloured1810 = result1810 := by
  rw [tree1810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1808_eq
  unfold live1808 coloured1808 at child
  try dsimp only [live1810, coloured1810]
  rw [child]
  dsimp only [result1808]
  have child := node1809_eq
  unfold live1809 coloured1809 at child
  try dsimp only [live1810, coloured1810]
  rw [child]
  dsimp only [result1809]
  try dsimp only [colour, result1810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1811_agree : tree1811 = literal1811 := by
  rw [tree1811_def]
  rfl
theorem node1811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1811 live1811 coloured1811 = result1811 := by
  rw [tree1811_def]
  try dsimp only [colour, result1811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1812_agree : tree1812 = literal1812 := by
  rw [tree1812_def, tree1810_agree, tree1811_agree]
  rfl
theorem node1812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1812 live1812 coloured1812 = result1812 := by
  rw [tree1812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1810_eq
  unfold live1810 coloured1810 at child
  try dsimp only [live1812, coloured1812]
  rw [child]
  dsimp only [result1810]
  have child := node1811_eq
  unfold live1811 coloured1811 at child
  try dsimp only [live1812, coloured1812]
  rw [child]
  dsimp only [result1811]
  try dsimp only [colour, result1812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1813_agree : tree1813 = literal1813 := by
  rw [tree1813_def]
  rfl
theorem node1813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1813 live1813 coloured1813 = result1813 := by
  rw [tree1813_def]
  try dsimp only [colour, result1813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1814_agree : tree1814 = literal1814 := by
  rw [tree1814_def, tree1812_agree, tree1813_agree]
  rfl
theorem node1814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1814 live1814 coloured1814 = result1814 := by
  rw [tree1814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1812_eq
  unfold live1812 coloured1812 at child
  try dsimp only [live1814, coloured1814]
  rw [child]
  dsimp only [result1812]
  have child := node1813_eq
  unfold live1813 coloured1813 at child
  try dsimp only [live1814, coloured1814]
  rw [child]
  dsimp only [result1813]
  try dsimp only [colour, result1814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1815_agree : tree1815 = literal1815 := by
  rw [tree1815_def]
  rfl
theorem node1815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1815 live1815 coloured1815 = result1815 := by
  rw [tree1815_def]
  try dsimp only [colour, result1815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1816_agree : tree1816 = literal1816 := by
  rw [tree1816_def, tree1814_agree, tree1815_agree]
  rfl
theorem node1816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1816 live1816 coloured1816 = result1816 := by
  rw [tree1816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1814_eq
  unfold live1814 coloured1814 at child
  try dsimp only [live1816, coloured1816]
  rw [child]
  dsimp only [result1814]
  have child := node1815_eq
  unfold live1815 coloured1815 at child
  try dsimp only [live1816, coloured1816]
  rw [child]
  dsimp only [result1815]
  try dsimp only [colour, result1816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1817_agree : tree1817 = literal1817 := by
  rw [tree1817_def]
  rfl
theorem node1817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1817 live1817 coloured1817 = result1817 := by
  rw [tree1817_def]
  try dsimp only [colour, result1817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1818_agree : tree1818 = literal1818 := by
  rw [tree1818_def, tree1816_agree, tree1817_agree]
  rfl
theorem node1818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1818 live1818 coloured1818 = result1818 := by
  rw [tree1818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1816_eq
  unfold live1816 coloured1816 at child
  try dsimp only [live1818, coloured1818]
  rw [child]
  dsimp only [result1816]
  have child := node1817_eq
  unfold live1817 coloured1817 at child
  try dsimp only [live1818, coloured1818]
  rw [child]
  dsimp only [result1817]
  try dsimp only [colour, result1818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1819_agree : tree1819 = literal1819 := by
  rw [tree1819_def]
  rfl
theorem node1819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1819 live1819 coloured1819 = result1819 := by
  rw [tree1819_def]
  try dsimp only [colour, result1819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1820_agree : tree1820 = literal1820 := by
  rw [tree1820_def, tree1818_agree, tree1819_agree]
  rfl
theorem node1820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1820 live1820 coloured1820 = result1820 := by
  rw [tree1820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1818_eq
  unfold live1818 coloured1818 at child
  try dsimp only [live1820, coloured1820]
  rw [child]
  dsimp only [result1818]
  have child := node1819_eq
  unfold live1819 coloured1819 at child
  try dsimp only [live1820, coloured1820]
  rw [child]
  dsimp only [result1819]
  try dsimp only [colour, result1820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1821_agree : tree1821 = literal1821 := by
  rw [tree1821_def]
  rfl
theorem node1821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1821 live1821 coloured1821 = result1821 := by
  rw [tree1821_def]
  try dsimp only [colour, result1821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1822_agree : tree1822 = literal1822 := by
  rw [tree1822_def, tree1820_agree, tree1821_agree]
  rfl
theorem node1822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1822 live1822 coloured1822 = result1822 := by
  rw [tree1822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1820_eq
  unfold live1820 coloured1820 at child
  try dsimp only [live1822, coloured1822]
  rw [child]
  dsimp only [result1820]
  have child := node1821_eq
  unfold live1821 coloured1821 at child
  try dsimp only [live1822, coloured1822]
  rw [child]
  dsimp only [result1821]
  try dsimp only [colour, result1822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1823_agree : tree1823 = literal1823 := by
  rw [tree1823_def]
  rfl
theorem node1823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1823 live1823 coloured1823 = result1823 := by
  rw [tree1823_def]
  try dsimp only [colour, result1823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
