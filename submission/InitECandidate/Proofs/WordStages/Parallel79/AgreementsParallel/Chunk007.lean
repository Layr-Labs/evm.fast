import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel79.Data2
import InitECandidate.Proofs.WordStages.Parallel79.Data3
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk007
import InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel.Chunk006

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
theorem input1792_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1792 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_86 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1792_def]
  kernel_rfl

theorem input1793_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1793 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_87 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1793_def]
  simp only [input1792_eq, input1791_eq]
  kernel_rfl

theorem output1793_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1793 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1793_def]
  simp only [output1791_eq]

theorem input1794_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1794 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_89 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1794_def]
  simp only [input1793_eq, input1790_eq]
  kernel_rfl

theorem output1794_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1794 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1794_def]
  simp only [output1793_eq]

theorem input1795_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1795 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1795_def]
  kernel_rfl

theorem input1796_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1796 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_79 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1796_def]
  kernel_rfl

theorem input1797_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1797 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_80 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1797_def]
  simp only [input1796_eq, input1795_eq]
  kernel_rfl

theorem input1798_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1798 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1798_def]
  kernel_rfl

theorem output1798_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1798 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1798_def]
  kernel_rfl

theorem input1799_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1799 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_76 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1799_def]
  kernel_rfl

theorem output1799_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1799 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_46 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1799_def]
  kernel_rfl

theorem input1800_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1800 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_77 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1800_def]
  simp only [input1799_eq, input1798_eq]
  kernel_rfl

theorem output1800_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1800 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_47 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1800_def]
  simp only [output1799_eq, output1798_eq]
  kernel_rfl

theorem input1801_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1801 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_74 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1801_def]
  kernel_rfl

theorem output1801_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1801 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1801_def]
  kernel_rfl

theorem input1802_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1802 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_72 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1802_def]
  kernel_rfl

theorem input1803_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1803 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1803_def]
  kernel_rfl

theorem output1803_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1803 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1803_def]
  kernel_rfl

theorem input1804_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1804 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_70 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1804_def]
  kernel_rfl

theorem input1805_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1805 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_71 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1805_def]
  simp only [input1804_eq, input1803_eq]
  kernel_rfl

theorem output1805_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1805 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1805_def]
  simp only [output1803_eq]

theorem input1806_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1806 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_73 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1806_def]
  simp only [input1805_eq, input1802_eq]
  kernel_rfl

theorem output1806_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1806 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1806_def]
  simp only [output1805_eq]

theorem input1807_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1807 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_75 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1807_def]
  simp only [input1806_eq, input1801_eq]
  kernel_rfl

theorem output1807_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1807 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_45 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1807_def]
  simp only [output1806_eq, output1801_eq]
  kernel_rfl

theorem input1808_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1808 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_78 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1808_def]
  simp only [input1807_eq, input1800_eq]
  kernel_rfl

theorem output1808_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1808 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_48 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1808_def]
  simp only [output1807_eq, output1800_eq]
  kernel_rfl

theorem input1809_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1809 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_81 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1809_def]
  simp only [input1808_eq, input1797_eq]
  kernel_rfl

theorem output1809_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1809 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_48 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1809_def]
  simp only [output1808_eq]

theorem input1810_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1810 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1810_def]
  kernel_rfl

theorem output1810_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1810 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1810_def]
  kernel_rfl

theorem input1811_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1811 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_82 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1811_def]
  kernel_rfl

theorem input1812_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1812 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_83 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1812_def]
  simp only [input1811_eq, input1810_eq]
  kernel_rfl

theorem output1812_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1812 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1812_def]
  simp only [output1810_eq]

theorem input1813_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1813 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1813_def]
  kernel_rfl

theorem input1814_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1814 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_84 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1814_def]
  simp only [input1813_eq, input1812_eq]
  kernel_rfl

theorem output1814_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1814 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1814_def]
  simp only [output1812_eq]

theorem input1815_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1815 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_85 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1815_def]
  simp only [input1809_eq, input1814_eq]
  kernel_rfl

theorem output1815_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1815 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_49 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1815_def]
  simp only [output1809_eq, output1814_eq]
  kernel_rfl

theorem input1816_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1816 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_90 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1816_def]
  simp only [input1815_eq, input1794_eq]
  kernel_rfl

theorem output1816_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1816 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_50 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1816_def]
  simp only [output1815_eq, output1794_eq]
  kernel_rfl

theorem input1817_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1817 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_67 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1817_def]
  kernel_rfl

theorem output1817_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1817 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_41 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1817_def]
  kernel_rfl

theorem input1818_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1818 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_66 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1818_def]
  kernel_rfl

theorem output1818_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1818 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1818_def]
  kernel_rfl

theorem input1819_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1819 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_68 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1819_def]
  simp only [input1818_eq, input1817_eq]
  kernel_rfl

