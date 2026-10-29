import InitECandidate.Proofs.ClashStages713.Proof80
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree7776_agree : tree7776 = literal7776 := by
  rw [tree7776_def, tree7774_agree, tree7775_agree]
  rfl
theorem node7776_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7776 live7776 coloured7776 = result7776 := by
  rw [tree7776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7774_eq
  unfold live7774 coloured7774 at child
  try dsimp only [live7776, coloured7776]
  rw [child]
  dsimp only [result7774]
  have child := node7775_eq
  unfold live7775 coloured7775 at child
  try dsimp only [live7776, coloured7776]
  rw [child]
  dsimp only [result7775]
  try dsimp only [colour, result7776]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7777_agree : tree7777 = literal7777 := by
  rw [tree7777_def]
  rfl
theorem node7777_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7777 live7777 coloured7777 = result7777 := by
  rw [tree7777_def]
  try dsimp only [colour, result7777]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7778_agree : tree7778 = literal7778 := by
  rw [tree7778_def, tree7776_agree, tree7777_agree]
  rfl
theorem node7778_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7778 live7778 coloured7778 = result7778 := by
  rw [tree7778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7776_eq
  unfold live7776 coloured7776 at child
  try dsimp only [live7778, coloured7778]
  rw [child]
  dsimp only [result7776]
  have child := node7777_eq
  unfold live7777 coloured7777 at child
  try dsimp only [live7778, coloured7778]
  rw [child]
  dsimp only [result7777]
  try dsimp only [colour, result7778]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7779_agree : tree7779 = literal7779 := by
  rw [tree7779_def]
  rfl
theorem node7779_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7779 live7779 coloured7779 = result7779 := by
  rw [tree7779_def]
  try dsimp only [colour, result7779]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7780_agree : tree7780 = literal7780 := by
  rw [tree7780_def, tree7778_agree, tree7779_agree]
  rfl
theorem node7780_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7780 live7780 coloured7780 = result7780 := by
  rw [tree7780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7778_eq
  unfold live7778 coloured7778 at child
  try dsimp only [live7780, coloured7780]
  rw [child]
  dsimp only [result7778]
  have child := node7779_eq
  unfold live7779 coloured7779 at child
  try dsimp only [live7780, coloured7780]
  rw [child]
  dsimp only [result7779]
  try dsimp only [colour, result7780]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7781_agree : tree7781 = literal7781 := by
  rw [tree7781_def]
  rfl
theorem node7781_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7781 live7781 coloured7781 = result7781 := by
  rw [tree7781_def]
  try dsimp only [colour, result7781]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7782_agree : tree7782 = literal7782 := by
  rw [tree7782_def, tree7780_agree, tree7781_agree]
  rfl
theorem node7782_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7782 live7782 coloured7782 = result7782 := by
  rw [tree7782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7780_eq
  unfold live7780 coloured7780 at child
  try dsimp only [live7782, coloured7782]
  rw [child]
  dsimp only [result7780]
  have child := node7781_eq
  unfold live7781 coloured7781 at child
  try dsimp only [live7782, coloured7782]
  rw [child]
  dsimp only [result7781]
  try dsimp only [colour, result7782]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7783_agree : tree7783 = literal7783 := by
  rw [tree7783_def]
  rfl
theorem node7783_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7783 live7783 coloured7783 = result7783 := by
  rw [tree7783_def]
  try dsimp only [colour, result7783]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7784_agree : tree7784 = literal7784 := by
  rw [tree7784_def, tree7782_agree, tree7783_agree]
  rfl
theorem node7784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7784 live7784 coloured7784 = result7784 := by
  rw [tree7784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7782_eq
  unfold live7782 coloured7782 at child
  try dsimp only [live7784, coloured7784]
  rw [child]
  dsimp only [result7782]
  have child := node7783_eq
  unfold live7783 coloured7783 at child
  try dsimp only [live7784, coloured7784]
  rw [child]
  dsimp only [result7783]
  try dsimp only [colour, result7784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7785_agree : tree7785 = literal7785 := by
  rw [tree7785_def]
  rfl
theorem node7785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7785 live7785 coloured7785 = result7785 := by
  rw [tree7785_def]
  try dsimp only [colour, result7785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7786_agree : tree7786 = literal7786 := by
  rw [tree7786_def, tree7784_agree, tree7785_agree]
  rfl
theorem node7786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7786 live7786 coloured7786 = result7786 := by
  rw [tree7786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7784_eq
  unfold live7784 coloured7784 at child
  try dsimp only [live7786, coloured7786]
  rw [child]
  dsimp only [result7784]
  have child := node7785_eq
  unfold live7785 coloured7785 at child
  try dsimp only [live7786, coloured7786]
  rw [child]
  dsimp only [result7785]
  try dsimp only [colour, result7786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7787_agree : tree7787 = literal7787 := by
  rw [tree7787_def]
  rfl
theorem node7787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7787 live7787 coloured7787 = result7787 := by
  rw [tree7787_def]
  try dsimp only [colour, result7787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7788_agree : tree7788 = literal7788 := by
  rw [tree7788_def, tree7786_agree, tree7787_agree]
  rfl
theorem node7788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7788 live7788 coloured7788 = result7788 := by
  rw [tree7788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7786_eq
  unfold live7786 coloured7786 at child
  try dsimp only [live7788, coloured7788]
  rw [child]
  dsimp only [result7786]
  have child := node7787_eq
  unfold live7787 coloured7787 at child
  try dsimp only [live7788, coloured7788]
  rw [child]
  dsimp only [result7787]
  try dsimp only [colour, result7788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7789_agree : tree7789 = literal7789 := by
  rw [tree7789_def]
  rfl
theorem node7789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7789 live7789 coloured7789 = result7789 := by
  rw [tree7789_def]
  try dsimp only [colour, result7789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7790_agree : tree7790 = literal7790 := by
  rw [tree7790_def, tree7788_agree, tree7789_agree]
  rfl
theorem node7790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7790 live7790 coloured7790 = result7790 := by
  rw [tree7790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7788_eq
  unfold live7788 coloured7788 at child
  try dsimp only [live7790, coloured7790]
  rw [child]
  dsimp only [result7788]
  have child := node7789_eq
  unfold live7789 coloured7789 at child
  try dsimp only [live7790, coloured7790]
  rw [child]
  dsimp only [result7789]
  try dsimp only [colour, result7790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7791_agree : tree7791 = literal7791 := by
  rw [tree7791_def]
  rfl
theorem node7791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7791 live7791 coloured7791 = result7791 := by
  rw [tree7791_def]
  try dsimp only [colour, result7791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7792_agree : tree7792 = literal7792 := by
  rw [tree7792_def, tree7790_agree, tree7791_agree]
  rfl
theorem node7792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7792 live7792 coloured7792 = result7792 := by
  rw [tree7792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7790_eq
  unfold live7790 coloured7790 at child
  try dsimp only [live7792, coloured7792]
  rw [child]
  dsimp only [result7790]
  have child := node7791_eq
  unfold live7791 coloured7791 at child
  try dsimp only [live7792, coloured7792]
  rw [child]
  dsimp only [result7791]
  try dsimp only [colour, result7792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7793_agree : tree7793 = literal7793 := by
  rw [tree7793_def]
  rfl
theorem node7793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7793 live7793 coloured7793 = result7793 := by
  rw [tree7793_def]
  try dsimp only [colour, result7793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7794_agree : tree7794 = literal7794 := by
  rw [tree7794_def, tree7792_agree, tree7793_agree]
  rfl
theorem node7794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7794 live7794 coloured7794 = result7794 := by
  rw [tree7794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7792_eq
  unfold live7792 coloured7792 at child
  try dsimp only [live7794, coloured7794]
  rw [child]
  dsimp only [result7792]
  have child := node7793_eq
  unfold live7793 coloured7793 at child
  try dsimp only [live7794, coloured7794]
  rw [child]
  dsimp only [result7793]
  try dsimp only [colour, result7794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7795_agree : tree7795 = literal7795 := by
  rw [tree7795_def]
  rfl
theorem node7795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7795 live7795 coloured7795 = result7795 := by
  rw [tree7795_def]
  try dsimp only [colour, result7795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7796_agree : tree7796 = literal7796 := by
  rw [tree7796_def, tree7794_agree, tree7795_agree]
  rfl
theorem node7796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7796 live7796 coloured7796 = result7796 := by
  rw [tree7796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7794_eq
  unfold live7794 coloured7794 at child
  try dsimp only [live7796, coloured7796]
  rw [child]
  dsimp only [result7794]
  have child := node7795_eq
  unfold live7795 coloured7795 at child
  try dsimp only [live7796, coloured7796]
  rw [child]
  dsimp only [result7795]
  try dsimp only [colour, result7796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7797_agree : tree7797 = literal7797 := by
  rw [tree7797_def]
  rfl
theorem node7797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7797 live7797 coloured7797 = result7797 := by
  rw [tree7797_def]
  try dsimp only [colour, result7797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7798_agree : tree7798 = literal7798 := by
  rw [tree7798_def, tree7796_agree, tree7797_agree]
  rfl
theorem node7798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7798 live7798 coloured7798 = result7798 := by
  rw [tree7798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7796_eq
  unfold live7796 coloured7796 at child
  try dsimp only [live7798, coloured7798]
  rw [child]
  dsimp only [result7796]
  have child := node7797_eq
  unfold live7797 coloured7797 at child
  try dsimp only [live7798, coloured7798]
  rw [child]
  dsimp only [result7797]
  try dsimp only [colour, result7798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7799_agree : tree7799 = literal7799 := by
  rw [tree7799_def]
  rfl
theorem node7799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7799 live7799 coloured7799 = result7799 := by
  rw [tree7799_def]
  try dsimp only [colour, result7799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7800_agree : tree7800 = literal7800 := by
  rw [tree7800_def, tree7798_agree, tree7799_agree]
  rfl
theorem node7800_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7800 live7800 coloured7800 = result7800 := by
  rw [tree7800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7798_eq
  unfold live7798 coloured7798 at child
  try dsimp only [live7800, coloured7800]
  rw [child]
  dsimp only [result7798]
  have child := node7799_eq
  unfold live7799 coloured7799 at child
  try dsimp only [live7800, coloured7800]
  rw [child]
  dsimp only [result7799]
  try dsimp only [colour, result7800]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7801_agree : tree7801 = literal7801 := by
  rw [tree7801_def]
  rfl
theorem node7801_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7801 live7801 coloured7801 = result7801 := by
  rw [tree7801_def]
  try dsimp only [colour, result7801]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7802_agree : tree7802 = literal7802 := by
  rw [tree7802_def, tree7800_agree, tree7801_agree]
  rfl
theorem node7802_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7802 live7802 coloured7802 = result7802 := by
  rw [tree7802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7800_eq
  unfold live7800 coloured7800 at child
  try dsimp only [live7802, coloured7802]
  rw [child]
  dsimp only [result7800]
  have child := node7801_eq
  unfold live7801 coloured7801 at child
  try dsimp only [live7802, coloured7802]
  rw [child]
  dsimp only [result7801]
  try dsimp only [colour, result7802]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7803_agree : tree7803 = literal7803 := by
  rw [tree7803_def]
  rfl
theorem node7803_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7803 live7803 coloured7803 = result7803 := by
  rw [tree7803_def]
  try dsimp only [colour, result7803]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7804_agree : tree7804 = literal7804 := by
  rw [tree7804_def, tree7802_agree, tree7803_agree]
  rfl
theorem node7804_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7804 live7804 coloured7804 = result7804 := by
  rw [tree7804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7802_eq
  unfold live7802 coloured7802 at child
  try dsimp only [live7804, coloured7804]
  rw [child]
  dsimp only [result7802]
  have child := node7803_eq
  unfold live7803 coloured7803 at child
  try dsimp only [live7804, coloured7804]
  rw [child]
  dsimp only [result7803]
  try dsimp only [colour, result7804]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7805_agree : tree7805 = literal7805 := by
  rw [tree7805_def]
  rfl
theorem node7805_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7805 live7805 coloured7805 = result7805 := by
  rw [tree7805_def]
  try dsimp only [colour, result7805]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7806_agree : tree7806 = literal7806 := by
  rw [tree7806_def, tree7804_agree, tree7805_agree]
  rfl
theorem node7806_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7806 live7806 coloured7806 = result7806 := by
  rw [tree7806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7804_eq
  unfold live7804 coloured7804 at child
  try dsimp only [live7806, coloured7806]
  rw [child]
  dsimp only [result7804]
  have child := node7805_eq
  unfold live7805 coloured7805 at child
  try dsimp only [live7806, coloured7806]
  rw [child]
  dsimp only [result7805]
  try dsimp only [colour, result7806]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7807_agree : tree7807 = literal7807 := by
  rw [tree7807_def]
  rfl
theorem node7807_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7807 live7807 coloured7807 = result7807 := by
  rw [tree7807_def]
  try dsimp only [colour, result7807]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7808_agree : tree7808 = literal7808 := by
  rw [tree7808_def, tree7806_agree, tree7807_agree]
  rfl
theorem node7808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7808 live7808 coloured7808 = result7808 := by
  rw [tree7808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7806_eq
  unfold live7806 coloured7806 at child
  try dsimp only [live7808, coloured7808]
  rw [child]
  dsimp only [result7806]
  have child := node7807_eq
  unfold live7807 coloured7807 at child
  try dsimp only [live7808, coloured7808]
  rw [child]
  dsimp only [result7807]
  try dsimp only [colour, result7808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7809_agree : tree7809 = literal7809 := by
  rw [tree7809_def]
  rfl
theorem node7809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7809 live7809 coloured7809 = result7809 := by
  rw [tree7809_def]
  try dsimp only [colour, result7809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7810_agree : tree7810 = literal7810 := by
  rw [tree7810_def, tree7808_agree, tree7809_agree]
  rfl
theorem node7810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7810 live7810 coloured7810 = result7810 := by
  rw [tree7810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7808_eq
  unfold live7808 coloured7808 at child
  try dsimp only [live7810, coloured7810]
  rw [child]
  dsimp only [result7808]
  have child := node7809_eq
  unfold live7809 coloured7809 at child
  try dsimp only [live7810, coloured7810]
  rw [child]
  dsimp only [result7809]
  try dsimp only [colour, result7810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7811_agree : tree7811 = literal7811 := by
  rw [tree7811_def]
  rfl
theorem node7811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7811 live7811 coloured7811 = result7811 := by
  rw [tree7811_def]
  try dsimp only [colour, result7811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7812_agree : tree7812 = literal7812 := by
  rw [tree7812_def, tree7810_agree, tree7811_agree]
  rfl
theorem node7812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7812 live7812 coloured7812 = result7812 := by
  rw [tree7812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7810_eq
  unfold live7810 coloured7810 at child
  try dsimp only [live7812, coloured7812]
  rw [child]
  dsimp only [result7810]
  have child := node7811_eq
  unfold live7811 coloured7811 at child
  try dsimp only [live7812, coloured7812]
  rw [child]
  dsimp only [result7811]
  try dsimp only [colour, result7812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7813_agree : tree7813 = literal7813 := by
  rw [tree7813_def]
  rfl
theorem node7813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7813 live7813 coloured7813 = result7813 := by
  rw [tree7813_def]
  try dsimp only [colour, result7813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7814_agree : tree7814 = literal7814 := by
  rw [tree7814_def, tree7812_agree, tree7813_agree]
  rfl
theorem node7814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7814 live7814 coloured7814 = result7814 := by
  rw [tree7814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7812_eq
  unfold live7812 coloured7812 at child
  try dsimp only [live7814, coloured7814]
  rw [child]
  dsimp only [result7812]
  have child := node7813_eq
  unfold live7813 coloured7813 at child
  try dsimp only [live7814, coloured7814]
  rw [child]
  dsimp only [result7813]
  try dsimp only [colour, result7814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7815_agree : tree7815 = literal7815 := by
  rw [tree7815_def]
  rfl
theorem node7815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7815 live7815 coloured7815 = result7815 := by
  rw [tree7815_def]
  try dsimp only [colour, result7815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7816_agree : tree7816 = literal7816 := by
  rw [tree7816_def, tree7814_agree, tree7815_agree]
  rfl
theorem node7816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7816 live7816 coloured7816 = result7816 := by
  rw [tree7816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7814_eq
  unfold live7814 coloured7814 at child
  try dsimp only [live7816, coloured7816]
  rw [child]
  dsimp only [result7814]
  have child := node7815_eq
  unfold live7815 coloured7815 at child
  try dsimp only [live7816, coloured7816]
  rw [child]
  dsimp only [result7815]
  try dsimp only [colour, result7816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7817_agree : tree7817 = literal7817 := by
  rw [tree7817_def]
  rfl
theorem node7817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7817 live7817 coloured7817 = result7817 := by
  rw [tree7817_def]
  try dsimp only [colour, result7817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7818_agree : tree7818 = literal7818 := by
  rw [tree7818_def, tree7816_agree, tree7817_agree]
  rfl
theorem node7818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7818 live7818 coloured7818 = result7818 := by
  rw [tree7818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7816_eq
  unfold live7816 coloured7816 at child
  try dsimp only [live7818, coloured7818]
  rw [child]
  dsimp only [result7816]
  have child := node7817_eq
  unfold live7817 coloured7817 at child
  try dsimp only [live7818, coloured7818]
  rw [child]
  dsimp only [result7817]
  try dsimp only [colour, result7818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7819_agree : tree7819 = literal7819 := by
  rw [tree7819_def]
  rfl
theorem node7819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7819 live7819 coloured7819 = result7819 := by
  rw [tree7819_def]
  try dsimp only [colour, result7819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7820_agree : tree7820 = literal7820 := by
  rw [tree7820_def, tree7818_agree, tree7819_agree]
  rfl
theorem node7820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7820 live7820 coloured7820 = result7820 := by
  rw [tree7820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7818_eq
  unfold live7818 coloured7818 at child
  try dsimp only [live7820, coloured7820]
  rw [child]
  dsimp only [result7818]
  have child := node7819_eq
  unfold live7819 coloured7819 at child
  try dsimp only [live7820, coloured7820]
  rw [child]
  dsimp only [result7819]
  try dsimp only [colour, result7820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7821_agree : tree7821 = literal7821 := by
  rw [tree7821_def]
  rfl
theorem node7821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7821 live7821 coloured7821 = result7821 := by
  rw [tree7821_def]
  try dsimp only [colour, result7821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7822_agree : tree7822 = literal7822 := by
  rw [tree7822_def, tree7820_agree, tree7821_agree]
  rfl
theorem node7822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7822 live7822 coloured7822 = result7822 := by
  rw [tree7822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7820_eq
  unfold live7820 coloured7820 at child
  try dsimp only [live7822, coloured7822]
  rw [child]
  dsimp only [result7820]
  have child := node7821_eq
  unfold live7821 coloured7821 at child
  try dsimp only [live7822, coloured7822]
  rw [child]
  dsimp only [result7821]
  try dsimp only [colour, result7822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7823_agree : tree7823 = literal7823 := by
  rw [tree7823_def]
  rfl
theorem node7823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7823 live7823 coloured7823 = result7823 := by
  rw [tree7823_def]
  try dsimp only [colour, result7823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7824_agree : tree7824 = literal7824 := by
  rw [tree7824_def, tree7822_agree, tree7823_agree]
  rfl
theorem node7824_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7824 live7824 coloured7824 = result7824 := by
  rw [tree7824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7822_eq
  unfold live7822 coloured7822 at child
  try dsimp only [live7824, coloured7824]
  rw [child]
  dsimp only [result7822]
  have child := node7823_eq
  unfold live7823 coloured7823 at child
  try dsimp only [live7824, coloured7824]
  rw [child]
  dsimp only [result7823]
  try dsimp only [colour, result7824]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7825_agree : tree7825 = literal7825 := by
  rw [tree7825_def]
  rfl
theorem node7825_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7825 live7825 coloured7825 = result7825 := by
  rw [tree7825_def]
  try dsimp only [colour, result7825]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7826_agree : tree7826 = literal7826 := by
  rw [tree7826_def, tree7824_agree, tree7825_agree]
  rfl
theorem node7826_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7826 live7826 coloured7826 = result7826 := by
  rw [tree7826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7824_eq
  unfold live7824 coloured7824 at child
  try dsimp only [live7826, coloured7826]
  rw [child]
  dsimp only [result7824]
  have child := node7825_eq
  unfold live7825 coloured7825 at child
  try dsimp only [live7826, coloured7826]
  rw [child]
  dsimp only [result7825]
  try dsimp only [colour, result7826]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7827_agree : tree7827 = literal7827 := by
  rw [tree7827_def]
  rfl
theorem node7827_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7827 live7827 coloured7827 = result7827 := by
  rw [tree7827_def]
  try dsimp only [colour, result7827]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7828_agree : tree7828 = literal7828 := by
  rw [tree7828_def, tree7826_agree, tree7827_agree]
  rfl
theorem node7828_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7828 live7828 coloured7828 = result7828 := by
  rw [tree7828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7826_eq
  unfold live7826 coloured7826 at child
  try dsimp only [live7828, coloured7828]
  rw [child]
  dsimp only [result7826]
  have child := node7827_eq
  unfold live7827 coloured7827 at child
  try dsimp only [live7828, coloured7828]
  rw [child]
  dsimp only [result7827]
  try dsimp only [colour, result7828]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7829_agree : tree7829 = literal7829 := by
  rw [tree7829_def]
  rfl
theorem node7829_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7829 live7829 coloured7829 = result7829 := by
  rw [tree7829_def]
  try dsimp only [colour, result7829]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7830_agree : tree7830 = literal7830 := by
  rw [tree7830_def, tree7828_agree, tree7829_agree]
  rfl
theorem node7830_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7830 live7830 coloured7830 = result7830 := by
  rw [tree7830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7828_eq
  unfold live7828 coloured7828 at child
  try dsimp only [live7830, coloured7830]
  rw [child]
  dsimp only [result7828]
  have child := node7829_eq
  unfold live7829 coloured7829 at child
  try dsimp only [live7830, coloured7830]
  rw [child]
  dsimp only [result7829]
  try dsimp only [colour, result7830]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7831_agree : tree7831 = literal7831 := by
  rw [tree7831_def]
  rfl
theorem node7831_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7831 live7831 coloured7831 = result7831 := by
  rw [tree7831_def]
  try dsimp only [colour, result7831]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7832_agree : tree7832 = literal7832 := by
  rw [tree7832_def, tree7830_agree, tree7831_agree]
  rfl
theorem node7832_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7832 live7832 coloured7832 = result7832 := by
  rw [tree7832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7830_eq
  unfold live7830 coloured7830 at child
  try dsimp only [live7832, coloured7832]
  rw [child]
  dsimp only [result7830]
  have child := node7831_eq
  unfold live7831 coloured7831 at child
  try dsimp only [live7832, coloured7832]
  rw [child]
  dsimp only [result7831]
  try dsimp only [colour, result7832]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7833_agree : tree7833 = literal7833 := by
  rw [tree7833_def]
  rfl
theorem node7833_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7833 live7833 coloured7833 = result7833 := by
  rw [tree7833_def]
  try dsimp only [colour, result7833]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7834_agree : tree7834 = literal7834 := by
  rw [tree7834_def, tree7832_agree, tree7833_agree]
  rfl
theorem node7834_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7834 live7834 coloured7834 = result7834 := by
  rw [tree7834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7832_eq
  unfold live7832 coloured7832 at child
  try dsimp only [live7834, coloured7834]
  rw [child]
  dsimp only [result7832]
  have child := node7833_eq
  unfold live7833 coloured7833 at child
  try dsimp only [live7834, coloured7834]
  rw [child]
  dsimp only [result7833]
  try dsimp only [colour, result7834]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7835_agree : tree7835 = literal7835 := by
  rw [tree7835_def]
  rfl
theorem node7835_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7835 live7835 coloured7835 = result7835 := by
  rw [tree7835_def]
  try dsimp only [colour, result7835]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7836_agree : tree7836 = literal7836 := by
  rw [tree7836_def, tree7834_agree, tree7835_agree]
  rfl
theorem node7836_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7836 live7836 coloured7836 = result7836 := by
  rw [tree7836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7834_eq
  unfold live7834 coloured7834 at child
  try dsimp only [live7836, coloured7836]
  rw [child]
  dsimp only [result7834]
  have child := node7835_eq
  unfold live7835 coloured7835 at child
  try dsimp only [live7836, coloured7836]
  rw [child]
  dsimp only [result7835]
  try dsimp only [colour, result7836]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7837_agree : tree7837 = literal7837 := by
  rw [tree7837_def]
  rfl
theorem node7837_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7837 live7837 coloured7837 = result7837 := by
  rw [tree7837_def]
  try dsimp only [colour, result7837]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7838_agree : tree7838 = literal7838 := by
  rw [tree7838_def, tree7836_agree, tree7837_agree]
  rfl
theorem node7838_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7838 live7838 coloured7838 = result7838 := by
  rw [tree7838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7836_eq
  unfold live7836 coloured7836 at child
  try dsimp only [live7838, coloured7838]
  rw [child]
  dsimp only [result7836]
  have child := node7837_eq
  unfold live7837 coloured7837 at child
  try dsimp only [live7838, coloured7838]
  rw [child]
  dsimp only [result7837]
  try dsimp only [colour, result7838]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7839_agree : tree7839 = literal7839 := by
  rw [tree7839_def]
  rfl
theorem node7839_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7839 live7839 coloured7839 = result7839 := by
  rw [tree7839_def]
  try dsimp only [colour, result7839]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7840_agree : tree7840 = literal7840 := by
  rw [tree7840_def, tree7838_agree, tree7839_agree]
  rfl
theorem node7840_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7840 live7840 coloured7840 = result7840 := by
  rw [tree7840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7838_eq
  unfold live7838 coloured7838 at child
  try dsimp only [live7840, coloured7840]
  rw [child]
  dsimp only [result7838]
  have child := node7839_eq
  unfold live7839 coloured7839 at child
  try dsimp only [live7840, coloured7840]
  rw [child]
  dsimp only [result7839]
  try dsimp only [colour, result7840]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7841_agree : tree7841 = literal7841 := by
  rw [tree7841_def]
  rfl
theorem node7841_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7841 live7841 coloured7841 = result7841 := by
  rw [tree7841_def]
  try dsimp only [colour, result7841]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7842_agree : tree7842 = literal7842 := by
  rw [tree7842_def, tree7840_agree, tree7841_agree]
  rfl
theorem node7842_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7842 live7842 coloured7842 = result7842 := by
  rw [tree7842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7840_eq
  unfold live7840 coloured7840 at child
  try dsimp only [live7842, coloured7842]
  rw [child]
  dsimp only [result7840]
  have child := node7841_eq
  unfold live7841 coloured7841 at child
  try dsimp only [live7842, coloured7842]
  rw [child]
  dsimp only [result7841]
  try dsimp only [colour, result7842]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7843_agree : tree7843 = literal7843 := by
  rw [tree7843_def]
  rfl
theorem node7843_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7843 live7843 coloured7843 = result7843 := by
  rw [tree7843_def]
  try dsimp only [colour, result7843]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7844_agree : tree7844 = literal7844 := by
  rw [tree7844_def, tree7842_agree, tree7843_agree]
  rfl
theorem node7844_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7844 live7844 coloured7844 = result7844 := by
  rw [tree7844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7842_eq
  unfold live7842 coloured7842 at child
  try dsimp only [live7844, coloured7844]
  rw [child]
  dsimp only [result7842]
  have child := node7843_eq
  unfold live7843 coloured7843 at child
  try dsimp only [live7844, coloured7844]
  rw [child]
  dsimp only [result7843]
  try dsimp only [colour, result7844]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7845_agree : tree7845 = literal7845 := by
  rw [tree7845_def]
  rfl
theorem node7845_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7845 live7845 coloured7845 = result7845 := by
  rw [tree7845_def]
  try dsimp only [colour, result7845]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7846_agree : tree7846 = literal7846 := by
  rw [tree7846_def, tree7844_agree, tree7845_agree]
  rfl
theorem node7846_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7846 live7846 coloured7846 = result7846 := by
  rw [tree7846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7844_eq
  unfold live7844 coloured7844 at child
  try dsimp only [live7846, coloured7846]
  rw [child]
  dsimp only [result7844]
  have child := node7845_eq
  unfold live7845 coloured7845 at child
  try dsimp only [live7846, coloured7846]
  rw [child]
  dsimp only [result7845]
  try dsimp only [colour, result7846]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7847_agree : tree7847 = literal7847 := by
  rw [tree7847_def]
  rfl
theorem node7847_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7847 live7847 coloured7847 = result7847 := by
  rw [tree7847_def]
  try dsimp only [colour, result7847]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7848_agree : tree7848 = literal7848 := by
  rw [tree7848_def, tree7846_agree, tree7847_agree]
  rfl
theorem node7848_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7848 live7848 coloured7848 = result7848 := by
  rw [tree7848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7846_eq
  unfold live7846 coloured7846 at child
  try dsimp only [live7848, coloured7848]
  rw [child]
  dsimp only [result7846]
  have child := node7847_eq
  unfold live7847 coloured7847 at child
  try dsimp only [live7848, coloured7848]
  rw [child]
  dsimp only [result7847]
  try dsimp only [colour, result7848]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7849_agree : tree7849 = literal7849 := by
  rw [tree7849_def]
  rfl
theorem node7849_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7849 live7849 coloured7849 = result7849 := by
  rw [tree7849_def]
  try dsimp only [colour, result7849]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7850_agree : tree7850 = literal7850 := by
  rw [tree7850_def, tree7848_agree, tree7849_agree]
  rfl
theorem node7850_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7850 live7850 coloured7850 = result7850 := by
  rw [tree7850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7848_eq
  unfold live7848 coloured7848 at child
  try dsimp only [live7850, coloured7850]
  rw [child]
  dsimp only [result7848]
  have child := node7849_eq
  unfold live7849 coloured7849 at child
  try dsimp only [live7850, coloured7850]
  rw [child]
  dsimp only [result7849]
  try dsimp only [colour, result7850]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7851_agree : tree7851 = literal7851 := by
  rw [tree7851_def]
  rfl
theorem node7851_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7851 live7851 coloured7851 = result7851 := by
  rw [tree7851_def]
  try dsimp only [colour, result7851]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7852_agree : tree7852 = literal7852 := by
  rw [tree7852_def, tree7850_agree, tree7851_agree]
  rfl
theorem node7852_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7852 live7852 coloured7852 = result7852 := by
  rw [tree7852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7850_eq
  unfold live7850 coloured7850 at child
  try dsimp only [live7852, coloured7852]
  rw [child]
  dsimp only [result7850]
  have child := node7851_eq
  unfold live7851 coloured7851 at child
  try dsimp only [live7852, coloured7852]
  rw [child]
  dsimp only [result7851]
  try dsimp only [colour, result7852]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7853_agree : tree7853 = literal7853 := by
  rw [tree7853_def]
  rfl
theorem node7853_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7853 live7853 coloured7853 = result7853 := by
  rw [tree7853_def]
  try dsimp only [colour, result7853]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7854_agree : tree7854 = literal7854 := by
  rw [tree7854_def, tree7852_agree, tree7853_agree]
  rfl
theorem node7854_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7854 live7854 coloured7854 = result7854 := by
  rw [tree7854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7852_eq
  unfold live7852 coloured7852 at child
  try dsimp only [live7854, coloured7854]
  rw [child]
  dsimp only [result7852]
  have child := node7853_eq
  unfold live7853 coloured7853 at child
  try dsimp only [live7854, coloured7854]
  rw [child]
  dsimp only [result7853]
  try dsimp only [colour, result7854]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7855_agree : tree7855 = literal7855 := by
  rw [tree7855_def]
  rfl
theorem node7855_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7855 live7855 coloured7855 = result7855 := by
  rw [tree7855_def]
  try dsimp only [colour, result7855]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7856_agree : tree7856 = literal7856 := by
  rw [tree7856_def, tree7854_agree, tree7855_agree]
  rfl
theorem node7856_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7856 live7856 coloured7856 = result7856 := by
  rw [tree7856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7854_eq
  unfold live7854 coloured7854 at child
  try dsimp only [live7856, coloured7856]
  rw [child]
  dsimp only [result7854]
  have child := node7855_eq
  unfold live7855 coloured7855 at child
  try dsimp only [live7856, coloured7856]
  rw [child]
  dsimp only [result7855]
  try dsimp only [colour, result7856]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7857_agree : tree7857 = literal7857 := by
  rw [tree7857_def]
  rfl
theorem node7857_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7857 live7857 coloured7857 = result7857 := by
  rw [tree7857_def]
  try dsimp only [colour, result7857]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7858_agree : tree7858 = literal7858 := by
  rw [tree7858_def, tree7856_agree, tree7857_agree]
  rfl
theorem node7858_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7858 live7858 coloured7858 = result7858 := by
  rw [tree7858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7856_eq
  unfold live7856 coloured7856 at child
  try dsimp only [live7858, coloured7858]
  rw [child]
  dsimp only [result7856]
  have child := node7857_eq
  unfold live7857 coloured7857 at child
  try dsimp only [live7858, coloured7858]
  rw [child]
  dsimp only [result7857]
  try dsimp only [colour, result7858]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7859_agree : tree7859 = literal7859 := by
  rw [tree7859_def]
  rfl
theorem node7859_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7859 live7859 coloured7859 = result7859 := by
  rw [tree7859_def]
  try dsimp only [colour, result7859]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7860_agree : tree7860 = literal7860 := by
  rw [tree7860_def, tree7858_agree, tree7859_agree]
  rfl
theorem node7860_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7860 live7860 coloured7860 = result7860 := by
  rw [tree7860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7858_eq
  unfold live7858 coloured7858 at child
  try dsimp only [live7860, coloured7860]
  rw [child]
  dsimp only [result7858]
  have child := node7859_eq
  unfold live7859 coloured7859 at child
  try dsimp only [live7860, coloured7860]
  rw [child]
  dsimp only [result7859]
  try dsimp only [colour, result7860]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7861_agree : tree7861 = literal7861 := by
  rw [tree7861_def]
  rfl
theorem node7861_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7861 live7861 coloured7861 = result7861 := by
  rw [tree7861_def]
  try dsimp only [colour, result7861]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7862_agree : tree7862 = literal7862 := by
  rw [tree7862_def, tree7860_agree, tree7861_agree]
  rfl
theorem node7862_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7862 live7862 coloured7862 = result7862 := by
  rw [tree7862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7860_eq
  unfold live7860 coloured7860 at child
  try dsimp only [live7862, coloured7862]
  rw [child]
  dsimp only [result7860]
  have child := node7861_eq
  unfold live7861 coloured7861 at child
  try dsimp only [live7862, coloured7862]
  rw [child]
  dsimp only [result7861]
  try dsimp only [colour, result7862]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7863_agree : tree7863 = literal7863 := by
  rw [tree7863_def]
  rfl
theorem node7863_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7863 live7863 coloured7863 = result7863 := by
  rw [tree7863_def]
  try dsimp only [colour, result7863]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7864_agree : tree7864 = literal7864 := by
  rw [tree7864_def, tree7862_agree, tree7863_agree]
  rfl
theorem node7864_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7864 live7864 coloured7864 = result7864 := by
  rw [tree7864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7862_eq
  unfold live7862 coloured7862 at child
  try dsimp only [live7864, coloured7864]
  rw [child]
  dsimp only [result7862]
  have child := node7863_eq
  unfold live7863 coloured7863 at child
  try dsimp only [live7864, coloured7864]
  rw [child]
  dsimp only [result7863]
  try dsimp only [colour, result7864]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7865_agree : tree7865 = literal7865 := by
  rw [tree7865_def]
  rfl
theorem node7865_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7865 live7865 coloured7865 = result7865 := by
  rw [tree7865_def]
  try dsimp only [colour, result7865]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7866_agree : tree7866 = literal7866 := by
  rw [tree7866_def, tree7864_agree, tree7865_agree]
  rfl
theorem node7866_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7866 live7866 coloured7866 = result7866 := by
  rw [tree7866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7864_eq
  unfold live7864 coloured7864 at child
  try dsimp only [live7866, coloured7866]
  rw [child]
  dsimp only [result7864]
  have child := node7865_eq
  unfold live7865 coloured7865 at child
  try dsimp only [live7866, coloured7866]
  rw [child]
  dsimp only [result7865]
  try dsimp only [colour, result7866]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7867_agree : tree7867 = literal7867 := by
  rw [tree7867_def]
  rfl
theorem node7867_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7867 live7867 coloured7867 = result7867 := by
  rw [tree7867_def]
  try dsimp only [colour, result7867]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7868_agree : tree7868 = literal7868 := by
  rw [tree7868_def, tree7866_agree, tree7867_agree]
  rfl
theorem node7868_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7868 live7868 coloured7868 = result7868 := by
  rw [tree7868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7866_eq
  unfold live7866 coloured7866 at child
  try dsimp only [live7868, coloured7868]
  rw [child]
  dsimp only [result7866]
  have child := node7867_eq
  unfold live7867 coloured7867 at child
  try dsimp only [live7868, coloured7868]
  rw [child]
  dsimp only [result7867]
  try dsimp only [colour, result7868]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7869_agree : tree7869 = literal7869 := by
  rw [tree7869_def]
  rfl
theorem node7869_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7869 live7869 coloured7869 = result7869 := by
  rw [tree7869_def]
  try dsimp only [colour, result7869]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7870_agree : tree7870 = literal7870 := by
  rw [tree7870_def, tree7868_agree, tree7869_agree]
  rfl
theorem node7870_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7870 live7870 coloured7870 = result7870 := by
  rw [tree7870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7868_eq
  unfold live7868 coloured7868 at child
  try dsimp only [live7870, coloured7870]
  rw [child]
  dsimp only [result7868]
  have child := node7869_eq
  unfold live7869 coloured7869 at child
  try dsimp only [live7870, coloured7870]
  rw [child]
  dsimp only [result7869]
  try dsimp only [colour, result7870]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7871_agree : tree7871 = literal7871 := by
  rw [tree7871_def]
  rfl
theorem node7871_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7871 live7871 coloured7871 = result7871 := by
  rw [tree7871_def]
  try dsimp only [colour, result7871]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
