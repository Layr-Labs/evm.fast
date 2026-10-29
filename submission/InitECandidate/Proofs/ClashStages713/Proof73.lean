import InitECandidate.Proofs.ClashStages713.Proof72
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree7008_agree : tree7008 = literal7008 := by
  rw [tree7008_def, tree7006_agree, tree7007_agree]
  rfl
theorem node7008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7008 live7008 coloured7008 = result7008 := by
  rw [tree7008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7006_eq
  unfold live7006 coloured7006 at child
  try dsimp only [live7008, coloured7008]
  rw [child]
  dsimp only [result7006]
  have child := node7007_eq
  unfold live7007 coloured7007 at child
  try dsimp only [live7008, coloured7008]
  rw [child]
  dsimp only [result7007]
  try dsimp only [colour, result7008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7009_agree : tree7009 = literal7009 := by
  rw [tree7009_def]
  rfl
theorem node7009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7009 live7009 coloured7009 = result7009 := by
  rw [tree7009_def]
  try dsimp only [colour, result7009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7010_agree : tree7010 = literal7010 := by
  rw [tree7010_def, tree7008_agree, tree7009_agree]
  rfl
theorem node7010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7010 live7010 coloured7010 = result7010 := by
  rw [tree7010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7008_eq
  unfold live7008 coloured7008 at child
  try dsimp only [live7010, coloured7010]
  rw [child]
  dsimp only [result7008]
  have child := node7009_eq
  unfold live7009 coloured7009 at child
  try dsimp only [live7010, coloured7010]
  rw [child]
  dsimp only [result7009]
  try dsimp only [colour, result7010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7011_agree : tree7011 = literal7011 := by
  rw [tree7011_def]
  rfl
theorem node7011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7011 live7011 coloured7011 = result7011 := by
  rw [tree7011_def]
  try dsimp only [colour, result7011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7012_agree : tree7012 = literal7012 := by
  rw [tree7012_def, tree7010_agree, tree7011_agree]
  rfl
theorem node7012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7012 live7012 coloured7012 = result7012 := by
  rw [tree7012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7010_eq
  unfold live7010 coloured7010 at child
  try dsimp only [live7012, coloured7012]
  rw [child]
  dsimp only [result7010]
  have child := node7011_eq
  unfold live7011 coloured7011 at child
  try dsimp only [live7012, coloured7012]
  rw [child]
  dsimp only [result7011]
  try dsimp only [colour, result7012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7013_agree : tree7013 = literal7013 := by
  rw [tree7013_def]
  rfl
theorem node7013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7013 live7013 coloured7013 = result7013 := by
  rw [tree7013_def]
  try dsimp only [colour, result7013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7014_agree : tree7014 = literal7014 := by
  rw [tree7014_def, tree7012_agree, tree7013_agree]
  rfl
theorem node7014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7014 live7014 coloured7014 = result7014 := by
  rw [tree7014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7012_eq
  unfold live7012 coloured7012 at child
  try dsimp only [live7014, coloured7014]
  rw [child]
  dsimp only [result7012]
  have child := node7013_eq
  unfold live7013 coloured7013 at child
  try dsimp only [live7014, coloured7014]
  rw [child]
  dsimp only [result7013]
  try dsimp only [colour, result7014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7015_agree : tree7015 = literal7015 := by
  rw [tree7015_def]
  rfl
theorem node7015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7015 live7015 coloured7015 = result7015 := by
  rw [tree7015_def]
  try dsimp only [colour, result7015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7016_agree : tree7016 = literal7016 := by
  rw [tree7016_def, tree7014_agree, tree7015_agree]
  rfl
theorem node7016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7016 live7016 coloured7016 = result7016 := by
  rw [tree7016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7014_eq
  unfold live7014 coloured7014 at child
  try dsimp only [live7016, coloured7016]
  rw [child]
  dsimp only [result7014]
  have child := node7015_eq
  unfold live7015 coloured7015 at child
  try dsimp only [live7016, coloured7016]
  rw [child]
  dsimp only [result7015]
  try dsimp only [colour, result7016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7017_agree : tree7017 = literal7017 := by
  rw [tree7017_def]
  rfl
theorem node7017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7017 live7017 coloured7017 = result7017 := by
  rw [tree7017_def]
  try dsimp only [colour, result7017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7018_agree : tree7018 = literal7018 := by
  rw [tree7018_def, tree7016_agree, tree7017_agree]
  rfl
theorem node7018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7018 live7018 coloured7018 = result7018 := by
  rw [tree7018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7016_eq
  unfold live7016 coloured7016 at child
  try dsimp only [live7018, coloured7018]
  rw [child]
  dsimp only [result7016]
  have child := node7017_eq
  unfold live7017 coloured7017 at child
  try dsimp only [live7018, coloured7018]
  rw [child]
  dsimp only [result7017]
  try dsimp only [colour, result7018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7019_agree : tree7019 = literal7019 := by
  rw [tree7019_def]
  rfl
theorem node7019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7019 live7019 coloured7019 = result7019 := by
  rw [tree7019_def]
  try dsimp only [colour, result7019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7020_agree : tree7020 = literal7020 := by
  rw [tree7020_def, tree7018_agree, tree7019_agree]
  rfl
theorem node7020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7020 live7020 coloured7020 = result7020 := by
  rw [tree7020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7018_eq
  unfold live7018 coloured7018 at child
  try dsimp only [live7020, coloured7020]
  rw [child]
  dsimp only [result7018]
  have child := node7019_eq
  unfold live7019 coloured7019 at child
  try dsimp only [live7020, coloured7020]
  rw [child]
  dsimp only [result7019]
  try dsimp only [colour, result7020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7021_agree : tree7021 = literal7021 := by
  rw [tree7021_def]
  rfl
theorem node7021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7021 live7021 coloured7021 = result7021 := by
  rw [tree7021_def]
  try dsimp only [colour, result7021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7022_agree : tree7022 = literal7022 := by
  rw [tree7022_def, tree7020_agree, tree7021_agree]
  rfl
theorem node7022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7022 live7022 coloured7022 = result7022 := by
  rw [tree7022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7020_eq
  unfold live7020 coloured7020 at child
  try dsimp only [live7022, coloured7022]
  rw [child]
  dsimp only [result7020]
  have child := node7021_eq
  unfold live7021 coloured7021 at child
  try dsimp only [live7022, coloured7022]
  rw [child]
  dsimp only [result7021]
  try dsimp only [colour, result7022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7023_agree : tree7023 = literal7023 := by
  rw [tree7023_def]
  rfl
theorem node7023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7023 live7023 coloured7023 = result7023 := by
  rw [tree7023_def]
  try dsimp only [colour, result7023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7024_agree : tree7024 = literal7024 := by
  rw [tree7024_def, tree7022_agree, tree7023_agree]
  rfl
theorem node7024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7024 live7024 coloured7024 = result7024 := by
  rw [tree7024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7022_eq
  unfold live7022 coloured7022 at child
  try dsimp only [live7024, coloured7024]
  rw [child]
  dsimp only [result7022]
  have child := node7023_eq
  unfold live7023 coloured7023 at child
  try dsimp only [live7024, coloured7024]
  rw [child]
  dsimp only [result7023]
  try dsimp only [colour, result7024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7025_agree : tree7025 = literal7025 := by
  rw [tree7025_def]
  rfl
theorem node7025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7025 live7025 coloured7025 = result7025 := by
  rw [tree7025_def]
  try dsimp only [colour, result7025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7026_agree : tree7026 = literal7026 := by
  rw [tree7026_def, tree7024_agree, tree7025_agree]
  rfl
theorem node7026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7026 live7026 coloured7026 = result7026 := by
  rw [tree7026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7024_eq
  unfold live7024 coloured7024 at child
  try dsimp only [live7026, coloured7026]
  rw [child]
  dsimp only [result7024]
  have child := node7025_eq
  unfold live7025 coloured7025 at child
  try dsimp only [live7026, coloured7026]
  rw [child]
  dsimp only [result7025]
  try dsimp only [colour, result7026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7027_agree : tree7027 = literal7027 := by
  rw [tree7027_def]
  rfl
theorem node7027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7027 live7027 coloured7027 = result7027 := by
  rw [tree7027_def]
  try dsimp only [colour, result7027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7028_agree : tree7028 = literal7028 := by
  rw [tree7028_def, tree7026_agree, tree7027_agree]
  rfl
theorem node7028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7028 live7028 coloured7028 = result7028 := by
  rw [tree7028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7026_eq
  unfold live7026 coloured7026 at child
  try dsimp only [live7028, coloured7028]
  rw [child]
  dsimp only [result7026]
  have child := node7027_eq
  unfold live7027 coloured7027 at child
  try dsimp only [live7028, coloured7028]
  rw [child]
  dsimp only [result7027]
  try dsimp only [colour, result7028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7029_agree : tree7029 = literal7029 := by
  rw [tree7029_def]
  rfl
theorem node7029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7029 live7029 coloured7029 = result7029 := by
  rw [tree7029_def]
  try dsimp only [colour, result7029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7030_agree : tree7030 = literal7030 := by
  rw [tree7030_def, tree7028_agree, tree7029_agree]
  rfl
theorem node7030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7030 live7030 coloured7030 = result7030 := by
  rw [tree7030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7028_eq
  unfold live7028 coloured7028 at child
  try dsimp only [live7030, coloured7030]
  rw [child]
  dsimp only [result7028]
  have child := node7029_eq
  unfold live7029 coloured7029 at child
  try dsimp only [live7030, coloured7030]
  rw [child]
  dsimp only [result7029]
  try dsimp only [colour, result7030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7031_agree : tree7031 = literal7031 := by
  rw [tree7031_def]
  rfl
theorem node7031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7031 live7031 coloured7031 = result7031 := by
  rw [tree7031_def]
  try dsimp only [colour, result7031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7032_agree : tree7032 = literal7032 := by
  rw [tree7032_def, tree7030_agree, tree7031_agree]
  rfl
theorem node7032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7032 live7032 coloured7032 = result7032 := by
  rw [tree7032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7030_eq
  unfold live7030 coloured7030 at child
  try dsimp only [live7032, coloured7032]
  rw [child]
  dsimp only [result7030]
  have child := node7031_eq
  unfold live7031 coloured7031 at child
  try dsimp only [live7032, coloured7032]
  rw [child]
  dsimp only [result7031]
  try dsimp only [colour, result7032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7033_agree : tree7033 = literal7033 := by
  rw [tree7033_def]
  rfl
theorem node7033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7033 live7033 coloured7033 = result7033 := by
  rw [tree7033_def]
  try dsimp only [colour, result7033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7034_agree : tree7034 = literal7034 := by
  rw [tree7034_def, tree7032_agree, tree7033_agree]
  rfl
theorem node7034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7034 live7034 coloured7034 = result7034 := by
  rw [tree7034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7032_eq
  unfold live7032 coloured7032 at child
  try dsimp only [live7034, coloured7034]
  rw [child]
  dsimp only [result7032]
  have child := node7033_eq
  unfold live7033 coloured7033 at child
  try dsimp only [live7034, coloured7034]
  rw [child]
  dsimp only [result7033]
  try dsimp only [colour, result7034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7035_agree : tree7035 = literal7035 := by
  rw [tree7035_def]
  rfl
theorem node7035_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7035 live7035 coloured7035 = result7035 := by
  rw [tree7035_def]
  try dsimp only [colour, result7035]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7036_agree : tree7036 = literal7036 := by
  rw [tree7036_def, tree7034_agree, tree7035_agree]
  rfl
theorem node7036_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7036 live7036 coloured7036 = result7036 := by
  rw [tree7036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7034_eq
  unfold live7034 coloured7034 at child
  try dsimp only [live7036, coloured7036]
  rw [child]
  dsimp only [result7034]
  have child := node7035_eq
  unfold live7035 coloured7035 at child
  try dsimp only [live7036, coloured7036]
  rw [child]
  dsimp only [result7035]
  try dsimp only [colour, result7036]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7037_agree : tree7037 = literal7037 := by
  rw [tree7037_def]
  rfl
theorem node7037_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7037 live7037 coloured7037 = result7037 := by
  rw [tree7037_def]
  try dsimp only [colour, result7037]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7038_agree : tree7038 = literal7038 := by
  rw [tree7038_def, tree7036_agree, tree7037_agree]
  rfl
theorem node7038_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7038 live7038 coloured7038 = result7038 := by
  rw [tree7038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7036_eq
  unfold live7036 coloured7036 at child
  try dsimp only [live7038, coloured7038]
  rw [child]
  dsimp only [result7036]
  have child := node7037_eq
  unfold live7037 coloured7037 at child
  try dsimp only [live7038, coloured7038]
  rw [child]
  dsimp only [result7037]
  try dsimp only [colour, result7038]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7039_agree : tree7039 = literal7039 := by
  rw [tree7039_def]
  rfl
theorem node7039_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7039 live7039 coloured7039 = result7039 := by
  rw [tree7039_def]
  try dsimp only [colour, result7039]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7040_agree : tree7040 = literal7040 := by
  rw [tree7040_def, tree7038_agree, tree7039_agree]
  rfl
theorem node7040_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7040 live7040 coloured7040 = result7040 := by
  rw [tree7040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7038_eq
  unfold live7038 coloured7038 at child
  try dsimp only [live7040, coloured7040]
  rw [child]
  dsimp only [result7038]
  have child := node7039_eq
  unfold live7039 coloured7039 at child
  try dsimp only [live7040, coloured7040]
  rw [child]
  dsimp only [result7039]
  try dsimp only [colour, result7040]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7041_agree : tree7041 = literal7041 := by
  rw [tree7041_def]
  rfl
theorem node7041_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7041 live7041 coloured7041 = result7041 := by
  rw [tree7041_def]
  try dsimp only [colour, result7041]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7042_agree : tree7042 = literal7042 := by
  rw [tree7042_def, tree7040_agree, tree7041_agree]
  rfl
theorem node7042_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7042 live7042 coloured7042 = result7042 := by
  rw [tree7042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7040_eq
  unfold live7040 coloured7040 at child
  try dsimp only [live7042, coloured7042]
  rw [child]
  dsimp only [result7040]
  have child := node7041_eq
  unfold live7041 coloured7041 at child
  try dsimp only [live7042, coloured7042]
  rw [child]
  dsimp only [result7041]
  try dsimp only [colour, result7042]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7043_agree : tree7043 = literal7043 := by
  rw [tree7043_def]
  rfl
theorem node7043_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7043 live7043 coloured7043 = result7043 := by
  rw [tree7043_def]
  try dsimp only [colour, result7043]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7044_agree : tree7044 = literal7044 := by
  rw [tree7044_def, tree7042_agree, tree7043_agree]
  rfl
theorem node7044_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7044 live7044 coloured7044 = result7044 := by
  rw [tree7044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7042_eq
  unfold live7042 coloured7042 at child
  try dsimp only [live7044, coloured7044]
  rw [child]
  dsimp only [result7042]
  have child := node7043_eq
  unfold live7043 coloured7043 at child
  try dsimp only [live7044, coloured7044]
  rw [child]
  dsimp only [result7043]
  try dsimp only [colour, result7044]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7045_agree : tree7045 = literal7045 := by
  rw [tree7045_def]
  rfl
theorem node7045_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7045 live7045 coloured7045 = result7045 := by
  rw [tree7045_def]
  try dsimp only [colour, result7045]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7046_agree : tree7046 = literal7046 := by
  rw [tree7046_def, tree7044_agree, tree7045_agree]
  rfl
theorem node7046_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7046 live7046 coloured7046 = result7046 := by
  rw [tree7046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7044_eq
  unfold live7044 coloured7044 at child
  try dsimp only [live7046, coloured7046]
  rw [child]
  dsimp only [result7044]
  have child := node7045_eq
  unfold live7045 coloured7045 at child
  try dsimp only [live7046, coloured7046]
  rw [child]
  dsimp only [result7045]
  try dsimp only [colour, result7046]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7047_agree : tree7047 = literal7047 := by
  rw [tree7047_def]
  rfl
theorem node7047_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7047 live7047 coloured7047 = result7047 := by
  rw [tree7047_def]
  try dsimp only [colour, result7047]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7048_agree : tree7048 = literal7048 := by
  rw [tree7048_def, tree7046_agree, tree7047_agree]
  rfl
theorem node7048_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7048 live7048 coloured7048 = result7048 := by
  rw [tree7048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7046_eq
  unfold live7046 coloured7046 at child
  try dsimp only [live7048, coloured7048]
  rw [child]
  dsimp only [result7046]
  have child := node7047_eq
  unfold live7047 coloured7047 at child
  try dsimp only [live7048, coloured7048]
  rw [child]
  dsimp only [result7047]
  try dsimp only [colour, result7048]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7049_agree : tree7049 = literal7049 := by
  rw [tree7049_def]
  rfl
theorem node7049_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7049 live7049 coloured7049 = result7049 := by
  rw [tree7049_def]
  try dsimp only [colour, result7049]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7050_agree : tree7050 = literal7050 := by
  rw [tree7050_def, tree7048_agree, tree7049_agree]
  rfl
theorem node7050_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7050 live7050 coloured7050 = result7050 := by
  rw [tree7050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7048_eq
  unfold live7048 coloured7048 at child
  try dsimp only [live7050, coloured7050]
  rw [child]
  dsimp only [result7048]
  have child := node7049_eq
  unfold live7049 coloured7049 at child
  try dsimp only [live7050, coloured7050]
  rw [child]
  dsimp only [result7049]
  try dsimp only [colour, result7050]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7051_agree : tree7051 = literal7051 := by
  rw [tree7051_def]
  rfl
theorem node7051_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7051 live7051 coloured7051 = result7051 := by
  rw [tree7051_def]
  try dsimp only [colour, result7051]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7052_agree : tree7052 = literal7052 := by
  rw [tree7052_def, tree7050_agree, tree7051_agree]
  rfl
theorem node7052_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7052 live7052 coloured7052 = result7052 := by
  rw [tree7052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7050_eq
  unfold live7050 coloured7050 at child
  try dsimp only [live7052, coloured7052]
  rw [child]
  dsimp only [result7050]
  have child := node7051_eq
  unfold live7051 coloured7051 at child
  try dsimp only [live7052, coloured7052]
  rw [child]
  dsimp only [result7051]
  try dsimp only [colour, result7052]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7053_agree : tree7053 = literal7053 := by
  rw [tree7053_def]
  rfl
theorem node7053_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7053 live7053 coloured7053 = result7053 := by
  rw [tree7053_def]
  try dsimp only [colour, result7053]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7054_agree : tree7054 = literal7054 := by
  rw [tree7054_def, tree7052_agree, tree7053_agree]
  rfl
theorem node7054_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7054 live7054 coloured7054 = result7054 := by
  rw [tree7054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7052_eq
  unfold live7052 coloured7052 at child
  try dsimp only [live7054, coloured7054]
  rw [child]
  dsimp only [result7052]
  have child := node7053_eq
  unfold live7053 coloured7053 at child
  try dsimp only [live7054, coloured7054]
  rw [child]
  dsimp only [result7053]
  try dsimp only [colour, result7054]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7055_agree : tree7055 = literal7055 := by
  rw [tree7055_def]
  rfl
theorem node7055_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7055 live7055 coloured7055 = result7055 := by
  rw [tree7055_def]
  try dsimp only [colour, result7055]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7056_agree : tree7056 = literal7056 := by
  rw [tree7056_def, tree7054_agree, tree7055_agree]
  rfl
theorem node7056_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7056 live7056 coloured7056 = result7056 := by
  rw [tree7056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7054_eq
  unfold live7054 coloured7054 at child
  try dsimp only [live7056, coloured7056]
  rw [child]
  dsimp only [result7054]
  have child := node7055_eq
  unfold live7055 coloured7055 at child
  try dsimp only [live7056, coloured7056]
  rw [child]
  dsimp only [result7055]
  try dsimp only [colour, result7056]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7057_agree : tree7057 = literal7057 := by
  rw [tree7057_def]
  rfl
theorem node7057_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7057 live7057 coloured7057 = result7057 := by
  rw [tree7057_def]
  try dsimp only [colour, result7057]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7058_agree : tree7058 = literal7058 := by
  rw [tree7058_def, tree7056_agree, tree7057_agree]
  rfl
theorem node7058_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7058 live7058 coloured7058 = result7058 := by
  rw [tree7058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7056_eq
  unfold live7056 coloured7056 at child
  try dsimp only [live7058, coloured7058]
  rw [child]
  dsimp only [result7056]
  have child := node7057_eq
  unfold live7057 coloured7057 at child
  try dsimp only [live7058, coloured7058]
  rw [child]
  dsimp only [result7057]
  try dsimp only [colour, result7058]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7059_agree : tree7059 = literal7059 := by
  rw [tree7059_def]
  rfl
theorem node7059_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7059 live7059 coloured7059 = result7059 := by
  rw [tree7059_def]
  try dsimp only [colour, result7059]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7060_agree : tree7060 = literal7060 := by
  rw [tree7060_def, tree7058_agree, tree7059_agree]
  rfl
theorem node7060_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7060 live7060 coloured7060 = result7060 := by
  rw [tree7060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7058_eq
  unfold live7058 coloured7058 at child
  try dsimp only [live7060, coloured7060]
  rw [child]
  dsimp only [result7058]
  have child := node7059_eq
  unfold live7059 coloured7059 at child
  try dsimp only [live7060, coloured7060]
  rw [child]
  dsimp only [result7059]
  try dsimp only [colour, result7060]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7061_agree : tree7061 = literal7061 := by
  rw [tree7061_def]
  rfl
theorem node7061_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7061 live7061 coloured7061 = result7061 := by
  rw [tree7061_def]
  try dsimp only [colour, result7061]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7062_agree : tree7062 = literal7062 := by
  rw [tree7062_def, tree7060_agree, tree7061_agree]
  rfl
theorem node7062_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7062 live7062 coloured7062 = result7062 := by
  rw [tree7062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7060_eq
  unfold live7060 coloured7060 at child
  try dsimp only [live7062, coloured7062]
  rw [child]
  dsimp only [result7060]
  have child := node7061_eq
  unfold live7061 coloured7061 at child
  try dsimp only [live7062, coloured7062]
  rw [child]
  dsimp only [result7061]
  try dsimp only [colour, result7062]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7063_agree : tree7063 = literal7063 := by
  rw [tree7063_def]
  rfl
theorem node7063_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7063 live7063 coloured7063 = result7063 := by
  rw [tree7063_def]
  try dsimp only [colour, result7063]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7064_agree : tree7064 = literal7064 := by
  rw [tree7064_def, tree7062_agree, tree7063_agree]
  rfl
theorem node7064_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7064 live7064 coloured7064 = result7064 := by
  rw [tree7064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7062_eq
  unfold live7062 coloured7062 at child
  try dsimp only [live7064, coloured7064]
  rw [child]
  dsimp only [result7062]
  have child := node7063_eq
  unfold live7063 coloured7063 at child
  try dsimp only [live7064, coloured7064]
  rw [child]
  dsimp only [result7063]
  try dsimp only [colour, result7064]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7065_agree : tree7065 = literal7065 := by
  rw [tree7065_def]
  rfl
theorem node7065_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7065 live7065 coloured7065 = result7065 := by
  rw [tree7065_def]
  try dsimp only [colour, result7065]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7066_agree : tree7066 = literal7066 := by
  rw [tree7066_def, tree7064_agree, tree7065_agree]
  rfl
theorem node7066_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7066 live7066 coloured7066 = result7066 := by
  rw [tree7066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7064_eq
  unfold live7064 coloured7064 at child
  try dsimp only [live7066, coloured7066]
  rw [child]
  dsimp only [result7064]
  have child := node7065_eq
  unfold live7065 coloured7065 at child
  try dsimp only [live7066, coloured7066]
  rw [child]
  dsimp only [result7065]
  try dsimp only [colour, result7066]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7067_agree : tree7067 = literal7067 := by
  rw [tree7067_def]
  rfl
theorem node7067_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7067 live7067 coloured7067 = result7067 := by
  rw [tree7067_def]
  try dsimp only [colour, result7067]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7068_agree : tree7068 = literal7068 := by
  rw [tree7068_def, tree7066_agree, tree7067_agree]
  rfl
theorem node7068_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7068 live7068 coloured7068 = result7068 := by
  rw [tree7068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7066_eq
  unfold live7066 coloured7066 at child
  try dsimp only [live7068, coloured7068]
  rw [child]
  dsimp only [result7066]
  have child := node7067_eq
  unfold live7067 coloured7067 at child
  try dsimp only [live7068, coloured7068]
  rw [child]
  dsimp only [result7067]
  try dsimp only [colour, result7068]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7069_agree : tree7069 = literal7069 := by
  rw [tree7069_def]
  rfl
theorem node7069_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7069 live7069 coloured7069 = result7069 := by
  rw [tree7069_def]
  try dsimp only [colour, result7069]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7070_agree : tree7070 = literal7070 := by
  rw [tree7070_def, tree7068_agree, tree7069_agree]
  rfl
theorem node7070_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7070 live7070 coloured7070 = result7070 := by
  rw [tree7070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7068_eq
  unfold live7068 coloured7068 at child
  try dsimp only [live7070, coloured7070]
  rw [child]
  dsimp only [result7068]
  have child := node7069_eq
  unfold live7069 coloured7069 at child
  try dsimp only [live7070, coloured7070]
  rw [child]
  dsimp only [result7069]
  try dsimp only [colour, result7070]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7071_agree : tree7071 = literal7071 := by
  rw [tree7071_def]
  rfl
theorem node7071_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7071 live7071 coloured7071 = result7071 := by
  rw [tree7071_def]
  try dsimp only [colour, result7071]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7072_agree : tree7072 = literal7072 := by
  rw [tree7072_def, tree7070_agree, tree7071_agree]
  rfl
theorem node7072_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7072 live7072 coloured7072 = result7072 := by
  rw [tree7072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7070_eq
  unfold live7070 coloured7070 at child
  try dsimp only [live7072, coloured7072]
  rw [child]
  dsimp only [result7070]
  have child := node7071_eq
  unfold live7071 coloured7071 at child
  try dsimp only [live7072, coloured7072]
  rw [child]
  dsimp only [result7071]
  try dsimp only [colour, result7072]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7073_agree : tree7073 = literal7073 := by
  rw [tree7073_def]
  rfl
theorem node7073_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7073 live7073 coloured7073 = result7073 := by
  rw [tree7073_def]
  try dsimp only [colour, result7073]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7074_agree : tree7074 = literal7074 := by
  rw [tree7074_def, tree7072_agree, tree7073_agree]
  rfl
theorem node7074_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7074 live7074 coloured7074 = result7074 := by
  rw [tree7074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7072_eq
  unfold live7072 coloured7072 at child
  try dsimp only [live7074, coloured7074]
  rw [child]
  dsimp only [result7072]
  have child := node7073_eq
  unfold live7073 coloured7073 at child
  try dsimp only [live7074, coloured7074]
  rw [child]
  dsimp only [result7073]
  try dsimp only [colour, result7074]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7075_agree : tree7075 = literal7075 := by
  rw [tree7075_def]
  rfl
theorem node7075_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7075 live7075 coloured7075 = result7075 := by
  rw [tree7075_def]
  try dsimp only [colour, result7075]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7076_agree : tree7076 = literal7076 := by
  rw [tree7076_def, tree7074_agree, tree7075_agree]
  rfl
theorem node7076_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7076 live7076 coloured7076 = result7076 := by
  rw [tree7076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7074_eq
  unfold live7074 coloured7074 at child
  try dsimp only [live7076, coloured7076]
  rw [child]
  dsimp only [result7074]
  have child := node7075_eq
  unfold live7075 coloured7075 at child
  try dsimp only [live7076, coloured7076]
  rw [child]
  dsimp only [result7075]
  try dsimp only [colour, result7076]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7077_agree : tree7077 = literal7077 := by
  rw [tree7077_def]
  rfl
theorem node7077_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7077 live7077 coloured7077 = result7077 := by
  rw [tree7077_def]
  try dsimp only [colour, result7077]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7078_agree : tree7078 = literal7078 := by
  rw [tree7078_def, tree7076_agree, tree7077_agree]
  rfl
theorem node7078_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7078 live7078 coloured7078 = result7078 := by
  rw [tree7078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7076_eq
  unfold live7076 coloured7076 at child
  try dsimp only [live7078, coloured7078]
  rw [child]
  dsimp only [result7076]
  have child := node7077_eq
  unfold live7077 coloured7077 at child
  try dsimp only [live7078, coloured7078]
  rw [child]
  dsimp only [result7077]
  try dsimp only [colour, result7078]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7079_agree : tree7079 = literal7079 := by
  rw [tree7079_def]
  rfl
theorem node7079_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7079 live7079 coloured7079 = result7079 := by
  rw [tree7079_def]
  try dsimp only [colour, result7079]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7080_agree : tree7080 = literal7080 := by
  rw [tree7080_def, tree7078_agree, tree7079_agree]
  rfl
theorem node7080_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7080 live7080 coloured7080 = result7080 := by
  rw [tree7080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7078_eq
  unfold live7078 coloured7078 at child
  try dsimp only [live7080, coloured7080]
  rw [child]
  dsimp only [result7078]
  have child := node7079_eq
  unfold live7079 coloured7079 at child
  try dsimp only [live7080, coloured7080]
  rw [child]
  dsimp only [result7079]
  try dsimp only [colour, result7080]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7081_agree : tree7081 = literal7081 := by
  rw [tree7081_def]
  rfl
theorem node7081_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7081 live7081 coloured7081 = result7081 := by
  rw [tree7081_def]
  try dsimp only [colour, result7081]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7082_agree : tree7082 = literal7082 := by
  rw [tree7082_def, tree7080_agree, tree7081_agree]
  rfl
theorem node7082_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7082 live7082 coloured7082 = result7082 := by
  rw [tree7082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7080_eq
  unfold live7080 coloured7080 at child
  try dsimp only [live7082, coloured7082]
  rw [child]
  dsimp only [result7080]
  have child := node7081_eq
  unfold live7081 coloured7081 at child
  try dsimp only [live7082, coloured7082]
  rw [child]
  dsimp only [result7081]
  try dsimp only [colour, result7082]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7083_agree : tree7083 = literal7083 := by
  rw [tree7083_def]
  rfl
theorem node7083_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7083 live7083 coloured7083 = result7083 := by
  rw [tree7083_def]
  try dsimp only [colour, result7083]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7084_agree : tree7084 = literal7084 := by
  rw [tree7084_def, tree7082_agree, tree7083_agree]
  rfl
theorem node7084_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7084 live7084 coloured7084 = result7084 := by
  rw [tree7084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7082_eq
  unfold live7082 coloured7082 at child
  try dsimp only [live7084, coloured7084]
  rw [child]
  dsimp only [result7082]
  have child := node7083_eq
  unfold live7083 coloured7083 at child
  try dsimp only [live7084, coloured7084]
  rw [child]
  dsimp only [result7083]
  try dsimp only [colour, result7084]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7085_agree : tree7085 = literal7085 := by
  rw [tree7085_def]
  rfl
theorem node7085_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7085 live7085 coloured7085 = result7085 := by
  rw [tree7085_def]
  try dsimp only [colour, result7085]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7086_agree : tree7086 = literal7086 := by
  rw [tree7086_def, tree7084_agree, tree7085_agree]
  rfl
theorem node7086_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7086 live7086 coloured7086 = result7086 := by
  rw [tree7086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7084_eq
  unfold live7084 coloured7084 at child
  try dsimp only [live7086, coloured7086]
  rw [child]
  dsimp only [result7084]
  have child := node7085_eq
  unfold live7085 coloured7085 at child
  try dsimp only [live7086, coloured7086]
  rw [child]
  dsimp only [result7085]
  try dsimp only [colour, result7086]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7087_agree : tree7087 = literal7087 := by
  rw [tree7087_def]
  rfl
theorem node7087_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7087 live7087 coloured7087 = result7087 := by
  rw [tree7087_def]
  try dsimp only [colour, result7087]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7088_agree : tree7088 = literal7088 := by
  rw [tree7088_def, tree7086_agree, tree7087_agree]
  rfl
theorem node7088_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7088 live7088 coloured7088 = result7088 := by
  rw [tree7088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7086_eq
  unfold live7086 coloured7086 at child
  try dsimp only [live7088, coloured7088]
  rw [child]
  dsimp only [result7086]
  have child := node7087_eq
  unfold live7087 coloured7087 at child
  try dsimp only [live7088, coloured7088]
  rw [child]
  dsimp only [result7087]
  try dsimp only [colour, result7088]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7089_agree : tree7089 = literal7089 := by
  rw [tree7089_def]
  rfl
theorem node7089_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7089 live7089 coloured7089 = result7089 := by
  rw [tree7089_def]
  try dsimp only [colour, result7089]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7090_agree : tree7090 = literal7090 := by
  rw [tree7090_def, tree7088_agree, tree7089_agree]
  rfl
theorem node7090_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7090 live7090 coloured7090 = result7090 := by
  rw [tree7090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7088_eq
  unfold live7088 coloured7088 at child
  try dsimp only [live7090, coloured7090]
  rw [child]
  dsimp only [result7088]
  have child := node7089_eq
  unfold live7089 coloured7089 at child
  try dsimp only [live7090, coloured7090]
  rw [child]
  dsimp only [result7089]
  try dsimp only [colour, result7090]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7091_agree : tree7091 = literal7091 := by
  rw [tree7091_def]
  rfl
theorem node7091_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7091 live7091 coloured7091 = result7091 := by
  rw [tree7091_def]
  try dsimp only [colour, result7091]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7092_agree : tree7092 = literal7092 := by
  rw [tree7092_def, tree7090_agree, tree7091_agree]
  rfl
theorem node7092_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7092 live7092 coloured7092 = result7092 := by
  rw [tree7092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7090_eq
  unfold live7090 coloured7090 at child
  try dsimp only [live7092, coloured7092]
  rw [child]
  dsimp only [result7090]
  have child := node7091_eq
  unfold live7091 coloured7091 at child
  try dsimp only [live7092, coloured7092]
  rw [child]
  dsimp only [result7091]
  try dsimp only [colour, result7092]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7093_agree : tree7093 = literal7093 := by
  rw [tree7093_def]
  rfl
theorem node7093_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7093 live7093 coloured7093 = result7093 := by
  rw [tree7093_def]
  try dsimp only [colour, result7093]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7094_agree : tree7094 = literal7094 := by
  rw [tree7094_def, tree7092_agree, tree7093_agree]
  rfl
theorem node7094_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7094 live7094 coloured7094 = result7094 := by
  rw [tree7094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7092_eq
  unfold live7092 coloured7092 at child
  try dsimp only [live7094, coloured7094]
  rw [child]
  dsimp only [result7092]
  have child := node7093_eq
  unfold live7093 coloured7093 at child
  try dsimp only [live7094, coloured7094]
  rw [child]
  dsimp only [result7093]
  try dsimp only [colour, result7094]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7095_agree : tree7095 = literal7095 := by
  rw [tree7095_def]
  rfl
theorem node7095_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7095 live7095 coloured7095 = result7095 := by
  rw [tree7095_def]
  try dsimp only [colour, result7095]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7096_agree : tree7096 = literal7096 := by
  rw [tree7096_def, tree7094_agree, tree7095_agree]
  rfl
theorem node7096_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7096 live7096 coloured7096 = result7096 := by
  rw [tree7096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7094_eq
  unfold live7094 coloured7094 at child
  try dsimp only [live7096, coloured7096]
  rw [child]
  dsimp only [result7094]
  have child := node7095_eq
  unfold live7095 coloured7095 at child
  try dsimp only [live7096, coloured7096]
  rw [child]
  dsimp only [result7095]
  try dsimp only [colour, result7096]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7097_agree : tree7097 = literal7097 := by
  rw [tree7097_def]
  rfl
theorem node7097_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7097 live7097 coloured7097 = result7097 := by
  rw [tree7097_def]
  try dsimp only [colour, result7097]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7098_agree : tree7098 = literal7098 := by
  rw [tree7098_def, tree7096_agree, tree7097_agree]
  rfl
theorem node7098_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7098 live7098 coloured7098 = result7098 := by
  rw [tree7098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7096_eq
  unfold live7096 coloured7096 at child
  try dsimp only [live7098, coloured7098]
  rw [child]
  dsimp only [result7096]
  have child := node7097_eq
  unfold live7097 coloured7097 at child
  try dsimp only [live7098, coloured7098]
  rw [child]
  dsimp only [result7097]
  try dsimp only [colour, result7098]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7099_agree : tree7099 = literal7099 := by
  rw [tree7099_def]
  rfl
theorem node7099_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7099 live7099 coloured7099 = result7099 := by
  rw [tree7099_def]
  try dsimp only [colour, result7099]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7100_agree : tree7100 = literal7100 := by
  rw [tree7100_def, tree7098_agree, tree7099_agree]
  rfl
theorem node7100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7100 live7100 coloured7100 = result7100 := by
  rw [tree7100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7098_eq
  unfold live7098 coloured7098 at child
  try dsimp only [live7100, coloured7100]
  rw [child]
  dsimp only [result7098]
  have child := node7099_eq
  unfold live7099 coloured7099 at child
  try dsimp only [live7100, coloured7100]
  rw [child]
  dsimp only [result7099]
  try dsimp only [colour, result7100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7101_agree : tree7101 = literal7101 := by
  rw [tree7101_def]
  rfl
theorem node7101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7101 live7101 coloured7101 = result7101 := by
  rw [tree7101_def]
  try dsimp only [colour, result7101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7102_agree : tree7102 = literal7102 := by
  rw [tree7102_def, tree7100_agree, tree7101_agree]
  rfl
theorem node7102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7102 live7102 coloured7102 = result7102 := by
  rw [tree7102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7100_eq
  unfold live7100 coloured7100 at child
  try dsimp only [live7102, coloured7102]
  rw [child]
  dsimp only [result7100]
  have child := node7101_eq
  unfold live7101 coloured7101 at child
  try dsimp only [live7102, coloured7102]
  rw [child]
  dsimp only [result7101]
  try dsimp only [colour, result7102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7103_agree : tree7103 = literal7103 := by
  rw [tree7103_def]
  rfl
theorem node7103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7103 live7103 coloured7103 = result7103 := by
  rw [tree7103_def]
  try dsimp only [colour, result7103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
