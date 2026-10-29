import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages646.Parallel.Data.Chunk011
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages646.Parallel
theorem node2816_cond_eq
    (child1606 : Flapjack.WordAlloc.removeDeadStructural input1606 value891 value1 value2 = (output1606, value894, value1))
    (child2815 : Flapjack.WordAlloc.removeDeadStructural input2815 value894 value1 value2 = (output2815, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2816 value891 value1 value2 = (output2816, value1482, value1) := by
  rw [input2816_def, output2816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1606]
  try dsimp only
  rw [child2815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1606_skip, output2815_skip]
  kernel_rfl

theorem node2817_cond_eq
    (child1601 : Flapjack.WordAlloc.removeDeadStructural input1601 value890 value1 value2 = (output1601, value891, value1))
    (child2816 : Flapjack.WordAlloc.removeDeadStructural input2816 value891 value1 value2 = (output2816, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2817 value890 value1 value2 = (output2817, value1482, value1) := by
  rw [input2817_def, output2817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1601]
  try dsimp only
  rw [child2816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1601_skip, output2816_skip]
  kernel_rfl

theorem node2818_cond_eq
    (child1600 : Flapjack.WordAlloc.removeDeadStructural input1600 value885 value1 value2 = (output1600, value890, value1))
    (child2817 : Flapjack.WordAlloc.removeDeadStructural input2817 value890 value1 value2 = (output2817, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2818 value885 value1 value2 = (output2818, value1482, value1) := by
  rw [input2818_def, output2818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1600]
  try dsimp only
  rw [child2817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1600_skip, output2817_skip]
  kernel_rfl

theorem node2819_cond_eq
    (child1591 : Flapjack.WordAlloc.removeDeadStructural input1591 value884 value1 value2 = (output1591, value885, value1))
    (child2818 : Flapjack.WordAlloc.removeDeadStructural input2818 value885 value1 value2 = (output2818, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2819 value884 value1 value2 = (output2819, value1482, value1) := by
  rw [input2819_def, output2819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1591]
  try dsimp only
  rw [child2818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1591_skip, output2818_skip]
  kernel_rfl

theorem node2820_cond_eq
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value880 value1 value2 = (output1590, value884, value1))
    (child2819 : Flapjack.WordAlloc.removeDeadStructural input2819 value884 value1 value2 = (output2819, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2820 value880 value1 value2 = (output2820, value1482, value1) := by
  rw [input2820_def, output2820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1590]
  try dsimp only
  rw [child2819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1590_skip, output2819_skip]
  kernel_rfl

theorem node2821_cond_eq
    (child1583 : Flapjack.WordAlloc.removeDeadStructural input1583 value879 value1 value2 = (output1583, value880, value1))
    (child2820 : Flapjack.WordAlloc.removeDeadStructural input2820 value880 value1 value2 = (output2820, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2821 value879 value1 value2 = (output2821, value1482, value1) := by
  rw [input2821_def, output2821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1583]
  try dsimp only
  rw [child2820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1583_skip, output2820_skip]
  kernel_rfl

theorem node2822_cond_eq
    (child1582 : Flapjack.WordAlloc.removeDeadStructural input1582 value878 value1 value2 = (output1582, value879, value1))
    (child2821 : Flapjack.WordAlloc.removeDeadStructural input2821 value879 value1 value2 = (output2821, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2822 value878 value1 value2 = (output2822, value1482, value1) := by
  rw [input2822_def, output2822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1582]
  try dsimp only
  rw [child2821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1582_skip, output2821_skip]
  kernel_rfl

theorem node2823_cond_eq
    (child1581 : Flapjack.WordAlloc.removeDeadStructural input1581 value877 value1 value2 = (output1581, value878, value1))
    (child2822 : Flapjack.WordAlloc.removeDeadStructural input2822 value878 value1 value2 = (output2822, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2823 value877 value1 value2 = (output2823, value1482, value1) := by
  rw [input2823_def, output2823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1581]
  try dsimp only
  rw [child2822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1581_skip, output2822_skip]
  kernel_rfl

theorem node2824_cond_eq
    (child1580 : Flapjack.WordAlloc.removeDeadStructural input1580 value874 value1 value2 = (output1580, value877, value1))
    (child2823 : Flapjack.WordAlloc.removeDeadStructural input2823 value877 value1 value2 = (output2823, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2824 value874 value1 value2 = (output2824, value1482, value1) := by
  rw [input2824_def, output2824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1580]
  try dsimp only
  rw [child2823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1580_skip, output2823_skip]
  kernel_rfl

theorem node2825_cond_eq
    (child1575 : Flapjack.WordAlloc.removeDeadStructural input1575 value873 value1 value2 = (output1575, value874, value1))
    (child2824 : Flapjack.WordAlloc.removeDeadStructural input2824 value874 value1 value2 = (output2824, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2825 value873 value1 value2 = (output2825, value1482, value1) := by
  rw [input2825_def, output2825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1575]
  try dsimp only
  rw [child2824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1575_skip, output2824_skip]
  kernel_rfl

theorem node2826_cond_eq
    (child1574 : Flapjack.WordAlloc.removeDeadStructural input1574 value868 value1 value2 = (output1574, value873, value1))
    (child2825 : Flapjack.WordAlloc.removeDeadStructural input2825 value873 value1 value2 = (output2825, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2826 value868 value1 value2 = (output2826, value1482, value1) := by
  rw [input2826_def, output2826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1574]
  try dsimp only
  rw [child2825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1574_skip, output2825_skip]
  kernel_rfl

theorem node2827_cond_eq
    (child1565 : Flapjack.WordAlloc.removeDeadStructural input1565 value867 value1 value2 = (output1565, value868, value1))
    (child2826 : Flapjack.WordAlloc.removeDeadStructural input2826 value868 value1 value2 = (output2826, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2827 value867 value1 value2 = (output2827, value1482, value1) := by
  rw [input2827_def, output2827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1565]
  try dsimp only
  rw [child2826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1565_skip, output2826_skip]
  kernel_rfl

theorem node2828_cond_eq
    (child1564 : Flapjack.WordAlloc.removeDeadStructural input1564 value863 value1 value2 = (output1564, value867, value1))
    (child2827 : Flapjack.WordAlloc.removeDeadStructural input2827 value867 value1 value2 = (output2827, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2828 value863 value1 value2 = (output2828, value1482, value1) := by
  rw [input2828_def, output2828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1564]
  try dsimp only
  rw [child2827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1564_skip, output2827_skip]
  kernel_rfl

theorem node2829_cond_eq
    (child1557 : Flapjack.WordAlloc.removeDeadStructural input1557 value862 value1 value2 = (output1557, value863, value1))
    (child2828 : Flapjack.WordAlloc.removeDeadStructural input2828 value863 value1 value2 = (output2828, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2829 value862 value1 value2 = (output2829, value1482, value1) := by
  rw [input2829_def, output2829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1557]
  try dsimp only
  rw [child2828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1557_skip, output2828_skip]
  kernel_rfl

theorem node2830_cond_eq
    (child1556 : Flapjack.WordAlloc.removeDeadStructural input1556 value861 value1 value2 = (output1556, value862, value1))
    (child2829 : Flapjack.WordAlloc.removeDeadStructural input2829 value862 value1 value2 = (output2829, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2830 value861 value1 value2 = (output2830, value1482, value1) := by
  rw [input2830_def, output2830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1556]
  try dsimp only
  rw [child2829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1556_skip, output2829_skip]
  kernel_rfl

theorem node2831_cond_eq
    (child1555 : Flapjack.WordAlloc.removeDeadStructural input1555 value860 value1 value2 = (output1555, value861, value1))
    (child2830 : Flapjack.WordAlloc.removeDeadStructural input2830 value861 value1 value2 = (output2830, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2831 value860 value1 value2 = (output2831, value1482, value1) := by
  rw [input2831_def, output2831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1555]
  try dsimp only
  rw [child2830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1555_skip, output2830_skip]
  kernel_rfl

theorem node2832_cond_eq
    (child1554 : Flapjack.WordAlloc.removeDeadStructural input1554 value857 value1 value2 = (output1554, value860, value1))
    (child2831 : Flapjack.WordAlloc.removeDeadStructural input2831 value860 value1 value2 = (output2831, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2832 value857 value1 value2 = (output2832, value1482, value1) := by
  rw [input2832_def, output2832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1554]
  try dsimp only
  rw [child2831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1554_skip, output2831_skip]
  kernel_rfl

theorem node2833_cond_eq
    (child1549 : Flapjack.WordAlloc.removeDeadStructural input1549 value856 value1 value2 = (output1549, value857, value1))
    (child2832 : Flapjack.WordAlloc.removeDeadStructural input2832 value857 value1 value2 = (output2832, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2833 value856 value1 value2 = (output2833, value1482, value1) := by
  rw [input2833_def, output2833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1549]
  try dsimp only
  rw [child2832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1549_skip, output2832_skip]
  kernel_rfl

theorem node2834_cond_eq
    (child1548 : Flapjack.WordAlloc.removeDeadStructural input1548 value851 value1 value2 = (output1548, value856, value1))
    (child2833 : Flapjack.WordAlloc.removeDeadStructural input2833 value856 value1 value2 = (output2833, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2834 value851 value1 value2 = (output2834, value1482, value1) := by
  rw [input2834_def, output2834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1548]
  try dsimp only
  rw [child2833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1548_skip, output2833_skip]
  kernel_rfl

theorem node2835_cond_eq
    (child1539 : Flapjack.WordAlloc.removeDeadStructural input1539 value850 value1 value2 = (output1539, value851, value1))
    (child2834 : Flapjack.WordAlloc.removeDeadStructural input2834 value851 value1 value2 = (output2834, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2835 value850 value1 value2 = (output2835, value1482, value1) := by
  rw [input2835_def, output2835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1539]
  try dsimp only
  rw [child2834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1539_skip, output2834_skip]
  kernel_rfl

theorem node2836_cond_eq
    (child1538 : Flapjack.WordAlloc.removeDeadStructural input1538 value846 value1 value2 = (output1538, value850, value1))
    (child2835 : Flapjack.WordAlloc.removeDeadStructural input2835 value850 value1 value2 = (output2835, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2836 value846 value1 value2 = (output2836, value1482, value1) := by
  rw [input2836_def, output2836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1538]
  try dsimp only
  rw [child2835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1538_skip, output2835_skip]
  kernel_rfl

theorem node2837_cond_eq
    (child1531 : Flapjack.WordAlloc.removeDeadStructural input1531 value845 value1 value2 = (output1531, value846, value1))
    (child2836 : Flapjack.WordAlloc.removeDeadStructural input2836 value846 value1 value2 = (output2836, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2837 value845 value1 value2 = (output2837, value1482, value1) := by
  rw [input2837_def, output2837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1531]
  try dsimp only
  rw [child2836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1531_skip, output2836_skip]
  kernel_rfl

theorem node2838_cond_eq
    (child1530 : Flapjack.WordAlloc.removeDeadStructural input1530 value844 value1 value2 = (output1530, value845, value1))
    (child2837 : Flapjack.WordAlloc.removeDeadStructural input2837 value845 value1 value2 = (output2837, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2838 value844 value1 value2 = (output2838, value1482, value1) := by
  rw [input2838_def, output2838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1530]
  try dsimp only
  rw [child2837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1530_skip, output2837_skip]
  kernel_rfl

theorem node2839_cond_eq
    (child1529 : Flapjack.WordAlloc.removeDeadStructural input1529 value843 value1 value2 = (output1529, value844, value1))
    (child2838 : Flapjack.WordAlloc.removeDeadStructural input2838 value844 value1 value2 = (output2838, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2839 value843 value1 value2 = (output2839, value1482, value1) := by
  rw [input2839_def, output2839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1529]
  try dsimp only
  rw [child2838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1529_skip, output2838_skip]
  kernel_rfl

theorem node2840_cond_eq
    (child1528 : Flapjack.WordAlloc.removeDeadStructural input1528 value840 value1 value2 = (output1528, value843, value1))
    (child2839 : Flapjack.WordAlloc.removeDeadStructural input2839 value843 value1 value2 = (output2839, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2840 value840 value1 value2 = (output2840, value1482, value1) := by
  rw [input2840_def, output2840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1528]
  try dsimp only
  rw [child2839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1528_skip, output2839_skip]
  kernel_rfl

theorem node2841_cond_eq
    (child1523 : Flapjack.WordAlloc.removeDeadStructural input1523 value839 value1 value2 = (output1523, value840, value1))
    (child2840 : Flapjack.WordAlloc.removeDeadStructural input2840 value840 value1 value2 = (output2840, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2841 value839 value1 value2 = (output2841, value1482, value1) := by
  rw [input2841_def, output2841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1523]
  try dsimp only
  rw [child2840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1523_skip, output2840_skip]
  kernel_rfl

theorem node2842_cond_eq
    (child1522 : Flapjack.WordAlloc.removeDeadStructural input1522 value834 value1 value2 = (output1522, value839, value1))
    (child2841 : Flapjack.WordAlloc.removeDeadStructural input2841 value839 value1 value2 = (output2841, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2842 value834 value1 value2 = (output2842, value1482, value1) := by
  rw [input2842_def, output2842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1522]
  try dsimp only
  rw [child2841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1522_skip, output2841_skip]
  kernel_rfl

theorem node2843_cond_eq
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value833 value1 value2 = (output1513, value834, value1))
    (child2842 : Flapjack.WordAlloc.removeDeadStructural input2842 value834 value1 value2 = (output2842, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2843 value833 value1 value2 = (output2843, value1482, value1) := by
  rw [input2843_def, output2843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1513]
  try dsimp only
  rw [child2842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1513_skip, output2842_skip]
  kernel_rfl

theorem node2844_cond_eq
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value829 value1 value2 = (output1512, value833, value1))
    (child2843 : Flapjack.WordAlloc.removeDeadStructural input2843 value833 value1 value2 = (output2843, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2844 value829 value1 value2 = (output2844, value1482, value1) := by
  rw [input2844_def, output2844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1512]
  try dsimp only
  rw [child2843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1512_skip, output2843_skip]
  kernel_rfl

theorem node2845_cond_eq
    (child1505 : Flapjack.WordAlloc.removeDeadStructural input1505 value828 value1 value2 = (output1505, value829, value1))
    (child2844 : Flapjack.WordAlloc.removeDeadStructural input2844 value829 value1 value2 = (output2844, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2845 value828 value1 value2 = (output2845, value1482, value1) := by
  rw [input2845_def, output2845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1505]
  try dsimp only
  rw [child2844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1505_skip, output2844_skip]
  kernel_rfl

theorem node2846_cond_eq
    (child1504 : Flapjack.WordAlloc.removeDeadStructural input1504 value827 value1 value2 = (output1504, value828, value1))
    (child2845 : Flapjack.WordAlloc.removeDeadStructural input2845 value828 value1 value2 = (output2845, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2846 value827 value1 value2 = (output2846, value1482, value1) := by
  rw [input2846_def, output2846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1504]
  try dsimp only
  rw [child2845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1504_skip, output2845_skip]
  kernel_rfl

theorem node2847_cond_eq
    (child1503 : Flapjack.WordAlloc.removeDeadStructural input1503 value826 value1 value2 = (output1503, value827, value1))
    (child2846 : Flapjack.WordAlloc.removeDeadStructural input2846 value827 value1 value2 = (output2846, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2847 value826 value1 value2 = (output2847, value1482, value1) := by
  rw [input2847_def, output2847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1503]
  try dsimp only
  rw [child2846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1503_skip, output2846_skip]
  kernel_rfl

theorem node2848_cond_eq
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value823 value1 value2 = (output1502, value826, value1))
    (child2847 : Flapjack.WordAlloc.removeDeadStructural input2847 value826 value1 value2 = (output2847, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2848 value823 value1 value2 = (output2848, value1482, value1) := by
  rw [input2848_def, output2848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1502]
  try dsimp only
  rw [child2847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1502_skip, output2847_skip]
  kernel_rfl

theorem node2849_cond_eq
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value822 value1 value2 = (output1497, value823, value1))
    (child2848 : Flapjack.WordAlloc.removeDeadStructural input2848 value823 value1 value2 = (output2848, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2849 value822 value1 value2 = (output2849, value1482, value1) := by
  rw [input2849_def, output2849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1497]
  try dsimp only
  rw [child2848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1497_skip, output2848_skip]
  kernel_rfl

theorem node2850_cond_eq
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value817 value1 value2 = (output1496, value822, value1))
    (child2849 : Flapjack.WordAlloc.removeDeadStructural input2849 value822 value1 value2 = (output2849, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2850 value817 value1 value2 = (output2850, value1482, value1) := by
  rw [input2850_def, output2850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1496]
  try dsimp only
  rw [child2849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1496_skip, output2849_skip]
  kernel_rfl

theorem node2851_cond_eq
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value816 value1 value2 = (output1487, value817, value1))
    (child2850 : Flapjack.WordAlloc.removeDeadStructural input2850 value817 value1 value2 = (output2850, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2851 value816 value1 value2 = (output2851, value1482, value1) := by
  rw [input2851_def, output2851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1487]
  try dsimp only
  rw [child2850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1487_skip, output2850_skip]
  kernel_rfl

theorem node2852_cond_eq
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value812 value1 value2 = (output1486, value816, value1))
    (child2851 : Flapjack.WordAlloc.removeDeadStructural input2851 value816 value1 value2 = (output2851, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2852 value812 value1 value2 = (output2852, value1482, value1) := by
  rw [input2852_def, output2852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1486]
  try dsimp only
  rw [child2851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1486_skip, output2851_skip]
  kernel_rfl

theorem node2853_cond_eq
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value811 value1 value2 = (output1479, value812, value1))
    (child2852 : Flapjack.WordAlloc.removeDeadStructural input2852 value812 value1 value2 = (output2852, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2853 value811 value1 value2 = (output2853, value1482, value1) := by
  rw [input2853_def, output2853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1479]
  try dsimp only
  rw [child2852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1479_skip, output2852_skip]
  kernel_rfl

theorem node2854_cond_eq
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value810 value1 value2 = (output1478, value811, value1))
    (child2853 : Flapjack.WordAlloc.removeDeadStructural input2853 value811 value1 value2 = (output2853, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2854 value810 value1 value2 = (output2854, value1482, value1) := by
  rw [input2854_def, output2854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1478]
  try dsimp only
  rw [child2853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1478_skip, output2853_skip]
  kernel_rfl

theorem node2855_cond_eq
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value809 value1 value2 = (output1477, value810, value1))
    (child2854 : Flapjack.WordAlloc.removeDeadStructural input2854 value810 value1 value2 = (output2854, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2855 value809 value1 value2 = (output2855, value1482, value1) := by
  rw [input2855_def, output2855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1477]
  try dsimp only
  rw [child2854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1477_skip, output2854_skip]
  kernel_rfl

theorem node2856_cond_eq
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value806 value1 value2 = (output1476, value809, value1))
    (child2855 : Flapjack.WordAlloc.removeDeadStructural input2855 value809 value1 value2 = (output2855, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2856 value806 value1 value2 = (output2856, value1482, value1) := by
  rw [input2856_def, output2856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1476]
  try dsimp only
  rw [child2855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1476_skip, output2855_skip]
  kernel_rfl

theorem node2857_cond_eq
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value805 value1 value2 = (output1471, value806, value1))
    (child2856 : Flapjack.WordAlloc.removeDeadStructural input2856 value806 value1 value2 = (output2856, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2857 value805 value1 value2 = (output2857, value1482, value1) := by
  rw [input2857_def, output2857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1471]
  try dsimp only
  rw [child2856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1471_skip, output2856_skip]
  kernel_rfl

theorem node2858_cond_eq
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value800 value1 value2 = (output1470, value805, value1))
    (child2857 : Flapjack.WordAlloc.removeDeadStructural input2857 value805 value1 value2 = (output2857, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2858 value800 value1 value2 = (output2858, value1482, value1) := by
  rw [input2858_def, output2858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1470]
  try dsimp only
  rw [child2857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1470_skip, output2857_skip]
  kernel_rfl

theorem node2859_cond_eq
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value799 value1 value2 = (output1461, value800, value1))
    (child2858 : Flapjack.WordAlloc.removeDeadStructural input2858 value800 value1 value2 = (output2858, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2859 value799 value1 value2 = (output2859, value1482, value1) := by
  rw [input2859_def, output2859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1461]
  try dsimp only
  rw [child2858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1461_skip, output2858_skip]
  kernel_rfl

theorem node2860_cond_eq
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value795 value1 value2 = (output1460, value799, value1))
    (child2859 : Flapjack.WordAlloc.removeDeadStructural input2859 value799 value1 value2 = (output2859, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2860 value795 value1 value2 = (output2860, value1482, value1) := by
  rw [input2860_def, output2860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1460]
  try dsimp only
  rw [child2859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1460_skip, output2859_skip]
  kernel_rfl

theorem node2861_cond_eq
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value794 value1 value2 = (output1453, value795, value1))
    (child2860 : Flapjack.WordAlloc.removeDeadStructural input2860 value795 value1 value2 = (output2860, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2861 value794 value1 value2 = (output2861, value1482, value1) := by
  rw [input2861_def, output2861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1453]
  try dsimp only
  rw [child2860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1453_skip, output2860_skip]
  kernel_rfl

theorem node2862_cond_eq
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value791 value1 value2 = (output1452, value794, value1))
    (child2861 : Flapjack.WordAlloc.removeDeadStructural input2861 value794 value1 value2 = (output2861, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2862 value791 value1 value2 = (output2862, value1482, value1) := by
  rw [input2862_def, output2862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1452]
  try dsimp only
  rw [child2861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1452_skip, output2861_skip]
  kernel_rfl

theorem node2863_cond_eq
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value788 value1 value2 = (output1447, value791, value1))
    (child2862 : Flapjack.WordAlloc.removeDeadStructural input2862 value791 value1 value2 = (output2862, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2863 value788 value1 value2 = (output2863, value1482, value1) := by
  rw [input2863_def, output2863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1447]
  try dsimp only
  rw [child2862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1447_skip, output2862_skip]
  kernel_rfl

theorem node2864_cond_eq
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value784 value1 value2 = (output1442, value788, value1))
    (child2863 : Flapjack.WordAlloc.removeDeadStructural input2863 value788 value1 value2 = (output2863, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2864 value784 value1 value2 = (output2864, value1482, value1) := by
  rw [input2864_def, output2864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1442]
  try dsimp only
  rw [child2863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1442_skip, output2863_skip]
  kernel_rfl

theorem node2865_cond_eq
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value784 value1 value2 = (output1435, value784, value1))
    (child2864 : Flapjack.WordAlloc.removeDeadStructural input2864 value784 value1 value2 = (output2864, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2865 value784 value1 value2 = (output2865, value1482, value1) := by
  rw [input2865_def, output2865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1435]
  try dsimp only
  rw [child2864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1435_skip, output2864_skip]
  kernel_rfl

theorem node2866_cond_eq
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value784 value1 value2 = (output1434, value784, value1))
    (child2865 : Flapjack.WordAlloc.removeDeadStructural input2865 value784 value1 value2 = (output2865, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2866 value784 value1 value2 = (output2866, value1482, value1) := by
  rw [input2866_def, output2866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1434]
  try dsimp only
  rw [child2865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1434_skip, output2865_skip]
  kernel_rfl

theorem node2867_cond_eq
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value783 value1 value2 = (output1433, value784, value1))
    (child2866 : Flapjack.WordAlloc.removeDeadStructural input2866 value784 value1 value2 = (output2866, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2867 value783 value1 value2 = (output2867, value1482, value1) := by
  rw [input2867_def, output2867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1433]
  try dsimp only
  rw [child2866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1433_skip, output2866_skip]
  kernel_rfl

theorem node2868_cond_eq
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value782 value1 value2 = (output1432, value783, value1))
    (child2867 : Flapjack.WordAlloc.removeDeadStructural input2867 value783 value1 value2 = (output2867, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2868 value782 value1 value2 = (output2868, value1482, value1) := by
  rw [input2868_def, output2868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1432]
  try dsimp only
  rw [child2867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1432_skip, output2867_skip]
  kernel_rfl

theorem node2869_cond_eq
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value779 value1 value2 = (output1431, value782, value1))
    (child2868 : Flapjack.WordAlloc.removeDeadStructural input2868 value782 value1 value2 = (output2868, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2869 value779 value1 value2 = (output2869, value1482, value1) := by
  rw [input2869_def, output2869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1431]
  try dsimp only
  rw [child2868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1431_skip, output2868_skip]
  kernel_rfl

theorem node2870_cond_eq
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value778 value1 value2 = (output1426, value779, value1))
    (child2869 : Flapjack.WordAlloc.removeDeadStructural input2869 value779 value1 value2 = (output2869, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2870 value778 value1 value2 = (output2870, value1482, value1) := by
  rw [input2870_def, output2870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1426]
  try dsimp only
  rw [child2869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1426_skip, output2869_skip]
  kernel_rfl

theorem node2871_cond_eq
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value775 value1 value2 = (output1425, value778, value1))
    (child2870 : Flapjack.WordAlloc.removeDeadStructural input2870 value778 value1 value2 = (output2870, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2871 value775 value1 value2 = (output2871, value1482, value1) := by
  rw [input2871_def, output2871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1425]
  try dsimp only
  rw [child2870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1425_skip, output2870_skip]
  kernel_rfl

theorem node2872_cond_eq
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value774 value1 value2 = (output1420, value775, value1))
    (child2871 : Flapjack.WordAlloc.removeDeadStructural input2871 value775 value1 value2 = (output2871, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2872 value774 value1 value2 = (output2872, value1482, value1) := by
  rw [input2872_def, output2872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1420]
  try dsimp only
  rw [child2871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1420_skip, output2871_skip]
  kernel_rfl

theorem node2873_cond_eq
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value772 value1 value2 = (output1419, value774, value1))
    (child2872 : Flapjack.WordAlloc.removeDeadStructural input2872 value774 value1 value2 = (output2872, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2873 value772 value1 value2 = (output2873, value1482, value1) := by
  rw [input2873_def, output2873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1419]
  try dsimp only
  rw [child2872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1419_skip, output2872_skip]
  kernel_rfl

theorem node2874_cond_eq
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value771 value1 value2 = (output1416, value772, value1))
    (child2873 : Flapjack.WordAlloc.removeDeadStructural input2873 value772 value1 value2 = (output2873, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2874 value771 value1 value2 = (output2874, value1482, value1) := by
  rw [input2874_def, output2874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1416]
  try dsimp only
  rw [child2873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1416_skip, output2873_skip]
  kernel_rfl

theorem node2875_cond_eq
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value770 value1 value2 = (output1415, value771, value1))
    (child2874 : Flapjack.WordAlloc.removeDeadStructural input2874 value771 value1 value2 = (output2874, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2875 value770 value1 value2 = (output2875, value1482, value1) := by
  rw [input2875_def, output2875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1415]
  try dsimp only
  rw [child2874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1415_skip, output2874_skip]
  kernel_rfl

theorem node2876_cond_eq
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value769 value1 value2 = (output1414, value770, value1))
    (child2875 : Flapjack.WordAlloc.removeDeadStructural input2875 value770 value1 value2 = (output2875, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2876 value769 value1 value2 = (output2876, value1482, value1) := by
  rw [input2876_def, output2876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1414]
  try dsimp only
  rw [child2875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1414_skip, output2875_skip]
  kernel_rfl

theorem node2877_cond_eq
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value766 value1 value2 = (output1413, value769, value1))
    (child2876 : Flapjack.WordAlloc.removeDeadStructural input2876 value769 value1 value2 = (output2876, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2877 value766 value1 value2 = (output2877, value1482, value1) := by
  rw [input2877_def, output2877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1413]
  try dsimp only
  rw [child2876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1413_skip, output2876_skip]
  kernel_rfl

theorem node2878_cond_eq
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value765 value1 value2 = (output1408, value766, value1))
    (child2877 : Flapjack.WordAlloc.removeDeadStructural input2877 value766 value1 value2 = (output2877, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2878 value765 value1 value2 = (output2878, value1482, value1) := by
  rw [input2878_def, output2878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1408]
  try dsimp only
  rw [child2877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1408_skip, output2877_skip]
  kernel_rfl

theorem node2879_cond_eq
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value760 value1 value2 = (output1407, value765, value1))
    (child2878 : Flapjack.WordAlloc.removeDeadStructural input2878 value765 value1 value2 = (output2878, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2879 value760 value1 value2 = (output2879, value1482, value1) := by
  rw [input2879_def, output2879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1407]
  try dsimp only
  rw [child2878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1407_skip, output2878_skip]
  kernel_rfl

theorem node2880_cond_eq
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value759 value1 value2 = (output1398, value760, value1))
    (child2879 : Flapjack.WordAlloc.removeDeadStructural input2879 value760 value1 value2 = (output2879, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2880 value759 value1 value2 = (output2880, value1482, value1) := by
  rw [input2880_def, output2880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1398]
  try dsimp only
  rw [child2879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1398_skip, output2879_skip]
  kernel_rfl

theorem node2881_cond_eq
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value755 value1 value2 = (output1397, value759, value1))
    (child2880 : Flapjack.WordAlloc.removeDeadStructural input2880 value759 value1 value2 = (output2880, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2881 value755 value1 value2 = (output2881, value1482, value1) := by
  rw [input2881_def, output2881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1397]
  try dsimp only
  rw [child2880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1397_skip, output2880_skip]
  kernel_rfl

theorem node2882_cond_eq
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value754 value1 value2 = (output1390, value755, value1))
    (child2881 : Flapjack.WordAlloc.removeDeadStructural input2881 value755 value1 value2 = (output2881, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2882 value754 value1 value2 = (output2882, value1482, value1) := by
  rw [input2882_def, output2882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1390]
  try dsimp only
  rw [child2881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1390_skip, output2881_skip]
  kernel_rfl

theorem node2883_cond_eq
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value753 value1 value2 = (output1389, value754, value1))
    (child2882 : Flapjack.WordAlloc.removeDeadStructural input2882 value754 value1 value2 = (output2882, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2883 value753 value1 value2 = (output2883, value1482, value1) := by
  rw [input2883_def, output2883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1389]
  try dsimp only
  rw [child2882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1389_skip, output2882_skip]
  kernel_rfl

theorem node2884_cond_eq
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value752 value1 value2 = (output1388, value753, value1))
    (child2883 : Flapjack.WordAlloc.removeDeadStructural input2883 value753 value1 value2 = (output2883, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2884 value752 value1 value2 = (output2884, value1482, value1) := by
  rw [input2884_def, output2884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1388]
  try dsimp only
  rw [child2883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1388_skip, output2883_skip]
  kernel_rfl

theorem node2885_cond_eq
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value749 value1 value2 = (output1387, value752, value1))
    (child2884 : Flapjack.WordAlloc.removeDeadStructural input2884 value752 value1 value2 = (output2884, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2885 value749 value1 value2 = (output2885, value1482, value1) := by
  rw [input2885_def, output2885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1387]
  try dsimp only
  rw [child2884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1387_skip, output2884_skip]
  kernel_rfl

theorem node2886_cond_eq
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value748 value1 value2 = (output1382, value749, value1))
    (child2885 : Flapjack.WordAlloc.removeDeadStructural input2885 value749 value1 value2 = (output2885, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2886 value748 value1 value2 = (output2886, value1482, value1) := by
  rw [input2886_def, output2886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1382]
  try dsimp only
  rw [child2885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1382_skip, output2885_skip]
  kernel_rfl

theorem node2887_cond_eq
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value743 value1 value2 = (output1381, value748, value1))
    (child2886 : Flapjack.WordAlloc.removeDeadStructural input2886 value748 value1 value2 = (output2886, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2887 value743 value1 value2 = (output2887, value1482, value1) := by
  rw [input2887_def, output2887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1381]
  try dsimp only
  rw [child2886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1381_skip, output2886_skip]
  kernel_rfl

theorem node2888_cond_eq
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value742 value1 value2 = (output1372, value743, value1))
    (child2887 : Flapjack.WordAlloc.removeDeadStructural input2887 value743 value1 value2 = (output2887, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2888 value742 value1 value2 = (output2888, value1482, value1) := by
  rw [input2888_def, output2888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1372]
  try dsimp only
  rw [child2887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1372_skip, output2887_skip]
  kernel_rfl

theorem node2889_cond_eq
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value738 value1 value2 = (output1371, value742, value1))
    (child2888 : Flapjack.WordAlloc.removeDeadStructural input2888 value742 value1 value2 = (output2888, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2889 value738 value1 value2 = (output2889, value1482, value1) := by
  rw [input2889_def, output2889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1371]
  try dsimp only
  rw [child2888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1371_skip, output2888_skip]
  kernel_rfl

theorem node2890_cond_eq
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value737 value1 value2 = (output1364, value738, value1))
    (child2889 : Flapjack.WordAlloc.removeDeadStructural input2889 value738 value1 value2 = (output2889, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2890 value737 value1 value2 = (output2890, value1482, value1) := by
  rw [input2890_def, output2890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1364]
  try dsimp only
  rw [child2889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1364_skip, output2889_skip]
  kernel_rfl

theorem node2891_cond_eq
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value736 value1 value2 = (output1363, value737, value1))
    (child2890 : Flapjack.WordAlloc.removeDeadStructural input2890 value737 value1 value2 = (output2890, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2891 value736 value1 value2 = (output2891, value1482, value1) := by
  rw [input2891_def, output2891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1363]
  try dsimp only
  rw [child2890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1363_skip, output2890_skip]
  kernel_rfl

theorem node2892_cond_eq
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value735 value1 value2 = (output1362, value736, value1))
    (child2891 : Flapjack.WordAlloc.removeDeadStructural input2891 value736 value1 value2 = (output2891, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2892 value735 value1 value2 = (output2892, value1482, value1) := by
  rw [input2892_def, output2892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1362]
  try dsimp only
  rw [child2891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1362_skip, output2891_skip]
  kernel_rfl

theorem node2893_cond_eq
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value732 value1 value2 = (output1361, value735, value1))
    (child2892 : Flapjack.WordAlloc.removeDeadStructural input2892 value735 value1 value2 = (output2892, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2893 value732 value1 value2 = (output2893, value1482, value1) := by
  rw [input2893_def, output2893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1361]
  try dsimp only
  rw [child2892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1361_skip, output2892_skip]
  kernel_rfl

theorem node2894_cond_eq
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value731 value1 value2 = (output1356, value732, value1))
    (child2893 : Flapjack.WordAlloc.removeDeadStructural input2893 value732 value1 value2 = (output2893, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2894 value731 value1 value2 = (output2894, value1482, value1) := by
  rw [input2894_def, output2894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1356]
  try dsimp only
  rw [child2893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1356_skip, output2893_skip]
  kernel_rfl

theorem node2895_cond_eq
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value726 value1 value2 = (output1355, value731, value1))
    (child2894 : Flapjack.WordAlloc.removeDeadStructural input2894 value731 value1 value2 = (output2894, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2895 value726 value1 value2 = (output2895, value1482, value1) := by
  rw [input2895_def, output2895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1355]
  try dsimp only
  rw [child2894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1355_skip, output2894_skip]
  kernel_rfl

theorem node2896_cond_eq
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value725 value1 value2 = (output1346, value726, value1))
    (child2895 : Flapjack.WordAlloc.removeDeadStructural input2895 value726 value1 value2 = (output2895, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2896 value725 value1 value2 = (output2896, value1482, value1) := by
  rw [input2896_def, output2896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1346]
  try dsimp only
  rw [child2895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1346_skip, output2895_skip]
  kernel_rfl

theorem node2897_cond_eq
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value721 value1 value2 = (output1345, value725, value1))
    (child2896 : Flapjack.WordAlloc.removeDeadStructural input2896 value725 value1 value2 = (output2896, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2897 value721 value1 value2 = (output2897, value1482, value1) := by
  rw [input2897_def, output2897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1345]
  try dsimp only
  rw [child2896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1345_skip, output2896_skip]
  kernel_rfl

theorem node2898_cond_eq
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value720 value1 value2 = (output1338, value721, value1))
    (child2897 : Flapjack.WordAlloc.removeDeadStructural input2897 value721 value1 value2 = (output2897, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2898 value720 value1 value2 = (output2898, value1482, value1) := by
  rw [input2898_def, output2898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1338]
  try dsimp only
  rw [child2897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1338_skip, output2897_skip]
  kernel_rfl

theorem node2899_cond_eq
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value719 value1 value2 = (output1337, value720, value1))
    (child2898 : Flapjack.WordAlloc.removeDeadStructural input2898 value720 value1 value2 = (output2898, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2899 value719 value1 value2 = (output2899, value1482, value1) := by
  rw [input2899_def, output2899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1337]
  try dsimp only
  rw [child2898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1337_skip, output2898_skip]
  kernel_rfl

theorem node2900_cond_eq
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value718 value1 value2 = (output1336, value719, value1))
    (child2899 : Flapjack.WordAlloc.removeDeadStructural input2899 value719 value1 value2 = (output2899, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2900 value718 value1 value2 = (output2900, value1482, value1) := by
  rw [input2900_def, output2900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1336]
  try dsimp only
  rw [child2899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1336_skip, output2899_skip]
  kernel_rfl

theorem node2901_cond_eq
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value715 value1 value2 = (output1335, value718, value1))
    (child2900 : Flapjack.WordAlloc.removeDeadStructural input2900 value718 value1 value2 = (output2900, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2901 value715 value1 value2 = (output2901, value1482, value1) := by
  rw [input2901_def, output2901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1335]
  try dsimp only
  rw [child2900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1335_skip, output2900_skip]
  kernel_rfl

theorem node2902_cond_eq
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value714 value1 value2 = (output1330, value715, value1))
    (child2901 : Flapjack.WordAlloc.removeDeadStructural input2901 value715 value1 value2 = (output2901, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2902 value714 value1 value2 = (output2902, value1482, value1) := by
  rw [input2902_def, output2902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1330]
  try dsimp only
  rw [child2901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1330_skip, output2901_skip]
  kernel_rfl

theorem node2903_cond_eq
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value709 value1 value2 = (output1329, value714, value1))
    (child2902 : Flapjack.WordAlloc.removeDeadStructural input2902 value714 value1 value2 = (output2902, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2903 value709 value1 value2 = (output2903, value1482, value1) := by
  rw [input2903_def, output2903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1329]
  try dsimp only
  rw [child2902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1329_skip, output2902_skip]
  kernel_rfl

theorem node2904_cond_eq
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value708 value1 value2 = (output1320, value709, value1))
    (child2903 : Flapjack.WordAlloc.removeDeadStructural input2903 value709 value1 value2 = (output2903, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2904 value708 value1 value2 = (output2904, value1482, value1) := by
  rw [input2904_def, output2904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1320]
  try dsimp only
  rw [child2903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1320_skip, output2903_skip]
  kernel_rfl

theorem node2905_cond_eq
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value704 value1 value2 = (output1319, value708, value1))
    (child2904 : Flapjack.WordAlloc.removeDeadStructural input2904 value708 value1 value2 = (output2904, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2905 value704 value1 value2 = (output2905, value1482, value1) := by
  rw [input2905_def, output2905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1319]
  try dsimp only
  rw [child2904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1319_skip, output2904_skip]
  kernel_rfl

theorem node2906_cond_eq
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value703 value1 value2 = (output1312, value704, value1))
    (child2905 : Flapjack.WordAlloc.removeDeadStructural input2905 value704 value1 value2 = (output2905, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2906 value703 value1 value2 = (output2906, value1482, value1) := by
  rw [input2906_def, output2906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1312]
  try dsimp only
  rw [child2905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1312_skip, output2905_skip]
  kernel_rfl

theorem node2907_cond_eq
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value702 value1 value2 = (output1311, value703, value1))
    (child2906 : Flapjack.WordAlloc.removeDeadStructural input2906 value703 value1 value2 = (output2906, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2907 value702 value1 value2 = (output2907, value1482, value1) := by
  rw [input2907_def, output2907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1311]
  try dsimp only
  rw [child2906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1311_skip, output2906_skip]
  kernel_rfl

theorem node2908_cond_eq
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value701 value1 value2 = (output1310, value702, value1))
    (child2907 : Flapjack.WordAlloc.removeDeadStructural input2907 value702 value1 value2 = (output2907, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2908 value701 value1 value2 = (output2908, value1482, value1) := by
  rw [input2908_def, output2908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1310]
  try dsimp only
  rw [child2907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1310_skip, output2907_skip]
  kernel_rfl

theorem node2909_cond_eq
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value698 value1 value2 = (output1309, value701, value1))
    (child2908 : Flapjack.WordAlloc.removeDeadStructural input2908 value701 value1 value2 = (output2908, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2909 value698 value1 value2 = (output2909, value1482, value1) := by
  rw [input2909_def, output2909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1309]
  try dsimp only
  rw [child2908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1309_skip, output2908_skip]
  kernel_rfl

theorem node2910_cond_eq
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value697 value1 value2 = (output1304, value698, value1))
    (child2909 : Flapjack.WordAlloc.removeDeadStructural input2909 value698 value1 value2 = (output2909, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2910 value697 value1 value2 = (output2910, value1482, value1) := by
  rw [input2910_def, output2910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1304]
  try dsimp only
  rw [child2909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1304_skip, output2909_skip]
  kernel_rfl

theorem node2911_cond_eq
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value692 value1 value2 = (output1303, value697, value1))
    (child2910 : Flapjack.WordAlloc.removeDeadStructural input2910 value697 value1 value2 = (output2910, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2911 value692 value1 value2 = (output2911, value1482, value1) := by
  rw [input2911_def, output2911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1303]
  try dsimp only
  rw [child2910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1303_skip, output2910_skip]
  kernel_rfl

theorem node2912_cond_eq
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value691 value1 value2 = (output1294, value692, value1))
    (child2911 : Flapjack.WordAlloc.removeDeadStructural input2911 value692 value1 value2 = (output2911, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2912 value691 value1 value2 = (output2912, value1482, value1) := by
  rw [input2912_def, output2912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1294]
  try dsimp only
  rw [child2911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1294_skip, output2911_skip]
  kernel_rfl

theorem node2913_cond_eq
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value687 value1 value2 = (output1293, value691, value1))
    (child2912 : Flapjack.WordAlloc.removeDeadStructural input2912 value691 value1 value2 = (output2912, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2913 value687 value1 value2 = (output2913, value1482, value1) := by
  rw [input2913_def, output2913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1293]
  try dsimp only
  rw [child2912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1293_skip, output2912_skip]
  kernel_rfl

theorem node2914_cond_eq
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value686 value1 value2 = (output1286, value687, value1))
    (child2913 : Flapjack.WordAlloc.removeDeadStructural input2913 value687 value1 value2 = (output2913, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2914 value686 value1 value2 = (output2914, value1482, value1) := by
  rw [input2914_def, output2914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1286]
  try dsimp only
  rw [child2913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1286_skip, output2913_skip]
  kernel_rfl

theorem node2915_cond_eq
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value685 value1 value2 = (output1285, value686, value1))
    (child2914 : Flapjack.WordAlloc.removeDeadStructural input2914 value686 value1 value2 = (output2914, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2915 value685 value1 value2 = (output2915, value1482, value1) := by
  rw [input2915_def, output2915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1285]
  try dsimp only
  rw [child2914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1285_skip, output2914_skip]
  kernel_rfl

theorem node2916_cond_eq
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value684 value1 value2 = (output1284, value685, value1))
    (child2915 : Flapjack.WordAlloc.removeDeadStructural input2915 value685 value1 value2 = (output2915, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2916 value684 value1 value2 = (output2916, value1482, value1) := by
  rw [input2916_def, output2916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1284]
  try dsimp only
  rw [child2915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1284_skip, output2915_skip]
  kernel_rfl

theorem node2917_cond_eq
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value681 value1 value2 = (output1283, value684, value1))
    (child2916 : Flapjack.WordAlloc.removeDeadStructural input2916 value684 value1 value2 = (output2916, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2917 value681 value1 value2 = (output2917, value1482, value1) := by
  rw [input2917_def, output2917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1283]
  try dsimp only
  rw [child2916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1283_skip, output2916_skip]
  kernel_rfl

theorem node2918_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value680 value1 value2 = (output1278, value681, value1))
    (child2917 : Flapjack.WordAlloc.removeDeadStructural input2917 value681 value1 value2 = (output2917, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2918 value680 value1 value2 = (output2918, value1482, value1) := by
  rw [input2918_def, output2918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  try dsimp only
  rw [child2917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output2917_skip]
  kernel_rfl

theorem node2919_cond_eq
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value675 value1 value2 = (output1277, value680, value1))
    (child2918 : Flapjack.WordAlloc.removeDeadStructural input2918 value680 value1 value2 = (output2918, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2919 value675 value1 value2 = (output2919, value1482, value1) := by
  rw [input2919_def, output2919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1277]
  try dsimp only
  rw [child2918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1277_skip, output2918_skip]
  kernel_rfl

theorem node2920_cond_eq
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value674 value1 value2 = (output1268, value675, value1))
    (child2919 : Flapjack.WordAlloc.removeDeadStructural input2919 value675 value1 value2 = (output2919, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2920 value674 value1 value2 = (output2920, value1482, value1) := by
  rw [input2920_def, output2920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1268]
  try dsimp only
  rw [child2919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1268_skip, output2919_skip]
  kernel_rfl

theorem node2921_cond_eq
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value670 value1 value2 = (output1267, value674, value1))
    (child2920 : Flapjack.WordAlloc.removeDeadStructural input2920 value674 value1 value2 = (output2920, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2921 value670 value1 value2 = (output2921, value1482, value1) := by
  rw [input2921_def, output2921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1267]
  try dsimp only
  rw [child2920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1267_skip, output2920_skip]
  kernel_rfl

theorem node2922_cond_eq
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value669 value1 value2 = (output1260, value670, value1))
    (child2921 : Flapjack.WordAlloc.removeDeadStructural input2921 value670 value1 value2 = (output2921, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2922 value669 value1 value2 = (output2922, value1482, value1) := by
  rw [input2922_def, output2922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1260]
  try dsimp only
  rw [child2921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1260_skip, output2921_skip]
  kernel_rfl

theorem node2923_cond_eq
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value666 value1 value2 = (output1259, value669, value1))
    (child2922 : Flapjack.WordAlloc.removeDeadStructural input2922 value669 value1 value2 = (output2922, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2923 value666 value1 value2 = (output2923, value1482, value1) := by
  rw [input2923_def, output2923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1259]
  try dsimp only
  rw [child2922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1259_skip, output2922_skip]
  kernel_rfl

theorem node2924_cond_eq
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value663 value1 value2 = (output1254, value666, value1))
    (child2923 : Flapjack.WordAlloc.removeDeadStructural input2923 value666 value1 value2 = (output2923, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2924 value663 value1 value2 = (output2924, value1482, value1) := by
  rw [input2924_def, output2924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1254]
  try dsimp only
  rw [child2923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1254_skip, output2923_skip]
  kernel_rfl

theorem node2925_cond_eq
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value659 value1 value2 = (output1249, value663, value1))
    (child2924 : Flapjack.WordAlloc.removeDeadStructural input2924 value663 value1 value2 = (output2924, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2925 value659 value1 value2 = (output2925, value1482, value1) := by
  rw [input2925_def, output2925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1249]
  try dsimp only
  rw [child2924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1249_skip, output2924_skip]
  kernel_rfl

theorem node2926_cond_eq
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value659 value1 value2 = (output1242, value659, value1))
    (child2925 : Flapjack.WordAlloc.removeDeadStructural input2925 value659 value1 value2 = (output2925, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2926 value659 value1 value2 = (output2926, value1482, value1) := by
  rw [input2926_def, output2926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1242]
  try dsimp only
  rw [child2925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1242_skip, output2925_skip]
  kernel_rfl

theorem node2927_cond_eq
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value659 value1 value2 = (output1241, value659, value1))
    (child2926 : Flapjack.WordAlloc.removeDeadStructural input2926 value659 value1 value2 = (output2926, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2927 value659 value1 value2 = (output2927, value1482, value1) := by
  rw [input2927_def, output2927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1241]
  try dsimp only
  rw [child2926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1241_skip, output2926_skip]
  kernel_rfl

theorem node2928_cond_eq
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value658 value1 value2 = (output1240, value659, value1))
    (child2927 : Flapjack.WordAlloc.removeDeadStructural input2927 value659 value1 value2 = (output2927, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2928 value658 value1 value2 = (output2928, value1482, value1) := by
  rw [input2928_def, output2928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1240]
  try dsimp only
  rw [child2927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1240_skip, output2927_skip]
  kernel_rfl

theorem node2929_cond_eq
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value657 value1 value2 = (output1239, value658, value1))
    (child2928 : Flapjack.WordAlloc.removeDeadStructural input2928 value658 value1 value2 = (output2928, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2929 value657 value1 value2 = (output2929, value1482, value1) := by
  rw [input2929_def, output2929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1239]
  try dsimp only
  rw [child2928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1239_skip, output2928_skip]
  kernel_rfl

theorem node2930_cond_eq
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value654 value1 value2 = (output1238, value657, value1))
    (child2929 : Flapjack.WordAlloc.removeDeadStructural input2929 value657 value1 value2 = (output2929, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2930 value654 value1 value2 = (output2930, value1482, value1) := by
  rw [input2930_def, output2930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1238]
  try dsimp only
  rw [child2929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1238_skip, output2929_skip]
  kernel_rfl

theorem node2931_cond_eq
    (child1233 : Flapjack.WordAlloc.removeDeadStructural input1233 value653 value1 value2 = (output1233, value654, value1))
    (child2930 : Flapjack.WordAlloc.removeDeadStructural input2930 value654 value1 value2 = (output2930, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2931 value653 value1 value2 = (output2931, value1482, value1) := by
  rw [input2931_def, output2931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1233]
  try dsimp only
  rw [child2930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1233_skip, output2930_skip]
  kernel_rfl

theorem node2932_cond_eq
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value650 value1 value2 = (output1232, value653, value1))
    (child2931 : Flapjack.WordAlloc.removeDeadStructural input2931 value653 value1 value2 = (output2931, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2932 value650 value1 value2 = (output2932, value1482, value1) := by
  rw [input2932_def, output2932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1232]
  try dsimp only
  rw [child2931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1232_skip, output2931_skip]
  kernel_rfl

theorem node2933_cond_eq
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value649 value1 value2 = (output1227, value650, value1))
    (child2932 : Flapjack.WordAlloc.removeDeadStructural input2932 value650 value1 value2 = (output2932, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2933 value649 value1 value2 = (output2933, value1482, value1) := by
  rw [input2933_def, output2933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1227]
  try dsimp only
  rw [child2932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1227_skip, output2932_skip]
  kernel_rfl

theorem node2934_cond_eq
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value647 value1 value2 = (output1226, value649, value1))
    (child2933 : Flapjack.WordAlloc.removeDeadStructural input2933 value649 value1 value2 = (output2933, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2934 value647 value1 value2 = (output2934, value1482, value1) := by
  rw [input2934_def, output2934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1226]
  try dsimp only
  rw [child2933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1226_skip, output2933_skip]
  kernel_rfl

theorem node2935_cond_eq
    (child1223 : Flapjack.WordAlloc.removeDeadStructural input1223 value646 value1 value2 = (output1223, value647, value1))
    (child2934 : Flapjack.WordAlloc.removeDeadStructural input2934 value647 value1 value2 = (output2934, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2935 value646 value1 value2 = (output2935, value1482, value1) := by
  rw [input2935_def, output2935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1223]
  try dsimp only
  rw [child2934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1223_skip, output2934_skip]
  kernel_rfl

theorem node2936_cond_eq
    (child1222 : Flapjack.WordAlloc.removeDeadStructural input1222 value645 value1 value2 = (output1222, value646, value1))
    (child2935 : Flapjack.WordAlloc.removeDeadStructural input2935 value646 value1 value2 = (output2935, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2936 value645 value1 value2 = (output2936, value1482, value1) := by
  rw [input2936_def, output2936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1222]
  try dsimp only
  rw [child2935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1222_skip, output2935_skip]
  kernel_rfl

theorem node2937_cond_eq
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value644 value1 value2 = (output1221, value645, value1))
    (child2936 : Flapjack.WordAlloc.removeDeadStructural input2936 value645 value1 value2 = (output2936, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2937 value644 value1 value2 = (output2937, value1482, value1) := by
  rw [input2937_def, output2937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1221]
  try dsimp only
  rw [child2936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1221_skip, output2936_skip]
  kernel_rfl

theorem node2938_cond_eq
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value641 value1 value2 = (output1220, value644, value1))
    (child2937 : Flapjack.WordAlloc.removeDeadStructural input2937 value644 value1 value2 = (output2937, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2938 value641 value1 value2 = (output2938, value1482, value1) := by
  rw [input2938_def, output2938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1220]
  try dsimp only
  rw [child2937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1220_skip, output2937_skip]
  kernel_rfl

theorem node2939_cond_eq
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value640 value1 value2 = (output1215, value641, value1))
    (child2938 : Flapjack.WordAlloc.removeDeadStructural input2938 value641 value1 value2 = (output2938, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2939 value640 value1 value2 = (output2939, value1482, value1) := by
  rw [input2939_def, output2939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1215]
  try dsimp only
  rw [child2938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1215_skip, output2938_skip]
  kernel_rfl

theorem node2940_cond_eq
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value635 value1 value2 = (output1214, value640, value1))
    (child2939 : Flapjack.WordAlloc.removeDeadStructural input2939 value640 value1 value2 = (output2939, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2940 value635 value1 value2 = (output2940, value1482, value1) := by
  rw [input2940_def, output2940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1214]
  try dsimp only
  rw [child2939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1214_skip, output2939_skip]
  kernel_rfl

theorem node2941_cond_eq
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value634 value1 value2 = (output1205, value635, value1))
    (child2940 : Flapjack.WordAlloc.removeDeadStructural input2940 value635 value1 value2 = (output2940, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2941 value634 value1 value2 = (output2941, value1482, value1) := by
  rw [input2941_def, output2941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1205]
  try dsimp only
  rw [child2940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1205_skip, output2940_skip]
  kernel_rfl

theorem node2942_cond_eq
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value630 value1 value2 = (output1204, value634, value1))
    (child2941 : Flapjack.WordAlloc.removeDeadStructural input2941 value634 value1 value2 = (output2941, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2942 value630 value1 value2 = (output2942, value1482, value1) := by
  rw [input2942_def, output2942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1204]
  try dsimp only
  rw [child2941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1204_skip, output2941_skip]
  kernel_rfl

theorem node2943_cond_eq
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value629 value1 value2 = (output1197, value630, value1))
    (child2942 : Flapjack.WordAlloc.removeDeadStructural input2942 value630 value1 value2 = (output2942, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2943 value629 value1 value2 = (output2943, value1482, value1) := by
  rw [input2943_def, output2943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1197]
  try dsimp only
  rw [child2942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1197_skip, output2942_skip]
  kernel_rfl

theorem node2944_cond_eq
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value628 value1 value2 = (output1196, value629, value1))
    (child2943 : Flapjack.WordAlloc.removeDeadStructural input2943 value629 value1 value2 = (output2943, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2944 value628 value1 value2 = (output2944, value1482, value1) := by
  rw [input2944_def, output2944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1196]
  try dsimp only
  rw [child2943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1196_skip, output2943_skip]
  kernel_rfl

theorem node2945_cond_eq
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value627 value1 value2 = (output1195, value628, value1))
    (child2944 : Flapjack.WordAlloc.removeDeadStructural input2944 value628 value1 value2 = (output2944, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2945 value627 value1 value2 = (output2945, value1482, value1) := by
  rw [input2945_def, output2945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1195]
  try dsimp only
  rw [child2944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1195_skip, output2944_skip]
  kernel_rfl

theorem node2946_cond_eq
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value624 value1 value2 = (output1194, value627, value1))
    (child2945 : Flapjack.WordAlloc.removeDeadStructural input2945 value627 value1 value2 = (output2945, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2946 value624 value1 value2 = (output2946, value1482, value1) := by
  rw [input2946_def, output2946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1194]
  try dsimp only
  rw [child2945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1194_skip, output2945_skip]
  kernel_rfl

theorem node2947_cond_eq
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value623 value1 value2 = (output1189, value624, value1))
    (child2946 : Flapjack.WordAlloc.removeDeadStructural input2946 value624 value1 value2 = (output2946, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2947 value623 value1 value2 = (output2947, value1482, value1) := by
  rw [input2947_def, output2947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1189]
  try dsimp only
  rw [child2946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1189_skip, output2946_skip]
  kernel_rfl

theorem node2948_cond_eq
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value618 value1 value2 = (output1188, value623, value1))
    (child2947 : Flapjack.WordAlloc.removeDeadStructural input2947 value623 value1 value2 = (output2947, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2948 value618 value1 value2 = (output2948, value1482, value1) := by
  rw [input2948_def, output2948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1188]
  try dsimp only
  rw [child2947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1188_skip, output2947_skip]
  kernel_rfl

theorem node2949_cond_eq
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value617 value1 value2 = (output1179, value618, value1))
    (child2948 : Flapjack.WordAlloc.removeDeadStructural input2948 value618 value1 value2 = (output2948, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2949 value617 value1 value2 = (output2949, value1482, value1) := by
  rw [input2949_def, output2949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1179]
  try dsimp only
  rw [child2948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1179_skip, output2948_skip]
  kernel_rfl

theorem node2950_cond_eq
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value613 value1 value2 = (output1178, value617, value1))
    (child2949 : Flapjack.WordAlloc.removeDeadStructural input2949 value617 value1 value2 = (output2949, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2950 value613 value1 value2 = (output2950, value1482, value1) := by
  rw [input2950_def, output2950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1178]
  try dsimp only
  rw [child2949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1178_skip, output2949_skip]
  kernel_rfl

theorem node2951_cond_eq
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value612 value1 value2 = (output1171, value613, value1))
    (child2950 : Flapjack.WordAlloc.removeDeadStructural input2950 value613 value1 value2 = (output2950, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2951 value612 value1 value2 = (output2951, value1482, value1) := by
  rw [input2951_def, output2951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1171]
  try dsimp only
  rw [child2950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1171_skip, output2950_skip]
  kernel_rfl

theorem node2952_cond_eq
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value611 value1 value2 = (output1170, value612, value1))
    (child2951 : Flapjack.WordAlloc.removeDeadStructural input2951 value612 value1 value2 = (output2951, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2952 value611 value1 value2 = (output2952, value1482, value1) := by
  rw [input2952_def, output2952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1170]
  try dsimp only
  rw [child2951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1170_skip, output2951_skip]
  kernel_rfl

theorem node2953_cond_eq
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value610 value1 value2 = (output1169, value611, value1))
    (child2952 : Flapjack.WordAlloc.removeDeadStructural input2952 value611 value1 value2 = (output2952, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2953 value610 value1 value2 = (output2953, value1482, value1) := by
  rw [input2953_def, output2953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1169]
  try dsimp only
  rw [child2952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1169_skip, output2952_skip]
  kernel_rfl

theorem node2954_cond_eq
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value607 value1 value2 = (output1168, value610, value1))
    (child2953 : Flapjack.WordAlloc.removeDeadStructural input2953 value610 value1 value2 = (output2953, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2954 value607 value1 value2 = (output2954, value1482, value1) := by
  rw [input2954_def, output2954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1168]
  try dsimp only
  rw [child2953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1168_skip, output2953_skip]
  kernel_rfl

theorem node2955_cond_eq
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value606 value1 value2 = (output1163, value607, value1))
    (child2954 : Flapjack.WordAlloc.removeDeadStructural input2954 value607 value1 value2 = (output2954, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2955 value606 value1 value2 = (output2955, value1482, value1) := by
  rw [input2955_def, output2955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1163]
  try dsimp only
  rw [child2954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1163_skip, output2954_skip]
  kernel_rfl

theorem node2956_cond_eq
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value601 value1 value2 = (output1162, value606, value1))
    (child2955 : Flapjack.WordAlloc.removeDeadStructural input2955 value606 value1 value2 = (output2955, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2956 value601 value1 value2 = (output2956, value1482, value1) := by
  rw [input2956_def, output2956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1162]
  try dsimp only
  rw [child2955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1162_skip, output2955_skip]
  kernel_rfl

theorem node2957_cond_eq
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value600 value1 value2 = (output1153, value601, value1))
    (child2956 : Flapjack.WordAlloc.removeDeadStructural input2956 value601 value1 value2 = (output2956, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2957 value600 value1 value2 = (output2957, value1482, value1) := by
  rw [input2957_def, output2957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1153]
  try dsimp only
  rw [child2956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1153_skip, output2956_skip]
  kernel_rfl

theorem node2958_cond_eq
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value596 value1 value2 = (output1152, value600, value1))
    (child2957 : Flapjack.WordAlloc.removeDeadStructural input2957 value600 value1 value2 = (output2957, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2958 value596 value1 value2 = (output2958, value1482, value1) := by
  rw [input2958_def, output2958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1152]
  try dsimp only
  rw [child2957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1152_skip, output2957_skip]
  kernel_rfl

theorem node2959_cond_eq
    (child1145 : Flapjack.WordAlloc.removeDeadStructural input1145 value595 value1 value2 = (output1145, value596, value1))
    (child2958 : Flapjack.WordAlloc.removeDeadStructural input2958 value596 value1 value2 = (output2958, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2959 value595 value1 value2 = (output2959, value1482, value1) := by
  rw [input2959_def, output2959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1145]
  try dsimp only
  rw [child2958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1145_skip, output2958_skip]
  kernel_rfl

theorem node2960_cond_eq
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value594 value1 value2 = (output1144, value595, value1))
    (child2959 : Flapjack.WordAlloc.removeDeadStructural input2959 value595 value1 value2 = (output2959, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2960 value594 value1 value2 = (output2960, value1482, value1) := by
  rw [input2960_def, output2960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1144]
  try dsimp only
  rw [child2959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1144_skip, output2959_skip]
  kernel_rfl

theorem node2961_cond_eq
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value593 value1 value2 = (output1143, value594, value1))
    (child2960 : Flapjack.WordAlloc.removeDeadStructural input2960 value594 value1 value2 = (output2960, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2961 value593 value1 value2 = (output2961, value1482, value1) := by
  rw [input2961_def, output2961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1143]
  try dsimp only
  rw [child2960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1143_skip, output2960_skip]
  kernel_rfl

theorem node2962_cond_eq
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value590 value1 value2 = (output1142, value593, value1))
    (child2961 : Flapjack.WordAlloc.removeDeadStructural input2961 value593 value1 value2 = (output2961, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2962 value590 value1 value2 = (output2962, value1482, value1) := by
  rw [input2962_def, output2962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1142]
  try dsimp only
  rw [child2961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1142_skip, output2961_skip]
  kernel_rfl

theorem node2963_cond_eq
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value589 value1 value2 = (output1137, value590, value1))
    (child2962 : Flapjack.WordAlloc.removeDeadStructural input2962 value590 value1 value2 = (output2962, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2963 value589 value1 value2 = (output2963, value1482, value1) := by
  rw [input2963_def, output2963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1137]
  try dsimp only
  rw [child2962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1137_skip, output2962_skip]
  kernel_rfl

theorem node2964_cond_eq
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value584 value1 value2 = (output1136, value589, value1))
    (child2963 : Flapjack.WordAlloc.removeDeadStructural input2963 value589 value1 value2 = (output2963, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2964 value584 value1 value2 = (output2964, value1482, value1) := by
  rw [input2964_def, output2964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1136]
  try dsimp only
  rw [child2963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1136_skip, output2963_skip]
  kernel_rfl

theorem node2965_cond_eq
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value583 value1 value2 = (output1127, value584, value1))
    (child2964 : Flapjack.WordAlloc.removeDeadStructural input2964 value584 value1 value2 = (output2964, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2965 value583 value1 value2 = (output2965, value1482, value1) := by
  rw [input2965_def, output2965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1127]
  try dsimp only
  rw [child2964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1127_skip, output2964_skip]
  kernel_rfl

theorem node2966_cond_eq
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value579 value1 value2 = (output1126, value583, value1))
    (child2965 : Flapjack.WordAlloc.removeDeadStructural input2965 value583 value1 value2 = (output2965, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2966 value579 value1 value2 = (output2966, value1482, value1) := by
  rw [input2966_def, output2966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1126]
  try dsimp only
  rw [child2965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1126_skip, output2965_skip]
  kernel_rfl

theorem node2967_cond_eq
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value578 value1 value2 = (output1119, value579, value1))
    (child2966 : Flapjack.WordAlloc.removeDeadStructural input2966 value579 value1 value2 = (output2966, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2967 value578 value1 value2 = (output2967, value1482, value1) := by
  rw [input2967_def, output2967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1119]
  try dsimp only
  rw [child2966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1119_skip, output2966_skip]
  kernel_rfl

theorem node2968_cond_eq
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value577 value1 value2 = (output1118, value578, value1))
    (child2967 : Flapjack.WordAlloc.removeDeadStructural input2967 value578 value1 value2 = (output2967, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2968 value577 value1 value2 = (output2968, value1482, value1) := by
  rw [input2968_def, output2968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1118]
  try dsimp only
  rw [child2967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1118_skip, output2967_skip]
  kernel_rfl

theorem node2969_cond_eq
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value576 value1 value2 = (output1117, value577, value1))
    (child2968 : Flapjack.WordAlloc.removeDeadStructural input2968 value577 value1 value2 = (output2968, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2969 value576 value1 value2 = (output2969, value1482, value1) := by
  rw [input2969_def, output2969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1117]
  try dsimp only
  rw [child2968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1117_skip, output2968_skip]
  kernel_rfl

theorem node2970_cond_eq
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value573 value1 value2 = (output1116, value576, value1))
    (child2969 : Flapjack.WordAlloc.removeDeadStructural input2969 value576 value1 value2 = (output2969, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2970 value573 value1 value2 = (output2970, value1482, value1) := by
  rw [input2970_def, output2970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1116]
  try dsimp only
  rw [child2969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1116_skip, output2969_skip]
  kernel_rfl

theorem node2971_cond_eq
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value572 value1 value2 = (output1111, value573, value1))
    (child2970 : Flapjack.WordAlloc.removeDeadStructural input2970 value573 value1 value2 = (output2970, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2971 value572 value1 value2 = (output2971, value1482, value1) := by
  rw [input2971_def, output2971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1111]
  try dsimp only
  rw [child2970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1111_skip, output2970_skip]
  kernel_rfl

theorem node2972_cond_eq
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value567 value1 value2 = (output1110, value572, value1))
    (child2971 : Flapjack.WordAlloc.removeDeadStructural input2971 value572 value1 value2 = (output2971, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2972 value567 value1 value2 = (output2972, value1482, value1) := by
  rw [input2972_def, output2972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1110]
  try dsimp only
  rw [child2971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1110_skip, output2971_skip]
  kernel_rfl

theorem node2973_cond_eq
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value566 value1 value2 = (output1101, value567, value1))
    (child2972 : Flapjack.WordAlloc.removeDeadStructural input2972 value567 value1 value2 = (output2972, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2973 value566 value1 value2 = (output2973, value1482, value1) := by
  rw [input2973_def, output2973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1101]
  try dsimp only
  rw [child2972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1101_skip, output2972_skip]
  kernel_rfl

theorem node2974_cond_eq
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value562 value1 value2 = (output1100, value566, value1))
    (child2973 : Flapjack.WordAlloc.removeDeadStructural input2973 value566 value1 value2 = (output2973, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2974 value562 value1 value2 = (output2974, value1482, value1) := by
  rw [input2974_def, output2974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1100]
  try dsimp only
  rw [child2973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1100_skip, output2973_skip]
  kernel_rfl

theorem node2975_cond_eq
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value561 value1 value2 = (output1093, value562, value1))
    (child2974 : Flapjack.WordAlloc.removeDeadStructural input2974 value562 value1 value2 = (output2974, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2975 value561 value1 value2 = (output2975, value1482, value1) := by
  rw [input2975_def, output2975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1093]
  try dsimp only
  rw [child2974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1093_skip, output2974_skip]
  kernel_rfl

theorem node2976_cond_eq
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value558 value1 value2 = (output1092, value561, value1))
    (child2975 : Flapjack.WordAlloc.removeDeadStructural input2975 value561 value1 value2 = (output2975, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2976 value558 value1 value2 = (output2976, value1482, value1) := by
  rw [input2976_def, output2976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1092]
  try dsimp only
  rw [child2975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1092_skip, output2975_skip]
  kernel_rfl

theorem node2977_cond_eq
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value555 value1 value2 = (output1087, value558, value1))
    (child2976 : Flapjack.WordAlloc.removeDeadStructural input2976 value558 value1 value2 = (output2976, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2977 value555 value1 value2 = (output2977, value1482, value1) := by
  rw [input2977_def, output2977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1087]
  try dsimp only
  rw [child2976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1087_skip, output2976_skip]
  kernel_rfl

theorem node2978_cond_eq
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value551 value1 value2 = (output1082, value555, value1))
    (child2977 : Flapjack.WordAlloc.removeDeadStructural input2977 value555 value1 value2 = (output2977, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2978 value551 value1 value2 = (output2978, value1482, value1) := by
  rw [input2978_def, output2978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1082]
  try dsimp only
  rw [child2977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1082_skip, output2977_skip]
  kernel_rfl

theorem node2979_cond_eq
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value551 value1 value2 = (output1075, value551, value1))
    (child2978 : Flapjack.WordAlloc.removeDeadStructural input2978 value551 value1 value2 = (output2978, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2979 value551 value1 value2 = (output2979, value1482, value1) := by
  rw [input2979_def, output2979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1075]
  try dsimp only
  rw [child2978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1075_skip, output2978_skip]
  kernel_rfl

theorem node2980_cond_eq
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value551 value1 value2 = (output1074, value551, value1))
    (child2979 : Flapjack.WordAlloc.removeDeadStructural input2979 value551 value1 value2 = (output2979, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2980 value551 value1 value2 = (output2980, value1482, value1) := by
  rw [input2980_def, output2980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1074]
  try dsimp only
  rw [child2979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1074_skip, output2979_skip]
  kernel_rfl

theorem node2981_cond_eq
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value550 value1 value2 = (output1073, value551, value1))
    (child2980 : Flapjack.WordAlloc.removeDeadStructural input2980 value551 value1 value2 = (output2980, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2981 value550 value1 value2 = (output2981, value1482, value1) := by
  rw [input2981_def, output2981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1073]
  try dsimp only
  rw [child2980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1073_skip, output2980_skip]
  kernel_rfl

theorem node2982_cond_eq
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value549 value1 value2 = (output1072, value550, value1))
    (child2981 : Flapjack.WordAlloc.removeDeadStructural input2981 value550 value1 value2 = (output2981, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2982 value549 value1 value2 = (output2982, value1482, value1) := by
  rw [input2982_def, output2982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1072]
  try dsimp only
  rw [child2981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1072_skip, output2981_skip]
  kernel_rfl

theorem node2983_cond_eq
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value546 value1 value2 = (output1071, value549, value1))
    (child2982 : Flapjack.WordAlloc.removeDeadStructural input2982 value549 value1 value2 = (output2982, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2983 value546 value1 value2 = (output2983, value1482, value1) := by
  rw [input2983_def, output2983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1071]
  try dsimp only
  rw [child2982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1071_skip, output2982_skip]
  kernel_rfl

theorem node2984_cond_eq
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value545 value1 value2 = (output1066, value546, value1))
    (child2983 : Flapjack.WordAlloc.removeDeadStructural input2983 value546 value1 value2 = (output2983, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2984 value545 value1 value2 = (output2984, value1482, value1) := by
  rw [input2984_def, output2984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1066]
  try dsimp only
  rw [child2983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1066_skip, output2983_skip]
  kernel_rfl

theorem node2985_cond_eq
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value542 value1 value2 = (output1065, value545, value1))
    (child2984 : Flapjack.WordAlloc.removeDeadStructural input2984 value545 value1 value2 = (output2984, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2985 value542 value1 value2 = (output2985, value1482, value1) := by
  rw [input2985_def, output2985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1065]
  try dsimp only
  rw [child2984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1065_skip, output2984_skip]
  kernel_rfl

theorem node2986_cond_eq
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value541 value1 value2 = (output1060, value542, value1))
    (child2985 : Flapjack.WordAlloc.removeDeadStructural input2985 value542 value1 value2 = (output2985, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2986 value541 value1 value2 = (output2986, value1482, value1) := by
  rw [input2986_def, output2986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1060]
  try dsimp only
  rw [child2985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1060_skip, output2985_skip]
  kernel_rfl

theorem node2987_cond_eq
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value539 value1 value2 = (output1059, value541, value1))
    (child2986 : Flapjack.WordAlloc.removeDeadStructural input2986 value541 value1 value2 = (output2986, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2987 value539 value1 value2 = (output2987, value1482, value1) := by
  rw [input2987_def, output2987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1059]
  try dsimp only
  rw [child2986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1059_skip, output2986_skip]
  kernel_rfl

theorem node2988_cond_eq
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value538 value1 value2 = (output1056, value539, value1))
    (child2987 : Flapjack.WordAlloc.removeDeadStructural input2987 value539 value1 value2 = (output2987, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2988 value538 value1 value2 = (output2988, value1482, value1) := by
  rw [input2988_def, output2988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1056]
  try dsimp only
  rw [child2987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1056_skip, output2987_skip]
  kernel_rfl

theorem node2989_cond_eq
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value537 value1 value2 = (output1055, value538, value1))
    (child2988 : Flapjack.WordAlloc.removeDeadStructural input2988 value538 value1 value2 = (output2988, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2989 value537 value1 value2 = (output2989, value1482, value1) := by
  rw [input2989_def, output2989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1055]
  try dsimp only
  rw [child2988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1055_skip, output2988_skip]
  kernel_rfl

theorem node2990_cond_eq
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value536 value1 value2 = (output1054, value537, value1))
    (child2989 : Flapjack.WordAlloc.removeDeadStructural input2989 value537 value1 value2 = (output2989, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2990 value536 value1 value2 = (output2990, value1482, value1) := by
  rw [input2990_def, output2990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1054]
  try dsimp only
  rw [child2989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1054_skip, output2989_skip]
  kernel_rfl

theorem node2991_cond_eq
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value533 value1 value2 = (output1053, value536, value1))
    (child2990 : Flapjack.WordAlloc.removeDeadStructural input2990 value536 value1 value2 = (output2990, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2991 value533 value1 value2 = (output2991, value1482, value1) := by
  rw [input2991_def, output2991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1053]
  try dsimp only
  rw [child2990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1053_skip, output2990_skip]
  kernel_rfl

theorem node2992_cond_eq
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value532 value1 value2 = (output1048, value533, value1))
    (child2991 : Flapjack.WordAlloc.removeDeadStructural input2991 value533 value1 value2 = (output2991, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2992 value532 value1 value2 = (output2992, value1482, value1) := by
  rw [input2992_def, output2992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1048]
  try dsimp only
  rw [child2991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1048_skip, output2991_skip]
  kernel_rfl

theorem node2993_cond_eq
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value527 value1 value2 = (output1047, value532, value1))
    (child2992 : Flapjack.WordAlloc.removeDeadStructural input2992 value532 value1 value2 = (output2992, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2993 value527 value1 value2 = (output2993, value1482, value1) := by
  rw [input2993_def, output2993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1047]
  try dsimp only
  rw [child2992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1047_skip, output2992_skip]
  kernel_rfl

theorem node2994_cond_eq
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value526 value1 value2 = (output1038, value527, value1))
    (child2993 : Flapjack.WordAlloc.removeDeadStructural input2993 value527 value1 value2 = (output2993, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2994 value526 value1 value2 = (output2994, value1482, value1) := by
  rw [input2994_def, output2994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1038]
  try dsimp only
  rw [child2993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1038_skip, output2993_skip]
  kernel_rfl

theorem node2995_cond_eq
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value522 value1 value2 = (output1037, value526, value1))
    (child2994 : Flapjack.WordAlloc.removeDeadStructural input2994 value526 value1 value2 = (output2994, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2995 value522 value1 value2 = (output2995, value1482, value1) := by
  rw [input2995_def, output2995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1037]
  try dsimp only
  rw [child2994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1037_skip, output2994_skip]
  kernel_rfl

theorem node2996_cond_eq
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value521 value1 value2 = (output1030, value522, value1))
    (child2995 : Flapjack.WordAlloc.removeDeadStructural input2995 value522 value1 value2 = (output2995, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2996 value521 value1 value2 = (output2996, value1482, value1) := by
  rw [input2996_def, output2996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1030]
  try dsimp only
  rw [child2995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1030_skip, output2995_skip]
  kernel_rfl

theorem node2997_cond_eq
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value520 value1 value2 = (output1029, value521, value1))
    (child2996 : Flapjack.WordAlloc.removeDeadStructural input2996 value521 value1 value2 = (output2996, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2997 value520 value1 value2 = (output2997, value1482, value1) := by
  rw [input2997_def, output2997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1029]
  try dsimp only
  rw [child2996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1029_skip, output2996_skip]
  kernel_rfl

theorem node2998_cond_eq
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value519 value1 value2 = (output1028, value520, value1))
    (child2997 : Flapjack.WordAlloc.removeDeadStructural input2997 value520 value1 value2 = (output2997, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2998 value519 value1 value2 = (output2998, value1482, value1) := by
  rw [input2998_def, output2998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1028]
  try dsimp only
  rw [child2997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1028_skip, output2997_skip]
  kernel_rfl

theorem node2999_cond_eq
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value516 value1 value2 = (output1027, value519, value1))
    (child2998 : Flapjack.WordAlloc.removeDeadStructural input2998 value519 value1 value2 = (output2998, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2999 value516 value1 value2 = (output2999, value1482, value1) := by
  rw [input2999_def, output2999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1027]
  try dsimp only
  rw [child2998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1027_skip, output2998_skip]
  kernel_rfl

theorem node3000_cond_eq
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value515 value1 value2 = (output1022, value516, value1))
    (child2999 : Flapjack.WordAlloc.removeDeadStructural input2999 value516 value1 value2 = (output2999, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3000 value515 value1 value2 = (output3000, value1482, value1) := by
  rw [input3000_def, output3000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1022]
  try dsimp only
  rw [child2999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1022_skip, output2999_skip]
  kernel_rfl

theorem node3001_cond_eq
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value510 value1 value2 = (output1021, value515, value1))
    (child3000 : Flapjack.WordAlloc.removeDeadStructural input3000 value515 value1 value2 = (output3000, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3001 value510 value1 value2 = (output3001, value1482, value1) := by
  rw [input3001_def, output3001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1021]
  try dsimp only
  rw [child3000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1021_skip, output3000_skip]
  kernel_rfl

theorem node3002_cond_eq
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value509 value1 value2 = (output1012, value510, value1))
    (child3001 : Flapjack.WordAlloc.removeDeadStructural input3001 value510 value1 value2 = (output3001, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3002 value509 value1 value2 = (output3002, value1482, value1) := by
  rw [input3002_def, output3002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1012]
  try dsimp only
  rw [child3001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1012_skip, output3001_skip]
  kernel_rfl

theorem node3003_cond_eq
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value505 value1 value2 = (output1011, value509, value1))
    (child3002 : Flapjack.WordAlloc.removeDeadStructural input3002 value509 value1 value2 = (output3002, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3003 value505 value1 value2 = (output3003, value1482, value1) := by
  rw [input3003_def, output3003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1011]
  try dsimp only
  rw [child3002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1011_skip, output3002_skip]
  kernel_rfl

theorem node3004_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value504 value1 value2 = (output1004, value505, value1))
    (child3003 : Flapjack.WordAlloc.removeDeadStructural input3003 value505 value1 value2 = (output3003, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3004 value504 value1 value2 = (output3004, value1482, value1) := by
  rw [input3004_def, output3004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  try dsimp only
  rw [child3003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output3003_skip]
  kernel_rfl

theorem node3005_cond_eq
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value503 value1 value2 = (output1003, value504, value1))
    (child3004 : Flapjack.WordAlloc.removeDeadStructural input3004 value504 value1 value2 = (output3004, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3005 value503 value1 value2 = (output3005, value1482, value1) := by
  rw [input3005_def, output3005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1003]
  try dsimp only
  rw [child3004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1003_skip, output3004_skip]
  kernel_rfl

theorem node3006_cond_eq
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value502 value1 value2 = (output1002, value503, value1))
    (child3005 : Flapjack.WordAlloc.removeDeadStructural input3005 value503 value1 value2 = (output3005, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3006 value502 value1 value2 = (output3006, value1482, value1) := by
  rw [input3006_def, output3006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1002]
  try dsimp only
  rw [child3005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1002_skip, output3005_skip]
  kernel_rfl

theorem node3007_cond_eq
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value499 value1 value2 = (output1001, value502, value1))
    (child3006 : Flapjack.WordAlloc.removeDeadStructural input3006 value502 value1 value2 = (output3006, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3007 value499 value1 value2 = (output3007, value1482, value1) := by
  rw [input3007_def, output3007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1001]
  try dsimp only
  rw [child3006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1001_skip, output3006_skip]
  kernel_rfl

theorem node3008_cond_eq
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value498 value1 value2 = (output996, value499, value1))
    (child3007 : Flapjack.WordAlloc.removeDeadStructural input3007 value499 value1 value2 = (output3007, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3008 value498 value1 value2 = (output3008, value1482, value1) := by
  rw [input3008_def, output3008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child996]
  try dsimp only
  rw [child3007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output996_skip, output3007_skip]
  kernel_rfl

theorem node3009_cond_eq
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value493 value1 value2 = (output995, value498, value1))
    (child3008 : Flapjack.WordAlloc.removeDeadStructural input3008 value498 value1 value2 = (output3008, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3009 value493 value1 value2 = (output3009, value1482, value1) := by
  rw [input3009_def, output3009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child995]
  try dsimp only
  rw [child3008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output995_skip, output3008_skip]
  kernel_rfl

theorem node3010_cond_eq
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value492 value1 value2 = (output986, value493, value1))
    (child3009 : Flapjack.WordAlloc.removeDeadStructural input3009 value493 value1 value2 = (output3009, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3010 value492 value1 value2 = (output3010, value1482, value1) := by
  rw [input3010_def, output3010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child986]
  try dsimp only
  rw [child3009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output986_skip, output3009_skip]
  kernel_rfl

theorem node3011_cond_eq
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value488 value1 value2 = (output985, value492, value1))
    (child3010 : Flapjack.WordAlloc.removeDeadStructural input3010 value492 value1 value2 = (output3010, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3011 value488 value1 value2 = (output3011, value1482, value1) := by
  rw [input3011_def, output3011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child985]
  try dsimp only
  rw [child3010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output985_skip, output3010_skip]
  kernel_rfl

theorem node3012_cond_eq
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value487 value1 value2 = (output978, value488, value1))
    (child3011 : Flapjack.WordAlloc.removeDeadStructural input3011 value488 value1 value2 = (output3011, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3012 value487 value1 value2 = (output3012, value1482, value1) := by
  rw [input3012_def, output3012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child978]
  try dsimp only
  rw [child3011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output978_skip, output3011_skip]
  kernel_rfl

theorem node3013_cond_eq
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value486 value1 value2 = (output977, value487, value1))
    (child3012 : Flapjack.WordAlloc.removeDeadStructural input3012 value487 value1 value2 = (output3012, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3013 value486 value1 value2 = (output3013, value1482, value1) := by
  rw [input3013_def, output3013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child977]
  try dsimp only
  rw [child3012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output977_skip, output3012_skip]
  kernel_rfl

theorem node3014_cond_eq
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value485 value1 value2 = (output976, value486, value1))
    (child3013 : Flapjack.WordAlloc.removeDeadStructural input3013 value486 value1 value2 = (output3013, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3014 value485 value1 value2 = (output3014, value1482, value1) := by
  rw [input3014_def, output3014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child976]
  try dsimp only
  rw [child3013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output976_skip, output3013_skip]
  kernel_rfl

theorem node3015_cond_eq
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value482 value1 value2 = (output975, value485, value1))
    (child3014 : Flapjack.WordAlloc.removeDeadStructural input3014 value485 value1 value2 = (output3014, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3015 value482 value1 value2 = (output3015, value1482, value1) := by
  rw [input3015_def, output3015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child975]
  try dsimp only
  rw [child3014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output975_skip, output3014_skip]
  kernel_rfl

theorem node3016_cond_eq
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value481 value1 value2 = (output970, value482, value1))
    (child3015 : Flapjack.WordAlloc.removeDeadStructural input3015 value482 value1 value2 = (output3015, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3016 value481 value1 value2 = (output3016, value1482, value1) := by
  rw [input3016_def, output3016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child970]
  try dsimp only
  rw [child3015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output970_skip, output3015_skip]
  kernel_rfl

theorem node3017_cond_eq
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value476 value1 value2 = (output969, value481, value1))
    (child3016 : Flapjack.WordAlloc.removeDeadStructural input3016 value481 value1 value2 = (output3016, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3017 value476 value1 value2 = (output3017, value1482, value1) := by
  rw [input3017_def, output3017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child969]
  try dsimp only
  rw [child3016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output969_skip, output3016_skip]
  kernel_rfl

theorem node3018_cond_eq
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value475 value1 value2 = (output960, value476, value1))
    (child3017 : Flapjack.WordAlloc.removeDeadStructural input3017 value476 value1 value2 = (output3017, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3018 value475 value1 value2 = (output3018, value1482, value1) := by
  rw [input3018_def, output3018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child960]
  try dsimp only
  rw [child3017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output960_skip, output3017_skip]
  kernel_rfl

theorem node3019_cond_eq
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value471 value1 value2 = (output959, value475, value1))
    (child3018 : Flapjack.WordAlloc.removeDeadStructural input3018 value475 value1 value2 = (output3018, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3019 value471 value1 value2 = (output3019, value1482, value1) := by
  rw [input3019_def, output3019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child959]
  try dsimp only
  rw [child3018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output959_skip, output3018_skip]
  kernel_rfl

theorem node3020_cond_eq
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value470 value1 value2 = (output952, value471, value1))
    (child3019 : Flapjack.WordAlloc.removeDeadStructural input3019 value471 value1 value2 = (output3019, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3020 value470 value1 value2 = (output3020, value1482, value1) := by
  rw [input3020_def, output3020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child952]
  try dsimp only
  rw [child3019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output952_skip, output3019_skip]
  kernel_rfl

theorem node3021_cond_eq
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value467 value1 value2 = (output951, value470, value1))
    (child3020 : Flapjack.WordAlloc.removeDeadStructural input3020 value470 value1 value2 = (output3020, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3021 value467 value1 value2 = (output3021, value1482, value1) := by
  rw [input3021_def, output3021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child951]
  try dsimp only
  rw [child3020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output951_skip, output3020_skip]
  kernel_rfl

theorem node3022_cond_eq
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value464 value1 value2 = (output946, value467, value1))
    (child3021 : Flapjack.WordAlloc.removeDeadStructural input3021 value467 value1 value2 = (output3021, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3022 value464 value1 value2 = (output3022, value1482, value1) := by
  rw [input3022_def, output3022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child946]
  try dsimp only
  rw [child3021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output946_skip, output3021_skip]
  kernel_rfl

theorem node3023_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value460 value1 value2 = (output941, value464, value1))
    (child3022 : Flapjack.WordAlloc.removeDeadStructural input3022 value464 value1 value2 = (output3022, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3023 value460 value1 value2 = (output3023, value1482, value1) := by
  rw [input3023_def, output3023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  try dsimp only
  rw [child3022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output941_skip, output3022_skip]
  kernel_rfl

theorem node3024_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value460 value1 value2 = (output934, value460, value1))
    (child3023 : Flapjack.WordAlloc.removeDeadStructural input3023 value460 value1 value2 = (output3023, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3024 value460 value1 value2 = (output3024, value1482, value1) := by
  rw [input3024_def, output3024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child3023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output3023_skip]
  kernel_rfl

theorem node3025_cond_eq
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value460 value1 value2 = (output933, value460, value1))
    (child3024 : Flapjack.WordAlloc.removeDeadStructural input3024 value460 value1 value2 = (output3024, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3025 value460 value1 value2 = (output3025, value1482, value1) := by
  rw [input3025_def, output3025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child933]
  try dsimp only
  rw [child3024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output933_skip, output3024_skip]
  kernel_rfl

theorem node3026_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value459 value1 value2 = (output932, value460, value1))
    (child3025 : Flapjack.WordAlloc.removeDeadStructural input3025 value460 value1 value2 = (output3025, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3026 value459 value1 value2 = (output3026, value1482, value1) := by
  rw [input3026_def, output3026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  try dsimp only
  rw [child3025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output3025_skip]
  kernel_rfl

theorem node3027_cond_eq
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value458 value1 value2 = (output931, value459, value1))
    (child3026 : Flapjack.WordAlloc.removeDeadStructural input3026 value459 value1 value2 = (output3026, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3027 value458 value1 value2 = (output3027, value1482, value1) := by
  rw [input3027_def, output3027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child931]
  try dsimp only
  rw [child3026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output931_skip, output3026_skip]
  kernel_rfl

theorem node3028_cond_eq
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value455 value1 value2 = (output930, value458, value1))
    (child3027 : Flapjack.WordAlloc.removeDeadStructural input3027 value458 value1 value2 = (output3027, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3028 value455 value1 value2 = (output3028, value1482, value1) := by
  rw [input3028_def, output3028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child930]
  try dsimp only
  rw [child3027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output930_skip, output3027_skip]
  kernel_rfl

theorem node3029_cond_eq
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value454 value1 value2 = (output925, value455, value1))
    (child3028 : Flapjack.WordAlloc.removeDeadStructural input3028 value455 value1 value2 = (output3028, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3029 value454 value1 value2 = (output3029, value1482, value1) := by
  rw [input3029_def, output3029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child925]
  try dsimp only
  rw [child3028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output925_skip, output3028_skip]
  kernel_rfl

theorem node3030_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value451 value1 value2 = (output924, value454, value1))
    (child3029 : Flapjack.WordAlloc.removeDeadStructural input3029 value454 value1 value2 = (output3029, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3030 value451 value1 value2 = (output3030, value1482, value1) := by
  rw [input3030_def, output3030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  try dsimp only
  rw [child3029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output3029_skip]
  kernel_rfl

theorem node3031_cond_eq
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value450 value1 value2 = (output919, value451, value1))
    (child3030 : Flapjack.WordAlloc.removeDeadStructural input3030 value451 value1 value2 = (output3030, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3031 value450 value1 value2 = (output3031, value1482, value1) := by
  rw [input3031_def, output3031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child919]
  try dsimp only
  rw [child3030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output919_skip, output3030_skip]
  kernel_rfl

theorem node3032_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value448 value1 value2 = (output918, value450, value1))
    (child3031 : Flapjack.WordAlloc.removeDeadStructural input3031 value450 value1 value2 = (output3031, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3032 value448 value1 value2 = (output3032, value1482, value1) := by
  rw [input3032_def, output3032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child3031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output3031_skip]
  kernel_rfl

theorem node3033_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value447 value1 value2 = (output915, value448, value1))
    (child3032 : Flapjack.WordAlloc.removeDeadStructural input3032 value448 value1 value2 = (output3032, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3033 value447 value1 value2 = (output3033, value1482, value1) := by
  rw [input3033_def, output3033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  try dsimp only
  rw [child3032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output3032_skip]
  kernel_rfl

theorem node3034_cond_eq
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value446 value1 value2 = (output914, value447, value1))
    (child3033 : Flapjack.WordAlloc.removeDeadStructural input3033 value447 value1 value2 = (output3033, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3034 value446 value1 value2 = (output3034, value1482, value1) := by
  rw [input3034_def, output3034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child914]
  try dsimp only
  rw [child3033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output914_skip, output3033_skip]
  kernel_rfl

theorem node3035_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value445 value1 value2 = (output913, value446, value1))
    (child3034 : Flapjack.WordAlloc.removeDeadStructural input3034 value446 value1 value2 = (output3034, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3035 value445 value1 value2 = (output3035, value1482, value1) := by
  rw [input3035_def, output3035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child3034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output3034_skip]
  kernel_rfl

theorem node3036_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value442 value1 value2 = (output912, value445, value1))
    (child3035 : Flapjack.WordAlloc.removeDeadStructural input3035 value445 value1 value2 = (output3035, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3036 value442 value1 value2 = (output3036, value1482, value1) := by
  rw [input3036_def, output3036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child3035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output3035_skip]
  kernel_rfl

theorem node3037_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value441 value1 value2 = (output907, value442, value1))
    (child3036 : Flapjack.WordAlloc.removeDeadStructural input3036 value442 value1 value2 = (output3036, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3037 value441 value1 value2 = (output3037, value1482, value1) := by
  rw [input3037_def, output3037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  try dsimp only
  rw [child3036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output907_skip, output3036_skip]
  kernel_rfl

theorem node3038_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value436 value1 value2 = (output906, value441, value1))
    (child3037 : Flapjack.WordAlloc.removeDeadStructural input3037 value441 value1 value2 = (output3037, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3038 value436 value1 value2 = (output3038, value1482, value1) := by
  rw [input3038_def, output3038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  try dsimp only
  rw [child3037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output906_skip, output3037_skip]
  kernel_rfl

theorem node3039_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value435 value1 value2 = (output897, value436, value1))
    (child3038 : Flapjack.WordAlloc.removeDeadStructural input3038 value436 value1 value2 = (output3038, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3039 value435 value1 value2 = (output3039, value1482, value1) := by
  rw [input3039_def, output3039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child3038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output3038_skip]
  kernel_rfl

theorem node3040_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value431 value1 value2 = (output896, value435, value1))
    (child3039 : Flapjack.WordAlloc.removeDeadStructural input3039 value435 value1 value2 = (output3039, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3040 value431 value1 value2 = (output3040, value1482, value1) := by
  rw [input3040_def, output3040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  try dsimp only
  rw [child3039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output3039_skip]
  kernel_rfl

theorem node3041_cond_eq
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value430 value1 value2 = (output889, value431, value1))
    (child3040 : Flapjack.WordAlloc.removeDeadStructural input3040 value431 value1 value2 = (output3040, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3041 value430 value1 value2 = (output3041, value1482, value1) := by
  rw [input3041_def, output3041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child889]
  try dsimp only
  rw [child3040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output889_skip, output3040_skip]
  kernel_rfl

theorem node3042_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value429 value1 value2 = (output888, value430, value1))
    (child3041 : Flapjack.WordAlloc.removeDeadStructural input3041 value430 value1 value2 = (output3041, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3042 value429 value1 value2 = (output3042, value1482, value1) := by
  rw [input3042_def, output3042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child3041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output3041_skip]
  kernel_rfl

theorem node3043_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value428 value1 value2 = (output887, value429, value1))
    (child3042 : Flapjack.WordAlloc.removeDeadStructural input3042 value429 value1 value2 = (output3042, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3043 value428 value1 value2 = (output3043, value1482, value1) := by
  rw [input3043_def, output3043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child3042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output3042_skip]
  kernel_rfl

theorem node3044_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value425 value1 value2 = (output886, value428, value1))
    (child3043 : Flapjack.WordAlloc.removeDeadStructural input3043 value428 value1 value2 = (output3043, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3044 value425 value1 value2 = (output3044, value1482, value1) := by
  rw [input3044_def, output3044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  try dsimp only
  rw [child3043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output3043_skip]
  kernel_rfl

theorem node3045_cond_eq
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value424 value1 value2 = (output881, value425, value1))
    (child3044 : Flapjack.WordAlloc.removeDeadStructural input3044 value425 value1 value2 = (output3044, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3045 value424 value1 value2 = (output3045, value1482, value1) := by
  rw [input3045_def, output3045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child881]
  try dsimp only
  rw [child3044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output881_skip, output3044_skip]
  kernel_rfl

theorem node3046_cond_eq
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value419 value1 value2 = (output880, value424, value1))
    (child3045 : Flapjack.WordAlloc.removeDeadStructural input3045 value424 value1 value2 = (output3045, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3046 value419 value1 value2 = (output3046, value1482, value1) := by
  rw [input3046_def, output3046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child880]
  try dsimp only
  rw [child3045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output880_skip, output3045_skip]
  kernel_rfl

theorem node3047_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value418 value1 value2 = (output871, value419, value1))
    (child3046 : Flapjack.WordAlloc.removeDeadStructural input3046 value419 value1 value2 = (output3046, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3047 value418 value1 value2 = (output3047, value1482, value1) := by
  rw [input3047_def, output3047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  try dsimp only
  rw [child3046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output871_skip, output3046_skip]
  kernel_rfl

theorem node3048_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value414 value1 value2 = (output870, value418, value1))
    (child3047 : Flapjack.WordAlloc.removeDeadStructural input3047 value418 value1 value2 = (output3047, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3048 value414 value1 value2 = (output3048, value1482, value1) := by
  rw [input3048_def, output3048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  try dsimp only
  rw [child3047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output870_skip, output3047_skip]
  kernel_rfl

theorem node3049_cond_eq
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value413 value1 value2 = (output863, value414, value1))
    (child3048 : Flapjack.WordAlloc.removeDeadStructural input3048 value414 value1 value2 = (output3048, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3049 value413 value1 value2 = (output3049, value1482, value1) := by
  rw [input3049_def, output3049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child863]
  try dsimp only
  rw [child3048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output863_skip, output3048_skip]
  kernel_rfl

theorem node3050_cond_eq
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value412 value1 value2 = (output862, value413, value1))
    (child3049 : Flapjack.WordAlloc.removeDeadStructural input3049 value413 value1 value2 = (output3049, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3050 value412 value1 value2 = (output3050, value1482, value1) := by
  rw [input3050_def, output3050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child862]
  try dsimp only
  rw [child3049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output862_skip, output3049_skip]
  kernel_rfl

theorem node3051_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value411 value1 value2 = (output861, value412, value1))
    (child3050 : Flapjack.WordAlloc.removeDeadStructural input3050 value412 value1 value2 = (output3050, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3051 value411 value1 value2 = (output3051, value1482, value1) := by
  rw [input3051_def, output3051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  try dsimp only
  rw [child3050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output3050_skip]
  kernel_rfl

theorem node3052_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value408 value1 value2 = (output860, value411, value1))
    (child3051 : Flapjack.WordAlloc.removeDeadStructural input3051 value411 value1 value2 = (output3051, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3052 value408 value1 value2 = (output3052, value1482, value1) := by
  rw [input3052_def, output3052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  try dsimp only
  rw [child3051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output3051_skip]
  kernel_rfl

theorem node3053_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value407 value1 value2 = (output855, value408, value1))
    (child3052 : Flapjack.WordAlloc.removeDeadStructural input3052 value408 value1 value2 = (output3052, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3053 value407 value1 value2 = (output3053, value1482, value1) := by
  rw [input3053_def, output3053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  try dsimp only
  rw [child3052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output3052_skip]
  kernel_rfl

theorem node3054_cond_eq
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value402 value1 value2 = (output854, value407, value1))
    (child3053 : Flapjack.WordAlloc.removeDeadStructural input3053 value407 value1 value2 = (output3053, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3054 value402 value1 value2 = (output3054, value1482, value1) := by
  rw [input3054_def, output3054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child854]
  try dsimp only
  rw [child3053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output854_skip, output3053_skip]
  kernel_rfl

theorem node3055_cond_eq
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value401 value1 value2 = (output845, value402, value1))
    (child3054 : Flapjack.WordAlloc.removeDeadStructural input3054 value402 value1 value2 = (output3054, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3055 value401 value1 value2 = (output3055, value1482, value1) := by
  rw [input3055_def, output3055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child845]
  try dsimp only
  rw [child3054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output845_skip, output3054_skip]
  kernel_rfl

theorem node3056_cond_eq
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value397 value1 value2 = (output844, value401, value1))
    (child3055 : Flapjack.WordAlloc.removeDeadStructural input3055 value401 value1 value2 = (output3055, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3056 value397 value1 value2 = (output3056, value1482, value1) := by
  rw [input3056_def, output3056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child844]
  try dsimp only
  rw [child3055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output844_skip, output3055_skip]
  kernel_rfl

theorem node3057_cond_eq
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value396 value1 value2 = (output837, value397, value1))
    (child3056 : Flapjack.WordAlloc.removeDeadStructural input3056 value397 value1 value2 = (output3056, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3057 value396 value1 value2 = (output3057, value1482, value1) := by
  rw [input3057_def, output3057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child837]
  try dsimp only
  rw [child3056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output837_skip, output3056_skip]
  kernel_rfl

theorem node3058_cond_eq
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value393 value1 value2 = (output836, value396, value1))
    (child3057 : Flapjack.WordAlloc.removeDeadStructural input3057 value396 value1 value2 = (output3057, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3058 value393 value1 value2 = (output3058, value1482, value1) := by
  rw [input3058_def, output3058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child836]
  try dsimp only
  rw [child3057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output836_skip, output3057_skip]
  kernel_rfl

theorem node3059_cond_eq
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value390 value1 value2 = (output831, value393, value1))
    (child3058 : Flapjack.WordAlloc.removeDeadStructural input3058 value393 value1 value2 = (output3058, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3059 value390 value1 value2 = (output3059, value1482, value1) := by
  rw [input3059_def, output3059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child831]
  try dsimp only
  rw [child3058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output831_skip, output3058_skip]
  kernel_rfl

theorem node3060_cond_eq
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value386 value1 value2 = (output826, value390, value1))
    (child3059 : Flapjack.WordAlloc.removeDeadStructural input3059 value390 value1 value2 = (output3059, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3060 value386 value1 value2 = (output3060, value1482, value1) := by
  rw [input3060_def, output3060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child826]
  try dsimp only
  rw [child3059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output826_skip, output3059_skip]
  kernel_rfl

theorem node3061_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value386 value1 value2 = (output819, value386, value1))
    (child3060 : Flapjack.WordAlloc.removeDeadStructural input3060 value386 value1 value2 = (output3060, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3061 value386 value1 value2 = (output3061, value1482, value1) := by
  rw [input3061_def, output3061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  try dsimp only
  rw [child3060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output3060_skip]
  kernel_rfl

theorem node3062_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value386 value1 value2 = (output818, value386, value1))
    (child3061 : Flapjack.WordAlloc.removeDeadStructural input3061 value386 value1 value2 = (output3061, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3062 value386 value1 value2 = (output3062, value1482, value1) := by
  rw [input3062_def, output3062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child3061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output3061_skip]
  kernel_rfl

theorem node3063_cond_eq
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value385 value1 value2 = (output817, value386, value1))
    (child3062 : Flapjack.WordAlloc.removeDeadStructural input3062 value386 value1 value2 = (output3062, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3063 value385 value1 value2 = (output3063, value1482, value1) := by
  rw [input3063_def, output3063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child817]
  try dsimp only
  rw [child3062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output817_skip, output3062_skip]
  kernel_rfl

theorem node3064_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value384 value1 value2 = (output816, value385, value1))
    (child3063 : Flapjack.WordAlloc.removeDeadStructural input3063 value385 value1 value2 = (output3063, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3064 value384 value1 value2 = (output3064, value1482, value1) := by
  rw [input3064_def, output3064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child3063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output3063_skip]
  kernel_rfl

theorem node3065_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value381 value1 value2 = (output815, value384, value1))
    (child3064 : Flapjack.WordAlloc.removeDeadStructural input3064 value384 value1 value2 = (output3064, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3065 value381 value1 value2 = (output3065, value1482, value1) := by
  rw [input3065_def, output3065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child3064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output3064_skip]
  kernel_rfl

theorem node3066_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value380 value1 value2 = (output810, value381, value1))
    (child3065 : Flapjack.WordAlloc.removeDeadStructural input3065 value381 value1 value2 = (output3065, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3066 value380 value1 value2 = (output3066, value1482, value1) := by
  rw [input3066_def, output3066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child3065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output3065_skip]
  kernel_rfl

theorem node3067_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value377 value1 value2 = (output809, value380, value1))
    (child3066 : Flapjack.WordAlloc.removeDeadStructural input3066 value380 value1 value2 = (output3066, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3067 value377 value1 value2 = (output3067, value1482, value1) := by
  rw [input3067_def, output3067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child3066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output3066_skip]
  kernel_rfl

theorem node3068_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value376 value1 value2 = (output804, value377, value1))
    (child3067 : Flapjack.WordAlloc.removeDeadStructural input3067 value377 value1 value2 = (output3067, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3068 value376 value1 value2 = (output3068, value1482, value1) := by
  rw [input3068_def, output3068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child3067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output3067_skip]
  kernel_rfl

theorem node3069_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value374 value1 value2 = (output803, value376, value1))
    (child3068 : Flapjack.WordAlloc.removeDeadStructural input3068 value376 value1 value2 = (output3068, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3069 value374 value1 value2 = (output3069, value1482, value1) := by
  rw [input3069_def, output3069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child3068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output3068_skip]
  kernel_rfl

theorem node3070_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value373 value1 value2 = (output800, value374, value1))
    (child3069 : Flapjack.WordAlloc.removeDeadStructural input3069 value374 value1 value2 = (output3069, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3070 value373 value1 value2 = (output3070, value1482, value1) := by
  rw [input3070_def, output3070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  try dsimp only
  rw [child3069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output3069_skip]
  kernel_rfl

theorem node3071_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value372 value1 value2 = (output799, value373, value1))
    (child3070 : Flapjack.WordAlloc.removeDeadStructural input3070 value373 value1 value2 = (output3070, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3071 value372 value1 value2 = (output3071, value1482, value1) := by
  rw [input3071_def, output3071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  try dsimp only
  rw [child3070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output799_skip, output3070_skip]
  kernel_rfl

#print axioms node3071_cond_eq
end InitECandidate.Proofs.DeadStages646.Parallel
