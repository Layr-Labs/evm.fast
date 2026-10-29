import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel783.Data2
import InitECandidate.Proofs.WordStages.Parallel783.Data3
import InitECandidate.Proofs.DeadStages783.Parallel.Data.Chunk007
import InitECandidate.Proofs.WordStages.Parallel783.AgreementsParallel.Chunk006

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel783.AgreementsParallel
theorem input1792_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1792 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_623 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1792_def]
  kernel_rfl

theorem input1793_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1793 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1793_def]
  kernel_rfl

theorem output1793_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1793 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1793_def]
  kernel_rfl

theorem input1794_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1794 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_621 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1794_def]
  kernel_rfl

theorem input1795_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1795 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_622 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1795_def]
  simp only [input1794_eq, input1793_eq]
  kernel_rfl

theorem output1795_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1795 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1795_def]
  simp only [output1793_eq]

theorem input1796_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1796 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_624 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1796_def]
  simp only [input1795_eq, input1792_eq]
  kernel_rfl

theorem output1796_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1796 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1796_def]
  simp only [output1795_eq]

theorem input1797_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1797 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_626 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1797_def]
  simp only [input1796_eq, input1791_eq]
  kernel_rfl

theorem output1797_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1797 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1797_def]
  simp only [output1796_eq]

theorem input1798_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1798 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_628 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1798_def]
  simp only [input1797_eq, input1790_eq]
  kernel_rfl

theorem output1798_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1798 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_478 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1798_def]
  simp only [output1797_eq, output1790_eq]
  kernel_rfl

theorem input1799_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1799 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_631 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1799_def]
  simp only [input1798_eq, input1789_eq]
  kernel_rfl

theorem output1799_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1799 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_480 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1799_def]
  simp only [output1798_eq, output1789_eq]
  kernel_rfl

theorem input1800_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1800 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_40 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1800_def]
  kernel_rfl

theorem input1801_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1801 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_640 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1801_def]
  kernel_rfl

theorem output1801_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1801 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_483 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1801_def]
  kernel_rfl

theorem input1802_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1802 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_641 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1802_def]
  simp only [input1801_eq, input1800_eq]
  kernel_rfl

theorem output1802_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1802 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_483 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1802_def]
  simp only [output1801_eq]

theorem input1803_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1803 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_638 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1803_def]
  kernel_rfl

theorem output1803_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1803 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_481 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1803_def]
  kernel_rfl

theorem input1804_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1804 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_636 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1804_def]
  kernel_rfl

theorem input1805_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1805 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_634 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1805_def]
  kernel_rfl

theorem input1806_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1806 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1806_def]
  kernel_rfl

theorem output1806_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1806 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1806_def]
  kernel_rfl

theorem input1807_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1807 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_632 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1807_def]
  kernel_rfl

theorem input1808_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1808 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_633 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1808_def]
  simp only [input1807_eq, input1806_eq]
  kernel_rfl

theorem output1808_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1808 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1808_def]
  simp only [output1806_eq]

theorem input1809_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1809 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_635 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1809_def]
  simp only [input1808_eq, input1805_eq]
  kernel_rfl

theorem output1809_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1809 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1809_def]
  simp only [output1808_eq]

theorem input1810_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1810 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_637 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1810_def]
  simp only [input1809_eq, input1804_eq]
  kernel_rfl

theorem output1810_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1810 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1810_def]
  simp only [output1809_eq]

theorem input1811_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1811 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_639 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1811_def]
  simp only [input1810_eq, input1803_eq]
  kernel_rfl

theorem output1811_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1811 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_482 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1811_def]
  simp only [output1810_eq, output1803_eq]
  kernel_rfl

theorem input1812_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1812 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_642 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1812_def]
  simp only [input1811_eq, input1802_eq]
  kernel_rfl

theorem output1812_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1812 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_484 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1812_def]
  simp only [output1811_eq, output1802_eq]
  kernel_rfl

theorem input1813_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1813 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_643 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1813_def]
  simp only [input1799_eq, input1812_eq]
  kernel_rfl

theorem output1813_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1813 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_485 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1813_def]
  simp only [output1799_eq, output1812_eq]
  kernel_rfl

theorem input1814_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1814 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_619 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1814_def]
  kernel_rfl

theorem output1814_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1814 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_475 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1814_def]
  kernel_rfl

theorem input1815_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1815 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_617 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1815_def]
  kernel_rfl

theorem output1815_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1815 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_473 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1815_def]
  kernel_rfl

theorem input1816_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1816 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1816_def]
  kernel_rfl

theorem output1816_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1816 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1816_def]
  kernel_rfl

theorem input1817_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1817 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_40 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1817_def]
  kernel_rfl

theorem input1818_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1818 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_600 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1818_def]
  kernel_rfl

theorem output1818_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1818 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_464 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1818_def]
  kernel_rfl

theorem input1819_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1819 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_601 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1819_def]
  simp only [input1818_eq, input1817_eq]
  kernel_rfl

theorem output1819_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1819 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_464 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1819_def]
  simp only [output1818_eq]

theorem input1820_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1820 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_598 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1820_def]
  kernel_rfl

theorem output1820_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1820 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_462 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1820_def]
  kernel_rfl

theorem input1821_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1821 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_596 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1821_def]
  kernel_rfl

theorem input1822_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1822 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_594 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1822_def]
  kernel_rfl

theorem input1823_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1823 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1823_def]
  kernel_rfl

theorem output1823_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1823 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1823_def]
  kernel_rfl

theorem input1824_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1824 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_592 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1824_def]
  kernel_rfl

theorem input1825_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1825 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_593 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1825_def]
  simp only [input1824_eq, input1823_eq]
  kernel_rfl

