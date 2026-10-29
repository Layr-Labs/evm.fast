import InitECandidate.Proofs.ClashStages713.Proof101
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9792_agree : tree9792 = literal9792 := by
  rw [tree9792_def, tree9790_agree, tree9791_agree]
  rfl
theorem node9792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9792 live9792 coloured9792 = result9792 := by
  rw [tree9792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9790_eq
  unfold live9790 coloured9790 at child
  try dsimp only [live9792, coloured9792]
  rw [child]
  dsimp only [result9790]
  have child := node9791_eq
  unfold live9791 coloured9791 at child
  try dsimp only [live9792, coloured9792]
  rw [child]
  dsimp only [result9791]
  try dsimp only [colour, result9792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9793_agree : tree9793 = literal9793 := by
  rw [tree9793_def]
  rfl
theorem node9793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9793 live9793 coloured9793 = result9793 := by
  rw [tree9793_def]
  try dsimp only [colour, result9793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9794_agree : tree9794 = literal9794 := by
  rw [tree9794_def, tree9792_agree, tree9793_agree]
  rfl
theorem node9794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9794 live9794 coloured9794 = result9794 := by
  rw [tree9794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9792_eq
  unfold live9792 coloured9792 at child
  try dsimp only [live9794, coloured9794]
  rw [child]
  dsimp only [result9792]
  have child := node9793_eq
  unfold live9793 coloured9793 at child
  try dsimp only [live9794, coloured9794]
  rw [child]
  dsimp only [result9793]
  try dsimp only [colour, result9794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9795_agree : tree9795 = literal9795 := by
  rw [tree9795_def]
  rfl
theorem node9795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9795 live9795 coloured9795 = result9795 := by
  rw [tree9795_def]
  try dsimp only [colour, result9795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9796_agree : tree9796 = literal9796 := by
  rw [tree9796_def, tree9794_agree, tree9795_agree]
  rfl
theorem node9796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9796 live9796 coloured9796 = result9796 := by
  rw [tree9796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9794_eq
  unfold live9794 coloured9794 at child
  try dsimp only [live9796, coloured9796]
  rw [child]
  dsimp only [result9794]
  have child := node9795_eq
  unfold live9795 coloured9795 at child
  try dsimp only [live9796, coloured9796]
  rw [child]
  dsimp only [result9795]
  try dsimp only [colour, result9796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9797_agree : tree9797 = literal9797 := by
  rw [tree9797_def]
  rfl
theorem node9797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9797 live9797 coloured9797 = result9797 := by
  rw [tree9797_def]
  try dsimp only [colour, result9797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9798_agree : tree9798 = literal9798 := by
  rw [tree9798_def, tree9796_agree, tree9797_agree]
  rfl
theorem node9798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9798 live9798 coloured9798 = result9798 := by
  rw [tree9798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9796_eq
  unfold live9796 coloured9796 at child
  try dsimp only [live9798, coloured9798]
  rw [child]
  dsimp only [result9796]
  have child := node9797_eq
  unfold live9797 coloured9797 at child
  try dsimp only [live9798, coloured9798]
  rw [child]
  dsimp only [result9797]
  try dsimp only [colour, result9798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9799_agree : tree9799 = literal9799 := by
  rw [tree9799_def]
  rfl
theorem node9799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9799 live9799 coloured9799 = result9799 := by
  rw [tree9799_def]
  try dsimp only [colour, result9799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9800_agree : tree9800 = literal9800 := by
  rw [tree9800_def, tree9798_agree, tree9799_agree]
  rfl
theorem node9800_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9800 live9800 coloured9800 = result9800 := by
  rw [tree9800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9798_eq
  unfold live9798 coloured9798 at child
  try dsimp only [live9800, coloured9800]
  rw [child]
  dsimp only [result9798]
  have child := node9799_eq
  unfold live9799 coloured9799 at child
  try dsimp only [live9800, coloured9800]
  rw [child]
  dsimp only [result9799]
  try dsimp only [colour, result9800]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9801_agree : tree9801 = literal9801 := by
  rw [tree9801_def]
  rfl
theorem node9801_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9801 live9801 coloured9801 = result9801 := by
  rw [tree9801_def]
  try dsimp only [colour, result9801]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9802_agree : tree9802 = literal9802 := by
  rw [tree9802_def, tree9800_agree, tree9801_agree]
  rfl
theorem node9802_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9802 live9802 coloured9802 = result9802 := by
  rw [tree9802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9800_eq
  unfold live9800 coloured9800 at child
  try dsimp only [live9802, coloured9802]
  rw [child]
  dsimp only [result9800]
  have child := node9801_eq
  unfold live9801 coloured9801 at child
  try dsimp only [live9802, coloured9802]
  rw [child]
  dsimp only [result9801]
  try dsimp only [colour, result9802]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9803_agree : tree9803 = literal9803 := by
  rw [tree9803_def]
  rfl
theorem node9803_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9803 live9803 coloured9803 = result9803 := by
  rw [tree9803_def]
  try dsimp only [colour, result9803]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9804_agree : tree9804 = literal9804 := by
  rw [tree9804_def, tree9802_agree, tree9803_agree]
  rfl
theorem node9804_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9804 live9804 coloured9804 = result9804 := by
  rw [tree9804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9802_eq
  unfold live9802 coloured9802 at child
  try dsimp only [live9804, coloured9804]
  rw [child]
  dsimp only [result9802]
  have child := node9803_eq
  unfold live9803 coloured9803 at child
  try dsimp only [live9804, coloured9804]
  rw [child]
  dsimp only [result9803]
  try dsimp only [colour, result9804]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9805_agree : tree9805 = literal9805 := by
  rw [tree9805_def]
  rfl
theorem node9805_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9805 live9805 coloured9805 = result9805 := by
  rw [tree9805_def]
  try dsimp only [colour, result9805]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9806_agree : tree9806 = literal9806 := by
  rw [tree9806_def, tree9804_agree, tree9805_agree]
  rfl
theorem node9806_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9806 live9806 coloured9806 = result9806 := by
  rw [tree9806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9804_eq
  unfold live9804 coloured9804 at child
  try dsimp only [live9806, coloured9806]
  rw [child]
  dsimp only [result9804]
  have child := node9805_eq
  unfold live9805 coloured9805 at child
  try dsimp only [live9806, coloured9806]
  rw [child]
  dsimp only [result9805]
  try dsimp only [colour, result9806]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9807_agree : tree9807 = literal9807 := by
  rw [tree9807_def]
  rfl
theorem node9807_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9807 live9807 coloured9807 = result9807 := by
  rw [tree9807_def]
  try dsimp only [colour, result9807]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9808_agree : tree9808 = literal9808 := by
  rw [tree9808_def, tree9806_agree, tree9807_agree]
  rfl
theorem node9808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9808 live9808 coloured9808 = result9808 := by
  rw [tree9808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9806_eq
  unfold live9806 coloured9806 at child
  try dsimp only [live9808, coloured9808]
  rw [child]
  dsimp only [result9806]
  have child := node9807_eq
  unfold live9807 coloured9807 at child
  try dsimp only [live9808, coloured9808]
  rw [child]
  dsimp only [result9807]
  try dsimp only [colour, result9808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9809_agree : tree9809 = literal9809 := by
  rw [tree9809_def]
  rfl
theorem node9809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9809 live9809 coloured9809 = result9809 := by
  rw [tree9809_def]
  try dsimp only [colour, result9809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9810_agree : tree9810 = literal9810 := by
  rw [tree9810_def, tree9808_agree, tree9809_agree]
  rfl
theorem node9810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9810 live9810 coloured9810 = result9810 := by
  rw [tree9810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9808_eq
  unfold live9808 coloured9808 at child
  try dsimp only [live9810, coloured9810]
  rw [child]
  dsimp only [result9808]
  have child := node9809_eq
  unfold live9809 coloured9809 at child
  try dsimp only [live9810, coloured9810]
  rw [child]
  dsimp only [result9809]
  try dsimp only [colour, result9810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9811_agree : tree9811 = literal9811 := by
  rw [tree9811_def]
  rfl
theorem node9811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9811 live9811 coloured9811 = result9811 := by
  rw [tree9811_def]
  try dsimp only [colour, result9811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9812_agree : tree9812 = literal9812 := by
  rw [tree9812_def, tree9810_agree, tree9811_agree]
  rfl
theorem node9812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9812 live9812 coloured9812 = result9812 := by
  rw [tree9812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9810_eq
  unfold live9810 coloured9810 at child
  try dsimp only [live9812, coloured9812]
  rw [child]
  dsimp only [result9810]
  have child := node9811_eq
  unfold live9811 coloured9811 at child
  try dsimp only [live9812, coloured9812]
  rw [child]
  dsimp only [result9811]
  try dsimp only [colour, result9812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9813_agree : tree9813 = literal9813 := by
  rw [tree9813_def]
  rfl
theorem node9813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9813 live9813 coloured9813 = result9813 := by
  rw [tree9813_def]
  try dsimp only [colour, result9813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9814_agree : tree9814 = literal9814 := by
  rw [tree9814_def, tree9812_agree, tree9813_agree]
  rfl
theorem node9814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9814 live9814 coloured9814 = result9814 := by
  rw [tree9814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9812_eq
  unfold live9812 coloured9812 at child
  try dsimp only [live9814, coloured9814]
  rw [child]
  dsimp only [result9812]
  have child := node9813_eq
  unfold live9813 coloured9813 at child
  try dsimp only [live9814, coloured9814]
  rw [child]
  dsimp only [result9813]
  try dsimp only [colour, result9814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9815_agree : tree9815 = literal9815 := by
  rw [tree9815_def]
  rfl
theorem node9815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9815 live9815 coloured9815 = result9815 := by
  rw [tree9815_def]
  try dsimp only [colour, result9815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9816_agree : tree9816 = literal9816 := by
  rw [tree9816_def, tree9814_agree, tree9815_agree]
  rfl
theorem node9816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9816 live9816 coloured9816 = result9816 := by
  rw [tree9816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9814_eq
  unfold live9814 coloured9814 at child
  try dsimp only [live9816, coloured9816]
  rw [child]
  dsimp only [result9814]
  have child := node9815_eq
  unfold live9815 coloured9815 at child
  try dsimp only [live9816, coloured9816]
  rw [child]
  dsimp only [result9815]
  try dsimp only [colour, result9816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9817_agree : tree9817 = literal9817 := by
  rw [tree9817_def]
  rfl
theorem node9817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9817 live9817 coloured9817 = result9817 := by
  rw [tree9817_def]
  try dsimp only [colour, result9817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9818_agree : tree9818 = literal9818 := by
  rw [tree9818_def, tree9816_agree, tree9817_agree]
  rfl
theorem node9818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9818 live9818 coloured9818 = result9818 := by
  rw [tree9818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9816_eq
  unfold live9816 coloured9816 at child
  try dsimp only [live9818, coloured9818]
  rw [child]
  dsimp only [result9816]
  have child := node9817_eq
  unfold live9817 coloured9817 at child
  try dsimp only [live9818, coloured9818]
  rw [child]
  dsimp only [result9817]
  try dsimp only [colour, result9818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9819_agree : tree9819 = literal9819 := by
  rw [tree9819_def]
  rfl
theorem node9819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9819 live9819 coloured9819 = result9819 := by
  rw [tree9819_def]
  try dsimp only [colour, result9819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9820_agree : tree9820 = literal9820 := by
  rw [tree9820_def, tree9818_agree, tree9819_agree]
  rfl
theorem node9820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9820 live9820 coloured9820 = result9820 := by
  rw [tree9820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9818_eq
  unfold live9818 coloured9818 at child
  try dsimp only [live9820, coloured9820]
  rw [child]
  dsimp only [result9818]
  have child := node9819_eq
  unfold live9819 coloured9819 at child
  try dsimp only [live9820, coloured9820]
  rw [child]
  dsimp only [result9819]
  try dsimp only [colour, result9820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9821_agree : tree9821 = literal9821 := by
  rw [tree9821_def]
  rfl
theorem node9821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9821 live9821 coloured9821 = result9821 := by
  rw [tree9821_def]
  try dsimp only [colour, result9821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9822_agree : tree9822 = literal9822 := by
  rw [tree9822_def, tree9820_agree, tree9821_agree]
  rfl
theorem node9822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9822 live9822 coloured9822 = result9822 := by
  rw [tree9822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9820_eq
  unfold live9820 coloured9820 at child
  try dsimp only [live9822, coloured9822]
  rw [child]
  dsimp only [result9820]
  have child := node9821_eq
  unfold live9821 coloured9821 at child
  try dsimp only [live9822, coloured9822]
  rw [child]
  dsimp only [result9821]
  try dsimp only [colour, result9822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9823_agree : tree9823 = literal9823 := by
  rw [tree9823_def]
  rfl
theorem node9823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9823 live9823 coloured9823 = result9823 := by
  rw [tree9823_def]
  try dsimp only [colour, result9823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9824_agree : tree9824 = literal9824 := by
  rw [tree9824_def, tree9822_agree, tree9823_agree]
  rfl
theorem node9824_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9824 live9824 coloured9824 = result9824 := by
  rw [tree9824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9822_eq
  unfold live9822 coloured9822 at child
  try dsimp only [live9824, coloured9824]
  rw [child]
  dsimp only [result9822]
  have child := node9823_eq
  unfold live9823 coloured9823 at child
  try dsimp only [live9824, coloured9824]
  rw [child]
  dsimp only [result9823]
  try dsimp only [colour, result9824]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9825_agree : tree9825 = literal9825 := by
  rw [tree9825_def]
  rfl
theorem node9825_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9825 live9825 coloured9825 = result9825 := by
  rw [tree9825_def]
  try dsimp only [colour, result9825]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9826_agree : tree9826 = literal9826 := by
  rw [tree9826_def, tree9824_agree, tree9825_agree]
  rfl
theorem node9826_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9826 live9826 coloured9826 = result9826 := by
  rw [tree9826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9824_eq
  unfold live9824 coloured9824 at child
  try dsimp only [live9826, coloured9826]
  rw [child]
  dsimp only [result9824]
  have child := node9825_eq
  unfold live9825 coloured9825 at child
  try dsimp only [live9826, coloured9826]
  rw [child]
  dsimp only [result9825]
  try dsimp only [colour, result9826]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9827_agree : tree9827 = literal9827 := by
  rw [tree9827_def]
  rfl
theorem node9827_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9827 live9827 coloured9827 = result9827 := by
  rw [tree9827_def]
  try dsimp only [colour, result9827]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9828_agree : tree9828 = literal9828 := by
  rw [tree9828_def, tree9826_agree, tree9827_agree]
  rfl
theorem node9828_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9828 live9828 coloured9828 = result9828 := by
  rw [tree9828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9826_eq
  unfold live9826 coloured9826 at child
  try dsimp only [live9828, coloured9828]
  rw [child]
  dsimp only [result9826]
  have child := node9827_eq
  unfold live9827 coloured9827 at child
  try dsimp only [live9828, coloured9828]
  rw [child]
  dsimp only [result9827]
  try dsimp only [colour, result9828]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9829_agree : tree9829 = literal9829 := by
  rw [tree9829_def]
  rfl
theorem node9829_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9829 live9829 coloured9829 = result9829 := by
  rw [tree9829_def]
  try dsimp only [colour, result9829]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9830_agree : tree9830 = literal9830 := by
  rw [tree9830_def, tree9828_agree, tree9829_agree]
  rfl
theorem node9830_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9830 live9830 coloured9830 = result9830 := by
  rw [tree9830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9828_eq
  unfold live9828 coloured9828 at child
  try dsimp only [live9830, coloured9830]
  rw [child]
  dsimp only [result9828]
  have child := node9829_eq
  unfold live9829 coloured9829 at child
  try dsimp only [live9830, coloured9830]
  rw [child]
  dsimp only [result9829]
  try dsimp only [colour, result9830]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9831_agree : tree9831 = literal9831 := by
  rw [tree9831_def]
  rfl
theorem node9831_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9831 live9831 coloured9831 = result9831 := by
  rw [tree9831_def]
  try dsimp only [colour, result9831]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9832_agree : tree9832 = literal9832 := by
  rw [tree9832_def, tree9830_agree, tree9831_agree]
  rfl
theorem node9832_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9832 live9832 coloured9832 = result9832 := by
  rw [tree9832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9830_eq
  unfold live9830 coloured9830 at child
  try dsimp only [live9832, coloured9832]
  rw [child]
  dsimp only [result9830]
  have child := node9831_eq
  unfold live9831 coloured9831 at child
  try dsimp only [live9832, coloured9832]
  rw [child]
  dsimp only [result9831]
  try dsimp only [colour, result9832]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9833_agree : tree9833 = literal9833 := by
  rw [tree9833_def]
  rfl
theorem node9833_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9833 live9833 coloured9833 = result9833 := by
  rw [tree9833_def]
  try dsimp only [colour, result9833]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9834_agree : tree9834 = literal9834 := by
  rw [tree9834_def, tree9832_agree, tree9833_agree]
  rfl
theorem node9834_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9834 live9834 coloured9834 = result9834 := by
  rw [tree9834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9832_eq
  unfold live9832 coloured9832 at child
  try dsimp only [live9834, coloured9834]
  rw [child]
  dsimp only [result9832]
  have child := node9833_eq
  unfold live9833 coloured9833 at child
  try dsimp only [live9834, coloured9834]
  rw [child]
  dsimp only [result9833]
  try dsimp only [colour, result9834]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9835_agree : tree9835 = literal9835 := by
  rw [tree9835_def]
  rfl
theorem node9835_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9835 live9835 coloured9835 = result9835 := by
  rw [tree9835_def]
  try dsimp only [colour, result9835]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9836_agree : tree9836 = literal9836 := by
  rw [tree9836_def, tree9834_agree, tree9835_agree]
  rfl
theorem node9836_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9836 live9836 coloured9836 = result9836 := by
  rw [tree9836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9834_eq
  unfold live9834 coloured9834 at child
  try dsimp only [live9836, coloured9836]
  rw [child]
  dsimp only [result9834]
  have child := node9835_eq
  unfold live9835 coloured9835 at child
  try dsimp only [live9836, coloured9836]
  rw [child]
  dsimp only [result9835]
  try dsimp only [colour, result9836]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9837_agree : tree9837 = literal9837 := by
  rw [tree9837_def]
  rfl
theorem node9837_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9837 live9837 coloured9837 = result9837 := by
  rw [tree9837_def]
  try dsimp only [colour, result9837]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9838_agree : tree9838 = literal9838 := by
  rw [tree9838_def, tree9836_agree, tree9837_agree]
  rfl
theorem node9838_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9838 live9838 coloured9838 = result9838 := by
  rw [tree9838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9836_eq
  unfold live9836 coloured9836 at child
  try dsimp only [live9838, coloured9838]
  rw [child]
  dsimp only [result9836]
  have child := node9837_eq
  unfold live9837 coloured9837 at child
  try dsimp only [live9838, coloured9838]
  rw [child]
  dsimp only [result9837]
  try dsimp only [colour, result9838]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9839_agree : tree9839 = literal9839 := by
  rw [tree9839_def]
  rfl
theorem node9839_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9839 live9839 coloured9839 = result9839 := by
  rw [tree9839_def]
  try dsimp only [colour, result9839]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9840_agree : tree9840 = literal9840 := by
  rw [tree9840_def, tree9838_agree, tree9839_agree]
  rfl
theorem node9840_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9840 live9840 coloured9840 = result9840 := by
  rw [tree9840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9838_eq
  unfold live9838 coloured9838 at child
  try dsimp only [live9840, coloured9840]
  rw [child]
  dsimp only [result9838]
  have child := node9839_eq
  unfold live9839 coloured9839 at child
  try dsimp only [live9840, coloured9840]
  rw [child]
  dsimp only [result9839]
  try dsimp only [colour, result9840]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9841_agree : tree9841 = literal9841 := by
  rw [tree9841_def]
  rfl
theorem node9841_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9841 live9841 coloured9841 = result9841 := by
  rw [tree9841_def]
  try dsimp only [colour, result9841]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9842_agree : tree9842 = literal9842 := by
  rw [tree9842_def, tree9840_agree, tree9841_agree]
  rfl
theorem node9842_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9842 live9842 coloured9842 = result9842 := by
  rw [tree9842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9840_eq
  unfold live9840 coloured9840 at child
  try dsimp only [live9842, coloured9842]
  rw [child]
  dsimp only [result9840]
  have child := node9841_eq
  unfold live9841 coloured9841 at child
  try dsimp only [live9842, coloured9842]
  rw [child]
  dsimp only [result9841]
  try dsimp only [colour, result9842]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9843_agree : tree9843 = literal9843 := by
  rw [tree9843_def]
  rfl
theorem node9843_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9843 live9843 coloured9843 = result9843 := by
  rw [tree9843_def]
  try dsimp only [colour, result9843]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9844_agree : tree9844 = literal9844 := by
  rw [tree9844_def, tree9842_agree, tree9843_agree]
  rfl
theorem node9844_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9844 live9844 coloured9844 = result9844 := by
  rw [tree9844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9842_eq
  unfold live9842 coloured9842 at child
  try dsimp only [live9844, coloured9844]
  rw [child]
  dsimp only [result9842]
  have child := node9843_eq
  unfold live9843 coloured9843 at child
  try dsimp only [live9844, coloured9844]
  rw [child]
  dsimp only [result9843]
  try dsimp only [colour, result9844]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9845_agree : tree9845 = literal9845 := by
  rw [tree9845_def]
  rfl
theorem node9845_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9845 live9845 coloured9845 = result9845 := by
  rw [tree9845_def]
  try dsimp only [colour, result9845]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9846_agree : tree9846 = literal9846 := by
  rw [tree9846_def, tree9844_agree, tree9845_agree]
  rfl
theorem node9846_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9846 live9846 coloured9846 = result9846 := by
  rw [tree9846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9844_eq
  unfold live9844 coloured9844 at child
  try dsimp only [live9846, coloured9846]
  rw [child]
  dsimp only [result9844]
  have child := node9845_eq
  unfold live9845 coloured9845 at child
  try dsimp only [live9846, coloured9846]
  rw [child]
  dsimp only [result9845]
  try dsimp only [colour, result9846]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9847_agree : tree9847 = literal9847 := by
  rw [tree9847_def]
  rfl
theorem node9847_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9847 live9847 coloured9847 = result9847 := by
  rw [tree9847_def]
  try dsimp only [colour, result9847]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9848_agree : tree9848 = literal9848 := by
  rw [tree9848_def, tree9846_agree, tree9847_agree]
  rfl
theorem node9848_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9848 live9848 coloured9848 = result9848 := by
  rw [tree9848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9846_eq
  unfold live9846 coloured9846 at child
  try dsimp only [live9848, coloured9848]
  rw [child]
  dsimp only [result9846]
  have child := node9847_eq
  unfold live9847 coloured9847 at child
  try dsimp only [live9848, coloured9848]
  rw [child]
  dsimp only [result9847]
  try dsimp only [colour, result9848]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9849_agree : tree9849 = literal9849 := by
  rw [tree9849_def]
  rfl
theorem node9849_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9849 live9849 coloured9849 = result9849 := by
  rw [tree9849_def]
  try dsimp only [colour, result9849]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9850_agree : tree9850 = literal9850 := by
  rw [tree9850_def, tree9848_agree, tree9849_agree]
  rfl
theorem node9850_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9850 live9850 coloured9850 = result9850 := by
  rw [tree9850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9848_eq
  unfold live9848 coloured9848 at child
  try dsimp only [live9850, coloured9850]
  rw [child]
  dsimp only [result9848]
  have child := node9849_eq
  unfold live9849 coloured9849 at child
  try dsimp only [live9850, coloured9850]
  rw [child]
  dsimp only [result9849]
  try dsimp only [colour, result9850]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9851_agree : tree9851 = literal9851 := by
  rw [tree9851_def]
  rfl
theorem node9851_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9851 live9851 coloured9851 = result9851 := by
  rw [tree9851_def]
  try dsimp only [colour, result9851]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9852_agree : tree9852 = literal9852 := by
  rw [tree9852_def, tree9850_agree, tree9851_agree]
  rfl
theorem node9852_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9852 live9852 coloured9852 = result9852 := by
  rw [tree9852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9850_eq
  unfold live9850 coloured9850 at child
  try dsimp only [live9852, coloured9852]
  rw [child]
  dsimp only [result9850]
  have child := node9851_eq
  unfold live9851 coloured9851 at child
  try dsimp only [live9852, coloured9852]
  rw [child]
  dsimp only [result9851]
  try dsimp only [colour, result9852]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9853_agree : tree9853 = literal9853 := by
  rw [tree9853_def]
  rfl
theorem node9853_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9853 live9853 coloured9853 = result9853 := by
  rw [tree9853_def]
  try dsimp only [colour, result9853]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9854_agree : tree9854 = literal9854 := by
  rw [tree9854_def, tree9852_agree, tree9853_agree]
  rfl
theorem node9854_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9854 live9854 coloured9854 = result9854 := by
  rw [tree9854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9852_eq
  unfold live9852 coloured9852 at child
  try dsimp only [live9854, coloured9854]
  rw [child]
  dsimp only [result9852]
  have child := node9853_eq
  unfold live9853 coloured9853 at child
  try dsimp only [live9854, coloured9854]
  rw [child]
  dsimp only [result9853]
  try dsimp only [colour, result9854]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9855_agree : tree9855 = literal9855 := by
  rw [tree9855_def]
  rfl
theorem node9855_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9855 live9855 coloured9855 = result9855 := by
  rw [tree9855_def]
  try dsimp only [colour, result9855]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9856_agree : tree9856 = literal9856 := by
  rw [tree9856_def, tree9854_agree, tree9855_agree]
  rfl
theorem node9856_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9856 live9856 coloured9856 = result9856 := by
  rw [tree9856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9854_eq
  unfold live9854 coloured9854 at child
  try dsimp only [live9856, coloured9856]
  rw [child]
  dsimp only [result9854]
  have child := node9855_eq
  unfold live9855 coloured9855 at child
  try dsimp only [live9856, coloured9856]
  rw [child]
  dsimp only [result9855]
  try dsimp only [colour, result9856]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9857_agree : tree9857 = literal9857 := by
  rw [tree9857_def]
  rfl
theorem node9857_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9857 live9857 coloured9857 = result9857 := by
  rw [tree9857_def]
  try dsimp only [colour, result9857]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9858_agree : tree9858 = literal9858 := by
  rw [tree9858_def, tree9856_agree, tree9857_agree]
  rfl
theorem node9858_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9858 live9858 coloured9858 = result9858 := by
  rw [tree9858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9856_eq
  unfold live9856 coloured9856 at child
  try dsimp only [live9858, coloured9858]
  rw [child]
  dsimp only [result9856]
  have child := node9857_eq
  unfold live9857 coloured9857 at child
  try dsimp only [live9858, coloured9858]
  rw [child]
  dsimp only [result9857]
  try dsimp only [colour, result9858]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9859_agree : tree9859 = literal9859 := by
  rw [tree9859_def]
  rfl
theorem node9859_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9859 live9859 coloured9859 = result9859 := by
  rw [tree9859_def]
  try dsimp only [colour, result9859]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9860_agree : tree9860 = literal9860 := by
  rw [tree9860_def, tree9858_agree, tree9859_agree]
  rfl
theorem node9860_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9860 live9860 coloured9860 = result9860 := by
  rw [tree9860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9858_eq
  unfold live9858 coloured9858 at child
  try dsimp only [live9860, coloured9860]
  rw [child]
  dsimp only [result9858]
  have child := node9859_eq
  unfold live9859 coloured9859 at child
  try dsimp only [live9860, coloured9860]
  rw [child]
  dsimp only [result9859]
  try dsimp only [colour, result9860]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9861_agree : tree9861 = literal9861 := by
  rw [tree9861_def]
  rfl
theorem node9861_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9861 live9861 coloured9861 = result9861 := by
  rw [tree9861_def]
  try dsimp only [colour, result9861]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9862_agree : tree9862 = literal9862 := by
  rw [tree9862_def, tree9860_agree, tree9861_agree]
  rfl
theorem node9862_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9862 live9862 coloured9862 = result9862 := by
  rw [tree9862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9860_eq
  unfold live9860 coloured9860 at child
  try dsimp only [live9862, coloured9862]
  rw [child]
  dsimp only [result9860]
  have child := node9861_eq
  unfold live9861 coloured9861 at child
  try dsimp only [live9862, coloured9862]
  rw [child]
  dsimp only [result9861]
  try dsimp only [colour, result9862]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9863_agree : tree9863 = literal9863 := by
  rw [tree9863_def]
  rfl
theorem node9863_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9863 live9863 coloured9863 = result9863 := by
  rw [tree9863_def]
  try dsimp only [colour, result9863]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9864_agree : tree9864 = literal9864 := by
  rw [tree9864_def, tree9862_agree, tree9863_agree]
  rfl
theorem node9864_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9864 live9864 coloured9864 = result9864 := by
  rw [tree9864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9862_eq
  unfold live9862 coloured9862 at child
  try dsimp only [live9864, coloured9864]
  rw [child]
  dsimp only [result9862]
  have child := node9863_eq
  unfold live9863 coloured9863 at child
  try dsimp only [live9864, coloured9864]
  rw [child]
  dsimp only [result9863]
  try dsimp only [colour, result9864]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9865_agree : tree9865 = literal9865 := by
  rw [tree9865_def]
  rfl
theorem node9865_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9865 live9865 coloured9865 = result9865 := by
  rw [tree9865_def]
  try dsimp only [colour, result9865]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9866_agree : tree9866 = literal9866 := by
  rw [tree9866_def, tree9864_agree, tree9865_agree]
  rfl
theorem node9866_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9866 live9866 coloured9866 = result9866 := by
  rw [tree9866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9864_eq
  unfold live9864 coloured9864 at child
  try dsimp only [live9866, coloured9866]
  rw [child]
  dsimp only [result9864]
  have child := node9865_eq
  unfold live9865 coloured9865 at child
  try dsimp only [live9866, coloured9866]
  rw [child]
  dsimp only [result9865]
  try dsimp only [colour, result9866]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9867_agree : tree9867 = literal9867 := by
  rw [tree9867_def]
  rfl
theorem node9867_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9867 live9867 coloured9867 = result9867 := by
  rw [tree9867_def]
  try dsimp only [colour, result9867]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9868_agree : tree9868 = literal9868 := by
  rw [tree9868_def, tree9866_agree, tree9867_agree]
  rfl
theorem node9868_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9868 live9868 coloured9868 = result9868 := by
  rw [tree9868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9866_eq
  unfold live9866 coloured9866 at child
  try dsimp only [live9868, coloured9868]
  rw [child]
  dsimp only [result9866]
  have child := node9867_eq
  unfold live9867 coloured9867 at child
  try dsimp only [live9868, coloured9868]
  rw [child]
  dsimp only [result9867]
  try dsimp only [colour, result9868]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9869_agree : tree9869 = literal9869 := by
  rw [tree9869_def]
  rfl
theorem node9869_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9869 live9869 coloured9869 = result9869 := by
  rw [tree9869_def]
  try dsimp only [colour, result9869]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9870_agree : tree9870 = literal9870 := by
  rw [tree9870_def, tree9868_agree, tree9869_agree]
  rfl
theorem node9870_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9870 live9870 coloured9870 = result9870 := by
  rw [tree9870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9868_eq
  unfold live9868 coloured9868 at child
  try dsimp only [live9870, coloured9870]
  rw [child]
  dsimp only [result9868]
  have child := node9869_eq
  unfold live9869 coloured9869 at child
  try dsimp only [live9870, coloured9870]
  rw [child]
  dsimp only [result9869]
  try dsimp only [colour, result9870]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9871_agree : tree9871 = literal9871 := by
  rw [tree9871_def]
  rfl
theorem node9871_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9871 live9871 coloured9871 = result9871 := by
  rw [tree9871_def]
  try dsimp only [colour, result9871]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9872_agree : tree9872 = literal9872 := by
  rw [tree9872_def, tree9870_agree, tree9871_agree]
  rfl
theorem node9872_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9872 live9872 coloured9872 = result9872 := by
  rw [tree9872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9870_eq
  unfold live9870 coloured9870 at child
  try dsimp only [live9872, coloured9872]
  rw [child]
  dsimp only [result9870]
  have child := node9871_eq
  unfold live9871 coloured9871 at child
  try dsimp only [live9872, coloured9872]
  rw [child]
  dsimp only [result9871]
  try dsimp only [colour, result9872]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9873_agree : tree9873 = literal9873 := by
  rw [tree9873_def]
  rfl
theorem node9873_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9873 live9873 coloured9873 = result9873 := by
  rw [tree9873_def]
  try dsimp only [colour, result9873]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9874_agree : tree9874 = literal9874 := by
  rw [tree9874_def, tree9872_agree, tree9873_agree]
  rfl
theorem node9874_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9874 live9874 coloured9874 = result9874 := by
  rw [tree9874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9872_eq
  unfold live9872 coloured9872 at child
  try dsimp only [live9874, coloured9874]
  rw [child]
  dsimp only [result9872]
  have child := node9873_eq
  unfold live9873 coloured9873 at child
  try dsimp only [live9874, coloured9874]
  rw [child]
  dsimp only [result9873]
  try dsimp only [colour, result9874]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9875_agree : tree9875 = literal9875 := by
  rw [tree9875_def]
  rfl
theorem node9875_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9875 live9875 coloured9875 = result9875 := by
  rw [tree9875_def]
  try dsimp only [colour, result9875]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9876_agree : tree9876 = literal9876 := by
  rw [tree9876_def, tree9874_agree, tree9875_agree]
  rfl
theorem node9876_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9876 live9876 coloured9876 = result9876 := by
  rw [tree9876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9874_eq
  unfold live9874 coloured9874 at child
  try dsimp only [live9876, coloured9876]
  rw [child]
  dsimp only [result9874]
  have child := node9875_eq
  unfold live9875 coloured9875 at child
  try dsimp only [live9876, coloured9876]
  rw [child]
  dsimp only [result9875]
  try dsimp only [colour, result9876]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9877_agree : tree9877 = literal9877 := by
  rw [tree9877_def]
  rfl
theorem node9877_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9877 live9877 coloured9877 = result9877 := by
  rw [tree9877_def]
  try dsimp only [colour, result9877]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9878_agree : tree9878 = literal9878 := by
  rw [tree9878_def, tree9876_agree, tree9877_agree]
  rfl
theorem node9878_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9878 live9878 coloured9878 = result9878 := by
  rw [tree9878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9876_eq
  unfold live9876 coloured9876 at child
  try dsimp only [live9878, coloured9878]
  rw [child]
  dsimp only [result9876]
  have child := node9877_eq
  unfold live9877 coloured9877 at child
  try dsimp only [live9878, coloured9878]
  rw [child]
  dsimp only [result9877]
  try dsimp only [colour, result9878]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9879_agree : tree9879 = literal9879 := by
  rw [tree9879_def]
  rfl
theorem node9879_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9879 live9879 coloured9879 = result9879 := by
  rw [tree9879_def]
  try dsimp only [colour, result9879]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9880_agree : tree9880 = literal9880 := by
  rw [tree9880_def, tree9878_agree, tree9879_agree]
  rfl
theorem node9880_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9880 live9880 coloured9880 = result9880 := by
  rw [tree9880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9878_eq
  unfold live9878 coloured9878 at child
  try dsimp only [live9880, coloured9880]
  rw [child]
  dsimp only [result9878]
  have child := node9879_eq
  unfold live9879 coloured9879 at child
  try dsimp only [live9880, coloured9880]
  rw [child]
  dsimp only [result9879]
  try dsimp only [colour, result9880]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9881_agree : tree9881 = literal9881 := by
  rw [tree9881_def]
  rfl
theorem node9881_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9881 live9881 coloured9881 = result9881 := by
  rw [tree9881_def]
  try dsimp only [colour, result9881]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9882_agree : tree9882 = literal9882 := by
  rw [tree9882_def, tree9880_agree, tree9881_agree]
  rfl
theorem node9882_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9882 live9882 coloured9882 = result9882 := by
  rw [tree9882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9880_eq
  unfold live9880 coloured9880 at child
  try dsimp only [live9882, coloured9882]
  rw [child]
  dsimp only [result9880]
  have child := node9881_eq
  unfold live9881 coloured9881 at child
  try dsimp only [live9882, coloured9882]
  rw [child]
  dsimp only [result9881]
  try dsimp only [colour, result9882]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9883_agree : tree9883 = literal9883 := by
  rw [tree9883_def]
  rfl
theorem node9883_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9883 live9883 coloured9883 = result9883 := by
  rw [tree9883_def]
  try dsimp only [colour, result9883]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9884_agree : tree9884 = literal9884 := by
  rw [tree9884_def, tree9882_agree, tree9883_agree]
  rfl
theorem node9884_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9884 live9884 coloured9884 = result9884 := by
  rw [tree9884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9882_eq
  unfold live9882 coloured9882 at child
  try dsimp only [live9884, coloured9884]
  rw [child]
  dsimp only [result9882]
  have child := node9883_eq
  unfold live9883 coloured9883 at child
  try dsimp only [live9884, coloured9884]
  rw [child]
  dsimp only [result9883]
  try dsimp only [colour, result9884]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9885_agree : tree9885 = literal9885 := by
  rw [tree9885_def]
  rfl
theorem node9885_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9885 live9885 coloured9885 = result9885 := by
  rw [tree9885_def]
  try dsimp only [colour, result9885]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9886_agree : tree9886 = literal9886 := by
  rw [tree9886_def, tree9884_agree, tree9885_agree]
  rfl
theorem node9886_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9886 live9886 coloured9886 = result9886 := by
  rw [tree9886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9884_eq
  unfold live9884 coloured9884 at child
  try dsimp only [live9886, coloured9886]
  rw [child]
  dsimp only [result9884]
  have child := node9885_eq
  unfold live9885 coloured9885 at child
  try dsimp only [live9886, coloured9886]
  rw [child]
  dsimp only [result9885]
  try dsimp only [colour, result9886]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9887_agree : tree9887 = literal9887 := by
  rw [tree9887_def]
  rfl
theorem node9887_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9887 live9887 coloured9887 = result9887 := by
  rw [tree9887_def]
  try dsimp only [colour, result9887]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
