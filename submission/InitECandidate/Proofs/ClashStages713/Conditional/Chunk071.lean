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
theorem tree6816_agree_conditional
    (child0 : tree6814 = literal6814)
    (child1 : tree6815 = literal6815) : tree6816 = literal6816 := by
  rw [tree6816_def, child0, child1]
  rfl
theorem node6816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6814 live6814 coloured6814 = result6814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6815 live6815 coloured6815 = result6815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6816 live6816 coloured6816 = result6816 := by
  rw [tree6816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6814 coloured6814 at child
  try dsimp only [live6816, coloured6816]
  rw [child]
  dsimp only [result6814]
  have child := child1
  unfold live6815 coloured6815 at child
  try dsimp only [live6816, coloured6816]
  rw [child]
  dsimp only [result6815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6817_agree_conditional : tree6817 = literal6817 := by
  rw [tree6817_def]
  rfl
theorem node6817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6817 live6817 coloured6817 = result6817 := by
  rw [tree6817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6818_agree_conditional
    (child0 : tree6816 = literal6816)
    (child1 : tree6817 = literal6817) : tree6818 = literal6818 := by
  rw [tree6818_def, child0, child1]
  rfl
theorem node6818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6816 live6816 coloured6816 = result6816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6817 live6817 coloured6817 = result6817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6818 live6818 coloured6818 = result6818 := by
  rw [tree6818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6816 coloured6816 at child
  try dsimp only [live6818, coloured6818]
  rw [child]
  dsimp only [result6816]
  have child := child1
  unfold live6817 coloured6817 at child
  try dsimp only [live6818, coloured6818]
  rw [child]
  dsimp only [result6817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6819_agree_conditional : tree6819 = literal6819 := by
  rw [tree6819_def]
  rfl
theorem node6819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6819 live6819 coloured6819 = result6819 := by
  rw [tree6819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6820_agree_conditional
    (child0 : tree6818 = literal6818)
    (child1 : tree6819 = literal6819) : tree6820 = literal6820 := by
  rw [tree6820_def, child0, child1]
  rfl
theorem node6820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6818 live6818 coloured6818 = result6818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6819 live6819 coloured6819 = result6819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6820 live6820 coloured6820 = result6820 := by
  rw [tree6820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6818 coloured6818 at child
  try dsimp only [live6820, coloured6820]
  rw [child]
  dsimp only [result6818]
  have child := child1
  unfold live6819 coloured6819 at child
  try dsimp only [live6820, coloured6820]
  rw [child]
  dsimp only [result6819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6821_agree_conditional : tree6821 = literal6821 := by
  rw [tree6821_def]
  rfl
theorem node6821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6821 live6821 coloured6821 = result6821 := by
  rw [tree6821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6822_agree_conditional
    (child0 : tree6820 = literal6820)
    (child1 : tree6821 = literal6821) : tree6822 = literal6822 := by
  rw [tree6822_def, child0, child1]
  rfl
theorem node6822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6820 live6820 coloured6820 = result6820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6821 live6821 coloured6821 = result6821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6822 live6822 coloured6822 = result6822 := by
  rw [tree6822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6820 coloured6820 at child
  try dsimp only [live6822, coloured6822]
  rw [child]
  dsimp only [result6820]
  have child := child1
  unfold live6821 coloured6821 at child
  try dsimp only [live6822, coloured6822]
  rw [child]
  dsimp only [result6821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6823_agree_conditional : tree6823 = literal6823 := by
  rw [tree6823_def]
  rfl
theorem node6823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6823 live6823 coloured6823 = result6823 := by
  rw [tree6823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6824_agree_conditional
    (child0 : tree6822 = literal6822)
    (child1 : tree6823 = literal6823) : tree6824 = literal6824 := by
  rw [tree6824_def, child0, child1]
  rfl
theorem node6824_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6822 live6822 coloured6822 = result6822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6823 live6823 coloured6823 = result6823) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6824 live6824 coloured6824 = result6824 := by
  rw [tree6824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6822 coloured6822 at child
  try dsimp only [live6824, coloured6824]
  rw [child]
  dsimp only [result6822]
  have child := child1
  unfold live6823 coloured6823 at child
  try dsimp only [live6824, coloured6824]
  rw [child]
  dsimp only [result6823]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6825_agree_conditional : tree6825 = literal6825 := by
  rw [tree6825_def]
  rfl
theorem node6825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6825 live6825 coloured6825 = result6825 := by
  rw [tree6825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6826_agree_conditional
    (child0 : tree6824 = literal6824)
    (child1 : tree6825 = literal6825) : tree6826 = literal6826 := by
  rw [tree6826_def, child0, child1]
  rfl
theorem node6826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6824 live6824 coloured6824 = result6824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6825 live6825 coloured6825 = result6825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6826 live6826 coloured6826 = result6826 := by
  rw [tree6826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6824 coloured6824 at child
  try dsimp only [live6826, coloured6826]
  rw [child]
  dsimp only [result6824]
  have child := child1
  unfold live6825 coloured6825 at child
  try dsimp only [live6826, coloured6826]
  rw [child]
  dsimp only [result6825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6827_agree_conditional : tree6827 = literal6827 := by
  rw [tree6827_def]
  rfl
theorem node6827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6827 live6827 coloured6827 = result6827 := by
  rw [tree6827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6828_agree_conditional
    (child0 : tree6826 = literal6826)
    (child1 : tree6827 = literal6827) : tree6828 = literal6828 := by
  rw [tree6828_def, child0, child1]
  rfl
theorem node6828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6826 live6826 coloured6826 = result6826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6827 live6827 coloured6827 = result6827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6828 live6828 coloured6828 = result6828 := by
  rw [tree6828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6826 coloured6826 at child
  try dsimp only [live6828, coloured6828]
  rw [child]
  dsimp only [result6826]
  have child := child1
  unfold live6827 coloured6827 at child
  try dsimp only [live6828, coloured6828]
  rw [child]
  dsimp only [result6827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6829_agree_conditional : tree6829 = literal6829 := by
  rw [tree6829_def]
  rfl
theorem node6829_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6829 live6829 coloured6829 = result6829 := by
  rw [tree6829_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6830_agree_conditional
    (child0 : tree6828 = literal6828)
    (child1 : tree6829 = literal6829) : tree6830 = literal6830 := by
  rw [tree6830_def, child0, child1]
  rfl
theorem node6830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6828 live6828 coloured6828 = result6828)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6829 live6829 coloured6829 = result6829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6830 live6830 coloured6830 = result6830 := by
  rw [tree6830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6828 coloured6828 at child
  try dsimp only [live6830, coloured6830]
  rw [child]
  dsimp only [result6828]
  have child := child1
  unfold live6829 coloured6829 at child
  try dsimp only [live6830, coloured6830]
  rw [child]
  dsimp only [result6829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6831_agree_conditional : tree6831 = literal6831 := by
  rw [tree6831_def]
  rfl
theorem node6831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6831 live6831 coloured6831 = result6831 := by
  rw [tree6831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6832_agree_conditional
    (child0 : tree6830 = literal6830)
    (child1 : tree6831 = literal6831) : tree6832 = literal6832 := by
  rw [tree6832_def, child0, child1]
  rfl
theorem node6832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6830 live6830 coloured6830 = result6830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6831 live6831 coloured6831 = result6831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6832 live6832 coloured6832 = result6832 := by
  rw [tree6832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6830 coloured6830 at child
  try dsimp only [live6832, coloured6832]
  rw [child]
  dsimp only [result6830]
  have child := child1
  unfold live6831 coloured6831 at child
  try dsimp only [live6832, coloured6832]
  rw [child]
  dsimp only [result6831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6833_agree_conditional : tree6833 = literal6833 := by
  rw [tree6833_def]
  rfl
theorem node6833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6833 live6833 coloured6833 = result6833 := by
  rw [tree6833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6834_agree_conditional
    (child0 : tree6832 = literal6832)
    (child1 : tree6833 = literal6833) : tree6834 = literal6834 := by
  rw [tree6834_def, child0, child1]
  rfl
theorem node6834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6832 live6832 coloured6832 = result6832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6833 live6833 coloured6833 = result6833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6834 live6834 coloured6834 = result6834 := by
  rw [tree6834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6832 coloured6832 at child
  try dsimp only [live6834, coloured6834]
  rw [child]
  dsimp only [result6832]
  have child := child1
  unfold live6833 coloured6833 at child
  try dsimp only [live6834, coloured6834]
  rw [child]
  dsimp only [result6833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6835_agree_conditional : tree6835 = literal6835 := by
  rw [tree6835_def]
  rfl
theorem node6835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6835 live6835 coloured6835 = result6835 := by
  rw [tree6835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6836_agree_conditional
    (child0 : tree6834 = literal6834)
    (child1 : tree6835 = literal6835) : tree6836 = literal6836 := by
  rw [tree6836_def, child0, child1]
  rfl
theorem node6836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6834 live6834 coloured6834 = result6834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6835 live6835 coloured6835 = result6835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6836 live6836 coloured6836 = result6836 := by
  rw [tree6836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6834 coloured6834 at child
  try dsimp only [live6836, coloured6836]
  rw [child]
  dsimp only [result6834]
  have child := child1
  unfold live6835 coloured6835 at child
  try dsimp only [live6836, coloured6836]
  rw [child]
  dsimp only [result6835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6837_agree_conditional : tree6837 = literal6837 := by
  rw [tree6837_def]
  rfl
theorem node6837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6837 live6837 coloured6837 = result6837 := by
  rw [tree6837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6838_agree_conditional
    (child0 : tree6836 = literal6836)
    (child1 : tree6837 = literal6837) : tree6838 = literal6838 := by
  rw [tree6838_def, child0, child1]
  rfl
theorem node6838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6836 live6836 coloured6836 = result6836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6837 live6837 coloured6837 = result6837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6838 live6838 coloured6838 = result6838 := by
  rw [tree6838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6836 coloured6836 at child
  try dsimp only [live6838, coloured6838]
  rw [child]
  dsimp only [result6836]
  have child := child1
  unfold live6837 coloured6837 at child
  try dsimp only [live6838, coloured6838]
  rw [child]
  dsimp only [result6837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6839_agree_conditional : tree6839 = literal6839 := by
  rw [tree6839_def]
  rfl
theorem node6839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6839 live6839 coloured6839 = result6839 := by
  rw [tree6839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6840_agree_conditional
    (child0 : tree6838 = literal6838)
    (child1 : tree6839 = literal6839) : tree6840 = literal6840 := by
  rw [tree6840_def, child0, child1]
  rfl
theorem node6840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6838 live6838 coloured6838 = result6838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6839 live6839 coloured6839 = result6839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6840 live6840 coloured6840 = result6840 := by
  rw [tree6840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6838 coloured6838 at child
  try dsimp only [live6840, coloured6840]
  rw [child]
  dsimp only [result6838]
  have child := child1
  unfold live6839 coloured6839 at child
  try dsimp only [live6840, coloured6840]
  rw [child]
  dsimp only [result6839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6841_agree_conditional : tree6841 = literal6841 := by
  rw [tree6841_def]
  rfl
theorem node6841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6841 live6841 coloured6841 = result6841 := by
  rw [tree6841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6842_agree_conditional
    (child0 : tree6840 = literal6840)
    (child1 : tree6841 = literal6841) : tree6842 = literal6842 := by
  rw [tree6842_def, child0, child1]
  rfl
theorem node6842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6840 live6840 coloured6840 = result6840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6841 live6841 coloured6841 = result6841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6842 live6842 coloured6842 = result6842 := by
  rw [tree6842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6840 coloured6840 at child
  try dsimp only [live6842, coloured6842]
  rw [child]
  dsimp only [result6840]
  have child := child1
  unfold live6841 coloured6841 at child
  try dsimp only [live6842, coloured6842]
  rw [child]
  dsimp only [result6841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6843_agree_conditional : tree6843 = literal6843 := by
  rw [tree6843_def]
  rfl
theorem node6843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6843 live6843 coloured6843 = result6843 := by
  rw [tree6843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6844_agree_conditional
    (child0 : tree6842 = literal6842)
    (child1 : tree6843 = literal6843) : tree6844 = literal6844 := by
  rw [tree6844_def, child0, child1]
  rfl
theorem node6844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6842 live6842 coloured6842 = result6842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6843 live6843 coloured6843 = result6843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6844 live6844 coloured6844 = result6844 := by
  rw [tree6844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6842 coloured6842 at child
  try dsimp only [live6844, coloured6844]
  rw [child]
  dsimp only [result6842]
  have child := child1
  unfold live6843 coloured6843 at child
  try dsimp only [live6844, coloured6844]
  rw [child]
  dsimp only [result6843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6845_agree_conditional : tree6845 = literal6845 := by
  rw [tree6845_def]
  rfl
theorem node6845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6845 live6845 coloured6845 = result6845 := by
  rw [tree6845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6846_agree_conditional
    (child0 : tree6844 = literal6844)
    (child1 : tree6845 = literal6845) : tree6846 = literal6846 := by
  rw [tree6846_def, child0, child1]
  rfl
theorem node6846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6844 live6844 coloured6844 = result6844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6845 live6845 coloured6845 = result6845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6846 live6846 coloured6846 = result6846 := by
  rw [tree6846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6844 coloured6844 at child
  try dsimp only [live6846, coloured6846]
  rw [child]
  dsimp only [result6844]
  have child := child1
  unfold live6845 coloured6845 at child
  try dsimp only [live6846, coloured6846]
  rw [child]
  dsimp only [result6845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6847_agree_conditional : tree6847 = literal6847 := by
  rw [tree6847_def]
  rfl
theorem node6847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6847 live6847 coloured6847 = result6847 := by
  rw [tree6847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6848_agree_conditional
    (child0 : tree6846 = literal6846)
    (child1 : tree6847 = literal6847) : tree6848 = literal6848 := by
  rw [tree6848_def, child0, child1]
  rfl
theorem node6848_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6846 live6846 coloured6846 = result6846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6847 live6847 coloured6847 = result6847) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6848 live6848 coloured6848 = result6848 := by
  rw [tree6848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6846 coloured6846 at child
  try dsimp only [live6848, coloured6848]
  rw [child]
  dsimp only [result6846]
  have child := child1
  unfold live6847 coloured6847 at child
  try dsimp only [live6848, coloured6848]
  rw [child]
  dsimp only [result6847]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6849_agree_conditional : tree6849 = literal6849 := by
  rw [tree6849_def]
  rfl
theorem node6849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6849 live6849 coloured6849 = result6849 := by
  rw [tree6849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6850_agree_conditional
    (child0 : tree6848 = literal6848)
    (child1 : tree6849 = literal6849) : tree6850 = literal6850 := by
  rw [tree6850_def, child0, child1]
  rfl
theorem node6850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6848 live6848 coloured6848 = result6848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6849 live6849 coloured6849 = result6849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6850 live6850 coloured6850 = result6850 := by
  rw [tree6850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6848 coloured6848 at child
  try dsimp only [live6850, coloured6850]
  rw [child]
  dsimp only [result6848]
  have child := child1
  unfold live6849 coloured6849 at child
  try dsimp only [live6850, coloured6850]
  rw [child]
  dsimp only [result6849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6851_agree_conditional : tree6851 = literal6851 := by
  rw [tree6851_def]
  rfl
theorem node6851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6851 live6851 coloured6851 = result6851 := by
  rw [tree6851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6852_agree_conditional
    (child0 : tree6850 = literal6850)
    (child1 : tree6851 = literal6851) : tree6852 = literal6852 := by
  rw [tree6852_def, child0, child1]
  rfl
theorem node6852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6850 live6850 coloured6850 = result6850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6851 live6851 coloured6851 = result6851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6852 live6852 coloured6852 = result6852 := by
  rw [tree6852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6850 coloured6850 at child
  try dsimp only [live6852, coloured6852]
  rw [child]
  dsimp only [result6850]
  have child := child1
  unfold live6851 coloured6851 at child
  try dsimp only [live6852, coloured6852]
  rw [child]
  dsimp only [result6851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6853_agree_conditional : tree6853 = literal6853 := by
  rw [tree6853_def]
  rfl
theorem node6853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6853 live6853 coloured6853 = result6853 := by
  rw [tree6853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6854_agree_conditional
    (child0 : tree6852 = literal6852)
    (child1 : tree6853 = literal6853) : tree6854 = literal6854 := by
  rw [tree6854_def, child0, child1]
  rfl
theorem node6854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6852 live6852 coloured6852 = result6852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6853 live6853 coloured6853 = result6853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6854 live6854 coloured6854 = result6854 := by
  rw [tree6854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6852 coloured6852 at child
  try dsimp only [live6854, coloured6854]
  rw [child]
  dsimp only [result6852]
  have child := child1
  unfold live6853 coloured6853 at child
  try dsimp only [live6854, coloured6854]
  rw [child]
  dsimp only [result6853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6855_agree_conditional : tree6855 = literal6855 := by
  rw [tree6855_def]
  rfl
theorem node6855_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6855 live6855 coloured6855 = result6855 := by
  rw [tree6855_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6856_agree_conditional
    (child0 : tree6854 = literal6854)
    (child1 : tree6855 = literal6855) : tree6856 = literal6856 := by
  rw [tree6856_def, child0, child1]
  rfl
theorem node6856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6854 live6854 coloured6854 = result6854)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6855 live6855 coloured6855 = result6855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6856 live6856 coloured6856 = result6856 := by
  rw [tree6856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6854 coloured6854 at child
  try dsimp only [live6856, coloured6856]
  rw [child]
  dsimp only [result6854]
  have child := child1
  unfold live6855 coloured6855 at child
  try dsimp only [live6856, coloured6856]
  rw [child]
  dsimp only [result6855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6857_agree_conditional : tree6857 = literal6857 := by
  rw [tree6857_def]
  rfl
theorem node6857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6857 live6857 coloured6857 = result6857 := by
  rw [tree6857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6858_agree_conditional
    (child0 : tree6856 = literal6856)
    (child1 : tree6857 = literal6857) : tree6858 = literal6858 := by
  rw [tree6858_def, child0, child1]
  rfl
theorem node6858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6856 live6856 coloured6856 = result6856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6857 live6857 coloured6857 = result6857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6858 live6858 coloured6858 = result6858 := by
  rw [tree6858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6856 coloured6856 at child
  try dsimp only [live6858, coloured6858]
  rw [child]
  dsimp only [result6856]
  have child := child1
  unfold live6857 coloured6857 at child
  try dsimp only [live6858, coloured6858]
  rw [child]
  dsimp only [result6857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6859_agree_conditional : tree6859 = literal6859 := by
  rw [tree6859_def]
  rfl
theorem node6859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6859 live6859 coloured6859 = result6859 := by
  rw [tree6859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6860_agree_conditional
    (child0 : tree6858 = literal6858)
    (child1 : tree6859 = literal6859) : tree6860 = literal6860 := by
  rw [tree6860_def, child0, child1]
  rfl
theorem node6860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6858 live6858 coloured6858 = result6858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6859 live6859 coloured6859 = result6859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6860 live6860 coloured6860 = result6860 := by
  rw [tree6860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6858 coloured6858 at child
  try dsimp only [live6860, coloured6860]
  rw [child]
  dsimp only [result6858]
  have child := child1
  unfold live6859 coloured6859 at child
  try dsimp only [live6860, coloured6860]
  rw [child]
  dsimp only [result6859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6861_agree_conditional : tree6861 = literal6861 := by
  rw [tree6861_def]
  rfl
theorem node6861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6861 live6861 coloured6861 = result6861 := by
  rw [tree6861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6862_agree_conditional
    (child0 : tree6860 = literal6860)
    (child1 : tree6861 = literal6861) : tree6862 = literal6862 := by
  rw [tree6862_def, child0, child1]
  rfl
theorem node6862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6860 live6860 coloured6860 = result6860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6861 live6861 coloured6861 = result6861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6862 live6862 coloured6862 = result6862 := by
  rw [tree6862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6860 coloured6860 at child
  try dsimp only [live6862, coloured6862]
  rw [child]
  dsimp only [result6860]
  have child := child1
  unfold live6861 coloured6861 at child
  try dsimp only [live6862, coloured6862]
  rw [child]
  dsimp only [result6861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6863_agree_conditional : tree6863 = literal6863 := by
  rw [tree6863_def]
  rfl
theorem node6863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6863 live6863 coloured6863 = result6863 := by
  rw [tree6863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6864_agree_conditional
    (child0 : tree6862 = literal6862)
    (child1 : tree6863 = literal6863) : tree6864 = literal6864 := by
  rw [tree6864_def, child0, child1]
  rfl
theorem node6864_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6862 live6862 coloured6862 = result6862)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6863 live6863 coloured6863 = result6863) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6864 live6864 coloured6864 = result6864 := by
  rw [tree6864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6862 coloured6862 at child
  try dsimp only [live6864, coloured6864]
  rw [child]
  dsimp only [result6862]
  have child := child1
  unfold live6863 coloured6863 at child
  try dsimp only [live6864, coloured6864]
  rw [child]
  dsimp only [result6863]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6865_agree_conditional : tree6865 = literal6865 := by
  rw [tree6865_def]
  rfl
theorem node6865_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6865 live6865 coloured6865 = result6865 := by
  rw [tree6865_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6866_agree_conditional
    (child0 : tree6864 = literal6864)
    (child1 : tree6865 = literal6865) : tree6866 = literal6866 := by
  rw [tree6866_def, child0, child1]
  rfl
theorem node6866_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6864 live6864 coloured6864 = result6864)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6865 live6865 coloured6865 = result6865) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6866 live6866 coloured6866 = result6866 := by
  rw [tree6866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6864 coloured6864 at child
  try dsimp only [live6866, coloured6866]
  rw [child]
  dsimp only [result6864]
  have child := child1
  unfold live6865 coloured6865 at child
  try dsimp only [live6866, coloured6866]
  rw [child]
  dsimp only [result6865]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6867_agree_conditional : tree6867 = literal6867 := by
  rw [tree6867_def]
  rfl
theorem node6867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6867 live6867 coloured6867 = result6867 := by
  rw [tree6867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6868_agree_conditional
    (child0 : tree6866 = literal6866)
    (child1 : tree6867 = literal6867) : tree6868 = literal6868 := by
  rw [tree6868_def, child0, child1]
  rfl
theorem node6868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6866 live6866 coloured6866 = result6866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6867 live6867 coloured6867 = result6867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6868 live6868 coloured6868 = result6868 := by
  rw [tree6868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6866 coloured6866 at child
  try dsimp only [live6868, coloured6868]
  rw [child]
  dsimp only [result6866]
  have child := child1
  unfold live6867 coloured6867 at child
  try dsimp only [live6868, coloured6868]
  rw [child]
  dsimp only [result6867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6869_agree_conditional : tree6869 = literal6869 := by
  rw [tree6869_def]
  rfl
theorem node6869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6869 live6869 coloured6869 = result6869 := by
  rw [tree6869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6870_agree_conditional
    (child0 : tree6868 = literal6868)
    (child1 : tree6869 = literal6869) : tree6870 = literal6870 := by
  rw [tree6870_def, child0, child1]
  rfl
theorem node6870_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6868 live6868 coloured6868 = result6868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6869 live6869 coloured6869 = result6869) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6870 live6870 coloured6870 = result6870 := by
  rw [tree6870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6868 coloured6868 at child
  try dsimp only [live6870, coloured6870]
  rw [child]
  dsimp only [result6868]
  have child := child1
  unfold live6869 coloured6869 at child
  try dsimp only [live6870, coloured6870]
  rw [child]
  dsimp only [result6869]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6871_agree_conditional : tree6871 = literal6871 := by
  rw [tree6871_def]
  rfl
theorem node6871_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6871 live6871 coloured6871 = result6871 := by
  rw [tree6871_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6872_agree_conditional
    (child0 : tree6870 = literal6870)
    (child1 : tree6871 = literal6871) : tree6872 = literal6872 := by
  rw [tree6872_def, child0, child1]
  rfl
theorem node6872_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6870 live6870 coloured6870 = result6870)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6871 live6871 coloured6871 = result6871) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6872 live6872 coloured6872 = result6872 := by
  rw [tree6872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6870 coloured6870 at child
  try dsimp only [live6872, coloured6872]
  rw [child]
  dsimp only [result6870]
  have child := child1
  unfold live6871 coloured6871 at child
  try dsimp only [live6872, coloured6872]
  rw [child]
  dsimp only [result6871]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6873_agree_conditional : tree6873 = literal6873 := by
  rw [tree6873_def]
  rfl
theorem node6873_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6873 live6873 coloured6873 = result6873 := by
  rw [tree6873_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6874_agree_conditional
    (child0 : tree6872 = literal6872)
    (child1 : tree6873 = literal6873) : tree6874 = literal6874 := by
  rw [tree6874_def, child0, child1]
  rfl
theorem node6874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6872 live6872 coloured6872 = result6872)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6873 live6873 coloured6873 = result6873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6874 live6874 coloured6874 = result6874 := by
  rw [tree6874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6872 coloured6872 at child
  try dsimp only [live6874, coloured6874]
  rw [child]
  dsimp only [result6872]
  have child := child1
  unfold live6873 coloured6873 at child
  try dsimp only [live6874, coloured6874]
  rw [child]
  dsimp only [result6873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6875_agree_conditional : tree6875 = literal6875 := by
  rw [tree6875_def]
  rfl
theorem node6875_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6875 live6875 coloured6875 = result6875 := by
  rw [tree6875_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6876_agree_conditional
    (child0 : tree6874 = literal6874)
    (child1 : tree6875 = literal6875) : tree6876 = literal6876 := by
  rw [tree6876_def, child0, child1]
  rfl
theorem node6876_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6874 live6874 coloured6874 = result6874)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6875 live6875 coloured6875 = result6875) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6876 live6876 coloured6876 = result6876 := by
  rw [tree6876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6874 coloured6874 at child
  try dsimp only [live6876, coloured6876]
  rw [child]
  dsimp only [result6874]
  have child := child1
  unfold live6875 coloured6875 at child
  try dsimp only [live6876, coloured6876]
  rw [child]
  dsimp only [result6875]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6877_agree_conditional : tree6877 = literal6877 := by
  rw [tree6877_def]
  rfl
theorem node6877_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6877 live6877 coloured6877 = result6877 := by
  rw [tree6877_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6878_agree_conditional
    (child0 : tree6876 = literal6876)
    (child1 : tree6877 = literal6877) : tree6878 = literal6878 := by
  rw [tree6878_def, child0, child1]
  rfl
theorem node6878_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6876 live6876 coloured6876 = result6876)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6877 live6877 coloured6877 = result6877) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6878 live6878 coloured6878 = result6878 := by
  rw [tree6878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6876 coloured6876 at child
  try dsimp only [live6878, coloured6878]
  rw [child]
  dsimp only [result6876]
  have child := child1
  unfold live6877 coloured6877 at child
  try dsimp only [live6878, coloured6878]
  rw [child]
  dsimp only [result6877]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6879_agree_conditional : tree6879 = literal6879 := by
  rw [tree6879_def]
  rfl
theorem node6879_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6879 live6879 coloured6879 = result6879 := by
  rw [tree6879_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6880_agree_conditional
    (child0 : tree6878 = literal6878)
    (child1 : tree6879 = literal6879) : tree6880 = literal6880 := by
  rw [tree6880_def, child0, child1]
  rfl
theorem node6880_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6878 live6878 coloured6878 = result6878)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6879 live6879 coloured6879 = result6879) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6880 live6880 coloured6880 = result6880 := by
  rw [tree6880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6878 coloured6878 at child
  try dsimp only [live6880, coloured6880]
  rw [child]
  dsimp only [result6878]
  have child := child1
  unfold live6879 coloured6879 at child
  try dsimp only [live6880, coloured6880]
  rw [child]
  dsimp only [result6879]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6881_agree_conditional : tree6881 = literal6881 := by
  rw [tree6881_def]
  rfl
theorem node6881_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6881 live6881 coloured6881 = result6881 := by
  rw [tree6881_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6882_agree_conditional
    (child0 : tree6880 = literal6880)
    (child1 : tree6881 = literal6881) : tree6882 = literal6882 := by
  rw [tree6882_def, child0, child1]
  rfl
theorem node6882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6880 live6880 coloured6880 = result6880)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6881 live6881 coloured6881 = result6881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6882 live6882 coloured6882 = result6882 := by
  rw [tree6882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6880 coloured6880 at child
  try dsimp only [live6882, coloured6882]
  rw [child]
  dsimp only [result6880]
  have child := child1
  unfold live6881 coloured6881 at child
  try dsimp only [live6882, coloured6882]
  rw [child]
  dsimp only [result6881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6883_agree_conditional : tree6883 = literal6883 := by
  rw [tree6883_def]
  rfl
theorem node6883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6883 live6883 coloured6883 = result6883 := by
  rw [tree6883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6884_agree_conditional
    (child0 : tree6882 = literal6882)
    (child1 : tree6883 = literal6883) : tree6884 = literal6884 := by
  rw [tree6884_def, child0, child1]
  rfl
theorem node6884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6882 live6882 coloured6882 = result6882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6883 live6883 coloured6883 = result6883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6884 live6884 coloured6884 = result6884 := by
  rw [tree6884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6882 coloured6882 at child
  try dsimp only [live6884, coloured6884]
  rw [child]
  dsimp only [result6882]
  have child := child1
  unfold live6883 coloured6883 at child
  try dsimp only [live6884, coloured6884]
  rw [child]
  dsimp only [result6883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6885_agree_conditional : tree6885 = literal6885 := by
  rw [tree6885_def]
  rfl
theorem node6885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6885 live6885 coloured6885 = result6885 := by
  rw [tree6885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6886_agree_conditional
    (child0 : tree6884 = literal6884)
    (child1 : tree6885 = literal6885) : tree6886 = literal6886 := by
  rw [tree6886_def, child0, child1]
  rfl
theorem node6886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6884 live6884 coloured6884 = result6884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6885 live6885 coloured6885 = result6885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6886 live6886 coloured6886 = result6886 := by
  rw [tree6886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6884 coloured6884 at child
  try dsimp only [live6886, coloured6886]
  rw [child]
  dsimp only [result6884]
  have child := child1
  unfold live6885 coloured6885 at child
  try dsimp only [live6886, coloured6886]
  rw [child]
  dsimp only [result6885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6887_agree_conditional : tree6887 = literal6887 := by
  rw [tree6887_def]
  rfl
theorem node6887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6887 live6887 coloured6887 = result6887 := by
  rw [tree6887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6888_agree_conditional
    (child0 : tree6886 = literal6886)
    (child1 : tree6887 = literal6887) : tree6888 = literal6888 := by
  rw [tree6888_def, child0, child1]
  rfl
theorem node6888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6886 live6886 coloured6886 = result6886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6887 live6887 coloured6887 = result6887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6888 live6888 coloured6888 = result6888 := by
  rw [tree6888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6886 coloured6886 at child
  try dsimp only [live6888, coloured6888]
  rw [child]
  dsimp only [result6886]
  have child := child1
  unfold live6887 coloured6887 at child
  try dsimp only [live6888, coloured6888]
  rw [child]
  dsimp only [result6887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6889_agree_conditional : tree6889 = literal6889 := by
  rw [tree6889_def]
  rfl
theorem node6889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6889 live6889 coloured6889 = result6889 := by
  rw [tree6889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6890_agree_conditional
    (child0 : tree6888 = literal6888)
    (child1 : tree6889 = literal6889) : tree6890 = literal6890 := by
  rw [tree6890_def, child0, child1]
  rfl
theorem node6890_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6888 live6888 coloured6888 = result6888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6889 live6889 coloured6889 = result6889) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6890 live6890 coloured6890 = result6890 := by
  rw [tree6890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6888 coloured6888 at child
  try dsimp only [live6890, coloured6890]
  rw [child]
  dsimp only [result6888]
  have child := child1
  unfold live6889 coloured6889 at child
  try dsimp only [live6890, coloured6890]
  rw [child]
  dsimp only [result6889]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6891_agree_conditional : tree6891 = literal6891 := by
  rw [tree6891_def]
  rfl
theorem node6891_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6891 live6891 coloured6891 = result6891 := by
  rw [tree6891_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6892_agree_conditional
    (child0 : tree6890 = literal6890)
    (child1 : tree6891 = literal6891) : tree6892 = literal6892 := by
  rw [tree6892_def, child0, child1]
  rfl
theorem node6892_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6890 live6890 coloured6890 = result6890)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6891 live6891 coloured6891 = result6891) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6892 live6892 coloured6892 = result6892 := by
  rw [tree6892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6890 coloured6890 at child
  try dsimp only [live6892, coloured6892]
  rw [child]
  dsimp only [result6890]
  have child := child1
  unfold live6891 coloured6891 at child
  try dsimp only [live6892, coloured6892]
  rw [child]
  dsimp only [result6891]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6893_agree_conditional : tree6893 = literal6893 := by
  rw [tree6893_def]
  rfl
theorem node6893_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6893 live6893 coloured6893 = result6893 := by
  rw [tree6893_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6894_agree_conditional
    (child0 : tree6892 = literal6892)
    (child1 : tree6893 = literal6893) : tree6894 = literal6894 := by
  rw [tree6894_def, child0, child1]
  rfl
theorem node6894_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6892 live6892 coloured6892 = result6892)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6893 live6893 coloured6893 = result6893) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6894 live6894 coloured6894 = result6894 := by
  rw [tree6894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6892 coloured6892 at child
  try dsimp only [live6894, coloured6894]
  rw [child]
  dsimp only [result6892]
  have child := child1
  unfold live6893 coloured6893 at child
  try dsimp only [live6894, coloured6894]
  rw [child]
  dsimp only [result6893]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6895_agree_conditional : tree6895 = literal6895 := by
  rw [tree6895_def]
  rfl
theorem node6895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6895 live6895 coloured6895 = result6895 := by
  rw [tree6895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6896_agree_conditional
    (child0 : tree6894 = literal6894)
    (child1 : tree6895 = literal6895) : tree6896 = literal6896 := by
  rw [tree6896_def, child0, child1]
  rfl
theorem node6896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6894 live6894 coloured6894 = result6894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6895 live6895 coloured6895 = result6895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6896 live6896 coloured6896 = result6896 := by
  rw [tree6896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6894 coloured6894 at child
  try dsimp only [live6896, coloured6896]
  rw [child]
  dsimp only [result6894]
  have child := child1
  unfold live6895 coloured6895 at child
  try dsimp only [live6896, coloured6896]
  rw [child]
  dsimp only [result6895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6897_agree_conditional : tree6897 = literal6897 := by
  rw [tree6897_def]
  rfl
theorem node6897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6897 live6897 coloured6897 = result6897 := by
  rw [tree6897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6898_agree_conditional
    (child0 : tree6896 = literal6896)
    (child1 : tree6897 = literal6897) : tree6898 = literal6898 := by
  rw [tree6898_def, child0, child1]
  rfl
theorem node6898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6896 live6896 coloured6896 = result6896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6897 live6897 coloured6897 = result6897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6898 live6898 coloured6898 = result6898 := by
  rw [tree6898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6896 coloured6896 at child
  try dsimp only [live6898, coloured6898]
  rw [child]
  dsimp only [result6896]
  have child := child1
  unfold live6897 coloured6897 at child
  try dsimp only [live6898, coloured6898]
  rw [child]
  dsimp only [result6897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6899_agree_conditional : tree6899 = literal6899 := by
  rw [tree6899_def]
  rfl
theorem node6899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6899 live6899 coloured6899 = result6899 := by
  rw [tree6899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6900_agree_conditional
    (child0 : tree6898 = literal6898)
    (child1 : tree6899 = literal6899) : tree6900 = literal6900 := by
  rw [tree6900_def, child0, child1]
  rfl
theorem node6900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6898 live6898 coloured6898 = result6898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6899 live6899 coloured6899 = result6899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6900 live6900 coloured6900 = result6900 := by
  rw [tree6900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6898 coloured6898 at child
  try dsimp only [live6900, coloured6900]
  rw [child]
  dsimp only [result6898]
  have child := child1
  unfold live6899 coloured6899 at child
  try dsimp only [live6900, coloured6900]
  rw [child]
  dsimp only [result6899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6901_agree_conditional : tree6901 = literal6901 := by
  rw [tree6901_def]
  rfl
theorem node6901_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6901 live6901 coloured6901 = result6901 := by
  rw [tree6901_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6902_agree_conditional
    (child0 : tree6900 = literal6900)
    (child1 : tree6901 = literal6901) : tree6902 = literal6902 := by
  rw [tree6902_def, child0, child1]
  rfl
theorem node6902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6900 live6900 coloured6900 = result6900)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6901 live6901 coloured6901 = result6901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6902 live6902 coloured6902 = result6902 := by
  rw [tree6902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6900 coloured6900 at child
  try dsimp only [live6902, coloured6902]
  rw [child]
  dsimp only [result6900]
  have child := child1
  unfold live6901 coloured6901 at child
  try dsimp only [live6902, coloured6902]
  rw [child]
  dsimp only [result6901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6903_agree_conditional : tree6903 = literal6903 := by
  rw [tree6903_def]
  rfl
theorem node6903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6903 live6903 coloured6903 = result6903 := by
  rw [tree6903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6904_agree_conditional
    (child0 : tree6902 = literal6902)
    (child1 : tree6903 = literal6903) : tree6904 = literal6904 := by
  rw [tree6904_def, child0, child1]
  rfl
theorem node6904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6902 live6902 coloured6902 = result6902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6903 live6903 coloured6903 = result6903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6904 live6904 coloured6904 = result6904 := by
  rw [tree6904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6902 coloured6902 at child
  try dsimp only [live6904, coloured6904]
  rw [child]
  dsimp only [result6902]
  have child := child1
  unfold live6903 coloured6903 at child
  try dsimp only [live6904, coloured6904]
  rw [child]
  dsimp only [result6903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6905_agree_conditional : tree6905 = literal6905 := by
  rw [tree6905_def]
  rfl
theorem node6905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6905 live6905 coloured6905 = result6905 := by
  rw [tree6905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6906_agree_conditional
    (child0 : tree6904 = literal6904)
    (child1 : tree6905 = literal6905) : tree6906 = literal6906 := by
  rw [tree6906_def, child0, child1]
  rfl
theorem node6906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6904 live6904 coloured6904 = result6904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6905 live6905 coloured6905 = result6905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6906 live6906 coloured6906 = result6906 := by
  rw [tree6906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6904 coloured6904 at child
  try dsimp only [live6906, coloured6906]
  rw [child]
  dsimp only [result6904]
  have child := child1
  unfold live6905 coloured6905 at child
  try dsimp only [live6906, coloured6906]
  rw [child]
  dsimp only [result6905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6907_agree_conditional : tree6907 = literal6907 := by
  rw [tree6907_def]
  rfl
theorem node6907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6907 live6907 coloured6907 = result6907 := by
  rw [tree6907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6908_agree_conditional
    (child0 : tree6906 = literal6906)
    (child1 : tree6907 = literal6907) : tree6908 = literal6908 := by
  rw [tree6908_def, child0, child1]
  rfl
theorem node6908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6906 live6906 coloured6906 = result6906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6907 live6907 coloured6907 = result6907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6908 live6908 coloured6908 = result6908 := by
  rw [tree6908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6906 coloured6906 at child
  try dsimp only [live6908, coloured6908]
  rw [child]
  dsimp only [result6906]
  have child := child1
  unfold live6907 coloured6907 at child
  try dsimp only [live6908, coloured6908]
  rw [child]
  dsimp only [result6907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6909_agree_conditional : tree6909 = literal6909 := by
  rw [tree6909_def]
  rfl
theorem node6909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6909 live6909 coloured6909 = result6909 := by
  rw [tree6909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6910_agree_conditional
    (child0 : tree6908 = literal6908)
    (child1 : tree6909 = literal6909) : tree6910 = literal6910 := by
  rw [tree6910_def, child0, child1]
  rfl
theorem node6910_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6908 live6908 coloured6908 = result6908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6909 live6909 coloured6909 = result6909) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6910 live6910 coloured6910 = result6910 := by
  rw [tree6910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6908 coloured6908 at child
  try dsimp only [live6910, coloured6910]
  rw [child]
  dsimp only [result6908]
  have child := child1
  unfold live6909 coloured6909 at child
  try dsimp only [live6910, coloured6910]
  rw [child]
  dsimp only [result6909]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6911_agree_conditional : tree6911 = literal6911 := by
  rw [tree6911_def]
  rfl
theorem node6911_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6911 live6911 coloured6911 = result6911 := by
  rw [tree6911_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