theorem output1825_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1825 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1825_def]
  simp only [output1823_eq]

theorem input1826_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1826 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_595 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1826_def]
  simp only [input1825_eq, input1822_eq]
  kernel_rfl

theorem output1826_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1826 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1826_def]
  simp only [output1825_eq]

theorem input1827_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1827 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_597 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1827_def]
  simp only [input1826_eq, input1821_eq]
  kernel_rfl

theorem output1827_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1827 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1827_def]
  simp only [output1826_eq]

theorem input1828_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1828 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_599 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1828_def]
  simp only [input1827_eq, input1820_eq]
  kernel_rfl

theorem output1828_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1828 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_463 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1828_def]
  simp only [output1827_eq, output1820_eq]
  kernel_rfl

theorem input1829_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1829 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_602 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1829_def]
  simp only [input1828_eq, input1819_eq]
  kernel_rfl

theorem output1829_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1829 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_465 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1829_def]
  simp only [output1828_eq, output1819_eq]
  kernel_rfl

theorem input1830_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1830 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_40 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1830_def]
  kernel_rfl

theorem input1831_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1831 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_611 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1831_def]
  kernel_rfl

theorem output1831_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1831 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_468 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1831_def]
  kernel_rfl

theorem input1832_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1832 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_612 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1832_def]
  simp only [input1831_eq, input1830_eq]
  kernel_rfl

theorem output1832_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1832 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_468 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1832_def]
  simp only [output1831_eq]

theorem input1833_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1833 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_609 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1833_def]
  kernel_rfl

theorem output1833_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1833 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_466 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1833_def]
  kernel_rfl

theorem input1834_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1834 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_607 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1834_def]
  kernel_rfl

theorem input1835_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1835 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_605 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1835_def]
  kernel_rfl

theorem input1836_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1836 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1836_def]
  kernel_rfl

theorem output1836_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1836 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1836_def]
  kernel_rfl

theorem input1837_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1837 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_603 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1837_def]
  kernel_rfl

theorem input1838_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1838 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_604 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1838_def]
  simp only [input1837_eq, input1836_eq]
  kernel_rfl

theorem output1838_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1838 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1838_def]
  simp only [output1836_eq]

theorem input1839_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1839 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_606 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1839_def]
  simp only [input1838_eq, input1835_eq]
  kernel_rfl

theorem output1839_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1839 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1839_def]
  simp only [output1838_eq]

theorem input1840_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1840 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_608 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1840_def]
  simp only [input1839_eq, input1834_eq]
  kernel_rfl

theorem output1840_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1840 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1840_def]
  simp only [output1839_eq]

theorem input1841_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1841 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_610 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1841_def]
  simp only [input1840_eq, input1833_eq]
  kernel_rfl

theorem output1841_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1841 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_467 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1841_def]
  simp only [output1840_eq, output1833_eq]
  kernel_rfl

theorem input1842_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1842 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_613 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1842_def]
  simp only [input1841_eq, input1832_eq]
  kernel_rfl

theorem output1842_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1842 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_469 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1842_def]
  simp only [output1841_eq, output1832_eq]
  kernel_rfl

theorem input1843_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1843 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_614 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1843_def]
  simp only [input1829_eq, input1842_eq]
  kernel_rfl

theorem output1843_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1843 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_470 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1843_def]
  simp only [output1829_eq, output1842_eq]
  kernel_rfl

theorem input1844_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1844 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_590 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1844_def]
  kernel_rfl

theorem output1844_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1844 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_460 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1844_def]
  kernel_rfl

theorem input1845_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1845 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_588 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1845_def]
  kernel_rfl

theorem output1845_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1845 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_458 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1845_def]
  kernel_rfl

theorem input1846_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1846 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1846_def]
  kernel_rfl

theorem output1846_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1846 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1846_def]
  kernel_rfl

theorem input1847_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1847 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_583 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1847_def]
  kernel_rfl

theorem output1847_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1847 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_453 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1847_def]
  kernel_rfl

theorem input1848_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1848 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_561 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1848_def]
  kernel_rfl

theorem output1848_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1848 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_440 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1848_def]
  kernel_rfl

theorem input1849_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1849 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_584 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1849_def]
  simp only [input1848_eq, input1847_eq]
  kernel_rfl

theorem output1849_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1849 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_454 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1849_def]
  simp only [output1848_eq, output1847_eq]
  kernel_rfl

theorem input1850_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1850 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_560 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1850_def]
  kernel_rfl

theorem output1850_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1850 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_439 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1850_def]
  kernel_rfl

theorem input1851_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1851 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_585 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1851_def]
  simp only [input1850_eq, input1849_eq]
  kernel_rfl

theorem output1851_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1851 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_455 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1851_def]
  simp only [output1850_eq, output1849_eq]
  kernel_rfl

theorem input1852_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1852 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_558 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1852_def]
  kernel_rfl

theorem output1852_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1852 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_437 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1852_def]
  kernel_rfl

theorem input1853_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1853 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_556 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1853_def]
  kernel_rfl

theorem output1853_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1853 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_435 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1853_def]
  kernel_rfl

theorem input1854_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1854 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_554 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1854_def]
  kernel_rfl

theorem output1854_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1854 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_433 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1854_def]
  kernel_rfl

theorem input1855_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1855 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_552 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1855_def]
  kernel_rfl

theorem output1855_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1855 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_431 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1855_def]
  kernel_rfl

theorem input1856_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1856 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_550 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1856_def]
  kernel_rfl

theorem output1856_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1856 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_429 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1856_def]
  kernel_rfl

theorem input1857_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1857 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_548 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1857_def]
  kernel_rfl

