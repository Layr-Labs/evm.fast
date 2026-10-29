import InitECandidate.Proofs.ClashStages713.Proof81
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree7872_agree : tree7872 = literal7872 := by
  rw [tree7872_def, tree7870_agree, tree7871_agree]
  rfl
theorem node7872_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7872 live7872 coloured7872 = result7872 := by
  rw [tree7872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7870_eq
  unfold live7870 coloured7870 at child
  try dsimp only [live7872, coloured7872]
  rw [child]
  dsimp only [result7870]
  have child := node7871_eq
  unfold live7871 coloured7871 at child
  try dsimp only [live7872, coloured7872]
  rw [child]
  dsimp only [result7871]
  try dsimp only [colour, result7872]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7873_agree : tree7873 = literal7873 := by
  rw [tree7873_def]
  rfl
theorem node7873_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7873 live7873 coloured7873 = result7873 := by
  rw [tree7873_def]
  try dsimp only [colour, result7873]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7874_agree : tree7874 = literal7874 := by
  rw [tree7874_def, tree7872_agree, tree7873_agree]
  rfl
theorem node7874_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7874 live7874 coloured7874 = result7874 := by
  rw [tree7874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7872_eq
  unfold live7872 coloured7872 at child
  try dsimp only [live7874, coloured7874]
  rw [child]
  dsimp only [result7872]
  have child := node7873_eq
  unfold live7873 coloured7873 at child
  try dsimp only [live7874, coloured7874]
  rw [child]
  dsimp only [result7873]
  try dsimp only [colour, result7874]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7875_agree : tree7875 = literal7875 := by
  rw [tree7875_def]
  rfl
theorem node7875_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7875 live7875 coloured7875 = result7875 := by
  rw [tree7875_def]
  try dsimp only [colour, result7875]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7876_agree : tree7876 = literal7876 := by
  rw [tree7876_def, tree7874_agree, tree7875_agree]
  rfl
theorem node7876_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7876 live7876 coloured7876 = result7876 := by
  rw [tree7876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7874_eq
  unfold live7874 coloured7874 at child
  try dsimp only [live7876, coloured7876]
  rw [child]
  dsimp only [result7874]
  have child := node7875_eq
  unfold live7875 coloured7875 at child
  try dsimp only [live7876, coloured7876]
  rw [child]
  dsimp only [result7875]
  try dsimp only [colour, result7876]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7877_agree : tree7877 = literal7877 := by
  rw [tree7877_def]
  rfl
theorem node7877_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7877 live7877 coloured7877 = result7877 := by
  rw [tree7877_def]
  try dsimp only [colour, result7877]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7878_agree : tree7878 = literal7878 := by
  rw [tree7878_def, tree7876_agree, tree7877_agree]
  rfl
theorem node7878_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7878 live7878 coloured7878 = result7878 := by
  rw [tree7878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7876_eq
  unfold live7876 coloured7876 at child
  try dsimp only [live7878, coloured7878]
  rw [child]
  dsimp only [result7876]
  have child := node7877_eq
  unfold live7877 coloured7877 at child
  try dsimp only [live7878, coloured7878]
  rw [child]
  dsimp only [result7877]
  try dsimp only [colour, result7878]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7879_agree : tree7879 = literal7879 := by
  rw [tree7879_def]
  rfl
theorem node7879_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7879 live7879 coloured7879 = result7879 := by
  rw [tree7879_def]
  try dsimp only [colour, result7879]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7880_agree : tree7880 = literal7880 := by
  rw [tree7880_def, tree7878_agree, tree7879_agree]
  rfl
theorem node7880_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7880 live7880 coloured7880 = result7880 := by
  rw [tree7880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7878_eq
  unfold live7878 coloured7878 at child
  try dsimp only [live7880, coloured7880]
  rw [child]
  dsimp only [result7878]
  have child := node7879_eq
  unfold live7879 coloured7879 at child
  try dsimp only [live7880, coloured7880]
  rw [child]
  dsimp only [result7879]
  try dsimp only [colour, result7880]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7881_agree : tree7881 = literal7881 := by
  rw [tree7881_def]
  rfl
theorem node7881_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7881 live7881 coloured7881 = result7881 := by
  rw [tree7881_def]
  try dsimp only [colour, result7881]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7882_agree : tree7882 = literal7882 := by
  rw [tree7882_def, tree7880_agree, tree7881_agree]
  rfl
theorem node7882_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7882 live7882 coloured7882 = result7882 := by
  rw [tree7882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7880_eq
  unfold live7880 coloured7880 at child
  try dsimp only [live7882, coloured7882]
  rw [child]
  dsimp only [result7880]
  have child := node7881_eq
  unfold live7881 coloured7881 at child
  try dsimp only [live7882, coloured7882]
  rw [child]
  dsimp only [result7881]
  try dsimp only [colour, result7882]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7883_agree : tree7883 = literal7883 := by
  rw [tree7883_def]
  rfl
theorem node7883_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7883 live7883 coloured7883 = result7883 := by
  rw [tree7883_def]
  try dsimp only [colour, result7883]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7884_agree : tree7884 = literal7884 := by
  rw [tree7884_def, tree7882_agree, tree7883_agree]
  rfl
theorem node7884_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7884 live7884 coloured7884 = result7884 := by
  rw [tree7884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7882_eq
  unfold live7882 coloured7882 at child
  try dsimp only [live7884, coloured7884]
  rw [child]
  dsimp only [result7882]
  have child := node7883_eq
  unfold live7883 coloured7883 at child
  try dsimp only [live7884, coloured7884]
  rw [child]
  dsimp only [result7883]
  try dsimp only [colour, result7884]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7885_agree : tree7885 = literal7885 := by
  rw [tree7885_def]
  rfl
theorem node7885_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7885 live7885 coloured7885 = result7885 := by
  rw [tree7885_def]
  try dsimp only [colour, result7885]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7886_agree : tree7886 = literal7886 := by
  rw [tree7886_def, tree7884_agree, tree7885_agree]
  rfl
theorem node7886_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7886 live7886 coloured7886 = result7886 := by
  rw [tree7886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7884_eq
  unfold live7884 coloured7884 at child
  try dsimp only [live7886, coloured7886]
  rw [child]
  dsimp only [result7884]
  have child := node7885_eq
  unfold live7885 coloured7885 at child
  try dsimp only [live7886, coloured7886]
  rw [child]
  dsimp only [result7885]
  try dsimp only [colour, result7886]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7887_agree : tree7887 = literal7887 := by
  rw [tree7887_def]
  rfl
theorem node7887_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7887 live7887 coloured7887 = result7887 := by
  rw [tree7887_def]
  try dsimp only [colour, result7887]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7888_agree : tree7888 = literal7888 := by
  rw [tree7888_def, tree7886_agree, tree7887_agree]
  rfl
theorem node7888_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7888 live7888 coloured7888 = result7888 := by
  rw [tree7888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7886_eq
  unfold live7886 coloured7886 at child
  try dsimp only [live7888, coloured7888]
  rw [child]
  dsimp only [result7886]
  have child := node7887_eq
  unfold live7887 coloured7887 at child
  try dsimp only [live7888, coloured7888]
  rw [child]
  dsimp only [result7887]
  try dsimp only [colour, result7888]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7889_agree : tree7889 = literal7889 := by
  rw [tree7889_def]
  rfl
theorem node7889_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7889 live7889 coloured7889 = result7889 := by
  rw [tree7889_def]
  try dsimp only [colour, result7889]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7890_agree : tree7890 = literal7890 := by
  rw [tree7890_def, tree7888_agree, tree7889_agree]
  rfl
theorem node7890_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7890 live7890 coloured7890 = result7890 := by
  rw [tree7890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7888_eq
  unfold live7888 coloured7888 at child
  try dsimp only [live7890, coloured7890]
  rw [child]
  dsimp only [result7888]
  have child := node7889_eq
  unfold live7889 coloured7889 at child
  try dsimp only [live7890, coloured7890]
  rw [child]
  dsimp only [result7889]
  try dsimp only [colour, result7890]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7891_agree : tree7891 = literal7891 := by
  rw [tree7891_def]
  rfl
theorem node7891_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7891 live7891 coloured7891 = result7891 := by
  rw [tree7891_def]
  try dsimp only [colour, result7891]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7892_agree : tree7892 = literal7892 := by
  rw [tree7892_def, tree7890_agree, tree7891_agree]
  rfl
theorem node7892_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7892 live7892 coloured7892 = result7892 := by
  rw [tree7892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7890_eq
  unfold live7890 coloured7890 at child
  try dsimp only [live7892, coloured7892]
  rw [child]
  dsimp only [result7890]
  have child := node7891_eq
  unfold live7891 coloured7891 at child
  try dsimp only [live7892, coloured7892]
  rw [child]
  dsimp only [result7891]
  try dsimp only [colour, result7892]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7893_agree : tree7893 = literal7893 := by
  rw [tree7893_def]
  rfl
theorem node7893_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7893 live7893 coloured7893 = result7893 := by
  rw [tree7893_def]
  try dsimp only [colour, result7893]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7894_agree : tree7894 = literal7894 := by
  rw [tree7894_def, tree7892_agree, tree7893_agree]
  rfl
theorem node7894_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7894 live7894 coloured7894 = result7894 := by
  rw [tree7894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7892_eq
  unfold live7892 coloured7892 at child
  try dsimp only [live7894, coloured7894]
  rw [child]
  dsimp only [result7892]
  have child := node7893_eq
  unfold live7893 coloured7893 at child
  try dsimp only [live7894, coloured7894]
  rw [child]
  dsimp only [result7893]
  try dsimp only [colour, result7894]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7895_agree : tree7895 = literal7895 := by
  rw [tree7895_def]
  rfl
theorem node7895_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7895 live7895 coloured7895 = result7895 := by
  rw [tree7895_def]
  try dsimp only [colour, result7895]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7896_agree : tree7896 = literal7896 := by
  rw [tree7896_def, tree7894_agree, tree7895_agree]
  rfl
theorem node7896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7896 live7896 coloured7896 = result7896 := by
  rw [tree7896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7894_eq
  unfold live7894 coloured7894 at child
  try dsimp only [live7896, coloured7896]
  rw [child]
  dsimp only [result7894]
  have child := node7895_eq
  unfold live7895 coloured7895 at child
  try dsimp only [live7896, coloured7896]
  rw [child]
  dsimp only [result7895]
  try dsimp only [colour, result7896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7897_agree : tree7897 = literal7897 := by
  rw [tree7897_def]
  rfl
theorem node7897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7897 live7897 coloured7897 = result7897 := by
  rw [tree7897_def]
  try dsimp only [colour, result7897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7898_agree : tree7898 = literal7898 := by
  rw [tree7898_def, tree7896_agree, tree7897_agree]
  rfl
theorem node7898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7898 live7898 coloured7898 = result7898 := by
  rw [tree7898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7896_eq
  unfold live7896 coloured7896 at child
  try dsimp only [live7898, coloured7898]
  rw [child]
  dsimp only [result7896]
  have child := node7897_eq
  unfold live7897 coloured7897 at child
  try dsimp only [live7898, coloured7898]
  rw [child]
  dsimp only [result7897]
  try dsimp only [colour, result7898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7899_agree : tree7899 = literal7899 := by
  rw [tree7899_def]
  rfl
theorem node7899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7899 live7899 coloured7899 = result7899 := by
  rw [tree7899_def]
  try dsimp only [colour, result7899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7900_agree : tree7900 = literal7900 := by
  rw [tree7900_def, tree7898_agree, tree7899_agree]
  rfl
theorem node7900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7900 live7900 coloured7900 = result7900 := by
  rw [tree7900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7898_eq
  unfold live7898 coloured7898 at child
  try dsimp only [live7900, coloured7900]
  rw [child]
  dsimp only [result7898]
  have child := node7899_eq
  unfold live7899 coloured7899 at child
  try dsimp only [live7900, coloured7900]
  rw [child]
  dsimp only [result7899]
  try dsimp only [colour, result7900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7901_agree : tree7901 = literal7901 := by
  rw [tree7901_def]
  rfl
theorem node7901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7901 live7901 coloured7901 = result7901 := by
  rw [tree7901_def]
  try dsimp only [colour, result7901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7902_agree : tree7902 = literal7902 := by
  rw [tree7902_def, tree7900_agree, tree7901_agree]
  rfl
theorem node7902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7902 live7902 coloured7902 = result7902 := by
  rw [tree7902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7900_eq
  unfold live7900 coloured7900 at child
  try dsimp only [live7902, coloured7902]
  rw [child]
  dsimp only [result7900]
  have child := node7901_eq
  unfold live7901 coloured7901 at child
  try dsimp only [live7902, coloured7902]
  rw [child]
  dsimp only [result7901]
  try dsimp only [colour, result7902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7903_agree : tree7903 = literal7903 := by
  rw [tree7903_def]
  rfl
theorem node7903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7903 live7903 coloured7903 = result7903 := by
  rw [tree7903_def]
  try dsimp only [colour, result7903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7904_agree : tree7904 = literal7904 := by
  rw [tree7904_def, tree7902_agree, tree7903_agree]
  rfl
theorem node7904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7904 live7904 coloured7904 = result7904 := by
  rw [tree7904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7902_eq
  unfold live7902 coloured7902 at child
  try dsimp only [live7904, coloured7904]
  rw [child]
  dsimp only [result7902]
  have child := node7903_eq
  unfold live7903 coloured7903 at child
  try dsimp only [live7904, coloured7904]
  rw [child]
  dsimp only [result7903]
  try dsimp only [colour, result7904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7905_agree : tree7905 = literal7905 := by
  rw [tree7905_def]
  rfl
theorem node7905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7905 live7905 coloured7905 = result7905 := by
  rw [tree7905_def]
  try dsimp only [colour, result7905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7906_agree : tree7906 = literal7906 := by
  rw [tree7906_def, tree7904_agree, tree7905_agree]
  rfl
theorem node7906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7906 live7906 coloured7906 = result7906 := by
  rw [tree7906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7904_eq
  unfold live7904 coloured7904 at child
  try dsimp only [live7906, coloured7906]
  rw [child]
  dsimp only [result7904]
  have child := node7905_eq
  unfold live7905 coloured7905 at child
  try dsimp only [live7906, coloured7906]
  rw [child]
  dsimp only [result7905]
  try dsimp only [colour, result7906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7907_agree : tree7907 = literal7907 := by
  rw [tree7907_def]
  rfl
theorem node7907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7907 live7907 coloured7907 = result7907 := by
  rw [tree7907_def]
  try dsimp only [colour, result7907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7908_agree : tree7908 = literal7908 := by
  rw [tree7908_def, tree7906_agree, tree7907_agree]
  rfl
theorem node7908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7908 live7908 coloured7908 = result7908 := by
  rw [tree7908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7906_eq
  unfold live7906 coloured7906 at child
  try dsimp only [live7908, coloured7908]
  rw [child]
  dsimp only [result7906]
  have child := node7907_eq
  unfold live7907 coloured7907 at child
  try dsimp only [live7908, coloured7908]
  rw [child]
  dsimp only [result7907]
  try dsimp only [colour, result7908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7909_agree : tree7909 = literal7909 := by
  rw [tree7909_def]
  rfl
theorem node7909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7909 live7909 coloured7909 = result7909 := by
  rw [tree7909_def]
  try dsimp only [colour, result7909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7910_agree : tree7910 = literal7910 := by
  rw [tree7910_def, tree7908_agree, tree7909_agree]
  rfl
theorem node7910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7910 live7910 coloured7910 = result7910 := by
  rw [tree7910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7908_eq
  unfold live7908 coloured7908 at child
  try dsimp only [live7910, coloured7910]
  rw [child]
  dsimp only [result7908]
  have child := node7909_eq
  unfold live7909 coloured7909 at child
  try dsimp only [live7910, coloured7910]
  rw [child]
  dsimp only [result7909]
  try dsimp only [colour, result7910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7911_agree : tree7911 = literal7911 := by
  rw [tree7911_def]
  rfl
theorem node7911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7911 live7911 coloured7911 = result7911 := by
  rw [tree7911_def]
  try dsimp only [colour, result7911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7912_agree : tree7912 = literal7912 := by
  rw [tree7912_def, tree7910_agree, tree7911_agree]
  rfl
theorem node7912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7912 live7912 coloured7912 = result7912 := by
  rw [tree7912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7910_eq
  unfold live7910 coloured7910 at child
  try dsimp only [live7912, coloured7912]
  rw [child]
  dsimp only [result7910]
  have child := node7911_eq
  unfold live7911 coloured7911 at child
  try dsimp only [live7912, coloured7912]
  rw [child]
  dsimp only [result7911]
  try dsimp only [colour, result7912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7913_agree : tree7913 = literal7913 := by
  rw [tree7913_def]
  rfl
theorem node7913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7913 live7913 coloured7913 = result7913 := by
  rw [tree7913_def]
  try dsimp only [colour, result7913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7914_agree : tree7914 = literal7914 := by
  rw [tree7914_def, tree7912_agree, tree7913_agree]
  rfl
theorem node7914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7914 live7914 coloured7914 = result7914 := by
  rw [tree7914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7912_eq
  unfold live7912 coloured7912 at child
  try dsimp only [live7914, coloured7914]
  rw [child]
  dsimp only [result7912]
  have child := node7913_eq
  unfold live7913 coloured7913 at child
  try dsimp only [live7914, coloured7914]
  rw [child]
  dsimp only [result7913]
  try dsimp only [colour, result7914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7915_agree : tree7915 = literal7915 := by
  rw [tree7915_def]
  rfl
theorem node7915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7915 live7915 coloured7915 = result7915 := by
  rw [tree7915_def]
  try dsimp only [colour, result7915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7916_agree : tree7916 = literal7916 := by
  rw [tree7916_def, tree7914_agree, tree7915_agree]
  rfl
theorem node7916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7916 live7916 coloured7916 = result7916 := by
  rw [tree7916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7914_eq
  unfold live7914 coloured7914 at child
  try dsimp only [live7916, coloured7916]
  rw [child]
  dsimp only [result7914]
  have child := node7915_eq
  unfold live7915 coloured7915 at child
  try dsimp only [live7916, coloured7916]
  rw [child]
  dsimp only [result7915]
  try dsimp only [colour, result7916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7917_agree : tree7917 = literal7917 := by
  rw [tree7917_def]
  rfl
theorem node7917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7917 live7917 coloured7917 = result7917 := by
  rw [tree7917_def]
  try dsimp only [colour, result7917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7918_agree : tree7918 = literal7918 := by
  rw [tree7918_def, tree7916_agree, tree7917_agree]
  rfl
theorem node7918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7918 live7918 coloured7918 = result7918 := by
  rw [tree7918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7916_eq
  unfold live7916 coloured7916 at child
  try dsimp only [live7918, coloured7918]
  rw [child]
  dsimp only [result7916]
  have child := node7917_eq
  unfold live7917 coloured7917 at child
  try dsimp only [live7918, coloured7918]
  rw [child]
  dsimp only [result7917]
  try dsimp only [colour, result7918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7919_agree : tree7919 = literal7919 := by
  rw [tree7919_def]
  rfl
theorem node7919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7919 live7919 coloured7919 = result7919 := by
  rw [tree7919_def]
  try dsimp only [colour, result7919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7920_agree : tree7920 = literal7920 := by
  rw [tree7920_def, tree7918_agree, tree7919_agree]
  rfl
theorem node7920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7920 live7920 coloured7920 = result7920 := by
  rw [tree7920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7918_eq
  unfold live7918 coloured7918 at child
  try dsimp only [live7920, coloured7920]
  rw [child]
  dsimp only [result7918]
  have child := node7919_eq
  unfold live7919 coloured7919 at child
  try dsimp only [live7920, coloured7920]
  rw [child]
  dsimp only [result7919]
  try dsimp only [colour, result7920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7921_agree : tree7921 = literal7921 := by
  rw [tree7921_def]
  rfl
theorem node7921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7921 live7921 coloured7921 = result7921 := by
  rw [tree7921_def]
  try dsimp only [colour, result7921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7922_agree : tree7922 = literal7922 := by
  rw [tree7922_def, tree7920_agree, tree7921_agree]
  rfl
theorem node7922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7922 live7922 coloured7922 = result7922 := by
  rw [tree7922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7920_eq
  unfold live7920 coloured7920 at child
  try dsimp only [live7922, coloured7922]
  rw [child]
  dsimp only [result7920]
  have child := node7921_eq
  unfold live7921 coloured7921 at child
  try dsimp only [live7922, coloured7922]
  rw [child]
  dsimp only [result7921]
  try dsimp only [colour, result7922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7923_agree : tree7923 = literal7923 := by
  rw [tree7923_def]
  rfl
theorem node7923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7923 live7923 coloured7923 = result7923 := by
  rw [tree7923_def]
  try dsimp only [colour, result7923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7924_agree : tree7924 = literal7924 := by
  rw [tree7924_def, tree7922_agree, tree7923_agree]
  rfl
theorem node7924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7924 live7924 coloured7924 = result7924 := by
  rw [tree7924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7922_eq
  unfold live7922 coloured7922 at child
  try dsimp only [live7924, coloured7924]
  rw [child]
  dsimp only [result7922]
  have child := node7923_eq
  unfold live7923 coloured7923 at child
  try dsimp only [live7924, coloured7924]
  rw [child]
  dsimp only [result7923]
  try dsimp only [colour, result7924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7925_agree : tree7925 = literal7925 := by
  rw [tree7925_def]
  rfl
theorem node7925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7925 live7925 coloured7925 = result7925 := by
  rw [tree7925_def]
  try dsimp only [colour, result7925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7926_agree : tree7926 = literal7926 := by
  rw [tree7926_def, tree7924_agree, tree7925_agree]
  rfl
theorem node7926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7926 live7926 coloured7926 = result7926 := by
  rw [tree7926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7924_eq
  unfold live7924 coloured7924 at child
  try dsimp only [live7926, coloured7926]
  rw [child]
  dsimp only [result7924]
  have child := node7925_eq
  unfold live7925 coloured7925 at child
  try dsimp only [live7926, coloured7926]
  rw [child]
  dsimp only [result7925]
  try dsimp only [colour, result7926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7927_agree : tree7927 = literal7927 := by
  rw [tree7927_def]
  rfl
theorem node7927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7927 live7927 coloured7927 = result7927 := by
  rw [tree7927_def]
  try dsimp only [colour, result7927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7928_agree : tree7928 = literal7928 := by
  rw [tree7928_def, tree7926_agree, tree7927_agree]
  rfl
theorem node7928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7928 live7928 coloured7928 = result7928 := by
  rw [tree7928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7926_eq
  unfold live7926 coloured7926 at child
  try dsimp only [live7928, coloured7928]
  rw [child]
  dsimp only [result7926]
  have child := node7927_eq
  unfold live7927 coloured7927 at child
  try dsimp only [live7928, coloured7928]
  rw [child]
  dsimp only [result7927]
  try dsimp only [colour, result7928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7929_agree : tree7929 = literal7929 := by
  rw [tree7929_def]
  rfl
theorem node7929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7929 live7929 coloured7929 = result7929 := by
  rw [tree7929_def]
  try dsimp only [colour, result7929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7930_agree : tree7930 = literal7930 := by
  rw [tree7930_def, tree7928_agree, tree7929_agree]
  rfl
theorem node7930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7930 live7930 coloured7930 = result7930 := by
  rw [tree7930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7928_eq
  unfold live7928 coloured7928 at child
  try dsimp only [live7930, coloured7930]
  rw [child]
  dsimp only [result7928]
  have child := node7929_eq
  unfold live7929 coloured7929 at child
  try dsimp only [live7930, coloured7930]
  rw [child]
  dsimp only [result7929]
  try dsimp only [colour, result7930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7931_agree : tree7931 = literal7931 := by
  rw [tree7931_def]
  rfl
theorem node7931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7931 live7931 coloured7931 = result7931 := by
  rw [tree7931_def]
  try dsimp only [colour, result7931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7932_agree : tree7932 = literal7932 := by
  rw [tree7932_def, tree7930_agree, tree7931_agree]
  rfl
theorem node7932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7932 live7932 coloured7932 = result7932 := by
  rw [tree7932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7930_eq
  unfold live7930 coloured7930 at child
  try dsimp only [live7932, coloured7932]
  rw [child]
  dsimp only [result7930]
  have child := node7931_eq
  unfold live7931 coloured7931 at child
  try dsimp only [live7932, coloured7932]
  rw [child]
  dsimp only [result7931]
  try dsimp only [colour, result7932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7933_agree : tree7933 = literal7933 := by
  rw [tree7933_def]
  rfl
theorem node7933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7933 live7933 coloured7933 = result7933 := by
  rw [tree7933_def]
  try dsimp only [colour, result7933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7934_agree : tree7934 = literal7934 := by
  rw [tree7934_def, tree7932_agree, tree7933_agree]
  rfl
theorem node7934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7934 live7934 coloured7934 = result7934 := by
  rw [tree7934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7932_eq
  unfold live7932 coloured7932 at child
  try dsimp only [live7934, coloured7934]
  rw [child]
  dsimp only [result7932]
  have child := node7933_eq
  unfold live7933 coloured7933 at child
  try dsimp only [live7934, coloured7934]
  rw [child]
  dsimp only [result7933]
  try dsimp only [colour, result7934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7935_agree : tree7935 = literal7935 := by
  rw [tree7935_def]
  rfl
theorem node7935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7935 live7935 coloured7935 = result7935 := by
  rw [tree7935_def]
  try dsimp only [colour, result7935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7936_agree : tree7936 = literal7936 := by
  rw [tree7936_def, tree7934_agree, tree7935_agree]
  rfl
theorem node7936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7936 live7936 coloured7936 = result7936 := by
  rw [tree7936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7934_eq
  unfold live7934 coloured7934 at child
  try dsimp only [live7936, coloured7936]
  rw [child]
  dsimp only [result7934]
  have child := node7935_eq
  unfold live7935 coloured7935 at child
  try dsimp only [live7936, coloured7936]
  rw [child]
  dsimp only [result7935]
  try dsimp only [colour, result7936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7937_agree : tree7937 = literal7937 := by
  rw [tree7937_def]
  rfl
theorem node7937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7937 live7937 coloured7937 = result7937 := by
  rw [tree7937_def]
  try dsimp only [colour, result7937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7938_agree : tree7938 = literal7938 := by
  rw [tree7938_def, tree7936_agree, tree7937_agree]
  rfl
theorem node7938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7938 live7938 coloured7938 = result7938 := by
  rw [tree7938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7936_eq
  unfold live7936 coloured7936 at child
  try dsimp only [live7938, coloured7938]
  rw [child]
  dsimp only [result7936]
  have child := node7937_eq
  unfold live7937 coloured7937 at child
  try dsimp only [live7938, coloured7938]
  rw [child]
  dsimp only [result7937]
  try dsimp only [colour, result7938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7939_agree : tree7939 = literal7939 := by
  rw [tree7939_def]
  rfl
theorem node7939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7939 live7939 coloured7939 = result7939 := by
  rw [tree7939_def]
  try dsimp only [colour, result7939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7940_agree : tree7940 = literal7940 := by
  rw [tree7940_def, tree7938_agree, tree7939_agree]
  rfl
theorem node7940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7940 live7940 coloured7940 = result7940 := by
  rw [tree7940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7938_eq
  unfold live7938 coloured7938 at child
  try dsimp only [live7940, coloured7940]
  rw [child]
  dsimp only [result7938]
  have child := node7939_eq
  unfold live7939 coloured7939 at child
  try dsimp only [live7940, coloured7940]
  rw [child]
  dsimp only [result7939]
  try dsimp only [colour, result7940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7941_agree : tree7941 = literal7941 := by
  rw [tree7941_def]
  rfl
theorem node7941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7941 live7941 coloured7941 = result7941 := by
  rw [tree7941_def]
  try dsimp only [colour, result7941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7942_agree : tree7942 = literal7942 := by
  rw [tree7942_def, tree7940_agree, tree7941_agree]
  rfl
theorem node7942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7942 live7942 coloured7942 = result7942 := by
  rw [tree7942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7940_eq
  unfold live7940 coloured7940 at child
  try dsimp only [live7942, coloured7942]
  rw [child]
  dsimp only [result7940]
  have child := node7941_eq
  unfold live7941 coloured7941 at child
  try dsimp only [live7942, coloured7942]
  rw [child]
  dsimp only [result7941]
  try dsimp only [colour, result7942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7943_agree : tree7943 = literal7943 := by
  rw [tree7943_def]
  rfl
theorem node7943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7943 live7943 coloured7943 = result7943 := by
  rw [tree7943_def]
  try dsimp only [colour, result7943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7944_agree : tree7944 = literal7944 := by
  rw [tree7944_def, tree7942_agree, tree7943_agree]
  rfl
theorem node7944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7944 live7944 coloured7944 = result7944 := by
  rw [tree7944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7942_eq
  unfold live7942 coloured7942 at child
  try dsimp only [live7944, coloured7944]
  rw [child]
  dsimp only [result7942]
  have child := node7943_eq
  unfold live7943 coloured7943 at child
  try dsimp only [live7944, coloured7944]
  rw [child]
  dsimp only [result7943]
  try dsimp only [colour, result7944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7945_agree : tree7945 = literal7945 := by
  rw [tree7945_def]
  rfl
theorem node7945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7945 live7945 coloured7945 = result7945 := by
  rw [tree7945_def]
  try dsimp only [colour, result7945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7946_agree : tree7946 = literal7946 := by
  rw [tree7946_def, tree7944_agree, tree7945_agree]
  rfl
theorem node7946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7946 live7946 coloured7946 = result7946 := by
  rw [tree7946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7944_eq
  unfold live7944 coloured7944 at child
  try dsimp only [live7946, coloured7946]
  rw [child]
  dsimp only [result7944]
  have child := node7945_eq
  unfold live7945 coloured7945 at child
  try dsimp only [live7946, coloured7946]
  rw [child]
  dsimp only [result7945]
  try dsimp only [colour, result7946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7947_agree : tree7947 = literal7947 := by
  rw [tree7947_def]
  rfl
theorem node7947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7947 live7947 coloured7947 = result7947 := by
  rw [tree7947_def]
  try dsimp only [colour, result7947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7948_agree : tree7948 = literal7948 := by
  rw [tree7948_def, tree7946_agree, tree7947_agree]
  rfl
theorem node7948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7948 live7948 coloured7948 = result7948 := by
  rw [tree7948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7946_eq
  unfold live7946 coloured7946 at child
  try dsimp only [live7948, coloured7948]
  rw [child]
  dsimp only [result7946]
  have child := node7947_eq
  unfold live7947 coloured7947 at child
  try dsimp only [live7948, coloured7948]
  rw [child]
  dsimp only [result7947]
  try dsimp only [colour, result7948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7949_agree : tree7949 = literal7949 := by
  rw [tree7949_def]
  rfl
theorem node7949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7949 live7949 coloured7949 = result7949 := by
  rw [tree7949_def]
  try dsimp only [colour, result7949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7950_agree : tree7950 = literal7950 := by
  rw [tree7950_def, tree7948_agree, tree7949_agree]
  rfl
theorem node7950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7950 live7950 coloured7950 = result7950 := by
  rw [tree7950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7948_eq
  unfold live7948 coloured7948 at child
  try dsimp only [live7950, coloured7950]
  rw [child]
  dsimp only [result7948]
  have child := node7949_eq
  unfold live7949 coloured7949 at child
  try dsimp only [live7950, coloured7950]
  rw [child]
  dsimp only [result7949]
  try dsimp only [colour, result7950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7951_agree : tree7951 = literal7951 := by
  rw [tree7951_def]
  rfl
theorem node7951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7951 live7951 coloured7951 = result7951 := by
  rw [tree7951_def]
  try dsimp only [colour, result7951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7952_agree : tree7952 = literal7952 := by
  rw [tree7952_def, tree7950_agree, tree7951_agree]
  rfl
theorem node7952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7952 live7952 coloured7952 = result7952 := by
  rw [tree7952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7950_eq
  unfold live7950 coloured7950 at child
  try dsimp only [live7952, coloured7952]
  rw [child]
  dsimp only [result7950]
  have child := node7951_eq
  unfold live7951 coloured7951 at child
  try dsimp only [live7952, coloured7952]
  rw [child]
  dsimp only [result7951]
  try dsimp only [colour, result7952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7953_agree : tree7953 = literal7953 := by
  rw [tree7953_def]
  rfl
theorem node7953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7953 live7953 coloured7953 = result7953 := by
  rw [tree7953_def]
  try dsimp only [colour, result7953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7954_agree : tree7954 = literal7954 := by
  rw [tree7954_def, tree7952_agree, tree7953_agree]
  rfl
theorem node7954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7954 live7954 coloured7954 = result7954 := by
  rw [tree7954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7952_eq
  unfold live7952 coloured7952 at child
  try dsimp only [live7954, coloured7954]
  rw [child]
  dsimp only [result7952]
  have child := node7953_eq
  unfold live7953 coloured7953 at child
  try dsimp only [live7954, coloured7954]
  rw [child]
  dsimp only [result7953]
  try dsimp only [colour, result7954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7955_agree : tree7955 = literal7955 := by
  rw [tree7955_def]
  rfl
theorem node7955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7955 live7955 coloured7955 = result7955 := by
  rw [tree7955_def]
  try dsimp only [colour, result7955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7956_agree : tree7956 = literal7956 := by
  rw [tree7956_def, tree7954_agree, tree7955_agree]
  rfl
theorem node7956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7956 live7956 coloured7956 = result7956 := by
  rw [tree7956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7954_eq
  unfold live7954 coloured7954 at child
  try dsimp only [live7956, coloured7956]
  rw [child]
  dsimp only [result7954]
  have child := node7955_eq
  unfold live7955 coloured7955 at child
  try dsimp only [live7956, coloured7956]
  rw [child]
  dsimp only [result7955]
  try dsimp only [colour, result7956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7957_agree : tree7957 = literal7957 := by
  rw [tree7957_def]
  rfl
theorem node7957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7957 live7957 coloured7957 = result7957 := by
  rw [tree7957_def]
  try dsimp only [colour, result7957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7958_agree : tree7958 = literal7958 := by
  rw [tree7958_def, tree7956_agree, tree7957_agree]
  rfl
theorem node7958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7958 live7958 coloured7958 = result7958 := by
  rw [tree7958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7956_eq
  unfold live7956 coloured7956 at child
  try dsimp only [live7958, coloured7958]
  rw [child]
  dsimp only [result7956]
  have child := node7957_eq
  unfold live7957 coloured7957 at child
  try dsimp only [live7958, coloured7958]
  rw [child]
  dsimp only [result7957]
  try dsimp only [colour, result7958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7959_agree : tree7959 = literal7959 := by
  rw [tree7959_def]
  rfl
theorem node7959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7959 live7959 coloured7959 = result7959 := by
  rw [tree7959_def]
  try dsimp only [colour, result7959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7960_agree : tree7960 = literal7960 := by
  rw [tree7960_def, tree7958_agree, tree7959_agree]
  rfl
theorem node7960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7960 live7960 coloured7960 = result7960 := by
  rw [tree7960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7958_eq
  unfold live7958 coloured7958 at child
  try dsimp only [live7960, coloured7960]
  rw [child]
  dsimp only [result7958]
  have child := node7959_eq
  unfold live7959 coloured7959 at child
  try dsimp only [live7960, coloured7960]
  rw [child]
  dsimp only [result7959]
  try dsimp only [colour, result7960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7961_agree : tree7961 = literal7961 := by
  rw [tree7961_def]
  rfl
theorem node7961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7961 live7961 coloured7961 = result7961 := by
  rw [tree7961_def]
  try dsimp only [colour, result7961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7962_agree : tree7962 = literal7962 := by
  rw [tree7962_def, tree7960_agree, tree7961_agree]
  rfl
theorem node7962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7962 live7962 coloured7962 = result7962 := by
  rw [tree7962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7960_eq
  unfold live7960 coloured7960 at child
  try dsimp only [live7962, coloured7962]
  rw [child]
  dsimp only [result7960]
  have child := node7961_eq
  unfold live7961 coloured7961 at child
  try dsimp only [live7962, coloured7962]
  rw [child]
  dsimp only [result7961]
  try dsimp only [colour, result7962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7963_agree : tree7963 = literal7963 := by
  rw [tree7963_def]
  rfl
theorem node7963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7963 live7963 coloured7963 = result7963 := by
  rw [tree7963_def]
  try dsimp only [colour, result7963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7964_agree : tree7964 = literal7964 := by
  rw [tree7964_def, tree7962_agree, tree7963_agree]
  rfl
theorem node7964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7964 live7964 coloured7964 = result7964 := by
  rw [tree7964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7962_eq
  unfold live7962 coloured7962 at child
  try dsimp only [live7964, coloured7964]
  rw [child]
  dsimp only [result7962]
  have child := node7963_eq
  unfold live7963 coloured7963 at child
  try dsimp only [live7964, coloured7964]
  rw [child]
  dsimp only [result7963]
  try dsimp only [colour, result7964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7965_agree : tree7965 = literal7965 := by
  rw [tree7965_def]
  rfl
theorem node7965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7965 live7965 coloured7965 = result7965 := by
  rw [tree7965_def]
  try dsimp only [colour, result7965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7966_agree : tree7966 = literal7966 := by
  rw [tree7966_def, tree7964_agree, tree7965_agree]
  rfl
theorem node7966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7966 live7966 coloured7966 = result7966 := by
  rw [tree7966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7964_eq
  unfold live7964 coloured7964 at child
  try dsimp only [live7966, coloured7966]
  rw [child]
  dsimp only [result7964]
  have child := node7965_eq
  unfold live7965 coloured7965 at child
  try dsimp only [live7966, coloured7966]
  rw [child]
  dsimp only [result7965]
  try dsimp only [colour, result7966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7967_agree : tree7967 = literal7967 := by
  rw [tree7967_def]
  rfl
theorem node7967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7967 live7967 coloured7967 = result7967 := by
  rw [tree7967_def]
  try dsimp only [colour, result7967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
