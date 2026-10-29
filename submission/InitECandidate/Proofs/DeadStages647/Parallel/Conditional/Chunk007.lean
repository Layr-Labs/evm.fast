import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages647.Parallel.Data.Chunk007
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages647.Parallel
theorem node1792_cond_eq
    (child1790 : Flapjack.WordAlloc.removeDeadStructural input1790 value995 value1 value2 = (output1790, value997, value1))
    (child1791 : Flapjack.WordAlloc.removeDeadStructural input1791 value997 value1 value2 = (output1791, value998, value1)) : Flapjack.WordAlloc.removeDeadStructural input1792 value995 value1 value2 = (output1792, value998, value1) := by
  rw [input1792_def, output1792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1790]
  try dsimp only
  rw [child1791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1790_skip, output1791_skip]
  kernel_rfl

theorem node1793_cond_eq
    (child1787 : Flapjack.WordAlloc.removeDeadStructural input1787 value993 value1 value2 = (output1787, value995, value1))
    (child1792 : Flapjack.WordAlloc.removeDeadStructural input1792 value995 value1 value2 = (output1792, value998, value1)) : Flapjack.WordAlloc.removeDeadStructural input1793 value993 value1 value2 = (output1793, value998, value1) := by
  rw [input1793_def, output1793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1787]
  try dsimp only
  rw [child1792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1787_skip, output1792_skip]
  kernel_rfl

theorem node1794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1794 value998 value1 value2 = (output1794, value999, value1) := by
  rw [input1794_def, output1794_def]
  kernel_rfl

theorem node1795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1795 value999 value1 value2 = (output1795, value1000, value1) := by
  rw [input1795_def, output1795_def]
  kernel_rfl

theorem node1796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1796 value1000 value1 value2 = (output1796, value1001, value1) := by
  rw [input1796_def, output1796_def]
  kernel_rfl

theorem node1797_cond_eq
    (child1795 : Flapjack.WordAlloc.removeDeadStructural input1795 value999 value1 value2 = (output1795, value1000, value1))
    (child1796 : Flapjack.WordAlloc.removeDeadStructural input1796 value1000 value1 value2 = (output1796, value1001, value1)) : Flapjack.WordAlloc.removeDeadStructural input1797 value999 value1 value2 = (output1797, value1001, value1) := by
  rw [input1797_def, output1797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1795]
  try dsimp only
  rw [child1796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1795_skip, output1796_skip]
  kernel_rfl

theorem node1798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1798 value1001 value1 value2 = (output1798, value1002, value1) := by
  rw [input1798_def, output1798_def]
  kernel_rfl

theorem node1799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1799 value1002 value1 value2 = (output1799, value1003, value1) := by
  rw [input1799_def, output1799_def]
  kernel_rfl

theorem node1800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1800 value1003 value1 value2 = (output1800, value1004, value1) := by
  rw [input1800_def, output1800_def]
  kernel_rfl

theorem node1801_cond_eq
    (child1799 : Flapjack.WordAlloc.removeDeadStructural input1799 value1002 value1 value2 = (output1799, value1003, value1))
    (child1800 : Flapjack.WordAlloc.removeDeadStructural input1800 value1003 value1 value2 = (output1800, value1004, value1)) : Flapjack.WordAlloc.removeDeadStructural input1801 value1002 value1 value2 = (output1801, value1004, value1) := by
  rw [input1801_def, output1801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1799]
  try dsimp only
  rw [child1800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1799_skip, output1800_skip]
  kernel_rfl

theorem node1802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1802 value1004 value1 value2 = (output1802, value1005, value1) := by
  rw [input1802_def, output1802_def]
  kernel_rfl

theorem node1803_cond_eq
    (child1801 : Flapjack.WordAlloc.removeDeadStructural input1801 value1002 value1 value2 = (output1801, value1004, value1))
    (child1802 : Flapjack.WordAlloc.removeDeadStructural input1802 value1004 value1 value2 = (output1802, value1005, value1)) : Flapjack.WordAlloc.removeDeadStructural input1803 value1002 value1 value2 = (output1803, value1005, value1) := by
  rw [input1803_def, output1803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1801]
  try dsimp only
  rw [child1802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1801_skip, output1802_skip]
  kernel_rfl

theorem node1804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1804 value1005 value1 value2 = (output1804, value1006, value1) := by
  rw [input1804_def, output1804_def]
  kernel_rfl

theorem node1805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1805 value1006 value1 value2 = (output1805, value1007, value1) := by
  rw [input1805_def, output1805_def]
  kernel_rfl

theorem node1806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1806 value1007 value1 value2 = (output1806, value1008, value1) := by
  rw [input1806_def, output1806_def]
  kernel_rfl

theorem node1807_cond_eq
    (child1805 : Flapjack.WordAlloc.removeDeadStructural input1805 value1006 value1 value2 = (output1805, value1007, value1))
    (child1806 : Flapjack.WordAlloc.removeDeadStructural input1806 value1007 value1 value2 = (output1806, value1008, value1)) : Flapjack.WordAlloc.removeDeadStructural input1807 value1006 value1 value2 = (output1807, value1008, value1) := by
  rw [input1807_def, output1807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1805]
  try dsimp only
  rw [child1806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1805_skip, output1806_skip]
  kernel_rfl

theorem node1808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1808 value1008 value1 value2 = (output1808, value1009, value1) := by
  rw [input1808_def, output1808_def]
  kernel_rfl

theorem node1809_cond_eq
    (child1807 : Flapjack.WordAlloc.removeDeadStructural input1807 value1006 value1 value2 = (output1807, value1008, value1))
    (child1808 : Flapjack.WordAlloc.removeDeadStructural input1808 value1008 value1 value2 = (output1808, value1009, value1)) : Flapjack.WordAlloc.removeDeadStructural input1809 value1006 value1 value2 = (output1809, value1009, value1) := by
  rw [input1809_def, output1809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1807]
  try dsimp only
  rw [child1808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1807_skip, output1808_skip]
  kernel_rfl

theorem node1810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1810 value1009 value1 value2 = (output1810, value1010, value1) := by
  rw [input1810_def, output1810_def]
  kernel_rfl

theorem node1811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1811 value1010 value1 value2 = (output1811, value1011, value1) := by
  rw [input1811_def, output1811_def]
  kernel_rfl

theorem node1812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1812 value1011 value1 value2 = (output1812, value1012, value1) := by
  rw [input1812_def, output1812_def]
  kernel_rfl

theorem node1813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1813 value1012 value1 value2 = (output1813, value1013, value1) := by
  rw [input1813_def, output1813_def]
  kernel_rfl

theorem node1814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1814 value1013 value1 value2 = (output1814, value1014, value1) := by
  rw [input1814_def, output1814_def]
  kernel_rfl

theorem node1815_cond_eq
    (child1813 : Flapjack.WordAlloc.removeDeadStructural input1813 value1012 value1 value2 = (output1813, value1013, value1))
    (child1814 : Flapjack.WordAlloc.removeDeadStructural input1814 value1013 value1 value2 = (output1814, value1014, value1)) : Flapjack.WordAlloc.removeDeadStructural input1815 value1012 value1 value2 = (output1815, value1014, value1) := by
  rw [input1815_def, output1815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1813]
  try dsimp only
  rw [child1814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1813_skip, output1814_skip]
  kernel_rfl

theorem node1816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1816 value1014 value1 value2 = (output1816, value1015, value1) := by
  rw [input1816_def, output1816_def]
  kernel_rfl

theorem node1817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1817 value1015 value1 value2 = (output1817, value1016, value1) := by
  rw [input1817_def, output1817_def]
  kernel_rfl

theorem node1818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1818 value1016 value1 value2 = (output1818, value1017, value1) := by
  rw [input1818_def, output1818_def]
  kernel_rfl

theorem node1819_cond_eq
    (child1817 : Flapjack.WordAlloc.removeDeadStructural input1817 value1015 value1 value2 = (output1817, value1016, value1))
    (child1818 : Flapjack.WordAlloc.removeDeadStructural input1818 value1016 value1 value2 = (output1818, value1017, value1)) : Flapjack.WordAlloc.removeDeadStructural input1819 value1015 value1 value2 = (output1819, value1017, value1) := by
  rw [input1819_def, output1819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1817]
  try dsimp only
  rw [child1818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1817_skip, output1818_skip]
  kernel_rfl

theorem node1820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1820 value1017 value1 value2 = (output1820, value1018, value1) := by
  rw [input1820_def, output1820_def]
  kernel_rfl

theorem node1821_cond_eq
    (child1819 : Flapjack.WordAlloc.removeDeadStructural input1819 value1015 value1 value2 = (output1819, value1017, value1))
    (child1820 : Flapjack.WordAlloc.removeDeadStructural input1820 value1017 value1 value2 = (output1820, value1018, value1)) : Flapjack.WordAlloc.removeDeadStructural input1821 value1015 value1 value2 = (output1821, value1018, value1) := by
  rw [input1821_def, output1821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1819]
  try dsimp only
  rw [child1820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1819_skip, output1820_skip]
  kernel_rfl

theorem node1822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1822 value1018 value1 value2 = (output1822, value1019, value1) := by
  rw [input1822_def, output1822_def]
  kernel_rfl

theorem node1823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1823 value1019 value1 value2 = (output1823, value1020, value1) := by
  rw [input1823_def, output1823_def]
  kernel_rfl

theorem node1824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1824 value1020 value1 value2 = (output1824, value1021, value1) := by
  rw [input1824_def, output1824_def]
  kernel_rfl

theorem node1825_cond_eq
    (child1823 : Flapjack.WordAlloc.removeDeadStructural input1823 value1019 value1 value2 = (output1823, value1020, value1))
    (child1824 : Flapjack.WordAlloc.removeDeadStructural input1824 value1020 value1 value2 = (output1824, value1021, value1)) : Flapjack.WordAlloc.removeDeadStructural input1825 value1019 value1 value2 = (output1825, value1021, value1) := by
  rw [input1825_def, output1825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1823]
  try dsimp only
  rw [child1824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1823_skip, output1824_skip]
  kernel_rfl

theorem node1826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1826 value1021 value1 value2 = (output1826, value1022, value1) := by
  rw [input1826_def, output1826_def]
  kernel_rfl

theorem node1827_cond_eq
    (child1825 : Flapjack.WordAlloc.removeDeadStructural input1825 value1019 value1 value2 = (output1825, value1021, value1))
    (child1826 : Flapjack.WordAlloc.removeDeadStructural input1826 value1021 value1 value2 = (output1826, value1022, value1)) : Flapjack.WordAlloc.removeDeadStructural input1827 value1019 value1 value2 = (output1827, value1022, value1) := by
  rw [input1827_def, output1827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1825]
  try dsimp only
  rw [child1826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1825_skip, output1826_skip]
  kernel_rfl

theorem node1828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1828 value1022 value1 value2 = (output1828, value1023, value1) := by
  rw [input1828_def, output1828_def]
  kernel_rfl

theorem node1829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1829 value1023 value1 value2 = (output1829, value1024, value1) := by
  rw [input1829_def, output1829_def]
  kernel_rfl

theorem node1830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1830 value1024 value1 value2 = (output1830, value1024, value1) := by
  rw [input1830_def, output1830_def]
  kernel_rfl

theorem node1831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1831 value1024 value1 value2 = (output1831, value1024, value1) := by
  rw [input1831_def, output1831_def]
  kernel_rfl

theorem node1832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1832 value1024 value1 value2 = (output1832, value1025, value1) := by
  rw [input1832_def, output1832_def]
  kernel_rfl

