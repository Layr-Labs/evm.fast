import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages862.Parallel.Data.Chunk007
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages862.Parallel
theorem node1792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1792 value387 value1 value204 = (output1792, value388, value1) := by
  rw [input1792_def, output1792_def]
  kernel_rfl

theorem node1793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1793 value388 value1 value204 = (output1793, value388, value1) := by
  rw [input1793_def, output1793_def]
  kernel_rfl

theorem node1794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1794 value388 value1 value204 = (output1794, value388, value1) := by
  rw [input1794_def, output1794_def]
  kernel_rfl

theorem node1795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1795 value388 value1 value204 = (output1795, value388, value1) := by
  rw [input1795_def, output1795_def]
  kernel_rfl

theorem node1796_cond_eq
    (child1794 : Flapjack.WordAlloc.removeDeadStructural input1794 value388 value1 value204 = (output1794, value388, value1))
    (child1795 : Flapjack.WordAlloc.removeDeadStructural input1795 value388 value1 value204 = (output1795, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1796 value388 value1 value204 = (output1796, value388, value1) := by
  rw [input1796_def, output1796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1794]
  try dsimp only
  rw [child1795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1794_skip, output1795_skip]
  kernel_rfl

theorem node1797_cond_eq
    (child1793 : Flapjack.WordAlloc.removeDeadStructural input1793 value388 value1 value204 = (output1793, value388, value1))
    (child1796 : Flapjack.WordAlloc.removeDeadStructural input1796 value388 value1 value204 = (output1796, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1797 value388 value1 value204 = (output1797, value388, value1) := by
  rw [input1797_def, output1797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1793]
  try dsimp only
  rw [child1796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1793_skip, output1796_skip]
  kernel_rfl

theorem node1798_cond_eq
    (child1792 : Flapjack.WordAlloc.removeDeadStructural input1792 value387 value1 value204 = (output1792, value388, value1))
    (child1797 : Flapjack.WordAlloc.removeDeadStructural input1797 value388 value1 value204 = (output1797, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1798 value387 value1 value204 = (output1798, value388, value1) := by
  rw [input1798_def, output1798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1792]
  try dsimp only
  rw [child1797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1792_skip, output1797_skip]
  kernel_rfl

theorem node1799_cond_eq
    (child1791 : Flapjack.WordAlloc.removeDeadStructural input1791 value386 value1 value204 = (output1791, value387, value1))
    (child1798 : Flapjack.WordAlloc.removeDeadStructural input1798 value387 value1 value204 = (output1798, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1799 value386 value1 value204 = (output1799, value388, value1) := by
  rw [input1799_def, output1799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1791]
  try dsimp only
  rw [child1798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1791_skip, output1798_skip]
  kernel_rfl

theorem node1800_cond_eq
    (child1790 : Flapjack.WordAlloc.removeDeadStructural input1790 value385 value1 value204 = (output1790, value386, value1))
    (child1799 : Flapjack.WordAlloc.removeDeadStructural input1799 value386 value1 value204 = (output1799, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1800 value385 value1 value204 = (output1800, value388, value1) := by
  rw [input1800_def, output1800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1790]
  try dsimp only
  rw [child1799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1790_skip, output1799_skip]
  kernel_rfl

theorem node1801_cond_eq
    (child1789 : Flapjack.WordAlloc.removeDeadStructural input1789 value384 value1 value204 = (output1789, value385, value1))
    (child1800 : Flapjack.WordAlloc.removeDeadStructural input1800 value385 value1 value204 = (output1800, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1801 value384 value1 value204 = (output1801, value388, value1) := by
  rw [input1801_def, output1801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1789]
  try dsimp only
  rw [child1800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1789_skip, output1800_skip]
  kernel_rfl

theorem node1802_cond_eq
    (child1788 : Flapjack.WordAlloc.removeDeadStructural input1788 value381 value1 value204 = (output1788, value384, value1))
    (child1801 : Flapjack.WordAlloc.removeDeadStructural input1801 value384 value1 value204 = (output1801, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1802 value381 value1 value204 = (output1802, value388, value1) := by
  rw [input1802_def, output1802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1788]
  try dsimp only
  rw [child1801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1788_skip, output1801_skip]
  kernel_rfl

theorem node1803_cond_eq
    (child1783 : Flapjack.WordAlloc.removeDeadStructural input1783 value381 value1 value204 = (output1783, value381, value1))
    (child1802 : Flapjack.WordAlloc.removeDeadStructural input1802 value381 value1 value204 = (output1802, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1803 value381 value1 value204 = (output1803, value388, value1) := by
  rw [input1803_def, output1803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1783]
  try dsimp only
  rw [child1802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1783_skip, output1802_skip]
  kernel_rfl

theorem node1804_cond_eq
    (child1782 : Flapjack.WordAlloc.removeDeadStructural input1782 value378 value1 value204 = (output1782, value381, value1))
    (child1803 : Flapjack.WordAlloc.removeDeadStructural input1803 value381 value1 value204 = (output1803, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1804 value378 value1 value204 = (output1804, value388, value1) := by
  rw [input1804_def, output1804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1782]
  try dsimp only
  rw [child1803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1782_skip, output1803_skip]
  kernel_rfl

theorem node1805_cond_eq
    (child1781 : Flapjack.WordAlloc.removeDeadStructural input1781 value380 value1 value204 = (output1781, value378, value1))
    (child1804 : Flapjack.WordAlloc.removeDeadStructural input1804 value378 value1 value204 = (output1804, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1805 value380 value1 value204 = (output1805, value388, value1) := by
  rw [input1805_def, output1805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1781]
  try dsimp only
  rw [child1804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1781_skip, output1804_skip]
  kernel_rfl

theorem node1806_cond_eq
    (child1780 : Flapjack.WordAlloc.removeDeadStructural input1780 value371 value1 value204 = (output1780, value380, value1))
    (child1805 : Flapjack.WordAlloc.removeDeadStructural input1805 value380 value1 value204 = (output1805, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1806 value371 value1 value204 = (output1806, value388, value1) := by
  rw [input1806_def, output1806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1780]
  try dsimp only
  rw [child1805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1780_skip, output1805_skip]
  kernel_rfl

theorem node1807_cond_eq
    (child1731 : Flapjack.WordAlloc.removeDeadStructural input1731 value371 value1 value204 = (output1731, value371, value1))
    (child1806 : Flapjack.WordAlloc.removeDeadStructural input1806 value371 value1 value204 = (output1806, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1807 value371 value1 value204 = (output1807, value388, value1) := by
  rw [input1807_def, output1807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1731]
  try dsimp only
  rw [child1806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1731_skip, output1806_skip]
  kernel_rfl

theorem node1808_cond_eq
    (child1730 : Flapjack.WordAlloc.removeDeadStructural input1730 value370 value1 value204 = (output1730, value371, value1))
    (child1807 : Flapjack.WordAlloc.removeDeadStructural input1807 value371 value1 value204 = (output1807, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1808 value370 value1 value204 = (output1808, value388, value1) := by
  rw [input1808_def, output1808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1730]
  try dsimp only
  rw [child1807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1730_skip, output1807_skip]
  kernel_rfl

theorem node1809_cond_eq
    (child1729 : Flapjack.WordAlloc.removeDeadStructural input1729 value367 value1 value204 = (output1729, value370, value1))
    (child1808 : Flapjack.WordAlloc.removeDeadStructural input1808 value370 value1 value204 = (output1808, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1809 value367 value1 value204 = (output1809, value388, value1) := by
  rw [input1809_def, output1809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1729]
  try dsimp only
  rw [child1808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1729_skip, output1808_skip]
  kernel_rfl

theorem node1810_cond_eq
    (child1724 : Flapjack.WordAlloc.removeDeadStructural input1724 value367 value1 value204 = (output1724, value367, value1))
    (child1809 : Flapjack.WordAlloc.removeDeadStructural input1809 value367 value1 value204 = (output1809, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1810 value367 value1 value204 = (output1810, value388, value1) := by
  rw [input1810_def, output1810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1724]
  try dsimp only
  rw [child1809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1724_skip, output1809_skip]
  kernel_rfl

theorem node1811_cond_eq
    (child1723 : Flapjack.WordAlloc.removeDeadStructural input1723 value366 value1 value204 = (output1723, value367, value1))
    (child1810 : Flapjack.WordAlloc.removeDeadStructural input1810 value367 value1 value204 = (output1810, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1811 value366 value1 value204 = (output1811, value388, value1) := by
  rw [input1811_def, output1811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1723]
  try dsimp only
  rw [child1810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1723_skip, output1810_skip]
  kernel_rfl

theorem node1812_cond_eq
    (child1722 : Flapjack.WordAlloc.removeDeadStructural input1722 value365 value1 value204 = (output1722, value366, value1))
    (child1811 : Flapjack.WordAlloc.removeDeadStructural input1811 value366 value1 value204 = (output1811, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1812 value365 value1 value204 = (output1812, value388, value1) := by
  rw [input1812_def, output1812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1722]
  try dsimp only
  rw [child1811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1722_skip, output1811_skip]
  kernel_rfl

theorem node1813_cond_eq
    (child1721 : Flapjack.WordAlloc.removeDeadStructural input1721 value365 value1 value204 = (output1721, value365, value1))
    (child1812 : Flapjack.WordAlloc.removeDeadStructural input1812 value365 value1 value204 = (output1812, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1813 value365 value1 value204 = (output1813, value388, value1) := by
  rw [input1813_def, output1813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1721]
  try dsimp only
  rw [child1812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1721_skip, output1812_skip]
  kernel_rfl

theorem node1814_cond_eq
    (child1720 : Flapjack.WordAlloc.removeDeadStructural input1720 value365 value1 value204 = (output1720, value365, value1))
    (child1813 : Flapjack.WordAlloc.removeDeadStructural input1813 value365 value1 value204 = (output1813, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1814 value365 value1 value204 = (output1814, value388, value1) := by
  rw [input1814_def, output1814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1720]
  try dsimp only
  rw [child1813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1720_skip, output1813_skip]
  kernel_rfl

theorem node1815_cond_eq
    (child1719 : Flapjack.WordAlloc.removeDeadStructural input1719 value365 value1 value204 = (output1719, value365, value1))
    (child1814 : Flapjack.WordAlloc.removeDeadStructural input1814 value365 value1 value204 = (output1814, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1815 value365 value1 value204 = (output1815, value388, value1) := by
  rw [input1815_def, output1815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1719]
  try dsimp only
  rw [child1814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1719_skip, output1814_skip]
  kernel_rfl

theorem node1816_cond_eq
    (child1718 : Flapjack.WordAlloc.removeDeadStructural input1718 value364 value1 value204 = (output1718, value365, value1))
    (child1815 : Flapjack.WordAlloc.removeDeadStructural input1815 value365 value1 value204 = (output1815, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1816 value364 value1 value204 = (output1816, value388, value1) := by
  rw [input1816_def, output1816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1718]
  try dsimp only
  rw [child1815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1718_skip, output1815_skip]
  kernel_rfl

theorem node1817_cond_eq
    (child1717 : Flapjack.WordAlloc.removeDeadStructural input1717 value361 value1 value204 = (output1717, value364, value1))
    (child1816 : Flapjack.WordAlloc.removeDeadStructural input1816 value364 value1 value204 = (output1816, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1817 value361 value1 value204 = (output1817, value388, value1) := by
  rw [input1817_def, output1817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1717]
  try dsimp only
  rw [child1816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1717_skip, output1816_skip]
  kernel_rfl

theorem node1818_cond_eq
    (child1712 : Flapjack.WordAlloc.removeDeadStructural input1712 value361 value1 value204 = (output1712, value361, value1))
    (child1817 : Flapjack.WordAlloc.removeDeadStructural input1817 value361 value1 value204 = (output1817, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1818 value361 value1 value204 = (output1818, value388, value1) := by
  rw [input1818_def, output1818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1712]
  try dsimp only
  rw [child1817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1712_skip, output1817_skip]
  kernel_rfl

theorem node1819_cond_eq
    (child1711 : Flapjack.WordAlloc.removeDeadStructural input1711 value361 value1 value204 = (output1711, value361, value1))
    (child1818 : Flapjack.WordAlloc.removeDeadStructural input1818 value361 value1 value204 = (output1818, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1819 value361 value1 value204 = (output1819, value388, value1) := by
  rw [input1819_def, output1819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1711]
  try dsimp only
  rw [child1818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1711_skip, output1818_skip]
  kernel_rfl

theorem node1820_cond_eq
    (child1710 : Flapjack.WordAlloc.removeDeadStructural input1710 value361 value1 value204 = (output1710, value361, value1))
    (child1819 : Flapjack.WordAlloc.removeDeadStructural input1819 value361 value1 value204 = (output1819, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1820 value361 value1 value204 = (output1820, value388, value1) := by
  rw [input1820_def, output1820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1710]
  try dsimp only
  rw [child1819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1710_skip, output1819_skip]
  kernel_rfl

theorem node1821_cond_eq
    (child1709 : Flapjack.WordAlloc.removeDeadStructural input1709 value361 value1 value204 = (output1709, value361, value1))
    (child1820 : Flapjack.WordAlloc.removeDeadStructural input1820 value361 value1 value204 = (output1820, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1821 value361 value1 value204 = (output1821, value388, value1) := by
  rw [input1821_def, output1821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1709]
  try dsimp only
  rw [child1820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1709_skip, output1820_skip]
  kernel_rfl

theorem node1822_cond_eq
    (child1708 : Flapjack.WordAlloc.removeDeadStructural input1708 value360 value1 value204 = (output1708, value361, value1))
    (child1821 : Flapjack.WordAlloc.removeDeadStructural input1821 value361 value1 value204 = (output1821, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1822 value360 value1 value204 = (output1822, value388, value1) := by
  rw [input1822_def, output1822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1708]
  try dsimp only
  rw [child1821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1708_skip, output1821_skip]
  kernel_rfl

theorem node1823_cond_eq
    (child1707 : Flapjack.WordAlloc.removeDeadStructural input1707 value357 value1 value204 = (output1707, value360, value1))
    (child1822 : Flapjack.WordAlloc.removeDeadStructural input1822 value360 value1 value204 = (output1822, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1823 value357 value1 value204 = (output1823, value388, value1) := by
  rw [input1823_def, output1823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1707]
  try dsimp only
  rw [child1822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1707_skip, output1822_skip]
  kernel_rfl

theorem node1824_cond_eq
    (child1702 : Flapjack.WordAlloc.removeDeadStructural input1702 value357 value1 value204 = (output1702, value357, value1))
    (child1823 : Flapjack.WordAlloc.removeDeadStructural input1823 value357 value1 value204 = (output1823, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1824 value357 value1 value204 = (output1824, value388, value1) := by
  rw [input1824_def, output1824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1702]
  try dsimp only
  rw [child1823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1702_skip, output1823_skip]
  kernel_rfl

theorem node1825_cond_eq
    (child1701 : Flapjack.WordAlloc.removeDeadStructural input1701 value356 value1 value204 = (output1701, value357, value1))
    (child1824 : Flapjack.WordAlloc.removeDeadStructural input1824 value357 value1 value204 = (output1824, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1825 value356 value1 value204 = (output1825, value388, value1) := by
  rw [input1825_def, output1825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1701]
  try dsimp only
  rw [child1824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1701_skip, output1824_skip]
  kernel_rfl

theorem node1826_cond_eq
    (child1700 : Flapjack.WordAlloc.removeDeadStructural input1700 value356 value1 value204 = (output1700, value356, value1))
    (child1825 : Flapjack.WordAlloc.removeDeadStructural input1825 value356 value1 value204 = (output1825, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1826 value356 value1 value204 = (output1826, value388, value1) := by
  rw [input1826_def, output1826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1700]
  try dsimp only
  rw [child1825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1700_skip, output1825_skip]
  kernel_rfl

theorem node1827_cond_eq
    (child1699 : Flapjack.WordAlloc.removeDeadStructural input1699 value225 value1 value204 = (output1699, value356, value1))
    (child1826 : Flapjack.WordAlloc.removeDeadStructural input1826 value356 value1 value204 = (output1826, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1827 value225 value1 value204 = (output1827, value388, value1) := by
  rw [input1827_def, output1827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1699]
  try dsimp only
  rw [child1826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1699_skip, output1826_skip]
  kernel_rfl

theorem node1828_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value225 value1 value204 = (output918, value225, value1))
    (child1827 : Flapjack.WordAlloc.removeDeadStructural input1827 value225 value1 value204 = (output1827, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1828 value225 value1 value204 = (output1828, value388, value1) := by
  rw [input1828_def, output1828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child1827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output1827_skip]
  kernel_rfl

theorem node1829_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value225 value1 value204 = (output917, value225, value1))
    (child1828 : Flapjack.WordAlloc.removeDeadStructural input1828 value225 value1 value204 = (output1828, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1829 value225 value1 value204 = (output1829, value388, value1) := by
  rw [input1829_def, output1829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child1828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output1828_skip]
  kernel_rfl

theorem node1830_cond_eq
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value225 value1 value204 = (output916, value225, value1))
    (child1829 : Flapjack.WordAlloc.removeDeadStructural input1829 value225 value1 value204 = (output1829, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1830 value225 value1 value204 = (output1830, value388, value1) := by
  rw [input1830_def, output1830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child916]
  try dsimp only
  rw [child1829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output916_skip, output1829_skip]
  kernel_rfl

theorem node1831_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value225 value1 value204 = (output915, value225, value1))
    (child1830 : Flapjack.WordAlloc.removeDeadStructural input1830 value225 value1 value204 = (output1830, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1831 value225 value1 value204 = (output1831, value388, value1) := by
  rw [input1831_def, output1831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  try dsimp only
  rw [child1830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output1830_skip]
  kernel_rfl

theorem node1832_cond_eq
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value224 value1 value204 = (output914, value225, value1))
    (child1831 : Flapjack.WordAlloc.removeDeadStructural input1831 value225 value1 value204 = (output1831, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1832 value224 value1 value204 = (output1832, value388, value1) := by
  rw [input1832_def, output1832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child914]
  try dsimp only
  rw [child1831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output914_skip, output1831_skip]
  kernel_rfl

theorem node1833_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value221 value1 value204 = (output913, value224, value1))
    (child1832 : Flapjack.WordAlloc.removeDeadStructural input1832 value224 value1 value204 = (output1832, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1833 value221 value1 value204 = (output1833, value388, value1) := by
  rw [input1833_def, output1833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child1832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output1832_skip]
  kernel_rfl

theorem node1834_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value221 value1 value204 = (output908, value221, value1))
    (child1833 : Flapjack.WordAlloc.removeDeadStructural input1833 value221 value1 value204 = (output1833, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1834 value221 value1 value204 = (output1834, value388, value1) := by
  rw [input1834_def, output1834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child1833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output1833_skip]
  kernel_rfl

theorem node1835_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value220 value1 value204 = (output907, value221, value1))
    (child1834 : Flapjack.WordAlloc.removeDeadStructural input1834 value221 value1 value204 = (output1834, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1835 value220 value1 value204 = (output1835, value388, value1) := by
  rw [input1835_def, output1835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  try dsimp only
  rw [child1834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output907_skip, output1834_skip]
  kernel_rfl

theorem node1836_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value219 value1 value204 = (output906, value220, value1))
    (child1835 : Flapjack.WordAlloc.removeDeadStructural input1835 value220 value1 value204 = (output1835, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1836 value219 value1 value204 = (output1836, value388, value1) := by
  rw [input1836_def, output1836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  try dsimp only
  rw [child1835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output906_skip, output1835_skip]
  kernel_rfl

theorem node1837_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value216 value1 value204 = (output905, value219, value1))
    (child1836 : Flapjack.WordAlloc.removeDeadStructural input1836 value219 value1 value204 = (output1836, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1837 value216 value1 value204 = (output1837, value388, value1) := by
  rw [input1837_def, output1837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child1836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output1836_skip]
  kernel_rfl

theorem node1838_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value216 value1 value204 = (output900, value216, value1))
    (child1837 : Flapjack.WordAlloc.removeDeadStructural input1837 value216 value1 value204 = (output1837, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1838 value216 value1 value204 = (output1838, value388, value1) := by
  rw [input1838_def, output1838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child1837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output1837_skip]
  kernel_rfl

theorem node1839_cond_eq
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value215 value1 value204 = (output899, value216, value1))
    (child1838 : Flapjack.WordAlloc.removeDeadStructural input1838 value216 value1 value204 = (output1838, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1839 value215 value1 value204 = (output1839, value388, value1) := by
  rw [input1839_def, output1839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child899]
  try dsimp only
  rw [child1838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output899_skip, output1838_skip]
  kernel_rfl

theorem node1840_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value214 value1 value204 = (output898, value215, value1))
    (child1839 : Flapjack.WordAlloc.removeDeadStructural input1839 value215 value1 value204 = (output1839, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1840 value214 value1 value204 = (output1840, value388, value1) := by
  rw [input1840_def, output1840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child1839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output1839_skip]
  kernel_rfl

theorem node1841_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value213 value1 value204 = (output897, value214, value1))
    (child1840 : Flapjack.WordAlloc.removeDeadStructural input1840 value214 value1 value204 = (output1840, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1841 value213 value1 value204 = (output1841, value388, value1) := by
  rw [input1841_def, output1841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child1840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output1840_skip]
  kernel_rfl

theorem node1842_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value210 value1 value204 = (output896, value213, value1))
    (child1841 : Flapjack.WordAlloc.removeDeadStructural input1841 value213 value1 value204 = (output1841, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1842 value210 value1 value204 = (output1842, value388, value1) := by
  rw [input1842_def, output1842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  try dsimp only
  rw [child1841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output1841_skip]
  kernel_rfl

theorem node1843_cond_eq
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value210 value1 value204 = (output891, value210, value1))
    (child1842 : Flapjack.WordAlloc.removeDeadStructural input1842 value210 value1 value204 = (output1842, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1843 value210 value1 value204 = (output1843, value388, value1) := by
  rw [input1843_def, output1843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child891]
  try dsimp only
  rw [child1842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output891_skip, output1842_skip]
  kernel_rfl

theorem node1844_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value209 value1 value204 = (output890, value210, value1))
    (child1843 : Flapjack.WordAlloc.removeDeadStructural input1843 value210 value1 value204 = (output1843, value388, value1)) : Flapjack.WordAlloc.removeDeadStructural input1844 value209 value1 value204 = (output1844, value388, value1) := by
  rw [input1844_def, output1844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child1843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output1843_skip]
  kernel_rfl

theorem node1845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1845 value209 value1 value204 = (output1845, value209, value1) := by
  rw [input1845_def, output1845_def]
  kernel_rfl

theorem node1846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1846 value209 value1 value204 = (output1846, value209, value1) := by
  rw [input1846_def, output1846_def]
  kernel_rfl

theorem node1847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1847 value209 value1 value204 = (output1847, value209, value1) := by
  rw [input1847_def, output1847_def]
  kernel_rfl

theorem node1848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1848 value209 value1 value204 = (output1848, value209, value1) := by
  rw [input1848_def, output1848_def]
  kernel_rfl

theorem node1849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1849 value209 value1 value204 = (output1849, value209, value1) := by
  rw [input1849_def, output1849_def]
  kernel_rfl

theorem node1850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1850 value209 value1 value204 = (output1850, value209, value1) := by
  rw [input1850_def, output1850_def]
  kernel_rfl

theorem node1851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1851 value209 value1 value204 = (output1851, value209, value1) := by
  rw [input1851_def, output1851_def]
  kernel_rfl

theorem node1852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1852 value209 value1 value204 = (output1852, value209, value1) := by
  rw [input1852_def, output1852_def]
  kernel_rfl

theorem node1853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1853 value209 value1 value204 = (output1853, value209, value1) := by
  rw [input1853_def, output1853_def]
  kernel_rfl

theorem node1854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1854 value209 value1 value204 = (output1854, value209, value1) := by
  rw [input1854_def, output1854_def]
  kernel_rfl

theorem node1855_cond_eq
    (child1853 : Flapjack.WordAlloc.removeDeadStructural input1853 value209 value1 value204 = (output1853, value209, value1))
    (child1854 : Flapjack.WordAlloc.removeDeadStructural input1854 value209 value1 value204 = (output1854, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input1855 value209 value1 value204 = (output1855, value209, value1) := by
  rw [input1855_def, output1855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1853]
  try dsimp only
  rw [child1854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1853_skip, output1854_skip]
  kernel_rfl

theorem node1856_cond_eq
    (child1852 : Flapjack.WordAlloc.removeDeadStructural input1852 value209 value1 value204 = (output1852, value209, value1))
    (child1855 : Flapjack.WordAlloc.removeDeadStructural input1855 value209 value1 value204 = (output1855, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input1856 value209 value1 value204 = (output1856, value209, value1) := by
  rw [input1856_def, output1856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1852]
  try dsimp only
  rw [child1855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1852_skip, output1855_skip]
  kernel_rfl

theorem node1857_cond_eq
    (child1851 : Flapjack.WordAlloc.removeDeadStructural input1851 value209 value1 value204 = (output1851, value209, value1))
    (child1856 : Flapjack.WordAlloc.removeDeadStructural input1856 value209 value1 value204 = (output1856, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input1857 value209 value1 value204 = (output1857, value209, value1) := by
  rw [input1857_def, output1857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1851]
  try dsimp only
  rw [child1856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1851_skip, output1856_skip]
  kernel_rfl

theorem node1858_cond_eq
    (child1850 : Flapjack.WordAlloc.removeDeadStructural input1850 value209 value1 value204 = (output1850, value209, value1))
    (child1857 : Flapjack.WordAlloc.removeDeadStructural input1857 value209 value1 value204 = (output1857, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input1858 value209 value1 value204 = (output1858, value209, value1) := by
  rw [input1858_def, output1858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1850]
  try dsimp only
  rw [child1857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1850_skip, output1857_skip]
  kernel_rfl

theorem node1859_cond_eq
    (child1849 : Flapjack.WordAlloc.removeDeadStructural input1849 value209 value1 value204 = (output1849, value209, value1))
    (child1858 : Flapjack.WordAlloc.removeDeadStructural input1858 value209 value1 value204 = (output1858, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input1859 value209 value1 value204 = (output1859, value209, value1) := by
  rw [input1859_def, output1859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1849]
  try dsimp only
  rw [child1858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1849_skip, output1858_skip]
  kernel_rfl

theorem node1860_cond_eq
    (child1848 : Flapjack.WordAlloc.removeDeadStructural input1848 value209 value1 value204 = (output1848, value209, value1))
    (child1859 : Flapjack.WordAlloc.removeDeadStructural input1859 value209 value1 value204 = (output1859, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input1860 value209 value1 value204 = (output1860, value209, value1) := by
  rw [input1860_def, output1860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1848]
  try dsimp only
  rw [child1859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1848_skip, output1859_skip]
  kernel_rfl

theorem node1861_cond_eq
    (child1847 : Flapjack.WordAlloc.removeDeadStructural input1847 value209 value1 value204 = (output1847, value209, value1))
    (child1860 : Flapjack.WordAlloc.removeDeadStructural input1860 value209 value1 value204 = (output1860, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input1861 value209 value1 value204 = (output1861, value209, value1) := by
  rw [input1861_def, output1861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1847]
  try dsimp only
  rw [child1860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1847_skip, output1860_skip]
  kernel_rfl

theorem node1862_cond_eq
    (child1846 : Flapjack.WordAlloc.removeDeadStructural input1846 value209 value1 value204 = (output1846, value209, value1))
    (child1861 : Flapjack.WordAlloc.removeDeadStructural input1861 value209 value1 value204 = (output1861, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input1862 value209 value1 value204 = (output1862, value209, value1) := by
  rw [input1862_def, output1862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1846]
  try dsimp only
  rw [child1861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1846_skip, output1861_skip]
  kernel_rfl

theorem node1863_cond_eq
    (child1845 : Flapjack.WordAlloc.removeDeadStructural input1845 value209 value1 value204 = (output1845, value209, value1))
    (child1862 : Flapjack.WordAlloc.removeDeadStructural input1862 value209 value1 value204 = (output1862, value209, value1)) : Flapjack.WordAlloc.removeDeadStructural input1863 value209 value1 value204 = (output1863, value209, value1) := by
  rw [input1863_def, output1863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1845]
  try dsimp only
  rw [child1862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1845_skip, output1862_skip]
  kernel_rfl

theorem node1864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1864 value209 value1 value204 = (output1864, value389, value1) := by
  rw [input1864_def, output1864_def]
  kernel_rfl

theorem node1865_cond_eq
    (child1863 : Flapjack.WordAlloc.removeDeadStructural input1863 value209 value1 value204 = (output1863, value209, value1))
    (child1864 : Flapjack.WordAlloc.removeDeadStructural input1864 value209 value1 value204 = (output1864, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input1865 value209 value1 value204 = (output1865, value389, value1) := by
  rw [input1865_def, output1865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1863]
  try dsimp only
  rw [child1864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1863_skip, output1864_skip]
  kernel_rfl

theorem node1866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1866 value389 value1 value204 = (output1866, value389, value1) := by
  rw [input1866_def, output1866_def]
  kernel_rfl

theorem node1867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1867 value389 value1 value204 = (output1867, value389, value1) := by
  rw [input1867_def, output1867_def]
  kernel_rfl

theorem node1868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1868 value389 value1 value204 = (output1868, value389, value1) := by
  rw [input1868_def, output1868_def]
  kernel_rfl

theorem node1869_cond_eq
    (child1867 : Flapjack.WordAlloc.removeDeadStructural input1867 value389 value1 value204 = (output1867, value389, value1))
    (child1868 : Flapjack.WordAlloc.removeDeadStructural input1868 value389 value1 value204 = (output1868, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input1869 value389 value1 value204 = (output1869, value389, value1) := by
  rw [input1869_def, output1869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1867]
  try dsimp only
  rw [child1868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1867_skip, output1868_skip]
  kernel_rfl

theorem node1870_cond_eq
    (child1866 : Flapjack.WordAlloc.removeDeadStructural input1866 value389 value1 value204 = (output1866, value389, value1))
    (child1869 : Flapjack.WordAlloc.removeDeadStructural input1869 value389 value1 value204 = (output1869, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input1870 value389 value1 value204 = (output1870, value389, value1) := by
  rw [input1870_def, output1870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1866]
  try dsimp only
  rw [child1869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1866_skip, output1869_skip]
  kernel_rfl

theorem node1871_cond_eq
    (child1865 : Flapjack.WordAlloc.removeDeadStructural input1865 value209 value1 value204 = (output1865, value389, value1))
    (child1870 : Flapjack.WordAlloc.removeDeadStructural input1870 value389 value1 value204 = (output1870, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input1871 value209 value1 value204 = (output1871, value389, value1) := by
  rw [input1871_def, output1871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1865]
  try dsimp only
  rw [child1870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1865_skip, output1870_skip]
  kernel_rfl

theorem node1872_cond_eq
    (child1844 : Flapjack.WordAlloc.removeDeadStructural input1844 value209 value1 value204 = (output1844, value388, value1))
    (child1871 : Flapjack.WordAlloc.removeDeadStructural input1871 value209 value1 value204 = (output1871, value389, value1)) : Flapjack.WordAlloc.removeDeadStructural input1872 value209 value1 value204 = (output1872, value391, value1) := by
  rw [input1872_def, output1872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1844]
  try dsimp only
  rw [child1871]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1844_skip, output1871_skip]
  kernel_rfl

theorem node1873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1873 value391 value1 value204 = (output1873, value388, value1) := by
  rw [input1873_def, output1873_def]
  kernel_rfl

theorem node1874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1874 value388 value1 value204 = (output1874, value392, value1) := by
  rw [input1874_def, output1874_def]
  kernel_rfl

theorem node1875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1875 value392 value1 value204 = (output1875, value392, value1) := by
  rw [input1875_def, output1875_def]
  kernel_rfl

theorem node1876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1876 value392 value1 value204 = (output1876, value393, value1) := by
  rw [input1876_def, output1876_def]
  kernel_rfl

theorem node1877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1877 value393 value1 value204 = (output1877, value394, value1) := by
  rw [input1877_def, output1877_def]
  kernel_rfl

theorem node1878_cond_eq
    (child1876 : Flapjack.WordAlloc.removeDeadStructural input1876 value392 value1 value204 = (output1876, value393, value1))
    (child1877 : Flapjack.WordAlloc.removeDeadStructural input1877 value393 value1 value204 = (output1877, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1878 value392 value1 value204 = (output1878, value394, value1) := by
  rw [input1878_def, output1878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1876]
  try dsimp only
  rw [child1877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1876_skip, output1877_skip]
  kernel_rfl

theorem node1879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1879 value394 value1 value204 = (output1879, value395, value1) := by
  rw [input1879_def, output1879_def]
  kernel_rfl

theorem node1880_cond_eq
    (child1878 : Flapjack.WordAlloc.removeDeadStructural input1878 value392 value1 value204 = (output1878, value394, value1))
    (child1879 : Flapjack.WordAlloc.removeDeadStructural input1879 value394 value1 value204 = (output1879, value395, value1)) : Flapjack.WordAlloc.removeDeadStructural input1880 value392 value1 value204 = (output1880, value395, value1) := by
  rw [input1880_def, output1880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1878]
  try dsimp only
  rw [child1879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1878_skip, output1879_skip]
  kernel_rfl

theorem node1881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1881 value395 value1 value204 = (output1881, value396, value1) := by
  rw [input1881_def, output1881_def]
  kernel_rfl

theorem node1882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1882 value396 value1 value204 = (output1882, value397, value1) := by
  rw [input1882_def, output1882_def]
  kernel_rfl

theorem node1883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1883 value397 value1 value204 = (output1883, value397, value1) := by
  rw [input1883_def, output1883_def]
  kernel_rfl

theorem node1884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1884 value397 value1 value204 = (output1884, value397, value1) := by
  rw [input1884_def, output1884_def]
  kernel_rfl

theorem node1885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1885 value397 value1 value204 = (output1885, value397, value1) := by
  rw [input1885_def, output1885_def]
  kernel_rfl

theorem node1886_cond_eq
    (child1884 : Flapjack.WordAlloc.removeDeadStructural input1884 value397 value1 value204 = (output1884, value397, value1))
    (child1885 : Flapjack.WordAlloc.removeDeadStructural input1885 value397 value1 value204 = (output1885, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1886 value397 value1 value204 = (output1886, value397, value1) := by
  rw [input1886_def, output1886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1884]
  try dsimp only
  rw [child1885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1884_skip, output1885_skip]
  kernel_rfl

theorem node1887_cond_eq
    (child1883 : Flapjack.WordAlloc.removeDeadStructural input1883 value397 value1 value204 = (output1883, value397, value1))
    (child1886 : Flapjack.WordAlloc.removeDeadStructural input1886 value397 value1 value204 = (output1886, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1887 value397 value1 value204 = (output1887, value397, value1) := by
  rw [input1887_def, output1887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1883]
  try dsimp only
  rw [child1886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1883_skip, output1886_skip]
  kernel_rfl

theorem node1888_cond_eq
    (child1882 : Flapjack.WordAlloc.removeDeadStructural input1882 value396 value1 value204 = (output1882, value397, value1))
    (child1887 : Flapjack.WordAlloc.removeDeadStructural input1887 value397 value1 value204 = (output1887, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1888 value396 value1 value204 = (output1888, value397, value1) := by
  rw [input1888_def, output1888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1882]
  try dsimp only
  rw [child1887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1882_skip, output1887_skip]
  kernel_rfl

theorem node1889_cond_eq
    (child1881 : Flapjack.WordAlloc.removeDeadStructural input1881 value395 value1 value204 = (output1881, value396, value1))
    (child1888 : Flapjack.WordAlloc.removeDeadStructural input1888 value396 value1 value204 = (output1888, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1889 value395 value1 value204 = (output1889, value397, value1) := by
  rw [input1889_def, output1889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1881]
  try dsimp only
  rw [child1888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1881_skip, output1888_skip]
  kernel_rfl

theorem node1890_cond_eq
    (child1880 : Flapjack.WordAlloc.removeDeadStructural input1880 value392 value1 value204 = (output1880, value395, value1))
    (child1889 : Flapjack.WordAlloc.removeDeadStructural input1889 value395 value1 value204 = (output1889, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1890 value392 value1 value204 = (output1890, value397, value1) := by
  rw [input1890_def, output1890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1880]
  try dsimp only
  rw [child1889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1880_skip, output1889_skip]
  kernel_rfl

theorem node1891_cond_eq
    (child1875 : Flapjack.WordAlloc.removeDeadStructural input1875 value392 value1 value204 = (output1875, value392, value1))
    (child1890 : Flapjack.WordAlloc.removeDeadStructural input1890 value392 value1 value204 = (output1890, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1891 value392 value1 value204 = (output1891, value397, value1) := by
  rw [input1891_def, output1891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1875]
  try dsimp only
  rw [child1890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1875_skip, output1890_skip]
  kernel_rfl

theorem node1892_cond_eq
    (child1874 : Flapjack.WordAlloc.removeDeadStructural input1874 value388 value1 value204 = (output1874, value392, value1))
    (child1891 : Flapjack.WordAlloc.removeDeadStructural input1891 value392 value1 value204 = (output1891, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1892 value388 value1 value204 = (output1892, value397, value1) := by
  rw [input1892_def, output1892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1874]
  try dsimp only
  rw [child1891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1874_skip, output1891_skip]
  kernel_rfl

theorem node1893_cond_eq
    (child1873 : Flapjack.WordAlloc.removeDeadStructural input1873 value391 value1 value204 = (output1873, value388, value1))
    (child1892 : Flapjack.WordAlloc.removeDeadStructural input1892 value388 value1 value204 = (output1892, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1893 value391 value1 value204 = (output1893, value397, value1) := by
  rw [input1893_def, output1893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1873]
  try dsimp only
  rw [child1892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1873_skip, output1892_skip]
  kernel_rfl

theorem node1894_cond_eq
    (child1872 : Flapjack.WordAlloc.removeDeadStructural input1872 value209 value1 value204 = (output1872, value391, value1))
    (child1893 : Flapjack.WordAlloc.removeDeadStructural input1893 value391 value1 value204 = (output1893, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1894 value209 value1 value204 = (output1894, value397, value1) := by
  rw [input1894_def, output1894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1872]
  try dsimp only
  rw [child1893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1872_skip, output1893_skip]
  kernel_rfl

theorem node1895_cond_eq
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value209 value1 value204 = (output869, value209, value1))
    (child1894 : Flapjack.WordAlloc.removeDeadStructural input1894 value209 value1 value204 = (output1894, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1895 value209 value1 value204 = (output1895, value397, value1) := by
  rw [input1895_def, output1895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child869]
  try dsimp only
  rw [child1894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output869_skip, output1894_skip]
  kernel_rfl

theorem node1896_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value207 value1 value204 = (output868, value209, value1))
    (child1895 : Flapjack.WordAlloc.removeDeadStructural input1895 value209 value1 value204 = (output1895, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1896 value207 value1 value204 = (output1896, value397, value1) := by
  rw [input1896_def, output1896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child1895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output1895_skip]
  kernel_rfl

theorem node1897_cond_eq
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value206 value1 value204 = (output865, value207, value1))
    (child1896 : Flapjack.WordAlloc.removeDeadStructural input1896 value207 value1 value204 = (output1896, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1897 value206 value1 value204 = (output1897, value397, value1) := by
  rw [input1897_def, output1897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child865]
  try dsimp only
  rw [child1896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output865_skip, output1896_skip]
  kernel_rfl

theorem node1898_cond_eq
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value206 value1 value204 = (output864, value206, value1))
    (child1897 : Flapjack.WordAlloc.removeDeadStructural input1897 value206 value1 value204 = (output1897, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1898 value206 value1 value204 = (output1898, value397, value1) := by
  rw [input1898_def, output1898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child864]
  try dsimp only
  rw [child1897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output864_skip, output1897_skip]
  kernel_rfl

theorem node1899_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value205 value1 value204 = (output861, value206, value1))
    (child1898 : Flapjack.WordAlloc.removeDeadStructural input1898 value206 value1 value204 = (output1898, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1899 value205 value1 value204 = (output1899, value397, value1) := by
  rw [input1899_def, output1899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  try dsimp only
  rw [child1898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output1898_skip]
  kernel_rfl

theorem node1900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1900 value205 value1 value204 = (output1900, value205, value1) := by
  rw [input1900_def, output1900_def]
  kernel_rfl

theorem node1901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1901 value205 value1 value204 = (output1901, value205, value1) := by
  rw [input1901_def, output1901_def]
  kernel_rfl

theorem node1902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1902 value205 value1 value204 = (output1902, value205, value1) := by
  rw [input1902_def, output1902_def]
  kernel_rfl

theorem node1903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1903 value205 value1 value204 = (output1903, value205, value1) := by
  rw [input1903_def, output1903_def]
  kernel_rfl

theorem node1904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1904 value205 value1 value204 = (output1904, value205, value1) := by
  rw [input1904_def, output1904_def]
  kernel_rfl

theorem node1905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1905 value205 value1 value204 = (output1905, value205, value1) := by
  rw [input1905_def, output1905_def]
  kernel_rfl

theorem node1906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1906 value205 value1 value204 = (output1906, value205, value1) := by
  rw [input1906_def, output1906_def]
  kernel_rfl

theorem node1907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1907 value205 value1 value204 = (output1907, value205, value1) := by
  rw [input1907_def, output1907_def]
  kernel_rfl

theorem node1908_cond_eq
    (child1906 : Flapjack.WordAlloc.removeDeadStructural input1906 value205 value1 value204 = (output1906, value205, value1))
    (child1907 : Flapjack.WordAlloc.removeDeadStructural input1907 value205 value1 value204 = (output1907, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input1908 value205 value1 value204 = (output1908, value205, value1) := by
  rw [input1908_def, output1908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1906]
  try dsimp only
  rw [child1907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1906_skip, output1907_skip]
  kernel_rfl

theorem node1909_cond_eq
    (child1905 : Flapjack.WordAlloc.removeDeadStructural input1905 value205 value1 value204 = (output1905, value205, value1))
    (child1908 : Flapjack.WordAlloc.removeDeadStructural input1908 value205 value1 value204 = (output1908, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input1909 value205 value1 value204 = (output1909, value205, value1) := by
  rw [input1909_def, output1909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1905]
  try dsimp only
  rw [child1908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1905_skip, output1908_skip]
  kernel_rfl

theorem node1910_cond_eq
    (child1904 : Flapjack.WordAlloc.removeDeadStructural input1904 value205 value1 value204 = (output1904, value205, value1))
    (child1909 : Flapjack.WordAlloc.removeDeadStructural input1909 value205 value1 value204 = (output1909, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input1910 value205 value1 value204 = (output1910, value205, value1) := by
  rw [input1910_def, output1910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1904]
  try dsimp only
  rw [child1909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1904_skip, output1909_skip]
  kernel_rfl

theorem node1911_cond_eq
    (child1903 : Flapjack.WordAlloc.removeDeadStructural input1903 value205 value1 value204 = (output1903, value205, value1))
    (child1910 : Flapjack.WordAlloc.removeDeadStructural input1910 value205 value1 value204 = (output1910, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input1911 value205 value1 value204 = (output1911, value205, value1) := by
  rw [input1911_def, output1911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1903]
  try dsimp only
  rw [child1910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1903_skip, output1910_skip]
  kernel_rfl

theorem node1912_cond_eq
    (child1902 : Flapjack.WordAlloc.removeDeadStructural input1902 value205 value1 value204 = (output1902, value205, value1))
    (child1911 : Flapjack.WordAlloc.removeDeadStructural input1911 value205 value1 value204 = (output1911, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input1912 value205 value1 value204 = (output1912, value205, value1) := by
  rw [input1912_def, output1912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1902]
  try dsimp only
  rw [child1911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1902_skip, output1911_skip]
  kernel_rfl

theorem node1913_cond_eq
    (child1901 : Flapjack.WordAlloc.removeDeadStructural input1901 value205 value1 value204 = (output1901, value205, value1))
    (child1912 : Flapjack.WordAlloc.removeDeadStructural input1912 value205 value1 value204 = (output1912, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input1913 value205 value1 value204 = (output1913, value205, value1) := by
  rw [input1913_def, output1913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1901]
  try dsimp only
  rw [child1912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1901_skip, output1912_skip]
  kernel_rfl

theorem node1914_cond_eq
    (child1900 : Flapjack.WordAlloc.removeDeadStructural input1900 value205 value1 value204 = (output1900, value205, value1))
    (child1913 : Flapjack.WordAlloc.removeDeadStructural input1913 value205 value1 value204 = (output1913, value205, value1)) : Flapjack.WordAlloc.removeDeadStructural input1914 value205 value1 value204 = (output1914, value205, value1) := by
  rw [input1914_def, output1914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1900]
  try dsimp only
  rw [child1913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1900_skip, output1913_skip]
  kernel_rfl

theorem node1915_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1915 value205 value1 value204 = (output1915, value397, value1) := by
  rw [input1915_def, output1915_def]
  kernel_rfl

theorem node1916_cond_eq
    (child1914 : Flapjack.WordAlloc.removeDeadStructural input1914 value205 value1 value204 = (output1914, value205, value1))
    (child1915 : Flapjack.WordAlloc.removeDeadStructural input1915 value205 value1 value204 = (output1915, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1916 value205 value1 value204 = (output1916, value397, value1) := by
  rw [input1916_def, output1916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1914]
  try dsimp only
  rw [child1915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1914_skip, output1915_skip]
  kernel_rfl

theorem node1917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1917 value397 value1 value204 = (output1917, value202, value1) := by
  rw [input1917_def, output1917_def]
  kernel_rfl

theorem node1918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1918 value202 value1 value204 = (output1918, value398, value1) := by
  rw [input1918_def, output1918_def]
  kernel_rfl

theorem node1919_cond_eq
    (child1917 : Flapjack.WordAlloc.removeDeadStructural input1917 value397 value1 value204 = (output1917, value202, value1))
    (child1918 : Flapjack.WordAlloc.removeDeadStructural input1918 value202 value1 value204 = (output1918, value398, value1)) : Flapjack.WordAlloc.removeDeadStructural input1919 value397 value1 value204 = (output1919, value398, value1) := by
  rw [input1919_def, output1919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1917]
  try dsimp only
  rw [child1918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1917_skip, output1918_skip]
  kernel_rfl

theorem node1920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1920 value398 value1 value204 = (output1920, value398, value1) := by
  rw [input1920_def, output1920_def]
  kernel_rfl

theorem node1921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1921 value398 value1 value204 = (output1921, value398, value1) := by
  rw [input1921_def, output1921_def]
  kernel_rfl

theorem node1922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1922 value398 value1 value204 = (output1922, value398, value1) := by
  rw [input1922_def, output1922_def]
  kernel_rfl

theorem node1923_cond_eq
    (child1921 : Flapjack.WordAlloc.removeDeadStructural input1921 value398 value1 value204 = (output1921, value398, value1))
    (child1922 : Flapjack.WordAlloc.removeDeadStructural input1922 value398 value1 value204 = (output1922, value398, value1)) : Flapjack.WordAlloc.removeDeadStructural input1923 value398 value1 value204 = (output1923, value398, value1) := by
  rw [input1923_def, output1923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1921]
  try dsimp only
  rw [child1922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1921_skip, output1922_skip]
  kernel_rfl

theorem node1924_cond_eq
    (child1920 : Flapjack.WordAlloc.removeDeadStructural input1920 value398 value1 value204 = (output1920, value398, value1))
    (child1923 : Flapjack.WordAlloc.removeDeadStructural input1923 value398 value1 value204 = (output1923, value398, value1)) : Flapjack.WordAlloc.removeDeadStructural input1924 value398 value1 value204 = (output1924, value398, value1) := by
  rw [input1924_def, output1924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1920]
  try dsimp only
  rw [child1923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1920_skip, output1923_skip]
  kernel_rfl

theorem node1925_cond_eq
    (child1919 : Flapjack.WordAlloc.removeDeadStructural input1919 value397 value1 value204 = (output1919, value398, value1))
    (child1924 : Flapjack.WordAlloc.removeDeadStructural input1924 value398 value1 value204 = (output1924, value398, value1)) : Flapjack.WordAlloc.removeDeadStructural input1925 value397 value1 value204 = (output1925, value398, value1) := by
  rw [input1925_def, output1925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1919]
  try dsimp only
  rw [child1924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1919_skip, output1924_skip]
  kernel_rfl

theorem node1926_cond_eq
    (child1916 : Flapjack.WordAlloc.removeDeadStructural input1916 value205 value1 value204 = (output1916, value397, value1))
    (child1925 : Flapjack.WordAlloc.removeDeadStructural input1925 value397 value1 value204 = (output1925, value398, value1)) : Flapjack.WordAlloc.removeDeadStructural input1926 value205 value1 value204 = (output1926, value398, value1) := by
  rw [input1926_def, output1926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1916]
  try dsimp only
  rw [child1925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1916_skip, output1925_skip]
  kernel_rfl

theorem node1927_cond_eq
    (child1899 : Flapjack.WordAlloc.removeDeadStructural input1899 value205 value1 value204 = (output1899, value397, value1))
    (child1926 : Flapjack.WordAlloc.removeDeadStructural input1926 value205 value1 value204 = (output1926, value398, value1)) : Flapjack.WordAlloc.removeDeadStructural input1927 value205 value1 value204 = (output1927, value397, value1) := by
  rw [input1927_def, output1927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1899]
  try dsimp only
  rw [child1926]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1899_skip, output1926_skip]
  kernel_rfl

theorem node1928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1928 value397 value1 value204 = (output1928, value400, value1) := by
  rw [input1928_def, output1928_def]
  kernel_rfl

theorem node1929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1929 value400 value1 value204 = (output1929, value203, value1) := by
  rw [input1929_def, output1929_def]
  kernel_rfl

theorem node1930_cond_eq
    (child1928 : Flapjack.WordAlloc.removeDeadStructural input1928 value397 value1 value204 = (output1928, value400, value1))
    (child1929 : Flapjack.WordAlloc.removeDeadStructural input1929 value400 value1 value204 = (output1929, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1930 value397 value1 value204 = (output1930, value203, value1) := by
  rw [input1930_def, output1930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1928]
  try dsimp only
  rw [child1929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1928_skip, output1929_skip]
  kernel_rfl

theorem node1931_cond_eq
    (child1927 : Flapjack.WordAlloc.removeDeadStructural input1927 value205 value1 value204 = (output1927, value397, value1))
    (child1930 : Flapjack.WordAlloc.removeDeadStructural input1930 value397 value1 value204 = (output1930, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1931 value205 value1 value204 = (output1931, value203, value1) := by
  rw [input1931_def, output1931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1927]
  try dsimp only
  rw [child1930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1927_skip, output1930_skip]
  kernel_rfl

theorem node1932_cond_eq
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value205 value1 value204 = (output844, value205, value1))
    (child1931 : Flapjack.WordAlloc.removeDeadStructural input1931 value205 value1 value204 = (output1931, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1932 value205 value1 value204 = (output1932, value203, value1) := by
  rw [input1932_def, output1932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child844]
  try dsimp only
  rw [child1931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output844_skip, output1931_skip]
  kernel_rfl

theorem node1933_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value203 value1 value204 = (output843, value205, value1))
    (child1932 : Flapjack.WordAlloc.removeDeadStructural input1932 value205 value1 value204 = (output1932, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1933 value203 value1 value204 = (output1933, value203, value1) := by
  rw [input1933_def, output1933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  try dsimp only
  rw [child1932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output1932_skip]
  kernel_rfl

theorem node1934_cond_eq
    (child1933 : Flapjack.WordAlloc.removeDeadStructural input1933 value203 value1 value204 = (output1933, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input1934 value202 value1 value2 = (output1934, value203, value1) := by
  rw [input1934_def, output1934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value204 = (value203, value202) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child1933
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node1935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1935 value203 value1 value2 = (output1935, value401, value1) := by
  rw [input1935_def, output1935_def]
  kernel_rfl

theorem node1936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1936 value401 value1 value2 = (output1936, value401, value1) := by
  rw [input1936_def, output1936_def]
  kernel_rfl

theorem node1937_cond_eq
    (child1935 : Flapjack.WordAlloc.removeDeadStructural input1935 value203 value1 value2 = (output1935, value401, value1))
    (child1936 : Flapjack.WordAlloc.removeDeadStructural input1936 value401 value1 value2 = (output1936, value401, value1)) : Flapjack.WordAlloc.removeDeadStructural input1937 value203 value1 value2 = (output1937, value401, value1) := by
  rw [input1937_def, output1937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1935]
  try dsimp only
  rw [child1936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1935_skip, output1936_skip]
  kernel_rfl

theorem node1938_cond_eq
    (child1934 : Flapjack.WordAlloc.removeDeadStructural input1934 value202 value1 value2 = (output1934, value203, value1))
    (child1937 : Flapjack.WordAlloc.removeDeadStructural input1937 value203 value1 value2 = (output1937, value401, value1)) : Flapjack.WordAlloc.removeDeadStructural input1938 value202 value1 value2 = (output1938, value401, value1) := by
  rw [input1938_def, output1938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1934]
  try dsimp only
  rw [child1937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1934_skip, output1937_skip]
  kernel_rfl

theorem node1939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1939 value401 value1 value2 = (output1939, value401, value1) := by
  rw [input1939_def, output1939_def]
  kernel_rfl

theorem node1940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1940 value401 value1 value2 = (output1940, value402, value1) := by
  rw [input1940_def, output1940_def]
  kernel_rfl

theorem node1941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1941 value402 value1 value2 = (output1941, value403, value1) := by
  rw [input1941_def, output1941_def]
  kernel_rfl

theorem node1942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1942 value403 value1 value2 = (output1942, value404, value1) := by
  rw [input1942_def, output1942_def]
  kernel_rfl

theorem node1943_cond_eq
    (child1941 : Flapjack.WordAlloc.removeDeadStructural input1941 value402 value1 value2 = (output1941, value403, value1))
    (child1942 : Flapjack.WordAlloc.removeDeadStructural input1942 value403 value1 value2 = (output1942, value404, value1)) : Flapjack.WordAlloc.removeDeadStructural input1943 value402 value1 value2 = (output1943, value404, value1) := by
  rw [input1943_def, output1943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1941]
  try dsimp only
  rw [child1942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1941_skip, output1942_skip]
  kernel_rfl

theorem node1944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1944 value404 value1 value2 = (output1944, value405, value1) := by
  rw [input1944_def, output1944_def]
  kernel_rfl

theorem node1945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1945 value405 value1 value2 = (output1945, value406, value1) := by
  rw [input1945_def, output1945_def]
  kernel_rfl

theorem node1946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1946 value406 value1 value2 = (output1946, value407, value1) := by
  rw [input1946_def, output1946_def]
  kernel_rfl

theorem node1947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1947 value407 value1 value2 = (output1947, value408, value1) := by
  rw [input1947_def, output1947_def]
  kernel_rfl

theorem node1948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1948 value408 value1 value2 = (output1948, value409, value1) := by
  rw [input1948_def, output1948_def]
  kernel_rfl

theorem node1949_cond_eq
    (child1947 : Flapjack.WordAlloc.removeDeadStructural input1947 value407 value1 value2 = (output1947, value408, value1))
    (child1948 : Flapjack.WordAlloc.removeDeadStructural input1948 value408 value1 value2 = (output1948, value409, value1)) : Flapjack.WordAlloc.removeDeadStructural input1949 value407 value1 value2 = (output1949, value409, value1) := by
  rw [input1949_def, output1949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1947]
  try dsimp only
  rw [child1948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1947_skip, output1948_skip]
  kernel_rfl

theorem node1950_cond_eq
    (child1946 : Flapjack.WordAlloc.removeDeadStructural input1946 value406 value1 value2 = (output1946, value407, value1))
    (child1949 : Flapjack.WordAlloc.removeDeadStructural input1949 value407 value1 value2 = (output1949, value409, value1)) : Flapjack.WordAlloc.removeDeadStructural input1950 value406 value1 value2 = (output1950, value409, value1) := by
  rw [input1950_def, output1950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1946]
  try dsimp only
  rw [child1949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1946_skip, output1949_skip]
  kernel_rfl

theorem node1951_cond_eq
    (child1945 : Flapjack.WordAlloc.removeDeadStructural input1945 value405 value1 value2 = (output1945, value406, value1))
    (child1950 : Flapjack.WordAlloc.removeDeadStructural input1950 value406 value1 value2 = (output1950, value409, value1)) : Flapjack.WordAlloc.removeDeadStructural input1951 value405 value1 value2 = (output1951, value409, value1) := by
  rw [input1951_def, output1951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1945]
  try dsimp only
  rw [child1950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1945_skip, output1950_skip]
  kernel_rfl

theorem node1952_cond_eq
    (child1944 : Flapjack.WordAlloc.removeDeadStructural input1944 value404 value1 value2 = (output1944, value405, value1))
    (child1951 : Flapjack.WordAlloc.removeDeadStructural input1951 value405 value1 value2 = (output1951, value409, value1)) : Flapjack.WordAlloc.removeDeadStructural input1952 value404 value1 value2 = (output1952, value409, value1) := by
  rw [input1952_def, output1952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1944]
  try dsimp only
  rw [child1951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1944_skip, output1951_skip]
  kernel_rfl

theorem node1953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1953 value409 value1 value2 = (output1953, value410, value1) := by
  rw [input1953_def, output1953_def]
  kernel_rfl

theorem node1954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1954 value410 value1 value2 = (output1954, value411, value1) := by
  rw [input1954_def, output1954_def]
  kernel_rfl

theorem node1955_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1955 value411 value1 value2 = (output1955, value412, value1) := by
  rw [input1955_def, output1955_def]
  kernel_rfl

theorem node1956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1956 value412 value1 value2 = (output1956, value413, value1) := by
  rw [input1956_def, output1956_def]
  kernel_rfl

theorem node1957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1957 value413 value1 value2 = (output1957, value414, value1) := by
  rw [input1957_def, output1957_def]
  kernel_rfl

theorem node1958_cond_eq
    (child1956 : Flapjack.WordAlloc.removeDeadStructural input1956 value412 value1 value2 = (output1956, value413, value1))
    (child1957 : Flapjack.WordAlloc.removeDeadStructural input1957 value413 value1 value2 = (output1957, value414, value1)) : Flapjack.WordAlloc.removeDeadStructural input1958 value412 value1 value2 = (output1958, value414, value1) := by
  rw [input1958_def, output1958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1956]
  try dsimp only
  rw [child1957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1956_skip, output1957_skip]
  kernel_rfl

theorem node1959_cond_eq
    (child1955 : Flapjack.WordAlloc.removeDeadStructural input1955 value411 value1 value2 = (output1955, value412, value1))
    (child1958 : Flapjack.WordAlloc.removeDeadStructural input1958 value412 value1 value2 = (output1958, value414, value1)) : Flapjack.WordAlloc.removeDeadStructural input1959 value411 value1 value2 = (output1959, value414, value1) := by
  rw [input1959_def, output1959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1955]
  try dsimp only
  rw [child1958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1955_skip, output1958_skip]
  kernel_rfl

theorem node1960_cond_eq
    (child1954 : Flapjack.WordAlloc.removeDeadStructural input1954 value410 value1 value2 = (output1954, value411, value1))
    (child1959 : Flapjack.WordAlloc.removeDeadStructural input1959 value411 value1 value2 = (output1959, value414, value1)) : Flapjack.WordAlloc.removeDeadStructural input1960 value410 value1 value2 = (output1960, value414, value1) := by
  rw [input1960_def, output1960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1954]
  try dsimp only
  rw [child1959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1954_skip, output1959_skip]
  kernel_rfl

theorem node1961_cond_eq
    (child1953 : Flapjack.WordAlloc.removeDeadStructural input1953 value409 value1 value2 = (output1953, value410, value1))
    (child1960 : Flapjack.WordAlloc.removeDeadStructural input1960 value410 value1 value2 = (output1960, value414, value1)) : Flapjack.WordAlloc.removeDeadStructural input1961 value409 value1 value2 = (output1961, value414, value1) := by
  rw [input1961_def, output1961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1953]
  try dsimp only
  rw [child1960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1953_skip, output1960_skip]
  kernel_rfl

theorem node1962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1962 value414 value1 value2 = (output1962, value415, value1) := by
  rw [input1962_def, output1962_def]
  kernel_rfl

theorem node1963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1963 value415 value1 value2 = (output1963, value416, value1) := by
  rw [input1963_def, output1963_def]
  kernel_rfl

theorem node1964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1964 value416 value1 value2 = (output1964, value417, value1) := by
  rw [input1964_def, output1964_def]
  kernel_rfl

theorem node1965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1965 value417 value1 value2 = (output1965, value418, value1) := by
  rw [input1965_def, output1965_def]
  kernel_rfl

theorem node1966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1966 value418 value1 value2 = (output1966, value419, value1) := by
  rw [input1966_def, output1966_def]
  kernel_rfl

theorem node1967_cond_eq
    (child1965 : Flapjack.WordAlloc.removeDeadStructural input1965 value417 value1 value2 = (output1965, value418, value1))
    (child1966 : Flapjack.WordAlloc.removeDeadStructural input1966 value418 value1 value2 = (output1966, value419, value1)) : Flapjack.WordAlloc.removeDeadStructural input1967 value417 value1 value2 = (output1967, value419, value1) := by
  rw [input1967_def, output1967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1965]
  try dsimp only
  rw [child1966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1965_skip, output1966_skip]
  kernel_rfl

theorem node1968_cond_eq
    (child1964 : Flapjack.WordAlloc.removeDeadStructural input1964 value416 value1 value2 = (output1964, value417, value1))
    (child1967 : Flapjack.WordAlloc.removeDeadStructural input1967 value417 value1 value2 = (output1967, value419, value1)) : Flapjack.WordAlloc.removeDeadStructural input1968 value416 value1 value2 = (output1968, value419, value1) := by
  rw [input1968_def, output1968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1964]
  try dsimp only
  rw [child1967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1964_skip, output1967_skip]
  kernel_rfl

theorem node1969_cond_eq
    (child1963 : Flapjack.WordAlloc.removeDeadStructural input1963 value415 value1 value2 = (output1963, value416, value1))
    (child1968 : Flapjack.WordAlloc.removeDeadStructural input1968 value416 value1 value2 = (output1968, value419, value1)) : Flapjack.WordAlloc.removeDeadStructural input1969 value415 value1 value2 = (output1969, value419, value1) := by
  rw [input1969_def, output1969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1963]
  try dsimp only
  rw [child1968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1963_skip, output1968_skip]
  kernel_rfl

theorem node1970_cond_eq
    (child1962 : Flapjack.WordAlloc.removeDeadStructural input1962 value414 value1 value2 = (output1962, value415, value1))
    (child1969 : Flapjack.WordAlloc.removeDeadStructural input1969 value415 value1 value2 = (output1969, value419, value1)) : Flapjack.WordAlloc.removeDeadStructural input1970 value414 value1 value2 = (output1970, value419, value1) := by
  rw [input1970_def, output1970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1962]
  try dsimp only
  rw [child1969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1962_skip, output1969_skip]
  kernel_rfl

theorem node1971_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1971 value419 value1 value2 = (output1971, value419, value1) := by
  rw [input1971_def, output1971_def]
  kernel_rfl

theorem node1972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1972 value419 value1 value2 = (output1972, value420, value1) := by
  rw [input1972_def, output1972_def]
  kernel_rfl

theorem node1973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1973 value420 value1 value2 = (output1973, value421, value1) := by
  rw [input1973_def, output1973_def]
  kernel_rfl

theorem node1974_cond_eq
    (child1972 : Flapjack.WordAlloc.removeDeadStructural input1972 value419 value1 value2 = (output1972, value420, value1))
    (child1973 : Flapjack.WordAlloc.removeDeadStructural input1973 value420 value1 value2 = (output1973, value421, value1)) : Flapjack.WordAlloc.removeDeadStructural input1974 value419 value1 value2 = (output1974, value421, value1) := by
  rw [input1974_def, output1974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1972]
  try dsimp only
  rw [child1973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1972_skip, output1973_skip]
  kernel_rfl

theorem node1975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1975 value421 value1 value2 = (output1975, value422, value1) := by
  rw [input1975_def, output1975_def]
  kernel_rfl

theorem node1976_cond_eq
    (child1974 : Flapjack.WordAlloc.removeDeadStructural input1974 value419 value1 value2 = (output1974, value421, value1))
    (child1975 : Flapjack.WordAlloc.removeDeadStructural input1975 value421 value1 value2 = (output1975, value422, value1)) : Flapjack.WordAlloc.removeDeadStructural input1976 value419 value1 value2 = (output1976, value422, value1) := by
  rw [input1976_def, output1976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1974]
  try dsimp only
  rw [child1975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1974_skip, output1975_skip]
  kernel_rfl

theorem node1977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1977 value422 value1 value2 = (output1977, value423, value1) := by
  rw [input1977_def, output1977_def]
  kernel_rfl

theorem node1978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1978 value423 value1 value2 = (output1978, value424, value1) := by
  rw [input1978_def, output1978_def]
  kernel_rfl

theorem node1979_cond_eq
    (child1977 : Flapjack.WordAlloc.removeDeadStructural input1977 value422 value1 value2 = (output1977, value423, value1))
    (child1978 : Flapjack.WordAlloc.removeDeadStructural input1978 value423 value1 value2 = (output1978, value424, value1)) : Flapjack.WordAlloc.removeDeadStructural input1979 value422 value1 value2 = (output1979, value424, value1) := by
  rw [input1979_def, output1979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1977]
  try dsimp only
  rw [child1978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1977_skip, output1978_skip]
  kernel_rfl

theorem node1980_cond_eq
    (child1976 : Flapjack.WordAlloc.removeDeadStructural input1976 value419 value1 value2 = (output1976, value422, value1))
    (child1979 : Flapjack.WordAlloc.removeDeadStructural input1979 value422 value1 value2 = (output1979, value424, value1)) : Flapjack.WordAlloc.removeDeadStructural input1980 value419 value1 value2 = (output1980, value424, value1) := by
  rw [input1980_def, output1980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1976]
  try dsimp only
  rw [child1979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1976_skip, output1979_skip]
  kernel_rfl

theorem node1981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1981 value424 value1 value2 = (output1981, value424, value1) := by
  rw [input1981_def, output1981_def]
  kernel_rfl

theorem node1982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1982 value424 value1 value2 = (output1982, value424, value1) := by
  rw [input1982_def, output1982_def]
  kernel_rfl

theorem node1983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1983 value424 value1 value2 = (output1983, value424, value1) := by
  rw [input1983_def, output1983_def]
  kernel_rfl

theorem node1984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1984 value424 value1 value2 = (output1984, value425, value1) := by
  rw [input1984_def, output1984_def]
  kernel_rfl

theorem node1985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1985 value425 value1 value2 = (output1985, value426, value1) := by
  rw [input1985_def, output1985_def]
  kernel_rfl

theorem node1986_cond_eq
    (child1984 : Flapjack.WordAlloc.removeDeadStructural input1984 value424 value1 value2 = (output1984, value425, value1))
    (child1985 : Flapjack.WordAlloc.removeDeadStructural input1985 value425 value1 value2 = (output1985, value426, value1)) : Flapjack.WordAlloc.removeDeadStructural input1986 value424 value1 value2 = (output1986, value426, value1) := by
  rw [input1986_def, output1986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1984]
  try dsimp only
  rw [child1985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1984_skip, output1985_skip]
  kernel_rfl

theorem node1987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1987 value426 value1 value2 = (output1987, value427, value1) := by
  rw [input1987_def, output1987_def]
  kernel_rfl

theorem node1988_cond_eq
    (child1986 : Flapjack.WordAlloc.removeDeadStructural input1986 value424 value1 value2 = (output1986, value426, value1))
    (child1987 : Flapjack.WordAlloc.removeDeadStructural input1987 value426 value1 value2 = (output1987, value427, value1)) : Flapjack.WordAlloc.removeDeadStructural input1988 value424 value1 value2 = (output1988, value427, value1) := by
  rw [input1988_def, output1988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1986]
  try dsimp only
  rw [child1987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1986_skip, output1987_skip]
  kernel_rfl

theorem node1989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1989 value427 value1 value2 = (output1989, value428, value1) := by
  rw [input1989_def, output1989_def]
  kernel_rfl

theorem node1990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1990 value428 value1 value2 = (output1990, value429, value1) := by
  rw [input1990_def, output1990_def]
  kernel_rfl

theorem node1991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1991 value429 value1 value2 = (output1991, value430, value1) := by
  rw [input1991_def, output1991_def]
  kernel_rfl

theorem node1992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1992 value430 value1 value2 = (output1992, value431, value1) := by
  rw [input1992_def, output1992_def]
  kernel_rfl

theorem node1993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1993 value431 value1 value2 = (output1993, value432, value1) := by
  rw [input1993_def, output1993_def]
  kernel_rfl

theorem node1994_cond_eq
    (child1992 : Flapjack.WordAlloc.removeDeadStructural input1992 value430 value1 value2 = (output1992, value431, value1))
    (child1993 : Flapjack.WordAlloc.removeDeadStructural input1993 value431 value1 value2 = (output1993, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input1994 value430 value1 value2 = (output1994, value432, value1) := by
  rw [input1994_def, output1994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1992]
  try dsimp only
  rw [child1993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1992_skip, output1993_skip]
  kernel_rfl

theorem node1995_cond_eq
    (child1991 : Flapjack.WordAlloc.removeDeadStructural input1991 value429 value1 value2 = (output1991, value430, value1))
    (child1994 : Flapjack.WordAlloc.removeDeadStructural input1994 value430 value1 value2 = (output1994, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input1995 value429 value1 value2 = (output1995, value432, value1) := by
  rw [input1995_def, output1995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1991]
  try dsimp only
  rw [child1994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1991_skip, output1994_skip]
  kernel_rfl

theorem node1996_cond_eq
    (child1990 : Flapjack.WordAlloc.removeDeadStructural input1990 value428 value1 value2 = (output1990, value429, value1))
    (child1995 : Flapjack.WordAlloc.removeDeadStructural input1995 value429 value1 value2 = (output1995, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input1996 value428 value1 value2 = (output1996, value432, value1) := by
  rw [input1996_def, output1996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1990]
  try dsimp only
  rw [child1995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1990_skip, output1995_skip]
  kernel_rfl

theorem node1997_cond_eq
    (child1989 : Flapjack.WordAlloc.removeDeadStructural input1989 value427 value1 value2 = (output1989, value428, value1))
    (child1996 : Flapjack.WordAlloc.removeDeadStructural input1996 value428 value1 value2 = (output1996, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input1997 value427 value1 value2 = (output1997, value432, value1) := by
  rw [input1997_def, output1997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1989]
  try dsimp only
  rw [child1996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1989_skip, output1996_skip]
  kernel_rfl

theorem node1998_cond_eq
    (child1988 : Flapjack.WordAlloc.removeDeadStructural input1988 value424 value1 value2 = (output1988, value427, value1))
    (child1997 : Flapjack.WordAlloc.removeDeadStructural input1997 value427 value1 value2 = (output1997, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input1998 value424 value1 value2 = (output1998, value432, value1) := by
  rw [input1998_def, output1998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1988]
  try dsimp only
  rw [child1997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1988_skip, output1997_skip]
  kernel_rfl

theorem node1999_cond_eq
    (child1983 : Flapjack.WordAlloc.removeDeadStructural input1983 value424 value1 value2 = (output1983, value424, value1))
    (child1998 : Flapjack.WordAlloc.removeDeadStructural input1998 value424 value1 value2 = (output1998, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input1999 value424 value1 value2 = (output1999, value432, value1) := by
  rw [input1999_def, output1999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1983]
  try dsimp only
  rw [child1998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1983_skip, output1998_skip]
  kernel_rfl

theorem node2000_cond_eq
    (child1982 : Flapjack.WordAlloc.removeDeadStructural input1982 value424 value1 value2 = (output1982, value424, value1))
    (child1999 : Flapjack.WordAlloc.removeDeadStructural input1999 value424 value1 value2 = (output1999, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2000 value424 value1 value2 = (output2000, value432, value1) := by
  rw [input2000_def, output2000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1982]
  try dsimp only
  rw [child1999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1982_skip, output1999_skip]
  kernel_rfl

theorem node2001_cond_eq
    (child1981 : Flapjack.WordAlloc.removeDeadStructural input1981 value424 value1 value2 = (output1981, value424, value1))
    (child2000 : Flapjack.WordAlloc.removeDeadStructural input2000 value424 value1 value2 = (output2000, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2001 value424 value1 value2 = (output2001, value432, value1) := by
  rw [input2001_def, output2001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1981]
  try dsimp only
  rw [child2000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1981_skip, output2000_skip]
  kernel_rfl

theorem node2002_cond_eq
    (child1980 : Flapjack.WordAlloc.removeDeadStructural input1980 value419 value1 value2 = (output1980, value424, value1))
    (child2001 : Flapjack.WordAlloc.removeDeadStructural input2001 value424 value1 value2 = (output2001, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2002 value419 value1 value2 = (output2002, value432, value1) := by
  rw [input2002_def, output2002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1980]
  try dsimp only
  rw [child2001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1980_skip, output2001_skip]
  kernel_rfl

theorem node2003_cond_eq
    (child1971 : Flapjack.WordAlloc.removeDeadStructural input1971 value419 value1 value2 = (output1971, value419, value1))
    (child2002 : Flapjack.WordAlloc.removeDeadStructural input2002 value419 value1 value2 = (output2002, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2003 value419 value1 value2 = (output2003, value432, value1) := by
  rw [input2003_def, output2003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1971]
  try dsimp only
  rw [child2002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1971_skip, output2002_skip]
  kernel_rfl

theorem node2004_cond_eq
    (child1970 : Flapjack.WordAlloc.removeDeadStructural input1970 value414 value1 value2 = (output1970, value419, value1))
    (child2003 : Flapjack.WordAlloc.removeDeadStructural input2003 value419 value1 value2 = (output2003, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2004 value414 value1 value2 = (output2004, value432, value1) := by
  rw [input2004_def, output2004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1970]
  try dsimp only
  rw [child2003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1970_skip, output2003_skip]
  kernel_rfl

theorem node2005_cond_eq
    (child1961 : Flapjack.WordAlloc.removeDeadStructural input1961 value409 value1 value2 = (output1961, value414, value1))
    (child2004 : Flapjack.WordAlloc.removeDeadStructural input2004 value414 value1 value2 = (output2004, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2005 value409 value1 value2 = (output2005, value432, value1) := by
  rw [input2005_def, output2005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1961]
  try dsimp only
  rw [child2004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1961_skip, output2004_skip]
  kernel_rfl

theorem node2006_cond_eq
    (child1952 : Flapjack.WordAlloc.removeDeadStructural input1952 value404 value1 value2 = (output1952, value409, value1))
    (child2005 : Flapjack.WordAlloc.removeDeadStructural input2005 value409 value1 value2 = (output2005, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2006 value404 value1 value2 = (output2006, value432, value1) := by
  rw [input2006_def, output2006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1952]
  try dsimp only
  rw [child2005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1952_skip, output2005_skip]
  kernel_rfl

theorem node2007_cond_eq
    (child1943 : Flapjack.WordAlloc.removeDeadStructural input1943 value402 value1 value2 = (output1943, value404, value1))
    (child2006 : Flapjack.WordAlloc.removeDeadStructural input2006 value404 value1 value2 = (output2006, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2007 value402 value1 value2 = (output2007, value432, value1) := by
  rw [input2007_def, output2007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1943]
  try dsimp only
  rw [child2006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1943_skip, output2006_skip]
  kernel_rfl

theorem node2008_cond_eq
    (child1940 : Flapjack.WordAlloc.removeDeadStructural input1940 value401 value1 value2 = (output1940, value402, value1))
    (child2007 : Flapjack.WordAlloc.removeDeadStructural input2007 value402 value1 value2 = (output2007, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2008 value401 value1 value2 = (output2008, value432, value1) := by
  rw [input2008_def, output2008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1940]
  try dsimp only
  rw [child2007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1940_skip, output2007_skip]
  kernel_rfl

theorem node2009_cond_eq
    (child1939 : Flapjack.WordAlloc.removeDeadStructural input1939 value401 value1 value2 = (output1939, value401, value1))
    (child2008 : Flapjack.WordAlloc.removeDeadStructural input2008 value401 value1 value2 = (output2008, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2009 value401 value1 value2 = (output2009, value432, value1) := by
  rw [input2009_def, output2009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1939]
  try dsimp only
  rw [child2008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1939_skip, output2008_skip]
  kernel_rfl

theorem node2010_cond_eq
    (child1938 : Flapjack.WordAlloc.removeDeadStructural input1938 value202 value1 value2 = (output1938, value401, value1))
    (child2009 : Flapjack.WordAlloc.removeDeadStructural input2009 value401 value1 value2 = (output2009, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2010 value202 value1 value2 = (output2010, value432, value1) := by
  rw [input2010_def, output2010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1938]
  try dsimp only
  rw [child2009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1938_skip, output2009_skip]
  kernel_rfl

theorem node2011_cond_eq
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value202 value1 value2 = (output842, value202, value1))
    (child2010 : Flapjack.WordAlloc.removeDeadStructural input2010 value202 value1 value2 = (output2010, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2011 value202 value1 value2 = (output2011, value432, value1) := by
  rw [input2011_def, output2011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child842]
  try dsimp only
  rw [child2010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output842_skip, output2010_skip]
  kernel_rfl

theorem node2012_cond_eq
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value201 value1 value2 = (output841, value202, value1))
    (child2011 : Flapjack.WordAlloc.removeDeadStructural input2011 value202 value1 value2 = (output2011, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2012 value201 value1 value2 = (output2012, value432, value1) := by
  rw [input2012_def, output2012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child841]
  try dsimp only
  rw [child2011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output841_skip, output2011_skip]
  kernel_rfl

theorem node2013_cond_eq
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value196 value1 value2 = (output840, value201, value1))
    (child2012 : Flapjack.WordAlloc.removeDeadStructural input2012 value201 value1 value2 = (output2012, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2013 value196 value1 value2 = (output2013, value432, value1) := by
  rw [input2013_def, output2013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child840]
  try dsimp only
  rw [child2012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output840_skip, output2012_skip]
  kernel_rfl

theorem node2014_cond_eq
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value196 value1 value2 = (output831, value196, value1))
    (child2013 : Flapjack.WordAlloc.removeDeadStructural input2013 value196 value1 value2 = (output2013, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2014 value196 value1 value2 = (output2014, value432, value1) := by
  rw [input2014_def, output2014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child831]
  try dsimp only
  rw [child2013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output831_skip, output2013_skip]
  kernel_rfl

theorem node2015_cond_eq
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value192 value1 value2 = (output830, value196, value1))
    (child2014 : Flapjack.WordAlloc.removeDeadStructural input2014 value196 value1 value2 = (output2014, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2015 value192 value1 value2 = (output2015, value432, value1) := by
  rw [input2015_def, output2015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child830]
  try dsimp only
  rw [child2014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output830_skip, output2014_skip]
  kernel_rfl

theorem node2016_cond_eq
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value192 value1 value2 = (output823, value192, value1))
    (child2015 : Flapjack.WordAlloc.removeDeadStructural input2015 value192 value1 value2 = (output2015, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2016 value192 value1 value2 = (output2016, value432, value1) := by
  rw [input2016_def, output2016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child823]
  try dsimp only
  rw [child2015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output823_skip, output2015_skip]
  kernel_rfl

theorem node2017_cond_eq
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value191 value1 value2 = (output822, value192, value1))
    (child2016 : Flapjack.WordAlloc.removeDeadStructural input2016 value192 value1 value2 = (output2016, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2017 value191 value1 value2 = (output2017, value432, value1) := by
  rw [input2017_def, output2017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child822]
  try dsimp only
  rw [child2016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output822_skip, output2016_skip]
  kernel_rfl

theorem node2018_cond_eq
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value191 value1 value2 = (output821, value191, value1))
    (child2017 : Flapjack.WordAlloc.removeDeadStructural input2017 value191 value1 value2 = (output2017, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2018 value191 value1 value2 = (output2018, value432, value1) := by
  rw [input2018_def, output2018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child821]
  try dsimp only
  rw [child2017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output821_skip, output2017_skip]
  kernel_rfl

theorem node2019_cond_eq
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value98 value1 value2 = (output820, value191, value1))
    (child2018 : Flapjack.WordAlloc.removeDeadStructural input2018 value191 value1 value2 = (output2018, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2019 value98 value1 value2 = (output2019, value432, value1) := by
  rw [input2019_def, output2019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child820]
  try dsimp only
  rw [child2018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output820_skip, output2018_skip]
  kernel_rfl

theorem node2020_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value98 value1 value2 = (output400, value98, value1))
    (child2019 : Flapjack.WordAlloc.removeDeadStructural input2019 value98 value1 value2 = (output2019, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2020 value98 value1 value2 = (output2020, value432, value1) := by
  rw [input2020_def, output2020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child2019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output2019_skip]
  kernel_rfl

theorem node2021_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value96 value1 value2 = (output399, value98, value1))
    (child2020 : Flapjack.WordAlloc.removeDeadStructural input2020 value98 value1 value2 = (output2020, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2021 value96 value1 value2 = (output2021, value432, value1) := by
  rw [input2021_def, output2021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child2020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output2020_skip]
  kernel_rfl

theorem node2022_cond_eq
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value95 value1 value2 = (output396, value96, value1))
    (child2021 : Flapjack.WordAlloc.removeDeadStructural input2021 value96 value1 value2 = (output2021, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2022 value95 value1 value2 = (output2022, value432, value1) := by
  rw [input2022_def, output2022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child396]
  try dsimp only
  rw [child2021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output396_skip, output2021_skip]
  kernel_rfl

theorem node2023_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value95 value1 value2 = (output395, value95, value1))
    (child2022 : Flapjack.WordAlloc.removeDeadStructural input2022 value95 value1 value2 = (output2022, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2023 value95 value1 value2 = (output2023, value432, value1) := by
  rw [input2023_def, output2023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child2022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output2022_skip]
  kernel_rfl

theorem node2024_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value10 value1 value2 = (output394, value95, value1))
    (child2023 : Flapjack.WordAlloc.removeDeadStructural input2023 value95 value1 value2 = (output2023, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2024 value10 value1 value2 = (output2024, value432, value1) := by
  rw [input2024_def, output2024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child2023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output2023_skip]
  kernel_rfl

theorem node2025_cond_eq
    (child12 : Flapjack.WordAlloc.removeDeadStructural input12 value10 value1 value2 = (output12, value10, value1))
    (child2024 : Flapjack.WordAlloc.removeDeadStructural input2024 value10 value1 value2 = (output2024, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2025 value10 value1 value2 = (output2025, value432, value1) := by
  rw [input2025_def, output2025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12]
  try dsimp only
  rw [child2024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12_skip, output2024_skip]
  kernel_rfl

theorem node2026_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value9 value1 value2 = (output11, value10, value1))
    (child2025 : Flapjack.WordAlloc.removeDeadStructural input2025 value10 value1 value2 = (output2025, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2026 value9 value1 value2 = (output2026, value432, value1) := by
  rw [input2026_def, output2026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child2025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output2025_skip]
  kernel_rfl

theorem node2027_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value9, value1))
    (child2026 : Flapjack.WordAlloc.removeDeadStructural input2026 value9 value1 value2 = (output2026, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2027 value8 value1 value2 = (output2027, value432, value1) := by
  rw [input2027_def, output2027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child2026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output2026_skip]
  kernel_rfl

theorem node2028_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value8, value1))
    (child2027 : Flapjack.WordAlloc.removeDeadStructural input2027 value8 value1 value2 = (output2027, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2028 value5 value1 value2 = (output2028, value432, value1) := by
  rw [input2028_def, output2028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child2027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output2027_skip]
  kernel_rfl

theorem node2029_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1))
    (child2028 : Flapjack.WordAlloc.removeDeadStructural input2028 value5 value1 value2 = (output2028, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2029 value5 value1 value2 = (output2029, value432, value1) := by
  rw [input2029_def, output2029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child2028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output2028_skip]
  kernel_rfl

theorem node2030_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child2029 : Flapjack.WordAlloc.removeDeadStructural input2029 value5 value1 value2 = (output2029, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2030 value4 value1 value2 = (output2030, value432, value1) := by
  rw [input2030_def, output2030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child2029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output2029_skip]
  kernel_rfl

theorem node2031_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child2030 : Flapjack.WordAlloc.removeDeadStructural input2030 value4 value1 value2 = (output2030, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2031 value0 value1 value2 = (output2031, value432, value1) := by
  rw [input2031_def, output2031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child2030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output2030_skip]
  kernel_rfl

theorem node2032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2032 value432 value1 value2 = (output2032, value433, value1) := by
  rw [input2032_def, output2032_def]
  kernel_rfl

theorem node2033_cond_eq
    (child2031 : Flapjack.WordAlloc.removeDeadStructural input2031 value0 value1 value2 = (output2031, value432, value1))
    (child2032 : Flapjack.WordAlloc.removeDeadStructural input2032 value432 value1 value2 = (output2032, value433, value1)) : Flapjack.WordAlloc.removeDeadStructural input2033 value0 value1 value2 = (output2033, value433, value1) := by
  rw [input2033_def, output2033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2031]
  try dsimp only
  rw [child2032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2031_skip, output2032_skip]
  kernel_rfl

#print axioms node2033_cond_eq
end InitECandidate.Proofs.DeadStages862.Parallel
