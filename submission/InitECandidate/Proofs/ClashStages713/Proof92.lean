import InitECandidate.Proofs.ClashStages713.Proof91
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree8832_agree : tree8832 = literal8832 := by
  rw [tree8832_def, tree8830_agree, tree8831_agree]
  rfl
theorem node8832_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8832 live8832 coloured8832 = result8832 := by
  rw [tree8832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8830_eq
  unfold live8830 coloured8830 at child
  try dsimp only [live8832, coloured8832]
  rw [child]
  dsimp only [result8830]
  have child := node8831_eq
  unfold live8831 coloured8831 at child
  try dsimp only [live8832, coloured8832]
  rw [child]
  dsimp only [result8831]
  try dsimp only [colour, result8832]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8833_agree : tree8833 = literal8833 := by
  rw [tree8833_def]
  rfl
theorem node8833_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8833 live8833 coloured8833 = result8833 := by
  rw [tree8833_def]
  try dsimp only [colour, result8833]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8834_agree : tree8834 = literal8834 := by
  rw [tree8834_def, tree8832_agree, tree8833_agree]
  rfl
theorem node8834_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8834 live8834 coloured8834 = result8834 := by
  rw [tree8834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8832_eq
  unfold live8832 coloured8832 at child
  try dsimp only [live8834, coloured8834]
  rw [child]
  dsimp only [result8832]
  have child := node8833_eq
  unfold live8833 coloured8833 at child
  try dsimp only [live8834, coloured8834]
  rw [child]
  dsimp only [result8833]
  try dsimp only [colour, result8834]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8835_agree : tree8835 = literal8835 := by
  rw [tree8835_def]
  rfl
theorem node8835_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8835 live8835 coloured8835 = result8835 := by
  rw [tree8835_def]
  try dsimp only [colour, result8835]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8836_agree : tree8836 = literal8836 := by
  rw [tree8836_def, tree8834_agree, tree8835_agree]
  rfl
theorem node8836_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8836 live8836 coloured8836 = result8836 := by
  rw [tree8836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8834_eq
  unfold live8834 coloured8834 at child
  try dsimp only [live8836, coloured8836]
  rw [child]
  dsimp only [result8834]
  have child := node8835_eq
  unfold live8835 coloured8835 at child
  try dsimp only [live8836, coloured8836]
  rw [child]
  dsimp only [result8835]
  try dsimp only [colour, result8836]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8837_agree : tree8837 = literal8837 := by
  rw [tree8837_def]
  rfl
theorem node8837_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8837 live8837 coloured8837 = result8837 := by
  rw [tree8837_def]
  try dsimp only [colour, result8837]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8838_agree : tree8838 = literal8838 := by
  rw [tree8838_def, tree8836_agree, tree8837_agree]
  rfl
theorem node8838_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8838 live8838 coloured8838 = result8838 := by
  rw [tree8838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8836_eq
  unfold live8836 coloured8836 at child
  try dsimp only [live8838, coloured8838]
  rw [child]
  dsimp only [result8836]
  have child := node8837_eq
  unfold live8837 coloured8837 at child
  try dsimp only [live8838, coloured8838]
  rw [child]
  dsimp only [result8837]
  try dsimp only [colour, result8838]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8839_agree : tree8839 = literal8839 := by
  rw [tree8839_def]
  rfl
theorem node8839_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8839 live8839 coloured8839 = result8839 := by
  rw [tree8839_def]
  try dsimp only [colour, result8839]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8840_agree : tree8840 = literal8840 := by
  rw [tree8840_def, tree8838_agree, tree8839_agree]
  rfl
theorem node8840_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8840 live8840 coloured8840 = result8840 := by
  rw [tree8840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8838_eq
  unfold live8838 coloured8838 at child
  try dsimp only [live8840, coloured8840]
  rw [child]
  dsimp only [result8838]
  have child := node8839_eq
  unfold live8839 coloured8839 at child
  try dsimp only [live8840, coloured8840]
  rw [child]
  dsimp only [result8839]
  try dsimp only [colour, result8840]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8841_agree : tree8841 = literal8841 := by
  rw [tree8841_def]
  rfl
theorem node8841_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8841 live8841 coloured8841 = result8841 := by
  rw [tree8841_def]
  try dsimp only [colour, result8841]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8842_agree : tree8842 = literal8842 := by
  rw [tree8842_def, tree8840_agree, tree8841_agree]
  rfl
theorem node8842_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8842 live8842 coloured8842 = result8842 := by
  rw [tree8842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8840_eq
  unfold live8840 coloured8840 at child
  try dsimp only [live8842, coloured8842]
  rw [child]
  dsimp only [result8840]
  have child := node8841_eq
  unfold live8841 coloured8841 at child
  try dsimp only [live8842, coloured8842]
  rw [child]
  dsimp only [result8841]
  try dsimp only [colour, result8842]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8843_agree : tree8843 = literal8843 := by
  rw [tree8843_def]
  rfl
theorem node8843_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8843 live8843 coloured8843 = result8843 := by
  rw [tree8843_def]
  try dsimp only [colour, result8843]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8844_agree : tree8844 = literal8844 := by
  rw [tree8844_def, tree8842_agree, tree8843_agree]
  rfl
theorem node8844_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8844 live8844 coloured8844 = result8844 := by
  rw [tree8844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8842_eq
  unfold live8842 coloured8842 at child
  try dsimp only [live8844, coloured8844]
  rw [child]
  dsimp only [result8842]
  have child := node8843_eq
  unfold live8843 coloured8843 at child
  try dsimp only [live8844, coloured8844]
  rw [child]
  dsimp only [result8843]
  try dsimp only [colour, result8844]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8845_agree : tree8845 = literal8845 := by
  rw [tree8845_def]
  rfl
theorem node8845_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8845 live8845 coloured8845 = result8845 := by
  rw [tree8845_def]
  try dsimp only [colour, result8845]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8846_agree : tree8846 = literal8846 := by
  rw [tree8846_def, tree8844_agree, tree8845_agree]
  rfl
theorem node8846_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8846 live8846 coloured8846 = result8846 := by
  rw [tree8846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8844_eq
  unfold live8844 coloured8844 at child
  try dsimp only [live8846, coloured8846]
  rw [child]
  dsimp only [result8844]
  have child := node8845_eq
  unfold live8845 coloured8845 at child
  try dsimp only [live8846, coloured8846]
  rw [child]
  dsimp only [result8845]
  try dsimp only [colour, result8846]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8847_agree : tree8847 = literal8847 := by
  rw [tree8847_def]
  rfl
theorem node8847_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8847 live8847 coloured8847 = result8847 := by
  rw [tree8847_def]
  try dsimp only [colour, result8847]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8848_agree : tree8848 = literal8848 := by
  rw [tree8848_def, tree8846_agree, tree8847_agree]
  rfl
theorem node8848_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8848 live8848 coloured8848 = result8848 := by
  rw [tree8848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8846_eq
  unfold live8846 coloured8846 at child
  try dsimp only [live8848, coloured8848]
  rw [child]
  dsimp only [result8846]
  have child := node8847_eq
  unfold live8847 coloured8847 at child
  try dsimp only [live8848, coloured8848]
  rw [child]
  dsimp only [result8847]
  try dsimp only [colour, result8848]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8849_agree : tree8849 = literal8849 := by
  rw [tree8849_def]
  rfl
theorem node8849_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8849 live8849 coloured8849 = result8849 := by
  rw [tree8849_def]
  try dsimp only [colour, result8849]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8850_agree : tree8850 = literal8850 := by
  rw [tree8850_def, tree8848_agree, tree8849_agree]
  rfl
theorem node8850_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8850 live8850 coloured8850 = result8850 := by
  rw [tree8850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8848_eq
  unfold live8848 coloured8848 at child
  try dsimp only [live8850, coloured8850]
  rw [child]
  dsimp only [result8848]
  have child := node8849_eq
  unfold live8849 coloured8849 at child
  try dsimp only [live8850, coloured8850]
  rw [child]
  dsimp only [result8849]
  try dsimp only [colour, result8850]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8851_agree : tree8851 = literal8851 := by
  rw [tree8851_def]
  rfl
theorem node8851_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8851 live8851 coloured8851 = result8851 := by
  rw [tree8851_def]
  try dsimp only [colour, result8851]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8852_agree : tree8852 = literal8852 := by
  rw [tree8852_def, tree8850_agree, tree8851_agree]
  rfl
theorem node8852_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8852 live8852 coloured8852 = result8852 := by
  rw [tree8852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8850_eq
  unfold live8850 coloured8850 at child
  try dsimp only [live8852, coloured8852]
  rw [child]
  dsimp only [result8850]
  have child := node8851_eq
  unfold live8851 coloured8851 at child
  try dsimp only [live8852, coloured8852]
  rw [child]
  dsimp only [result8851]
  try dsimp only [colour, result8852]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8853_agree : tree8853 = literal8853 := by
  rw [tree8853_def]
  rfl
theorem node8853_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8853 live8853 coloured8853 = result8853 := by
  rw [tree8853_def]
  try dsimp only [colour, result8853]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8854_agree : tree8854 = literal8854 := by
  rw [tree8854_def, tree8852_agree, tree8853_agree]
  rfl
theorem node8854_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8854 live8854 coloured8854 = result8854 := by
  rw [tree8854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8852_eq
  unfold live8852 coloured8852 at child
  try dsimp only [live8854, coloured8854]
  rw [child]
  dsimp only [result8852]
  have child := node8853_eq
  unfold live8853 coloured8853 at child
  try dsimp only [live8854, coloured8854]
  rw [child]
  dsimp only [result8853]
  try dsimp only [colour, result8854]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8855_agree : tree8855 = literal8855 := by
  rw [tree8855_def]
  rfl
theorem node8855_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8855 live8855 coloured8855 = result8855 := by
  rw [tree8855_def]
  try dsimp only [colour, result8855]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8856_agree : tree8856 = literal8856 := by
  rw [tree8856_def, tree8854_agree, tree8855_agree]
  rfl
theorem node8856_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8856 live8856 coloured8856 = result8856 := by
  rw [tree8856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8854_eq
  unfold live8854 coloured8854 at child
  try dsimp only [live8856, coloured8856]
  rw [child]
  dsimp only [result8854]
  have child := node8855_eq
  unfold live8855 coloured8855 at child
  try dsimp only [live8856, coloured8856]
  rw [child]
  dsimp only [result8855]
  try dsimp only [colour, result8856]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8857_agree : tree8857 = literal8857 := by
  rw [tree8857_def]
  rfl
theorem node8857_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8857 live8857 coloured8857 = result8857 := by
  rw [tree8857_def]
  try dsimp only [colour, result8857]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8858_agree : tree8858 = literal8858 := by
  rw [tree8858_def, tree8856_agree, tree8857_agree]
  rfl
theorem node8858_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8858 live8858 coloured8858 = result8858 := by
  rw [tree8858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8856_eq
  unfold live8856 coloured8856 at child
  try dsimp only [live8858, coloured8858]
  rw [child]
  dsimp only [result8856]
  have child := node8857_eq
  unfold live8857 coloured8857 at child
  try dsimp only [live8858, coloured8858]
  rw [child]
  dsimp only [result8857]
  try dsimp only [colour, result8858]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8859_agree : tree8859 = literal8859 := by
  rw [tree8859_def]
  rfl
theorem node8859_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8859 live8859 coloured8859 = result8859 := by
  rw [tree8859_def]
  try dsimp only [colour, result8859]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8860_agree : tree8860 = literal8860 := by
  rw [tree8860_def, tree8858_agree, tree8859_agree]
  rfl
theorem node8860_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8860 live8860 coloured8860 = result8860 := by
  rw [tree8860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8858_eq
  unfold live8858 coloured8858 at child
  try dsimp only [live8860, coloured8860]
  rw [child]
  dsimp only [result8858]
  have child := node8859_eq
  unfold live8859 coloured8859 at child
  try dsimp only [live8860, coloured8860]
  rw [child]
  dsimp only [result8859]
  try dsimp only [colour, result8860]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8861_agree : tree8861 = literal8861 := by
  rw [tree8861_def]
  rfl
theorem node8861_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8861 live8861 coloured8861 = result8861 := by
  rw [tree8861_def]
  try dsimp only [colour, result8861]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8862_agree : tree8862 = literal8862 := by
  rw [tree8862_def, tree8860_agree, tree8861_agree]
  rfl
theorem node8862_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8862 live8862 coloured8862 = result8862 := by
  rw [tree8862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8860_eq
  unfold live8860 coloured8860 at child
  try dsimp only [live8862, coloured8862]
  rw [child]
  dsimp only [result8860]
  have child := node8861_eq
  unfold live8861 coloured8861 at child
  try dsimp only [live8862, coloured8862]
  rw [child]
  dsimp only [result8861]
  try dsimp only [colour, result8862]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8863_agree : tree8863 = literal8863 := by
  rw [tree8863_def]
  rfl
theorem node8863_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8863 live8863 coloured8863 = result8863 := by
  rw [tree8863_def]
  try dsimp only [colour, result8863]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8864_agree : tree8864 = literal8864 := by
  rw [tree8864_def, tree8862_agree, tree8863_agree]
  rfl
theorem node8864_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8864 live8864 coloured8864 = result8864 := by
  rw [tree8864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8862_eq
  unfold live8862 coloured8862 at child
  try dsimp only [live8864, coloured8864]
  rw [child]
  dsimp only [result8862]
  have child := node8863_eq
  unfold live8863 coloured8863 at child
  try dsimp only [live8864, coloured8864]
  rw [child]
  dsimp only [result8863]
  try dsimp only [colour, result8864]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8865_agree : tree8865 = literal8865 := by
  rw [tree8865_def]
  rfl
theorem node8865_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8865 live8865 coloured8865 = result8865 := by
  rw [tree8865_def]
  try dsimp only [colour, result8865]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8866_agree : tree8866 = literal8866 := by
  rw [tree8866_def, tree8864_agree, tree8865_agree]
  rfl
theorem node8866_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8866 live8866 coloured8866 = result8866 := by
  rw [tree8866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8864_eq
  unfold live8864 coloured8864 at child
  try dsimp only [live8866, coloured8866]
  rw [child]
  dsimp only [result8864]
  have child := node8865_eq
  unfold live8865 coloured8865 at child
  try dsimp only [live8866, coloured8866]
  rw [child]
  dsimp only [result8865]
  try dsimp only [colour, result8866]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8867_agree : tree8867 = literal8867 := by
  rw [tree8867_def]
  rfl
theorem node8867_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8867 live8867 coloured8867 = result8867 := by
  rw [tree8867_def]
  try dsimp only [colour, result8867]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8868_agree : tree8868 = literal8868 := by
  rw [tree8868_def, tree8866_agree, tree8867_agree]
  rfl
theorem node8868_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8868 live8868 coloured8868 = result8868 := by
  rw [tree8868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8866_eq
  unfold live8866 coloured8866 at child
  try dsimp only [live8868, coloured8868]
  rw [child]
  dsimp only [result8866]
  have child := node8867_eq
  unfold live8867 coloured8867 at child
  try dsimp only [live8868, coloured8868]
  rw [child]
  dsimp only [result8867]
  try dsimp only [colour, result8868]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8869_agree : tree8869 = literal8869 := by
  rw [tree8869_def]
  rfl
theorem node8869_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8869 live8869 coloured8869 = result8869 := by
  rw [tree8869_def]
  try dsimp only [colour, result8869]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8870_agree : tree8870 = literal8870 := by
  rw [tree8870_def, tree8868_agree, tree8869_agree]
  rfl
theorem node8870_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8870 live8870 coloured8870 = result8870 := by
  rw [tree8870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8868_eq
  unfold live8868 coloured8868 at child
  try dsimp only [live8870, coloured8870]
  rw [child]
  dsimp only [result8868]
  have child := node8869_eq
  unfold live8869 coloured8869 at child
  try dsimp only [live8870, coloured8870]
  rw [child]
  dsimp only [result8869]
  try dsimp only [colour, result8870]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8871_agree : tree8871 = literal8871 := by
  rw [tree8871_def]
  rfl
theorem node8871_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8871 live8871 coloured8871 = result8871 := by
  rw [tree8871_def]
  try dsimp only [colour, result8871]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8872_agree : tree8872 = literal8872 := by
  rw [tree8872_def, tree8870_agree, tree8871_agree]
  rfl
theorem node8872_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8872 live8872 coloured8872 = result8872 := by
  rw [tree8872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8870_eq
  unfold live8870 coloured8870 at child
  try dsimp only [live8872, coloured8872]
  rw [child]
  dsimp only [result8870]
  have child := node8871_eq
  unfold live8871 coloured8871 at child
  try dsimp only [live8872, coloured8872]
  rw [child]
  dsimp only [result8871]
  try dsimp only [colour, result8872]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8873_agree : tree8873 = literal8873 := by
  rw [tree8873_def]
  rfl
theorem node8873_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8873 live8873 coloured8873 = result8873 := by
  rw [tree8873_def]
  try dsimp only [colour, result8873]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8874_agree : tree8874 = literal8874 := by
  rw [tree8874_def, tree8872_agree, tree8873_agree]
  rfl
theorem node8874_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8874 live8874 coloured8874 = result8874 := by
  rw [tree8874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8872_eq
  unfold live8872 coloured8872 at child
  try dsimp only [live8874, coloured8874]
  rw [child]
  dsimp only [result8872]
  have child := node8873_eq
  unfold live8873 coloured8873 at child
  try dsimp only [live8874, coloured8874]
  rw [child]
  dsimp only [result8873]
  try dsimp only [colour, result8874]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8875_agree : tree8875 = literal8875 := by
  rw [tree8875_def]
  rfl
theorem node8875_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8875 live8875 coloured8875 = result8875 := by
  rw [tree8875_def]
  try dsimp only [colour, result8875]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8876_agree : tree8876 = literal8876 := by
  rw [tree8876_def, tree8874_agree, tree8875_agree]
  rfl
theorem node8876_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8876 live8876 coloured8876 = result8876 := by
  rw [tree8876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8874_eq
  unfold live8874 coloured8874 at child
  try dsimp only [live8876, coloured8876]
  rw [child]
  dsimp only [result8874]
  have child := node8875_eq
  unfold live8875 coloured8875 at child
  try dsimp only [live8876, coloured8876]
  rw [child]
  dsimp only [result8875]
  try dsimp only [colour, result8876]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8877_agree : tree8877 = literal8877 := by
  rw [tree8877_def]
  rfl
theorem node8877_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8877 live8877 coloured8877 = result8877 := by
  rw [tree8877_def]
  try dsimp only [colour, result8877]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8878_agree : tree8878 = literal8878 := by
  rw [tree8878_def, tree8876_agree, tree8877_agree]
  rfl
theorem node8878_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8878 live8878 coloured8878 = result8878 := by
  rw [tree8878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8876_eq
  unfold live8876 coloured8876 at child
  try dsimp only [live8878, coloured8878]
  rw [child]
  dsimp only [result8876]
  have child := node8877_eq
  unfold live8877 coloured8877 at child
  try dsimp only [live8878, coloured8878]
  rw [child]
  dsimp only [result8877]
  try dsimp only [colour, result8878]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8879_agree : tree8879 = literal8879 := by
  rw [tree8879_def]
  rfl
theorem node8879_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8879 live8879 coloured8879 = result8879 := by
  rw [tree8879_def]
  try dsimp only [colour, result8879]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8880_agree : tree8880 = literal8880 := by
  rw [tree8880_def, tree8878_agree, tree8879_agree]
  rfl
theorem node8880_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8880 live8880 coloured8880 = result8880 := by
  rw [tree8880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8878_eq
  unfold live8878 coloured8878 at child
  try dsimp only [live8880, coloured8880]
  rw [child]
  dsimp only [result8878]
  have child := node8879_eq
  unfold live8879 coloured8879 at child
  try dsimp only [live8880, coloured8880]
  rw [child]
  dsimp only [result8879]
  try dsimp only [colour, result8880]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8881_agree : tree8881 = literal8881 := by
  rw [tree8881_def]
  rfl
theorem node8881_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8881 live8881 coloured8881 = result8881 := by
  rw [tree8881_def]
  try dsimp only [colour, result8881]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8882_agree : tree8882 = literal8882 := by
  rw [tree8882_def, tree8880_agree, tree8881_agree]
  rfl
theorem node8882_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8882 live8882 coloured8882 = result8882 := by
  rw [tree8882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8880_eq
  unfold live8880 coloured8880 at child
  try dsimp only [live8882, coloured8882]
  rw [child]
  dsimp only [result8880]
  have child := node8881_eq
  unfold live8881 coloured8881 at child
  try dsimp only [live8882, coloured8882]
  rw [child]
  dsimp only [result8881]
  try dsimp only [colour, result8882]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8883_agree : tree8883 = literal8883 := by
  rw [tree8883_def]
  rfl
theorem node8883_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8883 live8883 coloured8883 = result8883 := by
  rw [tree8883_def]
  try dsimp only [colour, result8883]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8884_agree : tree8884 = literal8884 := by
  rw [tree8884_def, tree8882_agree, tree8883_agree]
  rfl
theorem node8884_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8884 live8884 coloured8884 = result8884 := by
  rw [tree8884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8882_eq
  unfold live8882 coloured8882 at child
  try dsimp only [live8884, coloured8884]
  rw [child]
  dsimp only [result8882]
  have child := node8883_eq
  unfold live8883 coloured8883 at child
  try dsimp only [live8884, coloured8884]
  rw [child]
  dsimp only [result8883]
  try dsimp only [colour, result8884]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8885_agree : tree8885 = literal8885 := by
  rw [tree8885_def]
  rfl
theorem node8885_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8885 live8885 coloured8885 = result8885 := by
  rw [tree8885_def]
  try dsimp only [colour, result8885]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8886_agree : tree8886 = literal8886 := by
  rw [tree8886_def, tree8884_agree, tree8885_agree]
  rfl
theorem node8886_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8886 live8886 coloured8886 = result8886 := by
  rw [tree8886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8884_eq
  unfold live8884 coloured8884 at child
  try dsimp only [live8886, coloured8886]
  rw [child]
  dsimp only [result8884]
  have child := node8885_eq
  unfold live8885 coloured8885 at child
  try dsimp only [live8886, coloured8886]
  rw [child]
  dsimp only [result8885]
  try dsimp only [colour, result8886]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8887_agree : tree8887 = literal8887 := by
  rw [tree8887_def]
  rfl
theorem node8887_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8887 live8887 coloured8887 = result8887 := by
  rw [tree8887_def]
  try dsimp only [colour, result8887]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8888_agree : tree8888 = literal8888 := by
  rw [tree8888_def, tree8886_agree, tree8887_agree]
  rfl
theorem node8888_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8888 live8888 coloured8888 = result8888 := by
  rw [tree8888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8886_eq
  unfold live8886 coloured8886 at child
  try dsimp only [live8888, coloured8888]
  rw [child]
  dsimp only [result8886]
  have child := node8887_eq
  unfold live8887 coloured8887 at child
  try dsimp only [live8888, coloured8888]
  rw [child]
  dsimp only [result8887]
  try dsimp only [colour, result8888]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8889_agree : tree8889 = literal8889 := by
  rw [tree8889_def]
  rfl
theorem node8889_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8889 live8889 coloured8889 = result8889 := by
  rw [tree8889_def]
  try dsimp only [colour, result8889]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8890_agree : tree8890 = literal8890 := by
  rw [tree8890_def, tree8888_agree, tree8889_agree]
  rfl
theorem node8890_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8890 live8890 coloured8890 = result8890 := by
  rw [tree8890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8888_eq
  unfold live8888 coloured8888 at child
  try dsimp only [live8890, coloured8890]
  rw [child]
  dsimp only [result8888]
  have child := node8889_eq
  unfold live8889 coloured8889 at child
  try dsimp only [live8890, coloured8890]
  rw [child]
  dsimp only [result8889]
  try dsimp only [colour, result8890]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8891_agree : tree8891 = literal8891 := by
  rw [tree8891_def]
  rfl
theorem node8891_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8891 live8891 coloured8891 = result8891 := by
  rw [tree8891_def]
  try dsimp only [colour, result8891]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8892_agree : tree8892 = literal8892 := by
  rw [tree8892_def, tree8890_agree, tree8891_agree]
  rfl
theorem node8892_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8892 live8892 coloured8892 = result8892 := by
  rw [tree8892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8890_eq
  unfold live8890 coloured8890 at child
  try dsimp only [live8892, coloured8892]
  rw [child]
  dsimp only [result8890]
  have child := node8891_eq
  unfold live8891 coloured8891 at child
  try dsimp only [live8892, coloured8892]
  rw [child]
  dsimp only [result8891]
  try dsimp only [colour, result8892]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8893_agree : tree8893 = literal8893 := by
  rw [tree8893_def]
  rfl
theorem node8893_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8893 live8893 coloured8893 = result8893 := by
  rw [tree8893_def]
  try dsimp only [colour, result8893]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8894_agree : tree8894 = literal8894 := by
  rw [tree8894_def, tree8892_agree, tree8893_agree]
  rfl
theorem node8894_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8894 live8894 coloured8894 = result8894 := by
  rw [tree8894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8892_eq
  unfold live8892 coloured8892 at child
  try dsimp only [live8894, coloured8894]
  rw [child]
  dsimp only [result8892]
  have child := node8893_eq
  unfold live8893 coloured8893 at child
  try dsimp only [live8894, coloured8894]
  rw [child]
  dsimp only [result8893]
  try dsimp only [colour, result8894]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8895_agree : tree8895 = literal8895 := by
  rw [tree8895_def]
  rfl
theorem node8895_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8895 live8895 coloured8895 = result8895 := by
  rw [tree8895_def]
  try dsimp only [colour, result8895]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8896_agree : tree8896 = literal8896 := by
  rw [tree8896_def, tree8894_agree, tree8895_agree]
  rfl
theorem node8896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8896 live8896 coloured8896 = result8896 := by
  rw [tree8896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8894_eq
  unfold live8894 coloured8894 at child
  try dsimp only [live8896, coloured8896]
  rw [child]
  dsimp only [result8894]
  have child := node8895_eq
  unfold live8895 coloured8895 at child
  try dsimp only [live8896, coloured8896]
  rw [child]
  dsimp only [result8895]
  try dsimp only [colour, result8896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8897_agree : tree8897 = literal8897 := by
  rw [tree8897_def]
  rfl
theorem node8897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8897 live8897 coloured8897 = result8897 := by
  rw [tree8897_def]
  try dsimp only [colour, result8897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8898_agree : tree8898 = literal8898 := by
  rw [tree8898_def, tree8896_agree, tree8897_agree]
  rfl
theorem node8898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8898 live8898 coloured8898 = result8898 := by
  rw [tree8898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8896_eq
  unfold live8896 coloured8896 at child
  try dsimp only [live8898, coloured8898]
  rw [child]
  dsimp only [result8896]
  have child := node8897_eq
  unfold live8897 coloured8897 at child
  try dsimp only [live8898, coloured8898]
  rw [child]
  dsimp only [result8897]
  try dsimp only [colour, result8898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8899_agree : tree8899 = literal8899 := by
  rw [tree8899_def]
  rfl
theorem node8899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8899 live8899 coloured8899 = result8899 := by
  rw [tree8899_def]
  try dsimp only [colour, result8899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8900_agree : tree8900 = literal8900 := by
  rw [tree8900_def, tree8898_agree, tree8899_agree]
  rfl
theorem node8900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8900 live8900 coloured8900 = result8900 := by
  rw [tree8900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8898_eq
  unfold live8898 coloured8898 at child
  try dsimp only [live8900, coloured8900]
  rw [child]
  dsimp only [result8898]
  have child := node8899_eq
  unfold live8899 coloured8899 at child
  try dsimp only [live8900, coloured8900]
  rw [child]
  dsimp only [result8899]
  try dsimp only [colour, result8900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8901_agree : tree8901 = literal8901 := by
  rw [tree8901_def]
  rfl
theorem node8901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8901 live8901 coloured8901 = result8901 := by
  rw [tree8901_def]
  try dsimp only [colour, result8901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8902_agree : tree8902 = literal8902 := by
  rw [tree8902_def, tree8900_agree, tree8901_agree]
  rfl
theorem node8902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8902 live8902 coloured8902 = result8902 := by
  rw [tree8902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8900_eq
  unfold live8900 coloured8900 at child
  try dsimp only [live8902, coloured8902]
  rw [child]
  dsimp only [result8900]
  have child := node8901_eq
  unfold live8901 coloured8901 at child
  try dsimp only [live8902, coloured8902]
  rw [child]
  dsimp only [result8901]
  try dsimp only [colour, result8902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8903_agree : tree8903 = literal8903 := by
  rw [tree8903_def]
  rfl
theorem node8903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8903 live8903 coloured8903 = result8903 := by
  rw [tree8903_def]
  try dsimp only [colour, result8903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8904_agree : tree8904 = literal8904 := by
  rw [tree8904_def, tree8902_agree, tree8903_agree]
  rfl
theorem node8904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8904 live8904 coloured8904 = result8904 := by
  rw [tree8904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8902_eq
  unfold live8902 coloured8902 at child
  try dsimp only [live8904, coloured8904]
  rw [child]
  dsimp only [result8902]
  have child := node8903_eq
  unfold live8903 coloured8903 at child
  try dsimp only [live8904, coloured8904]
  rw [child]
  dsimp only [result8903]
  try dsimp only [colour, result8904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8905_agree : tree8905 = literal8905 := by
  rw [tree8905_def]
  rfl
theorem node8905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8905 live8905 coloured8905 = result8905 := by
  rw [tree8905_def]
  try dsimp only [colour, result8905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8906_agree : tree8906 = literal8906 := by
  rw [tree8906_def, tree8904_agree, tree8905_agree]
  rfl
theorem node8906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8906 live8906 coloured8906 = result8906 := by
  rw [tree8906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8904_eq
  unfold live8904 coloured8904 at child
  try dsimp only [live8906, coloured8906]
  rw [child]
  dsimp only [result8904]
  have child := node8905_eq
  unfold live8905 coloured8905 at child
  try dsimp only [live8906, coloured8906]
  rw [child]
  dsimp only [result8905]
  try dsimp only [colour, result8906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8907_agree : tree8907 = literal8907 := by
  rw [tree8907_def]
  rfl
theorem node8907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8907 live8907 coloured8907 = result8907 := by
  rw [tree8907_def]
  try dsimp only [colour, result8907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8908_agree : tree8908 = literal8908 := by
  rw [tree8908_def, tree8906_agree, tree8907_agree]
  rfl
theorem node8908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8908 live8908 coloured8908 = result8908 := by
  rw [tree8908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8906_eq
  unfold live8906 coloured8906 at child
  try dsimp only [live8908, coloured8908]
  rw [child]
  dsimp only [result8906]
  have child := node8907_eq
  unfold live8907 coloured8907 at child
  try dsimp only [live8908, coloured8908]
  rw [child]
  dsimp only [result8907]
  try dsimp only [colour, result8908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8909_agree : tree8909 = literal8909 := by
  rw [tree8909_def]
  rfl
theorem node8909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8909 live8909 coloured8909 = result8909 := by
  rw [tree8909_def]
  try dsimp only [colour, result8909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8910_agree : tree8910 = literal8910 := by
  rw [tree8910_def, tree8908_agree, tree8909_agree]
  rfl
theorem node8910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8910 live8910 coloured8910 = result8910 := by
  rw [tree8910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8908_eq
  unfold live8908 coloured8908 at child
  try dsimp only [live8910, coloured8910]
  rw [child]
  dsimp only [result8908]
  have child := node8909_eq
  unfold live8909 coloured8909 at child
  try dsimp only [live8910, coloured8910]
  rw [child]
  dsimp only [result8909]
  try dsimp only [colour, result8910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8911_agree : tree8911 = literal8911 := by
  rw [tree8911_def]
  rfl
theorem node8911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8911 live8911 coloured8911 = result8911 := by
  rw [tree8911_def]
  try dsimp only [colour, result8911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8912_agree : tree8912 = literal8912 := by
  rw [tree8912_def, tree8910_agree, tree8911_agree]
  rfl
theorem node8912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8912 live8912 coloured8912 = result8912 := by
  rw [tree8912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8910_eq
  unfold live8910 coloured8910 at child
  try dsimp only [live8912, coloured8912]
  rw [child]
  dsimp only [result8910]
  have child := node8911_eq
  unfold live8911 coloured8911 at child
  try dsimp only [live8912, coloured8912]
  rw [child]
  dsimp only [result8911]
  try dsimp only [colour, result8912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8913_agree : tree8913 = literal8913 := by
  rw [tree8913_def]
  rfl
theorem node8913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8913 live8913 coloured8913 = result8913 := by
  rw [tree8913_def]
  try dsimp only [colour, result8913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8914_agree : tree8914 = literal8914 := by
  rw [tree8914_def, tree8912_agree, tree8913_agree]
  rfl
theorem node8914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8914 live8914 coloured8914 = result8914 := by
  rw [tree8914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8912_eq
  unfold live8912 coloured8912 at child
  try dsimp only [live8914, coloured8914]
  rw [child]
  dsimp only [result8912]
  have child := node8913_eq
  unfold live8913 coloured8913 at child
  try dsimp only [live8914, coloured8914]
  rw [child]
  dsimp only [result8913]
  try dsimp only [colour, result8914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8915_agree : tree8915 = literal8915 := by
  rw [tree8915_def]
  rfl
theorem node8915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8915 live8915 coloured8915 = result8915 := by
  rw [tree8915_def]
  try dsimp only [colour, result8915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8916_agree : tree8916 = literal8916 := by
  rw [tree8916_def, tree8914_agree, tree8915_agree]
  rfl
theorem node8916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8916 live8916 coloured8916 = result8916 := by
  rw [tree8916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8914_eq
  unfold live8914 coloured8914 at child
  try dsimp only [live8916, coloured8916]
  rw [child]
  dsimp only [result8914]
  have child := node8915_eq
  unfold live8915 coloured8915 at child
  try dsimp only [live8916, coloured8916]
  rw [child]
  dsimp only [result8915]
  try dsimp only [colour, result8916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8917_agree : tree8917 = literal8917 := by
  rw [tree8917_def]
  rfl
theorem node8917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8917 live8917 coloured8917 = result8917 := by
  rw [tree8917_def]
  try dsimp only [colour, result8917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8918_agree : tree8918 = literal8918 := by
  rw [tree8918_def, tree8916_agree, tree8917_agree]
  rfl
theorem node8918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8918 live8918 coloured8918 = result8918 := by
  rw [tree8918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8916_eq
  unfold live8916 coloured8916 at child
  try dsimp only [live8918, coloured8918]
  rw [child]
  dsimp only [result8916]
  have child := node8917_eq
  unfold live8917 coloured8917 at child
  try dsimp only [live8918, coloured8918]
  rw [child]
  dsimp only [result8917]
  try dsimp only [colour, result8918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8919_agree : tree8919 = literal8919 := by
  rw [tree8919_def]
  rfl
theorem node8919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8919 live8919 coloured8919 = result8919 := by
  rw [tree8919_def]
  try dsimp only [colour, result8919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8920_agree : tree8920 = literal8920 := by
  rw [tree8920_def, tree8918_agree, tree8919_agree]
  rfl
theorem node8920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8920 live8920 coloured8920 = result8920 := by
  rw [tree8920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8918_eq
  unfold live8918 coloured8918 at child
  try dsimp only [live8920, coloured8920]
  rw [child]
  dsimp only [result8918]
  have child := node8919_eq
  unfold live8919 coloured8919 at child
  try dsimp only [live8920, coloured8920]
  rw [child]
  dsimp only [result8919]
  try dsimp only [colour, result8920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8921_agree : tree8921 = literal8921 := by
  rw [tree8921_def]
  rfl
theorem node8921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8921 live8921 coloured8921 = result8921 := by
  rw [tree8921_def]
  try dsimp only [colour, result8921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8922_agree : tree8922 = literal8922 := by
  rw [tree8922_def, tree8920_agree, tree8921_agree]
  rfl
theorem node8922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8922 live8922 coloured8922 = result8922 := by
  rw [tree8922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8920_eq
  unfold live8920 coloured8920 at child
  try dsimp only [live8922, coloured8922]
  rw [child]
  dsimp only [result8920]
  have child := node8921_eq
  unfold live8921 coloured8921 at child
  try dsimp only [live8922, coloured8922]
  rw [child]
  dsimp only [result8921]
  try dsimp only [colour, result8922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8923_agree : tree8923 = literal8923 := by
  rw [tree8923_def]
  rfl
theorem node8923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8923 live8923 coloured8923 = result8923 := by
  rw [tree8923_def]
  try dsimp only [colour, result8923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8924_agree : tree8924 = literal8924 := by
  rw [tree8924_def, tree8922_agree, tree8923_agree]
  rfl
theorem node8924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8924 live8924 coloured8924 = result8924 := by
  rw [tree8924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8922_eq
  unfold live8922 coloured8922 at child
  try dsimp only [live8924, coloured8924]
  rw [child]
  dsimp only [result8922]
  have child := node8923_eq
  unfold live8923 coloured8923 at child
  try dsimp only [live8924, coloured8924]
  rw [child]
  dsimp only [result8923]
  try dsimp only [colour, result8924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8925_agree : tree8925 = literal8925 := by
  rw [tree8925_def]
  rfl
theorem node8925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8925 live8925 coloured8925 = result8925 := by
  rw [tree8925_def]
  try dsimp only [colour, result8925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8926_agree : tree8926 = literal8926 := by
  rw [tree8926_def, tree8924_agree, tree8925_agree]
  rfl
theorem node8926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8926 live8926 coloured8926 = result8926 := by
  rw [tree8926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8924_eq
  unfold live8924 coloured8924 at child
  try dsimp only [live8926, coloured8926]
  rw [child]
  dsimp only [result8924]
  have child := node8925_eq
  unfold live8925 coloured8925 at child
  try dsimp only [live8926, coloured8926]
  rw [child]
  dsimp only [result8925]
  try dsimp only [colour, result8926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8927_agree : tree8927 = literal8927 := by
  rw [tree8927_def]
  rfl
theorem node8927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8927 live8927 coloured8927 = result8927 := by
  rw [tree8927_def]
  try dsimp only [colour, result8927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
