import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages184.Parallel.Data.Chunk007
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages184.Parallel
theorem node1792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1792 value843 value1 value2 = (output1792, value844, value1) := by
  rw [input1792_def, output1792_def]
  kernel_rfl

theorem node1793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1793 value844 value1 value2 = (output1793, value845, value1) := by
  rw [input1793_def, output1793_def]
  kernel_rfl

theorem node1794_cond_eq
    (child1792 : Flapjack.WordAlloc.removeDeadStructural input1792 value843 value1 value2 = (output1792, value844, value1))
    (child1793 : Flapjack.WordAlloc.removeDeadStructural input1793 value844 value1 value2 = (output1793, value845, value1)) : Flapjack.WordAlloc.removeDeadStructural input1794 value843 value1 value2 = (output1794, value845, value1) := by
  rw [input1794_def, output1794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1792]
  try dsimp only
  rw [child1793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1792_skip, output1793_skip]
  kernel_rfl

theorem node1795_cond_eq
    (child1791 : Flapjack.WordAlloc.removeDeadStructural input1791 value842 value1 value2 = (output1791, value843, value1))
    (child1794 : Flapjack.WordAlloc.removeDeadStructural input1794 value843 value1 value2 = (output1794, value845, value1)) : Flapjack.WordAlloc.removeDeadStructural input1795 value842 value1 value2 = (output1795, value845, value1) := by
  rw [input1795_def, output1795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1791]
  try dsimp only
  rw [child1794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1791_skip, output1794_skip]
  kernel_rfl

theorem node1796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1796 value845 value1 value2 = (output1796, value846, value1) := by
  rw [input1796_def, output1796_def]
  kernel_rfl

theorem node1797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1797 value846 value1 value2 = (output1797, value847, value1) := by
  rw [input1797_def, output1797_def]
  kernel_rfl

theorem node1798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1798 value847 value1 value2 = (output1798, value848, value1) := by
  rw [input1798_def, output1798_def]
  kernel_rfl

theorem node1799_cond_eq
    (child1797 : Flapjack.WordAlloc.removeDeadStructural input1797 value846 value1 value2 = (output1797, value847, value1))
    (child1798 : Flapjack.WordAlloc.removeDeadStructural input1798 value847 value1 value2 = (output1798, value848, value1)) : Flapjack.WordAlloc.removeDeadStructural input1799 value846 value1 value2 = (output1799, value848, value1) := by
  rw [input1799_def, output1799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1797]
  try dsimp only
  rw [child1798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1797_skip, output1798_skip]
  kernel_rfl

theorem node1800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1800 value848 value1 value2 = (output1800, value849, value1) := by
  rw [input1800_def, output1800_def]
  kernel_rfl

theorem node1801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1801 value849 value1 value2 = (output1801, value850, value1) := by
  rw [input1801_def, output1801_def]
  kernel_rfl

theorem node1802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1802 value850 value1 value2 = (output1802, value851, value1) := by
  rw [input1802_def, output1802_def]
  kernel_rfl

theorem node1803_cond_eq
    (child1801 : Flapjack.WordAlloc.removeDeadStructural input1801 value849 value1 value2 = (output1801, value850, value1))
    (child1802 : Flapjack.WordAlloc.removeDeadStructural input1802 value850 value1 value2 = (output1802, value851, value1)) : Flapjack.WordAlloc.removeDeadStructural input1803 value849 value1 value2 = (output1803, value851, value1) := by
  rw [input1803_def, output1803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1801]
  try dsimp only
  rw [child1802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1801_skip, output1802_skip]
  kernel_rfl

theorem node1804_cond_eq
    (child1800 : Flapjack.WordAlloc.removeDeadStructural input1800 value848 value1 value2 = (output1800, value849, value1))
    (child1803 : Flapjack.WordAlloc.removeDeadStructural input1803 value849 value1 value2 = (output1803, value851, value1)) : Flapjack.WordAlloc.removeDeadStructural input1804 value848 value1 value2 = (output1804, value851, value1) := by
  rw [input1804_def, output1804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1800]
  try dsimp only
  rw [child1803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1800_skip, output1803_skip]
  kernel_rfl

theorem node1805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1805 value851 value1 value2 = (output1805, value852, value1) := by
  rw [input1805_def, output1805_def]
  kernel_rfl

theorem node1806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1806 value852 value1 value2 = (output1806, value853, value1) := by
  rw [input1806_def, output1806_def]
  kernel_rfl

theorem node1807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1807 value853 value1 value2 = (output1807, value854, value1) := by
  rw [input1807_def, output1807_def]
  kernel_rfl

theorem node1808_cond_eq
    (child1806 : Flapjack.WordAlloc.removeDeadStructural input1806 value852 value1 value2 = (output1806, value853, value1))
    (child1807 : Flapjack.WordAlloc.removeDeadStructural input1807 value853 value1 value2 = (output1807, value854, value1)) : Flapjack.WordAlloc.removeDeadStructural input1808 value852 value1 value2 = (output1808, value854, value1) := by
  rw [input1808_def, output1808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1806]
  try dsimp only
  rw [child1807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1806_skip, output1807_skip]
  kernel_rfl

theorem node1809_cond_eq
    (child1805 : Flapjack.WordAlloc.removeDeadStructural input1805 value851 value1 value2 = (output1805, value852, value1))
    (child1808 : Flapjack.WordAlloc.removeDeadStructural input1808 value852 value1 value2 = (output1808, value854, value1)) : Flapjack.WordAlloc.removeDeadStructural input1809 value851 value1 value2 = (output1809, value854, value1) := by
  rw [input1809_def, output1809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1805]
  try dsimp only
  rw [child1808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1805_skip, output1808_skip]
  kernel_rfl

theorem node1810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1810 value854 value1 value2 = (output1810, value855, value1) := by
  rw [input1810_def, output1810_def]
  kernel_rfl

theorem node1811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1811 value855 value1 value2 = (output1811, value856, value1) := by
  rw [input1811_def, output1811_def]
  kernel_rfl