theorem output1819_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1819 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_42 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1819_def]
  simp only [output1818_eq, output1817_eq]
  kernel_rfl

theorem input1820_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1820 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_63 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1820_def]
  kernel_rfl

theorem output1820_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1820 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_37 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1820_def]
  kernel_rfl

theorem input1821_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1821 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_62 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1821_def]
  kernel_rfl

theorem output1821_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1821 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_36 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1821_def]
  kernel_rfl

theorem input1822_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1822 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_64 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1822_def]
  simp only [input1821_eq, input1820_eq]
  kernel_rfl

theorem output1822_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1822 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_38 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1822_def]
  simp only [output1821_eq, output1820_eq]
  kernel_rfl

theorem input1823_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1823 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1823_def]
  kernel_rfl

theorem output1823_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1823 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1823_def]
  kernel_rfl

theorem input1824_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1824 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_57 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1824_def]
  kernel_rfl

theorem input1825_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1825 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1825_def]
  kernel_rfl

theorem output1825_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1825 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1825_def]
  kernel_rfl

theorem input1826_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1826 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_55 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1826_def]
  kernel_rfl

theorem input1827_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1827 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_56 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1827_def]
  simp only [input1826_eq, input1825_eq]
  kernel_rfl

theorem output1827_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1827 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1827_def]
  simp only [output1825_eq]

theorem input1828_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1828 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_58 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1828_def]
  simp only [input1827_eq, input1824_eq]
  kernel_rfl

theorem output1828_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1828 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1828_def]
  simp only [output1827_eq]

theorem input1829_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1829 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_45 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1829_def]
  kernel_rfl

theorem input1830_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1830 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1830_def]
  kernel_rfl

theorem input1831_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1831 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_46 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1831_def]
  simp only [input1830_eq, input1829_eq]
  kernel_rfl

theorem input1832_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1832 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_43 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1832_def]
  kernel_rfl

theorem input1833_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1833 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_47 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1833_def]
  simp only [input1832_eq, input1831_eq]
  kernel_rfl

theorem input1834_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1834 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1834_def]
  kernel_rfl

theorem output1834_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1834 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1834_def]
  kernel_rfl

theorem input1835_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1835 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_39 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1835_def]
  kernel_rfl

theorem output1835_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1835 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_27 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1835_def]
  kernel_rfl

theorem input1836_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1836 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_41 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1836_def]
  simp only [input1835_eq, input1834_eq]
  kernel_rfl

theorem output1836_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1836 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_29 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1836_def]
  simp only [output1835_eq, output1834_eq]
  kernel_rfl

theorem input1837_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1837 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_37 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1837_def]
  kernel_rfl

theorem output1837_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1837 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_25 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1837_def]
  kernel_rfl

theorem input1838_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1838 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_35 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1838_def]
  kernel_rfl

theorem input1839_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1839 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1839_def]
  kernel_rfl

theorem output1839_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1839 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1839_def]
  kernel_rfl

theorem input1840_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1840 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_33 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1840_def]
  kernel_rfl

theorem input1841_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1841 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_34 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1841_def]
  simp only [input1840_eq, input1839_eq]
  kernel_rfl

theorem output1841_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1841 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1841_def]
  simp only [output1839_eq]

theorem input1842_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1842 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_36 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1842_def]
  simp only [input1841_eq, input1838_eq]
  kernel_rfl

theorem output1842_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1842 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1842_def]
  simp only [output1841_eq]

theorem input1843_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1843 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_38 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1843_def]
  simp only [input1842_eq, input1837_eq]
  kernel_rfl

theorem output1843_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1843 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_26 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1843_def]
  simp only [output1842_eq, output1837_eq]
  kernel_rfl

theorem input1844_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1844 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_42 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1844_def]
  simp only [input1843_eq, input1836_eq]
  kernel_rfl

theorem output1844_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1844 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_30 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1844_def]
  simp only [output1843_eq, output1836_eq]
  kernel_rfl

theorem input1845_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1845 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_48 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1845_def]
  simp only [input1844_eq, input1833_eq]
  kernel_rfl

theorem output1845_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1845 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_30 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1845_def]
  simp only [output1844_eq]

theorem input1846_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1846 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_50 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1846_def]
  kernel_rfl

theorem output1846_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1846 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1846_def]
  kernel_rfl

theorem input1847_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1847 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1847_def]
  kernel_rfl

theorem input1848_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1848 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_51 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1848_def]
  simp only [input1847_eq, input1846_eq]
  kernel_rfl

theorem output1848_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1848 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1848_def]
  simp only [output1846_eq]

theorem input1849_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1849 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_49 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1849_def]
  kernel_rfl

theorem input1850_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1850 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_52 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1850_def]
  simp only [input1849_eq, input1848_eq]
  kernel_rfl

theorem output1850_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1850 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1850_def]
  simp only [output1848_eq]