theorem output1857_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1857 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_427 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1857_def]
  kernel_rfl

theorem input1858_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1858 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_546 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1858_def]
  kernel_rfl

theorem input1859_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1859 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_544 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1859_def]
  kernel_rfl

theorem input1860_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1860 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_542 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1860_def]
  kernel_rfl

theorem input1861_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1861 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_540 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1861_def]
  kernel_rfl

theorem input1862_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1862 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_538 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1862_def]
  kernel_rfl

theorem input1863_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1863 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_536 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1863_def]
  kernel_rfl

theorem input1864_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1864 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_534 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1864_def]
  kernel_rfl

theorem output1864_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1864 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_425 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1864_def]
  kernel_rfl

theorem input1865_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1865 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_532 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1865_def]
  kernel_rfl

theorem output1865_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1865 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_423 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1865_def]
  kernel_rfl

theorem input1866_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1866 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_530 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1866_def]
  kernel_rfl

theorem output1866_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1866 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_421 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1866_def]
  kernel_rfl

theorem input1867_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1867 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_528 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1867_def]
  kernel_rfl

theorem output1867_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1867 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_419 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1867_def]
  kernel_rfl

theorem input1868_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1868 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_526 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1868_def]
  kernel_rfl

theorem output1868_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1868 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_417 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1868_def]
  kernel_rfl

theorem input1869_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1869 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_524 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1869_def]
  kernel_rfl

theorem output1869_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1869 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_415 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1869_def]
  kernel_rfl

theorem input1870_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1870 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1870_def]
  kernel_rfl

theorem output1870_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1870 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1870_def]
  kernel_rfl

theorem input1871_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1871 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_519 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1871_def]
  kernel_rfl

theorem output1871_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1871 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_410 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1871_def]
  kernel_rfl

theorem input1872_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1872 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_497 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1872_def]
  kernel_rfl

theorem output1872_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1872 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_397 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1872_def]
  kernel_rfl

theorem input1873_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1873 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_520 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1873_def]
  simp only [input1872_eq, input1871_eq]
  kernel_rfl

theorem output1873_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1873 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_411 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1873_def]
  simp only [output1872_eq, output1871_eq]
  kernel_rfl

theorem input1874_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1874 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_496 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1874_def]
  kernel_rfl

theorem output1874_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1874 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_396 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1874_def]
  kernel_rfl

theorem input1875_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1875 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_521 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1875_def]
  simp only [input1874_eq, input1873_eq]
  kernel_rfl

theorem output1875_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1875 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_412 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1875_def]
  simp only [output1874_eq, output1873_eq]
  kernel_rfl

theorem input1876_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1876 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_494 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1876_def]
  kernel_rfl

theorem output1876_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1876 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_394 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1876_def]
  kernel_rfl

theorem input1877_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1877 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_492 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1877_def]
  kernel_rfl

theorem output1877_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1877 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_392 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1877_def]
  kernel_rfl

theorem input1878_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1878 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_490 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1878_def]
  kernel_rfl

theorem output1878_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1878 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_390 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1878_def]
  kernel_rfl

theorem input1879_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1879 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_488 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1879_def]
  kernel_rfl

theorem output1879_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1879 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_388 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1879_def]
  kernel_rfl

theorem input1880_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1880 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_486 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1880_def]
  kernel_rfl

theorem output1880_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1880 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_386 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1880_def]
  kernel_rfl

theorem input1881_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1881 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_484 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1881_def]
  kernel_rfl

theorem output1881_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1881 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_384 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1881_def]
  kernel_rfl

theorem input1882_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1882 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_482 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1882_def]
  kernel_rfl

theorem input1883_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1883 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_480 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1883_def]
  kernel_rfl

theorem input1884_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1884 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_478 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1884_def]
  kernel_rfl

theorem input1885_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1885 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_476 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1885_def]
  kernel_rfl

theorem input1886_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1886 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_474 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1886_def]
  kernel_rfl

theorem input1887_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1887 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_472 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1887_def]
  kernel_rfl

theorem input1888_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1888 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_470 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1888_def]
  kernel_rfl

theorem output1888_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1888 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_382 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1888_def]
  kernel_rfl

theorem input1889_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1889 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_468 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1889_def]
  kernel_rfl

theorem output1889_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1889 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_380 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1889_def]
  kernel_rfl

theorem input1890_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1890 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_466 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1890_def]
  kernel_rfl

theorem output1890_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1890 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_378 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1890_def]
  kernel_rfl

theorem input1891_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1891 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_464 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1891_def]
  kernel_rfl

theorem output1891_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1891 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_376 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1891_def]
  kernel_rfl

theorem input1892_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1892 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_462 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1892_def]
  kernel_rfl

theorem output1892_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1892 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_374 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1892_def]
  kernel_rfl

theorem input1893_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1893 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_460 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1893_def]
  kernel_rfl

theorem output1893_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1893 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_372 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1893_def]
  kernel_rfl

theorem input1894_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1894 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_457 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1894_def]
  kernel_rfl

theorem output1894_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1894 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_369 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1894_def]
  kernel_rfl

theorem input1895_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1895 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_456 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1895_def]
  kernel_rfl

theorem output1895_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1895 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_368 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1895_def]
  kernel_rfl

theorem input1896_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1896 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_458 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1896_def]
  simp only [input1895_eq, input1894_eq]
  kernel_rfl

theorem output1896_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1896 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_370 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1896_def]
  simp only [output1895_eq, output1894_eq]
  kernel_rfl

theorem input1897_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1897 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_453 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1897_def]
  kernel_rfl

theorem output1897_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1897 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_365 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1897_def]
  kernel_rfl

