import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk011
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages240.Parallel
theorem node2816_cond_eq
    (child2810 : Flapjack.WordAlloc.removeDeadStructural input2810 value1409 value1 value2 = (output2810, value1410, value1))
    (child2815 : Flapjack.WordAlloc.removeDeadStructural input2815 value1410 value1 value2 = (output2815, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2816 value1409 value1 value2 = (output2816, value5, value1) := by
  rw [input2816_def, output2816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2810]
  try dsimp only
  rw [child2815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2810_skip, output2815_skip]
  kernel_rfl

theorem node2817_cond_eq
    (child2809 : Flapjack.WordAlloc.removeDeadStructural input2809 value1408 value1 value2 = (output2809, value1409, value1))
    (child2816 : Flapjack.WordAlloc.removeDeadStructural input2816 value1409 value1 value2 = (output2816, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2817 value1408 value1 value2 = (output2817, value5, value1) := by
  rw [input2817_def, output2817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2809]
  try dsimp only
  rw [child2816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2809_skip, output2816_skip]
  kernel_rfl

theorem node2818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2818 value5 value1 value2 = (output2818, value1413, value1) := by
  rw [input2818_def, output2818_def]
  kernel_rfl

theorem node2819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2819 value1413 value1 value2 = (output2819, value1414, value1) := by
  rw [input2819_def, output2819_def]
  kernel_rfl

theorem node2820_cond_eq
    (child2818 : Flapjack.WordAlloc.removeDeadStructural input2818 value5 value1 value2 = (output2818, value1413, value1))
    (child2819 : Flapjack.WordAlloc.removeDeadStructural input2819 value1413 value1 value2 = (output2819, value1414, value1)) : Flapjack.WordAlloc.removeDeadStructural input2820 value5 value1 value2 = (output2820, value1414, value1) := by
  rw [input2820_def, output2820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2818]
  try dsimp only
  rw [child2819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2818_skip, output2819_skip]
  kernel_rfl

theorem node2821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2821 value1414 value1 value2 = (output2821, value1415, value1) := by
  rw [input2821_def, output2821_def]
  kernel_rfl

theorem node2822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2822 value1415 value1 value2 = (output2822, value1415, value1) := by
  rw [input2822_def, output2822_def]
  kernel_rfl

theorem node2823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2823 value1415 value1 value2 = (output2823, value1416, value1) := by
  rw [input2823_def, output2823_def]
  kernel_rfl

theorem node2824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2824 value1416 value1 value2 = (output2824, value1417, value1) := by
  rw [input2824_def, output2824_def]
  kernel_rfl

theorem node2825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2825 value1417 value1 value2 = (output2825, value1418, value1) := by
  rw [input2825_def, output2825_def]
  kernel_rfl

theorem node2826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2826 value1418 value1 value2 = (output2826, value1419, value1) := by
  rw [input2826_def, output2826_def]
  kernel_rfl

theorem node2827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2827 value1419 value1 value2 = (output2827, value5, value1) := by
  rw [input2827_def, output2827_def]
  kernel_rfl

theorem node2828_cond_eq
    (child2826 : Flapjack.WordAlloc.removeDeadStructural input2826 value1418 value1 value2 = (output2826, value1419, value1))
    (child2827 : Flapjack.WordAlloc.removeDeadStructural input2827 value1419 value1 value2 = (output2827, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2828 value1418 value1 value2 = (output2828, value5, value1) := by
  rw [input2828_def, output2828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2826]
  try dsimp only
  rw [child2827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2826_skip, output2827_skip]
  kernel_rfl

theorem node2829_cond_eq
    (child2825 : Flapjack.WordAlloc.removeDeadStructural input2825 value1417 value1 value2 = (output2825, value1418, value1))
    (child2828 : Flapjack.WordAlloc.removeDeadStructural input2828 value1418 value1 value2 = (output2828, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2829 value1417 value1 value2 = (output2829, value5, value1) := by
  rw [input2829_def, output2829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2825]
  try dsimp only
  rw [child2828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2825_skip, output2828_skip]
  kernel_rfl

theorem node2830_cond_eq
    (child2824 : Flapjack.WordAlloc.removeDeadStructural input2824 value1416 value1 value2 = (output2824, value1417, value1))
    (child2829 : Flapjack.WordAlloc.removeDeadStructural input2829 value1417 value1 value2 = (output2829, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2830 value1416 value1 value2 = (output2830, value5, value1) := by
  rw [input2830_def, output2830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2824]
  try dsimp only
  rw [child2829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2824_skip, output2829_skip]
  kernel_rfl

theorem node2831_cond_eq
    (child2823 : Flapjack.WordAlloc.removeDeadStructural input2823 value1415 value1 value2 = (output2823, value1416, value1))
    (child2830 : Flapjack.WordAlloc.removeDeadStructural input2830 value1416 value1 value2 = (output2830, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2831 value1415 value1 value2 = (output2831, value5, value1) := by
  rw [input2831_def, output2831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2823]
  try dsimp only
  rw [child2830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2823_skip, output2830_skip]
  kernel_rfl

theorem node2832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2832 value5 value1 value2 = (output2832, value1420, value1) := by
  rw [input2832_def, output2832_def]
  kernel_rfl

theorem node2833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2833 value1420 value1 value2 = (output2833, value1421, value1) := by
  rw [input2833_def, output2833_def]
  kernel_rfl

theorem node2834_cond_eq
    (child2832 : Flapjack.WordAlloc.removeDeadStructural input2832 value5 value1 value2 = (output2832, value1420, value1))
    (child2833 : Flapjack.WordAlloc.removeDeadStructural input2833 value1420 value1 value2 = (output2833, value1421, value1)) : Flapjack.WordAlloc.removeDeadStructural input2834 value5 value1 value2 = (output2834, value1421, value1) := by
  rw [input2834_def, output2834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2832]
  try dsimp only
  rw [child2833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2832_skip, output2833_skip]
  kernel_rfl

theorem node2835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2835 value1421 value1 value2 = (output2835, value1422, value1) := by
  rw [input2835_def, output2835_def]
  kernel_rfl

theorem node2836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2836 value1422 value1 value2 = (output2836, value1422, value1) := by
  rw [input2836_def, output2836_def]
  kernel_rfl

theorem node2837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2837 value1422 value1 value2 = (output2837, value1423, value1) := by
  rw [input2837_def, output2837_def]
  kernel_rfl

theorem node2838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2838 value1423 value1 value2 = (output2838, value1424, value1) := by
  rw [input2838_def, output2838_def]
  kernel_rfl

theorem node2839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2839 value1424 value1 value2 = (output2839, value1425, value1) := by
  rw [input2839_def, output2839_def]
  kernel_rfl

theorem node2840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2840 value1425 value1 value2 = (output2840, value1426, value1) := by
  rw [input2840_def, output2840_def]
  kernel_rfl

theorem node2841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2841 value1426 value1 value2 = (output2841, value5, value1) := by
  rw [input2841_def, output2841_def]
  kernel_rfl

theorem node2842_cond_eq
    (child2840 : Flapjack.WordAlloc.removeDeadStructural input2840 value1425 value1 value2 = (output2840, value1426, value1))
    (child2841 : Flapjack.WordAlloc.removeDeadStructural input2841 value1426 value1 value2 = (output2841, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2842 value1425 value1 value2 = (output2842, value5, value1) := by
  rw [input2842_def, output2842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2840]
  try dsimp only
  rw [child2841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2840_skip, output2841_skip]
  kernel_rfl

theorem node2843_cond_eq
    (child2839 : Flapjack.WordAlloc.removeDeadStructural input2839 value1424 value1 value2 = (output2839, value1425, value1))
    (child2842 : Flapjack.WordAlloc.removeDeadStructural input2842 value1425 value1 value2 = (output2842, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2843 value1424 value1 value2 = (output2843, value5, value1) := by
  rw [input2843_def, output2843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2839]
  try dsimp only
  rw [child2842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2839_skip, output2842_skip]
  kernel_rfl

theorem node2844_cond_eq
    (child2838 : Flapjack.WordAlloc.removeDeadStructural input2838 value1423 value1 value2 = (output2838, value1424, value1))
    (child2843 : Flapjack.WordAlloc.removeDeadStructural input2843 value1424 value1 value2 = (output2843, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2844 value1423 value1 value2 = (output2844, value5, value1) := by
  rw [input2844_def, output2844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2838]
  try dsimp only
  rw [child2843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2838_skip, output2843_skip]
  kernel_rfl

theorem node2845_cond_eq
    (child2837 : Flapjack.WordAlloc.removeDeadStructural input2837 value1422 value1 value2 = (output2837, value1423, value1))
    (child2844 : Flapjack.WordAlloc.removeDeadStructural input2844 value1423 value1 value2 = (output2844, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2845 value1422 value1 value2 = (output2845, value5, value1) := by
  rw [input2845_def, output2845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2837]
  try dsimp only
  rw [child2844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2837_skip, output2844_skip]
  kernel_rfl

theorem node2846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2846 value5 value1 value2 = (output2846, value1427, value1) := by
  rw [input2846_def, output2846_def]
  kernel_rfl

theorem node2847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2847 value1427 value1 value2 = (output2847, value1428, value1) := by
  rw [input2847_def, output2847_def]
  kernel_rfl

theorem node2848_cond_eq
    (child2846 : Flapjack.WordAlloc.removeDeadStructural input2846 value5 value1 value2 = (output2846, value1427, value1))
    (child2847 : Flapjack.WordAlloc.removeDeadStructural input2847 value1427 value1 value2 = (output2847, value1428, value1)) : Flapjack.WordAlloc.removeDeadStructural input2848 value5 value1 value2 = (output2848, value1428, value1) := by
  rw [input2848_def, output2848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2846]
  try dsimp only
  rw [child2847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2846_skip, output2847_skip]
  kernel_rfl

theorem node2849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2849 value1428 value1 value2 = (output2849, value1429, value1) := by
  rw [input2849_def, output2849_def]
  kernel_rfl

theorem node2850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2850 value1429 value1 value2 = (output2850, value1429, value1) := by
  rw [input2850_def, output2850_def]
  kernel_rfl

theorem node2851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2851 value1429 value1 value2 = (output2851, value1430, value1) := by
  rw [input2851_def, output2851_def]
  kernel_rfl

theorem node2852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2852 value1430 value1 value2 = (output2852, value1431, value1) := by
  rw [input2852_def, output2852_def]
  kernel_rfl

theorem node2853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2853 value1431 value1 value2 = (output2853, value1432, value1) := by
  rw [input2853_def, output2853_def]
  kernel_rfl

theorem node2854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2854 value1432 value1 value2 = (output2854, value1433, value1) := by
  rw [input2854_def, output2854_def]
  kernel_rfl

theorem node2855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2855 value1433 value1 value2 = (output2855, value5, value1) := by
  rw [input2855_def, output2855_def]
  kernel_rfl

theorem node2856_cond_eq
    (child2854 : Flapjack.WordAlloc.removeDeadStructural input2854 value1432 value1 value2 = (output2854, value1433, value1))
    (child2855 : Flapjack.WordAlloc.removeDeadStructural input2855 value1433 value1 value2 = (output2855, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2856 value1432 value1 value2 = (output2856, value5, value1) := by
  rw [input2856_def, output2856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2854]
  try dsimp only
  rw [child2855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2854_skip, output2855_skip]
  kernel_rfl

theorem node2857_cond_eq
    (child2853 : Flapjack.WordAlloc.removeDeadStructural input2853 value1431 value1 value2 = (output2853, value1432, value1))
    (child2856 : Flapjack.WordAlloc.removeDeadStructural input2856 value1432 value1 value2 = (output2856, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2857 value1431 value1 value2 = (output2857, value5, value1) := by
  rw [input2857_def, output2857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2853]
  try dsimp only
  rw [child2856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2853_skip, output2856_skip]
  kernel_rfl

theorem node2858_cond_eq
    (child2852 : Flapjack.WordAlloc.removeDeadStructural input2852 value1430 value1 value2 = (output2852, value1431, value1))
    (child2857 : Flapjack.WordAlloc.removeDeadStructural input2857 value1431 value1 value2 = (output2857, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2858 value1430 value1 value2 = (output2858, value5, value1) := by
  rw [input2858_def, output2858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2852]
  try dsimp only
  rw [child2857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2852_skip, output2857_skip]
  kernel_rfl

theorem node2859_cond_eq
    (child2851 : Flapjack.WordAlloc.removeDeadStructural input2851 value1429 value1 value2 = (output2851, value1430, value1))
    (child2858 : Flapjack.WordAlloc.removeDeadStructural input2858 value1430 value1 value2 = (output2858, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2859 value1429 value1 value2 = (output2859, value5, value1) := by
  rw [input2859_def, output2859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2851]
  try dsimp only
  rw [child2858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2851_skip, output2858_skip]
  kernel_rfl

theorem node2860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2860 value5 value1 value2 = (output2860, value1434, value1) := by
  rw [input2860_def, output2860_def]
  kernel_rfl

theorem node2861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2861 value1434 value1 value2 = (output2861, value1435, value1) := by
  rw [input2861_def, output2861_def]
  kernel_rfl

theorem node2862_cond_eq
    (child2860 : Flapjack.WordAlloc.removeDeadStructural input2860 value5 value1 value2 = (output2860, value1434, value1))
    (child2861 : Flapjack.WordAlloc.removeDeadStructural input2861 value1434 value1 value2 = (output2861, value1435, value1)) : Flapjack.WordAlloc.removeDeadStructural input2862 value5 value1 value2 = (output2862, value1435, value1) := by
  rw [input2862_def, output2862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2860]
  try dsimp only
  rw [child2861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2860_skip, output2861_skip]
  kernel_rfl

theorem node2863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2863 value1435 value1 value2 = (output2863, value1436, value1) := by
  rw [input2863_def, output2863_def]
  kernel_rfl

theorem node2864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2864 value1436 value1 value2 = (output2864, value1436, value1) := by
  rw [input2864_def, output2864_def]
  kernel_rfl

theorem node2865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2865 value1436 value1 value2 = (output2865, value1437, value1) := by
  rw [input2865_def, output2865_def]
  kernel_rfl

theorem node2866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2866 value1437 value1 value2 = (output2866, value1438, value1) := by
  rw [input2866_def, output2866_def]
  kernel_rfl

theorem node2867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2867 value1438 value1 value2 = (output2867, value1439, value1) := by
  rw [input2867_def, output2867_def]
  kernel_rfl

theorem node2868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2868 value1439 value1 value2 = (output2868, value1440, value1) := by
  rw [input2868_def, output2868_def]
  kernel_rfl

theorem node2869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2869 value1440 value1 value2 = (output2869, value5, value1) := by
  rw [input2869_def, output2869_def]
  kernel_rfl

theorem node2870_cond_eq
    (child2868 : Flapjack.WordAlloc.removeDeadStructural input2868 value1439 value1 value2 = (output2868, value1440, value1))
    (child2869 : Flapjack.WordAlloc.removeDeadStructural input2869 value1440 value1 value2 = (output2869, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2870 value1439 value1 value2 = (output2870, value5, value1) := by
  rw [input2870_def, output2870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2868]
  try dsimp only
  rw [child2869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2868_skip, output2869_skip]
  kernel_rfl

theorem node2871_cond_eq
    (child2867 : Flapjack.WordAlloc.removeDeadStructural input2867 value1438 value1 value2 = (output2867, value1439, value1))
    (child2870 : Flapjack.WordAlloc.removeDeadStructural input2870 value1439 value1 value2 = (output2870, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2871 value1438 value1 value2 = (output2871, value5, value1) := by
  rw [input2871_def, output2871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2867]
  try dsimp only
  rw [child2870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2867_skip, output2870_skip]
  kernel_rfl

theorem node2872_cond_eq
    (child2866 : Flapjack.WordAlloc.removeDeadStructural input2866 value1437 value1 value2 = (output2866, value1438, value1))
    (child2871 : Flapjack.WordAlloc.removeDeadStructural input2871 value1438 value1 value2 = (output2871, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2872 value1437 value1 value2 = (output2872, value5, value1) := by
  rw [input2872_def, output2872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2866]
  try dsimp only
  rw [child2871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2866_skip, output2871_skip]
  kernel_rfl

theorem node2873_cond_eq
    (child2865 : Flapjack.WordAlloc.removeDeadStructural input2865 value1436 value1 value2 = (output2865, value1437, value1))
    (child2872 : Flapjack.WordAlloc.removeDeadStructural input2872 value1437 value1 value2 = (output2872, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2873 value1436 value1 value2 = (output2873, value5, value1) := by
  rw [input2873_def, output2873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2865]
  try dsimp only
  rw [child2872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2865_skip, output2872_skip]
  kernel_rfl

theorem node2874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2874 value5 value1 value2 = (output2874, value1441, value1) := by
  rw [input2874_def, output2874_def]
  kernel_rfl

theorem node2875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2875 value1441 value1 value2 = (output2875, value1442, value1) := by
  rw [input2875_def, output2875_def]
  kernel_rfl

theorem node2876_cond_eq
    (child2874 : Flapjack.WordAlloc.removeDeadStructural input2874 value5 value1 value2 = (output2874, value1441, value1))
    (child2875 : Flapjack.WordAlloc.removeDeadStructural input2875 value1441 value1 value2 = (output2875, value1442, value1)) : Flapjack.WordAlloc.removeDeadStructural input2876 value5 value1 value2 = (output2876, value1442, value1) := by
  rw [input2876_def, output2876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2874]
  try dsimp only
  rw [child2875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2874_skip, output2875_skip]
  kernel_rfl

theorem node2877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2877 value1442 value1 value2 = (output2877, value1443, value1) := by
  rw [input2877_def, output2877_def]
  kernel_rfl

theorem node2878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2878 value1443 value1 value2 = (output2878, value1443, value1) := by
  rw [input2878_def, output2878_def]
  kernel_rfl

theorem node2879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2879 value1443 value1 value2 = (output2879, value1444, value1) := by
  rw [input2879_def, output2879_def]
  kernel_rfl

theorem node2880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2880 value1444 value1 value2 = (output2880, value1445, value1) := by
  rw [input2880_def, output2880_def]
  kernel_rfl

theorem node2881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2881 value1445 value1 value2 = (output2881, value1446, value1) := by
  rw [input2881_def, output2881_def]
  kernel_rfl

theorem node2882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2882 value1446 value1 value2 = (output2882, value1447, value1) := by
  rw [input2882_def, output2882_def]
  kernel_rfl

theorem node2883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2883 value1447 value1 value2 = (output2883, value5, value1) := by
  rw [input2883_def, output2883_def]
  kernel_rfl

theorem node2884_cond_eq
    (child2882 : Flapjack.WordAlloc.removeDeadStructural input2882 value1446 value1 value2 = (output2882, value1447, value1))
    (child2883 : Flapjack.WordAlloc.removeDeadStructural input2883 value1447 value1 value2 = (output2883, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2884 value1446 value1 value2 = (output2884, value5, value1) := by
  rw [input2884_def, output2884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2882]
  try dsimp only
  rw [child2883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2882_skip, output2883_skip]
  kernel_rfl

theorem node2885_cond_eq
    (child2881 : Flapjack.WordAlloc.removeDeadStructural input2881 value1445 value1 value2 = (output2881, value1446, value1))
    (child2884 : Flapjack.WordAlloc.removeDeadStructural input2884 value1446 value1 value2 = (output2884, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2885 value1445 value1 value2 = (output2885, value5, value1) := by
  rw [input2885_def, output2885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2881]
  try dsimp only
  rw [child2884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2881_skip, output2884_skip]
  kernel_rfl

theorem node2886_cond_eq
    (child2880 : Flapjack.WordAlloc.removeDeadStructural input2880 value1444 value1 value2 = (output2880, value1445, value1))
    (child2885 : Flapjack.WordAlloc.removeDeadStructural input2885 value1445 value1 value2 = (output2885, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2886 value1444 value1 value2 = (output2886, value5, value1) := by
  rw [input2886_def, output2886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2880]
  try dsimp only
  rw [child2885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2880_skip, output2885_skip]
  kernel_rfl

theorem node2887_cond_eq
    (child2879 : Flapjack.WordAlloc.removeDeadStructural input2879 value1443 value1 value2 = (output2879, value1444, value1))
    (child2886 : Flapjack.WordAlloc.removeDeadStructural input2886 value1444 value1 value2 = (output2886, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2887 value1443 value1 value2 = (output2887, value5, value1) := by
  rw [input2887_def, output2887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2879]
  try dsimp only
  rw [child2886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2879_skip, output2886_skip]
  kernel_rfl

theorem node2888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2888 value5 value1 value2 = (output2888, value1448, value1) := by
  rw [input2888_def, output2888_def]
  kernel_rfl

theorem node2889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2889 value1448 value1 value2 = (output2889, value1449, value1) := by
  rw [input2889_def, output2889_def]
  kernel_rfl

theorem node2890_cond_eq
    (child2888 : Flapjack.WordAlloc.removeDeadStructural input2888 value5 value1 value2 = (output2888, value1448, value1))
    (child2889 : Flapjack.WordAlloc.removeDeadStructural input2889 value1448 value1 value2 = (output2889, value1449, value1)) : Flapjack.WordAlloc.removeDeadStructural input2890 value5 value1 value2 = (output2890, value1449, value1) := by
  rw [input2890_def, output2890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2888]
  try dsimp only
  rw [child2889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2888_skip, output2889_skip]
  kernel_rfl

theorem node2891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2891 value1449 value1 value2 = (output2891, value1450, value1) := by
  rw [input2891_def, output2891_def]
  kernel_rfl

theorem node2892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2892 value1450 value1 value2 = (output2892, value1450, value1) := by
  rw [input2892_def, output2892_def]
  kernel_rfl

theorem node2893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2893 value1450 value1 value2 = (output2893, value1451, value1) := by
  rw [input2893_def, output2893_def]
  kernel_rfl

theorem node2894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2894 value1451 value1 value2 = (output2894, value1452, value1) := by
  rw [input2894_def, output2894_def]
  kernel_rfl

theorem node2895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2895 value1452 value1 value2 = (output2895, value1453, value1) := by
  rw [input2895_def, output2895_def]
  kernel_rfl

theorem node2896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2896 value1453 value1 value2 = (output2896, value1454, value1) := by
  rw [input2896_def, output2896_def]
  kernel_rfl

theorem node2897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2897 value1454 value1 value2 = (output2897, value5, value1) := by
  rw [input2897_def, output2897_def]
  kernel_rfl

theorem node2898_cond_eq
    (child2896 : Flapjack.WordAlloc.removeDeadStructural input2896 value1453 value1 value2 = (output2896, value1454, value1))
    (child2897 : Flapjack.WordAlloc.removeDeadStructural input2897 value1454 value1 value2 = (output2897, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2898 value1453 value1 value2 = (output2898, value5, value1) := by
  rw [input2898_def, output2898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2896]
  try dsimp only
  rw [child2897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2896_skip, output2897_skip]
  kernel_rfl

theorem node2899_cond_eq
    (child2895 : Flapjack.WordAlloc.removeDeadStructural input2895 value1452 value1 value2 = (output2895, value1453, value1))
    (child2898 : Flapjack.WordAlloc.removeDeadStructural input2898 value1453 value1 value2 = (output2898, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2899 value1452 value1 value2 = (output2899, value5, value1) := by
  rw [input2899_def, output2899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2895]
  try dsimp only
  rw [child2898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2895_skip, output2898_skip]
  kernel_rfl

theorem node2900_cond_eq
    (child2894 : Flapjack.WordAlloc.removeDeadStructural input2894 value1451 value1 value2 = (output2894, value1452, value1))
    (child2899 : Flapjack.WordAlloc.removeDeadStructural input2899 value1452 value1 value2 = (output2899, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2900 value1451 value1 value2 = (output2900, value5, value1) := by
  rw [input2900_def, output2900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2894]
  try dsimp only
  rw [child2899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2894_skip, output2899_skip]
  kernel_rfl

theorem node2901_cond_eq
    (child2893 : Flapjack.WordAlloc.removeDeadStructural input2893 value1450 value1 value2 = (output2893, value1451, value1))
    (child2900 : Flapjack.WordAlloc.removeDeadStructural input2900 value1451 value1 value2 = (output2900, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2901 value1450 value1 value2 = (output2901, value5, value1) := by
  rw [input2901_def, output2901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2893]
  try dsimp only
  rw [child2900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2893_skip, output2900_skip]
  kernel_rfl

theorem node2902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2902 value5 value1 value2 = (output2902, value1455, value1) := by
  rw [input2902_def, output2902_def]
  kernel_rfl

theorem node2903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2903 value1455 value1 value2 = (output2903, value1456, value1) := by
  rw [input2903_def, output2903_def]
  kernel_rfl

theorem node2904_cond_eq
    (child2902 : Flapjack.WordAlloc.removeDeadStructural input2902 value5 value1 value2 = (output2902, value1455, value1))
    (child2903 : Flapjack.WordAlloc.removeDeadStructural input2903 value1455 value1 value2 = (output2903, value1456, value1)) : Flapjack.WordAlloc.removeDeadStructural input2904 value5 value1 value2 = (output2904, value1456, value1) := by
  rw [input2904_def, output2904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2902]
  try dsimp only
  rw [child2903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2902_skip, output2903_skip]
  kernel_rfl

theorem node2905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2905 value1456 value1 value2 = (output2905, value1457, value1) := by
  rw [input2905_def, output2905_def]
  kernel_rfl

theorem node2906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2906 value1457 value1 value2 = (output2906, value1457, value1) := by
  rw [input2906_def, output2906_def]
  kernel_rfl

theorem node2907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2907 value1457 value1 value2 = (output2907, value1458, value1) := by
  rw [input2907_def, output2907_def]
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
  try dsimp only
  rw [child2911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2910_skip, output2911_skip]
  kernel_rfl

theorem node2913_cond_eq
    (child2909 : Flapjack.WordAlloc.removeDeadStructural input2909 value1459 value1 value2 = (output2909, value1460, value1))
    (child2912 : Flapjack.WordAlloc.removeDeadStructural input2912 value1460 value1 value2 = (output2912, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2913 value1459 value1 value2 = (output2913, value5, value1) := by
  rw [input2913_def, output2913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2909]
  try dsimp only
  rw [child2912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2909_skip, output2912_skip]
  kernel_rfl

theorem node2914_cond_eq
    (child2908 : Flapjack.WordAlloc.removeDeadStructural input2908 value1458 value1 value2 = (output2908, value1459, value1))
    (child2913 : Flapjack.WordAlloc.removeDeadStructural input2913 value1459 value1 value2 = (output2913, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2914 value1458 value1 value2 = (output2914, value5, value1) := by
  rw [input2914_def, output2914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2908]
  try dsimp only
  rw [child2913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2908_skip, output2913_skip]
  kernel_rfl

theorem node2915_cond_eq
    (child2907 : Flapjack.WordAlloc.removeDeadStructural input2907 value1457 value1 value2 = (output2907, value1458, value1))
    (child2914 : Flapjack.WordAlloc.removeDeadStructural input2914 value1458 value1 value2 = (output2914, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2915 value1457 value1 value2 = (output2915, value5, value1) := by
  rw [input2915_def, output2915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2907]
  try dsimp only
  rw [child2914]
  try dsimp only
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
  try dsimp only
  rw [child2917]
  try dsimp only
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

theorem node2923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2923 value1466 value1 value2 = (output2923, value1467, value1) := by
  rw [input2923_def, output2923_def]
  kernel_rfl

theorem node2924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2924 value1467 value1 value2 = (output2924, value1468, value1) := by
  rw [input2924_def, output2924_def]
  kernel_rfl

theorem node2925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2925 value1468 value1 value2 = (output2925, value5, value1) := by
  rw [input2925_def, output2925_def]
  kernel_rfl

theorem node2926_cond_eq
    (child2924 : Flapjack.WordAlloc.removeDeadStructural input2924 value1467 value1 value2 = (output2924, value1468, value1))
    (child2925 : Flapjack.WordAlloc.removeDeadStructural input2925 value1468 value1 value2 = (output2925, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2926 value1467 value1 value2 = (output2926, value5, value1) := by
  rw [input2926_def, output2926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2924]
  try dsimp only
  rw [child2925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2924_skip, output2925_skip]
  kernel_rfl

theorem node2927_cond_eq
    (child2923 : Flapjack.WordAlloc.removeDeadStructural input2923 value1466 value1 value2 = (output2923, value1467, value1))
    (child2926 : Flapjack.WordAlloc.removeDeadStructural input2926 value1467 value1 value2 = (output2926, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2927 value1466 value1 value2 = (output2927, value5, value1) := by
  rw [input2927_def, output2927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2923]
  try dsimp only
  rw [child2926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2923_skip, output2926_skip]
  kernel_rfl

theorem node2928_cond_eq
    (child2922 : Flapjack.WordAlloc.removeDeadStructural input2922 value1465 value1 value2 = (output2922, value1466, value1))
    (child2927 : Flapjack.WordAlloc.removeDeadStructural input2927 value1466 value1 value2 = (output2927, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2928 value1465 value1 value2 = (output2928, value5, value1) := by
  rw [input2928_def, output2928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2922]
  try dsimp only
  rw [child2927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2922_skip, output2927_skip]
  kernel_rfl

theorem node2929_cond_eq
    (child2921 : Flapjack.WordAlloc.removeDeadStructural input2921 value1464 value1 value2 = (output2921, value1465, value1))
    (child2928 : Flapjack.WordAlloc.removeDeadStructural input2928 value1465 value1 value2 = (output2928, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2929 value1464 value1 value2 = (output2929, value5, value1) := by
  rw [input2929_def, output2929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2921]
  try dsimp only
  rw [child2928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2921_skip, output2928_skip]
  kernel_rfl

theorem node2930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2930 value5 value1 value2 = (output2930, value1469, value1) := by
  rw [input2930_def, output2930_def]
  kernel_rfl

theorem node2931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2931 value1469 value1 value2 = (output2931, value1470, value1) := by
  rw [input2931_def, output2931_def]
  kernel_rfl

theorem node2932_cond_eq
    (child2930 : Flapjack.WordAlloc.removeDeadStructural input2930 value5 value1 value2 = (output2930, value1469, value1))
    (child2931 : Flapjack.WordAlloc.removeDeadStructural input2931 value1469 value1 value2 = (output2931, value1470, value1)) : Flapjack.WordAlloc.removeDeadStructural input2932 value5 value1 value2 = (output2932, value1470, value1) := by
  rw [input2932_def, output2932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2930]
  try dsimp only
  rw [child2931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2930_skip, output2931_skip]
  kernel_rfl

theorem node2933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2933 value1470 value1 value2 = (output2933, value1471, value1) := by
  rw [input2933_def, output2933_def]
  kernel_rfl

theorem node2934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2934 value1471 value1 value2 = (output2934, value1471, value1) := by
  rw [input2934_def, output2934_def]
  kernel_rfl

theorem node2935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2935 value1471 value1 value2 = (output2935, value1472, value1) := by
  rw [input2935_def, output2935_def]
  kernel_rfl

theorem node2936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2936 value1472 value1 value2 = (output2936, value1473, value1) := by
  rw [input2936_def, output2936_def]
  kernel_rfl

theorem node2937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2937 value1473 value1 value2 = (output2937, value1474, value1) := by
  rw [input2937_def, output2937_def]
  kernel_rfl

theorem node2938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2938 value1474 value1 value2 = (output2938, value1475, value1) := by
  rw [input2938_def, output2938_def]
  kernel_rfl

theorem node2939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2939 value1475 value1 value2 = (output2939, value5, value1) := by
  rw [input2939_def, output2939_def]
  kernel_rfl

theorem node2940_cond_eq
    (child2938 : Flapjack.WordAlloc.removeDeadStructural input2938 value1474 value1 value2 = (output2938, value1475, value1))
    (child2939 : Flapjack.WordAlloc.removeDeadStructural input2939 value1475 value1 value2 = (output2939, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2940 value1474 value1 value2 = (output2940, value5, value1) := by
  rw [input2940_def, output2940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2938]
  try dsimp only
  rw [child2939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2938_skip, output2939_skip]
  kernel_rfl

theorem node2941_cond_eq
    (child2937 : Flapjack.WordAlloc.removeDeadStructural input2937 value1473 value1 value2 = (output2937, value1474, value1))
    (child2940 : Flapjack.WordAlloc.removeDeadStructural input2940 value1474 value1 value2 = (output2940, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2941 value1473 value1 value2 = (output2941, value5, value1) := by
  rw [input2941_def, output2941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2937]
  try dsimp only
  rw [child2940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2937_skip, output2940_skip]
  kernel_rfl

theorem node2942_cond_eq
    (child2936 : Flapjack.WordAlloc.removeDeadStructural input2936 value1472 value1 value2 = (output2936, value1473, value1))
    (child2941 : Flapjack.WordAlloc.removeDeadStructural input2941 value1473 value1 value2 = (output2941, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2942 value1472 value1 value2 = (output2942, value5, value1) := by
  rw [input2942_def, output2942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2936]
  try dsimp only
  rw [child2941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2936_skip, output2941_skip]
  kernel_rfl

theorem node2943_cond_eq
    (child2935 : Flapjack.WordAlloc.removeDeadStructural input2935 value1471 value1 value2 = (output2935, value1472, value1))
    (child2942 : Flapjack.WordAlloc.removeDeadStructural input2942 value1472 value1 value2 = (output2942, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2943 value1471 value1 value2 = (output2943, value5, value1) := by
  rw [input2943_def, output2943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2935]
  try dsimp only
  rw [child2942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2935_skip, output2942_skip]
  kernel_rfl

theorem node2944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2944 value5 value1 value2 = (output2944, value1476, value1) := by
  rw [input2944_def, output2944_def]
  kernel_rfl

theorem node2945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2945 value1476 value1 value2 = (output2945, value1477, value1) := by
  rw [input2945_def, output2945_def]
  kernel_rfl

theorem node2946_cond_eq
    (child2944 : Flapjack.WordAlloc.removeDeadStructural input2944 value5 value1 value2 = (output2944, value1476, value1))
    (child2945 : Flapjack.WordAlloc.removeDeadStructural input2945 value1476 value1 value2 = (output2945, value1477, value1)) : Flapjack.WordAlloc.removeDeadStructural input2946 value5 value1 value2 = (output2946, value1477, value1) := by
  rw [input2946_def, output2946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2944]
  try dsimp only
  rw [child2945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2944_skip, output2945_skip]
  kernel_rfl

theorem node2947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2947 value1477 value1 value2 = (output2947, value1478, value1) := by
  rw [input2947_def, output2947_def]
  kernel_rfl

theorem node2948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2948 value1478 value1 value2 = (output2948, value1478, value1) := by
  rw [input2948_def, output2948_def]
  kernel_rfl

theorem node2949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2949 value1478 value1 value2 = (output2949, value1479, value1) := by
  rw [input2949_def, output2949_def]
  kernel_rfl

theorem node2950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2950 value1479 value1 value2 = (output2950, value1480, value1) := by
  rw [input2950_def, output2950_def]
  kernel_rfl

theorem node2951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2951 value1480 value1 value2 = (output2951, value1481, value1) := by
  rw [input2951_def, output2951_def]
  kernel_rfl

theorem node2952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2952 value1481 value1 value2 = (output2952, value1482, value1) := by
  rw [input2952_def, output2952_def]
  kernel_rfl

theorem node2953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2953 value1482 value1 value2 = (output2953, value5, value1) := by
  rw [input2953_def, output2953_def]
  kernel_rfl

theorem node2954_cond_eq
    (child2952 : Flapjack.WordAlloc.removeDeadStructural input2952 value1481 value1 value2 = (output2952, value1482, value1))
    (child2953 : Flapjack.WordAlloc.removeDeadStructural input2953 value1482 value1 value2 = (output2953, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2954 value1481 value1 value2 = (output2954, value5, value1) := by
  rw [input2954_def, output2954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2952]
  try dsimp only
  rw [child2953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2952_skip, output2953_skip]
  kernel_rfl

theorem node2955_cond_eq
    (child2951 : Flapjack.WordAlloc.removeDeadStructural input2951 value1480 value1 value2 = (output2951, value1481, value1))
    (child2954 : Flapjack.WordAlloc.removeDeadStructural input2954 value1481 value1 value2 = (output2954, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2955 value1480 value1 value2 = (output2955, value5, value1) := by
  rw [input2955_def, output2955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2951]
  try dsimp only
  rw [child2954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2951_skip, output2954_skip]
  kernel_rfl

theorem node2956_cond_eq
    (child2950 : Flapjack.WordAlloc.removeDeadStructural input2950 value1479 value1 value2 = (output2950, value1480, value1))
    (child2955 : Flapjack.WordAlloc.removeDeadStructural input2955 value1480 value1 value2 = (output2955, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2956 value1479 value1 value2 = (output2956, value5, value1) := by
  rw [input2956_def, output2956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2950]
  try dsimp only
  rw [child2955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2950_skip, output2955_skip]
  kernel_rfl

theorem node2957_cond_eq
    (child2949 : Flapjack.WordAlloc.removeDeadStructural input2949 value1478 value1 value2 = (output2949, value1479, value1))
    (child2956 : Flapjack.WordAlloc.removeDeadStructural input2956 value1479 value1 value2 = (output2956, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2957 value1478 value1 value2 = (output2957, value5, value1) := by
  rw [input2957_def, output2957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2949]
  try dsimp only
  rw [child2956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2949_skip, output2956_skip]
  kernel_rfl

theorem node2958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2958 value5 value1 value2 = (output2958, value1483, value1) := by
  rw [input2958_def, output2958_def]
  kernel_rfl

theorem node2959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2959 value1483 value1 value2 = (output2959, value1484, value1) := by
  rw [input2959_def, output2959_def]
  kernel_rfl

theorem node2960_cond_eq
    (child2958 : Flapjack.WordAlloc.removeDeadStructural input2958 value5 value1 value2 = (output2958, value1483, value1))
    (child2959 : Flapjack.WordAlloc.removeDeadStructural input2959 value1483 value1 value2 = (output2959, value1484, value1)) : Flapjack.WordAlloc.removeDeadStructural input2960 value5 value1 value2 = (output2960, value1484, value1) := by
  rw [input2960_def, output2960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2958]
  try dsimp only
  rw [child2959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2958_skip, output2959_skip]
  kernel_rfl

theorem node2961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2961 value1484 value1 value2 = (output2961, value1485, value1) := by
  rw [input2961_def, output2961_def]
  kernel_rfl

theorem node2962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2962 value1485 value1 value2 = (output2962, value1485, value1) := by
  rw [input2962_def, output2962_def]
  kernel_rfl

theorem node2963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2963 value1485 value1 value2 = (output2963, value1486, value1) := by
  rw [input2963_def, output2963_def]
  kernel_rfl

theorem node2964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2964 value1486 value1 value2 = (output2964, value1487, value1) := by
  rw [input2964_def, output2964_def]
  kernel_rfl

theorem node2965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2965 value1487 value1 value2 = (output2965, value1488, value1) := by
  rw [input2965_def, output2965_def]
  kernel_rfl

theorem node2966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2966 value1488 value1 value2 = (output2966, value1489, value1) := by
  rw [input2966_def, output2966_def]
  kernel_rfl

theorem node2967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2967 value1489 value1 value2 = (output2967, value5, value1) := by
  rw [input2967_def, output2967_def]
  kernel_rfl

theorem node2968_cond_eq
    (child2966 : Flapjack.WordAlloc.removeDeadStructural input2966 value1488 value1 value2 = (output2966, value1489, value1))
    (child2967 : Flapjack.WordAlloc.removeDeadStructural input2967 value1489 value1 value2 = (output2967, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2968 value1488 value1 value2 = (output2968, value5, value1) := by
  rw [input2968_def, output2968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2966]
  try dsimp only
  rw [child2967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2966_skip, output2967_skip]
  kernel_rfl

theorem node2969_cond_eq
    (child2965 : Flapjack.WordAlloc.removeDeadStructural input2965 value1487 value1 value2 = (output2965, value1488, value1))
    (child2968 : Flapjack.WordAlloc.removeDeadStructural input2968 value1488 value1 value2 = (output2968, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2969 value1487 value1 value2 = (output2969, value5, value1) := by
  rw [input2969_def, output2969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2965]
  try dsimp only
  rw [child2968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2965_skip, output2968_skip]
  kernel_rfl

theorem node2970_cond_eq
    (child2964 : Flapjack.WordAlloc.removeDeadStructural input2964 value1486 value1 value2 = (output2964, value1487, value1))
    (child2969 : Flapjack.WordAlloc.removeDeadStructural input2969 value1487 value1 value2 = (output2969, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2970 value1486 value1 value2 = (output2970, value5, value1) := by
  rw [input2970_def, output2970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2964]
  try dsimp only
  rw [child2969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2964_skip, output2969_skip]
  kernel_rfl

theorem node2971_cond_eq
    (child2963 : Flapjack.WordAlloc.removeDeadStructural input2963 value1485 value1 value2 = (output2963, value1486, value1))
    (child2970 : Flapjack.WordAlloc.removeDeadStructural input2970 value1486 value1 value2 = (output2970, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2971 value1485 value1 value2 = (output2971, value5, value1) := by
  rw [input2971_def, output2971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2963]
  try dsimp only
  rw [child2970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2963_skip, output2970_skip]
  kernel_rfl

theorem node2972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2972 value5 value1 value2 = (output2972, value1490, value1) := by
  rw [input2972_def, output2972_def]
  kernel_rfl

theorem node2973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2973 value1490 value1 value2 = (output2973, value1491, value1) := by
  rw [input2973_def, output2973_def]
  kernel_rfl

theorem node2974_cond_eq
    (child2972 : Flapjack.WordAlloc.removeDeadStructural input2972 value5 value1 value2 = (output2972, value1490, value1))
    (child2973 : Flapjack.WordAlloc.removeDeadStructural input2973 value1490 value1 value2 = (output2973, value1491, value1)) : Flapjack.WordAlloc.removeDeadStructural input2974 value5 value1 value2 = (output2974, value1491, value1) := by
  rw [input2974_def, output2974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2972]
  try dsimp only
  rw [child2973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2972_skip, output2973_skip]
  kernel_rfl

theorem node2975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2975 value1491 value1 value2 = (output2975, value1492, value1) := by
  rw [input2975_def, output2975_def]
  kernel_rfl

theorem node2976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2976 value1492 value1 value2 = (output2976, value1492, value1) := by
  rw [input2976_def, output2976_def]
  kernel_rfl

theorem node2977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2977 value1492 value1 value2 = (output2977, value1493, value1) := by
  rw [input2977_def, output2977_def]
  kernel_rfl

theorem node2978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2978 value1493 value1 value2 = (output2978, value1494, value1) := by
  rw [input2978_def, output2978_def]
  kernel_rfl

theorem node2979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2979 value1494 value1 value2 = (output2979, value1495, value1) := by
  rw [input2979_def, output2979_def]
  kernel_rfl

theorem node2980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2980 value1495 value1 value2 = (output2980, value1496, value1) := by
  rw [input2980_def, output2980_def]
  kernel_rfl

theorem node2981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2981 value1496 value1 value2 = (output2981, value5, value1) := by
  rw [input2981_def, output2981_def]
  kernel_rfl

theorem node2982_cond_eq
    (child2980 : Flapjack.WordAlloc.removeDeadStructural input2980 value1495 value1 value2 = (output2980, value1496, value1))
    (child2981 : Flapjack.WordAlloc.removeDeadStructural input2981 value1496 value1 value2 = (output2981, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2982 value1495 value1 value2 = (output2982, value5, value1) := by
  rw [input2982_def, output2982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2980]
  try dsimp only
  rw [child2981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2980_skip, output2981_skip]
  kernel_rfl

theorem node2983_cond_eq
    (child2979 : Flapjack.WordAlloc.removeDeadStructural input2979 value1494 value1 value2 = (output2979, value1495, value1))
    (child2982 : Flapjack.WordAlloc.removeDeadStructural input2982 value1495 value1 value2 = (output2982, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2983 value1494 value1 value2 = (output2983, value5, value1) := by
  rw [input2983_def, output2983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2979]
  try dsimp only
  rw [child2982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2979_skip, output2982_skip]
  kernel_rfl

theorem node2984_cond_eq
    (child2978 : Flapjack.WordAlloc.removeDeadStructural input2978 value1493 value1 value2 = (output2978, value1494, value1))
    (child2983 : Flapjack.WordAlloc.removeDeadStructural input2983 value1494 value1 value2 = (output2983, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2984 value1493 value1 value2 = (output2984, value5, value1) := by
  rw [input2984_def, output2984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2978]
  try dsimp only
  rw [child2983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2978_skip, output2983_skip]
  kernel_rfl

theorem node2985_cond_eq
    (child2977 : Flapjack.WordAlloc.removeDeadStructural input2977 value1492 value1 value2 = (output2977, value1493, value1))
    (child2984 : Flapjack.WordAlloc.removeDeadStructural input2984 value1493 value1 value2 = (output2984, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2985 value1492 value1 value2 = (output2985, value5, value1) := by
  rw [input2985_def, output2985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2977]
  try dsimp only
  rw [child2984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2977_skip, output2984_skip]
  kernel_rfl

theorem node2986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2986 value5 value1 value2 = (output2986, value1497, value1) := by
  rw [input2986_def, output2986_def]
  kernel_rfl

theorem node2987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2987 value1497 value1 value2 = (output2987, value1498, value1) := by
  rw [input2987_def, output2987_def]
  kernel_rfl

theorem node2988_cond_eq
    (child2986 : Flapjack.WordAlloc.removeDeadStructural input2986 value5 value1 value2 = (output2986, value1497, value1))
    (child2987 : Flapjack.WordAlloc.removeDeadStructural input2987 value1497 value1 value2 = (output2987, value1498, value1)) : Flapjack.WordAlloc.removeDeadStructural input2988 value5 value1 value2 = (output2988, value1498, value1) := by
  rw [input2988_def, output2988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2986]
  try dsimp only
  rw [child2987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2986_skip, output2987_skip]
  kernel_rfl

theorem node2989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2989 value1498 value1 value2 = (output2989, value1499, value1) := by
  rw [input2989_def, output2989_def]
  kernel_rfl

theorem node2990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2990 value1499 value1 value2 = (output2990, value1499, value1) := by
  rw [input2990_def, output2990_def]
  kernel_rfl

theorem node2991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2991 value1499 value1 value2 = (output2991, value1500, value1) := by
  rw [input2991_def, output2991_def]
  kernel_rfl

theorem node2992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2992 value1500 value1 value2 = (output2992, value1501, value1) := by
  rw [input2992_def, output2992_def]
  kernel_rfl

theorem node2993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2993 value1501 value1 value2 = (output2993, value1502, value1) := by
  rw [input2993_def, output2993_def]
  kernel_rfl

theorem node2994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2994 value1502 value1 value2 = (output2994, value1503, value1) := by
  rw [input2994_def, output2994_def]
  kernel_rfl

theorem node2995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2995 value1503 value1 value2 = (output2995, value5, value1) := by
  rw [input2995_def, output2995_def]
  kernel_rfl

theorem node2996_cond_eq
    (child2994 : Flapjack.WordAlloc.removeDeadStructural input2994 value1502 value1 value2 = (output2994, value1503, value1))
    (child2995 : Flapjack.WordAlloc.removeDeadStructural input2995 value1503 value1 value2 = (output2995, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2996 value1502 value1 value2 = (output2996, value5, value1) := by
  rw [input2996_def, output2996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2994]
  try dsimp only
  rw [child2995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2994_skip, output2995_skip]
  kernel_rfl

theorem node2997_cond_eq
    (child2993 : Flapjack.WordAlloc.removeDeadStructural input2993 value1501 value1 value2 = (output2993, value1502, value1))
    (child2996 : Flapjack.WordAlloc.removeDeadStructural input2996 value1502 value1 value2 = (output2996, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2997 value1501 value1 value2 = (output2997, value5, value1) := by
  rw [input2997_def, output2997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2993]
  try dsimp only
  rw [child2996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2993_skip, output2996_skip]
  kernel_rfl

theorem node2998_cond_eq
    (child2992 : Flapjack.WordAlloc.removeDeadStructural input2992 value1500 value1 value2 = (output2992, value1501, value1))
    (child2997 : Flapjack.WordAlloc.removeDeadStructural input2997 value1501 value1 value2 = (output2997, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2998 value1500 value1 value2 = (output2998, value5, value1) := by
  rw [input2998_def, output2998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2992]
  try dsimp only
  rw [child2997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2992_skip, output2997_skip]
  kernel_rfl

theorem node2999_cond_eq
    (child2991 : Flapjack.WordAlloc.removeDeadStructural input2991 value1499 value1 value2 = (output2991, value1500, value1))
    (child2998 : Flapjack.WordAlloc.removeDeadStructural input2998 value1500 value1 value2 = (output2998, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2999 value1499 value1 value2 = (output2999, value5, value1) := by
  rw [input2999_def, output2999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2991]
  try dsimp only
  rw [child2998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2991_skip, output2998_skip]
  kernel_rfl

theorem node3000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3000 value5 value1 value2 = (output3000, value1504, value1) := by
  rw [input3000_def, output3000_def]
  kernel_rfl

theorem node3001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3001 value1504 value1 value2 = (output3001, value1505, value1) := by
  rw [input3001_def, output3001_def]
  kernel_rfl

theorem node3002_cond_eq
    (child3000 : Flapjack.WordAlloc.removeDeadStructural input3000 value5 value1 value2 = (output3000, value1504, value1))
    (child3001 : Flapjack.WordAlloc.removeDeadStructural input3001 value1504 value1 value2 = (output3001, value1505, value1)) : Flapjack.WordAlloc.removeDeadStructural input3002 value5 value1 value2 = (output3002, value1505, value1) := by
  rw [input3002_def, output3002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3000]
  try dsimp only
  rw [child3001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3000_skip, output3001_skip]
  kernel_rfl

theorem node3003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3003 value1505 value1 value2 = (output3003, value1506, value1) := by
  rw [input3003_def, output3003_def]
  kernel_rfl

theorem node3004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3004 value1506 value1 value2 = (output3004, value1506, value1) := by
  rw [input3004_def, output3004_def]
  kernel_rfl

theorem node3005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3005 value1506 value1 value2 = (output3005, value1507, value1) := by
  rw [input3005_def, output3005_def]
  kernel_rfl

theorem node3006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3006 value1507 value1 value2 = (output3006, value1508, value1) := by
  rw [input3006_def, output3006_def]
  kernel_rfl

theorem node3007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3007 value1508 value1 value2 = (output3007, value1509, value1) := by
  rw [input3007_def, output3007_def]
  kernel_rfl

theorem node3008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3008 value1509 value1 value2 = (output3008, value1510, value1) := by
  rw [input3008_def, output3008_def]
  kernel_rfl

theorem node3009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3009 value1510 value1 value2 = (output3009, value5, value1) := by
  rw [input3009_def, output3009_def]
  kernel_rfl

theorem node3010_cond_eq
    (child3008 : Flapjack.WordAlloc.removeDeadStructural input3008 value1509 value1 value2 = (output3008, value1510, value1))
    (child3009 : Flapjack.WordAlloc.removeDeadStructural input3009 value1510 value1 value2 = (output3009, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3010 value1509 value1 value2 = (output3010, value5, value1) := by
  rw [input3010_def, output3010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3008]
  try dsimp only
  rw [child3009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3008_skip, output3009_skip]
  kernel_rfl

theorem node3011_cond_eq
    (child3007 : Flapjack.WordAlloc.removeDeadStructural input3007 value1508 value1 value2 = (output3007, value1509, value1))
    (child3010 : Flapjack.WordAlloc.removeDeadStructural input3010 value1509 value1 value2 = (output3010, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3011 value1508 value1 value2 = (output3011, value5, value1) := by
  rw [input3011_def, output3011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3007]
  try dsimp only
  rw [child3010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3007_skip, output3010_skip]
  kernel_rfl

theorem node3012_cond_eq
    (child3006 : Flapjack.WordAlloc.removeDeadStructural input3006 value1507 value1 value2 = (output3006, value1508, value1))
    (child3011 : Flapjack.WordAlloc.removeDeadStructural input3011 value1508 value1 value2 = (output3011, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3012 value1507 value1 value2 = (output3012, value5, value1) := by
  rw [input3012_def, output3012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3006]
  try dsimp only
  rw [child3011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3006_skip, output3011_skip]
  kernel_rfl

theorem node3013_cond_eq
    (child3005 : Flapjack.WordAlloc.removeDeadStructural input3005 value1506 value1 value2 = (output3005, value1507, value1))
    (child3012 : Flapjack.WordAlloc.removeDeadStructural input3012 value1507 value1 value2 = (output3012, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3013 value1506 value1 value2 = (output3013, value5, value1) := by
  rw [input3013_def, output3013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3005]
  try dsimp only
  rw [child3012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3005_skip, output3012_skip]
  kernel_rfl

theorem node3014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3014 value5 value1 value2 = (output3014, value1511, value1) := by
  rw [input3014_def, output3014_def]
  kernel_rfl

theorem node3015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3015 value1511 value1 value2 = (output3015, value1512, value1) := by
  rw [input3015_def, output3015_def]
  kernel_rfl

theorem node3016_cond_eq
    (child3014 : Flapjack.WordAlloc.removeDeadStructural input3014 value5 value1 value2 = (output3014, value1511, value1))
    (child3015 : Flapjack.WordAlloc.removeDeadStructural input3015 value1511 value1 value2 = (output3015, value1512, value1)) : Flapjack.WordAlloc.removeDeadStructural input3016 value5 value1 value2 = (output3016, value1512, value1) := by
  rw [input3016_def, output3016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3014]
  try dsimp only
  rw [child3015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3014_skip, output3015_skip]
  kernel_rfl

theorem node3017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3017 value1512 value1 value2 = (output3017, value1513, value1) := by
  rw [input3017_def, output3017_def]
  kernel_rfl

theorem node3018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3018 value1513 value1 value2 = (output3018, value1513, value1) := by
  rw [input3018_def, output3018_def]
  kernel_rfl

theorem node3019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3019 value1513 value1 value2 = (output3019, value1514, value1) := by
  rw [input3019_def, output3019_def]
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
  try dsimp only
  rw [child3023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3022_skip, output3023_skip]
  kernel_rfl

theorem node3025_cond_eq
    (child3021 : Flapjack.WordAlloc.removeDeadStructural input3021 value1515 value1 value2 = (output3021, value1516, value1))
    (child3024 : Flapjack.WordAlloc.removeDeadStructural input3024 value1516 value1 value2 = (output3024, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3025 value1515 value1 value2 = (output3025, value5, value1) := by
  rw [input3025_def, output3025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3021]
  try dsimp only
  rw [child3024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3021_skip, output3024_skip]
  kernel_rfl

theorem node3026_cond_eq
    (child3020 : Flapjack.WordAlloc.removeDeadStructural input3020 value1514 value1 value2 = (output3020, value1515, value1))
    (child3025 : Flapjack.WordAlloc.removeDeadStructural input3025 value1515 value1 value2 = (output3025, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3026 value1514 value1 value2 = (output3026, value5, value1) := by
  rw [input3026_def, output3026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3020]
  try dsimp only
  rw [child3025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3020_skip, output3025_skip]
  kernel_rfl

theorem node3027_cond_eq
    (child3019 : Flapjack.WordAlloc.removeDeadStructural input3019 value1513 value1 value2 = (output3019, value1514, value1))
    (child3026 : Flapjack.WordAlloc.removeDeadStructural input3026 value1514 value1 value2 = (output3026, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3027 value1513 value1 value2 = (output3027, value5, value1) := by
  rw [input3027_def, output3027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3019]
  try dsimp only
  rw [child3026]
  try dsimp only
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
  try dsimp only
  rw [child3029]
  try dsimp only
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

theorem node3035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3035 value1522 value1 value2 = (output3035, value1523, value1) := by
  rw [input3035_def, output3035_def]
  kernel_rfl

theorem node3036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3036 value1523 value1 value2 = (output3036, value1524, value1) := by
  rw [input3036_def, output3036_def]
  kernel_rfl

theorem node3037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3037 value1524 value1 value2 = (output3037, value5, value1) := by
  rw [input3037_def, output3037_def]
  kernel_rfl

theorem node3038_cond_eq
    (child3036 : Flapjack.WordAlloc.removeDeadStructural input3036 value1523 value1 value2 = (output3036, value1524, value1))
    (child3037 : Flapjack.WordAlloc.removeDeadStructural input3037 value1524 value1 value2 = (output3037, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3038 value1523 value1 value2 = (output3038, value5, value1) := by
  rw [input3038_def, output3038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3036]
  try dsimp only
  rw [child3037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3036_skip, output3037_skip]
  kernel_rfl

theorem node3039_cond_eq
    (child3035 : Flapjack.WordAlloc.removeDeadStructural input3035 value1522 value1 value2 = (output3035, value1523, value1))
    (child3038 : Flapjack.WordAlloc.removeDeadStructural input3038 value1523 value1 value2 = (output3038, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3039 value1522 value1 value2 = (output3039, value5, value1) := by
  rw [input3039_def, output3039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3035]
  try dsimp only
  rw [child3038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3035_skip, output3038_skip]
  kernel_rfl

theorem node3040_cond_eq
    (child3034 : Flapjack.WordAlloc.removeDeadStructural input3034 value1521 value1 value2 = (output3034, value1522, value1))
    (child3039 : Flapjack.WordAlloc.removeDeadStructural input3039 value1522 value1 value2 = (output3039, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3040 value1521 value1 value2 = (output3040, value5, value1) := by
  rw [input3040_def, output3040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3034]
  try dsimp only
  rw [child3039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3034_skip, output3039_skip]
  kernel_rfl

theorem node3041_cond_eq
    (child3033 : Flapjack.WordAlloc.removeDeadStructural input3033 value1520 value1 value2 = (output3033, value1521, value1))
    (child3040 : Flapjack.WordAlloc.removeDeadStructural input3040 value1521 value1 value2 = (output3040, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3041 value1520 value1 value2 = (output3041, value5, value1) := by
  rw [input3041_def, output3041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3033]
  try dsimp only
  rw [child3040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3033_skip, output3040_skip]
  kernel_rfl

theorem node3042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3042 value5 value1 value2 = (output3042, value1525, value1) := by
  rw [input3042_def, output3042_def]
  kernel_rfl

theorem node3043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3043 value1525 value1 value2 = (output3043, value1526, value1) := by
  rw [input3043_def, output3043_def]
  kernel_rfl

theorem node3044_cond_eq
    (child3042 : Flapjack.WordAlloc.removeDeadStructural input3042 value5 value1 value2 = (output3042, value1525, value1))
    (child3043 : Flapjack.WordAlloc.removeDeadStructural input3043 value1525 value1 value2 = (output3043, value1526, value1)) : Flapjack.WordAlloc.removeDeadStructural input3044 value5 value1 value2 = (output3044, value1526, value1) := by
  rw [input3044_def, output3044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3042]
  try dsimp only
  rw [child3043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3042_skip, output3043_skip]
  kernel_rfl

theorem node3045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3045 value1526 value1 value2 = (output3045, value1527, value1) := by
  rw [input3045_def, output3045_def]
  kernel_rfl

theorem node3046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3046 value1527 value1 value2 = (output3046, value1527, value1) := by
  rw [input3046_def, output3046_def]
  kernel_rfl

theorem node3047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3047 value1527 value1 value2 = (output3047, value1528, value1) := by
  rw [input3047_def, output3047_def]
  kernel_rfl

theorem node3048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3048 value1528 value1 value2 = (output3048, value1529, value1) := by
  rw [input3048_def, output3048_def]
  kernel_rfl

theorem node3049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3049 value1529 value1 value2 = (output3049, value1530, value1) := by
  rw [input3049_def, output3049_def]
  kernel_rfl

theorem node3050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3050 value1530 value1 value2 = (output3050, value1531, value1) := by
  rw [input3050_def, output3050_def]
  kernel_rfl

theorem node3051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3051 value1531 value1 value2 = (output3051, value5, value1) := by
  rw [input3051_def, output3051_def]
  kernel_rfl

theorem node3052_cond_eq
    (child3050 : Flapjack.WordAlloc.removeDeadStructural input3050 value1530 value1 value2 = (output3050, value1531, value1))
    (child3051 : Flapjack.WordAlloc.removeDeadStructural input3051 value1531 value1 value2 = (output3051, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3052 value1530 value1 value2 = (output3052, value5, value1) := by
  rw [input3052_def, output3052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3050]
  try dsimp only
  rw [child3051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3050_skip, output3051_skip]
  kernel_rfl

theorem node3053_cond_eq
    (child3049 : Flapjack.WordAlloc.removeDeadStructural input3049 value1529 value1 value2 = (output3049, value1530, value1))
    (child3052 : Flapjack.WordAlloc.removeDeadStructural input3052 value1530 value1 value2 = (output3052, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3053 value1529 value1 value2 = (output3053, value5, value1) := by
  rw [input3053_def, output3053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3049]
  try dsimp only
  rw [child3052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3049_skip, output3052_skip]
  kernel_rfl

theorem node3054_cond_eq
    (child3048 : Flapjack.WordAlloc.removeDeadStructural input3048 value1528 value1 value2 = (output3048, value1529, value1))
    (child3053 : Flapjack.WordAlloc.removeDeadStructural input3053 value1529 value1 value2 = (output3053, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3054 value1528 value1 value2 = (output3054, value5, value1) := by
  rw [input3054_def, output3054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3048]
  try dsimp only
  rw [child3053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3048_skip, output3053_skip]
  kernel_rfl

theorem node3055_cond_eq
    (child3047 : Flapjack.WordAlloc.removeDeadStructural input3047 value1527 value1 value2 = (output3047, value1528, value1))
    (child3054 : Flapjack.WordAlloc.removeDeadStructural input3054 value1528 value1 value2 = (output3054, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3055 value1527 value1 value2 = (output3055, value5, value1) := by
  rw [input3055_def, output3055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3047]
  try dsimp only
  rw [child3054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3047_skip, output3054_skip]
  kernel_rfl

theorem node3056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3056 value5 value1 value2 = (output3056, value1532, value1) := by
  rw [input3056_def, output3056_def]
  kernel_rfl

theorem node3057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3057 value1532 value1 value2 = (output3057, value1533, value1) := by
  rw [input3057_def, output3057_def]
  kernel_rfl

theorem node3058_cond_eq
    (child3056 : Flapjack.WordAlloc.removeDeadStructural input3056 value5 value1 value2 = (output3056, value1532, value1))
    (child3057 : Flapjack.WordAlloc.removeDeadStructural input3057 value1532 value1 value2 = (output3057, value1533, value1)) : Flapjack.WordAlloc.removeDeadStructural input3058 value5 value1 value2 = (output3058, value1533, value1) := by
  rw [input3058_def, output3058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3056]
  try dsimp only
  rw [child3057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3056_skip, output3057_skip]
  kernel_rfl

theorem node3059_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3059 value1533 value1 value2 = (output3059, value1534, value1) := by
  rw [input3059_def, output3059_def]
  kernel_rfl

theorem node3060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3060 value1534 value1 value2 = (output3060, value1534, value1) := by
  rw [input3060_def, output3060_def]
  kernel_rfl

theorem node3061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3061 value1534 value1 value2 = (output3061, value1535, value1) := by
  rw [input3061_def, output3061_def]
  kernel_rfl

theorem node3062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3062 value1535 value1 value2 = (output3062, value1536, value1) := by
  rw [input3062_def, output3062_def]
  kernel_rfl

theorem node3063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3063 value1536 value1 value2 = (output3063, value1537, value1) := by
  rw [input3063_def, output3063_def]
  kernel_rfl

theorem node3064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3064 value1537 value1 value2 = (output3064, value1538, value1) := by
  rw [input3064_def, output3064_def]
  kernel_rfl

theorem node3065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3065 value1538 value1 value2 = (output3065, value5, value1) := by
  rw [input3065_def, output3065_def]
  kernel_rfl

theorem node3066_cond_eq
    (child3064 : Flapjack.WordAlloc.removeDeadStructural input3064 value1537 value1 value2 = (output3064, value1538, value1))
    (child3065 : Flapjack.WordAlloc.removeDeadStructural input3065 value1538 value1 value2 = (output3065, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3066 value1537 value1 value2 = (output3066, value5, value1) := by
  rw [input3066_def, output3066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3064]
  try dsimp only
  rw [child3065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3064_skip, output3065_skip]
  kernel_rfl

theorem node3067_cond_eq
    (child3063 : Flapjack.WordAlloc.removeDeadStructural input3063 value1536 value1 value2 = (output3063, value1537, value1))
    (child3066 : Flapjack.WordAlloc.removeDeadStructural input3066 value1537 value1 value2 = (output3066, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3067 value1536 value1 value2 = (output3067, value5, value1) := by
  rw [input3067_def, output3067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3063]
  try dsimp only
  rw [child3066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3063_skip, output3066_skip]
  kernel_rfl

theorem node3068_cond_eq
    (child3062 : Flapjack.WordAlloc.removeDeadStructural input3062 value1535 value1 value2 = (output3062, value1536, value1))
    (child3067 : Flapjack.WordAlloc.removeDeadStructural input3067 value1536 value1 value2 = (output3067, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3068 value1535 value1 value2 = (output3068, value5, value1) := by
  rw [input3068_def, output3068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3062]
  try dsimp only
  rw [child3067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3062_skip, output3067_skip]
  kernel_rfl

theorem node3069_cond_eq
    (child3061 : Flapjack.WordAlloc.removeDeadStructural input3061 value1534 value1 value2 = (output3061, value1535, value1))
    (child3068 : Flapjack.WordAlloc.removeDeadStructural input3068 value1535 value1 value2 = (output3068, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3069 value1534 value1 value2 = (output3069, value5, value1) := by
  rw [input3069_def, output3069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3061]
  try dsimp only
  rw [child3068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3061_skip, output3068_skip]
  kernel_rfl

theorem node3070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3070 value5 value1 value2 = (output3070, value1539, value1) := by
  rw [input3070_def, output3070_def]
  kernel_rfl

theorem node3071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3071 value1539 value1 value2 = (output3071, value1540, value1) := by
  rw [input3071_def, output3071_def]
  kernel_rfl

#print axioms node3071_cond_eq
end InitECandidate.Proofs.DeadStages240.Parallel
