import InitECandidate.Proofs.ClashStages713.Proof70
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree6816_agree : tree6816 = literal6816 := by
  rw [tree6816_def, tree6814_agree, tree6815_agree]
  rfl
theorem node6816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6816 live6816 coloured6816 = result6816 := by
  rw [tree6816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6814_eq
  unfold live6814 coloured6814 at child
  try dsimp only [live6816, coloured6816]
  rw [child]
  dsimp only [result6814]
  have child := node6815_eq
  unfold live6815 coloured6815 at child
  try dsimp only [live6816, coloured6816]
  rw [child]
  dsimp only [result6815]
  try dsimp only [colour, result6816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6817_agree : tree6817 = literal6817 := by
  rw [tree6817_def]
  rfl
theorem node6817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6817 live6817 coloured6817 = result6817 := by
  rw [tree6817_def]
  try dsimp only [colour, result6817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6818_agree : tree6818 = literal6818 := by
  rw [tree6818_def, tree6816_agree, tree6817_agree]
  rfl
theorem node6818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6818 live6818 coloured6818 = result6818 := by
  rw [tree6818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6816_eq
  unfold live6816 coloured6816 at child
  try dsimp only [live6818, coloured6818]
  rw [child]
  dsimp only [result6816]
  have child := node6817_eq
  unfold live6817 coloured6817 at child
  try dsimp only [live6818, coloured6818]
  rw [child]
  dsimp only [result6817]
  try dsimp only [colour, result6818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6819_agree : tree6819 = literal6819 := by
  rw [tree6819_def]
  rfl
theorem node6819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6819 live6819 coloured6819 = result6819 := by
  rw [tree6819_def]
  try dsimp only [colour, result6819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6820_agree : tree6820 = literal6820 := by
  rw [tree6820_def, tree6818_agree, tree6819_agree]
  rfl
theorem node6820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6820 live6820 coloured6820 = result6820 := by
  rw [tree6820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6818_eq
  unfold live6818 coloured6818 at child
  try dsimp only [live6820, coloured6820]
  rw [child]
  dsimp only [result6818]
  have child := node6819_eq
  unfold live6819 coloured6819 at child
  try dsimp only [live6820, coloured6820]
  rw [child]
  dsimp only [result6819]
  try dsimp only [colour, result6820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6821_agree : tree6821 = literal6821 := by
  rw [tree6821_def]
  rfl
theorem node6821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6821 live6821 coloured6821 = result6821 := by
  rw [tree6821_def]
  try dsimp only [colour, result6821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6822_agree : tree6822 = literal6822 := by
  rw [tree6822_def, tree6820_agree, tree6821_agree]
  rfl
theorem node6822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6822 live6822 coloured6822 = result6822 := by
  rw [tree6822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6820_eq
  unfold live6820 coloured6820 at child
  try dsimp only [live6822, coloured6822]
  rw [child]
  dsimp only [result6820]
  have child := node6821_eq
  unfold live6821 coloured6821 at child
  try dsimp only [live6822, coloured6822]
  rw [child]
  dsimp only [result6821]
  try dsimp only [colour, result6822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6823_agree : tree6823 = literal6823 := by
  rw [tree6823_def]
  rfl
theorem node6823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6823 live6823 coloured6823 = result6823 := by
  rw [tree6823_def]
  try dsimp only [colour, result6823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6824_agree : tree6824 = literal6824 := by
  rw [tree6824_def, tree6822_agree, tree6823_agree]
  rfl
theorem node6824_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6824 live6824 coloured6824 = result6824 := by
  rw [tree6824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6822_eq
  unfold live6822 coloured6822 at child
  try dsimp only [live6824, coloured6824]
  rw [child]
  dsimp only [result6822]
  have child := node6823_eq
  unfold live6823 coloured6823 at child
  try dsimp only [live6824, coloured6824]
  rw [child]
  dsimp only [result6823]
  try dsimp only [colour, result6824]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6825_agree : tree6825 = literal6825 := by
  rw [tree6825_def]
  rfl
theorem node6825_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6825 live6825 coloured6825 = result6825 := by
  rw [tree6825_def]
  try dsimp only [colour, result6825]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6826_agree : tree6826 = literal6826 := by
  rw [tree6826_def, tree6824_agree, tree6825_agree]
  rfl
theorem node6826_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6826 live6826 coloured6826 = result6826 := by
  rw [tree6826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6824_eq
  unfold live6824 coloured6824 at child
  try dsimp only [live6826, coloured6826]
  rw [child]
  dsimp only [result6824]
  have child := node6825_eq
  unfold live6825 coloured6825 at child
  try dsimp only [live6826, coloured6826]
  rw [child]
  dsimp only [result6825]
  try dsimp only [colour, result6826]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6827_agree : tree6827 = literal6827 := by
  rw [tree6827_def]
  rfl
theorem node6827_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6827 live6827 coloured6827 = result6827 := by
  rw [tree6827_def]
  try dsimp only [colour, result6827]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6828_agree : tree6828 = literal6828 := by
  rw [tree6828_def, tree6826_agree, tree6827_agree]
  rfl
theorem node6828_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6828 live6828 coloured6828 = result6828 := by
  rw [tree6828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6826_eq
  unfold live6826 coloured6826 at child
  try dsimp only [live6828, coloured6828]
  rw [child]
  dsimp only [result6826]
  have child := node6827_eq
  unfold live6827 coloured6827 at child
  try dsimp only [live6828, coloured6828]
  rw [child]
  dsimp only [result6827]
  try dsimp only [colour, result6828]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6829_agree : tree6829 = literal6829 := by
  rw [tree6829_def]
  rfl
theorem node6829_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6829 live6829 coloured6829 = result6829 := by
  rw [tree6829_def]
  try dsimp only [colour, result6829]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6830_agree : tree6830 = literal6830 := by
  rw [tree6830_def, tree6828_agree, tree6829_agree]
  rfl
theorem node6830_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6830 live6830 coloured6830 = result6830 := by
  rw [tree6830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6828_eq
  unfold live6828 coloured6828 at child
  try dsimp only [live6830, coloured6830]
  rw [child]
  dsimp only [result6828]
  have child := node6829_eq
  unfold live6829 coloured6829 at child
  try dsimp only [live6830, coloured6830]
  rw [child]
  dsimp only [result6829]
  try dsimp only [colour, result6830]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6831_agree : tree6831 = literal6831 := by
  rw [tree6831_def]
  rfl
theorem node6831_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6831 live6831 coloured6831 = result6831 := by
  rw [tree6831_def]
  try dsimp only [colour, result6831]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6832_agree : tree6832 = literal6832 := by
  rw [tree6832_def, tree6830_agree, tree6831_agree]
  rfl
theorem node6832_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6832 live6832 coloured6832 = result6832 := by
  rw [tree6832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6830_eq
  unfold live6830 coloured6830 at child
  try dsimp only [live6832, coloured6832]
  rw [child]
  dsimp only [result6830]
  have child := node6831_eq
  unfold live6831 coloured6831 at child
  try dsimp only [live6832, coloured6832]
  rw [child]
  dsimp only [result6831]
  try dsimp only [colour, result6832]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6833_agree : tree6833 = literal6833 := by
  rw [tree6833_def]
  rfl
theorem node6833_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6833 live6833 coloured6833 = result6833 := by
  rw [tree6833_def]
  try dsimp only [colour, result6833]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6834_agree : tree6834 = literal6834 := by
  rw [tree6834_def, tree6832_agree, tree6833_agree]
  rfl
theorem node6834_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6834 live6834 coloured6834 = result6834 := by
  rw [tree6834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6832_eq
  unfold live6832 coloured6832 at child
  try dsimp only [live6834, coloured6834]
  rw [child]
  dsimp only [result6832]
  have child := node6833_eq
  unfold live6833 coloured6833 at child
  try dsimp only [live6834, coloured6834]
  rw [child]
  dsimp only [result6833]
  try dsimp only [colour, result6834]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6835_agree : tree6835 = literal6835 := by
  rw [tree6835_def]
  rfl
theorem node6835_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6835 live6835 coloured6835 = result6835 := by
  rw [tree6835_def]
  try dsimp only [colour, result6835]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6836_agree : tree6836 = literal6836 := by
  rw [tree6836_def, tree6834_agree, tree6835_agree]
  rfl
theorem node6836_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6836 live6836 coloured6836 = result6836 := by
  rw [tree6836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6834_eq
  unfold live6834 coloured6834 at child
  try dsimp only [live6836, coloured6836]
  rw [child]
  dsimp only [result6834]
  have child := node6835_eq
  unfold live6835 coloured6835 at child
  try dsimp only [live6836, coloured6836]
  rw [child]
  dsimp only [result6835]
  try dsimp only [colour, result6836]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6837_agree : tree6837 = literal6837 := by
  rw [tree6837_def]
  rfl
theorem node6837_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6837 live6837 coloured6837 = result6837 := by
  rw [tree6837_def]
  try dsimp only [colour, result6837]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6838_agree : tree6838 = literal6838 := by
  rw [tree6838_def, tree6836_agree, tree6837_agree]
  rfl
theorem node6838_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6838 live6838 coloured6838 = result6838 := by
  rw [tree6838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6836_eq
  unfold live6836 coloured6836 at child
  try dsimp only [live6838, coloured6838]
  rw [child]
  dsimp only [result6836]
  have child := node6837_eq
  unfold live6837 coloured6837 at child
  try dsimp only [live6838, coloured6838]
  rw [child]
  dsimp only [result6837]
  try dsimp only [colour, result6838]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6839_agree : tree6839 = literal6839 := by
  rw [tree6839_def]
  rfl
theorem node6839_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6839 live6839 coloured6839 = result6839 := by
  rw [tree6839_def]
  try dsimp only [colour, result6839]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6840_agree : tree6840 = literal6840 := by
  rw [tree6840_def, tree6838_agree, tree6839_agree]
  rfl
theorem node6840_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6840 live6840 coloured6840 = result6840 := by
  rw [tree6840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6838_eq
  unfold live6838 coloured6838 at child
  try dsimp only [live6840, coloured6840]
  rw [child]
  dsimp only [result6838]
  have child := node6839_eq
  unfold live6839 coloured6839 at child
  try dsimp only [live6840, coloured6840]
  rw [child]
  dsimp only [result6839]
  try dsimp only [colour, result6840]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6841_agree : tree6841 = literal6841 := by
  rw [tree6841_def]
  rfl
theorem node6841_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6841 live6841 coloured6841 = result6841 := by
  rw [tree6841_def]
  try dsimp only [colour, result6841]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6842_agree : tree6842 = literal6842 := by
  rw [tree6842_def, tree6840_agree, tree6841_agree]
  rfl
theorem node6842_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6842 live6842 coloured6842 = result6842 := by
  rw [tree6842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6840_eq
  unfold live6840 coloured6840 at child
  try dsimp only [live6842, coloured6842]
  rw [child]
  dsimp only [result6840]
  have child := node6841_eq
  unfold live6841 coloured6841 at child
  try dsimp only [live6842, coloured6842]
  rw [child]
  dsimp only [result6841]
  try dsimp only [colour, result6842]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6843_agree : tree6843 = literal6843 := by
  rw [tree6843_def]
  rfl
theorem node6843_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6843 live6843 coloured6843 = result6843 := by
  rw [tree6843_def]
  try dsimp only [colour, result6843]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6844_agree : tree6844 = literal6844 := by
  rw [tree6844_def, tree6842_agree, tree6843_agree]
  rfl
theorem node6844_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6844 live6844 coloured6844 = result6844 := by
  rw [tree6844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6842_eq
  unfold live6842 coloured6842 at child
  try dsimp only [live6844, coloured6844]
  rw [child]
  dsimp only [result6842]
  have child := node6843_eq
  unfold live6843 coloured6843 at child
  try dsimp only [live6844, coloured6844]
  rw [child]
  dsimp only [result6843]
  try dsimp only [colour, result6844]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6845_agree : tree6845 = literal6845 := by
  rw [tree6845_def]
  rfl
theorem node6845_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6845 live6845 coloured6845 = result6845 := by
  rw [tree6845_def]
  try dsimp only [colour, result6845]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6846_agree : tree6846 = literal6846 := by
  rw [tree6846_def, tree6844_agree, tree6845_agree]
  rfl
theorem node6846_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6846 live6846 coloured6846 = result6846 := by
  rw [tree6846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6844_eq
  unfold live6844 coloured6844 at child
  try dsimp only [live6846, coloured6846]
  rw [child]
  dsimp only [result6844]
  have child := node6845_eq
  unfold live6845 coloured6845 at child
  try dsimp only [live6846, coloured6846]
  rw [child]
  dsimp only [result6845]
  try dsimp only [colour, result6846]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6847_agree : tree6847 = literal6847 := by
  rw [tree6847_def]
  rfl
theorem node6847_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6847 live6847 coloured6847 = result6847 := by
  rw [tree6847_def]
  try dsimp only [colour, result6847]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6848_agree : tree6848 = literal6848 := by
  rw [tree6848_def, tree6846_agree, tree6847_agree]
  rfl
theorem node6848_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6848 live6848 coloured6848 = result6848 := by
  rw [tree6848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6846_eq
  unfold live6846 coloured6846 at child
  try dsimp only [live6848, coloured6848]
  rw [child]
  dsimp only [result6846]
  have child := node6847_eq
  unfold live6847 coloured6847 at child
  try dsimp only [live6848, coloured6848]
  rw [child]
  dsimp only [result6847]
  try dsimp only [colour, result6848]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6849_agree : tree6849 = literal6849 := by
  rw [tree6849_def]
  rfl
theorem node6849_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6849 live6849 coloured6849 = result6849 := by
  rw [tree6849_def]
  try dsimp only [colour, result6849]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6850_agree : tree6850 = literal6850 := by
  rw [tree6850_def, tree6848_agree, tree6849_agree]
  rfl
theorem node6850_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6850 live6850 coloured6850 = result6850 := by
  rw [tree6850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6848_eq
  unfold live6848 coloured6848 at child
  try dsimp only [live6850, coloured6850]
  rw [child]
  dsimp only [result6848]
  have child := node6849_eq
  unfold live6849 coloured6849 at child
  try dsimp only [live6850, coloured6850]
  rw [child]
  dsimp only [result6849]
  try dsimp only [colour, result6850]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6851_agree : tree6851 = literal6851 := by
  rw [tree6851_def]
  rfl
theorem node6851_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6851 live6851 coloured6851 = result6851 := by
  rw [tree6851_def]
  try dsimp only [colour, result6851]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6852_agree : tree6852 = literal6852 := by
  rw [tree6852_def, tree6850_agree, tree6851_agree]
  rfl
theorem node6852_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6852 live6852 coloured6852 = result6852 := by
  rw [tree6852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6850_eq
  unfold live6850 coloured6850 at child
  try dsimp only [live6852, coloured6852]
  rw [child]
  dsimp only [result6850]
  have child := node6851_eq
  unfold live6851 coloured6851 at child
  try dsimp only [live6852, coloured6852]
  rw [child]
  dsimp only [result6851]
  try dsimp only [colour, result6852]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6853_agree : tree6853 = literal6853 := by
  rw [tree6853_def]
  rfl
theorem node6853_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6853 live6853 coloured6853 = result6853 := by
  rw [tree6853_def]
  try dsimp only [colour, result6853]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6854_agree : tree6854 = literal6854 := by
  rw [tree6854_def, tree6852_agree, tree6853_agree]
  rfl
theorem node6854_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6854 live6854 coloured6854 = result6854 := by
  rw [tree6854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6852_eq
  unfold live6852 coloured6852 at child
  try dsimp only [live6854, coloured6854]
  rw [child]
  dsimp only [result6852]
  have child := node6853_eq
  unfold live6853 coloured6853 at child
  try dsimp only [live6854, coloured6854]
  rw [child]
  dsimp only [result6853]
  try dsimp only [colour, result6854]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6855_agree : tree6855 = literal6855 := by
  rw [tree6855_def]
  rfl
theorem node6855_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6855 live6855 coloured6855 = result6855 := by
  rw [tree6855_def]
  try dsimp only [colour, result6855]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6856_agree : tree6856 = literal6856 := by
  rw [tree6856_def, tree6854_agree, tree6855_agree]
  rfl
theorem node6856_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6856 live6856 coloured6856 = result6856 := by
  rw [tree6856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6854_eq
  unfold live6854 coloured6854 at child
  try dsimp only [live6856, coloured6856]
  rw [child]
  dsimp only [result6854]
  have child := node6855_eq
  unfold live6855 coloured6855 at child
  try dsimp only [live6856, coloured6856]
  rw [child]
  dsimp only [result6855]
  try dsimp only [colour, result6856]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6857_agree : tree6857 = literal6857 := by
  rw [tree6857_def]
  rfl
theorem node6857_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6857 live6857 coloured6857 = result6857 := by
  rw [tree6857_def]
  try dsimp only [colour, result6857]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6858_agree : tree6858 = literal6858 := by
  rw [tree6858_def, tree6856_agree, tree6857_agree]
  rfl
theorem node6858_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6858 live6858 coloured6858 = result6858 := by
  rw [tree6858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6856_eq
  unfold live6856 coloured6856 at child
  try dsimp only [live6858, coloured6858]
  rw [child]
  dsimp only [result6856]
  have child := node6857_eq
  unfold live6857 coloured6857 at child
  try dsimp only [live6858, coloured6858]
  rw [child]
  dsimp only [result6857]
  try dsimp only [colour, result6858]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6859_agree : tree6859 = literal6859 := by
  rw [tree6859_def]
  rfl
theorem node6859_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6859 live6859 coloured6859 = result6859 := by
  rw [tree6859_def]
  try dsimp only [colour, result6859]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6860_agree : tree6860 = literal6860 := by
  rw [tree6860_def, tree6858_agree, tree6859_agree]
  rfl
theorem node6860_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6860 live6860 coloured6860 = result6860 := by
  rw [tree6860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6858_eq
  unfold live6858 coloured6858 at child
  try dsimp only [live6860, coloured6860]
  rw [child]
  dsimp only [result6858]
  have child := node6859_eq
  unfold live6859 coloured6859 at child
  try dsimp only [live6860, coloured6860]
  rw [child]
  dsimp only [result6859]
  try dsimp only [colour, result6860]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6861_agree : tree6861 = literal6861 := by
  rw [tree6861_def]
  rfl
theorem node6861_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6861 live6861 coloured6861 = result6861 := by
  rw [tree6861_def]
  try dsimp only [colour, result6861]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6862_agree : tree6862 = literal6862 := by
  rw [tree6862_def, tree6860_agree, tree6861_agree]
  rfl
theorem node6862_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6862 live6862 coloured6862 = result6862 := by
  rw [tree6862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6860_eq
  unfold live6860 coloured6860 at child
  try dsimp only [live6862, coloured6862]
  rw [child]
  dsimp only [result6860]
  have child := node6861_eq
  unfold live6861 coloured6861 at child
  try dsimp only [live6862, coloured6862]
  rw [child]
  dsimp only [result6861]
  try dsimp only [colour, result6862]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6863_agree : tree6863 = literal6863 := by
  rw [tree6863_def]
  rfl
theorem node6863_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6863 live6863 coloured6863 = result6863 := by
  rw [tree6863_def]
  try dsimp only [colour, result6863]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6864_agree : tree6864 = literal6864 := by
  rw [tree6864_def, tree6862_agree, tree6863_agree]
  rfl
theorem node6864_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6864 live6864 coloured6864 = result6864 := by
  rw [tree6864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6862_eq
  unfold live6862 coloured6862 at child
  try dsimp only [live6864, coloured6864]
  rw [child]
  dsimp only [result6862]
  have child := node6863_eq
  unfold live6863 coloured6863 at child
  try dsimp only [live6864, coloured6864]
  rw [child]
  dsimp only [result6863]
  try dsimp only [colour, result6864]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6865_agree : tree6865 = literal6865 := by
  rw [tree6865_def]
  rfl
theorem node6865_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6865 live6865 coloured6865 = result6865 := by
  rw [tree6865_def]
  try dsimp only [colour, result6865]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6866_agree : tree6866 = literal6866 := by
  rw [tree6866_def, tree6864_agree, tree6865_agree]
  rfl
theorem node6866_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6866 live6866 coloured6866 = result6866 := by
  rw [tree6866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6864_eq
  unfold live6864 coloured6864 at child
  try dsimp only [live6866, coloured6866]
  rw [child]
  dsimp only [result6864]
  have child := node6865_eq
  unfold live6865 coloured6865 at child
  try dsimp only [live6866, coloured6866]
  rw [child]
  dsimp only [result6865]
  try dsimp only [colour, result6866]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6867_agree : tree6867 = literal6867 := by
  rw [tree6867_def]
  rfl
theorem node6867_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6867 live6867 coloured6867 = result6867 := by
  rw [tree6867_def]
  try dsimp only [colour, result6867]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6868_agree : tree6868 = literal6868 := by
  rw [tree6868_def, tree6866_agree, tree6867_agree]
  rfl
theorem node6868_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6868 live6868 coloured6868 = result6868 := by
  rw [tree6868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6866_eq
  unfold live6866 coloured6866 at child
  try dsimp only [live6868, coloured6868]
  rw [child]
  dsimp only [result6866]
  have child := node6867_eq
  unfold live6867 coloured6867 at child
  try dsimp only [live6868, coloured6868]
  rw [child]
  dsimp only [result6867]
  try dsimp only [colour, result6868]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6869_agree : tree6869 = literal6869 := by
  rw [tree6869_def]
  rfl
theorem node6869_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6869 live6869 coloured6869 = result6869 := by
  rw [tree6869_def]
  try dsimp only [colour, result6869]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6870_agree : tree6870 = literal6870 := by
  rw [tree6870_def, tree6868_agree, tree6869_agree]
  rfl
theorem node6870_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6870 live6870 coloured6870 = result6870 := by
  rw [tree6870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6868_eq
  unfold live6868 coloured6868 at child
  try dsimp only [live6870, coloured6870]
  rw [child]
  dsimp only [result6868]
  have child := node6869_eq
  unfold live6869 coloured6869 at child
  try dsimp only [live6870, coloured6870]
  rw [child]
  dsimp only [result6869]
  try dsimp only [colour, result6870]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6871_agree : tree6871 = literal6871 := by
  rw [tree6871_def]
  rfl
theorem node6871_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6871 live6871 coloured6871 = result6871 := by
  rw [tree6871_def]
  try dsimp only [colour, result6871]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6872_agree : tree6872 = literal6872 := by
  rw [tree6872_def, tree6870_agree, tree6871_agree]
  rfl
theorem node6872_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6872 live6872 coloured6872 = result6872 := by
  rw [tree6872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6870_eq
  unfold live6870 coloured6870 at child
  try dsimp only [live6872, coloured6872]
  rw [child]
  dsimp only [result6870]
  have child := node6871_eq
  unfold live6871 coloured6871 at child
  try dsimp only [live6872, coloured6872]
  rw [child]
  dsimp only [result6871]
  try dsimp only [colour, result6872]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6873_agree : tree6873 = literal6873 := by
  rw [tree6873_def]
  rfl
theorem node6873_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6873 live6873 coloured6873 = result6873 := by
  rw [tree6873_def]
  try dsimp only [colour, result6873]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6874_agree : tree6874 = literal6874 := by
  rw [tree6874_def, tree6872_agree, tree6873_agree]
  rfl
theorem node6874_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6874 live6874 coloured6874 = result6874 := by
  rw [tree6874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6872_eq
  unfold live6872 coloured6872 at child
  try dsimp only [live6874, coloured6874]
  rw [child]
  dsimp only [result6872]
  have child := node6873_eq
  unfold live6873 coloured6873 at child
  try dsimp only [live6874, coloured6874]
  rw [child]
  dsimp only [result6873]
  try dsimp only [colour, result6874]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6875_agree : tree6875 = literal6875 := by
  rw [tree6875_def]
  rfl
theorem node6875_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6875 live6875 coloured6875 = result6875 := by
  rw [tree6875_def]
  try dsimp only [colour, result6875]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6876_agree : tree6876 = literal6876 := by
  rw [tree6876_def, tree6874_agree, tree6875_agree]
  rfl
theorem node6876_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6876 live6876 coloured6876 = result6876 := by
  rw [tree6876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6874_eq
  unfold live6874 coloured6874 at child
  try dsimp only [live6876, coloured6876]
  rw [child]
  dsimp only [result6874]
  have child := node6875_eq
  unfold live6875 coloured6875 at child
  try dsimp only [live6876, coloured6876]
  rw [child]
  dsimp only [result6875]
  try dsimp only [colour, result6876]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6877_agree : tree6877 = literal6877 := by
  rw [tree6877_def]
  rfl
theorem node6877_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6877 live6877 coloured6877 = result6877 := by
  rw [tree6877_def]
  try dsimp only [colour, result6877]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6878_agree : tree6878 = literal6878 := by
  rw [tree6878_def, tree6876_agree, tree6877_agree]
  rfl
theorem node6878_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6878 live6878 coloured6878 = result6878 := by
  rw [tree6878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6876_eq
  unfold live6876 coloured6876 at child
  try dsimp only [live6878, coloured6878]
  rw [child]
  dsimp only [result6876]
  have child := node6877_eq
  unfold live6877 coloured6877 at child
  try dsimp only [live6878, coloured6878]
  rw [child]
  dsimp only [result6877]
  try dsimp only [colour, result6878]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6879_agree : tree6879 = literal6879 := by
  rw [tree6879_def]
  rfl
theorem node6879_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6879 live6879 coloured6879 = result6879 := by
  rw [tree6879_def]
  try dsimp only [colour, result6879]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6880_agree : tree6880 = literal6880 := by
  rw [tree6880_def, tree6878_agree, tree6879_agree]
  rfl
theorem node6880_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6880 live6880 coloured6880 = result6880 := by
  rw [tree6880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6878_eq
  unfold live6878 coloured6878 at child
  try dsimp only [live6880, coloured6880]
  rw [child]
  dsimp only [result6878]
  have child := node6879_eq
  unfold live6879 coloured6879 at child
  try dsimp only [live6880, coloured6880]
  rw [child]
  dsimp only [result6879]
  try dsimp only [colour, result6880]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6881_agree : tree6881 = literal6881 := by
  rw [tree6881_def]
  rfl
theorem node6881_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6881 live6881 coloured6881 = result6881 := by
  rw [tree6881_def]
  try dsimp only [colour, result6881]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6882_agree : tree6882 = literal6882 := by
  rw [tree6882_def, tree6880_agree, tree6881_agree]
  rfl
theorem node6882_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6882 live6882 coloured6882 = result6882 := by
  rw [tree6882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6880_eq
  unfold live6880 coloured6880 at child
  try dsimp only [live6882, coloured6882]
  rw [child]
  dsimp only [result6880]
  have child := node6881_eq
  unfold live6881 coloured6881 at child
  try dsimp only [live6882, coloured6882]
  rw [child]
  dsimp only [result6881]
  try dsimp only [colour, result6882]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6883_agree : tree6883 = literal6883 := by
  rw [tree6883_def]
  rfl
theorem node6883_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6883 live6883 coloured6883 = result6883 := by
  rw [tree6883_def]
  try dsimp only [colour, result6883]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6884_agree : tree6884 = literal6884 := by
  rw [tree6884_def, tree6882_agree, tree6883_agree]
  rfl
theorem node6884_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6884 live6884 coloured6884 = result6884 := by
  rw [tree6884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6882_eq
  unfold live6882 coloured6882 at child
  try dsimp only [live6884, coloured6884]
  rw [child]
  dsimp only [result6882]
  have child := node6883_eq
  unfold live6883 coloured6883 at child
  try dsimp only [live6884, coloured6884]
  rw [child]
  dsimp only [result6883]
  try dsimp only [colour, result6884]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6885_agree : tree6885 = literal6885 := by
  rw [tree6885_def]
  rfl
theorem node6885_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6885 live6885 coloured6885 = result6885 := by
  rw [tree6885_def]
  try dsimp only [colour, result6885]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6886_agree : tree6886 = literal6886 := by
  rw [tree6886_def, tree6884_agree, tree6885_agree]
  rfl
theorem node6886_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6886 live6886 coloured6886 = result6886 := by
  rw [tree6886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6884_eq
  unfold live6884 coloured6884 at child
  try dsimp only [live6886, coloured6886]
  rw [child]
  dsimp only [result6884]
  have child := node6885_eq
  unfold live6885 coloured6885 at child
  try dsimp only [live6886, coloured6886]
  rw [child]
  dsimp only [result6885]
  try dsimp only [colour, result6886]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6887_agree : tree6887 = literal6887 := by
  rw [tree6887_def]
  rfl
theorem node6887_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6887 live6887 coloured6887 = result6887 := by
  rw [tree6887_def]
  try dsimp only [colour, result6887]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6888_agree : tree6888 = literal6888 := by
  rw [tree6888_def, tree6886_agree, tree6887_agree]
  rfl
theorem node6888_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6888 live6888 coloured6888 = result6888 := by
  rw [tree6888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6886_eq
  unfold live6886 coloured6886 at child
  try dsimp only [live6888, coloured6888]
  rw [child]
  dsimp only [result6886]
  have child := node6887_eq
  unfold live6887 coloured6887 at child
  try dsimp only [live6888, coloured6888]
  rw [child]
  dsimp only [result6887]
  try dsimp only [colour, result6888]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6889_agree : tree6889 = literal6889 := by
  rw [tree6889_def]
  rfl
theorem node6889_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6889 live6889 coloured6889 = result6889 := by
  rw [tree6889_def]
  try dsimp only [colour, result6889]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6890_agree : tree6890 = literal6890 := by
  rw [tree6890_def, tree6888_agree, tree6889_agree]
  rfl
theorem node6890_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6890 live6890 coloured6890 = result6890 := by
  rw [tree6890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6888_eq
  unfold live6888 coloured6888 at child
  try dsimp only [live6890, coloured6890]
  rw [child]
  dsimp only [result6888]
  have child := node6889_eq
  unfold live6889 coloured6889 at child
  try dsimp only [live6890, coloured6890]
  rw [child]
  dsimp only [result6889]
  try dsimp only [colour, result6890]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6891_agree : tree6891 = literal6891 := by
  rw [tree6891_def]
  rfl
theorem node6891_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6891 live6891 coloured6891 = result6891 := by
  rw [tree6891_def]
  try dsimp only [colour, result6891]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6892_agree : tree6892 = literal6892 := by
  rw [tree6892_def, tree6890_agree, tree6891_agree]
  rfl
theorem node6892_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6892 live6892 coloured6892 = result6892 := by
  rw [tree6892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6890_eq
  unfold live6890 coloured6890 at child
  try dsimp only [live6892, coloured6892]
  rw [child]
  dsimp only [result6890]
  have child := node6891_eq
  unfold live6891 coloured6891 at child
  try dsimp only [live6892, coloured6892]
  rw [child]
  dsimp only [result6891]
  try dsimp only [colour, result6892]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6893_agree : tree6893 = literal6893 := by
  rw [tree6893_def]
  rfl
theorem node6893_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6893 live6893 coloured6893 = result6893 := by
  rw [tree6893_def]
  try dsimp only [colour, result6893]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6894_agree : tree6894 = literal6894 := by
  rw [tree6894_def, tree6892_agree, tree6893_agree]
  rfl
theorem node6894_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6894 live6894 coloured6894 = result6894 := by
  rw [tree6894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6892_eq
  unfold live6892 coloured6892 at child
  try dsimp only [live6894, coloured6894]
  rw [child]
  dsimp only [result6892]
  have child := node6893_eq
  unfold live6893 coloured6893 at child
  try dsimp only [live6894, coloured6894]
  rw [child]
  dsimp only [result6893]
  try dsimp only [colour, result6894]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6895_agree : tree6895 = literal6895 := by
  rw [tree6895_def]
  rfl
theorem node6895_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6895 live6895 coloured6895 = result6895 := by
  rw [tree6895_def]
  try dsimp only [colour, result6895]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6896_agree : tree6896 = literal6896 := by
  rw [tree6896_def, tree6894_agree, tree6895_agree]
  rfl
theorem node6896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6896 live6896 coloured6896 = result6896 := by
  rw [tree6896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6894_eq
  unfold live6894 coloured6894 at child
  try dsimp only [live6896, coloured6896]
  rw [child]
  dsimp only [result6894]
  have child := node6895_eq
  unfold live6895 coloured6895 at child
  try dsimp only [live6896, coloured6896]
  rw [child]
  dsimp only [result6895]
  try dsimp only [colour, result6896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6897_agree : tree6897 = literal6897 := by
  rw [tree6897_def]
  rfl
theorem node6897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6897 live6897 coloured6897 = result6897 := by
  rw [tree6897_def]
  try dsimp only [colour, result6897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6898_agree : tree6898 = literal6898 := by
  rw [tree6898_def, tree6896_agree, tree6897_agree]
  rfl
theorem node6898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6898 live6898 coloured6898 = result6898 := by
  rw [tree6898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6896_eq
  unfold live6896 coloured6896 at child
  try dsimp only [live6898, coloured6898]
  rw [child]
  dsimp only [result6896]
  have child := node6897_eq
  unfold live6897 coloured6897 at child
  try dsimp only [live6898, coloured6898]
  rw [child]
  dsimp only [result6897]
  try dsimp only [colour, result6898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6899_agree : tree6899 = literal6899 := by
  rw [tree6899_def]
  rfl
theorem node6899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6899 live6899 coloured6899 = result6899 := by
  rw [tree6899_def]
  try dsimp only [colour, result6899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6900_agree : tree6900 = literal6900 := by
  rw [tree6900_def, tree6898_agree, tree6899_agree]
  rfl
theorem node6900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6900 live6900 coloured6900 = result6900 := by
  rw [tree6900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6898_eq
  unfold live6898 coloured6898 at child
  try dsimp only [live6900, coloured6900]
  rw [child]
  dsimp only [result6898]
  have child := node6899_eq
  unfold live6899 coloured6899 at child
  try dsimp only [live6900, coloured6900]
  rw [child]
  dsimp only [result6899]
  try dsimp only [colour, result6900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6901_agree : tree6901 = literal6901 := by
  rw [tree6901_def]
  rfl
theorem node6901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6901 live6901 coloured6901 = result6901 := by
  rw [tree6901_def]
  try dsimp only [colour, result6901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6902_agree : tree6902 = literal6902 := by
  rw [tree6902_def, tree6900_agree, tree6901_agree]
  rfl
theorem node6902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6902 live6902 coloured6902 = result6902 := by
  rw [tree6902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6900_eq
  unfold live6900 coloured6900 at child
  try dsimp only [live6902, coloured6902]
  rw [child]
  dsimp only [result6900]
  have child := node6901_eq
  unfold live6901 coloured6901 at child
  try dsimp only [live6902, coloured6902]
  rw [child]
  dsimp only [result6901]
  try dsimp only [colour, result6902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6903_agree : tree6903 = literal6903 := by
  rw [tree6903_def]
  rfl
theorem node6903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6903 live6903 coloured6903 = result6903 := by
  rw [tree6903_def]
  try dsimp only [colour, result6903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6904_agree : tree6904 = literal6904 := by
  rw [tree6904_def, tree6902_agree, tree6903_agree]
  rfl
theorem node6904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6904 live6904 coloured6904 = result6904 := by
  rw [tree6904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6902_eq
  unfold live6902 coloured6902 at child
  try dsimp only [live6904, coloured6904]
  rw [child]
  dsimp only [result6902]
  have child := node6903_eq
  unfold live6903 coloured6903 at child
  try dsimp only [live6904, coloured6904]
  rw [child]
  dsimp only [result6903]
  try dsimp only [colour, result6904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6905_agree : tree6905 = literal6905 := by
  rw [tree6905_def]
  rfl
theorem node6905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6905 live6905 coloured6905 = result6905 := by
  rw [tree6905_def]
  try dsimp only [colour, result6905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6906_agree : tree6906 = literal6906 := by
  rw [tree6906_def, tree6904_agree, tree6905_agree]
  rfl
theorem node6906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6906 live6906 coloured6906 = result6906 := by
  rw [tree6906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6904_eq
  unfold live6904 coloured6904 at child
  try dsimp only [live6906, coloured6906]
  rw [child]
  dsimp only [result6904]
  have child := node6905_eq
  unfold live6905 coloured6905 at child
  try dsimp only [live6906, coloured6906]
  rw [child]
  dsimp only [result6905]
  try dsimp only [colour, result6906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6907_agree : tree6907 = literal6907 := by
  rw [tree6907_def]
  rfl
theorem node6907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6907 live6907 coloured6907 = result6907 := by
  rw [tree6907_def]
  try dsimp only [colour, result6907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6908_agree : tree6908 = literal6908 := by
  rw [tree6908_def, tree6906_agree, tree6907_agree]
  rfl
theorem node6908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6908 live6908 coloured6908 = result6908 := by
  rw [tree6908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6906_eq
  unfold live6906 coloured6906 at child
  try dsimp only [live6908, coloured6908]
  rw [child]
  dsimp only [result6906]
  have child := node6907_eq
  unfold live6907 coloured6907 at child
  try dsimp only [live6908, coloured6908]
  rw [child]
  dsimp only [result6907]
  try dsimp only [colour, result6908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6909_agree : tree6909 = literal6909 := by
  rw [tree6909_def]
  rfl
theorem node6909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6909 live6909 coloured6909 = result6909 := by
  rw [tree6909_def]
  try dsimp only [colour, result6909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6910_agree : tree6910 = literal6910 := by
  rw [tree6910_def, tree6908_agree, tree6909_agree]
  rfl
theorem node6910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6910 live6910 coloured6910 = result6910 := by
  rw [tree6910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6908_eq
  unfold live6908 coloured6908 at child
  try dsimp only [live6910, coloured6910]
  rw [child]
  dsimp only [result6908]
  have child := node6909_eq
  unfold live6909 coloured6909 at child
  try dsimp only [live6910, coloured6910]
  rw [child]
  dsimp only [result6909]
  try dsimp only [colour, result6910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6911_agree : tree6911 = literal6911 := by
  rw [tree6911_def]
  rfl
theorem node6911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6911 live6911 coloured6911 = result6911 := by
  rw [tree6911_def]
  try dsimp only [colour, result6911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