theorem node1833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1833 value1025 value1 value2 = (output1833, value1026, value1) := by
  rw [input1833_def, output1833_def]
  kernel_rfl

theorem node1834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1834 value1026 value1 value2 = (output1834, value1027, value1) := by
  rw [input1834_def, output1834_def]
  kernel_rfl

theorem node1835_cond_eq
    (child1833 : Flapjack.WordAlloc.removeDeadStructural input1833 value1025 value1 value2 = (output1833, value1026, value1))
    (child1834 : Flapjack.WordAlloc.removeDeadStructural input1834 value1026 value1 value2 = (output1834, value1027, value1)) : Flapjack.WordAlloc.removeDeadStructural input1835 value1025 value1 value2 = (output1835, value1027, value1) := by
  rw [input1835_def, output1835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1833]
  try dsimp only
  rw [child1834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1833_skip, output1834_skip]
  kernel_rfl

theorem node1836_cond_eq
    (child1832 : Flapjack.WordAlloc.removeDeadStructural input1832 value1024 value1 value2 = (output1832, value1025, value1))
    (child1835 : Flapjack.WordAlloc.removeDeadStructural input1835 value1025 value1 value2 = (output1835, value1027, value1)) : Flapjack.WordAlloc.removeDeadStructural input1836 value1024 value1 value2 = (output1836, value1027, value1) := by
  rw [input1836_def, output1836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1832]
  try dsimp only
  rw [child1835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1832_skip, output1835_skip]
  kernel_rfl

theorem node1837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1837 value1027 value1 value2 = (output1837, value1028, value1) := by
  rw [input1837_def, output1837_def]
  kernel_rfl

theorem node1838_cond_eq
    (child1836 : Flapjack.WordAlloc.removeDeadStructural input1836 value1024 value1 value2 = (output1836, value1027, value1))
    (child1837 : Flapjack.WordAlloc.removeDeadStructural input1837 value1027 value1 value2 = (output1837, value1028, value1)) : Flapjack.WordAlloc.removeDeadStructural input1838 value1024 value1 value2 = (output1838, value1028, value1) := by
  rw [input1838_def, output1838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1836]
  try dsimp only
  rw [child1837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1836_skip, output1837_skip]
  kernel_rfl

theorem node1839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1839 value1028 value1 value2 = (output1839, value1029, value1) := by
  rw [input1839_def, output1839_def]
  kernel_rfl

theorem node1840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1840 value1029 value1 value2 = (output1840, value1030, value1) := by
  rw [input1840_def, output1840_def]
  kernel_rfl

theorem node1841_cond_eq
    (child1839 : Flapjack.WordAlloc.removeDeadStructural input1839 value1028 value1 value2 = (output1839, value1029, value1))
    (child1840 : Flapjack.WordAlloc.removeDeadStructural input1840 value1029 value1 value2 = (output1840, value1030, value1)) : Flapjack.WordAlloc.removeDeadStructural input1841 value1028 value1 value2 = (output1841, value1030, value1) := by
  rw [input1841_def, output1841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1839]
  try dsimp only
  rw [child1840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1839_skip, output1840_skip]
  kernel_rfl

theorem node1842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1842 value1030 value1 value2 = (output1842, value1031, value1) := by
  rw [input1842_def, output1842_def]
  kernel_rfl

theorem node1843_cond_eq
    (child1841 : Flapjack.WordAlloc.removeDeadStructural input1841 value1028 value1 value2 = (output1841, value1030, value1))
    (child1842 : Flapjack.WordAlloc.removeDeadStructural input1842 value1030 value1 value2 = (output1842, value1031, value1)) : Flapjack.WordAlloc.removeDeadStructural input1843 value1028 value1 value2 = (output1843, value1031, value1) := by
  rw [input1843_def, output1843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1841]
  try dsimp only
  rw [child1842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1841_skip, output1842_skip]
  kernel_rfl

theorem node1844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1844 value1031 value1 value2 = (output1844, value1032, value1) := by
  rw [input1844_def, output1844_def]
  kernel_rfl

theorem node1845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1845 value1032 value1 value2 = (output1845, value1033, value1) := by
  rw [input1845_def, output1845_def]
  kernel_rfl

theorem node1846_cond_eq
    (child1844 : Flapjack.WordAlloc.removeDeadStructural input1844 value1031 value1 value2 = (output1844, value1032, value1))
    (child1845 : Flapjack.WordAlloc.removeDeadStructural input1845 value1032 value1 value2 = (output1845, value1033, value1)) : Flapjack.WordAlloc.removeDeadStructural input1846 value1031 value1 value2 = (output1846, value1033, value1) := by
  rw [input1846_def, output1846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1844]
  try dsimp only
  rw [child1845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1844_skip, output1845_skip]
  kernel_rfl

theorem node1847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1847 value1033 value1 value2 = (output1847, value1034, value1) := by
  rw [input1847_def, output1847_def]
  kernel_rfl

theorem node1848_cond_eq
    (child1846 : Flapjack.WordAlloc.removeDeadStructural input1846 value1031 value1 value2 = (output1846, value1033, value1))
    (child1847 : Flapjack.WordAlloc.removeDeadStructural input1847 value1033 value1 value2 = (output1847, value1034, value1)) : Flapjack.WordAlloc.removeDeadStructural input1848 value1031 value1 value2 = (output1848, value1034, value1) := by
  rw [input1848_def, output1848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1846]
  try dsimp only
  rw [child1847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1846_skip, output1847_skip]
  kernel_rfl

theorem node1849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1849 value1034 value1 value2 = (output1849, value1034, value1) := by
  rw [input1849_def, output1849_def]
  kernel_rfl

theorem node1850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1850 value1034 value1 value2 = (output1850, value1034, value1) := by
  rw [input1850_def, output1850_def]
  kernel_rfl

theorem node1851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1851 value1034 value1 value2 = (output1851, value1035, value1) := by
  rw [input1851_def, output1851_def]
  kernel_rfl

theorem node1852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1852 value1035 value1 value2 = (output1852, value1036, value1) := by
  rw [input1852_def, output1852_def]
  kernel_rfl

theorem node1853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1853 value1036 value1 value2 = (output1853, value1037, value1) := by
  rw [input1853_def, output1853_def]
  kernel_rfl

theorem node1854_cond_eq
    (child1852 : Flapjack.WordAlloc.removeDeadStructural input1852 value1035 value1 value2 = (output1852, value1036, value1))
    (child1853 : Flapjack.WordAlloc.removeDeadStructural input1853 value1036 value1 value2 = (output1853, value1037, value1)) : Flapjack.WordAlloc.removeDeadStructural input1854 value1035 value1 value2 = (output1854, value1037, value1) := by
  rw [input1854_def, output1854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1852]
  try dsimp only
  rw [child1853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1852_skip, output1853_skip]
  kernel_rfl

theorem node1855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1855 value1037 value1 value2 = (output1855, value1038, value1) := by
  rw [input1855_def, output1855_def]
  kernel_rfl

theorem node1856_cond_eq
    (child1854 : Flapjack.WordAlloc.removeDeadStructural input1854 value1035 value1 value2 = (output1854, value1037, value1))
    (child1855 : Flapjack.WordAlloc.removeDeadStructural input1855 value1037 value1 value2 = (output1855, value1038, value1)) : Flapjack.WordAlloc.removeDeadStructural input1856 value1035 value1 value2 = (output1856, value1038, value1) := by
  rw [input1856_def, output1856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1854]
  try dsimp only
  rw [child1855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1854_skip, output1855_skip]
  kernel_rfl

theorem node1857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1857 value1038 value1 value2 = (output1857, value1039, value1) := by
  rw [input1857_def, output1857_def]
  kernel_rfl

theorem node1858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1858 value1039 value1 value2 = (output1858, value1040, value1) := by
  rw [input1858_def, output1858_def]
  kernel_rfl

theorem node1859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1859 value1040 value1 value2 = (output1859, value1041, value1) := by
  rw [input1859_def, output1859_def]
  kernel_rfl

theorem node1860_cond_eq
    (child1858 : Flapjack.WordAlloc.removeDeadStructural input1858 value1039 value1 value2 = (output1858, value1040, value1))
    (child1859 : Flapjack.WordAlloc.removeDeadStructural input1859 value1040 value1 value2 = (output1859, value1041, value1)) : Flapjack.WordAlloc.removeDeadStructural input1860 value1039 value1 value2 = (output1860, value1041, value1) := by
  rw [input1860_def, output1860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1858]
  try dsimp only
  rw [child1859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1858_skip, output1859_skip]
  kernel_rfl

theorem node1861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1861 value1041 value1 value2 = (output1861, value1042, value1) := by
  rw [input1861_def, output1861_def]
  kernel_rfl

theorem node1862_cond_eq
    (child1860 : Flapjack.WordAlloc.removeDeadStructural input1860 value1039 value1 value2 = (output1860, value1041, value1))
    (child1861 : Flapjack.WordAlloc.removeDeadStructural input1861 value1041 value1 value2 = (output1861, value1042, value1)) : Flapjack.WordAlloc.removeDeadStructural input1862 value1039 value1 value2 = (output1862, value1042, value1) := by
  rw [input1862_def, output1862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1860]
  try dsimp only
  rw [child1861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1860_skip, output1861_skip]
  kernel_rfl

theorem node1863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1863 value1042 value1 value2 = (output1863, value1043, value1) := by
  rw [input1863_def, output1863_def]
  kernel_rfl

theorem node1864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1864 value1043 value1 value2 = (output1864, value1044, value1) := by
  rw [input1864_def, output1864_def]
  kernel_rfl

theorem node1865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1865 value1044 value1 value2 = (output1865, value1045, value1) := by
  rw [input1865_def, output1865_def]
  kernel_rfl

theorem node1866_cond_eq
    (child1864 : Flapjack.WordAlloc.removeDeadStructural input1864 value1043 value1 value2 = (output1864, value1044, value1))
    (child1865 : Flapjack.WordAlloc.removeDeadStructural input1865 value1044 value1 value2 = (output1865, value1045, value1)) : Flapjack.WordAlloc.removeDeadStructural input1866 value1043 value1 value2 = (output1866, value1045, value1) := by
  rw [input1866_def, output1866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1864]
  try dsimp only
  rw [child1865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1864_skip, output1865_skip]
  kernel_rfl

theorem node1867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1867 value1045 value1 value2 = (output1867, value1046, value1) := by
  rw [input1867_def, output1867_def]
  kernel_rfl

theorem node1868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1868 value1046 value1 value2 = (output1868, value1047, value1) := by
  rw [input1868_def, output1868_def]
  kernel_rfl

theorem node1869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1869 value1047 value1 value2 = (output1869, value1048, value1) := by
  rw [input1869_def, output1869_def]
  kernel_rfl

theorem node1870_cond_eq
    (child1868 : Flapjack.WordAlloc.removeDeadStructural input1868 value1046 value1 value2 = (output1868, value1047, value1))
    (child1869 : Flapjack.WordAlloc.removeDeadStructural input1869 value1047 value1 value2 = (output1869, value1048, value1)) : Flapjack.WordAlloc.removeDeadStructural input1870 value1046 value1 value2 = (output1870, value1048, value1) := by
  rw [input1870_def, output1870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1868]
  try dsimp only
  rw [child1869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1868_skip, output1869_skip]
  kernel_rfl

theorem node1871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1871 value1048 value1 value2 = (output1871, value1049, value1) := by
  rw [input1871_def, output1871_def]
  kernel_rfl

