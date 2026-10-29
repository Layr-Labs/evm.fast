import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree11808_agree_conditional
    (child0 : tree11806 = literal11806)
    (child1 : tree11807 = literal11807) : tree11808 = literal11808 := by
  rw [tree11808_def, child0, child1]
  rfl
theorem node11808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11806 live11806 coloured11806 = result11806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11807 live11807 coloured11807 = result11807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11808 live11808 coloured11808 = result11808 := by
  rw [tree11808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11806 coloured11806 at child
  try dsimp only [live11808, coloured11808]
  rw [child]
  dsimp only [result11806]
  have child := child1
  unfold live11807 coloured11807 at child
  try dsimp only [live11808, coloured11808]
  rw [child]
  dsimp only [result11807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11809_agree_conditional : tree11809 = literal11809 := by
  rw [tree11809_def]
  rfl
theorem node11809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11809 live11809 coloured11809 = result11809 := by
  rw [tree11809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11810_agree_conditional
    (child0 : tree11808 = literal11808)
    (child1 : tree11809 = literal11809) : tree11810 = literal11810 := by
  rw [tree11810_def, child0, child1]
  rfl
theorem node11810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11808 live11808 coloured11808 = result11808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11809 live11809 coloured11809 = result11809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11810 live11810 coloured11810 = result11810 := by
  rw [tree11810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11808 coloured11808 at child
  try dsimp only [live11810, coloured11810]
  rw [child]
  dsimp only [result11808]
  have child := child1
  unfold live11809 coloured11809 at child
  try dsimp only [live11810, coloured11810]
  rw [child]
  dsimp only [result11809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11811_agree_conditional : tree11811 = literal11811 := by
  rw [tree11811_def]
  rfl
theorem node11811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11811 live11811 coloured11811 = result11811 := by
  rw [tree11811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11812_agree_conditional
    (child0 : tree11810 = literal11810)
    (child1 : tree11811 = literal11811) : tree11812 = literal11812 := by
  rw [tree11812_def, child0, child1]
  rfl
theorem node11812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11810 live11810 coloured11810 = result11810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11811 live11811 coloured11811 = result11811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11812 live11812 coloured11812 = result11812 := by
  rw [tree11812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11810 coloured11810 at child
  try dsimp only [live11812, coloured11812]
  rw [child]
  dsimp only [result11810]
  have child := child1
  unfold live11811 coloured11811 at child
  try dsimp only [live11812, coloured11812]
  rw [child]
  dsimp only [result11811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11813_agree_conditional : tree11813 = literal11813 := by
  rw [tree11813_def]
  rfl
theorem node11813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11813 live11813 coloured11813 = result11813 := by
  rw [tree11813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11814_agree_conditional
    (child0 : tree11812 = literal11812)
    (child1 : tree11813 = literal11813) : tree11814 = literal11814 := by
  rw [tree11814_def, child0, child1]
  rfl
theorem node11814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11812 live11812 coloured11812 = result11812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11813 live11813 coloured11813 = result11813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11814 live11814 coloured11814 = result11814 := by
  rw [tree11814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11812 coloured11812 at child
  try dsimp only [live11814, coloured11814]
  rw [child]
  dsimp only [result11812]
  have child := child1
  unfold live11813 coloured11813 at child
  try dsimp only [live11814, coloured11814]
  rw [child]
  dsimp only [result11813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11815_agree_conditional : tree11815 = literal11815 := by
  rw [tree11815_def]
  rfl
theorem node11815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11815 live11815 coloured11815 = result11815 := by
  rw [tree11815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11816_agree_conditional
    (child0 : tree11814 = literal11814)
    (child1 : tree11815 = literal11815) : tree11816 = literal11816 := by
  rw [tree11816_def, child0, child1]
  rfl
theorem node11816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11814 live11814 coloured11814 = result11814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11815 live11815 coloured11815 = result11815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11816 live11816 coloured11816 = result11816 := by
  rw [tree11816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11814 coloured11814 at child
  try dsimp only [live11816, coloured11816]
  rw [child]
  dsimp only [result11814]
  have child := child1
  unfold live11815 coloured11815 at child
  try dsimp only [live11816, coloured11816]
  rw [child]
  dsimp only [result11815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11817_agree_conditional : tree11817 = literal11817 := by
  rw [tree11817_def]
  rfl
theorem node11817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11817 live11817 coloured11817 = result11817 := by
  rw [tree11817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11818_agree_conditional
    (child0 : tree11816 = literal11816)
    (child1 : tree11817 = literal11817) : tree11818 = literal11818 := by
  rw [tree11818_def, child0, child1]
  rfl
theorem node11818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11816 live11816 coloured11816 = result11816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11817 live11817 coloured11817 = result11817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11818 live11818 coloured11818 = result11818 := by
  rw [tree11818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11816 coloured11816 at child
  try dsimp only [live11818, coloured11818]
  rw [child]
  dsimp only [result11816]
  have child := child1
  unfold live11817 coloured11817 at child
  try dsimp only [live11818, coloured11818]
  rw [child]
  dsimp only [result11817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11819_agree_conditional : tree11819 = literal11819 := by
  rw [tree11819_def]
  rfl
theorem node11819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11819 live11819 coloured11819 = result11819 := by
  rw [tree11819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11820_agree_conditional
    (child0 : tree11818 = literal11818)
    (child1 : tree11819 = literal11819) : tree11820 = literal11820 := by
  rw [tree11820_def, child0, child1]
  rfl
theorem node11820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11818 live11818 coloured11818 = result11818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11819 live11819 coloured11819 = result11819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11820 live11820 coloured11820 = result11820 := by
  rw [tree11820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11818 coloured11818 at child
  try dsimp only [live11820, coloured11820]
  rw [child]
  dsimp only [result11818]
  have child := child1
  unfold live11819 coloured11819 at child
  try dsimp only [live11820, coloured11820]
  rw [child]
  dsimp only [result11819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11821_agree_conditional : tree11821 = literal11821 := by
  rw [tree11821_def]
  rfl
theorem node11821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11821 live11821 coloured11821 = result11821 := by
  rw [tree11821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11822_agree_conditional
    (child0 : tree11820 = literal11820)
    (child1 : tree11821 = literal11821) : tree11822 = literal11822 := by
  rw [tree11822_def, child0, child1]
  rfl
theorem node11822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11820 live11820 coloured11820 = result11820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11821 live11821 coloured11821 = result11821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11822 live11822 coloured11822 = result11822 := by
  rw [tree11822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11820 coloured11820 at child
  try dsimp only [live11822, coloured11822]
  rw [child]
  dsimp only [result11820]
  have child := child1
  unfold live11821 coloured11821 at child
  try dsimp only [live11822, coloured11822]
  rw [child]
  dsimp only [result11821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11823_agree_conditional : tree11823 = literal11823 := by
  rw [tree11823_def]
  rfl
theorem node11823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11823 live11823 coloured11823 = result11823 := by
  rw [tree11823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11824_agree_conditional
    (child0 : tree11822 = literal11822)
    (child1 : tree11823 = literal11823) : tree11824 = literal11824 := by
  rw [tree11824_def, child0, child1]
  rfl
theorem node11824_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11822 live11822 coloured11822 = result11822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11823 live11823 coloured11823 = result11823) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11824 live11824 coloured11824 = result11824 := by
  rw [tree11824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11822 coloured11822 at child
  try dsimp only [live11824, coloured11824]
  rw [child]
  dsimp only [result11822]
  have child := child1
  unfold live11823 coloured11823 at child
  try dsimp only [live11824, coloured11824]
  rw [child]
  dsimp only [result11823]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11825_agree_conditional : tree11825 = literal11825 := by
  rw [tree11825_def]
  rfl
theorem node11825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11825 live11825 coloured11825 = result11825 := by
  rw [tree11825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11826_agree_conditional
    (child0 : tree11824 = literal11824)
    (child1 : tree11825 = literal11825) : tree11826 = literal11826 := by
  rw [tree11826_def, child0, child1]
  rfl
theorem node11826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11824 live11824 coloured11824 = result11824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11825 live11825 coloured11825 = result11825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11826 live11826 coloured11826 = result11826 := by
  rw [tree11826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11824 coloured11824 at child
  try dsimp only [live11826, coloured11826]
  rw [child]
  dsimp only [result11824]
  have child := child1
  unfold live11825 coloured11825 at child
  try dsimp only [live11826, coloured11826]
  rw [child]
  dsimp only [result11825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11827_agree_conditional : tree11827 = literal11827 := by
  rw [tree11827_def]
  rfl
theorem node11827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11827 live11827 coloured11827 = result11827 := by
  rw [tree11827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11828_agree_conditional
    (child0 : tree11826 = literal11826)
    (child1 : tree11827 = literal11827) : tree11828 = literal11828 := by
  rw [tree11828_def, child0, child1]
  rfl
theorem node11828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11826 live11826 coloured11826 = result11826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11827 live11827 coloured11827 = result11827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11828 live11828 coloured11828 = result11828 := by
  rw [tree11828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11826 coloured11826 at child
  try dsimp only [live11828, coloured11828]
  rw [child]
  dsimp only [result11826]
  have child := child1
  unfold live11827 coloured11827 at child
  try dsimp only [live11828, coloured11828]
  rw [child]
  dsimp only [result11827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11829_agree_conditional : tree11829 = literal11829 := by
  rw [tree11829_def]
  rfl
theorem node11829_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11829 live11829 coloured11829 = result11829 := by
  rw [tree11829_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11830_agree_conditional
    (child0 : tree11828 = literal11828)
    (child1 : tree11829 = literal11829) : tree11830 = literal11830 := by
  rw [tree11830_def, child0, child1]
  rfl
theorem node11830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11828 live11828 coloured11828 = result11828)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11829 live11829 coloured11829 = result11829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11830 live11830 coloured11830 = result11830 := by
  rw [tree11830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11828 coloured11828 at child
  try dsimp only [live11830, coloured11830]
  rw [child]
  dsimp only [result11828]
  have child := child1
  unfold live11829 coloured11829 at child
  try dsimp only [live11830, coloured11830]
  rw [child]
  dsimp only [result11829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11831_agree_conditional : tree11831 = literal11831 := by
  rw [tree11831_def]
  rfl
theorem node11831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11831 live11831 coloured11831 = result11831 := by
  rw [tree11831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11832_agree_conditional
    (child0 : tree11830 = literal11830)
    (child1 : tree11831 = literal11831) : tree11832 = literal11832 := by
  rw [tree11832_def, child0, child1]
  rfl
theorem node11832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11830 live11830 coloured11830 = result11830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11831 live11831 coloured11831 = result11831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11832 live11832 coloured11832 = result11832 := by
  rw [tree11832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11830 coloured11830 at child
  try dsimp only [live11832, coloured11832]
  rw [child]
  dsimp only [result11830]
  have child := child1
  unfold live11831 coloured11831 at child
  try dsimp only [live11832, coloured11832]
  rw [child]
  dsimp only [result11831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11833_agree_conditional : tree11833 = literal11833 := by
  rw [tree11833_def]
  rfl
theorem node11833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11833 live11833 coloured11833 = result11833 := by
  rw [tree11833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11834_agree_conditional
    (child0 : tree11832 = literal11832)
    (child1 : tree11833 = literal11833) : tree11834 = literal11834 := by
  rw [tree11834_def, child0, child1]
  rfl
theorem node11834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11832 live11832 coloured11832 = result11832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11833 live11833 coloured11833 = result11833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11834 live11834 coloured11834 = result11834 := by
  rw [tree11834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11832 coloured11832 at child
  try dsimp only [live11834, coloured11834]
  rw [child]
  dsimp only [result11832]
  have child := child1
  unfold live11833 coloured11833 at child
  try dsimp only [live11834, coloured11834]
  rw [child]
  dsimp only [result11833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11835_agree_conditional : tree11835 = literal11835 := by
  rw [tree11835_def]
  rfl
theorem node11835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11835 live11835 coloured11835 = result11835 := by
  rw [tree11835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11836_agree_conditional
    (child0 : tree11834 = literal11834)
    (child1 : tree11835 = literal11835) : tree11836 = literal11836 := by
  rw [tree11836_def, child0, child1]
  rfl
theorem node11836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11834 live11834 coloured11834 = result11834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11835 live11835 coloured11835 = result11835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11836 live11836 coloured11836 = result11836 := by
  rw [tree11836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11834 coloured11834 at child
  try dsimp only [live11836, coloured11836]
  rw [child]
  dsimp only [result11834]
  have child := child1
  unfold live11835 coloured11835 at child
  try dsimp only [live11836, coloured11836]
  rw [child]
  dsimp only [result11835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11837_agree_conditional : tree11837 = literal11837 := by
  rw [tree11837_def]
  rfl
theorem node11837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11837 live11837 coloured11837 = result11837 := by
  rw [tree11837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11838_agree_conditional
    (child0 : tree11836 = literal11836)
    (child1 : tree11837 = literal11837) : tree11838 = literal11838 := by
  rw [tree11838_def, child0, child1]
  rfl
theorem node11838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11836 live11836 coloured11836 = result11836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11837 live11837 coloured11837 = result11837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11838 live11838 coloured11838 = result11838 := by
  rw [tree11838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11836 coloured11836 at child
  try dsimp only [live11838, coloured11838]
  rw [child]
  dsimp only [result11836]
  have child := child1
  unfold live11837 coloured11837 at child
  try dsimp only [live11838, coloured11838]
  rw [child]
  dsimp only [result11837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11839_agree_conditional : tree11839 = literal11839 := by
  rw [tree11839_def]
  rfl
theorem node11839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11839 live11839 coloured11839 = result11839 := by
  rw [tree11839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11840_agree_conditional
    (child0 : tree11838 = literal11838)
    (child1 : tree11839 = literal11839) : tree11840 = literal11840 := by
  rw [tree11840_def, child0, child1]
  rfl
theorem node11840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11838 live11838 coloured11838 = result11838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11839 live11839 coloured11839 = result11839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11840 live11840 coloured11840 = result11840 := by
  rw [tree11840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11838 coloured11838 at child
  try dsimp only [live11840, coloured11840]
  rw [child]
  dsimp only [result11838]
  have child := child1
  unfold live11839 coloured11839 at child
  try dsimp only [live11840, coloured11840]
  rw [child]
  dsimp only [result11839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11841_agree_conditional : tree11841 = literal11841 := by
  rw [tree11841_def]
  rfl
theorem node11841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11841 live11841 coloured11841 = result11841 := by
  rw [tree11841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11842_agree_conditional
    (child0 : tree11840 = literal11840)
    (child1 : tree11841 = literal11841) : tree11842 = literal11842 := by
  rw [tree11842_def, child0, child1]
  rfl
theorem node11842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11840 live11840 coloured11840 = result11840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11841 live11841 coloured11841 = result11841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11842 live11842 coloured11842 = result11842 := by
  rw [tree11842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11840 coloured11840 at child
  try dsimp only [live11842, coloured11842]
  rw [child]
  dsimp only [result11840]
  have child := child1
  unfold live11841 coloured11841 at child
  try dsimp only [live11842, coloured11842]
  rw [child]
  dsimp only [result11841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11843_agree_conditional : tree11843 = literal11843 := by
  rw [tree11843_def]
  rfl
theorem node11843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11843 live11843 coloured11843 = result11843 := by
  rw [tree11843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11844_agree_conditional
    (child0 : tree11842 = literal11842)
    (child1 : tree11843 = literal11843) : tree11844 = literal11844 := by
  rw [tree11844_def, child0, child1]
  rfl
theorem node11844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11842 live11842 coloured11842 = result11842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11843 live11843 coloured11843 = result11843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11844 live11844 coloured11844 = result11844 := by
  rw [tree11844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11842 coloured11842 at child
  try dsimp only [live11844, coloured11844]
  rw [child]
  dsimp only [result11842]
  have child := child1
  unfold live11843 coloured11843 at child
  try dsimp only [live11844, coloured11844]
  rw [child]
  dsimp only [result11843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11845_agree_conditional : tree11845 = literal11845 := by
  rw [tree11845_def]
  rfl
theorem node11845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11845 live11845 coloured11845 = result11845 := by
  rw [tree11845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11846_agree_conditional
    (child0 : tree11844 = literal11844)
    (child1 : tree11845 = literal11845) : tree11846 = literal11846 := by
  rw [tree11846_def, child0, child1]
  rfl
theorem node11846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11844 live11844 coloured11844 = result11844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11845 live11845 coloured11845 = result11845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11846 live11846 coloured11846 = result11846 := by
  rw [tree11846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11844 coloured11844 at child
  try dsimp only [live11846, coloured11846]
  rw [child]
  dsimp only [result11844]
  have child := child1
  unfold live11845 coloured11845 at child
  try dsimp only [live11846, coloured11846]
  rw [child]
  dsimp only [result11845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11847_agree_conditional : tree11847 = literal11847 := by
  rw [tree11847_def]
  rfl
theorem node11847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11847 live11847 coloured11847 = result11847 := by
  rw [tree11847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11848_agree_conditional
    (child0 : tree11846 = literal11846)
    (child1 : tree11847 = literal11847) : tree11848 = literal11848 := by
  rw [tree11848_def, child0, child1]
  rfl
theorem node11848_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11846 live11846 coloured11846 = result11846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11847 live11847 coloured11847 = result11847) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11848 live11848 coloured11848 = result11848 := by
  rw [tree11848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11846 coloured11846 at child
  try dsimp only [live11848, coloured11848]
  rw [child]
  dsimp only [result11846]
  have child := child1
  unfold live11847 coloured11847 at child
  try dsimp only [live11848, coloured11848]
  rw [child]
  dsimp only [result11847]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11849_agree_conditional : tree11849 = literal11849 := by
  rw [tree11849_def]
  rfl
theorem node11849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11849 live11849 coloured11849 = result11849 := by
  rw [tree11849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11850_agree_conditional
    (child0 : tree11848 = literal11848)
    (child1 : tree11849 = literal11849) : tree11850 = literal11850 := by
  rw [tree11850_def, child0, child1]
  rfl
theorem node11850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11848 live11848 coloured11848 = result11848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11849 live11849 coloured11849 = result11849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11850 live11850 coloured11850 = result11850 := by
  rw [tree11850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11848 coloured11848 at child
  try dsimp only [live11850, coloured11850]
  rw [child]
  dsimp only [result11848]
  have child := child1
  unfold live11849 coloured11849 at child
  try dsimp only [live11850, coloured11850]
  rw [child]
  dsimp only [result11849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11851_agree_conditional : tree11851 = literal11851 := by
  rw [tree11851_def]
  rfl
theorem node11851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11851 live11851 coloured11851 = result11851 := by
  rw [tree11851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11852_agree_conditional
    (child0 : tree11850 = literal11850)
    (child1 : tree11851 = literal11851) : tree11852 = literal11852 := by
  rw [tree11852_def, child0, child1]
  rfl
theorem node11852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11850 live11850 coloured11850 = result11850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11851 live11851 coloured11851 = result11851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11852 live11852 coloured11852 = result11852 := by
  rw [tree11852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11850 coloured11850 at child
  try dsimp only [live11852, coloured11852]
  rw [child]
  dsimp only [result11850]
  have child := child1
  unfold live11851 coloured11851 at child
  try dsimp only [live11852, coloured11852]
  rw [child]
  dsimp only [result11851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11853_agree_conditional : tree11853 = literal11853 := by
  rw [tree11853_def]
  rfl
theorem node11853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11853 live11853 coloured11853 = result11853 := by
  rw [tree11853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11854_agree_conditional
    (child0 : tree11852 = literal11852)
    (child1 : tree11853 = literal11853) : tree11854 = literal11854 := by
  rw [tree11854_def, child0, child1]
  rfl
theorem node11854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11852 live11852 coloured11852 = result11852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11853 live11853 coloured11853 = result11853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11854 live11854 coloured11854 = result11854 := by
  rw [tree11854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11852 coloured11852 at child
  try dsimp only [live11854, coloured11854]
  rw [child]
  dsimp only [result11852]
  have child := child1
  unfold live11853 coloured11853 at child
  try dsimp only [live11854, coloured11854]
  rw [child]
  dsimp only [result11853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11855_agree_conditional : tree11855 = literal11855 := by
  rw [tree11855_def]
  rfl
theorem node11855_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11855 live11855 coloured11855 = result11855 := by
  rw [tree11855_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11856_agree_conditional
    (child0 : tree11854 = literal11854)
    (child1 : tree11855 = literal11855) : tree11856 = literal11856 := by
  rw [tree11856_def, child0, child1]
  rfl
theorem node11856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11854 live11854 coloured11854 = result11854)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11855 live11855 coloured11855 = result11855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11856 live11856 coloured11856 = result11856 := by
  rw [tree11856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11854 coloured11854 at child
  try dsimp only [live11856, coloured11856]
  rw [child]
  dsimp only [result11854]
  have child := child1
  unfold live11855 coloured11855 at child
  try dsimp only [live11856, coloured11856]
  rw [child]
  dsimp only [result11855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11857_agree_conditional : tree11857 = literal11857 := by
  rw [tree11857_def]
  rfl
theorem node11857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11857 live11857 coloured11857 = result11857 := by
  rw [tree11857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11858_agree_conditional
    (child0 : tree11856 = literal11856)
    (child1 : tree11857 = literal11857) : tree11858 = literal11858 := by
  rw [tree11858_def, child0, child1]
  rfl
theorem node11858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11856 live11856 coloured11856 = result11856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11857 live11857 coloured11857 = result11857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11858 live11858 coloured11858 = result11858 := by
  rw [tree11858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11856 coloured11856 at child
  try dsimp only [live11858, coloured11858]
  rw [child]
  dsimp only [result11856]
  have child := child1
  unfold live11857 coloured11857 at child
  try dsimp only [live11858, coloured11858]
  rw [child]
  dsimp only [result11857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11859_agree_conditional : tree11859 = literal11859 := by
  rw [tree11859_def]
  rfl
theorem node11859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11859 live11859 coloured11859 = result11859 := by
  rw [tree11859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11860_agree_conditional
    (child0 : tree11858 = literal11858)
    (child1 : tree11859 = literal11859) : tree11860 = literal11860 := by
  rw [tree11860_def, child0, child1]
  rfl
theorem node11860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11858 live11858 coloured11858 = result11858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11859 live11859 coloured11859 = result11859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11860 live11860 coloured11860 = result11860 := by
  rw [tree11860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11858 coloured11858 at child
  try dsimp only [live11860, coloured11860]
  rw [child]
  dsimp only [result11858]
  have child := child1
  unfold live11859 coloured11859 at child
  try dsimp only [live11860, coloured11860]
  rw [child]
  dsimp only [result11859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11861_agree_conditional : tree11861 = literal11861 := by
  rw [tree11861_def]
  rfl
theorem node11861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11861 live11861 coloured11861 = result11861 := by
  rw [tree11861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11862_agree_conditional
    (child0 : tree11860 = literal11860)
    (child1 : tree11861 = literal11861) : tree11862 = literal11862 := by
  rw [tree11862_def, child0, child1]
  rfl
theorem node11862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11860 live11860 coloured11860 = result11860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11861 live11861 coloured11861 = result11861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11862 live11862 coloured11862 = result11862 := by
  rw [tree11862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11860 coloured11860 at child
  try dsimp only [live11862, coloured11862]
  rw [child]
  dsimp only [result11860]
  have child := child1
  unfold live11861 coloured11861 at child
  try dsimp only [live11862, coloured11862]
  rw [child]
  dsimp only [result11861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11863_agree_conditional : tree11863 = literal11863 := by
  rw [tree11863_def]
  rfl
theorem node11863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11863 live11863 coloured11863 = result11863 := by
  rw [tree11863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11864_agree_conditional
    (child0 : tree11862 = literal11862)
    (child1 : tree11863 = literal11863) : tree11864 = literal11864 := by
  rw [tree11864_def, child0, child1]
  rfl
theorem node11864_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11862 live11862 coloured11862 = result11862)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11863 live11863 coloured11863 = result11863) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11864 live11864 coloured11864 = result11864 := by
  rw [tree11864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11862 coloured11862 at child
  try dsimp only [live11864, coloured11864]
  rw [child]
  dsimp only [result11862]
  have child := child1
  unfold live11863 coloured11863 at child
  try dsimp only [live11864, coloured11864]
  rw [child]
  dsimp only [result11863]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11865_agree_conditional : tree11865 = literal11865 := by
  rw [tree11865_def]
  rfl
theorem node11865_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11865 live11865 coloured11865 = result11865 := by
  rw [tree11865_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11866_agree_conditional
    (child0 : tree11864 = literal11864)
    (child1 : tree11865 = literal11865) : tree11866 = literal11866 := by
  rw [tree11866_def, child0, child1]
  rfl
theorem node11866_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11864 live11864 coloured11864 = result11864)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11865 live11865 coloured11865 = result11865) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11866 live11866 coloured11866 = result11866 := by
  rw [tree11866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11864 coloured11864 at child
  try dsimp only [live11866, coloured11866]
  rw [child]
  dsimp only [result11864]
  have child := child1
  unfold live11865 coloured11865 at child
  try dsimp only [live11866, coloured11866]
  rw [child]
  dsimp only [result11865]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11867_agree_conditional : tree11867 = literal11867 := by
  rw [tree11867_def]
  rfl
theorem node11867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11867 live11867 coloured11867 = result11867 := by
  rw [tree11867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11868_agree_conditional
    (child0 : tree11866 = literal11866)
    (child1 : tree11867 = literal11867) : tree11868 = literal11868 := by
  rw [tree11868_def, child0, child1]
  rfl
theorem node11868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11866 live11866 coloured11866 = result11866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11867 live11867 coloured11867 = result11867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11868 live11868 coloured11868 = result11868 := by
  rw [tree11868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11866 coloured11866 at child
  try dsimp only [live11868, coloured11868]
  rw [child]
  dsimp only [result11866]
  have child := child1
  unfold live11867 coloured11867 at child
  try dsimp only [live11868, coloured11868]
  rw [child]
  dsimp only [result11867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11869_agree_conditional : tree11869 = literal11869 := by
  rw [tree11869_def]
  rfl
theorem node11869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11869 live11869 coloured11869 = result11869 := by
  rw [tree11869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11870_agree_conditional
    (child0 : tree11868 = literal11868)
    (child1 : tree11869 = literal11869) : tree11870 = literal11870 := by
  rw [tree11870_def, child0, child1]
  rfl
theorem node11870_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11868 live11868 coloured11868 = result11868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11869 live11869 coloured11869 = result11869) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11870 live11870 coloured11870 = result11870 := by
  rw [tree11870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11868 coloured11868 at child
  try dsimp only [live11870, coloured11870]
  rw [child]
  dsimp only [result11868]
  have child := child1
  unfold live11869 coloured11869 at child
  try dsimp only [live11870, coloured11870]
  rw [child]
  dsimp only [result11869]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11871_agree_conditional : tree11871 = literal11871 := by
  rw [tree11871_def]
  rfl
theorem node11871_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11871 live11871 coloured11871 = result11871 := by
  rw [tree11871_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11872_agree_conditional
    (child0 : tree11870 = literal11870)
    (child1 : tree11871 = literal11871) : tree11872 = literal11872 := by
  rw [tree11872_def, child0, child1]
  rfl
theorem node11872_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11870 live11870 coloured11870 = result11870)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11871 live11871 coloured11871 = result11871) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11872 live11872 coloured11872 = result11872 := by
  rw [tree11872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11870 coloured11870 at child
  try dsimp only [live11872, coloured11872]
  rw [child]
  dsimp only [result11870]
  have child := child1
  unfold live11871 coloured11871 at child
  try dsimp only [live11872, coloured11872]
  rw [child]
  dsimp only [result11871]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11873_agree_conditional : tree11873 = literal11873 := by
  rw [tree11873_def]
  rfl
theorem node11873_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11873 live11873 coloured11873 = result11873 := by
  rw [tree11873_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11874_agree_conditional
    (child0 : tree11872 = literal11872)
    (child1 : tree11873 = literal11873) : tree11874 = literal11874 := by
  rw [tree11874_def, child0, child1]
  rfl
theorem node11874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11872 live11872 coloured11872 = result11872)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11873 live11873 coloured11873 = result11873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11874 live11874 coloured11874 = result11874 := by
  rw [tree11874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11872 coloured11872 at child
  try dsimp only [live11874, coloured11874]
  rw [child]
  dsimp only [result11872]
  have child := child1
  unfold live11873 coloured11873 at child
  try dsimp only [live11874, coloured11874]
  rw [child]
  dsimp only [result11873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11875_agree_conditional : tree11875 = literal11875 := by
  rw [tree11875_def]
  rfl
theorem node11875_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11875 live11875 coloured11875 = result11875 := by
  rw [tree11875_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11876_agree_conditional
    (child0 : tree11874 = literal11874)
    (child1 : tree11875 = literal11875) : tree11876 = literal11876 := by
  rw [tree11876_def, child0, child1]
  rfl
theorem node11876_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11874 live11874 coloured11874 = result11874)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11875 live11875 coloured11875 = result11875) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11876 live11876 coloured11876 = result11876 := by
  rw [tree11876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11874 coloured11874 at child
  try dsimp only [live11876, coloured11876]
  rw [child]
  dsimp only [result11874]
  have child := child1
  unfold live11875 coloured11875 at child
  try dsimp only [live11876, coloured11876]
  rw [child]
  dsimp only [result11875]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11877_agree_conditional : tree11877 = literal11877 := by
  rw [tree11877_def]
  rfl
theorem node11877_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11877 live11877 coloured11877 = result11877 := by
  rw [tree11877_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11878_agree_conditional
    (child0 : tree11876 = literal11876)
    (child1 : tree11877 = literal11877) : tree11878 = literal11878 := by
  rw [tree11878_def, child0, child1]
  rfl
theorem node11878_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11876 live11876 coloured11876 = result11876)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11877 live11877 coloured11877 = result11877) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11878 live11878 coloured11878 = result11878 := by
  rw [tree11878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11876 coloured11876 at child
  try dsimp only [live11878, coloured11878]
  rw [child]
  dsimp only [result11876]
  have child := child1
  unfold live11877 coloured11877 at child
  try dsimp only [live11878, coloured11878]
  rw [child]
  dsimp only [result11877]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11879_agree_conditional : tree11879 = literal11879 := by
  rw [tree11879_def]
  rfl
theorem node11879_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11879 live11879 coloured11879 = result11879 := by
  rw [tree11879_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11880_agree_conditional
    (child0 : tree11878 = literal11878)
    (child1 : tree11879 = literal11879) : tree11880 = literal11880 := by
  rw [tree11880_def, child0, child1]
  rfl
theorem node11880_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11878 live11878 coloured11878 = result11878)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11879 live11879 coloured11879 = result11879) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11880 live11880 coloured11880 = result11880 := by
  rw [tree11880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11878 coloured11878 at child
  try dsimp only [live11880, coloured11880]
  rw [child]
  dsimp only [result11878]
  have child := child1
  unfold live11879 coloured11879 at child
  try dsimp only [live11880, coloured11880]
  rw [child]
  dsimp only [result11879]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11881_agree_conditional : tree11881 = literal11881 := by
  rw [tree11881_def]
  rfl
theorem node11881_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11881 live11881 coloured11881 = result11881 := by
  rw [tree11881_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11882_agree_conditional
    (child0 : tree11880 = literal11880)
    (child1 : tree11881 = literal11881) : tree11882 = literal11882 := by
  rw [tree11882_def, child0, child1]
  rfl
theorem node11882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11880 live11880 coloured11880 = result11880)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11881 live11881 coloured11881 = result11881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11882 live11882 coloured11882 = result11882 := by
  rw [tree11882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11880 coloured11880 at child
  try dsimp only [live11882, coloured11882]
  rw [child]
  dsimp only [result11880]
  have child := child1
  unfold live11881 coloured11881 at child
  try dsimp only [live11882, coloured11882]
  rw [child]
  dsimp only [result11881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11883_agree_conditional : tree11883 = literal11883 := by
  rw [tree11883_def]
  rfl
theorem node11883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11883 live11883 coloured11883 = result11883 := by
  rw [tree11883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11884_agree_conditional
    (child0 : tree11882 = literal11882)
    (child1 : tree11883 = literal11883) : tree11884 = literal11884 := by
  rw [tree11884_def, child0, child1]
  rfl
theorem node11884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11882 live11882 coloured11882 = result11882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11883 live11883 coloured11883 = result11883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11884 live11884 coloured11884 = result11884 := by
  rw [tree11884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11882 coloured11882 at child
  try dsimp only [live11884, coloured11884]
  rw [child]
  dsimp only [result11882]
  have child := child1
  unfold live11883 coloured11883 at child
  try dsimp only [live11884, coloured11884]
  rw [child]
  dsimp only [result11883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11885_agree_conditional : tree11885 = literal11885 := by
  rw [tree11885_def]
  rfl
theorem node11885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11885 live11885 coloured11885 = result11885 := by
  rw [tree11885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11886_agree_conditional
    (child0 : tree11884 = literal11884)
    (child1 : tree11885 = literal11885) : tree11886 = literal11886 := by
  rw [tree11886_def, child0, child1]
  rfl
theorem node11886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11884 live11884 coloured11884 = result11884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11885 live11885 coloured11885 = result11885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11886 live11886 coloured11886 = result11886 := by
  rw [tree11886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11884 coloured11884 at child
  try dsimp only [live11886, coloured11886]
  rw [child]
  dsimp only [result11884]
  have child := child1
  unfold live11885 coloured11885 at child
  try dsimp only [live11886, coloured11886]
  rw [child]
  dsimp only [result11885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11887_agree_conditional : tree11887 = literal11887 := by
  rw [tree11887_def]
  rfl
theorem node11887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11887 live11887 coloured11887 = result11887 := by
  rw [tree11887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11888_agree_conditional
    (child0 : tree11886 = literal11886)
    (child1 : tree11887 = literal11887) : tree11888 = literal11888 := by
  rw [tree11888_def, child0, child1]
  rfl
theorem node11888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11886 live11886 coloured11886 = result11886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11887 live11887 coloured11887 = result11887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11888 live11888 coloured11888 = result11888 := by
  rw [tree11888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11886 coloured11886 at child
  try dsimp only [live11888, coloured11888]
  rw [child]
  dsimp only [result11886]
  have child := child1
  unfold live11887 coloured11887 at child
  try dsimp only [live11888, coloured11888]
  rw [child]
  dsimp only [result11887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11889_agree_conditional : tree11889 = literal11889 := by
  rw [tree11889_def]
  rfl
theorem node11889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11889 live11889 coloured11889 = result11889 := by
  rw [tree11889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11890_agree_conditional
    (child0 : tree11888 = literal11888)
    (child1 : tree11889 = literal11889) : tree11890 = literal11890 := by
  rw [tree11890_def, child0, child1]
  rfl
theorem node11890_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11888 live11888 coloured11888 = result11888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11889 live11889 coloured11889 = result11889) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11890 live11890 coloured11890 = result11890 := by
  rw [tree11890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11888 coloured11888 at child
  try dsimp only [live11890, coloured11890]
  rw [child]
  dsimp only [result11888]
  have child := child1
  unfold live11889 coloured11889 at child
  try dsimp only [live11890, coloured11890]
  rw [child]
  dsimp only [result11889]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11891_agree_conditional : tree11891 = literal11891 := by
  rw [tree11891_def]
  rfl
theorem node11891_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11891 live11891 coloured11891 = result11891 := by
  rw [tree11891_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11892_agree_conditional
    (child0 : tree11890 = literal11890)
    (child1 : tree11891 = literal11891) : tree11892 = literal11892 := by
  rw [tree11892_def, child0, child1]
  rfl
theorem node11892_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11890 live11890 coloured11890 = result11890)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11891 live11891 coloured11891 = result11891) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11892 live11892 coloured11892 = result11892 := by
  rw [tree11892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11890 coloured11890 at child
  try dsimp only [live11892, coloured11892]
  rw [child]
  dsimp only [result11890]
  have child := child1
  unfold live11891 coloured11891 at child
  try dsimp only [live11892, coloured11892]
  rw [child]
  dsimp only [result11891]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11893_agree_conditional : tree11893 = literal11893 := by
  rw [tree11893_def]
  rfl
theorem node11893_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11893 live11893 coloured11893 = result11893 := by
  rw [tree11893_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11894_agree_conditional
    (child0 : tree11892 = literal11892)
    (child1 : tree11893 = literal11893) : tree11894 = literal11894 := by
  rw [tree11894_def, child0, child1]
  rfl
theorem node11894_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11892 live11892 coloured11892 = result11892)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11893 live11893 coloured11893 = result11893) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11894 live11894 coloured11894 = result11894 := by
  rw [tree11894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11892 coloured11892 at child
  try dsimp only [live11894, coloured11894]
  rw [child]
  dsimp only [result11892]
  have child := child1
  unfold live11893 coloured11893 at child
  try dsimp only [live11894, coloured11894]
  rw [child]
  dsimp only [result11893]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11895_agree_conditional : tree11895 = literal11895 := by
  rw [tree11895_def]
  rfl
theorem node11895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11895 live11895 coloured11895 = result11895 := by
  rw [tree11895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11896_agree_conditional
    (child0 : tree11894 = literal11894)
    (child1 : tree11895 = literal11895) : tree11896 = literal11896 := by
  rw [tree11896_def, child0, child1]
  rfl
theorem node11896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11894 live11894 coloured11894 = result11894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11895 live11895 coloured11895 = result11895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11896 live11896 coloured11896 = result11896 := by
  rw [tree11896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11894 coloured11894 at child
  try dsimp only [live11896, coloured11896]
  rw [child]
  dsimp only [result11894]
  have child := child1
  unfold live11895 coloured11895 at child
  try dsimp only [live11896, coloured11896]
  rw [child]
  dsimp only [result11895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11897_agree_conditional : tree11897 = literal11897 := by
  rw [tree11897_def]
  rfl
theorem node11897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11897 live11897 coloured11897 = result11897 := by
  rw [tree11897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11898_agree_conditional
    (child0 : tree11896 = literal11896)
    (child1 : tree11897 = literal11897) : tree11898 = literal11898 := by
  rw [tree11898_def, child0, child1]
  rfl
theorem node11898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11896 live11896 coloured11896 = result11896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11897 live11897 coloured11897 = result11897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11898 live11898 coloured11898 = result11898 := by
  rw [tree11898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11896 coloured11896 at child
  try dsimp only [live11898, coloured11898]
  rw [child]
  dsimp only [result11896]
  have child := child1
  unfold live11897 coloured11897 at child
  try dsimp only [live11898, coloured11898]
  rw [child]
  dsimp only [result11897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11899_agree_conditional : tree11899 = literal11899 := by
  rw [tree11899_def]
  rfl
theorem node11899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11899 live11899 coloured11899 = result11899 := by
  rw [tree11899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11900_agree_conditional
    (child0 : tree11898 = literal11898)
    (child1 : tree11899 = literal11899) : tree11900 = literal11900 := by
  rw [tree11900_def, child0, child1]
  rfl
theorem node11900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11898 live11898 coloured11898 = result11898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11899 live11899 coloured11899 = result11899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11900 live11900 coloured11900 = result11900 := by
  rw [tree11900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11898 coloured11898 at child
  try dsimp only [live11900, coloured11900]
  rw [child]
  dsimp only [result11898]
  have child := child1
  unfold live11899 coloured11899 at child
  try dsimp only [live11900, coloured11900]
  rw [child]
  dsimp only [result11899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11901_agree_conditional : tree11901 = literal11901 := by
  rw [tree11901_def]
  rfl
theorem node11901_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11901 live11901 coloured11901 = result11901 := by
  rw [tree11901_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11902_agree_conditional
    (child0 : tree11900 = literal11900)
    (child1 : tree11901 = literal11901) : tree11902 = literal11902 := by
  rw [tree11902_def, child0, child1]
  rfl
theorem node11902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11900 live11900 coloured11900 = result11900)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11901 live11901 coloured11901 = result11901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11902 live11902 coloured11902 = result11902 := by
  rw [tree11902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11900 coloured11900 at child
  try dsimp only [live11902, coloured11902]
  rw [child]
  dsimp only [result11900]
  have child := child1
  unfold live11901 coloured11901 at child
  try dsimp only [live11902, coloured11902]
  rw [child]
  dsimp only [result11901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11903_agree_conditional : tree11903 = literal11903 := by
  rw [tree11903_def]
  rfl
theorem node11903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11903 live11903 coloured11903 = result11903 := by
  rw [tree11903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