theorem input1898_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1898 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_452 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1898_def]
  kernel_rfl

theorem output1898_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1898 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_364 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1898_def]
  kernel_rfl

theorem input1899_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1899 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_454 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1899_def]
  simp only [input1898_eq, input1897_eq]
  kernel_rfl

theorem output1899_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1899 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_366 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1899_def]
  simp only [output1898_eq, output1897_eq]
  kernel_rfl

theorem input1900_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1900 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_449 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1900_def]
  kernel_rfl

theorem output1900_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1900 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_361 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1900_def]
  kernel_rfl

theorem input1901_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1901 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_448 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1901_def]
  kernel_rfl

theorem output1901_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1901 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_360 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1901_def]
  kernel_rfl

theorem input1902_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1902 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_450 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1902_def]
  simp only [input1901_eq, input1900_eq]
  kernel_rfl

theorem output1902_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1902 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_362 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1902_def]
  simp only [output1901_eq, output1900_eq]
  kernel_rfl

theorem input1903_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1903 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_445 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1903_def]
  kernel_rfl

theorem output1903_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1903 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_357 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1903_def]
  kernel_rfl

theorem input1904_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1904 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_444 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1904_def]
  kernel_rfl

theorem output1904_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1904 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_356 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1904_def]
  kernel_rfl

theorem input1905_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1905 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_446 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1905_def]
  simp only [input1904_eq, input1903_eq]
  kernel_rfl

theorem output1905_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1905 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_358 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1905_def]
  simp only [output1904_eq, output1903_eq]
  kernel_rfl

theorem input1906_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1906 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_441 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1906_def]
  kernel_rfl

theorem output1906_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1906 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_353 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1906_def]
  kernel_rfl

theorem input1907_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1907 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_440 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1907_def]
  kernel_rfl

theorem output1907_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1907 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_352 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1907_def]
  kernel_rfl

theorem input1908_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1908 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_442 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1908_def]
  simp only [input1907_eq, input1906_eq]
  kernel_rfl

theorem output1908_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1908 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_354 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1908_def]
  simp only [output1907_eq, output1906_eq]
  kernel_rfl

theorem input1909_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1909 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_437 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1909_def]
  kernel_rfl

theorem output1909_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1909 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_349 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1909_def]
  kernel_rfl

theorem input1910_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1910 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_436 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1910_def]
  kernel_rfl

theorem output1910_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1910 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_348 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1910_def]
  kernel_rfl

theorem input1911_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1911 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_438 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1911_def]
  simp only [input1910_eq, input1909_eq]
  kernel_rfl

theorem output1911_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1911 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_350 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1911_def]
  simp only [output1910_eq, output1909_eq]
  kernel_rfl

theorem input1912_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1912 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_433 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1912_def]
  kernel_rfl

theorem output1912_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1912 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_345 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1912_def]
  kernel_rfl

theorem input1913_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1913 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_432 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1913_def]
  kernel_rfl

theorem output1913_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1913 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_344 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1913_def]
  kernel_rfl

theorem input1914_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1914 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_434 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1914_def]
  simp only [input1913_eq, input1912_eq]
  kernel_rfl

theorem output1914_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1914 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_346 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1914_def]
  simp only [output1913_eq, output1912_eq]
  kernel_rfl

theorem input1915_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1915 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_429 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1915_def]
  kernel_rfl

theorem output1915_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1915 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_341 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1915_def]
  kernel_rfl

theorem input1916_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1916 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_428 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1916_def]
  kernel_rfl

theorem output1916_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1916 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_340 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1916_def]
  kernel_rfl

theorem input1917_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1917 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_430 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1917_def]
  simp only [input1916_eq, input1915_eq]
  kernel_rfl

theorem output1917_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1917 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_342 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1917_def]
  simp only [output1916_eq, output1915_eq]
  kernel_rfl

theorem input1918_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1918 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_425 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1918_def]
  kernel_rfl

theorem output1918_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1918 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_337 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1918_def]
  kernel_rfl

theorem input1919_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1919 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_424 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1919_def]
  kernel_rfl

theorem output1919_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1919 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_336 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1919_def]
  kernel_rfl

theorem input1920_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1920 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_426 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1920_def]
  simp only [input1919_eq, input1918_eq]
  kernel_rfl

theorem output1920_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1920 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_338 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1920_def]
  simp only [output1919_eq, output1918_eq]
  kernel_rfl

theorem input1921_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1921 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_421 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1921_def]
  kernel_rfl

theorem output1921_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1921 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_333 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1921_def]
  kernel_rfl

theorem input1922_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1922 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_420 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1922_def]
  kernel_rfl

theorem output1922_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1922 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_332 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1922_def]
  kernel_rfl

theorem input1923_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1923 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_422 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1923_def]
  simp only [input1922_eq, input1921_eq]
  kernel_rfl

theorem output1923_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1923 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_334 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1923_def]
  simp only [output1922_eq, output1921_eq]
  kernel_rfl

theorem input1924_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1924 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_417 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1924_def]
  kernel_rfl

theorem output1924_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1924 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_329 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1924_def]
  kernel_rfl

theorem input1925_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1925 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_416 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1925_def]
  kernel_rfl

theorem output1925_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1925 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_328 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1925_def]
  kernel_rfl

theorem input1926_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1926 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_418 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1926_def]
  simp only [input1925_eq, input1924_eq]
  kernel_rfl

theorem output1926_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1926 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_330 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1926_def]
  simp only [output1925_eq, output1924_eq]
  kernel_rfl

theorem input1927_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1927 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_413 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1927_def]
  kernel_rfl

theorem output1927_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1927 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_325 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1927_def]
  kernel_rfl