theorem input1851_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1851 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1851_def]
  kernel_rfl

theorem input1852_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1852 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_53 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1852_def]
  simp only [input1851_eq, input1850_eq]
  kernel_rfl

theorem output1852_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1852 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1852_def]
  simp only [output1850_eq]

theorem input1853_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1853 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_54 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1853_def]
  simp only [input1845_eq, input1852_eq]
  kernel_rfl

theorem output1853_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1853 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_32 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1853_def]
  simp only [output1845_eq, output1852_eq]
  kernel_rfl

theorem input1854_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1854 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_59 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1854_def]
  simp only [input1853_eq, input1828_eq]
  kernel_rfl

theorem output1854_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1854 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_33 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1854_def]
  simp only [output1853_eq, output1828_eq]
  kernel_rfl

theorem input1855_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1855 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_30 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1855_def]
  kernel_rfl

theorem output1855_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1855 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_22 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1855_def]
  kernel_rfl

theorem input1856_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1856 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_29 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1856_def]
  kernel_rfl

theorem output1856_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1856 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_21 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1856_def]
  kernel_rfl

theorem input1857_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1857 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1857_def]
  simp only [input1856_eq, input1855_eq]
  kernel_rfl

theorem output1857_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1857 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_23 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1857_def]
  simp only [output1856_eq, output1855_eq]
  kernel_rfl

theorem input1858_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1858 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_26 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1858_def]
  kernel_rfl

theorem output1858_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1858 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_18 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1858_def]
  kernel_rfl

theorem input1859_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1859 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_25 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1859_def]
  kernel_rfl

theorem output1859_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1859 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_17 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1859_def]
  kernel_rfl

theorem input1860_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1860 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_27 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1860_def]
  simp only [input1859_eq, input1858_eq]
  kernel_rfl

theorem output1860_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1860 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_19 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1860_def]
  simp only [output1859_eq, output1858_eq]
  kernel_rfl

theorem input1861_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1861 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_23 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1861_def]
  kernel_rfl

theorem input1862_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1862 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1862_def]
  kernel_rfl

theorem output1862_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1862 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1862_def]
  kernel_rfl

theorem input1863_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1863 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_21 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1863_def]
  kernel_rfl

theorem input1864_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1864 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_22 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1864_def]
  simp only [input1863_eq, input1862_eq]
  kernel_rfl

theorem output1864_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1864 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1864_def]
  simp only [output1862_eq]

theorem input1865_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1865 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_24 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1865_def]
  simp only [input1864_eq, input1861_eq]
  kernel_rfl

theorem output1865_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1865 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1865_def]
  simp only [output1864_eq]

theorem input1866_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1866 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1866_def]
  simp only [input1865_eq, input1860_eq]
  kernel_rfl

theorem output1866_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1866 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_20 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1866_def]
  simp only [output1865_eq, output1860_eq]
  kernel_rfl

theorem input1867_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1867 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_32 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1867_def]
  simp only [input1866_eq, input1857_eq]
  kernel_rfl

theorem output1867_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1867 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_24 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1867_def]
  simp only [output1866_eq, output1857_eq]
  kernel_rfl

theorem input1868_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1868 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_60 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1868_def]
  simp only [input1867_eq, input1854_eq]
  kernel_rfl

theorem output1868_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1868 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_34 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1868_def]
  simp only [output1867_eq, output1854_eq]
  kernel_rfl

theorem input1869_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1869 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_61 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1869_def]
  simp only [input1868_eq, input1823_eq]
  kernel_rfl

theorem output1869_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1869 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_35 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1869_def]
  simp only [output1868_eq, output1823_eq]
  kernel_rfl

theorem input1870_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1870 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_65 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1870_def]
  simp only [input1869_eq, input1822_eq]
  kernel_rfl

theorem output1870_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1870 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_39 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1870_def]
  simp only [output1869_eq, output1822_eq]
  kernel_rfl

theorem input1871_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1871 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_69 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1871_def]
  simp only [input1870_eq, input1819_eq]
  kernel_rfl

theorem output1871_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1871 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_43 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1871_def]
  simp only [output1870_eq, output1819_eq]
  kernel_rfl

theorem input1872_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1872 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_91 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1872_def]
  simp only [input1871_eq, input1816_eq]
  kernel_rfl

theorem output1872_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1872 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_51 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1872_def]
  simp only [output1871_eq, output1816_eq]
  kernel_rfl

theorem input1873_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1873 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_92 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1873_def]
  simp only [input1872_eq, input1789_eq]
  kernel_rfl

theorem output1873_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1873 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_52 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1873_def]
  simp only [output1872_eq, output1789_eq]
  kernel_rfl

theorem input1874_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1874 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_96 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1874_def]
  simp only [input1873_eq, input1788_eq]
  kernel_rfl

theorem output1874_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1874 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_56 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1874_def]
  simp only [output1873_eq, output1788_eq]
  kernel_rfl

