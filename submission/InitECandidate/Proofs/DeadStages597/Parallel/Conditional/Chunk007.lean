import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk007
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node1792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1792 value348 value1 value2 = (output1792, value348, value1) := by
  rw [input1792_def, output1792_def]
  kernel_rfl

theorem node1793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1793 value348 value1 value2 = (output1793, value348, value1) := by
  rw [input1793_def, output1793_def]
  kernel_rfl

theorem node1794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1794 value348 value1 value2 = (output1794, value343, value1) := by
  rw [input1794_def, output1794_def]
  kernel_rfl

theorem node1795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1795 value343 value1 value2 = (output1795, value343, value1) := by
  rw [input1795_def, output1795_def]
  kernel_rfl

theorem node1796_cond_eq
    (child1794 : Flapjack.WordAlloc.removeDeadStructural input1794 value348 value1 value2 = (output1794, value343, value1))
    (child1795 : Flapjack.WordAlloc.removeDeadStructural input1795 value343 value1 value2 = (output1795, value343, value1)) : Flapjack.WordAlloc.removeDeadStructural input1796 value348 value1 value2 = (output1796, value343, value1) := by
  rw [input1796_def, output1796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1794]
  try dsimp only
  rw [child1795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1794_skip, output1795_skip]
  kernel_rfl

theorem node1797_cond_eq
    (child1793 : Flapjack.WordAlloc.removeDeadStructural input1793 value348 value1 value2 = (output1793, value348, value1))
    (child1796 : Flapjack.WordAlloc.removeDeadStructural input1796 value348 value1 value2 = (output1796, value343, value1)) : Flapjack.WordAlloc.removeDeadStructural input1797 value348 value1 value2 = (output1797, value343, value1) := by
  rw [input1797_def, output1797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1793]
  try dsimp only
  rw [child1796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1793_skip, output1796_skip]
  kernel_rfl

theorem node1798_cond_eq
    (child1792 : Flapjack.WordAlloc.removeDeadStructural input1792 value348 value1 value2 = (output1792, value348, value1))
    (child1797 : Flapjack.WordAlloc.removeDeadStructural input1797 value348 value1 value2 = (output1797, value343, value1)) : Flapjack.WordAlloc.removeDeadStructural input1798 value348 value1 value2 = (output1798, value343, value1) := by
  rw [input1798_def, output1798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1792]
  try dsimp only
  rw [child1797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1792_skip, output1797_skip]
  kernel_rfl

theorem node1799_cond_eq
    (child1791 : Flapjack.WordAlloc.removeDeadStructural input1791 value348 value1 value2 = (output1791, value348, value1))
    (child1798 : Flapjack.WordAlloc.removeDeadStructural input1798 value348 value1 value2 = (output1798, value343, value1)) : Flapjack.WordAlloc.removeDeadStructural input1799 value348 value1 value2 = (output1799, value343, value1) := by
  rw [input1799_def, output1799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1791]
  try dsimp only
  rw [child1798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1791_skip, output1798_skip]
  kernel_rfl

theorem node1800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1800 value343 value1 value2 = (output1800, value349, value1) := by
  rw [input1800_def, output1800_def]
  kernel_rfl

theorem node1801_cond_eq
    (child1799 : Flapjack.WordAlloc.removeDeadStructural input1799 value348 value1 value2 = (output1799, value343, value1))
    (child1800 : Flapjack.WordAlloc.removeDeadStructural input1800 value343 value1 value2 = (output1800, value349, value1)) : Flapjack.WordAlloc.removeDeadStructural input1801 value348 value1 value2 = (output1801, value349, value1) := by
  rw [input1801_def, output1801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1799]
  try dsimp only
  rw [child1800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1799_skip, output1800_skip]
  kernel_rfl

theorem node1802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1802 value349 value1 value2 = (output1802, value350, value1) := by
  rw [input1802_def, output1802_def]
  kernel_rfl

theorem node1803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1803 value350 value1 value2 = (output1803, value351, value1) := by
  rw [input1803_def, output1803_def]
  kernel_rfl

theorem node1804_cond_eq
    (child1802 : Flapjack.WordAlloc.removeDeadStructural input1802 value349 value1 value2 = (output1802, value350, value1))
    (child1803 : Flapjack.WordAlloc.removeDeadStructural input1803 value350 value1 value2 = (output1803, value351, value1)) : Flapjack.WordAlloc.removeDeadStructural input1804 value349 value1 value2 = (output1804, value351, value1) := by
  rw [input1804_def, output1804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1802]
  try dsimp only
  rw [child1803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1802_skip, output1803_skip]
  kernel_rfl

theorem node1805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1805 value351 value1 value2 = (output1805, value349, value1) := by
  rw [input1805_def, output1805_def]
  kernel_rfl

theorem node1806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1806 value349 value1 value2 = (output1806, value349, value1) := by
  rw [input1806_def, output1806_def]
  kernel_rfl

theorem node1807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1807 value349 value1 value2 = (output1807, value352, value1) := by
  rw [input1807_def, output1807_def]
  kernel_rfl

theorem node1808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1808 value352 value1 value2 = (output1808, value352, value1) := by
  rw [input1808_def, output1808_def]
  kernel_rfl

theorem node1809_cond_eq
    (child1807 : Flapjack.WordAlloc.removeDeadStructural input1807 value349 value1 value2 = (output1807, value352, value1))
    (child1808 : Flapjack.WordAlloc.removeDeadStructural input1808 value352 value1 value2 = (output1808, value352, value1)) : Flapjack.WordAlloc.removeDeadStructural input1809 value349 value1 value2 = (output1809, value352, value1) := by
  rw [input1809_def, output1809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1807]
  try dsimp only
  rw [child1808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1807_skip, output1808_skip]
  kernel_rfl

theorem node1810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1810 value352 value1 value2 = (output1810, value353, value1) := by
  rw [input1810_def, output1810_def]
  kernel_rfl

