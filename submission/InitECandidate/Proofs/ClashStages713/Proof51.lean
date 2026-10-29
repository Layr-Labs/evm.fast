import InitECandidate.Proofs.ClashStages713.Proof50
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree4896_agree : tree4896 = literal4896 := by
  rw [tree4896_def, tree4894_agree, tree4895_agree]
  rfl
theorem node4896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4896 live4896 coloured4896 = result4896 := by
  rw [tree4896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4894_eq
  unfold live4894 coloured4894 at child
  try dsimp only [live4896, coloured4896]
  rw [child]
  dsimp only [result4894]
  have child := node4895_eq
  unfold live4895 coloured4895 at child
  try dsimp only [live4896, coloured4896]
  rw [child]
  dsimp only [result4895]
  try dsimp only [colour, result4896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4897_agree : tree4897 = literal4897 := by
  rw [tree4897_def]
  rfl
theorem node4897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4897 live4897 coloured4897 = result4897 := by
  rw [tree4897_def]
  try dsimp only [colour, result4897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4898_agree : tree4898 = literal4898 := by
  rw [tree4898_def, tree4896_agree, tree4897_agree]
  rfl
theorem node4898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4898 live4898 coloured4898 = result4898 := by
  rw [tree4898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4896_eq
  unfold live4896 coloured4896 at child
  try dsimp only [live4898, coloured4898]
  rw [child]
  dsimp only [result4896]
  have child := node4897_eq
  unfold live4897 coloured4897 at child
  try dsimp only [live4898, coloured4898]
  rw [child]
  dsimp only [result4897]
  try dsimp only [colour, result4898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4899_agree : tree4899 = literal4899 := by
  rw [tree4899_def]
  rfl
theorem node4899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4899 live4899 coloured4899 = result4899 := by
  rw [tree4899_def]
  try dsimp only [colour, result4899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4900_agree : tree4900 = literal4900 := by
  rw [tree4900_def, tree4898_agree, tree4899_agree]
  rfl
theorem node4900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4900 live4900 coloured4900 = result4900 := by
  rw [tree4900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4898_eq
  unfold live4898 coloured4898 at child
  try dsimp only [live4900, coloured4900]
  rw [child]
  dsimp only [result4898]
  have child := node4899_eq
  unfold live4899 coloured4899 at child
  try dsimp only [live4900, coloured4900]
  rw [child]
  dsimp only [result4899]
  try dsimp only [colour, result4900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4901_agree : tree4901 = literal4901 := by
  rw [tree4901_def]
  rfl
theorem node4901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4901 live4901 coloured4901 = result4901 := by
  rw [tree4901_def]
  try dsimp only [colour, result4901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4902_agree : tree4902 = literal4902 := by
  rw [tree4902_def, tree4900_agree, tree4901_agree]
  rfl
theorem node4902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4902 live4902 coloured4902 = result4902 := by
  rw [tree4902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4900_eq
  unfold live4900 coloured4900 at child
  try dsimp only [live4902, coloured4902]
  rw [child]
  dsimp only [result4900]
  have child := node4901_eq
  unfold live4901 coloured4901 at child
  try dsimp only [live4902, coloured4902]
  rw [child]
  dsimp only [result4901]
  try dsimp only [colour, result4902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4903_agree : tree4903 = literal4903 := by
  rw [tree4903_def]
  rfl
theorem node4903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4903 live4903 coloured4903 = result4903 := by
  rw [tree4903_def]
  try dsimp only [colour, result4903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4904_agree : tree4904 = literal4904 := by
  rw [tree4904_def, tree4902_agree, tree4903_agree]
  rfl
theorem node4904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4904 live4904 coloured4904 = result4904 := by
  rw [tree4904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4902_eq
  unfold live4902 coloured4902 at child
  try dsimp only [live4904, coloured4904]
  rw [child]
  dsimp only [result4902]
  have child := node4903_eq
  unfold live4903 coloured4903 at child
  try dsimp only [live4904, coloured4904]
  rw [child]
  dsimp only [result4903]
  try dsimp only [colour, result4904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4905_agree : tree4905 = literal4905 := by
  rw [tree4905_def]
  rfl
theorem node4905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4905 live4905 coloured4905 = result4905 := by
  rw [tree4905_def]
  try dsimp only [colour, result4905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4906_agree : tree4906 = literal4906 := by
  rw [tree4906_def, tree4904_agree, tree4905_agree]
  rfl
theorem node4906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4906 live4906 coloured4906 = result4906 := by
  rw [tree4906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4904_eq
  unfold live4904 coloured4904 at child
  try dsimp only [live4906, coloured4906]
  rw [child]
  dsimp only [result4904]
  have child := node4905_eq
  unfold live4905 coloured4905 at child
  try dsimp only [live4906, coloured4906]
  rw [child]
  dsimp only [result4905]
  try dsimp only [colour, result4906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4907_agree : tree4907 = literal4907 := by
  rw [tree4907_def]
  rfl
theorem node4907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4907 live4907 coloured4907 = result4907 := by
  rw [tree4907_def]
  try dsimp only [colour, result4907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4908_agree : tree4908 = literal4908 := by
  rw [tree4908_def, tree4906_agree, tree4907_agree]
  rfl
theorem node4908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4908 live4908 coloured4908 = result4908 := by
  rw [tree4908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4906_eq
  unfold live4906 coloured4906 at child
  try dsimp only [live4908, coloured4908]
  rw [child]
  dsimp only [result4906]
  have child := node4907_eq
  unfold live4907 coloured4907 at child
  try dsimp only [live4908, coloured4908]
  rw [child]
  dsimp only [result4907]
  try dsimp only [colour, result4908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4909_agree : tree4909 = literal4909 := by
  rw [tree4909_def]
  rfl
theorem node4909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4909 live4909 coloured4909 = result4909 := by
  rw [tree4909_def]
  try dsimp only [colour, result4909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4910_agree : tree4910 = literal4910 := by
  rw [tree4910_def, tree4908_agree, tree4909_agree]
  rfl
theorem node4910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4910 live4910 coloured4910 = result4910 := by
  rw [tree4910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4908_eq
  unfold live4908 coloured4908 at child
  try dsimp only [live4910, coloured4910]
  rw [child]
  dsimp only [result4908]
  have child := node4909_eq
  unfold live4909 coloured4909 at child
  try dsimp only [live4910, coloured4910]
  rw [child]
  dsimp only [result4909]
  try dsimp only [colour, result4910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4911_agree : tree4911 = literal4911 := by
  rw [tree4911_def]
  rfl
theorem node4911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4911 live4911 coloured4911 = result4911 := by
  rw [tree4911_def]
  try dsimp only [colour, result4911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4912_agree : tree4912 = literal4912 := by
  rw [tree4912_def, tree4910_agree, tree4911_agree]
  rfl
theorem node4912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4912 live4912 coloured4912 = result4912 := by
  rw [tree4912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4910_eq
  unfold live4910 coloured4910 at child
  try dsimp only [live4912, coloured4912]
  rw [child]
  dsimp only [result4910]
  have child := node4911_eq
  unfold live4911 coloured4911 at child
  try dsimp only [live4912, coloured4912]
  rw [child]
  dsimp only [result4911]
  try dsimp only [colour, result4912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4913_agree : tree4913 = literal4913 := by
  rw [tree4913_def]
  rfl
theorem node4913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4913 live4913 coloured4913 = result4913 := by
  rw [tree4913_def]
  try dsimp only [colour, result4913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4914_agree : tree4914 = literal4914 := by
  rw [tree4914_def, tree4912_agree, tree4913_agree]
  rfl
theorem node4914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4914 live4914 coloured4914 = result4914 := by
  rw [tree4914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4912_eq
  unfold live4912 coloured4912 at child
  try dsimp only [live4914, coloured4914]
  rw [child]
  dsimp only [result4912]
  have child := node4913_eq
  unfold live4913 coloured4913 at child
  try dsimp only [live4914, coloured4914]
  rw [child]
  dsimp only [result4913]
  try dsimp only [colour, result4914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4915_agree : tree4915 = literal4915 := by
  rw [tree4915_def]
  rfl
theorem node4915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4915 live4915 coloured4915 = result4915 := by
  rw [tree4915_def]
  try dsimp only [colour, result4915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4916_agree : tree4916 = literal4916 := by
  rw [tree4916_def, tree4914_agree, tree4915_agree]
  rfl
theorem node4916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4916 live4916 coloured4916 = result4916 := by
  rw [tree4916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4914_eq
  unfold live4914 coloured4914 at child
  try dsimp only [live4916, coloured4916]
  rw [child]
  dsimp only [result4914]
  have child := node4915_eq
  unfold live4915 coloured4915 at child
  try dsimp only [live4916, coloured4916]
  rw [child]
  dsimp only [result4915]
  try dsimp only [colour, result4916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4917_agree : tree4917 = literal4917 := by
  rw [tree4917_def]
  rfl
theorem node4917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4917 live4917 coloured4917 = result4917 := by
  rw [tree4917_def]
  try dsimp only [colour, result4917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4918_agree : tree4918 = literal4918 := by
  rw [tree4918_def, tree4916_agree, tree4917_agree]
  rfl
theorem node4918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4918 live4918 coloured4918 = result4918 := by
  rw [tree4918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4916_eq
  unfold live4916 coloured4916 at child
  try dsimp only [live4918, coloured4918]
  rw [child]
  dsimp only [result4916]
  have child := node4917_eq
  unfold live4917 coloured4917 at child
  try dsimp only [live4918, coloured4918]
  rw [child]
  dsimp only [result4917]
  try dsimp only [colour, result4918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4919_agree : tree4919 = literal4919 := by
  rw [tree4919_def]
  rfl
theorem node4919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4919 live4919 coloured4919 = result4919 := by
  rw [tree4919_def]
  try dsimp only [colour, result4919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4920_agree : tree4920 = literal4920 := by
  rw [tree4920_def, tree4918_agree, tree4919_agree]
  rfl
theorem node4920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4920 live4920 coloured4920 = result4920 := by
  rw [tree4920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4918_eq
  unfold live4918 coloured4918 at child
  try dsimp only [live4920, coloured4920]
  rw [child]
  dsimp only [result4918]
  have child := node4919_eq
  unfold live4919 coloured4919 at child
  try dsimp only [live4920, coloured4920]
  rw [child]
  dsimp only [result4919]
  try dsimp only [colour, result4920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4921_agree : tree4921 = literal4921 := by
  rw [tree4921_def]
  rfl
theorem node4921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4921 live4921 coloured4921 = result4921 := by
  rw [tree4921_def]
  try dsimp only [colour, result4921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4922_agree : tree4922 = literal4922 := by
  rw [tree4922_def, tree4920_agree, tree4921_agree]
  rfl
theorem node4922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4922 live4922 coloured4922 = result4922 := by
  rw [tree4922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4920_eq
  unfold live4920 coloured4920 at child
  try dsimp only [live4922, coloured4922]
  rw [child]
  dsimp only [result4920]
  have child := node4921_eq
  unfold live4921 coloured4921 at child
  try dsimp only [live4922, coloured4922]
  rw [child]
  dsimp only [result4921]
  try dsimp only [colour, result4922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4923_agree : tree4923 = literal4923 := by
  rw [tree4923_def]
  rfl
theorem node4923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4923 live4923 coloured4923 = result4923 := by
  rw [tree4923_def]
  try dsimp only [colour, result4923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4924_agree : tree4924 = literal4924 := by
  rw [tree4924_def, tree4922_agree, tree4923_agree]
  rfl
theorem node4924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4924 live4924 coloured4924 = result4924 := by
  rw [tree4924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4922_eq
  unfold live4922 coloured4922 at child
  try dsimp only [live4924, coloured4924]
  rw [child]
  dsimp only [result4922]
  have child := node4923_eq
  unfold live4923 coloured4923 at child
  try dsimp only [live4924, coloured4924]
  rw [child]
  dsimp only [result4923]
  try dsimp only [colour, result4924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4925_agree : tree4925 = literal4925 := by
  rw [tree4925_def]
  rfl
theorem node4925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4925 live4925 coloured4925 = result4925 := by
  rw [tree4925_def]
  try dsimp only [colour, result4925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4926_agree : tree4926 = literal4926 := by
  rw [tree4926_def, tree4924_agree, tree4925_agree]
  rfl
theorem node4926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4926 live4926 coloured4926 = result4926 := by
  rw [tree4926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4924_eq
  unfold live4924 coloured4924 at child
  try dsimp only [live4926, coloured4926]
  rw [child]
  dsimp only [result4924]
  have child := node4925_eq
  unfold live4925 coloured4925 at child
  try dsimp only [live4926, coloured4926]
  rw [child]
  dsimp only [result4925]
  try dsimp only [colour, result4926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4927_agree : tree4927 = literal4927 := by
  rw [tree4927_def]
  rfl
theorem node4927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4927 live4927 coloured4927 = result4927 := by
  rw [tree4927_def]
  try dsimp only [colour, result4927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4928_agree : tree4928 = literal4928 := by
  rw [tree4928_def, tree4926_agree, tree4927_agree]
  rfl
theorem node4928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4928 live4928 coloured4928 = result4928 := by
  rw [tree4928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4926_eq
  unfold live4926 coloured4926 at child
  try dsimp only [live4928, coloured4928]
  rw [child]
  dsimp only [result4926]
  have child := node4927_eq
  unfold live4927 coloured4927 at child
  try dsimp only [live4928, coloured4928]
  rw [child]
  dsimp only [result4927]
  try dsimp only [colour, result4928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4929_agree : tree4929 = literal4929 := by
  rw [tree4929_def]
  rfl
theorem node4929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4929 live4929 coloured4929 = result4929 := by
  rw [tree4929_def]
  try dsimp only [colour, result4929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4930_agree : tree4930 = literal4930 := by
  rw [tree4930_def, tree4928_agree, tree4929_agree]
  rfl
theorem node4930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4930 live4930 coloured4930 = result4930 := by
  rw [tree4930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4928_eq
  unfold live4928 coloured4928 at child
  try dsimp only [live4930, coloured4930]
  rw [child]
  dsimp only [result4928]
  have child := node4929_eq
  unfold live4929 coloured4929 at child
  try dsimp only [live4930, coloured4930]
  rw [child]
  dsimp only [result4929]
  try dsimp only [colour, result4930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4931_agree : tree4931 = literal4931 := by
  rw [tree4931_def]
  rfl
theorem node4931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4931 live4931 coloured4931 = result4931 := by
  rw [tree4931_def]
  try dsimp only [colour, result4931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4932_agree : tree4932 = literal4932 := by
  rw [tree4932_def, tree4930_agree, tree4931_agree]
  rfl
theorem node4932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4932 live4932 coloured4932 = result4932 := by
  rw [tree4932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4930_eq
  unfold live4930 coloured4930 at child
  try dsimp only [live4932, coloured4932]
  rw [child]
  dsimp only [result4930]
  have child := node4931_eq
  unfold live4931 coloured4931 at child
  try dsimp only [live4932, coloured4932]
  rw [child]
  dsimp only [result4931]
  try dsimp only [colour, result4932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4933_agree : tree4933 = literal4933 := by
  rw [tree4933_def]
  rfl
theorem node4933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4933 live4933 coloured4933 = result4933 := by
  rw [tree4933_def]
  try dsimp only [colour, result4933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4934_agree : tree4934 = literal4934 := by
  rw [tree4934_def, tree4932_agree, tree4933_agree]
  rfl
theorem node4934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4934 live4934 coloured4934 = result4934 := by
  rw [tree4934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4932_eq
  unfold live4932 coloured4932 at child
  try dsimp only [live4934, coloured4934]
  rw [child]
  dsimp only [result4932]
  have child := node4933_eq
  unfold live4933 coloured4933 at child
  try dsimp only [live4934, coloured4934]
  rw [child]
  dsimp only [result4933]
  try dsimp only [colour, result4934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4935_agree : tree4935 = literal4935 := by
  rw [tree4935_def]
  rfl
theorem node4935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4935 live4935 coloured4935 = result4935 := by
  rw [tree4935_def]
  try dsimp only [colour, result4935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4936_agree : tree4936 = literal4936 := by
  rw [tree4936_def, tree4934_agree, tree4935_agree]
  rfl
theorem node4936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4936 live4936 coloured4936 = result4936 := by
  rw [tree4936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4934_eq
  unfold live4934 coloured4934 at child
  try dsimp only [live4936, coloured4936]
  rw [child]
  dsimp only [result4934]
  have child := node4935_eq
  unfold live4935 coloured4935 at child
  try dsimp only [live4936, coloured4936]
  rw [child]
  dsimp only [result4935]
  try dsimp only [colour, result4936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4937_agree : tree4937 = literal4937 := by
  rw [tree4937_def]
  rfl
theorem node4937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4937 live4937 coloured4937 = result4937 := by
  rw [tree4937_def]
  try dsimp only [colour, result4937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4938_agree : tree4938 = literal4938 := by
  rw [tree4938_def, tree4936_agree, tree4937_agree]
  rfl
theorem node4938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4938 live4938 coloured4938 = result4938 := by
  rw [tree4938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4936_eq
  unfold live4936 coloured4936 at child
  try dsimp only [live4938, coloured4938]
  rw [child]
  dsimp only [result4936]
  have child := node4937_eq
  unfold live4937 coloured4937 at child
  try dsimp only [live4938, coloured4938]
  rw [child]
  dsimp only [result4937]
  try dsimp only [colour, result4938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4939_agree : tree4939 = literal4939 := by
  rw [tree4939_def]
  rfl
theorem node4939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4939 live4939 coloured4939 = result4939 := by
  rw [tree4939_def]
  try dsimp only [colour, result4939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4940_agree : tree4940 = literal4940 := by
  rw [tree4940_def, tree4938_agree, tree4939_agree]
  rfl
theorem node4940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4940 live4940 coloured4940 = result4940 := by
  rw [tree4940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4938_eq
  unfold live4938 coloured4938 at child
  try dsimp only [live4940, coloured4940]
  rw [child]
  dsimp only [result4938]
  have child := node4939_eq
  unfold live4939 coloured4939 at child
  try dsimp only [live4940, coloured4940]
  rw [child]
  dsimp only [result4939]
  try dsimp only [colour, result4940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4941_agree : tree4941 = literal4941 := by
  rw [tree4941_def]
  rfl
theorem node4941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4941 live4941 coloured4941 = result4941 := by
  rw [tree4941_def]
  try dsimp only [colour, result4941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4942_agree : tree4942 = literal4942 := by
  rw [tree4942_def, tree4940_agree, tree4941_agree]
  rfl
theorem node4942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4942 live4942 coloured4942 = result4942 := by
  rw [tree4942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4940_eq
  unfold live4940 coloured4940 at child
  try dsimp only [live4942, coloured4942]
  rw [child]
  dsimp only [result4940]
  have child := node4941_eq
  unfold live4941 coloured4941 at child
  try dsimp only [live4942, coloured4942]
  rw [child]
  dsimp only [result4941]
  try dsimp only [colour, result4942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4943_agree : tree4943 = literal4943 := by
  rw [tree4943_def]
  rfl
theorem node4943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4943 live4943 coloured4943 = result4943 := by
  rw [tree4943_def]
  try dsimp only [colour, result4943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4944_agree : tree4944 = literal4944 := by
  rw [tree4944_def, tree4942_agree, tree4943_agree]
  rfl
theorem node4944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4944 live4944 coloured4944 = result4944 := by
  rw [tree4944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4942_eq
  unfold live4942 coloured4942 at child
  try dsimp only [live4944, coloured4944]
  rw [child]
  dsimp only [result4942]
  have child := node4943_eq
  unfold live4943 coloured4943 at child
  try dsimp only [live4944, coloured4944]
  rw [child]
  dsimp only [result4943]
  try dsimp only [colour, result4944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4945_agree : tree4945 = literal4945 := by
  rw [tree4945_def]
  rfl
theorem node4945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4945 live4945 coloured4945 = result4945 := by
  rw [tree4945_def]
  try dsimp only [colour, result4945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4946_agree : tree4946 = literal4946 := by
  rw [tree4946_def, tree4944_agree, tree4945_agree]
  rfl
theorem node4946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4946 live4946 coloured4946 = result4946 := by
  rw [tree4946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4944_eq
  unfold live4944 coloured4944 at child
  try dsimp only [live4946, coloured4946]
  rw [child]
  dsimp only [result4944]
  have child := node4945_eq
  unfold live4945 coloured4945 at child
  try dsimp only [live4946, coloured4946]
  rw [child]
  dsimp only [result4945]
  try dsimp only [colour, result4946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4947_agree : tree4947 = literal4947 := by
  rw [tree4947_def]
  rfl
theorem node4947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4947 live4947 coloured4947 = result4947 := by
  rw [tree4947_def]
  try dsimp only [colour, result4947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4948_agree : tree4948 = literal4948 := by
  rw [tree4948_def, tree4946_agree, tree4947_agree]
  rfl
theorem node4948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4948 live4948 coloured4948 = result4948 := by
  rw [tree4948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4946_eq
  unfold live4946 coloured4946 at child
  try dsimp only [live4948, coloured4948]
  rw [child]
  dsimp only [result4946]
  have child := node4947_eq
  unfold live4947 coloured4947 at child
  try dsimp only [live4948, coloured4948]
  rw [child]
  dsimp only [result4947]
  try dsimp only [colour, result4948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4949_agree : tree4949 = literal4949 := by
  rw [tree4949_def]
  rfl
theorem node4949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4949 live4949 coloured4949 = result4949 := by
  rw [tree4949_def]
  try dsimp only [colour, result4949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4950_agree : tree4950 = literal4950 := by
  rw [tree4950_def, tree4948_agree, tree4949_agree]
  rfl
theorem node4950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4950 live4950 coloured4950 = result4950 := by
  rw [tree4950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4948_eq
  unfold live4948 coloured4948 at child
  try dsimp only [live4950, coloured4950]
  rw [child]
  dsimp only [result4948]
  have child := node4949_eq
  unfold live4949 coloured4949 at child
  try dsimp only [live4950, coloured4950]
  rw [child]
  dsimp only [result4949]
  try dsimp only [colour, result4950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4951_agree : tree4951 = literal4951 := by
  rw [tree4951_def]
  rfl
theorem node4951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4951 live4951 coloured4951 = result4951 := by
  rw [tree4951_def]
  try dsimp only [colour, result4951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4952_agree : tree4952 = literal4952 := by
  rw [tree4952_def, tree4950_agree, tree4951_agree]
  rfl
theorem node4952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4952 live4952 coloured4952 = result4952 := by
  rw [tree4952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4950_eq
  unfold live4950 coloured4950 at child
  try dsimp only [live4952, coloured4952]
  rw [child]
  dsimp only [result4950]
  have child := node4951_eq
  unfold live4951 coloured4951 at child
  try dsimp only [live4952, coloured4952]
  rw [child]
  dsimp only [result4951]
  try dsimp only [colour, result4952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4953_agree : tree4953 = literal4953 := by
  rw [tree4953_def]
  rfl
theorem node4953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4953 live4953 coloured4953 = result4953 := by
  rw [tree4953_def]
  try dsimp only [colour, result4953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4954_agree : tree4954 = literal4954 := by
  rw [tree4954_def, tree4952_agree, tree4953_agree]
  rfl
theorem node4954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4954 live4954 coloured4954 = result4954 := by
  rw [tree4954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4952_eq
  unfold live4952 coloured4952 at child
  try dsimp only [live4954, coloured4954]
  rw [child]
  dsimp only [result4952]
  have child := node4953_eq
  unfold live4953 coloured4953 at child
  try dsimp only [live4954, coloured4954]
  rw [child]
  dsimp only [result4953]
  try dsimp only [colour, result4954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4955_agree : tree4955 = literal4955 := by
  rw [tree4955_def]
  rfl
theorem node4955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4955 live4955 coloured4955 = result4955 := by
  rw [tree4955_def]
  try dsimp only [colour, result4955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4956_agree : tree4956 = literal4956 := by
  rw [tree4956_def, tree4954_agree, tree4955_agree]
  rfl
theorem node4956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4956 live4956 coloured4956 = result4956 := by
  rw [tree4956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4954_eq
  unfold live4954 coloured4954 at child
  try dsimp only [live4956, coloured4956]
  rw [child]
  dsimp only [result4954]
  have child := node4955_eq
  unfold live4955 coloured4955 at child
  try dsimp only [live4956, coloured4956]
  rw [child]
  dsimp only [result4955]
  try dsimp only [colour, result4956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4957_agree : tree4957 = literal4957 := by
  rw [tree4957_def]
  rfl
theorem node4957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4957 live4957 coloured4957 = result4957 := by
  rw [tree4957_def]
  try dsimp only [colour, result4957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4958_agree : tree4958 = literal4958 := by
  rw [tree4958_def, tree4956_agree, tree4957_agree]
  rfl
theorem node4958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4958 live4958 coloured4958 = result4958 := by
  rw [tree4958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4956_eq
  unfold live4956 coloured4956 at child
  try dsimp only [live4958, coloured4958]
  rw [child]
  dsimp only [result4956]
  have child := node4957_eq
  unfold live4957 coloured4957 at child
  try dsimp only [live4958, coloured4958]
  rw [child]
  dsimp only [result4957]
  try dsimp only [colour, result4958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4959_agree : tree4959 = literal4959 := by
  rw [tree4959_def]
  rfl
theorem node4959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4959 live4959 coloured4959 = result4959 := by
  rw [tree4959_def]
  try dsimp only [colour, result4959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4960_agree : tree4960 = literal4960 := by
  rw [tree4960_def, tree4958_agree, tree4959_agree]
  rfl
theorem node4960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4960 live4960 coloured4960 = result4960 := by
  rw [tree4960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4958_eq
  unfold live4958 coloured4958 at child
  try dsimp only [live4960, coloured4960]
  rw [child]
  dsimp only [result4958]
  have child := node4959_eq
  unfold live4959 coloured4959 at child
  try dsimp only [live4960, coloured4960]
  rw [child]
  dsimp only [result4959]
  try dsimp only [colour, result4960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4961_agree : tree4961 = literal4961 := by
  rw [tree4961_def]
  rfl
theorem node4961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4961 live4961 coloured4961 = result4961 := by
  rw [tree4961_def]
  try dsimp only [colour, result4961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4962_agree : tree4962 = literal4962 := by
  rw [tree4962_def, tree4960_agree, tree4961_agree]
  rfl
theorem node4962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4962 live4962 coloured4962 = result4962 := by
  rw [tree4962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4960_eq
  unfold live4960 coloured4960 at child
  try dsimp only [live4962, coloured4962]
  rw [child]
  dsimp only [result4960]
  have child := node4961_eq
  unfold live4961 coloured4961 at child
  try dsimp only [live4962, coloured4962]
  rw [child]
  dsimp only [result4961]
  try dsimp only [colour, result4962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4963_agree : tree4963 = literal4963 := by
  rw [tree4963_def]
  rfl
theorem node4963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4963 live4963 coloured4963 = result4963 := by
  rw [tree4963_def]
  try dsimp only [colour, result4963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4964_agree : tree4964 = literal4964 := by
  rw [tree4964_def, tree4962_agree, tree4963_agree]
  rfl
theorem node4964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4964 live4964 coloured4964 = result4964 := by
  rw [tree4964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4962_eq
  unfold live4962 coloured4962 at child
  try dsimp only [live4964, coloured4964]
  rw [child]
  dsimp only [result4962]
  have child := node4963_eq
  unfold live4963 coloured4963 at child
  try dsimp only [live4964, coloured4964]
  rw [child]
  dsimp only [result4963]
  try dsimp only [colour, result4964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4965_agree : tree4965 = literal4965 := by
  rw [tree4965_def]
  rfl
theorem node4965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4965 live4965 coloured4965 = result4965 := by
  rw [tree4965_def]
  try dsimp only [colour, result4965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4966_agree : tree4966 = literal4966 := by
  rw [tree4966_def, tree4964_agree, tree4965_agree]
  rfl
theorem node4966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4966 live4966 coloured4966 = result4966 := by
  rw [tree4966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4964_eq
  unfold live4964 coloured4964 at child
  try dsimp only [live4966, coloured4966]
  rw [child]
  dsimp only [result4964]
  have child := node4965_eq
  unfold live4965 coloured4965 at child
  try dsimp only [live4966, coloured4966]
  rw [child]
  dsimp only [result4965]
  try dsimp only [colour, result4966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4967_agree : tree4967 = literal4967 := by
  rw [tree4967_def]
  rfl
theorem node4967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4967 live4967 coloured4967 = result4967 := by
  rw [tree4967_def]
  try dsimp only [colour, result4967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4968_agree : tree4968 = literal4968 := by
  rw [tree4968_def, tree4966_agree, tree4967_agree]
  rfl
theorem node4968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4968 live4968 coloured4968 = result4968 := by
  rw [tree4968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4966_eq
  unfold live4966 coloured4966 at child
  try dsimp only [live4968, coloured4968]
  rw [child]
  dsimp only [result4966]
  have child := node4967_eq
  unfold live4967 coloured4967 at child
  try dsimp only [live4968, coloured4968]
  rw [child]
  dsimp only [result4967]
  try dsimp only [colour, result4968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4969_agree : tree4969 = literal4969 := by
  rw [tree4969_def]
  rfl
theorem node4969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4969 live4969 coloured4969 = result4969 := by
  rw [tree4969_def]
  try dsimp only [colour, result4969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4970_agree : tree4970 = literal4970 := by
  rw [tree4970_def, tree4968_agree, tree4969_agree]
  rfl
theorem node4970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4970 live4970 coloured4970 = result4970 := by
  rw [tree4970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4968_eq
  unfold live4968 coloured4968 at child
  try dsimp only [live4970, coloured4970]
  rw [child]
  dsimp only [result4968]
  have child := node4969_eq
  unfold live4969 coloured4969 at child
  try dsimp only [live4970, coloured4970]
  rw [child]
  dsimp only [result4969]
  try dsimp only [colour, result4970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4971_agree : tree4971 = literal4971 := by
  rw [tree4971_def]
  rfl
theorem node4971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4971 live4971 coloured4971 = result4971 := by
  rw [tree4971_def]
  try dsimp only [colour, result4971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4972_agree : tree4972 = literal4972 := by
  rw [tree4972_def, tree4970_agree, tree4971_agree]
  rfl
theorem node4972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4972 live4972 coloured4972 = result4972 := by
  rw [tree4972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4970_eq
  unfold live4970 coloured4970 at child
  try dsimp only [live4972, coloured4972]
  rw [child]
  dsimp only [result4970]
  have child := node4971_eq
  unfold live4971 coloured4971 at child
  try dsimp only [live4972, coloured4972]
  rw [child]
  dsimp only [result4971]
  try dsimp only [colour, result4972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4973_agree : tree4973 = literal4973 := by
  rw [tree4973_def]
  rfl
theorem node4973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4973 live4973 coloured4973 = result4973 := by
  rw [tree4973_def]
  try dsimp only [colour, result4973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4974_agree : tree4974 = literal4974 := by
  rw [tree4974_def, tree4972_agree, tree4973_agree]
  rfl
theorem node4974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4974 live4974 coloured4974 = result4974 := by
  rw [tree4974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4972_eq
  unfold live4972 coloured4972 at child
  try dsimp only [live4974, coloured4974]
  rw [child]
  dsimp only [result4972]
  have child := node4973_eq
  unfold live4973 coloured4973 at child
  try dsimp only [live4974, coloured4974]
  rw [child]
  dsimp only [result4973]
  try dsimp only [colour, result4974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4975_agree : tree4975 = literal4975 := by
  rw [tree4975_def]
  rfl
theorem node4975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4975 live4975 coloured4975 = result4975 := by
  rw [tree4975_def]
  try dsimp only [colour, result4975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4976_agree : tree4976 = literal4976 := by
  rw [tree4976_def, tree4974_agree, tree4975_agree]
  rfl
theorem node4976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4976 live4976 coloured4976 = result4976 := by
  rw [tree4976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4974_eq
  unfold live4974 coloured4974 at child
  try dsimp only [live4976, coloured4976]
  rw [child]
  dsimp only [result4974]
  have child := node4975_eq
  unfold live4975 coloured4975 at child
  try dsimp only [live4976, coloured4976]
  rw [child]
  dsimp only [result4975]
  try dsimp only [colour, result4976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4977_agree : tree4977 = literal4977 := by
  rw [tree4977_def]
  rfl
theorem node4977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4977 live4977 coloured4977 = result4977 := by
  rw [tree4977_def]
  try dsimp only [colour, result4977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4978_agree : tree4978 = literal4978 := by
  rw [tree4978_def, tree4976_agree, tree4977_agree]
  rfl
theorem node4978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4978 live4978 coloured4978 = result4978 := by
  rw [tree4978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4976_eq
  unfold live4976 coloured4976 at child
  try dsimp only [live4978, coloured4978]
  rw [child]
  dsimp only [result4976]
  have child := node4977_eq
  unfold live4977 coloured4977 at child
  try dsimp only [live4978, coloured4978]
  rw [child]
  dsimp only [result4977]
  try dsimp only [colour, result4978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4979_agree : tree4979 = literal4979 := by
  rw [tree4979_def]
  rfl
theorem node4979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4979 live4979 coloured4979 = result4979 := by
  rw [tree4979_def]
  try dsimp only [colour, result4979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4980_agree : tree4980 = literal4980 := by
  rw [tree4980_def, tree4978_agree, tree4979_agree]
  rfl
theorem node4980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4980 live4980 coloured4980 = result4980 := by
  rw [tree4980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4978_eq
  unfold live4978 coloured4978 at child
  try dsimp only [live4980, coloured4980]
  rw [child]
  dsimp only [result4978]
  have child := node4979_eq
  unfold live4979 coloured4979 at child
  try dsimp only [live4980, coloured4980]
  rw [child]
  dsimp only [result4979]
  try dsimp only [colour, result4980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4981_agree : tree4981 = literal4981 := by
  rw [tree4981_def]
  rfl
theorem node4981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4981 live4981 coloured4981 = result4981 := by
  rw [tree4981_def]
  try dsimp only [colour, result4981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4982_agree : tree4982 = literal4982 := by
  rw [tree4982_def, tree4980_agree, tree4981_agree]
  rfl
theorem node4982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4982 live4982 coloured4982 = result4982 := by
  rw [tree4982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4980_eq
  unfold live4980 coloured4980 at child
  try dsimp only [live4982, coloured4982]
  rw [child]
  dsimp only [result4980]
  have child := node4981_eq
  unfold live4981 coloured4981 at child
  try dsimp only [live4982, coloured4982]
  rw [child]
  dsimp only [result4981]
  try dsimp only [colour, result4982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4983_agree : tree4983 = literal4983 := by
  rw [tree4983_def]
  rfl
theorem node4983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4983 live4983 coloured4983 = result4983 := by
  rw [tree4983_def]
  try dsimp only [colour, result4983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4984_agree : tree4984 = literal4984 := by
  rw [tree4984_def, tree4982_agree, tree4983_agree]
  rfl
theorem node4984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4984 live4984 coloured4984 = result4984 := by
  rw [tree4984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4982_eq
  unfold live4982 coloured4982 at child
  try dsimp only [live4984, coloured4984]
  rw [child]
  dsimp only [result4982]
  have child := node4983_eq
  unfold live4983 coloured4983 at child
  try dsimp only [live4984, coloured4984]
  rw [child]
  dsimp only [result4983]
  try dsimp only [colour, result4984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4985_agree : tree4985 = literal4985 := by
  rw [tree4985_def]
  rfl
theorem node4985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4985 live4985 coloured4985 = result4985 := by
  rw [tree4985_def]
  try dsimp only [colour, result4985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4986_agree : tree4986 = literal4986 := by
  rw [tree4986_def, tree4984_agree, tree4985_agree]
  rfl
theorem node4986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4986 live4986 coloured4986 = result4986 := by
  rw [tree4986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4984_eq
  unfold live4984 coloured4984 at child
  try dsimp only [live4986, coloured4986]
  rw [child]
  dsimp only [result4984]
  have child := node4985_eq
  unfold live4985 coloured4985 at child
  try dsimp only [live4986, coloured4986]
  rw [child]
  dsimp only [result4985]
  try dsimp only [colour, result4986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4987_agree : tree4987 = literal4987 := by
  rw [tree4987_def]
  rfl
theorem node4987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4987 live4987 coloured4987 = result4987 := by
  rw [tree4987_def]
  try dsimp only [colour, result4987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4988_agree : tree4988 = literal4988 := by
  rw [tree4988_def, tree4986_agree, tree4987_agree]
  rfl
theorem node4988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4988 live4988 coloured4988 = result4988 := by
  rw [tree4988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4986_eq
  unfold live4986 coloured4986 at child
  try dsimp only [live4988, coloured4988]
  rw [child]
  dsimp only [result4986]
  have child := node4987_eq
  unfold live4987 coloured4987 at child
  try dsimp only [live4988, coloured4988]
  rw [child]
  dsimp only [result4987]
  try dsimp only [colour, result4988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4989_agree : tree4989 = literal4989 := by
  rw [tree4989_def]
  rfl
theorem node4989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4989 live4989 coloured4989 = result4989 := by
  rw [tree4989_def]
  try dsimp only [colour, result4989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4990_agree : tree4990 = literal4990 := by
  rw [tree4990_def, tree4988_agree, tree4989_agree]
  rfl
theorem node4990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4990 live4990 coloured4990 = result4990 := by
  rw [tree4990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4988_eq
  unfold live4988 coloured4988 at child
  try dsimp only [live4990, coloured4990]
  rw [child]
  dsimp only [result4988]
  have child := node4989_eq
  unfold live4989 coloured4989 at child
  try dsimp only [live4990, coloured4990]
  rw [child]
  dsimp only [result4989]
  try dsimp only [colour, result4990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4991_agree : tree4991 = literal4991 := by
  rw [tree4991_def]
  rfl
theorem node4991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4991 live4991 coloured4991 = result4991 := by
  rw [tree4991_def]
  try dsimp only [colour, result4991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
