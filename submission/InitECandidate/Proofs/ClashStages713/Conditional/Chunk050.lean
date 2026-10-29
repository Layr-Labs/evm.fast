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
theorem tree4800_agree_conditional
    (child0 : tree4798 = literal4798)
    (child1 : tree4799 = literal4799) : tree4800 = literal4800 := by
  rw [tree4800_def, child0, child1]
  rfl
theorem node4800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4798 live4798 coloured4798 = result4798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4799 live4799 coloured4799 = result4799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4800 live4800 coloured4800 = result4800 := by
  rw [tree4800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4798 coloured4798 at child
  try dsimp only [live4800, coloured4800]
  rw [child]
  dsimp only [result4798]
  have child := child1
  unfold live4799 coloured4799 at child
  try dsimp only [live4800, coloured4800]
  rw [child]
  dsimp only [result4799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4801_agree_conditional : tree4801 = literal4801 := by
  rw [tree4801_def]
  rfl
theorem node4801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4801 live4801 coloured4801 = result4801 := by
  rw [tree4801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4802_agree_conditional
    (child0 : tree4800 = literal4800)
    (child1 : tree4801 = literal4801) : tree4802 = literal4802 := by
  rw [tree4802_def, child0, child1]
  rfl
theorem node4802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4800 live4800 coloured4800 = result4800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4801 live4801 coloured4801 = result4801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4802 live4802 coloured4802 = result4802 := by
  rw [tree4802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4800 coloured4800 at child
  try dsimp only [live4802, coloured4802]
  rw [child]
  dsimp only [result4800]
  have child := child1
  unfold live4801 coloured4801 at child
  try dsimp only [live4802, coloured4802]
  rw [child]
  dsimp only [result4801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4803_agree_conditional : tree4803 = literal4803 := by
  rw [tree4803_def]
  rfl
theorem node4803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4803 live4803 coloured4803 = result4803 := by
  rw [tree4803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4804_agree_conditional
    (child0 : tree4802 = literal4802)
    (child1 : tree4803 = literal4803) : tree4804 = literal4804 := by
  rw [tree4804_def, child0, child1]
  rfl
theorem node4804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4802 live4802 coloured4802 = result4802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4803 live4803 coloured4803 = result4803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4804 live4804 coloured4804 = result4804 := by
  rw [tree4804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4802 coloured4802 at child
  try dsimp only [live4804, coloured4804]
  rw [child]
  dsimp only [result4802]
  have child := child1
  unfold live4803 coloured4803 at child
  try dsimp only [live4804, coloured4804]
  rw [child]
  dsimp only [result4803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4805_agree_conditional : tree4805 = literal4805 := by
  rw [tree4805_def]
  rfl
theorem node4805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4805 live4805 coloured4805 = result4805 := by
  rw [tree4805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4806_agree_conditional
    (child0 : tree4804 = literal4804)
    (child1 : tree4805 = literal4805) : tree4806 = literal4806 := by
  rw [tree4806_def, child0, child1]
  rfl
theorem node4806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4804 live4804 coloured4804 = result4804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4805 live4805 coloured4805 = result4805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4806 live4806 coloured4806 = result4806 := by
  rw [tree4806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4804 coloured4804 at child
  try dsimp only [live4806, coloured4806]
  rw [child]
  dsimp only [result4804]
  have child := child1
  unfold live4805 coloured4805 at child
  try dsimp only [live4806, coloured4806]
  rw [child]
  dsimp only [result4805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4807_agree_conditional : tree4807 = literal4807 := by
  rw [tree4807_def]
  rfl
theorem node4807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4807 live4807 coloured4807 = result4807 := by
  rw [tree4807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4808_agree_conditional
    (child0 : tree4806 = literal4806)
    (child1 : tree4807 = literal4807) : tree4808 = literal4808 := by
  rw [tree4808_def, child0, child1]
  rfl
theorem node4808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4806 live4806 coloured4806 = result4806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4807 live4807 coloured4807 = result4807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4808 live4808 coloured4808 = result4808 := by
  rw [tree4808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4806 coloured4806 at child
  try dsimp only [live4808, coloured4808]
  rw [child]
  dsimp only [result4806]
  have child := child1
  unfold live4807 coloured4807 at child
  try dsimp only [live4808, coloured4808]
  rw [child]
  dsimp only [result4807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4809_agree_conditional : tree4809 = literal4809 := by
  rw [tree4809_def]
  rfl
theorem node4809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4809 live4809 coloured4809 = result4809 := by
  rw [tree4809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4810_agree_conditional
    (child0 : tree4808 = literal4808)
    (child1 : tree4809 = literal4809) : tree4810 = literal4810 := by
  rw [tree4810_def, child0, child1]
  rfl
theorem node4810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4808 live4808 coloured4808 = result4808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4809 live4809 coloured4809 = result4809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4810 live4810 coloured4810 = result4810 := by
  rw [tree4810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4808 coloured4808 at child
  try dsimp only [live4810, coloured4810]
  rw [child]
  dsimp only [result4808]
  have child := child1
  unfold live4809 coloured4809 at child
  try dsimp only [live4810, coloured4810]
  rw [child]
  dsimp only [result4809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4811_agree_conditional : tree4811 = literal4811 := by
  rw [tree4811_def]
  rfl
theorem node4811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4811 live4811 coloured4811 = result4811 := by
  rw [tree4811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4812_agree_conditional
    (child0 : tree4810 = literal4810)
    (child1 : tree4811 = literal4811) : tree4812 = literal4812 := by
  rw [tree4812_def, child0, child1]
  rfl
theorem node4812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4810 live4810 coloured4810 = result4810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4811 live4811 coloured4811 = result4811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4812 live4812 coloured4812 = result4812 := by
  rw [tree4812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4810 coloured4810 at child
  try dsimp only [live4812, coloured4812]
  rw [child]
  dsimp only [result4810]
  have child := child1
  unfold live4811 coloured4811 at child
  try dsimp only [live4812, coloured4812]
  rw [child]
  dsimp only [result4811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4813_agree_conditional : tree4813 = literal4813 := by
  rw [tree4813_def]
  rfl
theorem node4813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4813 live4813 coloured4813 = result4813 := by
  rw [tree4813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4814_agree_conditional
    (child0 : tree4812 = literal4812)
    (child1 : tree4813 = literal4813) : tree4814 = literal4814 := by
  rw [tree4814_def, child0, child1]
  rfl
theorem node4814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4812 live4812 coloured4812 = result4812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4813 live4813 coloured4813 = result4813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4814 live4814 coloured4814 = result4814 := by
  rw [tree4814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4812 coloured4812 at child
  try dsimp only [live4814, coloured4814]
  rw [child]
  dsimp only [result4812]
  have child := child1
  unfold live4813 coloured4813 at child
  try dsimp only [live4814, coloured4814]
  rw [child]
  dsimp only [result4813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4815_agree_conditional : tree4815 = literal4815 := by
  rw [tree4815_def]
  rfl
theorem node4815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4815 live4815 coloured4815 = result4815 := by
  rw [tree4815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4816_agree_conditional
    (child0 : tree4814 = literal4814)
    (child1 : tree4815 = literal4815) : tree4816 = literal4816 := by
  rw [tree4816_def, child0, child1]
  rfl
theorem node4816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4814 live4814 coloured4814 = result4814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4815 live4815 coloured4815 = result4815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4816 live4816 coloured4816 = result4816 := by
  rw [tree4816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4814 coloured4814 at child
  try dsimp only [live4816, coloured4816]
  rw [child]
  dsimp only [result4814]
  have child := child1
  unfold live4815 coloured4815 at child
  try dsimp only [live4816, coloured4816]
  rw [child]
  dsimp only [result4815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4817_agree_conditional : tree4817 = literal4817 := by
  rw [tree4817_def]
  rfl
theorem node4817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4817 live4817 coloured4817 = result4817 := by
  rw [tree4817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4818_agree_conditional
    (child0 : tree4816 = literal4816)
    (child1 : tree4817 = literal4817) : tree4818 = literal4818 := by
  rw [tree4818_def, child0, child1]
  rfl
theorem node4818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4816 live4816 coloured4816 = result4816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4817 live4817 coloured4817 = result4817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4818 live4818 coloured4818 = result4818 := by
  rw [tree4818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4816 coloured4816 at child
  try dsimp only [live4818, coloured4818]
  rw [child]
  dsimp only [result4816]
  have child := child1
  unfold live4817 coloured4817 at child
  try dsimp only [live4818, coloured4818]
  rw [child]
  dsimp only [result4817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4819_agree_conditional : tree4819 = literal4819 := by
  rw [tree4819_def]
  rfl
theorem node4819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4819 live4819 coloured4819 = result4819 := by
  rw [tree4819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4820_agree_conditional
    (child0 : tree4818 = literal4818)
    (child1 : tree4819 = literal4819) : tree4820 = literal4820 := by
  rw [tree4820_def, child0, child1]
  rfl
theorem node4820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4818 live4818 coloured4818 = result4818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4819 live4819 coloured4819 = result4819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4820 live4820 coloured4820 = result4820 := by
  rw [tree4820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4818 coloured4818 at child
  try dsimp only [live4820, coloured4820]
  rw [child]
  dsimp only [result4818]
  have child := child1
  unfold live4819 coloured4819 at child
  try dsimp only [live4820, coloured4820]
  rw [child]
  dsimp only [result4819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4821_agree_conditional : tree4821 = literal4821 := by
  rw [tree4821_def]
  rfl
theorem node4821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4821 live4821 coloured4821 = result4821 := by
  rw [tree4821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4822_agree_conditional
    (child0 : tree4820 = literal4820)
    (child1 : tree4821 = literal4821) : tree4822 = literal4822 := by
  rw [tree4822_def, child0, child1]
  rfl
theorem node4822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4820 live4820 coloured4820 = result4820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4821 live4821 coloured4821 = result4821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4822 live4822 coloured4822 = result4822 := by
  rw [tree4822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4820 coloured4820 at child
  try dsimp only [live4822, coloured4822]
  rw [child]
  dsimp only [result4820]
  have child := child1
  unfold live4821 coloured4821 at child
  try dsimp only [live4822, coloured4822]
  rw [child]
  dsimp only [result4821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4823_agree_conditional : tree4823 = literal4823 := by
  rw [tree4823_def]
  rfl
theorem node4823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4823 live4823 coloured4823 = result4823 := by
  rw [tree4823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4824_agree_conditional
    (child0 : tree4822 = literal4822)
    (child1 : tree4823 = literal4823) : tree4824 = literal4824 := by
  rw [tree4824_def, child0, child1]
  rfl
theorem node4824_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4822 live4822 coloured4822 = result4822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4823 live4823 coloured4823 = result4823) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4824 live4824 coloured4824 = result4824 := by
  rw [tree4824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4822 coloured4822 at child
  try dsimp only [live4824, coloured4824]
  rw [child]
  dsimp only [result4822]
  have child := child1
  unfold live4823 coloured4823 at child
  try dsimp only [live4824, coloured4824]
  rw [child]
  dsimp only [result4823]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4825_agree_conditional : tree4825 = literal4825 := by
  rw [tree4825_def]
  rfl
theorem node4825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4825 live4825 coloured4825 = result4825 := by
  rw [tree4825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4826_agree_conditional
    (child0 : tree4824 = literal4824)
    (child1 : tree4825 = literal4825) : tree4826 = literal4826 := by
  rw [tree4826_def, child0, child1]
  rfl
theorem node4826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4824 live4824 coloured4824 = result4824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4825 live4825 coloured4825 = result4825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4826 live4826 coloured4826 = result4826 := by
  rw [tree4826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4824 coloured4824 at child
  try dsimp only [live4826, coloured4826]
  rw [child]
  dsimp only [result4824]
  have child := child1
  unfold live4825 coloured4825 at child
  try dsimp only [live4826, coloured4826]
  rw [child]
  dsimp only [result4825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4827_agree_conditional : tree4827 = literal4827 := by
  rw [tree4827_def]
  rfl
theorem node4827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4827 live4827 coloured4827 = result4827 := by
  rw [tree4827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4828_agree_conditional
    (child0 : tree4826 = literal4826)
    (child1 : tree4827 = literal4827) : tree4828 = literal4828 := by
  rw [tree4828_def, child0, child1]
  rfl
theorem node4828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4826 live4826 coloured4826 = result4826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4827 live4827 coloured4827 = result4827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4828 live4828 coloured4828 = result4828 := by
  rw [tree4828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4826 coloured4826 at child
  try dsimp only [live4828, coloured4828]
  rw [child]
  dsimp only [result4826]
  have child := child1
  unfold live4827 coloured4827 at child
  try dsimp only [live4828, coloured4828]
  rw [child]
  dsimp only [result4827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4829_agree_conditional : tree4829 = literal4829 := by
  rw [tree4829_def]
  rfl
theorem node4829_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4829 live4829 coloured4829 = result4829 := by
  rw [tree4829_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4830_agree_conditional
    (child0 : tree4828 = literal4828)
    (child1 : tree4829 = literal4829) : tree4830 = literal4830 := by
  rw [tree4830_def, child0, child1]
  rfl
theorem node4830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4828 live4828 coloured4828 = result4828)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4829 live4829 coloured4829 = result4829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4830 live4830 coloured4830 = result4830 := by
  rw [tree4830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4828 coloured4828 at child
  try dsimp only [live4830, coloured4830]
  rw [child]
  dsimp only [result4828]
  have child := child1
  unfold live4829 coloured4829 at child
  try dsimp only [live4830, coloured4830]
  rw [child]
  dsimp only [result4829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4831_agree_conditional : tree4831 = literal4831 := by
  rw [tree4831_def]
  rfl
theorem node4831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4831 live4831 coloured4831 = result4831 := by
  rw [tree4831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4832_agree_conditional
    (child0 : tree4830 = literal4830)
    (child1 : tree4831 = literal4831) : tree4832 = literal4832 := by
  rw [tree4832_def, child0, child1]
  rfl
theorem node4832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4830 live4830 coloured4830 = result4830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4831 live4831 coloured4831 = result4831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4832 live4832 coloured4832 = result4832 := by
  rw [tree4832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4830 coloured4830 at child
  try dsimp only [live4832, coloured4832]
  rw [child]
  dsimp only [result4830]
  have child := child1
  unfold live4831 coloured4831 at child
  try dsimp only [live4832, coloured4832]
  rw [child]
  dsimp only [result4831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4833_agree_conditional : tree4833 = literal4833 := by
  rw [tree4833_def]
  rfl
theorem node4833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4833 live4833 coloured4833 = result4833 := by
  rw [tree4833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4834_agree_conditional
    (child0 : tree4832 = literal4832)
    (child1 : tree4833 = literal4833) : tree4834 = literal4834 := by
  rw [tree4834_def, child0, child1]
  rfl
theorem node4834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4832 live4832 coloured4832 = result4832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4833 live4833 coloured4833 = result4833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4834 live4834 coloured4834 = result4834 := by
  rw [tree4834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4832 coloured4832 at child
  try dsimp only [live4834, coloured4834]
  rw [child]
  dsimp only [result4832]
  have child := child1
  unfold live4833 coloured4833 at child
  try dsimp only [live4834, coloured4834]
  rw [child]
  dsimp only [result4833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4835_agree_conditional : tree4835 = literal4835 := by
  rw [tree4835_def]
  rfl
theorem node4835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4835 live4835 coloured4835 = result4835 := by
  rw [tree4835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4836_agree_conditional
    (child0 : tree4834 = literal4834)
    (child1 : tree4835 = literal4835) : tree4836 = literal4836 := by
  rw [tree4836_def, child0, child1]
  rfl
theorem node4836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4834 live4834 coloured4834 = result4834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4835 live4835 coloured4835 = result4835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4836 live4836 coloured4836 = result4836 := by
  rw [tree4836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4834 coloured4834 at child
  try dsimp only [live4836, coloured4836]
  rw [child]
  dsimp only [result4834]
  have child := child1
  unfold live4835 coloured4835 at child
  try dsimp only [live4836, coloured4836]
  rw [child]
  dsimp only [result4835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4837_agree_conditional : tree4837 = literal4837 := by
  rw [tree4837_def]
  rfl
theorem node4837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4837 live4837 coloured4837 = result4837 := by
  rw [tree4837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4838_agree_conditional
    (child0 : tree4836 = literal4836)
    (child1 : tree4837 = literal4837) : tree4838 = literal4838 := by
  rw [tree4838_def, child0, child1]
  rfl
theorem node4838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4836 live4836 coloured4836 = result4836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4837 live4837 coloured4837 = result4837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4838 live4838 coloured4838 = result4838 := by
  rw [tree4838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4836 coloured4836 at child
  try dsimp only [live4838, coloured4838]
  rw [child]
  dsimp only [result4836]
  have child := child1
  unfold live4837 coloured4837 at child
  try dsimp only [live4838, coloured4838]
  rw [child]
  dsimp only [result4837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4839_agree_conditional : tree4839 = literal4839 := by
  rw [tree4839_def]
  rfl
theorem node4839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4839 live4839 coloured4839 = result4839 := by
  rw [tree4839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4840_agree_conditional
    (child0 : tree4838 = literal4838)
    (child1 : tree4839 = literal4839) : tree4840 = literal4840 := by
  rw [tree4840_def, child0, child1]
  rfl
theorem node4840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4838 live4838 coloured4838 = result4838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4839 live4839 coloured4839 = result4839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4840 live4840 coloured4840 = result4840 := by
  rw [tree4840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4838 coloured4838 at child
  try dsimp only [live4840, coloured4840]
  rw [child]
  dsimp only [result4838]
  have child := child1
  unfold live4839 coloured4839 at child
  try dsimp only [live4840, coloured4840]
  rw [child]
  dsimp only [result4839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4841_agree_conditional : tree4841 = literal4841 := by
  rw [tree4841_def]
  rfl
theorem node4841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4841 live4841 coloured4841 = result4841 := by
  rw [tree4841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4842_agree_conditional
    (child0 : tree4840 = literal4840)
    (child1 : tree4841 = literal4841) : tree4842 = literal4842 := by
  rw [tree4842_def, child0, child1]
  rfl
theorem node4842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4840 live4840 coloured4840 = result4840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4841 live4841 coloured4841 = result4841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4842 live4842 coloured4842 = result4842 := by
  rw [tree4842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4840 coloured4840 at child
  try dsimp only [live4842, coloured4842]
  rw [child]
  dsimp only [result4840]
  have child := child1
  unfold live4841 coloured4841 at child
  try dsimp only [live4842, coloured4842]
  rw [child]
  dsimp only [result4841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4843_agree_conditional : tree4843 = literal4843 := by
  rw [tree4843_def]
  rfl
theorem node4843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4843 live4843 coloured4843 = result4843 := by
  rw [tree4843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4844_agree_conditional
    (child0 : tree4842 = literal4842)
    (child1 : tree4843 = literal4843) : tree4844 = literal4844 := by
  rw [tree4844_def, child0, child1]
  rfl
theorem node4844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4842 live4842 coloured4842 = result4842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4843 live4843 coloured4843 = result4843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4844 live4844 coloured4844 = result4844 := by
  rw [tree4844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4842 coloured4842 at child
  try dsimp only [live4844, coloured4844]
  rw [child]
  dsimp only [result4842]
  have child := child1
  unfold live4843 coloured4843 at child
  try dsimp only [live4844, coloured4844]
  rw [child]
  dsimp only [result4843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4845_agree_conditional : tree4845 = literal4845 := by
  rw [tree4845_def]
  rfl
theorem node4845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4845 live4845 coloured4845 = result4845 := by
  rw [tree4845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4846_agree_conditional
    (child0 : tree4844 = literal4844)
    (child1 : tree4845 = literal4845) : tree4846 = literal4846 := by
  rw [tree4846_def, child0, child1]
  rfl
theorem node4846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4844 live4844 coloured4844 = result4844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4845 live4845 coloured4845 = result4845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4846 live4846 coloured4846 = result4846 := by
  rw [tree4846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4844 coloured4844 at child
  try dsimp only [live4846, coloured4846]
  rw [child]
  dsimp only [result4844]
  have child := child1
  unfold live4845 coloured4845 at child
  try dsimp only [live4846, coloured4846]
  rw [child]
  dsimp only [result4845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4847_agree_conditional : tree4847 = literal4847 := by
  rw [tree4847_def]
  rfl
theorem node4847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4847 live4847 coloured4847 = result4847 := by
  rw [tree4847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4848_agree_conditional
    (child0 : tree4846 = literal4846)
    (child1 : tree4847 = literal4847) : tree4848 = literal4848 := by
  rw [tree4848_def, child0, child1]
  rfl
theorem node4848_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4846 live4846 coloured4846 = result4846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4847 live4847 coloured4847 = result4847) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4848 live4848 coloured4848 = result4848 := by
  rw [tree4848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4846 coloured4846 at child
  try dsimp only [live4848, coloured4848]
  rw [child]
  dsimp only [result4846]
  have child := child1
  unfold live4847 coloured4847 at child
  try dsimp only [live4848, coloured4848]
  rw [child]
  dsimp only [result4847]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4849_agree_conditional : tree4849 = literal4849 := by
  rw [tree4849_def]
  rfl
theorem node4849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4849 live4849 coloured4849 = result4849 := by
  rw [tree4849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4850_agree_conditional
    (child0 : tree4848 = literal4848)
    (child1 : tree4849 = literal4849) : tree4850 = literal4850 := by
  rw [tree4850_def, child0, child1]
  rfl
theorem node4850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4848 live4848 coloured4848 = result4848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4849 live4849 coloured4849 = result4849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4850 live4850 coloured4850 = result4850 := by
  rw [tree4850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4848 coloured4848 at child
  try dsimp only [live4850, coloured4850]
  rw [child]
  dsimp only [result4848]
  have child := child1
  unfold live4849 coloured4849 at child
  try dsimp only [live4850, coloured4850]
  rw [child]
  dsimp only [result4849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4851_agree_conditional : tree4851 = literal4851 := by
  rw [tree4851_def]
  rfl
theorem node4851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4851 live4851 coloured4851 = result4851 := by
  rw [tree4851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4852_agree_conditional
    (child0 : tree4850 = literal4850)
    (child1 : tree4851 = literal4851) : tree4852 = literal4852 := by
  rw [tree4852_def, child0, child1]
  rfl
theorem node4852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4850 live4850 coloured4850 = result4850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4851 live4851 coloured4851 = result4851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4852 live4852 coloured4852 = result4852 := by
  rw [tree4852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4850 coloured4850 at child
  try dsimp only [live4852, coloured4852]
  rw [child]
  dsimp only [result4850]
  have child := child1
  unfold live4851 coloured4851 at child
  try dsimp only [live4852, coloured4852]
  rw [child]
  dsimp only [result4851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4853_agree_conditional : tree4853 = literal4853 := by
  rw [tree4853_def]
  rfl
theorem node4853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4853 live4853 coloured4853 = result4853 := by
  rw [tree4853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4854_agree_conditional
    (child0 : tree4852 = literal4852)
    (child1 : tree4853 = literal4853) : tree4854 = literal4854 := by
  rw [tree4854_def, child0, child1]
  rfl
theorem node4854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4852 live4852 coloured4852 = result4852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4853 live4853 coloured4853 = result4853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4854 live4854 coloured4854 = result4854 := by
  rw [tree4854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4852 coloured4852 at child
  try dsimp only [live4854, coloured4854]
  rw [child]
  dsimp only [result4852]
  have child := child1
  unfold live4853 coloured4853 at child
  try dsimp only [live4854, coloured4854]
  rw [child]
  dsimp only [result4853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4855_agree_conditional : tree4855 = literal4855 := by
  rw [tree4855_def]
  rfl
theorem node4855_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4855 live4855 coloured4855 = result4855 := by
  rw [tree4855_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4856_agree_conditional
    (child0 : tree4854 = literal4854)
    (child1 : tree4855 = literal4855) : tree4856 = literal4856 := by
  rw [tree4856_def, child0, child1]
  rfl
theorem node4856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4854 live4854 coloured4854 = result4854)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4855 live4855 coloured4855 = result4855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4856 live4856 coloured4856 = result4856 := by
  rw [tree4856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4854 coloured4854 at child
  try dsimp only [live4856, coloured4856]
  rw [child]
  dsimp only [result4854]
  have child := child1
  unfold live4855 coloured4855 at child
  try dsimp only [live4856, coloured4856]
  rw [child]
  dsimp only [result4855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4857_agree_conditional : tree4857 = literal4857 := by
  rw [tree4857_def]
  rfl
theorem node4857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4857 live4857 coloured4857 = result4857 := by
  rw [tree4857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4858_agree_conditional
    (child0 : tree4856 = literal4856)
    (child1 : tree4857 = literal4857) : tree4858 = literal4858 := by
  rw [tree4858_def, child0, child1]
  rfl
theorem node4858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4856 live4856 coloured4856 = result4856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4857 live4857 coloured4857 = result4857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4858 live4858 coloured4858 = result4858 := by
  rw [tree4858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4856 coloured4856 at child
  try dsimp only [live4858, coloured4858]
  rw [child]
  dsimp only [result4856]
  have child := child1
  unfold live4857 coloured4857 at child
  try dsimp only [live4858, coloured4858]
  rw [child]
  dsimp only [result4857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4859_agree_conditional : tree4859 = literal4859 := by
  rw [tree4859_def]
  rfl
theorem node4859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4859 live4859 coloured4859 = result4859 := by
  rw [tree4859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4860_agree_conditional
    (child0 : tree4858 = literal4858)
    (child1 : tree4859 = literal4859) : tree4860 = literal4860 := by
  rw [tree4860_def, child0, child1]
  rfl
theorem node4860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4858 live4858 coloured4858 = result4858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4859 live4859 coloured4859 = result4859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4860 live4860 coloured4860 = result4860 := by
  rw [tree4860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4858 coloured4858 at child
  try dsimp only [live4860, coloured4860]
  rw [child]
  dsimp only [result4858]
  have child := child1
  unfold live4859 coloured4859 at child
  try dsimp only [live4860, coloured4860]
  rw [child]
  dsimp only [result4859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4861_agree_conditional : tree4861 = literal4861 := by
  rw [tree4861_def]
  rfl
theorem node4861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4861 live4861 coloured4861 = result4861 := by
  rw [tree4861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4862_agree_conditional
    (child0 : tree4860 = literal4860)
    (child1 : tree4861 = literal4861) : tree4862 = literal4862 := by
  rw [tree4862_def, child0, child1]
  rfl
theorem node4862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4860 live4860 coloured4860 = result4860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4861 live4861 coloured4861 = result4861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4862 live4862 coloured4862 = result4862 := by
  rw [tree4862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4860 coloured4860 at child
  try dsimp only [live4862, coloured4862]
  rw [child]
  dsimp only [result4860]
  have child := child1
  unfold live4861 coloured4861 at child
  try dsimp only [live4862, coloured4862]
  rw [child]
  dsimp only [result4861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4863_agree_conditional : tree4863 = literal4863 := by
  rw [tree4863_def]
  rfl
theorem node4863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4863 live4863 coloured4863 = result4863 := by
  rw [tree4863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4864_agree_conditional
    (child0 : tree4862 = literal4862)
    (child1 : tree4863 = literal4863) : tree4864 = literal4864 := by
  rw [tree4864_def, child0, child1]
  rfl
theorem node4864_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4862 live4862 coloured4862 = result4862)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4863 live4863 coloured4863 = result4863) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4864 live4864 coloured4864 = result4864 := by
  rw [tree4864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4862 coloured4862 at child
  try dsimp only [live4864, coloured4864]
  rw [child]
  dsimp only [result4862]
  have child := child1
  unfold live4863 coloured4863 at child
  try dsimp only [live4864, coloured4864]
  rw [child]
  dsimp only [result4863]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4865_agree_conditional : tree4865 = literal4865 := by
  rw [tree4865_def]
  rfl
theorem node4865_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4865 live4865 coloured4865 = result4865 := by
  rw [tree4865_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4866_agree_conditional
    (child0 : tree4864 = literal4864)
    (child1 : tree4865 = literal4865) : tree4866 = literal4866 := by
  rw [tree4866_def, child0, child1]
  rfl
theorem node4866_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4864 live4864 coloured4864 = result4864)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4865 live4865 coloured4865 = result4865) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4866 live4866 coloured4866 = result4866 := by
  rw [tree4866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4864 coloured4864 at child
  try dsimp only [live4866, coloured4866]
  rw [child]
  dsimp only [result4864]
  have child := child1
  unfold live4865 coloured4865 at child
  try dsimp only [live4866, coloured4866]
  rw [child]
  dsimp only [result4865]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4867_agree_conditional : tree4867 = literal4867 := by
  rw [tree4867_def]
  rfl
theorem node4867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4867 live4867 coloured4867 = result4867 := by
  rw [tree4867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4868_agree_conditional
    (child0 : tree4866 = literal4866)
    (child1 : tree4867 = literal4867) : tree4868 = literal4868 := by
  rw [tree4868_def, child0, child1]
  rfl
theorem node4868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4866 live4866 coloured4866 = result4866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4867 live4867 coloured4867 = result4867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4868 live4868 coloured4868 = result4868 := by
  rw [tree4868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4866 coloured4866 at child
  try dsimp only [live4868, coloured4868]
  rw [child]
  dsimp only [result4866]
  have child := child1
  unfold live4867 coloured4867 at child
  try dsimp only [live4868, coloured4868]
  rw [child]
  dsimp only [result4867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4869_agree_conditional : tree4869 = literal4869 := by
  rw [tree4869_def]
  rfl
theorem node4869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4869 live4869 coloured4869 = result4869 := by
  rw [tree4869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4870_agree_conditional
    (child0 : tree4868 = literal4868)
    (child1 : tree4869 = literal4869) : tree4870 = literal4870 := by
  rw [tree4870_def, child0, child1]
  rfl
theorem node4870_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4868 live4868 coloured4868 = result4868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4869 live4869 coloured4869 = result4869) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4870 live4870 coloured4870 = result4870 := by
  rw [tree4870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4868 coloured4868 at child
  try dsimp only [live4870, coloured4870]
  rw [child]
  dsimp only [result4868]
  have child := child1
  unfold live4869 coloured4869 at child
  try dsimp only [live4870, coloured4870]
  rw [child]
  dsimp only [result4869]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4871_agree_conditional : tree4871 = literal4871 := by
  rw [tree4871_def]
  rfl
theorem node4871_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4871 live4871 coloured4871 = result4871 := by
  rw [tree4871_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4872_agree_conditional
    (child0 : tree4870 = literal4870)
    (child1 : tree4871 = literal4871) : tree4872 = literal4872 := by
  rw [tree4872_def, child0, child1]
  rfl
theorem node4872_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4870 live4870 coloured4870 = result4870)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4871 live4871 coloured4871 = result4871) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4872 live4872 coloured4872 = result4872 := by
  rw [tree4872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4870 coloured4870 at child
  try dsimp only [live4872, coloured4872]
  rw [child]
  dsimp only [result4870]
  have child := child1
  unfold live4871 coloured4871 at child
  try dsimp only [live4872, coloured4872]
  rw [child]
  dsimp only [result4871]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4873_agree_conditional : tree4873 = literal4873 := by
  rw [tree4873_def]
  rfl
theorem node4873_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4873 live4873 coloured4873 = result4873 := by
  rw [tree4873_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4874_agree_conditional
    (child0 : tree4872 = literal4872)
    (child1 : tree4873 = literal4873) : tree4874 = literal4874 := by
  rw [tree4874_def, child0, child1]
  rfl
theorem node4874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4872 live4872 coloured4872 = result4872)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4873 live4873 coloured4873 = result4873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4874 live4874 coloured4874 = result4874 := by
  rw [tree4874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4872 coloured4872 at child
  try dsimp only [live4874, coloured4874]
  rw [child]
  dsimp only [result4872]
  have child := child1
  unfold live4873 coloured4873 at child
  try dsimp only [live4874, coloured4874]
  rw [child]
  dsimp only [result4873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4875_agree_conditional : tree4875 = literal4875 := by
  rw [tree4875_def]
  rfl
theorem node4875_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4875 live4875 coloured4875 = result4875 := by
  rw [tree4875_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4876_agree_conditional
    (child0 : tree4874 = literal4874)
    (child1 : tree4875 = literal4875) : tree4876 = literal4876 := by
  rw [tree4876_def, child0, child1]
  rfl
theorem node4876_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4874 live4874 coloured4874 = result4874)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4875 live4875 coloured4875 = result4875) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4876 live4876 coloured4876 = result4876 := by
  rw [tree4876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4874 coloured4874 at child
  try dsimp only [live4876, coloured4876]
  rw [child]
  dsimp only [result4874]
  have child := child1
  unfold live4875 coloured4875 at child
  try dsimp only [live4876, coloured4876]
  rw [child]
  dsimp only [result4875]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4877_agree_conditional : tree4877 = literal4877 := by
  rw [tree4877_def]
  rfl
theorem node4877_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4877 live4877 coloured4877 = result4877 := by
  rw [tree4877_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4878_agree_conditional
    (child0 : tree4876 = literal4876)
    (child1 : tree4877 = literal4877) : tree4878 = literal4878 := by
  rw [tree4878_def, child0, child1]
  rfl
theorem node4878_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4876 live4876 coloured4876 = result4876)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4877 live4877 coloured4877 = result4877) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4878 live4878 coloured4878 = result4878 := by
  rw [tree4878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4876 coloured4876 at child
  try dsimp only [live4878, coloured4878]
  rw [child]
  dsimp only [result4876]
  have child := child1
  unfold live4877 coloured4877 at child
  try dsimp only [live4878, coloured4878]
  rw [child]
  dsimp only [result4877]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4879_agree_conditional : tree4879 = literal4879 := by
  rw [tree4879_def]
  rfl
theorem node4879_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4879 live4879 coloured4879 = result4879 := by
  rw [tree4879_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4880_agree_conditional
    (child0 : tree4878 = literal4878)
    (child1 : tree4879 = literal4879) : tree4880 = literal4880 := by
  rw [tree4880_def, child0, child1]
  rfl
theorem node4880_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4878 live4878 coloured4878 = result4878)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4879 live4879 coloured4879 = result4879) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4880 live4880 coloured4880 = result4880 := by
  rw [tree4880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4878 coloured4878 at child
  try dsimp only [live4880, coloured4880]
  rw [child]
  dsimp only [result4878]
  have child := child1
  unfold live4879 coloured4879 at child
  try dsimp only [live4880, coloured4880]
  rw [child]
  dsimp only [result4879]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4881_agree_conditional : tree4881 = literal4881 := by
  rw [tree4881_def]
  rfl
theorem node4881_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4881 live4881 coloured4881 = result4881 := by
  rw [tree4881_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4882_agree_conditional
    (child0 : tree4880 = literal4880)
    (child1 : tree4881 = literal4881) : tree4882 = literal4882 := by
  rw [tree4882_def, child0, child1]
  rfl
theorem node4882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4880 live4880 coloured4880 = result4880)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4881 live4881 coloured4881 = result4881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4882 live4882 coloured4882 = result4882 := by
  rw [tree4882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4880 coloured4880 at child
  try dsimp only [live4882, coloured4882]
  rw [child]
  dsimp only [result4880]
  have child := child1
  unfold live4881 coloured4881 at child
  try dsimp only [live4882, coloured4882]
  rw [child]
  dsimp only [result4881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4883_agree_conditional : tree4883 = literal4883 := by
  rw [tree4883_def]
  rfl
theorem node4883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4883 live4883 coloured4883 = result4883 := by
  rw [tree4883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4884_agree_conditional
    (child0 : tree4882 = literal4882)
    (child1 : tree4883 = literal4883) : tree4884 = literal4884 := by
  rw [tree4884_def, child0, child1]
  rfl
theorem node4884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4882 live4882 coloured4882 = result4882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4883 live4883 coloured4883 = result4883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4884 live4884 coloured4884 = result4884 := by
  rw [tree4884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4882 coloured4882 at child
  try dsimp only [live4884, coloured4884]
  rw [child]
  dsimp only [result4882]
  have child := child1
  unfold live4883 coloured4883 at child
  try dsimp only [live4884, coloured4884]
  rw [child]
  dsimp only [result4883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4885_agree_conditional : tree4885 = literal4885 := by
  rw [tree4885_def]
  rfl
theorem node4885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4885 live4885 coloured4885 = result4885 := by
  rw [tree4885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4886_agree_conditional
    (child0 : tree4884 = literal4884)
    (child1 : tree4885 = literal4885) : tree4886 = literal4886 := by
  rw [tree4886_def, child0, child1]
  rfl
theorem node4886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4884 live4884 coloured4884 = result4884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4885 live4885 coloured4885 = result4885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4886 live4886 coloured4886 = result4886 := by
  rw [tree4886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4884 coloured4884 at child
  try dsimp only [live4886, coloured4886]
  rw [child]
  dsimp only [result4884]
  have child := child1
  unfold live4885 coloured4885 at child
  try dsimp only [live4886, coloured4886]
  rw [child]
  dsimp only [result4885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4887_agree_conditional : tree4887 = literal4887 := by
  rw [tree4887_def]
  rfl
theorem node4887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4887 live4887 coloured4887 = result4887 := by
  rw [tree4887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4888_agree_conditional
    (child0 : tree4886 = literal4886)
    (child1 : tree4887 = literal4887) : tree4888 = literal4888 := by
  rw [tree4888_def, child0, child1]
  rfl
theorem node4888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4886 live4886 coloured4886 = result4886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4887 live4887 coloured4887 = result4887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4888 live4888 coloured4888 = result4888 := by
  rw [tree4888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4886 coloured4886 at child
  try dsimp only [live4888, coloured4888]
  rw [child]
  dsimp only [result4886]
  have child := child1
  unfold live4887 coloured4887 at child
  try dsimp only [live4888, coloured4888]
  rw [child]
  dsimp only [result4887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4889_agree_conditional : tree4889 = literal4889 := by
  rw [tree4889_def]
  rfl
theorem node4889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4889 live4889 coloured4889 = result4889 := by
  rw [tree4889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4890_agree_conditional
    (child0 : tree4888 = literal4888)
    (child1 : tree4889 = literal4889) : tree4890 = literal4890 := by
  rw [tree4890_def, child0, child1]
  rfl
theorem node4890_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4888 live4888 coloured4888 = result4888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4889 live4889 coloured4889 = result4889) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4890 live4890 coloured4890 = result4890 := by
  rw [tree4890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4888 coloured4888 at child
  try dsimp only [live4890, coloured4890]
  rw [child]
  dsimp only [result4888]
  have child := child1
  unfold live4889 coloured4889 at child
  try dsimp only [live4890, coloured4890]
  rw [child]
  dsimp only [result4889]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4891_agree_conditional : tree4891 = literal4891 := by
  rw [tree4891_def]
  rfl
theorem node4891_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4891 live4891 coloured4891 = result4891 := by
  rw [tree4891_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4892_agree_conditional
    (child0 : tree4890 = literal4890)
    (child1 : tree4891 = literal4891) : tree4892 = literal4892 := by
  rw [tree4892_def, child0, child1]
  rfl
theorem node4892_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4890 live4890 coloured4890 = result4890)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4891 live4891 coloured4891 = result4891) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4892 live4892 coloured4892 = result4892 := by
  rw [tree4892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4890 coloured4890 at child
  try dsimp only [live4892, coloured4892]
  rw [child]
  dsimp only [result4890]
  have child := child1
  unfold live4891 coloured4891 at child
  try dsimp only [live4892, coloured4892]
  rw [child]
  dsimp only [result4891]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4893_agree_conditional : tree4893 = literal4893 := by
  rw [tree4893_def]
  rfl
theorem node4893_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4893 live4893 coloured4893 = result4893 := by
  rw [tree4893_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4894_agree_conditional
    (child0 : tree4892 = literal4892)
    (child1 : tree4893 = literal4893) : tree4894 = literal4894 := by
  rw [tree4894_def, child0, child1]
  rfl
theorem node4894_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4892 live4892 coloured4892 = result4892)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4893 live4893 coloured4893 = result4893) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4894 live4894 coloured4894 = result4894 := by
  rw [tree4894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4892 coloured4892 at child
  try dsimp only [live4894, coloured4894]
  rw [child]
  dsimp only [result4892]
  have child := child1
  unfold live4893 coloured4893 at child
  try dsimp only [live4894, coloured4894]
  rw [child]
  dsimp only [result4893]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4895_agree_conditional : tree4895 = literal4895 := by
  rw [tree4895_def]
  rfl
theorem node4895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4895 live4895 coloured4895 = result4895 := by
  rw [tree4895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
