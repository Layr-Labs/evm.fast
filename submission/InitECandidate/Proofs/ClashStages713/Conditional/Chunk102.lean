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
theorem tree9792_agree_conditional
    (child0 : tree9790 = literal9790)
    (child1 : tree9791 = literal9791) : tree9792 = literal9792 := by
  rw [tree9792_def, child0, child1]
  rfl
theorem node9792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9790 live9790 coloured9790 = result9790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9791 live9791 coloured9791 = result9791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9792 live9792 coloured9792 = result9792 := by
  rw [tree9792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9790 coloured9790 at child
  try dsimp only [live9792, coloured9792]
  rw [child]
  dsimp only [result9790]
  have child := child1
  unfold live9791 coloured9791 at child
  try dsimp only [live9792, coloured9792]
  rw [child]
  dsimp only [result9791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9793_agree_conditional : tree9793 = literal9793 := by
  rw [tree9793_def]
  rfl
theorem node9793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9793 live9793 coloured9793 = result9793 := by
  rw [tree9793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9794_agree_conditional
    (child0 : tree9792 = literal9792)
    (child1 : tree9793 = literal9793) : tree9794 = literal9794 := by
  rw [tree9794_def, child0, child1]
  rfl
theorem node9794_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9792 live9792 coloured9792 = result9792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9793 live9793 coloured9793 = result9793) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9794 live9794 coloured9794 = result9794 := by
  rw [tree9794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9792 coloured9792 at child
  try dsimp only [live9794, coloured9794]
  rw [child]
  dsimp only [result9792]
  have child := child1
  unfold live9793 coloured9793 at child
  try dsimp only [live9794, coloured9794]
  rw [child]
  dsimp only [result9793]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9795_agree_conditional : tree9795 = literal9795 := by
  rw [tree9795_def]
  rfl
theorem node9795_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9795 live9795 coloured9795 = result9795 := by
  rw [tree9795_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9796_agree_conditional
    (child0 : tree9794 = literal9794)
    (child1 : tree9795 = literal9795) : tree9796 = literal9796 := by
  rw [tree9796_def, child0, child1]
  rfl
theorem node9796_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9794 live9794 coloured9794 = result9794)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9795 live9795 coloured9795 = result9795) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9796 live9796 coloured9796 = result9796 := by
  rw [tree9796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9794 coloured9794 at child
  try dsimp only [live9796, coloured9796]
  rw [child]
  dsimp only [result9794]
  have child := child1
  unfold live9795 coloured9795 at child
  try dsimp only [live9796, coloured9796]
  rw [child]
  dsimp only [result9795]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9797_agree_conditional : tree9797 = literal9797 := by
  rw [tree9797_def]
  rfl
theorem node9797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9797 live9797 coloured9797 = result9797 := by
  rw [tree9797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9798_agree_conditional
    (child0 : tree9796 = literal9796)
    (child1 : tree9797 = literal9797) : tree9798 = literal9798 := by
  rw [tree9798_def, child0, child1]
  rfl
theorem node9798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9796 live9796 coloured9796 = result9796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9797 live9797 coloured9797 = result9797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9798 live9798 coloured9798 = result9798 := by
  rw [tree9798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9796 coloured9796 at child
  try dsimp only [live9798, coloured9798]
  rw [child]
  dsimp only [result9796]
  have child := child1
  unfold live9797 coloured9797 at child
  try dsimp only [live9798, coloured9798]
  rw [child]
  dsimp only [result9797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9799_agree_conditional : tree9799 = literal9799 := by
  rw [tree9799_def]
  rfl
theorem node9799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9799 live9799 coloured9799 = result9799 := by
  rw [tree9799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9800_agree_conditional
    (child0 : tree9798 = literal9798)
    (child1 : tree9799 = literal9799) : tree9800 = literal9800 := by
  rw [tree9800_def, child0, child1]
  rfl
theorem node9800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9798 live9798 coloured9798 = result9798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9799 live9799 coloured9799 = result9799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9800 live9800 coloured9800 = result9800 := by
  rw [tree9800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9798 coloured9798 at child
  try dsimp only [live9800, coloured9800]
  rw [child]
  dsimp only [result9798]
  have child := child1
  unfold live9799 coloured9799 at child
  try dsimp only [live9800, coloured9800]
  rw [child]
  dsimp only [result9799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9801_agree_conditional : tree9801 = literal9801 := by
  rw [tree9801_def]
  rfl
theorem node9801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9801 live9801 coloured9801 = result9801 := by
  rw [tree9801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9802_agree_conditional
    (child0 : tree9800 = literal9800)
    (child1 : tree9801 = literal9801) : tree9802 = literal9802 := by
  rw [tree9802_def, child0, child1]
  rfl
theorem node9802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9800 live9800 coloured9800 = result9800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9801 live9801 coloured9801 = result9801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9802 live9802 coloured9802 = result9802 := by
  rw [tree9802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9800 coloured9800 at child
  try dsimp only [live9802, coloured9802]
  rw [child]
  dsimp only [result9800]
  have child := child1
  unfold live9801 coloured9801 at child
  try dsimp only [live9802, coloured9802]
  rw [child]
  dsimp only [result9801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9803_agree_conditional : tree9803 = literal9803 := by
  rw [tree9803_def]
  rfl
theorem node9803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9803 live9803 coloured9803 = result9803 := by
  rw [tree9803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9804_agree_conditional
    (child0 : tree9802 = literal9802)
    (child1 : tree9803 = literal9803) : tree9804 = literal9804 := by
  rw [tree9804_def, child0, child1]
  rfl
theorem node9804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9802 live9802 coloured9802 = result9802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9803 live9803 coloured9803 = result9803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9804 live9804 coloured9804 = result9804 := by
  rw [tree9804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9802 coloured9802 at child
  try dsimp only [live9804, coloured9804]
  rw [child]
  dsimp only [result9802]
  have child := child1
  unfold live9803 coloured9803 at child
  try dsimp only [live9804, coloured9804]
  rw [child]
  dsimp only [result9803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9805_agree_conditional : tree9805 = literal9805 := by
  rw [tree9805_def]
  rfl
theorem node9805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9805 live9805 coloured9805 = result9805 := by
  rw [tree9805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9806_agree_conditional
    (child0 : tree9804 = literal9804)
    (child1 : tree9805 = literal9805) : tree9806 = literal9806 := by
  rw [tree9806_def, child0, child1]
  rfl
theorem node9806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9804 live9804 coloured9804 = result9804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9805 live9805 coloured9805 = result9805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9806 live9806 coloured9806 = result9806 := by
  rw [tree9806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9804 coloured9804 at child
  try dsimp only [live9806, coloured9806]
  rw [child]
  dsimp only [result9804]
  have child := child1
  unfold live9805 coloured9805 at child
  try dsimp only [live9806, coloured9806]
  rw [child]
  dsimp only [result9805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9807_agree_conditional : tree9807 = literal9807 := by
  rw [tree9807_def]
  rfl
theorem node9807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9807 live9807 coloured9807 = result9807 := by
  rw [tree9807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9808_agree_conditional
    (child0 : tree9806 = literal9806)
    (child1 : tree9807 = literal9807) : tree9808 = literal9808 := by
  rw [tree9808_def, child0, child1]
  rfl
theorem node9808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9806 live9806 coloured9806 = result9806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9807 live9807 coloured9807 = result9807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9808 live9808 coloured9808 = result9808 := by
  rw [tree9808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9806 coloured9806 at child
  try dsimp only [live9808, coloured9808]
  rw [child]
  dsimp only [result9806]
  have child := child1
  unfold live9807 coloured9807 at child
  try dsimp only [live9808, coloured9808]
  rw [child]
  dsimp only [result9807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9809_agree_conditional : tree9809 = literal9809 := by
  rw [tree9809_def]
  rfl
theorem node9809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9809 live9809 coloured9809 = result9809 := by
  rw [tree9809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9810_agree_conditional
    (child0 : tree9808 = literal9808)
    (child1 : tree9809 = literal9809) : tree9810 = literal9810 := by
  rw [tree9810_def, child0, child1]
  rfl
theorem node9810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9808 live9808 coloured9808 = result9808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9809 live9809 coloured9809 = result9809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9810 live9810 coloured9810 = result9810 := by
  rw [tree9810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9808 coloured9808 at child
  try dsimp only [live9810, coloured9810]
  rw [child]
  dsimp only [result9808]
  have child := child1
  unfold live9809 coloured9809 at child
  try dsimp only [live9810, coloured9810]
  rw [child]
  dsimp only [result9809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9811_agree_conditional : tree9811 = literal9811 := by
  rw [tree9811_def]
  rfl
theorem node9811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9811 live9811 coloured9811 = result9811 := by
  rw [tree9811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9812_agree_conditional
    (child0 : tree9810 = literal9810)
    (child1 : tree9811 = literal9811) : tree9812 = literal9812 := by
  rw [tree9812_def, child0, child1]
  rfl
theorem node9812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9810 live9810 coloured9810 = result9810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9811 live9811 coloured9811 = result9811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9812 live9812 coloured9812 = result9812 := by
  rw [tree9812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9810 coloured9810 at child
  try dsimp only [live9812, coloured9812]
  rw [child]
  dsimp only [result9810]
  have child := child1
  unfold live9811 coloured9811 at child
  try dsimp only [live9812, coloured9812]
  rw [child]
  dsimp only [result9811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9813_agree_conditional : tree9813 = literal9813 := by
  rw [tree9813_def]
  rfl
theorem node9813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9813 live9813 coloured9813 = result9813 := by
  rw [tree9813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9814_agree_conditional
    (child0 : tree9812 = literal9812)
    (child1 : tree9813 = literal9813) : tree9814 = literal9814 := by
  rw [tree9814_def, child0, child1]
  rfl
theorem node9814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9812 live9812 coloured9812 = result9812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9813 live9813 coloured9813 = result9813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9814 live9814 coloured9814 = result9814 := by
  rw [tree9814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9812 coloured9812 at child
  try dsimp only [live9814, coloured9814]
  rw [child]
  dsimp only [result9812]
  have child := child1
  unfold live9813 coloured9813 at child
  try dsimp only [live9814, coloured9814]
  rw [child]
  dsimp only [result9813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9815_agree_conditional : tree9815 = literal9815 := by
  rw [tree9815_def]
  rfl
theorem node9815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9815 live9815 coloured9815 = result9815 := by
  rw [tree9815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9816_agree_conditional
    (child0 : tree9814 = literal9814)
    (child1 : tree9815 = literal9815) : tree9816 = literal9816 := by
  rw [tree9816_def, child0, child1]
  rfl
theorem node9816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9814 live9814 coloured9814 = result9814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9815 live9815 coloured9815 = result9815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9816 live9816 coloured9816 = result9816 := by
  rw [tree9816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9814 coloured9814 at child
  try dsimp only [live9816, coloured9816]
  rw [child]
  dsimp only [result9814]
  have child := child1
  unfold live9815 coloured9815 at child
  try dsimp only [live9816, coloured9816]
  rw [child]
  dsimp only [result9815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9817_agree_conditional : tree9817 = literal9817 := by
  rw [tree9817_def]
  rfl
theorem node9817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9817 live9817 coloured9817 = result9817 := by
  rw [tree9817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9818_agree_conditional
    (child0 : tree9816 = literal9816)
    (child1 : tree9817 = literal9817) : tree9818 = literal9818 := by
  rw [tree9818_def, child0, child1]
  rfl
theorem node9818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9816 live9816 coloured9816 = result9816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9817 live9817 coloured9817 = result9817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9818 live9818 coloured9818 = result9818 := by
  rw [tree9818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9816 coloured9816 at child
  try dsimp only [live9818, coloured9818]
  rw [child]
  dsimp only [result9816]
  have child := child1
  unfold live9817 coloured9817 at child
  try dsimp only [live9818, coloured9818]
  rw [child]
  dsimp only [result9817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9819_agree_conditional : tree9819 = literal9819 := by
  rw [tree9819_def]
  rfl
theorem node9819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9819 live9819 coloured9819 = result9819 := by
  rw [tree9819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9820_agree_conditional
    (child0 : tree9818 = literal9818)
    (child1 : tree9819 = literal9819) : tree9820 = literal9820 := by
  rw [tree9820_def, child0, child1]
  rfl
theorem node9820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9818 live9818 coloured9818 = result9818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9819 live9819 coloured9819 = result9819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9820 live9820 coloured9820 = result9820 := by
  rw [tree9820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9818 coloured9818 at child
  try dsimp only [live9820, coloured9820]
  rw [child]
  dsimp only [result9818]
  have child := child1
  unfold live9819 coloured9819 at child
  try dsimp only [live9820, coloured9820]
  rw [child]
  dsimp only [result9819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9821_agree_conditional : tree9821 = literal9821 := by
  rw [tree9821_def]
  rfl
theorem node9821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9821 live9821 coloured9821 = result9821 := by
  rw [tree9821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9822_agree_conditional
    (child0 : tree9820 = literal9820)
    (child1 : tree9821 = literal9821) : tree9822 = literal9822 := by
  rw [tree9822_def, child0, child1]
  rfl
theorem node9822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9820 live9820 coloured9820 = result9820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9821 live9821 coloured9821 = result9821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9822 live9822 coloured9822 = result9822 := by
  rw [tree9822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9820 coloured9820 at child
  try dsimp only [live9822, coloured9822]
  rw [child]
  dsimp only [result9820]
  have child := child1
  unfold live9821 coloured9821 at child
  try dsimp only [live9822, coloured9822]
  rw [child]
  dsimp only [result9821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9823_agree_conditional : tree9823 = literal9823 := by
  rw [tree9823_def]
  rfl
theorem node9823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9823 live9823 coloured9823 = result9823 := by
  rw [tree9823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9824_agree_conditional
    (child0 : tree9822 = literal9822)
    (child1 : tree9823 = literal9823) : tree9824 = literal9824 := by
  rw [tree9824_def, child0, child1]
  rfl
theorem node9824_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9822 live9822 coloured9822 = result9822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9823 live9823 coloured9823 = result9823) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9824 live9824 coloured9824 = result9824 := by
  rw [tree9824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9822 coloured9822 at child
  try dsimp only [live9824, coloured9824]
  rw [child]
  dsimp only [result9822]
  have child := child1
  unfold live9823 coloured9823 at child
  try dsimp only [live9824, coloured9824]
  rw [child]
  dsimp only [result9823]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9825_agree_conditional : tree9825 = literal9825 := by
  rw [tree9825_def]
  rfl
theorem node9825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9825 live9825 coloured9825 = result9825 := by
  rw [tree9825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9826_agree_conditional
    (child0 : tree9824 = literal9824)
    (child1 : tree9825 = literal9825) : tree9826 = literal9826 := by
  rw [tree9826_def, child0, child1]
  rfl
theorem node9826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9824 live9824 coloured9824 = result9824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9825 live9825 coloured9825 = result9825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9826 live9826 coloured9826 = result9826 := by
  rw [tree9826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9824 coloured9824 at child
  try dsimp only [live9826, coloured9826]
  rw [child]
  dsimp only [result9824]
  have child := child1
  unfold live9825 coloured9825 at child
  try dsimp only [live9826, coloured9826]
  rw [child]
  dsimp only [result9825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9827_agree_conditional : tree9827 = literal9827 := by
  rw [tree9827_def]
  rfl
theorem node9827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9827 live9827 coloured9827 = result9827 := by
  rw [tree9827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9828_agree_conditional
    (child0 : tree9826 = literal9826)
    (child1 : tree9827 = literal9827) : tree9828 = literal9828 := by
  rw [tree9828_def, child0, child1]
  rfl
theorem node9828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9826 live9826 coloured9826 = result9826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9827 live9827 coloured9827 = result9827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9828 live9828 coloured9828 = result9828 := by
  rw [tree9828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9826 coloured9826 at child
  try dsimp only [live9828, coloured9828]
  rw [child]
  dsimp only [result9826]
  have child := child1
  unfold live9827 coloured9827 at child
  try dsimp only [live9828, coloured9828]
  rw [child]
  dsimp only [result9827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9829_agree_conditional : tree9829 = literal9829 := by
  rw [tree9829_def]
  rfl
theorem node9829_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9829 live9829 coloured9829 = result9829 := by
  rw [tree9829_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9830_agree_conditional
    (child0 : tree9828 = literal9828)
    (child1 : tree9829 = literal9829) : tree9830 = literal9830 := by
  rw [tree9830_def, child0, child1]
  rfl
theorem node9830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9828 live9828 coloured9828 = result9828)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9829 live9829 coloured9829 = result9829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9830 live9830 coloured9830 = result9830 := by
  rw [tree9830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9828 coloured9828 at child
  try dsimp only [live9830, coloured9830]
  rw [child]
  dsimp only [result9828]
  have child := child1
  unfold live9829 coloured9829 at child
  try dsimp only [live9830, coloured9830]
  rw [child]
  dsimp only [result9829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9831_agree_conditional : tree9831 = literal9831 := by
  rw [tree9831_def]
  rfl
theorem node9831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9831 live9831 coloured9831 = result9831 := by
  rw [tree9831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9832_agree_conditional
    (child0 : tree9830 = literal9830)
    (child1 : tree9831 = literal9831) : tree9832 = literal9832 := by
  rw [tree9832_def, child0, child1]
  rfl
theorem node9832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9830 live9830 coloured9830 = result9830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9831 live9831 coloured9831 = result9831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9832 live9832 coloured9832 = result9832 := by
  rw [tree9832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9830 coloured9830 at child
  try dsimp only [live9832, coloured9832]
  rw [child]
  dsimp only [result9830]
  have child := child1
  unfold live9831 coloured9831 at child
  try dsimp only [live9832, coloured9832]
  rw [child]
  dsimp only [result9831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9833_agree_conditional : tree9833 = literal9833 := by
  rw [tree9833_def]
  rfl
theorem node9833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9833 live9833 coloured9833 = result9833 := by
  rw [tree9833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9834_agree_conditional
    (child0 : tree9832 = literal9832)
    (child1 : tree9833 = literal9833) : tree9834 = literal9834 := by
  rw [tree9834_def, child0, child1]
  rfl
theorem node9834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9832 live9832 coloured9832 = result9832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9833 live9833 coloured9833 = result9833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9834 live9834 coloured9834 = result9834 := by
  rw [tree9834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9832 coloured9832 at child
  try dsimp only [live9834, coloured9834]
  rw [child]
  dsimp only [result9832]
  have child := child1
  unfold live9833 coloured9833 at child
  try dsimp only [live9834, coloured9834]
  rw [child]
  dsimp only [result9833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9835_agree_conditional : tree9835 = literal9835 := by
  rw [tree9835_def]
  rfl
theorem node9835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9835 live9835 coloured9835 = result9835 := by
  rw [tree9835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9836_agree_conditional
    (child0 : tree9834 = literal9834)
    (child1 : tree9835 = literal9835) : tree9836 = literal9836 := by
  rw [tree9836_def, child0, child1]
  rfl
theorem node9836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9834 live9834 coloured9834 = result9834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9835 live9835 coloured9835 = result9835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9836 live9836 coloured9836 = result9836 := by
  rw [tree9836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9834 coloured9834 at child
  try dsimp only [live9836, coloured9836]
  rw [child]
  dsimp only [result9834]
  have child := child1
  unfold live9835 coloured9835 at child
  try dsimp only [live9836, coloured9836]
  rw [child]
  dsimp only [result9835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9837_agree_conditional : tree9837 = literal9837 := by
  rw [tree9837_def]
  rfl
theorem node9837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9837 live9837 coloured9837 = result9837 := by
  rw [tree9837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9838_agree_conditional
    (child0 : tree9836 = literal9836)
    (child1 : tree9837 = literal9837) : tree9838 = literal9838 := by
  rw [tree9838_def, child0, child1]
  rfl
theorem node9838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9836 live9836 coloured9836 = result9836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9837 live9837 coloured9837 = result9837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9838 live9838 coloured9838 = result9838 := by
  rw [tree9838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9836 coloured9836 at child
  try dsimp only [live9838, coloured9838]
  rw [child]
  dsimp only [result9836]
  have child := child1
  unfold live9837 coloured9837 at child
  try dsimp only [live9838, coloured9838]
  rw [child]
  dsimp only [result9837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9839_agree_conditional : tree9839 = literal9839 := by
  rw [tree9839_def]
  rfl
theorem node9839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9839 live9839 coloured9839 = result9839 := by
  rw [tree9839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9840_agree_conditional
    (child0 : tree9838 = literal9838)
    (child1 : tree9839 = literal9839) : tree9840 = literal9840 := by
  rw [tree9840_def, child0, child1]
  rfl
theorem node9840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9838 live9838 coloured9838 = result9838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9839 live9839 coloured9839 = result9839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9840 live9840 coloured9840 = result9840 := by
  rw [tree9840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9838 coloured9838 at child
  try dsimp only [live9840, coloured9840]
  rw [child]
  dsimp only [result9838]
  have child := child1
  unfold live9839 coloured9839 at child
  try dsimp only [live9840, coloured9840]
  rw [child]
  dsimp only [result9839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9841_agree_conditional : tree9841 = literal9841 := by
  rw [tree9841_def]
  rfl
theorem node9841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9841 live9841 coloured9841 = result9841 := by
  rw [tree9841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9842_agree_conditional
    (child0 : tree9840 = literal9840)
    (child1 : tree9841 = literal9841) : tree9842 = literal9842 := by
  rw [tree9842_def, child0, child1]
  rfl
theorem node9842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9840 live9840 coloured9840 = result9840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9841 live9841 coloured9841 = result9841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9842 live9842 coloured9842 = result9842 := by
  rw [tree9842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9840 coloured9840 at child
  try dsimp only [live9842, coloured9842]
  rw [child]
  dsimp only [result9840]
  have child := child1
  unfold live9841 coloured9841 at child
  try dsimp only [live9842, coloured9842]
  rw [child]
  dsimp only [result9841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9843_agree_conditional : tree9843 = literal9843 := by
  rw [tree9843_def]
  rfl
theorem node9843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9843 live9843 coloured9843 = result9843 := by
  rw [tree9843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9844_agree_conditional
    (child0 : tree9842 = literal9842)
    (child1 : tree9843 = literal9843) : tree9844 = literal9844 := by
  rw [tree9844_def, child0, child1]
  rfl
theorem node9844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9842 live9842 coloured9842 = result9842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9843 live9843 coloured9843 = result9843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9844 live9844 coloured9844 = result9844 := by
  rw [tree9844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9842 coloured9842 at child
  try dsimp only [live9844, coloured9844]
  rw [child]
  dsimp only [result9842]
  have child := child1
  unfold live9843 coloured9843 at child
  try dsimp only [live9844, coloured9844]
  rw [child]
  dsimp only [result9843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9845_agree_conditional : tree9845 = literal9845 := by
  rw [tree9845_def]
  rfl
theorem node9845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9845 live9845 coloured9845 = result9845 := by
  rw [tree9845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9846_agree_conditional
    (child0 : tree9844 = literal9844)
    (child1 : tree9845 = literal9845) : tree9846 = literal9846 := by
  rw [tree9846_def, child0, child1]
  rfl
theorem node9846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9844 live9844 coloured9844 = result9844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9845 live9845 coloured9845 = result9845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9846 live9846 coloured9846 = result9846 := by
  rw [tree9846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9844 coloured9844 at child
  try dsimp only [live9846, coloured9846]
  rw [child]
  dsimp only [result9844]
  have child := child1
  unfold live9845 coloured9845 at child
  try dsimp only [live9846, coloured9846]
  rw [child]
  dsimp only [result9845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9847_agree_conditional : tree9847 = literal9847 := by
  rw [tree9847_def]
  rfl
theorem node9847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9847 live9847 coloured9847 = result9847 := by
  rw [tree9847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9848_agree_conditional
    (child0 : tree9846 = literal9846)
    (child1 : tree9847 = literal9847) : tree9848 = literal9848 := by
  rw [tree9848_def, child0, child1]
  rfl
theorem node9848_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9846 live9846 coloured9846 = result9846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9847 live9847 coloured9847 = result9847) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9848 live9848 coloured9848 = result9848 := by
  rw [tree9848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9846 coloured9846 at child
  try dsimp only [live9848, coloured9848]
  rw [child]
  dsimp only [result9846]
  have child := child1
  unfold live9847 coloured9847 at child
  try dsimp only [live9848, coloured9848]
  rw [child]
  dsimp only [result9847]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9849_agree_conditional : tree9849 = literal9849 := by
  rw [tree9849_def]
  rfl
theorem node9849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9849 live9849 coloured9849 = result9849 := by
  rw [tree9849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9850_agree_conditional
    (child0 : tree9848 = literal9848)
    (child1 : tree9849 = literal9849) : tree9850 = literal9850 := by
  rw [tree9850_def, child0, child1]
  rfl
theorem node9850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9848 live9848 coloured9848 = result9848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9849 live9849 coloured9849 = result9849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9850 live9850 coloured9850 = result9850 := by
  rw [tree9850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9848 coloured9848 at child
  try dsimp only [live9850, coloured9850]
  rw [child]
  dsimp only [result9848]
  have child := child1
  unfold live9849 coloured9849 at child
  try dsimp only [live9850, coloured9850]
  rw [child]
  dsimp only [result9849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9851_agree_conditional : tree9851 = literal9851 := by
  rw [tree9851_def]
  rfl
theorem node9851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9851 live9851 coloured9851 = result9851 := by
  rw [tree9851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9852_agree_conditional
    (child0 : tree9850 = literal9850)
    (child1 : tree9851 = literal9851) : tree9852 = literal9852 := by
  rw [tree9852_def, child0, child1]
  rfl
theorem node9852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9850 live9850 coloured9850 = result9850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9851 live9851 coloured9851 = result9851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9852 live9852 coloured9852 = result9852 := by
  rw [tree9852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9850 coloured9850 at child
  try dsimp only [live9852, coloured9852]
  rw [child]
  dsimp only [result9850]
  have child := child1
  unfold live9851 coloured9851 at child
  try dsimp only [live9852, coloured9852]
  rw [child]
  dsimp only [result9851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9853_agree_conditional : tree9853 = literal9853 := by
  rw [tree9853_def]
  rfl
theorem node9853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9853 live9853 coloured9853 = result9853 := by
  rw [tree9853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9854_agree_conditional
    (child0 : tree9852 = literal9852)
    (child1 : tree9853 = literal9853) : tree9854 = literal9854 := by
  rw [tree9854_def, child0, child1]
  rfl
theorem node9854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9852 live9852 coloured9852 = result9852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9853 live9853 coloured9853 = result9853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9854 live9854 coloured9854 = result9854 := by
  rw [tree9854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9852 coloured9852 at child
  try dsimp only [live9854, coloured9854]
  rw [child]
  dsimp only [result9852]
  have child := child1
  unfold live9853 coloured9853 at child
  try dsimp only [live9854, coloured9854]
  rw [child]
  dsimp only [result9853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9855_agree_conditional : tree9855 = literal9855 := by
  rw [tree9855_def]
  rfl
theorem node9855_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9855 live9855 coloured9855 = result9855 := by
  rw [tree9855_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9856_agree_conditional
    (child0 : tree9854 = literal9854)
    (child1 : tree9855 = literal9855) : tree9856 = literal9856 := by
  rw [tree9856_def, child0, child1]
  rfl
theorem node9856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9854 live9854 coloured9854 = result9854)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9855 live9855 coloured9855 = result9855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9856 live9856 coloured9856 = result9856 := by
  rw [tree9856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9854 coloured9854 at child
  try dsimp only [live9856, coloured9856]
  rw [child]
  dsimp only [result9854]
  have child := child1
  unfold live9855 coloured9855 at child
  try dsimp only [live9856, coloured9856]
  rw [child]
  dsimp only [result9855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9857_agree_conditional : tree9857 = literal9857 := by
  rw [tree9857_def]
  rfl
theorem node9857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9857 live9857 coloured9857 = result9857 := by
  rw [tree9857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9858_agree_conditional
    (child0 : tree9856 = literal9856)
    (child1 : tree9857 = literal9857) : tree9858 = literal9858 := by
  rw [tree9858_def, child0, child1]
  rfl
theorem node9858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9856 live9856 coloured9856 = result9856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9857 live9857 coloured9857 = result9857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9858 live9858 coloured9858 = result9858 := by
  rw [tree9858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9856 coloured9856 at child
  try dsimp only [live9858, coloured9858]
  rw [child]
  dsimp only [result9856]
  have child := child1
  unfold live9857 coloured9857 at child
  try dsimp only [live9858, coloured9858]
  rw [child]
  dsimp only [result9857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9859_agree_conditional : tree9859 = literal9859 := by
  rw [tree9859_def]
  rfl
theorem node9859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9859 live9859 coloured9859 = result9859 := by
  rw [tree9859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9860_agree_conditional
    (child0 : tree9858 = literal9858)
    (child1 : tree9859 = literal9859) : tree9860 = literal9860 := by
  rw [tree9860_def, child0, child1]
  rfl
theorem node9860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9858 live9858 coloured9858 = result9858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9859 live9859 coloured9859 = result9859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9860 live9860 coloured9860 = result9860 := by
  rw [tree9860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9858 coloured9858 at child
  try dsimp only [live9860, coloured9860]
  rw [child]
  dsimp only [result9858]
  have child := child1
  unfold live9859 coloured9859 at child
  try dsimp only [live9860, coloured9860]
  rw [child]
  dsimp only [result9859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9861_agree_conditional : tree9861 = literal9861 := by
  rw [tree9861_def]
  rfl
theorem node9861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9861 live9861 coloured9861 = result9861 := by
  rw [tree9861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9862_agree_conditional
    (child0 : tree9860 = literal9860)
    (child1 : tree9861 = literal9861) : tree9862 = literal9862 := by
  rw [tree9862_def, child0, child1]
  rfl
theorem node9862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9860 live9860 coloured9860 = result9860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9861 live9861 coloured9861 = result9861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9862 live9862 coloured9862 = result9862 := by
  rw [tree9862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9860 coloured9860 at child
  try dsimp only [live9862, coloured9862]
  rw [child]
  dsimp only [result9860]
  have child := child1
  unfold live9861 coloured9861 at child
  try dsimp only [live9862, coloured9862]
  rw [child]
  dsimp only [result9861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9863_agree_conditional : tree9863 = literal9863 := by
  rw [tree9863_def]
  rfl
theorem node9863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9863 live9863 coloured9863 = result9863 := by
  rw [tree9863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9864_agree_conditional
    (child0 : tree9862 = literal9862)
    (child1 : tree9863 = literal9863) : tree9864 = literal9864 := by
  rw [tree9864_def, child0, child1]
  rfl
theorem node9864_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9862 live9862 coloured9862 = result9862)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9863 live9863 coloured9863 = result9863) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9864 live9864 coloured9864 = result9864 := by
  rw [tree9864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9862 coloured9862 at child
  try dsimp only [live9864, coloured9864]
  rw [child]
  dsimp only [result9862]
  have child := child1
  unfold live9863 coloured9863 at child
  try dsimp only [live9864, coloured9864]
  rw [child]
  dsimp only [result9863]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9865_agree_conditional : tree9865 = literal9865 := by
  rw [tree9865_def]
  rfl
theorem node9865_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9865 live9865 coloured9865 = result9865 := by
  rw [tree9865_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9866_agree_conditional
    (child0 : tree9864 = literal9864)
    (child1 : tree9865 = literal9865) : tree9866 = literal9866 := by
  rw [tree9866_def, child0, child1]
  rfl
theorem node9866_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9864 live9864 coloured9864 = result9864)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9865 live9865 coloured9865 = result9865) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9866 live9866 coloured9866 = result9866 := by
  rw [tree9866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9864 coloured9864 at child
  try dsimp only [live9866, coloured9866]
  rw [child]
  dsimp only [result9864]
  have child := child1
  unfold live9865 coloured9865 at child
  try dsimp only [live9866, coloured9866]
  rw [child]
  dsimp only [result9865]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9867_agree_conditional : tree9867 = literal9867 := by
  rw [tree9867_def]
  rfl
theorem node9867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9867 live9867 coloured9867 = result9867 := by
  rw [tree9867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9868_agree_conditional
    (child0 : tree9866 = literal9866)
    (child1 : tree9867 = literal9867) : tree9868 = literal9868 := by
  rw [tree9868_def, child0, child1]
  rfl
theorem node9868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9866 live9866 coloured9866 = result9866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9867 live9867 coloured9867 = result9867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9868 live9868 coloured9868 = result9868 := by
  rw [tree9868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9866 coloured9866 at child
  try dsimp only [live9868, coloured9868]
  rw [child]
  dsimp only [result9866]
  have child := child1
  unfold live9867 coloured9867 at child
  try dsimp only [live9868, coloured9868]
  rw [child]
  dsimp only [result9867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9869_agree_conditional : tree9869 = literal9869 := by
  rw [tree9869_def]
  rfl
theorem node9869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9869 live9869 coloured9869 = result9869 := by
  rw [tree9869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9870_agree_conditional
    (child0 : tree9868 = literal9868)
    (child1 : tree9869 = literal9869) : tree9870 = literal9870 := by
  rw [tree9870_def, child0, child1]
  rfl
theorem node9870_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9868 live9868 coloured9868 = result9868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9869 live9869 coloured9869 = result9869) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9870 live9870 coloured9870 = result9870 := by
  rw [tree9870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9868 coloured9868 at child
  try dsimp only [live9870, coloured9870]
  rw [child]
  dsimp only [result9868]
  have child := child1
  unfold live9869 coloured9869 at child
  try dsimp only [live9870, coloured9870]
  rw [child]
  dsimp only [result9869]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9871_agree_conditional : tree9871 = literal9871 := by
  rw [tree9871_def]
  rfl
theorem node9871_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9871 live9871 coloured9871 = result9871 := by
  rw [tree9871_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9872_agree_conditional
    (child0 : tree9870 = literal9870)
    (child1 : tree9871 = literal9871) : tree9872 = literal9872 := by
  rw [tree9872_def, child0, child1]
  rfl
theorem node9872_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9870 live9870 coloured9870 = result9870)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9871 live9871 coloured9871 = result9871) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9872 live9872 coloured9872 = result9872 := by
  rw [tree9872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9870 coloured9870 at child
  try dsimp only [live9872, coloured9872]
  rw [child]
  dsimp only [result9870]
  have child := child1
  unfold live9871 coloured9871 at child
  try dsimp only [live9872, coloured9872]
  rw [child]
  dsimp only [result9871]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9873_agree_conditional : tree9873 = literal9873 := by
  rw [tree9873_def]
  rfl
theorem node9873_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9873 live9873 coloured9873 = result9873 := by
  rw [tree9873_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9874_agree_conditional
    (child0 : tree9872 = literal9872)
    (child1 : tree9873 = literal9873) : tree9874 = literal9874 := by
  rw [tree9874_def, child0, child1]
  rfl
theorem node9874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9872 live9872 coloured9872 = result9872)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9873 live9873 coloured9873 = result9873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9874 live9874 coloured9874 = result9874 := by
  rw [tree9874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9872 coloured9872 at child
  try dsimp only [live9874, coloured9874]
  rw [child]
  dsimp only [result9872]
  have child := child1
  unfold live9873 coloured9873 at child
  try dsimp only [live9874, coloured9874]
  rw [child]
  dsimp only [result9873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9875_agree_conditional : tree9875 = literal9875 := by
  rw [tree9875_def]
  rfl
theorem node9875_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9875 live9875 coloured9875 = result9875 := by
  rw [tree9875_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9876_agree_conditional
    (child0 : tree9874 = literal9874)
    (child1 : tree9875 = literal9875) : tree9876 = literal9876 := by
  rw [tree9876_def, child0, child1]
  rfl
theorem node9876_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9874 live9874 coloured9874 = result9874)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9875 live9875 coloured9875 = result9875) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9876 live9876 coloured9876 = result9876 := by
  rw [tree9876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9874 coloured9874 at child
  try dsimp only [live9876, coloured9876]
  rw [child]
  dsimp only [result9874]
  have child := child1
  unfold live9875 coloured9875 at child
  try dsimp only [live9876, coloured9876]
  rw [child]
  dsimp only [result9875]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9877_agree_conditional : tree9877 = literal9877 := by
  rw [tree9877_def]
  rfl
theorem node9877_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9877 live9877 coloured9877 = result9877 := by
  rw [tree9877_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9878_agree_conditional
    (child0 : tree9876 = literal9876)
    (child1 : tree9877 = literal9877) : tree9878 = literal9878 := by
  rw [tree9878_def, child0, child1]
  rfl
theorem node9878_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9876 live9876 coloured9876 = result9876)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9877 live9877 coloured9877 = result9877) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9878 live9878 coloured9878 = result9878 := by
  rw [tree9878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9876 coloured9876 at child
  try dsimp only [live9878, coloured9878]
  rw [child]
  dsimp only [result9876]
  have child := child1
  unfold live9877 coloured9877 at child
  try dsimp only [live9878, coloured9878]
  rw [child]
  dsimp only [result9877]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9879_agree_conditional : tree9879 = literal9879 := by
  rw [tree9879_def]
  rfl
theorem node9879_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9879 live9879 coloured9879 = result9879 := by
  rw [tree9879_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9880_agree_conditional
    (child0 : tree9878 = literal9878)
    (child1 : tree9879 = literal9879) : tree9880 = literal9880 := by
  rw [tree9880_def, child0, child1]
  rfl
theorem node9880_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9878 live9878 coloured9878 = result9878)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9879 live9879 coloured9879 = result9879) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9880 live9880 coloured9880 = result9880 := by
  rw [tree9880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9878 coloured9878 at child
  try dsimp only [live9880, coloured9880]
  rw [child]
  dsimp only [result9878]
  have child := child1
  unfold live9879 coloured9879 at child
  try dsimp only [live9880, coloured9880]
  rw [child]
  dsimp only [result9879]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9881_agree_conditional : tree9881 = literal9881 := by
  rw [tree9881_def]
  rfl
theorem node9881_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9881 live9881 coloured9881 = result9881 := by
  rw [tree9881_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9882_agree_conditional
    (child0 : tree9880 = literal9880)
    (child1 : tree9881 = literal9881) : tree9882 = literal9882 := by
  rw [tree9882_def, child0, child1]
  rfl
theorem node9882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9880 live9880 coloured9880 = result9880)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9881 live9881 coloured9881 = result9881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9882 live9882 coloured9882 = result9882 := by
  rw [tree9882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9880 coloured9880 at child
  try dsimp only [live9882, coloured9882]
  rw [child]
  dsimp only [result9880]
  have child := child1
  unfold live9881 coloured9881 at child
  try dsimp only [live9882, coloured9882]
  rw [child]
  dsimp only [result9881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9883_agree_conditional : tree9883 = literal9883 := by
  rw [tree9883_def]
  rfl
theorem node9883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9883 live9883 coloured9883 = result9883 := by
  rw [tree9883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9884_agree_conditional
    (child0 : tree9882 = literal9882)
    (child1 : tree9883 = literal9883) : tree9884 = literal9884 := by
  rw [tree9884_def, child0, child1]
  rfl
theorem node9884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9882 live9882 coloured9882 = result9882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9883 live9883 coloured9883 = result9883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9884 live9884 coloured9884 = result9884 := by
  rw [tree9884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9882 coloured9882 at child
  try dsimp only [live9884, coloured9884]
  rw [child]
  dsimp only [result9882]
  have child := child1
  unfold live9883 coloured9883 at child
  try dsimp only [live9884, coloured9884]
  rw [child]
  dsimp only [result9883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9885_agree_conditional : tree9885 = literal9885 := by
  rw [tree9885_def]
  rfl
theorem node9885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9885 live9885 coloured9885 = result9885 := by
  rw [tree9885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9886_agree_conditional
    (child0 : tree9884 = literal9884)
    (child1 : tree9885 = literal9885) : tree9886 = literal9886 := by
  rw [tree9886_def, child0, child1]
  rfl
theorem node9886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9884 live9884 coloured9884 = result9884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9885 live9885 coloured9885 = result9885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9886 live9886 coloured9886 = result9886 := by
  rw [tree9886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9884 coloured9884 at child
  try dsimp only [live9886, coloured9886]
  rw [child]
  dsimp only [result9884]
  have child := child1
  unfold live9885 coloured9885 at child
  try dsimp only [live9886, coloured9886]
  rw [child]
  dsimp only [result9885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9887_agree_conditional : tree9887 = literal9887 := by
  rw [tree9887_def]
  rfl
theorem node9887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9887 live9887 coloured9887 = result9887 := by
  rw [tree9887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
