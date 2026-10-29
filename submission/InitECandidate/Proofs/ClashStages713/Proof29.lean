import InitECandidate.Proofs.ClashStages713.Proof28
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2784_agree : tree2784 = literal2784 := by
  rw [tree2784_def, tree2782_agree, tree2783_agree]
  rfl
theorem node2784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2784 live2784 coloured2784 = result2784 := by
  rw [tree2784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2782_eq
  unfold live2782 coloured2782 at child
  try dsimp only [live2784, coloured2784]
  rw [child]
  dsimp only [result2782]
  have child := node2783_eq
  unfold live2783 coloured2783 at child
  try dsimp only [live2784, coloured2784]
  rw [child]
  dsimp only [result2783]
  try dsimp only [colour, result2784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2785_agree : tree2785 = literal2785 := by
  rw [tree2785_def]
  rfl
theorem node2785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2785 live2785 coloured2785 = result2785 := by
  rw [tree2785_def]
  try dsimp only [colour, result2785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2786_agree : tree2786 = literal2786 := by
  rw [tree2786_def, tree2784_agree, tree2785_agree]
  rfl
theorem node2786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2786 live2786 coloured2786 = result2786 := by
  rw [tree2786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2784_eq
  unfold live2784 coloured2784 at child
  try dsimp only [live2786, coloured2786]
  rw [child]
  dsimp only [result2784]
  have child := node2785_eq
  unfold live2785 coloured2785 at child
  try dsimp only [live2786, coloured2786]
  rw [child]
  dsimp only [result2785]
  try dsimp only [colour, result2786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2787_agree : tree2787 = literal2787 := by
  rw [tree2787_def]
  rfl
theorem node2787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2787 live2787 coloured2787 = result2787 := by
  rw [tree2787_def]
  try dsimp only [colour, result2787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2788_agree : tree2788 = literal2788 := by
  rw [tree2788_def, tree2786_agree, tree2787_agree]
  rfl
theorem node2788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2788 live2788 coloured2788 = result2788 := by
  rw [tree2788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2786_eq
  unfold live2786 coloured2786 at child
  try dsimp only [live2788, coloured2788]
  rw [child]
  dsimp only [result2786]
  have child := node2787_eq
  unfold live2787 coloured2787 at child
  try dsimp only [live2788, coloured2788]
  rw [child]
  dsimp only [result2787]
  try dsimp only [colour, result2788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2789_agree : tree2789 = literal2789 := by
  rw [tree2789_def]
  rfl
theorem node2789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2789 live2789 coloured2789 = result2789 := by
  rw [tree2789_def]
  try dsimp only [colour, result2789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2790_agree : tree2790 = literal2790 := by
  rw [tree2790_def, tree2788_agree, tree2789_agree]
  rfl
theorem node2790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2790 live2790 coloured2790 = result2790 := by
  rw [tree2790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2788_eq
  unfold live2788 coloured2788 at child
  try dsimp only [live2790, coloured2790]
  rw [child]
  dsimp only [result2788]
  have child := node2789_eq
  unfold live2789 coloured2789 at child
  try dsimp only [live2790, coloured2790]
  rw [child]
  dsimp only [result2789]
  try dsimp only [colour, result2790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2791_agree : tree2791 = literal2791 := by
  rw [tree2791_def]
  rfl
theorem node2791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2791 live2791 coloured2791 = result2791 := by
  rw [tree2791_def]
  try dsimp only [colour, result2791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2792_agree : tree2792 = literal2792 := by
  rw [tree2792_def, tree2790_agree, tree2791_agree]
  rfl
theorem node2792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2792 live2792 coloured2792 = result2792 := by
  rw [tree2792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2790_eq
  unfold live2790 coloured2790 at child
  try dsimp only [live2792, coloured2792]
  rw [child]
  dsimp only [result2790]
  have child := node2791_eq
  unfold live2791 coloured2791 at child
  try dsimp only [live2792, coloured2792]
  rw [child]
  dsimp only [result2791]
  try dsimp only [colour, result2792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2793_agree : tree2793 = literal2793 := by
  rw [tree2793_def]
  rfl
theorem node2793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2793 live2793 coloured2793 = result2793 := by
  rw [tree2793_def]
  try dsimp only [colour, result2793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2794_agree : tree2794 = literal2794 := by
  rw [tree2794_def, tree2792_agree, tree2793_agree]
  rfl
theorem node2794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2794 live2794 coloured2794 = result2794 := by
  rw [tree2794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2792_eq
  unfold live2792 coloured2792 at child
  try dsimp only [live2794, coloured2794]
  rw [child]
  dsimp only [result2792]
  have child := node2793_eq
  unfold live2793 coloured2793 at child
  try dsimp only [live2794, coloured2794]
  rw [child]
  dsimp only [result2793]
  try dsimp only [colour, result2794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2795_agree : tree2795 = literal2795 := by
  rw [tree2795_def]
  rfl
theorem node2795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2795 live2795 coloured2795 = result2795 := by
  rw [tree2795_def]
  try dsimp only [colour, result2795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2796_agree : tree2796 = literal2796 := by
  rw [tree2796_def, tree2794_agree, tree2795_agree]
  rfl
theorem node2796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2796 live2796 coloured2796 = result2796 := by
  rw [tree2796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2794_eq
  unfold live2794 coloured2794 at child
  try dsimp only [live2796, coloured2796]
  rw [child]
  dsimp only [result2794]
  have child := node2795_eq
  unfold live2795 coloured2795 at child
  try dsimp only [live2796, coloured2796]
  rw [child]
  dsimp only [result2795]
  try dsimp only [colour, result2796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2797_agree : tree2797 = literal2797 := by
  rw [tree2797_def]
  rfl
theorem node2797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2797 live2797 coloured2797 = result2797 := by
  rw [tree2797_def]
  try dsimp only [colour, result2797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2798_agree : tree2798 = literal2798 := by
  rw [tree2798_def, tree2796_agree, tree2797_agree]
  rfl
theorem node2798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2798 live2798 coloured2798 = result2798 := by
  rw [tree2798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2796_eq
  unfold live2796 coloured2796 at child
  try dsimp only [live2798, coloured2798]
  rw [child]
  dsimp only [result2796]
  have child := node2797_eq
  unfold live2797 coloured2797 at child
  try dsimp only [live2798, coloured2798]
  rw [child]
  dsimp only [result2797]
  try dsimp only [colour, result2798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2799_agree : tree2799 = literal2799 := by
  rw [tree2799_def]
  rfl
theorem node2799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2799 live2799 coloured2799 = result2799 := by
  rw [tree2799_def]
  try dsimp only [colour, result2799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2800_agree : tree2800 = literal2800 := by
  rw [tree2800_def, tree2798_agree, tree2799_agree]
  rfl
theorem node2800_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2800 live2800 coloured2800 = result2800 := by
  rw [tree2800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2798_eq
  unfold live2798 coloured2798 at child
  try dsimp only [live2800, coloured2800]
  rw [child]
  dsimp only [result2798]
  have child := node2799_eq
  unfold live2799 coloured2799 at child
  try dsimp only [live2800, coloured2800]
  rw [child]
  dsimp only [result2799]
  try dsimp only [colour, result2800]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2801_agree : tree2801 = literal2801 := by
  rw [tree2801_def]
  rfl
theorem node2801_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2801 live2801 coloured2801 = result2801 := by
  rw [tree2801_def]
  try dsimp only [colour, result2801]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2802_agree : tree2802 = literal2802 := by
  rw [tree2802_def, tree2800_agree, tree2801_agree]
  rfl
theorem node2802_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2802 live2802 coloured2802 = result2802 := by
  rw [tree2802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2800_eq
  unfold live2800 coloured2800 at child
  try dsimp only [live2802, coloured2802]
  rw [child]
  dsimp only [result2800]
  have child := node2801_eq
  unfold live2801 coloured2801 at child
  try dsimp only [live2802, coloured2802]
  rw [child]
  dsimp only [result2801]
  try dsimp only [colour, result2802]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2803_agree : tree2803 = literal2803 := by
  rw [tree2803_def]
  rfl
theorem node2803_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2803 live2803 coloured2803 = result2803 := by
  rw [tree2803_def]
  try dsimp only [colour, result2803]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2804_agree : tree2804 = literal2804 := by
  rw [tree2804_def, tree2802_agree, tree2803_agree]
  rfl
theorem node2804_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2804 live2804 coloured2804 = result2804 := by
  rw [tree2804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2802_eq
  unfold live2802 coloured2802 at child
  try dsimp only [live2804, coloured2804]
  rw [child]
  dsimp only [result2802]
  have child := node2803_eq
  unfold live2803 coloured2803 at child
  try dsimp only [live2804, coloured2804]
  rw [child]
  dsimp only [result2803]
  try dsimp only [colour, result2804]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2805_agree : tree2805 = literal2805 := by
  rw [tree2805_def]
  rfl
theorem node2805_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2805 live2805 coloured2805 = result2805 := by
  rw [tree2805_def]
  try dsimp only [colour, result2805]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2806_agree : tree2806 = literal2806 := by
  rw [tree2806_def, tree2804_agree, tree2805_agree]
  rfl
theorem node2806_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2806 live2806 coloured2806 = result2806 := by
  rw [tree2806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2804_eq
  unfold live2804 coloured2804 at child
  try dsimp only [live2806, coloured2806]
  rw [child]
  dsimp only [result2804]
  have child := node2805_eq
  unfold live2805 coloured2805 at child
  try dsimp only [live2806, coloured2806]
  rw [child]
  dsimp only [result2805]
  try dsimp only [colour, result2806]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2807_agree : tree2807 = literal2807 := by
  rw [tree2807_def]
  rfl
theorem node2807_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2807 live2807 coloured2807 = result2807 := by
  rw [tree2807_def]
  try dsimp only [colour, result2807]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2808_agree : tree2808 = literal2808 := by
  rw [tree2808_def, tree2806_agree, tree2807_agree]
  rfl
theorem node2808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2808 live2808 coloured2808 = result2808 := by
  rw [tree2808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2806_eq
  unfold live2806 coloured2806 at child
  try dsimp only [live2808, coloured2808]
  rw [child]
  dsimp only [result2806]
  have child := node2807_eq
  unfold live2807 coloured2807 at child
  try dsimp only [live2808, coloured2808]
  rw [child]
  dsimp only [result2807]
  try dsimp only [colour, result2808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2809_agree : tree2809 = literal2809 := by
  rw [tree2809_def]
  rfl
theorem node2809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2809 live2809 coloured2809 = result2809 := by
  rw [tree2809_def]
  try dsimp only [colour, result2809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2810_agree : tree2810 = literal2810 := by
  rw [tree2810_def, tree2808_agree, tree2809_agree]
  rfl
theorem node2810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2810 live2810 coloured2810 = result2810 := by
  rw [tree2810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2808_eq
  unfold live2808 coloured2808 at child
  try dsimp only [live2810, coloured2810]
  rw [child]
  dsimp only [result2808]
  have child := node2809_eq
  unfold live2809 coloured2809 at child
  try dsimp only [live2810, coloured2810]
  rw [child]
  dsimp only [result2809]
  try dsimp only [colour, result2810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2811_agree : tree2811 = literal2811 := by
  rw [tree2811_def]
  rfl
theorem node2811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2811 live2811 coloured2811 = result2811 := by
  rw [tree2811_def]
  try dsimp only [colour, result2811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2812_agree : tree2812 = literal2812 := by
  rw [tree2812_def, tree2810_agree, tree2811_agree]
  rfl
theorem node2812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2812 live2812 coloured2812 = result2812 := by
  rw [tree2812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2810_eq
  unfold live2810 coloured2810 at child
  try dsimp only [live2812, coloured2812]
  rw [child]
  dsimp only [result2810]
  have child := node2811_eq
  unfold live2811 coloured2811 at child
  try dsimp only [live2812, coloured2812]
  rw [child]
  dsimp only [result2811]
  try dsimp only [colour, result2812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2813_agree : tree2813 = literal2813 := by
  rw [tree2813_def]
  rfl
theorem node2813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2813 live2813 coloured2813 = result2813 := by
  rw [tree2813_def]
  try dsimp only [colour, result2813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2814_agree : tree2814 = literal2814 := by
  rw [tree2814_def, tree2812_agree, tree2813_agree]
  rfl
theorem node2814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2814 live2814 coloured2814 = result2814 := by
  rw [tree2814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2812_eq
  unfold live2812 coloured2812 at child
  try dsimp only [live2814, coloured2814]
  rw [child]
  dsimp only [result2812]
  have child := node2813_eq
  unfold live2813 coloured2813 at child
  try dsimp only [live2814, coloured2814]
  rw [child]
  dsimp only [result2813]
  try dsimp only [colour, result2814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2815_agree : tree2815 = literal2815 := by
  rw [tree2815_def]
  rfl
theorem node2815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2815 live2815 coloured2815 = result2815 := by
  rw [tree2815_def]
  try dsimp only [colour, result2815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2816_agree : tree2816 = literal2816 := by
  rw [tree2816_def, tree2814_agree, tree2815_agree]
  rfl
theorem node2816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2816 live2816 coloured2816 = result2816 := by
  rw [tree2816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2814_eq
  unfold live2814 coloured2814 at child
  try dsimp only [live2816, coloured2816]
  rw [child]
  dsimp only [result2814]
  have child := node2815_eq
  unfold live2815 coloured2815 at child
  try dsimp only [live2816, coloured2816]
  rw [child]
  dsimp only [result2815]
  try dsimp only [colour, result2816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2817_agree : tree2817 = literal2817 := by
  rw [tree2817_def]
  rfl
theorem node2817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2817 live2817 coloured2817 = result2817 := by
  rw [tree2817_def]
  try dsimp only [colour, result2817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2818_agree : tree2818 = literal2818 := by
  rw [tree2818_def, tree2816_agree, tree2817_agree]
  rfl
theorem node2818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2818 live2818 coloured2818 = result2818 := by
  rw [tree2818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2816_eq
  unfold live2816 coloured2816 at child
  try dsimp only [live2818, coloured2818]
  rw [child]
  dsimp only [result2816]
  have child := node2817_eq
  unfold live2817 coloured2817 at child
  try dsimp only [live2818, coloured2818]
  rw [child]
  dsimp only [result2817]
  try dsimp only [colour, result2818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2819_agree : tree2819 = literal2819 := by
  rw [tree2819_def]
  rfl
theorem node2819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2819 live2819 coloured2819 = result2819 := by
  rw [tree2819_def]
  try dsimp only [colour, result2819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2820_agree : tree2820 = literal2820 := by
  rw [tree2820_def, tree2818_agree, tree2819_agree]
  rfl
theorem node2820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2820 live2820 coloured2820 = result2820 := by
  rw [tree2820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2818_eq
  unfold live2818 coloured2818 at child
  try dsimp only [live2820, coloured2820]
  rw [child]
  dsimp only [result2818]
  have child := node2819_eq
  unfold live2819 coloured2819 at child
  try dsimp only [live2820, coloured2820]
  rw [child]
  dsimp only [result2819]
  try dsimp only [colour, result2820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2821_agree : tree2821 = literal2821 := by
  rw [tree2821_def]
  rfl
theorem node2821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2821 live2821 coloured2821 = result2821 := by
  rw [tree2821_def]
  try dsimp only [colour, result2821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2822_agree : tree2822 = literal2822 := by
  rw [tree2822_def, tree2820_agree, tree2821_agree]
  rfl
theorem node2822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2822 live2822 coloured2822 = result2822 := by
  rw [tree2822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2820_eq
  unfold live2820 coloured2820 at child
  try dsimp only [live2822, coloured2822]
  rw [child]
  dsimp only [result2820]
  have child := node2821_eq
  unfold live2821 coloured2821 at child
  try dsimp only [live2822, coloured2822]
  rw [child]
  dsimp only [result2821]
  try dsimp only [colour, result2822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2823_agree : tree2823 = literal2823 := by
  rw [tree2823_def]
  rfl
theorem node2823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2823 live2823 coloured2823 = result2823 := by
  rw [tree2823_def]
  try dsimp only [colour, result2823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2824_agree : tree2824 = literal2824 := by
  rw [tree2824_def, tree2822_agree, tree2823_agree]
  rfl
theorem node2824_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2824 live2824 coloured2824 = result2824 := by
  rw [tree2824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2822_eq
  unfold live2822 coloured2822 at child
  try dsimp only [live2824, coloured2824]
  rw [child]
  dsimp only [result2822]
  have child := node2823_eq
  unfold live2823 coloured2823 at child
  try dsimp only [live2824, coloured2824]
  rw [child]
  dsimp only [result2823]
  try dsimp only [colour, result2824]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2825_agree : tree2825 = literal2825 := by
  rw [tree2825_def]
  rfl
theorem node2825_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2825 live2825 coloured2825 = result2825 := by
  rw [tree2825_def]
  try dsimp only [colour, result2825]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2826_agree : tree2826 = literal2826 := by
  rw [tree2826_def, tree2824_agree, tree2825_agree]
  rfl
theorem node2826_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2826 live2826 coloured2826 = result2826 := by
  rw [tree2826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2824_eq
  unfold live2824 coloured2824 at child
  try dsimp only [live2826, coloured2826]
  rw [child]
  dsimp only [result2824]
  have child := node2825_eq
  unfold live2825 coloured2825 at child
  try dsimp only [live2826, coloured2826]
  rw [child]
  dsimp only [result2825]
  try dsimp only [colour, result2826]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2827_agree : tree2827 = literal2827 := by
  rw [tree2827_def]
  rfl
theorem node2827_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2827 live2827 coloured2827 = result2827 := by
  rw [tree2827_def]
  try dsimp only [colour, result2827]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2828_agree : tree2828 = literal2828 := by
  rw [tree2828_def, tree2826_agree, tree2827_agree]
  rfl
theorem node2828_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2828 live2828 coloured2828 = result2828 := by
  rw [tree2828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2826_eq
  unfold live2826 coloured2826 at child
  try dsimp only [live2828, coloured2828]
  rw [child]
  dsimp only [result2826]
  have child := node2827_eq
  unfold live2827 coloured2827 at child
  try dsimp only [live2828, coloured2828]
  rw [child]
  dsimp only [result2827]
  try dsimp only [colour, result2828]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2829_agree : tree2829 = literal2829 := by
  rw [tree2829_def]
  rfl
theorem node2829_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2829 live2829 coloured2829 = result2829 := by
  rw [tree2829_def]
  try dsimp only [colour, result2829]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2830_agree : tree2830 = literal2830 := by
  rw [tree2830_def, tree2828_agree, tree2829_agree]
  rfl
theorem node2830_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2830 live2830 coloured2830 = result2830 := by
  rw [tree2830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2828_eq
  unfold live2828 coloured2828 at child
  try dsimp only [live2830, coloured2830]
  rw [child]
  dsimp only [result2828]
  have child := node2829_eq
  unfold live2829 coloured2829 at child
  try dsimp only [live2830, coloured2830]
  rw [child]
  dsimp only [result2829]
  try dsimp only [colour, result2830]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2831_agree : tree2831 = literal2831 := by
  rw [tree2831_def]
  rfl
theorem node2831_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2831 live2831 coloured2831 = result2831 := by
  rw [tree2831_def]
  try dsimp only [colour, result2831]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2832_agree : tree2832 = literal2832 := by
  rw [tree2832_def, tree2830_agree, tree2831_agree]
  rfl
theorem node2832_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2832 live2832 coloured2832 = result2832 := by
  rw [tree2832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2830_eq
  unfold live2830 coloured2830 at child
  try dsimp only [live2832, coloured2832]
  rw [child]
  dsimp only [result2830]
  have child := node2831_eq
  unfold live2831 coloured2831 at child
  try dsimp only [live2832, coloured2832]
  rw [child]
  dsimp only [result2831]
  try dsimp only [colour, result2832]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2833_agree : tree2833 = literal2833 := by
  rw [tree2833_def]
  rfl
theorem node2833_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2833 live2833 coloured2833 = result2833 := by
  rw [tree2833_def]
  try dsimp only [colour, result2833]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2834_agree : tree2834 = literal2834 := by
  rw [tree2834_def, tree2832_agree, tree2833_agree]
  rfl
theorem node2834_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2834 live2834 coloured2834 = result2834 := by
  rw [tree2834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2832_eq
  unfold live2832 coloured2832 at child
  try dsimp only [live2834, coloured2834]
  rw [child]
  dsimp only [result2832]
  have child := node2833_eq
  unfold live2833 coloured2833 at child
  try dsimp only [live2834, coloured2834]
  rw [child]
  dsimp only [result2833]
  try dsimp only [colour, result2834]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2835_agree : tree2835 = literal2835 := by
  rw [tree2835_def]
  rfl
theorem node2835_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2835 live2835 coloured2835 = result2835 := by
  rw [tree2835_def]
  try dsimp only [colour, result2835]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2836_agree : tree2836 = literal2836 := by
  rw [tree2836_def, tree2834_agree, tree2835_agree]
  rfl
theorem node2836_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2836 live2836 coloured2836 = result2836 := by
  rw [tree2836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2834_eq
  unfold live2834 coloured2834 at child
  try dsimp only [live2836, coloured2836]
  rw [child]
  dsimp only [result2834]
  have child := node2835_eq
  unfold live2835 coloured2835 at child
  try dsimp only [live2836, coloured2836]
  rw [child]
  dsimp only [result2835]
  try dsimp only [colour, result2836]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2837_agree : tree2837 = literal2837 := by
  rw [tree2837_def]
  rfl
theorem node2837_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2837 live2837 coloured2837 = result2837 := by
  rw [tree2837_def]
  try dsimp only [colour, result2837]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2838_agree : tree2838 = literal2838 := by
  rw [tree2838_def, tree2836_agree, tree2837_agree]
  rfl
theorem node2838_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2838 live2838 coloured2838 = result2838 := by
  rw [tree2838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2836_eq
  unfold live2836 coloured2836 at child
  try dsimp only [live2838, coloured2838]
  rw [child]
  dsimp only [result2836]
  have child := node2837_eq
  unfold live2837 coloured2837 at child
  try dsimp only [live2838, coloured2838]
  rw [child]
  dsimp only [result2837]
  try dsimp only [colour, result2838]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2839_agree : tree2839 = literal2839 := by
  rw [tree2839_def]
  rfl
theorem node2839_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2839 live2839 coloured2839 = result2839 := by
  rw [tree2839_def]
  try dsimp only [colour, result2839]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2840_agree : tree2840 = literal2840 := by
  rw [tree2840_def, tree2838_agree, tree2839_agree]
  rfl
theorem node2840_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2840 live2840 coloured2840 = result2840 := by
  rw [tree2840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2838_eq
  unfold live2838 coloured2838 at child
  try dsimp only [live2840, coloured2840]
  rw [child]
  dsimp only [result2838]
  have child := node2839_eq
  unfold live2839 coloured2839 at child
  try dsimp only [live2840, coloured2840]
  rw [child]
  dsimp only [result2839]
  try dsimp only [colour, result2840]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2841_agree : tree2841 = literal2841 := by
  rw [tree2841_def]
  rfl
theorem node2841_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2841 live2841 coloured2841 = result2841 := by
  rw [tree2841_def]
  try dsimp only [colour, result2841]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2842_agree : tree2842 = literal2842 := by
  rw [tree2842_def, tree2840_agree, tree2841_agree]
  rfl
theorem node2842_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2842 live2842 coloured2842 = result2842 := by
  rw [tree2842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2840_eq
  unfold live2840 coloured2840 at child
  try dsimp only [live2842, coloured2842]
  rw [child]
  dsimp only [result2840]
  have child := node2841_eq
  unfold live2841 coloured2841 at child
  try dsimp only [live2842, coloured2842]
  rw [child]
  dsimp only [result2841]
  try dsimp only [colour, result2842]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2843_agree : tree2843 = literal2843 := by
  rw [tree2843_def]
  rfl
theorem node2843_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2843 live2843 coloured2843 = result2843 := by
  rw [tree2843_def]
  try dsimp only [colour, result2843]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2844_agree : tree2844 = literal2844 := by
  rw [tree2844_def, tree2842_agree, tree2843_agree]
  rfl
theorem node2844_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2844 live2844 coloured2844 = result2844 := by
  rw [tree2844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2842_eq
  unfold live2842 coloured2842 at child
  try dsimp only [live2844, coloured2844]
  rw [child]
  dsimp only [result2842]
  have child := node2843_eq
  unfold live2843 coloured2843 at child
  try dsimp only [live2844, coloured2844]
  rw [child]
  dsimp only [result2843]
  try dsimp only [colour, result2844]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2845_agree : tree2845 = literal2845 := by
  rw [tree2845_def]
  rfl
theorem node2845_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2845 live2845 coloured2845 = result2845 := by
  rw [tree2845_def]
  try dsimp only [colour, result2845]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2846_agree : tree2846 = literal2846 := by
  rw [tree2846_def, tree2844_agree, tree2845_agree]
  rfl
theorem node2846_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2846 live2846 coloured2846 = result2846 := by
  rw [tree2846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2844_eq
  unfold live2844 coloured2844 at child
  try dsimp only [live2846, coloured2846]
  rw [child]
  dsimp only [result2844]
  have child := node2845_eq
  unfold live2845 coloured2845 at child
  try dsimp only [live2846, coloured2846]
  rw [child]
  dsimp only [result2845]
  try dsimp only [colour, result2846]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2847_agree : tree2847 = literal2847 := by
  rw [tree2847_def]
  rfl
theorem node2847_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2847 live2847 coloured2847 = result2847 := by
  rw [tree2847_def]
  try dsimp only [colour, result2847]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2848_agree : tree2848 = literal2848 := by
  rw [tree2848_def, tree2846_agree, tree2847_agree]
  rfl
theorem node2848_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2848 live2848 coloured2848 = result2848 := by
  rw [tree2848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2846_eq
  unfold live2846 coloured2846 at child
  try dsimp only [live2848, coloured2848]
  rw [child]
  dsimp only [result2846]
  have child := node2847_eq
  unfold live2847 coloured2847 at child
  try dsimp only [live2848, coloured2848]
  rw [child]
  dsimp only [result2847]
  try dsimp only [colour, result2848]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2849_agree : tree2849 = literal2849 := by
  rw [tree2849_def]
  rfl
theorem node2849_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2849 live2849 coloured2849 = result2849 := by
  rw [tree2849_def]
  try dsimp only [colour, result2849]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2850_agree : tree2850 = literal2850 := by
  rw [tree2850_def, tree2848_agree, tree2849_agree]
  rfl
theorem node2850_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2850 live2850 coloured2850 = result2850 := by
  rw [tree2850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2848_eq
  unfold live2848 coloured2848 at child
  try dsimp only [live2850, coloured2850]
  rw [child]
  dsimp only [result2848]
  have child := node2849_eq
  unfold live2849 coloured2849 at child
  try dsimp only [live2850, coloured2850]
  rw [child]
  dsimp only [result2849]
  try dsimp only [colour, result2850]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2851_agree : tree2851 = literal2851 := by
  rw [tree2851_def]
  rfl
theorem node2851_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2851 live2851 coloured2851 = result2851 := by
  rw [tree2851_def]
  try dsimp only [colour, result2851]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2852_agree : tree2852 = literal2852 := by
  rw [tree2852_def, tree2850_agree, tree2851_agree]
  rfl
theorem node2852_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2852 live2852 coloured2852 = result2852 := by
  rw [tree2852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2850_eq
  unfold live2850 coloured2850 at child
  try dsimp only [live2852, coloured2852]
  rw [child]
  dsimp only [result2850]
  have child := node2851_eq
  unfold live2851 coloured2851 at child
  try dsimp only [live2852, coloured2852]
  rw [child]
  dsimp only [result2851]
  try dsimp only [colour, result2852]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2853_agree : tree2853 = literal2853 := by
  rw [tree2853_def]
  rfl
theorem node2853_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2853 live2853 coloured2853 = result2853 := by
  rw [tree2853_def]
  try dsimp only [colour, result2853]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2854_agree : tree2854 = literal2854 := by
  rw [tree2854_def, tree2852_agree, tree2853_agree]
  rfl
theorem node2854_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2854 live2854 coloured2854 = result2854 := by
  rw [tree2854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2852_eq
  unfold live2852 coloured2852 at child
  try dsimp only [live2854, coloured2854]
  rw [child]
  dsimp only [result2852]
  have child := node2853_eq
  unfold live2853 coloured2853 at child
  try dsimp only [live2854, coloured2854]
  rw [child]
  dsimp only [result2853]
  try dsimp only [colour, result2854]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2855_agree : tree2855 = literal2855 := by
  rw [tree2855_def]
  rfl
theorem node2855_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2855 live2855 coloured2855 = result2855 := by
  rw [tree2855_def]
  try dsimp only [colour, result2855]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2856_agree : tree2856 = literal2856 := by
  rw [tree2856_def, tree2854_agree, tree2855_agree]
  rfl
theorem node2856_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2856 live2856 coloured2856 = result2856 := by
  rw [tree2856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2854_eq
  unfold live2854 coloured2854 at child
  try dsimp only [live2856, coloured2856]
  rw [child]
  dsimp only [result2854]
  have child := node2855_eq
  unfold live2855 coloured2855 at child
  try dsimp only [live2856, coloured2856]
  rw [child]
  dsimp only [result2855]
  try dsimp only [colour, result2856]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2857_agree : tree2857 = literal2857 := by
  rw [tree2857_def]
  rfl
theorem node2857_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2857 live2857 coloured2857 = result2857 := by
  rw [tree2857_def]
  try dsimp only [colour, result2857]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2858_agree : tree2858 = literal2858 := by
  rw [tree2858_def, tree2856_agree, tree2857_agree]
  rfl
theorem node2858_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2858 live2858 coloured2858 = result2858 := by
  rw [tree2858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2856_eq
  unfold live2856 coloured2856 at child
  try dsimp only [live2858, coloured2858]
  rw [child]
  dsimp only [result2856]
  have child := node2857_eq
  unfold live2857 coloured2857 at child
  try dsimp only [live2858, coloured2858]
  rw [child]
  dsimp only [result2857]
  try dsimp only [colour, result2858]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2859_agree : tree2859 = literal2859 := by
  rw [tree2859_def]
  rfl
theorem node2859_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2859 live2859 coloured2859 = result2859 := by
  rw [tree2859_def]
  try dsimp only [colour, result2859]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2860_agree : tree2860 = literal2860 := by
  rw [tree2860_def, tree2858_agree, tree2859_agree]
  rfl
theorem node2860_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2860 live2860 coloured2860 = result2860 := by
  rw [tree2860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2858_eq
  unfold live2858 coloured2858 at child
  try dsimp only [live2860, coloured2860]
  rw [child]
  dsimp only [result2858]
  have child := node2859_eq
  unfold live2859 coloured2859 at child
  try dsimp only [live2860, coloured2860]
  rw [child]
  dsimp only [result2859]
  try dsimp only [colour, result2860]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2861_agree : tree2861 = literal2861 := by
  rw [tree2861_def]
  rfl
theorem node2861_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2861 live2861 coloured2861 = result2861 := by
  rw [tree2861_def]
  try dsimp only [colour, result2861]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2862_agree : tree2862 = literal2862 := by
  rw [tree2862_def, tree2860_agree, tree2861_agree]
  rfl
theorem node2862_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2862 live2862 coloured2862 = result2862 := by
  rw [tree2862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2860_eq
  unfold live2860 coloured2860 at child
  try dsimp only [live2862, coloured2862]
  rw [child]
  dsimp only [result2860]
  have child := node2861_eq
  unfold live2861 coloured2861 at child
  try dsimp only [live2862, coloured2862]
  rw [child]
  dsimp only [result2861]
  try dsimp only [colour, result2862]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2863_agree : tree2863 = literal2863 := by
  rw [tree2863_def]
  rfl
theorem node2863_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2863 live2863 coloured2863 = result2863 := by
  rw [tree2863_def]
  try dsimp only [colour, result2863]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2864_agree : tree2864 = literal2864 := by
  rw [tree2864_def, tree2862_agree, tree2863_agree]
  rfl
theorem node2864_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2864 live2864 coloured2864 = result2864 := by
  rw [tree2864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2862_eq
  unfold live2862 coloured2862 at child
  try dsimp only [live2864, coloured2864]
  rw [child]
  dsimp only [result2862]
  have child := node2863_eq
  unfold live2863 coloured2863 at child
  try dsimp only [live2864, coloured2864]
  rw [child]
  dsimp only [result2863]
  try dsimp only [colour, result2864]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2865_agree : tree2865 = literal2865 := by
  rw [tree2865_def]
  rfl
theorem node2865_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2865 live2865 coloured2865 = result2865 := by
  rw [tree2865_def]
  try dsimp only [colour, result2865]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2866_agree : tree2866 = literal2866 := by
  rw [tree2866_def, tree2864_agree, tree2865_agree]
  rfl
theorem node2866_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2866 live2866 coloured2866 = result2866 := by
  rw [tree2866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2864_eq
  unfold live2864 coloured2864 at child
  try dsimp only [live2866, coloured2866]
  rw [child]
  dsimp only [result2864]
  have child := node2865_eq
  unfold live2865 coloured2865 at child
  try dsimp only [live2866, coloured2866]
  rw [child]
  dsimp only [result2865]
  try dsimp only [colour, result2866]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2867_agree : tree2867 = literal2867 := by
  rw [tree2867_def]
  rfl
theorem node2867_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2867 live2867 coloured2867 = result2867 := by
  rw [tree2867_def]
  try dsimp only [colour, result2867]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2868_agree : tree2868 = literal2868 := by
  rw [tree2868_def, tree2866_agree, tree2867_agree]
  rfl
theorem node2868_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2868 live2868 coloured2868 = result2868 := by
  rw [tree2868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2866_eq
  unfold live2866 coloured2866 at child
  try dsimp only [live2868, coloured2868]
  rw [child]
  dsimp only [result2866]
  have child := node2867_eq
  unfold live2867 coloured2867 at child
  try dsimp only [live2868, coloured2868]
  rw [child]
  dsimp only [result2867]
  try dsimp only [colour, result2868]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2869_agree : tree2869 = literal2869 := by
  rw [tree2869_def]
  rfl
theorem node2869_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2869 live2869 coloured2869 = result2869 := by
  rw [tree2869_def]
  try dsimp only [colour, result2869]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2870_agree : tree2870 = literal2870 := by
  rw [tree2870_def, tree2868_agree, tree2869_agree]
  rfl
theorem node2870_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2870 live2870 coloured2870 = result2870 := by
  rw [tree2870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2868_eq
  unfold live2868 coloured2868 at child
  try dsimp only [live2870, coloured2870]
  rw [child]
  dsimp only [result2868]
  have child := node2869_eq
  unfold live2869 coloured2869 at child
  try dsimp only [live2870, coloured2870]
  rw [child]
  dsimp only [result2869]
  try dsimp only [colour, result2870]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2871_agree : tree2871 = literal2871 := by
  rw [tree2871_def]
  rfl
theorem node2871_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2871 live2871 coloured2871 = result2871 := by
  rw [tree2871_def]
  try dsimp only [colour, result2871]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2872_agree : tree2872 = literal2872 := by
  rw [tree2872_def, tree2870_agree, tree2871_agree]
  rfl
theorem node2872_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2872 live2872 coloured2872 = result2872 := by
  rw [tree2872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2870_eq
  unfold live2870 coloured2870 at child
  try dsimp only [live2872, coloured2872]
  rw [child]
  dsimp only [result2870]
  have child := node2871_eq
  unfold live2871 coloured2871 at child
  try dsimp only [live2872, coloured2872]
  rw [child]
  dsimp only [result2871]
  try dsimp only [colour, result2872]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2873_agree : tree2873 = literal2873 := by
  rw [tree2873_def]
  rfl
theorem node2873_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2873 live2873 coloured2873 = result2873 := by
  rw [tree2873_def]
  try dsimp only [colour, result2873]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2874_agree : tree2874 = literal2874 := by
  rw [tree2874_def, tree2872_agree, tree2873_agree]
  rfl
theorem node2874_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2874 live2874 coloured2874 = result2874 := by
  rw [tree2874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2872_eq
  unfold live2872 coloured2872 at child
  try dsimp only [live2874, coloured2874]
  rw [child]
  dsimp only [result2872]
  have child := node2873_eq
  unfold live2873 coloured2873 at child
  try dsimp only [live2874, coloured2874]
  rw [child]
  dsimp only [result2873]
  try dsimp only [colour, result2874]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2875_agree : tree2875 = literal2875 := by
  rw [tree2875_def]
  rfl
theorem node2875_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2875 live2875 coloured2875 = result2875 := by
  rw [tree2875_def]
  try dsimp only [colour, result2875]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2876_agree : tree2876 = literal2876 := by
  rw [tree2876_def, tree2874_agree, tree2875_agree]
  rfl
theorem node2876_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2876 live2876 coloured2876 = result2876 := by
  rw [tree2876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2874_eq
  unfold live2874 coloured2874 at child
  try dsimp only [live2876, coloured2876]
  rw [child]
  dsimp only [result2874]
  have child := node2875_eq
  unfold live2875 coloured2875 at child
  try dsimp only [live2876, coloured2876]
  rw [child]
  dsimp only [result2875]
  try dsimp only [colour, result2876]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2877_agree : tree2877 = literal2877 := by
  rw [tree2877_def]
  rfl
theorem node2877_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2877 live2877 coloured2877 = result2877 := by
  rw [tree2877_def]
  try dsimp only [colour, result2877]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2878_agree : tree2878 = literal2878 := by
  rw [tree2878_def, tree2876_agree, tree2877_agree]
  rfl
theorem node2878_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2878 live2878 coloured2878 = result2878 := by
  rw [tree2878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2876_eq
  unfold live2876 coloured2876 at child
  try dsimp only [live2878, coloured2878]
  rw [child]
  dsimp only [result2876]
  have child := node2877_eq
  unfold live2877 coloured2877 at child
  try dsimp only [live2878, coloured2878]
  rw [child]
  dsimp only [result2877]
  try dsimp only [colour, result2878]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2879_agree : tree2879 = literal2879 := by
  rw [tree2879_def]
  rfl
theorem node2879_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2879 live2879 coloured2879 = result2879 := by
  rw [tree2879_def]
  try dsimp only [colour, result2879]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