theorem input1875_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1875 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_98 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1875_def]
  simp only [input1874_eq, input1785_eq]
  kernel_rfl

theorem output1875_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1875 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_58 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1875_def]
  simp only [output1874_eq, output1785_eq]
  kernel_rfl

theorem input1876_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1876 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_102 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1876_def]
  simp only [input1875_eq, input1784_eq]
  kernel_rfl

theorem output1876_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1876 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_62 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1876_def]
  simp only [output1875_eq, output1784_eq]
  kernel_rfl

theorem input1877_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1877 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_104 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1877_def]
  simp only [input1876_eq, input1781_eq]
  kernel_rfl

theorem output1877_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1877 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_64 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1877_def]
  simp only [output1876_eq, output1781_eq]
  kernel_rfl

theorem input1878_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1878 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_106 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1878_def]
  simp only [input1877_eq, input1780_eq]
  kernel_rfl

theorem output1878_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1878 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_66 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1878_def]
  simp only [output1877_eq, output1780_eq]
  kernel_rfl

theorem input1879_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1879 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_108 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1879_def]
  simp only [input1878_eq, input1779_eq]
  kernel_rfl

theorem output1879_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1879 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_68 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1879_def]
  simp only [output1878_eq, output1779_eq]
  kernel_rfl

theorem input1880_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1880 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_134 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1880_def]
  simp only [input1879_eq, input1778_eq]
  kernel_rfl

theorem output1880_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1880 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_76 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1880_def]
  simp only [output1879_eq, output1778_eq]
  kernel_rfl

theorem input1881_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1881 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_135 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1881_def]
  simp only [input1880_eq, input1747_eq]
  kernel_rfl

theorem output1881_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1881 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_77 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1881_def]
  simp only [output1880_eq, output1747_eq]
  kernel_rfl

theorem input1882_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1882 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_139 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1882_def]
  simp only [input1881_eq, input1746_eq]
  kernel_rfl

theorem output1882_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1882 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_81 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1882_def]
  simp only [output1881_eq, output1746_eq]
  kernel_rfl

theorem input1883_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1883 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_141 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1883_def]
  simp only [input1882_eq, input1743_eq]
  kernel_rfl

theorem output1883_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1883 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_83 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1883_def]
  simp only [output1882_eq, output1743_eq]
  kernel_rfl

theorem input1884_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1884 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_145 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1884_def]
  simp only [input1883_eq, input1742_eq]
  kernel_rfl

theorem output1884_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1884 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_87 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1884_def]
  simp only [output1883_eq, output1742_eq]
  kernel_rfl

theorem input1885_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1885 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_147 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1885_def]
  simp only [input1884_eq, input1739_eq]
  kernel_rfl

theorem output1885_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1885 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_89 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1885_def]
  simp only [output1884_eq, output1739_eq]
  kernel_rfl

theorem input1886_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1886 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_149 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1886_def]
  simp only [input1885_eq, input1738_eq]
  kernel_rfl

theorem output1886_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1886 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_91 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1886_def]
  simp only [output1885_eq, output1738_eq]
  kernel_rfl

theorem input1887_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1887 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_151 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1887_def]
  simp only [input1886_eq, input1737_eq]
  kernel_rfl

theorem output1887_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1887 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_93 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1887_def]
  simp only [output1886_eq, output1737_eq]
  kernel_rfl

theorem input1888_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1888 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_173 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1888_def]
  simp only [input1887_eq, input1736_eq]
  kernel_rfl

theorem output1888_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1888 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_101 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1888_def]
  simp only [output1887_eq, output1736_eq]
  kernel_rfl

theorem input1889_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1889 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_174 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1889_def]
  simp only [input1888_eq, input1709_eq]
  kernel_rfl

theorem output1889_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1889 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_102 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1889_def]
  simp only [output1888_eq, output1709_eq]
  kernel_rfl

theorem input1890_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1890 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_178 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1890_def]
  simp only [input1889_eq, input1708_eq]
  kernel_rfl

theorem output1890_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1890 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_106 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1890_def]
  simp only [output1889_eq, output1708_eq]
  kernel_rfl

theorem input1891_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1891 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_180 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1891_def]
  simp only [input1890_eq, input1705_eq]
  kernel_rfl

theorem output1891_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1891 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_108 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1891_def]
  simp only [output1890_eq, output1705_eq]
  kernel_rfl

theorem input1892_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1892 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_184 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1892_def]
  simp only [input1891_eq, input1704_eq]
  kernel_rfl

theorem output1892_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1892 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_112 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1892_def]
  simp only [output1891_eq, output1704_eq]
  kernel_rfl

theorem input1893_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1893 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_186 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1893_def]
  simp only [input1892_eq, input1701_eq]
  kernel_rfl

theorem output1893_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1893 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_114 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1893_def]
  simp only [output1892_eq, output1701_eq]
  kernel_rfl

