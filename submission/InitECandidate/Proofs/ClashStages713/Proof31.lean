import InitECandidate.Proofs.ClashStages713.Proof30
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2976_agree : tree2976 = literal2976 := by
  rw [tree2976_def, tree2974_agree, tree2975_agree]
  rfl
theorem node2976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2976 live2976 coloured2976 = result2976 := by
  rw [tree2976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2974_eq
  unfold live2974 coloured2974 at child
  try dsimp only [live2976, coloured2976]
  rw [child]
  dsimp only [result2974]
  have child := node2975_eq
  unfold live2975 coloured2975 at child
  try dsimp only [live2976, coloured2976]
  rw [child]
  dsimp only [result2975]
  try dsimp only [colour, result2976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2977_agree : tree2977 = literal2977 := by
  rw [tree2977_def]
  rfl
theorem node2977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2977 live2977 coloured2977 = result2977 := by
  rw [tree2977_def]
  try dsimp only [colour, result2977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2978_agree : tree2978 = literal2978 := by
  rw [tree2978_def, tree2976_agree, tree2977_agree]
  rfl
theorem node2978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2978 live2978 coloured2978 = result2978 := by
  rw [tree2978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2976_eq
  unfold live2976 coloured2976 at child
  try dsimp only [live2978, coloured2978]
  rw [child]
  dsimp only [result2976]
  have child := node2977_eq
  unfold live2977 coloured2977 at child
  try dsimp only [live2978, coloured2978]
  rw [child]
  dsimp only [result2977]
  try dsimp only [colour, result2978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2979_agree : tree2979 = literal2979 := by
  rw [tree2979_def]
  rfl
theorem node2979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2979 live2979 coloured2979 = result2979 := by
  rw [tree2979_def]
  try dsimp only [colour, result2979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2980_agree : tree2980 = literal2980 := by
  rw [tree2980_def, tree2978_agree, tree2979_agree]
  rfl
theorem node2980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2980 live2980 coloured2980 = result2980 := by
  rw [tree2980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2978_eq
  unfold live2978 coloured2978 at child
  try dsimp only [live2980, coloured2980]
  rw [child]
  dsimp only [result2978]
  have child := node2979_eq
  unfold live2979 coloured2979 at child
  try dsimp only [live2980, coloured2980]
  rw [child]
  dsimp only [result2979]
  try dsimp only [colour, result2980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2981_agree : tree2981 = literal2981 := by
  rw [tree2981_def]
  rfl
theorem node2981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2981 live2981 coloured2981 = result2981 := by
  rw [tree2981_def]
  try dsimp only [colour, result2981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2982_agree : tree2982 = literal2982 := by
  rw [tree2982_def, tree2980_agree, tree2981_agree]
  rfl
theorem node2982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2982 live2982 coloured2982 = result2982 := by
  rw [tree2982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2980_eq
  unfold live2980 coloured2980 at child
  try dsimp only [live2982, coloured2982]
  rw [child]
  dsimp only [result2980]
  have child := node2981_eq
  unfold live2981 coloured2981 at child
  try dsimp only [live2982, coloured2982]
  rw [child]
  dsimp only [result2981]
  try dsimp only [colour, result2982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2983_agree : tree2983 = literal2983 := by
  rw [tree2983_def]
  rfl
theorem node2983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2983 live2983 coloured2983 = result2983 := by
  rw [tree2983_def]
  try dsimp only [colour, result2983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2984_agree : tree2984 = literal2984 := by
  rw [tree2984_def, tree2982_agree, tree2983_agree]
  rfl
theorem node2984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2984 live2984 coloured2984 = result2984 := by
  rw [tree2984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2982_eq
  unfold live2982 coloured2982 at child
  try dsimp only [live2984, coloured2984]
  rw [child]
  dsimp only [result2982]
  have child := node2983_eq
  unfold live2983 coloured2983 at child
  try dsimp only [live2984, coloured2984]
  rw [child]
  dsimp only [result2983]
  try dsimp only [colour, result2984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2985_agree : tree2985 = literal2985 := by
  rw [tree2985_def]
  rfl
theorem node2985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2985 live2985 coloured2985 = result2985 := by
  rw [tree2985_def]
  try dsimp only [colour, result2985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2986_agree : tree2986 = literal2986 := by
  rw [tree2986_def, tree2984_agree, tree2985_agree]
  rfl
theorem node2986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2986 live2986 coloured2986 = result2986 := by
  rw [tree2986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2984_eq
  unfold live2984 coloured2984 at child
  try dsimp only [live2986, coloured2986]
  rw [child]
  dsimp only [result2984]
  have child := node2985_eq
  unfold live2985 coloured2985 at child
  try dsimp only [live2986, coloured2986]
  rw [child]
  dsimp only [result2985]
  try dsimp only [colour, result2986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2987_agree : tree2987 = literal2987 := by
  rw [tree2987_def]
  rfl
theorem node2987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2987 live2987 coloured2987 = result2987 := by
  rw [tree2987_def]
  try dsimp only [colour, result2987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2988_agree : tree2988 = literal2988 := by
  rw [tree2988_def, tree2986_agree, tree2987_agree]
  rfl
theorem node2988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2988 live2988 coloured2988 = result2988 := by
  rw [tree2988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2986_eq
  unfold live2986 coloured2986 at child
  try dsimp only [live2988, coloured2988]
  rw [child]
  dsimp only [result2986]
  have child := node2987_eq
  unfold live2987 coloured2987 at child
  try dsimp only [live2988, coloured2988]
  rw [child]
  dsimp only [result2987]
  try dsimp only [colour, result2988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2989_agree : tree2989 = literal2989 := by
  rw [tree2989_def]
  rfl
theorem node2989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2989 live2989 coloured2989 = result2989 := by
  rw [tree2989_def]
  try dsimp only [colour, result2989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2990_agree : tree2990 = literal2990 := by
  rw [tree2990_def, tree2988_agree, tree2989_agree]
  rfl
theorem node2990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2990 live2990 coloured2990 = result2990 := by
  rw [tree2990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2988_eq
  unfold live2988 coloured2988 at child
  try dsimp only [live2990, coloured2990]
  rw [child]
  dsimp only [result2988]
  have child := node2989_eq
  unfold live2989 coloured2989 at child
  try dsimp only [live2990, coloured2990]
  rw [child]
  dsimp only [result2989]
  try dsimp only [colour, result2990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2991_agree : tree2991 = literal2991 := by
  rw [tree2991_def]
  rfl
theorem node2991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2991 live2991 coloured2991 = result2991 := by
  rw [tree2991_def]
  try dsimp only [colour, result2991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2992_agree : tree2992 = literal2992 := by
  rw [tree2992_def, tree2990_agree, tree2991_agree]
  rfl
theorem node2992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2992 live2992 coloured2992 = result2992 := by
  rw [tree2992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2990_eq
  unfold live2990 coloured2990 at child
  try dsimp only [live2992, coloured2992]
  rw [child]
  dsimp only [result2990]
  have child := node2991_eq
  unfold live2991 coloured2991 at child
  try dsimp only [live2992, coloured2992]
  rw [child]
  dsimp only [result2991]
  try dsimp only [colour, result2992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2993_agree : tree2993 = literal2993 := by
  rw [tree2993_def]
  rfl
theorem node2993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2993 live2993 coloured2993 = result2993 := by
  rw [tree2993_def]
  try dsimp only [colour, result2993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2994_agree : tree2994 = literal2994 := by
  rw [tree2994_def, tree2992_agree, tree2993_agree]
  rfl
theorem node2994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2994 live2994 coloured2994 = result2994 := by
  rw [tree2994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2992_eq
  unfold live2992 coloured2992 at child
  try dsimp only [live2994, coloured2994]
  rw [child]
  dsimp only [result2992]
  have child := node2993_eq
  unfold live2993 coloured2993 at child
  try dsimp only [live2994, coloured2994]
  rw [child]
  dsimp only [result2993]
  try dsimp only [colour, result2994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2995_agree : tree2995 = literal2995 := by
  rw [tree2995_def]
  rfl
theorem node2995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2995 live2995 coloured2995 = result2995 := by
  rw [tree2995_def]
  try dsimp only [colour, result2995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2996_agree : tree2996 = literal2996 := by
  rw [tree2996_def, tree2994_agree, tree2995_agree]
  rfl
theorem node2996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2996 live2996 coloured2996 = result2996 := by
  rw [tree2996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2994_eq
  unfold live2994 coloured2994 at child
  try dsimp only [live2996, coloured2996]
  rw [child]
  dsimp only [result2994]
  have child := node2995_eq
  unfold live2995 coloured2995 at child
  try dsimp only [live2996, coloured2996]
  rw [child]
  dsimp only [result2995]
  try dsimp only [colour, result2996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2997_agree : tree2997 = literal2997 := by
  rw [tree2997_def]
  rfl
theorem node2997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2997 live2997 coloured2997 = result2997 := by
  rw [tree2997_def]
  try dsimp only [colour, result2997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2998_agree : tree2998 = literal2998 := by
  rw [tree2998_def, tree2996_agree, tree2997_agree]
  rfl
theorem node2998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2998 live2998 coloured2998 = result2998 := by
  rw [tree2998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2996_eq
  unfold live2996 coloured2996 at child
  try dsimp only [live2998, coloured2998]
  rw [child]
  dsimp only [result2996]
  have child := node2997_eq
  unfold live2997 coloured2997 at child
  try dsimp only [live2998, coloured2998]
  rw [child]
  dsimp only [result2997]
  try dsimp only [colour, result2998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2999_agree : tree2999 = literal2999 := by
  rw [tree2999_def]
  rfl
theorem node2999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2999 live2999 coloured2999 = result2999 := by
  rw [tree2999_def]
  try dsimp only [colour, result2999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3000_agree : tree3000 = literal3000 := by
  rw [tree3000_def, tree2998_agree, tree2999_agree]
  rfl
theorem node3000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3000 live3000 coloured3000 = result3000 := by
  rw [tree3000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2998_eq
  unfold live2998 coloured2998 at child
  try dsimp only [live3000, coloured3000]
  rw [child]
  dsimp only [result2998]
  have child := node2999_eq
  unfold live2999 coloured2999 at child
  try dsimp only [live3000, coloured3000]
  rw [child]
  dsimp only [result2999]
  try dsimp only [colour, result3000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3001_agree : tree3001 = literal3001 := by
  rw [tree3001_def]
  rfl
theorem node3001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3001 live3001 coloured3001 = result3001 := by
  rw [tree3001_def]
  try dsimp only [colour, result3001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3002_agree : tree3002 = literal3002 := by
  rw [tree3002_def, tree3000_agree, tree3001_agree]
  rfl
theorem node3002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3002 live3002 coloured3002 = result3002 := by
  rw [tree3002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3000_eq
  unfold live3000 coloured3000 at child
  try dsimp only [live3002, coloured3002]
  rw [child]
  dsimp only [result3000]
  have child := node3001_eq
  unfold live3001 coloured3001 at child
  try dsimp only [live3002, coloured3002]
  rw [child]
  dsimp only [result3001]
  try dsimp only [colour, result3002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3003_agree : tree3003 = literal3003 := by
  rw [tree3003_def]
  rfl
theorem node3003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3003 live3003 coloured3003 = result3003 := by
  rw [tree3003_def]
  try dsimp only [colour, result3003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3004_agree : tree3004 = literal3004 := by
  rw [tree3004_def, tree3002_agree, tree3003_agree]
  rfl
theorem node3004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3004 live3004 coloured3004 = result3004 := by
  rw [tree3004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3002_eq
  unfold live3002 coloured3002 at child
  try dsimp only [live3004, coloured3004]
  rw [child]
  dsimp only [result3002]
  have child := node3003_eq
  unfold live3003 coloured3003 at child
  try dsimp only [live3004, coloured3004]
  rw [child]
  dsimp only [result3003]
  try dsimp only [colour, result3004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3005_agree : tree3005 = literal3005 := by
  rw [tree3005_def]
  rfl
theorem node3005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3005 live3005 coloured3005 = result3005 := by
  rw [tree3005_def]
  try dsimp only [colour, result3005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3006_agree : tree3006 = literal3006 := by
  rw [tree3006_def, tree3004_agree, tree3005_agree]
  rfl
theorem node3006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3006 live3006 coloured3006 = result3006 := by
  rw [tree3006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3004_eq
  unfold live3004 coloured3004 at child
  try dsimp only [live3006, coloured3006]
  rw [child]
  dsimp only [result3004]
  have child := node3005_eq
  unfold live3005 coloured3005 at child
  try dsimp only [live3006, coloured3006]
  rw [child]
  dsimp only [result3005]
  try dsimp only [colour, result3006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3007_agree : tree3007 = literal3007 := by
  rw [tree3007_def]
  rfl
theorem node3007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3007 live3007 coloured3007 = result3007 := by
  rw [tree3007_def]
  try dsimp only [colour, result3007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3008_agree : tree3008 = literal3008 := by
  rw [tree3008_def, tree3006_agree, tree3007_agree]
  rfl
theorem node3008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3008 live3008 coloured3008 = result3008 := by
  rw [tree3008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3006_eq
  unfold live3006 coloured3006 at child
  try dsimp only [live3008, coloured3008]
  rw [child]
  dsimp only [result3006]
  have child := node3007_eq
  unfold live3007 coloured3007 at child
  try dsimp only [live3008, coloured3008]
  rw [child]
  dsimp only [result3007]
  try dsimp only [colour, result3008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3009_agree : tree3009 = literal3009 := by
  rw [tree3009_def]
  rfl
theorem node3009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3009 live3009 coloured3009 = result3009 := by
  rw [tree3009_def]
  try dsimp only [colour, result3009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3010_agree : tree3010 = literal3010 := by
  rw [tree3010_def, tree3008_agree, tree3009_agree]
  rfl
theorem node3010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3010 live3010 coloured3010 = result3010 := by
  rw [tree3010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3008_eq
  unfold live3008 coloured3008 at child
  try dsimp only [live3010, coloured3010]
  rw [child]
  dsimp only [result3008]
  have child := node3009_eq
  unfold live3009 coloured3009 at child
  try dsimp only [live3010, coloured3010]
  rw [child]
  dsimp only [result3009]
  try dsimp only [colour, result3010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3011_agree : tree3011 = literal3011 := by
  rw [tree3011_def]
  rfl
theorem node3011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3011 live3011 coloured3011 = result3011 := by
  rw [tree3011_def]
  try dsimp only [colour, result3011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3012_agree : tree3012 = literal3012 := by
  rw [tree3012_def, tree3010_agree, tree3011_agree]
  rfl
theorem node3012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3012 live3012 coloured3012 = result3012 := by
  rw [tree3012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3010_eq
  unfold live3010 coloured3010 at child
  try dsimp only [live3012, coloured3012]
  rw [child]
  dsimp only [result3010]
  have child := node3011_eq
  unfold live3011 coloured3011 at child
  try dsimp only [live3012, coloured3012]
  rw [child]
  dsimp only [result3011]
  try dsimp only [colour, result3012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3013_agree : tree3013 = literal3013 := by
  rw [tree3013_def]
  rfl
theorem node3013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3013 live3013 coloured3013 = result3013 := by
  rw [tree3013_def]
  try dsimp only [colour, result3013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3014_agree : tree3014 = literal3014 := by
  rw [tree3014_def, tree3012_agree, tree3013_agree]
  rfl
theorem node3014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3014 live3014 coloured3014 = result3014 := by
  rw [tree3014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3012_eq
  unfold live3012 coloured3012 at child
  try dsimp only [live3014, coloured3014]
  rw [child]
  dsimp only [result3012]
  have child := node3013_eq
  unfold live3013 coloured3013 at child
  try dsimp only [live3014, coloured3014]
  rw [child]
  dsimp only [result3013]
  try dsimp only [colour, result3014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3015_agree : tree3015 = literal3015 := by
  rw [tree3015_def]
  rfl
theorem node3015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3015 live3015 coloured3015 = result3015 := by
  rw [tree3015_def]
  try dsimp only [colour, result3015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3016_agree : tree3016 = literal3016 := by
  rw [tree3016_def, tree3014_agree, tree3015_agree]
  rfl
theorem node3016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3016 live3016 coloured3016 = result3016 := by
  rw [tree3016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3014_eq
  unfold live3014 coloured3014 at child
  try dsimp only [live3016, coloured3016]
  rw [child]
  dsimp only [result3014]
  have child := node3015_eq
  unfold live3015 coloured3015 at child
  try dsimp only [live3016, coloured3016]
  rw [child]
  dsimp only [result3015]
  try dsimp only [colour, result3016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3017_agree : tree3017 = literal3017 := by
  rw [tree3017_def]
  rfl
theorem node3017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3017 live3017 coloured3017 = result3017 := by
  rw [tree3017_def]
  try dsimp only [colour, result3017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3018_agree : tree3018 = literal3018 := by
  rw [tree3018_def, tree3016_agree, tree3017_agree]
  rfl
theorem node3018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3018 live3018 coloured3018 = result3018 := by
  rw [tree3018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3016_eq
  unfold live3016 coloured3016 at child
  try dsimp only [live3018, coloured3018]
  rw [child]
  dsimp only [result3016]
  have child := node3017_eq
  unfold live3017 coloured3017 at child
  try dsimp only [live3018, coloured3018]
  rw [child]
  dsimp only [result3017]
  try dsimp only [colour, result3018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3019_agree : tree3019 = literal3019 := by
  rw [tree3019_def]
  rfl
theorem node3019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3019 live3019 coloured3019 = result3019 := by
  rw [tree3019_def]
  try dsimp only [colour, result3019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3020_agree : tree3020 = literal3020 := by
  rw [tree3020_def, tree3018_agree, tree3019_agree]
  rfl
theorem node3020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3020 live3020 coloured3020 = result3020 := by
  rw [tree3020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3018_eq
  unfold live3018 coloured3018 at child
  try dsimp only [live3020, coloured3020]
  rw [child]
  dsimp only [result3018]
  have child := node3019_eq
  unfold live3019 coloured3019 at child
  try dsimp only [live3020, coloured3020]
  rw [child]
  dsimp only [result3019]
  try dsimp only [colour, result3020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3021_agree : tree3021 = literal3021 := by
  rw [tree3021_def]
  rfl
theorem node3021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3021 live3021 coloured3021 = result3021 := by
  rw [tree3021_def]
  try dsimp only [colour, result3021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3022_agree : tree3022 = literal3022 := by
  rw [tree3022_def, tree3020_agree, tree3021_agree]
  rfl
theorem node3022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3022 live3022 coloured3022 = result3022 := by
  rw [tree3022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3020_eq
  unfold live3020 coloured3020 at child
  try dsimp only [live3022, coloured3022]
  rw [child]
  dsimp only [result3020]
  have child := node3021_eq
  unfold live3021 coloured3021 at child
  try dsimp only [live3022, coloured3022]
  rw [child]
  dsimp only [result3021]
  try dsimp only [colour, result3022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3023_agree : tree3023 = literal3023 := by
  rw [tree3023_def]
  rfl
theorem node3023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3023 live3023 coloured3023 = result3023 := by
  rw [tree3023_def]
  try dsimp only [colour, result3023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3024_agree : tree3024 = literal3024 := by
  rw [tree3024_def, tree3022_agree, tree3023_agree]
  rfl
theorem node3024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3024 live3024 coloured3024 = result3024 := by
  rw [tree3024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3022_eq
  unfold live3022 coloured3022 at child
  try dsimp only [live3024, coloured3024]
  rw [child]
  dsimp only [result3022]
  have child := node3023_eq
  unfold live3023 coloured3023 at child
  try dsimp only [live3024, coloured3024]
  rw [child]
  dsimp only [result3023]
  try dsimp only [colour, result3024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3025_agree : tree3025 = literal3025 := by
  rw [tree3025_def]
  rfl
theorem node3025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3025 live3025 coloured3025 = result3025 := by
  rw [tree3025_def]
  try dsimp only [colour, result3025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3026_agree : tree3026 = literal3026 := by
  rw [tree3026_def, tree3024_agree, tree3025_agree]
  rfl
theorem node3026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3026 live3026 coloured3026 = result3026 := by
  rw [tree3026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3024_eq
  unfold live3024 coloured3024 at child
  try dsimp only [live3026, coloured3026]
  rw [child]
  dsimp only [result3024]
  have child := node3025_eq
  unfold live3025 coloured3025 at child
  try dsimp only [live3026, coloured3026]
  rw [child]
  dsimp only [result3025]
  try dsimp only [colour, result3026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3027_agree : tree3027 = literal3027 := by
  rw [tree3027_def]
  rfl
theorem node3027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3027 live3027 coloured3027 = result3027 := by
  rw [tree3027_def]
  try dsimp only [colour, result3027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3028_agree : tree3028 = literal3028 := by
  rw [tree3028_def, tree3026_agree, tree3027_agree]
  rfl
theorem node3028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3028 live3028 coloured3028 = result3028 := by
  rw [tree3028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3026_eq
  unfold live3026 coloured3026 at child
  try dsimp only [live3028, coloured3028]
  rw [child]
  dsimp only [result3026]
  have child := node3027_eq
  unfold live3027 coloured3027 at child
  try dsimp only [live3028, coloured3028]
  rw [child]
  dsimp only [result3027]
  try dsimp only [colour, result3028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3029_agree : tree3029 = literal3029 := by
  rw [tree3029_def]
  rfl
theorem node3029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3029 live3029 coloured3029 = result3029 := by
  rw [tree3029_def]
  try dsimp only [colour, result3029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3030_agree : tree3030 = literal3030 := by
  rw [tree3030_def, tree3028_agree, tree3029_agree]
  rfl
theorem node3030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3030 live3030 coloured3030 = result3030 := by
  rw [tree3030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3028_eq
  unfold live3028 coloured3028 at child
  try dsimp only [live3030, coloured3030]
  rw [child]
  dsimp only [result3028]
  have child := node3029_eq
  unfold live3029 coloured3029 at child
  try dsimp only [live3030, coloured3030]
  rw [child]
  dsimp only [result3029]
  try dsimp only [colour, result3030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3031_agree : tree3031 = literal3031 := by
  rw [tree3031_def]
  rfl
theorem node3031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3031 live3031 coloured3031 = result3031 := by
  rw [tree3031_def]
  try dsimp only [colour, result3031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3032_agree : tree3032 = literal3032 := by
  rw [tree3032_def, tree3030_agree, tree3031_agree]
  rfl
theorem node3032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3032 live3032 coloured3032 = result3032 := by
  rw [tree3032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3030_eq
  unfold live3030 coloured3030 at child
  try dsimp only [live3032, coloured3032]
  rw [child]
  dsimp only [result3030]
  have child := node3031_eq
  unfold live3031 coloured3031 at child
  try dsimp only [live3032, coloured3032]
  rw [child]
  dsimp only [result3031]
  try dsimp only [colour, result3032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3033_agree : tree3033 = literal3033 := by
  rw [tree3033_def]
  rfl
theorem node3033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3033 live3033 coloured3033 = result3033 := by
  rw [tree3033_def]
  try dsimp only [colour, result3033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3034_agree : tree3034 = literal3034 := by
  rw [tree3034_def, tree3032_agree, tree3033_agree]
  rfl
theorem node3034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3034 live3034 coloured3034 = result3034 := by
  rw [tree3034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3032_eq
  unfold live3032 coloured3032 at child
  try dsimp only [live3034, coloured3034]
  rw [child]
  dsimp only [result3032]
  have child := node3033_eq
  unfold live3033 coloured3033 at child
  try dsimp only [live3034, coloured3034]
  rw [child]
  dsimp only [result3033]
  try dsimp only [colour, result3034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3035_agree : tree3035 = literal3035 := by
  rw [tree3035_def]
  rfl
theorem node3035_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3035 live3035 coloured3035 = result3035 := by
  rw [tree3035_def]
  try dsimp only [colour, result3035]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3036_agree : tree3036 = literal3036 := by
  rw [tree3036_def, tree3034_agree, tree3035_agree]
  rfl
theorem node3036_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3036 live3036 coloured3036 = result3036 := by
  rw [tree3036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3034_eq
  unfold live3034 coloured3034 at child
  try dsimp only [live3036, coloured3036]
  rw [child]
  dsimp only [result3034]
  have child := node3035_eq
  unfold live3035 coloured3035 at child
  try dsimp only [live3036, coloured3036]
  rw [child]
  dsimp only [result3035]
  try dsimp only [colour, result3036]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3037_agree : tree3037 = literal3037 := by
  rw [tree3037_def]
  rfl
theorem node3037_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3037 live3037 coloured3037 = result3037 := by
  rw [tree3037_def]
  try dsimp only [colour, result3037]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3038_agree : tree3038 = literal3038 := by
  rw [tree3038_def, tree3036_agree, tree3037_agree]
  rfl
theorem node3038_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3038 live3038 coloured3038 = result3038 := by
  rw [tree3038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3036_eq
  unfold live3036 coloured3036 at child
  try dsimp only [live3038, coloured3038]
  rw [child]
  dsimp only [result3036]
  have child := node3037_eq
  unfold live3037 coloured3037 at child
  try dsimp only [live3038, coloured3038]
  rw [child]
  dsimp only [result3037]
  try dsimp only [colour, result3038]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3039_agree : tree3039 = literal3039 := by
  rw [tree3039_def]
  rfl
theorem node3039_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3039 live3039 coloured3039 = result3039 := by
  rw [tree3039_def]
  try dsimp only [colour, result3039]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3040_agree : tree3040 = literal3040 := by
  rw [tree3040_def, tree3038_agree, tree3039_agree]
  rfl
theorem node3040_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3040 live3040 coloured3040 = result3040 := by
  rw [tree3040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3038_eq
  unfold live3038 coloured3038 at child
  try dsimp only [live3040, coloured3040]
  rw [child]
  dsimp only [result3038]
  have child := node3039_eq
  unfold live3039 coloured3039 at child
  try dsimp only [live3040, coloured3040]
  rw [child]
  dsimp only [result3039]
  try dsimp only [colour, result3040]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3041_agree : tree3041 = literal3041 := by
  rw [tree3041_def]
  rfl
theorem node3041_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3041 live3041 coloured3041 = result3041 := by
  rw [tree3041_def]
  try dsimp only [colour, result3041]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3042_agree : tree3042 = literal3042 := by
  rw [tree3042_def, tree3040_agree, tree3041_agree]
  rfl
theorem node3042_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3042 live3042 coloured3042 = result3042 := by
  rw [tree3042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3040_eq
  unfold live3040 coloured3040 at child
  try dsimp only [live3042, coloured3042]
  rw [child]
  dsimp only [result3040]
  have child := node3041_eq
  unfold live3041 coloured3041 at child
  try dsimp only [live3042, coloured3042]
  rw [child]
  dsimp only [result3041]
  try dsimp only [colour, result3042]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3043_agree : tree3043 = literal3043 := by
  rw [tree3043_def]
  rfl
theorem node3043_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3043 live3043 coloured3043 = result3043 := by
  rw [tree3043_def]
  try dsimp only [colour, result3043]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3044_agree : tree3044 = literal3044 := by
  rw [tree3044_def, tree3042_agree, tree3043_agree]
  rfl
theorem node3044_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3044 live3044 coloured3044 = result3044 := by
  rw [tree3044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3042_eq
  unfold live3042 coloured3042 at child
  try dsimp only [live3044, coloured3044]
  rw [child]
  dsimp only [result3042]
  have child := node3043_eq
  unfold live3043 coloured3043 at child
  try dsimp only [live3044, coloured3044]
  rw [child]
  dsimp only [result3043]
  try dsimp only [colour, result3044]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3045_agree : tree3045 = literal3045 := by
  rw [tree3045_def]
  rfl
theorem node3045_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3045 live3045 coloured3045 = result3045 := by
  rw [tree3045_def]
  try dsimp only [colour, result3045]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3046_agree : tree3046 = literal3046 := by
  rw [tree3046_def, tree3044_agree, tree3045_agree]
  rfl
theorem node3046_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3046 live3046 coloured3046 = result3046 := by
  rw [tree3046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3044_eq
  unfold live3044 coloured3044 at child
  try dsimp only [live3046, coloured3046]
  rw [child]
  dsimp only [result3044]
  have child := node3045_eq
  unfold live3045 coloured3045 at child
  try dsimp only [live3046, coloured3046]
  rw [child]
  dsimp only [result3045]
  try dsimp only [colour, result3046]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3047_agree : tree3047 = literal3047 := by
  rw [tree3047_def]
  rfl
theorem node3047_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3047 live3047 coloured3047 = result3047 := by
  rw [tree3047_def]
  try dsimp only [colour, result3047]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3048_agree : tree3048 = literal3048 := by
  rw [tree3048_def, tree3046_agree, tree3047_agree]
  rfl
theorem node3048_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3048 live3048 coloured3048 = result3048 := by
  rw [tree3048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3046_eq
  unfold live3046 coloured3046 at child
  try dsimp only [live3048, coloured3048]
  rw [child]
  dsimp only [result3046]
  have child := node3047_eq
  unfold live3047 coloured3047 at child
  try dsimp only [live3048, coloured3048]
  rw [child]
  dsimp only [result3047]
  try dsimp only [colour, result3048]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3049_agree : tree3049 = literal3049 := by
  rw [tree3049_def]
  rfl
theorem node3049_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3049 live3049 coloured3049 = result3049 := by
  rw [tree3049_def]
  try dsimp only [colour, result3049]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3050_agree : tree3050 = literal3050 := by
  rw [tree3050_def, tree3048_agree, tree3049_agree]
  rfl
theorem node3050_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3050 live3050 coloured3050 = result3050 := by
  rw [tree3050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3048_eq
  unfold live3048 coloured3048 at child
  try dsimp only [live3050, coloured3050]
  rw [child]
  dsimp only [result3048]
  have child := node3049_eq
  unfold live3049 coloured3049 at child
  try dsimp only [live3050, coloured3050]
  rw [child]
  dsimp only [result3049]
  try dsimp only [colour, result3050]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3051_agree : tree3051 = literal3051 := by
  rw [tree3051_def]
  rfl
theorem node3051_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3051 live3051 coloured3051 = result3051 := by
  rw [tree3051_def]
  try dsimp only [colour, result3051]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3052_agree : tree3052 = literal3052 := by
  rw [tree3052_def, tree3050_agree, tree3051_agree]
  rfl
theorem node3052_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3052 live3052 coloured3052 = result3052 := by
  rw [tree3052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3050_eq
  unfold live3050 coloured3050 at child
  try dsimp only [live3052, coloured3052]
  rw [child]
  dsimp only [result3050]
  have child := node3051_eq
  unfold live3051 coloured3051 at child
  try dsimp only [live3052, coloured3052]
  rw [child]
  dsimp only [result3051]
  try dsimp only [colour, result3052]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3053_agree : tree3053 = literal3053 := by
  rw [tree3053_def]
  rfl
theorem node3053_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3053 live3053 coloured3053 = result3053 := by
  rw [tree3053_def]
  try dsimp only [colour, result3053]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3054_agree : tree3054 = literal3054 := by
  rw [tree3054_def, tree3052_agree, tree3053_agree]
  rfl
theorem node3054_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3054 live3054 coloured3054 = result3054 := by
  rw [tree3054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3052_eq
  unfold live3052 coloured3052 at child
  try dsimp only [live3054, coloured3054]
  rw [child]
  dsimp only [result3052]
  have child := node3053_eq
  unfold live3053 coloured3053 at child
  try dsimp only [live3054, coloured3054]
  rw [child]
  dsimp only [result3053]
  try dsimp only [colour, result3054]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3055_agree : tree3055 = literal3055 := by
  rw [tree3055_def]
  rfl
theorem node3055_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3055 live3055 coloured3055 = result3055 := by
  rw [tree3055_def]
  try dsimp only [colour, result3055]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3056_agree : tree3056 = literal3056 := by
  rw [tree3056_def, tree3054_agree, tree3055_agree]
  rfl
theorem node3056_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3056 live3056 coloured3056 = result3056 := by
  rw [tree3056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3054_eq
  unfold live3054 coloured3054 at child
  try dsimp only [live3056, coloured3056]
  rw [child]
  dsimp only [result3054]
  have child := node3055_eq
  unfold live3055 coloured3055 at child
  try dsimp only [live3056, coloured3056]
  rw [child]
  dsimp only [result3055]
  try dsimp only [colour, result3056]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3057_agree : tree3057 = literal3057 := by
  rw [tree3057_def]
  rfl
theorem node3057_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3057 live3057 coloured3057 = result3057 := by
  rw [tree3057_def]
  try dsimp only [colour, result3057]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3058_agree : tree3058 = literal3058 := by
  rw [tree3058_def, tree3056_agree, tree3057_agree]
  rfl
theorem node3058_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3058 live3058 coloured3058 = result3058 := by
  rw [tree3058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3056_eq
  unfold live3056 coloured3056 at child
  try dsimp only [live3058, coloured3058]
  rw [child]
  dsimp only [result3056]
  have child := node3057_eq
  unfold live3057 coloured3057 at child
  try dsimp only [live3058, coloured3058]
  rw [child]
  dsimp only [result3057]
  try dsimp only [colour, result3058]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3059_agree : tree3059 = literal3059 := by
  rw [tree3059_def]
  rfl
theorem node3059_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3059 live3059 coloured3059 = result3059 := by
  rw [tree3059_def]
  try dsimp only [colour, result3059]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3060_agree : tree3060 = literal3060 := by
  rw [tree3060_def, tree3058_agree, tree3059_agree]
  rfl
theorem node3060_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3060 live3060 coloured3060 = result3060 := by
  rw [tree3060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3058_eq
  unfold live3058 coloured3058 at child
  try dsimp only [live3060, coloured3060]
  rw [child]
  dsimp only [result3058]
  have child := node3059_eq
  unfold live3059 coloured3059 at child
  try dsimp only [live3060, coloured3060]
  rw [child]
  dsimp only [result3059]
  try dsimp only [colour, result3060]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3061_agree : tree3061 = literal3061 := by
  rw [tree3061_def]
  rfl
theorem node3061_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3061 live3061 coloured3061 = result3061 := by
  rw [tree3061_def]
  try dsimp only [colour, result3061]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3062_agree : tree3062 = literal3062 := by
  rw [tree3062_def, tree3060_agree, tree3061_agree]
  rfl
theorem node3062_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3062 live3062 coloured3062 = result3062 := by
  rw [tree3062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3060_eq
  unfold live3060 coloured3060 at child
  try dsimp only [live3062, coloured3062]
  rw [child]
  dsimp only [result3060]
  have child := node3061_eq
  unfold live3061 coloured3061 at child
  try dsimp only [live3062, coloured3062]
  rw [child]
  dsimp only [result3061]
  try dsimp only [colour, result3062]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3063_agree : tree3063 = literal3063 := by
  rw [tree3063_def]
  rfl
theorem node3063_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3063 live3063 coloured3063 = result3063 := by
  rw [tree3063_def]
  try dsimp only [colour, result3063]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3064_agree : tree3064 = literal3064 := by
  rw [tree3064_def, tree3062_agree, tree3063_agree]
  rfl
theorem node3064_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3064 live3064 coloured3064 = result3064 := by
  rw [tree3064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3062_eq
  unfold live3062 coloured3062 at child
  try dsimp only [live3064, coloured3064]
  rw [child]
  dsimp only [result3062]
  have child := node3063_eq
  unfold live3063 coloured3063 at child
  try dsimp only [live3064, coloured3064]
  rw [child]
  dsimp only [result3063]
  try dsimp only [colour, result3064]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3065_agree : tree3065 = literal3065 := by
  rw [tree3065_def]
  rfl
theorem node3065_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3065 live3065 coloured3065 = result3065 := by
  rw [tree3065_def]
  try dsimp only [colour, result3065]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3066_agree : tree3066 = literal3066 := by
  rw [tree3066_def, tree3064_agree, tree3065_agree]
  rfl
theorem node3066_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3066 live3066 coloured3066 = result3066 := by
  rw [tree3066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3064_eq
  unfold live3064 coloured3064 at child
  try dsimp only [live3066, coloured3066]
  rw [child]
  dsimp only [result3064]
  have child := node3065_eq
  unfold live3065 coloured3065 at child
  try dsimp only [live3066, coloured3066]
  rw [child]
  dsimp only [result3065]
  try dsimp only [colour, result3066]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3067_agree : tree3067 = literal3067 := by
  rw [tree3067_def]
  rfl
theorem node3067_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3067 live3067 coloured3067 = result3067 := by
  rw [tree3067_def]
  try dsimp only [colour, result3067]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3068_agree : tree3068 = literal3068 := by
  rw [tree3068_def, tree3066_agree, tree3067_agree]
  rfl
theorem node3068_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3068 live3068 coloured3068 = result3068 := by
  rw [tree3068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3066_eq
  unfold live3066 coloured3066 at child
  try dsimp only [live3068, coloured3068]
  rw [child]
  dsimp only [result3066]
  have child := node3067_eq
  unfold live3067 coloured3067 at child
  try dsimp only [live3068, coloured3068]
  rw [child]
  dsimp only [result3067]
  try dsimp only [colour, result3068]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3069_agree : tree3069 = literal3069 := by
  rw [tree3069_def]
  rfl
theorem node3069_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3069 live3069 coloured3069 = result3069 := by
  rw [tree3069_def]
  try dsimp only [colour, result3069]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3070_agree : tree3070 = literal3070 := by
  rw [tree3070_def, tree3068_agree, tree3069_agree]
  rfl
theorem node3070_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3070 live3070 coloured3070 = result3070 := by
  rw [tree3070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3068_eq
  unfold live3068 coloured3068 at child
  try dsimp only [live3070, coloured3070]
  rw [child]
  dsimp only [result3068]
  have child := node3069_eq
  unfold live3069 coloured3069 at child
  try dsimp only [live3070, coloured3070]
  rw [child]
  dsimp only [result3069]
  try dsimp only [colour, result3070]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3071_agree : tree3071 = literal3071 := by
  rw [tree3071_def]
  rfl
theorem node3071_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3071 live3071 coloured3071 = result3071 := by
  rw [tree3071_def]
  try dsimp only [colour, result3071]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
