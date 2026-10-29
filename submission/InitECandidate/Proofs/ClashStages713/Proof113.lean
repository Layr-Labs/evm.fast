import InitECandidate.Proofs.ClashStages713.Proof112
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree10848_agree : tree10848 = literal10848 := by
  rw [tree10848_def, tree10846_agree, tree10847_agree]
  rfl
theorem node10848_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10848 live10848 coloured10848 = result10848 := by
  rw [tree10848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10846_eq
  unfold live10846 coloured10846 at child
  try dsimp only [live10848, coloured10848]
  rw [child]
  dsimp only [result10846]
  have child := node10847_eq
  unfold live10847 coloured10847 at child
  try dsimp only [live10848, coloured10848]
  rw [child]
  dsimp only [result10847]
  try dsimp only [colour, result10848]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10849_agree : tree10849 = literal10849 := by
  rw [tree10849_def]
  rfl
theorem node10849_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10849 live10849 coloured10849 = result10849 := by
  rw [tree10849_def]
  try dsimp only [colour, result10849]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10850_agree : tree10850 = literal10850 := by
  rw [tree10850_def, tree10848_agree, tree10849_agree]
  rfl
theorem node10850_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10850 live10850 coloured10850 = result10850 := by
  rw [tree10850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10848_eq
  unfold live10848 coloured10848 at child
  try dsimp only [live10850, coloured10850]
  rw [child]
  dsimp only [result10848]
  have child := node10849_eq
  unfold live10849 coloured10849 at child
  try dsimp only [live10850, coloured10850]
  rw [child]
  dsimp only [result10849]
  try dsimp only [colour, result10850]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10851_agree : tree10851 = literal10851 := by
  rw [tree10851_def]
  rfl
theorem node10851_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10851 live10851 coloured10851 = result10851 := by
  rw [tree10851_def]
  try dsimp only [colour, result10851]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10852_agree : tree10852 = literal10852 := by
  rw [tree10852_def, tree10850_agree, tree10851_agree]
  rfl
theorem node10852_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10852 live10852 coloured10852 = result10852 := by
  rw [tree10852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10850_eq
  unfold live10850 coloured10850 at child
  try dsimp only [live10852, coloured10852]
  rw [child]
  dsimp only [result10850]
  have child := node10851_eq
  unfold live10851 coloured10851 at child
  try dsimp only [live10852, coloured10852]
  rw [child]
  dsimp only [result10851]
  try dsimp only [colour, result10852]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10853_agree : tree10853 = literal10853 := by
  rw [tree10853_def]
  rfl
theorem node10853_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10853 live10853 coloured10853 = result10853 := by
  rw [tree10853_def]
  try dsimp only [colour, result10853]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10854_agree : tree10854 = literal10854 := by
  rw [tree10854_def, tree10852_agree, tree10853_agree]
  rfl
theorem node10854_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10854 live10854 coloured10854 = result10854 := by
  rw [tree10854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10852_eq
  unfold live10852 coloured10852 at child
  try dsimp only [live10854, coloured10854]
  rw [child]
  dsimp only [result10852]
  have child := node10853_eq
  unfold live10853 coloured10853 at child
  try dsimp only [live10854, coloured10854]
  rw [child]
  dsimp only [result10853]
  try dsimp only [colour, result10854]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10855_agree : tree10855 = literal10855 := by
  rw [tree10855_def]
  rfl
theorem node10855_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10855 live10855 coloured10855 = result10855 := by
  rw [tree10855_def]
  try dsimp only [colour, result10855]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10856_agree : tree10856 = literal10856 := by
  rw [tree10856_def, tree10854_agree, tree10855_agree]
  rfl
theorem node10856_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10856 live10856 coloured10856 = result10856 := by
  rw [tree10856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10854_eq
  unfold live10854 coloured10854 at child
  try dsimp only [live10856, coloured10856]
  rw [child]
  dsimp only [result10854]
  have child := node10855_eq
  unfold live10855 coloured10855 at child
  try dsimp only [live10856, coloured10856]
  rw [child]
  dsimp only [result10855]
  try dsimp only [colour, result10856]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10857_agree : tree10857 = literal10857 := by
  rw [tree10857_def]
  rfl
theorem node10857_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10857 live10857 coloured10857 = result10857 := by
  rw [tree10857_def]
  try dsimp only [colour, result10857]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10858_agree : tree10858 = literal10858 := by
  rw [tree10858_def, tree10856_agree, tree10857_agree]
  rfl
theorem node10858_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10858 live10858 coloured10858 = result10858 := by
  rw [tree10858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10856_eq
  unfold live10856 coloured10856 at child
  try dsimp only [live10858, coloured10858]
  rw [child]
  dsimp only [result10856]
  have child := node10857_eq
  unfold live10857 coloured10857 at child
  try dsimp only [live10858, coloured10858]
  rw [child]
  dsimp only [result10857]
  try dsimp only [colour, result10858]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10859_agree : tree10859 = literal10859 := by
  rw [tree10859_def]
  rfl
theorem node10859_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10859 live10859 coloured10859 = result10859 := by
  rw [tree10859_def]
  try dsimp only [colour, result10859]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10860_agree : tree10860 = literal10860 := by
  rw [tree10860_def, tree10858_agree, tree10859_agree]
  rfl
theorem node10860_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10860 live10860 coloured10860 = result10860 := by
  rw [tree10860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10858_eq
  unfold live10858 coloured10858 at child
  try dsimp only [live10860, coloured10860]
  rw [child]
  dsimp only [result10858]
  have child := node10859_eq
  unfold live10859 coloured10859 at child
  try dsimp only [live10860, coloured10860]
  rw [child]
  dsimp only [result10859]
  try dsimp only [colour, result10860]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10861_agree : tree10861 = literal10861 := by
  rw [tree10861_def]
  rfl
theorem node10861_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10861 live10861 coloured10861 = result10861 := by
  rw [tree10861_def]
  try dsimp only [colour, result10861]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10862_agree : tree10862 = literal10862 := by
  rw [tree10862_def, tree10860_agree, tree10861_agree]
  rfl
theorem node10862_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10862 live10862 coloured10862 = result10862 := by
  rw [tree10862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10860_eq
  unfold live10860 coloured10860 at child
  try dsimp only [live10862, coloured10862]
  rw [child]
  dsimp only [result10860]
  have child := node10861_eq
  unfold live10861 coloured10861 at child
  try dsimp only [live10862, coloured10862]
  rw [child]
  dsimp only [result10861]
  try dsimp only [colour, result10862]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10863_agree : tree10863 = literal10863 := by
  rw [tree10863_def]
  rfl
theorem node10863_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10863 live10863 coloured10863 = result10863 := by
  rw [tree10863_def]
  try dsimp only [colour, result10863]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10864_agree : tree10864 = literal10864 := by
  rw [tree10864_def, tree10862_agree, tree10863_agree]
  rfl
theorem node10864_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10864 live10864 coloured10864 = result10864 := by
  rw [tree10864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10862_eq
  unfold live10862 coloured10862 at child
  try dsimp only [live10864, coloured10864]
  rw [child]
  dsimp only [result10862]
  have child := node10863_eq
  unfold live10863 coloured10863 at child
  try dsimp only [live10864, coloured10864]
  rw [child]
  dsimp only [result10863]
  try dsimp only [colour, result10864]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10865_agree : tree10865 = literal10865 := by
  rw [tree10865_def]
  rfl
theorem node10865_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10865 live10865 coloured10865 = result10865 := by
  rw [tree10865_def]
  try dsimp only [colour, result10865]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10866_agree : tree10866 = literal10866 := by
  rw [tree10866_def, tree10864_agree, tree10865_agree]
  rfl
theorem node10866_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10866 live10866 coloured10866 = result10866 := by
  rw [tree10866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10864_eq
  unfold live10864 coloured10864 at child
  try dsimp only [live10866, coloured10866]
  rw [child]
  dsimp only [result10864]
  have child := node10865_eq
  unfold live10865 coloured10865 at child
  try dsimp only [live10866, coloured10866]
  rw [child]
  dsimp only [result10865]
  try dsimp only [colour, result10866]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10867_agree : tree10867 = literal10867 := by
  rw [tree10867_def]
  rfl
theorem node10867_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10867 live10867 coloured10867 = result10867 := by
  rw [tree10867_def]
  try dsimp only [colour, result10867]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10868_agree : tree10868 = literal10868 := by
  rw [tree10868_def, tree10866_agree, tree10867_agree]
  rfl
theorem node10868_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10868 live10868 coloured10868 = result10868 := by
  rw [tree10868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10866_eq
  unfold live10866 coloured10866 at child
  try dsimp only [live10868, coloured10868]
  rw [child]
  dsimp only [result10866]
  have child := node10867_eq
  unfold live10867 coloured10867 at child
  try dsimp only [live10868, coloured10868]
  rw [child]
  dsimp only [result10867]
  try dsimp only [colour, result10868]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10869_agree : tree10869 = literal10869 := by
  rw [tree10869_def]
  rfl
theorem node10869_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10869 live10869 coloured10869 = result10869 := by
  rw [tree10869_def]
  try dsimp only [colour, result10869]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10870_agree : tree10870 = literal10870 := by
  rw [tree10870_def, tree10868_agree, tree10869_agree]
  rfl
theorem node10870_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10870 live10870 coloured10870 = result10870 := by
  rw [tree10870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10868_eq
  unfold live10868 coloured10868 at child
  try dsimp only [live10870, coloured10870]
  rw [child]
  dsimp only [result10868]
  have child := node10869_eq
  unfold live10869 coloured10869 at child
  try dsimp only [live10870, coloured10870]
  rw [child]
  dsimp only [result10869]
  try dsimp only [colour, result10870]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10871_agree : tree10871 = literal10871 := by
  rw [tree10871_def]
  rfl
theorem node10871_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10871 live10871 coloured10871 = result10871 := by
  rw [tree10871_def]
  try dsimp only [colour, result10871]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10872_agree : tree10872 = literal10872 := by
  rw [tree10872_def, tree10870_agree, tree10871_agree]
  rfl
theorem node10872_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10872 live10872 coloured10872 = result10872 := by
  rw [tree10872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10870_eq
  unfold live10870 coloured10870 at child
  try dsimp only [live10872, coloured10872]
  rw [child]
  dsimp only [result10870]
  have child := node10871_eq
  unfold live10871 coloured10871 at child
  try dsimp only [live10872, coloured10872]
  rw [child]
  dsimp only [result10871]
  try dsimp only [colour, result10872]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10873_agree : tree10873 = literal10873 := by
  rw [tree10873_def]
  rfl
theorem node10873_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10873 live10873 coloured10873 = result10873 := by
  rw [tree10873_def]
  try dsimp only [colour, result10873]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10874_agree : tree10874 = literal10874 := by
  rw [tree10874_def, tree10872_agree, tree10873_agree]
  rfl
theorem node10874_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10874 live10874 coloured10874 = result10874 := by
  rw [tree10874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10872_eq
  unfold live10872 coloured10872 at child
  try dsimp only [live10874, coloured10874]
  rw [child]
  dsimp only [result10872]
  have child := node10873_eq
  unfold live10873 coloured10873 at child
  try dsimp only [live10874, coloured10874]
  rw [child]
  dsimp only [result10873]
  try dsimp only [colour, result10874]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10875_agree : tree10875 = literal10875 := by
  rw [tree10875_def]
  rfl
theorem node10875_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10875 live10875 coloured10875 = result10875 := by
  rw [tree10875_def]
  try dsimp only [colour, result10875]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10876_agree : tree10876 = literal10876 := by
  rw [tree10876_def, tree10874_agree, tree10875_agree]
  rfl
theorem node10876_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10876 live10876 coloured10876 = result10876 := by
  rw [tree10876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10874_eq
  unfold live10874 coloured10874 at child
  try dsimp only [live10876, coloured10876]
  rw [child]
  dsimp only [result10874]
  have child := node10875_eq
  unfold live10875 coloured10875 at child
  try dsimp only [live10876, coloured10876]
  rw [child]
  dsimp only [result10875]
  try dsimp only [colour, result10876]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10877_agree : tree10877 = literal10877 := by
  rw [tree10877_def]
  rfl
theorem node10877_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10877 live10877 coloured10877 = result10877 := by
  rw [tree10877_def]
  try dsimp only [colour, result10877]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10878_agree : tree10878 = literal10878 := by
  rw [tree10878_def, tree10876_agree, tree10877_agree]
  rfl
theorem node10878_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10878 live10878 coloured10878 = result10878 := by
  rw [tree10878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10876_eq
  unfold live10876 coloured10876 at child
  try dsimp only [live10878, coloured10878]
  rw [child]
  dsimp only [result10876]
  have child := node10877_eq
  unfold live10877 coloured10877 at child
  try dsimp only [live10878, coloured10878]
  rw [child]
  dsimp only [result10877]
  try dsimp only [colour, result10878]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10879_agree : tree10879 = literal10879 := by
  rw [tree10879_def]
  rfl
theorem node10879_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10879 live10879 coloured10879 = result10879 := by
  rw [tree10879_def]
  try dsimp only [colour, result10879]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10880_agree : tree10880 = literal10880 := by
  rw [tree10880_def, tree10878_agree, tree10879_agree]
  rfl
theorem node10880_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10880 live10880 coloured10880 = result10880 := by
  rw [tree10880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10878_eq
  unfold live10878 coloured10878 at child
  try dsimp only [live10880, coloured10880]
  rw [child]
  dsimp only [result10878]
  have child := node10879_eq
  unfold live10879 coloured10879 at child
  try dsimp only [live10880, coloured10880]
  rw [child]
  dsimp only [result10879]
  try dsimp only [colour, result10880]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10881_agree : tree10881 = literal10881 := by
  rw [tree10881_def]
  rfl
theorem node10881_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10881 live10881 coloured10881 = result10881 := by
  rw [tree10881_def]
  try dsimp only [colour, result10881]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10882_agree : tree10882 = literal10882 := by
  rw [tree10882_def, tree10880_agree, tree10881_agree]
  rfl
theorem node10882_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10882 live10882 coloured10882 = result10882 := by
  rw [tree10882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10880_eq
  unfold live10880 coloured10880 at child
  try dsimp only [live10882, coloured10882]
  rw [child]
  dsimp only [result10880]
  have child := node10881_eq
  unfold live10881 coloured10881 at child
  try dsimp only [live10882, coloured10882]
  rw [child]
  dsimp only [result10881]
  try dsimp only [colour, result10882]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10883_agree : tree10883 = literal10883 := by
  rw [tree10883_def]
  rfl
theorem node10883_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10883 live10883 coloured10883 = result10883 := by
  rw [tree10883_def]
  try dsimp only [colour, result10883]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10884_agree : tree10884 = literal10884 := by
  rw [tree10884_def, tree10882_agree, tree10883_agree]
  rfl
theorem node10884_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10884 live10884 coloured10884 = result10884 := by
  rw [tree10884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10882_eq
  unfold live10882 coloured10882 at child
  try dsimp only [live10884, coloured10884]
  rw [child]
  dsimp only [result10882]
  have child := node10883_eq
  unfold live10883 coloured10883 at child
  try dsimp only [live10884, coloured10884]
  rw [child]
  dsimp only [result10883]
  try dsimp only [colour, result10884]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10885_agree : tree10885 = literal10885 := by
  rw [tree10885_def]
  rfl
theorem node10885_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10885 live10885 coloured10885 = result10885 := by
  rw [tree10885_def]
  try dsimp only [colour, result10885]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10886_agree : tree10886 = literal10886 := by
  rw [tree10886_def, tree10884_agree, tree10885_agree]
  rfl
theorem node10886_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10886 live10886 coloured10886 = result10886 := by
  rw [tree10886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10884_eq
  unfold live10884 coloured10884 at child
  try dsimp only [live10886, coloured10886]
  rw [child]
  dsimp only [result10884]
  have child := node10885_eq
  unfold live10885 coloured10885 at child
  try dsimp only [live10886, coloured10886]
  rw [child]
  dsimp only [result10885]
  try dsimp only [colour, result10886]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10887_agree : tree10887 = literal10887 := by
  rw [tree10887_def]
  rfl
theorem node10887_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10887 live10887 coloured10887 = result10887 := by
  rw [tree10887_def]
  try dsimp only [colour, result10887]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10888_agree : tree10888 = literal10888 := by
  rw [tree10888_def, tree10886_agree, tree10887_agree]
  rfl
theorem node10888_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10888 live10888 coloured10888 = result10888 := by
  rw [tree10888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10886_eq
  unfold live10886 coloured10886 at child
  try dsimp only [live10888, coloured10888]
  rw [child]
  dsimp only [result10886]
  have child := node10887_eq
  unfold live10887 coloured10887 at child
  try dsimp only [live10888, coloured10888]
  rw [child]
  dsimp only [result10887]
  try dsimp only [colour, result10888]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10889_agree : tree10889 = literal10889 := by
  rw [tree10889_def]
  rfl
theorem node10889_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10889 live10889 coloured10889 = result10889 := by
  rw [tree10889_def]
  try dsimp only [colour, result10889]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10890_agree : tree10890 = literal10890 := by
  rw [tree10890_def, tree10888_agree, tree10889_agree]
  rfl
theorem node10890_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10890 live10890 coloured10890 = result10890 := by
  rw [tree10890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10888_eq
  unfold live10888 coloured10888 at child
  try dsimp only [live10890, coloured10890]
  rw [child]
  dsimp only [result10888]
  have child := node10889_eq
  unfold live10889 coloured10889 at child
  try dsimp only [live10890, coloured10890]
  rw [child]
  dsimp only [result10889]
  try dsimp only [colour, result10890]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10891_agree : tree10891 = literal10891 := by
  rw [tree10891_def]
  rfl
theorem node10891_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10891 live10891 coloured10891 = result10891 := by
  rw [tree10891_def]
  try dsimp only [colour, result10891]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10892_agree : tree10892 = literal10892 := by
  rw [tree10892_def, tree10890_agree, tree10891_agree]
  rfl
theorem node10892_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10892 live10892 coloured10892 = result10892 := by
  rw [tree10892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10890_eq
  unfold live10890 coloured10890 at child
  try dsimp only [live10892, coloured10892]
  rw [child]
  dsimp only [result10890]
  have child := node10891_eq
  unfold live10891 coloured10891 at child
  try dsimp only [live10892, coloured10892]
  rw [child]
  dsimp only [result10891]
  try dsimp only [colour, result10892]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10893_agree : tree10893 = literal10893 := by
  rw [tree10893_def]
  rfl
theorem node10893_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10893 live10893 coloured10893 = result10893 := by
  rw [tree10893_def]
  try dsimp only [colour, result10893]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10894_agree : tree10894 = literal10894 := by
  rw [tree10894_def, tree10892_agree, tree10893_agree]
  rfl
theorem node10894_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10894 live10894 coloured10894 = result10894 := by
  rw [tree10894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10892_eq
  unfold live10892 coloured10892 at child
  try dsimp only [live10894, coloured10894]
  rw [child]
  dsimp only [result10892]
  have child := node10893_eq
  unfold live10893 coloured10893 at child
  try dsimp only [live10894, coloured10894]
  rw [child]
  dsimp only [result10893]
  try dsimp only [colour, result10894]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10895_agree : tree10895 = literal10895 := by
  rw [tree10895_def]
  rfl
theorem node10895_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10895 live10895 coloured10895 = result10895 := by
  rw [tree10895_def]
  try dsimp only [colour, result10895]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10896_agree : tree10896 = literal10896 := by
  rw [tree10896_def, tree10894_agree, tree10895_agree]
  rfl
theorem node10896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10896 live10896 coloured10896 = result10896 := by
  rw [tree10896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10894_eq
  unfold live10894 coloured10894 at child
  try dsimp only [live10896, coloured10896]
  rw [child]
  dsimp only [result10894]
  have child := node10895_eq
  unfold live10895 coloured10895 at child
  try dsimp only [live10896, coloured10896]
  rw [child]
  dsimp only [result10895]
  try dsimp only [colour, result10896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10897_agree : tree10897 = literal10897 := by
  rw [tree10897_def]
  rfl
theorem node10897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10897 live10897 coloured10897 = result10897 := by
  rw [tree10897_def]
  try dsimp only [colour, result10897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10898_agree : tree10898 = literal10898 := by
  rw [tree10898_def, tree10896_agree, tree10897_agree]
  rfl
theorem node10898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10898 live10898 coloured10898 = result10898 := by
  rw [tree10898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10896_eq
  unfold live10896 coloured10896 at child
  try dsimp only [live10898, coloured10898]
  rw [child]
  dsimp only [result10896]
  have child := node10897_eq
  unfold live10897 coloured10897 at child
  try dsimp only [live10898, coloured10898]
  rw [child]
  dsimp only [result10897]
  try dsimp only [colour, result10898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10899_agree : tree10899 = literal10899 := by
  rw [tree10899_def]
  rfl
theorem node10899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10899 live10899 coloured10899 = result10899 := by
  rw [tree10899_def]
  try dsimp only [colour, result10899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10900_agree : tree10900 = literal10900 := by
  rw [tree10900_def, tree10898_agree, tree10899_agree]
  rfl
theorem node10900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10900 live10900 coloured10900 = result10900 := by
  rw [tree10900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10898_eq
  unfold live10898 coloured10898 at child
  try dsimp only [live10900, coloured10900]
  rw [child]
  dsimp only [result10898]
  have child := node10899_eq
  unfold live10899 coloured10899 at child
  try dsimp only [live10900, coloured10900]
  rw [child]
  dsimp only [result10899]
  try dsimp only [colour, result10900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10901_agree : tree10901 = literal10901 := by
  rw [tree10901_def]
  rfl
theorem node10901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10901 live10901 coloured10901 = result10901 := by
  rw [tree10901_def]
  try dsimp only [colour, result10901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10902_agree : tree10902 = literal10902 := by
  rw [tree10902_def, tree10900_agree, tree10901_agree]
  rfl
theorem node10902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10902 live10902 coloured10902 = result10902 := by
  rw [tree10902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10900_eq
  unfold live10900 coloured10900 at child
  try dsimp only [live10902, coloured10902]
  rw [child]
  dsimp only [result10900]
  have child := node10901_eq
  unfold live10901 coloured10901 at child
  try dsimp only [live10902, coloured10902]
  rw [child]
  dsimp only [result10901]
  try dsimp only [colour, result10902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10903_agree : tree10903 = literal10903 := by
  rw [tree10903_def]
  rfl
theorem node10903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10903 live10903 coloured10903 = result10903 := by
  rw [tree10903_def]
  try dsimp only [colour, result10903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10904_agree : tree10904 = literal10904 := by
  rw [tree10904_def, tree10902_agree, tree10903_agree]
  rfl
theorem node10904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10904 live10904 coloured10904 = result10904 := by
  rw [tree10904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10902_eq
  unfold live10902 coloured10902 at child
  try dsimp only [live10904, coloured10904]
  rw [child]
  dsimp only [result10902]
  have child := node10903_eq
  unfold live10903 coloured10903 at child
  try dsimp only [live10904, coloured10904]
  rw [child]
  dsimp only [result10903]
  try dsimp only [colour, result10904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10905_agree : tree10905 = literal10905 := by
  rw [tree10905_def]
  rfl
theorem node10905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10905 live10905 coloured10905 = result10905 := by
  rw [tree10905_def]
  try dsimp only [colour, result10905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10906_agree : tree10906 = literal10906 := by
  rw [tree10906_def, tree10904_agree, tree10905_agree]
  rfl
theorem node10906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10906 live10906 coloured10906 = result10906 := by
  rw [tree10906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10904_eq
  unfold live10904 coloured10904 at child
  try dsimp only [live10906, coloured10906]
  rw [child]
  dsimp only [result10904]
  have child := node10905_eq
  unfold live10905 coloured10905 at child
  try dsimp only [live10906, coloured10906]
  rw [child]
  dsimp only [result10905]
  try dsimp only [colour, result10906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10907_agree : tree10907 = literal10907 := by
  rw [tree10907_def]
  rfl
theorem node10907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10907 live10907 coloured10907 = result10907 := by
  rw [tree10907_def]
  try dsimp only [colour, result10907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10908_agree : tree10908 = literal10908 := by
  rw [tree10908_def, tree10906_agree, tree10907_agree]
  rfl
theorem node10908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10908 live10908 coloured10908 = result10908 := by
  rw [tree10908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10906_eq
  unfold live10906 coloured10906 at child
  try dsimp only [live10908, coloured10908]
  rw [child]
  dsimp only [result10906]
  have child := node10907_eq
  unfold live10907 coloured10907 at child
  try dsimp only [live10908, coloured10908]
  rw [child]
  dsimp only [result10907]
  try dsimp only [colour, result10908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10909_agree : tree10909 = literal10909 := by
  rw [tree10909_def]
  rfl
theorem node10909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10909 live10909 coloured10909 = result10909 := by
  rw [tree10909_def]
  try dsimp only [colour, result10909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10910_agree : tree10910 = literal10910 := by
  rw [tree10910_def, tree10908_agree, tree10909_agree]
  rfl
theorem node10910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10910 live10910 coloured10910 = result10910 := by
  rw [tree10910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10908_eq
  unfold live10908 coloured10908 at child
  try dsimp only [live10910, coloured10910]
  rw [child]
  dsimp only [result10908]
  have child := node10909_eq
  unfold live10909 coloured10909 at child
  try dsimp only [live10910, coloured10910]
  rw [child]
  dsimp only [result10909]
  try dsimp only [colour, result10910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10911_agree : tree10911 = literal10911 := by
  rw [tree10911_def]
  rfl
theorem node10911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10911 live10911 coloured10911 = result10911 := by
  rw [tree10911_def]
  try dsimp only [colour, result10911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10912_agree : tree10912 = literal10912 := by
  rw [tree10912_def, tree10910_agree, tree10911_agree]
  rfl
theorem node10912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10912 live10912 coloured10912 = result10912 := by
  rw [tree10912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10910_eq
  unfold live10910 coloured10910 at child
  try dsimp only [live10912, coloured10912]
  rw [child]
  dsimp only [result10910]
  have child := node10911_eq
  unfold live10911 coloured10911 at child
  try dsimp only [live10912, coloured10912]
  rw [child]
  dsimp only [result10911]
  try dsimp only [colour, result10912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10913_agree : tree10913 = literal10913 := by
  rw [tree10913_def]
  rfl
theorem node10913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10913 live10913 coloured10913 = result10913 := by
  rw [tree10913_def]
  try dsimp only [colour, result10913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10914_agree : tree10914 = literal10914 := by
  rw [tree10914_def, tree10912_agree, tree10913_agree]
  rfl
theorem node10914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10914 live10914 coloured10914 = result10914 := by
  rw [tree10914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10912_eq
  unfold live10912 coloured10912 at child
  try dsimp only [live10914, coloured10914]
  rw [child]
  dsimp only [result10912]
  have child := node10913_eq
  unfold live10913 coloured10913 at child
  try dsimp only [live10914, coloured10914]
  rw [child]
  dsimp only [result10913]
  try dsimp only [colour, result10914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10915_agree : tree10915 = literal10915 := by
  rw [tree10915_def]
  rfl
theorem node10915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10915 live10915 coloured10915 = result10915 := by
  rw [tree10915_def]
  try dsimp only [colour, result10915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10916_agree : tree10916 = literal10916 := by
  rw [tree10916_def, tree10914_agree, tree10915_agree]
  rfl
theorem node10916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10916 live10916 coloured10916 = result10916 := by
  rw [tree10916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10914_eq
  unfold live10914 coloured10914 at child
  try dsimp only [live10916, coloured10916]
  rw [child]
  dsimp only [result10914]
  have child := node10915_eq
  unfold live10915 coloured10915 at child
  try dsimp only [live10916, coloured10916]
  rw [child]
  dsimp only [result10915]
  try dsimp only [colour, result10916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10917_agree : tree10917 = literal10917 := by
  rw [tree10917_def]
  rfl
theorem node10917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10917 live10917 coloured10917 = result10917 := by
  rw [tree10917_def]
  try dsimp only [colour, result10917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10918_agree : tree10918 = literal10918 := by
  rw [tree10918_def, tree10916_agree, tree10917_agree]
  rfl
theorem node10918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10918 live10918 coloured10918 = result10918 := by
  rw [tree10918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10916_eq
  unfold live10916 coloured10916 at child
  try dsimp only [live10918, coloured10918]
  rw [child]
  dsimp only [result10916]
  have child := node10917_eq
  unfold live10917 coloured10917 at child
  try dsimp only [live10918, coloured10918]
  rw [child]
  dsimp only [result10917]
  try dsimp only [colour, result10918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10919_agree : tree10919 = literal10919 := by
  rw [tree10919_def]
  rfl
theorem node10919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10919 live10919 coloured10919 = result10919 := by
  rw [tree10919_def]
  try dsimp only [colour, result10919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10920_agree : tree10920 = literal10920 := by
  rw [tree10920_def, tree10918_agree, tree10919_agree]
  rfl
theorem node10920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10920 live10920 coloured10920 = result10920 := by
  rw [tree10920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10918_eq
  unfold live10918 coloured10918 at child
  try dsimp only [live10920, coloured10920]
  rw [child]
  dsimp only [result10918]
  have child := node10919_eq
  unfold live10919 coloured10919 at child
  try dsimp only [live10920, coloured10920]
  rw [child]
  dsimp only [result10919]
  try dsimp only [colour, result10920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10921_agree : tree10921 = literal10921 := by
  rw [tree10921_def]
  rfl
theorem node10921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10921 live10921 coloured10921 = result10921 := by
  rw [tree10921_def]
  try dsimp only [colour, result10921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10922_agree : tree10922 = literal10922 := by
  rw [tree10922_def, tree10920_agree, tree10921_agree]
  rfl
theorem node10922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10922 live10922 coloured10922 = result10922 := by
  rw [tree10922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10920_eq
  unfold live10920 coloured10920 at child
  try dsimp only [live10922, coloured10922]
  rw [child]
  dsimp only [result10920]
  have child := node10921_eq
  unfold live10921 coloured10921 at child
  try dsimp only [live10922, coloured10922]
  rw [child]
  dsimp only [result10921]
  try dsimp only [colour, result10922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10923_agree : tree10923 = literal10923 := by
  rw [tree10923_def]
  rfl
theorem node10923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10923 live10923 coloured10923 = result10923 := by
  rw [tree10923_def]
  try dsimp only [colour, result10923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10924_agree : tree10924 = literal10924 := by
  rw [tree10924_def, tree10922_agree, tree10923_agree]
  rfl
theorem node10924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10924 live10924 coloured10924 = result10924 := by
  rw [tree10924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10922_eq
  unfold live10922 coloured10922 at child
  try dsimp only [live10924, coloured10924]
  rw [child]
  dsimp only [result10922]
  have child := node10923_eq
  unfold live10923 coloured10923 at child
  try dsimp only [live10924, coloured10924]
  rw [child]
  dsimp only [result10923]
  try dsimp only [colour, result10924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10925_agree : tree10925 = literal10925 := by
  rw [tree10925_def]
  rfl
theorem node10925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10925 live10925 coloured10925 = result10925 := by
  rw [tree10925_def]
  try dsimp only [colour, result10925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10926_agree : tree10926 = literal10926 := by
  rw [tree10926_def, tree10924_agree, tree10925_agree]
  rfl
theorem node10926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10926 live10926 coloured10926 = result10926 := by
  rw [tree10926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10924_eq
  unfold live10924 coloured10924 at child
  try dsimp only [live10926, coloured10926]
  rw [child]
  dsimp only [result10924]
  have child := node10925_eq
  unfold live10925 coloured10925 at child
  try dsimp only [live10926, coloured10926]
  rw [child]
  dsimp only [result10925]
  try dsimp only [colour, result10926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10927_agree : tree10927 = literal10927 := by
  rw [tree10927_def]
  rfl
theorem node10927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10927 live10927 coloured10927 = result10927 := by
  rw [tree10927_def]
  try dsimp only [colour, result10927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10928_agree : tree10928 = literal10928 := by
  rw [tree10928_def, tree10926_agree, tree10927_agree]
  rfl
theorem node10928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10928 live10928 coloured10928 = result10928 := by
  rw [tree10928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10926_eq
  unfold live10926 coloured10926 at child
  try dsimp only [live10928, coloured10928]
  rw [child]
  dsimp only [result10926]
  have child := node10927_eq
  unfold live10927 coloured10927 at child
  try dsimp only [live10928, coloured10928]
  rw [child]
  dsimp only [result10927]
  try dsimp only [colour, result10928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10929_agree : tree10929 = literal10929 := by
  rw [tree10929_def]
  rfl
theorem node10929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10929 live10929 coloured10929 = result10929 := by
  rw [tree10929_def]
  try dsimp only [colour, result10929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10930_agree : tree10930 = literal10930 := by
  rw [tree10930_def, tree10928_agree, tree10929_agree]
  rfl
theorem node10930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10930 live10930 coloured10930 = result10930 := by
  rw [tree10930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10928_eq
  unfold live10928 coloured10928 at child
  try dsimp only [live10930, coloured10930]
  rw [child]
  dsimp only [result10928]
  have child := node10929_eq
  unfold live10929 coloured10929 at child
  try dsimp only [live10930, coloured10930]
  rw [child]
  dsimp only [result10929]
  try dsimp only [colour, result10930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10931_agree : tree10931 = literal10931 := by
  rw [tree10931_def]
  rfl
theorem node10931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10931 live10931 coloured10931 = result10931 := by
  rw [tree10931_def]
  try dsimp only [colour, result10931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10932_agree : tree10932 = literal10932 := by
  rw [tree10932_def, tree10930_agree, tree10931_agree]
  rfl
theorem node10932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10932 live10932 coloured10932 = result10932 := by
  rw [tree10932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10930_eq
  unfold live10930 coloured10930 at child
  try dsimp only [live10932, coloured10932]
  rw [child]
  dsimp only [result10930]
  have child := node10931_eq
  unfold live10931 coloured10931 at child
  try dsimp only [live10932, coloured10932]
  rw [child]
  dsimp only [result10931]
  try dsimp only [colour, result10932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10933_agree : tree10933 = literal10933 := by
  rw [tree10933_def]
  rfl
theorem node10933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10933 live10933 coloured10933 = result10933 := by
  rw [tree10933_def]
  try dsimp only [colour, result10933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10934_agree : tree10934 = literal10934 := by
  rw [tree10934_def, tree10932_agree, tree10933_agree]
  rfl
theorem node10934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10934 live10934 coloured10934 = result10934 := by
  rw [tree10934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10932_eq
  unfold live10932 coloured10932 at child
  try dsimp only [live10934, coloured10934]
  rw [child]
  dsimp only [result10932]
  have child := node10933_eq
  unfold live10933 coloured10933 at child
  try dsimp only [live10934, coloured10934]
  rw [child]
  dsimp only [result10933]
  try dsimp only [colour, result10934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10935_agree : tree10935 = literal10935 := by
  rw [tree10935_def]
  rfl
theorem node10935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10935 live10935 coloured10935 = result10935 := by
  rw [tree10935_def]
  try dsimp only [colour, result10935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10936_agree : tree10936 = literal10936 := by
  rw [tree10936_def, tree10934_agree, tree10935_agree]
  rfl
theorem node10936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10936 live10936 coloured10936 = result10936 := by
  rw [tree10936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10934_eq
  unfold live10934 coloured10934 at child
  try dsimp only [live10936, coloured10936]
  rw [child]
  dsimp only [result10934]
  have child := node10935_eq
  unfold live10935 coloured10935 at child
  try dsimp only [live10936, coloured10936]
  rw [child]
  dsimp only [result10935]
  try dsimp only [colour, result10936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10937_agree : tree10937 = literal10937 := by
  rw [tree10937_def]
  rfl
theorem node10937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10937 live10937 coloured10937 = result10937 := by
  rw [tree10937_def]
  try dsimp only [colour, result10937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10938_agree : tree10938 = literal10938 := by
  rw [tree10938_def, tree10936_agree, tree10937_agree]
  rfl
theorem node10938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10938 live10938 coloured10938 = result10938 := by
  rw [tree10938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10936_eq
  unfold live10936 coloured10936 at child
  try dsimp only [live10938, coloured10938]
  rw [child]
  dsimp only [result10936]
  have child := node10937_eq
  unfold live10937 coloured10937 at child
  try dsimp only [live10938, coloured10938]
  rw [child]
  dsimp only [result10937]
  try dsimp only [colour, result10938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10939_agree : tree10939 = literal10939 := by
  rw [tree10939_def]
  rfl
theorem node10939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10939 live10939 coloured10939 = result10939 := by
  rw [tree10939_def]
  try dsimp only [colour, result10939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10940_agree : tree10940 = literal10940 := by
  rw [tree10940_def, tree10938_agree, tree10939_agree]
  rfl
theorem node10940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10940 live10940 coloured10940 = result10940 := by
  rw [tree10940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10938_eq
  unfold live10938 coloured10938 at child
  try dsimp only [live10940, coloured10940]
  rw [child]
  dsimp only [result10938]
  have child := node10939_eq
  unfold live10939 coloured10939 at child
  try dsimp only [live10940, coloured10940]
  rw [child]
  dsimp only [result10939]
  try dsimp only [colour, result10940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10941_agree : tree10941 = literal10941 := by
  rw [tree10941_def]
  rfl
theorem node10941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10941 live10941 coloured10941 = result10941 := by
  rw [tree10941_def]
  try dsimp only [colour, result10941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10942_agree : tree10942 = literal10942 := by
  rw [tree10942_def, tree10940_agree, tree10941_agree]
  rfl
theorem node10942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10942 live10942 coloured10942 = result10942 := by
  rw [tree10942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10940_eq
  unfold live10940 coloured10940 at child
  try dsimp only [live10942, coloured10942]
  rw [child]
  dsimp only [result10940]
  have child := node10941_eq
  unfold live10941 coloured10941 at child
  try dsimp only [live10942, coloured10942]
  rw [child]
  dsimp only [result10941]
  try dsimp only [colour, result10942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10943_agree : tree10943 = literal10943 := by
  rw [tree10943_def]
  rfl
theorem node10943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10943 live10943 coloured10943 = result10943 := by
  rw [tree10943_def]
  try dsimp only [colour, result10943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