theorem input1928_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1928 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_412 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1928_def]
  kernel_rfl

theorem output1928_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1928 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_324 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1928_def]
  kernel_rfl

theorem input1929_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1929 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_414 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1929_def]
  simp only [input1928_eq, input1927_eq]
  kernel_rfl

theorem output1929_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1929 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_326 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1929_def]
  simp only [output1928_eq, output1927_eq]
  kernel_rfl

theorem input1930_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1930 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_409 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1930_def]
  kernel_rfl

theorem output1930_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1930 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_321 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1930_def]
  kernel_rfl

theorem input1931_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1931 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_408 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1931_def]
  kernel_rfl

theorem output1931_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1931 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_320 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1931_def]
  kernel_rfl

theorem input1932_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1932 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_410 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1932_def]
  simp only [input1931_eq, input1930_eq]
  kernel_rfl

theorem output1932_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1932 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_322 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1932_def]
  simp only [output1931_eq, output1930_eq]
  kernel_rfl

theorem input1933_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1933 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_405 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1933_def]
  kernel_rfl

theorem output1933_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1933 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_317 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1933_def]
  kernel_rfl

theorem input1934_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1934 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_404 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1934_def]
  kernel_rfl

theorem output1934_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1934 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_316 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1934_def]
  kernel_rfl

theorem input1935_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1935 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_406 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1935_def]
  simp only [input1934_eq, input1933_eq]
  kernel_rfl

theorem output1935_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1935 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_318 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1935_def]
  simp only [output1934_eq, output1933_eq]
  kernel_rfl

theorem input1936_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1936 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_401 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1936_def]
  kernel_rfl

theorem output1936_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1936 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_313 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1936_def]
  kernel_rfl

theorem input1937_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1937 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_400 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1937_def]
  kernel_rfl

theorem output1937_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1937 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_312 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1937_def]
  kernel_rfl

theorem input1938_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1938 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_402 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1938_def]
  simp only [input1937_eq, input1936_eq]
  kernel_rfl

theorem output1938_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1938 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_314 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1938_def]
  simp only [output1937_eq, output1936_eq]
  kernel_rfl

theorem input1939_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1939 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_397 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1939_def]
  kernel_rfl

theorem output1939_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1939 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_309 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1939_def]
  kernel_rfl

theorem input1940_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1940 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_396 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1940_def]
  kernel_rfl

theorem output1940_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1940 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_308 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1940_def]
  kernel_rfl

theorem input1941_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1941 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_398 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1941_def]
  simp only [input1940_eq, input1939_eq]
  kernel_rfl

theorem output1941_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1941 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_310 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1941_def]
  simp only [output1940_eq, output1939_eq]
  kernel_rfl

theorem input1942_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1942 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_393 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1942_def]
  kernel_rfl

theorem output1942_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1942 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_305 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1942_def]
  kernel_rfl

theorem input1943_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1943 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_392 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1943_def]
  kernel_rfl

theorem output1943_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1943 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_304 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1943_def]
  kernel_rfl

theorem input1944_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1944 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_394 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1944_def]
  simp only [input1943_eq, input1942_eq]
  kernel_rfl

theorem output1944_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1944 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_306 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1944_def]
  simp only [output1943_eq, output1942_eq]
  kernel_rfl

theorem input1945_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1945 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_389 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1945_def]
  kernel_rfl

theorem output1945_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1945 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_301 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1945_def]
  kernel_rfl

theorem input1946_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1946 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_388 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1946_def]
  kernel_rfl

theorem output1946_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1946 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_300 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1946_def]
  kernel_rfl

theorem input1947_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1947 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_390 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1947_def]
  simp only [input1946_eq, input1945_eq]
  kernel_rfl

theorem output1947_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1947 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_302 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1947_def]
  simp only [output1946_eq, output1945_eq]
  kernel_rfl

theorem input1948_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1948 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_385 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1948_def]
  kernel_rfl

theorem output1948_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1948 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_297 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1948_def]
  kernel_rfl

theorem input1949_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1949 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_384 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1949_def]
  kernel_rfl

theorem output1949_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1949 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_296 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1949_def]
  kernel_rfl

theorem input1950_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1950 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_386 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1950_def]
  simp only [input1949_eq, input1948_eq]
  kernel_rfl

theorem output1950_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1950 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_298 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1950_def]
  simp only [output1949_eq, output1948_eq]
  kernel_rfl

theorem input1951_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1951 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_381 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1951_def]
  kernel_rfl

theorem output1951_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1951 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_293 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1951_def]
  kernel_rfl

theorem input1952_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1952 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_380 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1952_def]
  kernel_rfl

theorem output1952_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1952 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_292 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1952_def]
  kernel_rfl

theorem input1953_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1953 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_382 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1953_def]
  simp only [input1952_eq, input1951_eq]
  kernel_rfl

theorem output1953_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1953 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_294 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1953_def]
  simp only [output1952_eq, output1951_eq]
  kernel_rfl

theorem input1954_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1954 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_377 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1954_def]
  kernel_rfl

theorem output1954_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1954 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_289 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1954_def]
  kernel_rfl

theorem input1955_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1955 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_376 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1955_def]
  kernel_rfl

theorem output1955_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1955 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_288 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1955_def]
  kernel_rfl

theorem input1956_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1956 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_378 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1956_def]
  simp only [input1955_eq, input1954_eq]
  kernel_rfl

theorem output1956_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1956 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_290 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1956_def]
  simp only [output1955_eq, output1954_eq]
  kernel_rfl

theorem input1957_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1957 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_373 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1957_def]
  kernel_rfl

theorem output1957_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1957 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_285 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1957_def]
  kernel_rfl