theorem node1812_cond_eq
    (child1810 : Flapjack.WordAlloc.removeDeadStructural input1810 value854 value1 value2 = (output1810, value855, value1))
    (child1811 : Flapjack.WordAlloc.removeDeadStructural input1811 value855 value1 value2 = (output1811, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1812 value854 value1 value2 = (output1812, value856, value1) := by
  rw [input1812_def, output1812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1810]
  try dsimp only
  rw [child1811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1810_skip, output1811_skip]
  kernel_rfl

theorem node1813_cond_eq
    (child1809 : Flapjack.WordAlloc.removeDeadStructural input1809 value851 value1 value2 = (output1809, value854, value1))
    (child1812 : Flapjack.WordAlloc.removeDeadStructural input1812 value854 value1 value2 = (output1812, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1813 value851 value1 value2 = (output1813, value856, value1) := by
  rw [input1813_def, output1813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1809]
  try dsimp only
  rw [child1812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1809_skip, output1812_skip]
  kernel_rfl

theorem node1814_cond_eq
    (child1804 : Flapjack.WordAlloc.removeDeadStructural input1804 value848 value1 value2 = (output1804, value851, value1))
    (child1813 : Flapjack.WordAlloc.removeDeadStructural input1813 value851 value1 value2 = (output1813, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1814 value848 value1 value2 = (output1814, value856, value1) := by
  rw [input1814_def, output1814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1804]
  try dsimp only
  rw [child1813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1804_skip, output1813_skip]
  kernel_rfl

theorem node1815_cond_eq
    (child1799 : Flapjack.WordAlloc.removeDeadStructural input1799 value846 value1 value2 = (output1799, value848, value1))
    (child1814 : Flapjack.WordAlloc.removeDeadStructural input1814 value848 value1 value2 = (output1814, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1815 value846 value1 value2 = (output1815, value856, value1) := by
  rw [input1815_def, output1815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1799]
  try dsimp only
  rw [child1814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1799_skip, output1814_skip]
  kernel_rfl

theorem node1816_cond_eq
    (child1796 : Flapjack.WordAlloc.removeDeadStructural input1796 value845 value1 value2 = (output1796, value846, value1))
    (child1815 : Flapjack.WordAlloc.removeDeadStructural input1815 value846 value1 value2 = (output1815, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1816 value845 value1 value2 = (output1816, value856, value1) := by
  rw [input1816_def, output1816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1796]
  try dsimp only
  rw [child1815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1796_skip, output1815_skip]
  kernel_rfl

theorem node1817_cond_eq
    (child1795 : Flapjack.WordAlloc.removeDeadStructural input1795 value842 value1 value2 = (output1795, value845, value1))
    (child1816 : Flapjack.WordAlloc.removeDeadStructural input1816 value845 value1 value2 = (output1816, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1817 value842 value1 value2 = (output1817, value856, value1) := by
  rw [input1817_def, output1817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1795]
  try dsimp only
  rw [child1816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1795_skip, output1816_skip]
  kernel_rfl

theorem node1818_cond_eq
    (child1790 : Flapjack.WordAlloc.removeDeadStructural input1790 value839 value1 value2 = (output1790, value842, value1))
    (child1817 : Flapjack.WordAlloc.removeDeadStructural input1817 value842 value1 value2 = (output1817, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1818 value839 value1 value2 = (output1818, value856, value1) := by
  rw [input1818_def, output1818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1790]
  try dsimp only
  rw [child1817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1790_skip, output1817_skip]
  kernel_rfl

theorem node1819_cond_eq
    (child1785 : Flapjack.WordAlloc.removeDeadStructural input1785 value836 value1 value2 = (output1785, value839, value1))
    (child1818 : Flapjack.WordAlloc.removeDeadStructural input1818 value839 value1 value2 = (output1818, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1819 value836 value1 value2 = (output1819, value856, value1) := by
  rw [input1819_def, output1819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1785]
  try dsimp only
  rw [child1818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1785_skip, output1818_skip]
  kernel_rfl

theorem node1820_cond_eq
    (child1780 : Flapjack.WordAlloc.removeDeadStructural input1780 value834 value1 value2 = (output1780, value836, value1))
    (child1819 : Flapjack.WordAlloc.removeDeadStructural input1819 value836 value1 value2 = (output1819, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1820 value834 value1 value2 = (output1820, value856, value1) := by
  rw [input1820_def, output1820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1780]
  try dsimp only
  rw [child1819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1780_skip, output1819_skip]
  kernel_rfl

theorem node1821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1821 value856 value1 value2 = (output1821, value857, value1) := by
  rw [input1821_def, output1821_def]
  kernel_rfl

theorem node1822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1822 value857 value1 value2 = (output1822, value858, value1) := by
  rw [input1822_def, output1822_def]
  kernel_rfl

theorem node1823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1823 value858 value1 value2 = (output1823, value859, value1) := by
  rw [input1823_def, output1823_def]
  kernel_rfl

theorem node1824_cond_eq
    (child1822 : Flapjack.WordAlloc.removeDeadStructural input1822 value857 value1 value2 = (output1822, value858, value1))
    (child1823 : Flapjack.WordAlloc.removeDeadStructural input1823 value858 value1 value2 = (output1823, value859, value1)) : Flapjack.WordAlloc.removeDeadStructural input1824 value857 value1 value2 = (output1824, value859, value1) := by
  rw [input1824_def, output1824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1822]
  try dsimp only
  rw [child1823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1822_skip, output1823_skip]
  kernel_rfl

theorem node1825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1825 value859 value1 value2 = (output1825, value860, value1) := by
  rw [input1825_def, output1825_def]
  kernel_rfl

theorem node1826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1826 value860 value1 value2 = (output1826, value861, value1) := by
  rw [input1826_def, output1826_def]
  kernel_rfl

theorem node1827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1827 value861 value1 value2 = (output1827, value862, value1) := by
  rw [input1827_def, output1827_def]
  kernel_rfl

theorem node1828_cond_eq
    (child1826 : Flapjack.WordAlloc.removeDeadStructural input1826 value860 value1 value2 = (output1826, value861, value1))
    (child1827 : Flapjack.WordAlloc.removeDeadStructural input1827 value861 value1 value2 = (output1827, value862, value1)) : Flapjack.WordAlloc.removeDeadStructural input1828 value860 value1 value2 = (output1828, value862, value1) := by
  rw [input1828_def, output1828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1826]
  try dsimp only
  rw [child1827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1826_skip, output1827_skip]
  kernel_rfl

theorem node1829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1829 value862 value1 value2 = (output1829, value863, value1) := by
  rw [input1829_def, output1829_def]
  kernel_rfl

theorem node1830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1830 value863 value1 value2 = (output1830, value864, value1) := by
  rw [input1830_def, output1830_def]
  kernel_rfl

theorem node1831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1831 value864 value1 value2 = (output1831, value865, value1) := by
  rw [input1831_def, output1831_def]
  kernel_rfl

theorem node1832_cond_eq
    (child1830 : Flapjack.WordAlloc.removeDeadStructural input1830 value863 value1 value2 = (output1830, value864, value1))
    (child1831 : Flapjack.WordAlloc.removeDeadStructural input1831 value864 value1 value2 = (output1831, value865, value1)) : Flapjack.WordAlloc.removeDeadStructural input1832 value863 value1 value2 = (output1832, value865, value1) := by
  rw [input1832_def, output1832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1830]
  try dsimp only
  rw [child1831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1830_skip, output1831_skip]
  kernel_rfl

theorem node1833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1833 value865 value1 value2 = (output1833, value866, value1) := by
  rw [input1833_def, output1833_def]
  kernel_rfl

theorem node1834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1834 value866 value1 value2 = (output1834, value867, value1) := by
  rw [input1834_def, output1834_def]
  kernel_rfl

theorem node1835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1835 value867 value1 value2 = (output1835, value868, value1) := by
  rw [input1835_def, output1835_def]
  kernel_rfl

theorem node1836_cond_eq
    (child1834 : Flapjack.WordAlloc.removeDeadStructural input1834 value866 value1 value2 = (output1834, value867, value1))
    (child1835 : Flapjack.WordAlloc.removeDeadStructural input1835 value867 value1 value2 = (output1835, value868, value1)) : Flapjack.WordAlloc.removeDeadStructural input1836 value866 value1 value2 = (output1836, value868, value1) := by
  rw [input1836_def, output1836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1834]
  try dsimp only
  rw [child1835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1834_skip, output1835_skip]
  kernel_rfl

theorem node1837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1837 value868 value1 value2 = (output1837, value869, value1) := by
  rw [input1837_def, output1837_def]
  kernel_rfl

theorem node1838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1838 value869 value1 value2 = (output1838, value870, value1) := by
  rw [input1838_def, output1838_def]
  kernel_rfl

theorem node1839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1839 value870 value1 value2 = (output1839, value871, value1) := by
  rw [input1839_def, output1839_def]
  kernel_rfl

theorem node1840_cond_eq
    (child1838 : Flapjack.WordAlloc.removeDeadStructural input1838 value869 value1 value2 = (output1838, value870, value1))
    (child1839 : Flapjack.WordAlloc.removeDeadStructural input1839 value870 value1 value2 = (output1839, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input1840 value869 value1 value2 = (output1840, value871, value1) := by
  rw [input1840_def, output1840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1838]
  try dsimp only
  rw [child1839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1838_skip, output1839_skip]
  kernel_rfl

theorem node1841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1841 value871 value1 value2 = (output1841, value872, value1) := by
  rw [input1841_def, output1841_def]
  kernel_rfl

theorem node1842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1842 value872 value1 value2 = (output1842, value873, value1) := by
  rw [input1842_def, output1842_def]
  kernel_rfl

theorem node1843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1843 value873 value1 value2 = (output1843, value874, value1) := by
  rw [input1843_def, output1843_def]
  kernel_rfl

theorem node1844_cond_eq
    (child1842 : Flapjack.WordAlloc.removeDeadStructural input1842 value872 value1 value2 = (output1842, value873, value1))
    (child1843 : Flapjack.WordAlloc.removeDeadStructural input1843 value873 value1 value2 = (output1843, value874, value1)) : Flapjack.WordAlloc.removeDeadStructural input1844 value872 value1 value2 = (output1844, value874, value1) := by
  rw [input1844_def, output1844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1842]
  try dsimp only
  rw [child1843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1842_skip, output1843_skip]
  kernel_rfl

theorem node1845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1845 value874 value1 value2 = (output1845, value875, value1) := by
  rw [input1845_def, output1845_def]
  kernel_rfl

theorem node1846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1846 value875 value1 value2 = (output1846, value876, value1) := by
  rw [input1846_def, output1846_def]
  kernel_rfl

theorem node1847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1847 value876 value1 value2 = (output1847, value877, value1) := by
  rw [input1847_def, output1847_def]
  kernel_rfl

theorem node1848_cond_eq
    (child1846 : Flapjack.WordAlloc.removeDeadStructural input1846 value875 value1 value2 = (output1846, value876, value1))
    (child1847 : Flapjack.WordAlloc.removeDeadStructural input1847 value876 value1 value2 = (output1847, value877, value1)) : Flapjack.WordAlloc.removeDeadStructural input1848 value875 value1 value2 = (output1848, value877, value1) := by
  rw [input1848_def, output1848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1846]
  try dsimp only
  rw [child1847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1846_skip, output1847_skip]
  kernel_rfl

theorem node1849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1849 value877 value1 value2 = (output1849, value878, value1) := by
  rw [input1849_def, output1849_def]
  kernel_rfl

theorem node1850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1850 value878 value1 value2 = (output1850, value879, value1) := by
  rw [input1850_def, output1850_def]
  kernel_rfl

theorem node1851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1851 value879 value1 value2 = (output1851, value879, value1) := by
  rw [input1851_def, output1851_def]
  kernel_rfl

theorem node1852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1852 value879 value1 value2 = (output1852, value879, value1) := by
  rw [input1852_def, output1852_def]
  kernel_rfl

theorem node1853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1853 value879 value1 value2 = (output1853, value879, value1) := by
  rw [input1853_def, output1853_def]
  kernel_rfl

theorem node1854_cond_eq
    (child1852 : Flapjack.WordAlloc.removeDeadStructural input1852 value879 value1 value2 = (output1852, value879, value1))
    (child1853 : Flapjack.WordAlloc.removeDeadStructural input1853 value879 value1 value2 = (output1853, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1854 value879 value1 value2 = (output1854, value879, value1) := by
  rw [input1854_def, output1854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1852]
  try dsimp only
  rw [child1853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1852_skip, output1853_skip]
  kernel_rfl

theorem node1855_cond_eq
    (child1851 : Flapjack.WordAlloc.removeDeadStructural input1851 value879 value1 value2 = (output1851, value879, value1))
    (child1854 : Flapjack.WordAlloc.removeDeadStructural input1854 value879 value1 value2 = (output1854, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1855 value879 value1 value2 = (output1855, value879, value1) := by
  rw [input1855_def, output1855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1851]
  try dsimp only
  rw [child1854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1851_skip, output1854_skip]
  kernel_rfl

theorem node1856_cond_eq
    (child1850 : Flapjack.WordAlloc.removeDeadStructural input1850 value878 value1 value2 = (output1850, value879, value1))
    (child1855 : Flapjack.WordAlloc.removeDeadStructural input1855 value879 value1 value2 = (output1855, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1856 value878 value1 value2 = (output1856, value879, value1) := by
  rw [input1856_def, output1856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1850]
  try dsimp only
  rw [child1855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1850_skip, output1855_skip]
  kernel_rfl

theorem node1857_cond_eq
    (child1849 : Flapjack.WordAlloc.removeDeadStructural input1849 value877 value1 value2 = (output1849, value878, value1))
    (child1856 : Flapjack.WordAlloc.removeDeadStructural input1856 value878 value1 value2 = (output1856, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1857 value877 value1 value2 = (output1857, value879, value1) := by
  rw [input1857_def, output1857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1849]
  try dsimp only
  rw [child1856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1849_skip, output1856_skip]
  kernel_rfl

theorem node1858_cond_eq
    (child1848 : Flapjack.WordAlloc.removeDeadStructural input1848 value875 value1 value2 = (output1848, value877, value1))
    (child1857 : Flapjack.WordAlloc.removeDeadStructural input1857 value877 value1 value2 = (output1857, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1858 value875 value1 value2 = (output1858, value879, value1) := by
  rw [input1858_def, output1858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1848]
  try dsimp only
  rw [child1857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1848_skip, output1857_skip]
  kernel_rfl

theorem node1859_cond_eq
    (child1845 : Flapjack.WordAlloc.removeDeadStructural input1845 value874 value1 value2 = (output1845, value875, value1))
    (child1858 : Flapjack.WordAlloc.removeDeadStructural input1858 value875 value1 value2 = (output1858, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1859 value874 value1 value2 = (output1859, value879, value1) := by
  rw [input1859_def, output1859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1845]
  try dsimp only
  rw [child1858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1845_skip, output1858_skip]
  kernel_rfl

theorem node1860_cond_eq
    (child1844 : Flapjack.WordAlloc.removeDeadStructural input1844 value872 value1 value2 = (output1844, value874, value1))
    (child1859 : Flapjack.WordAlloc.removeDeadStructural input1859 value874 value1 value2 = (output1859, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1860 value872 value1 value2 = (output1860, value879, value1) := by
  rw [input1860_def, output1860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1844]
  try dsimp only
  rw [child1859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1844_skip, output1859_skip]
  kernel_rfl

theorem node1861_cond_eq
    (child1841 : Flapjack.WordAlloc.removeDeadStructural input1841 value871 value1 value2 = (output1841, value872, value1))
    (child1860 : Flapjack.WordAlloc.removeDeadStructural input1860 value872 value1 value2 = (output1860, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1861 value871 value1 value2 = (output1861, value879, value1) := by
  rw [input1861_def, output1861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1841]
  try dsimp only
  rw [child1860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1841_skip, output1860_skip]
  kernel_rfl

theorem node1862_cond_eq
    (child1840 : Flapjack.WordAlloc.removeDeadStructural input1840 value869 value1 value2 = (output1840, value871, value1))
    (child1861 : Flapjack.WordAlloc.removeDeadStructural input1861 value871 value1 value2 = (output1861, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1862 value869 value1 value2 = (output1862, value879, value1) := by
  rw [input1862_def, output1862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1840]
  try dsimp only
  rw [child1861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1840_skip, output1861_skip]
  kernel_rfl

theorem node1863_cond_eq
    (child1837 : Flapjack.WordAlloc.removeDeadStructural input1837 value868 value1 value2 = (output1837, value869, value1))
    (child1862 : Flapjack.WordAlloc.removeDeadStructural input1862 value869 value1 value2 = (output1862, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1863 value868 value1 value2 = (output1863, value879, value1) := by
  rw [input1863_def, output1863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1837]
  try dsimp only
  rw [child1862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1837_skip, output1862_skip]
  kernel_rfl

theorem node1864_cond_eq
    (child1836 : Flapjack.WordAlloc.removeDeadStructural input1836 value866 value1 value2 = (output1836, value868, value1))
    (child1863 : Flapjack.WordAlloc.removeDeadStructural input1863 value868 value1 value2 = (output1863, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1864 value866 value1 value2 = (output1864, value879, value1) := by
  rw [input1864_def, output1864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1836]
  try dsimp only
  rw [child1863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1836_skip, output1863_skip]
  kernel_rfl

theorem node1865_cond_eq
    (child1833 : Flapjack.WordAlloc.removeDeadStructural input1833 value865 value1 value2 = (output1833, value866, value1))
    (child1864 : Flapjack.WordAlloc.removeDeadStructural input1864 value866 value1 value2 = (output1864, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1865 value865 value1 value2 = (output1865, value879, value1) := by
  rw [input1865_def, output1865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1833]
  try dsimp only
  rw [child1864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1833_skip, output1864_skip]
  kernel_rfl

theorem node1866_cond_eq
    (child1832 : Flapjack.WordAlloc.removeDeadStructural input1832 value863 value1 value2 = (output1832, value865, value1))
    (child1865 : Flapjack.WordAlloc.removeDeadStructural input1865 value865 value1 value2 = (output1865, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1866 value863 value1 value2 = (output1866, value879, value1) := by
  rw [input1866_def, output1866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1832]
  try dsimp only
  rw [child1865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1832_skip, output1865_skip]
  kernel_rfl

theorem node1867_cond_eq
    (child1829 : Flapjack.WordAlloc.removeDeadStructural input1829 value862 value1 value2 = (output1829, value863, value1))
    (child1866 : Flapjack.WordAlloc.removeDeadStructural input1866 value863 value1 value2 = (output1866, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1867 value862 value1 value2 = (output1867, value879, value1) := by
  rw [input1867_def, output1867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1829]
  try dsimp only
  rw [child1866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1829_skip, output1866_skip]
  kernel_rfl

theorem node1868_cond_eq
    (child1828 : Flapjack.WordAlloc.removeDeadStructural input1828 value860 value1 value2 = (output1828, value862, value1))
    (child1867 : Flapjack.WordAlloc.removeDeadStructural input1867 value862 value1 value2 = (output1867, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1868 value860 value1 value2 = (output1868, value879, value1) := by
  rw [input1868_def, output1868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1828]
  try dsimp only
  rw [child1867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1828_skip, output1867_skip]
  kernel_rfl

theorem node1869_cond_eq
    (child1825 : Flapjack.WordAlloc.removeDeadStructural input1825 value859 value1 value2 = (output1825, value860, value1))
    (child1868 : Flapjack.WordAlloc.removeDeadStructural input1868 value860 value1 value2 = (output1868, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1869 value859 value1 value2 = (output1869, value879, value1) := by
  rw [input1869_def, output1869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1825]
  try dsimp only
  rw [child1868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1825_skip, output1868_skip]
  kernel_rfl

theorem node1870_cond_eq
    (child1824 : Flapjack.WordAlloc.removeDeadStructural input1824 value857 value1 value2 = (output1824, value859, value1))
    (child1869 : Flapjack.WordAlloc.removeDeadStructural input1869 value859 value1 value2 = (output1869, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1870 value857 value1 value2 = (output1870, value879, value1) := by
  rw [input1870_def, output1870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1824]
  try dsimp only
  rw [child1869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1824_skip, output1869_skip]
  kernel_rfl

theorem node1871_cond_eq
    (child1821 : Flapjack.WordAlloc.removeDeadStructural input1821 value856 value1 value2 = (output1821, value857, value1))
    (child1870 : Flapjack.WordAlloc.removeDeadStructural input1870 value857 value1 value2 = (output1870, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1871 value856 value1 value2 = (output1871, value879, value1) := by
  rw [input1871_def, output1871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1821]
  try dsimp only
  rw [child1870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1821_skip, output1870_skip]
  kernel_rfl

theorem node1872_cond_eq
    (child1820 : Flapjack.WordAlloc.removeDeadStructural input1820 value834 value1 value2 = (output1820, value856, value1))
    (child1871 : Flapjack.WordAlloc.removeDeadStructural input1871 value856 value1 value2 = (output1871, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1872 value834 value1 value2 = (output1872, value879, value1) := by
  rw [input1872_def, output1872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1820]
  try dsimp only
  rw [child1871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1820_skip, output1871_skip]
  kernel_rfl

theorem node1873_cond_eq
    (child1777 : Flapjack.WordAlloc.removeDeadStructural input1777 value831 value1 value2 = (output1777, value834, value1))
    (child1872 : Flapjack.WordAlloc.removeDeadStructural input1872 value834 value1 value2 = (output1872, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1873 value831 value1 value2 = (output1873, value879, value1) := by
  rw [input1873_def, output1873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1777]
  try dsimp only
  rw [child1872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1777_skip, output1872_skip]
  kernel_rfl

theorem node1874_cond_eq
    (child1772 : Flapjack.WordAlloc.removeDeadStructural input1772 value830 value1 value2 = (output1772, value831, value1))
    (child1873 : Flapjack.WordAlloc.removeDeadStructural input1873 value831 value1 value2 = (output1873, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1874 value830 value1 value2 = (output1874, value879, value1) := by
  rw [input1874_def, output1874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1772]
  try dsimp only
  rw [child1873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1772_skip, output1873_skip]
  kernel_rfl

theorem node1875_cond_eq
    (child1771 : Flapjack.WordAlloc.removeDeadStructural input1771 value828 value1 value2 = (output1771, value830, value1))
    (child1874 : Flapjack.WordAlloc.removeDeadStructural input1874 value830 value1 value2 = (output1874, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1875 value828 value1 value2 = (output1875, value879, value1) := by
  rw [input1875_def, output1875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1771]
  try dsimp only
  rw [child1874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1771_skip, output1874_skip]
  kernel_rfl

theorem node1876_cond_eq
    (child1768 : Flapjack.WordAlloc.removeDeadStructural input1768 value827 value1 value2 = (output1768, value828, value1))
    (child1875 : Flapjack.WordAlloc.removeDeadStructural input1875 value828 value1 value2 = (output1875, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1876 value827 value1 value2 = (output1876, value879, value1) := by
  rw [input1876_def, output1876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1768]
  try dsimp only
  rw [child1875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1768_skip, output1875_skip]
  kernel_rfl

theorem node1877_cond_eq
    (child1767 : Flapjack.WordAlloc.removeDeadStructural input1767 value825 value1 value2 = (output1767, value827, value1))
    (child1876 : Flapjack.WordAlloc.removeDeadStructural input1876 value827 value1 value2 = (output1876, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1877 value825 value1 value2 = (output1877, value879, value1) := by
  rw [input1877_def, output1877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1767]
  try dsimp only
  rw [child1876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1767_skip, output1876_skip]
  kernel_rfl

theorem node1878_cond_eq
    (child1764 : Flapjack.WordAlloc.removeDeadStructural input1764 value824 value1 value2 = (output1764, value825, value1))
    (child1877 : Flapjack.WordAlloc.removeDeadStructural input1877 value825 value1 value2 = (output1877, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1878 value824 value1 value2 = (output1878, value879, value1) := by
  rw [input1878_def, output1878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1764]
  try dsimp only
  rw [child1877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1764_skip, output1877_skip]
  kernel_rfl

theorem node1879_cond_eq
    (child1763 : Flapjack.WordAlloc.removeDeadStructural input1763 value822 value1 value2 = (output1763, value824, value1))
    (child1878 : Flapjack.WordAlloc.removeDeadStructural input1878 value824 value1 value2 = (output1878, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1879 value822 value1 value2 = (output1879, value879, value1) := by
  rw [input1879_def, output1879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1763]
  try dsimp only
  rw [child1878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1763_skip, output1878_skip]
  kernel_rfl

theorem node1880_cond_eq
    (child1760 : Flapjack.WordAlloc.removeDeadStructural input1760 value821 value1 value2 = (output1760, value822, value1))
    (child1879 : Flapjack.WordAlloc.removeDeadStructural input1879 value822 value1 value2 = (output1879, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1880 value821 value1 value2 = (output1880, value879, value1) := by
  rw [input1880_def, output1880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1760]
  try dsimp only
  rw [child1879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1760_skip, output1879_skip]
  kernel_rfl

theorem node1881_cond_eq
    (child1759 : Flapjack.WordAlloc.removeDeadStructural input1759 value819 value1 value2 = (output1759, value821, value1))
    (child1880 : Flapjack.WordAlloc.removeDeadStructural input1880 value821 value1 value2 = (output1880, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1881 value819 value1 value2 = (output1881, value879, value1) := by
  rw [input1881_def, output1881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1759]
  try dsimp only
  rw [child1880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1759_skip, output1880_skip]
  kernel_rfl

theorem node1882_cond_eq
    (child1756 : Flapjack.WordAlloc.removeDeadStructural input1756 value818 value1 value2 = (output1756, value819, value1))
    (child1881 : Flapjack.WordAlloc.removeDeadStructural input1881 value819 value1 value2 = (output1881, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1882 value818 value1 value2 = (output1882, value879, value1) := by
  rw [input1882_def, output1882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1756]
  try dsimp only
  rw [child1881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1756_skip, output1881_skip]
  kernel_rfl

theorem node1883_cond_eq
    (child1755 : Flapjack.WordAlloc.removeDeadStructural input1755 value816 value1 value2 = (output1755, value818, value1))
    (child1882 : Flapjack.WordAlloc.removeDeadStructural input1882 value818 value1 value2 = (output1882, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1883 value816 value1 value2 = (output1883, value879, value1) := by
  rw [input1883_def, output1883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1755]
  try dsimp only
  rw [child1882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1755_skip, output1882_skip]
  kernel_rfl

theorem node1884_cond_eq
    (child1752 : Flapjack.WordAlloc.removeDeadStructural input1752 value815 value1 value2 = (output1752, value816, value1))
    (child1883 : Flapjack.WordAlloc.removeDeadStructural input1883 value816 value1 value2 = (output1883, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1884 value815 value1 value2 = (output1884, value879, value1) := by
  rw [input1884_def, output1884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1752]
  try dsimp only
  rw [child1883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1752_skip, output1883_skip]
  kernel_rfl

theorem node1885_cond_eq
    (child1751 : Flapjack.WordAlloc.removeDeadStructural input1751 value813 value1 value2 = (output1751, value815, value1))
    (child1884 : Flapjack.WordAlloc.removeDeadStructural input1884 value815 value1 value2 = (output1884, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1885 value813 value1 value2 = (output1885, value879, value1) := by
  rw [input1885_def, output1885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1751]
  try dsimp only
  rw [child1884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1751_skip, output1884_skip]
  kernel_rfl

theorem node1886_cond_eq
    (child1748 : Flapjack.WordAlloc.removeDeadStructural input1748 value812 value1 value2 = (output1748, value813, value1))
    (child1885 : Flapjack.WordAlloc.removeDeadStructural input1885 value813 value1 value2 = (output1885, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1886 value812 value1 value2 = (output1886, value879, value1) := by
  rw [input1886_def, output1886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1748]
  try dsimp only
  rw [child1885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1748_skip, output1885_skip]
  kernel_rfl

theorem node1887_cond_eq
    (child1747 : Flapjack.WordAlloc.removeDeadStructural input1747 value810 value1 value2 = (output1747, value812, value1))
    (child1886 : Flapjack.WordAlloc.removeDeadStructural input1886 value812 value1 value2 = (output1886, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1887 value810 value1 value2 = (output1887, value879, value1) := by
  rw [input1887_def, output1887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1747]
  try dsimp only
  rw [child1886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1747_skip, output1886_skip]
  kernel_rfl

theorem node1888_cond_eq
    (child1744 : Flapjack.WordAlloc.removeDeadStructural input1744 value809 value1 value2 = (output1744, value810, value1))
    (child1887 : Flapjack.WordAlloc.removeDeadStructural input1887 value810 value1 value2 = (output1887, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1888 value809 value1 value2 = (output1888, value879, value1) := by
  rw [input1888_def, output1888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1744]
  try dsimp only
  rw [child1887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1744_skip, output1887_skip]
  kernel_rfl

theorem node1889_cond_eq
    (child1743 : Flapjack.WordAlloc.removeDeadStructural input1743 value807 value1 value2 = (output1743, value809, value1))
    (child1888 : Flapjack.WordAlloc.removeDeadStructural input1888 value809 value1 value2 = (output1888, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1889 value807 value1 value2 = (output1889, value879, value1) := by
  rw [input1889_def, output1889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1743]
  try dsimp only
  rw [child1888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1743_skip, output1888_skip]
  kernel_rfl

theorem node1890_cond_eq
    (child1740 : Flapjack.WordAlloc.removeDeadStructural input1740 value806 value1 value2 = (output1740, value807, value1))
    (child1889 : Flapjack.WordAlloc.removeDeadStructural input1889 value807 value1 value2 = (output1889, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1890 value806 value1 value2 = (output1890, value879, value1) := by
  rw [input1890_def, output1890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1740]
  try dsimp only
  rw [child1889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1740_skip, output1889_skip]
  kernel_rfl

theorem node1891_cond_eq
    (child1739 : Flapjack.WordAlloc.removeDeadStructural input1739 value784 value1 value2 = (output1739, value806, value1))
    (child1890 : Flapjack.WordAlloc.removeDeadStructural input1890 value806 value1 value2 = (output1890, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1891 value784 value1 value2 = (output1891, value879, value1) := by
  rw [input1891_def, output1891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1739]
  try dsimp only
  rw [child1890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1739_skip, output1890_skip]
  kernel_rfl

theorem node1892_cond_eq
    (child1696 : Flapjack.WordAlloc.removeDeadStructural input1696 value781 value1 value2 = (output1696, value784, value1))
    (child1891 : Flapjack.WordAlloc.removeDeadStructural input1891 value784 value1 value2 = (output1891, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1892 value781 value1 value2 = (output1892, value879, value1) := by
  rw [input1892_def, output1892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1696]
  try dsimp only
  rw [child1891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1696_skip, output1891_skip]
  kernel_rfl

theorem node1893_cond_eq
    (child1691 : Flapjack.WordAlloc.removeDeadStructural input1691 value780 value1 value2 = (output1691, value781, value1))
    (child1892 : Flapjack.WordAlloc.removeDeadStructural input1892 value781 value1 value2 = (output1892, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1893 value780 value1 value2 = (output1893, value879, value1) := by
  rw [input1893_def, output1893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1691]
  try dsimp only
  rw [child1892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1691_skip, output1892_skip]
  kernel_rfl

theorem node1894_cond_eq
    (child1690 : Flapjack.WordAlloc.removeDeadStructural input1690 value778 value1 value2 = (output1690, value780, value1))
    (child1893 : Flapjack.WordAlloc.removeDeadStructural input1893 value780 value1 value2 = (output1893, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1894 value778 value1 value2 = (output1894, value879, value1) := by
  rw [input1894_def, output1894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1690]
  try dsimp only
  rw [child1893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1690_skip, output1893_skip]
  kernel_rfl

theorem node1895_cond_eq
    (child1687 : Flapjack.WordAlloc.removeDeadStructural input1687 value777 value1 value2 = (output1687, value778, value1))
    (child1894 : Flapjack.WordAlloc.removeDeadStructural input1894 value778 value1 value2 = (output1894, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1895 value777 value1 value2 = (output1895, value879, value1) := by
  rw [input1895_def, output1895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1687]
  try dsimp only
  rw [child1894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1687_skip, output1894_skip]
  kernel_rfl

theorem node1896_cond_eq
    (child1686 : Flapjack.WordAlloc.removeDeadStructural input1686 value775 value1 value2 = (output1686, value777, value1))
    (child1895 : Flapjack.WordAlloc.removeDeadStructural input1895 value777 value1 value2 = (output1895, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1896 value775 value1 value2 = (output1896, value879, value1) := by
  rw [input1896_def, output1896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1686]
  try dsimp only
  rw [child1895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1686_skip, output1895_skip]
  kernel_rfl

theorem node1897_cond_eq
    (child1683 : Flapjack.WordAlloc.removeDeadStructural input1683 value774 value1 value2 = (output1683, value775, value1))
    (child1896 : Flapjack.WordAlloc.removeDeadStructural input1896 value775 value1 value2 = (output1896, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1897 value774 value1 value2 = (output1897, value879, value1) := by
  rw [input1897_def, output1897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1683]
  try dsimp only
  rw [child1896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1683_skip, output1896_skip]
  kernel_rfl

theorem node1898_cond_eq
    (child1682 : Flapjack.WordAlloc.removeDeadStructural input1682 value772 value1 value2 = (output1682, value774, value1))
    (child1897 : Flapjack.WordAlloc.removeDeadStructural input1897 value774 value1 value2 = (output1897, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1898 value772 value1 value2 = (output1898, value879, value1) := by
  rw [input1898_def, output1898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1682]
  try dsimp only
  rw [child1897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1682_skip, output1897_skip]
  kernel_rfl

theorem node1899_cond_eq
    (child1679 : Flapjack.WordAlloc.removeDeadStructural input1679 value771 value1 value2 = (output1679, value772, value1))
    (child1898 : Flapjack.WordAlloc.removeDeadStructural input1898 value772 value1 value2 = (output1898, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1899 value771 value1 value2 = (output1899, value879, value1) := by
  rw [input1899_def, output1899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1679]
  try dsimp only
  rw [child1898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1679_skip, output1898_skip]
  kernel_rfl

theorem node1900_cond_eq
    (child1678 : Flapjack.WordAlloc.removeDeadStructural input1678 value769 value1 value2 = (output1678, value771, value1))
    (child1899 : Flapjack.WordAlloc.removeDeadStructural input1899 value771 value1 value2 = (output1899, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1900 value769 value1 value2 = (output1900, value879, value1) := by
  rw [input1900_def, output1900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1678]
  try dsimp only
  rw [child1899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1678_skip, output1899_skip]
  kernel_rfl

theorem node1901_cond_eq
    (child1675 : Flapjack.WordAlloc.removeDeadStructural input1675 value768 value1 value2 = (output1675, value769, value1))
    (child1900 : Flapjack.WordAlloc.removeDeadStructural input1900 value769 value1 value2 = (output1900, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1901 value768 value1 value2 = (output1901, value879, value1) := by
  rw [input1901_def, output1901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1675]
  try dsimp only
  rw [child1900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1675_skip, output1900_skip]
  kernel_rfl

theorem node1902_cond_eq
    (child1674 : Flapjack.WordAlloc.removeDeadStructural input1674 value766 value1 value2 = (output1674, value768, value1))
    (child1901 : Flapjack.WordAlloc.removeDeadStructural input1901 value768 value1 value2 = (output1901, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1902 value766 value1 value2 = (output1902, value879, value1) := by
  rw [input1902_def, output1902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1674]
  try dsimp only
  rw [child1901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1674_skip, output1901_skip]
  kernel_rfl

theorem node1903_cond_eq
    (child1671 : Flapjack.WordAlloc.removeDeadStructural input1671 value765 value1 value2 = (output1671, value766, value1))
    (child1902 : Flapjack.WordAlloc.removeDeadStructural input1902 value766 value1 value2 = (output1902, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1903 value765 value1 value2 = (output1903, value879, value1) := by
  rw [input1903_def, output1903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1671]
  try dsimp only
  rw [child1902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1671_skip, output1902_skip]
  kernel_rfl

theorem node1904_cond_eq
    (child1670 : Flapjack.WordAlloc.removeDeadStructural input1670 value763 value1 value2 = (output1670, value765, value1))
    (child1903 : Flapjack.WordAlloc.removeDeadStructural input1903 value765 value1 value2 = (output1903, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1904 value763 value1 value2 = (output1904, value879, value1) := by
  rw [input1904_def, output1904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1670]
  try dsimp only
  rw [child1903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1670_skip, output1903_skip]
  kernel_rfl

theorem node1905_cond_eq
    (child1667 : Flapjack.WordAlloc.removeDeadStructural input1667 value762 value1 value2 = (output1667, value763, value1))
    (child1904 : Flapjack.WordAlloc.removeDeadStructural input1904 value763 value1 value2 = (output1904, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1905 value762 value1 value2 = (output1905, value879, value1) := by
  rw [input1905_def, output1905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1667]
  try dsimp only
  rw [child1904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1667_skip, output1904_skip]
  kernel_rfl

theorem node1906_cond_eq
    (child1666 : Flapjack.WordAlloc.removeDeadStructural input1666 value760 value1 value2 = (output1666, value762, value1))
    (child1905 : Flapjack.WordAlloc.removeDeadStructural input1905 value762 value1 value2 = (output1905, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1906 value760 value1 value2 = (output1906, value879, value1) := by
  rw [input1906_def, output1906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1666]
  try dsimp only
  rw [child1905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1666_skip, output1905_skip]
  kernel_rfl

theorem node1907_cond_eq
    (child1663 : Flapjack.WordAlloc.removeDeadStructural input1663 value759 value1 value2 = (output1663, value760, value1))
    (child1906 : Flapjack.WordAlloc.removeDeadStructural input1906 value760 value1 value2 = (output1906, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1907 value759 value1 value2 = (output1907, value879, value1) := by
  rw [input1907_def, output1907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1663]
  try dsimp only
  rw [child1906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1663_skip, output1906_skip]
  kernel_rfl

theorem node1908_cond_eq
    (child1662 : Flapjack.WordAlloc.removeDeadStructural input1662 value757 value1 value2 = (output1662, value759, value1))
    (child1907 : Flapjack.WordAlloc.removeDeadStructural input1907 value759 value1 value2 = (output1907, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1908 value757 value1 value2 = (output1908, value879, value1) := by
  rw [input1908_def, output1908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1662]
  try dsimp only
  rw [child1907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1662_skip, output1907_skip]
  kernel_rfl

theorem node1909_cond_eq
    (child1659 : Flapjack.WordAlloc.removeDeadStructural input1659 value756 value1 value2 = (output1659, value757, value1))
    (child1908 : Flapjack.WordAlloc.removeDeadStructural input1908 value757 value1 value2 = (output1908, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1909 value756 value1 value2 = (output1909, value879, value1) := by
  rw [input1909_def, output1909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1659]
  try dsimp only
  rw [child1908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1659_skip, output1908_skip]
  kernel_rfl

theorem node1910_cond_eq
    (child1658 : Flapjack.WordAlloc.removeDeadStructural input1658 value734 value1 value2 = (output1658, value756, value1))
    (child1909 : Flapjack.WordAlloc.removeDeadStructural input1909 value756 value1 value2 = (output1909, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1910 value734 value1 value2 = (output1910, value879, value1) := by
  rw [input1910_def, output1910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1658]
  try dsimp only
  rw [child1909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1658_skip, output1909_skip]
  kernel_rfl

theorem node1911_cond_eq
    (child1615 : Flapjack.WordAlloc.removeDeadStructural input1615 value731 value1 value2 = (output1615, value734, value1))
    (child1910 : Flapjack.WordAlloc.removeDeadStructural input1910 value734 value1 value2 = (output1910, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1911 value731 value1 value2 = (output1911, value879, value1) := by
  rw [input1911_def, output1911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1615]
  try dsimp only
  rw [child1910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1615_skip, output1910_skip]
  kernel_rfl

theorem node1912_cond_eq
    (child1610 : Flapjack.WordAlloc.removeDeadStructural input1610 value730 value1 value2 = (output1610, value731, value1))
    (child1911 : Flapjack.WordAlloc.removeDeadStructural input1911 value731 value1 value2 = (output1911, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1912 value730 value1 value2 = (output1912, value879, value1) := by
  rw [input1912_def, output1912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1610]
  try dsimp only
  rw [child1911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1610_skip, output1911_skip]
  kernel_rfl

theorem node1913_cond_eq
    (child1609 : Flapjack.WordAlloc.removeDeadStructural input1609 value728 value1 value2 = (output1609, value730, value1))
    (child1912 : Flapjack.WordAlloc.removeDeadStructural input1912 value730 value1 value2 = (output1912, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1913 value728 value1 value2 = (output1913, value879, value1) := by
  rw [input1913_def, output1913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1609]
  try dsimp only
  rw [child1912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1609_skip, output1912_skip]
  kernel_rfl

theorem node1914_cond_eq
    (child1606 : Flapjack.WordAlloc.removeDeadStructural input1606 value727 value1 value2 = (output1606, value728, value1))
    (child1913 : Flapjack.WordAlloc.removeDeadStructural input1913 value728 value1 value2 = (output1913, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1914 value727 value1 value2 = (output1914, value879, value1) := by
  rw [input1914_def, output1914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1606]
  try dsimp only
  rw [child1913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1606_skip, output1913_skip]
  kernel_rfl

theorem node1915_cond_eq
    (child1605 : Flapjack.WordAlloc.removeDeadStructural input1605 value725 value1 value2 = (output1605, value727, value1))
    (child1914 : Flapjack.WordAlloc.removeDeadStructural input1914 value727 value1 value2 = (output1914, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1915 value725 value1 value2 = (output1915, value879, value1) := by
  rw [input1915_def, output1915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1605]
  try dsimp only
  rw [child1914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1605_skip, output1914_skip]
  kernel_rfl

theorem node1916_cond_eq
    (child1602 : Flapjack.WordAlloc.removeDeadStructural input1602 value724 value1 value2 = (output1602, value725, value1))
    (child1915 : Flapjack.WordAlloc.removeDeadStructural input1915 value725 value1 value2 = (output1915, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1916 value724 value1 value2 = (output1916, value879, value1) := by
  rw [input1916_def, output1916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1602]
  try dsimp only
  rw [child1915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1602_skip, output1915_skip]
  kernel_rfl

theorem node1917_cond_eq
    (child1601 : Flapjack.WordAlloc.removeDeadStructural input1601 value722 value1 value2 = (output1601, value724, value1))
    (child1916 : Flapjack.WordAlloc.removeDeadStructural input1916 value724 value1 value2 = (output1916, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1917 value722 value1 value2 = (output1917, value879, value1) := by
  rw [input1917_def, output1917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1601]
  try dsimp only
  rw [child1916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1601_skip, output1916_skip]
  kernel_rfl

theorem node1918_cond_eq
    (child1598 : Flapjack.WordAlloc.removeDeadStructural input1598 value721 value1 value2 = (output1598, value722, value1))
    (child1917 : Flapjack.WordAlloc.removeDeadStructural input1917 value722 value1 value2 = (output1917, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1918 value721 value1 value2 = (output1918, value879, value1) := by
  rw [input1918_def, output1918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1598]
  try dsimp only
  rw [child1917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1598_skip, output1917_skip]
  kernel_rfl

theorem node1919_cond_eq
    (child1597 : Flapjack.WordAlloc.removeDeadStructural input1597 value719 value1 value2 = (output1597, value721, value1))
    (child1918 : Flapjack.WordAlloc.removeDeadStructural input1918 value721 value1 value2 = (output1918, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1919 value719 value1 value2 = (output1919, value879, value1) := by
  rw [input1919_def, output1919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1597]
  try dsimp only
  rw [child1918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1597_skip, output1918_skip]
  kernel_rfl

theorem node1920_cond_eq
    (child1594 : Flapjack.WordAlloc.removeDeadStructural input1594 value718 value1 value2 = (output1594, value719, value1))
    (child1919 : Flapjack.WordAlloc.removeDeadStructural input1919 value719 value1 value2 = (output1919, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1920 value718 value1 value2 = (output1920, value879, value1) := by
  rw [input1920_def, output1920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1594]
  try dsimp only
  rw [child1919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1594_skip, output1919_skip]
  kernel_rfl

theorem node1921_cond_eq
    (child1593 : Flapjack.WordAlloc.removeDeadStructural input1593 value716 value1 value2 = (output1593, value718, value1))
    (child1920 : Flapjack.WordAlloc.removeDeadStructural input1920 value718 value1 value2 = (output1920, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1921 value716 value1 value2 = (output1921, value879, value1) := by
  rw [input1921_def, output1921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1593]
  try dsimp only
  rw [child1920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1593_skip, output1920_skip]
  kernel_rfl

theorem node1922_cond_eq
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value715 value1 value2 = (output1590, value716, value1))
    (child1921 : Flapjack.WordAlloc.removeDeadStructural input1921 value716 value1 value2 = (output1921, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1922 value715 value1 value2 = (output1922, value879, value1) := by
  rw [input1922_def, output1922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1590]
  try dsimp only
  rw [child1921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1590_skip, output1921_skip]
  kernel_rfl

theorem node1923_cond_eq
    (child1589 : Flapjack.WordAlloc.removeDeadStructural input1589 value713 value1 value2 = (output1589, value715, value1))
    (child1922 : Flapjack.WordAlloc.removeDeadStructural input1922 value715 value1 value2 = (output1922, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1923 value713 value1 value2 = (output1923, value879, value1) := by
  rw [input1923_def, output1923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1589]
  try dsimp only
  rw [child1922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1589_skip, output1922_skip]
  kernel_rfl

theorem node1924_cond_eq
    (child1586 : Flapjack.WordAlloc.removeDeadStructural input1586 value712 value1 value2 = (output1586, value713, value1))
    (child1923 : Flapjack.WordAlloc.removeDeadStructural input1923 value713 value1 value2 = (output1923, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1924 value712 value1 value2 = (output1924, value879, value1) := by
  rw [input1924_def, output1924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1586]
  try dsimp only
  rw [child1923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1586_skip, output1923_skip]
  kernel_rfl

theorem node1925_cond_eq
    (child1585 : Flapjack.WordAlloc.removeDeadStructural input1585 value710 value1 value2 = (output1585, value712, value1))
    (child1924 : Flapjack.WordAlloc.removeDeadStructural input1924 value712 value1 value2 = (output1924, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1925 value710 value1 value2 = (output1925, value879, value1) := by
  rw [input1925_def, output1925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1585]
  try dsimp only
  rw [child1924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1585_skip, output1924_skip]
  kernel_rfl

theorem node1926_cond_eq
    (child1582 : Flapjack.WordAlloc.removeDeadStructural input1582 value709 value1 value2 = (output1582, value710, value1))
    (child1925 : Flapjack.WordAlloc.removeDeadStructural input1925 value710 value1 value2 = (output1925, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1926 value709 value1 value2 = (output1926, value879, value1) := by
  rw [input1926_def, output1926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1582]
  try dsimp only
  rw [child1925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1582_skip, output1925_skip]
  kernel_rfl

theorem node1927_cond_eq
    (child1581 : Flapjack.WordAlloc.removeDeadStructural input1581 value707 value1 value2 = (output1581, value709, value1))
    (child1926 : Flapjack.WordAlloc.removeDeadStructural input1926 value709 value1 value2 = (output1926, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1927 value707 value1 value2 = (output1927, value879, value1) := by
  rw [input1927_def, output1927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1581]
  try dsimp only
  rw [child1926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1581_skip, output1926_skip]
  kernel_rfl

theorem node1928_cond_eq
    (child1578 : Flapjack.WordAlloc.removeDeadStructural input1578 value706 value1 value2 = (output1578, value707, value1))
    (child1927 : Flapjack.WordAlloc.removeDeadStructural input1927 value707 value1 value2 = (output1927, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1928 value706 value1 value2 = (output1928, value879, value1) := by
  rw [input1928_def, output1928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1578]
  try dsimp only
  rw [child1927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1578_skip, output1927_skip]
  kernel_rfl

theorem node1929_cond_eq
    (child1577 : Flapjack.WordAlloc.removeDeadStructural input1577 value684 value1 value2 = (output1577, value706, value1))
    (child1928 : Flapjack.WordAlloc.removeDeadStructural input1928 value706 value1 value2 = (output1928, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1929 value684 value1 value2 = (output1929, value879, value1) := by
  rw [input1929_def, output1929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1577]
  try dsimp only
  rw [child1928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1577_skip, output1928_skip]
  kernel_rfl

theorem node1930_cond_eq
    (child1534 : Flapjack.WordAlloc.removeDeadStructural input1534 value681 value1 value2 = (output1534, value684, value1))
    (child1929 : Flapjack.WordAlloc.removeDeadStructural input1929 value684 value1 value2 = (output1929, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1930 value681 value1 value2 = (output1930, value879, value1) := by
  rw [input1930_def, output1930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1534]
  try dsimp only
  rw [child1929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1534_skip, output1929_skip]
  kernel_rfl

theorem node1931_cond_eq
    (child1529 : Flapjack.WordAlloc.removeDeadStructural input1529 value680 value1 value2 = (output1529, value681, value1))
    (child1930 : Flapjack.WordAlloc.removeDeadStructural input1930 value681 value1 value2 = (output1930, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1931 value680 value1 value2 = (output1931, value879, value1) := by
  rw [input1931_def, output1931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1529]
  try dsimp only
  rw [child1930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1529_skip, output1930_skip]
  kernel_rfl

theorem node1932_cond_eq
    (child1528 : Flapjack.WordAlloc.removeDeadStructural input1528 value676 value1 value2 = (output1528, value680, value1))
    (child1931 : Flapjack.WordAlloc.removeDeadStructural input1931 value680 value1 value2 = (output1931, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1932 value676 value1 value2 = (output1932, value879, value1) := by
  rw [input1932_def, output1932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1528]
  try dsimp only
  rw [child1931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1528_skip, output1931_skip]
  kernel_rfl

theorem node1933_cond_eq
    (child1521 : Flapjack.WordAlloc.removeDeadStructural input1521 value675 value1 value2 = (output1521, value676, value1))
    (child1932 : Flapjack.WordAlloc.removeDeadStructural input1932 value676 value1 value2 = (output1932, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1933 value675 value1 value2 = (output1933, value879, value1) := by
  rw [input1933_def, output1933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1521]
  try dsimp only
  rw [child1932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1521_skip, output1932_skip]
  kernel_rfl

theorem node1934_cond_eq
    (child1520 : Flapjack.WordAlloc.removeDeadStructural input1520 value674 value1 value2 = (output1520, value675, value1))
    (child1933 : Flapjack.WordAlloc.removeDeadStructural input1933 value675 value1 value2 = (output1933, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1934 value674 value1 value2 = (output1934, value879, value1) := by
  rw [input1934_def, output1934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1520]
  try dsimp only
  rw [child1933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1520_skip, output1933_skip]
  kernel_rfl

theorem node1935_cond_eq
    (child1519 : Flapjack.WordAlloc.removeDeadStructural input1519 value673 value1 value2 = (output1519, value674, value1))
    (child1934 : Flapjack.WordAlloc.removeDeadStructural input1934 value674 value1 value2 = (output1934, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1935 value673 value1 value2 = (output1935, value879, value1) := by
  rw [input1935_def, output1935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1519]
  try dsimp only
  rw [child1934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1519_skip, output1934_skip]
  kernel_rfl

theorem node1936_cond_eq
    (child1518 : Flapjack.WordAlloc.removeDeadStructural input1518 value670 value1 value2 = (output1518, value673, value1))
    (child1935 : Flapjack.WordAlloc.removeDeadStructural input1935 value673 value1 value2 = (output1935, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1936 value670 value1 value2 = (output1936, value879, value1) := by
  rw [input1936_def, output1936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1518]
  try dsimp only
  rw [child1935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1518_skip, output1935_skip]
  kernel_rfl

theorem node1937_cond_eq
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value669 value1 value2 = (output1513, value670, value1))
    (child1936 : Flapjack.WordAlloc.removeDeadStructural input1936 value670 value1 value2 = (output1936, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1937 value669 value1 value2 = (output1937, value879, value1) := by
  rw [input1937_def, output1937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1513]
  try dsimp only
  rw [child1936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1513_skip, output1936_skip]
  kernel_rfl

theorem node1938_cond_eq
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value668 value1 value2 = (output1512, value669, value1))
    (child1937 : Flapjack.WordAlloc.removeDeadStructural input1937 value669 value1 value2 = (output1937, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1938 value668 value1 value2 = (output1938, value879, value1) := by
  rw [input1938_def, output1938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1512]
  try dsimp only
  rw [child1937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1512_skip, output1937_skip]
  kernel_rfl

theorem node1939_cond_eq
    (child1511 : Flapjack.WordAlloc.removeDeadStructural input1511 value664 value1 value2 = (output1511, value668, value1))
    (child1938 : Flapjack.WordAlloc.removeDeadStructural input1938 value668 value1 value2 = (output1938, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1939 value664 value1 value2 = (output1939, value879, value1) := by
  rw [input1939_def, output1939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1511]
  try dsimp only
  rw [child1938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1511_skip, output1938_skip]
  kernel_rfl

theorem node1940_cond_eq
    (child1504 : Flapjack.WordAlloc.removeDeadStructural input1504 value662 value1 value2 = (output1504, value664, value1))
    (child1939 : Flapjack.WordAlloc.removeDeadStructural input1939 value664 value1 value2 = (output1939, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1940 value662 value1 value2 = (output1940, value879, value1) := by
  rw [input1940_def, output1940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1504]
  try dsimp only
  rw [child1939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1504_skip, output1939_skip]
  kernel_rfl

theorem node1941_cond_eq
    (child1501 : Flapjack.WordAlloc.removeDeadStructural input1501 value661 value1 value2 = (output1501, value662, value1))
    (child1940 : Flapjack.WordAlloc.removeDeadStructural input1940 value662 value1 value2 = (output1940, value879, value1)) : Flapjack.WordAlloc.removeDeadStructural input1941 value661 value1 value2 = (output1941, value879, value1) := by
  rw [input1941_def, output1941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1501]
  try dsimp only
  rw [child1940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1501_skip, output1940_skip]
  kernel_rfl

theorem node1942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1942 value661 value1 value2 = (output1942, value661, value1) := by
  rw [input1942_def, output1942_def]
  kernel_rfl

theorem node1943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1943 value661 value1 value2 = (output1943, value880, value1) := by
  rw [input1943_def, output1943_def]
  kernel_rfl

theorem node1944_cond_eq
    (child1942 : Flapjack.WordAlloc.removeDeadStructural input1942 value661 value1 value2 = (output1942, value661, value1))
    (child1943 : Flapjack.WordAlloc.removeDeadStructural input1943 value661 value1 value2 = (output1943, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input1944 value661 value1 value2 = (output1944, value880, value1) := by
  rw [input1944_def, output1944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1942]
  try dsimp only
  rw [child1943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1942_skip, output1943_skip]
  kernel_rfl

theorem node1945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1945 value880 value1 value2 = (output1945, value880, value1) := by
  rw [input1945_def, output1945_def]
  kernel_rfl

theorem node1946_cond_eq
    (child1944 : Flapjack.WordAlloc.removeDeadStructural input1944 value661 value1 value2 = (output1944, value880, value1))
    (child1945 : Flapjack.WordAlloc.removeDeadStructural input1945 value880 value1 value2 = (output1945, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input1946 value661 value1 value2 = (output1946, value880, value1) := by
  rw [input1946_def, output1946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1944]
  try dsimp only
  rw [child1945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1944_skip, output1945_skip]
  kernel_rfl

theorem node1947_cond_eq
    (child1941 : Flapjack.WordAlloc.removeDeadStructural input1941 value661 value1 value2 = (output1941, value879, value1))
    (child1946 : Flapjack.WordAlloc.removeDeadStructural input1946 value661 value1 value2 = (output1946, value880, value1)) : Flapjack.WordAlloc.removeDeadStructural input1947 value661 value1 value2 = (output1947, value882, value1) := by
  rw [input1947_def, output1947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1941]
  try dsimp only
  rw [child1946]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1941_skip, output1946_skip]
  kernel_rfl

theorem node1948_cond_eq
    (child1498 : Flapjack.WordAlloc.removeDeadStructural input1498 value661 value1 value2 = (output1498, value661, value1))
    (child1947 : Flapjack.WordAlloc.removeDeadStructural input1947 value661 value1 value2 = (output1947, value882, value1)) : Flapjack.WordAlloc.removeDeadStructural input1948 value661 value1 value2 = (output1948, value882, value1) := by
  rw [input1948_def, output1948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1498]
  try dsimp only
  rw [child1947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1498_skip, output1947_skip]
  kernel_rfl

theorem node1949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1949 value882 value1 value2 = (output1949, value880, value1) := by
  rw [input1949_def, output1949_def]
  kernel_rfl

theorem node1950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1950 value880 value1 value2 = (output1950, value883, value1) := by
  rw [input1950_def, output1950_def]
  kernel_rfl

theorem node1951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1951 value883 value1 value2 = (output1951, value883, value1) := by
  rw [input1951_def, output1951_def]
  kernel_rfl

theorem node1952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1952 value883 value1 value2 = (output1952, value883, value1) := by
  rw [input1952_def, output1952_def]
  kernel_rfl

theorem node1953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1953 value883 value1 value2 = (output1953, value883, value1) := by
  rw [input1953_def, output1953_def]
  kernel_rfl

theorem node1954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1954 value883 value1 value2 = (output1954, value883, value1) := by
  rw [input1954_def, output1954_def]
  kernel_rfl

theorem node1955_cond_eq
    (child1953 : Flapjack.WordAlloc.removeDeadStructural input1953 value883 value1 value2 = (output1953, value883, value1))
    (child1954 : Flapjack.WordAlloc.removeDeadStructural input1954 value883 value1 value2 = (output1954, value883, value1)) : Flapjack.WordAlloc.removeDeadStructural input1955 value883 value1 value2 = (output1955, value883, value1) := by
  rw [input1955_def, output1955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1953]
  try dsimp only
  rw [child1954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1953_skip, output1954_skip]
  kernel_rfl

theorem node1956_cond_eq
    (child1952 : Flapjack.WordAlloc.removeDeadStructural input1952 value883 value1 value2 = (output1952, value883, value1))
    (child1955 : Flapjack.WordAlloc.removeDeadStructural input1955 value883 value1 value2 = (output1955, value883, value1)) : Flapjack.WordAlloc.removeDeadStructural input1956 value883 value1 value2 = (output1956, value883, value1) := by
  rw [input1956_def, output1956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1952]
  try dsimp only
  rw [child1955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1952_skip, output1955_skip]
  kernel_rfl

theorem node1957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1957 value883 value1 value2 = (output1957, value883, value1) := by
  rw [input1957_def, output1957_def]
  kernel_rfl

theorem node1958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1958 value883 value1 value2 = (output1958, value883, value1) := by
  rw [input1958_def, output1958_def]
  kernel_rfl

theorem node1959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1959 value883 value1 value2 = (output1959, value883, value1) := by
  rw [input1959_def, output1959_def]
  kernel_rfl

theorem node1960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1960 value883 value1 value2 = (output1960, value883, value1) := by
  rw [input1960_def, output1960_def]
  kernel_rfl

theorem node1961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1961 value883 value1 value2 = (output1961, value883, value1) := by
  rw [input1961_def, output1961_def]
  kernel_rfl

theorem node1962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1962 value883 value1 value2 = (output1962, value883, value1) := by
  rw [input1962_def, output1962_def]
  kernel_rfl

theorem node1963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1963 value883 value1 value2 = (output1963, value883, value1) := by
  rw [input1963_def, output1963_def]
  kernel_rfl

theorem node1964_cond_eq
    (child1962 : Flapjack.WordAlloc.removeDeadStructural input1962 value883 value1 value2 = (output1962, value883, value1))
    (child1963 : Flapjack.WordAlloc.removeDeadStructural input1963 value883 value1 value2 = (output1963, value883, value1)) : Flapjack.WordAlloc.removeDeadStructural input1964 value883 value1 value2 = (output1964, value883, value1) := by
  rw [input1964_def, output1964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1962]
  try dsimp only
  rw [child1963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1962_skip, output1963_skip]
  kernel_rfl

theorem node1965_cond_eq
    (child1961 : Flapjack.WordAlloc.removeDeadStructural input1961 value883 value1 value2 = (output1961, value883, value1))
    (child1964 : Flapjack.WordAlloc.removeDeadStructural input1964 value883 value1 value2 = (output1964, value883, value1)) : Flapjack.WordAlloc.removeDeadStructural input1965 value883 value1 value2 = (output1965, value883, value1) := by
  rw [input1965_def, output1965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1961]
  try dsimp only
  rw [child1964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1961_skip, output1964_skip]
  kernel_rfl

theorem node1966_cond_eq
    (child1960 : Flapjack.WordAlloc.removeDeadStructural input1960 value883 value1 value2 = (output1960, value883, value1))
    (child1965 : Flapjack.WordAlloc.removeDeadStructural input1965 value883 value1 value2 = (output1965, value883, value1)) : Flapjack.WordAlloc.removeDeadStructural input1966 value883 value1 value2 = (output1966, value883, value1) := by
  rw [input1966_def, output1966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1960]
  try dsimp only
  rw [child1965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1960_skip, output1965_skip]
  kernel_rfl

theorem node1967_cond_eq
    (child1959 : Flapjack.WordAlloc.removeDeadStructural input1959 value883 value1 value2 = (output1959, value883, value1))
    (child1966 : Flapjack.WordAlloc.removeDeadStructural input1966 value883 value1 value2 = (output1966, value883, value1)) : Flapjack.WordAlloc.removeDeadStructural input1967 value883 value1 value2 = (output1967, value883, value1) := by
  rw [input1967_def, output1967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1959]
  try dsimp only
  rw [child1966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1959_skip, output1966_skip]
  kernel_rfl

theorem node1968_cond_eq
    (child1958 : Flapjack.WordAlloc.removeDeadStructural input1958 value883 value1 value2 = (output1958, value883, value1))
    (child1967 : Flapjack.WordAlloc.removeDeadStructural input1967 value883 value1 value2 = (output1967, value883, value1)) : Flapjack.WordAlloc.removeDeadStructural input1968 value883 value1 value2 = (output1968, value883, value1) := by
  rw [input1968_def, output1968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1958]
  try dsimp only
  rw [child1967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1958_skip, output1967_skip]
  kernel_rfl

theorem node1969_cond_eq
    (child1957 : Flapjack.WordAlloc.removeDeadStructural input1957 value883 value1 value2 = (output1957, value883, value1))
    (child1968 : Flapjack.WordAlloc.removeDeadStructural input1968 value883 value1 value2 = (output1968, value883, value1)) : Flapjack.WordAlloc.removeDeadStructural input1969 value883 value1 value2 = (output1969, value883, value1) := by
  rw [input1969_def, output1969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1957]
  try dsimp only
  rw [child1968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1957_skip, output1968_skip]
  kernel_rfl

theorem node1970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1970 value883 value1 value2 = (output1970, value884, value1) := by
  rw [input1970_def, output1970_def]
  kernel_rfl

theorem node1971_cond_eq
    (child1969 : Flapjack.WordAlloc.removeDeadStructural input1969 value883 value1 value2 = (output1969, value883, value1))
    (child1970 : Flapjack.WordAlloc.removeDeadStructural input1970 value883 value1 value2 = (output1970, value884, value1)) : Flapjack.WordAlloc.removeDeadStructural input1971 value883 value1 value2 = (output1971, value884, value1) := by
  rw [input1971_def, output1971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1969]
  try dsimp only
  rw [child1970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1969_skip, output1970_skip]
  kernel_rfl

theorem node1972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1972 value884 value1 value2 = (output1972, value885, value1) := by
  rw [input1972_def, output1972_def]
  kernel_rfl

theorem node1973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1973 value885 value1 value2 = (output1973, value886, value1) := by
  rw [input1973_def, output1973_def]
  kernel_rfl

theorem node1974_cond_eq
    (child1972 : Flapjack.WordAlloc.removeDeadStructural input1972 value884 value1 value2 = (output1972, value885, value1))
    (child1973 : Flapjack.WordAlloc.removeDeadStructural input1973 value885 value1 value2 = (output1973, value886, value1)) : Flapjack.WordAlloc.removeDeadStructural input1974 value884 value1 value2 = (output1974, value886, value1) := by
  rw [input1974_def, output1974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1972]
  try dsimp only
  rw [child1973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1972_skip, output1973_skip]
  kernel_rfl

theorem node1975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1975 value886 value1 value2 = (output1975, value887, value1) := by
  rw [input1975_def, output1975_def]
  kernel_rfl

theorem node1976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1976 value887 value1 value2 = (output1976, value888, value1) := by
  rw [input1976_def, output1976_def]
  kernel_rfl

theorem node1977_cond_eq
    (child1975 : Flapjack.WordAlloc.removeDeadStructural input1975 value886 value1 value2 = (output1975, value887, value1))
    (child1976 : Flapjack.WordAlloc.removeDeadStructural input1976 value887 value1 value2 = (output1976, value888, value1)) : Flapjack.WordAlloc.removeDeadStructural input1977 value886 value1 value2 = (output1977, value888, value1) := by
  rw [input1977_def, output1977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1975]
  try dsimp only
  rw [child1976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1975_skip, output1976_skip]
  kernel_rfl

theorem node1978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1978 value888 value1 value2 = (output1978, value889, value1) := by
  rw [input1978_def, output1978_def]
  kernel_rfl

theorem node1979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1979 value889 value1 value2 = (output1979, value890, value1) := by
  rw [input1979_def, output1979_def]
  kernel_rfl

theorem node1980_cond_eq
    (child1978 : Flapjack.WordAlloc.removeDeadStructural input1978 value888 value1 value2 = (output1978, value889, value1))
    (child1979 : Flapjack.WordAlloc.removeDeadStructural input1979 value889 value1 value2 = (output1979, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input1980 value888 value1 value2 = (output1980, value890, value1) := by
  rw [input1980_def, output1980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1978]
  try dsimp only
  rw [child1979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1978_skip, output1979_skip]
  kernel_rfl

theorem node1981_cond_eq
    (child1977 : Flapjack.WordAlloc.removeDeadStructural input1977 value886 value1 value2 = (output1977, value888, value1))
    (child1980 : Flapjack.WordAlloc.removeDeadStructural input1980 value888 value1 value2 = (output1980, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input1981 value886 value1 value2 = (output1981, value890, value1) := by
  rw [input1981_def, output1981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1977]
  try dsimp only
  rw [child1980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1977_skip, output1980_skip]
  kernel_rfl

theorem node1982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1982 value890 value1 value2 = (output1982, value891, value1) := by
  rw [input1982_def, output1982_def]
  kernel_rfl

theorem node1983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1983 value891 value1 value2 = (output1983, value892, value1) := by
  rw [input1983_def, output1983_def]
  kernel_rfl

theorem node1984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1984 value892 value1 value2 = (output1984, value893, value1) := by
  rw [input1984_def, output1984_def]
  kernel_rfl

theorem node1985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1985 value893 value1 value2 = (output1985, value894, value1) := by
  rw [input1985_def, output1985_def]
  kernel_rfl

theorem node1986_cond_eq
    (child1984 : Flapjack.WordAlloc.removeDeadStructural input1984 value892 value1 value2 = (output1984, value893, value1))
    (child1985 : Flapjack.WordAlloc.removeDeadStructural input1985 value893 value1 value2 = (output1985, value894, value1)) : Flapjack.WordAlloc.removeDeadStructural input1986 value892 value1 value2 = (output1986, value894, value1) := by
  rw [input1986_def, output1986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1984]
  try dsimp only
  rw [child1985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1984_skip, output1985_skip]
  kernel_rfl

theorem node1987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1987 value894 value1 value2 = (output1987, value895, value1) := by
  rw [input1987_def, output1987_def]
  kernel_rfl

theorem node1988_cond_eq
    (child1986 : Flapjack.WordAlloc.removeDeadStructural input1986 value892 value1 value2 = (output1986, value894, value1))
    (child1987 : Flapjack.WordAlloc.removeDeadStructural input1987 value894 value1 value2 = (output1987, value895, value1)) : Flapjack.WordAlloc.removeDeadStructural input1988 value892 value1 value2 = (output1988, value895, value1) := by
  rw [input1988_def, output1988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1986]
  try dsimp only
  rw [child1987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1986_skip, output1987_skip]
  kernel_rfl

theorem node1989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1989 value895 value1 value2 = (output1989, value896, value1) := by
  rw [input1989_def, output1989_def]
  kernel_rfl

theorem node1990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1990 value896 value1 value2 = (output1990, value897, value1) := by
  rw [input1990_def, output1990_def]
  kernel_rfl

theorem node1991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1991 value897 value1 value2 = (output1991, value898, value1) := by
  rw [input1991_def, output1991_def]
  kernel_rfl

theorem node1992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1992 value898 value1 value2 = (output1992, value899, value1) := by
  rw [input1992_def, output1992_def]
  kernel_rfl

theorem node1993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1993 value899 value1 value2 = (output1993, value900, value1) := by
  rw [input1993_def, output1993_def]
  kernel_rfl

theorem node1994_cond_eq
    (child1992 : Flapjack.WordAlloc.removeDeadStructural input1992 value898 value1 value2 = (output1992, value899, value1))
    (child1993 : Flapjack.WordAlloc.removeDeadStructural input1993 value899 value1 value2 = (output1993, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input1994 value898 value1 value2 = (output1994, value900, value1) := by
  rw [input1994_def, output1994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1992]
  try dsimp only
  rw [child1993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1992_skip, output1993_skip]
  kernel_rfl

theorem node1995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1995 value900 value1 value2 = (output1995, value901, value1) := by
  rw [input1995_def, output1995_def]
  kernel_rfl

theorem node1996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1996 value901 value1 value2 = (output1996, value902, value1) := by
  rw [input1996_def, output1996_def]
  kernel_rfl

theorem node1997_cond_eq
    (child1995 : Flapjack.WordAlloc.removeDeadStructural input1995 value900 value1 value2 = (output1995, value901, value1))
    (child1996 : Flapjack.WordAlloc.removeDeadStructural input1996 value901 value1 value2 = (output1996, value902, value1)) : Flapjack.WordAlloc.removeDeadStructural input1997 value900 value1 value2 = (output1997, value902, value1) := by
  rw [input1997_def, output1997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1995]
  try dsimp only
  rw [child1996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1995_skip, output1996_skip]
  kernel_rfl

theorem node1998_cond_eq
    (child1994 : Flapjack.WordAlloc.removeDeadStructural input1994 value898 value1 value2 = (output1994, value900, value1))
    (child1997 : Flapjack.WordAlloc.removeDeadStructural input1997 value900 value1 value2 = (output1997, value902, value1)) : Flapjack.WordAlloc.removeDeadStructural input1998 value898 value1 value2 = (output1998, value902, value1) := by
  rw [input1998_def, output1998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1994]
  try dsimp only
  rw [child1997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1994_skip, output1997_skip]
  kernel_rfl

theorem node1999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1999 value902 value1 value2 = (output1999, value903, value1) := by
  rw [input1999_def, output1999_def]
  kernel_rfl

theorem node2000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2000 value903 value1 value2 = (output2000, value904, value1) := by
  rw [input2000_def, output2000_def]
  kernel_rfl

theorem node2001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2001 value904 value1 value2 = (output2001, value905, value1) := by
  rw [input2001_def, output2001_def]
  kernel_rfl

theorem node2002_cond_eq
    (child2000 : Flapjack.WordAlloc.removeDeadStructural input2000 value903 value1 value2 = (output2000, value904, value1))
    (child2001 : Flapjack.WordAlloc.removeDeadStructural input2001 value904 value1 value2 = (output2001, value905, value1)) : Flapjack.WordAlloc.removeDeadStructural input2002 value903 value1 value2 = (output2002, value905, value1) := by
  rw [input2002_def, output2002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2000]
  try dsimp only
  rw [child2001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2000_skip, output2001_skip]
  kernel_rfl

theorem node2003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2003 value905 value1 value2 = (output2003, value906, value1) := by
  rw [input2003_def, output2003_def]
  kernel_rfl

theorem node2004_cond_eq
    (child2002 : Flapjack.WordAlloc.removeDeadStructural input2002 value903 value1 value2 = (output2002, value905, value1))
    (child2003 : Flapjack.WordAlloc.removeDeadStructural input2003 value905 value1 value2 = (output2003, value906, value1)) : Flapjack.WordAlloc.removeDeadStructural input2004 value903 value1 value2 = (output2004, value906, value1) := by
  rw [input2004_def, output2004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2002]
  try dsimp only
  rw [child2003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2002_skip, output2003_skip]
  kernel_rfl

theorem node2005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2005 value906 value1 value2 = (output2005, value907, value1) := by
  rw [input2005_def, output2005_def]
  kernel_rfl

theorem node2006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2006 value907 value1 value2 = (output2006, value908, value1) := by
  rw [input2006_def, output2006_def]
  kernel_rfl

theorem node2007_cond_eq
    (child2005 : Flapjack.WordAlloc.removeDeadStructural input2005 value906 value1 value2 = (output2005, value907, value1))
    (child2006 : Flapjack.WordAlloc.removeDeadStructural input2006 value907 value1 value2 = (output2006, value908, value1)) : Flapjack.WordAlloc.removeDeadStructural input2007 value906 value1 value2 = (output2007, value908, value1) := by
  rw [input2007_def, output2007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2005]
  try dsimp only
  rw [child2006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2005_skip, output2006_skip]
  kernel_rfl

theorem node2008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2008 value908 value1 value2 = (output2008, value909, value1) := by
  rw [input2008_def, output2008_def]
  kernel_rfl

theorem node2009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2009 value909 value1 value2 = (output2009, value910, value1) := by
  rw [input2009_def, output2009_def]
  kernel_rfl

theorem node2010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2010 value910 value1 value2 = (output2010, value911, value1) := by
  rw [input2010_def, output2010_def]
  kernel_rfl

theorem node2011_cond_eq
    (child2009 : Flapjack.WordAlloc.removeDeadStructural input2009 value909 value1 value2 = (output2009, value910, value1))
    (child2010 : Flapjack.WordAlloc.removeDeadStructural input2010 value910 value1 value2 = (output2010, value911, value1)) : Flapjack.WordAlloc.removeDeadStructural input2011 value909 value1 value2 = (output2011, value911, value1) := by
  rw [input2011_def, output2011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2009]
  try dsimp only
  rw [child2010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2009_skip, output2010_skip]
  kernel_rfl

theorem node2012_cond_eq
    (child2008 : Flapjack.WordAlloc.removeDeadStructural input2008 value908 value1 value2 = (output2008, value909, value1))
    (child2011 : Flapjack.WordAlloc.removeDeadStructural input2011 value909 value1 value2 = (output2011, value911, value1)) : Flapjack.WordAlloc.removeDeadStructural input2012 value908 value1 value2 = (output2012, value911, value1) := by
  rw [input2012_def, output2012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2008]
  try dsimp only
  rw [child2011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2008_skip, output2011_skip]
  kernel_rfl

theorem node2013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2013 value911 value1 value2 = (output2013, value912, value1) := by
  rw [input2013_def, output2013_def]
  kernel_rfl

theorem node2014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2014 value912 value1 value2 = (output2014, value913, value1) := by
  rw [input2014_def, output2014_def]
  kernel_rfl

theorem node2015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2015 value913 value1 value2 = (output2015, value914, value1) := by
  rw [input2015_def, output2015_def]
  kernel_rfl

theorem node2016_cond_eq
    (child2014 : Flapjack.WordAlloc.removeDeadStructural input2014 value912 value1 value2 = (output2014, value913, value1))
    (child2015 : Flapjack.WordAlloc.removeDeadStructural input2015 value913 value1 value2 = (output2015, value914, value1)) : Flapjack.WordAlloc.removeDeadStructural input2016 value912 value1 value2 = (output2016, value914, value1) := by
  rw [input2016_def, output2016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2014]
  try dsimp only
  rw [child2015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2014_skip, output2015_skip]
  kernel_rfl

theorem node2017_cond_eq
    (child2013 : Flapjack.WordAlloc.removeDeadStructural input2013 value911 value1 value2 = (output2013, value912, value1))
    (child2016 : Flapjack.WordAlloc.removeDeadStructural input2016 value912 value1 value2 = (output2016, value914, value1)) : Flapjack.WordAlloc.removeDeadStructural input2017 value911 value1 value2 = (output2017, value914, value1) := by
  rw [input2017_def, output2017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2013]
  try dsimp only
  rw [child2016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2013_skip, output2016_skip]
  kernel_rfl

theorem node2018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2018 value914 value1 value2 = (output2018, value915, value1) := by
  rw [input2018_def, output2018_def]
  kernel_rfl

theorem node2019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2019 value915 value1 value2 = (output2019, value916, value1) := by
  rw [input2019_def, output2019_def]
  kernel_rfl

theorem node2020_cond_eq
    (child2018 : Flapjack.WordAlloc.removeDeadStructural input2018 value914 value1 value2 = (output2018, value915, value1))
    (child2019 : Flapjack.WordAlloc.removeDeadStructural input2019 value915 value1 value2 = (output2019, value916, value1)) : Flapjack.WordAlloc.removeDeadStructural input2020 value914 value1 value2 = (output2020, value916, value1) := by
  rw [input2020_def, output2020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2018]
  try dsimp only
  rw [child2019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2018_skip, output2019_skip]
  kernel_rfl

theorem node2021_cond_eq
    (child2017 : Flapjack.WordAlloc.removeDeadStructural input2017 value911 value1 value2 = (output2017, value914, value1))
    (child2020 : Flapjack.WordAlloc.removeDeadStructural input2020 value914 value1 value2 = (output2020, value916, value1)) : Flapjack.WordAlloc.removeDeadStructural input2021 value911 value1 value2 = (output2021, value916, value1) := by
  rw [input2021_def, output2021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2017]
  try dsimp only
  rw [child2020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2017_skip, output2020_skip]
  kernel_rfl

theorem node2022_cond_eq
    (child2012 : Flapjack.WordAlloc.removeDeadStructural input2012 value908 value1 value2 = (output2012, value911, value1))
    (child2021 : Flapjack.WordAlloc.removeDeadStructural input2021 value911 value1 value2 = (output2021, value916, value1)) : Flapjack.WordAlloc.removeDeadStructural input2022 value908 value1 value2 = (output2022, value916, value1) := by
  rw [input2022_def, output2022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2012]
  try dsimp only
  rw [child2021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2012_skip, output2021_skip]
  kernel_rfl

theorem node2023_cond_eq
    (child2007 : Flapjack.WordAlloc.removeDeadStructural input2007 value906 value1 value2 = (output2007, value908, value1))
    (child2022 : Flapjack.WordAlloc.removeDeadStructural input2022 value908 value1 value2 = (output2022, value916, value1)) : Flapjack.WordAlloc.removeDeadStructural input2023 value906 value1 value2 = (output2023, value916, value1) := by
  rw [input2023_def, output2023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2007]
  try dsimp only
  rw [child2022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2007_skip, output2022_skip]
  kernel_rfl

theorem node2024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2024 value916 value1 value2 = (output2024, value917, value1) := by
  rw [input2024_def, output2024_def]
  kernel_rfl

theorem node2025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2025 value917 value1 value2 = (output2025, value918, value1) := by
  rw [input2025_def, output2025_def]
  kernel_rfl

theorem node2026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2026 value918 value1 value2 = (output2026, value919, value1) := by
  rw [input2026_def, output2026_def]
  kernel_rfl

theorem node2027_cond_eq
    (child2025 : Flapjack.WordAlloc.removeDeadStructural input2025 value917 value1 value2 = (output2025, value918, value1))
    (child2026 : Flapjack.WordAlloc.removeDeadStructural input2026 value918 value1 value2 = (output2026, value919, value1)) : Flapjack.WordAlloc.removeDeadStructural input2027 value917 value1 value2 = (output2027, value919, value1) := by
  rw [input2027_def, output2027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2025]
  try dsimp only
  rw [child2026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2025_skip, output2026_skip]
  kernel_rfl

theorem node2028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2028 value919 value1 value2 = (output2028, value920, value1) := by
  rw [input2028_def, output2028_def]
  kernel_rfl

theorem node2029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2029 value920 value1 value2 = (output2029, value921, value1) := by
  rw [input2029_def, output2029_def]
  kernel_rfl

theorem node2030_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2030 value921 value1 value2 = (output2030, value922, value1) := by
  rw [input2030_def, output2030_def]
  kernel_rfl

theorem node2031_cond_eq
    (child2029 : Flapjack.WordAlloc.removeDeadStructural input2029 value920 value1 value2 = (output2029, value921, value1))
    (child2030 : Flapjack.WordAlloc.removeDeadStructural input2030 value921 value1 value2 = (output2030, value922, value1)) : Flapjack.WordAlloc.removeDeadStructural input2031 value920 value1 value2 = (output2031, value922, value1) := by
  rw [input2031_def, output2031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2029]
  try dsimp only
  rw [child2030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2029_skip, output2030_skip]
  kernel_rfl

theorem node2032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2032 value922 value1 value2 = (output2032, value923, value1) := by
  rw [input2032_def, output2032_def]
  kernel_rfl

theorem node2033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2033 value923 value1 value2 = (output2033, value924, value1) := by
  rw [input2033_def, output2033_def]
  kernel_rfl

theorem node2034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2034 value924 value1 value2 = (output2034, value925, value1) := by
  rw [input2034_def, output2034_def]
  kernel_rfl

theorem node2035_cond_eq
    (child2033 : Flapjack.WordAlloc.removeDeadStructural input2033 value923 value1 value2 = (output2033, value924, value1))
    (child2034 : Flapjack.WordAlloc.removeDeadStructural input2034 value924 value1 value2 = (output2034, value925, value1)) : Flapjack.WordAlloc.removeDeadStructural input2035 value923 value1 value2 = (output2035, value925, value1) := by
  rw [input2035_def, output2035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2033]
  try dsimp only
  rw [child2034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2033_skip, output2034_skip]
  kernel_rfl

theorem node2036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2036 value925 value1 value2 = (output2036, value926, value1) := by
  rw [input2036_def, output2036_def]
  kernel_rfl

theorem node2037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2037 value926 value1 value2 = (output2037, value927, value1) := by
  rw [input2037_def, output2037_def]
  kernel_rfl

theorem node2038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2038 value927 value1 value2 = (output2038, value928, value1) := by
  rw [input2038_def, output2038_def]
  kernel_rfl

theorem node2039_cond_eq
    (child2037 : Flapjack.WordAlloc.removeDeadStructural input2037 value926 value1 value2 = (output2037, value927, value1))
    (child2038 : Flapjack.WordAlloc.removeDeadStructural input2038 value927 value1 value2 = (output2038, value928, value1)) : Flapjack.WordAlloc.removeDeadStructural input2039 value926 value1 value2 = (output2039, value928, value1) := by
  rw [input2039_def, output2039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2037]
  try dsimp only
  rw [child2038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2037_skip, output2038_skip]
  kernel_rfl

theorem node2040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2040 value928 value1 value2 = (output2040, value929, value1) := by
  rw [input2040_def, output2040_def]
  kernel_rfl

theorem node2041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2041 value929 value1 value2 = (output2041, value930, value1) := by
  rw [input2041_def, output2041_def]
  kernel_rfl

theorem node2042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2042 value930 value1 value2 = (output2042, value931, value1) := by
  rw [input2042_def, output2042_def]
  kernel_rfl

theorem node2043_cond_eq
    (child2041 : Flapjack.WordAlloc.removeDeadStructural input2041 value929 value1 value2 = (output2041, value930, value1))
    (child2042 : Flapjack.WordAlloc.removeDeadStructural input2042 value930 value1 value2 = (output2042, value931, value1)) : Flapjack.WordAlloc.removeDeadStructural input2043 value929 value1 value2 = (output2043, value931, value1) := by
  rw [input2043_def, output2043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2041]
  try dsimp only
  rw [child2042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2041_skip, output2042_skip]
  kernel_rfl

theorem node2044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2044 value931 value1 value2 = (output2044, value932, value1) := by
  rw [input2044_def, output2044_def]
  kernel_rfl

theorem node2045_cond_eq
    (child2043 : Flapjack.WordAlloc.removeDeadStructural input2043 value929 value1 value2 = (output2043, value931, value1))
    (child2044 : Flapjack.WordAlloc.removeDeadStructural input2044 value931 value1 value2 = (output2044, value932, value1)) : Flapjack.WordAlloc.removeDeadStructural input2045 value929 value1 value2 = (output2045, value932, value1) := by
  rw [input2045_def, output2045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2043]
  try dsimp only
  rw [child2044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2043_skip, output2044_skip]
  kernel_rfl

theorem node2046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2046 value932 value1 value2 = (output2046, value933, value1) := by
  rw [input2046_def, output2046_def]
  kernel_rfl

theorem node2047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2047 value933 value1 value2 = (output2047, value934, value1) := by
  rw [input2047_def, output2047_def]
  kernel_rfl

#print axioms node2047_cond_eq
end InitECandidate.Proofs.DeadStages184.Parallel
