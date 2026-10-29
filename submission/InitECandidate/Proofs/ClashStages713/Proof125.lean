import InitECandidate.Proofs.ClashStages713.Proof124
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree12000_agree : tree12000 = literal12000 := by
  rw [tree12000_def, tree11998_agree, tree11999_agree]
  rfl
theorem node12000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12000 live12000 coloured12000 = result12000 := by
  rw [tree12000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11998_eq
  unfold live11998 coloured11998 at child
  try dsimp only [live12000, coloured12000]
  rw [child]
  dsimp only [result11998]
  have child := node11999_eq
  unfold live11999 coloured11999 at child
  try dsimp only [live12000, coloured12000]
  rw [child]
  dsimp only [result11999]
  try dsimp only [colour, result12000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12001_agree : tree12001 = literal12001 := by
  rw [tree12001_def, tree11995_agree, tree12000_agree]
  rfl
theorem node12001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12001 live12001 coloured12001 = result12001 := by
  rw [tree12001_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11995_eq
  unfold live11995 coloured11995 at child
  try dsimp only [live12001, coloured12001]
  rw [child]
  dsimp only [result11995]
  have child := node12000_eq
  unfold live12000 coloured12000 at child
  try dsimp only [live12001, coloured12001]
  rw [child]
  dsimp only [result12000]
  try dsimp only [colour, result12001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12002_agree : tree12002 = literal12002 := by
  rw [tree12002_def, tree11992_agree, tree12001_agree]
  rfl
theorem node12002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12002 live12002 coloured12002 = result12002 := by
  rw [tree12002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11992_eq
  unfold live11992 coloured11992 at child
  try dsimp only [live12002, coloured12002]
  rw [child]
  dsimp only [result11992]
  have child := node12001_eq
  unfold live12001 coloured12001 at child
  try dsimp only [live12002, coloured12002]
  rw [child]
  dsimp only [result12001]
  try dsimp only [colour, result12002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12003_agree : tree12003 = literal12003 := by
  rw [tree12003_def]
  rfl
theorem node12003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12003 live12003 coloured12003 = result12003 := by
  rw [tree12003_def]
  try dsimp only [colour, result12003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12004_agree : tree12004 = literal12004 := by
  rw [tree12004_def, tree12002_agree, tree12003_agree]
  rfl
theorem node12004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12004 live12004 coloured12004 = result12004 := by
  rw [tree12004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12002_eq
  unfold live12002 coloured12002 at child
  try dsimp only [live12004, coloured12004]
  rw [child]
  dsimp only [result12002]
  have child := node12003_eq
  unfold live12003 coloured12003 at child
  try dsimp only [live12004, coloured12004]
  rw [child]
  dsimp only [result12003]
  try dsimp only [colour, result12004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12005_agree : tree12005 = literal12005 := by
  rw [tree12005_def]
  rfl
theorem node12005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12005 live12005 coloured12005 = result12005 := by
  rw [tree12005_def]
  try dsimp only [colour, result12005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12006_agree : tree12006 = literal12006 := by
  rw [tree12006_def, tree12004_agree, tree12005_agree]
  rfl
theorem node12006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12006 live12006 coloured12006 = result12006 := by
  rw [tree12006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12004_eq
  unfold live12004 coloured12004 at child
  try dsimp only [live12006, coloured12006]
  rw [child]
  dsimp only [result12004]
  have child := node12005_eq
  unfold live12005 coloured12005 at child
  try dsimp only [live12006, coloured12006]
  rw [child]
  dsimp only [result12005]
  try dsimp only [colour, result12006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12007_agree : tree12007 = literal12007 := by
  rw [tree12007_def]
  rfl
theorem node12007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12007 live12007 coloured12007 = result12007 := by
  rw [tree12007_def]
  try dsimp only [colour, result12007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12008_agree : tree12008 = literal12008 := by
  rw [tree12008_def, tree12006_agree, tree12007_agree]
  rfl
theorem node12008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12008 live12008 coloured12008 = result12008 := by
  rw [tree12008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12006_eq
  unfold live12006 coloured12006 at child
  try dsimp only [live12008, coloured12008]
  rw [child]
  dsimp only [result12006]
  have child := node12007_eq
  unfold live12007 coloured12007 at child
  try dsimp only [live12008, coloured12008]
  rw [child]
  dsimp only [result12007]
  try dsimp only [colour, result12008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12009_agree : tree12009 = literal12009 := by
  rw [tree12009_def]
  rfl
theorem node12009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12009 live12009 coloured12009 = result12009 := by
  rw [tree12009_def]
  try dsimp only [colour, result12009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12010_agree : tree12010 = literal12010 := by
  rw [tree12010_def, tree12008_agree, tree12009_agree]
  rfl
theorem node12010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12010 live12010 coloured12010 = result12010 := by
  rw [tree12010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12008_eq
  unfold live12008 coloured12008 at child
  try dsimp only [live12010, coloured12010]
  rw [child]
  dsimp only [result12008]
  have child := node12009_eq
  unfold live12009 coloured12009 at child
  try dsimp only [live12010, coloured12010]
  rw [child]
  dsimp only [result12009]
  try dsimp only [colour, result12010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12011_agree : tree12011 = literal12011 := by
  rw [tree12011_def]
  rfl
theorem node12011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12011 live12011 coloured12011 = result12011 := by
  rw [tree12011_def]
  try dsimp only [colour, result12011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12012_agree : tree12012 = literal12012 := by
  rw [tree12012_def]
  rfl
theorem node12012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12012 live12012 coloured12012 = result12012 := by
  rw [tree12012_def]
  try dsimp only [colour, result12012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12013_agree : tree12013 = literal12013 := by
  rw [tree12013_def, tree12011_agree, tree12012_agree]
  rfl
theorem node12013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12013 live12013 coloured12013 = result12013 := by
  rw [tree12013_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12011_eq
  unfold live12011 coloured12011 at child
  try dsimp only [live12013, coloured12013]
  rw [child]
  dsimp only [result12011]
  have child := node12012_eq
  unfold live12012 coloured12012 at child
  try dsimp only [live12013, coloured12013]
  rw [child]
  dsimp only [result12012]
  try dsimp only [colour, result12013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12014_agree : tree12014 = literal12014 := by
  rw [tree12014_def]
  rfl
theorem node12014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12014 live12014 coloured12014 = result12014 := by
  rw [tree12014_def]
  try dsimp only [colour, result12014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12015_agree : tree12015 = literal12015 := by
  rw [tree12015_def, tree12013_agree, tree12014_agree]
  rfl
theorem node12015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12015 live12015 coloured12015 = result12015 := by
  rw [tree12015_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12013_eq
  unfold live12013 coloured12013 at child
  try dsimp only [live12015, coloured12015]
  rw [child]
  dsimp only [result12013]
  have child := node12014_eq
  unfold live12014 coloured12014 at child
  try dsimp only [live12015, coloured12015]
  rw [child]
  dsimp only [result12014]
  try dsimp only [colour, result12015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12016_agree : tree12016 = literal12016 := by
  rw [tree12016_def]
  rfl
theorem node12016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12016 live12016 coloured12016 = result12016 := by
  rw [tree12016_def]
  try dsimp only [colour, result12016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12017_agree : tree12017 = literal12017 := by
  rw [tree12017_def, tree12015_agree, tree12016_agree]
  rfl
theorem node12017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12017 live12017 coloured12017 = result12017 := by
  rw [tree12017_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12015_eq
  unfold live12015 coloured12015 at child
  try dsimp only [live12017, coloured12017]
  rw [child]
  dsimp only [result12015]
  have child := node12016_eq
  unfold live12016 coloured12016 at child
  try dsimp only [live12017, coloured12017]
  rw [child]
  dsimp only [result12016]
  try dsimp only [colour, result12017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12018_agree : tree12018 = literal12018 := by
  rw [tree12018_def]
  rfl
theorem node12018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12018 live12018 coloured12018 = result12018 := by
  rw [tree12018_def]
  try dsimp only [colour, result12018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12019_agree : tree12019 = literal12019 := by
  rw [tree12019_def, tree12017_agree, tree12018_agree]
  rfl
theorem node12019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12019 live12019 coloured12019 = result12019 := by
  rw [tree12019_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12017_eq
  unfold live12017 coloured12017 at child
  try dsimp only [live12019, coloured12019]
  rw [child]
  dsimp only [result12017]
  have child := node12018_eq
  unfold live12018 coloured12018 at child
  try dsimp only [live12019, coloured12019]
  rw [child]
  dsimp only [result12018]
  try dsimp only [colour, result12019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12020_agree : tree12020 = literal12020 := by
  rw [tree12020_def]
  rfl
theorem node12020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12020 live12020 coloured12020 = result12020 := by
  rw [tree12020_def]
  try dsimp only [colour, result12020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12021_agree : tree12021 = literal12021 := by
  rw [tree12021_def, tree12019_agree, tree12020_agree]
  rfl
theorem node12021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12021 live12021 coloured12021 = result12021 := by
  rw [tree12021_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12019_eq
  unfold live12019 coloured12019 at child
  try dsimp only [live12021, coloured12021]
  rw [child]
  dsimp only [result12019]
  have child := node12020_eq
  unfold live12020 coloured12020 at child
  try dsimp only [live12021, coloured12021]
  rw [child]
  dsimp only [result12020]
  try dsimp only [colour, result12021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12022_agree : tree12022 = literal12022 := by
  rw [tree12022_def, tree12010_agree, tree12021_agree]
  rfl
theorem node12022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12022 live12022 coloured12022 = result12022 := by
  rw [tree12022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12010_eq
  unfold live12010 coloured12010 at child
  try dsimp only [live12022, coloured12022]
  rw [child]
  dsimp only [result12010]
  have child := node12021_eq
  unfold live12021 coloured12021 at child
  try dsimp only [live12022, coloured12022]
  rw [child]
  dsimp only [result12021]
  try dsimp only [colour, result12022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12023_agree : tree12023 = literal12023 := by
  rw [tree12023_def]
  rfl
theorem node12023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12023 live12023 coloured12023 = result12023 := by
  rw [tree12023_def]
  try dsimp only [colour, result12023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12024_agree : tree12024 = literal12024 := by
  rw [tree12024_def, tree12022_agree, tree12023_agree]
  rfl
theorem node12024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12024 live12024 coloured12024 = result12024 := by
  rw [tree12024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12022_eq
  unfold live12022 coloured12022 at child
  try dsimp only [live12024, coloured12024]
  rw [child]
  dsimp only [result12022]
  have child := node12023_eq
  unfold live12023 coloured12023 at child
  try dsimp only [live12024, coloured12024]
  rw [child]
  dsimp only [result12023]
  try dsimp only [colour, result12024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12025_agree : tree12025 = literal12025 := by
  rw [tree12025_def]
  rfl
theorem node12025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12025 live12025 coloured12025 = result12025 := by
  rw [tree12025_def]
  try dsimp only [colour, result12025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12026_agree : tree12026 = literal12026 := by
  rw [tree12026_def, tree12024_agree, tree12025_agree]
  rfl
theorem node12026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12026 live12026 coloured12026 = result12026 := by
  rw [tree12026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12024_eq
  unfold live12024 coloured12024 at child
  try dsimp only [live12026, coloured12026]
  rw [child]
  dsimp only [result12024]
  have child := node12025_eq
  unfold live12025 coloured12025 at child
  try dsimp only [live12026, coloured12026]
  rw [child]
  dsimp only [result12025]
  try dsimp only [colour, result12026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12027_agree : tree12027 = literal12027 := by
  rw [tree12027_def]
  rfl
theorem node12027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12027 live12027 coloured12027 = result12027 := by
  rw [tree12027_def]
  try dsimp only [colour, result12027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12028_agree : tree12028 = literal12028 := by
  rw [tree12028_def, tree12026_agree, tree12027_agree]
  rfl
theorem node12028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12028 live12028 coloured12028 = result12028 := by
  rw [tree12028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12026_eq
  unfold live12026 coloured12026 at child
  try dsimp only [live12028, coloured12028]
  rw [child]
  dsimp only [result12026]
  have child := node12027_eq
  unfold live12027 coloured12027 at child
  try dsimp only [live12028, coloured12028]
  rw [child]
  dsimp only [result12027]
  try dsimp only [colour, result12028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12029_agree : tree12029 = literal12029 := by
  rw [tree12029_def]
  rfl
theorem node12029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12029 live12029 coloured12029 = result12029 := by
  rw [tree12029_def]
  try dsimp only [colour, result12029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12030_agree : tree12030 = literal12030 := by
  rw [tree12030_def, tree12028_agree, tree12029_agree]
  rfl
theorem node12030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12030 live12030 coloured12030 = result12030 := by
  rw [tree12030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12028_eq
  unfold live12028 coloured12028 at child
  try dsimp only [live12030, coloured12030]
  rw [child]
  dsimp only [result12028]
  have child := node12029_eq
  unfold live12029 coloured12029 at child
  try dsimp only [live12030, coloured12030]
  rw [child]
  dsimp only [result12029]
  try dsimp only [colour, result12030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12031_agree : tree12031 = literal12031 := by
  rw [tree12031_def]
  rfl
theorem node12031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12031 live12031 coloured12031 = result12031 := by
  rw [tree12031_def]
  try dsimp only [colour, result12031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12032_agree : tree12032 = literal12032 := by
  rw [tree12032_def, tree12030_agree, tree12031_agree]
  rfl
theorem node12032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12032 live12032 coloured12032 = result12032 := by
  rw [tree12032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12030_eq
  unfold live12030 coloured12030 at child
  try dsimp only [live12032, coloured12032]
  rw [child]
  dsimp only [result12030]
  have child := node12031_eq
  unfold live12031 coloured12031 at child
  try dsimp only [live12032, coloured12032]
  rw [child]
  dsimp only [result12031]
  try dsimp only [colour, result12032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12033_agree : tree12033 = literal12033 := by
  rw [tree12033_def]
  rfl
theorem node12033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12033 live12033 coloured12033 = result12033 := by
  rw [tree12033_def]
  try dsimp only [colour, result12033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree12034_agree : tree12034 = literal12034 := by
  rw [tree12034_def, tree12032_agree, tree12033_agree]
  rfl
theorem node12034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12034 live12034 coloured12034 = result12034 := by
  rw [tree12034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node12032_eq
  unfold live12032 coloured12032 at child
  try dsimp only [live12034, coloured12034]
  rw [child]
  dsimp only [result12032]
  have child := node12033_eq
  unfold live12033 coloured12033 at child
  try dsimp only [live12034, coloured12034]
  rw [child]
  dsimp only [result12033]
  try dsimp only [colour, result12034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
