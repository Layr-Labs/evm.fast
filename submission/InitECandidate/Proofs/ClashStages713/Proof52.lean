import InitECandidate.Proofs.ClashStages713.Proof51
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree4992_agree : tree4992 = literal4992 := by
  rw [tree4992_def, tree4990_agree, tree4991_agree]
  rfl
theorem node4992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4992 live4992 coloured4992 = result4992 := by
  rw [tree4992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4990_eq
  unfold live4990 coloured4990 at child
  try dsimp only [live4992, coloured4992]
  rw [child]
  dsimp only [result4990]
  have child := node4991_eq
  unfold live4991 coloured4991 at child
  try dsimp only [live4992, coloured4992]
  rw [child]
  dsimp only [result4991]
  try dsimp only [colour, result4992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4993_agree : tree4993 = literal4993 := by
  rw [tree4993_def]
  rfl
theorem node4993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4993 live4993 coloured4993 = result4993 := by
  rw [tree4993_def]
  try dsimp only [colour, result4993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4994_agree : tree4994 = literal4994 := by
  rw [tree4994_def, tree4992_agree, tree4993_agree]
  rfl
theorem node4994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4994 live4994 coloured4994 = result4994 := by
  rw [tree4994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4992_eq
  unfold live4992 coloured4992 at child
  try dsimp only [live4994, coloured4994]
  rw [child]
  dsimp only [result4992]
  have child := node4993_eq
  unfold live4993 coloured4993 at child
  try dsimp only [live4994, coloured4994]
  rw [child]
  dsimp only [result4993]
  try dsimp only [colour, result4994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4995_agree : tree4995 = literal4995 := by
  rw [tree4995_def]
  rfl
theorem node4995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4995 live4995 coloured4995 = result4995 := by
  rw [tree4995_def]
  try dsimp only [colour, result4995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4996_agree : tree4996 = literal4996 := by
  rw [tree4996_def, tree4994_agree, tree4995_agree]
  rfl
theorem node4996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4996 live4996 coloured4996 = result4996 := by
  rw [tree4996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4994_eq
  unfold live4994 coloured4994 at child
  try dsimp only [live4996, coloured4996]
  rw [child]
  dsimp only [result4994]
  have child := node4995_eq
  unfold live4995 coloured4995 at child
  try dsimp only [live4996, coloured4996]
  rw [child]
  dsimp only [result4995]
  try dsimp only [colour, result4996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4997_agree : tree4997 = literal4997 := by
  rw [tree4997_def]
  rfl
theorem node4997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4997 live4997 coloured4997 = result4997 := by
  rw [tree4997_def]
  try dsimp only [colour, result4997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4998_agree : tree4998 = literal4998 := by
  rw [tree4998_def, tree4996_agree, tree4997_agree]
  rfl
theorem node4998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4998 live4998 coloured4998 = result4998 := by
  rw [tree4998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4996_eq
  unfold live4996 coloured4996 at child
  try dsimp only [live4998, coloured4998]
  rw [child]
  dsimp only [result4996]
  have child := node4997_eq
  unfold live4997 coloured4997 at child
  try dsimp only [live4998, coloured4998]
  rw [child]
  dsimp only [result4997]
  try dsimp only [colour, result4998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4999_agree : tree4999 = literal4999 := by
  rw [tree4999_def]
  rfl
theorem node4999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4999 live4999 coloured4999 = result4999 := by
  rw [tree4999_def]
  try dsimp only [colour, result4999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5000_agree : tree5000 = literal5000 := by
  rw [tree5000_def, tree4998_agree, tree4999_agree]
  rfl
theorem node5000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5000 live5000 coloured5000 = result5000 := by
  rw [tree5000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4998_eq
  unfold live4998 coloured4998 at child
  try dsimp only [live5000, coloured5000]
  rw [child]
  dsimp only [result4998]
  have child := node4999_eq
  unfold live4999 coloured4999 at child
  try dsimp only [live5000, coloured5000]
  rw [child]
  dsimp only [result4999]
  try dsimp only [colour, result5000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5001_agree : tree5001 = literal5001 := by
  rw [tree5001_def]
  rfl
theorem node5001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5001 live5001 coloured5001 = result5001 := by
  rw [tree5001_def]
  try dsimp only [colour, result5001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5002_agree : tree5002 = literal5002 := by
  rw [tree5002_def, tree5000_agree, tree5001_agree]
  rfl
theorem node5002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5002 live5002 coloured5002 = result5002 := by
  rw [tree5002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5000_eq
  unfold live5000 coloured5000 at child
  try dsimp only [live5002, coloured5002]
  rw [child]
  dsimp only [result5000]
  have child := node5001_eq
  unfold live5001 coloured5001 at child
  try dsimp only [live5002, coloured5002]
  rw [child]
  dsimp only [result5001]
  try dsimp only [colour, result5002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5003_agree : tree5003 = literal5003 := by
  rw [tree5003_def]
  rfl
theorem node5003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5003 live5003 coloured5003 = result5003 := by
  rw [tree5003_def]
  try dsimp only [colour, result5003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5004_agree : tree5004 = literal5004 := by
  rw [tree5004_def, tree5002_agree, tree5003_agree]
  rfl
theorem node5004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5004 live5004 coloured5004 = result5004 := by
  rw [tree5004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5002_eq
  unfold live5002 coloured5002 at child
  try dsimp only [live5004, coloured5004]
  rw [child]
  dsimp only [result5002]
  have child := node5003_eq
  unfold live5003 coloured5003 at child
  try dsimp only [live5004, coloured5004]
  rw [child]
  dsimp only [result5003]
  try dsimp only [colour, result5004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5005_agree : tree5005 = literal5005 := by
  rw [tree5005_def]
  rfl
theorem node5005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5005 live5005 coloured5005 = result5005 := by
  rw [tree5005_def]
  try dsimp only [colour, result5005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5006_agree : tree5006 = literal5006 := by
  rw [tree5006_def, tree5004_agree, tree5005_agree]
  rfl
theorem node5006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5006 live5006 coloured5006 = result5006 := by
  rw [tree5006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5004_eq
  unfold live5004 coloured5004 at child
  try dsimp only [live5006, coloured5006]
  rw [child]
  dsimp only [result5004]
  have child := node5005_eq
  unfold live5005 coloured5005 at child
  try dsimp only [live5006, coloured5006]
  rw [child]
  dsimp only [result5005]
  try dsimp only [colour, result5006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5007_agree : tree5007 = literal5007 := by
  rw [tree5007_def]
  rfl
theorem node5007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5007 live5007 coloured5007 = result5007 := by
  rw [tree5007_def]
  try dsimp only [colour, result5007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5008_agree : tree5008 = literal5008 := by
  rw [tree5008_def, tree5006_agree, tree5007_agree]
  rfl
theorem node5008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5008 live5008 coloured5008 = result5008 := by
  rw [tree5008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5006_eq
  unfold live5006 coloured5006 at child
  try dsimp only [live5008, coloured5008]
  rw [child]
  dsimp only [result5006]
  have child := node5007_eq
  unfold live5007 coloured5007 at child
  try dsimp only [live5008, coloured5008]
  rw [child]
  dsimp only [result5007]
  try dsimp only [colour, result5008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5009_agree : tree5009 = literal5009 := by
  rw [tree5009_def]
  rfl
theorem node5009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5009 live5009 coloured5009 = result5009 := by
  rw [tree5009_def]
  try dsimp only [colour, result5009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5010_agree : tree5010 = literal5010 := by
  rw [tree5010_def, tree5008_agree, tree5009_agree]
  rfl
theorem node5010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5010 live5010 coloured5010 = result5010 := by
  rw [tree5010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5008_eq
  unfold live5008 coloured5008 at child
  try dsimp only [live5010, coloured5010]
  rw [child]
  dsimp only [result5008]
  have child := node5009_eq
  unfold live5009 coloured5009 at child
  try dsimp only [live5010, coloured5010]
  rw [child]
  dsimp only [result5009]
  try dsimp only [colour, result5010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5011_agree : tree5011 = literal5011 := by
  rw [tree5011_def]
  rfl
theorem node5011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5011 live5011 coloured5011 = result5011 := by
  rw [tree5011_def]
  try dsimp only [colour, result5011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5012_agree : tree5012 = literal5012 := by
  rw [tree5012_def, tree5010_agree, tree5011_agree]
  rfl
theorem node5012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5012 live5012 coloured5012 = result5012 := by
  rw [tree5012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5010_eq
  unfold live5010 coloured5010 at child
  try dsimp only [live5012, coloured5012]
  rw [child]
  dsimp only [result5010]
  have child := node5011_eq
  unfold live5011 coloured5011 at child
  try dsimp only [live5012, coloured5012]
  rw [child]
  dsimp only [result5011]
  try dsimp only [colour, result5012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5013_agree : tree5013 = literal5013 := by
  rw [tree5013_def]
  rfl
theorem node5013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5013 live5013 coloured5013 = result5013 := by
  rw [tree5013_def]
  try dsimp only [colour, result5013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5014_agree : tree5014 = literal5014 := by
  rw [tree5014_def, tree5012_agree, tree5013_agree]
  rfl
theorem node5014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5014 live5014 coloured5014 = result5014 := by
  rw [tree5014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5012_eq
  unfold live5012 coloured5012 at child
  try dsimp only [live5014, coloured5014]
  rw [child]
  dsimp only [result5012]
  have child := node5013_eq
  unfold live5013 coloured5013 at child
  try dsimp only [live5014, coloured5014]
  rw [child]
  dsimp only [result5013]
  try dsimp only [colour, result5014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5015_agree : tree5015 = literal5015 := by
  rw [tree5015_def]
  rfl
theorem node5015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5015 live5015 coloured5015 = result5015 := by
  rw [tree5015_def]
  try dsimp only [colour, result5015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5016_agree : tree5016 = literal5016 := by
  rw [tree5016_def, tree5014_agree, tree5015_agree]
  rfl
theorem node5016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5016 live5016 coloured5016 = result5016 := by
  rw [tree5016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5014_eq
  unfold live5014 coloured5014 at child
  try dsimp only [live5016, coloured5016]
  rw [child]
  dsimp only [result5014]
  have child := node5015_eq
  unfold live5015 coloured5015 at child
  try dsimp only [live5016, coloured5016]
  rw [child]
  dsimp only [result5015]
  try dsimp only [colour, result5016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5017_agree : tree5017 = literal5017 := by
  rw [tree5017_def]
  rfl
theorem node5017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5017 live5017 coloured5017 = result5017 := by
  rw [tree5017_def]
  try dsimp only [colour, result5017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5018_agree : tree5018 = literal5018 := by
  rw [tree5018_def, tree5016_agree, tree5017_agree]
  rfl
theorem node5018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5018 live5018 coloured5018 = result5018 := by
  rw [tree5018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5016_eq
  unfold live5016 coloured5016 at child
  try dsimp only [live5018, coloured5018]
  rw [child]
  dsimp only [result5016]
  have child := node5017_eq
  unfold live5017 coloured5017 at child
  try dsimp only [live5018, coloured5018]
  rw [child]
  dsimp only [result5017]
  try dsimp only [colour, result5018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5019_agree : tree5019 = literal5019 := by
  rw [tree5019_def]
  rfl
theorem node5019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5019 live5019 coloured5019 = result5019 := by
  rw [tree5019_def]
  try dsimp only [colour, result5019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5020_agree : tree5020 = literal5020 := by
  rw [tree5020_def, tree5018_agree, tree5019_agree]
  rfl
theorem node5020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5020 live5020 coloured5020 = result5020 := by
  rw [tree5020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5018_eq
  unfold live5018 coloured5018 at child
  try dsimp only [live5020, coloured5020]
  rw [child]
  dsimp only [result5018]
  have child := node5019_eq
  unfold live5019 coloured5019 at child
  try dsimp only [live5020, coloured5020]
  rw [child]
  dsimp only [result5019]
  try dsimp only [colour, result5020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5021_agree : tree5021 = literal5021 := by
  rw [tree5021_def]
  rfl
theorem node5021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5021 live5021 coloured5021 = result5021 := by
  rw [tree5021_def]
  try dsimp only [colour, result5021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5022_agree : tree5022 = literal5022 := by
  rw [tree5022_def, tree5020_agree, tree5021_agree]
  rfl
theorem node5022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5022 live5022 coloured5022 = result5022 := by
  rw [tree5022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5020_eq
  unfold live5020 coloured5020 at child
  try dsimp only [live5022, coloured5022]
  rw [child]
  dsimp only [result5020]
  have child := node5021_eq
  unfold live5021 coloured5021 at child
  try dsimp only [live5022, coloured5022]
  rw [child]
  dsimp only [result5021]
  try dsimp only [colour, result5022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5023_agree : tree5023 = literal5023 := by
  rw [tree5023_def]
  rfl
theorem node5023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5023 live5023 coloured5023 = result5023 := by
  rw [tree5023_def]
  try dsimp only [colour, result5023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5024_agree : tree5024 = literal5024 := by
  rw [tree5024_def, tree5022_agree, tree5023_agree]
  rfl
theorem node5024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5024 live5024 coloured5024 = result5024 := by
  rw [tree5024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5022_eq
  unfold live5022 coloured5022 at child
  try dsimp only [live5024, coloured5024]
  rw [child]
  dsimp only [result5022]
  have child := node5023_eq
  unfold live5023 coloured5023 at child
  try dsimp only [live5024, coloured5024]
  rw [child]
  dsimp only [result5023]
  try dsimp only [colour, result5024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5025_agree : tree5025 = literal5025 := by
  rw [tree5025_def]
  rfl
theorem node5025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5025 live5025 coloured5025 = result5025 := by
  rw [tree5025_def]
  try dsimp only [colour, result5025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5026_agree : tree5026 = literal5026 := by
  rw [tree5026_def, tree5024_agree, tree5025_agree]
  rfl
theorem node5026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5026 live5026 coloured5026 = result5026 := by
  rw [tree5026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5024_eq
  unfold live5024 coloured5024 at child
  try dsimp only [live5026, coloured5026]
  rw [child]
  dsimp only [result5024]
  have child := node5025_eq
  unfold live5025 coloured5025 at child
  try dsimp only [live5026, coloured5026]
  rw [child]
  dsimp only [result5025]
  try dsimp only [colour, result5026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5027_agree : tree5027 = literal5027 := by
  rw [tree5027_def]
  rfl
theorem node5027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5027 live5027 coloured5027 = result5027 := by
  rw [tree5027_def]
  try dsimp only [colour, result5027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5028_agree : tree5028 = literal5028 := by
  rw [tree5028_def, tree5026_agree, tree5027_agree]
  rfl
theorem node5028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5028 live5028 coloured5028 = result5028 := by
  rw [tree5028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5026_eq
  unfold live5026 coloured5026 at child
  try dsimp only [live5028, coloured5028]
  rw [child]
  dsimp only [result5026]
  have child := node5027_eq
  unfold live5027 coloured5027 at child
  try dsimp only [live5028, coloured5028]
  rw [child]
  dsimp only [result5027]
  try dsimp only [colour, result5028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5029_agree : tree5029 = literal5029 := by
  rw [tree5029_def]
  rfl
theorem node5029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5029 live5029 coloured5029 = result5029 := by
  rw [tree5029_def]
  try dsimp only [colour, result5029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5030_agree : tree5030 = literal5030 := by
  rw [tree5030_def, tree5028_agree, tree5029_agree]
  rfl
theorem node5030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5030 live5030 coloured5030 = result5030 := by
  rw [tree5030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5028_eq
  unfold live5028 coloured5028 at child
  try dsimp only [live5030, coloured5030]
  rw [child]
  dsimp only [result5028]
  have child := node5029_eq
  unfold live5029 coloured5029 at child
  try dsimp only [live5030, coloured5030]
  rw [child]
  dsimp only [result5029]
  try dsimp only [colour, result5030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5031_agree : tree5031 = literal5031 := by
  rw [tree5031_def]
  rfl
theorem node5031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5031 live5031 coloured5031 = result5031 := by
  rw [tree5031_def]
  try dsimp only [colour, result5031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5032_agree : tree5032 = literal5032 := by
  rw [tree5032_def, tree5030_agree, tree5031_agree]
  rfl
theorem node5032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5032 live5032 coloured5032 = result5032 := by
  rw [tree5032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5030_eq
  unfold live5030 coloured5030 at child
  try dsimp only [live5032, coloured5032]
  rw [child]
  dsimp only [result5030]
  have child := node5031_eq
  unfold live5031 coloured5031 at child
  try dsimp only [live5032, coloured5032]
  rw [child]
  dsimp only [result5031]
  try dsimp only [colour, result5032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5033_agree : tree5033 = literal5033 := by
  rw [tree5033_def]
  rfl
theorem node5033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5033 live5033 coloured5033 = result5033 := by
  rw [tree5033_def]
  try dsimp only [colour, result5033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5034_agree : tree5034 = literal5034 := by
  rw [tree5034_def, tree5032_agree, tree5033_agree]
  rfl
theorem node5034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5034 live5034 coloured5034 = result5034 := by
  rw [tree5034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5032_eq
  unfold live5032 coloured5032 at child
  try dsimp only [live5034, coloured5034]
  rw [child]
  dsimp only [result5032]
  have child := node5033_eq
  unfold live5033 coloured5033 at child
  try dsimp only [live5034, coloured5034]
  rw [child]
  dsimp only [result5033]
  try dsimp only [colour, result5034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5035_agree : tree5035 = literal5035 := by
  rw [tree5035_def]
  rfl
theorem node5035_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5035 live5035 coloured5035 = result5035 := by
  rw [tree5035_def]
  try dsimp only [colour, result5035]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5036_agree : tree5036 = literal5036 := by
  rw [tree5036_def, tree5034_agree, tree5035_agree]
  rfl
theorem node5036_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5036 live5036 coloured5036 = result5036 := by
  rw [tree5036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5034_eq
  unfold live5034 coloured5034 at child
  try dsimp only [live5036, coloured5036]
  rw [child]
  dsimp only [result5034]
  have child := node5035_eq
  unfold live5035 coloured5035 at child
  try dsimp only [live5036, coloured5036]
  rw [child]
  dsimp only [result5035]
  try dsimp only [colour, result5036]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5037_agree : tree5037 = literal5037 := by
  rw [tree5037_def]
  rfl
theorem node5037_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5037 live5037 coloured5037 = result5037 := by
  rw [tree5037_def]
  try dsimp only [colour, result5037]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5038_agree : tree5038 = literal5038 := by
  rw [tree5038_def, tree5036_agree, tree5037_agree]
  rfl
theorem node5038_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5038 live5038 coloured5038 = result5038 := by
  rw [tree5038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5036_eq
  unfold live5036 coloured5036 at child
  try dsimp only [live5038, coloured5038]
  rw [child]
  dsimp only [result5036]
  have child := node5037_eq
  unfold live5037 coloured5037 at child
  try dsimp only [live5038, coloured5038]
  rw [child]
  dsimp only [result5037]
  try dsimp only [colour, result5038]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5039_agree : tree5039 = literal5039 := by
  rw [tree5039_def]
  rfl
theorem node5039_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5039 live5039 coloured5039 = result5039 := by
  rw [tree5039_def]
  try dsimp only [colour, result5039]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5040_agree : tree5040 = literal5040 := by
  rw [tree5040_def, tree5038_agree, tree5039_agree]
  rfl
theorem node5040_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5040 live5040 coloured5040 = result5040 := by
  rw [tree5040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5038_eq
  unfold live5038 coloured5038 at child
  try dsimp only [live5040, coloured5040]
  rw [child]
  dsimp only [result5038]
  have child := node5039_eq
  unfold live5039 coloured5039 at child
  try dsimp only [live5040, coloured5040]
  rw [child]
  dsimp only [result5039]
  try dsimp only [colour, result5040]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5041_agree : tree5041 = literal5041 := by
  rw [tree5041_def]
  rfl
theorem node5041_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5041 live5041 coloured5041 = result5041 := by
  rw [tree5041_def]
  try dsimp only [colour, result5041]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5042_agree : tree5042 = literal5042 := by
  rw [tree5042_def, tree5040_agree, tree5041_agree]
  rfl
theorem node5042_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5042 live5042 coloured5042 = result5042 := by
  rw [tree5042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5040_eq
  unfold live5040 coloured5040 at child
  try dsimp only [live5042, coloured5042]
  rw [child]
  dsimp only [result5040]
  have child := node5041_eq
  unfold live5041 coloured5041 at child
  try dsimp only [live5042, coloured5042]
  rw [child]
  dsimp only [result5041]
  try dsimp only [colour, result5042]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5043_agree : tree5043 = literal5043 := by
  rw [tree5043_def]
  rfl
theorem node5043_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5043 live5043 coloured5043 = result5043 := by
  rw [tree5043_def]
  try dsimp only [colour, result5043]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5044_agree : tree5044 = literal5044 := by
  rw [tree5044_def, tree5042_agree, tree5043_agree]
  rfl
theorem node5044_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5044 live5044 coloured5044 = result5044 := by
  rw [tree5044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5042_eq
  unfold live5042 coloured5042 at child
  try dsimp only [live5044, coloured5044]
  rw [child]
  dsimp only [result5042]
  have child := node5043_eq
  unfold live5043 coloured5043 at child
  try dsimp only [live5044, coloured5044]
  rw [child]
  dsimp only [result5043]
  try dsimp only [colour, result5044]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5045_agree : tree5045 = literal5045 := by
  rw [tree5045_def]
  rfl
theorem node5045_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5045 live5045 coloured5045 = result5045 := by
  rw [tree5045_def]
  try dsimp only [colour, result5045]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5046_agree : tree5046 = literal5046 := by
  rw [tree5046_def, tree5044_agree, tree5045_agree]
  rfl
theorem node5046_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5046 live5046 coloured5046 = result5046 := by
  rw [tree5046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5044_eq
  unfold live5044 coloured5044 at child
  try dsimp only [live5046, coloured5046]
  rw [child]
  dsimp only [result5044]
  have child := node5045_eq
  unfold live5045 coloured5045 at child
  try dsimp only [live5046, coloured5046]
  rw [child]
  dsimp only [result5045]
  try dsimp only [colour, result5046]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5047_agree : tree5047 = literal5047 := by
  rw [tree5047_def]
  rfl
theorem node5047_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5047 live5047 coloured5047 = result5047 := by
  rw [tree5047_def]
  try dsimp only [colour, result5047]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5048_agree : tree5048 = literal5048 := by
  rw [tree5048_def, tree5046_agree, tree5047_agree]
  rfl
theorem node5048_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5048 live5048 coloured5048 = result5048 := by
  rw [tree5048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5046_eq
  unfold live5046 coloured5046 at child
  try dsimp only [live5048, coloured5048]
  rw [child]
  dsimp only [result5046]
  have child := node5047_eq
  unfold live5047 coloured5047 at child
  try dsimp only [live5048, coloured5048]
  rw [child]
  dsimp only [result5047]
  try dsimp only [colour, result5048]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5049_agree : tree5049 = literal5049 := by
  rw [tree5049_def]
  rfl
theorem node5049_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5049 live5049 coloured5049 = result5049 := by
  rw [tree5049_def]
  try dsimp only [colour, result5049]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5050_agree : tree5050 = literal5050 := by
  rw [tree5050_def, tree5048_agree, tree5049_agree]
  rfl
theorem node5050_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5050 live5050 coloured5050 = result5050 := by
  rw [tree5050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5048_eq
  unfold live5048 coloured5048 at child
  try dsimp only [live5050, coloured5050]
  rw [child]
  dsimp only [result5048]
  have child := node5049_eq
  unfold live5049 coloured5049 at child
  try dsimp only [live5050, coloured5050]
  rw [child]
  dsimp only [result5049]
  try dsimp only [colour, result5050]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5051_agree : tree5051 = literal5051 := by
  rw [tree5051_def]
  rfl
theorem node5051_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5051 live5051 coloured5051 = result5051 := by
  rw [tree5051_def]
  try dsimp only [colour, result5051]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5052_agree : tree5052 = literal5052 := by
  rw [tree5052_def, tree5050_agree, tree5051_agree]
  rfl
theorem node5052_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5052 live5052 coloured5052 = result5052 := by
  rw [tree5052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5050_eq
  unfold live5050 coloured5050 at child
  try dsimp only [live5052, coloured5052]
  rw [child]
  dsimp only [result5050]
  have child := node5051_eq
  unfold live5051 coloured5051 at child
  try dsimp only [live5052, coloured5052]
  rw [child]
  dsimp only [result5051]
  try dsimp only [colour, result5052]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5053_agree : tree5053 = literal5053 := by
  rw [tree5053_def]
  rfl
theorem node5053_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5053 live5053 coloured5053 = result5053 := by
  rw [tree5053_def]
  try dsimp only [colour, result5053]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5054_agree : tree5054 = literal5054 := by
  rw [tree5054_def, tree5052_agree, tree5053_agree]
  rfl
theorem node5054_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5054 live5054 coloured5054 = result5054 := by
  rw [tree5054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5052_eq
  unfold live5052 coloured5052 at child
  try dsimp only [live5054, coloured5054]
  rw [child]
  dsimp only [result5052]
  have child := node5053_eq
  unfold live5053 coloured5053 at child
  try dsimp only [live5054, coloured5054]
  rw [child]
  dsimp only [result5053]
  try dsimp only [colour, result5054]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5055_agree : tree5055 = literal5055 := by
  rw [tree5055_def]
  rfl
theorem node5055_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5055 live5055 coloured5055 = result5055 := by
  rw [tree5055_def]
  try dsimp only [colour, result5055]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5056_agree : tree5056 = literal5056 := by
  rw [tree5056_def, tree5054_agree, tree5055_agree]
  rfl
theorem node5056_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5056 live5056 coloured5056 = result5056 := by
  rw [tree5056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5054_eq
  unfold live5054 coloured5054 at child
  try dsimp only [live5056, coloured5056]
  rw [child]
  dsimp only [result5054]
  have child := node5055_eq
  unfold live5055 coloured5055 at child
  try dsimp only [live5056, coloured5056]
  rw [child]
  dsimp only [result5055]
  try dsimp only [colour, result5056]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5057_agree : tree5057 = literal5057 := by
  rw [tree5057_def]
  rfl
theorem node5057_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5057 live5057 coloured5057 = result5057 := by
  rw [tree5057_def]
  try dsimp only [colour, result5057]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5058_agree : tree5058 = literal5058 := by
  rw [tree5058_def, tree5056_agree, tree5057_agree]
  rfl
theorem node5058_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5058 live5058 coloured5058 = result5058 := by
  rw [tree5058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5056_eq
  unfold live5056 coloured5056 at child
  try dsimp only [live5058, coloured5058]
  rw [child]
  dsimp only [result5056]
  have child := node5057_eq
  unfold live5057 coloured5057 at child
  try dsimp only [live5058, coloured5058]
  rw [child]
  dsimp only [result5057]
  try dsimp only [colour, result5058]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5059_agree : tree5059 = literal5059 := by
  rw [tree5059_def]
  rfl
theorem node5059_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5059 live5059 coloured5059 = result5059 := by
  rw [tree5059_def]
  try dsimp only [colour, result5059]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5060_agree : tree5060 = literal5060 := by
  rw [tree5060_def, tree5058_agree, tree5059_agree]
  rfl
theorem node5060_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5060 live5060 coloured5060 = result5060 := by
  rw [tree5060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5058_eq
  unfold live5058 coloured5058 at child
  try dsimp only [live5060, coloured5060]
  rw [child]
  dsimp only [result5058]
  have child := node5059_eq
  unfold live5059 coloured5059 at child
  try dsimp only [live5060, coloured5060]
  rw [child]
  dsimp only [result5059]
  try dsimp only [colour, result5060]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5061_agree : tree5061 = literal5061 := by
  rw [tree5061_def]
  rfl
theorem node5061_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5061 live5061 coloured5061 = result5061 := by
  rw [tree5061_def]
  try dsimp only [colour, result5061]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5062_agree : tree5062 = literal5062 := by
  rw [tree5062_def, tree5060_agree, tree5061_agree]
  rfl
theorem node5062_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5062 live5062 coloured5062 = result5062 := by
  rw [tree5062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5060_eq
  unfold live5060 coloured5060 at child
  try dsimp only [live5062, coloured5062]
  rw [child]
  dsimp only [result5060]
  have child := node5061_eq
  unfold live5061 coloured5061 at child
  try dsimp only [live5062, coloured5062]
  rw [child]
  dsimp only [result5061]
  try dsimp only [colour, result5062]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5063_agree : tree5063 = literal5063 := by
  rw [tree5063_def]
  rfl
theorem node5063_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5063 live5063 coloured5063 = result5063 := by
  rw [tree5063_def]
  try dsimp only [colour, result5063]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5064_agree : tree5064 = literal5064 := by
  rw [tree5064_def, tree5062_agree, tree5063_agree]
  rfl
theorem node5064_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5064 live5064 coloured5064 = result5064 := by
  rw [tree5064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5062_eq
  unfold live5062 coloured5062 at child
  try dsimp only [live5064, coloured5064]
  rw [child]
  dsimp only [result5062]
  have child := node5063_eq
  unfold live5063 coloured5063 at child
  try dsimp only [live5064, coloured5064]
  rw [child]
  dsimp only [result5063]
  try dsimp only [colour, result5064]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5065_agree : tree5065 = literal5065 := by
  rw [tree5065_def]
  rfl
theorem node5065_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5065 live5065 coloured5065 = result5065 := by
  rw [tree5065_def]
  try dsimp only [colour, result5065]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5066_agree : tree5066 = literal5066 := by
  rw [tree5066_def, tree5064_agree, tree5065_agree]
  rfl
theorem node5066_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5066 live5066 coloured5066 = result5066 := by
  rw [tree5066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5064_eq
  unfold live5064 coloured5064 at child
  try dsimp only [live5066, coloured5066]
  rw [child]
  dsimp only [result5064]
  have child := node5065_eq
  unfold live5065 coloured5065 at child
  try dsimp only [live5066, coloured5066]
  rw [child]
  dsimp only [result5065]
  try dsimp only [colour, result5066]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5067_agree : tree5067 = literal5067 := by
  rw [tree5067_def]
  rfl
theorem node5067_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5067 live5067 coloured5067 = result5067 := by
  rw [tree5067_def]
  try dsimp only [colour, result5067]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5068_agree : tree5068 = literal5068 := by
  rw [tree5068_def, tree5066_agree, tree5067_agree]
  rfl
theorem node5068_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5068 live5068 coloured5068 = result5068 := by
  rw [tree5068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5066_eq
  unfold live5066 coloured5066 at child
  try dsimp only [live5068, coloured5068]
  rw [child]
  dsimp only [result5066]
  have child := node5067_eq
  unfold live5067 coloured5067 at child
  try dsimp only [live5068, coloured5068]
  rw [child]
  dsimp only [result5067]
  try dsimp only [colour, result5068]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5069_agree : tree5069 = literal5069 := by
  rw [tree5069_def]
  rfl
theorem node5069_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5069 live5069 coloured5069 = result5069 := by
  rw [tree5069_def]
  try dsimp only [colour, result5069]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5070_agree : tree5070 = literal5070 := by
  rw [tree5070_def, tree5068_agree, tree5069_agree]
  rfl
theorem node5070_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5070 live5070 coloured5070 = result5070 := by
  rw [tree5070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5068_eq
  unfold live5068 coloured5068 at child
  try dsimp only [live5070, coloured5070]
  rw [child]
  dsimp only [result5068]
  have child := node5069_eq
  unfold live5069 coloured5069 at child
  try dsimp only [live5070, coloured5070]
  rw [child]
  dsimp only [result5069]
  try dsimp only [colour, result5070]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5071_agree : tree5071 = literal5071 := by
  rw [tree5071_def]
  rfl
theorem node5071_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5071 live5071 coloured5071 = result5071 := by
  rw [tree5071_def]
  try dsimp only [colour, result5071]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5072_agree : tree5072 = literal5072 := by
  rw [tree5072_def, tree5070_agree, tree5071_agree]
  rfl
theorem node5072_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5072 live5072 coloured5072 = result5072 := by
  rw [tree5072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5070_eq
  unfold live5070 coloured5070 at child
  try dsimp only [live5072, coloured5072]
  rw [child]
  dsimp only [result5070]
  have child := node5071_eq
  unfold live5071 coloured5071 at child
  try dsimp only [live5072, coloured5072]
  rw [child]
  dsimp only [result5071]
  try dsimp only [colour, result5072]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5073_agree : tree5073 = literal5073 := by
  rw [tree5073_def]
  rfl
theorem node5073_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5073 live5073 coloured5073 = result5073 := by
  rw [tree5073_def]
  try dsimp only [colour, result5073]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5074_agree : tree5074 = literal5074 := by
  rw [tree5074_def, tree5072_agree, tree5073_agree]
  rfl
theorem node5074_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5074 live5074 coloured5074 = result5074 := by
  rw [tree5074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5072_eq
  unfold live5072 coloured5072 at child
  try dsimp only [live5074, coloured5074]
  rw [child]
  dsimp only [result5072]
  have child := node5073_eq
  unfold live5073 coloured5073 at child
  try dsimp only [live5074, coloured5074]
  rw [child]
  dsimp only [result5073]
  try dsimp only [colour, result5074]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5075_agree : tree5075 = literal5075 := by
  rw [tree5075_def]
  rfl
theorem node5075_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5075 live5075 coloured5075 = result5075 := by
  rw [tree5075_def]
  try dsimp only [colour, result5075]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5076_agree : tree5076 = literal5076 := by
  rw [tree5076_def, tree5074_agree, tree5075_agree]
  rfl
theorem node5076_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5076 live5076 coloured5076 = result5076 := by
  rw [tree5076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5074_eq
  unfold live5074 coloured5074 at child
  try dsimp only [live5076, coloured5076]
  rw [child]
  dsimp only [result5074]
  have child := node5075_eq
  unfold live5075 coloured5075 at child
  try dsimp only [live5076, coloured5076]
  rw [child]
  dsimp only [result5075]
  try dsimp only [colour, result5076]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5077_agree : tree5077 = literal5077 := by
  rw [tree5077_def]
  rfl
theorem node5077_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5077 live5077 coloured5077 = result5077 := by
  rw [tree5077_def]
  try dsimp only [colour, result5077]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5078_agree : tree5078 = literal5078 := by
  rw [tree5078_def, tree5076_agree, tree5077_agree]
  rfl
theorem node5078_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5078 live5078 coloured5078 = result5078 := by
  rw [tree5078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5076_eq
  unfold live5076 coloured5076 at child
  try dsimp only [live5078, coloured5078]
  rw [child]
  dsimp only [result5076]
  have child := node5077_eq
  unfold live5077 coloured5077 at child
  try dsimp only [live5078, coloured5078]
  rw [child]
  dsimp only [result5077]
  try dsimp only [colour, result5078]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5079_agree : tree5079 = literal5079 := by
  rw [tree5079_def]
  rfl
theorem node5079_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5079 live5079 coloured5079 = result5079 := by
  rw [tree5079_def]
  try dsimp only [colour, result5079]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5080_agree : tree5080 = literal5080 := by
  rw [tree5080_def, tree5078_agree, tree5079_agree]
  rfl
theorem node5080_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5080 live5080 coloured5080 = result5080 := by
  rw [tree5080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5078_eq
  unfold live5078 coloured5078 at child
  try dsimp only [live5080, coloured5080]
  rw [child]
  dsimp only [result5078]
  have child := node5079_eq
  unfold live5079 coloured5079 at child
  try dsimp only [live5080, coloured5080]
  rw [child]
  dsimp only [result5079]
  try dsimp only [colour, result5080]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5081_agree : tree5081 = literal5081 := by
  rw [tree5081_def]
  rfl
theorem node5081_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5081 live5081 coloured5081 = result5081 := by
  rw [tree5081_def]
  try dsimp only [colour, result5081]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5082_agree : tree5082 = literal5082 := by
  rw [tree5082_def, tree5080_agree, tree5081_agree]
  rfl
theorem node5082_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5082 live5082 coloured5082 = result5082 := by
  rw [tree5082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5080_eq
  unfold live5080 coloured5080 at child
  try dsimp only [live5082, coloured5082]
  rw [child]
  dsimp only [result5080]
  have child := node5081_eq
  unfold live5081 coloured5081 at child
  try dsimp only [live5082, coloured5082]
  rw [child]
  dsimp only [result5081]
  try dsimp only [colour, result5082]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5083_agree : tree5083 = literal5083 := by
  rw [tree5083_def]
  rfl
theorem node5083_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5083 live5083 coloured5083 = result5083 := by
  rw [tree5083_def]
  try dsimp only [colour, result5083]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5084_agree : tree5084 = literal5084 := by
  rw [tree5084_def, tree5082_agree, tree5083_agree]
  rfl
theorem node5084_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5084 live5084 coloured5084 = result5084 := by
  rw [tree5084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5082_eq
  unfold live5082 coloured5082 at child
  try dsimp only [live5084, coloured5084]
  rw [child]
  dsimp only [result5082]
  have child := node5083_eq
  unfold live5083 coloured5083 at child
  try dsimp only [live5084, coloured5084]
  rw [child]
  dsimp only [result5083]
  try dsimp only [colour, result5084]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5085_agree : tree5085 = literal5085 := by
  rw [tree5085_def]
  rfl
theorem node5085_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5085 live5085 coloured5085 = result5085 := by
  rw [tree5085_def]
  try dsimp only [colour, result5085]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5086_agree : tree5086 = literal5086 := by
  rw [tree5086_def, tree5084_agree, tree5085_agree]
  rfl
theorem node5086_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5086 live5086 coloured5086 = result5086 := by
  rw [tree5086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5084_eq
  unfold live5084 coloured5084 at child
  try dsimp only [live5086, coloured5086]
  rw [child]
  dsimp only [result5084]
  have child := node5085_eq
  unfold live5085 coloured5085 at child
  try dsimp only [live5086, coloured5086]
  rw [child]
  dsimp only [result5085]
  try dsimp only [colour, result5086]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5087_agree : tree5087 = literal5087 := by
  rw [tree5087_def]
  rfl
theorem node5087_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5087 live5087 coloured5087 = result5087 := by
  rw [tree5087_def]
  try dsimp only [colour, result5087]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