theorem input1894_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1894 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_188 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1894_def]
  simp only [input1893_eq, input1700_eq]
  kernel_rfl

theorem output1894_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1894 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_116 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1894_def]
  simp only [output1893_eq, output1700_eq]
  kernel_rfl

theorem input1895_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1895 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_190 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1895_def]
  simp only [input1894_eq, input1699_eq]
  kernel_rfl

theorem output1895_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1895 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_118 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1895_def]
  simp only [output1894_eq, output1699_eq]
  kernel_rfl

theorem input1896_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1896 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_212 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1896_def]
  simp only [input1895_eq, input1698_eq]
  kernel_rfl

theorem output1896_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1896 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_126 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1896_def]
  simp only [output1895_eq, output1698_eq]
  kernel_rfl

theorem input1897_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1897 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_213 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1897_def]
  simp only [input1896_eq, input1671_eq]
  kernel_rfl

theorem output1897_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1897 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_127 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1897_def]
  simp only [output1896_eq, output1671_eq]
  kernel_rfl

theorem input1898_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1898 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_217 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1898_def]
  simp only [input1897_eq, input1670_eq]
  kernel_rfl

theorem output1898_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1898 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_131 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1898_def]
  simp only [output1897_eq, output1670_eq]
  kernel_rfl

theorem input1899_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1899 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_219 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1899_def]
  simp only [input1898_eq, input1667_eq]
  kernel_rfl

theorem output1899_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1899 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_133 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1899_def]
  simp only [output1898_eq, output1667_eq]
  kernel_rfl

theorem input1900_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1900 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_223 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1900_def]
  simp only [input1899_eq, input1666_eq]
  kernel_rfl

theorem output1900_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1900 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_137 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1900_def]
  simp only [output1899_eq, output1666_eq]
  kernel_rfl

theorem input1901_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1901 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_225 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1901_def]
  simp only [input1900_eq, input1663_eq]
  kernel_rfl

theorem output1901_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1901 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_139 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1901_def]
  simp only [output1900_eq, output1663_eq]
  kernel_rfl

theorem input1902_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1902 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_227 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1902_def]
  simp only [input1901_eq, input1662_eq]
  kernel_rfl

theorem output1902_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1902 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_141 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1902_def]
  simp only [output1901_eq, output1662_eq]
  kernel_rfl

theorem input1903_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1903 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_229 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1903_def]
  simp only [input1902_eq, input1661_eq]
  kernel_rfl

theorem output1903_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1903 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_143 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1903_def]
  simp only [output1902_eq, output1661_eq]
  kernel_rfl

theorem input1904_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1904 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_251 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1904_def]
  simp only [input1903_eq, input1660_eq]
  kernel_rfl

theorem output1904_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1904 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_151 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1904_def]
  simp only [output1903_eq, output1660_eq]
  kernel_rfl

theorem input1905_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1905 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_252 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1905_def]
  simp only [input1904_eq, input1633_eq]
  kernel_rfl

theorem output1905_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1905 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_152 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1905_def]
  simp only [output1904_eq, output1633_eq]
  kernel_rfl

theorem input1906_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1906 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_254 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1906_def]
  simp only [input1905_eq, input1632_eq]
  kernel_rfl

theorem output1906_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1906 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_154 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1906_def]
  simp only [output1905_eq, output1632_eq]
  kernel_rfl

theorem input1907_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1907 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_257 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1907_def]
  simp only [input1906_eq, input1631_eq]
  kernel_rfl

theorem output1907_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1907 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_157 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1907_def]
  simp only [output1906_eq, output1631_eq]
  kernel_rfl

theorem input1908_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1908 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_266 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1908_def]
  simp only [input1907_eq, input1628_eq]
  kernel_rfl

theorem output1908_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1908 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_159 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1908_def]
  simp only [output1907_eq, output1628_eq]
  kernel_rfl

theorem input1909_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1909 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_272 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1909_def]
  kernel_rfl

theorem input1910_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1910 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_270 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1910_def]
  kernel_rfl

theorem input1911_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1911 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_268 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1911_def]
  kernel_rfl

theorem input1912_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1912 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1912_def]
  kernel_rfl

theorem input1913_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1913 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_269 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1913_def]
  simp only [input1912_eq, input1911_eq]
  kernel_rfl

theorem input1914_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1914 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_271 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1914_def]
  simp only [input1913_eq, input1910_eq]
  kernel_rfl

theorem input1915_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1915 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_273 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1915_def]
  simp only [input1914_eq, input1909_eq]
  kernel_rfl

theorem input1916_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1916 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_267 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1916_def]
  kernel_rfl

theorem output1916_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1916 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_160 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1916_def]
  kernel_rfl

theorem input1917_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1917 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_274 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1917_def]
  simp only [input1916_eq, input1915_eq]
  kernel_rfl