theorem input1958_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1958 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_372 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1958_def]
  kernel_rfl

theorem output1958_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1958 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_284 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1958_def]
  kernel_rfl

theorem input1959_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1959 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_374 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1959_def]
  simp only [input1958_eq, input1957_eq]
  kernel_rfl

theorem output1959_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1959 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_286 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1959_def]
  simp only [output1958_eq, output1957_eq]
  kernel_rfl

theorem input1960_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1960 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_369 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1960_def]
  kernel_rfl

theorem output1960_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1960 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_281 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1960_def]
  kernel_rfl

theorem input1961_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1961 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_368 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1961_def]
  kernel_rfl

theorem output1961_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1961 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_280 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1961_def]
  kernel_rfl

theorem input1962_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1962 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_370 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1962_def]
  simp only [input1961_eq, input1960_eq]
  kernel_rfl

theorem output1962_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1962 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_282 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1962_def]
  simp only [output1961_eq, output1960_eq]
  kernel_rfl

theorem input1963_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1963 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_365 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1963_def]
  kernel_rfl

theorem output1963_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1963 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_277 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1963_def]
  kernel_rfl

theorem input1964_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1964 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_364 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1964_def]
  kernel_rfl

theorem output1964_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1964 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_276 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1964_def]
  kernel_rfl

theorem input1965_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1965 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_366 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1965_def]
  simp only [input1964_eq, input1963_eq]
  kernel_rfl

theorem output1965_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1965 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_278 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1965_def]
  simp only [output1964_eq, output1963_eq]
  kernel_rfl

theorem input1966_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1966 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1966_def]
  kernel_rfl

theorem output1966_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1966 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1966_def]
  kernel_rfl

theorem input1967_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1967 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_359 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1967_def]
  kernel_rfl

theorem input1968_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1968 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1968_def]
  kernel_rfl

theorem output1968_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1968 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1968_def]
  kernel_rfl

theorem input1969_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1969 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_357 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1969_def]
  kernel_rfl

theorem input1970_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1970 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_358 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1970_def]
  simp only [input1969_eq, input1968_eq]
  kernel_rfl

theorem output1970_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1970 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1970_def]
  simp only [output1968_eq]

theorem input1971_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1971 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_360 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1971_def]
  simp only [input1970_eq, input1967_eq]
  kernel_rfl

theorem output1971_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1971 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1971_def]
  simp only [output1970_eq]

theorem input1972_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1972 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_315 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1972_def]
  kernel_rfl

theorem input1973_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1973 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_313 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1973_def]
  kernel_rfl

theorem output1973_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1973 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_237 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1973_def]
  kernel_rfl

theorem input1974_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1974 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_311 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1974_def]
  kernel_rfl

theorem output1974_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1974 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_235 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1974_def]
  kernel_rfl

theorem input1975_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1975 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_309 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1975_def]
  kernel_rfl

theorem output1975_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1975 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_233 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1975_def]
  kernel_rfl

theorem input1976_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1976 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_307 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1976_def]
  kernel_rfl

theorem output1976_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1976 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_231 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1976_def]
  kernel_rfl

theorem input1977_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1977 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_305 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1977_def]
  kernel_rfl

theorem output1977_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1977 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_229 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1977_def]
  kernel_rfl

theorem input1978_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1978 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_303 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1978_def]
  kernel_rfl

theorem output1978_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1978 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_227 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1978_def]
  kernel_rfl

theorem input1979_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1979 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_301 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1979_def]
  kernel_rfl

theorem output1979_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1979 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_225 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1979_def]
  kernel_rfl

theorem input1980_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1980 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_299 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1980_def]
  kernel_rfl

theorem output1980_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1980 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_223 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1980_def]
  kernel_rfl

theorem input1981_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1981 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_297 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1981_def]
  kernel_rfl

theorem output1981_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1981 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_221 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1981_def]
  kernel_rfl

theorem input1982_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1982 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_295 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1982_def]
  kernel_rfl

theorem output1982_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1982 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_219 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1982_def]
  kernel_rfl

theorem input1983_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1983 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_293 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1983_def]
  kernel_rfl

theorem output1983_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1983 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_217 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1983_def]
  kernel_rfl

theorem input1984_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1984 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_291 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1984_def]
  kernel_rfl

theorem output1984_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1984 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_215 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1984_def]
  kernel_rfl

theorem input1985_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1985 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_289 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1985_def]
  kernel_rfl

theorem output1985_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1985 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_213 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1985_def]
  kernel_rfl

theorem input1986_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1986 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_287 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1986_def]
  kernel_rfl

theorem input1987_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1987 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_285 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1987_def]
  kernel_rfl

theorem output1987_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1987 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_211 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1987_def]
  kernel_rfl

theorem input1988_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1988 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_283 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1988_def]
  kernel_rfl

theorem output1988_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1988 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_210 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1988_def]
  kernel_rfl

theorem input1989_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1989 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_40 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1989_def]
  kernel_rfl

theorem input1990_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1990 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_284 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1990_def]
  simp only [input1989_eq, input1988_eq]
  kernel_rfl

theorem output1990_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1990 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_210 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1990_def]
  simp only [output1988_eq]

theorem input1991_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1991 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_286 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1991_def]
  simp only [input1990_eq, input1987_eq]
  kernel_rfl

theorem output1991_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1991 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_212 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1991_def]
  simp only [output1990_eq, output1987_eq]
  kernel_rfl

theorem input1992_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1992 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_288 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1992_def]
  simp only [input1991_eq, input1986_eq]
  kernel_rfl

theorem output1992_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1992 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_212 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1992_def]
  simp only [output1991_eq]