theorem node1872_cond_eq
    (child1870 : Flapjack.WordAlloc.removeDeadStructural input1870 value1046 value1 value2 = (output1870, value1048, value1))
    (child1871 : Flapjack.WordAlloc.removeDeadStructural input1871 value1048 value1 value2 = (output1871, value1049, value1)) : Flapjack.WordAlloc.removeDeadStructural input1872 value1046 value1 value2 = (output1872, value1049, value1) := by
  rw [input1872_def, output1872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1870]
  try dsimp only
  rw [child1871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1870_skip, output1871_skip]
  kernel_rfl

theorem node1873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1873 value1049 value1 value2 = (output1873, value1050, value1) := by
  rw [input1873_def, output1873_def]
  kernel_rfl

theorem node1874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1874 value1050 value1 value2 = (output1874, value1051, value1) := by
  rw [input1874_def, output1874_def]
  kernel_rfl

theorem node1875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1875 value1051 value1 value2 = (output1875, value1052, value1) := by
  rw [input1875_def, output1875_def]
  kernel_rfl

theorem node1876_cond_eq
    (child1874 : Flapjack.WordAlloc.removeDeadStructural input1874 value1050 value1 value2 = (output1874, value1051, value1))
    (child1875 : Flapjack.WordAlloc.removeDeadStructural input1875 value1051 value1 value2 = (output1875, value1052, value1)) : Flapjack.WordAlloc.removeDeadStructural input1876 value1050 value1 value2 = (output1876, value1052, value1) := by
  rw [input1876_def, output1876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1874]
  try dsimp only
  rw [child1875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1874_skip, output1875_skip]
  kernel_rfl

theorem node1877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1877 value1052 value1 value2 = (output1877, value1053, value1) := by
  rw [input1877_def, output1877_def]
  kernel_rfl

theorem node1878_cond_eq
    (child1876 : Flapjack.WordAlloc.removeDeadStructural input1876 value1050 value1 value2 = (output1876, value1052, value1))
    (child1877 : Flapjack.WordAlloc.removeDeadStructural input1877 value1052 value1 value2 = (output1877, value1053, value1)) : Flapjack.WordAlloc.removeDeadStructural input1878 value1050 value1 value2 = (output1878, value1053, value1) := by
  rw [input1878_def, output1878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1876]
  try dsimp only
  rw [child1877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1876_skip, output1877_skip]
  kernel_rfl

theorem node1879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1879 value1053 value1 value2 = (output1879, value1054, value1) := by
  rw [input1879_def, output1879_def]
  kernel_rfl

theorem node1880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1880 value1054 value1 value2 = (output1880, value1055, value1) := by
  rw [input1880_def, output1880_def]
  kernel_rfl

theorem node1881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1881 value1055 value1 value2 = (output1881, value1055, value1) := by
  rw [input1881_def, output1881_def]
  kernel_rfl

theorem node1882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1882 value1055 value1 value2 = (output1882, value1055, value1) := by
  rw [input1882_def, output1882_def]
  kernel_rfl

theorem node1883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1883 value1055 value1 value2 = (output1883, value1056, value1) := by
  rw [input1883_def, output1883_def]
  kernel_rfl

theorem node1884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1884 value1056 value1 value2 = (output1884, value1057, value1) := by
  rw [input1884_def, output1884_def]
  kernel_rfl

theorem node1885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1885 value1057 value1 value2 = (output1885, value1058, value1) := by
  rw [input1885_def, output1885_def]
  kernel_rfl

theorem node1886_cond_eq
    (child1884 : Flapjack.WordAlloc.removeDeadStructural input1884 value1056 value1 value2 = (output1884, value1057, value1))
    (child1885 : Flapjack.WordAlloc.removeDeadStructural input1885 value1057 value1 value2 = (output1885, value1058, value1)) : Flapjack.WordAlloc.removeDeadStructural input1886 value1056 value1 value2 = (output1886, value1058, value1) := by
  rw [input1886_def, output1886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1884]
  try dsimp only
  rw [child1885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1884_skip, output1885_skip]
  kernel_rfl

theorem node1887_cond_eq
    (child1883 : Flapjack.WordAlloc.removeDeadStructural input1883 value1055 value1 value2 = (output1883, value1056, value1))
    (child1886 : Flapjack.WordAlloc.removeDeadStructural input1886 value1056 value1 value2 = (output1886, value1058, value1)) : Flapjack.WordAlloc.removeDeadStructural input1887 value1055 value1 value2 = (output1887, value1058, value1) := by
  rw [input1887_def, output1887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1883]
  try dsimp only
  rw [child1886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1883_skip, output1886_skip]
  kernel_rfl

theorem node1888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1888 value1058 value1 value2 = (output1888, value1059, value1) := by
  rw [input1888_def, output1888_def]
  kernel_rfl

theorem node1889_cond_eq
    (child1887 : Flapjack.WordAlloc.removeDeadStructural input1887 value1055 value1 value2 = (output1887, value1058, value1))
    (child1888 : Flapjack.WordAlloc.removeDeadStructural input1888 value1058 value1 value2 = (output1888, value1059, value1)) : Flapjack.WordAlloc.removeDeadStructural input1889 value1055 value1 value2 = (output1889, value1059, value1) := by
  rw [input1889_def, output1889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1887]
  try dsimp only
  rw [child1888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1887_skip, output1888_skip]
  kernel_rfl

theorem node1890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1890 value1059 value1 value2 = (output1890, value1060, value1) := by
  rw [input1890_def, output1890_def]
  kernel_rfl

theorem node1891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1891 value1060 value1 value2 = (output1891, value1061, value1) := by
  rw [input1891_def, output1891_def]
  kernel_rfl

theorem node1892_cond_eq
    (child1890 : Flapjack.WordAlloc.removeDeadStructural input1890 value1059 value1 value2 = (output1890, value1060, value1))
    (child1891 : Flapjack.WordAlloc.removeDeadStructural input1891 value1060 value1 value2 = (output1891, value1061, value1)) : Flapjack.WordAlloc.removeDeadStructural input1892 value1059 value1 value2 = (output1892, value1061, value1) := by
  rw [input1892_def, output1892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1890]
  try dsimp only
  rw [child1891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1890_skip, output1891_skip]
  kernel_rfl

theorem node1893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1893 value1061 value1 value2 = (output1893, value1062, value1) := by
  rw [input1893_def, output1893_def]
  kernel_rfl

theorem node1894_cond_eq
    (child1892 : Flapjack.WordAlloc.removeDeadStructural input1892 value1059 value1 value2 = (output1892, value1061, value1))
    (child1893 : Flapjack.WordAlloc.removeDeadStructural input1893 value1061 value1 value2 = (output1893, value1062, value1)) : Flapjack.WordAlloc.removeDeadStructural input1894 value1059 value1 value2 = (output1894, value1062, value1) := by
  rw [input1894_def, output1894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1892]
  try dsimp only
  rw [child1893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1892_skip, output1893_skip]
  kernel_rfl

theorem node1895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1895 value1062 value1 value2 = (output1895, value1063, value1) := by
  rw [input1895_def, output1895_def]
  kernel_rfl

theorem node1896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1896 value1063 value1 value2 = (output1896, value1063, value1) := by
  rw [input1896_def, output1896_def]
  kernel_rfl

theorem node1897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1897 value1063 value1 value2 = (output1897, value1063, value1) := by
  rw [input1897_def, output1897_def]
  kernel_rfl

theorem node1898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1898 value1063 value1 value2 = (output1898, value1064, value1) := by
  rw [input1898_def, output1898_def]
  kernel_rfl

theorem node1899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1899 value1064 value1 value2 = (output1899, value1065, value1) := by
  rw [input1899_def, output1899_def]
  kernel_rfl

theorem node1900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1900 value1065 value1 value2 = (output1900, value1066, value1) := by
  rw [input1900_def, output1900_def]
  kernel_rfl

theorem node1901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1901 value1066 value1 value2 = (output1901, value1067, value1) := by
  rw [input1901_def, output1901_def]
  kernel_rfl

theorem node1902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1902 value1067 value1 value2 = (output1902, value1068, value1) := by
  rw [input1902_def, output1902_def]
  kernel_rfl

theorem node1903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1903 value1068 value1 value2 = (output1903, value1069, value1) := by
  rw [input1903_def, output1903_def]
  kernel_rfl

theorem node1904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1904 value1069 value1 value2 = (output1904, value1070, value1) := by
  rw [input1904_def, output1904_def]
  kernel_rfl

theorem node1905_cond_eq
    (child1903 : Flapjack.WordAlloc.removeDeadStructural input1903 value1068 value1 value2 = (output1903, value1069, value1))
    (child1904 : Flapjack.WordAlloc.removeDeadStructural input1904 value1069 value1 value2 = (output1904, value1070, value1)) : Flapjack.WordAlloc.removeDeadStructural input1905 value1068 value1 value2 = (output1905, value1070, value1) := by
  rw [input1905_def, output1905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1903]
  try dsimp only
  rw [child1904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1903_skip, output1904_skip]
  kernel_rfl

theorem node1906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1906 value1070 value1 value2 = (output1906, value1071, value1) := by
  rw [input1906_def, output1906_def]
  kernel_rfl

theorem node1907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1907 value1071 value1 value2 = (output1907, value1072, value1) := by
  rw [input1907_def, output1907_def]
  kernel_rfl

theorem node1908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1908 value1072 value1 value2 = (output1908, value1073, value1) := by
  rw [input1908_def, output1908_def]
  kernel_rfl

theorem node1909_cond_eq
    (child1907 : Flapjack.WordAlloc.removeDeadStructural input1907 value1071 value1 value2 = (output1907, value1072, value1))
    (child1908 : Flapjack.WordAlloc.removeDeadStructural input1908 value1072 value1 value2 = (output1908, value1073, value1)) : Flapjack.WordAlloc.removeDeadStructural input1909 value1071 value1 value2 = (output1909, value1073, value1) := by
  rw [input1909_def, output1909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1907]
  try dsimp only
  rw [child1908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1907_skip, output1908_skip]
  kernel_rfl

theorem node1910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1910 value1073 value1 value2 = (output1910, value1074, value1) := by
  rw [input1910_def, output1910_def]
  kernel_rfl

theorem node1911_cond_eq
    (child1909 : Flapjack.WordAlloc.removeDeadStructural input1909 value1071 value1 value2 = (output1909, value1073, value1))
    (child1910 : Flapjack.WordAlloc.removeDeadStructural input1910 value1073 value1 value2 = (output1910, value1074, value1)) : Flapjack.WordAlloc.removeDeadStructural input1911 value1071 value1 value2 = (output1911, value1074, value1) := by
  rw [input1911_def, output1911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1909]
  try dsimp only
  rw [child1910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1909_skip, output1910_skip]
  kernel_rfl

theorem node1912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1912 value1074 value1 value2 = (output1912, value1075, value1) := by
  rw [input1912_def, output1912_def]
  kernel_rfl

theorem node1913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1913 value1075 value1 value2 = (output1913, value1076, value1) := by
  rw [input1913_def, output1913_def]
  kernel_rfl

theorem node1914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1914 value1076 value1 value2 = (output1914, value1077, value1) := by
  rw [input1914_def, output1914_def]
  kernel_rfl

theorem node1915_cond_eq
    (child1913 : Flapjack.WordAlloc.removeDeadStructural input1913 value1075 value1 value2 = (output1913, value1076, value1))
    (child1914 : Flapjack.WordAlloc.removeDeadStructural input1914 value1076 value1 value2 = (output1914, value1077, value1)) : Flapjack.WordAlloc.removeDeadStructural input1915 value1075 value1 value2 = (output1915, value1077, value1) := by
  rw [input1915_def, output1915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1913]
  try dsimp only
  rw [child1914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1913_skip, output1914_skip]
  kernel_rfl