theorem output1917_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1917 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_160 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1917_def]
  simp only [output1916_eq]

theorem input1918_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1918 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1918_def]
  kernel_rfl

theorem input1919_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1919 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_275 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1919_def]
  simp only [input1918_eq, input1917_eq]
  kernel_rfl

theorem output1919_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1919 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_160 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1919_def]
  simp only [output1917_eq]

theorem input1920_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1920 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_276 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1920_def]
  simp only [input1908_eq, input1919_eq]
  kernel_rfl

theorem output1920_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1920 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_161 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1920_def]
  simp only [output1908_eq, output1919_eq]
  kernel_rfl

theorem input1921_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1921 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_281 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1921_def]
  simp only [input1920_eq, input1619_eq]
  kernel_rfl

theorem output1921_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1921 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_162 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1921_def]
  simp only [output1920_eq, output1619_eq]
  kernel_rfl

theorem input1922_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1922 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_19 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1922_def]
  kernel_rfl

theorem output1922_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1922 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_15 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1922_def]
  kernel_rfl

theorem input1923_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1923 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_17 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1923_def]
  kernel_rfl

theorem output1923_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1923 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1923_def]
  kernel_rfl

theorem input1924_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1924 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_15 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1924_def]
  kernel_rfl

theorem input1925_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1925 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1925_def]
  kernel_rfl

theorem output1925_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1925 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1925_def]
  kernel_rfl

theorem input1926_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1926 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1926_def]
  kernel_rfl

theorem input1927_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1927 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_14 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1927_def]
  simp only [input1926_eq, input1925_eq]
  kernel_rfl

theorem output1927_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1927 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1927_def]
  simp only [output1925_eq]

theorem input1928_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1928 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_16 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1928_def]
  simp only [input1927_eq, input1924_eq]
  kernel_rfl

theorem output1928_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1928 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1928_def]
  simp only [output1927_eq]

theorem input1929_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1929 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_18 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1929_def]
  simp only [input1928_eq, input1923_eq]
  kernel_rfl

theorem output1929_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1929 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_14 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1929_def]
  simp only [output1928_eq, output1923_eq]
  kernel_rfl

theorem input1930_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1930 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_20 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1930_def]
  simp only [input1929_eq, input1922_eq]
  kernel_rfl

theorem output1930_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1930 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_16 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1930_def]
  simp only [output1929_eq, output1922_eq]
  kernel_rfl

theorem input1931_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1931 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_282 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1931_def]
  simp only [input1930_eq, input1921_eq]
  kernel_rfl

theorem output1931_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1931 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_163 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1931_def]
  simp only [output1930_eq, output1921_eq]
  kernel_rfl

theorem input1932_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1932 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_283 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1932_def]
  simp only [input1931_eq, input1614_eq]
  kernel_rfl

theorem output1932_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1932 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_164 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1932_def]
  simp only [output1931_eq, output1614_eq]
  kernel_rfl

theorem input1933_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1933 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_285 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1933_def]
  simp only [input1932_eq, input1613_eq]
  kernel_rfl

theorem output1933_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1933 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_166 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1933_def]
  simp only [output1932_eq, output1613_eq]
  kernel_rfl

theorem input1934_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1934 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_287 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1934_def]
  simp only [input1933_eq, input1612_eq]
  kernel_rfl

theorem output1934_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1934 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_168 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1934_def]
  simp only [output1933_eq, output1612_eq]
  kernel_rfl

theorem input1935_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1935 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_433 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1935_def]
  simp only [input1934_eq, input1611_eq]
  kernel_rfl

theorem output1935_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1935 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_247 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1935_def]
  simp only [output1934_eq, output1611_eq]
  kernel_rfl

theorem input1936_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1936 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_434 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1936_def]
  simp only [input1935_eq, input1432_eq]
  kernel_rfl

theorem output1936_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1936 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_248 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1936_def]
  simp only [output1935_eq, output1432_eq]
  kernel_rfl

theorem input1937_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1937 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_436 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1937_def]
  simp only [input1936_eq, input1431_eq]
  kernel_rfl

theorem output1937_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1937 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_250 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1937_def]
  simp only [output1936_eq, output1431_eq]
  kernel_rfl

theorem input1938_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1938 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_438 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1938_def]
  simp only [input1937_eq, input1430_eq]
  kernel_rfl

theorem output1938_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1938 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_252 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1938_def]
  simp only [output1937_eq, output1430_eq]
  kernel_rfl

theorem input1939_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1939 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_802 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1939_def]
  simp only [input1938_eq, input1429_eq]
  kernel_rfl

theorem output1939_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1939 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_465 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1939_def]
  simp only [output1938_eq, output1429_eq]
  kernel_rfl

theorem input1940_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1940 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_803 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1940_def]
  simp only [input1939_eq, input990_eq]
  kernel_rfl