theorem input1993_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1993 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_290 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1993_def]
  simp only [input1992_eq, input1985_eq]
  kernel_rfl

theorem output1993_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1993 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_214 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1993_def]
  simp only [output1992_eq, output1985_eq]
  kernel_rfl

theorem input1994_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1994 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_292 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1994_def]
  simp only [input1993_eq, input1984_eq]
  kernel_rfl

theorem output1994_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1994 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_216 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1994_def]
  simp only [output1993_eq, output1984_eq]
  kernel_rfl

theorem input1995_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1995 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_294 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1995_def]
  simp only [input1994_eq, input1983_eq]
  kernel_rfl

theorem output1995_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1995 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_218 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1995_def]
  simp only [output1994_eq, output1983_eq]
  kernel_rfl

theorem input1996_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1996 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_296 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1996_def]
  simp only [input1995_eq, input1982_eq]
  kernel_rfl

theorem output1996_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1996 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_220 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1996_def]
  simp only [output1995_eq, output1982_eq]
  kernel_rfl

theorem input1997_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1997 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_298 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1997_def]
  simp only [input1996_eq, input1981_eq]
  kernel_rfl

theorem output1997_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1997 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_222 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1997_def]
  simp only [output1996_eq, output1981_eq]
  kernel_rfl

theorem input1998_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1998 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_300 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1998_def]
  simp only [input1997_eq, input1980_eq]
  kernel_rfl

theorem output1998_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1998 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_224 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1998_def]
  simp only [output1997_eq, output1980_eq]
  kernel_rfl

theorem input1999_eq : InitECandidate.Proofs.DeadStages783.Parallel.input1999 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_302 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input1999_def]
  simp only [input1998_eq, input1979_eq]
  kernel_rfl

theorem output1999_eq : InitECandidate.Proofs.DeadStages783.Parallel.output1999 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_226 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output1999_def]
  simp only [output1998_eq, output1979_eq]
  kernel_rfl

theorem input2000_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2000 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_304 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2000_def]
  simp only [input1999_eq, input1978_eq]
  kernel_rfl

theorem output2000_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2000 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_228 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2000_def]
  simp only [output1999_eq, output1978_eq]
  kernel_rfl

theorem input2001_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2001 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_306 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2001_def]
  simp only [input2000_eq, input1977_eq]
  kernel_rfl

theorem output2001_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2001 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_230 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2001_def]
  simp only [output2000_eq, output1977_eq]
  kernel_rfl

theorem input2002_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2002 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_308 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2002_def]
  simp only [input2001_eq, input1976_eq]
  kernel_rfl

theorem output2002_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2002 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_232 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2002_def]
  simp only [output2001_eq, output1976_eq]
  kernel_rfl

theorem input2003_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2003 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_310 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2003_def]
  simp only [input2002_eq, input1975_eq]
  kernel_rfl

theorem output2003_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2003 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_234 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2003_def]
  simp only [output2002_eq, output1975_eq]
  kernel_rfl

theorem input2004_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2004 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_312 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2004_def]
  simp only [input2003_eq, input1974_eq]
  kernel_rfl

theorem output2004_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2004 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_236 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2004_def]
  simp only [output2003_eq, output1974_eq]
  kernel_rfl

theorem input2005_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2005 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_314 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2005_def]
  simp only [input2004_eq, input1973_eq]
  kernel_rfl

theorem output2005_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2005 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_238 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2005_def]
  simp only [output2004_eq, output1973_eq]
  kernel_rfl

theorem input2006_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2006 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_316 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2006_def]
  simp only [input2005_eq, input1972_eq]
  kernel_rfl

theorem output2006_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2006 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_238 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2006_def]
  simp only [output2005_eq]

theorem input2007_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2007 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_282 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2007_def]
  kernel_rfl

theorem output2007_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2007 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_209 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2007_def]
  kernel_rfl

theorem input2008_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2008 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_317 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2008_def]
  simp only [input2007_eq, input2006_eq]
  kernel_rfl

theorem output2008_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2008 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_239 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2008_def]
  simp only [output2007_eq, output2006_eq]
  kernel_rfl

theorem input2009_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2009 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_279 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2009_def]
  kernel_rfl

theorem output2009_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2009 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_206 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2009_def]
  kernel_rfl

theorem input2010_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2010 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_278 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2010_def]
  kernel_rfl

theorem output2010_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2010 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_205 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2010_def]
  kernel_rfl

theorem input2011_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2011 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_280 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2011_def]
  simp only [input2010_eq, input2009_eq]
  kernel_rfl

theorem output2011_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2011 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_207 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2011_def]
  simp only [output2010_eq, output2009_eq]
  kernel_rfl

theorem input2012_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2012 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_276 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2012_def]
  kernel_rfl

theorem output2012_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2012 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_203 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2012_def]
  kernel_rfl

theorem input2013_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2013 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2013_def]
  kernel_rfl

theorem output2013_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2013 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2013_def]
  kernel_rfl

theorem input2014_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2014 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_271 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2014_def]
  kernel_rfl

theorem output2014_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2014 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_198 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2014_def]
  kernel_rfl

theorem input2015_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2015 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_249 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2015_def]
  kernel_rfl

theorem output2015_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2015 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_191 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2015_def]
  kernel_rfl

theorem input2016_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2016 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_272 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2016_def]
  simp only [input2015_eq, input2014_eq]
  kernel_rfl

theorem output2016_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2016 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_199 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2016_def]
  simp only [output2015_eq, output2014_eq]
  kernel_rfl

theorem input2017_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2017 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_248 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2017_def]
  kernel_rfl

theorem output2017_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2017 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_190 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2017_def]
  kernel_rfl