theorem node1811_cond_eq
    (child1809 : Flapjack.WordAlloc.removeDeadStructural input1809 value349 value1 value2 = (output1809, value352, value1))
    (child1810 : Flapjack.WordAlloc.removeDeadStructural input1810 value352 value1 value2 = (output1810, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input1811 value349 value1 value2 = (output1811, value353, value1) := by
  rw [input1811_def, output1811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1809]
  try dsimp only
  rw [child1810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1809_skip, output1810_skip]
  kernel_rfl

theorem node1812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1812 value353 value1 value2 = (output1812, value353, value1) := by
  rw [input1812_def, output1812_def]
  kernel_rfl

theorem node1813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1813 value353 value1 value2 = (output1813, value353, value1) := by
  rw [input1813_def, output1813_def]
  kernel_rfl

theorem node1814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1814 value353 value1 value2 = (output1814, value353, value1) := by
  rw [input1814_def, output1814_def]
  kernel_rfl

theorem node1815_cond_eq
    (child1813 : Flapjack.WordAlloc.removeDeadStructural input1813 value353 value1 value2 = (output1813, value353, value1))
    (child1814 : Flapjack.WordAlloc.removeDeadStructural input1814 value353 value1 value2 = (output1814, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input1815 value353 value1 value2 = (output1815, value353, value1) := by
  rw [input1815_def, output1815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1813]
  try dsimp only
  rw [child1814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1813_skip, output1814_skip]
  kernel_rfl

theorem node1816_cond_eq
    (child1812 : Flapjack.WordAlloc.removeDeadStructural input1812 value353 value1 value2 = (output1812, value353, value1))
    (child1815 : Flapjack.WordAlloc.removeDeadStructural input1815 value353 value1 value2 = (output1815, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input1816 value353 value1 value2 = (output1816, value353, value1) := by
  rw [input1816_def, output1816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1812]
  try dsimp only
  rw [child1815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1812_skip, output1815_skip]
  kernel_rfl

theorem node1817_cond_eq
    (child1811 : Flapjack.WordAlloc.removeDeadStructural input1811 value349 value1 value2 = (output1811, value353, value1))
    (child1816 : Flapjack.WordAlloc.removeDeadStructural input1816 value353 value1 value2 = (output1816, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input1817 value349 value1 value2 = (output1817, value353, value1) := by
  rw [input1817_def, output1817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1811]
  try dsimp only
  rw [child1816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1811_skip, output1816_skip]
  kernel_rfl

theorem node1818_cond_eq
    (child1806 : Flapjack.WordAlloc.removeDeadStructural input1806 value349 value1 value2 = (output1806, value349, value1))
    (child1817 : Flapjack.WordAlloc.removeDeadStructural input1817 value349 value1 value2 = (output1817, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input1818 value349 value1 value2 = (output1818, value353, value1) := by
  rw [input1818_def, output1818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1806]
  try dsimp only
  rw [child1817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1806_skip, output1817_skip]
  kernel_rfl

theorem node1819_cond_eq
    (child1805 : Flapjack.WordAlloc.removeDeadStructural input1805 value351 value1 value2 = (output1805, value349, value1))
    (child1818 : Flapjack.WordAlloc.removeDeadStructural input1818 value349 value1 value2 = (output1818, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input1819 value351 value1 value2 = (output1819, value353, value1) := by
  rw [input1819_def, output1819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1805]
  try dsimp only
  rw [child1818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1805_skip, output1818_skip]
  kernel_rfl

theorem node1820_cond_eq
    (child1804 : Flapjack.WordAlloc.removeDeadStructural input1804 value349 value1 value2 = (output1804, value351, value1))
    (child1819 : Flapjack.WordAlloc.removeDeadStructural input1819 value351 value1 value2 = (output1819, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input1820 value349 value1 value2 = (output1820, value353, value1) := by
  rw [input1820_def, output1820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1804]
  try dsimp only
  rw [child1819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1804_skip, output1819_skip]
  kernel_rfl

theorem node1821_cond_eq
    (child1801 : Flapjack.WordAlloc.removeDeadStructural input1801 value348 value1 value2 = (output1801, value349, value1))
    (child1820 : Flapjack.WordAlloc.removeDeadStructural input1820 value349 value1 value2 = (output1820, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input1821 value348 value1 value2 = (output1821, value353, value1) := by
  rw [input1821_def, output1821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1801]
  try dsimp only
  rw [child1820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1801_skip, output1820_skip]
  kernel_rfl

theorem node1822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1822 value348 value1 value2 = (output1822, value348, value1) := by
  rw [input1822_def, output1822_def]
  kernel_rfl

theorem node1823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1823 value348 value1 value2 = (output1823, value348, value1) := by
  rw [input1823_def, output1823_def]
  kernel_rfl

theorem node1824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1824 value348 value1 value2 = (output1824, value348, value1) := by
  rw [input1824_def, output1824_def]
  kernel_rfl

theorem node1825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1825 value348 value1 value2 = (output1825, value354, value1) := by
  rw [input1825_def, output1825_def]
  kernel_rfl

theorem node1826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1826 value354 value1 value2 = (output1826, value354, value1) := by
  rw [input1826_def, output1826_def]
  kernel_rfl

theorem node1827_cond_eq
    (child1825 : Flapjack.WordAlloc.removeDeadStructural input1825 value348 value1 value2 = (output1825, value354, value1))
    (child1826 : Flapjack.WordAlloc.removeDeadStructural input1826 value354 value1 value2 = (output1826, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input1827 value348 value1 value2 = (output1827, value354, value1) := by
  rw [input1827_def, output1827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1825]
  try dsimp only
  rw [child1826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1825_skip, output1826_skip]
  kernel_rfl

theorem node1828_cond_eq
    (child1824 : Flapjack.WordAlloc.removeDeadStructural input1824 value348 value1 value2 = (output1824, value348, value1))
    (child1827 : Flapjack.WordAlloc.removeDeadStructural input1827 value348 value1 value2 = (output1827, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input1828 value348 value1 value2 = (output1828, value354, value1) := by
  rw [input1828_def, output1828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1824]
  try dsimp only
  rw [child1827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1824_skip, output1827_skip]
  kernel_rfl

theorem node1829_cond_eq
    (child1823 : Flapjack.WordAlloc.removeDeadStructural input1823 value348 value1 value2 = (output1823, value348, value1))
    (child1828 : Flapjack.WordAlloc.removeDeadStructural input1828 value348 value1 value2 = (output1828, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input1829 value348 value1 value2 = (output1829, value354, value1) := by
  rw [input1829_def, output1829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1823]
  try dsimp only
  rw [child1828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1823_skip, output1828_skip]
  kernel_rfl

theorem node1830_cond_eq
    (child1822 : Flapjack.WordAlloc.removeDeadStructural input1822 value348 value1 value2 = (output1822, value348, value1))
    (child1829 : Flapjack.WordAlloc.removeDeadStructural input1829 value348 value1 value2 = (output1829, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input1830 value348 value1 value2 = (output1830, value354, value1) := by
  rw [input1830_def, output1830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1822]
  try dsimp only
  rw [child1829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1822_skip, output1829_skip]
  kernel_rfl

theorem node1831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1831 value354 value1 value2 = (output1831, value355, value1) := by
  rw [input1831_def, output1831_def]
  kernel_rfl

theorem node1832_cond_eq
    (child1830 : Flapjack.WordAlloc.removeDeadStructural input1830 value348 value1 value2 = (output1830, value354, value1))
    (child1831 : Flapjack.WordAlloc.removeDeadStructural input1831 value354 value1 value2 = (output1831, value355, value1)) : Flapjack.WordAlloc.removeDeadStructural input1832 value348 value1 value2 = (output1832, value355, value1) := by
  rw [input1832_def, output1832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1830]
  try dsimp only
  rw [child1831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1830_skip, output1831_skip]
  kernel_rfl

theorem node1833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1833 value355 value1 value2 = (output1833, value355, value1) := by
  rw [input1833_def, output1833_def]
  kernel_rfl

theorem node1834_cond_eq
    (child1832 : Flapjack.WordAlloc.removeDeadStructural input1832 value348 value1 value2 = (output1832, value355, value1))
    (child1833 : Flapjack.WordAlloc.removeDeadStructural input1833 value355 value1 value2 = (output1833, value355, value1)) : Flapjack.WordAlloc.removeDeadStructural input1834 value348 value1 value2 = (output1834, value355, value1) := by
  rw [input1834_def, output1834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1832]
  try dsimp only
  rw [child1833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1832_skip, output1833_skip]
  kernel_rfl

theorem node1835_cond_eq
    (child1821 : Flapjack.WordAlloc.removeDeadStructural input1821 value348 value1 value2 = (output1821, value353, value1))
    (child1834 : Flapjack.WordAlloc.removeDeadStructural input1834 value348 value1 value2 = (output1834, value355, value1)) : Flapjack.WordAlloc.removeDeadStructural input1835 value348 value1 value2 = (output1835, value357, value1) := by
  rw [input1835_def, output1835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1821]
  try dsimp only
  rw [child1834]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1821_skip, output1834_skip]
  kernel_rfl

theorem node1836_cond_eq
    (child1790 : Flapjack.WordAlloc.removeDeadStructural input1790 value348 value1 value2 = (output1790, value348, value1))
    (child1835 : Flapjack.WordAlloc.removeDeadStructural input1835 value348 value1 value2 = (output1835, value357, value1)) : Flapjack.WordAlloc.removeDeadStructural input1836 value348 value1 value2 = (output1836, value357, value1) := by
  rw [input1836_def, output1836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1790]
  try dsimp only
  rw [child1835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1790_skip, output1835_skip]
  kernel_rfl

theorem node1837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1837 value357 value1 value2 = (output1837, value355, value1) := by
  rw [input1837_def, output1837_def]
  kernel_rfl

theorem node1838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1838 value355 value1 value2 = (output1838, value358, value1) := by
  rw [input1838_def, output1838_def]
  kernel_rfl

theorem node1839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1839 value358 value1 value2 = (output1839, value358, value1) := by
  rw [input1839_def, output1839_def]
  kernel_rfl

theorem node1840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1840 value358 value1 value2 = (output1840, value358, value1) := by
  rw [input1840_def, output1840_def]
  kernel_rfl

theorem node1841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1841 value358 value1 value2 = (output1841, value358, value1) := by
  rw [input1841_def, output1841_def]
  kernel_rfl

theorem node1842_cond_eq
    (child1840 : Flapjack.WordAlloc.removeDeadStructural input1840 value358 value1 value2 = (output1840, value358, value1))
    (child1841 : Flapjack.WordAlloc.removeDeadStructural input1841 value358 value1 value2 = (output1841, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1842 value358 value1 value2 = (output1842, value358, value1) := by
  rw [input1842_def, output1842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1840]
  try dsimp only
  rw [child1841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1840_skip, output1841_skip]
  kernel_rfl

theorem node1843_cond_eq
    (child1839 : Flapjack.WordAlloc.removeDeadStructural input1839 value358 value1 value2 = (output1839, value358, value1))
    (child1842 : Flapjack.WordAlloc.removeDeadStructural input1842 value358 value1 value2 = (output1842, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1843 value358 value1 value2 = (output1843, value358, value1) := by
  rw [input1843_def, output1843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1839]
  try dsimp only
  rw [child1842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1839_skip, output1842_skip]
  kernel_rfl

theorem node1844_cond_eq
    (child1838 : Flapjack.WordAlloc.removeDeadStructural input1838 value355 value1 value2 = (output1838, value358, value1))
    (child1843 : Flapjack.WordAlloc.removeDeadStructural input1843 value358 value1 value2 = (output1843, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1844 value355 value1 value2 = (output1844, value358, value1) := by
  rw [input1844_def, output1844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1838]
  try dsimp only
  rw [child1843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1838_skip, output1843_skip]
  kernel_rfl

theorem node1845_cond_eq
    (child1837 : Flapjack.WordAlloc.removeDeadStructural input1837 value357 value1 value2 = (output1837, value355, value1))
    (child1844 : Flapjack.WordAlloc.removeDeadStructural input1844 value355 value1 value2 = (output1844, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1845 value357 value1 value2 = (output1845, value358, value1) := by
  rw [input1845_def, output1845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1837]
  try dsimp only
  rw [child1844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1837_skip, output1844_skip]
  kernel_rfl

theorem node1846_cond_eq
    (child1836 : Flapjack.WordAlloc.removeDeadStructural input1836 value348 value1 value2 = (output1836, value357, value1))
    (child1845 : Flapjack.WordAlloc.removeDeadStructural input1845 value357 value1 value2 = (output1845, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1846 value348 value1 value2 = (output1846, value358, value1) := by
  rw [input1846_def, output1846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1836]
  try dsimp only
  rw [child1845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1836_skip, output1845_skip]
  kernel_rfl

theorem node1847_cond_eq
    (child1785 : Flapjack.WordAlloc.removeDeadStructural input1785 value348 value1 value2 = (output1785, value348, value1))
    (child1846 : Flapjack.WordAlloc.removeDeadStructural input1846 value348 value1 value2 = (output1846, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1847 value348 value1 value2 = (output1847, value358, value1) := by
  rw [input1847_def, output1847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1785]
  try dsimp only
  rw [child1846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1785_skip, output1846_skip]
  kernel_rfl

theorem node1848_cond_eq
    (child1784 : Flapjack.WordAlloc.removeDeadStructural input1784 value345 value1 value2 = (output1784, value348, value1))
    (child1847 : Flapjack.WordAlloc.removeDeadStructural input1847 value348 value1 value2 = (output1847, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1848 value345 value1 value2 = (output1848, value358, value1) := by
  rw [input1848_def, output1848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1784]
  try dsimp only
  rw [child1847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1784_skip, output1847_skip]
  kernel_rfl

theorem node1849_cond_eq
    (child1783 : Flapjack.WordAlloc.removeDeadStructural input1783 value347 value1 value2 = (output1783, value345, value1))
    (child1848 : Flapjack.WordAlloc.removeDeadStructural input1848 value345 value1 value2 = (output1848, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1849 value347 value1 value2 = (output1849, value358, value1) := by
  rw [input1849_def, output1849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1783]
  try dsimp only
  rw [child1848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1783_skip, output1848_skip]
  kernel_rfl

theorem node1850_cond_eq
    (child1782 : Flapjack.WordAlloc.removeDeadStructural input1782 value338 value1 value2 = (output1782, value347, value1))
    (child1849 : Flapjack.WordAlloc.removeDeadStructural input1849 value347 value1 value2 = (output1849, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1850 value338 value1 value2 = (output1850, value358, value1) := by
  rw [input1850_def, output1850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1782]
  try dsimp only
  rw [child1849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1782_skip, output1849_skip]
  kernel_rfl

theorem node1851_cond_eq
    (child1731 : Flapjack.WordAlloc.removeDeadStructural input1731 value338 value1 value2 = (output1731, value338, value1))
    (child1850 : Flapjack.WordAlloc.removeDeadStructural input1850 value338 value1 value2 = (output1850, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1851 value338 value1 value2 = (output1851, value358, value1) := by
  rw [input1851_def, output1851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1731]
  try dsimp only
  rw [child1850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1731_skip, output1850_skip]
  kernel_rfl

theorem node1852_cond_eq
    (child1730 : Flapjack.WordAlloc.removeDeadStructural input1730 value335 value1 value2 = (output1730, value338, value1))
    (child1851 : Flapjack.WordAlloc.removeDeadStructural input1851 value338 value1 value2 = (output1851, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1852 value335 value1 value2 = (output1852, value358, value1) := by
  rw [input1852_def, output1852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1730]
  try dsimp only
  rw [child1851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1730_skip, output1851_skip]
  kernel_rfl

theorem node1853_cond_eq
    (child1729 : Flapjack.WordAlloc.removeDeadStructural input1729 value337 value1 value2 = (output1729, value335, value1))
    (child1852 : Flapjack.WordAlloc.removeDeadStructural input1852 value335 value1 value2 = (output1852, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1853 value337 value1 value2 = (output1853, value358, value1) := by
  rw [input1853_def, output1853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1729]
  try dsimp only
  rw [child1852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1729_skip, output1852_skip]
  kernel_rfl

theorem node1854_cond_eq
    (child1728 : Flapjack.WordAlloc.removeDeadStructural input1728 value328 value1 value2 = (output1728, value337, value1))
    (child1853 : Flapjack.WordAlloc.removeDeadStructural input1853 value337 value1 value2 = (output1853, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1854 value328 value1 value2 = (output1854, value358, value1) := by
  rw [input1854_def, output1854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1728]
  try dsimp only
  rw [child1853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1728_skip, output1853_skip]
  kernel_rfl

theorem node1855_cond_eq
    (child1677 : Flapjack.WordAlloc.removeDeadStructural input1677 value328 value1 value2 = (output1677, value328, value1))
    (child1854 : Flapjack.WordAlloc.removeDeadStructural input1854 value328 value1 value2 = (output1854, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1855 value328 value1 value2 = (output1855, value358, value1) := by
  rw [input1855_def, output1855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1677]
  try dsimp only
  rw [child1854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1677_skip, output1854_skip]
  kernel_rfl

theorem node1856_cond_eq
    (child1676 : Flapjack.WordAlloc.removeDeadStructural input1676 value325 value1 value2 = (output1676, value328, value1))
    (child1855 : Flapjack.WordAlloc.removeDeadStructural input1855 value328 value1 value2 = (output1855, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1856 value325 value1 value2 = (output1856, value358, value1) := by
  rw [input1856_def, output1856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1676]
  try dsimp only
  rw [child1855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1676_skip, output1855_skip]
  kernel_rfl

theorem node1857_cond_eq
    (child1675 : Flapjack.WordAlloc.removeDeadStructural input1675 value327 value1 value2 = (output1675, value325, value1))
    (child1856 : Flapjack.WordAlloc.removeDeadStructural input1856 value325 value1 value2 = (output1856, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1857 value327 value1 value2 = (output1857, value358, value1) := by
  rw [input1857_def, output1857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1675]
  try dsimp only
  rw [child1856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1675_skip, output1856_skip]
  kernel_rfl

theorem node1858_cond_eq
    (child1674 : Flapjack.WordAlloc.removeDeadStructural input1674 value318 value1 value2 = (output1674, value327, value1))
    (child1857 : Flapjack.WordAlloc.removeDeadStructural input1857 value327 value1 value2 = (output1857, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1858 value318 value1 value2 = (output1858, value358, value1) := by
  rw [input1858_def, output1858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1674]
  try dsimp only
  rw [child1857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1674_skip, output1857_skip]
  kernel_rfl

theorem node1859_cond_eq
    (child1623 : Flapjack.WordAlloc.removeDeadStructural input1623 value318 value1 value2 = (output1623, value318, value1))
    (child1858 : Flapjack.WordAlloc.removeDeadStructural input1858 value318 value1 value2 = (output1858, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1859 value318 value1 value2 = (output1859, value358, value1) := by
  rw [input1859_def, output1859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1623]
  try dsimp only
  rw [child1858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1623_skip, output1858_skip]
  kernel_rfl

theorem node1860_cond_eq
    (child1622 : Flapjack.WordAlloc.removeDeadStructural input1622 value315 value1 value2 = (output1622, value318, value1))
    (child1859 : Flapjack.WordAlloc.removeDeadStructural input1859 value318 value1 value2 = (output1859, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1860 value315 value1 value2 = (output1860, value358, value1) := by
  rw [input1860_def, output1860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1622]
  try dsimp only
  rw [child1859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1622_skip, output1859_skip]
  kernel_rfl

theorem node1861_cond_eq
    (child1621 : Flapjack.WordAlloc.removeDeadStructural input1621 value317 value1 value2 = (output1621, value315, value1))
    (child1860 : Flapjack.WordAlloc.removeDeadStructural input1860 value315 value1 value2 = (output1860, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1861 value317 value1 value2 = (output1861, value358, value1) := by
  rw [input1861_def, output1861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1621]
  try dsimp only
  rw [child1860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1621_skip, output1860_skip]
  kernel_rfl

theorem node1862_cond_eq
    (child1620 : Flapjack.WordAlloc.removeDeadStructural input1620 value308 value1 value2 = (output1620, value317, value1))
    (child1861 : Flapjack.WordAlloc.removeDeadStructural input1861 value317 value1 value2 = (output1861, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1862 value308 value1 value2 = (output1862, value358, value1) := by
  rw [input1862_def, output1862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1620]
  try dsimp only
  rw [child1861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1620_skip, output1861_skip]
  kernel_rfl

theorem node1863_cond_eq
    (child1569 : Flapjack.WordAlloc.removeDeadStructural input1569 value308 value1 value2 = (output1569, value308, value1))
    (child1862 : Flapjack.WordAlloc.removeDeadStructural input1862 value308 value1 value2 = (output1862, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1863 value308 value1 value2 = (output1863, value358, value1) := by
  rw [input1863_def, output1863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1569]
  try dsimp only
  rw [child1862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1569_skip, output1862_skip]
  kernel_rfl

theorem node1864_cond_eq
    (child1568 : Flapjack.WordAlloc.removeDeadStructural input1568 value305 value1 value2 = (output1568, value308, value1))
    (child1863 : Flapjack.WordAlloc.removeDeadStructural input1863 value308 value1 value2 = (output1863, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1864 value305 value1 value2 = (output1864, value358, value1) := by
  rw [input1864_def, output1864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1568]
  try dsimp only
  rw [child1863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1568_skip, output1863_skip]
  kernel_rfl

theorem node1865_cond_eq
    (child1567 : Flapjack.WordAlloc.removeDeadStructural input1567 value307 value1 value2 = (output1567, value305, value1))
    (child1864 : Flapjack.WordAlloc.removeDeadStructural input1864 value305 value1 value2 = (output1864, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1865 value307 value1 value2 = (output1865, value358, value1) := by
  rw [input1865_def, output1865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1567]
  try dsimp only
  rw [child1864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1567_skip, output1864_skip]
  kernel_rfl

theorem node1866_cond_eq
    (child1566 : Flapjack.WordAlloc.removeDeadStructural input1566 value298 value1 value2 = (output1566, value307, value1))
    (child1865 : Flapjack.WordAlloc.removeDeadStructural input1865 value307 value1 value2 = (output1865, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1866 value298 value1 value2 = (output1866, value358, value1) := by
  rw [input1866_def, output1866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1566]
  try dsimp only
  rw [child1865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1566_skip, output1865_skip]
  kernel_rfl

theorem node1867_cond_eq
    (child1515 : Flapjack.WordAlloc.removeDeadStructural input1515 value298 value1 value2 = (output1515, value298, value1))
    (child1866 : Flapjack.WordAlloc.removeDeadStructural input1866 value298 value1 value2 = (output1866, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1867 value298 value1 value2 = (output1867, value358, value1) := by
  rw [input1867_def, output1867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1515]
  try dsimp only
  rw [child1866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1515_skip, output1866_skip]
  kernel_rfl

theorem node1868_cond_eq
    (child1514 : Flapjack.WordAlloc.removeDeadStructural input1514 value295 value1 value2 = (output1514, value298, value1))
    (child1867 : Flapjack.WordAlloc.removeDeadStructural input1867 value298 value1 value2 = (output1867, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1868 value295 value1 value2 = (output1868, value358, value1) := by
  rw [input1868_def, output1868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1514]
  try dsimp only
  rw [child1867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1514_skip, output1867_skip]
  kernel_rfl

theorem node1869_cond_eq
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value297 value1 value2 = (output1513, value295, value1))
    (child1868 : Flapjack.WordAlloc.removeDeadStructural input1868 value295 value1 value2 = (output1868, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1869 value297 value1 value2 = (output1869, value358, value1) := by
  rw [input1869_def, output1869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1513]
  try dsimp only
  rw [child1868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1513_skip, output1868_skip]
  kernel_rfl

theorem node1870_cond_eq
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value288 value1 value2 = (output1512, value297, value1))
    (child1869 : Flapjack.WordAlloc.removeDeadStructural input1869 value297 value1 value2 = (output1869, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1870 value288 value1 value2 = (output1870, value358, value1) := by
  rw [input1870_def, output1870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1512]
  try dsimp only
  rw [child1869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1512_skip, output1869_skip]
  kernel_rfl

theorem node1871_cond_eq
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value288 value1 value2 = (output1461, value288, value1))
    (child1870 : Flapjack.WordAlloc.removeDeadStructural input1870 value288 value1 value2 = (output1870, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1871 value288 value1 value2 = (output1871, value358, value1) := by
  rw [input1871_def, output1871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1461]
  try dsimp only
  rw [child1870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1461_skip, output1870_skip]
  kernel_rfl

theorem node1872_cond_eq
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value285 value1 value2 = (output1460, value288, value1))
    (child1871 : Flapjack.WordAlloc.removeDeadStructural input1871 value288 value1 value2 = (output1871, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1872 value285 value1 value2 = (output1872, value358, value1) := by
  rw [input1872_def, output1872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1460]
  try dsimp only
  rw [child1871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1460_skip, output1871_skip]
  kernel_rfl

theorem node1873_cond_eq
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value287 value1 value2 = (output1459, value285, value1))
    (child1872 : Flapjack.WordAlloc.removeDeadStructural input1872 value285 value1 value2 = (output1872, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1873 value287 value1 value2 = (output1873, value358, value1) := by
  rw [input1873_def, output1873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1459]
  try dsimp only
  rw [child1872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1459_skip, output1872_skip]
  kernel_rfl

theorem node1874_cond_eq
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value278 value1 value2 = (output1458, value287, value1))
    (child1873 : Flapjack.WordAlloc.removeDeadStructural input1873 value287 value1 value2 = (output1873, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1874 value278 value1 value2 = (output1874, value358, value1) := by
  rw [input1874_def, output1874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1458]
  try dsimp only
  rw [child1873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1458_skip, output1873_skip]
  kernel_rfl

theorem node1875_cond_eq
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value278 value1 value2 = (output1407, value278, value1))
    (child1874 : Flapjack.WordAlloc.removeDeadStructural input1874 value278 value1 value2 = (output1874, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1875 value278 value1 value2 = (output1875, value358, value1) := by
  rw [input1875_def, output1875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1407]
  try dsimp only
  rw [child1874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1407_skip, output1874_skip]
  kernel_rfl

theorem node1876_cond_eq
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value275 value1 value2 = (output1406, value278, value1))
    (child1875 : Flapjack.WordAlloc.removeDeadStructural input1875 value278 value1 value2 = (output1875, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1876 value275 value1 value2 = (output1876, value358, value1) := by
  rw [input1876_def, output1876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1406]
  try dsimp only
  rw [child1875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1406_skip, output1875_skip]
  kernel_rfl

theorem node1877_cond_eq
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value277 value1 value2 = (output1405, value275, value1))
    (child1876 : Flapjack.WordAlloc.removeDeadStructural input1876 value275 value1 value2 = (output1876, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1877 value277 value1 value2 = (output1877, value358, value1) := by
  rw [input1877_def, output1877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1405]
  try dsimp only
  rw [child1876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1405_skip, output1876_skip]
  kernel_rfl

theorem node1878_cond_eq
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value268 value1 value2 = (output1404, value277, value1))
    (child1877 : Flapjack.WordAlloc.removeDeadStructural input1877 value277 value1 value2 = (output1877, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1878 value268 value1 value2 = (output1878, value358, value1) := by
  rw [input1878_def, output1878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1404]
  try dsimp only
  rw [child1877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1404_skip, output1877_skip]
  kernel_rfl

theorem node1879_cond_eq
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value268 value1 value2 = (output1353, value268, value1))
    (child1878 : Flapjack.WordAlloc.removeDeadStructural input1878 value268 value1 value2 = (output1878, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1879 value268 value1 value2 = (output1879, value358, value1) := by
  rw [input1879_def, output1879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1353]
  try dsimp only
  rw [child1878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1353_skip, output1878_skip]
  kernel_rfl

theorem node1880_cond_eq
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value265 value1 value2 = (output1352, value268, value1))
    (child1879 : Flapjack.WordAlloc.removeDeadStructural input1879 value268 value1 value2 = (output1879, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1880 value265 value1 value2 = (output1880, value358, value1) := by
  rw [input1880_def, output1880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1352]
  try dsimp only
  rw [child1879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1352_skip, output1879_skip]
  kernel_rfl

theorem node1881_cond_eq
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value267 value1 value2 = (output1351, value265, value1))
    (child1880 : Flapjack.WordAlloc.removeDeadStructural input1880 value265 value1 value2 = (output1880, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1881 value267 value1 value2 = (output1881, value358, value1) := by
  rw [input1881_def, output1881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1351]
  try dsimp only
  rw [child1880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1351_skip, output1880_skip]
  kernel_rfl

theorem node1882_cond_eq
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value258 value1 value2 = (output1350, value267, value1))
    (child1881 : Flapjack.WordAlloc.removeDeadStructural input1881 value267 value1 value2 = (output1881, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1882 value258 value1 value2 = (output1882, value358, value1) := by
  rw [input1882_def, output1882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1350]
  try dsimp only
  rw [child1881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1350_skip, output1881_skip]
  kernel_rfl

theorem node1883_cond_eq
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value258 value1 value2 = (output1299, value258, value1))
    (child1882 : Flapjack.WordAlloc.removeDeadStructural input1882 value258 value1 value2 = (output1882, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1883 value258 value1 value2 = (output1883, value358, value1) := by
  rw [input1883_def, output1883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1299]
  try dsimp only
  rw [child1882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1299_skip, output1882_skip]
  kernel_rfl

theorem node1884_cond_eq
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value255 value1 value2 = (output1298, value258, value1))
    (child1883 : Flapjack.WordAlloc.removeDeadStructural input1883 value258 value1 value2 = (output1883, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1884 value255 value1 value2 = (output1884, value358, value1) := by
  rw [input1884_def, output1884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1298]
  try dsimp only
  rw [child1883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1298_skip, output1883_skip]
  kernel_rfl

theorem node1885_cond_eq
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value257 value1 value2 = (output1297, value255, value1))
    (child1884 : Flapjack.WordAlloc.removeDeadStructural input1884 value255 value1 value2 = (output1884, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1885 value257 value1 value2 = (output1885, value358, value1) := by
  rw [input1885_def, output1885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1297]
  try dsimp only
  rw [child1884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1297_skip, output1884_skip]
  kernel_rfl

theorem node1886_cond_eq
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value248 value1 value2 = (output1296, value257, value1))
    (child1885 : Flapjack.WordAlloc.removeDeadStructural input1885 value257 value1 value2 = (output1885, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1886 value248 value1 value2 = (output1886, value358, value1) := by
  rw [input1886_def, output1886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1296]
  try dsimp only
  rw [child1885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1296_skip, output1885_skip]
  kernel_rfl

theorem node1887_cond_eq
    (child1245 : Flapjack.WordAlloc.removeDeadStructural input1245 value248 value1 value2 = (output1245, value248, value1))
    (child1886 : Flapjack.WordAlloc.removeDeadStructural input1886 value248 value1 value2 = (output1886, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1887 value248 value1 value2 = (output1887, value358, value1) := by
  rw [input1887_def, output1887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1245]
  try dsimp only
  rw [child1886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1245_skip, output1886_skip]
  kernel_rfl

theorem node1888_cond_eq
    (child1244 : Flapjack.WordAlloc.removeDeadStructural input1244 value245 value1 value2 = (output1244, value248, value1))
    (child1887 : Flapjack.WordAlloc.removeDeadStructural input1887 value248 value1 value2 = (output1887, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1888 value245 value1 value2 = (output1888, value358, value1) := by
  rw [input1888_def, output1888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1244]
  try dsimp only
  rw [child1887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1244_skip, output1887_skip]
  kernel_rfl

theorem node1889_cond_eq
    (child1243 : Flapjack.WordAlloc.removeDeadStructural input1243 value247 value1 value2 = (output1243, value245, value1))
    (child1888 : Flapjack.WordAlloc.removeDeadStructural input1888 value245 value1 value2 = (output1888, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1889 value247 value1 value2 = (output1889, value358, value1) := by
  rw [input1889_def, output1889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1243]
  try dsimp only
  rw [child1888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1243_skip, output1888_skip]
  kernel_rfl

theorem node1890_cond_eq
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value238 value1 value2 = (output1242, value247, value1))
    (child1889 : Flapjack.WordAlloc.removeDeadStructural input1889 value247 value1 value2 = (output1889, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1890 value238 value1 value2 = (output1890, value358, value1) := by
  rw [input1890_def, output1890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1242]
  try dsimp only
  rw [child1889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1242_skip, output1889_skip]
  kernel_rfl

theorem node1891_cond_eq
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value238 value1 value2 = (output1191, value238, value1))
    (child1890 : Flapjack.WordAlloc.removeDeadStructural input1890 value238 value1 value2 = (output1890, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1891 value238 value1 value2 = (output1891, value358, value1) := by
  rw [input1891_def, output1891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1191]
  try dsimp only
  rw [child1890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1191_skip, output1890_skip]
  kernel_rfl

theorem node1892_cond_eq
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value235 value1 value2 = (output1190, value238, value1))
    (child1891 : Flapjack.WordAlloc.removeDeadStructural input1891 value238 value1 value2 = (output1891, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1892 value235 value1 value2 = (output1892, value358, value1) := by
  rw [input1892_def, output1892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1190]
  try dsimp only
  rw [child1891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1190_skip, output1891_skip]
  kernel_rfl

theorem node1893_cond_eq
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value237 value1 value2 = (output1189, value235, value1))
    (child1892 : Flapjack.WordAlloc.removeDeadStructural input1892 value235 value1 value2 = (output1892, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1893 value237 value1 value2 = (output1893, value358, value1) := by
  rw [input1893_def, output1893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1189]
  try dsimp only
  rw [child1892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1189_skip, output1892_skip]
  kernel_rfl

theorem node1894_cond_eq
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value228 value1 value2 = (output1188, value237, value1))
    (child1893 : Flapjack.WordAlloc.removeDeadStructural input1893 value237 value1 value2 = (output1893, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1894 value228 value1 value2 = (output1894, value358, value1) := by
  rw [input1894_def, output1894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1188]
  try dsimp only
  rw [child1893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1188_skip, output1893_skip]
  kernel_rfl

theorem node1895_cond_eq
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value228 value1 value2 = (output1137, value228, value1))
    (child1894 : Flapjack.WordAlloc.removeDeadStructural input1894 value228 value1 value2 = (output1894, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1895 value228 value1 value2 = (output1895, value358, value1) := by
  rw [input1895_def, output1895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1137]
  try dsimp only
  rw [child1894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1137_skip, output1894_skip]
  kernel_rfl

theorem node1896_cond_eq
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value225 value1 value2 = (output1136, value228, value1))
    (child1895 : Flapjack.WordAlloc.removeDeadStructural input1895 value228 value1 value2 = (output1895, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1896 value225 value1 value2 = (output1896, value358, value1) := by
  rw [input1896_def, output1896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1136]
  try dsimp only
  rw [child1895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1136_skip, output1895_skip]
  kernel_rfl

theorem node1897_cond_eq
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value227 value1 value2 = (output1135, value225, value1))
    (child1896 : Flapjack.WordAlloc.removeDeadStructural input1896 value225 value1 value2 = (output1896, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1897 value227 value1 value2 = (output1897, value358, value1) := by
  rw [input1897_def, output1897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1135]
  try dsimp only
  rw [child1896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1135_skip, output1896_skip]
  kernel_rfl

theorem node1898_cond_eq
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value218 value1 value2 = (output1134, value227, value1))
    (child1897 : Flapjack.WordAlloc.removeDeadStructural input1897 value227 value1 value2 = (output1897, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1898 value218 value1 value2 = (output1898, value358, value1) := by
  rw [input1898_def, output1898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1134]
  try dsimp only
  rw [child1897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1134_skip, output1897_skip]
  kernel_rfl

theorem node1899_cond_eq
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value218 value1 value2 = (output1083, value218, value1))
    (child1898 : Flapjack.WordAlloc.removeDeadStructural input1898 value218 value1 value2 = (output1898, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1899 value218 value1 value2 = (output1899, value358, value1) := by
  rw [input1899_def, output1899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1083]
  try dsimp only
  rw [child1898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1083_skip, output1898_skip]
  kernel_rfl

theorem node1900_cond_eq
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value215 value1 value2 = (output1082, value218, value1))
    (child1899 : Flapjack.WordAlloc.removeDeadStructural input1899 value218 value1 value2 = (output1899, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1900 value215 value1 value2 = (output1900, value358, value1) := by
  rw [input1900_def, output1900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1082]
  try dsimp only
  rw [child1899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1082_skip, output1899_skip]
  kernel_rfl

theorem node1901_cond_eq
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value217 value1 value2 = (output1081, value215, value1))
    (child1900 : Flapjack.WordAlloc.removeDeadStructural input1900 value215 value1 value2 = (output1900, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1901 value217 value1 value2 = (output1901, value358, value1) := by
  rw [input1901_def, output1901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1081]
  try dsimp only
  rw [child1900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1081_skip, output1900_skip]
  kernel_rfl

theorem node1902_cond_eq
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value208 value1 value2 = (output1080, value217, value1))
    (child1901 : Flapjack.WordAlloc.removeDeadStructural input1901 value217 value1 value2 = (output1901, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1902 value208 value1 value2 = (output1902, value358, value1) := by
  rw [input1902_def, output1902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1080]
  try dsimp only
  rw [child1901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1080_skip, output1901_skip]
  kernel_rfl

theorem node1903_cond_eq
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value208 value1 value2 = (output1029, value208, value1))
    (child1902 : Flapjack.WordAlloc.removeDeadStructural input1902 value208 value1 value2 = (output1902, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1903 value208 value1 value2 = (output1903, value358, value1) := by
  rw [input1903_def, output1903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1029]
  try dsimp only
  rw [child1902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1029_skip, output1902_skip]
  kernel_rfl

theorem node1904_cond_eq
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value205 value1 value2 = (output1028, value208, value1))
    (child1903 : Flapjack.WordAlloc.removeDeadStructural input1903 value208 value1 value2 = (output1903, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1904 value205 value1 value2 = (output1904, value358, value1) := by
  rw [input1904_def, output1904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1028]
  try dsimp only
  rw [child1903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1028_skip, output1903_skip]
  kernel_rfl

theorem node1905_cond_eq
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value207 value1 value2 = (output1027, value205, value1))
    (child1904 : Flapjack.WordAlloc.removeDeadStructural input1904 value205 value1 value2 = (output1904, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1905 value207 value1 value2 = (output1905, value358, value1) := by
  rw [input1905_def, output1905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1027]
  try dsimp only
  rw [child1904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1027_skip, output1904_skip]
  kernel_rfl

theorem node1906_cond_eq
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value198 value1 value2 = (output1026, value207, value1))
    (child1905 : Flapjack.WordAlloc.removeDeadStructural input1905 value207 value1 value2 = (output1905, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1906 value198 value1 value2 = (output1906, value358, value1) := by
  rw [input1906_def, output1906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1026]
  try dsimp only
  rw [child1905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1026_skip, output1905_skip]
  kernel_rfl

theorem node1907_cond_eq
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value198 value1 value2 = (output975, value198, value1))
    (child1906 : Flapjack.WordAlloc.removeDeadStructural input1906 value198 value1 value2 = (output1906, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1907 value198 value1 value2 = (output1907, value358, value1) := by
  rw [input1907_def, output1907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child975]
  try dsimp only
  rw [child1906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output975_skip, output1906_skip]
  kernel_rfl

theorem node1908_cond_eq
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value195 value1 value2 = (output974, value198, value1))
    (child1907 : Flapjack.WordAlloc.removeDeadStructural input1907 value198 value1 value2 = (output1907, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1908 value195 value1 value2 = (output1908, value358, value1) := by
  rw [input1908_def, output1908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child974]
  try dsimp only
  rw [child1907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output974_skip, output1907_skip]
  kernel_rfl

theorem node1909_cond_eq
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value197 value1 value2 = (output973, value195, value1))
    (child1908 : Flapjack.WordAlloc.removeDeadStructural input1908 value195 value1 value2 = (output1908, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1909 value197 value1 value2 = (output1909, value358, value1) := by
  rw [input1909_def, output1909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child973]
  try dsimp only
  rw [child1908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output973_skip, output1908_skip]
  kernel_rfl

theorem node1910_cond_eq
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value187 value8 value2 = (output972, value197, value1))
    (child1909 : Flapjack.WordAlloc.removeDeadStructural input1909 value197 value1 value2 = (output1909, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1910 value187 value8 value2 = (output1910, value358, value1) := by
  rw [input1910_def, output1910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child972]
  try dsimp only
  rw [child1909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output972_skip, output1909_skip]
  kernel_rfl

theorem node1911_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value187 value8 value2 = (output921, value187, value8))
    (child1910 : Flapjack.WordAlloc.removeDeadStructural input1910 value187 value8 value2 = (output1910, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1911 value187 value8 value2 = (output1911, value358, value1) := by
  rw [input1911_def, output1911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  try dsimp only
  rw [child1910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output1910_skip]
  kernel_rfl

theorem node1912_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value182 value8 value2 = (output920, value187, value8))
    (child1911 : Flapjack.WordAlloc.removeDeadStructural input1911 value187 value8 value2 = (output1911, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input1912 value182 value8 value2 = (output1912, value358, value1) := by
  rw [input1912_def, output1912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child1911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output1911_skip]
  kernel_rfl

theorem node1913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1913 value182 value8 value2 = (output1913, value182, value8) := by
  rw [input1913_def, output1913_def]
  kernel_rfl

theorem node1914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1914 value182 value8 value2 = (output1914, value359, value8) := by
  rw [input1914_def, output1914_def]
  kernel_rfl

theorem node1915_cond_eq
    (child1913 : Flapjack.WordAlloc.removeDeadStructural input1913 value182 value8 value2 = (output1913, value182, value8))
    (child1914 : Flapjack.WordAlloc.removeDeadStructural input1914 value182 value8 value2 = (output1914, value359, value8)) : Flapjack.WordAlloc.removeDeadStructural input1915 value182 value8 value2 = (output1915, value359, value8) := by
  rw [input1915_def, output1915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1913]
  try dsimp only
  rw [child1914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1913_skip, output1914_skip]
  kernel_rfl

theorem node1916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1916 value359 value8 value2 = (output1916, value359, value8) := by
  rw [input1916_def, output1916_def]
  kernel_rfl

theorem node1917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1917 value359 value8 value2 = (output1917, value359, value8) := by
  rw [input1917_def, output1917_def]
  kernel_rfl

theorem node1918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1918 value359 value8 value2 = (output1918, value359, value8) := by
  rw [input1918_def, output1918_def]
  kernel_rfl

theorem node1919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1919 value359 value8 value2 = (output1919, value359, value8) := by
  rw [input1919_def, output1919_def]
  kernel_rfl

theorem node1920_cond_eq
    (child1918 : Flapjack.WordAlloc.removeDeadStructural input1918 value359 value8 value2 = (output1918, value359, value8))
    (child1919 : Flapjack.WordAlloc.removeDeadStructural input1919 value359 value8 value2 = (output1919, value359, value8)) : Flapjack.WordAlloc.removeDeadStructural input1920 value359 value8 value2 = (output1920, value359, value8) := by
  rw [input1920_def, output1920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1918]
  try dsimp only
  rw [child1919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1918_skip, output1919_skip]
  kernel_rfl

theorem node1921_cond_eq
    (child1917 : Flapjack.WordAlloc.removeDeadStructural input1917 value359 value8 value2 = (output1917, value359, value8))
    (child1920 : Flapjack.WordAlloc.removeDeadStructural input1920 value359 value8 value2 = (output1920, value359, value8)) : Flapjack.WordAlloc.removeDeadStructural input1921 value359 value8 value2 = (output1921, value359, value8) := by
  rw [input1921_def, output1921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1917]
  try dsimp only
  rw [child1920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1917_skip, output1920_skip]
  kernel_rfl

theorem node1922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1922 value359 value8 value2 = (output1922, value359, value8) := by
  rw [input1922_def, output1922_def]
  kernel_rfl

theorem node1923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1923 value359 value8 value2 = (output1923, value359, value8) := by
  rw [input1923_def, output1923_def]
  kernel_rfl

theorem node1924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1924 value359 value8 value2 = (output1924, value359, value8) := by
  rw [input1924_def, output1924_def]
  kernel_rfl

theorem node1925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1925 value359 value8 value2 = (output1925, value360, value8) := by
  rw [input1925_def, output1925_def]
  kernel_rfl

theorem node1926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1926 value360 value8 value2 = (output1926, value360, value8) := by
  rw [input1926_def, output1926_def]
  kernel_rfl

theorem node1927_cond_eq
    (child1925 : Flapjack.WordAlloc.removeDeadStructural input1925 value359 value8 value2 = (output1925, value360, value8))
    (child1926 : Flapjack.WordAlloc.removeDeadStructural input1926 value360 value8 value2 = (output1926, value360, value8)) : Flapjack.WordAlloc.removeDeadStructural input1927 value359 value8 value2 = (output1927, value360, value8) := by
  rw [input1927_def, output1927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1925]
  try dsimp only
  rw [child1926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1925_skip, output1926_skip]
  kernel_rfl

theorem node1928_cond_eq
    (child1924 : Flapjack.WordAlloc.removeDeadStructural input1924 value359 value8 value2 = (output1924, value359, value8))
    (child1927 : Flapjack.WordAlloc.removeDeadStructural input1927 value359 value8 value2 = (output1927, value360, value8)) : Flapjack.WordAlloc.removeDeadStructural input1928 value359 value8 value2 = (output1928, value360, value8) := by
  rw [input1928_def, output1928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1924]
  try dsimp only
  rw [child1927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1924_skip, output1927_skip]
  kernel_rfl

theorem node1929_cond_eq
    (child1923 : Flapjack.WordAlloc.removeDeadStructural input1923 value359 value8 value2 = (output1923, value359, value8))
    (child1928 : Flapjack.WordAlloc.removeDeadStructural input1928 value359 value8 value2 = (output1928, value360, value8)) : Flapjack.WordAlloc.removeDeadStructural input1929 value359 value8 value2 = (output1929, value360, value8) := by
  rw [input1929_def, output1929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1923]
  try dsimp only
  rw [child1928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1923_skip, output1928_skip]
  kernel_rfl

theorem node1930_cond_eq
    (child1922 : Flapjack.WordAlloc.removeDeadStructural input1922 value359 value8 value2 = (output1922, value359, value8))
    (child1929 : Flapjack.WordAlloc.removeDeadStructural input1929 value359 value8 value2 = (output1929, value360, value8)) : Flapjack.WordAlloc.removeDeadStructural input1930 value359 value8 value2 = (output1930, value360, value8) := by
  rw [input1930_def, output1930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1922]
  try dsimp only
  rw [child1929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1922_skip, output1929_skip]
  kernel_rfl

theorem node1931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1931 value360 value8 value2 = (output1931, value361, value8) := by
  rw [input1931_def, output1931_def]
  kernel_rfl

theorem node1932_cond_eq
    (child1930 : Flapjack.WordAlloc.removeDeadStructural input1930 value359 value8 value2 = (output1930, value360, value8))
    (child1931 : Flapjack.WordAlloc.removeDeadStructural input1931 value360 value8 value2 = (output1931, value361, value8)) : Flapjack.WordAlloc.removeDeadStructural input1932 value359 value8 value2 = (output1932, value361, value8) := by
  rw [input1932_def, output1932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1930]
  try dsimp only
  rw [child1931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1930_skip, output1931_skip]
  kernel_rfl

theorem node1933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1933 value361 value8 value2 = (output1933, value362, value1) := by
  rw [input1933_def, output1933_def]
  kernel_rfl

theorem node1934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1934 value362 value1 value2 = (output1934, value363, value1) := by
  rw [input1934_def, output1934_def]
  kernel_rfl

theorem node1935_cond_eq
    (child1933 : Flapjack.WordAlloc.removeDeadStructural input1933 value361 value8 value2 = (output1933, value362, value1))
    (child1934 : Flapjack.WordAlloc.removeDeadStructural input1934 value362 value1 value2 = (output1934, value363, value1)) : Flapjack.WordAlloc.removeDeadStructural input1935 value361 value8 value2 = (output1935, value363, value1) := by
  rw [input1935_def, output1935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1933]
  try dsimp only
  rw [child1934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1933_skip, output1934_skip]
  kernel_rfl

theorem node1936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1936 value363 value1 value2 = (output1936, value361, value1) := by
  rw [input1936_def, output1936_def]
  kernel_rfl

theorem node1937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1937 value361 value1 value2 = (output1937, value361, value1) := by
  rw [input1937_def, output1937_def]
  kernel_rfl

theorem node1938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1938 value361 value1 value2 = (output1938, value364, value1) := by
  rw [input1938_def, output1938_def]
  kernel_rfl

theorem node1939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1939 value364 value1 value2 = (output1939, value365, value1) := by
  rw [input1939_def, output1939_def]
  kernel_rfl

theorem node1940_cond_eq
    (child1938 : Flapjack.WordAlloc.removeDeadStructural input1938 value361 value1 value2 = (output1938, value364, value1))
    (child1939 : Flapjack.WordAlloc.removeDeadStructural input1939 value364 value1 value2 = (output1939, value365, value1)) : Flapjack.WordAlloc.removeDeadStructural input1940 value361 value1 value2 = (output1940, value365, value1) := by
  rw [input1940_def, output1940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1938]
  try dsimp only
  rw [child1939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1938_skip, output1939_skip]
  kernel_rfl

theorem node1941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1941 value365 value1 value2 = (output1941, value366, value1) := by
  rw [input1941_def, output1941_def]
  kernel_rfl

theorem node1942_cond_eq
    (child1940 : Flapjack.WordAlloc.removeDeadStructural input1940 value361 value1 value2 = (output1940, value365, value1))
    (child1941 : Flapjack.WordAlloc.removeDeadStructural input1941 value365 value1 value2 = (output1941, value366, value1)) : Flapjack.WordAlloc.removeDeadStructural input1942 value361 value1 value2 = (output1942, value366, value1) := by
  rw [input1942_def, output1942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1940]
  try dsimp only
  rw [child1941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1940_skip, output1941_skip]
  kernel_rfl

theorem node1943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1943 value366 value1 value2 = (output1943, value367, value1) := by
  rw [input1943_def, output1943_def]
  kernel_rfl

theorem node1944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1944 value367 value1 value2 = (output1944, value367, value1) := by
  rw [input1944_def, output1944_def]
  kernel_rfl

theorem node1945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1945 value367 value1 value2 = (output1945, value367, value1) := by
  rw [input1945_def, output1945_def]
  kernel_rfl

theorem node1946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1946 value367 value1 value2 = (output1946, value367, value1) := by
  rw [input1946_def, output1946_def]
  kernel_rfl

theorem node1947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1947 value367 value1 value2 = (output1947, value367, value1) := by
  rw [input1947_def, output1947_def]
  kernel_rfl

theorem node1948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1948 value367 value1 value2 = (output1948, value367, value1) := by
  rw [input1948_def, output1948_def]
  kernel_rfl

theorem node1949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1949 value367 value1 value2 = (output1949, value367, value1) := by
  rw [input1949_def, output1949_def]
  kernel_rfl

theorem node1950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1950 value367 value1 value2 = (output1950, value367, value1) := by
  rw [input1950_def, output1950_def]
  kernel_rfl

theorem node1951_cond_eq
    (child1949 : Flapjack.WordAlloc.removeDeadStructural input1949 value367 value1 value2 = (output1949, value367, value1))
    (child1950 : Flapjack.WordAlloc.removeDeadStructural input1950 value367 value1 value2 = (output1950, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1951 value367 value1 value2 = (output1951, value367, value1) := by
  rw [input1951_def, output1951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1949]
  try dsimp only
  rw [child1950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1949_skip, output1950_skip]
  kernel_rfl

theorem node1952_cond_eq
    (child1948 : Flapjack.WordAlloc.removeDeadStructural input1948 value367 value1 value2 = (output1948, value367, value1))
    (child1951 : Flapjack.WordAlloc.removeDeadStructural input1951 value367 value1 value2 = (output1951, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1952 value367 value1 value2 = (output1952, value367, value1) := by
  rw [input1952_def, output1952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1948]
  try dsimp only
  rw [child1951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1948_skip, output1951_skip]
  kernel_rfl

theorem node1953_cond_eq
    (child1947 : Flapjack.WordAlloc.removeDeadStructural input1947 value367 value1 value2 = (output1947, value367, value1))
    (child1952 : Flapjack.WordAlloc.removeDeadStructural input1952 value367 value1 value2 = (output1952, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1953 value367 value1 value2 = (output1953, value367, value1) := by
  rw [input1953_def, output1953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1947]
  try dsimp only
  rw [child1952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1947_skip, output1952_skip]
  kernel_rfl

theorem node1954_cond_eq
    (child1946 : Flapjack.WordAlloc.removeDeadStructural input1946 value367 value1 value2 = (output1946, value367, value1))
    (child1953 : Flapjack.WordAlloc.removeDeadStructural input1953 value367 value1 value2 = (output1953, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1954 value367 value1 value2 = (output1954, value367, value1) := by
  rw [input1954_def, output1954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1946]
  try dsimp only
  rw [child1953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1946_skip, output1953_skip]
  kernel_rfl

theorem node1955_cond_eq
    (child1945 : Flapjack.WordAlloc.removeDeadStructural input1945 value367 value1 value2 = (output1945, value367, value1))
    (child1954 : Flapjack.WordAlloc.removeDeadStructural input1954 value367 value1 value2 = (output1954, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1955 value367 value1 value2 = (output1955, value367, value1) := by
  rw [input1955_def, output1955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1945]
  try dsimp only
  rw [child1954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1945_skip, output1954_skip]
  kernel_rfl

theorem node1956_cond_eq
    (child1944 : Flapjack.WordAlloc.removeDeadStructural input1944 value367 value1 value2 = (output1944, value367, value1))
    (child1955 : Flapjack.WordAlloc.removeDeadStructural input1955 value367 value1 value2 = (output1955, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1956 value367 value1 value2 = (output1956, value367, value1) := by
  rw [input1956_def, output1956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1944]
  try dsimp only
  rw [child1955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1944_skip, output1955_skip]
  kernel_rfl

theorem node1957_cond_eq
    (child1943 : Flapjack.WordAlloc.removeDeadStructural input1943 value366 value1 value2 = (output1943, value367, value1))
    (child1956 : Flapjack.WordAlloc.removeDeadStructural input1956 value367 value1 value2 = (output1956, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1957 value366 value1 value2 = (output1957, value367, value1) := by
  rw [input1957_def, output1957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1943]
  try dsimp only
  rw [child1956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1943_skip, output1956_skip]
  kernel_rfl

theorem node1958_cond_eq
    (child1942 : Flapjack.WordAlloc.removeDeadStructural input1942 value361 value1 value2 = (output1942, value366, value1))
    (child1957 : Flapjack.WordAlloc.removeDeadStructural input1957 value366 value1 value2 = (output1957, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1958 value361 value1 value2 = (output1958, value367, value1) := by
  rw [input1958_def, output1958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1942]
  try dsimp only
  rw [child1957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1942_skip, output1957_skip]
  kernel_rfl

theorem node1959_cond_eq
    (child1937 : Flapjack.WordAlloc.removeDeadStructural input1937 value361 value1 value2 = (output1937, value361, value1))
    (child1958 : Flapjack.WordAlloc.removeDeadStructural input1958 value361 value1 value2 = (output1958, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1959 value361 value1 value2 = (output1959, value367, value1) := by
  rw [input1959_def, output1959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1937]
  try dsimp only
  rw [child1958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1937_skip, output1958_skip]
  kernel_rfl

theorem node1960_cond_eq
    (child1936 : Flapjack.WordAlloc.removeDeadStructural input1936 value363 value1 value2 = (output1936, value361, value1))
    (child1959 : Flapjack.WordAlloc.removeDeadStructural input1959 value361 value1 value2 = (output1959, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1960 value363 value1 value2 = (output1960, value367, value1) := by
  rw [input1960_def, output1960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1936]
  try dsimp only
  rw [child1959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1936_skip, output1959_skip]
  kernel_rfl

theorem node1961_cond_eq
    (child1935 : Flapjack.WordAlloc.removeDeadStructural input1935 value361 value8 value2 = (output1935, value363, value1))
    (child1960 : Flapjack.WordAlloc.removeDeadStructural input1960 value363 value1 value2 = (output1960, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1961 value361 value8 value2 = (output1961, value367, value1) := by
  rw [input1961_def, output1961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1935]
  try dsimp only
  rw [child1960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1935_skip, output1960_skip]
  kernel_rfl

theorem node1962_cond_eq
    (child1932 : Flapjack.WordAlloc.removeDeadStructural input1932 value359 value8 value2 = (output1932, value361, value8))
    (child1961 : Flapjack.WordAlloc.removeDeadStructural input1961 value361 value8 value2 = (output1961, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1962 value359 value8 value2 = (output1962, value367, value1) := by
  rw [input1962_def, output1962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1932]
  try dsimp only
  rw [child1961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1932_skip, output1961_skip]
  kernel_rfl

theorem node1963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1963 value359 value8 value2 = (output1963, value359, value8) := by
  rw [input1963_def, output1963_def]
  kernel_rfl

theorem node1964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1964 value359 value8 value2 = (output1964, value359, value8) := by
  rw [input1964_def, output1964_def]
  kernel_rfl

theorem node1965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1965 value359 value8 value2 = (output1965, value359, value8) := by
  rw [input1965_def, output1965_def]
  kernel_rfl

theorem node1966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1966 value359 value8 value2 = (output1966, value368, value8) := by
  rw [input1966_def, output1966_def]
  kernel_rfl

theorem node1967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1967 value368 value8 value2 = (output1967, value368, value8) := by
  rw [input1967_def, output1967_def]
  kernel_rfl

theorem node1968_cond_eq
    (child1966 : Flapjack.WordAlloc.removeDeadStructural input1966 value359 value8 value2 = (output1966, value368, value8))
    (child1967 : Flapjack.WordAlloc.removeDeadStructural input1967 value368 value8 value2 = (output1967, value368, value8)) : Flapjack.WordAlloc.removeDeadStructural input1968 value359 value8 value2 = (output1968, value368, value8) := by
  rw [input1968_def, output1968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1966]
  try dsimp only
  rw [child1967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1966_skip, output1967_skip]
  kernel_rfl

theorem node1969_cond_eq
    (child1965 : Flapjack.WordAlloc.removeDeadStructural input1965 value359 value8 value2 = (output1965, value359, value8))
    (child1968 : Flapjack.WordAlloc.removeDeadStructural input1968 value359 value8 value2 = (output1968, value368, value8)) : Flapjack.WordAlloc.removeDeadStructural input1969 value359 value8 value2 = (output1969, value368, value8) := by
  rw [input1969_def, output1969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1965]
  try dsimp only
  rw [child1968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1965_skip, output1968_skip]
  kernel_rfl

theorem node1970_cond_eq
    (child1964 : Flapjack.WordAlloc.removeDeadStructural input1964 value359 value8 value2 = (output1964, value359, value8))
    (child1969 : Flapjack.WordAlloc.removeDeadStructural input1969 value359 value8 value2 = (output1969, value368, value8)) : Flapjack.WordAlloc.removeDeadStructural input1970 value359 value8 value2 = (output1970, value368, value8) := by
  rw [input1970_def, output1970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1964]
  try dsimp only
  rw [child1969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1964_skip, output1969_skip]
  kernel_rfl

theorem node1971_cond_eq
    (child1963 : Flapjack.WordAlloc.removeDeadStructural input1963 value359 value8 value2 = (output1963, value359, value8))
    (child1970 : Flapjack.WordAlloc.removeDeadStructural input1970 value359 value8 value2 = (output1970, value368, value8)) : Flapjack.WordAlloc.removeDeadStructural input1971 value359 value8 value2 = (output1971, value368, value8) := by
  rw [input1971_def, output1971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1963]
  try dsimp only
  rw [child1970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1963_skip, output1970_skip]
  kernel_rfl

theorem node1972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1972 value368 value8 value2 = (output1972, value369, value8) := by
  rw [input1972_def, output1972_def]
  kernel_rfl

theorem node1973_cond_eq
    (child1971 : Flapjack.WordAlloc.removeDeadStructural input1971 value359 value8 value2 = (output1971, value368, value8))
    (child1972 : Flapjack.WordAlloc.removeDeadStructural input1972 value368 value8 value2 = (output1972, value369, value8)) : Flapjack.WordAlloc.removeDeadStructural input1973 value359 value8 value2 = (output1973, value369, value8) := by
  rw [input1973_def, output1973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1971]
  try dsimp only
  rw [child1972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1971_skip, output1972_skip]
  kernel_rfl

theorem node1974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1974 value369 value8 value2 = (output1974, value369, value8) := by
  rw [input1974_def, output1974_def]
  kernel_rfl

theorem node1975_cond_eq
    (child1973 : Flapjack.WordAlloc.removeDeadStructural input1973 value359 value8 value2 = (output1973, value369, value8))
    (child1974 : Flapjack.WordAlloc.removeDeadStructural input1974 value369 value8 value2 = (output1974, value369, value8)) : Flapjack.WordAlloc.removeDeadStructural input1975 value359 value8 value2 = (output1975, value369, value8) := by
  rw [input1975_def, output1975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1973]
  try dsimp only
  rw [child1974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1973_skip, output1974_skip]
  kernel_rfl

theorem node1976_cond_eq
    (child1962 : Flapjack.WordAlloc.removeDeadStructural input1962 value359 value8 value2 = (output1962, value367, value1))
    (child1975 : Flapjack.WordAlloc.removeDeadStructural input1975 value359 value8 value2 = (output1975, value369, value8)) : Flapjack.WordAlloc.removeDeadStructural input1976 value359 value8 value2 = (output1976, value371, value1) := by
  rw [input1976_def, output1976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1962]
  try dsimp only
  rw [child1975]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1962_skip, output1975_skip]
  kernel_rfl

theorem node1977_cond_eq
    (child1921 : Flapjack.WordAlloc.removeDeadStructural input1921 value359 value8 value2 = (output1921, value359, value8))
    (child1976 : Flapjack.WordAlloc.removeDeadStructural input1976 value359 value8 value2 = (output1976, value371, value1)) : Flapjack.WordAlloc.removeDeadStructural input1977 value359 value8 value2 = (output1977, value371, value1) := by
  rw [input1977_def, output1977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1921]
  try dsimp only
  rw [child1976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1921_skip, output1976_skip]
  kernel_rfl

theorem node1978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1978 value371 value1 value2 = (output1978, value369, value1) := by
  rw [input1978_def, output1978_def]
  kernel_rfl

theorem node1979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1979 value369 value1 value2 = (output1979, value372, value1) := by
  rw [input1979_def, output1979_def]
  kernel_rfl

theorem node1980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1980 value372 value1 value2 = (output1980, value372, value1) := by
  rw [input1980_def, output1980_def]
  kernel_rfl

theorem node1981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1981 value372 value1 value2 = (output1981, value372, value1) := by
  rw [input1981_def, output1981_def]
  kernel_rfl

theorem node1982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1982 value372 value1 value2 = (output1982, value372, value1) := by
  rw [input1982_def, output1982_def]
  kernel_rfl

theorem node1983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1983 value372 value1 value2 = (output1983, value372, value1) := by
  rw [input1983_def, output1983_def]
  kernel_rfl

theorem node1984_cond_eq
    (child1982 : Flapjack.WordAlloc.removeDeadStructural input1982 value372 value1 value2 = (output1982, value372, value1))
    (child1983 : Flapjack.WordAlloc.removeDeadStructural input1983 value372 value1 value2 = (output1983, value372, value1)) : Flapjack.WordAlloc.removeDeadStructural input1984 value372 value1 value2 = (output1984, value372, value1) := by
  rw [input1984_def, output1984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1982]
  try dsimp only
  rw [child1983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1982_skip, output1983_skip]
  kernel_rfl

theorem node1985_cond_eq
    (child1981 : Flapjack.WordAlloc.removeDeadStructural input1981 value372 value1 value2 = (output1981, value372, value1))
    (child1984 : Flapjack.WordAlloc.removeDeadStructural input1984 value372 value1 value2 = (output1984, value372, value1)) : Flapjack.WordAlloc.removeDeadStructural input1985 value372 value1 value2 = (output1985, value372, value1) := by
  rw [input1985_def, output1985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1981]
  try dsimp only
  rw [child1984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1981_skip, output1984_skip]
  kernel_rfl

theorem node1986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1986 value372 value1 value2 = (output1986, value372, value1) := by
  rw [input1986_def, output1986_def]
  kernel_rfl

theorem node1987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1987 value372 value1 value2 = (output1987, value372, value1) := by
  rw [input1987_def, output1987_def]
  kernel_rfl

theorem node1988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1988 value372 value1 value2 = (output1988, value372, value1) := by
  rw [input1988_def, output1988_def]
  kernel_rfl

theorem node1989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1989 value372 value1 value2 = (output1989, value367, value1) := by
  rw [input1989_def, output1989_def]
  kernel_rfl

theorem node1990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1990 value367 value1 value2 = (output1990, value367, value1) := by
  rw [input1990_def, output1990_def]
  kernel_rfl

theorem node1991_cond_eq
    (child1989 : Flapjack.WordAlloc.removeDeadStructural input1989 value372 value1 value2 = (output1989, value367, value1))
    (child1990 : Flapjack.WordAlloc.removeDeadStructural input1990 value367 value1 value2 = (output1990, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1991 value372 value1 value2 = (output1991, value367, value1) := by
  rw [input1991_def, output1991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1989]
  try dsimp only
  rw [child1990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1989_skip, output1990_skip]
  kernel_rfl

theorem node1992_cond_eq
    (child1988 : Flapjack.WordAlloc.removeDeadStructural input1988 value372 value1 value2 = (output1988, value372, value1))
    (child1991 : Flapjack.WordAlloc.removeDeadStructural input1991 value372 value1 value2 = (output1991, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1992 value372 value1 value2 = (output1992, value367, value1) := by
  rw [input1992_def, output1992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1988]
  try dsimp only
  rw [child1991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1988_skip, output1991_skip]
  kernel_rfl

theorem node1993_cond_eq
    (child1987 : Flapjack.WordAlloc.removeDeadStructural input1987 value372 value1 value2 = (output1987, value372, value1))
    (child1992 : Flapjack.WordAlloc.removeDeadStructural input1992 value372 value1 value2 = (output1992, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1993 value372 value1 value2 = (output1993, value367, value1) := by
  rw [input1993_def, output1993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1987]
  try dsimp only
  rw [child1992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1987_skip, output1992_skip]
  kernel_rfl

theorem node1994_cond_eq
    (child1986 : Flapjack.WordAlloc.removeDeadStructural input1986 value372 value1 value2 = (output1986, value372, value1))
    (child1993 : Flapjack.WordAlloc.removeDeadStructural input1993 value372 value1 value2 = (output1993, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input1994 value372 value1 value2 = (output1994, value367, value1) := by
  rw [input1994_def, output1994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1986]
  try dsimp only
  rw [child1993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1986_skip, output1993_skip]
  kernel_rfl

theorem node1995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1995 value367 value1 value2 = (output1995, value373, value1) := by
  rw [input1995_def, output1995_def]
  kernel_rfl

theorem node1996_cond_eq
    (child1994 : Flapjack.WordAlloc.removeDeadStructural input1994 value372 value1 value2 = (output1994, value367, value1))
    (child1995 : Flapjack.WordAlloc.removeDeadStructural input1995 value367 value1 value2 = (output1995, value373, value1)) : Flapjack.WordAlloc.removeDeadStructural input1996 value372 value1 value2 = (output1996, value373, value1) := by
  rw [input1996_def, output1996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1994]
  try dsimp only
  rw [child1995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1994_skip, output1995_skip]
  kernel_rfl

theorem node1997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1997 value373 value1 value2 = (output1997, value374, value1) := by
  rw [input1997_def, output1997_def]
  kernel_rfl

theorem node1998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1998 value374 value1 value2 = (output1998, value375, value1) := by
  rw [input1998_def, output1998_def]
  kernel_rfl

theorem node1999_cond_eq
    (child1997 : Flapjack.WordAlloc.removeDeadStructural input1997 value373 value1 value2 = (output1997, value374, value1))
    (child1998 : Flapjack.WordAlloc.removeDeadStructural input1998 value374 value1 value2 = (output1998, value375, value1)) : Flapjack.WordAlloc.removeDeadStructural input1999 value373 value1 value2 = (output1999, value375, value1) := by
  rw [input1999_def, output1999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1997]
  try dsimp only
  rw [child1998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1997_skip, output1998_skip]
  kernel_rfl

theorem node2000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2000 value375 value1 value2 = (output2000, value373, value1) := by
  rw [input2000_def, output2000_def]
  kernel_rfl

theorem node2001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2001 value373 value1 value2 = (output2001, value373, value1) := by
  rw [input2001_def, output2001_def]
  kernel_rfl

theorem node2002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2002 value373 value1 value2 = (output2002, value376, value1) := by
  rw [input2002_def, output2002_def]
  kernel_rfl

theorem node2003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2003 value376 value1 value2 = (output2003, value376, value1) := by
  rw [input2003_def, output2003_def]
  kernel_rfl

theorem node2004_cond_eq
    (child2002 : Flapjack.WordAlloc.removeDeadStructural input2002 value373 value1 value2 = (output2002, value376, value1))
    (child2003 : Flapjack.WordAlloc.removeDeadStructural input2003 value376 value1 value2 = (output2003, value376, value1)) : Flapjack.WordAlloc.removeDeadStructural input2004 value373 value1 value2 = (output2004, value376, value1) := by
  rw [input2004_def, output2004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2002]
  try dsimp only
  rw [child2003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2002_skip, output2003_skip]
  kernel_rfl

theorem node2005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2005 value376 value1 value2 = (output2005, value377, value1) := by
  rw [input2005_def, output2005_def]
  kernel_rfl

theorem node2006_cond_eq
    (child2004 : Flapjack.WordAlloc.removeDeadStructural input2004 value373 value1 value2 = (output2004, value376, value1))
    (child2005 : Flapjack.WordAlloc.removeDeadStructural input2005 value376 value1 value2 = (output2005, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2006 value373 value1 value2 = (output2006, value377, value1) := by
  rw [input2006_def, output2006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2004]
  try dsimp only
  rw [child2005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2004_skip, output2005_skip]
  kernel_rfl

theorem node2007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2007 value377 value1 value2 = (output2007, value377, value1) := by
  rw [input2007_def, output2007_def]
  kernel_rfl

theorem node2008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2008 value377 value1 value2 = (output2008, value377, value1) := by
  rw [input2008_def, output2008_def]
  kernel_rfl

theorem node2009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2009 value377 value1 value2 = (output2009, value377, value1) := by
  rw [input2009_def, output2009_def]
  kernel_rfl

theorem node2010_cond_eq
    (child2008 : Flapjack.WordAlloc.removeDeadStructural input2008 value377 value1 value2 = (output2008, value377, value1))
    (child2009 : Flapjack.WordAlloc.removeDeadStructural input2009 value377 value1 value2 = (output2009, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2010 value377 value1 value2 = (output2010, value377, value1) := by
  rw [input2010_def, output2010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2008]
  try dsimp only
  rw [child2009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2008_skip, output2009_skip]
  kernel_rfl

theorem node2011_cond_eq
    (child2007 : Flapjack.WordAlloc.removeDeadStructural input2007 value377 value1 value2 = (output2007, value377, value1))
    (child2010 : Flapjack.WordAlloc.removeDeadStructural input2010 value377 value1 value2 = (output2010, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2011 value377 value1 value2 = (output2011, value377, value1) := by
  rw [input2011_def, output2011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2007]
  try dsimp only
  rw [child2010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2007_skip, output2010_skip]
  kernel_rfl

theorem node2012_cond_eq
    (child2006 : Flapjack.WordAlloc.removeDeadStructural input2006 value373 value1 value2 = (output2006, value377, value1))
    (child2011 : Flapjack.WordAlloc.removeDeadStructural input2011 value377 value1 value2 = (output2011, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2012 value373 value1 value2 = (output2012, value377, value1) := by
  rw [input2012_def, output2012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2006]
  try dsimp only
  rw [child2011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2006_skip, output2011_skip]
  kernel_rfl

theorem node2013_cond_eq
    (child2001 : Flapjack.WordAlloc.removeDeadStructural input2001 value373 value1 value2 = (output2001, value373, value1))
    (child2012 : Flapjack.WordAlloc.removeDeadStructural input2012 value373 value1 value2 = (output2012, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2013 value373 value1 value2 = (output2013, value377, value1) := by
  rw [input2013_def, output2013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2001]
  try dsimp only
  rw [child2012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2001_skip, output2012_skip]
  kernel_rfl

theorem node2014_cond_eq
    (child2000 : Flapjack.WordAlloc.removeDeadStructural input2000 value375 value1 value2 = (output2000, value373, value1))
    (child2013 : Flapjack.WordAlloc.removeDeadStructural input2013 value373 value1 value2 = (output2013, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2014 value375 value1 value2 = (output2014, value377, value1) := by
  rw [input2014_def, output2014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2000]
  try dsimp only
  rw [child2013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2000_skip, output2013_skip]
  kernel_rfl

theorem node2015_cond_eq
    (child1999 : Flapjack.WordAlloc.removeDeadStructural input1999 value373 value1 value2 = (output1999, value375, value1))
    (child2014 : Flapjack.WordAlloc.removeDeadStructural input2014 value375 value1 value2 = (output2014, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2015 value373 value1 value2 = (output2015, value377, value1) := by
  rw [input2015_def, output2015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1999]
  try dsimp only
  rw [child2014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1999_skip, output2014_skip]
  kernel_rfl

theorem node2016_cond_eq
    (child1996 : Flapjack.WordAlloc.removeDeadStructural input1996 value372 value1 value2 = (output1996, value373, value1))
    (child2015 : Flapjack.WordAlloc.removeDeadStructural input2015 value373 value1 value2 = (output2015, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2016 value372 value1 value2 = (output2016, value377, value1) := by
  rw [input2016_def, output2016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1996]
  try dsimp only
  rw [child2015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1996_skip, output2015_skip]
  kernel_rfl

theorem node2017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2017 value372 value1 value2 = (output2017, value372, value1) := by
  rw [input2017_def, output2017_def]
  kernel_rfl

theorem node2018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2018 value372 value1 value2 = (output2018, value372, value1) := by
  rw [input2018_def, output2018_def]
  kernel_rfl

theorem node2019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2019 value372 value1 value2 = (output2019, value372, value1) := by
  rw [input2019_def, output2019_def]
  kernel_rfl

theorem node2020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2020 value372 value1 value2 = (output2020, value378, value1) := by
  rw [input2020_def, output2020_def]
  kernel_rfl

theorem node2021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2021 value378 value1 value2 = (output2021, value378, value1) := by
  rw [input2021_def, output2021_def]
  kernel_rfl

theorem node2022_cond_eq
    (child2020 : Flapjack.WordAlloc.removeDeadStructural input2020 value372 value1 value2 = (output2020, value378, value1))
    (child2021 : Flapjack.WordAlloc.removeDeadStructural input2021 value378 value1 value2 = (output2021, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input2022 value372 value1 value2 = (output2022, value378, value1) := by
  rw [input2022_def, output2022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2020]
  try dsimp only
  rw [child2021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2020_skip, output2021_skip]
  kernel_rfl

theorem node2023_cond_eq
    (child2019 : Flapjack.WordAlloc.removeDeadStructural input2019 value372 value1 value2 = (output2019, value372, value1))
    (child2022 : Flapjack.WordAlloc.removeDeadStructural input2022 value372 value1 value2 = (output2022, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input2023 value372 value1 value2 = (output2023, value378, value1) := by
  rw [input2023_def, output2023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2019]
  try dsimp only
  rw [child2022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2019_skip, output2022_skip]
  kernel_rfl

theorem node2024_cond_eq
    (child2018 : Flapjack.WordAlloc.removeDeadStructural input2018 value372 value1 value2 = (output2018, value372, value1))
    (child2023 : Flapjack.WordAlloc.removeDeadStructural input2023 value372 value1 value2 = (output2023, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input2024 value372 value1 value2 = (output2024, value378, value1) := by
  rw [input2024_def, output2024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2018]
  try dsimp only
  rw [child2023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2018_skip, output2023_skip]
  kernel_rfl

theorem node2025_cond_eq
    (child2017 : Flapjack.WordAlloc.removeDeadStructural input2017 value372 value1 value2 = (output2017, value372, value1))
    (child2024 : Flapjack.WordAlloc.removeDeadStructural input2024 value372 value1 value2 = (output2024, value378, value1)) : Flapjack.WordAlloc.removeDeadStructural input2025 value372 value1 value2 = (output2025, value378, value1) := by
  rw [input2025_def, output2025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2017]
  try dsimp only
  rw [child2024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2017_skip, output2024_skip]
  kernel_rfl

theorem node2026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2026 value378 value1 value2 = (output2026, value379, value1) := by
  rw [input2026_def, output2026_def]
  kernel_rfl

theorem node2027_cond_eq
    (child2025 : Flapjack.WordAlloc.removeDeadStructural input2025 value372 value1 value2 = (output2025, value378, value1))
    (child2026 : Flapjack.WordAlloc.removeDeadStructural input2026 value378 value1 value2 = (output2026, value379, value1)) : Flapjack.WordAlloc.removeDeadStructural input2027 value372 value1 value2 = (output2027, value379, value1) := by
  rw [input2027_def, output2027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2025]
  try dsimp only
  rw [child2026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2025_skip, output2026_skip]
  kernel_rfl

theorem node2028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2028 value379 value1 value2 = (output2028, value379, value1) := by
  rw [input2028_def, output2028_def]
  kernel_rfl

theorem node2029_cond_eq
    (child2027 : Flapjack.WordAlloc.removeDeadStructural input2027 value372 value1 value2 = (output2027, value379, value1))
    (child2028 : Flapjack.WordAlloc.removeDeadStructural input2028 value379 value1 value2 = (output2028, value379, value1)) : Flapjack.WordAlloc.removeDeadStructural input2029 value372 value1 value2 = (output2029, value379, value1) := by
  rw [input2029_def, output2029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2027]
  try dsimp only
  rw [child2028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2027_skip, output2028_skip]
  kernel_rfl

theorem node2030_cond_eq
    (child2016 : Flapjack.WordAlloc.removeDeadStructural input2016 value372 value1 value2 = (output2016, value377, value1))
    (child2029 : Flapjack.WordAlloc.removeDeadStructural input2029 value372 value1 value2 = (output2029, value379, value1)) : Flapjack.WordAlloc.removeDeadStructural input2030 value372 value1 value2 = (output2030, value381, value1) := by
  rw [input2030_def, output2030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2016]
  try dsimp only
  rw [child2029]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2016_skip, output2029_skip]
  kernel_rfl

theorem node2031_cond_eq
    (child1985 : Flapjack.WordAlloc.removeDeadStructural input1985 value372 value1 value2 = (output1985, value372, value1))
    (child2030 : Flapjack.WordAlloc.removeDeadStructural input2030 value372 value1 value2 = (output2030, value381, value1)) : Flapjack.WordAlloc.removeDeadStructural input2031 value372 value1 value2 = (output2031, value381, value1) := by
  rw [input2031_def, output2031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1985]
  try dsimp only
  rw [child2030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1985_skip, output2030_skip]
  kernel_rfl

theorem node2032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2032 value381 value1 value2 = (output2032, value379, value1) := by
  rw [input2032_def, output2032_def]
  kernel_rfl

theorem node2033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2033 value379 value1 value2 = (output2033, value382, value1) := by
  rw [input2033_def, output2033_def]
  kernel_rfl

theorem node2034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2034 value382 value1 value2 = (output2034, value382, value1) := by
  rw [input2034_def, output2034_def]
  kernel_rfl

theorem node2035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2035 value382 value1 value2 = (output2035, value382, value1) := by
  rw [input2035_def, output2035_def]
  kernel_rfl

theorem node2036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2036 value382 value1 value2 = (output2036, value382, value1) := by
  rw [input2036_def, output2036_def]
  kernel_rfl

theorem node2037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2037 value382 value1 value2 = (output2037, value382, value1) := by
  rw [input2037_def, output2037_def]
  kernel_rfl

theorem node2038_cond_eq
    (child2036 : Flapjack.WordAlloc.removeDeadStructural input2036 value382 value1 value2 = (output2036, value382, value1))
    (child2037 : Flapjack.WordAlloc.removeDeadStructural input2037 value382 value1 value2 = (output2037, value382, value1)) : Flapjack.WordAlloc.removeDeadStructural input2038 value382 value1 value2 = (output2038, value382, value1) := by
  rw [input2038_def, output2038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2036]
  try dsimp only
  rw [child2037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2036_skip, output2037_skip]
  kernel_rfl

theorem node2039_cond_eq
    (child2035 : Flapjack.WordAlloc.removeDeadStructural input2035 value382 value1 value2 = (output2035, value382, value1))
    (child2038 : Flapjack.WordAlloc.removeDeadStructural input2038 value382 value1 value2 = (output2038, value382, value1)) : Flapjack.WordAlloc.removeDeadStructural input2039 value382 value1 value2 = (output2039, value382, value1) := by
  rw [input2039_def, output2039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2035]
  try dsimp only
  rw [child2038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2035_skip, output2038_skip]
  kernel_rfl

theorem node2040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2040 value382 value1 value2 = (output2040, value382, value1) := by
  rw [input2040_def, output2040_def]
  kernel_rfl

theorem node2041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2041 value382 value1 value2 = (output2041, value382, value1) := by
  rw [input2041_def, output2041_def]
  kernel_rfl

theorem node2042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2042 value382 value1 value2 = (output2042, value382, value1) := by
  rw [input2042_def, output2042_def]
  kernel_rfl

theorem node2043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2043 value382 value1 value2 = (output2043, value377, value1) := by
  rw [input2043_def, output2043_def]
  kernel_rfl

theorem node2044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2044 value377 value1 value2 = (output2044, value377, value1) := by
  rw [input2044_def, output2044_def]
  kernel_rfl

theorem node2045_cond_eq
    (child2043 : Flapjack.WordAlloc.removeDeadStructural input2043 value382 value1 value2 = (output2043, value377, value1))
    (child2044 : Flapjack.WordAlloc.removeDeadStructural input2044 value377 value1 value2 = (output2044, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2045 value382 value1 value2 = (output2045, value377, value1) := by
  rw [input2045_def, output2045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2043]
  try dsimp only
  rw [child2044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2043_skip, output2044_skip]
  kernel_rfl

theorem node2046_cond_eq
    (child2042 : Flapjack.WordAlloc.removeDeadStructural input2042 value382 value1 value2 = (output2042, value382, value1))
    (child2045 : Flapjack.WordAlloc.removeDeadStructural input2045 value382 value1 value2 = (output2045, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2046 value382 value1 value2 = (output2046, value377, value1) := by
  rw [input2046_def, output2046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2042]
  try dsimp only
  rw [child2045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2042_skip, output2045_skip]
  kernel_rfl

theorem node2047_cond_eq
    (child2041 : Flapjack.WordAlloc.removeDeadStructural input2041 value382 value1 value2 = (output2041, value382, value1))
    (child2046 : Flapjack.WordAlloc.removeDeadStructural input2046 value382 value1 value2 = (output2046, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input2047 value382 value1 value2 = (output2047, value377, value1) := by
  rw [input2047_def, output2047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2041]
  try dsimp only
  rw [child2046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2041_skip, output2046_skip]
  kernel_rfl

#print axioms node2047_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