theorem output1940_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1940 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_466 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1940_def]
  simp only [output1939_eq, output990_eq]
  kernel_rfl

theorem input1941_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1941 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_804 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1941_def]
  simp only [input1940_eq, input989_eq]
  kernel_rfl

theorem output1941_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1941 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_467 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1941_def]
  simp only [output1940_eq, output989_eq]
  kernel_rfl

theorem input1942_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1942 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1016 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1942_def]
  simp only [input1941_eq, input988_eq]
  kernel_rfl

theorem output1942_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1942 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_600 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1942_def]
  simp only [output1941_eq, output988_eq]
  kernel_rfl

theorem input1943_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1943 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1017 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1943_def]
  simp only [input1942_eq, input744_eq]
  kernel_rfl

theorem output1943_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1943 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_601 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1943_def]
  simp only [output1942_eq, output744_eq]
  kernel_rfl

theorem input1944_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1944 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1018 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1944_def]
  simp only [input1943_eq, input743_eq]
  kernel_rfl

theorem output1944_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1944 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_602 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1944_def]
  simp only [output1943_eq, output743_eq]
  kernel_rfl

theorem input1945_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1945 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1111 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1945_def]
  simp only [input1944_eq, input742_eq]
  kernel_rfl

theorem output1945_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1945 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_658 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1945_def]
  simp only [output1944_eq, output742_eq]
  kernel_rfl

theorem input1946_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1946 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1112 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1946_def]
  simp only [input1945_eq, input636_eq]
  kernel_rfl

theorem output1946_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1946 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_659 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1946_def]
  simp only [output1945_eq, output636_eq]
  kernel_rfl

theorem input1947_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1947 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1125 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1947_def]
  simp only [input1946_eq, input635_eq]
  kernel_rfl

theorem output1947_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1947 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_661 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1947_def]
  simp only [output1946_eq, output635_eq]
  kernel_rfl

theorem input1948_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1948 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1139 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1948_def]
  kernel_rfl

theorem input1949_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1949 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1137 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1949_def]
  kernel_rfl

theorem input1950_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1950 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1135 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1950_def]
  kernel_rfl

theorem input1951_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1951 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1133 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1951_def]
  kernel_rfl

theorem input1952_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1952 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1131 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1952_def]
  kernel_rfl

theorem input1953_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1953 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1953_def]
  kernel_rfl

theorem input1954_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1954 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1132 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1954_def]
  simp only [input1953_eq, input1952_eq]
  kernel_rfl

theorem input1955_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1955 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1134 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1955_def]
  simp only [input1954_eq, input1951_eq]
  kernel_rfl

theorem input1956_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1956 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1136 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1956_def]
  simp only [input1955_eq, input1950_eq]
  kernel_rfl

theorem input1957_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1957 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1138 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1957_def]
  simp only [input1956_eq, input1949_eq]
  kernel_rfl

theorem input1958_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1958 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1140 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1958_def]
  simp only [input1957_eq, input1948_eq]
  kernel_rfl

theorem input1959_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1959 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1130 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1959_def]
  kernel_rfl

theorem output1959_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1959 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_662 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1959_def]
  kernel_rfl

theorem input1960_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1960 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1141 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1960_def]
  simp only [input1959_eq, input1958_eq]
  kernel_rfl

theorem output1960_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1960 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_662 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1960_def]
  simp only [output1959_eq]

theorem input1961_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1961 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1128 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1961_def]
  kernel_rfl

theorem input1962_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1962 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1962_def]
  kernel_rfl

theorem output1962_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1962 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1962_def]
  kernel_rfl

theorem input1963_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1963 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1126 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1963_def]
  kernel_rfl

theorem input1964_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1964 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1127 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1964_def]
  simp only [input1963_eq, input1962_eq]
  kernel_rfl

theorem output1964_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1964 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1964_def]
  simp only [output1962_eq]

theorem input1965_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1965 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1129 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1965_def]
  simp only [input1964_eq, input1961_eq]
  kernel_rfl

theorem output1965_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1965 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1965_def]
  simp only [output1964_eq]

theorem input1966_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1966 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1142 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1966_def]
  simp only [input1965_eq, input1960_eq]
  kernel_rfl

theorem output1966_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1966 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_663 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1966_def]
  simp only [output1965_eq, output1960_eq]
  kernel_rfl

theorem input1967_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1967 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1143 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1967_def]
  simp only [input1947_eq, input1966_eq]
  kernel_rfl

theorem output1967_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1967 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_664 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1967_def]
  simp only [output1947_eq, output1966_eq]
  kernel_rfl

theorem input1968_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1968 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_10 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1968_def]
  kernel_rfl

theorem output1968_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1968 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_10 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1968_def]
  kernel_rfl

theorem input1969_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1969 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_7 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1969_def]
  kernel_rfl

theorem output1969_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1969 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_7 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1969_def]
  kernel_rfl