theorem node1916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1916 value1077 value1 value2 = (output1916, value1078, value1) := by
  rw [input1916_def, output1916_def]
  kernel_rfl

theorem node1917_cond_eq
    (child1915 : Flapjack.WordAlloc.removeDeadStructural input1915 value1075 value1 value2 = (output1915, value1077, value1))
    (child1916 : Flapjack.WordAlloc.removeDeadStructural input1916 value1077 value1 value2 = (output1916, value1078, value1)) : Flapjack.WordAlloc.removeDeadStructural input1917 value1075 value1 value2 = (output1917, value1078, value1) := by
  rw [input1917_def, output1917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1915]
  try dsimp only
  rw [child1916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1915_skip, output1916_skip]
  kernel_rfl

theorem node1918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1918 value1078 value1 value2 = (output1918, value1079, value1) := by
  rw [input1918_def, output1918_def]
  kernel_rfl

theorem node1919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1919 value1079 value1 value2 = (output1919, value1080, value1) := by
  rw [input1919_def, output1919_def]
  kernel_rfl

theorem node1920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1920 value1080 value1 value2 = (output1920, value1080, value1) := by
  rw [input1920_def, output1920_def]
  kernel_rfl

theorem node1921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1921 value1080 value1 value2 = (output1921, value1080, value1) := by
  rw [input1921_def, output1921_def]
  kernel_rfl

theorem node1922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1922 value1080 value1 value2 = (output1922, value1080, value1) := by
  rw [input1922_def, output1922_def]
  kernel_rfl

theorem node1923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1923 value1080 value1 value2 = (output1923, value1080, value1) := by
  rw [input1923_def, output1923_def]
  kernel_rfl

theorem node1924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1924 value1080 value1 value2 = (output1924, value1080, value1) := by
  rw [input1924_def, output1924_def]
  kernel_rfl

theorem node1925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1925 value1080 value1 value2 = (output1925, value1081, value1) := by
  rw [input1925_def, output1925_def]
  kernel_rfl

theorem node1926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1926 value1081 value1 value2 = (output1926, value1082, value1) := by
  rw [input1926_def, output1926_def]
  kernel_rfl

theorem node1927_cond_eq
    (child1925 : Flapjack.WordAlloc.removeDeadStructural input1925 value1080 value1 value2 = (output1925, value1081, value1))
    (child1926 : Flapjack.WordAlloc.removeDeadStructural input1926 value1081 value1 value2 = (output1926, value1082, value1)) : Flapjack.WordAlloc.removeDeadStructural input1927 value1080 value1 value2 = (output1927, value1082, value1) := by
  rw [input1927_def, output1927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1925]
  try dsimp only
  rw [child1926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1925_skip, output1926_skip]
  kernel_rfl

theorem node1928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1928 value1082 value1 value2 = (output1928, value1083, value1) := by
  rw [input1928_def, output1928_def]
  kernel_rfl

theorem node1929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1929 value1083 value1 value2 = (output1929, value1084, value1) := by
  rw [input1929_def, output1929_def]
  kernel_rfl

theorem node1930_cond_eq
    (child1928 : Flapjack.WordAlloc.removeDeadStructural input1928 value1082 value1 value2 = (output1928, value1083, value1))
    (child1929 : Flapjack.WordAlloc.removeDeadStructural input1929 value1083 value1 value2 = (output1929, value1084, value1)) : Flapjack.WordAlloc.removeDeadStructural input1930 value1082 value1 value2 = (output1930, value1084, value1) := by
  rw [input1930_def, output1930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1928]
  try dsimp only
  rw [child1929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1928_skip, output1929_skip]
  kernel_rfl

theorem node1931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1931 value1084 value1 value2 = (output1931, value1085, value1) := by
  rw [input1931_def, output1931_def]
  kernel_rfl

theorem node1932_cond_eq
    (child1930 : Flapjack.WordAlloc.removeDeadStructural input1930 value1082 value1 value2 = (output1930, value1084, value1))
    (child1931 : Flapjack.WordAlloc.removeDeadStructural input1931 value1084 value1 value2 = (output1931, value1085, value1)) : Flapjack.WordAlloc.removeDeadStructural input1932 value1082 value1 value2 = (output1932, value1085, value1) := by
  rw [input1932_def, output1932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1930]
  try dsimp only
  rw [child1931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1930_skip, output1931_skip]
  kernel_rfl

theorem node1933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1933 value1085 value1 value2 = (output1933, value1086, value1) := by
  rw [input1933_def, output1933_def]
  kernel_rfl

theorem node1934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1934 value1086 value1 value2 = (output1934, value1087, value1) := by
  rw [input1934_def, output1934_def]
  kernel_rfl

theorem node1935_cond_eq
    (child1933 : Flapjack.WordAlloc.removeDeadStructural input1933 value1085 value1 value2 = (output1933, value1086, value1))
    (child1934 : Flapjack.WordAlloc.removeDeadStructural input1934 value1086 value1 value2 = (output1934, value1087, value1)) : Flapjack.WordAlloc.removeDeadStructural input1935 value1085 value1 value2 = (output1935, value1087, value1) := by
  rw [input1935_def, output1935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1933]
  try dsimp only
  rw [child1934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1933_skip, output1934_skip]
  kernel_rfl

theorem node1936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1936 value1087 value1 value2 = (output1936, value1088, value1) := by
  rw [input1936_def, output1936_def]
  kernel_rfl

theorem node1937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1937 value1088 value1 value2 = (output1937, value1089, value1) := by
  rw [input1937_def, output1937_def]
  kernel_rfl

theorem node1938_cond_eq
    (child1936 : Flapjack.WordAlloc.removeDeadStructural input1936 value1087 value1 value2 = (output1936, value1088, value1))
    (child1937 : Flapjack.WordAlloc.removeDeadStructural input1937 value1088 value1 value2 = (output1937, value1089, value1)) : Flapjack.WordAlloc.removeDeadStructural input1938 value1087 value1 value2 = (output1938, value1089, value1) := by
  rw [input1938_def, output1938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1936]
  try dsimp only
  rw [child1937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1936_skip, output1937_skip]
  kernel_rfl

theorem node1939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1939 value1089 value1 value2 = (output1939, value1090, value1) := by
  rw [input1939_def, output1939_def]
  kernel_rfl

theorem node1940_cond_eq
    (child1938 : Flapjack.WordAlloc.removeDeadStructural input1938 value1087 value1 value2 = (output1938, value1089, value1))
    (child1939 : Flapjack.WordAlloc.removeDeadStructural input1939 value1089 value1 value2 = (output1939, value1090, value1)) : Flapjack.WordAlloc.removeDeadStructural input1940 value1087 value1 value2 = (output1940, value1090, value1) := by
  rw [input1940_def, output1940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1938]
  try dsimp only
  rw [child1939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1938_skip, output1939_skip]
  kernel_rfl

theorem node1941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1941 value1090 value1 value2 = (output1941, value1091, value1) := by
  rw [input1941_def, output1941_def]
  kernel_rfl

theorem node1942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1942 value1091 value1 value2 = (output1942, value1092, value1) := by
  rw [input1942_def, output1942_def]
  kernel_rfl

theorem node1943_cond_eq
    (child1941 : Flapjack.WordAlloc.removeDeadStructural input1941 value1090 value1 value2 = (output1941, value1091, value1))
    (child1942 : Flapjack.WordAlloc.removeDeadStructural input1942 value1091 value1 value2 = (output1942, value1092, value1)) : Flapjack.WordAlloc.removeDeadStructural input1943 value1090 value1 value2 = (output1943, value1092, value1) := by
  rw [input1943_def, output1943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1941]
  try dsimp only
  rw [child1942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1941_skip, output1942_skip]
  kernel_rfl

theorem node1944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1944 value1092 value1 value2 = (output1944, value1093, value1) := by
  rw [input1944_def, output1944_def]
  kernel_rfl

theorem node1945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1945 value1093 value1 value2 = (output1945, value1094, value1) := by
  rw [input1945_def, output1945_def]
  kernel_rfl

theorem node1946_cond_eq
    (child1944 : Flapjack.WordAlloc.removeDeadStructural input1944 value1092 value1 value2 = (output1944, value1093, value1))
    (child1945 : Flapjack.WordAlloc.removeDeadStructural input1945 value1093 value1 value2 = (output1945, value1094, value1)) : Flapjack.WordAlloc.removeDeadStructural input1946 value1092 value1 value2 = (output1946, value1094, value1) := by
  rw [input1946_def, output1946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1944]
  try dsimp only
  rw [child1945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1944_skip, output1945_skip]
  kernel_rfl

theorem node1947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1947 value1094 value1 value2 = (output1947, value1095, value1) := by
  rw [input1947_def, output1947_def]
  kernel_rfl

theorem node1948_cond_eq
    (child1946 : Flapjack.WordAlloc.removeDeadStructural input1946 value1092 value1 value2 = (output1946, value1094, value1))
    (child1947 : Flapjack.WordAlloc.removeDeadStructural input1947 value1094 value1 value2 = (output1947, value1095, value1)) : Flapjack.WordAlloc.removeDeadStructural input1948 value1092 value1 value2 = (output1948, value1095, value1) := by
  rw [input1948_def, output1948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1946]
  try dsimp only
  rw [child1947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1946_skip, output1947_skip]
  kernel_rfl

theorem node1949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1949 value1095 value1 value2 = (output1949, value1096, value1) := by
  rw [input1949_def, output1949_def]
  kernel_rfl

theorem node1950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1950 value1096 value1 value2 = (output1950, value1097, value1) := by
  rw [input1950_def, output1950_def]
  kernel_rfl

theorem node1951_cond_eq
    (child1949 : Flapjack.WordAlloc.removeDeadStructural input1949 value1095 value1 value2 = (output1949, value1096, value1))
    (child1950 : Flapjack.WordAlloc.removeDeadStructural input1950 value1096 value1 value2 = (output1950, value1097, value1)) : Flapjack.WordAlloc.removeDeadStructural input1951 value1095 value1 value2 = (output1951, value1097, value1) := by
  rw [input1951_def, output1951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1949]
  try dsimp only
  rw [child1950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1949_skip, output1950_skip]
  kernel_rfl

theorem node1952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1952 value1097 value1 value2 = (output1952, value1098, value1) := by
  rw [input1952_def, output1952_def]
  kernel_rfl

theorem node1953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1953 value1098 value1 value2 = (output1953, value1099, value1) := by
  rw [input1953_def, output1953_def]
  kernel_rfl

theorem node1954_cond_eq
    (child1952 : Flapjack.WordAlloc.removeDeadStructural input1952 value1097 value1 value2 = (output1952, value1098, value1))
    (child1953 : Flapjack.WordAlloc.removeDeadStructural input1953 value1098 value1 value2 = (output1953, value1099, value1)) : Flapjack.WordAlloc.removeDeadStructural input1954 value1097 value1 value2 = (output1954, value1099, value1) := by
  rw [input1954_def, output1954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1952]
  try dsimp only
  rw [child1953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1952_skip, output1953_skip]
  kernel_rfl

theorem node1955_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1955 value1099 value1 value2 = (output1955, value1100, value1) := by
  rw [input1955_def, output1955_def]
  kernel_rfl

