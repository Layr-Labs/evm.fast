import InitECandidate.Proofs.ClashStages713.Proof102
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9888_agree : tree9888 = literal9888 := by
  rw [tree9888_def, tree9886_agree, tree9887_agree]
  rfl
theorem node9888_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9888 live9888 coloured9888 = result9888 := by
  rw [tree9888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9886_eq
  unfold live9886 coloured9886 at child
  try dsimp only [live9888, coloured9888]
  rw [child]
  dsimp only [result9886]
  have child := node9887_eq
  unfold live9887 coloured9887 at child
  try dsimp only [live9888, coloured9888]
  rw [child]
  dsimp only [result9887]
  try dsimp only [colour, result9888]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9889_agree : tree9889 = literal9889 := by
  rw [tree9889_def]
  rfl
theorem node9889_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9889 live9889 coloured9889 = result9889 := by
  rw [tree9889_def]
  try dsimp only [colour, result9889]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9890_agree : tree9890 = literal9890 := by
  rw [tree9890_def, tree9888_agree, tree9889_agree]
  rfl
theorem node9890_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9890 live9890 coloured9890 = result9890 := by
  rw [tree9890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9888_eq
  unfold live9888 coloured9888 at child
  try dsimp only [live9890, coloured9890]
  rw [child]
  dsimp only [result9888]
  have child := node9889_eq
  unfold live9889 coloured9889 at child
  try dsimp only [live9890, coloured9890]
  rw [child]
  dsimp only [result9889]
  try dsimp only [colour, result9890]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9891_agree : tree9891 = literal9891 := by
  rw [tree9891_def]
  rfl
theorem node9891_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9891 live9891 coloured9891 = result9891 := by
  rw [tree9891_def]
  try dsimp only [colour, result9891]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9892_agree : tree9892 = literal9892 := by
  rw [tree9892_def, tree9890_agree, tree9891_agree]
  rfl
theorem node9892_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9892 live9892 coloured9892 = result9892 := by
  rw [tree9892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9890_eq
  unfold live9890 coloured9890 at child
  try dsimp only [live9892, coloured9892]
  rw [child]
  dsimp only [result9890]
  have child := node9891_eq
  unfold live9891 coloured9891 at child
  try dsimp only [live9892, coloured9892]
  rw [child]
  dsimp only [result9891]
  try dsimp only [colour, result9892]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9893_agree : tree9893 = literal9893 := by
  rw [tree9893_def]
  rfl
theorem node9893_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9893 live9893 coloured9893 = result9893 := by
  rw [tree9893_def]
  try dsimp only [colour, result9893]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9894_agree : tree9894 = literal9894 := by
  rw [tree9894_def, tree9892_agree, tree9893_agree]
  rfl
theorem node9894_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9894 live9894 coloured9894 = result9894 := by
  rw [tree9894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9892_eq
  unfold live9892 coloured9892 at child
  try dsimp only [live9894, coloured9894]
  rw [child]
  dsimp only [result9892]
  have child := node9893_eq
  unfold live9893 coloured9893 at child
  try dsimp only [live9894, coloured9894]
  rw [child]
  dsimp only [result9893]
  try dsimp only [colour, result9894]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9895_agree : tree9895 = literal9895 := by
  rw [tree9895_def]
  rfl
theorem node9895_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9895 live9895 coloured9895 = result9895 := by
  rw [tree9895_def]
  try dsimp only [colour, result9895]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9896_agree : tree9896 = literal9896 := by
  rw [tree9896_def, tree9894_agree, tree9895_agree]
  rfl
theorem node9896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9896 live9896 coloured9896 = result9896 := by
  rw [tree9896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9894_eq
  unfold live9894 coloured9894 at child
  try dsimp only [live9896, coloured9896]
  rw [child]
  dsimp only [result9894]
  have child := node9895_eq
  unfold live9895 coloured9895 at child
  try dsimp only [live9896, coloured9896]
  rw [child]
  dsimp only [result9895]
  try dsimp only [colour, result9896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9897_agree : tree9897 = literal9897 := by
  rw [tree9897_def]
  rfl
theorem node9897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9897 live9897 coloured9897 = result9897 := by
  rw [tree9897_def]
  try dsimp only [colour, result9897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9898_agree : tree9898 = literal9898 := by
  rw [tree9898_def, tree9896_agree, tree9897_agree]
  rfl
theorem node9898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9898 live9898 coloured9898 = result9898 := by
  rw [tree9898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9896_eq
  unfold live9896 coloured9896 at child
  try dsimp only [live9898, coloured9898]
  rw [child]
  dsimp only [result9896]
  have child := node9897_eq
  unfold live9897 coloured9897 at child
  try dsimp only [live9898, coloured9898]
  rw [child]
  dsimp only [result9897]
  try dsimp only [colour, result9898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9899_agree : tree9899 = literal9899 := by
  rw [tree9899_def]
  rfl
theorem node9899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9899 live9899 coloured9899 = result9899 := by
  rw [tree9899_def]
  try dsimp only [colour, result9899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9900_agree : tree9900 = literal9900 := by
  rw [tree9900_def, tree9898_agree, tree9899_agree]
  rfl
theorem node9900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9900 live9900 coloured9900 = result9900 := by
  rw [tree9900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9898_eq
  unfold live9898 coloured9898 at child
  try dsimp only [live9900, coloured9900]
  rw [child]
  dsimp only [result9898]
  have child := node9899_eq
  unfold live9899 coloured9899 at child
  try dsimp only [live9900, coloured9900]
  rw [child]
  dsimp only [result9899]
  try dsimp only [colour, result9900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9901_agree : tree9901 = literal9901 := by
  rw [tree9901_def]
  rfl
theorem node9901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9901 live9901 coloured9901 = result9901 := by
  rw [tree9901_def]
  try dsimp only [colour, result9901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9902_agree : tree9902 = literal9902 := by
  rw [tree9902_def, tree9900_agree, tree9901_agree]
  rfl
theorem node9902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9902 live9902 coloured9902 = result9902 := by
  rw [tree9902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9900_eq
  unfold live9900 coloured9900 at child
  try dsimp only [live9902, coloured9902]
  rw [child]
  dsimp only [result9900]
  have child := node9901_eq
  unfold live9901 coloured9901 at child
  try dsimp only [live9902, coloured9902]
  rw [child]
  dsimp only [result9901]
  try dsimp only [colour, result9902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9903_agree : tree9903 = literal9903 := by
  rw [tree9903_def]
  rfl
theorem node9903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9903 live9903 coloured9903 = result9903 := by
  rw [tree9903_def]
  try dsimp only [colour, result9903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9904_agree : tree9904 = literal9904 := by
  rw [tree9904_def, tree9902_agree, tree9903_agree]
  rfl
theorem node9904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9904 live9904 coloured9904 = result9904 := by
  rw [tree9904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9902_eq
  unfold live9902 coloured9902 at child
  try dsimp only [live9904, coloured9904]
  rw [child]
  dsimp only [result9902]
  have child := node9903_eq
  unfold live9903 coloured9903 at child
  try dsimp only [live9904, coloured9904]
  rw [child]
  dsimp only [result9903]
  try dsimp only [colour, result9904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9905_agree : tree9905 = literal9905 := by
  rw [tree9905_def]
  rfl
theorem node9905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9905 live9905 coloured9905 = result9905 := by
  rw [tree9905_def]
  try dsimp only [colour, result9905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9906_agree : tree9906 = literal9906 := by
  rw [tree9906_def, tree9904_agree, tree9905_agree]
  rfl
theorem node9906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9906 live9906 coloured9906 = result9906 := by
  rw [tree9906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9904_eq
  unfold live9904 coloured9904 at child
  try dsimp only [live9906, coloured9906]
  rw [child]
  dsimp only [result9904]
  have child := node9905_eq
  unfold live9905 coloured9905 at child
  try dsimp only [live9906, coloured9906]
  rw [child]
  dsimp only [result9905]
  try dsimp only [colour, result9906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9907_agree : tree9907 = literal9907 := by
  rw [tree9907_def]
  rfl
theorem node9907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9907 live9907 coloured9907 = result9907 := by
  rw [tree9907_def]
  try dsimp only [colour, result9907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9908_agree : tree9908 = literal9908 := by
  rw [tree9908_def, tree9906_agree, tree9907_agree]
  rfl
theorem node9908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9908 live9908 coloured9908 = result9908 := by
  rw [tree9908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9906_eq
  unfold live9906 coloured9906 at child
  try dsimp only [live9908, coloured9908]
  rw [child]
  dsimp only [result9906]
  have child := node9907_eq
  unfold live9907 coloured9907 at child
  try dsimp only [live9908, coloured9908]
  rw [child]
  dsimp only [result9907]
  try dsimp only [colour, result9908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9909_agree : tree9909 = literal9909 := by
  rw [tree9909_def]
  rfl
theorem node9909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9909 live9909 coloured9909 = result9909 := by
  rw [tree9909_def]
  try dsimp only [colour, result9909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9910_agree : tree9910 = literal9910 := by
  rw [tree9910_def, tree9908_agree, tree9909_agree]
  rfl
theorem node9910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9910 live9910 coloured9910 = result9910 := by
  rw [tree9910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9908_eq
  unfold live9908 coloured9908 at child
  try dsimp only [live9910, coloured9910]
  rw [child]
  dsimp only [result9908]
  have child := node9909_eq
  unfold live9909 coloured9909 at child
  try dsimp only [live9910, coloured9910]
  rw [child]
  dsimp only [result9909]
  try dsimp only [colour, result9910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9911_agree : tree9911 = literal9911 := by
  rw [tree9911_def]
  rfl
theorem node9911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9911 live9911 coloured9911 = result9911 := by
  rw [tree9911_def]
  try dsimp only [colour, result9911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9912_agree : tree9912 = literal9912 := by
  rw [tree9912_def, tree9910_agree, tree9911_agree]
  rfl
theorem node9912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9912 live9912 coloured9912 = result9912 := by
  rw [tree9912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9910_eq
  unfold live9910 coloured9910 at child
  try dsimp only [live9912, coloured9912]
  rw [child]
  dsimp only [result9910]
  have child := node9911_eq
  unfold live9911 coloured9911 at child
  try dsimp only [live9912, coloured9912]
  rw [child]
  dsimp only [result9911]
  try dsimp only [colour, result9912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9913_agree : tree9913 = literal9913 := by
  rw [tree9913_def]
  rfl
theorem node9913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9913 live9913 coloured9913 = result9913 := by
  rw [tree9913_def]
  try dsimp only [colour, result9913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9914_agree : tree9914 = literal9914 := by
  rw [tree9914_def, tree9912_agree, tree9913_agree]
  rfl
theorem node9914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9914 live9914 coloured9914 = result9914 := by
  rw [tree9914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9912_eq
  unfold live9912 coloured9912 at child
  try dsimp only [live9914, coloured9914]
  rw [child]
  dsimp only [result9912]
  have child := node9913_eq
  unfold live9913 coloured9913 at child
  try dsimp only [live9914, coloured9914]
  rw [child]
  dsimp only [result9913]
  try dsimp only [colour, result9914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9915_agree : tree9915 = literal9915 := by
  rw [tree9915_def]
  rfl
theorem node9915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9915 live9915 coloured9915 = result9915 := by
  rw [tree9915_def]
  try dsimp only [colour, result9915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9916_agree : tree9916 = literal9916 := by
  rw [tree9916_def, tree9914_agree, tree9915_agree]
  rfl
theorem node9916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9916 live9916 coloured9916 = result9916 := by
  rw [tree9916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9914_eq
  unfold live9914 coloured9914 at child
  try dsimp only [live9916, coloured9916]
  rw [child]
  dsimp only [result9914]
  have child := node9915_eq
  unfold live9915 coloured9915 at child
  try dsimp only [live9916, coloured9916]
  rw [child]
  dsimp only [result9915]
  try dsimp only [colour, result9916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9917_agree : tree9917 = literal9917 := by
  rw [tree9917_def]
  rfl
theorem node9917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9917 live9917 coloured9917 = result9917 := by
  rw [tree9917_def]
  try dsimp only [colour, result9917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9918_agree : tree9918 = literal9918 := by
  rw [tree9918_def, tree9916_agree, tree9917_agree]
  rfl
theorem node9918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9918 live9918 coloured9918 = result9918 := by
  rw [tree9918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9916_eq
  unfold live9916 coloured9916 at child
  try dsimp only [live9918, coloured9918]
  rw [child]
  dsimp only [result9916]
  have child := node9917_eq
  unfold live9917 coloured9917 at child
  try dsimp only [live9918, coloured9918]
  rw [child]
  dsimp only [result9917]
  try dsimp only [colour, result9918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9919_agree : tree9919 = literal9919 := by
  rw [tree9919_def]
  rfl
theorem node9919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9919 live9919 coloured9919 = result9919 := by
  rw [tree9919_def]
  try dsimp only [colour, result9919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9920_agree : tree9920 = literal9920 := by
  rw [tree9920_def, tree9918_agree, tree9919_agree]
  rfl
theorem node9920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9920 live9920 coloured9920 = result9920 := by
  rw [tree9920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9918_eq
  unfold live9918 coloured9918 at child
  try dsimp only [live9920, coloured9920]
  rw [child]
  dsimp only [result9918]
  have child := node9919_eq
  unfold live9919 coloured9919 at child
  try dsimp only [live9920, coloured9920]
  rw [child]
  dsimp only [result9919]
  try dsimp only [colour, result9920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9921_agree : tree9921 = literal9921 := by
  rw [tree9921_def]
  rfl
theorem node9921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9921 live9921 coloured9921 = result9921 := by
  rw [tree9921_def]
  try dsimp only [colour, result9921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9922_agree : tree9922 = literal9922 := by
  rw [tree9922_def, tree9920_agree, tree9921_agree]
  rfl
theorem node9922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9922 live9922 coloured9922 = result9922 := by
  rw [tree9922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9920_eq
  unfold live9920 coloured9920 at child
  try dsimp only [live9922, coloured9922]
  rw [child]
  dsimp only [result9920]
  have child := node9921_eq
  unfold live9921 coloured9921 at child
  try dsimp only [live9922, coloured9922]
  rw [child]
  dsimp only [result9921]
  try dsimp only [colour, result9922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9923_agree : tree9923 = literal9923 := by
  rw [tree9923_def]
  rfl
theorem node9923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9923 live9923 coloured9923 = result9923 := by
  rw [tree9923_def]
  try dsimp only [colour, result9923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9924_agree : tree9924 = literal9924 := by
  rw [tree9924_def, tree9922_agree, tree9923_agree]
  rfl
theorem node9924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9924 live9924 coloured9924 = result9924 := by
  rw [tree9924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9922_eq
  unfold live9922 coloured9922 at child
  try dsimp only [live9924, coloured9924]
  rw [child]
  dsimp only [result9922]
  have child := node9923_eq
  unfold live9923 coloured9923 at child
  try dsimp only [live9924, coloured9924]
  rw [child]
  dsimp only [result9923]
  try dsimp only [colour, result9924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9925_agree : tree9925 = literal9925 := by
  rw [tree9925_def]
  rfl
theorem node9925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9925 live9925 coloured9925 = result9925 := by
  rw [tree9925_def]
  try dsimp only [colour, result9925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9926_agree : tree9926 = literal9926 := by
  rw [tree9926_def, tree9924_agree, tree9925_agree]
  rfl
theorem node9926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9926 live9926 coloured9926 = result9926 := by
  rw [tree9926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9924_eq
  unfold live9924 coloured9924 at child
  try dsimp only [live9926, coloured9926]
  rw [child]
  dsimp only [result9924]
  have child := node9925_eq
  unfold live9925 coloured9925 at child
  try dsimp only [live9926, coloured9926]
  rw [child]
  dsimp only [result9925]
  try dsimp only [colour, result9926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9927_agree : tree9927 = literal9927 := by
  rw [tree9927_def]
  rfl
theorem node9927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9927 live9927 coloured9927 = result9927 := by
  rw [tree9927_def]
  try dsimp only [colour, result9927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9928_agree : tree9928 = literal9928 := by
  rw [tree9928_def, tree9926_agree, tree9927_agree]
  rfl
theorem node9928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9928 live9928 coloured9928 = result9928 := by
  rw [tree9928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9926_eq
  unfold live9926 coloured9926 at child
  try dsimp only [live9928, coloured9928]
  rw [child]
  dsimp only [result9926]
  have child := node9927_eq
  unfold live9927 coloured9927 at child
  try dsimp only [live9928, coloured9928]
  rw [child]
  dsimp only [result9927]
  try dsimp only [colour, result9928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9929_agree : tree9929 = literal9929 := by
  rw [tree9929_def]
  rfl
theorem node9929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9929 live9929 coloured9929 = result9929 := by
  rw [tree9929_def]
  try dsimp only [colour, result9929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9930_agree : tree9930 = literal9930 := by
  rw [tree9930_def, tree9928_agree, tree9929_agree]
  rfl
theorem node9930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9930 live9930 coloured9930 = result9930 := by
  rw [tree9930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9928_eq
  unfold live9928 coloured9928 at child
  try dsimp only [live9930, coloured9930]
  rw [child]
  dsimp only [result9928]
  have child := node9929_eq
  unfold live9929 coloured9929 at child
  try dsimp only [live9930, coloured9930]
  rw [child]
  dsimp only [result9929]
  try dsimp only [colour, result9930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9931_agree : tree9931 = literal9931 := by
  rw [tree9931_def]
  rfl
theorem node9931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9931 live9931 coloured9931 = result9931 := by
  rw [tree9931_def]
  try dsimp only [colour, result9931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9932_agree : tree9932 = literal9932 := by
  rw [tree9932_def, tree9930_agree, tree9931_agree]
  rfl
theorem node9932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9932 live9932 coloured9932 = result9932 := by
  rw [tree9932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9930_eq
  unfold live9930 coloured9930 at child
  try dsimp only [live9932, coloured9932]
  rw [child]
  dsimp only [result9930]
  have child := node9931_eq
  unfold live9931 coloured9931 at child
  try dsimp only [live9932, coloured9932]
  rw [child]
  dsimp only [result9931]
  try dsimp only [colour, result9932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9933_agree : tree9933 = literal9933 := by
  rw [tree9933_def]
  rfl
theorem node9933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9933 live9933 coloured9933 = result9933 := by
  rw [tree9933_def]
  try dsimp only [colour, result9933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9934_agree : tree9934 = literal9934 := by
  rw [tree9934_def, tree9932_agree, tree9933_agree]
  rfl
theorem node9934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9934 live9934 coloured9934 = result9934 := by
  rw [tree9934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9932_eq
  unfold live9932 coloured9932 at child
  try dsimp only [live9934, coloured9934]
  rw [child]
  dsimp only [result9932]
  have child := node9933_eq
  unfold live9933 coloured9933 at child
  try dsimp only [live9934, coloured9934]
  rw [child]
  dsimp only [result9933]
  try dsimp only [colour, result9934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9935_agree : tree9935 = literal9935 := by
  rw [tree9935_def]
  rfl
theorem node9935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9935 live9935 coloured9935 = result9935 := by
  rw [tree9935_def]
  try dsimp only [colour, result9935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9936_agree : tree9936 = literal9936 := by
  rw [tree9936_def, tree9934_agree, tree9935_agree]
  rfl
theorem node9936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9936 live9936 coloured9936 = result9936 := by
  rw [tree9936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9934_eq
  unfold live9934 coloured9934 at child
  try dsimp only [live9936, coloured9936]
  rw [child]
  dsimp only [result9934]
  have child := node9935_eq
  unfold live9935 coloured9935 at child
  try dsimp only [live9936, coloured9936]
  rw [child]
  dsimp only [result9935]
  try dsimp only [colour, result9936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9937_agree : tree9937 = literal9937 := by
  rw [tree9937_def]
  rfl
theorem node9937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9937 live9937 coloured9937 = result9937 := by
  rw [tree9937_def]
  try dsimp only [colour, result9937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9938_agree : tree9938 = literal9938 := by
  rw [tree9938_def, tree9936_agree, tree9937_agree]
  rfl
theorem node9938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9938 live9938 coloured9938 = result9938 := by
  rw [tree9938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9936_eq
  unfold live9936 coloured9936 at child
  try dsimp only [live9938, coloured9938]
  rw [child]
  dsimp only [result9936]
  have child := node9937_eq
  unfold live9937 coloured9937 at child
  try dsimp only [live9938, coloured9938]
  rw [child]
  dsimp only [result9937]
  try dsimp only [colour, result9938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9939_agree : tree9939 = literal9939 := by
  rw [tree9939_def]
  rfl
theorem node9939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9939 live9939 coloured9939 = result9939 := by
  rw [tree9939_def]
  try dsimp only [colour, result9939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9940_agree : tree9940 = literal9940 := by
  rw [tree9940_def, tree9938_agree, tree9939_agree]
  rfl
theorem node9940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9940 live9940 coloured9940 = result9940 := by
  rw [tree9940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9938_eq
  unfold live9938 coloured9938 at child
  try dsimp only [live9940, coloured9940]
  rw [child]
  dsimp only [result9938]
  have child := node9939_eq
  unfold live9939 coloured9939 at child
  try dsimp only [live9940, coloured9940]
  rw [child]
  dsimp only [result9939]
  try dsimp only [colour, result9940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9941_agree : tree9941 = literal9941 := by
  rw [tree9941_def]
  rfl
theorem node9941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9941 live9941 coloured9941 = result9941 := by
  rw [tree9941_def]
  try dsimp only [colour, result9941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9942_agree : tree9942 = literal9942 := by
  rw [tree9942_def, tree9940_agree, tree9941_agree]
  rfl
theorem node9942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9942 live9942 coloured9942 = result9942 := by
  rw [tree9942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9940_eq
  unfold live9940 coloured9940 at child
  try dsimp only [live9942, coloured9942]
  rw [child]
  dsimp only [result9940]
  have child := node9941_eq
  unfold live9941 coloured9941 at child
  try dsimp only [live9942, coloured9942]
  rw [child]
  dsimp only [result9941]
  try dsimp only [colour, result9942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9943_agree : tree9943 = literal9943 := by
  rw [tree9943_def]
  rfl
theorem node9943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9943 live9943 coloured9943 = result9943 := by
  rw [tree9943_def]
  try dsimp only [colour, result9943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9944_agree : tree9944 = literal9944 := by
  rw [tree9944_def, tree9942_agree, tree9943_agree]
  rfl
theorem node9944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9944 live9944 coloured9944 = result9944 := by
  rw [tree9944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9942_eq
  unfold live9942 coloured9942 at child
  try dsimp only [live9944, coloured9944]
  rw [child]
  dsimp only [result9942]
  have child := node9943_eq
  unfold live9943 coloured9943 at child
  try dsimp only [live9944, coloured9944]
  rw [child]
  dsimp only [result9943]
  try dsimp only [colour, result9944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9945_agree : tree9945 = literal9945 := by
  rw [tree9945_def]
  rfl
theorem node9945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9945 live9945 coloured9945 = result9945 := by
  rw [tree9945_def]
  try dsimp only [colour, result9945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9946_agree : tree9946 = literal9946 := by
  rw [tree9946_def, tree9944_agree, tree9945_agree]
  rfl
theorem node9946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9946 live9946 coloured9946 = result9946 := by
  rw [tree9946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9944_eq
  unfold live9944 coloured9944 at child
  try dsimp only [live9946, coloured9946]
  rw [child]
  dsimp only [result9944]
  have child := node9945_eq
  unfold live9945 coloured9945 at child
  try dsimp only [live9946, coloured9946]
  rw [child]
  dsimp only [result9945]
  try dsimp only [colour, result9946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9947_agree : tree9947 = literal9947 := by
  rw [tree9947_def]
  rfl
theorem node9947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9947 live9947 coloured9947 = result9947 := by
  rw [tree9947_def]
  try dsimp only [colour, result9947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9948_agree : tree9948 = literal9948 := by
  rw [tree9948_def, tree9946_agree, tree9947_agree]
  rfl
theorem node9948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9948 live9948 coloured9948 = result9948 := by
  rw [tree9948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9946_eq
  unfold live9946 coloured9946 at child
  try dsimp only [live9948, coloured9948]
  rw [child]
  dsimp only [result9946]
  have child := node9947_eq
  unfold live9947 coloured9947 at child
  try dsimp only [live9948, coloured9948]
  rw [child]
  dsimp only [result9947]
  try dsimp only [colour, result9948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9949_agree : tree9949 = literal9949 := by
  rw [tree9949_def]
  rfl
theorem node9949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9949 live9949 coloured9949 = result9949 := by
  rw [tree9949_def]
  try dsimp only [colour, result9949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9950_agree : tree9950 = literal9950 := by
  rw [tree9950_def, tree9948_agree, tree9949_agree]
  rfl
theorem node9950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9950 live9950 coloured9950 = result9950 := by
  rw [tree9950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9948_eq
  unfold live9948 coloured9948 at child
  try dsimp only [live9950, coloured9950]
  rw [child]
  dsimp only [result9948]
  have child := node9949_eq
  unfold live9949 coloured9949 at child
  try dsimp only [live9950, coloured9950]
  rw [child]
  dsimp only [result9949]
  try dsimp only [colour, result9950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9951_agree : tree9951 = literal9951 := by
  rw [tree9951_def]
  rfl
theorem node9951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9951 live9951 coloured9951 = result9951 := by
  rw [tree9951_def]
  try dsimp only [colour, result9951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9952_agree : tree9952 = literal9952 := by
  rw [tree9952_def, tree9950_agree, tree9951_agree]
  rfl
theorem node9952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9952 live9952 coloured9952 = result9952 := by
  rw [tree9952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9950_eq
  unfold live9950 coloured9950 at child
  try dsimp only [live9952, coloured9952]
  rw [child]
  dsimp only [result9950]
  have child := node9951_eq
  unfold live9951 coloured9951 at child
  try dsimp only [live9952, coloured9952]
  rw [child]
  dsimp only [result9951]
  try dsimp only [colour, result9952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9953_agree : tree9953 = literal9953 := by
  rw [tree9953_def]
  rfl
theorem node9953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9953 live9953 coloured9953 = result9953 := by
  rw [tree9953_def]
  try dsimp only [colour, result9953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9954_agree : tree9954 = literal9954 := by
  rw [tree9954_def, tree9952_agree, tree9953_agree]
  rfl
theorem node9954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9954 live9954 coloured9954 = result9954 := by
  rw [tree9954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9952_eq
  unfold live9952 coloured9952 at child
  try dsimp only [live9954, coloured9954]
  rw [child]
  dsimp only [result9952]
  have child := node9953_eq
  unfold live9953 coloured9953 at child
  try dsimp only [live9954, coloured9954]
  rw [child]
  dsimp only [result9953]
  try dsimp only [colour, result9954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9955_agree : tree9955 = literal9955 := by
  rw [tree9955_def]
  rfl
theorem node9955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9955 live9955 coloured9955 = result9955 := by
  rw [tree9955_def]
  try dsimp only [colour, result9955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9956_agree : tree9956 = literal9956 := by
  rw [tree9956_def, tree9954_agree, tree9955_agree]
  rfl
theorem node9956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9956 live9956 coloured9956 = result9956 := by
  rw [tree9956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9954_eq
  unfold live9954 coloured9954 at child
  try dsimp only [live9956, coloured9956]
  rw [child]
  dsimp only [result9954]
  have child := node9955_eq
  unfold live9955 coloured9955 at child
  try dsimp only [live9956, coloured9956]
  rw [child]
  dsimp only [result9955]
  try dsimp only [colour, result9956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9957_agree : tree9957 = literal9957 := by
  rw [tree9957_def]
  rfl
theorem node9957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9957 live9957 coloured9957 = result9957 := by
  rw [tree9957_def]
  try dsimp only [colour, result9957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9958_agree : tree9958 = literal9958 := by
  rw [tree9958_def, tree9956_agree, tree9957_agree]
  rfl
theorem node9958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9958 live9958 coloured9958 = result9958 := by
  rw [tree9958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9956_eq
  unfold live9956 coloured9956 at child
  try dsimp only [live9958, coloured9958]
  rw [child]
  dsimp only [result9956]
  have child := node9957_eq
  unfold live9957 coloured9957 at child
  try dsimp only [live9958, coloured9958]
  rw [child]
  dsimp only [result9957]
  try dsimp only [colour, result9958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9959_agree : tree9959 = literal9959 := by
  rw [tree9959_def]
  rfl
theorem node9959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9959 live9959 coloured9959 = result9959 := by
  rw [tree9959_def]
  try dsimp only [colour, result9959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9960_agree : tree9960 = literal9960 := by
  rw [tree9960_def, tree9958_agree, tree9959_agree]
  rfl
theorem node9960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9960 live9960 coloured9960 = result9960 := by
  rw [tree9960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9958_eq
  unfold live9958 coloured9958 at child
  try dsimp only [live9960, coloured9960]
  rw [child]
  dsimp only [result9958]
  have child := node9959_eq
  unfold live9959 coloured9959 at child
  try dsimp only [live9960, coloured9960]
  rw [child]
  dsimp only [result9959]
  try dsimp only [colour, result9960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9961_agree : tree9961 = literal9961 := by
  rw [tree9961_def]
  rfl
theorem node9961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9961 live9961 coloured9961 = result9961 := by
  rw [tree9961_def]
  try dsimp only [colour, result9961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9962_agree : tree9962 = literal9962 := by
  rw [tree9962_def, tree9960_agree, tree9961_agree]
  rfl
theorem node9962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9962 live9962 coloured9962 = result9962 := by
  rw [tree9962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9960_eq
  unfold live9960 coloured9960 at child
  try dsimp only [live9962, coloured9962]
  rw [child]
  dsimp only [result9960]
  have child := node9961_eq
  unfold live9961 coloured9961 at child
  try dsimp only [live9962, coloured9962]
  rw [child]
  dsimp only [result9961]
  try dsimp only [colour, result9962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9963_agree : tree9963 = literal9963 := by
  rw [tree9963_def]
  rfl
theorem node9963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9963 live9963 coloured9963 = result9963 := by
  rw [tree9963_def]
  try dsimp only [colour, result9963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9964_agree : tree9964 = literal9964 := by
  rw [tree9964_def, tree9962_agree, tree9963_agree]
  rfl
theorem node9964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9964 live9964 coloured9964 = result9964 := by
  rw [tree9964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9962_eq
  unfold live9962 coloured9962 at child
  try dsimp only [live9964, coloured9964]
  rw [child]
  dsimp only [result9962]
  have child := node9963_eq
  unfold live9963 coloured9963 at child
  try dsimp only [live9964, coloured9964]
  rw [child]
  dsimp only [result9963]
  try dsimp only [colour, result9964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9965_agree : tree9965 = literal9965 := by
  rw [tree9965_def]
  rfl
theorem node9965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9965 live9965 coloured9965 = result9965 := by
  rw [tree9965_def]
  try dsimp only [colour, result9965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9966_agree : tree9966 = literal9966 := by
  rw [tree9966_def, tree9964_agree, tree9965_agree]
  rfl
theorem node9966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9966 live9966 coloured9966 = result9966 := by
  rw [tree9966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9964_eq
  unfold live9964 coloured9964 at child
  try dsimp only [live9966, coloured9966]
  rw [child]
  dsimp only [result9964]
  have child := node9965_eq
  unfold live9965 coloured9965 at child
  try dsimp only [live9966, coloured9966]
  rw [child]
  dsimp only [result9965]
  try dsimp only [colour, result9966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9967_agree : tree9967 = literal9967 := by
  rw [tree9967_def]
  rfl
theorem node9967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9967 live9967 coloured9967 = result9967 := by
  rw [tree9967_def]
  try dsimp only [colour, result9967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9968_agree : tree9968 = literal9968 := by
  rw [tree9968_def, tree9966_agree, tree9967_agree]
  rfl
theorem node9968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9968 live9968 coloured9968 = result9968 := by
  rw [tree9968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9966_eq
  unfold live9966 coloured9966 at child
  try dsimp only [live9968, coloured9968]
  rw [child]
  dsimp only [result9966]
  have child := node9967_eq
  unfold live9967 coloured9967 at child
  try dsimp only [live9968, coloured9968]
  rw [child]
  dsimp only [result9967]
  try dsimp only [colour, result9968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9969_agree : tree9969 = literal9969 := by
  rw [tree9969_def]
  rfl
theorem node9969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9969 live9969 coloured9969 = result9969 := by
  rw [tree9969_def]
  try dsimp only [colour, result9969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9970_agree : tree9970 = literal9970 := by
  rw [tree9970_def, tree9968_agree, tree9969_agree]
  rfl
theorem node9970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9970 live9970 coloured9970 = result9970 := by
  rw [tree9970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9968_eq
  unfold live9968 coloured9968 at child
  try dsimp only [live9970, coloured9970]
  rw [child]
  dsimp only [result9968]
  have child := node9969_eq
  unfold live9969 coloured9969 at child
  try dsimp only [live9970, coloured9970]
  rw [child]
  dsimp only [result9969]
  try dsimp only [colour, result9970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9971_agree : tree9971 = literal9971 := by
  rw [tree9971_def]
  rfl
theorem node9971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9971 live9971 coloured9971 = result9971 := by
  rw [tree9971_def]
  try dsimp only [colour, result9971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9972_agree : tree9972 = literal9972 := by
  rw [tree9972_def, tree9970_agree, tree9971_agree]
  rfl
theorem node9972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9972 live9972 coloured9972 = result9972 := by
  rw [tree9972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9970_eq
  unfold live9970 coloured9970 at child
  try dsimp only [live9972, coloured9972]
  rw [child]
  dsimp only [result9970]
  have child := node9971_eq
  unfold live9971 coloured9971 at child
  try dsimp only [live9972, coloured9972]
  rw [child]
  dsimp only [result9971]
  try dsimp only [colour, result9972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9973_agree : tree9973 = literal9973 := by
  rw [tree9973_def]
  rfl
theorem node9973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9973 live9973 coloured9973 = result9973 := by
  rw [tree9973_def]
  try dsimp only [colour, result9973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9974_agree : tree9974 = literal9974 := by
  rw [tree9974_def, tree9972_agree, tree9973_agree]
  rfl
theorem node9974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9974 live9974 coloured9974 = result9974 := by
  rw [tree9974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9972_eq
  unfold live9972 coloured9972 at child
  try dsimp only [live9974, coloured9974]
  rw [child]
  dsimp only [result9972]
  have child := node9973_eq
  unfold live9973 coloured9973 at child
  try dsimp only [live9974, coloured9974]
  rw [child]
  dsimp only [result9973]
  try dsimp only [colour, result9974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9975_agree : tree9975 = literal9975 := by
  rw [tree9975_def]
  rfl
theorem node9975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9975 live9975 coloured9975 = result9975 := by
  rw [tree9975_def]
  try dsimp only [colour, result9975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9976_agree : tree9976 = literal9976 := by
  rw [tree9976_def, tree9974_agree, tree9975_agree]
  rfl
theorem node9976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9976 live9976 coloured9976 = result9976 := by
  rw [tree9976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9974_eq
  unfold live9974 coloured9974 at child
  try dsimp only [live9976, coloured9976]
  rw [child]
  dsimp only [result9974]
  have child := node9975_eq
  unfold live9975 coloured9975 at child
  try dsimp only [live9976, coloured9976]
  rw [child]
  dsimp only [result9975]
  try dsimp only [colour, result9976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9977_agree : tree9977 = literal9977 := by
  rw [tree9977_def]
  rfl
theorem node9977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9977 live9977 coloured9977 = result9977 := by
  rw [tree9977_def]
  try dsimp only [colour, result9977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9978_agree : tree9978 = literal9978 := by
  rw [tree9978_def, tree9976_agree, tree9977_agree]
  rfl
theorem node9978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9978 live9978 coloured9978 = result9978 := by
  rw [tree9978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9976_eq
  unfold live9976 coloured9976 at child
  try dsimp only [live9978, coloured9978]
  rw [child]
  dsimp only [result9976]
  have child := node9977_eq
  unfold live9977 coloured9977 at child
  try dsimp only [live9978, coloured9978]
  rw [child]
  dsimp only [result9977]
  try dsimp only [colour, result9978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9979_agree : tree9979 = literal9979 := by
  rw [tree9979_def]
  rfl
theorem node9979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9979 live9979 coloured9979 = result9979 := by
  rw [tree9979_def]
  try dsimp only [colour, result9979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9980_agree : tree9980 = literal9980 := by
  rw [tree9980_def, tree9978_agree, tree9979_agree]
  rfl
theorem node9980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9980 live9980 coloured9980 = result9980 := by
  rw [tree9980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9978_eq
  unfold live9978 coloured9978 at child
  try dsimp only [live9980, coloured9980]
  rw [child]
  dsimp only [result9978]
  have child := node9979_eq
  unfold live9979 coloured9979 at child
  try dsimp only [live9980, coloured9980]
  rw [child]
  dsimp only [result9979]
  try dsimp only [colour, result9980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9981_agree : tree9981 = literal9981 := by
  rw [tree9981_def]
  rfl
theorem node9981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9981 live9981 coloured9981 = result9981 := by
  rw [tree9981_def]
  try dsimp only [colour, result9981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9982_agree : tree9982 = literal9982 := by
  rw [tree9982_def, tree9980_agree, tree9981_agree]
  rfl
theorem node9982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9982 live9982 coloured9982 = result9982 := by
  rw [tree9982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9980_eq
  unfold live9980 coloured9980 at child
  try dsimp only [live9982, coloured9982]
  rw [child]
  dsimp only [result9980]
  have child := node9981_eq
  unfold live9981 coloured9981 at child
  try dsimp only [live9982, coloured9982]
  rw [child]
  dsimp only [result9981]
  try dsimp only [colour, result9982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9983_agree : tree9983 = literal9983 := by
  rw [tree9983_def]
  rfl
theorem node9983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9983 live9983 coloured9983 = result9983 := by
  rw [tree9983_def]
  try dsimp only [colour, result9983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