theorem input1970_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1970 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_4 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1970_def]
  kernel_rfl

theorem output1970_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1970 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_4 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1970_def]
  kernel_rfl

theorem input1971_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1971 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_3 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1971_def]
  kernel_rfl

theorem output1971_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1971 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_3 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1971_def]
  kernel_rfl

theorem input1972_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1972 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_5 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1972_def]
  simp only [input1971_eq, input1970_eq]
  kernel_rfl

theorem output1972_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1972 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_5 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1972_def]
  simp only [output1971_eq, output1970_eq]
  kernel_rfl

theorem input1973_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1973 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_2 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1973_def]
  kernel_rfl

theorem output1973_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1973 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_2 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1973_def]
  kernel_rfl

theorem input1974_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1974 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_6 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1974_def]
  simp only [input1973_eq, input1972_eq]
  kernel_rfl

theorem output1974_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1974 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_6 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1974_def]
  simp only [output1973_eq, output1972_eq]
  kernel_rfl

theorem input1975_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1975 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_8 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1975_def]
  simp only [input1974_eq, input1969_eq]
  kernel_rfl

theorem output1975_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1975 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_8 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1975_def]
  simp only [output1974_eq, output1969_eq]
  kernel_rfl

theorem input1976_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1976 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1976_def]
  kernel_rfl

theorem output1976_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1976 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1976_def]
  kernel_rfl

theorem input1977_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1977 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_9 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1977_def]
  simp only [input1976_eq, input1975_eq]
  kernel_rfl

theorem output1977_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1977 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_9 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1977_def]
  simp only [output1976_eq, output1975_eq]
  kernel_rfl

theorem input1978_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1978 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_11 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1978_def]
  simp only [input1977_eq, input1968_eq]
  kernel_rfl

theorem output1978_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1978 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_11 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1978_def]
  simp only [output1977_eq, output1968_eq]
  kernel_rfl

theorem input1979_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1979 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1144 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1979_def]
  simp only [input1978_eq, input1967_eq]
  kernel_rfl

theorem output1979_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1979 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_665 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1979_def]
  simp only [output1978_eq, output1967_eq]
  kernel_rfl

theorem input1980_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1980 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1145 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1980_def]
  simp only [input1979_eq, input622_eq]
  kernel_rfl

theorem output1980_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1980 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_666 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1980_def]
  simp only [output1979_eq, output622_eq]
  kernel_rfl

theorem input1981_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1981 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1146 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1981_def]
  simp only [input1980_eq, input621_eq]
  kernel_rfl

theorem output1981_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1981 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_667 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1981_def]
  simp only [output1980_eq, output621_eq]
  kernel_rfl

theorem input1982_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1982 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1580 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1982_def]
  simp only [input1981_eq, input620_eq]
  kernel_rfl

theorem output1982_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1982 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_958 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1982_def]
  simp only [output1981_eq, output620_eq]
  kernel_rfl

theorem input1983_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1983 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1581 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1983_def]
  simp only [input1982_eq, input124_eq]
  kernel_rfl

theorem output1983_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1983 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_959 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1983_def]
  simp only [output1982_eq, output124_eq]
  kernel_rfl

theorem input1984_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1984 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1582 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1984_def]
  simp only [input1983_eq, input123_eq]
  kernel_rfl

theorem output1984_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1984 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_960 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1984_def]
  simp only [output1983_eq, output123_eq]
  kernel_rfl

theorem input1985_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1985 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1687 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1985_def]
  simp only [input1984_eq, input122_eq]
  kernel_rfl

theorem output1985_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1985 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1016 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1985_def]
  simp only [output1984_eq, output122_eq]
  kernel_rfl

theorem input1986_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1986 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1688 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1986_def]
  simp only [input1985_eq, input4_eq]
  kernel_rfl

theorem output1986_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1986 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1017 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1986_def]
  simp only [output1985_eq, output4_eq]
  kernel_rfl

theorem input1987_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1987 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1690 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1987_def]
  simp only [input1986_eq, input3_eq]
  kernel_rfl

theorem output1987_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1987 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1019 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1987_def]
  simp only [output1986_eq, output3_eq]
  kernel_rfl

theorem input1988_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1988 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1693 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1988_def]
  simp only [input1987_eq, input2_eq]
  kernel_rfl

theorem output1988_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1988 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1022 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1988_def]
  simp only [output1987_eq, output2_eq]
  kernel_rfl

theorem input1989_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1989 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_0 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1989_def]
  kernel_rfl

theorem output1989_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1989 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_0 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1989_def]
  kernel_rfl

theorem input1990_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1990 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1694 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1990_def]
  simp only [input1989_eq, input1988_eq]
  kernel_rfl

theorem output1990_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1990 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1023 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1990_def]
  simp only [output1989_eq, output1988_eq]
  kernel_rfl

#print axioms output1990_eq
end InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
