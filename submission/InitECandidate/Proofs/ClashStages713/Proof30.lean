import InitECandidate.Proofs.ClashStages713.Proof29
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2880_agree : tree2880 = literal2880 := by
  rw [tree2880_def, tree2878_agree, tree2879_agree]
  rfl
theorem node2880_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2880 live2880 coloured2880 = result2880 := by
  rw [tree2880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2878_eq
  unfold live2878 coloured2878 at child
  try dsimp only [live2880, coloured2880]
  rw [child]
  dsimp only [result2878]
  have child := node2879_eq
  unfold live2879 coloured2879 at child
  try dsimp only [live2880, coloured2880]
  rw [child]
  dsimp only [result2879]
  try dsimp only [colour, result2880]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2881_agree : tree2881 = literal2881 := by
  rw [tree2881_def]
  rfl
theorem node2881_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2881 live2881 coloured2881 = result2881 := by
  rw [tree2881_def]
  try dsimp only [colour, result2881]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2882_agree : tree2882 = literal2882 := by
  rw [tree2882_def, tree2880_agree, tree2881_agree]
  rfl
theorem node2882_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2882 live2882 coloured2882 = result2882 := by
  rw [tree2882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2880_eq
  unfold live2880 coloured2880 at child
  try dsimp only [live2882, coloured2882]
  rw [child]
  dsimp only [result2880]
  have child := node2881_eq
  unfold live2881 coloured2881 at child
  try dsimp only [live2882, coloured2882]
  rw [child]
  dsimp only [result2881]
  try dsimp only [colour, result2882]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2883_agree : tree2883 = literal2883 := by
  rw [tree2883_def]
  rfl
theorem node2883_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2883 live2883 coloured2883 = result2883 := by
  rw [tree2883_def]
  try dsimp only [colour, result2883]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2884_agree : tree2884 = literal2884 := by
  rw [tree2884_def, tree2882_agree, tree2883_agree]
  rfl
theorem node2884_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2884 live2884 coloured2884 = result2884 := by
  rw [tree2884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2882_eq
  unfold live2882 coloured2882 at child
  try dsimp only [live2884, coloured2884]
  rw [child]
  dsimp only [result2882]
  have child := node2883_eq
  unfold live2883 coloured2883 at child
  try dsimp only [live2884, coloured2884]
  rw [child]
  dsimp only [result2883]
  try dsimp only [colour, result2884]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2885_agree : tree2885 = literal2885 := by
  rw [tree2885_def]
  rfl
theorem node2885_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2885 live2885 coloured2885 = result2885 := by
  rw [tree2885_def]
  try dsimp only [colour, result2885]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2886_agree : tree2886 = literal2886 := by
  rw [tree2886_def, tree2884_agree, tree2885_agree]
  rfl
theorem node2886_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2886 live2886 coloured2886 = result2886 := by
  rw [tree2886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2884_eq
  unfold live2884 coloured2884 at child
  try dsimp only [live2886, coloured2886]
  rw [child]
  dsimp only [result2884]
  have child := node2885_eq
  unfold live2885 coloured2885 at child
  try dsimp only [live2886, coloured2886]
  rw [child]
  dsimp only [result2885]
  try dsimp only [colour, result2886]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2887_agree : tree2887 = literal2887 := by
  rw [tree2887_def]
  rfl
theorem node2887_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2887 live2887 coloured2887 = result2887 := by
  rw [tree2887_def]
  try dsimp only [colour, result2887]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2888_agree : tree2888 = literal2888 := by
  rw [tree2888_def, tree2886_agree, tree2887_agree]
  rfl
theorem node2888_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2888 live2888 coloured2888 = result2888 := by
  rw [tree2888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2886_eq
  unfold live2886 coloured2886 at child
  try dsimp only [live2888, coloured2888]
  rw [child]
  dsimp only [result2886]
  have child := node2887_eq
  unfold live2887 coloured2887 at child
  try dsimp only [live2888, coloured2888]
  rw [child]
  dsimp only [result2887]
  try dsimp only [colour, result2888]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2889_agree : tree2889 = literal2889 := by
  rw [tree2889_def]
  rfl
theorem node2889_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2889 live2889 coloured2889 = result2889 := by
  rw [tree2889_def]
  try dsimp only [colour, result2889]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2890_agree : tree2890 = literal2890 := by
  rw [tree2890_def, tree2888_agree, tree2889_agree]
  rfl
theorem node2890_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2890 live2890 coloured2890 = result2890 := by
  rw [tree2890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2888_eq
  unfold live2888 coloured2888 at child
  try dsimp only [live2890, coloured2890]
  rw [child]
  dsimp only [result2888]
  have child := node2889_eq
  unfold live2889 coloured2889 at child
  try dsimp only [live2890, coloured2890]
  rw [child]
  dsimp only [result2889]
  try dsimp only [colour, result2890]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2891_agree : tree2891 = literal2891 := by
  rw [tree2891_def]
  rfl
theorem node2891_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2891 live2891 coloured2891 = result2891 := by
  rw [tree2891_def]
  try dsimp only [colour, result2891]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2892_agree : tree2892 = literal2892 := by
  rw [tree2892_def, tree2890_agree, tree2891_agree]
  rfl
theorem node2892_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2892 live2892 coloured2892 = result2892 := by
  rw [tree2892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2890_eq
  unfold live2890 coloured2890 at child
  try dsimp only [live2892, coloured2892]
  rw [child]
  dsimp only [result2890]
  have child := node2891_eq
  unfold live2891 coloured2891 at child
  try dsimp only [live2892, coloured2892]
  rw [child]
  dsimp only [result2891]
  try dsimp only [colour, result2892]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2893_agree : tree2893 = literal2893 := by
  rw [tree2893_def]
  rfl
theorem node2893_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2893 live2893 coloured2893 = result2893 := by
  rw [tree2893_def]
  try dsimp only [colour, result2893]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2894_agree : tree2894 = literal2894 := by
  rw [tree2894_def, tree2892_agree, tree2893_agree]
  rfl
theorem node2894_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2894 live2894 coloured2894 = result2894 := by
  rw [tree2894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2892_eq
  unfold live2892 coloured2892 at child
  try dsimp only [live2894, coloured2894]
  rw [child]
  dsimp only [result2892]
  have child := node2893_eq
  unfold live2893 coloured2893 at child
  try dsimp only [live2894, coloured2894]
  rw [child]
  dsimp only [result2893]
  try dsimp only [colour, result2894]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2895_agree : tree2895 = literal2895 := by
  rw [tree2895_def]
  rfl
theorem node2895_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2895 live2895 coloured2895 = result2895 := by
  rw [tree2895_def]
  try dsimp only [colour, result2895]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2896_agree : tree2896 = literal2896 := by
  rw [tree2896_def, tree2894_agree, tree2895_agree]
  rfl
theorem node2896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2896 live2896 coloured2896 = result2896 := by
  rw [tree2896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2894_eq
  unfold live2894 coloured2894 at child
  try dsimp only [live2896, coloured2896]
  rw [child]
  dsimp only [result2894]
  have child := node2895_eq
  unfold live2895 coloured2895 at child
  try dsimp only [live2896, coloured2896]
  rw [child]
  dsimp only [result2895]
  try dsimp only [colour, result2896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2897_agree : tree2897 = literal2897 := by
  rw [tree2897_def]
  rfl
theorem node2897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2897 live2897 coloured2897 = result2897 := by
  rw [tree2897_def]
  try dsimp only [colour, result2897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2898_agree : tree2898 = literal2898 := by
  rw [tree2898_def, tree2896_agree, tree2897_agree]
  rfl
theorem node2898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2898 live2898 coloured2898 = result2898 := by
  rw [tree2898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2896_eq
  unfold live2896 coloured2896 at child
  try dsimp only [live2898, coloured2898]
  rw [child]
  dsimp only [result2896]
  have child := node2897_eq
  unfold live2897 coloured2897 at child
  try dsimp only [live2898, coloured2898]
  rw [child]
  dsimp only [result2897]
  try dsimp only [colour, result2898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2899_agree : tree2899 = literal2899 := by
  rw [tree2899_def]
  rfl
theorem node2899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2899 live2899 coloured2899 = result2899 := by
  rw [tree2899_def]
  try dsimp only [colour, result2899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2900_agree : tree2900 = literal2900 := by
  rw [tree2900_def, tree2898_agree, tree2899_agree]
  rfl
theorem node2900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2900 live2900 coloured2900 = result2900 := by
  rw [tree2900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2898_eq
  unfold live2898 coloured2898 at child
  try dsimp only [live2900, coloured2900]
  rw [child]
  dsimp only [result2898]
  have child := node2899_eq
  unfold live2899 coloured2899 at child
  try dsimp only [live2900, coloured2900]
  rw [child]
  dsimp only [result2899]
  try dsimp only [colour, result2900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2901_agree : tree2901 = literal2901 := by
  rw [tree2901_def]
  rfl
theorem node2901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2901 live2901 coloured2901 = result2901 := by
  rw [tree2901_def]
  try dsimp only [colour, result2901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2902_agree : tree2902 = literal2902 := by
  rw [tree2902_def, tree2900_agree, tree2901_agree]
  rfl
theorem node2902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2902 live2902 coloured2902 = result2902 := by
  rw [tree2902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2900_eq
  unfold live2900 coloured2900 at child
  try dsimp only [live2902, coloured2902]
  rw [child]
  dsimp only [result2900]
  have child := node2901_eq
  unfold live2901 coloured2901 at child
  try dsimp only [live2902, coloured2902]
  rw [child]
  dsimp only [result2901]
  try dsimp only [colour, result2902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2903_agree : tree2903 = literal2903 := by
  rw [tree2903_def]
  rfl
theorem node2903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2903 live2903 coloured2903 = result2903 := by
  rw [tree2903_def]
  try dsimp only [colour, result2903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2904_agree : tree2904 = literal2904 := by
  rw [tree2904_def, tree2902_agree, tree2903_agree]
  rfl
theorem node2904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2904 live2904 coloured2904 = result2904 := by
  rw [tree2904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2902_eq
  unfold live2902 coloured2902 at child
  try dsimp only [live2904, coloured2904]
  rw [child]
  dsimp only [result2902]
  have child := node2903_eq
  unfold live2903 coloured2903 at child
  try dsimp only [live2904, coloured2904]
  rw [child]
  dsimp only [result2903]
  try dsimp only [colour, result2904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2905_agree : tree2905 = literal2905 := by
  rw [tree2905_def]
  rfl
theorem node2905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2905 live2905 coloured2905 = result2905 := by
  rw [tree2905_def]
  try dsimp only [colour, result2905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2906_agree : tree2906 = literal2906 := by
  rw [tree2906_def, tree2904_agree, tree2905_agree]
  rfl
theorem node2906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2906 live2906 coloured2906 = result2906 := by
  rw [tree2906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2904_eq
  unfold live2904 coloured2904 at child
  try dsimp only [live2906, coloured2906]
  rw [child]
  dsimp only [result2904]
  have child := node2905_eq
  unfold live2905 coloured2905 at child
  try dsimp only [live2906, coloured2906]
  rw [child]
  dsimp only [result2905]
  try dsimp only [colour, result2906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2907_agree : tree2907 = literal2907 := by
  rw [tree2907_def]
  rfl
theorem node2907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2907 live2907 coloured2907 = result2907 := by
  rw [tree2907_def]
  try dsimp only [colour, result2907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2908_agree : tree2908 = literal2908 := by
  rw [tree2908_def, tree2906_agree, tree2907_agree]
  rfl
theorem node2908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2908 live2908 coloured2908 = result2908 := by
  rw [tree2908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2906_eq
  unfold live2906 coloured2906 at child
  try dsimp only [live2908, coloured2908]
  rw [child]
  dsimp only [result2906]
  have child := node2907_eq
  unfold live2907 coloured2907 at child
  try dsimp only [live2908, coloured2908]
  rw [child]
  dsimp only [result2907]
  try dsimp only [colour, result2908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2909_agree : tree2909 = literal2909 := by
  rw [tree2909_def]
  rfl
theorem node2909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2909 live2909 coloured2909 = result2909 := by
  rw [tree2909_def]
  try dsimp only [colour, result2909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2910_agree : tree2910 = literal2910 := by
  rw [tree2910_def, tree2908_agree, tree2909_agree]
  rfl
theorem node2910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2910 live2910 coloured2910 = result2910 := by
  rw [tree2910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2908_eq
  unfold live2908 coloured2908 at child
  try dsimp only [live2910, coloured2910]
  rw [child]
  dsimp only [result2908]
  have child := node2909_eq
  unfold live2909 coloured2909 at child
  try dsimp only [live2910, coloured2910]
  rw [child]
  dsimp only [result2909]
  try dsimp only [colour, result2910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2911_agree : tree2911 = literal2911 := by
  rw [tree2911_def]
  rfl
theorem node2911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2911 live2911 coloured2911 = result2911 := by
  rw [tree2911_def]
  try dsimp only [colour, result2911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2912_agree : tree2912 = literal2912 := by
  rw [tree2912_def, tree2910_agree, tree2911_agree]
  rfl
theorem node2912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2912 live2912 coloured2912 = result2912 := by
  rw [tree2912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2910_eq
  unfold live2910 coloured2910 at child
  try dsimp only [live2912, coloured2912]
  rw [child]
  dsimp only [result2910]
  have child := node2911_eq
  unfold live2911 coloured2911 at child
  try dsimp only [live2912, coloured2912]
  rw [child]
  dsimp only [result2911]
  try dsimp only [colour, result2912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2913_agree : tree2913 = literal2913 := by
  rw [tree2913_def]
  rfl
theorem node2913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2913 live2913 coloured2913 = result2913 := by
  rw [tree2913_def]
  try dsimp only [colour, result2913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2914_agree : tree2914 = literal2914 := by
  rw [tree2914_def, tree2912_agree, tree2913_agree]
  rfl
theorem node2914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2914 live2914 coloured2914 = result2914 := by
  rw [tree2914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2912_eq
  unfold live2912 coloured2912 at child
  try dsimp only [live2914, coloured2914]
  rw [child]
  dsimp only [result2912]
  have child := node2913_eq
  unfold live2913 coloured2913 at child
  try dsimp only [live2914, coloured2914]
  rw [child]
  dsimp only [result2913]
  try dsimp only [colour, result2914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2915_agree : tree2915 = literal2915 := by
  rw [tree2915_def]
  rfl
theorem node2915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2915 live2915 coloured2915 = result2915 := by
  rw [tree2915_def]
  try dsimp only [colour, result2915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2916_agree : tree2916 = literal2916 := by
  rw [tree2916_def, tree2914_agree, tree2915_agree]
  rfl
theorem node2916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2916 live2916 coloured2916 = result2916 := by
  rw [tree2916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2914_eq
  unfold live2914 coloured2914 at child
  try dsimp only [live2916, coloured2916]
  rw [child]
  dsimp only [result2914]
  have child := node2915_eq
  unfold live2915 coloured2915 at child
  try dsimp only [live2916, coloured2916]
  rw [child]
  dsimp only [result2915]
  try dsimp only [colour, result2916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2917_agree : tree2917 = literal2917 := by
  rw [tree2917_def]
  rfl
theorem node2917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2917 live2917 coloured2917 = result2917 := by
  rw [tree2917_def]
  try dsimp only [colour, result2917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2918_agree : tree2918 = literal2918 := by
  rw [tree2918_def, tree2916_agree, tree2917_agree]
  rfl
theorem node2918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2918 live2918 coloured2918 = result2918 := by
  rw [tree2918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2916_eq
  unfold live2916 coloured2916 at child
  try dsimp only [live2918, coloured2918]
  rw [child]
  dsimp only [result2916]
  have child := node2917_eq
  unfold live2917 coloured2917 at child
  try dsimp only [live2918, coloured2918]
  rw [child]
  dsimp only [result2917]
  try dsimp only [colour, result2918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2919_agree : tree2919 = literal2919 := by
  rw [tree2919_def]
  rfl
theorem node2919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2919 live2919 coloured2919 = result2919 := by
  rw [tree2919_def]
  try dsimp only [colour, result2919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2920_agree : tree2920 = literal2920 := by
  rw [tree2920_def, tree2918_agree, tree2919_agree]
  rfl
theorem node2920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2920 live2920 coloured2920 = result2920 := by
  rw [tree2920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2918_eq
  unfold live2918 coloured2918 at child
  try dsimp only [live2920, coloured2920]
  rw [child]
  dsimp only [result2918]
  have child := node2919_eq
  unfold live2919 coloured2919 at child
  try dsimp only [live2920, coloured2920]
  rw [child]
  dsimp only [result2919]
  try dsimp only [colour, result2920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2921_agree : tree2921 = literal2921 := by
  rw [tree2921_def]
  rfl
theorem node2921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2921 live2921 coloured2921 = result2921 := by
  rw [tree2921_def]
  try dsimp only [colour, result2921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2922_agree : tree2922 = literal2922 := by
  rw [tree2922_def, tree2920_agree, tree2921_agree]
  rfl
theorem node2922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2922 live2922 coloured2922 = result2922 := by
  rw [tree2922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2920_eq
  unfold live2920 coloured2920 at child
  try dsimp only [live2922, coloured2922]
  rw [child]
  dsimp only [result2920]
  have child := node2921_eq
  unfold live2921 coloured2921 at child
  try dsimp only [live2922, coloured2922]
  rw [child]
  dsimp only [result2921]
  try dsimp only [colour, result2922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2923_agree : tree2923 = literal2923 := by
  rw [tree2923_def]
  rfl
theorem node2923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2923 live2923 coloured2923 = result2923 := by
  rw [tree2923_def]
  try dsimp only [colour, result2923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2924_agree : tree2924 = literal2924 := by
  rw [tree2924_def, tree2922_agree, tree2923_agree]
  rfl
theorem node2924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2924 live2924 coloured2924 = result2924 := by
  rw [tree2924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2922_eq
  unfold live2922 coloured2922 at child
  try dsimp only [live2924, coloured2924]
  rw [child]
  dsimp only [result2922]
  have child := node2923_eq
  unfold live2923 coloured2923 at child
  try dsimp only [live2924, coloured2924]
  rw [child]
  dsimp only [result2923]
  try dsimp only [colour, result2924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2925_agree : tree2925 = literal2925 := by
  rw [tree2925_def]
  rfl
theorem node2925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2925 live2925 coloured2925 = result2925 := by
  rw [tree2925_def]
  try dsimp only [colour, result2925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2926_agree : tree2926 = literal2926 := by
  rw [tree2926_def, tree2924_agree, tree2925_agree]
  rfl
theorem node2926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2926 live2926 coloured2926 = result2926 := by
  rw [tree2926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2924_eq
  unfold live2924 coloured2924 at child
  try dsimp only [live2926, coloured2926]
  rw [child]
  dsimp only [result2924]
  have child := node2925_eq
  unfold live2925 coloured2925 at child
  try dsimp only [live2926, coloured2926]
  rw [child]
  dsimp only [result2925]
  try dsimp only [colour, result2926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2927_agree : tree2927 = literal2927 := by
  rw [tree2927_def]
  rfl
theorem node2927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2927 live2927 coloured2927 = result2927 := by
  rw [tree2927_def]
  try dsimp only [colour, result2927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2928_agree : tree2928 = literal2928 := by
  rw [tree2928_def, tree2926_agree, tree2927_agree]
  rfl
theorem node2928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2928 live2928 coloured2928 = result2928 := by
  rw [tree2928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2926_eq
  unfold live2926 coloured2926 at child
  try dsimp only [live2928, coloured2928]
  rw [child]
  dsimp only [result2926]
  have child := node2927_eq
  unfold live2927 coloured2927 at child
  try dsimp only [live2928, coloured2928]
  rw [child]
  dsimp only [result2927]
  try dsimp only [colour, result2928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2929_agree : tree2929 = literal2929 := by
  rw [tree2929_def]
  rfl
theorem node2929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2929 live2929 coloured2929 = result2929 := by
  rw [tree2929_def]
  try dsimp only [colour, result2929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2930_agree : tree2930 = literal2930 := by
  rw [tree2930_def, tree2928_agree, tree2929_agree]
  rfl
theorem node2930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2930 live2930 coloured2930 = result2930 := by
  rw [tree2930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2928_eq
  unfold live2928 coloured2928 at child
  try dsimp only [live2930, coloured2930]
  rw [child]
  dsimp only [result2928]
  have child := node2929_eq
  unfold live2929 coloured2929 at child
  try dsimp only [live2930, coloured2930]
  rw [child]
  dsimp only [result2929]
  try dsimp only [colour, result2930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2931_agree : tree2931 = literal2931 := by
  rw [tree2931_def]
  rfl
theorem node2931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2931 live2931 coloured2931 = result2931 := by
  rw [tree2931_def]
  try dsimp only [colour, result2931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2932_agree : tree2932 = literal2932 := by
  rw [tree2932_def, tree2930_agree, tree2931_agree]
  rfl
theorem node2932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2932 live2932 coloured2932 = result2932 := by
  rw [tree2932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2930_eq
  unfold live2930 coloured2930 at child
  try dsimp only [live2932, coloured2932]
  rw [child]
  dsimp only [result2930]
  have child := node2931_eq
  unfold live2931 coloured2931 at child
  try dsimp only [live2932, coloured2932]
  rw [child]
  dsimp only [result2931]
  try dsimp only [colour, result2932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2933_agree : tree2933 = literal2933 := by
  rw [tree2933_def]
  rfl
theorem node2933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2933 live2933 coloured2933 = result2933 := by
  rw [tree2933_def]
  try dsimp only [colour, result2933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2934_agree : tree2934 = literal2934 := by
  rw [tree2934_def, tree2932_agree, tree2933_agree]
  rfl
theorem node2934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2934 live2934 coloured2934 = result2934 := by
  rw [tree2934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2932_eq
  unfold live2932 coloured2932 at child
  try dsimp only [live2934, coloured2934]
  rw [child]
  dsimp only [result2932]
  have child := node2933_eq
  unfold live2933 coloured2933 at child
  try dsimp only [live2934, coloured2934]
  rw [child]
  dsimp only [result2933]
  try dsimp only [colour, result2934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2935_agree : tree2935 = literal2935 := by
  rw [tree2935_def]
  rfl
theorem node2935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2935 live2935 coloured2935 = result2935 := by
  rw [tree2935_def]
  try dsimp only [colour, result2935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2936_agree : tree2936 = literal2936 := by
  rw [tree2936_def, tree2934_agree, tree2935_agree]
  rfl
theorem node2936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2936 live2936 coloured2936 = result2936 := by
  rw [tree2936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2934_eq
  unfold live2934 coloured2934 at child
  try dsimp only [live2936, coloured2936]
  rw [child]
  dsimp only [result2934]
  have child := node2935_eq
  unfold live2935 coloured2935 at child
  try dsimp only [live2936, coloured2936]
  rw [child]
  dsimp only [result2935]
  try dsimp only [colour, result2936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2937_agree : tree2937 = literal2937 := by
  rw [tree2937_def]
  rfl
theorem node2937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2937 live2937 coloured2937 = result2937 := by
  rw [tree2937_def]
  try dsimp only [colour, result2937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2938_agree : tree2938 = literal2938 := by
  rw [tree2938_def, tree2936_agree, tree2937_agree]
  rfl
theorem node2938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2938 live2938 coloured2938 = result2938 := by
  rw [tree2938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2936_eq
  unfold live2936 coloured2936 at child
  try dsimp only [live2938, coloured2938]
  rw [child]
  dsimp only [result2936]
  have child := node2937_eq
  unfold live2937 coloured2937 at child
  try dsimp only [live2938, coloured2938]
  rw [child]
  dsimp only [result2937]
  try dsimp only [colour, result2938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2939_agree : tree2939 = literal2939 := by
  rw [tree2939_def]
  rfl
theorem node2939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2939 live2939 coloured2939 = result2939 := by
  rw [tree2939_def]
  try dsimp only [colour, result2939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2940_agree : tree2940 = literal2940 := by
  rw [tree2940_def, tree2938_agree, tree2939_agree]
  rfl
theorem node2940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2940 live2940 coloured2940 = result2940 := by
  rw [tree2940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2938_eq
  unfold live2938 coloured2938 at child
  try dsimp only [live2940, coloured2940]
  rw [child]
  dsimp only [result2938]
  have child := node2939_eq
  unfold live2939 coloured2939 at child
  try dsimp only [live2940, coloured2940]
  rw [child]
  dsimp only [result2939]
  try dsimp only [colour, result2940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2941_agree : tree2941 = literal2941 := by
  rw [tree2941_def]
  rfl
theorem node2941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2941 live2941 coloured2941 = result2941 := by
  rw [tree2941_def]
  try dsimp only [colour, result2941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2942_agree : tree2942 = literal2942 := by
  rw [tree2942_def, tree2940_agree, tree2941_agree]
  rfl
theorem node2942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2942 live2942 coloured2942 = result2942 := by
  rw [tree2942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2940_eq
  unfold live2940 coloured2940 at child
  try dsimp only [live2942, coloured2942]
  rw [child]
  dsimp only [result2940]
  have child := node2941_eq
  unfold live2941 coloured2941 at child
  try dsimp only [live2942, coloured2942]
  rw [child]
  dsimp only [result2941]
  try dsimp only [colour, result2942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2943_agree : tree2943 = literal2943 := by
  rw [tree2943_def]
  rfl
theorem node2943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2943 live2943 coloured2943 = result2943 := by
  rw [tree2943_def]
  try dsimp only [colour, result2943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2944_agree : tree2944 = literal2944 := by
  rw [tree2944_def, tree2942_agree, tree2943_agree]
  rfl
theorem node2944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2944 live2944 coloured2944 = result2944 := by
  rw [tree2944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2942_eq
  unfold live2942 coloured2942 at child
  try dsimp only [live2944, coloured2944]
  rw [child]
  dsimp only [result2942]
  have child := node2943_eq
  unfold live2943 coloured2943 at child
  try dsimp only [live2944, coloured2944]
  rw [child]
  dsimp only [result2943]
  try dsimp only [colour, result2944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2945_agree : tree2945 = literal2945 := by
  rw [tree2945_def]
  rfl
theorem node2945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2945 live2945 coloured2945 = result2945 := by
  rw [tree2945_def]
  try dsimp only [colour, result2945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2946_agree : tree2946 = literal2946 := by
  rw [tree2946_def, tree2944_agree, tree2945_agree]
  rfl
theorem node2946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2946 live2946 coloured2946 = result2946 := by
  rw [tree2946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2944_eq
  unfold live2944 coloured2944 at child
  try dsimp only [live2946, coloured2946]
  rw [child]
  dsimp only [result2944]
  have child := node2945_eq
  unfold live2945 coloured2945 at child
  try dsimp only [live2946, coloured2946]
  rw [child]
  dsimp only [result2945]
  try dsimp only [colour, result2946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2947_agree : tree2947 = literal2947 := by
  rw [tree2947_def]
  rfl
theorem node2947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2947 live2947 coloured2947 = result2947 := by
  rw [tree2947_def]
  try dsimp only [colour, result2947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2948_agree : tree2948 = literal2948 := by
  rw [tree2948_def, tree2946_agree, tree2947_agree]
  rfl
theorem node2948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2948 live2948 coloured2948 = result2948 := by
  rw [tree2948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2946_eq
  unfold live2946 coloured2946 at child
  try dsimp only [live2948, coloured2948]
  rw [child]
  dsimp only [result2946]
  have child := node2947_eq
  unfold live2947 coloured2947 at child
  try dsimp only [live2948, coloured2948]
  rw [child]
  dsimp only [result2947]
  try dsimp only [colour, result2948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2949_agree : tree2949 = literal2949 := by
  rw [tree2949_def]
  rfl
theorem node2949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2949 live2949 coloured2949 = result2949 := by
  rw [tree2949_def]
  try dsimp only [colour, result2949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2950_agree : tree2950 = literal2950 := by
  rw [tree2950_def, tree2948_agree, tree2949_agree]
  rfl
theorem node2950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2950 live2950 coloured2950 = result2950 := by
  rw [tree2950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2948_eq
  unfold live2948 coloured2948 at child
  try dsimp only [live2950, coloured2950]
  rw [child]
  dsimp only [result2948]
  have child := node2949_eq
  unfold live2949 coloured2949 at child
  try dsimp only [live2950, coloured2950]
  rw [child]
  dsimp only [result2949]
  try dsimp only [colour, result2950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2951_agree : tree2951 = literal2951 := by
  rw [tree2951_def]
  rfl
theorem node2951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2951 live2951 coloured2951 = result2951 := by
  rw [tree2951_def]
  try dsimp only [colour, result2951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2952_agree : tree2952 = literal2952 := by
  rw [tree2952_def, tree2950_agree, tree2951_agree]
  rfl
theorem node2952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2952 live2952 coloured2952 = result2952 := by
  rw [tree2952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2950_eq
  unfold live2950 coloured2950 at child
  try dsimp only [live2952, coloured2952]
  rw [child]
  dsimp only [result2950]
  have child := node2951_eq
  unfold live2951 coloured2951 at child
  try dsimp only [live2952, coloured2952]
  rw [child]
  dsimp only [result2951]
  try dsimp only [colour, result2952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2953_agree : tree2953 = literal2953 := by
  rw [tree2953_def]
  rfl
theorem node2953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2953 live2953 coloured2953 = result2953 := by
  rw [tree2953_def]
  try dsimp only [colour, result2953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2954_agree : tree2954 = literal2954 := by
  rw [tree2954_def, tree2952_agree, tree2953_agree]
  rfl
theorem node2954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2954 live2954 coloured2954 = result2954 := by
  rw [tree2954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2952_eq
  unfold live2952 coloured2952 at child
  try dsimp only [live2954, coloured2954]
  rw [child]
  dsimp only [result2952]
  have child := node2953_eq
  unfold live2953 coloured2953 at child
  try dsimp only [live2954, coloured2954]
  rw [child]
  dsimp only [result2953]
  try dsimp only [colour, result2954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2955_agree : tree2955 = literal2955 := by
  rw [tree2955_def]
  rfl
theorem node2955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2955 live2955 coloured2955 = result2955 := by
  rw [tree2955_def]
  try dsimp only [colour, result2955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2956_agree : tree2956 = literal2956 := by
  rw [tree2956_def, tree2954_agree, tree2955_agree]
  rfl
theorem node2956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2956 live2956 coloured2956 = result2956 := by
  rw [tree2956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2954_eq
  unfold live2954 coloured2954 at child
  try dsimp only [live2956, coloured2956]
  rw [child]
  dsimp only [result2954]
  have child := node2955_eq
  unfold live2955 coloured2955 at child
  try dsimp only [live2956, coloured2956]
  rw [child]
  dsimp only [result2955]
  try dsimp only [colour, result2956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2957_agree : tree2957 = literal2957 := by
  rw [tree2957_def]
  rfl
theorem node2957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2957 live2957 coloured2957 = result2957 := by
  rw [tree2957_def]
  try dsimp only [colour, result2957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2958_agree : tree2958 = literal2958 := by
  rw [tree2958_def, tree2956_agree, tree2957_agree]
  rfl
theorem node2958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2958 live2958 coloured2958 = result2958 := by
  rw [tree2958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2956_eq
  unfold live2956 coloured2956 at child
  try dsimp only [live2958, coloured2958]
  rw [child]
  dsimp only [result2956]
  have child := node2957_eq
  unfold live2957 coloured2957 at child
  try dsimp only [live2958, coloured2958]
  rw [child]
  dsimp only [result2957]
  try dsimp only [colour, result2958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2959_agree : tree2959 = literal2959 := by
  rw [tree2959_def]
  rfl
theorem node2959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2959 live2959 coloured2959 = result2959 := by
  rw [tree2959_def]
  try dsimp only [colour, result2959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2960_agree : tree2960 = literal2960 := by
  rw [tree2960_def, tree2958_agree, tree2959_agree]
  rfl
theorem node2960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2960 live2960 coloured2960 = result2960 := by
  rw [tree2960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2958_eq
  unfold live2958 coloured2958 at child
  try dsimp only [live2960, coloured2960]
  rw [child]
  dsimp only [result2958]
  have child := node2959_eq
  unfold live2959 coloured2959 at child
  try dsimp only [live2960, coloured2960]
  rw [child]
  dsimp only [result2959]
  try dsimp only [colour, result2960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2961_agree : tree2961 = literal2961 := by
  rw [tree2961_def]
  rfl
theorem node2961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2961 live2961 coloured2961 = result2961 := by
  rw [tree2961_def]
  try dsimp only [colour, result2961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2962_agree : tree2962 = literal2962 := by
  rw [tree2962_def, tree2960_agree, tree2961_agree]
  rfl
theorem node2962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2962 live2962 coloured2962 = result2962 := by
  rw [tree2962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2960_eq
  unfold live2960 coloured2960 at child
  try dsimp only [live2962, coloured2962]
  rw [child]
  dsimp only [result2960]
  have child := node2961_eq
  unfold live2961 coloured2961 at child
  try dsimp only [live2962, coloured2962]
  rw [child]
  dsimp only [result2961]
  try dsimp only [colour, result2962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2963_agree : tree2963 = literal2963 := by
  rw [tree2963_def]
  rfl
theorem node2963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2963 live2963 coloured2963 = result2963 := by
  rw [tree2963_def]
  try dsimp only [colour, result2963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2964_agree : tree2964 = literal2964 := by
  rw [tree2964_def, tree2962_agree, tree2963_agree]
  rfl
theorem node2964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2964 live2964 coloured2964 = result2964 := by
  rw [tree2964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2962_eq
  unfold live2962 coloured2962 at child
  try dsimp only [live2964, coloured2964]
  rw [child]
  dsimp only [result2962]
  have child := node2963_eq
  unfold live2963 coloured2963 at child
  try dsimp only [live2964, coloured2964]
  rw [child]
  dsimp only [result2963]
  try dsimp only [colour, result2964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2965_agree : tree2965 = literal2965 := by
  rw [tree2965_def]
  rfl
theorem node2965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2965 live2965 coloured2965 = result2965 := by
  rw [tree2965_def]
  try dsimp only [colour, result2965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2966_agree : tree2966 = literal2966 := by
  rw [tree2966_def, tree2964_agree, tree2965_agree]
  rfl
theorem node2966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2966 live2966 coloured2966 = result2966 := by
  rw [tree2966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2964_eq
  unfold live2964 coloured2964 at child
  try dsimp only [live2966, coloured2966]
  rw [child]
  dsimp only [result2964]
  have child := node2965_eq
  unfold live2965 coloured2965 at child
  try dsimp only [live2966, coloured2966]
  rw [child]
  dsimp only [result2965]
  try dsimp only [colour, result2966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2967_agree : tree2967 = literal2967 := by
  rw [tree2967_def]
  rfl
theorem node2967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2967 live2967 coloured2967 = result2967 := by
  rw [tree2967_def]
  try dsimp only [colour, result2967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2968_agree : tree2968 = literal2968 := by
  rw [tree2968_def, tree2966_agree, tree2967_agree]
  rfl
theorem node2968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2968 live2968 coloured2968 = result2968 := by
  rw [tree2968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2966_eq
  unfold live2966 coloured2966 at child
  try dsimp only [live2968, coloured2968]
  rw [child]
  dsimp only [result2966]
  have child := node2967_eq
  unfold live2967 coloured2967 at child
  try dsimp only [live2968, coloured2968]
  rw [child]
  dsimp only [result2967]
  try dsimp only [colour, result2968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2969_agree : tree2969 = literal2969 := by
  rw [tree2969_def]
  rfl
theorem node2969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2969 live2969 coloured2969 = result2969 := by
  rw [tree2969_def]
  try dsimp only [colour, result2969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2970_agree : tree2970 = literal2970 := by
  rw [tree2970_def, tree2968_agree, tree2969_agree]
  rfl
theorem node2970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2970 live2970 coloured2970 = result2970 := by
  rw [tree2970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2968_eq
  unfold live2968 coloured2968 at child
  try dsimp only [live2970, coloured2970]
  rw [child]
  dsimp only [result2968]
  have child := node2969_eq
  unfold live2969 coloured2969 at child
  try dsimp only [live2970, coloured2970]
  rw [child]
  dsimp only [result2969]
  try dsimp only [colour, result2970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2971_agree : tree2971 = literal2971 := by
  rw [tree2971_def]
  rfl
theorem node2971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2971 live2971 coloured2971 = result2971 := by
  rw [tree2971_def]
  try dsimp only [colour, result2971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2972_agree : tree2972 = literal2972 := by
  rw [tree2972_def, tree2970_agree, tree2971_agree]
  rfl
theorem node2972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2972 live2972 coloured2972 = result2972 := by
  rw [tree2972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2970_eq
  unfold live2970 coloured2970 at child
  try dsimp only [live2972, coloured2972]
  rw [child]
  dsimp only [result2970]
  have child := node2971_eq
  unfold live2971 coloured2971 at child
  try dsimp only [live2972, coloured2972]
  rw [child]
  dsimp only [result2971]
  try dsimp only [colour, result2972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2973_agree : tree2973 = literal2973 := by
  rw [tree2973_def]
  rfl
theorem node2973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2973 live2973 coloured2973 = result2973 := by
  rw [tree2973_def]
  try dsimp only [colour, result2973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2974_agree : tree2974 = literal2974 := by
  rw [tree2974_def, tree2972_agree, tree2973_agree]
  rfl
theorem node2974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2974 live2974 coloured2974 = result2974 := by
  rw [tree2974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2972_eq
  unfold live2972 coloured2972 at child
  try dsimp only [live2974, coloured2974]
  rw [child]
  dsimp only [result2972]
  have child := node2973_eq
  unfold live2973 coloured2973 at child
  try dsimp only [live2974, coloured2974]
  rw [child]
  dsimp only [result2973]
  try dsimp only [colour, result2974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2975_agree : tree2975 = literal2975 := by
  rw [tree2975_def]
  rfl
theorem node2975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2975 live2975 coloured2975 = result2975 := by
  rw [tree2975_def]
  try dsimp only [colour, result2975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