theorem input2018_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2018 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_273 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2018_def]
  simp only [input2017_eq, input2016_eq]
  kernel_rfl

theorem output2018_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2018 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_200 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2018_def]
  simp only [output2017_eq, output2016_eq]
  kernel_rfl

theorem input2019_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2019 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_246 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2019_def]
  kernel_rfl

theorem output2019_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2019 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_188 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2019_def]
  kernel_rfl

theorem input2020_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2020 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_244 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2020_def]
  kernel_rfl

theorem output2020_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2020 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_186 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2020_def]
  kernel_rfl

theorem input2021_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2021 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_242 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2021_def]
  kernel_rfl

theorem input2022_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2022 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_66 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2022_def]
  kernel_rfl

theorem output2022_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2022 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2022_def]
  kernel_rfl

theorem input2023_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2023 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_240 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2023_def]
  kernel_rfl

theorem input2024_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2024 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_241 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2024_def]
  simp only [input2023_eq, input2022_eq]
  kernel_rfl

theorem output2024_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2024 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2024_def]
  simp only [output2022_eq]

theorem input2025_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2025 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_243 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2025_def]
  simp only [input2024_eq, input2021_eq]
  kernel_rfl

theorem output2025_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2025 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_55 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2025_def]
  simp only [output2024_eq]

theorem input2026_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2026 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_245 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2026_def]
  simp only [input2025_eq, input2020_eq]
  kernel_rfl

theorem output2026_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2026 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_187 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2026_def]
  simp only [output2025_eq, output2020_eq]
  kernel_rfl

theorem input2027_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2027 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_247 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2027_def]
  simp only [input2026_eq, input2019_eq]
  kernel_rfl

theorem output2027_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2027 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_189 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2027_def]
  simp only [output2026_eq, output2019_eq]
  kernel_rfl

theorem input2028_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2028 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_274 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2028_def]
  simp only [input2027_eq, input2018_eq]
  kernel_rfl

theorem output2028_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2028 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_201 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2028_def]
  simp only [output2027_eq, output2018_eq]
  kernel_rfl

theorem input2029_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2029 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_275 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2029_def]
  simp only [input2028_eq, input2013_eq]
  kernel_rfl

theorem output2029_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2029 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_202 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2029_def]
  simp only [output2028_eq, output2013_eq]
  kernel_rfl

theorem input2030_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2030 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_277 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2030_def]
  simp only [input2029_eq, input2012_eq]
  kernel_rfl

theorem output2030_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2030 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_204 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2030_def]
  simp only [output2029_eq, output2012_eq]
  kernel_rfl

theorem input2031_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2031 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_281 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2031_def]
  simp only [input2030_eq, input2011_eq]
  kernel_rfl

theorem output2031_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2031 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_208 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2031_def]
  simp only [output2030_eq, output2011_eq]
  kernel_rfl

theorem input2032_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2032 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_318 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2032_def]
  simp only [input2031_eq, input2008_eq]
  kernel_rfl

theorem output2032_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2032 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_240 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2032_def]
  simp only [output2031_eq, output2008_eq]
  kernel_rfl

theorem input2033_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2033 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_352 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2033_def]
  kernel_rfl

theorem input2034_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2034 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_350 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2034_def]
  kernel_rfl

theorem output2034_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2034 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_269 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2034_def]
  kernel_rfl

theorem input2035_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2035 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_348 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2035_def]
  kernel_rfl

theorem output2035_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2035 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_267 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2035_def]
  kernel_rfl

theorem input2036_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2036 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_346 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2036_def]
  kernel_rfl

theorem output2036_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2036 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_265 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2036_def]
  kernel_rfl

theorem input2037_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2037 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_344 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2037_def]
  kernel_rfl

theorem output2037_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2037 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_263 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2037_def]
  kernel_rfl

theorem input2038_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2038 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_342 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2038_def]
  kernel_rfl

theorem output2038_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2038 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_261 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2038_def]
  kernel_rfl

theorem input2039_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2039 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_340 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2039_def]
  kernel_rfl

theorem output2039_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2039 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_259 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2039_def]
  kernel_rfl

theorem input2040_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2040 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_338 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2040_def]
  kernel_rfl

theorem output2040_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2040 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_257 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2040_def]
  kernel_rfl

theorem input2041_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2041 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_336 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2041_def]
  kernel_rfl

theorem output2041_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2041 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_255 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2041_def]
  kernel_rfl

theorem input2042_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2042 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_334 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2042_def]
  kernel_rfl

theorem output2042_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2042 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_253 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2042_def]
  kernel_rfl

theorem input2043_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2043 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_332 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2043_def]
  kernel_rfl

theorem output2043_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2043 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_251 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2043_def]
  kernel_rfl

theorem input2044_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2044 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_330 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2044_def]
  kernel_rfl

theorem output2044_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2044 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_249 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2044_def]
  kernel_rfl

theorem input2045_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2045 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_328 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2045_def]
  kernel_rfl

theorem output2045_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2045 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_247 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2045_def]
  kernel_rfl

theorem input2046_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2046 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_326 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2046_def]
  kernel_rfl

theorem output2046_eq : InitECandidate.Proofs.DeadStages783.Parallel.output2046 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_3_245 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.output2046_def]
  kernel_rfl

theorem input2047_eq : InitECandidate.Proofs.DeadStages783.Parallel.input2047 =
    InitECandidate.Proofs.WordStages.Parallel783.word783_2_324 := by
  rw [InitECandidate.Proofs.DeadStages783.Parallel.input2047_def]
  kernel_rfl

#print axioms input2047_eq
end InitECandidate.Proofs.WordStages.Parallel783.AgreementsParallel
