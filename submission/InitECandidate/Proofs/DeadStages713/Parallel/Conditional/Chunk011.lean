import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk011
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node2816_cond_eq
    (child2814 : Flapjack.WordAlloc.removeDeadStructural input2814 value1412 value1 value2 = (output2814, value1413, value1))
    (child2815 : Flapjack.WordAlloc.removeDeadStructural input2815 value1413 value1 value2 = (output2815, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2816 value1412 value1 value2 = (output2816, value5, value1) := by
  rw [input2816_def, output2816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2814]
  dsimp only
  rw [child2815]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2814_skip, output2815_skip]
  kernel_rfl

theorem node2817_cond_eq
    (child2813 : Flapjack.WordAlloc.removeDeadStructural input2813 value1411 value1 value2 = (output2813, value1412, value1))
    (child2816 : Flapjack.WordAlloc.removeDeadStructural input2816 value1412 value1 value2 = (output2816, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2817 value1411 value1 value2 = (output2817, value5, value1) := by
  rw [input2817_def, output2817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2813]
  dsimp only
  rw [child2816]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2813_skip, output2816_skip]
  kernel_rfl

theorem node2818_cond_eq
    (child2812 : Flapjack.WordAlloc.removeDeadStructural input2812 value1410 value1 value2 = (output2812, value1411, value1))
    (child2817 : Flapjack.WordAlloc.removeDeadStructural input2817 value1411 value1 value2 = (output2817, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2818 value1410 value1 value2 = (output2818, value5, value1) := by
  rw [input2818_def, output2818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2812]
  dsimp only
  rw [child2817]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2812_skip, output2817_skip]
  kernel_rfl

theorem node2819_cond_eq
    (child2811 : Flapjack.WordAlloc.removeDeadStructural input2811 value1408 value1 value2 = (output2811, value1410, value1))
    (child2818 : Flapjack.WordAlloc.removeDeadStructural input2818 value1410 value1 value2 = (output2818, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2819 value1408 value1 value2 = (output2819, value5, value1) := by
  rw [input2819_def, output2819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2811]
  dsimp only
  rw [child2818]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2811_skip, output2818_skip]
  kernel_rfl

theorem node2820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2820 value5 value1 value2 = (output2820, value1414, value1) := by
  rw [input2820_def, output2820_def]
  kernel_rfl

theorem node2821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2821 value1414 value1 value2 = (output2821, value1415, value1) := by
  rw [input2821_def, output2821_def]
  kernel_rfl

theorem node2822_cond_eq
    (child2820 : Flapjack.WordAlloc.removeDeadStructural input2820 value5 value1 value2 = (output2820, value1414, value1))
    (child2821 : Flapjack.WordAlloc.removeDeadStructural input2821 value1414 value1 value2 = (output2821, value1415, value1)) : Flapjack.WordAlloc.removeDeadStructural input2822 value5 value1 value2 = (output2822, value1415, value1) := by
  rw [input2822_def, output2822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2820]
  dsimp only
  rw [child2821]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2820_skip, output2821_skip]
  kernel_rfl

theorem node2823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2823 value1415 value1 value2 = (output2823, value1416, value1) := by
  rw [input2823_def, output2823_def]
  kernel_rfl

theorem node2824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2824 value1416 value1 value2 = (output2824, value1416, value1) := by
  rw [input2824_def, output2824_def]
  kernel_rfl

theorem node2825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2825 value1416 value1 value2 = (output2825, value1417, value1) := by
  rw [input2825_def, output2825_def]
  kernel_rfl

theorem node2826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2826 value1417 value1 value2 = (output2826, value1418, value1) := by
  rw [input2826_def, output2826_def]
  kernel_rfl

theorem node2827_cond_eq
    (child2825 : Flapjack.WordAlloc.removeDeadStructural input2825 value1416 value1 value2 = (output2825, value1417, value1))
    (child2826 : Flapjack.WordAlloc.removeDeadStructural input2826 value1417 value1 value2 = (output2826, value1418, value1)) : Flapjack.WordAlloc.removeDeadStructural input2827 value1416 value1 value2 = (output2827, value1418, value1) := by
  rw [input2827_def, output2827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2825]
  dsimp only
  rw [child2826]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2825_skip, output2826_skip]
  kernel_rfl

theorem node2828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2828 value1418 value1 value2 = (output2828, value1419, value1) := by
  rw [input2828_def, output2828_def]
  kernel_rfl

theorem node2829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2829 value1419 value1 value2 = (output2829, value1420, value1) := by
  rw [input2829_def, output2829_def]
  kernel_rfl

theorem node2830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2830 value1420 value1 value2 = (output2830, value1421, value1) := by
  rw [input2830_def, output2830_def]
  kernel_rfl

theorem node2831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2831 value1421 value1 value2 = (output2831, value5, value1) := by
  rw [input2831_def, output2831_def]
  kernel_rfl

theorem node2832_cond_eq
    (child2830 : Flapjack.WordAlloc.removeDeadStructural input2830 value1420 value1 value2 = (output2830, value1421, value1))
    (child2831 : Flapjack.WordAlloc.removeDeadStructural input2831 value1421 value1 value2 = (output2831, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2832 value1420 value1 value2 = (output2832, value5, value1) := by
  rw [input2832_def, output2832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2830]
  dsimp only
  rw [child2831]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2830_skip, output2831_skip]
  kernel_rfl

theorem node2833_cond_eq
    (child2829 : Flapjack.WordAlloc.removeDeadStructural input2829 value1419 value1 value2 = (output2829, value1420, value1))
    (child2832 : Flapjack.WordAlloc.removeDeadStructural input2832 value1420 value1 value2 = (output2832, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2833 value1419 value1 value2 = (output2833, value5, value1) := by
  rw [input2833_def, output2833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2829]
  dsimp only
  rw [child2832]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2829_skip, output2832_skip]
  kernel_rfl

theorem node2834_cond_eq
    (child2828 : Flapjack.WordAlloc.removeDeadStructural input2828 value1418 value1 value2 = (output2828, value1419, value1))
    (child2833 : Flapjack.WordAlloc.removeDeadStructural input2833 value1419 value1 value2 = (output2833, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2834 value1418 value1 value2 = (output2834, value5, value1) := by
  rw [input2834_def, output2834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2828]
  dsimp only
  rw [child2833]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2828_skip, output2833_skip]
  kernel_rfl

theorem node2835_cond_eq
    (child2827 : Flapjack.WordAlloc.removeDeadStructural input2827 value1416 value1 value2 = (output2827, value1418, value1))
    (child2834 : Flapjack.WordAlloc.removeDeadStructural input2834 value1418 value1 value2 = (output2834, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2835 value1416 value1 value2 = (output2835, value5, value1) := by
  rw [input2835_def, output2835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2827]
  dsimp only
  rw [child2834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2827_skip, output2834_skip]
  kernel_rfl

theorem node2836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2836 value5 value1 value2 = (output2836, value1422, value1) := by
  rw [input2836_def, output2836_def]
  kernel_rfl

theorem node2837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2837 value1422 value1 value2 = (output2837, value1423, value1) := by
  rw [input2837_def, output2837_def]
  kernel_rfl

theorem node2838_cond_eq
    (child2836 : Flapjack.WordAlloc.removeDeadStructural input2836 value5 value1 value2 = (output2836, value1422, value1))
    (child2837 : Flapjack.WordAlloc.removeDeadStructural input2837 value1422 value1 value2 = (output2837, value1423, value1)) : Flapjack.WordAlloc.removeDeadStructural input2838 value5 value1 value2 = (output2838, value1423, value1) := by
  rw [input2838_def, output2838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2836]
  dsimp only
  rw [child2837]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2836_skip, output2837_skip]
  kernel_rfl

theorem node2839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2839 value1423 value1 value2 = (output2839, value1424, value1) := by
  rw [input2839_def, output2839_def]
  kernel_rfl

theorem node2840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2840 value1424 value1 value2 = (output2840, value1424, value1) := by
  rw [input2840_def, output2840_def]
  kernel_rfl

theorem node2841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2841 value1424 value1 value2 = (output2841, value1425, value1) := by
  rw [input2841_def, output2841_def]
  kernel_rfl

theorem node2842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2842 value1425 value1 value2 = (output2842, value1426, value1) := by
  rw [input2842_def, output2842_def]
  kernel_rfl

theorem node2843_cond_eq
    (child2841 : Flapjack.WordAlloc.removeDeadStructural input2841 value1424 value1 value2 = (output2841, value1425, value1))
    (child2842 : Flapjack.WordAlloc.removeDeadStructural input2842 value1425 value1 value2 = (output2842, value1426, value1)) : Flapjack.WordAlloc.removeDeadStructural input2843 value1424 value1 value2 = (output2843, value1426, value1) := by
  rw [input2843_def, output2843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2841]
  dsimp only
  rw [child2842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2841_skip, output2842_skip]
  kernel_rfl

theorem node2844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2844 value1426 value1 value2 = (output2844, value1427, value1) := by
  rw [input2844_def, output2844_def]
  kernel_rfl

theorem node2845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2845 value1427 value1 value2 = (output2845, value1428, value1) := by
  rw [input2845_def, output2845_def]
  kernel_rfl

theorem node2846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2846 value1428 value1 value2 = (output2846, value1429, value1) := by
  rw [input2846_def, output2846_def]
  kernel_rfl

theorem node2847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2847 value1429 value1 value2 = (output2847, value5, value1) := by
  rw [input2847_def, output2847_def]
  kernel_rfl

theorem node2848_cond_eq
    (child2846 : Flapjack.WordAlloc.removeDeadStructural input2846 value1428 value1 value2 = (output2846, value1429, value1))
    (child2847 : Flapjack.WordAlloc.removeDeadStructural input2847 value1429 value1 value2 = (output2847, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2848 value1428 value1 value2 = (output2848, value5, value1) := by
  rw [input2848_def, output2848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2846]
  dsimp only
  rw [child2847]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2846_skip, output2847_skip]
  kernel_rfl

theorem node2849_cond_eq
    (child2845 : Flapjack.WordAlloc.removeDeadStructural input2845 value1427 value1 value2 = (output2845, value1428, value1))
    (child2848 : Flapjack.WordAlloc.removeDeadStructural input2848 value1428 value1 value2 = (output2848, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2849 value1427 value1 value2 = (output2849, value5, value1) := by
  rw [input2849_def, output2849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2845]
  dsimp only
  rw [child2848]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2845_skip, output2848_skip]
  kernel_rfl

theorem node2850_cond_eq
    (child2844 : Flapjack.WordAlloc.removeDeadStructural input2844 value1426 value1 value2 = (output2844, value1427, value1))
    (child2849 : Flapjack.WordAlloc.removeDeadStructural input2849 value1427 value1 value2 = (output2849, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2850 value1426 value1 value2 = (output2850, value5, value1) := by
  rw [input2850_def, output2850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2844]
  dsimp only
  rw [child2849]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2844_skip, output2849_skip]
  kernel_rfl

theorem node2851_cond_eq
    (child2843 : Flapjack.WordAlloc.removeDeadStructural input2843 value1424 value1 value2 = (output2843, value1426, value1))
    (child2850 : Flapjack.WordAlloc.removeDeadStructural input2850 value1426 value1 value2 = (output2850, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2851 value1424 value1 value2 = (output2851, value5, value1) := by
  rw [input2851_def, output2851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2843]
  dsimp only
  rw [child2850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2843_skip, output2850_skip]
  kernel_rfl

theorem node2852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2852 value5 value1 value2 = (output2852, value1430, value1) := by
  rw [input2852_def, output2852_def]
  kernel_rfl

theorem node2853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2853 value1430 value1 value2 = (output2853, value1431, value1) := by
  rw [input2853_def, output2853_def]
  kernel_rfl

theorem node2854_cond_eq
    (child2852 : Flapjack.WordAlloc.removeDeadStructural input2852 value5 value1 value2 = (output2852, value1430, value1))
    (child2853 : Flapjack.WordAlloc.removeDeadStructural input2853 value1430 value1 value2 = (output2853, value1431, value1)) : Flapjack.WordAlloc.removeDeadStructural input2854 value5 value1 value2 = (output2854, value1431, value1) := by
  rw [input2854_def, output2854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2852]
  dsimp only
  rw [child2853]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2852_skip, output2853_skip]
  kernel_rfl

theorem node2855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2855 value1431 value1 value2 = (output2855, value1432, value1) := by
  rw [input2855_def, output2855_def]
  kernel_rfl

theorem node2856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2856 value1432 value1 value2 = (output2856, value1432, value1) := by
  rw [input2856_def, output2856_def]
  kernel_rfl

theorem node2857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2857 value1432 value1 value2 = (output2857, value1433, value1) := by
  rw [input2857_def, output2857_def]
  kernel_rfl

theorem node2858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2858 value1433 value1 value2 = (output2858, value1434, value1) := by
  rw [input2858_def, output2858_def]
  kernel_rfl

theorem node2859_cond_eq
    (child2857 : Flapjack.WordAlloc.removeDeadStructural input2857 value1432 value1 value2 = (output2857, value1433, value1))
    (child2858 : Flapjack.WordAlloc.removeDeadStructural input2858 value1433 value1 value2 = (output2858, value1434, value1)) : Flapjack.WordAlloc.removeDeadStructural input2859 value1432 value1 value2 = (output2859, value1434, value1) := by
  rw [input2859_def, output2859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2857]
  dsimp only
  rw [child2858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2857_skip, output2858_skip]
  kernel_rfl

theorem node2860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2860 value1434 value1 value2 = (output2860, value1435, value1) := by
  rw [input2860_def, output2860_def]
  kernel_rfl

theorem node2861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2861 value1435 value1 value2 = (output2861, value1436, value1) := by
  rw [input2861_def, output2861_def]
  kernel_rfl

theorem node2862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2862 value1436 value1 value2 = (output2862, value1437, value1) := by
  rw [input2862_def, output2862_def]
  kernel_rfl

theorem node2863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2863 value1437 value1 value2 = (output2863, value5, value1) := by
  rw [input2863_def, output2863_def]
  kernel_rfl

theorem node2864_cond_eq
    (child2862 : Flapjack.WordAlloc.removeDeadStructural input2862 value1436 value1 value2 = (output2862, value1437, value1))
    (child2863 : Flapjack.WordAlloc.removeDeadStructural input2863 value1437 value1 value2 = (output2863, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2864 value1436 value1 value2 = (output2864, value5, value1) := by
  rw [input2864_def, output2864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2862]
  dsimp only
  rw [child2863]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2862_skip, output2863_skip]
  kernel_rfl

theorem node2865_cond_eq
    (child2861 : Flapjack.WordAlloc.removeDeadStructural input2861 value1435 value1 value2 = (output2861, value1436, value1))
    (child2864 : Flapjack.WordAlloc.removeDeadStructural input2864 value1436 value1 value2 = (output2864, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2865 value1435 value1 value2 = (output2865, value5, value1) := by
  rw [input2865_def, output2865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2861]
  dsimp only
  rw [child2864]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2861_skip, output2864_skip]
  kernel_rfl

theorem node2866_cond_eq
    (child2860 : Flapjack.WordAlloc.removeDeadStructural input2860 value1434 value1 value2 = (output2860, value1435, value1))
    (child2865 : Flapjack.WordAlloc.removeDeadStructural input2865 value1435 value1 value2 = (output2865, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2866 value1434 value1 value2 = (output2866, value5, value1) := by
  rw [input2866_def, output2866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2860]
  dsimp only
  rw [child2865]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2860_skip, output2865_skip]
  kernel_rfl

theorem node2867_cond_eq
    (child2859 : Flapjack.WordAlloc.removeDeadStructural input2859 value1432 value1 value2 = (output2859, value1434, value1))
    (child2866 : Flapjack.WordAlloc.removeDeadStructural input2866 value1434 value1 value2 = (output2866, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2867 value1432 value1 value2 = (output2867, value5, value1) := by
  rw [input2867_def, output2867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2859]
  dsimp only
  rw [child2866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2859_skip, output2866_skip]
  kernel_rfl

theorem node2868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2868 value5 value1 value2 = (output2868, value1438, value1) := by
  rw [input2868_def, output2868_def]
  kernel_rfl

theorem node2869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2869 value1438 value1 value2 = (output2869, value1439, value1) := by
  rw [input2869_def, output2869_def]
  kernel_rfl

theorem node2870_cond_eq
    (child2868 : Flapjack.WordAlloc.removeDeadStructural input2868 value5 value1 value2 = (output2868, value1438, value1))
    (child2869 : Flapjack.WordAlloc.removeDeadStructural input2869 value1438 value1 value2 = (output2869, value1439, value1)) : Flapjack.WordAlloc.removeDeadStructural input2870 value5 value1 value2 = (output2870, value1439, value1) := by
  rw [input2870_def, output2870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2868]
  dsimp only
  rw [child2869]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2868_skip, output2869_skip]
  kernel_rfl

theorem node2871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2871 value1439 value1 value2 = (output2871, value1440, value1) := by
  rw [input2871_def, output2871_def]
  kernel_rfl

theorem node2872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2872 value1440 value1 value2 = (output2872, value1440, value1) := by
  rw [input2872_def, output2872_def]
  kernel_rfl

theorem node2873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2873 value1440 value1 value2 = (output2873, value1441, value1) := by
  rw [input2873_def, output2873_def]
  kernel_rfl

theorem node2874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2874 value1441 value1 value2 = (output2874, value1442, value1) := by
  rw [input2874_def, output2874_def]
  kernel_rfl

theorem node2875_cond_eq
    (child2873 : Flapjack.WordAlloc.removeDeadStructural input2873 value1440 value1 value2 = (output2873, value1441, value1))
    (child2874 : Flapjack.WordAlloc.removeDeadStructural input2874 value1441 value1 value2 = (output2874, value1442, value1)) : Flapjack.WordAlloc.removeDeadStructural input2875 value1440 value1 value2 = (output2875, value1442, value1) := by
  rw [input2875_def, output2875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2873]
  dsimp only
  rw [child2874]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2873_skip, output2874_skip]
  kernel_rfl

theorem node2876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2876 value1442 value1 value2 = (output2876, value1443, value1) := by
  rw [input2876_def, output2876_def]
  kernel_rfl

theorem node2877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2877 value1443 value1 value2 = (output2877, value1444, value1) := by
  rw [input2877_def, output2877_def]
  kernel_rfl

theorem node2878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2878 value1444 value1 value2 = (output2878, value1445, value1) := by
  rw [input2878_def, output2878_def]
  kernel_rfl

theorem node2879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2879 value1445 value1 value2 = (output2879, value5, value1) := by
  rw [input2879_def, output2879_def]
  kernel_rfl

theorem node2880_cond_eq
    (child2878 : Flapjack.WordAlloc.removeDeadStructural input2878 value1444 value1 value2 = (output2878, value1445, value1))
    (child2879 : Flapjack.WordAlloc.removeDeadStructural input2879 value1445 value1 value2 = (output2879, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2880 value1444 value1 value2 = (output2880, value5, value1) := by
  rw [input2880_def, output2880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2878]
  dsimp only
  rw [child2879]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2878_skip, output2879_skip]
  kernel_rfl

theorem node2881_cond_eq
    (child2877 : Flapjack.WordAlloc.removeDeadStructural input2877 value1443 value1 value2 = (output2877, value1444, value1))
    (child2880 : Flapjack.WordAlloc.removeDeadStructural input2880 value1444 value1 value2 = (output2880, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2881 value1443 value1 value2 = (output2881, value5, value1) := by
  rw [input2881_def, output2881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2877]
  dsimp only
  rw [child2880]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2877_skip, output2880_skip]
  kernel_rfl

theorem node2882_cond_eq
    (child2876 : Flapjack.WordAlloc.removeDeadStructural input2876 value1442 value1 value2 = (output2876, value1443, value1))
    (child2881 : Flapjack.WordAlloc.removeDeadStructural input2881 value1443 value1 value2 = (output2881, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2882 value1442 value1 value2 = (output2882, value5, value1) := by
  rw [input2882_def, output2882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2876]
  dsimp only
  rw [child2881]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2876_skip, output2881_skip]
  kernel_rfl

theorem node2883_cond_eq
    (child2875 : Flapjack.WordAlloc.removeDeadStructural input2875 value1440 value1 value2 = (output2875, value1442, value1))
    (child2882 : Flapjack.WordAlloc.removeDeadStructural input2882 value1442 value1 value2 = (output2882, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2883 value1440 value1 value2 = (output2883, value5, value1) := by
  rw [input2883_def, output2883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2875]
  dsimp only
  rw [child2882]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2875_skip, output2882_skip]
  kernel_rfl

theorem node2884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2884 value5 value1 value2 = (output2884, value1446, value1) := by
  rw [input2884_def, output2884_def]
  kernel_rfl

theorem node2885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2885 value1446 value1 value2 = (output2885, value1447, value1) := by
  rw [input2885_def, output2885_def]
  kernel_rfl

theorem node2886_cond_eq
    (child2884 : Flapjack.WordAlloc.removeDeadStructural input2884 value5 value1 value2 = (output2884, value1446, value1))
    (child2885 : Flapjack.WordAlloc.removeDeadStructural input2885 value1446 value1 value2 = (output2885, value1447, value1)) : Flapjack.WordAlloc.removeDeadStructural input2886 value5 value1 value2 = (output2886, value1447, value1) := by
  rw [input2886_def, output2886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2884]
  dsimp only
  rw [child2885]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2884_skip, output2885_skip]
  kernel_rfl

theorem node2887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2887 value1447 value1 value2 = (output2887, value1448, value1) := by
  rw [input2887_def, output2887_def]
  kernel_rfl

theorem node2888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2888 value1448 value1 value2 = (output2888, value1448, value1) := by
  rw [input2888_def, output2888_def]
  kernel_rfl

theorem node2889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2889 value1448 value1 value2 = (output2889, value1449, value1) := by
  rw [input2889_def, output2889_def]
  kernel_rfl

theorem node2890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2890 value1449 value1 value2 = (output2890, value1450, value1) := by
  rw [input2890_def, output2890_def]
  kernel_rfl

theorem node2891_cond_eq
    (child2889 : Flapjack.WordAlloc.removeDeadStructural input2889 value1448 value1 value2 = (output2889, value1449, value1))
    (child2890 : Flapjack.WordAlloc.removeDeadStructural input2890 value1449 value1 value2 = (output2890, value1450, value1)) : Flapjack.WordAlloc.removeDeadStructural input2891 value1448 value1 value2 = (output2891, value1450, value1) := by
  rw [input2891_def, output2891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2889]
  dsimp only
  rw [child2890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2889_skip, output2890_skip]
  kernel_rfl

theorem node2892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2892 value1450 value1 value2 = (output2892, value1451, value1) := by
  rw [input2892_def, output2892_def]
  kernel_rfl

theorem node2893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2893 value1451 value1 value2 = (output2893, value1452, value1) := by
  rw [input2893_def, output2893_def]
  kernel_rfl

theorem node2894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2894 value1452 value1 value2 = (output2894, value1453, value1) := by
  rw [input2894_def, output2894_def]
  kernel_rfl

theorem node2895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2895 value1453 value1 value2 = (output2895, value5, value1) := by
  rw [input2895_def, output2895_def]
  kernel_rfl

theorem node2896_cond_eq
    (child2894 : Flapjack.WordAlloc.removeDeadStructural input2894 value1452 value1 value2 = (output2894, value1453, value1))
    (child2895 : Flapjack.WordAlloc.removeDeadStructural input2895 value1453 value1 value2 = (output2895, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2896 value1452 value1 value2 = (output2896, value5, value1) := by
  rw [input2896_def, output2896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2894]
  dsimp only
  rw [child2895]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2894_skip, output2895_skip]
  kernel_rfl

theorem node2897_cond_eq
    (child2893 : Flapjack.WordAlloc.removeDeadStructural input2893 value1451 value1 value2 = (output2893, value1452, value1))
    (child2896 : Flapjack.WordAlloc.removeDeadStructural input2896 value1452 value1 value2 = (output2896, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2897 value1451 value1 value2 = (output2897, value5, value1) := by
  rw [input2897_def, output2897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2893]
  dsimp only
  rw [child2896]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2893_skip, output2896_skip]
  kernel_rfl

theorem node2898_cond_eq
    (child2892 : Flapjack.WordAlloc.removeDeadStructural input2892 value1450 value1 value2 = (output2892, value1451, value1))
    (child2897 : Flapjack.WordAlloc.removeDeadStructural input2897 value1451 value1 value2 = (output2897, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2898 value1450 value1 value2 = (output2898, value5, value1) := by
  rw [input2898_def, output2898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2892]
  dsimp only
  rw [child2897]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2892_skip, output2897_skip]
  kernel_rfl

theorem node2899_cond_eq
    (child2891 : Flapjack.WordAlloc.removeDeadStructural input2891 value1448 value1 value2 = (output2891, value1450, value1))
    (child2898 : Flapjack.WordAlloc.removeDeadStructural input2898 value1450 value1 value2 = (output2898, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2899 value1448 value1 value2 = (output2899, value5, value1) := by
  rw [input2899_def, output2899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2891]
  dsimp only
  rw [child2898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2891_skip, output2898_skip]
  kernel_rfl

theorem node2900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2900 value5 value1 value2 = (output2900, value1454, value1) := by
  rw [input2900_def, output2900_def]
  kernel_rfl

theorem node2901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2901 value1454 value1 value2 = (output2901, value1455, value1) := by
  rw [input2901_def, output2901_def]
  kernel_rfl

theorem node2902_cond_eq
    (child2900 : Flapjack.WordAlloc.removeDeadStructural input2900 value5 value1 value2 = (output2900, value1454, value1))
    (child2901 : Flapjack.WordAlloc.removeDeadStructural input2901 value1454 value1 value2 = (output2901, value1455, value1)) : Flapjack.WordAlloc.removeDeadStructural input2902 value5 value1 value2 = (output2902, value1455, value1) := by
  rw [input2902_def, output2902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2900]
  dsimp only
  rw [child2901]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2900_skip, output2901_skip]
  kernel_rfl

theorem node2903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2903 value1455 value1 value2 = (output2903, value1456, value1) := by
  rw [input2903_def, output2903_def]
  kernel_rfl

theorem node2904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2904 value1456 value1 value2 = (output2904, value1456, value1) := by
  rw [input2904_def, output2904_def]
  kernel_rfl

theorem node2905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2905 value1456 value1 value2 = (output2905, value1457, value1) := by
  rw [input2905_def, output2905_def]
  kernel_rfl

theorem node2906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2906 value1457 value1 value2 = (output2906, value1458, value1) := by
  rw [input2906_def, output2906_def]
  kernel_rfl

theorem node2907_cond_eq
    (child2905 : Flapjack.WordAlloc.removeDeadStructural input2905 value1456 value1 value2 = (output2905, value1457, value1))
    (child2906 : Flapjack.WordAlloc.removeDeadStructural input2906 value1457 value1 value2 = (output2906, value1458, value1)) : Flapjack.WordAlloc.removeDeadStructural input2907 value1456 value1 value2 = (output2907, value1458, value1) := by
  rw [input2907_def, output2907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2905]
  dsimp only
  rw [child2906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2905_skip, output2906_skip]
  kernel_rfl

theorem node2908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2908 value1458 value1 value2 = (output2908, value1459, value1) := by
  rw [input2908_def, output2908_def]
  kernel_rfl

theorem node2909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2909 value1459 value1 value2 = (output2909, value1460, value1) := by
  rw [input2909_def, output2909_def]
  kernel_rfl

theorem node2910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2910 value1460 value1 value2 = (output2910, value1461, value1) := by
  rw [input2910_def, output2910_def]
  kernel_rfl

theorem node2911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2911 value1461 value1 value2 = (output2911, value5, value1) := by
  rw [input2911_def, output2911_def]
  kernel_rfl

theorem node2912_cond_eq
    (child2910 : Flapjack.WordAlloc.removeDeadStructural input2910 value1460 value1 value2 = (output2910, value1461, value1))
    (child2911 : Flapjack.WordAlloc.removeDeadStructural input2911 value1461 value1 value2 = (output2911, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2912 value1460 value1 value2 = (output2912, value5, value1) := by
  rw [input2912_def, output2912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2910]
  dsimp only
  rw [child2911]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2910_skip, output2911_skip]
  kernel_rfl

theorem node2913_cond_eq
    (child2909 : Flapjack.WordAlloc.removeDeadStructural input2909 value1459 value1 value2 = (output2909, value1460, value1))
    (child2912 : Flapjack.WordAlloc.removeDeadStructural input2912 value1460 value1 value2 = (output2912, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2913 value1459 value1 value2 = (output2913, value5, value1) := by
  rw [input2913_def, output2913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2909]
  dsimp only
  rw [child2912]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2909_skip, output2912_skip]
  kernel_rfl

theorem node2914_cond_eq
    (child2908 : Flapjack.WordAlloc.removeDeadStructural input2908 value1458 value1 value2 = (output2908, value1459, value1))
    (child2913 : Flapjack.WordAlloc.removeDeadStructural input2913 value1459 value1 value2 = (output2913, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2914 value1458 value1 value2 = (output2914, value5, value1) := by
  rw [input2914_def, output2914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2908]
  dsimp only
  rw [child2913]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2908_skip, output2913_skip]
  kernel_rfl

theorem node2915_cond_eq
    (child2907 : Flapjack.WordAlloc.removeDeadStructural input2907 value1456 value1 value2 = (output2907, value1458, value1))
    (child2914 : Flapjack.WordAlloc.removeDeadStructural input2914 value1458 value1 value2 = (output2914, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2915 value1456 value1 value2 = (output2915, value5, value1) := by
  rw [input2915_def, output2915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2907]
  dsimp only
  rw [child2914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2907_skip, output2914_skip]
  kernel_rfl

theorem node2916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2916 value5 value1 value2 = (output2916, value1462, value1) := by
  rw [input2916_def, output2916_def]
  kernel_rfl

theorem node2917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2917 value1462 value1 value2 = (output2917, value1463, value1) := by
  rw [input2917_def, output2917_def]
  kernel_rfl

theorem node2918_cond_eq
    (child2916 : Flapjack.WordAlloc.removeDeadStructural input2916 value5 value1 value2 = (output2916, value1462, value1))
    (child2917 : Flapjack.WordAlloc.removeDeadStructural input2917 value1462 value1 value2 = (output2917, value1463, value1)) : Flapjack.WordAlloc.removeDeadStructural input2918 value5 value1 value2 = (output2918, value1463, value1) := by
  rw [input2918_def, output2918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2916]
  dsimp only
  rw [child2917]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2916_skip, output2917_skip]
  kernel_rfl

theorem node2919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2919 value1463 value1 value2 = (output2919, value1464, value1) := by
  rw [input2919_def, output2919_def]
  kernel_rfl

theorem node2920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2920 value1464 value1 value2 = (output2920, value1464, value1) := by
  rw [input2920_def, output2920_def]
  kernel_rfl

theorem node2921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2921 value1464 value1 value2 = (output2921, value1465, value1) := by
  rw [input2921_def, output2921_def]
  kernel_rfl

theorem node2922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2922 value1465 value1 value2 = (output2922, value1466, value1) := by
  rw [input2922_def, output2922_def]
  kernel_rfl

theorem node2923_cond_eq
    (child2921 : Flapjack.WordAlloc.removeDeadStructural input2921 value1464 value1 value2 = (output2921, value1465, value1))
    (child2922 : Flapjack.WordAlloc.removeDeadStructural input2922 value1465 value1 value2 = (output2922, value1466, value1)) : Flapjack.WordAlloc.removeDeadStructural input2923 value1464 value1 value2 = (output2923, value1466, value1) := by
  rw [input2923_def, output2923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2921]
  dsimp only
  rw [child2922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2921_skip, output2922_skip]
  kernel_rfl

theorem node2924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2924 value1466 value1 value2 = (output2924, value1467, value1) := by
  rw [input2924_def, output2924_def]
  kernel_rfl

theorem node2925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2925 value1467 value1 value2 = (output2925, value1468, value1) := by
  rw [input2925_def, output2925_def]
  kernel_rfl

theorem node2926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2926 value1468 value1 value2 = (output2926, value1469, value1) := by
  rw [input2926_def, output2926_def]
  kernel_rfl

theorem node2927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2927 value1469 value1 value2 = (output2927, value5, value1) := by
  rw [input2927_def, output2927_def]
  kernel_rfl

theorem node2928_cond_eq
    (child2926 : Flapjack.WordAlloc.removeDeadStructural input2926 value1468 value1 value2 = (output2926, value1469, value1))
    (child2927 : Flapjack.WordAlloc.removeDeadStructural input2927 value1469 value1 value2 = (output2927, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2928 value1468 value1 value2 = (output2928, value5, value1) := by
  rw [input2928_def, output2928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2926]
  dsimp only
  rw [child2927]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2926_skip, output2927_skip]
  kernel_rfl

theorem node2929_cond_eq
    (child2925 : Flapjack.WordAlloc.removeDeadStructural input2925 value1467 value1 value2 = (output2925, value1468, value1))
    (child2928 : Flapjack.WordAlloc.removeDeadStructural input2928 value1468 value1 value2 = (output2928, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2929 value1467 value1 value2 = (output2929, value5, value1) := by
  rw [input2929_def, output2929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2925]
  dsimp only
  rw [child2928]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2925_skip, output2928_skip]
  kernel_rfl

theorem node2930_cond_eq
    (child2924 : Flapjack.WordAlloc.removeDeadStructural input2924 value1466 value1 value2 = (output2924, value1467, value1))
    (child2929 : Flapjack.WordAlloc.removeDeadStructural input2929 value1467 value1 value2 = (output2929, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2930 value1466 value1 value2 = (output2930, value5, value1) := by
  rw [input2930_def, output2930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2924]
  dsimp only
  rw [child2929]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2924_skip, output2929_skip]
  kernel_rfl

theorem node2931_cond_eq
    (child2923 : Flapjack.WordAlloc.removeDeadStructural input2923 value1464 value1 value2 = (output2923, value1466, value1))
    (child2930 : Flapjack.WordAlloc.removeDeadStructural input2930 value1466 value1 value2 = (output2930, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2931 value1464 value1 value2 = (output2931, value5, value1) := by
  rw [input2931_def, output2931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2923]
  dsimp only
  rw [child2930]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2923_skip, output2930_skip]
  kernel_rfl

theorem node2932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2932 value5 value1 value2 = (output2932, value1470, value1) := by
  rw [input2932_def, output2932_def]
  kernel_rfl

theorem node2933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2933 value1470 value1 value2 = (output2933, value1471, value1) := by
  rw [input2933_def, output2933_def]
  kernel_rfl

theorem node2934_cond_eq
    (child2932 : Flapjack.WordAlloc.removeDeadStructural input2932 value5 value1 value2 = (output2932, value1470, value1))
    (child2933 : Flapjack.WordAlloc.removeDeadStructural input2933 value1470 value1 value2 = (output2933, value1471, value1)) : Flapjack.WordAlloc.removeDeadStructural input2934 value5 value1 value2 = (output2934, value1471, value1) := by
  rw [input2934_def, output2934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2932]
  dsimp only
  rw [child2933]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2932_skip, output2933_skip]
  kernel_rfl

theorem node2935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2935 value1471 value1 value2 = (output2935, value1472, value1) := by
  rw [input2935_def, output2935_def]
  kernel_rfl

theorem node2936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2936 value1472 value1 value2 = (output2936, value1472, value1) := by
  rw [input2936_def, output2936_def]
  kernel_rfl

theorem node2937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2937 value1472 value1 value2 = (output2937, value1473, value1) := by
  rw [input2937_def, output2937_def]
  kernel_rfl

theorem node2938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2938 value1473 value1 value2 = (output2938, value1474, value1) := by
  rw [input2938_def, output2938_def]
  kernel_rfl

theorem node2939_cond_eq
    (child2937 : Flapjack.WordAlloc.removeDeadStructural input2937 value1472 value1 value2 = (output2937, value1473, value1))
    (child2938 : Flapjack.WordAlloc.removeDeadStructural input2938 value1473 value1 value2 = (output2938, value1474, value1)) : Flapjack.WordAlloc.removeDeadStructural input2939 value1472 value1 value2 = (output2939, value1474, value1) := by
  rw [input2939_def, output2939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2937]
  dsimp only
  rw [child2938]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2937_skip, output2938_skip]
  kernel_rfl

theorem node2940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2940 value1474 value1 value2 = (output2940, value1475, value1) := by
  rw [input2940_def, output2940_def]
  kernel_rfl

theorem node2941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2941 value1475 value1 value2 = (output2941, value1476, value1) := by
  rw [input2941_def, output2941_def]
  kernel_rfl

theorem node2942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2942 value1476 value1 value2 = (output2942, value1477, value1) := by
  rw [input2942_def, output2942_def]
  kernel_rfl

theorem node2943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2943 value1477 value1 value2 = (output2943, value5, value1) := by
  rw [input2943_def, output2943_def]
  kernel_rfl

theorem node2944_cond_eq
    (child2942 : Flapjack.WordAlloc.removeDeadStructural input2942 value1476 value1 value2 = (output2942, value1477, value1))
    (child2943 : Flapjack.WordAlloc.removeDeadStructural input2943 value1477 value1 value2 = (output2943, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2944 value1476 value1 value2 = (output2944, value5, value1) := by
  rw [input2944_def, output2944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2942]
  dsimp only
  rw [child2943]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2942_skip, output2943_skip]
  kernel_rfl

theorem node2945_cond_eq
    (child2941 : Flapjack.WordAlloc.removeDeadStructural input2941 value1475 value1 value2 = (output2941, value1476, value1))
    (child2944 : Flapjack.WordAlloc.removeDeadStructural input2944 value1476 value1 value2 = (output2944, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2945 value1475 value1 value2 = (output2945, value5, value1) := by
  rw [input2945_def, output2945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2941]
  dsimp only
  rw [child2944]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2941_skip, output2944_skip]
  kernel_rfl

theorem node2946_cond_eq
    (child2940 : Flapjack.WordAlloc.removeDeadStructural input2940 value1474 value1 value2 = (output2940, value1475, value1))
    (child2945 : Flapjack.WordAlloc.removeDeadStructural input2945 value1475 value1 value2 = (output2945, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2946 value1474 value1 value2 = (output2946, value5, value1) := by
  rw [input2946_def, output2946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2940]
  dsimp only
  rw [child2945]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2940_skip, output2945_skip]
  kernel_rfl

theorem node2947_cond_eq
    (child2939 : Flapjack.WordAlloc.removeDeadStructural input2939 value1472 value1 value2 = (output2939, value1474, value1))
    (child2946 : Flapjack.WordAlloc.removeDeadStructural input2946 value1474 value1 value2 = (output2946, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2947 value1472 value1 value2 = (output2947, value5, value1) := by
  rw [input2947_def, output2947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2939]
  dsimp only
  rw [child2946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2939_skip, output2946_skip]
  kernel_rfl

theorem node2948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2948 value5 value1 value2 = (output2948, value1478, value1) := by
  rw [input2948_def, output2948_def]
  kernel_rfl

theorem node2949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2949 value1478 value1 value2 = (output2949, value1479, value1) := by
  rw [input2949_def, output2949_def]
  kernel_rfl

theorem node2950_cond_eq
    (child2948 : Flapjack.WordAlloc.removeDeadStructural input2948 value5 value1 value2 = (output2948, value1478, value1))
    (child2949 : Flapjack.WordAlloc.removeDeadStructural input2949 value1478 value1 value2 = (output2949, value1479, value1)) : Flapjack.WordAlloc.removeDeadStructural input2950 value5 value1 value2 = (output2950, value1479, value1) := by
  rw [input2950_def, output2950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2948]
  dsimp only
  rw [child2949]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2948_skip, output2949_skip]
  kernel_rfl

theorem node2951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2951 value1479 value1 value2 = (output2951, value1480, value1) := by
  rw [input2951_def, output2951_def]
  kernel_rfl

theorem node2952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2952 value1480 value1 value2 = (output2952, value1480, value1) := by
  rw [input2952_def, output2952_def]
  kernel_rfl

theorem node2953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2953 value1480 value1 value2 = (output2953, value1481, value1) := by
  rw [input2953_def, output2953_def]
  kernel_rfl

theorem node2954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2954 value1481 value1 value2 = (output2954, value1482, value1) := by
  rw [input2954_def, output2954_def]
  kernel_rfl

theorem node2955_cond_eq
    (child2953 : Flapjack.WordAlloc.removeDeadStructural input2953 value1480 value1 value2 = (output2953, value1481, value1))
    (child2954 : Flapjack.WordAlloc.removeDeadStructural input2954 value1481 value1 value2 = (output2954, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2955 value1480 value1 value2 = (output2955, value1482, value1) := by
  rw [input2955_def, output2955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2953]
  dsimp only
  rw [child2954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2953_skip, output2954_skip]
  kernel_rfl

theorem node2956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2956 value1482 value1 value2 = (output2956, value1483, value1) := by
  rw [input2956_def, output2956_def]
  kernel_rfl

theorem node2957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2957 value1483 value1 value2 = (output2957, value1484, value1) := by
  rw [input2957_def, output2957_def]
  kernel_rfl

theorem node2958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2958 value1484 value1 value2 = (output2958, value1485, value1) := by
  rw [input2958_def, output2958_def]
  kernel_rfl

theorem node2959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2959 value1485 value1 value2 = (output2959, value5, value1) := by
  rw [input2959_def, output2959_def]
  kernel_rfl

theorem node2960_cond_eq
    (child2958 : Flapjack.WordAlloc.removeDeadStructural input2958 value1484 value1 value2 = (output2958, value1485, value1))
    (child2959 : Flapjack.WordAlloc.removeDeadStructural input2959 value1485 value1 value2 = (output2959, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2960 value1484 value1 value2 = (output2960, value5, value1) := by
  rw [input2960_def, output2960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2958]
  dsimp only
  rw [child2959]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2958_skip, output2959_skip]
  kernel_rfl

theorem node2961_cond_eq
    (child2957 : Flapjack.WordAlloc.removeDeadStructural input2957 value1483 value1 value2 = (output2957, value1484, value1))
    (child2960 : Flapjack.WordAlloc.removeDeadStructural input2960 value1484 value1 value2 = (output2960, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2961 value1483 value1 value2 = (output2961, value5, value1) := by
  rw [input2961_def, output2961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2957]
  dsimp only
  rw [child2960]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2957_skip, output2960_skip]
  kernel_rfl

theorem node2962_cond_eq
    (child2956 : Flapjack.WordAlloc.removeDeadStructural input2956 value1482 value1 value2 = (output2956, value1483, value1))
    (child2961 : Flapjack.WordAlloc.removeDeadStructural input2961 value1483 value1 value2 = (output2961, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2962 value1482 value1 value2 = (output2962, value5, value1) := by
  rw [input2962_def, output2962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2956]
  dsimp only
  rw [child2961]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2956_skip, output2961_skip]
  kernel_rfl

theorem node2963_cond_eq
    (child2955 : Flapjack.WordAlloc.removeDeadStructural input2955 value1480 value1 value2 = (output2955, value1482, value1))
    (child2962 : Flapjack.WordAlloc.removeDeadStructural input2962 value1482 value1 value2 = (output2962, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2963 value1480 value1 value2 = (output2963, value5, value1) := by
  rw [input2963_def, output2963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2955]
  dsimp only
  rw [child2962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2955_skip, output2962_skip]
  kernel_rfl

theorem node2964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2964 value5 value1 value2 = (output2964, value1486, value1) := by
  rw [input2964_def, output2964_def]
  kernel_rfl

theorem node2965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2965 value1486 value1 value2 = (output2965, value1487, value1) := by
  rw [input2965_def, output2965_def]
  kernel_rfl

theorem node2966_cond_eq
    (child2964 : Flapjack.WordAlloc.removeDeadStructural input2964 value5 value1 value2 = (output2964, value1486, value1))
    (child2965 : Flapjack.WordAlloc.removeDeadStructural input2965 value1486 value1 value2 = (output2965, value1487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2966 value5 value1 value2 = (output2966, value1487, value1) := by
  rw [input2966_def, output2966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2964]
  dsimp only
  rw [child2965]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2964_skip, output2965_skip]
  kernel_rfl

theorem node2967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2967 value1487 value1 value2 = (output2967, value1488, value1) := by
  rw [input2967_def, output2967_def]
  kernel_rfl

theorem node2968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2968 value1488 value1 value2 = (output2968, value1488, value1) := by
  rw [input2968_def, output2968_def]
  kernel_rfl

theorem node2969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2969 value1488 value1 value2 = (output2969, value1489, value1) := by
  rw [input2969_def, output2969_def]
  kernel_rfl

theorem node2970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2970 value1489 value1 value2 = (output2970, value1490, value1) := by
  rw [input2970_def, output2970_def]
  kernel_rfl

theorem node2971_cond_eq
    (child2969 : Flapjack.WordAlloc.removeDeadStructural input2969 value1488 value1 value2 = (output2969, value1489, value1))
    (child2970 : Flapjack.WordAlloc.removeDeadStructural input2970 value1489 value1 value2 = (output2970, value1490, value1)) : Flapjack.WordAlloc.removeDeadStructural input2971 value1488 value1 value2 = (output2971, value1490, value1) := by
  rw [input2971_def, output2971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2969]
  dsimp only
  rw [child2970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2969_skip, output2970_skip]
  kernel_rfl

theorem node2972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2972 value1490 value1 value2 = (output2972, value1491, value1) := by
  rw [input2972_def, output2972_def]
  kernel_rfl

theorem node2973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2973 value1491 value1 value2 = (output2973, value1492, value1) := by
  rw [input2973_def, output2973_def]
  kernel_rfl

theorem node2974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2974 value1492 value1 value2 = (output2974, value1493, value1) := by
  rw [input2974_def, output2974_def]
  kernel_rfl

theorem node2975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2975 value1493 value1 value2 = (output2975, value5, value1) := by
  rw [input2975_def, output2975_def]
  kernel_rfl

theorem node2976_cond_eq
    (child2974 : Flapjack.WordAlloc.removeDeadStructural input2974 value1492 value1 value2 = (output2974, value1493, value1))
    (child2975 : Flapjack.WordAlloc.removeDeadStructural input2975 value1493 value1 value2 = (output2975, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2976 value1492 value1 value2 = (output2976, value5, value1) := by
  rw [input2976_def, output2976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2974]
  dsimp only
  rw [child2975]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2974_skip, output2975_skip]
  kernel_rfl

theorem node2977_cond_eq
    (child2973 : Flapjack.WordAlloc.removeDeadStructural input2973 value1491 value1 value2 = (output2973, value1492, value1))
    (child2976 : Flapjack.WordAlloc.removeDeadStructural input2976 value1492 value1 value2 = (output2976, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2977 value1491 value1 value2 = (output2977, value5, value1) := by
  rw [input2977_def, output2977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2973]
  dsimp only
  rw [child2976]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2973_skip, output2976_skip]
  kernel_rfl

theorem node2978_cond_eq
    (child2972 : Flapjack.WordAlloc.removeDeadStructural input2972 value1490 value1 value2 = (output2972, value1491, value1))
    (child2977 : Flapjack.WordAlloc.removeDeadStructural input2977 value1491 value1 value2 = (output2977, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2978 value1490 value1 value2 = (output2978, value5, value1) := by
  rw [input2978_def, output2978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2972]
  dsimp only
  rw [child2977]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2972_skip, output2977_skip]
  kernel_rfl

theorem node2979_cond_eq
    (child2971 : Flapjack.WordAlloc.removeDeadStructural input2971 value1488 value1 value2 = (output2971, value1490, value1))
    (child2978 : Flapjack.WordAlloc.removeDeadStructural input2978 value1490 value1 value2 = (output2978, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2979 value1488 value1 value2 = (output2979, value5, value1) := by
  rw [input2979_def, output2979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2971]
  dsimp only
  rw [child2978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2971_skip, output2978_skip]
  kernel_rfl

theorem node2980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2980 value5 value1 value2 = (output2980, value1494, value1) := by
  rw [input2980_def, output2980_def]
  kernel_rfl

theorem node2981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2981 value1494 value1 value2 = (output2981, value1495, value1) := by
  rw [input2981_def, output2981_def]
  kernel_rfl

theorem node2982_cond_eq
    (child2980 : Flapjack.WordAlloc.removeDeadStructural input2980 value5 value1 value2 = (output2980, value1494, value1))
    (child2981 : Flapjack.WordAlloc.removeDeadStructural input2981 value1494 value1 value2 = (output2981, value1495, value1)) : Flapjack.WordAlloc.removeDeadStructural input2982 value5 value1 value2 = (output2982, value1495, value1) := by
  rw [input2982_def, output2982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2980]
  dsimp only
  rw [child2981]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2980_skip, output2981_skip]
  kernel_rfl

theorem node2983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2983 value1495 value1 value2 = (output2983, value1496, value1) := by
  rw [input2983_def, output2983_def]
  kernel_rfl

theorem node2984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2984 value1496 value1 value2 = (output2984, value1496, value1) := by
  rw [input2984_def, output2984_def]
  kernel_rfl

theorem node2985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2985 value1496 value1 value2 = (output2985, value1497, value1) := by
  rw [input2985_def, output2985_def]
  kernel_rfl

theorem node2986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2986 value1497 value1 value2 = (output2986, value1498, value1) := by
  rw [input2986_def, output2986_def]
  kernel_rfl

theorem node2987_cond_eq
    (child2985 : Flapjack.WordAlloc.removeDeadStructural input2985 value1496 value1 value2 = (output2985, value1497, value1))
    (child2986 : Flapjack.WordAlloc.removeDeadStructural input2986 value1497 value1 value2 = (output2986, value1498, value1)) : Flapjack.WordAlloc.removeDeadStructural input2987 value1496 value1 value2 = (output2987, value1498, value1) := by
  rw [input2987_def, output2987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2985]
  dsimp only
  rw [child2986]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2985_skip, output2986_skip]
  kernel_rfl

theorem node2988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2988 value1498 value1 value2 = (output2988, value1499, value1) := by
  rw [input2988_def, output2988_def]
  kernel_rfl

theorem node2989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2989 value1499 value1 value2 = (output2989, value1500, value1) := by
  rw [input2989_def, output2989_def]
  kernel_rfl

theorem node2990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2990 value1500 value1 value2 = (output2990, value1501, value1) := by
  rw [input2990_def, output2990_def]
  kernel_rfl

theorem node2991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2991 value1501 value1 value2 = (output2991, value5, value1) := by
  rw [input2991_def, output2991_def]
  kernel_rfl

theorem node2992_cond_eq
    (child2990 : Flapjack.WordAlloc.removeDeadStructural input2990 value1500 value1 value2 = (output2990, value1501, value1))
    (child2991 : Flapjack.WordAlloc.removeDeadStructural input2991 value1501 value1 value2 = (output2991, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2992 value1500 value1 value2 = (output2992, value5, value1) := by
  rw [input2992_def, output2992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2990]
  dsimp only
  rw [child2991]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2990_skip, output2991_skip]
  kernel_rfl

theorem node2993_cond_eq
    (child2989 : Flapjack.WordAlloc.removeDeadStructural input2989 value1499 value1 value2 = (output2989, value1500, value1))
    (child2992 : Flapjack.WordAlloc.removeDeadStructural input2992 value1500 value1 value2 = (output2992, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2993 value1499 value1 value2 = (output2993, value5, value1) := by
  rw [input2993_def, output2993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2989]
  dsimp only
  rw [child2992]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2989_skip, output2992_skip]
  kernel_rfl

theorem node2994_cond_eq
    (child2988 : Flapjack.WordAlloc.removeDeadStructural input2988 value1498 value1 value2 = (output2988, value1499, value1))
    (child2993 : Flapjack.WordAlloc.removeDeadStructural input2993 value1499 value1 value2 = (output2993, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2994 value1498 value1 value2 = (output2994, value5, value1) := by
  rw [input2994_def, output2994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2988]
  dsimp only
  rw [child2993]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2988_skip, output2993_skip]
  kernel_rfl

theorem node2995_cond_eq
    (child2987 : Flapjack.WordAlloc.removeDeadStructural input2987 value1496 value1 value2 = (output2987, value1498, value1))
    (child2994 : Flapjack.WordAlloc.removeDeadStructural input2994 value1498 value1 value2 = (output2994, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2995 value1496 value1 value2 = (output2995, value5, value1) := by
  rw [input2995_def, output2995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2987]
  dsimp only
  rw [child2994]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2987_skip, output2994_skip]
  kernel_rfl

theorem node2996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2996 value5 value1 value2 = (output2996, value1502, value1) := by
  rw [input2996_def, output2996_def]
  kernel_rfl

theorem node2997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2997 value1502 value1 value2 = (output2997, value1503, value1) := by
  rw [input2997_def, output2997_def]
  kernel_rfl

theorem node2998_cond_eq
    (child2996 : Flapjack.WordAlloc.removeDeadStructural input2996 value5 value1 value2 = (output2996, value1502, value1))
    (child2997 : Flapjack.WordAlloc.removeDeadStructural input2997 value1502 value1 value2 = (output2997, value1503, value1)) : Flapjack.WordAlloc.removeDeadStructural input2998 value5 value1 value2 = (output2998, value1503, value1) := by
  rw [input2998_def, output2998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2996]
  dsimp only
  rw [child2997]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2996_skip, output2997_skip]
  kernel_rfl

theorem node2999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2999 value1503 value1 value2 = (output2999, value1504, value1) := by
  rw [input2999_def, output2999_def]
  kernel_rfl

theorem node3000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3000 value1504 value1 value2 = (output3000, value1504, value1) := by
  rw [input3000_def, output3000_def]
  kernel_rfl

theorem node3001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3001 value1504 value1 value2 = (output3001, value1505, value1) := by
  rw [input3001_def, output3001_def]
  kernel_rfl

theorem node3002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3002 value1505 value1 value2 = (output3002, value1506, value1) := by
  rw [input3002_def, output3002_def]
  kernel_rfl

theorem node3003_cond_eq
    (child3001 : Flapjack.WordAlloc.removeDeadStructural input3001 value1504 value1 value2 = (output3001, value1505, value1))
    (child3002 : Flapjack.WordAlloc.removeDeadStructural input3002 value1505 value1 value2 = (output3002, value1506, value1)) : Flapjack.WordAlloc.removeDeadStructural input3003 value1504 value1 value2 = (output3003, value1506, value1) := by
  rw [input3003_def, output3003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3001]
  dsimp only
  rw [child3002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3001_skip, output3002_skip]
  kernel_rfl

theorem node3004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3004 value1506 value1 value2 = (output3004, value1507, value1) := by
  rw [input3004_def, output3004_def]
  kernel_rfl

theorem node3005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3005 value1507 value1 value2 = (output3005, value1508, value1) := by
  rw [input3005_def, output3005_def]
  kernel_rfl

theorem node3006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3006 value1508 value1 value2 = (output3006, value1509, value1) := by
  rw [input3006_def, output3006_def]
  kernel_rfl

theorem node3007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3007 value1509 value1 value2 = (output3007, value5, value1) := by
  rw [input3007_def, output3007_def]
  kernel_rfl

theorem node3008_cond_eq
    (child3006 : Flapjack.WordAlloc.removeDeadStructural input3006 value1508 value1 value2 = (output3006, value1509, value1))
    (child3007 : Flapjack.WordAlloc.removeDeadStructural input3007 value1509 value1 value2 = (output3007, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3008 value1508 value1 value2 = (output3008, value5, value1) := by
  rw [input3008_def, output3008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3006]
  dsimp only
  rw [child3007]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3006_skip, output3007_skip]
  kernel_rfl

theorem node3009_cond_eq
    (child3005 : Flapjack.WordAlloc.removeDeadStructural input3005 value1507 value1 value2 = (output3005, value1508, value1))
    (child3008 : Flapjack.WordAlloc.removeDeadStructural input3008 value1508 value1 value2 = (output3008, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3009 value1507 value1 value2 = (output3009, value5, value1) := by
  rw [input3009_def, output3009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3005]
  dsimp only
  rw [child3008]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3005_skip, output3008_skip]
  kernel_rfl

theorem node3010_cond_eq
    (child3004 : Flapjack.WordAlloc.removeDeadStructural input3004 value1506 value1 value2 = (output3004, value1507, value1))
    (child3009 : Flapjack.WordAlloc.removeDeadStructural input3009 value1507 value1 value2 = (output3009, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3010 value1506 value1 value2 = (output3010, value5, value1) := by
  rw [input3010_def, output3010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3004]
  dsimp only
  rw [child3009]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3004_skip, output3009_skip]
  kernel_rfl

theorem node3011_cond_eq
    (child3003 : Flapjack.WordAlloc.removeDeadStructural input3003 value1504 value1 value2 = (output3003, value1506, value1))
    (child3010 : Flapjack.WordAlloc.removeDeadStructural input3010 value1506 value1 value2 = (output3010, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3011 value1504 value1 value2 = (output3011, value5, value1) := by
  rw [input3011_def, output3011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3003]
  dsimp only
  rw [child3010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3003_skip, output3010_skip]
  kernel_rfl

theorem node3012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3012 value5 value1 value2 = (output3012, value1510, value1) := by
  rw [input3012_def, output3012_def]
  kernel_rfl

theorem node3013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3013 value1510 value1 value2 = (output3013, value1511, value1) := by
  rw [input3013_def, output3013_def]
  kernel_rfl

theorem node3014_cond_eq
    (child3012 : Flapjack.WordAlloc.removeDeadStructural input3012 value5 value1 value2 = (output3012, value1510, value1))
    (child3013 : Flapjack.WordAlloc.removeDeadStructural input3013 value1510 value1 value2 = (output3013, value1511, value1)) : Flapjack.WordAlloc.removeDeadStructural input3014 value5 value1 value2 = (output3014, value1511, value1) := by
  rw [input3014_def, output3014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3012]
  dsimp only
  rw [child3013]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3012_skip, output3013_skip]
  kernel_rfl

theorem node3015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3015 value1511 value1 value2 = (output3015, value1512, value1) := by
  rw [input3015_def, output3015_def]
  kernel_rfl

theorem node3016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3016 value1512 value1 value2 = (output3016, value1512, value1) := by
  rw [input3016_def, output3016_def]
  kernel_rfl

theorem node3017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3017 value1512 value1 value2 = (output3017, value1513, value1) := by
  rw [input3017_def, output3017_def]
  kernel_rfl

theorem node3018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3018 value1513 value1 value2 = (output3018, value1514, value1) := by
  rw [input3018_def, output3018_def]
  kernel_rfl

theorem node3019_cond_eq
    (child3017 : Flapjack.WordAlloc.removeDeadStructural input3017 value1512 value1 value2 = (output3017, value1513, value1))
    (child3018 : Flapjack.WordAlloc.removeDeadStructural input3018 value1513 value1 value2 = (output3018, value1514, value1)) : Flapjack.WordAlloc.removeDeadStructural input3019 value1512 value1 value2 = (output3019, value1514, value1) := by
  rw [input3019_def, output3019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3017]
  dsimp only
  rw [child3018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3017_skip, output3018_skip]
  kernel_rfl

theorem node3020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3020 value1514 value1 value2 = (output3020, value1515, value1) := by
  rw [input3020_def, output3020_def]
  kernel_rfl

theorem node3021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3021 value1515 value1 value2 = (output3021, value1516, value1) := by
  rw [input3021_def, output3021_def]
  kernel_rfl

theorem node3022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3022 value1516 value1 value2 = (output3022, value1517, value1) := by
  rw [input3022_def, output3022_def]
  kernel_rfl

theorem node3023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3023 value1517 value1 value2 = (output3023, value5, value1) := by
  rw [input3023_def, output3023_def]
  kernel_rfl

theorem node3024_cond_eq
    (child3022 : Flapjack.WordAlloc.removeDeadStructural input3022 value1516 value1 value2 = (output3022, value1517, value1))
    (child3023 : Flapjack.WordAlloc.removeDeadStructural input3023 value1517 value1 value2 = (output3023, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3024 value1516 value1 value2 = (output3024, value5, value1) := by
  rw [input3024_def, output3024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3022]
  dsimp only
  rw [child3023]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3022_skip, output3023_skip]
  kernel_rfl

theorem node3025_cond_eq
    (child3021 : Flapjack.WordAlloc.removeDeadStructural input3021 value1515 value1 value2 = (output3021, value1516, value1))
    (child3024 : Flapjack.WordAlloc.removeDeadStructural input3024 value1516 value1 value2 = (output3024, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3025 value1515 value1 value2 = (output3025, value5, value1) := by
  rw [input3025_def, output3025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3021]
  dsimp only
  rw [child3024]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3021_skip, output3024_skip]
  kernel_rfl

theorem node3026_cond_eq
    (child3020 : Flapjack.WordAlloc.removeDeadStructural input3020 value1514 value1 value2 = (output3020, value1515, value1))
    (child3025 : Flapjack.WordAlloc.removeDeadStructural input3025 value1515 value1 value2 = (output3025, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3026 value1514 value1 value2 = (output3026, value5, value1) := by
  rw [input3026_def, output3026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3020]
  dsimp only
  rw [child3025]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3020_skip, output3025_skip]
  kernel_rfl

theorem node3027_cond_eq
    (child3019 : Flapjack.WordAlloc.removeDeadStructural input3019 value1512 value1 value2 = (output3019, value1514, value1))
    (child3026 : Flapjack.WordAlloc.removeDeadStructural input3026 value1514 value1 value2 = (output3026, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3027 value1512 value1 value2 = (output3027, value5, value1) := by
  rw [input3027_def, output3027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3019]
  dsimp only
  rw [child3026]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3019_skip, output3026_skip]
  kernel_rfl

theorem node3028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3028 value5 value1 value2 = (output3028, value1518, value1) := by
  rw [input3028_def, output3028_def]
  kernel_rfl

theorem node3029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3029 value1518 value1 value2 = (output3029, value1519, value1) := by
  rw [input3029_def, output3029_def]
  kernel_rfl

theorem node3030_cond_eq
    (child3028 : Flapjack.WordAlloc.removeDeadStructural input3028 value5 value1 value2 = (output3028, value1518, value1))
    (child3029 : Flapjack.WordAlloc.removeDeadStructural input3029 value1518 value1 value2 = (output3029, value1519, value1)) : Flapjack.WordAlloc.removeDeadStructural input3030 value5 value1 value2 = (output3030, value1519, value1) := by
  rw [input3030_def, output3030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3028]
  dsimp only
  rw [child3029]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3028_skip, output3029_skip]
  kernel_rfl

theorem node3031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3031 value1519 value1 value2 = (output3031, value1520, value1) := by
  rw [input3031_def, output3031_def]
  kernel_rfl

theorem node3032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3032 value1520 value1 value2 = (output3032, value1520, value1) := by
  rw [input3032_def, output3032_def]
  kernel_rfl

theorem node3033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3033 value1520 value1 value2 = (output3033, value1521, value1) := by
  rw [input3033_def, output3033_def]
  kernel_rfl

theorem node3034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3034 value1521 value1 value2 = (output3034, value1522, value1) := by
  rw [input3034_def, output3034_def]
  kernel_rfl

theorem node3035_cond_eq
    (child3033 : Flapjack.WordAlloc.removeDeadStructural input3033 value1520 value1 value2 = (output3033, value1521, value1))
    (child3034 : Flapjack.WordAlloc.removeDeadStructural input3034 value1521 value1 value2 = (output3034, value1522, value1)) : Flapjack.WordAlloc.removeDeadStructural input3035 value1520 value1 value2 = (output3035, value1522, value1) := by
  rw [input3035_def, output3035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3033]
  dsimp only
  rw [child3034]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3033_skip, output3034_skip]
  kernel_rfl

theorem node3036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3036 value1522 value1 value2 = (output3036, value1523, value1) := by
  rw [input3036_def, output3036_def]
  kernel_rfl

theorem node3037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3037 value1523 value1 value2 = (output3037, value1524, value1) := by
  rw [input3037_def, output3037_def]
  kernel_rfl

theorem node3038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3038 value1524 value1 value2 = (output3038, value1525, value1) := by
  rw [input3038_def, output3038_def]
  kernel_rfl

theorem node3039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3039 value1525 value1 value2 = (output3039, value5, value1) := by
  rw [input3039_def, output3039_def]
  kernel_rfl

theorem node3040_cond_eq
    (child3038 : Flapjack.WordAlloc.removeDeadStructural input3038 value1524 value1 value2 = (output3038, value1525, value1))
    (child3039 : Flapjack.WordAlloc.removeDeadStructural input3039 value1525 value1 value2 = (output3039, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3040 value1524 value1 value2 = (output3040, value5, value1) := by
  rw [input3040_def, output3040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3038]
  dsimp only
  rw [child3039]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3038_skip, output3039_skip]
  kernel_rfl

theorem node3041_cond_eq
    (child3037 : Flapjack.WordAlloc.removeDeadStructural input3037 value1523 value1 value2 = (output3037, value1524, value1))
    (child3040 : Flapjack.WordAlloc.removeDeadStructural input3040 value1524 value1 value2 = (output3040, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3041 value1523 value1 value2 = (output3041, value5, value1) := by
  rw [input3041_def, output3041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3037]
  dsimp only
  rw [child3040]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3037_skip, output3040_skip]
  kernel_rfl

theorem node3042_cond_eq
    (child3036 : Flapjack.WordAlloc.removeDeadStructural input3036 value1522 value1 value2 = (output3036, value1523, value1))
    (child3041 : Flapjack.WordAlloc.removeDeadStructural input3041 value1523 value1 value2 = (output3041, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3042 value1522 value1 value2 = (output3042, value5, value1) := by
  rw [input3042_def, output3042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3036]
  dsimp only
  rw [child3041]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3036_skip, output3041_skip]
  kernel_rfl

theorem node3043_cond_eq
    (child3035 : Flapjack.WordAlloc.removeDeadStructural input3035 value1520 value1 value2 = (output3035, value1522, value1))
    (child3042 : Flapjack.WordAlloc.removeDeadStructural input3042 value1522 value1 value2 = (output3042, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3043 value1520 value1 value2 = (output3043, value5, value1) := by
  rw [input3043_def, output3043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3035]
  dsimp only
  rw [child3042]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3035_skip, output3042_skip]
  kernel_rfl

theorem node3044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3044 value5 value1 value2 = (output3044, value1526, value1) := by
  rw [input3044_def, output3044_def]
  kernel_rfl

theorem node3045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3045 value1526 value1 value2 = (output3045, value1527, value1) := by
  rw [input3045_def, output3045_def]
  kernel_rfl

theorem node3046_cond_eq
    (child3044 : Flapjack.WordAlloc.removeDeadStructural input3044 value5 value1 value2 = (output3044, value1526, value1))
    (child3045 : Flapjack.WordAlloc.removeDeadStructural input3045 value1526 value1 value2 = (output3045, value1527, value1)) : Flapjack.WordAlloc.removeDeadStructural input3046 value5 value1 value2 = (output3046, value1527, value1) := by
  rw [input3046_def, output3046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3044]
  dsimp only
  rw [child3045]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3044_skip, output3045_skip]
  kernel_rfl

theorem node3047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3047 value1527 value1 value2 = (output3047, value1528, value1) := by
  rw [input3047_def, output3047_def]
  kernel_rfl

theorem node3048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3048 value1528 value1 value2 = (output3048, value1528, value1) := by
  rw [input3048_def, output3048_def]
  kernel_rfl

theorem node3049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3049 value1528 value1 value2 = (output3049, value1529, value1) := by
  rw [input3049_def, output3049_def]
  kernel_rfl

theorem node3050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3050 value1529 value1 value2 = (output3050, value1530, value1) := by
  rw [input3050_def, output3050_def]
  kernel_rfl

theorem node3051_cond_eq
    (child3049 : Flapjack.WordAlloc.removeDeadStructural input3049 value1528 value1 value2 = (output3049, value1529, value1))
    (child3050 : Flapjack.WordAlloc.removeDeadStructural input3050 value1529 value1 value2 = (output3050, value1530, value1)) : Flapjack.WordAlloc.removeDeadStructural input3051 value1528 value1 value2 = (output3051, value1530, value1) := by
  rw [input3051_def, output3051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3049]
  dsimp only
  rw [child3050]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3049_skip, output3050_skip]
  kernel_rfl

theorem node3052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3052 value1530 value1 value2 = (output3052, value1531, value1) := by
  rw [input3052_def, output3052_def]
  kernel_rfl

theorem node3053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3053 value1531 value1 value2 = (output3053, value1532, value1) := by
  rw [input3053_def, output3053_def]
  kernel_rfl

theorem node3054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3054 value1532 value1 value2 = (output3054, value1533, value1) := by
  rw [input3054_def, output3054_def]
  kernel_rfl

theorem node3055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3055 value1533 value1 value2 = (output3055, value5, value1) := by
  rw [input3055_def, output3055_def]
  kernel_rfl

theorem node3056_cond_eq
    (child3054 : Flapjack.WordAlloc.removeDeadStructural input3054 value1532 value1 value2 = (output3054, value1533, value1))
    (child3055 : Flapjack.WordAlloc.removeDeadStructural input3055 value1533 value1 value2 = (output3055, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3056 value1532 value1 value2 = (output3056, value5, value1) := by
  rw [input3056_def, output3056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3054]
  dsimp only
  rw [child3055]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3054_skip, output3055_skip]
  kernel_rfl

theorem node3057_cond_eq
    (child3053 : Flapjack.WordAlloc.removeDeadStructural input3053 value1531 value1 value2 = (output3053, value1532, value1))
    (child3056 : Flapjack.WordAlloc.removeDeadStructural input3056 value1532 value1 value2 = (output3056, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3057 value1531 value1 value2 = (output3057, value5, value1) := by
  rw [input3057_def, output3057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3053]
  dsimp only
  rw [child3056]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3053_skip, output3056_skip]
  kernel_rfl

theorem node3058_cond_eq
    (child3052 : Flapjack.WordAlloc.removeDeadStructural input3052 value1530 value1 value2 = (output3052, value1531, value1))
    (child3057 : Flapjack.WordAlloc.removeDeadStructural input3057 value1531 value1 value2 = (output3057, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3058 value1530 value1 value2 = (output3058, value5, value1) := by
  rw [input3058_def, output3058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3052]
  dsimp only
  rw [child3057]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3052_skip, output3057_skip]
  kernel_rfl

theorem node3059_cond_eq
    (child3051 : Flapjack.WordAlloc.removeDeadStructural input3051 value1528 value1 value2 = (output3051, value1530, value1))
    (child3058 : Flapjack.WordAlloc.removeDeadStructural input3058 value1530 value1 value2 = (output3058, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3059 value1528 value1 value2 = (output3059, value5, value1) := by
  rw [input3059_def, output3059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3051]
  dsimp only
  rw [child3058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3051_skip, output3058_skip]
  kernel_rfl

theorem node3060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3060 value5 value1 value2 = (output3060, value1534, value1) := by
  rw [input3060_def, output3060_def]
  kernel_rfl

theorem node3061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3061 value1534 value1 value2 = (output3061, value1535, value1) := by
  rw [input3061_def, output3061_def]
  kernel_rfl

theorem node3062_cond_eq
    (child3060 : Flapjack.WordAlloc.removeDeadStructural input3060 value5 value1 value2 = (output3060, value1534, value1))
    (child3061 : Flapjack.WordAlloc.removeDeadStructural input3061 value1534 value1 value2 = (output3061, value1535, value1)) : Flapjack.WordAlloc.removeDeadStructural input3062 value5 value1 value2 = (output3062, value1535, value1) := by
  rw [input3062_def, output3062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3060]
  dsimp only
  rw [child3061]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3060_skip, output3061_skip]
  kernel_rfl

theorem node3063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3063 value1535 value1 value2 = (output3063, value1536, value1) := by
  rw [input3063_def, output3063_def]
  kernel_rfl

theorem node3064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3064 value1536 value1 value2 = (output3064, value1536, value1) := by
  rw [input3064_def, output3064_def]
  kernel_rfl

theorem node3065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3065 value1536 value1 value2 = (output3065, value1537, value1) := by
  rw [input3065_def, output3065_def]
  kernel_rfl

theorem node3066_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3066 value1537 value1 value2 = (output3066, value1538, value1) := by
  rw [input3066_def, output3066_def]
  kernel_rfl

theorem node3067_cond_eq
    (child3065 : Flapjack.WordAlloc.removeDeadStructural input3065 value1536 value1 value2 = (output3065, value1537, value1))
    (child3066 : Flapjack.WordAlloc.removeDeadStructural input3066 value1537 value1 value2 = (output3066, value1538, value1)) : Flapjack.WordAlloc.removeDeadStructural input3067 value1536 value1 value2 = (output3067, value1538, value1) := by
  rw [input3067_def, output3067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3065]
  dsimp only
  rw [child3066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3065_skip, output3066_skip]
  kernel_rfl

theorem node3068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3068 value1538 value1 value2 = (output3068, value1539, value1) := by
  rw [input3068_def, output3068_def]
  kernel_rfl

theorem node3069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3069 value1539 value1 value2 = (output3069, value1540, value1) := by
  rw [input3069_def, output3069_def]
  kernel_rfl

theorem node3070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3070 value1540 value1 value2 = (output3070, value1541, value1) := by
  rw [input3070_def, output3070_def]
  kernel_rfl

theorem node3071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3071 value1541 value1 value2 = (output3071, value5, value1) := by
  rw [input3071_def, output3071_def]
  kernel_rfl

#print axioms node3071_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
