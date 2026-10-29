import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages692.Parallel.Data.Chunk007
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages692.Parallel
theorem node1792_cond_eq
    (child1728 : Flapjack.WordAlloc.removeDeadStructural input1728 value776 value1 value2 = (output1728, value778, value1))
    (child1791 : Flapjack.WordAlloc.removeDeadStructural input1791 value778 value1 value2 = (output1791, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1792 value776 value1 value2 = (output1792, value807, value1) := by
  rw [input1792_def, output1792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1728]
  try dsimp only
  rw [child1791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1728_skip, output1791_skip]
  kernel_rfl

theorem node1793_cond_eq
    (child1725 : Flapjack.WordAlloc.removeDeadStructural input1725 value775 value1 value2 = (output1725, value776, value1))
    (child1792 : Flapjack.WordAlloc.removeDeadStructural input1792 value776 value1 value2 = (output1792, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1793 value775 value1 value2 = (output1793, value807, value1) := by
  rw [input1793_def, output1793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1725]
  try dsimp only
  rw [child1792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1725_skip, output1792_skip]
  kernel_rfl

theorem node1794_cond_eq
    (child1724 : Flapjack.WordAlloc.removeDeadStructural input1724 value773 value1 value2 = (output1724, value775, value1))
    (child1793 : Flapjack.WordAlloc.removeDeadStructural input1793 value775 value1 value2 = (output1793, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1794 value773 value1 value2 = (output1794, value807, value1) := by
  rw [input1794_def, output1794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1724]
  try dsimp only
  rw [child1793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1724_skip, output1793_skip]
  kernel_rfl

theorem node1795_cond_eq
    (child1721 : Flapjack.WordAlloc.removeDeadStructural input1721 value772 value1 value2 = (output1721, value773, value1))
    (child1794 : Flapjack.WordAlloc.removeDeadStructural input1794 value773 value1 value2 = (output1794, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1795 value772 value1 value2 = (output1795, value807, value1) := by
  rw [input1795_def, output1795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1721]
  try dsimp only
  rw [child1794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1721_skip, output1794_skip]
  kernel_rfl

theorem node1796_cond_eq
    (child1720 : Flapjack.WordAlloc.removeDeadStructural input1720 value770 value1 value2 = (output1720, value772, value1))
    (child1795 : Flapjack.WordAlloc.removeDeadStructural input1795 value772 value1 value2 = (output1795, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1796 value770 value1 value2 = (output1796, value807, value1) := by
  rw [input1796_def, output1796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1720]
  try dsimp only
  rw [child1795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1720_skip, output1795_skip]
  kernel_rfl

theorem node1797_cond_eq
    (child1717 : Flapjack.WordAlloc.removeDeadStructural input1717 value769 value1 value2 = (output1717, value770, value1))
    (child1796 : Flapjack.WordAlloc.removeDeadStructural input1796 value770 value1 value2 = (output1796, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1797 value769 value1 value2 = (output1797, value807, value1) := by
  rw [input1797_def, output1797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1717]
  try dsimp only
  rw [child1796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1717_skip, output1796_skip]
  kernel_rfl

theorem node1798_cond_eq
    (child1716 : Flapjack.WordAlloc.removeDeadStructural input1716 value767 value1 value2 = (output1716, value769, value1))
    (child1797 : Flapjack.WordAlloc.removeDeadStructural input1797 value769 value1 value2 = (output1797, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1798 value767 value1 value2 = (output1798, value807, value1) := by
  rw [input1798_def, output1798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1716]
  try dsimp only
  rw [child1797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1716_skip, output1797_skip]
  kernel_rfl

theorem node1799_cond_eq
    (child1713 : Flapjack.WordAlloc.removeDeadStructural input1713 value766 value1 value2 = (output1713, value767, value1))
    (child1798 : Flapjack.WordAlloc.removeDeadStructural input1798 value767 value1 value2 = (output1798, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1799 value766 value1 value2 = (output1799, value807, value1) := by
  rw [input1799_def, output1799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1713]
  try dsimp only
  rw [child1798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1713_skip, output1798_skip]
  kernel_rfl

theorem node1800_cond_eq
    (child1712 : Flapjack.WordAlloc.removeDeadStructural input1712 value764 value1 value2 = (output1712, value766, value1))
    (child1799 : Flapjack.WordAlloc.removeDeadStructural input1799 value766 value1 value2 = (output1799, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1800 value764 value1 value2 = (output1800, value807, value1) := by
  rw [input1800_def, output1800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1712]
  try dsimp only
  rw [child1799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1712_skip, output1799_skip]
  kernel_rfl

theorem node1801_cond_eq
    (child1709 : Flapjack.WordAlloc.removeDeadStructural input1709 value762 value1 value2 = (output1709, value764, value1))
    (child1800 : Flapjack.WordAlloc.removeDeadStructural input1800 value764 value1 value2 = (output1800, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1801 value762 value1 value2 = (output1801, value807, value1) := by
  rw [input1801_def, output1801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1709]
  try dsimp only
  rw [child1800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1709_skip, output1800_skip]
  kernel_rfl

theorem node1802_cond_eq
    (child1706 : Flapjack.WordAlloc.removeDeadStructural input1706 value760 value1 value2 = (output1706, value762, value1))
    (child1801 : Flapjack.WordAlloc.removeDeadStructural input1801 value762 value1 value2 = (output1801, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1802 value760 value1 value2 = (output1802, value807, value1) := by
  rw [input1802_def, output1802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1706]
  try dsimp only
  rw [child1801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1706_skip, output1801_skip]
  kernel_rfl

theorem node1803_cond_eq
    (child1703 : Flapjack.WordAlloc.removeDeadStructural input1703 value758 value1 value2 = (output1703, value760, value1))
    (child1802 : Flapjack.WordAlloc.removeDeadStructural input1802 value760 value1 value2 = (output1802, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1803 value758 value1 value2 = (output1803, value807, value1) := by
  rw [input1803_def, output1803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1703]
  try dsimp only
  rw [child1802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1703_skip, output1802_skip]
  kernel_rfl

theorem node1804_cond_eq
    (child1700 : Flapjack.WordAlloc.removeDeadStructural input1700 value756 value1 value2 = (output1700, value758, value1))
    (child1803 : Flapjack.WordAlloc.removeDeadStructural input1803 value758 value1 value2 = (output1803, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1804 value756 value1 value2 = (output1804, value807, value1) := by
  rw [input1804_def, output1804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1700]
  try dsimp only
  rw [child1803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1700_skip, output1803_skip]
  kernel_rfl

theorem node1805_cond_eq
    (child1697 : Flapjack.WordAlloc.removeDeadStructural input1697 value754 value1 value2 = (output1697, value756, value1))
    (child1804 : Flapjack.WordAlloc.removeDeadStructural input1804 value756 value1 value2 = (output1804, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1805 value754 value1 value2 = (output1805, value807, value1) := by
  rw [input1805_def, output1805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1697]
  try dsimp only
  rw [child1804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1697_skip, output1804_skip]
  kernel_rfl

theorem node1806_cond_eq
    (child1694 : Flapjack.WordAlloc.removeDeadStructural input1694 value753 value1 value2 = (output1694, value754, value1))
    (child1805 : Flapjack.WordAlloc.removeDeadStructural input1805 value754 value1 value2 = (output1805, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1806 value753 value1 value2 = (output1806, value807, value1) := by
  rw [input1806_def, output1806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1694]
  try dsimp only
  rw [child1805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1694_skip, output1805_skip]
  kernel_rfl

theorem node1807_cond_eq
    (child1693 : Flapjack.WordAlloc.removeDeadStructural input1693 value751 value1 value2 = (output1693, value753, value1))
    (child1806 : Flapjack.WordAlloc.removeDeadStructural input1806 value753 value1 value2 = (output1806, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1807 value751 value1 value2 = (output1807, value807, value1) := by
  rw [input1807_def, output1807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1693]
  try dsimp only
  rw [child1806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1693_skip, output1806_skip]
  kernel_rfl

theorem node1808_cond_eq
    (child1690 : Flapjack.WordAlloc.removeDeadStructural input1690 value750 value1 value2 = (output1690, value751, value1))
    (child1807 : Flapjack.WordAlloc.removeDeadStructural input1807 value751 value1 value2 = (output1807, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1808 value750 value1 value2 = (output1808, value807, value1) := by
  rw [input1808_def, output1808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1690]
  try dsimp only
  rw [child1807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1690_skip, output1807_skip]
  kernel_rfl

theorem node1809_cond_eq
    (child1689 : Flapjack.WordAlloc.removeDeadStructural input1689 value748 value1 value2 = (output1689, value750, value1))
    (child1808 : Flapjack.WordAlloc.removeDeadStructural input1808 value750 value1 value2 = (output1808, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1809 value748 value1 value2 = (output1809, value807, value1) := by
  rw [input1809_def, output1809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1689]
  try dsimp only
  rw [child1808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1689_skip, output1808_skip]
  kernel_rfl

theorem node1810_cond_eq
    (child1686 : Flapjack.WordAlloc.removeDeadStructural input1686 value747 value1 value2 = (output1686, value748, value1))
    (child1809 : Flapjack.WordAlloc.removeDeadStructural input1809 value748 value1 value2 = (output1809, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1810 value747 value1 value2 = (output1810, value807, value1) := by
  rw [input1810_def, output1810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1686]
  try dsimp only
  rw [child1809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1686_skip, output1809_skip]
  kernel_rfl

theorem node1811_cond_eq
    (child1685 : Flapjack.WordAlloc.removeDeadStructural input1685 value745 value1 value2 = (output1685, value747, value1))
    (child1810 : Flapjack.WordAlloc.removeDeadStructural input1810 value747 value1 value2 = (output1810, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1811 value745 value1 value2 = (output1811, value807, value1) := by
  rw [input1811_def, output1811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1685]
  try dsimp only
  rw [child1810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1685_skip, output1810_skip]
  kernel_rfl

theorem node1812_cond_eq
    (child1682 : Flapjack.WordAlloc.removeDeadStructural input1682 value744 value1 value2 = (output1682, value745, value1))
    (child1811 : Flapjack.WordAlloc.removeDeadStructural input1811 value745 value1 value2 = (output1811, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1812 value744 value1 value2 = (output1812, value807, value1) := by
  rw [input1812_def, output1812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1682]
  try dsimp only
  rw [child1811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1682_skip, output1811_skip]
  kernel_rfl

theorem node1813_cond_eq
    (child1681 : Flapjack.WordAlloc.removeDeadStructural input1681 value740 value1 value2 = (output1681, value744, value1))
    (child1812 : Flapjack.WordAlloc.removeDeadStructural input1812 value744 value1 value2 = (output1812, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1813 value740 value1 value2 = (output1813, value807, value1) := by
  rw [input1813_def, output1813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1681]
  try dsimp only
  rw [child1812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1681_skip, output1812_skip]
  kernel_rfl

theorem node1814_cond_eq
    (child1678 : Flapjack.WordAlloc.removeDeadStructural input1678 value742 value1 value2 = (output1678, value740, value1))
    (child1813 : Flapjack.WordAlloc.removeDeadStructural input1813 value740 value1 value2 = (output1813, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1814 value742 value1 value2 = (output1814, value807, value1) := by
  rw [input1814_def, output1814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1678]
  try dsimp only
  rw [child1813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1678_skip, output1813_skip]
  kernel_rfl

theorem node1815_cond_eq
    (child1677 : Flapjack.WordAlloc.removeDeadStructural input1677 value740 value1 value2 = (output1677, value742, value1))
    (child1814 : Flapjack.WordAlloc.removeDeadStructural input1814 value742 value1 value2 = (output1814, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1815 value740 value1 value2 = (output1815, value807, value1) := by
  rw [input1815_def, output1815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1677]
  try dsimp only
  rw [child1814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1677_skip, output1814_skip]
  kernel_rfl

theorem node1816_cond_eq
    (child1674 : Flapjack.WordAlloc.removeDeadStructural input1674 value739 value1 value2 = (output1674, value740, value1))
    (child1815 : Flapjack.WordAlloc.removeDeadStructural input1815 value740 value1 value2 = (output1815, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1816 value739 value1 value2 = (output1816, value807, value1) := by
  rw [input1816_def, output1816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1674]
  try dsimp only
  rw [child1815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1674_skip, output1815_skip]
  kernel_rfl

theorem node1817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1817 value739 value1 value2 = (output1817, value739, value1) := by
  rw [input1817_def, output1817_def]
  kernel_rfl

theorem node1818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1818 value739 value1 value2 = (output1818, value739, value1) := by
  rw [input1818_def, output1818_def]
  kernel_rfl

theorem node1819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1819 value739 value1 value2 = (output1819, value739, value1) := by
  rw [input1819_def, output1819_def]
  kernel_rfl

theorem node1820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1820 value739 value1 value2 = (output1820, value739, value1) := by
  rw [input1820_def, output1820_def]
  kernel_rfl

theorem node1821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1821 value739 value1 value2 = (output1821, value739, value1) := by
  rw [input1821_def, output1821_def]
  kernel_rfl

theorem node1822_cond_eq
    (child1820 : Flapjack.WordAlloc.removeDeadStructural input1820 value739 value1 value2 = (output1820, value739, value1))
    (child1821 : Flapjack.WordAlloc.removeDeadStructural input1821 value739 value1 value2 = (output1821, value739, value1)) : Flapjack.WordAlloc.removeDeadStructural input1822 value739 value1 value2 = (output1822, value739, value1) := by
  rw [input1822_def, output1822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1820]
  try dsimp only
  rw [child1821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1820_skip, output1821_skip]
  kernel_rfl

theorem node1823_cond_eq
    (child1819 : Flapjack.WordAlloc.removeDeadStructural input1819 value739 value1 value2 = (output1819, value739, value1))
    (child1822 : Flapjack.WordAlloc.removeDeadStructural input1822 value739 value1 value2 = (output1822, value739, value1)) : Flapjack.WordAlloc.removeDeadStructural input1823 value739 value1 value2 = (output1823, value739, value1) := by
  rw [input1823_def, output1823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1819]
  try dsimp only
  rw [child1822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1819_skip, output1822_skip]
  kernel_rfl

theorem node1824_cond_eq
    (child1818 : Flapjack.WordAlloc.removeDeadStructural input1818 value739 value1 value2 = (output1818, value739, value1))
    (child1823 : Flapjack.WordAlloc.removeDeadStructural input1823 value739 value1 value2 = (output1823, value739, value1)) : Flapjack.WordAlloc.removeDeadStructural input1824 value739 value1 value2 = (output1824, value739, value1) := by
  rw [input1824_def, output1824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1818]
  try dsimp only
  rw [child1823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1818_skip, output1823_skip]
  kernel_rfl

theorem node1825_cond_eq
    (child1817 : Flapjack.WordAlloc.removeDeadStructural input1817 value739 value1 value2 = (output1817, value739, value1))
    (child1824 : Flapjack.WordAlloc.removeDeadStructural input1824 value739 value1 value2 = (output1824, value739, value1)) : Flapjack.WordAlloc.removeDeadStructural input1825 value739 value1 value2 = (output1825, value739, value1) := by
  rw [input1825_def, output1825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1817]
  try dsimp only
  rw [child1824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1817_skip, output1824_skip]
  kernel_rfl

theorem node1826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1826 value739 value1 value2 = (output1826, value807, value1) := by
  rw [input1826_def, output1826_def]
  kernel_rfl

theorem node1827_cond_eq
    (child1825 : Flapjack.WordAlloc.removeDeadStructural input1825 value739 value1 value2 = (output1825, value739, value1))
    (child1826 : Flapjack.WordAlloc.removeDeadStructural input1826 value739 value1 value2 = (output1826, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1827 value739 value1 value2 = (output1827, value807, value1) := by
  rw [input1827_def, output1827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1825]
  try dsimp only
  rw [child1826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1825_skip, output1826_skip]
  kernel_rfl

theorem node1828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1828 value807 value1 value2 = (output1828, value807, value1) := by
  rw [input1828_def, output1828_def]
  kernel_rfl

theorem node1829_cond_eq
    (child1827 : Flapjack.WordAlloc.removeDeadStructural input1827 value739 value1 value2 = (output1827, value807, value1))
    (child1828 : Flapjack.WordAlloc.removeDeadStructural input1828 value807 value1 value2 = (output1828, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1829 value739 value1 value2 = (output1829, value807, value1) := by
  rw [input1829_def, output1829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1827]
  try dsimp only
  rw [child1828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1827_skip, output1828_skip]
  kernel_rfl

theorem node1830_cond_eq
    (child1816 : Flapjack.WordAlloc.removeDeadStructural input1816 value739 value1 value2 = (output1816, value807, value1))
    (child1829 : Flapjack.WordAlloc.removeDeadStructural input1829 value739 value1 value2 = (output1829, value807, value1)) : Flapjack.WordAlloc.removeDeadStructural input1830 value739 value1 value2 = (output1830, value809, value1) := by
  rw [input1830_def, output1830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1816]
  try dsimp only
  rw [child1829]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1816_skip, output1829_skip]
  kernel_rfl

theorem node1831_cond_eq
    (child1663 : Flapjack.WordAlloc.removeDeadStructural input1663 value739 value1 value2 = (output1663, value739, value1))
    (child1830 : Flapjack.WordAlloc.removeDeadStructural input1830 value739 value1 value2 = (output1830, value809, value1)) : Flapjack.WordAlloc.removeDeadStructural input1831 value739 value1 value2 = (output1831, value809, value1) := by
  rw [input1831_def, output1831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1663]
  try dsimp only
  rw [child1830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1663_skip, output1830_skip]
  kernel_rfl

theorem node1832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1832 value809 value1 value2 = (output1832, value810, value1) := by
  rw [input1832_def, output1832_def]
  kernel_rfl

theorem node1833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1833 value810 value1 value2 = (output1833, value811, value1) := by
  rw [input1833_def, output1833_def]
  kernel_rfl

theorem node1834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1834 value811 value1 value2 = (output1834, value811, value1) := by
  rw [input1834_def, output1834_def]
  kernel_rfl

theorem node1835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1835 value811 value1 value2 = (output1835, value812, value1) := by
  rw [input1835_def, output1835_def]
  kernel_rfl

theorem node1836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1836 value812 value1 value2 = (output1836, value813, value1) := by
  rw [input1836_def, output1836_def]
  kernel_rfl

theorem node1837_cond_eq
    (child1835 : Flapjack.WordAlloc.removeDeadStructural input1835 value811 value1 value2 = (output1835, value812, value1))
    (child1836 : Flapjack.WordAlloc.removeDeadStructural input1836 value812 value1 value2 = (output1836, value813, value1)) : Flapjack.WordAlloc.removeDeadStructural input1837 value811 value1 value2 = (output1837, value813, value1) := by
  rw [input1837_def, output1837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1835]
  try dsimp only
  rw [child1836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1835_skip, output1836_skip]
  kernel_rfl

theorem node1838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1838 value813 value1 value2 = (output1838, value814, value1) := by
  rw [input1838_def, output1838_def]
  kernel_rfl

theorem node1839_cond_eq
    (child1837 : Flapjack.WordAlloc.removeDeadStructural input1837 value811 value1 value2 = (output1837, value813, value1))
    (child1838 : Flapjack.WordAlloc.removeDeadStructural input1838 value813 value1 value2 = (output1838, value814, value1)) : Flapjack.WordAlloc.removeDeadStructural input1839 value811 value1 value2 = (output1839, value814, value1) := by
  rw [input1839_def, output1839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1837]
  try dsimp only
  rw [child1838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1837_skip, output1838_skip]
  kernel_rfl

theorem node1840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1840 value814 value1 value2 = (output1840, value815, value1) := by
  rw [input1840_def, output1840_def]
  kernel_rfl

theorem node1841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1841 value815 value1 value2 = (output1841, value816, value1) := by
  rw [input1841_def, output1841_def]
  kernel_rfl

theorem node1842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1842 value816 value1 value2 = (output1842, value817, value1) := by
  rw [input1842_def, output1842_def]
  kernel_rfl

theorem node1843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1843 value817 value1 value2 = (output1843, value818, value1) := by
  rw [input1843_def, output1843_def]
  kernel_rfl

theorem node1844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1844 value818 value1 value2 = (output1844, value819, value1) := by
  rw [input1844_def, output1844_def]
  kernel_rfl

theorem node1845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1845 value819 value1 value2 = (output1845, value820, value1) := by
  rw [input1845_def, output1845_def]
  kernel_rfl

theorem node1846_cond_eq
    (child1844 : Flapjack.WordAlloc.removeDeadStructural input1844 value818 value1 value2 = (output1844, value819, value1))
    (child1845 : Flapjack.WordAlloc.removeDeadStructural input1845 value819 value1 value2 = (output1845, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input1846 value818 value1 value2 = (output1846, value820, value1) := by
  rw [input1846_def, output1846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1844]
  try dsimp only
  rw [child1845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1844_skip, output1845_skip]
  kernel_rfl

theorem node1847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1847 value820 value1 value2 = (output1847, value821, value1) := by
  rw [input1847_def, output1847_def]
  kernel_rfl

theorem node1848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1848 value821 value1 value2 = (output1848, value822, value1) := by
  rw [input1848_def, output1848_def]
  kernel_rfl

theorem node1849_cond_eq
    (child1847 : Flapjack.WordAlloc.removeDeadStructural input1847 value820 value1 value2 = (output1847, value821, value1))
    (child1848 : Flapjack.WordAlloc.removeDeadStructural input1848 value821 value1 value2 = (output1848, value822, value1)) : Flapjack.WordAlloc.removeDeadStructural input1849 value820 value1 value2 = (output1849, value822, value1) := by
  rw [input1849_def, output1849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1847]
  try dsimp only
  rw [child1848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1847_skip, output1848_skip]
  kernel_rfl

theorem node1850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1850 value822 value1 value2 = (output1850, value823, value1) := by
  rw [input1850_def, output1850_def]
  kernel_rfl

theorem node1851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1851 value823 value1 value2 = (output1851, value824, value1) := by
  rw [input1851_def, output1851_def]
  kernel_rfl

theorem node1852_cond_eq
    (child1850 : Flapjack.WordAlloc.removeDeadStructural input1850 value822 value1 value2 = (output1850, value823, value1))
    (child1851 : Flapjack.WordAlloc.removeDeadStructural input1851 value823 value1 value2 = (output1851, value824, value1)) : Flapjack.WordAlloc.removeDeadStructural input1852 value822 value1 value2 = (output1852, value824, value1) := by
  rw [input1852_def, output1852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1850]
  try dsimp only
  rw [child1851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1850_skip, output1851_skip]
  kernel_rfl

theorem node1853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1853 value824 value1 value2 = (output1853, value825, value1) := by
  rw [input1853_def, output1853_def]
  kernel_rfl

theorem node1854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1854 value825 value1 value2 = (output1854, value826, value1) := by
  rw [input1854_def, output1854_def]
  kernel_rfl

theorem node1855_cond_eq
    (child1853 : Flapjack.WordAlloc.removeDeadStructural input1853 value824 value1 value2 = (output1853, value825, value1))
    (child1854 : Flapjack.WordAlloc.removeDeadStructural input1854 value825 value1 value2 = (output1854, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1855 value824 value1 value2 = (output1855, value826, value1) := by
  rw [input1855_def, output1855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1853]
  try dsimp only
  rw [child1854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1853_skip, output1854_skip]
  kernel_rfl

theorem node1856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1856 value826 value1 value2 = (output1856, value826, value1) := by
  rw [input1856_def, output1856_def]
  kernel_rfl

theorem node1857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1857 value826 value1 value2 = (output1857, value826, value1) := by
  rw [input1857_def, output1857_def]
  kernel_rfl

theorem node1858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1858 value826 value1 value2 = (output1858, value826, value1) := by
  rw [input1858_def, output1858_def]
  kernel_rfl

theorem node1859_cond_eq
    (child1857 : Flapjack.WordAlloc.removeDeadStructural input1857 value826 value1 value2 = (output1857, value826, value1))
    (child1858 : Flapjack.WordAlloc.removeDeadStructural input1858 value826 value1 value2 = (output1858, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1859 value826 value1 value2 = (output1859, value826, value1) := by
  rw [input1859_def, output1859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1857]
  try dsimp only
  rw [child1858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1857_skip, output1858_skip]
  kernel_rfl

theorem node1860_cond_eq
    (child1856 : Flapjack.WordAlloc.removeDeadStructural input1856 value826 value1 value2 = (output1856, value826, value1))
    (child1859 : Flapjack.WordAlloc.removeDeadStructural input1859 value826 value1 value2 = (output1859, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1860 value826 value1 value2 = (output1860, value826, value1) := by
  rw [input1860_def, output1860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1856]
  try dsimp only
  rw [child1859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1856_skip, output1859_skip]
  kernel_rfl

theorem node1861_cond_eq
    (child1855 : Flapjack.WordAlloc.removeDeadStructural input1855 value824 value1 value2 = (output1855, value826, value1))
    (child1860 : Flapjack.WordAlloc.removeDeadStructural input1860 value826 value1 value2 = (output1860, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1861 value824 value1 value2 = (output1861, value826, value1) := by
  rw [input1861_def, output1861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1855]
  try dsimp only
  rw [child1860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1855_skip, output1860_skip]
  kernel_rfl

theorem node1862_cond_eq
    (child1852 : Flapjack.WordAlloc.removeDeadStructural input1852 value822 value1 value2 = (output1852, value824, value1))
    (child1861 : Flapjack.WordAlloc.removeDeadStructural input1861 value824 value1 value2 = (output1861, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1862 value822 value1 value2 = (output1862, value826, value1) := by
  rw [input1862_def, output1862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1852]
  try dsimp only
  rw [child1861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1852_skip, output1861_skip]
  kernel_rfl

theorem node1863_cond_eq
    (child1849 : Flapjack.WordAlloc.removeDeadStructural input1849 value820 value1 value2 = (output1849, value822, value1))
    (child1862 : Flapjack.WordAlloc.removeDeadStructural input1862 value822 value1 value2 = (output1862, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1863 value820 value1 value2 = (output1863, value826, value1) := by
  rw [input1863_def, output1863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1849]
  try dsimp only
  rw [child1862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1849_skip, output1862_skip]
  kernel_rfl

theorem node1864_cond_eq
    (child1846 : Flapjack.WordAlloc.removeDeadStructural input1846 value818 value1 value2 = (output1846, value820, value1))
    (child1863 : Flapjack.WordAlloc.removeDeadStructural input1863 value820 value1 value2 = (output1863, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1864 value818 value1 value2 = (output1864, value826, value1) := by
  rw [input1864_def, output1864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1846]
  try dsimp only
  rw [child1863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1846_skip, output1863_skip]
  kernel_rfl

theorem node1865_cond_eq
    (child1843 : Flapjack.WordAlloc.removeDeadStructural input1843 value817 value1 value2 = (output1843, value818, value1))
    (child1864 : Flapjack.WordAlloc.removeDeadStructural input1864 value818 value1 value2 = (output1864, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1865 value817 value1 value2 = (output1865, value826, value1) := by
  rw [input1865_def, output1865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1843]
  try dsimp only
  rw [child1864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1843_skip, output1864_skip]
  kernel_rfl

theorem node1866_cond_eq
    (child1842 : Flapjack.WordAlloc.removeDeadStructural input1842 value816 value1 value2 = (output1842, value817, value1))
    (child1865 : Flapjack.WordAlloc.removeDeadStructural input1865 value817 value1 value2 = (output1865, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1866 value816 value1 value2 = (output1866, value826, value1) := by
  rw [input1866_def, output1866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1842]
  try dsimp only
  rw [child1865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1842_skip, output1865_skip]
  kernel_rfl

theorem node1867_cond_eq
    (child1841 : Flapjack.WordAlloc.removeDeadStructural input1841 value815 value1 value2 = (output1841, value816, value1))
    (child1866 : Flapjack.WordAlloc.removeDeadStructural input1866 value816 value1 value2 = (output1866, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1867 value815 value1 value2 = (output1867, value826, value1) := by
  rw [input1867_def, output1867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1841]
  try dsimp only
  rw [child1866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1841_skip, output1866_skip]
  kernel_rfl

theorem node1868_cond_eq
    (child1840 : Flapjack.WordAlloc.removeDeadStructural input1840 value814 value1 value2 = (output1840, value815, value1))
    (child1867 : Flapjack.WordAlloc.removeDeadStructural input1867 value815 value1 value2 = (output1867, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1868 value814 value1 value2 = (output1868, value826, value1) := by
  rw [input1868_def, output1868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1840]
  try dsimp only
  rw [child1867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1840_skip, output1867_skip]
  kernel_rfl

theorem node1869_cond_eq
    (child1839 : Flapjack.WordAlloc.removeDeadStructural input1839 value811 value1 value2 = (output1839, value814, value1))
    (child1868 : Flapjack.WordAlloc.removeDeadStructural input1868 value814 value1 value2 = (output1868, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1869 value811 value1 value2 = (output1869, value826, value1) := by
  rw [input1869_def, output1869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1839]
  try dsimp only
  rw [child1868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1839_skip, output1868_skip]
  kernel_rfl

theorem node1870_cond_eq
    (child1834 : Flapjack.WordAlloc.removeDeadStructural input1834 value811 value1 value2 = (output1834, value811, value1))
    (child1869 : Flapjack.WordAlloc.removeDeadStructural input1869 value811 value1 value2 = (output1869, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1870 value811 value1 value2 = (output1870, value826, value1) := by
  rw [input1870_def, output1870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1834]
  try dsimp only
  rw [child1869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1834_skip, output1869_skip]
  kernel_rfl

theorem node1871_cond_eq
    (child1833 : Flapjack.WordAlloc.removeDeadStructural input1833 value810 value1 value2 = (output1833, value811, value1))
    (child1870 : Flapjack.WordAlloc.removeDeadStructural input1870 value811 value1 value2 = (output1870, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1871 value810 value1 value2 = (output1871, value826, value1) := by
  rw [input1871_def, output1871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1833]
  try dsimp only
  rw [child1870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1833_skip, output1870_skip]
  kernel_rfl

theorem node1872_cond_eq
    (child1832 : Flapjack.WordAlloc.removeDeadStructural input1832 value809 value1 value2 = (output1832, value810, value1))
    (child1871 : Flapjack.WordAlloc.removeDeadStructural input1871 value810 value1 value2 = (output1871, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1872 value809 value1 value2 = (output1872, value826, value1) := by
  rw [input1872_def, output1872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1832]
  try dsimp only
  rw [child1871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1832_skip, output1871_skip]
  kernel_rfl

theorem node1873_cond_eq
    (child1831 : Flapjack.WordAlloc.removeDeadStructural input1831 value739 value1 value2 = (output1831, value809, value1))
    (child1872 : Flapjack.WordAlloc.removeDeadStructural input1872 value809 value1 value2 = (output1872, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1873 value739 value1 value2 = (output1873, value826, value1) := by
  rw [input1873_def, output1873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1831]
  try dsimp only
  rw [child1872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1831_skip, output1872_skip]
  kernel_rfl

theorem node1874_cond_eq
    (child1658 : Flapjack.WordAlloc.removeDeadStructural input1658 value739 value1 value2 = (output1658, value739, value1))
    (child1873 : Flapjack.WordAlloc.removeDeadStructural input1873 value739 value1 value2 = (output1873, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1874 value739 value1 value2 = (output1874, value826, value1) := by
  rw [input1874_def, output1874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1658]
  try dsimp only
  rw [child1873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1658_skip, output1873_skip]
  kernel_rfl

theorem node1875_cond_eq
    (child1657 : Flapjack.WordAlloc.removeDeadStructural input1657 value737 value1 value2 = (output1657, value739, value1))
    (child1874 : Flapjack.WordAlloc.removeDeadStructural input1874 value739 value1 value2 = (output1874, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1875 value737 value1 value2 = (output1875, value826, value1) := by
  rw [input1875_def, output1875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1657]
  try dsimp only
  rw [child1874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1657_skip, output1874_skip]
  kernel_rfl

theorem node1876_cond_eq
    (child1654 : Flapjack.WordAlloc.removeDeadStructural input1654 value735 value1 value2 = (output1654, value737, value1))
    (child1875 : Flapjack.WordAlloc.removeDeadStructural input1875 value737 value1 value2 = (output1875, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1876 value735 value1 value2 = (output1876, value826, value1) := by
  rw [input1876_def, output1876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1654]
  try dsimp only
  rw [child1875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1654_skip, output1875_skip]
  kernel_rfl

theorem node1877_cond_eq
    (child1651 : Flapjack.WordAlloc.removeDeadStructural input1651 value733 value1 value2 = (output1651, value735, value1))
    (child1876 : Flapjack.WordAlloc.removeDeadStructural input1876 value735 value1 value2 = (output1876, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1877 value733 value1 value2 = (output1877, value826, value1) := by
  rw [input1877_def, output1877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1651]
  try dsimp only
  rw [child1876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1651_skip, output1876_skip]
  kernel_rfl

theorem node1878_cond_eq
    (child1648 : Flapjack.WordAlloc.removeDeadStructural input1648 value731 value1 value2 = (output1648, value733, value1))
    (child1877 : Flapjack.WordAlloc.removeDeadStructural input1877 value733 value1 value2 = (output1877, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1878 value731 value1 value2 = (output1878, value826, value1) := by
  rw [input1878_def, output1878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1648]
  try dsimp only
  rw [child1877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1648_skip, output1877_skip]
  kernel_rfl

theorem node1879_cond_eq
    (child1645 : Flapjack.WordAlloc.removeDeadStructural input1645 value730 value1 value2 = (output1645, value731, value1))
    (child1878 : Flapjack.WordAlloc.removeDeadStructural input1878 value731 value1 value2 = (output1878, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1879 value730 value1 value2 = (output1879, value826, value1) := by
  rw [input1879_def, output1879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1645]
  try dsimp only
  rw [child1878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1645_skip, output1878_skip]
  kernel_rfl

theorem node1880_cond_eq
    (child1644 : Flapjack.WordAlloc.removeDeadStructural input1644 value729 value1 value2 = (output1644, value730, value1))
    (child1879 : Flapjack.WordAlloc.removeDeadStructural input1879 value730 value1 value2 = (output1879, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1880 value729 value1 value2 = (output1880, value826, value1) := by
  rw [input1880_def, output1880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1644]
  try dsimp only
  rw [child1879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1644_skip, output1879_skip]
  kernel_rfl

theorem node1881_cond_eq
    (child1643 : Flapjack.WordAlloc.removeDeadStructural input1643 value728 value1 value2 = (output1643, value729, value1))
    (child1880 : Flapjack.WordAlloc.removeDeadStructural input1880 value729 value1 value2 = (output1880, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1881 value728 value1 value2 = (output1881, value826, value1) := by
  rw [input1881_def, output1881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1643]
  try dsimp only
  rw [child1880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1643_skip, output1880_skip]
  kernel_rfl

theorem node1882_cond_eq
    (child1642 : Flapjack.WordAlloc.removeDeadStructural input1642 value727 value1 value2 = (output1642, value728, value1))
    (child1881 : Flapjack.WordAlloc.removeDeadStructural input1881 value728 value1 value2 = (output1881, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1882 value727 value1 value2 = (output1882, value826, value1) := by
  rw [input1882_def, output1882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1642]
  try dsimp only
  rw [child1881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1642_skip, output1881_skip]
  kernel_rfl

theorem node1883_cond_eq
    (child1641 : Flapjack.WordAlloc.removeDeadStructural input1641 value724 value1 value2 = (output1641, value727, value1))
    (child1882 : Flapjack.WordAlloc.removeDeadStructural input1882 value727 value1 value2 = (output1882, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1883 value724 value1 value2 = (output1883, value826, value1) := by
  rw [input1883_def, output1883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1641]
  try dsimp only
  rw [child1882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1641_skip, output1882_skip]
  kernel_rfl

theorem node1884_cond_eq
    (child1636 : Flapjack.WordAlloc.removeDeadStructural input1636 value724 value1 value2 = (output1636, value724, value1))
    (child1883 : Flapjack.WordAlloc.removeDeadStructural input1883 value724 value1 value2 = (output1883, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1884 value724 value1 value2 = (output1884, value826, value1) := by
  rw [input1884_def, output1884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1636]
  try dsimp only
  rw [child1883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1636_skip, output1883_skip]
  kernel_rfl

theorem node1885_cond_eq
    (child1635 : Flapjack.WordAlloc.removeDeadStructural input1635 value723 value1 value2 = (output1635, value724, value1))
    (child1884 : Flapjack.WordAlloc.removeDeadStructural input1884 value724 value1 value2 = (output1884, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1885 value723 value1 value2 = (output1885, value826, value1) := by
  rw [input1885_def, output1885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1635]
  try dsimp only
  rw [child1884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1635_skip, output1884_skip]
  kernel_rfl

theorem node1886_cond_eq
    (child1634 : Flapjack.WordAlloc.removeDeadStructural input1634 value722 value1 value2 = (output1634, value723, value1))
    (child1885 : Flapjack.WordAlloc.removeDeadStructural input1885 value723 value1 value2 = (output1885, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1886 value722 value1 value2 = (output1886, value826, value1) := by
  rw [input1886_def, output1886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1634]
  try dsimp only
  rw [child1885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1634_skip, output1885_skip]
  kernel_rfl

theorem node1887_cond_eq
    (child1633 : Flapjack.WordAlloc.removeDeadStructural input1633 value652 value1 value2 = (output1633, value722, value1))
    (child1886 : Flapjack.WordAlloc.removeDeadStructural input1886 value722 value1 value2 = (output1886, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1887 value652 value1 value2 = (output1887, value826, value1) := by
  rw [input1887_def, output1887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1633]
  try dsimp only
  rw [child1886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1633_skip, output1886_skip]
  kernel_rfl

theorem node1888_cond_eq
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value652 value1 value2 = (output1460, value652, value1))
    (child1887 : Flapjack.WordAlloc.removeDeadStructural input1887 value652 value1 value2 = (output1887, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1888 value652 value1 value2 = (output1888, value826, value1) := by
  rw [input1888_def, output1888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1460]
  try dsimp only
  rw [child1887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1460_skip, output1887_skip]
  kernel_rfl

theorem node1889_cond_eq
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value650 value1 value2 = (output1459, value652, value1))
    (child1888 : Flapjack.WordAlloc.removeDeadStructural input1888 value652 value1 value2 = (output1888, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1889 value650 value1 value2 = (output1889, value826, value1) := by
  rw [input1889_def, output1889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1459]
  try dsimp only
  rw [child1888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1459_skip, output1888_skip]
  kernel_rfl

theorem node1890_cond_eq
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value648 value1 value2 = (output1456, value650, value1))
    (child1889 : Flapjack.WordAlloc.removeDeadStructural input1889 value650 value1 value2 = (output1889, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1890 value648 value1 value2 = (output1890, value826, value1) := by
  rw [input1890_def, output1890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1456]
  try dsimp only
  rw [child1889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1456_skip, output1889_skip]
  kernel_rfl

theorem node1891_cond_eq
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value646 value1 value2 = (output1453, value648, value1))
    (child1890 : Flapjack.WordAlloc.removeDeadStructural input1890 value648 value1 value2 = (output1890, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1891 value646 value1 value2 = (output1891, value826, value1) := by
  rw [input1891_def, output1891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1453]
  try dsimp only
  rw [child1890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1453_skip, output1890_skip]
  kernel_rfl

theorem node1892_cond_eq
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value644 value1 value2 = (output1450, value646, value1))
    (child1891 : Flapjack.WordAlloc.removeDeadStructural input1891 value646 value1 value2 = (output1891, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1892 value644 value1 value2 = (output1892, value826, value1) := by
  rw [input1892_def, output1892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1450]
  try dsimp only
  rw [child1891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1450_skip, output1891_skip]
  kernel_rfl

theorem node1893_cond_eq
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value642 value1 value2 = (output1447, value644, value1))
    (child1892 : Flapjack.WordAlloc.removeDeadStructural input1892 value644 value1 value2 = (output1892, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1893 value642 value1 value2 = (output1893, value826, value1) := by
  rw [input1893_def, output1893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1447]
  try dsimp only
  rw [child1892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1447_skip, output1892_skip]
  kernel_rfl

theorem node1894_cond_eq
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value640 value1 value2 = (output1444, value642, value1))
    (child1893 : Flapjack.WordAlloc.removeDeadStructural input1893 value642 value1 value2 = (output1893, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1894 value640 value1 value2 = (output1894, value826, value1) := by
  rw [input1894_def, output1894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1444]
  try dsimp only
  rw [child1893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1444_skip, output1893_skip]
  kernel_rfl

theorem node1895_cond_eq
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value638 value1 value2 = (output1441, value640, value1))
    (child1894 : Flapjack.WordAlloc.removeDeadStructural input1894 value640 value1 value2 = (output1894, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1895 value638 value1 value2 = (output1895, value826, value1) := by
  rw [input1895_def, output1895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1441]
  try dsimp only
  rw [child1894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1441_skip, output1894_skip]
  kernel_rfl

theorem node1896_cond_eq
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value636 value1 value2 = (output1438, value638, value1))
    (child1895 : Flapjack.WordAlloc.removeDeadStructural input1895 value638 value1 value2 = (output1895, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1896 value636 value1 value2 = (output1896, value826, value1) := by
  rw [input1896_def, output1896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1438]
  try dsimp only
  rw [child1895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1438_skip, output1895_skip]
  kernel_rfl

theorem node1897_cond_eq
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value634 value1 value2 = (output1435, value636, value1))
    (child1896 : Flapjack.WordAlloc.removeDeadStructural input1896 value636 value1 value2 = (output1896, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1897 value634 value1 value2 = (output1897, value826, value1) := by
  rw [input1897_def, output1897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1435]
  try dsimp only
  rw [child1896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1435_skip, output1896_skip]
  kernel_rfl

theorem node1898_cond_eq
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value632 value1 value2 = (output1432, value634, value1))
    (child1897 : Flapjack.WordAlloc.removeDeadStructural input1897 value634 value1 value2 = (output1897, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1898 value632 value1 value2 = (output1898, value826, value1) := by
  rw [input1898_def, output1898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1432]
  try dsimp only
  rw [child1897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1432_skip, output1897_skip]
  kernel_rfl

theorem node1899_cond_eq
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value630 value1 value2 = (output1429, value632, value1))
    (child1898 : Flapjack.WordAlloc.removeDeadStructural input1898 value632 value1 value2 = (output1898, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1899 value630 value1 value2 = (output1899, value826, value1) := by
  rw [input1899_def, output1899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1429]
  try dsimp only
  rw [child1898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1429_skip, output1898_skip]
  kernel_rfl

theorem node1900_cond_eq
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value628 value1 value2 = (output1426, value630, value1))
    (child1899 : Flapjack.WordAlloc.removeDeadStructural input1899 value630 value1 value2 = (output1899, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1900 value628 value1 value2 = (output1900, value826, value1) := by
  rw [input1900_def, output1900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1426]
  try dsimp only
  rw [child1899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1426_skip, output1899_skip]
  kernel_rfl

theorem node1901_cond_eq
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value626 value1 value2 = (output1423, value628, value1))
    (child1900 : Flapjack.WordAlloc.removeDeadStructural input1900 value628 value1 value2 = (output1900, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1901 value626 value1 value2 = (output1901, value826, value1) := by
  rw [input1901_def, output1901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1423]
  try dsimp only
  rw [child1900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1423_skip, output1900_skip]
  kernel_rfl

theorem node1902_cond_eq
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value624 value1 value2 = (output1420, value626, value1))
    (child1901 : Flapjack.WordAlloc.removeDeadStructural input1901 value626 value1 value2 = (output1901, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1902 value624 value1 value2 = (output1902, value826, value1) := by
  rw [input1902_def, output1902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1420]
  try dsimp only
  rw [child1901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1420_skip, output1901_skip]
  kernel_rfl

theorem node1903_cond_eq
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value622 value1 value2 = (output1417, value624, value1))
    (child1902 : Flapjack.WordAlloc.removeDeadStructural input1902 value624 value1 value2 = (output1902, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1903 value622 value1 value2 = (output1903, value826, value1) := by
  rw [input1903_def, output1903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1417]
  try dsimp only
  rw [child1902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1417_skip, output1902_skip]
  kernel_rfl

theorem node1904_cond_eq
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value620 value1 value2 = (output1414, value622, value1))
    (child1903 : Flapjack.WordAlloc.removeDeadStructural input1903 value622 value1 value2 = (output1903, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1904 value620 value1 value2 = (output1904, value826, value1) := by
  rw [input1904_def, output1904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1414]
  try dsimp only
  rw [child1903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1414_skip, output1903_skip]
  kernel_rfl

theorem node1905_cond_eq
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value619 value1 value2 = (output1411, value620, value1))
    (child1904 : Flapjack.WordAlloc.removeDeadStructural input1904 value620 value1 value2 = (output1904, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1905 value619 value1 value2 = (output1905, value826, value1) := by
  rw [input1905_def, output1905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1411]
  try dsimp only
  rw [child1904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1411_skip, output1904_skip]
  kernel_rfl

theorem node1906_cond_eq
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value618 value1 value2 = (output1410, value619, value1))
    (child1905 : Flapjack.WordAlloc.removeDeadStructural input1905 value619 value1 value2 = (output1905, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1906 value618 value1 value2 = (output1906, value826, value1) := by
  rw [input1906_def, output1906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1410]
  try dsimp only
  rw [child1905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1410_skip, output1905_skip]
  kernel_rfl

theorem node1907_cond_eq
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value617 value1 value2 = (output1409, value618, value1))
    (child1906 : Flapjack.WordAlloc.removeDeadStructural input1906 value618 value1 value2 = (output1906, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1907 value617 value1 value2 = (output1907, value826, value1) := by
  rw [input1907_def, output1907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1409]
  try dsimp only
  rw [child1906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1409_skip, output1906_skip]
  kernel_rfl

theorem node1908_cond_eq
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value616 value1 value2 = (output1408, value617, value1))
    (child1907 : Flapjack.WordAlloc.removeDeadStructural input1907 value617 value1 value2 = (output1907, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1908 value616 value1 value2 = (output1908, value826, value1) := by
  rw [input1908_def, output1908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1408]
  try dsimp only
  rw [child1907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1408_skip, output1907_skip]
  kernel_rfl

theorem node1909_cond_eq
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value616 value1 value2 = (output1407, value616, value1))
    (child1908 : Flapjack.WordAlloc.removeDeadStructural input1908 value616 value1 value2 = (output1908, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1909 value616 value1 value2 = (output1909, value826, value1) := by
  rw [input1909_def, output1909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1407]
  try dsimp only
  rw [child1908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1407_skip, output1908_skip]
  kernel_rfl

theorem node1910_cond_eq
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value616 value1 value2 = (output1406, value616, value1))
    (child1909 : Flapjack.WordAlloc.removeDeadStructural input1909 value616 value1 value2 = (output1909, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1910 value616 value1 value2 = (output1910, value826, value1) := by
  rw [input1910_def, output1910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1406]
  try dsimp only
  rw [child1909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1406_skip, output1909_skip]
  kernel_rfl

theorem node1911_cond_eq
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value616 value1 value2 = (output1405, value616, value1))
    (child1910 : Flapjack.WordAlloc.removeDeadStructural input1910 value616 value1 value2 = (output1910, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1911 value616 value1 value2 = (output1911, value826, value1) := by
  rw [input1911_def, output1911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1405]
  try dsimp only
  rw [child1910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1405_skip, output1910_skip]
  kernel_rfl

theorem node1912_cond_eq
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value616 value1 value2 = (output1404, value616, value1))
    (child1911 : Flapjack.WordAlloc.removeDeadStructural input1911 value616 value1 value2 = (output1911, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1912 value616 value1 value2 = (output1912, value826, value1) := by
  rw [input1912_def, output1912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1404]
  try dsimp only
  rw [child1911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1404_skip, output1911_skip]
  kernel_rfl

theorem node1913_cond_eq
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value616 value1 value2 = (output1403, value616, value1))
    (child1912 : Flapjack.WordAlloc.removeDeadStructural input1912 value616 value1 value2 = (output1912, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1913 value616 value1 value2 = (output1913, value826, value1) := by
  rw [input1913_def, output1913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1403]
  try dsimp only
  rw [child1912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1403_skip, output1912_skip]
  kernel_rfl

theorem node1914_cond_eq
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value616 value1 value2 = (output1402, value616, value1))
    (child1913 : Flapjack.WordAlloc.removeDeadStructural input1913 value616 value1 value2 = (output1913, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1914 value616 value1 value2 = (output1914, value826, value1) := by
  rw [input1914_def, output1914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1402]
  try dsimp only
  rw [child1913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1402_skip, output1913_skip]
  kernel_rfl

theorem node1915_cond_eq
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value616 value1 value2 = (output1401, value616, value1))
    (child1914 : Flapjack.WordAlloc.removeDeadStructural input1914 value616 value1 value2 = (output1914, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1915 value616 value1 value2 = (output1915, value826, value1) := by
  rw [input1915_def, output1915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1401]
  try dsimp only
  rw [child1914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1401_skip, output1914_skip]
  kernel_rfl

theorem node1916_cond_eq
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value616 value1 value2 = (output1400, value616, value1))
    (child1915 : Flapjack.WordAlloc.removeDeadStructural input1915 value616 value1 value2 = (output1915, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1916 value616 value1 value2 = (output1916, value826, value1) := by
  rw [input1916_def, output1916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1400]
  try dsimp only
  rw [child1915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1400_skip, output1915_skip]
  kernel_rfl

theorem node1917_cond_eq
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value615 value1 value2 = (output1399, value616, value1))
    (child1916 : Flapjack.WordAlloc.removeDeadStructural input1916 value616 value1 value2 = (output1916, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1917 value615 value1 value2 = (output1917, value826, value1) := by
  rw [input1917_def, output1917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1399]
  try dsimp only
  rw [child1916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1399_skip, output1916_skip]
  kernel_rfl

theorem node1918_cond_eq
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value614 value1 value2 = (output1398, value615, value1))
    (child1917 : Flapjack.WordAlloc.removeDeadStructural input1917 value615 value1 value2 = (output1917, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1918 value614 value1 value2 = (output1918, value826, value1) := by
  rw [input1918_def, output1918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1398]
  try dsimp only
  rw [child1917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1398_skip, output1917_skip]
  kernel_rfl

theorem node1919_cond_eq
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value613 value1 value2 = (output1397, value614, value1))
    (child1918 : Flapjack.WordAlloc.removeDeadStructural input1918 value614 value1 value2 = (output1918, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1919 value613 value1 value2 = (output1919, value826, value1) := by
  rw [input1919_def, output1919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1397]
  try dsimp only
  rw [child1918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1397_skip, output1918_skip]
  kernel_rfl

theorem node1920_cond_eq
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value612 value1 value2 = (output1396, value613, value1))
    (child1919 : Flapjack.WordAlloc.removeDeadStructural input1919 value613 value1 value2 = (output1919, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1920 value612 value1 value2 = (output1920, value826, value1) := by
  rw [input1920_def, output1920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1396]
  try dsimp only
  rw [child1919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1396_skip, output1919_skip]
  kernel_rfl

theorem node1921_cond_eq
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value609 value1 value2 = (output1395, value612, value1))
    (child1920 : Flapjack.WordAlloc.removeDeadStructural input1920 value612 value1 value2 = (output1920, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1921 value609 value1 value2 = (output1921, value826, value1) := by
  rw [input1921_def, output1921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1395]
  try dsimp only
  rw [child1920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1395_skip, output1920_skip]
  kernel_rfl

theorem node1922_cond_eq
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value609 value1 value2 = (output1390, value609, value1))
    (child1921 : Flapjack.WordAlloc.removeDeadStructural input1921 value609 value1 value2 = (output1921, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1922 value609 value1 value2 = (output1922, value826, value1) := by
  rw [input1922_def, output1922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1390]
  try dsimp only
  rw [child1921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1390_skip, output1921_skip]
  kernel_rfl

theorem node1923_cond_eq
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value608 value1 value2 = (output1389, value609, value1))
    (child1922 : Flapjack.WordAlloc.removeDeadStructural input1922 value609 value1 value2 = (output1922, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1923 value608 value1 value2 = (output1923, value826, value1) := by
  rw [input1923_def, output1923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1389]
  try dsimp only
  rw [child1922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1389_skip, output1922_skip]
  kernel_rfl

theorem node1924_cond_eq
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value607 value1 value2 = (output1388, value608, value1))
    (child1923 : Flapjack.WordAlloc.removeDeadStructural input1923 value608 value1 value2 = (output1923, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1924 value607 value1 value2 = (output1924, value826, value1) := by
  rw [input1924_def, output1924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1388]
  try dsimp only
  rw [child1923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1388_skip, output1923_skip]
  kernel_rfl

theorem node1925_cond_eq
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value574 value1 value2 = (output1387, value607, value1))
    (child1924 : Flapjack.WordAlloc.removeDeadStructural input1924 value607 value1 value2 = (output1924, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1925 value574 value1 value2 = (output1925, value826, value1) := by
  rw [input1925_def, output1925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1387]
  try dsimp only
  rw [child1924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1387_skip, output1924_skip]
  kernel_rfl

theorem node1926_cond_eq
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value574 value1 value2 = (output1264, value574, value1))
    (child1925 : Flapjack.WordAlloc.removeDeadStructural input1925 value574 value1 value2 = (output1925, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1926 value574 value1 value2 = (output1926, value826, value1) := by
  rw [input1926_def, output1926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1264]
  try dsimp only
  rw [child1925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1264_skip, output1925_skip]
  kernel_rfl

theorem node1927_cond_eq
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value573 value1 value2 = (output1263, value574, value1))
    (child1926 : Flapjack.WordAlloc.removeDeadStructural input1926 value574 value1 value2 = (output1926, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1927 value573 value1 value2 = (output1927, value826, value1) := by
  rw [input1927_def, output1927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1263]
  try dsimp only
  rw [child1926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1263_skip, output1926_skip]
  kernel_rfl

theorem node1928_cond_eq
    (child1262 : Flapjack.WordAlloc.removeDeadStructural input1262 value572 value1 value2 = (output1262, value573, value1))
    (child1927 : Flapjack.WordAlloc.removeDeadStructural input1927 value573 value1 value2 = (output1927, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1928 value572 value1 value2 = (output1928, value826, value1) := by
  rw [input1928_def, output1928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1262]
  try dsimp only
  rw [child1927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1262_skip, output1927_skip]
  kernel_rfl

theorem node1929_cond_eq
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value571 value1 value2 = (output1261, value572, value1))
    (child1928 : Flapjack.WordAlloc.removeDeadStructural input1928 value572 value1 value2 = (output1928, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1929 value571 value1 value2 = (output1929, value826, value1) := by
  rw [input1929_def, output1929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1261]
  try dsimp only
  rw [child1928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1261_skip, output1928_skip]
  kernel_rfl

theorem node1930_cond_eq
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value570 value1 value2 = (output1260, value571, value1))
    (child1929 : Flapjack.WordAlloc.removeDeadStructural input1929 value571 value1 value2 = (output1929, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1930 value570 value1 value2 = (output1930, value826, value1) := by
  rw [input1930_def, output1930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1260]
  try dsimp only
  rw [child1929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1260_skip, output1929_skip]
  kernel_rfl

theorem node1931_cond_eq
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value570 value1 value2 = (output1259, value570, value1))
    (child1930 : Flapjack.WordAlloc.removeDeadStructural input1930 value570 value1 value2 = (output1930, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1931 value570 value1 value2 = (output1931, value826, value1) := by
  rw [input1931_def, output1931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1259]
  try dsimp only
  rw [child1930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1259_skip, output1930_skip]
  kernel_rfl

theorem node1932_cond_eq
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value570 value1 value2 = (output1258, value570, value1))
    (child1931 : Flapjack.WordAlloc.removeDeadStructural input1931 value570 value1 value2 = (output1931, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1932 value570 value1 value2 = (output1932, value826, value1) := by
  rw [input1932_def, output1932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1258]
  try dsimp only
  rw [child1931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1258_skip, output1931_skip]
  kernel_rfl

theorem node1933_cond_eq
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value570 value1 value2 = (output1257, value570, value1))
    (child1932 : Flapjack.WordAlloc.removeDeadStructural input1932 value570 value1 value2 = (output1932, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1933 value570 value1 value2 = (output1933, value826, value1) := by
  rw [input1933_def, output1933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1257]
  try dsimp only
  rw [child1932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1257_skip, output1932_skip]
  kernel_rfl

theorem node1934_cond_eq
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value570 value1 value2 = (output1256, value570, value1))
    (child1933 : Flapjack.WordAlloc.removeDeadStructural input1933 value570 value1 value2 = (output1933, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1934 value570 value1 value2 = (output1934, value826, value1) := by
  rw [input1934_def, output1934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1256]
  try dsimp only
  rw [child1933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1256_skip, output1933_skip]
  kernel_rfl

theorem node1935_cond_eq
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value570 value1 value2 = (output1255, value570, value1))
    (child1934 : Flapjack.WordAlloc.removeDeadStructural input1934 value570 value1 value2 = (output1934, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1935 value570 value1 value2 = (output1935, value826, value1) := by
  rw [input1935_def, output1935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1255]
  try dsimp only
  rw [child1934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1255_skip, output1934_skip]
  kernel_rfl

theorem node1936_cond_eq
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value570 value1 value2 = (output1254, value570, value1))
    (child1935 : Flapjack.WordAlloc.removeDeadStructural input1935 value570 value1 value2 = (output1935, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1936 value570 value1 value2 = (output1936, value826, value1) := by
  rw [input1936_def, output1936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1254]
  try dsimp only
  rw [child1935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1254_skip, output1935_skip]
  kernel_rfl

theorem node1937_cond_eq
    (child1253 : Flapjack.WordAlloc.removeDeadStructural input1253 value570 value1 value2 = (output1253, value570, value1))
    (child1936 : Flapjack.WordAlloc.removeDeadStructural input1936 value570 value1 value2 = (output1936, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1937 value570 value1 value2 = (output1937, value826, value1) := by
  rw [input1937_def, output1937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1253]
  try dsimp only
  rw [child1936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1253_skip, output1936_skip]
  kernel_rfl

theorem node1938_cond_eq
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value570 value1 value2 = (output1252, value570, value1))
    (child1937 : Flapjack.WordAlloc.removeDeadStructural input1937 value570 value1 value2 = (output1937, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1938 value570 value1 value2 = (output1938, value826, value1) := by
  rw [input1938_def, output1938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1252]
  try dsimp only
  rw [child1937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1252_skip, output1937_skip]
  kernel_rfl

theorem node1939_cond_eq
    (child1251 : Flapjack.WordAlloc.removeDeadStructural input1251 value569 value1 value2 = (output1251, value570, value1))
    (child1938 : Flapjack.WordAlloc.removeDeadStructural input1938 value570 value1 value2 = (output1938, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1939 value569 value1 value2 = (output1939, value826, value1) := by
  rw [input1939_def, output1939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1251]
  try dsimp only
  rw [child1938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1251_skip, output1938_skip]
  kernel_rfl

theorem node1940_cond_eq
    (child1250 : Flapjack.WordAlloc.removeDeadStructural input1250 value568 value1 value2 = (output1250, value569, value1))
    (child1939 : Flapjack.WordAlloc.removeDeadStructural input1939 value569 value1 value2 = (output1939, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1940 value568 value1 value2 = (output1940, value826, value1) := by
  rw [input1940_def, output1940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1250]
  try dsimp only
  rw [child1939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1250_skip, output1939_skip]
  kernel_rfl

theorem node1941_cond_eq
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value567 value1 value2 = (output1249, value568, value1))
    (child1940 : Flapjack.WordAlloc.removeDeadStructural input1940 value568 value1 value2 = (output1940, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1941 value567 value1 value2 = (output1941, value826, value1) := by
  rw [input1941_def, output1941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1249]
  try dsimp only
  rw [child1940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1249_skip, output1940_skip]
  kernel_rfl

theorem node1942_cond_eq
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value566 value1 value2 = (output1248, value567, value1))
    (child1941 : Flapjack.WordAlloc.removeDeadStructural input1941 value567 value1 value2 = (output1941, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1942 value566 value1 value2 = (output1942, value826, value1) := by
  rw [input1942_def, output1942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1248]
  try dsimp only
  rw [child1941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1248_skip, output1941_skip]
  kernel_rfl

theorem node1943_cond_eq
    (child1247 : Flapjack.WordAlloc.removeDeadStructural input1247 value563 value1 value2 = (output1247, value566, value1))
    (child1942 : Flapjack.WordAlloc.removeDeadStructural input1942 value566 value1 value2 = (output1942, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1943 value563 value1 value2 = (output1943, value826, value1) := by
  rw [input1943_def, output1943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1247]
  try dsimp only
  rw [child1942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1247_skip, output1942_skip]
  kernel_rfl

theorem node1944_cond_eq
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value563 value1 value2 = (output1242, value563, value1))
    (child1943 : Flapjack.WordAlloc.removeDeadStructural input1943 value563 value1 value2 = (output1943, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1944 value563 value1 value2 = (output1944, value826, value1) := by
  rw [input1944_def, output1944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1242]
  try dsimp only
  rw [child1943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1242_skip, output1943_skip]
  kernel_rfl

theorem node1945_cond_eq
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value562 value1 value2 = (output1241, value563, value1))
    (child1944 : Flapjack.WordAlloc.removeDeadStructural input1944 value563 value1 value2 = (output1944, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1945 value562 value1 value2 = (output1945, value826, value1) := by
  rw [input1945_def, output1945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1241]
  try dsimp only
  rw [child1944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1241_skip, output1944_skip]
  kernel_rfl

theorem node1946_cond_eq
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value561 value1 value2 = (output1240, value562, value1))
    (child1945 : Flapjack.WordAlloc.removeDeadStructural input1945 value562 value1 value2 = (output1945, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1946 value561 value1 value2 = (output1946, value826, value1) := by
  rw [input1946_def, output1946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1240]
  try dsimp only
  rw [child1945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1240_skip, output1945_skip]
  kernel_rfl

theorem node1947_cond_eq
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value528 value1 value2 = (output1239, value561, value1))
    (child1946 : Flapjack.WordAlloc.removeDeadStructural input1946 value561 value1 value2 = (output1946, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1947 value528 value1 value2 = (output1947, value826, value1) := by
  rw [input1947_def, output1947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1239]
  try dsimp only
  rw [child1946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1239_skip, output1946_skip]
  kernel_rfl

theorem node1948_cond_eq
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value528 value1 value2 = (output1116, value528, value1))
    (child1947 : Flapjack.WordAlloc.removeDeadStructural input1947 value528 value1 value2 = (output1947, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1948 value528 value1 value2 = (output1948, value826, value1) := by
  rw [input1948_def, output1948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1116]
  try dsimp only
  rw [child1947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1116_skip, output1947_skip]
  kernel_rfl

theorem node1949_cond_eq
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value527 value1 value2 = (output1115, value528, value1))
    (child1948 : Flapjack.WordAlloc.removeDeadStructural input1948 value528 value1 value2 = (output1948, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1949 value527 value1 value2 = (output1949, value826, value1) := by
  rw [input1949_def, output1949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1115]
  try dsimp only
  rw [child1948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1115_skip, output1948_skip]
  kernel_rfl

theorem node1950_cond_eq
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value526 value1 value2 = (output1114, value527, value1))
    (child1949 : Flapjack.WordAlloc.removeDeadStructural input1949 value527 value1 value2 = (output1949, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1950 value526 value1 value2 = (output1950, value826, value1) := by
  rw [input1950_def, output1950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1114]
  try dsimp only
  rw [child1949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1114_skip, output1949_skip]
  kernel_rfl

theorem node1951_cond_eq
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value525 value1 value2 = (output1113, value526, value1))
    (child1950 : Flapjack.WordAlloc.removeDeadStructural input1950 value526 value1 value2 = (output1950, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1951 value525 value1 value2 = (output1951, value826, value1) := by
  rw [input1951_def, output1951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1113]
  try dsimp only
  rw [child1950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1113_skip, output1950_skip]
  kernel_rfl

theorem node1952_cond_eq
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value524 value1 value2 = (output1112, value525, value1))
    (child1951 : Flapjack.WordAlloc.removeDeadStructural input1951 value525 value1 value2 = (output1951, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1952 value524 value1 value2 = (output1952, value826, value1) := by
  rw [input1952_def, output1952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1112]
  try dsimp only
  rw [child1951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1112_skip, output1951_skip]
  kernel_rfl

theorem node1953_cond_eq
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value523 value1 value2 = (output1111, value524, value1))
    (child1952 : Flapjack.WordAlloc.removeDeadStructural input1952 value524 value1 value2 = (output1952, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1953 value523 value1 value2 = (output1953, value826, value1) := by
  rw [input1953_def, output1953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1111]
  try dsimp only
  rw [child1952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1111_skip, output1952_skip]
  kernel_rfl

theorem node1954_cond_eq
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value522 value1 value2 = (output1110, value523, value1))
    (child1953 : Flapjack.WordAlloc.removeDeadStructural input1953 value523 value1 value2 = (output1953, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1954 value522 value1 value2 = (output1954, value826, value1) := by
  rw [input1954_def, output1954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1110]
  try dsimp only
  rw [child1953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1110_skip, output1953_skip]
  kernel_rfl

theorem node1955_cond_eq
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value521 value1 value2 = (output1109, value522, value1))
    (child1954 : Flapjack.WordAlloc.removeDeadStructural input1954 value522 value1 value2 = (output1954, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1955 value521 value1 value2 = (output1955, value826, value1) := by
  rw [input1955_def, output1955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1109]
  try dsimp only
  rw [child1954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1109_skip, output1954_skip]
  kernel_rfl

theorem node1956_cond_eq
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value520 value1 value2 = (output1108, value521, value1))
    (child1955 : Flapjack.WordAlloc.removeDeadStructural input1955 value521 value1 value2 = (output1955, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1956 value520 value1 value2 = (output1956, value826, value1) := by
  rw [input1956_def, output1956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1108]
  try dsimp only
  rw [child1955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1108_skip, output1955_skip]
  kernel_rfl

theorem node1957_cond_eq
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value517 value1 value2 = (output1107, value520, value1))
    (child1956 : Flapjack.WordAlloc.removeDeadStructural input1956 value520 value1 value2 = (output1956, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1957 value517 value1 value2 = (output1957, value826, value1) := by
  rw [input1957_def, output1957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1107]
  try dsimp only
  rw [child1956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1107_skip, output1956_skip]
  kernel_rfl

theorem node1958_cond_eq
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value517 value1 value2 = (output1102, value517, value1))
    (child1957 : Flapjack.WordAlloc.removeDeadStructural input1957 value517 value1 value2 = (output1957, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1958 value517 value1 value2 = (output1958, value826, value1) := by
  rw [input1958_def, output1958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1102]
  try dsimp only
  rw [child1957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1102_skip, output1957_skip]
  kernel_rfl

theorem node1959_cond_eq
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value516 value1 value2 = (output1101, value517, value1))
    (child1958 : Flapjack.WordAlloc.removeDeadStructural input1958 value517 value1 value2 = (output1958, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1959 value516 value1 value2 = (output1959, value826, value1) := by
  rw [input1959_def, output1959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1101]
  try dsimp only
  rw [child1958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1101_skip, output1958_skip]
  kernel_rfl

theorem node1960_cond_eq
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value515 value1 value2 = (output1100, value516, value1))
    (child1959 : Flapjack.WordAlloc.removeDeadStructural input1959 value516 value1 value2 = (output1959, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1960 value515 value1 value2 = (output1960, value826, value1) := by
  rw [input1960_def, output1960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1100]
  try dsimp only
  rw [child1959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1100_skip, output1959_skip]
  kernel_rfl

theorem node1961_cond_eq
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value414 value1 value2 = (output1099, value515, value1))
    (child1960 : Flapjack.WordAlloc.removeDeadStructural input1960 value515 value1 value2 = (output1960, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1961 value414 value1 value2 = (output1961, value826, value1) := by
  rw [input1961_def, output1961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1099]
  try dsimp only
  rw [child1960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1099_skip, output1960_skip]
  kernel_rfl

theorem node1962_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value414 value1 value2 = (output816, value414, value1))
    (child1961 : Flapjack.WordAlloc.removeDeadStructural input1961 value414 value1 value2 = (output1961, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1962 value414 value1 value2 = (output1962, value826, value1) := by
  rw [input1962_def, output1962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child1961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output1961_skip]
  kernel_rfl

theorem node1963_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value413 value1 value2 = (output815, value414, value1))
    (child1962 : Flapjack.WordAlloc.removeDeadStructural input1962 value414 value1 value2 = (output1962, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1963 value413 value1 value2 = (output1963, value826, value1) := by
  rw [input1963_def, output1963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child1962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output1962_skip]
  kernel_rfl

theorem node1964_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value412 value1 value2 = (output814, value413, value1))
    (child1963 : Flapjack.WordAlloc.removeDeadStructural input1963 value413 value1 value2 = (output1963, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1964 value412 value1 value2 = (output1964, value826, value1) := by
  rw [input1964_def, output1964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  try dsimp only
  rw [child1963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output1963_skip]
  kernel_rfl

theorem node1965_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value411 value1 value2 = (output813, value412, value1))
    (child1964 : Flapjack.WordAlloc.removeDeadStructural input1964 value412 value1 value2 = (output1964, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1965 value411 value1 value2 = (output1965, value826, value1) := by
  rw [input1965_def, output1965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child1964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output1964_skip]
  kernel_rfl

theorem node1966_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value410 value1 value2 = (output812, value411, value1))
    (child1965 : Flapjack.WordAlloc.removeDeadStructural input1965 value411 value1 value2 = (output1965, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1966 value410 value1 value2 = (output1966, value826, value1) := by
  rw [input1966_def, output1966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  try dsimp only
  rw [child1965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output1965_skip]
  kernel_rfl

theorem node1967_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value409 value1 value2 = (output811, value410, value1))
    (child1966 : Flapjack.WordAlloc.removeDeadStructural input1966 value410 value1 value2 = (output1966, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1967 value409 value1 value2 = (output1967, value826, value1) := by
  rw [input1967_def, output1967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child1966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output1966_skip]
  kernel_rfl

theorem node1968_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value408 value1 value2 = (output810, value409, value1))
    (child1967 : Flapjack.WordAlloc.removeDeadStructural input1967 value409 value1 value2 = (output1967, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1968 value408 value1 value2 = (output1968, value826, value1) := by
  rw [input1968_def, output1968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child1967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output1967_skip]
  kernel_rfl

theorem node1969_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value407 value1 value2 = (output809, value408, value1))
    (child1968 : Flapjack.WordAlloc.removeDeadStructural input1968 value408 value1 value2 = (output1968, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1969 value407 value1 value2 = (output1969, value826, value1) := by
  rw [input1969_def, output1969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child1968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output1968_skip]
  kernel_rfl

theorem node1970_cond_eq
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value406 value1 value2 = (output808, value407, value1))
    (child1969 : Flapjack.WordAlloc.removeDeadStructural input1969 value407 value1 value2 = (output1969, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1970 value406 value1 value2 = (output1970, value826, value1) := by
  rw [input1970_def, output1970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child808]
  try dsimp only
  rw [child1969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output808_skip, output1969_skip]
  kernel_rfl

theorem node1971_cond_eq
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value405 value1 value2 = (output807, value406, value1))
    (child1970 : Flapjack.WordAlloc.removeDeadStructural input1970 value406 value1 value2 = (output1970, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1971 value405 value1 value2 = (output1971, value826, value1) := by
  rw [input1971_def, output1971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child807]
  try dsimp only
  rw [child1970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output807_skip, output1970_skip]
  kernel_rfl

theorem node1972_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value404 value1 value2 = (output806, value405, value1))
    (child1971 : Flapjack.WordAlloc.removeDeadStructural input1971 value405 value1 value2 = (output1971, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1972 value404 value1 value2 = (output1972, value826, value1) := by
  rw [input1972_def, output1972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  try dsimp only
  rw [child1971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output806_skip, output1971_skip]
  kernel_rfl

theorem node1973_cond_eq
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value403 value1 value2 = (output805, value404, value1))
    (child1972 : Flapjack.WordAlloc.removeDeadStructural input1972 value404 value1 value2 = (output1972, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1973 value403 value1 value2 = (output1973, value826, value1) := by
  rw [input1973_def, output1973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child805]
  try dsimp only
  rw [child1972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output805_skip, output1972_skip]
  kernel_rfl

theorem node1974_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value402 value1 value2 = (output804, value403, value1))
    (child1973 : Flapjack.WordAlloc.removeDeadStructural input1973 value403 value1 value2 = (output1973, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1974 value402 value1 value2 = (output1974, value826, value1) := by
  rw [input1974_def, output1974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child1973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output1973_skip]
  kernel_rfl

theorem node1975_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value401 value1 value2 = (output803, value402, value1))
    (child1974 : Flapjack.WordAlloc.removeDeadStructural input1974 value402 value1 value2 = (output1974, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1975 value401 value1 value2 = (output1975, value826, value1) := by
  rw [input1975_def, output1975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child1974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output1974_skip]
  kernel_rfl

theorem node1976_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value400 value1 value2 = (output802, value401, value1))
    (child1975 : Flapjack.WordAlloc.removeDeadStructural input1975 value401 value1 value2 = (output1975, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1976 value400 value1 value2 = (output1976, value826, value1) := by
  rw [input1976_def, output1976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child1975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output1975_skip]
  kernel_rfl

theorem node1977_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value399 value1 value2 = (output801, value400, value1))
    (child1976 : Flapjack.WordAlloc.removeDeadStructural input1976 value400 value1 value2 = (output1976, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1977 value399 value1 value2 = (output1977, value826, value1) := by
  rw [input1977_def, output1977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child1976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output1976_skip]
  kernel_rfl

theorem node1978_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value398 value1 value2 = (output800, value399, value1))
    (child1977 : Flapjack.WordAlloc.removeDeadStructural input1977 value399 value1 value2 = (output1977, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1978 value398 value1 value2 = (output1978, value826, value1) := by
  rw [input1978_def, output1978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  try dsimp only
  rw [child1977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output1977_skip]
  kernel_rfl

theorem node1979_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value397 value1 value2 = (output799, value398, value1))
    (child1978 : Flapjack.WordAlloc.removeDeadStructural input1978 value398 value1 value2 = (output1978, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1979 value397 value1 value2 = (output1979, value826, value1) := by
  rw [input1979_def, output1979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  try dsimp only
  rw [child1978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output799_skip, output1978_skip]
  kernel_rfl

theorem node1980_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value392 value1 value2 = (output798, value397, value1))
    (child1979 : Flapjack.WordAlloc.removeDeadStructural input1979 value397 value1 value2 = (output1979, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1980 value392 value1 value2 = (output1980, value826, value1) := by
  rw [input1980_def, output1980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child1979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output1979_skip]
  kernel_rfl

theorem node1981_cond_eq
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value392 value1 value2 = (output793, value392, value1))
    (child1980 : Flapjack.WordAlloc.removeDeadStructural input1980 value392 value1 value2 = (output1980, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1981 value392 value1 value2 = (output1981, value826, value1) := by
  rw [input1981_def, output1981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child793]
  try dsimp only
  rw [child1980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output793_skip, output1980_skip]
  kernel_rfl

theorem node1982_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value394 value1 value2 = (output792, value392, value1))
    (child1981 : Flapjack.WordAlloc.removeDeadStructural input1981 value392 value1 value2 = (output1981, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1982 value394 value1 value2 = (output1982, value826, value1) := by
  rw [input1982_def, output1982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child1981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output1981_skip]
  kernel_rfl

theorem node1983_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value392 value1 value2 = (output791, value394, value1))
    (child1982 : Flapjack.WordAlloc.removeDeadStructural input1982 value394 value1 value2 = (output1982, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1983 value392 value1 value2 = (output1983, value826, value1) := by
  rw [input1983_def, output1983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child1982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output1982_skip]
  kernel_rfl

theorem node1984_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value387 value1 value2 = (output788, value392, value1))
    (child1983 : Flapjack.WordAlloc.removeDeadStructural input1983 value392 value1 value2 = (output1983, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input1984 value387 value1 value2 = (output1984, value826, value1) := by
  rw [input1984_def, output1984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child1983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output1983_skip]
  kernel_rfl

theorem node1985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1985 value387 value1 value2 = (output1985, value387, value1) := by
  rw [input1985_def, output1985_def]
  kernel_rfl

theorem node1986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1986 value387 value1 value2 = (output1986, value387, value1) := by
  rw [input1986_def, output1986_def]
  kernel_rfl

theorem node1987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1987 value387 value1 value2 = (output1987, value827, value1) := by
  rw [input1987_def, output1987_def]
  kernel_rfl

theorem node1988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1988 value827 value1 value2 = (output1988, value828, value1) := by
  rw [input1988_def, output1988_def]
  kernel_rfl

theorem node1989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1989 value828 value1 value2 = (output1989, value828, value1) := by
  rw [input1989_def, output1989_def]
  kernel_rfl

theorem node1990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1990 value828 value1 value2 = (output1990, value828, value1) := by
  rw [input1990_def, output1990_def]
  kernel_rfl

theorem node1991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1991 value828 value1 value2 = (output1991, value829, value1) := by
  rw [input1991_def, output1991_def]
  kernel_rfl

theorem node1992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1992 value829 value1 value2 = (output1992, value830, value1) := by
  rw [input1992_def, output1992_def]
  kernel_rfl

theorem node1993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1993 value830 value1 value2 = (output1993, value830, value1) := by
  rw [input1993_def, output1993_def]
  kernel_rfl

theorem node1994_cond_eq
    (child1992 : Flapjack.WordAlloc.removeDeadStructural input1992 value829 value1 value2 = (output1992, value830, value1))
    (child1993 : Flapjack.WordAlloc.removeDeadStructural input1993 value830 value1 value2 = (output1993, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input1994 value829 value1 value2 = (output1994, value830, value1) := by
  rw [input1994_def, output1994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1992]
  try dsimp only
  rw [child1993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1992_skip, output1993_skip]
  kernel_rfl

theorem node1995_cond_eq
    (child1991 : Flapjack.WordAlloc.removeDeadStructural input1991 value828 value1 value2 = (output1991, value829, value1))
    (child1994 : Flapjack.WordAlloc.removeDeadStructural input1994 value829 value1 value2 = (output1994, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input1995 value828 value1 value2 = (output1995, value830, value1) := by
  rw [input1995_def, output1995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1991]
  try dsimp only
  rw [child1994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1991_skip, output1994_skip]
  kernel_rfl

theorem node1996_cond_eq
    (child1990 : Flapjack.WordAlloc.removeDeadStructural input1990 value828 value1 value2 = (output1990, value828, value1))
    (child1995 : Flapjack.WordAlloc.removeDeadStructural input1995 value828 value1 value2 = (output1995, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input1996 value828 value1 value2 = (output1996, value830, value1) := by
  rw [input1996_def, output1996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1990]
  try dsimp only
  rw [child1995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1990_skip, output1995_skip]
  kernel_rfl

theorem node1997_cond_eq
    (child1989 : Flapjack.WordAlloc.removeDeadStructural input1989 value828 value1 value2 = (output1989, value828, value1))
    (child1996 : Flapjack.WordAlloc.removeDeadStructural input1996 value828 value1 value2 = (output1996, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input1997 value828 value1 value2 = (output1997, value830, value1) := by
  rw [input1997_def, output1997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1989]
  try dsimp only
  rw [child1996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1989_skip, output1996_skip]
  kernel_rfl

theorem node1998_cond_eq
    (child1988 : Flapjack.WordAlloc.removeDeadStructural input1988 value827 value1 value2 = (output1988, value828, value1))
    (child1997 : Flapjack.WordAlloc.removeDeadStructural input1997 value828 value1 value2 = (output1997, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input1998 value827 value1 value2 = (output1998, value830, value1) := by
  rw [input1998_def, output1998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1988]
  try dsimp only
  rw [child1997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1988_skip, output1997_skip]
  kernel_rfl

theorem node1999_cond_eq
    (child1987 : Flapjack.WordAlloc.removeDeadStructural input1987 value387 value1 value2 = (output1987, value827, value1))
    (child1998 : Flapjack.WordAlloc.removeDeadStructural input1998 value827 value1 value2 = (output1998, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input1999 value387 value1 value2 = (output1999, value830, value1) := by
  rw [input1999_def, output1999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1987]
  try dsimp only
  rw [child1998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1987_skip, output1998_skip]
  kernel_rfl

theorem node2000_cond_eq
    (child1986 : Flapjack.WordAlloc.removeDeadStructural input1986 value387 value1 value2 = (output1986, value387, value1))
    (child1999 : Flapjack.WordAlloc.removeDeadStructural input1999 value387 value1 value2 = (output1999, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input2000 value387 value1 value2 = (output2000, value830, value1) := by
  rw [input2000_def, output2000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1986]
  try dsimp only
  rw [child1999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1986_skip, output1999_skip]
  kernel_rfl

theorem node2001_cond_eq
    (child1985 : Flapjack.WordAlloc.removeDeadStructural input1985 value387 value1 value2 = (output1985, value387, value1))
    (child2000 : Flapjack.WordAlloc.removeDeadStructural input2000 value387 value1 value2 = (output2000, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input2001 value387 value1 value2 = (output2001, value830, value1) := by
  rw [input2001_def, output2001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1985]
  try dsimp only
  rw [child2000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1985_skip, output2000_skip]
  kernel_rfl

theorem node2002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2002 value830 value1 value2 = (output2002, value826, value1) := by
  rw [input2002_def, output2002_def]
  kernel_rfl

theorem node2003_cond_eq
    (child2001 : Flapjack.WordAlloc.removeDeadStructural input2001 value387 value1 value2 = (output2001, value830, value1))
    (child2002 : Flapjack.WordAlloc.removeDeadStructural input2002 value830 value1 value2 = (output2002, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input2003 value387 value1 value2 = (output2003, value826, value1) := by
  rw [input2003_def, output2003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2001]
  try dsimp only
  rw [child2002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2001_skip, output2002_skip]
  kernel_rfl

theorem node2004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2004 value826 value1 value2 = (output2004, value826, value1) := by
  rw [input2004_def, output2004_def]
  kernel_rfl

theorem node2005_cond_eq
    (child2003 : Flapjack.WordAlloc.removeDeadStructural input2003 value387 value1 value2 = (output2003, value826, value1))
    (child2004 : Flapjack.WordAlloc.removeDeadStructural input2004 value826 value1 value2 = (output2004, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input2005 value387 value1 value2 = (output2005, value826, value1) := by
  rw [input2005_def, output2005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2003]
  try dsimp only
  rw [child2004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2003_skip, output2004_skip]
  kernel_rfl

theorem node2006_cond_eq
    (child1984 : Flapjack.WordAlloc.removeDeadStructural input1984 value387 value1 value2 = (output1984, value826, value1))
    (child2005 : Flapjack.WordAlloc.removeDeadStructural input2005 value387 value1 value2 = (output2005, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input2006 value387 value1 value2 = (output2006, value832, value1) := by
  rw [input2006_def, output2006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1984]
  try dsimp only
  rw [child2005]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1984_skip, output2005_skip]
  kernel_rfl

theorem node2007_cond_eq
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value387 value1 value2 = (output769, value387, value1))
    (child2006 : Flapjack.WordAlloc.removeDeadStructural input2006 value387 value1 value2 = (output2006, value832, value1)) : Flapjack.WordAlloc.removeDeadStructural input2007 value387 value1 value2 = (output2007, value832, value1) := by
  rw [input2007_def, output2007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child769]
  try dsimp only
  rw [child2006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output769_skip, output2006_skip]
  kernel_rfl

theorem node2008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2008 value832 value1 value2 = (output2008, value826, value1) := by
  rw [input2008_def, output2008_def]
  kernel_rfl

theorem node2009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2009 value826 value1 value2 = (output2009, value833, value1) := by
  rw [input2009_def, output2009_def]
  kernel_rfl

theorem node2010_cond_eq
    (child2008 : Flapjack.WordAlloc.removeDeadStructural input2008 value832 value1 value2 = (output2008, value826, value1))
    (child2009 : Flapjack.WordAlloc.removeDeadStructural input2009 value826 value1 value2 = (output2009, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2010 value832 value1 value2 = (output2010, value833, value1) := by
  rw [input2010_def, output2010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2008]
  try dsimp only
  rw [child2009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2008_skip, output2009_skip]
  kernel_rfl

theorem node2011_cond_eq
    (child2007 : Flapjack.WordAlloc.removeDeadStructural input2007 value387 value1 value2 = (output2007, value832, value1))
    (child2010 : Flapjack.WordAlloc.removeDeadStructural input2010 value832 value1 value2 = (output2010, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2011 value387 value1 value2 = (output2011, value833, value1) := by
  rw [input2011_def, output2011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2007]
  try dsimp only
  rw [child2010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2007_skip, output2010_skip]
  kernel_rfl

theorem node2012_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value387 value1 value2 = (output764, value387, value1))
    (child2011 : Flapjack.WordAlloc.removeDeadStructural input2011 value387 value1 value2 = (output2011, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2012 value387 value1 value2 = (output2012, value833, value1) := by
  rw [input2012_def, output2012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child2011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output2011_skip]
  kernel_rfl

theorem node2013_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value385 value1 value2 = (output763, value387, value1))
    (child2012 : Flapjack.WordAlloc.removeDeadStructural input2012 value387 value1 value2 = (output2012, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2013 value385 value1 value2 = (output2013, value833, value1) := by
  rw [input2013_def, output2013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  try dsimp only
  rw [child2012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output2012_skip]
  kernel_rfl

theorem node2014_cond_eq
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value384 value1 value2 = (output760, value385, value1))
    (child2013 : Flapjack.WordAlloc.removeDeadStructural input2013 value385 value1 value2 = (output2013, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2014 value384 value1 value2 = (output2014, value833, value1) := by
  rw [input2014_def, output2014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child760]
  try dsimp only
  rw [child2013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output760_skip, output2013_skip]
  kernel_rfl

theorem node2015_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value380 value1 value2 = (output759, value384, value1))
    (child2014 : Flapjack.WordAlloc.removeDeadStructural input2014 value384 value1 value2 = (output2014, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2015 value380 value1 value2 = (output2015, value833, value1) := by
  rw [input2015_def, output2015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child2014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output759_skip, output2014_skip]
  kernel_rfl

theorem node2016_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value377 value1 value2 = (output752, value380, value1))
    (child2015 : Flapjack.WordAlloc.removeDeadStructural input2015 value380 value1 value2 = (output2015, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2016 value377 value1 value2 = (output2016, value833, value1) := by
  rw [input2016_def, output2016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child752]
  try dsimp only
  rw [child2015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output752_skip, output2015_skip]
  kernel_rfl

theorem node2017_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value377 value1 value2 = (output747, value377, value1))
    (child2016 : Flapjack.WordAlloc.removeDeadStructural input2016 value377 value1 value2 = (output2016, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2017 value377 value1 value2 = (output2017, value833, value1) := by
  rw [input2017_def, output2017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  try dsimp only
  rw [child2016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output2016_skip]
  kernel_rfl

theorem node2018_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value376 value1 value2 = (output746, value377, value1))
    (child2017 : Flapjack.WordAlloc.removeDeadStructural input2017 value377 value1 value2 = (output2017, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2018 value376 value1 value2 = (output2018, value833, value1) := by
  rw [input2018_def, output2018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child2017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output2017_skip]
  kernel_rfl

theorem node2019_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value375 value1 value2 = (output745, value376, value1))
    (child2018 : Flapjack.WordAlloc.removeDeadStructural input2018 value376 value1 value2 = (output2018, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2019 value375 value1 value2 = (output2019, value833, value1) := by
  rw [input2019_def, output2019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child2018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output2018_skip]
  kernel_rfl

theorem node2020_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value348 value1 value2 = (output744, value375, value1))
    (child2019 : Flapjack.WordAlloc.removeDeadStructural input2019 value375 value1 value2 = (output2019, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2020 value348 value1 value2 = (output2020, value833, value1) := by
  rw [input2020_def, output2020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child2019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output2019_skip]
  kernel_rfl

theorem node2021_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value348 value1 value2 = (output665, value348, value1))
    (child2020 : Flapjack.WordAlloc.removeDeadStructural input2020 value348 value1 value2 = (output2020, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2021 value348 value1 value2 = (output2021, value833, value1) := by
  rw [input2021_def, output2021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child2020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output2020_skip]
  kernel_rfl

theorem node2022_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value347 value1 value2 = (output664, value348, value1))
    (child2021 : Flapjack.WordAlloc.removeDeadStructural input2021 value348 value1 value2 = (output2021, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2022 value347 value1 value2 = (output2022, value833, value1) := by
  rw [input2022_def, output2022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child2021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output2021_skip]
  kernel_rfl

theorem node2023_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value343 value1 value2 = (output663, value347, value1))
    (child2022 : Flapjack.WordAlloc.removeDeadStructural input2022 value347 value1 value2 = (output2022, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2023 value343 value1 value2 = (output2023, value833, value1) := by
  rw [input2023_def, output2023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child2022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output2022_skip]
  kernel_rfl

theorem node2024_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value340 value1 value2 = (output656, value343, value1))
    (child2023 : Flapjack.WordAlloc.removeDeadStructural input2023 value343 value1 value2 = (output2023, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2024 value340 value1 value2 = (output2024, value833, value1) := by
  rw [input2024_def, output2024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child2023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output2023_skip]
  kernel_rfl

theorem node2025_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value340 value1 value2 = (output651, value340, value1))
    (child2024 : Flapjack.WordAlloc.removeDeadStructural input2024 value340 value1 value2 = (output2024, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2025 value340 value1 value2 = (output2025, value833, value1) := by
  rw [input2025_def, output2025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child2024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output2024_skip]
  kernel_rfl

theorem node2026_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value339 value1 value2 = (output650, value340, value1))
    (child2025 : Flapjack.WordAlloc.removeDeadStructural input2025 value340 value1 value2 = (output2025, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2026 value339 value1 value2 = (output2026, value833, value1) := by
  rw [input2026_def, output2026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child2025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output2025_skip]
  kernel_rfl

theorem node2027_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value338 value1 value2 = (output649, value339, value1))
    (child2026 : Flapjack.WordAlloc.removeDeadStructural input2026 value339 value1 value2 = (output2026, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2027 value338 value1 value2 = (output2027, value833, value1) := by
  rw [input2027_def, output2027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child2026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output2026_skip]
  kernel_rfl

theorem node2028_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value311 value1 value2 = (output648, value338, value1))
    (child2027 : Flapjack.WordAlloc.removeDeadStructural input2027 value338 value1 value2 = (output2027, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2028 value311 value1 value2 = (output2028, value833, value1) := by
  rw [input2028_def, output2028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child2027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output2027_skip]
  kernel_rfl

theorem node2029_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value311 value1 value2 = (output569, value311, value1))
    (child2028 : Flapjack.WordAlloc.removeDeadStructural input2028 value311 value1 value2 = (output2028, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2029 value311 value1 value2 = (output2029, value833, value1) := by
  rw [input2029_def, output2029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  try dsimp only
  rw [child2028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output569_skip, output2028_skip]
  kernel_rfl

theorem node2030_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value309 value1 value2 = (output568, value311, value1))
    (child2029 : Flapjack.WordAlloc.removeDeadStructural input2029 value311 value1 value2 = (output2029, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2030 value309 value1 value2 = (output2030, value833, value1) := by
  rw [input2030_def, output2030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child2029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output2029_skip]
  kernel_rfl

theorem node2031_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value309 value1 value2 = (output563, value309, value1))
    (child2030 : Flapjack.WordAlloc.removeDeadStructural input2030 value309 value1 value2 = (output2030, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2031 value309 value1 value2 = (output2031, value833, value1) := by
  rw [input2031_def, output2031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child2030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output2030_skip]
  kernel_rfl

theorem node2032_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value308 value1 value2 = (output562, value309, value1))
    (child2031 : Flapjack.WordAlloc.removeDeadStructural input2031 value309 value1 value2 = (output2031, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2032 value308 value1 value2 = (output2032, value833, value1) := by
  rw [input2032_def, output2032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child2031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output2031_skip]
  kernel_rfl

theorem node2033_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value305 value1 value2 = (output561, value308, value1))
    (child2032 : Flapjack.WordAlloc.removeDeadStructural input2032 value308 value1 value2 = (output2032, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2033 value305 value1 value2 = (output2033, value833, value1) := by
  rw [input2033_def, output2033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child2032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output2032_skip]
  kernel_rfl

theorem node2034_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value301 value1 value2 = (output556, value305, value1))
    (child2033 : Flapjack.WordAlloc.removeDeadStructural input2033 value305 value1 value2 = (output2033, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2034 value301 value1 value2 = (output2034, value833, value1) := by
  rw [input2034_def, output2034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child2033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output2033_skip]
  kernel_rfl

theorem node2035_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value300 value1 value2 = (output549, value301, value1))
    (child2034 : Flapjack.WordAlloc.removeDeadStructural input2034 value301 value1 value2 = (output2034, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2035 value300 value1 value2 = (output2035, value833, value1) := by
  rw [input2035_def, output2035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  try dsimp only
  rw [child2034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output549_skip, output2034_skip]
  kernel_rfl

theorem node2036_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value297 value1 value2 = (output548, value300, value1))
    (child2035 : Flapjack.WordAlloc.removeDeadStructural input2035 value300 value1 value2 = (output2035, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2036 value297 value1 value2 = (output2036, value833, value1) := by
  rw [input2036_def, output2036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child2035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output2035_skip]
  kernel_rfl

theorem node2037_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value293 value1 value2 = (output543, value297, value1))
    (child2036 : Flapjack.WordAlloc.removeDeadStructural input2036 value297 value1 value2 = (output2036, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2037 value293 value1 value2 = (output2037, value833, value1) := by
  rw [input2037_def, output2037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child2036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output2036_skip]
  kernel_rfl

theorem node2038_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value292 value1 value2 = (output536, value293, value1))
    (child2037 : Flapjack.WordAlloc.removeDeadStructural input2037 value293 value1 value2 = (output2037, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2038 value292 value1 value2 = (output2038, value833, value1) := by
  rw [input2038_def, output2038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child2037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output2037_skip]
  kernel_rfl

theorem node2039_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value289 value1 value2 = (output535, value292, value1))
    (child2038 : Flapjack.WordAlloc.removeDeadStructural input2038 value292 value1 value2 = (output2038, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2039 value289 value1 value2 = (output2039, value833, value1) := by
  rw [input2039_def, output2039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child2038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output2038_skip]
  kernel_rfl

theorem node2040_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value289 value1 value2 = (output530, value289, value1))
    (child2039 : Flapjack.WordAlloc.removeDeadStructural input2039 value289 value1 value2 = (output2039, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2040 value289 value1 value2 = (output2040, value833, value1) := by
  rw [input2040_def, output2040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child2039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output2039_skip]
  kernel_rfl

theorem node2041_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value288 value1 value2 = (output529, value289, value1))
    (child2040 : Flapjack.WordAlloc.removeDeadStructural input2040 value289 value1 value2 = (output2040, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2041 value288 value1 value2 = (output2041, value833, value1) := by
  rw [input2041_def, output2041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child2040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output2040_skip]
  kernel_rfl

theorem node2042_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value285 value1 value2 = (output528, value288, value1))
    (child2041 : Flapjack.WordAlloc.removeDeadStructural input2041 value288 value1 value2 = (output2041, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2042 value285 value1 value2 = (output2042, value833, value1) := by
  rw [input2042_def, output2042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child2041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output2041_skip]
  kernel_rfl

theorem node2043_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value285 value1 value2 = (output523, value285, value1))
    (child2042 : Flapjack.WordAlloc.removeDeadStructural input2042 value285 value1 value2 = (output2042, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2043 value285 value1 value2 = (output2043, value833, value1) := by
  rw [input2043_def, output2043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child2042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output2042_skip]
  kernel_rfl

theorem node2044_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value284 value1 value2 = (output522, value285, value1))
    (child2043 : Flapjack.WordAlloc.removeDeadStructural input2043 value285 value1 value2 = (output2043, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2044 value284 value1 value2 = (output2044, value833, value1) := by
  rw [input2044_def, output2044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child2043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output2043_skip]
  kernel_rfl

theorem node2045_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value281 value1 value2 = (output521, value284, value1))
    (child2044 : Flapjack.WordAlloc.removeDeadStructural input2044 value284 value1 value2 = (output2044, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2045 value281 value1 value2 = (output2045, value833, value1) := by
  rw [input2045_def, output2045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child2044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output2044_skip]
  kernel_rfl

theorem node2046_cond_eq
    (child516 : Flapjack.WordAlloc.removeDeadStructural input516 value281 value1 value2 = (output516, value281, value1))
    (child2045 : Flapjack.WordAlloc.removeDeadStructural input2045 value281 value1 value2 = (output2045, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2046 value281 value1 value2 = (output2046, value833, value1) := by
  rw [input2046_def, output2046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child516]
  try dsimp only
  rw [child2045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output516_skip, output2045_skip]
  kernel_rfl

theorem node2047_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value280 value1 value2 = (output515, value281, value1))
    (child2046 : Flapjack.WordAlloc.removeDeadStructural input2046 value281 value1 value2 = (output2046, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2047 value280 value1 value2 = (output2047, value833, value1) := by
  rw [input2047_def, output2047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child2046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output2046_skip]
  kernel_rfl

#print axioms node2047_cond_eq
end InitECandidate.Proofs.DeadStages692.Parallel
