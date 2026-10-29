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
theorem tree2784_agree_conditional
    (child0 : tree2782 = literal2782)
    (child1 : tree2783 = literal2783) : tree2784 = literal2784 := by
  rw [tree2784_def, child0, child1]
  rfl
theorem node2784_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2782 live2782 coloured2782 = result2782)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2783 live2783 coloured2783 = result2783) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2784 live2784 coloured2784 = result2784 := by
  rw [tree2784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2782 coloured2782 at child
  try dsimp only [live2784, coloured2784]
  rw [child]
  dsimp only [result2782]
  have child := child1
  unfold live2783 coloured2783 at child
  try dsimp only [live2784, coloured2784]
  rw [child]
  dsimp only [result2783]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2785_agree_conditional : tree2785 = literal2785 := by
  rw [tree2785_def]
  rfl
theorem node2785_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2785 live2785 coloured2785 = result2785 := by
  rw [tree2785_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2786_agree_conditional
    (child0 : tree2784 = literal2784)
    (child1 : tree2785 = literal2785) : tree2786 = literal2786 := by
  rw [tree2786_def, child0, child1]
  rfl
theorem node2786_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2784 live2784 coloured2784 = result2784)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2785 live2785 coloured2785 = result2785) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2786 live2786 coloured2786 = result2786 := by
  rw [tree2786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2784 coloured2784 at child
  try dsimp only [live2786, coloured2786]
  rw [child]
  dsimp only [result2784]
  have child := child1
  unfold live2785 coloured2785 at child
  try dsimp only [live2786, coloured2786]
  rw [child]
  dsimp only [result2785]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2787_agree_conditional : tree2787 = literal2787 := by
  rw [tree2787_def]
  rfl
theorem node2787_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2787 live2787 coloured2787 = result2787 := by
  rw [tree2787_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2788_agree_conditional
    (child0 : tree2786 = literal2786)
    (child1 : tree2787 = literal2787) : tree2788 = literal2788 := by
  rw [tree2788_def, child0, child1]
  rfl
theorem node2788_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2786 live2786 coloured2786 = result2786)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2787 live2787 coloured2787 = result2787) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2788 live2788 coloured2788 = result2788 := by
  rw [tree2788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2786 coloured2786 at child
  try dsimp only [live2788, coloured2788]
  rw [child]
  dsimp only [result2786]
  have child := child1
  unfold live2787 coloured2787 at child
  try dsimp only [live2788, coloured2788]
  rw [child]
  dsimp only [result2787]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2789_agree_conditional : tree2789 = literal2789 := by
  rw [tree2789_def]
  rfl
theorem node2789_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2789 live2789 coloured2789 = result2789 := by
  rw [tree2789_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2790_agree_conditional
    (child0 : tree2788 = literal2788)
    (child1 : tree2789 = literal2789) : tree2790 = literal2790 := by
  rw [tree2790_def, child0, child1]
  rfl
theorem node2790_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2788 live2788 coloured2788 = result2788)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2789 live2789 coloured2789 = result2789) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2790 live2790 coloured2790 = result2790 := by
  rw [tree2790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2788 coloured2788 at child
  try dsimp only [live2790, coloured2790]
  rw [child]
  dsimp only [result2788]
  have child := child1
  unfold live2789 coloured2789 at child
  try dsimp only [live2790, coloured2790]
  rw [child]
  dsimp only [result2789]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2791_agree_conditional : tree2791 = literal2791 := by
  rw [tree2791_def]
  rfl
theorem node2791_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2791 live2791 coloured2791 = result2791 := by
  rw [tree2791_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2792_agree_conditional
    (child0 : tree2790 = literal2790)
    (child1 : tree2791 = literal2791) : tree2792 = literal2792 := by
  rw [tree2792_def, child0, child1]
  rfl
theorem node2792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2790 live2790 coloured2790 = result2790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2791 live2791 coloured2791 = result2791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2792 live2792 coloured2792 = result2792 := by
  rw [tree2792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2790 coloured2790 at child
  try dsimp only [live2792, coloured2792]
  rw [child]
  dsimp only [result2790]
  have child := child1
  unfold live2791 coloured2791 at child
  try dsimp only [live2792, coloured2792]
  rw [child]
  dsimp only [result2791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2793_agree_conditional : tree2793 = literal2793 := by
  rw [tree2793_def]
  rfl
theorem node2793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2793 live2793 coloured2793 = result2793 := by
  rw [tree2793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2794_agree_conditional
    (child0 : tree2792 = literal2792)
    (child1 : tree2793 = literal2793) : tree2794 = literal2794 := by
  rw [tree2794_def, child0, child1]
  rfl
theorem node2794_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2792 live2792 coloured2792 = result2792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2793 live2793 coloured2793 = result2793) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2794 live2794 coloured2794 = result2794 := by
  rw [tree2794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2792 coloured2792 at child
  try dsimp only [live2794, coloured2794]
  rw [child]
  dsimp only [result2792]
  have child := child1
  unfold live2793 coloured2793 at child
  try dsimp only [live2794, coloured2794]
  rw [child]
  dsimp only [result2793]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2795_agree_conditional : tree2795 = literal2795 := by
  rw [tree2795_def]
  rfl
theorem node2795_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2795 live2795 coloured2795 = result2795 := by
  rw [tree2795_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2796_agree_conditional
    (child0 : tree2794 = literal2794)
    (child1 : tree2795 = literal2795) : tree2796 = literal2796 := by
  rw [tree2796_def, child0, child1]
  rfl
theorem node2796_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2794 live2794 coloured2794 = result2794)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2795 live2795 coloured2795 = result2795) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2796 live2796 coloured2796 = result2796 := by
  rw [tree2796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2794 coloured2794 at child
  try dsimp only [live2796, coloured2796]
  rw [child]
  dsimp only [result2794]
  have child := child1
  unfold live2795 coloured2795 at child
  try dsimp only [live2796, coloured2796]
  rw [child]
  dsimp only [result2795]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2797_agree_conditional : tree2797 = literal2797 := by
  rw [tree2797_def]
  rfl
theorem node2797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2797 live2797 coloured2797 = result2797 := by
  rw [tree2797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2798_agree_conditional
    (child0 : tree2796 = literal2796)
    (child1 : tree2797 = literal2797) : tree2798 = literal2798 := by
  rw [tree2798_def, child0, child1]
  rfl
theorem node2798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2796 live2796 coloured2796 = result2796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2797 live2797 coloured2797 = result2797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2798 live2798 coloured2798 = result2798 := by
  rw [tree2798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2796 coloured2796 at child
  try dsimp only [live2798, coloured2798]
  rw [child]
  dsimp only [result2796]
  have child := child1
  unfold live2797 coloured2797 at child
  try dsimp only [live2798, coloured2798]
  rw [child]
  dsimp only [result2797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2799_agree_conditional : tree2799 = literal2799 := by
  rw [tree2799_def]
  rfl
theorem node2799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2799 live2799 coloured2799 = result2799 := by
  rw [tree2799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2800_agree_conditional
    (child0 : tree2798 = literal2798)
    (child1 : tree2799 = literal2799) : tree2800 = literal2800 := by
  rw [tree2800_def, child0, child1]
  rfl
theorem node2800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2798 live2798 coloured2798 = result2798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2799 live2799 coloured2799 = result2799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2800 live2800 coloured2800 = result2800 := by
  rw [tree2800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2798 coloured2798 at child
  try dsimp only [live2800, coloured2800]
  rw [child]
  dsimp only [result2798]
  have child := child1
  unfold live2799 coloured2799 at child
  try dsimp only [live2800, coloured2800]
  rw [child]
  dsimp only [result2799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2801_agree_conditional : tree2801 = literal2801 := by
  rw [tree2801_def]
  rfl
theorem node2801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2801 live2801 coloured2801 = result2801 := by
  rw [tree2801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2802_agree_conditional
    (child0 : tree2800 = literal2800)
    (child1 : tree2801 = literal2801) : tree2802 = literal2802 := by
  rw [tree2802_def, child0, child1]
  rfl
theorem node2802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2800 live2800 coloured2800 = result2800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2801 live2801 coloured2801 = result2801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2802 live2802 coloured2802 = result2802 := by
  rw [tree2802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2800 coloured2800 at child
  try dsimp only [live2802, coloured2802]
  rw [child]
  dsimp only [result2800]
  have child := child1
  unfold live2801 coloured2801 at child
  try dsimp only [live2802, coloured2802]
  rw [child]
  dsimp only [result2801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2803_agree_conditional : tree2803 = literal2803 := by
  rw [tree2803_def]
  rfl
theorem node2803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2803 live2803 coloured2803 = result2803 := by
  rw [tree2803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2804_agree_conditional
    (child0 : tree2802 = literal2802)
    (child1 : tree2803 = literal2803) : tree2804 = literal2804 := by
  rw [tree2804_def, child0, child1]
  rfl
theorem node2804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2802 live2802 coloured2802 = result2802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2803 live2803 coloured2803 = result2803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2804 live2804 coloured2804 = result2804 := by
  rw [tree2804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2802 coloured2802 at child
  try dsimp only [live2804, coloured2804]
  rw [child]
  dsimp only [result2802]
  have child := child1
  unfold live2803 coloured2803 at child
  try dsimp only [live2804, coloured2804]
  rw [child]
  dsimp only [result2803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2805_agree_conditional : tree2805 = literal2805 := by
  rw [tree2805_def]
  rfl
theorem node2805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2805 live2805 coloured2805 = result2805 := by
  rw [tree2805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2806_agree_conditional
    (child0 : tree2804 = literal2804)
    (child1 : tree2805 = literal2805) : tree2806 = literal2806 := by
  rw [tree2806_def, child0, child1]
  rfl
theorem node2806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2804 live2804 coloured2804 = result2804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2805 live2805 coloured2805 = result2805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2806 live2806 coloured2806 = result2806 := by
  rw [tree2806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2804 coloured2804 at child
  try dsimp only [live2806, coloured2806]
  rw [child]
  dsimp only [result2804]
  have child := child1
  unfold live2805 coloured2805 at child
  try dsimp only [live2806, coloured2806]
  rw [child]
  dsimp only [result2805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2807_agree_conditional : tree2807 = literal2807 := by
  rw [tree2807_def]
  rfl
theorem node2807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2807 live2807 coloured2807 = result2807 := by
  rw [tree2807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2808_agree_conditional
    (child0 : tree2806 = literal2806)
    (child1 : tree2807 = literal2807) : tree2808 = literal2808 := by
  rw [tree2808_def, child0, child1]
  rfl
theorem node2808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2806 live2806 coloured2806 = result2806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2807 live2807 coloured2807 = result2807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2808 live2808 coloured2808 = result2808 := by
  rw [tree2808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2806 coloured2806 at child
  try dsimp only [live2808, coloured2808]
  rw [child]
  dsimp only [result2806]
  have child := child1
  unfold live2807 coloured2807 at child
  try dsimp only [live2808, coloured2808]
  rw [child]
  dsimp only [result2807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2809_agree_conditional : tree2809 = literal2809 := by
  rw [tree2809_def]
  rfl
theorem node2809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2809 live2809 coloured2809 = result2809 := by
  rw [tree2809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2810_agree_conditional
    (child0 : tree2808 = literal2808)
    (child1 : tree2809 = literal2809) : tree2810 = literal2810 := by
  rw [tree2810_def, child0, child1]
  rfl
theorem node2810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2808 live2808 coloured2808 = result2808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2809 live2809 coloured2809 = result2809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2810 live2810 coloured2810 = result2810 := by
  rw [tree2810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2808 coloured2808 at child
  try dsimp only [live2810, coloured2810]
  rw [child]
  dsimp only [result2808]
  have child := child1
  unfold live2809 coloured2809 at child
  try dsimp only [live2810, coloured2810]
  rw [child]
  dsimp only [result2809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2811_agree_conditional : tree2811 = literal2811 := by
  rw [tree2811_def]
  rfl
theorem node2811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2811 live2811 coloured2811 = result2811 := by
  rw [tree2811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2812_agree_conditional
    (child0 : tree2810 = literal2810)
    (child1 : tree2811 = literal2811) : tree2812 = literal2812 := by
  rw [tree2812_def, child0, child1]
  rfl
theorem node2812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2810 live2810 coloured2810 = result2810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2811 live2811 coloured2811 = result2811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2812 live2812 coloured2812 = result2812 := by
  rw [tree2812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2810 coloured2810 at child
  try dsimp only [live2812, coloured2812]
  rw [child]
  dsimp only [result2810]
  have child := child1
  unfold live2811 coloured2811 at child
  try dsimp only [live2812, coloured2812]
  rw [child]
  dsimp only [result2811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2813_agree_conditional : tree2813 = literal2813 := by
  rw [tree2813_def]
  rfl
theorem node2813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2813 live2813 coloured2813 = result2813 := by
  rw [tree2813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2814_agree_conditional
    (child0 : tree2812 = literal2812)
    (child1 : tree2813 = literal2813) : tree2814 = literal2814 := by
  rw [tree2814_def, child0, child1]
  rfl
theorem node2814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2812 live2812 coloured2812 = result2812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2813 live2813 coloured2813 = result2813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2814 live2814 coloured2814 = result2814 := by
  rw [tree2814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2812 coloured2812 at child
  try dsimp only [live2814, coloured2814]
  rw [child]
  dsimp only [result2812]
  have child := child1
  unfold live2813 coloured2813 at child
  try dsimp only [live2814, coloured2814]
  rw [child]
  dsimp only [result2813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2815_agree_conditional : tree2815 = literal2815 := by
  rw [tree2815_def]
  rfl
theorem node2815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2815 live2815 coloured2815 = result2815 := by
  rw [tree2815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2816_agree_conditional
    (child0 : tree2814 = literal2814)
    (child1 : tree2815 = literal2815) : tree2816 = literal2816 := by
  rw [tree2816_def, child0, child1]
  rfl
theorem node2816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2814 live2814 coloured2814 = result2814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2815 live2815 coloured2815 = result2815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2816 live2816 coloured2816 = result2816 := by
  rw [tree2816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2814 coloured2814 at child
  try dsimp only [live2816, coloured2816]
  rw [child]
  dsimp only [result2814]
  have child := child1
  unfold live2815 coloured2815 at child
  try dsimp only [live2816, coloured2816]
  rw [child]
  dsimp only [result2815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2817_agree_conditional : tree2817 = literal2817 := by
  rw [tree2817_def]
  rfl
theorem node2817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2817 live2817 coloured2817 = result2817 := by
  rw [tree2817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2818_agree_conditional
    (child0 : tree2816 = literal2816)
    (child1 : tree2817 = literal2817) : tree2818 = literal2818 := by
  rw [tree2818_def, child0, child1]
  rfl
theorem node2818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2816 live2816 coloured2816 = result2816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2817 live2817 coloured2817 = result2817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2818 live2818 coloured2818 = result2818 := by
  rw [tree2818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2816 coloured2816 at child
  try dsimp only [live2818, coloured2818]
  rw [child]
  dsimp only [result2816]
  have child := child1
  unfold live2817 coloured2817 at child
  try dsimp only [live2818, coloured2818]
  rw [child]
  dsimp only [result2817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2819_agree_conditional : tree2819 = literal2819 := by
  rw [tree2819_def]
  rfl
theorem node2819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2819 live2819 coloured2819 = result2819 := by
  rw [tree2819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2820_agree_conditional
    (child0 : tree2818 = literal2818)
    (child1 : tree2819 = literal2819) : tree2820 = literal2820 := by
  rw [tree2820_def, child0, child1]
  rfl
theorem node2820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2818 live2818 coloured2818 = result2818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2819 live2819 coloured2819 = result2819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2820 live2820 coloured2820 = result2820 := by
  rw [tree2820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2818 coloured2818 at child
  try dsimp only [live2820, coloured2820]
  rw [child]
  dsimp only [result2818]
  have child := child1
  unfold live2819 coloured2819 at child
  try dsimp only [live2820, coloured2820]
  rw [child]
  dsimp only [result2819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2821_agree_conditional : tree2821 = literal2821 := by
  rw [tree2821_def]
  rfl
theorem node2821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2821 live2821 coloured2821 = result2821 := by
  rw [tree2821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2822_agree_conditional
    (child0 : tree2820 = literal2820)
    (child1 : tree2821 = literal2821) : tree2822 = literal2822 := by
  rw [tree2822_def, child0, child1]
  rfl
theorem node2822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2820 live2820 coloured2820 = result2820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2821 live2821 coloured2821 = result2821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2822 live2822 coloured2822 = result2822 := by
  rw [tree2822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2820 coloured2820 at child
  try dsimp only [live2822, coloured2822]
  rw [child]
  dsimp only [result2820]
  have child := child1
  unfold live2821 coloured2821 at child
  try dsimp only [live2822, coloured2822]
  rw [child]
  dsimp only [result2821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2823_agree_conditional : tree2823 = literal2823 := by
  rw [tree2823_def]
  rfl
theorem node2823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2823 live2823 coloured2823 = result2823 := by
  rw [tree2823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2824_agree_conditional
    (child0 : tree2822 = literal2822)
    (child1 : tree2823 = literal2823) : tree2824 = literal2824 := by
  rw [tree2824_def, child0, child1]
  rfl
theorem node2824_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2822 live2822 coloured2822 = result2822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2823 live2823 coloured2823 = result2823) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2824 live2824 coloured2824 = result2824 := by
  rw [tree2824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2822 coloured2822 at child
  try dsimp only [live2824, coloured2824]
  rw [child]
  dsimp only [result2822]
  have child := child1
  unfold live2823 coloured2823 at child
  try dsimp only [live2824, coloured2824]
  rw [child]
  dsimp only [result2823]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2825_agree_conditional : tree2825 = literal2825 := by
  rw [tree2825_def]
  rfl
theorem node2825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2825 live2825 coloured2825 = result2825 := by
  rw [tree2825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2826_agree_conditional
    (child0 : tree2824 = literal2824)
    (child1 : tree2825 = literal2825) : tree2826 = literal2826 := by
  rw [tree2826_def, child0, child1]
  rfl
theorem node2826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2824 live2824 coloured2824 = result2824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2825 live2825 coloured2825 = result2825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2826 live2826 coloured2826 = result2826 := by
  rw [tree2826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2824 coloured2824 at child
  try dsimp only [live2826, coloured2826]
  rw [child]
  dsimp only [result2824]
  have child := child1
  unfold live2825 coloured2825 at child
  try dsimp only [live2826, coloured2826]
  rw [child]
  dsimp only [result2825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2827_agree_conditional : tree2827 = literal2827 := by
  rw [tree2827_def]
  rfl
theorem node2827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2827 live2827 coloured2827 = result2827 := by
  rw [tree2827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2828_agree_conditional
    (child0 : tree2826 = literal2826)
    (child1 : tree2827 = literal2827) : tree2828 = literal2828 := by
  rw [tree2828_def, child0, child1]
  rfl
theorem node2828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2826 live2826 coloured2826 = result2826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2827 live2827 coloured2827 = result2827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2828 live2828 coloured2828 = result2828 := by
  rw [tree2828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2826 coloured2826 at child
  try dsimp only [live2828, coloured2828]
  rw [child]
  dsimp only [result2826]
  have child := child1
  unfold live2827 coloured2827 at child
  try dsimp only [live2828, coloured2828]
  rw [child]
  dsimp only [result2827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2829_agree_conditional : tree2829 = literal2829 := by
  rw [tree2829_def]
  rfl
theorem node2829_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2829 live2829 coloured2829 = result2829 := by
  rw [tree2829_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2830_agree_conditional
    (child0 : tree2828 = literal2828)
    (child1 : tree2829 = literal2829) : tree2830 = literal2830 := by
  rw [tree2830_def, child0, child1]
  rfl
theorem node2830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2828 live2828 coloured2828 = result2828)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2829 live2829 coloured2829 = result2829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2830 live2830 coloured2830 = result2830 := by
  rw [tree2830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2828 coloured2828 at child
  try dsimp only [live2830, coloured2830]
  rw [child]
  dsimp only [result2828]
  have child := child1
  unfold live2829 coloured2829 at child
  try dsimp only [live2830, coloured2830]
  rw [child]
  dsimp only [result2829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2831_agree_conditional : tree2831 = literal2831 := by
  rw [tree2831_def]
  rfl
theorem node2831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2831 live2831 coloured2831 = result2831 := by
  rw [tree2831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2832_agree_conditional
    (child0 : tree2830 = literal2830)
    (child1 : tree2831 = literal2831) : tree2832 = literal2832 := by
  rw [tree2832_def, child0, child1]
  rfl
theorem node2832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2830 live2830 coloured2830 = result2830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2831 live2831 coloured2831 = result2831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2832 live2832 coloured2832 = result2832 := by
  rw [tree2832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2830 coloured2830 at child
  try dsimp only [live2832, coloured2832]
  rw [child]
  dsimp only [result2830]
  have child := child1
  unfold live2831 coloured2831 at child
  try dsimp only [live2832, coloured2832]
  rw [child]
  dsimp only [result2831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2833_agree_conditional : tree2833 = literal2833 := by
  rw [tree2833_def]
  rfl
theorem node2833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2833 live2833 coloured2833 = result2833 := by
  rw [tree2833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2834_agree_conditional
    (child0 : tree2832 = literal2832)
    (child1 : tree2833 = literal2833) : tree2834 = literal2834 := by
  rw [tree2834_def, child0, child1]
  rfl
theorem node2834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2832 live2832 coloured2832 = result2832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2833 live2833 coloured2833 = result2833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2834 live2834 coloured2834 = result2834 := by
  rw [tree2834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2832 coloured2832 at child
  try dsimp only [live2834, coloured2834]
  rw [child]
  dsimp only [result2832]
  have child := child1
  unfold live2833 coloured2833 at child
  try dsimp only [live2834, coloured2834]
  rw [child]
  dsimp only [result2833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2835_agree_conditional : tree2835 = literal2835 := by
  rw [tree2835_def]
  rfl
theorem node2835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2835 live2835 coloured2835 = result2835 := by
  rw [tree2835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2836_agree_conditional
    (child0 : tree2834 = literal2834)
    (child1 : tree2835 = literal2835) : tree2836 = literal2836 := by
  rw [tree2836_def, child0, child1]
  rfl
theorem node2836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2834 live2834 coloured2834 = result2834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2835 live2835 coloured2835 = result2835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2836 live2836 coloured2836 = result2836 := by
  rw [tree2836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2834 coloured2834 at child
  try dsimp only [live2836, coloured2836]
  rw [child]
  dsimp only [result2834]
  have child := child1
  unfold live2835 coloured2835 at child
  try dsimp only [live2836, coloured2836]
  rw [child]
  dsimp only [result2835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2837_agree_conditional : tree2837 = literal2837 := by
  rw [tree2837_def]
  rfl
theorem node2837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2837 live2837 coloured2837 = result2837 := by
  rw [tree2837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2838_agree_conditional
    (child0 : tree2836 = literal2836)
    (child1 : tree2837 = literal2837) : tree2838 = literal2838 := by
  rw [tree2838_def, child0, child1]
  rfl
theorem node2838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2836 live2836 coloured2836 = result2836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2837 live2837 coloured2837 = result2837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2838 live2838 coloured2838 = result2838 := by
  rw [tree2838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2836 coloured2836 at child
  try dsimp only [live2838, coloured2838]
  rw [child]
  dsimp only [result2836]
  have child := child1
  unfold live2837 coloured2837 at child
  try dsimp only [live2838, coloured2838]
  rw [child]
  dsimp only [result2837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2839_agree_conditional : tree2839 = literal2839 := by
  rw [tree2839_def]
  rfl
theorem node2839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2839 live2839 coloured2839 = result2839 := by
  rw [tree2839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2840_agree_conditional
    (child0 : tree2838 = literal2838)
    (child1 : tree2839 = literal2839) : tree2840 = literal2840 := by
  rw [tree2840_def, child0, child1]
  rfl
theorem node2840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2838 live2838 coloured2838 = result2838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2839 live2839 coloured2839 = result2839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2840 live2840 coloured2840 = result2840 := by
  rw [tree2840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2838 coloured2838 at child
  try dsimp only [live2840, coloured2840]
  rw [child]
  dsimp only [result2838]
  have child := child1
  unfold live2839 coloured2839 at child
  try dsimp only [live2840, coloured2840]
  rw [child]
  dsimp only [result2839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2841_agree_conditional : tree2841 = literal2841 := by
  rw [tree2841_def]
  rfl
theorem node2841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2841 live2841 coloured2841 = result2841 := by
  rw [tree2841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2842_agree_conditional
    (child0 : tree2840 = literal2840)
    (child1 : tree2841 = literal2841) : tree2842 = literal2842 := by
  rw [tree2842_def, child0, child1]
  rfl
theorem node2842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2840 live2840 coloured2840 = result2840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2841 live2841 coloured2841 = result2841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2842 live2842 coloured2842 = result2842 := by
  rw [tree2842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2840 coloured2840 at child
  try dsimp only [live2842, coloured2842]
  rw [child]
  dsimp only [result2840]
  have child := child1
  unfold live2841 coloured2841 at child
  try dsimp only [live2842, coloured2842]
  rw [child]
  dsimp only [result2841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2843_agree_conditional : tree2843 = literal2843 := by
  rw [tree2843_def]
  rfl
theorem node2843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2843 live2843 coloured2843 = result2843 := by
  rw [tree2843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2844_agree_conditional
    (child0 : tree2842 = literal2842)
    (child1 : tree2843 = literal2843) : tree2844 = literal2844 := by
  rw [tree2844_def, child0, child1]
  rfl
theorem node2844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2842 live2842 coloured2842 = result2842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2843 live2843 coloured2843 = result2843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2844 live2844 coloured2844 = result2844 := by
  rw [tree2844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2842 coloured2842 at child
  try dsimp only [live2844, coloured2844]
  rw [child]
  dsimp only [result2842]
  have child := child1
  unfold live2843 coloured2843 at child
  try dsimp only [live2844, coloured2844]
  rw [child]
  dsimp only [result2843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2845_agree_conditional : tree2845 = literal2845 := by
  rw [tree2845_def]
  rfl
theorem node2845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2845 live2845 coloured2845 = result2845 := by
  rw [tree2845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2846_agree_conditional
    (child0 : tree2844 = literal2844)
    (child1 : tree2845 = literal2845) : tree2846 = literal2846 := by
  rw [tree2846_def, child0, child1]
  rfl
theorem node2846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2844 live2844 coloured2844 = result2844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2845 live2845 coloured2845 = result2845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2846 live2846 coloured2846 = result2846 := by
  rw [tree2846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2844 coloured2844 at child
  try dsimp only [live2846, coloured2846]
  rw [child]
  dsimp only [result2844]
  have child := child1
  unfold live2845 coloured2845 at child
  try dsimp only [live2846, coloured2846]
  rw [child]
  dsimp only [result2845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2847_agree_conditional : tree2847 = literal2847 := by
  rw [tree2847_def]
  rfl
theorem node2847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2847 live2847 coloured2847 = result2847 := by
  rw [tree2847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2848_agree_conditional
    (child0 : tree2846 = literal2846)
    (child1 : tree2847 = literal2847) : tree2848 = literal2848 := by
  rw [tree2848_def, child0, child1]
  rfl
theorem node2848_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2846 live2846 coloured2846 = result2846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2847 live2847 coloured2847 = result2847) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2848 live2848 coloured2848 = result2848 := by
  rw [tree2848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2846 coloured2846 at child
  try dsimp only [live2848, coloured2848]
  rw [child]
  dsimp only [result2846]
  have child := child1
  unfold live2847 coloured2847 at child
  try dsimp only [live2848, coloured2848]
  rw [child]
  dsimp only [result2847]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2849_agree_conditional : tree2849 = literal2849 := by
  rw [tree2849_def]
  rfl
theorem node2849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2849 live2849 coloured2849 = result2849 := by
  rw [tree2849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2850_agree_conditional
    (child0 : tree2848 = literal2848)
    (child1 : tree2849 = literal2849) : tree2850 = literal2850 := by
  rw [tree2850_def, child0, child1]
  rfl
theorem node2850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2848 live2848 coloured2848 = result2848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2849 live2849 coloured2849 = result2849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2850 live2850 coloured2850 = result2850 := by
  rw [tree2850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2848 coloured2848 at child
  try dsimp only [live2850, coloured2850]
  rw [child]
  dsimp only [result2848]
  have child := child1
  unfold live2849 coloured2849 at child
  try dsimp only [live2850, coloured2850]
  rw [child]
  dsimp only [result2849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2851_agree_conditional : tree2851 = literal2851 := by
  rw [tree2851_def]
  rfl
theorem node2851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2851 live2851 coloured2851 = result2851 := by
  rw [tree2851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2852_agree_conditional
    (child0 : tree2850 = literal2850)
    (child1 : tree2851 = literal2851) : tree2852 = literal2852 := by
  rw [tree2852_def, child0, child1]
  rfl
theorem node2852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2850 live2850 coloured2850 = result2850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2851 live2851 coloured2851 = result2851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2852 live2852 coloured2852 = result2852 := by
  rw [tree2852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2850 coloured2850 at child
  try dsimp only [live2852, coloured2852]
  rw [child]
  dsimp only [result2850]
  have child := child1
  unfold live2851 coloured2851 at child
  try dsimp only [live2852, coloured2852]
  rw [child]
  dsimp only [result2851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2853_agree_conditional : tree2853 = literal2853 := by
  rw [tree2853_def]
  rfl
theorem node2853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2853 live2853 coloured2853 = result2853 := by
  rw [tree2853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2854_agree_conditional
    (child0 : tree2852 = literal2852)
    (child1 : tree2853 = literal2853) : tree2854 = literal2854 := by
  rw [tree2854_def, child0, child1]
  rfl
theorem node2854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2852 live2852 coloured2852 = result2852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2853 live2853 coloured2853 = result2853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2854 live2854 coloured2854 = result2854 := by
  rw [tree2854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2852 coloured2852 at child
  try dsimp only [live2854, coloured2854]
  rw [child]
  dsimp only [result2852]
  have child := child1
  unfold live2853 coloured2853 at child
  try dsimp only [live2854, coloured2854]
  rw [child]
  dsimp only [result2853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2855_agree_conditional : tree2855 = literal2855 := by
  rw [tree2855_def]
  rfl
theorem node2855_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2855 live2855 coloured2855 = result2855 := by
  rw [tree2855_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2856_agree_conditional
    (child0 : tree2854 = literal2854)
    (child1 : tree2855 = literal2855) : tree2856 = literal2856 := by
  rw [tree2856_def, child0, child1]
  rfl
theorem node2856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2854 live2854 coloured2854 = result2854)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2855 live2855 coloured2855 = result2855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2856 live2856 coloured2856 = result2856 := by
  rw [tree2856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2854 coloured2854 at child
  try dsimp only [live2856, coloured2856]
  rw [child]
  dsimp only [result2854]
  have child := child1
  unfold live2855 coloured2855 at child
  try dsimp only [live2856, coloured2856]
  rw [child]
  dsimp only [result2855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2857_agree_conditional : tree2857 = literal2857 := by
  rw [tree2857_def]
  rfl
theorem node2857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2857 live2857 coloured2857 = result2857 := by
  rw [tree2857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2858_agree_conditional
    (child0 : tree2856 = literal2856)
    (child1 : tree2857 = literal2857) : tree2858 = literal2858 := by
  rw [tree2858_def, child0, child1]
  rfl
theorem node2858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2856 live2856 coloured2856 = result2856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2857 live2857 coloured2857 = result2857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2858 live2858 coloured2858 = result2858 := by
  rw [tree2858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2856 coloured2856 at child
  try dsimp only [live2858, coloured2858]
  rw [child]
  dsimp only [result2856]
  have child := child1
  unfold live2857 coloured2857 at child
  try dsimp only [live2858, coloured2858]
  rw [child]
  dsimp only [result2857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2859_agree_conditional : tree2859 = literal2859 := by
  rw [tree2859_def]
  rfl
theorem node2859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2859 live2859 coloured2859 = result2859 := by
  rw [tree2859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2860_agree_conditional
    (child0 : tree2858 = literal2858)
    (child1 : tree2859 = literal2859) : tree2860 = literal2860 := by
  rw [tree2860_def, child0, child1]
  rfl
theorem node2860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2858 live2858 coloured2858 = result2858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2859 live2859 coloured2859 = result2859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2860 live2860 coloured2860 = result2860 := by
  rw [tree2860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2858 coloured2858 at child
  try dsimp only [live2860, coloured2860]
  rw [child]
  dsimp only [result2858]
  have child := child1
  unfold live2859 coloured2859 at child
  try dsimp only [live2860, coloured2860]
  rw [child]
  dsimp only [result2859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2861_agree_conditional : tree2861 = literal2861 := by
  rw [tree2861_def]
  rfl
theorem node2861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2861 live2861 coloured2861 = result2861 := by
  rw [tree2861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2862_agree_conditional
    (child0 : tree2860 = literal2860)
    (child1 : tree2861 = literal2861) : tree2862 = literal2862 := by
  rw [tree2862_def, child0, child1]
  rfl
theorem node2862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2860 live2860 coloured2860 = result2860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2861 live2861 coloured2861 = result2861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2862 live2862 coloured2862 = result2862 := by
  rw [tree2862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2860 coloured2860 at child
  try dsimp only [live2862, coloured2862]
  rw [child]
  dsimp only [result2860]
  have child := child1
  unfold live2861 coloured2861 at child
  try dsimp only [live2862, coloured2862]
  rw [child]
  dsimp only [result2861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2863_agree_conditional : tree2863 = literal2863 := by
  rw [tree2863_def]
  rfl
theorem node2863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2863 live2863 coloured2863 = result2863 := by
  rw [tree2863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2864_agree_conditional
    (child0 : tree2862 = literal2862)
    (child1 : tree2863 = literal2863) : tree2864 = literal2864 := by
  rw [tree2864_def, child0, child1]
  rfl
theorem node2864_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2862 live2862 coloured2862 = result2862)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2863 live2863 coloured2863 = result2863) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2864 live2864 coloured2864 = result2864 := by
  rw [tree2864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2862 coloured2862 at child
  try dsimp only [live2864, coloured2864]
  rw [child]
  dsimp only [result2862]
  have child := child1
  unfold live2863 coloured2863 at child
  try dsimp only [live2864, coloured2864]
  rw [child]
  dsimp only [result2863]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2865_agree_conditional : tree2865 = literal2865 := by
  rw [tree2865_def]
  rfl
theorem node2865_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2865 live2865 coloured2865 = result2865 := by
  rw [tree2865_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2866_agree_conditional
    (child0 : tree2864 = literal2864)
    (child1 : tree2865 = literal2865) : tree2866 = literal2866 := by
  rw [tree2866_def, child0, child1]
  rfl
theorem node2866_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2864 live2864 coloured2864 = result2864)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2865 live2865 coloured2865 = result2865) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2866 live2866 coloured2866 = result2866 := by
  rw [tree2866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2864 coloured2864 at child
  try dsimp only [live2866, coloured2866]
  rw [child]
  dsimp only [result2864]
  have child := child1
  unfold live2865 coloured2865 at child
  try dsimp only [live2866, coloured2866]
  rw [child]
  dsimp only [result2865]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2867_agree_conditional : tree2867 = literal2867 := by
  rw [tree2867_def]
  rfl
theorem node2867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2867 live2867 coloured2867 = result2867 := by
  rw [tree2867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2868_agree_conditional
    (child0 : tree2866 = literal2866)
    (child1 : tree2867 = literal2867) : tree2868 = literal2868 := by
  rw [tree2868_def, child0, child1]
  rfl
theorem node2868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2866 live2866 coloured2866 = result2866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2867 live2867 coloured2867 = result2867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2868 live2868 coloured2868 = result2868 := by
  rw [tree2868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2866 coloured2866 at child
  try dsimp only [live2868, coloured2868]
  rw [child]
  dsimp only [result2866]
  have child := child1
  unfold live2867 coloured2867 at child
  try dsimp only [live2868, coloured2868]
  rw [child]
  dsimp only [result2867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2869_agree_conditional : tree2869 = literal2869 := by
  rw [tree2869_def]
  rfl
theorem node2869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2869 live2869 coloured2869 = result2869 := by
  rw [tree2869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2870_agree_conditional
    (child0 : tree2868 = literal2868)
    (child1 : tree2869 = literal2869) : tree2870 = literal2870 := by
  rw [tree2870_def, child0, child1]
  rfl
theorem node2870_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2868 live2868 coloured2868 = result2868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2869 live2869 coloured2869 = result2869) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2870 live2870 coloured2870 = result2870 := by
  rw [tree2870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2868 coloured2868 at child
  try dsimp only [live2870, coloured2870]
  rw [child]
  dsimp only [result2868]
  have child := child1
  unfold live2869 coloured2869 at child
  try dsimp only [live2870, coloured2870]
  rw [child]
  dsimp only [result2869]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2871_agree_conditional : tree2871 = literal2871 := by
  rw [tree2871_def]
  rfl
theorem node2871_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2871 live2871 coloured2871 = result2871 := by
  rw [tree2871_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2872_agree_conditional
    (child0 : tree2870 = literal2870)
    (child1 : tree2871 = literal2871) : tree2872 = literal2872 := by
  rw [tree2872_def, child0, child1]
  rfl
theorem node2872_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2870 live2870 coloured2870 = result2870)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2871 live2871 coloured2871 = result2871) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2872 live2872 coloured2872 = result2872 := by
  rw [tree2872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2870 coloured2870 at child
  try dsimp only [live2872, coloured2872]
  rw [child]
  dsimp only [result2870]
  have child := child1
  unfold live2871 coloured2871 at child
  try dsimp only [live2872, coloured2872]
  rw [child]
  dsimp only [result2871]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2873_agree_conditional : tree2873 = literal2873 := by
  rw [tree2873_def]
  rfl
theorem node2873_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2873 live2873 coloured2873 = result2873 := by
  rw [tree2873_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2874_agree_conditional
    (child0 : tree2872 = literal2872)
    (child1 : tree2873 = literal2873) : tree2874 = literal2874 := by
  rw [tree2874_def, child0, child1]
  rfl
theorem node2874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2872 live2872 coloured2872 = result2872)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2873 live2873 coloured2873 = result2873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2874 live2874 coloured2874 = result2874 := by
  rw [tree2874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2872 coloured2872 at child
  try dsimp only [live2874, coloured2874]
  rw [child]
  dsimp only [result2872]
  have child := child1
  unfold live2873 coloured2873 at child
  try dsimp only [live2874, coloured2874]
  rw [child]
  dsimp only [result2873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2875_agree_conditional : tree2875 = literal2875 := by
  rw [tree2875_def]
  rfl
theorem node2875_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2875 live2875 coloured2875 = result2875 := by
  rw [tree2875_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2876_agree_conditional
    (child0 : tree2874 = literal2874)
    (child1 : tree2875 = literal2875) : tree2876 = literal2876 := by
  rw [tree2876_def, child0, child1]
  rfl
theorem node2876_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2874 live2874 coloured2874 = result2874)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2875 live2875 coloured2875 = result2875) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2876 live2876 coloured2876 = result2876 := by
  rw [tree2876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2874 coloured2874 at child
  try dsimp only [live2876, coloured2876]
  rw [child]
  dsimp only [result2874]
  have child := child1
  unfold live2875 coloured2875 at child
  try dsimp only [live2876, coloured2876]
  rw [child]
  dsimp only [result2875]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2877_agree_conditional : tree2877 = literal2877 := by
  rw [tree2877_def]
  rfl
theorem node2877_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2877 live2877 coloured2877 = result2877 := by
  rw [tree2877_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2878_agree_conditional
    (child0 : tree2876 = literal2876)
    (child1 : tree2877 = literal2877) : tree2878 = literal2878 := by
  rw [tree2878_def, child0, child1]
  rfl
theorem node2878_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2876 live2876 coloured2876 = result2876)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2877 live2877 coloured2877 = result2877) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2878 live2878 coloured2878 = result2878 := by
  rw [tree2878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2876 coloured2876 at child
  try dsimp only [live2878, coloured2878]
  rw [child]
  dsimp only [result2876]
  have child := child1
  unfold live2877 coloured2877 at child
  try dsimp only [live2878, coloured2878]
  rw [child]
  dsimp only [result2877]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2879_agree_conditional : tree2879 = literal2879 := by
  rw [tree2879_def]
  rfl
theorem node2879_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2879 live2879 coloured2879 = result2879 := by
  rw [tree2879_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