theorem node1956_cond_eq
    (child1954 : Flapjack.WordAlloc.removeDeadStructural input1954 value1097 value1 value2 = (output1954, value1099, value1))
    (child1955 : Flapjack.WordAlloc.removeDeadStructural input1955 value1099 value1 value2 = (output1955, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1956 value1097 value1 value2 = (output1956, value1100, value1) := by
  rw [input1956_def, output1956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1954]
  try dsimp only
  rw [child1955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1954_skip, output1955_skip]
  kernel_rfl

theorem node1957_cond_eq
    (child1951 : Flapjack.WordAlloc.removeDeadStructural input1951 value1095 value1 value2 = (output1951, value1097, value1))
    (child1956 : Flapjack.WordAlloc.removeDeadStructural input1956 value1097 value1 value2 = (output1956, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1957 value1095 value1 value2 = (output1957, value1100, value1) := by
  rw [input1957_def, output1957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1951]
  try dsimp only
  rw [child1956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1951_skip, output1956_skip]
  kernel_rfl

theorem node1958_cond_eq
    (child1948 : Flapjack.WordAlloc.removeDeadStructural input1948 value1092 value1 value2 = (output1948, value1095, value1))
    (child1957 : Flapjack.WordAlloc.removeDeadStructural input1957 value1095 value1 value2 = (output1957, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1958 value1092 value1 value2 = (output1958, value1100, value1) := by
  rw [input1958_def, output1958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1948]
  try dsimp only
  rw [child1957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1948_skip, output1957_skip]
  kernel_rfl

theorem node1959_cond_eq
    (child1943 : Flapjack.WordAlloc.removeDeadStructural input1943 value1090 value1 value2 = (output1943, value1092, value1))
    (child1958 : Flapjack.WordAlloc.removeDeadStructural input1958 value1092 value1 value2 = (output1958, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1959 value1090 value1 value2 = (output1959, value1100, value1) := by
  rw [input1959_def, output1959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1943]
  try dsimp only
  rw [child1958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1943_skip, output1958_skip]
  kernel_rfl

theorem node1960_cond_eq
    (child1940 : Flapjack.WordAlloc.removeDeadStructural input1940 value1087 value1 value2 = (output1940, value1090, value1))
    (child1959 : Flapjack.WordAlloc.removeDeadStructural input1959 value1090 value1 value2 = (output1959, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1960 value1087 value1 value2 = (output1960, value1100, value1) := by
  rw [input1960_def, output1960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1940]
  try dsimp only
  rw [child1959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1940_skip, output1959_skip]
  kernel_rfl

theorem node1961_cond_eq
    (child1935 : Flapjack.WordAlloc.removeDeadStructural input1935 value1085 value1 value2 = (output1935, value1087, value1))
    (child1960 : Flapjack.WordAlloc.removeDeadStructural input1960 value1087 value1 value2 = (output1960, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1961 value1085 value1 value2 = (output1961, value1100, value1) := by
  rw [input1961_def, output1961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1935]
  try dsimp only
  rw [child1960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1935_skip, output1960_skip]
  kernel_rfl

theorem node1962_cond_eq
    (child1932 : Flapjack.WordAlloc.removeDeadStructural input1932 value1082 value1 value2 = (output1932, value1085, value1))
    (child1961 : Flapjack.WordAlloc.removeDeadStructural input1961 value1085 value1 value2 = (output1961, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1962 value1082 value1 value2 = (output1962, value1100, value1) := by
  rw [input1962_def, output1962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1932]
  try dsimp only
  rw [child1961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1932_skip, output1961_skip]
  kernel_rfl

theorem node1963_cond_eq
    (child1927 : Flapjack.WordAlloc.removeDeadStructural input1927 value1080 value1 value2 = (output1927, value1082, value1))
    (child1962 : Flapjack.WordAlloc.removeDeadStructural input1962 value1082 value1 value2 = (output1962, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1963 value1080 value1 value2 = (output1963, value1100, value1) := by
  rw [input1963_def, output1963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1927]
  try dsimp only
  rw [child1962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1927_skip, output1962_skip]
  kernel_rfl

theorem node1964_cond_eq
    (child1924 : Flapjack.WordAlloc.removeDeadStructural input1924 value1080 value1 value2 = (output1924, value1080, value1))
    (child1963 : Flapjack.WordAlloc.removeDeadStructural input1963 value1080 value1 value2 = (output1963, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1964 value1080 value1 value2 = (output1964, value1100, value1) := by
  rw [input1964_def, output1964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1924]
  try dsimp only
  rw [child1963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1924_skip, output1963_skip]
  kernel_rfl

theorem node1965_cond_eq
    (child1923 : Flapjack.WordAlloc.removeDeadStructural input1923 value1080 value1 value2 = (output1923, value1080, value1))
    (child1964 : Flapjack.WordAlloc.removeDeadStructural input1964 value1080 value1 value2 = (output1964, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1965 value1080 value1 value2 = (output1965, value1100, value1) := by
  rw [input1965_def, output1965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1923]
  try dsimp only
  rw [child1964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1923_skip, output1964_skip]
  kernel_rfl

theorem node1966_cond_eq
    (child1922 : Flapjack.WordAlloc.removeDeadStructural input1922 value1080 value1 value2 = (output1922, value1080, value1))
    (child1965 : Flapjack.WordAlloc.removeDeadStructural input1965 value1080 value1 value2 = (output1965, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1966 value1080 value1 value2 = (output1966, value1100, value1) := by
  rw [input1966_def, output1966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1922]
  try dsimp only
  rw [child1965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1922_skip, output1965_skip]
  kernel_rfl

theorem node1967_cond_eq
    (child1921 : Flapjack.WordAlloc.removeDeadStructural input1921 value1080 value1 value2 = (output1921, value1080, value1))
    (child1966 : Flapjack.WordAlloc.removeDeadStructural input1966 value1080 value1 value2 = (output1966, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1967 value1080 value1 value2 = (output1967, value1100, value1) := by
  rw [input1967_def, output1967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1921]
  try dsimp only
  rw [child1966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1921_skip, output1966_skip]
  kernel_rfl

theorem node1968_cond_eq
    (child1920 : Flapjack.WordAlloc.removeDeadStructural input1920 value1080 value1 value2 = (output1920, value1080, value1))
    (child1967 : Flapjack.WordAlloc.removeDeadStructural input1967 value1080 value1 value2 = (output1967, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1968 value1080 value1 value2 = (output1968, value1100, value1) := by
  rw [input1968_def, output1968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1920]
  try dsimp only
  rw [child1967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1920_skip, output1967_skip]
  kernel_rfl

theorem node1969_cond_eq
    (child1919 : Flapjack.WordAlloc.removeDeadStructural input1919 value1079 value1 value2 = (output1919, value1080, value1))
    (child1968 : Flapjack.WordAlloc.removeDeadStructural input1968 value1080 value1 value2 = (output1968, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1969 value1079 value1 value2 = (output1969, value1100, value1) := by
  rw [input1969_def, output1969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1919]
  try dsimp only
  rw [child1968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1919_skip, output1968_skip]
  kernel_rfl

theorem node1970_cond_eq
    (child1918 : Flapjack.WordAlloc.removeDeadStructural input1918 value1078 value1 value2 = (output1918, value1079, value1))
    (child1969 : Flapjack.WordAlloc.removeDeadStructural input1969 value1079 value1 value2 = (output1969, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1970 value1078 value1 value2 = (output1970, value1100, value1) := by
  rw [input1970_def, output1970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1918]
  try dsimp only
  rw [child1969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1918_skip, output1969_skip]
  kernel_rfl

theorem node1971_cond_eq
    (child1917 : Flapjack.WordAlloc.removeDeadStructural input1917 value1075 value1 value2 = (output1917, value1078, value1))
    (child1970 : Flapjack.WordAlloc.removeDeadStructural input1970 value1078 value1 value2 = (output1970, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1971 value1075 value1 value2 = (output1971, value1100, value1) := by
  rw [input1971_def, output1971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1917]
  try dsimp only
  rw [child1970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1917_skip, output1970_skip]
  kernel_rfl

theorem node1972_cond_eq
    (child1912 : Flapjack.WordAlloc.removeDeadStructural input1912 value1074 value1 value2 = (output1912, value1075, value1))
    (child1971 : Flapjack.WordAlloc.removeDeadStructural input1971 value1075 value1 value2 = (output1971, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1972 value1074 value1 value2 = (output1972, value1100, value1) := by
  rw [input1972_def, output1972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1912]
  try dsimp only
  rw [child1971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1912_skip, output1971_skip]
  kernel_rfl

theorem node1973_cond_eq
    (child1911 : Flapjack.WordAlloc.removeDeadStructural input1911 value1071 value1 value2 = (output1911, value1074, value1))
    (child1972 : Flapjack.WordAlloc.removeDeadStructural input1972 value1074 value1 value2 = (output1972, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1973 value1071 value1 value2 = (output1973, value1100, value1) := by
  rw [input1973_def, output1973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1911]
  try dsimp only
  rw [child1972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1911_skip, output1972_skip]
  kernel_rfl

theorem node1974_cond_eq
    (child1906 : Flapjack.WordAlloc.removeDeadStructural input1906 value1070 value1 value2 = (output1906, value1071, value1))
    (child1973 : Flapjack.WordAlloc.removeDeadStructural input1973 value1071 value1 value2 = (output1973, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1974 value1070 value1 value2 = (output1974, value1100, value1) := by
  rw [input1974_def, output1974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1906]
  try dsimp only
  rw [child1973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1906_skip, output1973_skip]
  kernel_rfl

theorem node1975_cond_eq
    (child1905 : Flapjack.WordAlloc.removeDeadStructural input1905 value1068 value1 value2 = (output1905, value1070, value1))
    (child1974 : Flapjack.WordAlloc.removeDeadStructural input1974 value1070 value1 value2 = (output1974, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1975 value1068 value1 value2 = (output1975, value1100, value1) := by
  rw [input1975_def, output1975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1905]
  try dsimp only
  rw [child1974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1905_skip, output1974_skip]
  kernel_rfl

theorem node1976_cond_eq
    (child1902 : Flapjack.WordAlloc.removeDeadStructural input1902 value1067 value1 value2 = (output1902, value1068, value1))
    (child1975 : Flapjack.WordAlloc.removeDeadStructural input1975 value1068 value1 value2 = (output1975, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1976 value1067 value1 value2 = (output1976, value1100, value1) := by
  rw [input1976_def, output1976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1902]
  try dsimp only
  rw [child1975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1902_skip, output1975_skip]
  kernel_rfl

theorem node1977_cond_eq
    (child1901 : Flapjack.WordAlloc.removeDeadStructural input1901 value1066 value1 value2 = (output1901, value1067, value1))
    (child1976 : Flapjack.WordAlloc.removeDeadStructural input1976 value1067 value1 value2 = (output1976, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1977 value1066 value1 value2 = (output1977, value1100, value1) := by
  rw [input1977_def, output1977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1901]
  try dsimp only
  rw [child1976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1901_skip, output1976_skip]
  kernel_rfl

theorem node1978_cond_eq
    (child1900 : Flapjack.WordAlloc.removeDeadStructural input1900 value1065 value1 value2 = (output1900, value1066, value1))
    (child1977 : Flapjack.WordAlloc.removeDeadStructural input1977 value1066 value1 value2 = (output1977, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1978 value1065 value1 value2 = (output1978, value1100, value1) := by
  rw [input1978_def, output1978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1900]
  try dsimp only
  rw [child1977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1900_skip, output1977_skip]
  kernel_rfl

theorem node1979_cond_eq
    (child1899 : Flapjack.WordAlloc.removeDeadStructural input1899 value1064 value1 value2 = (output1899, value1065, value1))
    (child1978 : Flapjack.WordAlloc.removeDeadStructural input1978 value1065 value1 value2 = (output1978, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1979 value1064 value1 value2 = (output1979, value1100, value1) := by
  rw [input1979_def, output1979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1899]
  try dsimp only
  rw [child1978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1899_skip, output1978_skip]
  kernel_rfl

theorem node1980_cond_eq
    (child1898 : Flapjack.WordAlloc.removeDeadStructural input1898 value1063 value1 value2 = (output1898, value1064, value1))
    (child1979 : Flapjack.WordAlloc.removeDeadStructural input1979 value1064 value1 value2 = (output1979, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1980 value1063 value1 value2 = (output1980, value1100, value1) := by
  rw [input1980_def, output1980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1898]
  try dsimp only
  rw [child1979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1898_skip, output1979_skip]
  kernel_rfl

theorem node1981_cond_eq
    (child1897 : Flapjack.WordAlloc.removeDeadStructural input1897 value1063 value1 value2 = (output1897, value1063, value1))
    (child1980 : Flapjack.WordAlloc.removeDeadStructural input1980 value1063 value1 value2 = (output1980, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1981 value1063 value1 value2 = (output1981, value1100, value1) := by
  rw [input1981_def, output1981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1897]
  try dsimp only
  rw [child1980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1897_skip, output1980_skip]
  kernel_rfl

theorem node1982_cond_eq
    (child1896 : Flapjack.WordAlloc.removeDeadStructural input1896 value1063 value1 value2 = (output1896, value1063, value1))
    (child1981 : Flapjack.WordAlloc.removeDeadStructural input1981 value1063 value1 value2 = (output1981, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1982 value1063 value1 value2 = (output1982, value1100, value1) := by
  rw [input1982_def, output1982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1896]
  try dsimp only
  rw [child1981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1896_skip, output1981_skip]
  kernel_rfl

theorem node1983_cond_eq
    (child1895 : Flapjack.WordAlloc.removeDeadStructural input1895 value1062 value1 value2 = (output1895, value1063, value1))
    (child1982 : Flapjack.WordAlloc.removeDeadStructural input1982 value1063 value1 value2 = (output1982, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1983 value1062 value1 value2 = (output1983, value1100, value1) := by
  rw [input1983_def, output1983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1895]
  try dsimp only
  rw [child1982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1895_skip, output1982_skip]
  kernel_rfl

theorem node1984_cond_eq
    (child1894 : Flapjack.WordAlloc.removeDeadStructural input1894 value1059 value1 value2 = (output1894, value1062, value1))
    (child1983 : Flapjack.WordAlloc.removeDeadStructural input1983 value1062 value1 value2 = (output1983, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1984 value1059 value1 value2 = (output1984, value1100, value1) := by
  rw [input1984_def, output1984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1894]
  try dsimp only
  rw [child1983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1894_skip, output1983_skip]
  kernel_rfl

theorem node1985_cond_eq
    (child1889 : Flapjack.WordAlloc.removeDeadStructural input1889 value1055 value1 value2 = (output1889, value1059, value1))
    (child1984 : Flapjack.WordAlloc.removeDeadStructural input1984 value1059 value1 value2 = (output1984, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1985 value1055 value1 value2 = (output1985, value1100, value1) := by
  rw [input1985_def, output1985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1889]
  try dsimp only
  rw [child1984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1889_skip, output1984_skip]
  kernel_rfl

theorem node1986_cond_eq
    (child1882 : Flapjack.WordAlloc.removeDeadStructural input1882 value1055 value1 value2 = (output1882, value1055, value1))
    (child1985 : Flapjack.WordAlloc.removeDeadStructural input1985 value1055 value1 value2 = (output1985, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1986 value1055 value1 value2 = (output1986, value1100, value1) := by
  rw [input1986_def, output1986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1882]
  try dsimp only
  rw [child1985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1882_skip, output1985_skip]
  kernel_rfl

theorem node1987_cond_eq
    (child1881 : Flapjack.WordAlloc.removeDeadStructural input1881 value1055 value1 value2 = (output1881, value1055, value1))
    (child1986 : Flapjack.WordAlloc.removeDeadStructural input1986 value1055 value1 value2 = (output1986, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1987 value1055 value1 value2 = (output1987, value1100, value1) := by
  rw [input1987_def, output1987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1881]
  try dsimp only
  rw [child1986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1881_skip, output1986_skip]
  kernel_rfl

theorem node1988_cond_eq
    (child1880 : Flapjack.WordAlloc.removeDeadStructural input1880 value1054 value1 value2 = (output1880, value1055, value1))
    (child1987 : Flapjack.WordAlloc.removeDeadStructural input1987 value1055 value1 value2 = (output1987, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1988 value1054 value1 value2 = (output1988, value1100, value1) := by
  rw [input1988_def, output1988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1880]
  try dsimp only
  rw [child1987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1880_skip, output1987_skip]
  kernel_rfl

theorem node1989_cond_eq
    (child1879 : Flapjack.WordAlloc.removeDeadStructural input1879 value1053 value1 value2 = (output1879, value1054, value1))
    (child1988 : Flapjack.WordAlloc.removeDeadStructural input1988 value1054 value1 value2 = (output1988, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1989 value1053 value1 value2 = (output1989, value1100, value1) := by
  rw [input1989_def, output1989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1879]
  try dsimp only
  rw [child1988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1879_skip, output1988_skip]
  kernel_rfl

theorem node1990_cond_eq
    (child1878 : Flapjack.WordAlloc.removeDeadStructural input1878 value1050 value1 value2 = (output1878, value1053, value1))
    (child1989 : Flapjack.WordAlloc.removeDeadStructural input1989 value1053 value1 value2 = (output1989, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1990 value1050 value1 value2 = (output1990, value1100, value1) := by
  rw [input1990_def, output1990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1878]
  try dsimp only
  rw [child1989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1878_skip, output1989_skip]
  kernel_rfl

theorem node1991_cond_eq
    (child1873 : Flapjack.WordAlloc.removeDeadStructural input1873 value1049 value1 value2 = (output1873, value1050, value1))
    (child1990 : Flapjack.WordAlloc.removeDeadStructural input1990 value1050 value1 value2 = (output1990, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1991 value1049 value1 value2 = (output1991, value1100, value1) := by
  rw [input1991_def, output1991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1873]
  try dsimp only
  rw [child1990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1873_skip, output1990_skip]
  kernel_rfl

theorem node1992_cond_eq
    (child1872 : Flapjack.WordAlloc.removeDeadStructural input1872 value1046 value1 value2 = (output1872, value1049, value1))
    (child1991 : Flapjack.WordAlloc.removeDeadStructural input1991 value1049 value1 value2 = (output1991, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1992 value1046 value1 value2 = (output1992, value1100, value1) := by
  rw [input1992_def, output1992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1872]
  try dsimp only
  rw [child1991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1872_skip, output1991_skip]
  kernel_rfl

theorem node1993_cond_eq
    (child1867 : Flapjack.WordAlloc.removeDeadStructural input1867 value1045 value1 value2 = (output1867, value1046, value1))
    (child1992 : Flapjack.WordAlloc.removeDeadStructural input1992 value1046 value1 value2 = (output1992, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1993 value1045 value1 value2 = (output1993, value1100, value1) := by
  rw [input1993_def, output1993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1867]
  try dsimp only
  rw [child1992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1867_skip, output1992_skip]
  kernel_rfl

theorem node1994_cond_eq
    (child1866 : Flapjack.WordAlloc.removeDeadStructural input1866 value1043 value1 value2 = (output1866, value1045, value1))
    (child1993 : Flapjack.WordAlloc.removeDeadStructural input1993 value1045 value1 value2 = (output1993, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1994 value1043 value1 value2 = (output1994, value1100, value1) := by
  rw [input1994_def, output1994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1866]
  try dsimp only
  rw [child1993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1866_skip, output1993_skip]
  kernel_rfl

theorem node1995_cond_eq
    (child1863 : Flapjack.WordAlloc.removeDeadStructural input1863 value1042 value1 value2 = (output1863, value1043, value1))
    (child1994 : Flapjack.WordAlloc.removeDeadStructural input1994 value1043 value1 value2 = (output1994, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1995 value1042 value1 value2 = (output1995, value1100, value1) := by
  rw [input1995_def, output1995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1863]
  try dsimp only
  rw [child1994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1863_skip, output1994_skip]
  kernel_rfl

theorem node1996_cond_eq
    (child1862 : Flapjack.WordAlloc.removeDeadStructural input1862 value1039 value1 value2 = (output1862, value1042, value1))
    (child1995 : Flapjack.WordAlloc.removeDeadStructural input1995 value1042 value1 value2 = (output1995, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1996 value1039 value1 value2 = (output1996, value1100, value1) := by
  rw [input1996_def, output1996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1862]
  try dsimp only
  rw [child1995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1862_skip, output1995_skip]
  kernel_rfl

theorem node1997_cond_eq
    (child1857 : Flapjack.WordAlloc.removeDeadStructural input1857 value1038 value1 value2 = (output1857, value1039, value1))
    (child1996 : Flapjack.WordAlloc.removeDeadStructural input1996 value1039 value1 value2 = (output1996, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1997 value1038 value1 value2 = (output1997, value1100, value1) := by
  rw [input1997_def, output1997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1857]
  try dsimp only
  rw [child1996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1857_skip, output1996_skip]
  kernel_rfl

theorem node1998_cond_eq
    (child1856 : Flapjack.WordAlloc.removeDeadStructural input1856 value1035 value1 value2 = (output1856, value1038, value1))
    (child1997 : Flapjack.WordAlloc.removeDeadStructural input1997 value1038 value1 value2 = (output1997, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1998 value1035 value1 value2 = (output1998, value1100, value1) := by
  rw [input1998_def, output1998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1856]
  try dsimp only
  rw [child1997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1856_skip, output1997_skip]
  kernel_rfl

theorem node1999_cond_eq
    (child1851 : Flapjack.WordAlloc.removeDeadStructural input1851 value1034 value1 value2 = (output1851, value1035, value1))
    (child1998 : Flapjack.WordAlloc.removeDeadStructural input1998 value1035 value1 value2 = (output1998, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input1999 value1034 value1 value2 = (output1999, value1100, value1) := by
  rw [input1999_def, output1999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1851]
  try dsimp only
  rw [child1998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1851_skip, output1998_skip]
  kernel_rfl

theorem node2000_cond_eq
    (child1850 : Flapjack.WordAlloc.removeDeadStructural input1850 value1034 value1 value2 = (output1850, value1034, value1))
    (child1999 : Flapjack.WordAlloc.removeDeadStructural input1999 value1034 value1 value2 = (output1999, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2000 value1034 value1 value2 = (output2000, value1100, value1) := by
  rw [input2000_def, output2000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1850]
  try dsimp only
  rw [child1999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1850_skip, output1999_skip]
  kernel_rfl

theorem node2001_cond_eq
    (child1849 : Flapjack.WordAlloc.removeDeadStructural input1849 value1034 value1 value2 = (output1849, value1034, value1))
    (child2000 : Flapjack.WordAlloc.removeDeadStructural input2000 value1034 value1 value2 = (output2000, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2001 value1034 value1 value2 = (output2001, value1100, value1) := by
  rw [input2001_def, output2001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1849]
  try dsimp only
  rw [child2000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1849_skip, output2000_skip]
  kernel_rfl

theorem node2002_cond_eq
    (child1848 : Flapjack.WordAlloc.removeDeadStructural input1848 value1031 value1 value2 = (output1848, value1034, value1))
    (child2001 : Flapjack.WordAlloc.removeDeadStructural input2001 value1034 value1 value2 = (output2001, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2002 value1031 value1 value2 = (output2002, value1100, value1) := by
  rw [input2002_def, output2002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1848]
  try dsimp only
  rw [child2001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1848_skip, output2001_skip]
  kernel_rfl

theorem node2003_cond_eq
    (child1843 : Flapjack.WordAlloc.removeDeadStructural input1843 value1028 value1 value2 = (output1843, value1031, value1))
    (child2002 : Flapjack.WordAlloc.removeDeadStructural input2002 value1031 value1 value2 = (output2002, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2003 value1028 value1 value2 = (output2003, value1100, value1) := by
  rw [input2003_def, output2003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1843]
  try dsimp only
  rw [child2002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1843_skip, output2002_skip]
  kernel_rfl

theorem node2004_cond_eq
    (child1838 : Flapjack.WordAlloc.removeDeadStructural input1838 value1024 value1 value2 = (output1838, value1028, value1))
    (child2003 : Flapjack.WordAlloc.removeDeadStructural input2003 value1028 value1 value2 = (output2003, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2004 value1024 value1 value2 = (output2004, value1100, value1) := by
  rw [input2004_def, output2004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1838]
  try dsimp only
  rw [child2003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1838_skip, output2003_skip]
  kernel_rfl

theorem node2005_cond_eq
    (child1831 : Flapjack.WordAlloc.removeDeadStructural input1831 value1024 value1 value2 = (output1831, value1024, value1))
    (child2004 : Flapjack.WordAlloc.removeDeadStructural input2004 value1024 value1 value2 = (output2004, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2005 value1024 value1 value2 = (output2005, value1100, value1) := by
  rw [input2005_def, output2005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1831]
  try dsimp only
  rw [child2004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1831_skip, output2004_skip]
  kernel_rfl

theorem node2006_cond_eq
    (child1830 : Flapjack.WordAlloc.removeDeadStructural input1830 value1024 value1 value2 = (output1830, value1024, value1))
    (child2005 : Flapjack.WordAlloc.removeDeadStructural input2005 value1024 value1 value2 = (output2005, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2006 value1024 value1 value2 = (output2006, value1100, value1) := by
  rw [input2006_def, output2006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1830]
  try dsimp only
  rw [child2005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1830_skip, output2005_skip]
  kernel_rfl

theorem node2007_cond_eq
    (child1829 : Flapjack.WordAlloc.removeDeadStructural input1829 value1023 value1 value2 = (output1829, value1024, value1))
    (child2006 : Flapjack.WordAlloc.removeDeadStructural input2006 value1024 value1 value2 = (output2006, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2007 value1023 value1 value2 = (output2007, value1100, value1) := by
  rw [input2007_def, output2007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1829]
  try dsimp only
  rw [child2006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1829_skip, output2006_skip]
  kernel_rfl

theorem node2008_cond_eq
    (child1828 : Flapjack.WordAlloc.removeDeadStructural input1828 value1022 value1 value2 = (output1828, value1023, value1))
    (child2007 : Flapjack.WordAlloc.removeDeadStructural input2007 value1023 value1 value2 = (output2007, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2008 value1022 value1 value2 = (output2008, value1100, value1) := by
  rw [input2008_def, output2008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1828]
  try dsimp only
  rw [child2007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1828_skip, output2007_skip]
  kernel_rfl

theorem node2009_cond_eq
    (child1827 : Flapjack.WordAlloc.removeDeadStructural input1827 value1019 value1 value2 = (output1827, value1022, value1))
    (child2008 : Flapjack.WordAlloc.removeDeadStructural input2008 value1022 value1 value2 = (output2008, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2009 value1019 value1 value2 = (output2009, value1100, value1) := by
  rw [input2009_def, output2009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1827]
  try dsimp only
  rw [child2008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1827_skip, output2008_skip]
  kernel_rfl

theorem node2010_cond_eq
    (child1822 : Flapjack.WordAlloc.removeDeadStructural input1822 value1018 value1 value2 = (output1822, value1019, value1))
    (child2009 : Flapjack.WordAlloc.removeDeadStructural input2009 value1019 value1 value2 = (output2009, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2010 value1018 value1 value2 = (output2010, value1100, value1) := by
  rw [input2010_def, output2010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1822]
  try dsimp only
  rw [child2009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1822_skip, output2009_skip]
  kernel_rfl

theorem node2011_cond_eq
    (child1821 : Flapjack.WordAlloc.removeDeadStructural input1821 value1015 value1 value2 = (output1821, value1018, value1))
    (child2010 : Flapjack.WordAlloc.removeDeadStructural input2010 value1018 value1 value2 = (output2010, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2011 value1015 value1 value2 = (output2011, value1100, value1) := by
  rw [input2011_def, output2011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1821]
  try dsimp only
  rw [child2010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1821_skip, output2010_skip]
  kernel_rfl

theorem node2012_cond_eq
    (child1816 : Flapjack.WordAlloc.removeDeadStructural input1816 value1014 value1 value2 = (output1816, value1015, value1))
    (child2011 : Flapjack.WordAlloc.removeDeadStructural input2011 value1015 value1 value2 = (output2011, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2012 value1014 value1 value2 = (output2012, value1100, value1) := by
  rw [input2012_def, output2012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1816]
  try dsimp only
  rw [child2011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1816_skip, output2011_skip]
  kernel_rfl

theorem node2013_cond_eq
    (child1815 : Flapjack.WordAlloc.removeDeadStructural input1815 value1012 value1 value2 = (output1815, value1014, value1))
    (child2012 : Flapjack.WordAlloc.removeDeadStructural input2012 value1014 value1 value2 = (output2012, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2013 value1012 value1 value2 = (output2013, value1100, value1) := by
  rw [input2013_def, output2013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1815]
  try dsimp only
  rw [child2012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1815_skip, output2012_skip]
  kernel_rfl

theorem node2014_cond_eq
    (child1812 : Flapjack.WordAlloc.removeDeadStructural input1812 value1011 value1 value2 = (output1812, value1012, value1))
    (child2013 : Flapjack.WordAlloc.removeDeadStructural input2013 value1012 value1 value2 = (output2013, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2014 value1011 value1 value2 = (output2014, value1100, value1) := by
  rw [input2014_def, output2014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1812]
  try dsimp only
  rw [child2013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1812_skip, output2013_skip]
  kernel_rfl

theorem node2015_cond_eq
    (child1811 : Flapjack.WordAlloc.removeDeadStructural input1811 value1010 value1 value2 = (output1811, value1011, value1))
    (child2014 : Flapjack.WordAlloc.removeDeadStructural input2014 value1011 value1 value2 = (output2014, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2015 value1010 value1 value2 = (output2015, value1100, value1) := by
  rw [input2015_def, output2015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1811]
  try dsimp only
  rw [child2014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1811_skip, output2014_skip]
  kernel_rfl

theorem node2016_cond_eq
    (child1810 : Flapjack.WordAlloc.removeDeadStructural input1810 value1009 value1 value2 = (output1810, value1010, value1))
    (child2015 : Flapjack.WordAlloc.removeDeadStructural input2015 value1010 value1 value2 = (output2015, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2016 value1009 value1 value2 = (output2016, value1100, value1) := by
  rw [input2016_def, output2016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1810]
  try dsimp only
  rw [child2015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1810_skip, output2015_skip]
  kernel_rfl

theorem node2017_cond_eq
    (child1809 : Flapjack.WordAlloc.removeDeadStructural input1809 value1006 value1 value2 = (output1809, value1009, value1))
    (child2016 : Flapjack.WordAlloc.removeDeadStructural input2016 value1009 value1 value2 = (output2016, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2017 value1006 value1 value2 = (output2017, value1100, value1) := by
  rw [input2017_def, output2017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1809]
  try dsimp only
  rw [child2016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1809_skip, output2016_skip]
  kernel_rfl

theorem node2018_cond_eq
    (child1804 : Flapjack.WordAlloc.removeDeadStructural input1804 value1005 value1 value2 = (output1804, value1006, value1))
    (child2017 : Flapjack.WordAlloc.removeDeadStructural input2017 value1006 value1 value2 = (output2017, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2018 value1005 value1 value2 = (output2018, value1100, value1) := by
  rw [input2018_def, output2018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1804]
  try dsimp only
  rw [child2017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1804_skip, output2017_skip]
  kernel_rfl

theorem node2019_cond_eq
    (child1803 : Flapjack.WordAlloc.removeDeadStructural input1803 value1002 value1 value2 = (output1803, value1005, value1))
    (child2018 : Flapjack.WordAlloc.removeDeadStructural input2018 value1005 value1 value2 = (output2018, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2019 value1002 value1 value2 = (output2019, value1100, value1) := by
  rw [input2019_def, output2019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1803]
  try dsimp only
  rw [child2018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1803_skip, output2018_skip]
  kernel_rfl

theorem node2020_cond_eq
    (child1798 : Flapjack.WordAlloc.removeDeadStructural input1798 value1001 value1 value2 = (output1798, value1002, value1))
    (child2019 : Flapjack.WordAlloc.removeDeadStructural input2019 value1002 value1 value2 = (output2019, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2020 value1001 value1 value2 = (output2020, value1100, value1) := by
  rw [input2020_def, output2020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1798]
  try dsimp only
  rw [child2019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1798_skip, output2019_skip]
  kernel_rfl

theorem node2021_cond_eq
    (child1797 : Flapjack.WordAlloc.removeDeadStructural input1797 value999 value1 value2 = (output1797, value1001, value1))
    (child2020 : Flapjack.WordAlloc.removeDeadStructural input2020 value1001 value1 value2 = (output2020, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2021 value999 value1 value2 = (output2021, value1100, value1) := by
  rw [input2021_def, output2021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1797]
  try dsimp only
  rw [child2020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1797_skip, output2020_skip]
  kernel_rfl

theorem node2022_cond_eq
    (child1794 : Flapjack.WordAlloc.removeDeadStructural input1794 value998 value1 value2 = (output1794, value999, value1))
    (child2021 : Flapjack.WordAlloc.removeDeadStructural input2021 value999 value1 value2 = (output2021, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2022 value998 value1 value2 = (output2022, value1100, value1) := by
  rw [input2022_def, output2022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1794]
  try dsimp only
  rw [child2021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1794_skip, output2021_skip]
  kernel_rfl

theorem node2023_cond_eq
    (child1793 : Flapjack.WordAlloc.removeDeadStructural input1793 value993 value1 value2 = (output1793, value998, value1))
    (child2022 : Flapjack.WordAlloc.removeDeadStructural input2022 value998 value1 value2 = (output2022, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2023 value993 value1 value2 = (output2023, value1100, value1) := by
  rw [input2023_def, output2023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1793]
  try dsimp only
  rw [child2022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1793_skip, output2022_skip]
  kernel_rfl

theorem node2024_cond_eq
    (child1784 : Flapjack.WordAlloc.removeDeadStructural input1784 value992 value1 value2 = (output1784, value993, value1))
    (child2023 : Flapjack.WordAlloc.removeDeadStructural input2023 value993 value1 value2 = (output2023, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2024 value992 value1 value2 = (output2024, value1100, value1) := by
  rw [input2024_def, output2024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1784]
  try dsimp only
  rw [child2023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1784_skip, output2023_skip]
  kernel_rfl

theorem node2025_cond_eq
    (child1783 : Flapjack.WordAlloc.removeDeadStructural input1783 value987 value1 value2 = (output1783, value992, value1))
    (child2024 : Flapjack.WordAlloc.removeDeadStructural input2024 value992 value1 value2 = (output2024, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2025 value987 value1 value2 = (output2025, value1100, value1) := by
  rw [input2025_def, output2025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1783]
  try dsimp only
  rw [child2024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1783_skip, output2024_skip]
  kernel_rfl

theorem node2026_cond_eq
    (child1774 : Flapjack.WordAlloc.removeDeadStructural input1774 value986 value1 value2 = (output1774, value987, value1))
    (child2025 : Flapjack.WordAlloc.removeDeadStructural input2025 value987 value1 value2 = (output2025, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2026 value986 value1 value2 = (output2026, value1100, value1) := by
  rw [input2026_def, output2026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1774]
  try dsimp only
  rw [child2025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1774_skip, output2025_skip]
  kernel_rfl

theorem node2027_cond_eq
    (child1773 : Flapjack.WordAlloc.removeDeadStructural input1773 value986 value1 value2 = (output1773, value986, value1))
    (child2026 : Flapjack.WordAlloc.removeDeadStructural input2026 value986 value1 value2 = (output2026, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2027 value986 value1 value2 = (output2027, value1100, value1) := by
  rw [input2027_def, output2027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1773]
  try dsimp only
  rw [child2026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1773_skip, output2026_skip]
  kernel_rfl

theorem node2028_cond_eq
    (child1772 : Flapjack.WordAlloc.removeDeadStructural input1772 value986 value1 value2 = (output1772, value986, value1))
    (child2027 : Flapjack.WordAlloc.removeDeadStructural input2027 value986 value1 value2 = (output2027, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2028 value986 value1 value2 = (output2028, value1100, value1) := by
  rw [input2028_def, output2028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1772]
  try dsimp only
  rw [child2027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1772_skip, output2027_skip]
  kernel_rfl

theorem node2029_cond_eq
    (child1771 : Flapjack.WordAlloc.removeDeadStructural input1771 value983 value1 value2 = (output1771, value986, value1))
    (child2028 : Flapjack.WordAlloc.removeDeadStructural input2028 value986 value1 value2 = (output2028, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2029 value983 value1 value2 = (output2029, value1100, value1) := by
  rw [input2029_def, output2029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1771]
  try dsimp only
  rw [child2028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1771_skip, output2028_skip]
  kernel_rfl

theorem node2030_cond_eq
    (child1766 : Flapjack.WordAlloc.removeDeadStructural input1766 value980 value1 value2 = (output1766, value983, value1))
    (child2029 : Flapjack.WordAlloc.removeDeadStructural input2029 value983 value1 value2 = (output2029, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2030 value980 value1 value2 = (output2030, value1100, value1) := by
  rw [input2030_def, output2030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1766]
  try dsimp only
  rw [child2029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1766_skip, output2029_skip]
  kernel_rfl

theorem node2031_cond_eq
    (child1761 : Flapjack.WordAlloc.removeDeadStructural input1761 value976 value1 value2 = (output1761, value980, value1))
    (child2030 : Flapjack.WordAlloc.removeDeadStructural input2030 value980 value1 value2 = (output2030, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2031 value976 value1 value2 = (output2031, value1100, value1) := by
  rw [input2031_def, output2031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1761]
  try dsimp only
  rw [child2030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1761_skip, output2030_skip]
  kernel_rfl

theorem node2032_cond_eq
    (child1754 : Flapjack.WordAlloc.removeDeadStructural input1754 value976 value1 value2 = (output1754, value976, value1))
    (child2031 : Flapjack.WordAlloc.removeDeadStructural input2031 value976 value1 value2 = (output2031, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2032 value976 value1 value2 = (output2032, value1100, value1) := by
  rw [input2032_def, output2032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1754]
  try dsimp only
  rw [child2031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1754_skip, output2031_skip]
  kernel_rfl

theorem node2033_cond_eq
    (child1753 : Flapjack.WordAlloc.removeDeadStructural input1753 value976 value1 value2 = (output1753, value976, value1))
    (child2032 : Flapjack.WordAlloc.removeDeadStructural input2032 value976 value1 value2 = (output2032, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2033 value976 value1 value2 = (output2033, value1100, value1) := by
  rw [input2033_def, output2033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1753]
  try dsimp only
  rw [child2032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1753_skip, output2032_skip]
  kernel_rfl

theorem node2034_cond_eq
    (child1752 : Flapjack.WordAlloc.removeDeadStructural input1752 value975 value1 value2 = (output1752, value976, value1))
    (child2033 : Flapjack.WordAlloc.removeDeadStructural input2033 value976 value1 value2 = (output2033, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2034 value975 value1 value2 = (output2034, value1100, value1) := by
  rw [input2034_def, output2034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1752]
  try dsimp only
  rw [child2033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1752_skip, output2033_skip]
  kernel_rfl

theorem node2035_cond_eq
    (child1751 : Flapjack.WordAlloc.removeDeadStructural input1751 value974 value1 value2 = (output1751, value975, value1))
    (child2034 : Flapjack.WordAlloc.removeDeadStructural input2034 value975 value1 value2 = (output2034, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2035 value974 value1 value2 = (output2035, value1100, value1) := by
  rw [input2035_def, output2035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1751]
  try dsimp only
  rw [child2034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1751_skip, output2034_skip]
  kernel_rfl

theorem node2036_cond_eq
    (child1750 : Flapjack.WordAlloc.removeDeadStructural input1750 value971 value1 value2 = (output1750, value974, value1))
    (child2035 : Flapjack.WordAlloc.removeDeadStructural input2035 value974 value1 value2 = (output2035, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2036 value971 value1 value2 = (output2036, value1100, value1) := by
  rw [input2036_def, output2036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1750]
  try dsimp only
  rw [child2035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1750_skip, output2035_skip]
  kernel_rfl

theorem node2037_cond_eq
    (child1745 : Flapjack.WordAlloc.removeDeadStructural input1745 value970 value1 value2 = (output1745, value971, value1))
    (child2036 : Flapjack.WordAlloc.removeDeadStructural input2036 value971 value1 value2 = (output2036, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2037 value970 value1 value2 = (output2037, value1100, value1) := by
  rw [input2037_def, output2037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1745]
  try dsimp only
  rw [child2036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1745_skip, output2036_skip]
  kernel_rfl

theorem node2038_cond_eq
    (child1744 : Flapjack.WordAlloc.removeDeadStructural input1744 value967 value1 value2 = (output1744, value970, value1))
    (child2037 : Flapjack.WordAlloc.removeDeadStructural input2037 value970 value1 value2 = (output2037, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2038 value967 value1 value2 = (output2038, value1100, value1) := by
  rw [input2038_def, output2038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1744]
  try dsimp only
  rw [child2037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1744_skip, output2037_skip]
  kernel_rfl

theorem node2039_cond_eq
    (child1739 : Flapjack.WordAlloc.removeDeadStructural input1739 value966 value1 value2 = (output1739, value967, value1))
    (child2038 : Flapjack.WordAlloc.removeDeadStructural input2038 value967 value1 value2 = (output2038, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2039 value966 value1 value2 = (output2039, value1100, value1) := by
  rw [input2039_def, output2039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1739]
  try dsimp only
  rw [child2038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1739_skip, output2038_skip]
  kernel_rfl

theorem node2040_cond_eq
    (child1738 : Flapjack.WordAlloc.removeDeadStructural input1738 value964 value1 value2 = (output1738, value966, value1))
    (child2039 : Flapjack.WordAlloc.removeDeadStructural input2039 value966 value1 value2 = (output2039, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2040 value964 value1 value2 = (output2040, value1100, value1) := by
  rw [input2040_def, output2040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1738]
  try dsimp only
  rw [child2039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1738_skip, output2039_skip]
  kernel_rfl

theorem node2041_cond_eq
    (child1735 : Flapjack.WordAlloc.removeDeadStructural input1735 value963 value1 value2 = (output1735, value964, value1))
    (child2040 : Flapjack.WordAlloc.removeDeadStructural input2040 value964 value1 value2 = (output2040, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2041 value963 value1 value2 = (output2041, value1100, value1) := by
  rw [input2041_def, output2041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1735]
  try dsimp only
  rw [child2040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1735_skip, output2040_skip]
  kernel_rfl

theorem node2042_cond_eq
    (child1734 : Flapjack.WordAlloc.removeDeadStructural input1734 value962 value1 value2 = (output1734, value963, value1))
    (child2041 : Flapjack.WordAlloc.removeDeadStructural input2041 value963 value1 value2 = (output2041, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2042 value962 value1 value2 = (output2042, value1100, value1) := by
  rw [input2042_def, output2042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1734]
  try dsimp only
  rw [child2041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1734_skip, output2041_skip]
  kernel_rfl

theorem node2043_cond_eq
    (child1733 : Flapjack.WordAlloc.removeDeadStructural input1733 value961 value1 value2 = (output1733, value962, value1))
    (child2042 : Flapjack.WordAlloc.removeDeadStructural input2042 value962 value1 value2 = (output2042, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2043 value961 value1 value2 = (output2043, value1100, value1) := by
  rw [input2043_def, output2043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1733]
  try dsimp only
  rw [child2042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1733_skip, output2042_skip]
  kernel_rfl

theorem node2044_cond_eq
    (child1732 : Flapjack.WordAlloc.removeDeadStructural input1732 value958 value1 value2 = (output1732, value961, value1))
    (child2043 : Flapjack.WordAlloc.removeDeadStructural input2043 value961 value1 value2 = (output2043, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2044 value958 value1 value2 = (output2044, value1100, value1) := by
  rw [input2044_def, output2044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1732]
  try dsimp only
  rw [child2043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1732_skip, output2043_skip]
  kernel_rfl

theorem node2045_cond_eq
    (child1727 : Flapjack.WordAlloc.removeDeadStructural input1727 value957 value1 value2 = (output1727, value958, value1))
    (child2044 : Flapjack.WordAlloc.removeDeadStructural input2044 value958 value1 value2 = (output2044, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2045 value957 value1 value2 = (output2045, value1100, value1) := by
  rw [input2045_def, output2045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1727]
  try dsimp only
  rw [child2044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1727_skip, output2044_skip]
  kernel_rfl

theorem node2046_cond_eq
    (child1726 : Flapjack.WordAlloc.removeDeadStructural input1726 value952 value1 value2 = (output1726, value957, value1))
    (child2045 : Flapjack.WordAlloc.removeDeadStructural input2045 value957 value1 value2 = (output2045, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2046 value952 value1 value2 = (output2046, value1100, value1) := by
  rw [input2046_def, output2046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1726]
  try dsimp only
  rw [child2045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1726_skip, output2045_skip]
  kernel_rfl

theorem node2047_cond_eq
    (child1717 : Flapjack.WordAlloc.removeDeadStructural input1717 value951 value1 value2 = (output1717, value952, value1))
    (child2046 : Flapjack.WordAlloc.removeDeadStructural input2046 value952 value1 value2 = (output2046, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2047 value951 value1 value2 = (output2047, value1100, value1) := by
  rw [input2047_def, output2047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1717]
  try dsimp only
  rw [child2046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1717_skip, output2046_skip]
  kernel_rfl

#print axioms node2047_cond_eq
end InitECandidate.Proofs.DeadStages647.Parallel
