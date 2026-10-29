import InitECandidate.Proofs.ClashStages713.Proof20
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2016_agree : tree2016 = literal2016 := by
  rw [tree2016_def, tree2014_agree, tree2015_agree]
  rfl
theorem node2016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2016 live2016 coloured2016 = result2016 := by
  rw [tree2016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2014_eq
  unfold live2014 coloured2014 at child
  try dsimp only [live2016, coloured2016]
  rw [child]
  dsimp only [result2014]
  have child := node2015_eq
  unfold live2015 coloured2015 at child
  try dsimp only [live2016, coloured2016]
  rw [child]
  dsimp only [result2015]
  try dsimp only [colour, result2016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2017_agree : tree2017 = literal2017 := by
  rw [tree2017_def]
  rfl
theorem node2017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2017 live2017 coloured2017 = result2017 := by
  rw [tree2017_def]
  try dsimp only [colour, result2017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2018_agree : tree2018 = literal2018 := by
  rw [tree2018_def, tree2016_agree, tree2017_agree]
  rfl
theorem node2018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2018 live2018 coloured2018 = result2018 := by
  rw [tree2018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2016_eq
  unfold live2016 coloured2016 at child
  try dsimp only [live2018, coloured2018]
  rw [child]
  dsimp only [result2016]
  have child := node2017_eq
  unfold live2017 coloured2017 at child
  try dsimp only [live2018, coloured2018]
  rw [child]
  dsimp only [result2017]
  try dsimp only [colour, result2018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2019_agree : tree2019 = literal2019 := by
  rw [tree2019_def]
  rfl
theorem node2019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2019 live2019 coloured2019 = result2019 := by
  rw [tree2019_def]
  try dsimp only [colour, result2019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2020_agree : tree2020 = literal2020 := by
  rw [tree2020_def, tree2018_agree, tree2019_agree]
  rfl
theorem node2020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2020 live2020 coloured2020 = result2020 := by
  rw [tree2020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2018_eq
  unfold live2018 coloured2018 at child
  try dsimp only [live2020, coloured2020]
  rw [child]
  dsimp only [result2018]
  have child := node2019_eq
  unfold live2019 coloured2019 at child
  try dsimp only [live2020, coloured2020]
  rw [child]
  dsimp only [result2019]
  try dsimp only [colour, result2020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2021_agree : tree2021 = literal2021 := by
  rw [tree2021_def]
  rfl
theorem node2021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2021 live2021 coloured2021 = result2021 := by
  rw [tree2021_def]
  try dsimp only [colour, result2021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2022_agree : tree2022 = literal2022 := by
  rw [tree2022_def, tree2020_agree, tree2021_agree]
  rfl
theorem node2022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2022 live2022 coloured2022 = result2022 := by
  rw [tree2022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2020_eq
  unfold live2020 coloured2020 at child
  try dsimp only [live2022, coloured2022]
  rw [child]
  dsimp only [result2020]
  have child := node2021_eq
  unfold live2021 coloured2021 at child
  try dsimp only [live2022, coloured2022]
  rw [child]
  dsimp only [result2021]
  try dsimp only [colour, result2022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2023_agree : tree2023 = literal2023 := by
  rw [tree2023_def]
  rfl
theorem node2023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2023 live2023 coloured2023 = result2023 := by
  rw [tree2023_def]
  try dsimp only [colour, result2023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2024_agree : tree2024 = literal2024 := by
  rw [tree2024_def, tree2022_agree, tree2023_agree]
  rfl
theorem node2024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2024 live2024 coloured2024 = result2024 := by
  rw [tree2024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2022_eq
  unfold live2022 coloured2022 at child
  try dsimp only [live2024, coloured2024]
  rw [child]
  dsimp only [result2022]
  have child := node2023_eq
  unfold live2023 coloured2023 at child
  try dsimp only [live2024, coloured2024]
  rw [child]
  dsimp only [result2023]
  try dsimp only [colour, result2024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2025_agree : tree2025 = literal2025 := by
  rw [tree2025_def]
  rfl
theorem node2025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2025 live2025 coloured2025 = result2025 := by
  rw [tree2025_def]
  try dsimp only [colour, result2025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2026_agree : tree2026 = literal2026 := by
  rw [tree2026_def, tree2024_agree, tree2025_agree]
  rfl
theorem node2026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2026 live2026 coloured2026 = result2026 := by
  rw [tree2026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2024_eq
  unfold live2024 coloured2024 at child
  try dsimp only [live2026, coloured2026]
  rw [child]
  dsimp only [result2024]
  have child := node2025_eq
  unfold live2025 coloured2025 at child
  try dsimp only [live2026, coloured2026]
  rw [child]
  dsimp only [result2025]
  try dsimp only [colour, result2026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2027_agree : tree2027 = literal2027 := by
  rw [tree2027_def]
  rfl
theorem node2027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2027 live2027 coloured2027 = result2027 := by
  rw [tree2027_def]
  try dsimp only [colour, result2027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2028_agree : tree2028 = literal2028 := by
  rw [tree2028_def, tree2026_agree, tree2027_agree]
  rfl
theorem node2028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2028 live2028 coloured2028 = result2028 := by
  rw [tree2028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2026_eq
  unfold live2026 coloured2026 at child
  try dsimp only [live2028, coloured2028]
  rw [child]
  dsimp only [result2026]
  have child := node2027_eq
  unfold live2027 coloured2027 at child
  try dsimp only [live2028, coloured2028]
  rw [child]
  dsimp only [result2027]
  try dsimp only [colour, result2028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2029_agree : tree2029 = literal2029 := by
  rw [tree2029_def]
  rfl
theorem node2029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2029 live2029 coloured2029 = result2029 := by
  rw [tree2029_def]
  try dsimp only [colour, result2029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2030_agree : tree2030 = literal2030 := by
  rw [tree2030_def, tree2028_agree, tree2029_agree]
  rfl
theorem node2030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2030 live2030 coloured2030 = result2030 := by
  rw [tree2030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2028_eq
  unfold live2028 coloured2028 at child
  try dsimp only [live2030, coloured2030]
  rw [child]
  dsimp only [result2028]
  have child := node2029_eq
  unfold live2029 coloured2029 at child
  try dsimp only [live2030, coloured2030]
  rw [child]
  dsimp only [result2029]
  try dsimp only [colour, result2030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2031_agree : tree2031 = literal2031 := by
  rw [tree2031_def]
  rfl
theorem node2031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2031 live2031 coloured2031 = result2031 := by
  rw [tree2031_def]
  try dsimp only [colour, result2031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2032_agree : tree2032 = literal2032 := by
  rw [tree2032_def, tree2030_agree, tree2031_agree]
  rfl
theorem node2032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2032 live2032 coloured2032 = result2032 := by
  rw [tree2032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2030_eq
  unfold live2030 coloured2030 at child
  try dsimp only [live2032, coloured2032]
  rw [child]
  dsimp only [result2030]
  have child := node2031_eq
  unfold live2031 coloured2031 at child
  try dsimp only [live2032, coloured2032]
  rw [child]
  dsimp only [result2031]
  try dsimp only [colour, result2032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2033_agree : tree2033 = literal2033 := by
  rw [tree2033_def]
  rfl
theorem node2033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2033 live2033 coloured2033 = result2033 := by
  rw [tree2033_def]
  try dsimp only [colour, result2033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2034_agree : tree2034 = literal2034 := by
  rw [tree2034_def, tree2032_agree, tree2033_agree]
  rfl
theorem node2034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2034 live2034 coloured2034 = result2034 := by
  rw [tree2034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2032_eq
  unfold live2032 coloured2032 at child
  try dsimp only [live2034, coloured2034]
  rw [child]
  dsimp only [result2032]
  have child := node2033_eq
  unfold live2033 coloured2033 at child
  try dsimp only [live2034, coloured2034]
  rw [child]
  dsimp only [result2033]
  try dsimp only [colour, result2034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2035_agree : tree2035 = literal2035 := by
  rw [tree2035_def]
  rfl
theorem node2035_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2035 live2035 coloured2035 = result2035 := by
  rw [tree2035_def]
  try dsimp only [colour, result2035]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2036_agree : tree2036 = literal2036 := by
  rw [tree2036_def, tree2034_agree, tree2035_agree]
  rfl
theorem node2036_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2036 live2036 coloured2036 = result2036 := by
  rw [tree2036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2034_eq
  unfold live2034 coloured2034 at child
  try dsimp only [live2036, coloured2036]
  rw [child]
  dsimp only [result2034]
  have child := node2035_eq
  unfold live2035 coloured2035 at child
  try dsimp only [live2036, coloured2036]
  rw [child]
  dsimp only [result2035]
  try dsimp only [colour, result2036]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2037_agree : tree2037 = literal2037 := by
  rw [tree2037_def]
  rfl
theorem node2037_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2037 live2037 coloured2037 = result2037 := by
  rw [tree2037_def]
  try dsimp only [colour, result2037]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2038_agree : tree2038 = literal2038 := by
  rw [tree2038_def, tree2036_agree, tree2037_agree]
  rfl
theorem node2038_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2038 live2038 coloured2038 = result2038 := by
  rw [tree2038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2036_eq
  unfold live2036 coloured2036 at child
  try dsimp only [live2038, coloured2038]
  rw [child]
  dsimp only [result2036]
  have child := node2037_eq
  unfold live2037 coloured2037 at child
  try dsimp only [live2038, coloured2038]
  rw [child]
  dsimp only [result2037]
  try dsimp only [colour, result2038]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2039_agree : tree2039 = literal2039 := by
  rw [tree2039_def]
  rfl
theorem node2039_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2039 live2039 coloured2039 = result2039 := by
  rw [tree2039_def]
  try dsimp only [colour, result2039]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2040_agree : tree2040 = literal2040 := by
  rw [tree2040_def, tree2038_agree, tree2039_agree]
  rfl
theorem node2040_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2040 live2040 coloured2040 = result2040 := by
  rw [tree2040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2038_eq
  unfold live2038 coloured2038 at child
  try dsimp only [live2040, coloured2040]
  rw [child]
  dsimp only [result2038]
  have child := node2039_eq
  unfold live2039 coloured2039 at child
  try dsimp only [live2040, coloured2040]
  rw [child]
  dsimp only [result2039]
  try dsimp only [colour, result2040]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2041_agree : tree2041 = literal2041 := by
  rw [tree2041_def]
  rfl
theorem node2041_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2041 live2041 coloured2041 = result2041 := by
  rw [tree2041_def]
  try dsimp only [colour, result2041]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2042_agree : tree2042 = literal2042 := by
  rw [tree2042_def, tree2040_agree, tree2041_agree]
  rfl
theorem node2042_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2042 live2042 coloured2042 = result2042 := by
  rw [tree2042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2040_eq
  unfold live2040 coloured2040 at child
  try dsimp only [live2042, coloured2042]
  rw [child]
  dsimp only [result2040]
  have child := node2041_eq
  unfold live2041 coloured2041 at child
  try dsimp only [live2042, coloured2042]
  rw [child]
  dsimp only [result2041]
  try dsimp only [colour, result2042]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2043_agree : tree2043 = literal2043 := by
  rw [tree2043_def]
  rfl
theorem node2043_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2043 live2043 coloured2043 = result2043 := by
  rw [tree2043_def]
  try dsimp only [colour, result2043]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2044_agree : tree2044 = literal2044 := by
  rw [tree2044_def, tree2042_agree, tree2043_agree]
  rfl
theorem node2044_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2044 live2044 coloured2044 = result2044 := by
  rw [tree2044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2042_eq
  unfold live2042 coloured2042 at child
  try dsimp only [live2044, coloured2044]
  rw [child]
  dsimp only [result2042]
  have child := node2043_eq
  unfold live2043 coloured2043 at child
  try dsimp only [live2044, coloured2044]
  rw [child]
  dsimp only [result2043]
  try dsimp only [colour, result2044]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2045_agree : tree2045 = literal2045 := by
  rw [tree2045_def]
  rfl
theorem node2045_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2045 live2045 coloured2045 = result2045 := by
  rw [tree2045_def]
  try dsimp only [colour, result2045]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2046_agree : tree2046 = literal2046 := by
  rw [tree2046_def, tree2044_agree, tree2045_agree]
  rfl
theorem node2046_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2046 live2046 coloured2046 = result2046 := by
  rw [tree2046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2044_eq
  unfold live2044 coloured2044 at child
  try dsimp only [live2046, coloured2046]
  rw [child]
  dsimp only [result2044]
  have child := node2045_eq
  unfold live2045 coloured2045 at child
  try dsimp only [live2046, coloured2046]
  rw [child]
  dsimp only [result2045]
  try dsimp only [colour, result2046]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2047_agree : tree2047 = literal2047 := by
  rw [tree2047_def]
  rfl
theorem node2047_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2047 live2047 coloured2047 = result2047 := by
  rw [tree2047_def]
  try dsimp only [colour, result2047]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2048_agree : tree2048 = literal2048 := by
  rw [tree2048_def, tree2046_agree, tree2047_agree]
  rfl
theorem node2048_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2048 live2048 coloured2048 = result2048 := by
  rw [tree2048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2046_eq
  unfold live2046 coloured2046 at child
  try dsimp only [live2048, coloured2048]
  rw [child]
  dsimp only [result2046]
  have child := node2047_eq
  unfold live2047 coloured2047 at child
  try dsimp only [live2048, coloured2048]
  rw [child]
  dsimp only [result2047]
  try dsimp only [colour, result2048]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2049_agree : tree2049 = literal2049 := by
  rw [tree2049_def]
  rfl
theorem node2049_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2049 live2049 coloured2049 = result2049 := by
  rw [tree2049_def]
  try dsimp only [colour, result2049]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2050_agree : tree2050 = literal2050 := by
  rw [tree2050_def, tree2048_agree, tree2049_agree]
  rfl
theorem node2050_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2050 live2050 coloured2050 = result2050 := by
  rw [tree2050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2048_eq
  unfold live2048 coloured2048 at child
  try dsimp only [live2050, coloured2050]
  rw [child]
  dsimp only [result2048]
  have child := node2049_eq
  unfold live2049 coloured2049 at child
  try dsimp only [live2050, coloured2050]
  rw [child]
  dsimp only [result2049]
  try dsimp only [colour, result2050]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2051_agree : tree2051 = literal2051 := by
  rw [tree2051_def]
  rfl
theorem node2051_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2051 live2051 coloured2051 = result2051 := by
  rw [tree2051_def]
  try dsimp only [colour, result2051]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2052_agree : tree2052 = literal2052 := by
  rw [tree2052_def, tree2050_agree, tree2051_agree]
  rfl
theorem node2052_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2052 live2052 coloured2052 = result2052 := by
  rw [tree2052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2050_eq
  unfold live2050 coloured2050 at child
  try dsimp only [live2052, coloured2052]
  rw [child]
  dsimp only [result2050]
  have child := node2051_eq
  unfold live2051 coloured2051 at child
  try dsimp only [live2052, coloured2052]
  rw [child]
  dsimp only [result2051]
  try dsimp only [colour, result2052]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2053_agree : tree2053 = literal2053 := by
  rw [tree2053_def]
  rfl
theorem node2053_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2053 live2053 coloured2053 = result2053 := by
  rw [tree2053_def]
  try dsimp only [colour, result2053]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2054_agree : tree2054 = literal2054 := by
  rw [tree2054_def, tree2052_agree, tree2053_agree]
  rfl
theorem node2054_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2054 live2054 coloured2054 = result2054 := by
  rw [tree2054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2052_eq
  unfold live2052 coloured2052 at child
  try dsimp only [live2054, coloured2054]
  rw [child]
  dsimp only [result2052]
  have child := node2053_eq
  unfold live2053 coloured2053 at child
  try dsimp only [live2054, coloured2054]
  rw [child]
  dsimp only [result2053]
  try dsimp only [colour, result2054]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2055_agree : tree2055 = literal2055 := by
  rw [tree2055_def]
  rfl
theorem node2055_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2055 live2055 coloured2055 = result2055 := by
  rw [tree2055_def]
  try dsimp only [colour, result2055]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2056_agree : tree2056 = literal2056 := by
  rw [tree2056_def, tree2054_agree, tree2055_agree]
  rfl
theorem node2056_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2056 live2056 coloured2056 = result2056 := by
  rw [tree2056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2054_eq
  unfold live2054 coloured2054 at child
  try dsimp only [live2056, coloured2056]
  rw [child]
  dsimp only [result2054]
  have child := node2055_eq
  unfold live2055 coloured2055 at child
  try dsimp only [live2056, coloured2056]
  rw [child]
  dsimp only [result2055]
  try dsimp only [colour, result2056]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2057_agree : tree2057 = literal2057 := by
  rw [tree2057_def]
  rfl
theorem node2057_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2057 live2057 coloured2057 = result2057 := by
  rw [tree2057_def]
  try dsimp only [colour, result2057]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2058_agree : tree2058 = literal2058 := by
  rw [tree2058_def, tree2056_agree, tree2057_agree]
  rfl
theorem node2058_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2058 live2058 coloured2058 = result2058 := by
  rw [tree2058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2056_eq
  unfold live2056 coloured2056 at child
  try dsimp only [live2058, coloured2058]
  rw [child]
  dsimp only [result2056]
  have child := node2057_eq
  unfold live2057 coloured2057 at child
  try dsimp only [live2058, coloured2058]
  rw [child]
  dsimp only [result2057]
  try dsimp only [colour, result2058]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2059_agree : tree2059 = literal2059 := by
  rw [tree2059_def]
  rfl
theorem node2059_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2059 live2059 coloured2059 = result2059 := by
  rw [tree2059_def]
  try dsimp only [colour, result2059]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2060_agree : tree2060 = literal2060 := by
  rw [tree2060_def, tree2058_agree, tree2059_agree]
  rfl
theorem node2060_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2060 live2060 coloured2060 = result2060 := by
  rw [tree2060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2058_eq
  unfold live2058 coloured2058 at child
  try dsimp only [live2060, coloured2060]
  rw [child]
  dsimp only [result2058]
  have child := node2059_eq
  unfold live2059 coloured2059 at child
  try dsimp only [live2060, coloured2060]
  rw [child]
  dsimp only [result2059]
  try dsimp only [colour, result2060]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2061_agree : tree2061 = literal2061 := by
  rw [tree2061_def]
  rfl
theorem node2061_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2061 live2061 coloured2061 = result2061 := by
  rw [tree2061_def]
  try dsimp only [colour, result2061]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2062_agree : tree2062 = literal2062 := by
  rw [tree2062_def, tree2060_agree, tree2061_agree]
  rfl
theorem node2062_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2062 live2062 coloured2062 = result2062 := by
  rw [tree2062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2060_eq
  unfold live2060 coloured2060 at child
  try dsimp only [live2062, coloured2062]
  rw [child]
  dsimp only [result2060]
  have child := node2061_eq
  unfold live2061 coloured2061 at child
  try dsimp only [live2062, coloured2062]
  rw [child]
  dsimp only [result2061]
  try dsimp only [colour, result2062]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2063_agree : tree2063 = literal2063 := by
  rw [tree2063_def]
  rfl
theorem node2063_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2063 live2063 coloured2063 = result2063 := by
  rw [tree2063_def]
  try dsimp only [colour, result2063]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2064_agree : tree2064 = literal2064 := by
  rw [tree2064_def, tree2062_agree, tree2063_agree]
  rfl
theorem node2064_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2064 live2064 coloured2064 = result2064 := by
  rw [tree2064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2062_eq
  unfold live2062 coloured2062 at child
  try dsimp only [live2064, coloured2064]
  rw [child]
  dsimp only [result2062]
  have child := node2063_eq
  unfold live2063 coloured2063 at child
  try dsimp only [live2064, coloured2064]
  rw [child]
  dsimp only [result2063]
  try dsimp only [colour, result2064]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2065_agree : tree2065 = literal2065 := by
  rw [tree2065_def]
  rfl
theorem node2065_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2065 live2065 coloured2065 = result2065 := by
  rw [tree2065_def]
  try dsimp only [colour, result2065]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2066_agree : tree2066 = literal2066 := by
  rw [tree2066_def, tree2064_agree, tree2065_agree]
  rfl
theorem node2066_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2066 live2066 coloured2066 = result2066 := by
  rw [tree2066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2064_eq
  unfold live2064 coloured2064 at child
  try dsimp only [live2066, coloured2066]
  rw [child]
  dsimp only [result2064]
  have child := node2065_eq
  unfold live2065 coloured2065 at child
  try dsimp only [live2066, coloured2066]
  rw [child]
  dsimp only [result2065]
  try dsimp only [colour, result2066]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2067_agree : tree2067 = literal2067 := by
  rw [tree2067_def]
  rfl
theorem node2067_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2067 live2067 coloured2067 = result2067 := by
  rw [tree2067_def]
  try dsimp only [colour, result2067]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2068_agree : tree2068 = literal2068 := by
  rw [tree2068_def, tree2066_agree, tree2067_agree]
  rfl
theorem node2068_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2068 live2068 coloured2068 = result2068 := by
  rw [tree2068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2066_eq
  unfold live2066 coloured2066 at child
  try dsimp only [live2068, coloured2068]
  rw [child]
  dsimp only [result2066]
  have child := node2067_eq
  unfold live2067 coloured2067 at child
  try dsimp only [live2068, coloured2068]
  rw [child]
  dsimp only [result2067]
  try dsimp only [colour, result2068]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2069_agree : tree2069 = literal2069 := by
  rw [tree2069_def]
  rfl
theorem node2069_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2069 live2069 coloured2069 = result2069 := by
  rw [tree2069_def]
  try dsimp only [colour, result2069]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2070_agree : tree2070 = literal2070 := by
  rw [tree2070_def, tree2068_agree, tree2069_agree]
  rfl
theorem node2070_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2070 live2070 coloured2070 = result2070 := by
  rw [tree2070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2068_eq
  unfold live2068 coloured2068 at child
  try dsimp only [live2070, coloured2070]
  rw [child]
  dsimp only [result2068]
  have child := node2069_eq
  unfold live2069 coloured2069 at child
  try dsimp only [live2070, coloured2070]
  rw [child]
  dsimp only [result2069]
  try dsimp only [colour, result2070]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2071_agree : tree2071 = literal2071 := by
  rw [tree2071_def]
  rfl
theorem node2071_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2071 live2071 coloured2071 = result2071 := by
  rw [tree2071_def]
  try dsimp only [colour, result2071]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2072_agree : tree2072 = literal2072 := by
  rw [tree2072_def, tree2070_agree, tree2071_agree]
  rfl
theorem node2072_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2072 live2072 coloured2072 = result2072 := by
  rw [tree2072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2070_eq
  unfold live2070 coloured2070 at child
  try dsimp only [live2072, coloured2072]
  rw [child]
  dsimp only [result2070]
  have child := node2071_eq
  unfold live2071 coloured2071 at child
  try dsimp only [live2072, coloured2072]
  rw [child]
  dsimp only [result2071]
  try dsimp only [colour, result2072]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2073_agree : tree2073 = literal2073 := by
  rw [tree2073_def]
  rfl
theorem node2073_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2073 live2073 coloured2073 = result2073 := by
  rw [tree2073_def]
  try dsimp only [colour, result2073]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2074_agree : tree2074 = literal2074 := by
  rw [tree2074_def, tree2072_agree, tree2073_agree]
  rfl
theorem node2074_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2074 live2074 coloured2074 = result2074 := by
  rw [tree2074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2072_eq
  unfold live2072 coloured2072 at child
  try dsimp only [live2074, coloured2074]
  rw [child]
  dsimp only [result2072]
  have child := node2073_eq
  unfold live2073 coloured2073 at child
  try dsimp only [live2074, coloured2074]
  rw [child]
  dsimp only [result2073]
  try dsimp only [colour, result2074]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2075_agree : tree2075 = literal2075 := by
  rw [tree2075_def]
  rfl
theorem node2075_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2075 live2075 coloured2075 = result2075 := by
  rw [tree2075_def]
  try dsimp only [colour, result2075]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2076_agree : tree2076 = literal2076 := by
  rw [tree2076_def, tree2074_agree, tree2075_agree]
  rfl
theorem node2076_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2076 live2076 coloured2076 = result2076 := by
  rw [tree2076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2074_eq
  unfold live2074 coloured2074 at child
  try dsimp only [live2076, coloured2076]
  rw [child]
  dsimp only [result2074]
  have child := node2075_eq
  unfold live2075 coloured2075 at child
  try dsimp only [live2076, coloured2076]
  rw [child]
  dsimp only [result2075]
  try dsimp only [colour, result2076]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2077_agree : tree2077 = literal2077 := by
  rw [tree2077_def]
  rfl
theorem node2077_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2077 live2077 coloured2077 = result2077 := by
  rw [tree2077_def]
  try dsimp only [colour, result2077]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2078_agree : tree2078 = literal2078 := by
  rw [tree2078_def, tree2076_agree, tree2077_agree]
  rfl
theorem node2078_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2078 live2078 coloured2078 = result2078 := by
  rw [tree2078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2076_eq
  unfold live2076 coloured2076 at child
  try dsimp only [live2078, coloured2078]
  rw [child]
  dsimp only [result2076]
  have child := node2077_eq
  unfold live2077 coloured2077 at child
  try dsimp only [live2078, coloured2078]
  rw [child]
  dsimp only [result2077]
  try dsimp only [colour, result2078]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2079_agree : tree2079 = literal2079 := by
  rw [tree2079_def]
  rfl
theorem node2079_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2079 live2079 coloured2079 = result2079 := by
  rw [tree2079_def]
  try dsimp only [colour, result2079]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2080_agree : tree2080 = literal2080 := by
  rw [tree2080_def, tree2078_agree, tree2079_agree]
  rfl
theorem node2080_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2080 live2080 coloured2080 = result2080 := by
  rw [tree2080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2078_eq
  unfold live2078 coloured2078 at child
  try dsimp only [live2080, coloured2080]
  rw [child]
  dsimp only [result2078]
  have child := node2079_eq
  unfold live2079 coloured2079 at child
  try dsimp only [live2080, coloured2080]
  rw [child]
  dsimp only [result2079]
  try dsimp only [colour, result2080]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2081_agree : tree2081 = literal2081 := by
  rw [tree2081_def]
  rfl
theorem node2081_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2081 live2081 coloured2081 = result2081 := by
  rw [tree2081_def]
  try dsimp only [colour, result2081]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2082_agree : tree2082 = literal2082 := by
  rw [tree2082_def, tree2080_agree, tree2081_agree]
  rfl
theorem node2082_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2082 live2082 coloured2082 = result2082 := by
  rw [tree2082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2080_eq
  unfold live2080 coloured2080 at child
  try dsimp only [live2082, coloured2082]
  rw [child]
  dsimp only [result2080]
  have child := node2081_eq
  unfold live2081 coloured2081 at child
  try dsimp only [live2082, coloured2082]
  rw [child]
  dsimp only [result2081]
  try dsimp only [colour, result2082]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2083_agree : tree2083 = literal2083 := by
  rw [tree2083_def]
  rfl
theorem node2083_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2083 live2083 coloured2083 = result2083 := by
  rw [tree2083_def]
  try dsimp only [colour, result2083]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2084_agree : tree2084 = literal2084 := by
  rw [tree2084_def, tree2082_agree, tree2083_agree]
  rfl
theorem node2084_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2084 live2084 coloured2084 = result2084 := by
  rw [tree2084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2082_eq
  unfold live2082 coloured2082 at child
  try dsimp only [live2084, coloured2084]
  rw [child]
  dsimp only [result2082]
  have child := node2083_eq
  unfold live2083 coloured2083 at child
  try dsimp only [live2084, coloured2084]
  rw [child]
  dsimp only [result2083]
  try dsimp only [colour, result2084]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2085_agree : tree2085 = literal2085 := by
  rw [tree2085_def]
  rfl
theorem node2085_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2085 live2085 coloured2085 = result2085 := by
  rw [tree2085_def]
  try dsimp only [colour, result2085]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2086_agree : tree2086 = literal2086 := by
  rw [tree2086_def, tree2084_agree, tree2085_agree]
  rfl
theorem node2086_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2086 live2086 coloured2086 = result2086 := by
  rw [tree2086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2084_eq
  unfold live2084 coloured2084 at child
  try dsimp only [live2086, coloured2086]
  rw [child]
  dsimp only [result2084]
  have child := node2085_eq
  unfold live2085 coloured2085 at child
  try dsimp only [live2086, coloured2086]
  rw [child]
  dsimp only [result2085]
  try dsimp only [colour, result2086]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2087_agree : tree2087 = literal2087 := by
  rw [tree2087_def]
  rfl
theorem node2087_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2087 live2087 coloured2087 = result2087 := by
  rw [tree2087_def]
  try dsimp only [colour, result2087]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2088_agree : tree2088 = literal2088 := by
  rw [tree2088_def, tree2086_agree, tree2087_agree]
  rfl
theorem node2088_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2088 live2088 coloured2088 = result2088 := by
  rw [tree2088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2086_eq
  unfold live2086 coloured2086 at child
  try dsimp only [live2088, coloured2088]
  rw [child]
  dsimp only [result2086]
  have child := node2087_eq
  unfold live2087 coloured2087 at child
  try dsimp only [live2088, coloured2088]
  rw [child]
  dsimp only [result2087]
  try dsimp only [colour, result2088]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2089_agree : tree2089 = literal2089 := by
  rw [tree2089_def]
  rfl
theorem node2089_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2089 live2089 coloured2089 = result2089 := by
  rw [tree2089_def]
  try dsimp only [colour, result2089]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2090_agree : tree2090 = literal2090 := by
  rw [tree2090_def, tree2088_agree, tree2089_agree]
  rfl
theorem node2090_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2090 live2090 coloured2090 = result2090 := by
  rw [tree2090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2088_eq
  unfold live2088 coloured2088 at child
  try dsimp only [live2090, coloured2090]
  rw [child]
  dsimp only [result2088]
  have child := node2089_eq
  unfold live2089 coloured2089 at child
  try dsimp only [live2090, coloured2090]
  rw [child]
  dsimp only [result2089]
  try dsimp only [colour, result2090]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2091_agree : tree2091 = literal2091 := by
  rw [tree2091_def]
  rfl
theorem node2091_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2091 live2091 coloured2091 = result2091 := by
  rw [tree2091_def]
  try dsimp only [colour, result2091]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2092_agree : tree2092 = literal2092 := by
  rw [tree2092_def, tree2090_agree, tree2091_agree]
  rfl
theorem node2092_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2092 live2092 coloured2092 = result2092 := by
  rw [tree2092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2090_eq
  unfold live2090 coloured2090 at child
  try dsimp only [live2092, coloured2092]
  rw [child]
  dsimp only [result2090]
  have child := node2091_eq
  unfold live2091 coloured2091 at child
  try dsimp only [live2092, coloured2092]
  rw [child]
  dsimp only [result2091]
  try dsimp only [colour, result2092]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2093_agree : tree2093 = literal2093 := by
  rw [tree2093_def]
  rfl
theorem node2093_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2093 live2093 coloured2093 = result2093 := by
  rw [tree2093_def]
  try dsimp only [colour, result2093]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2094_agree : tree2094 = literal2094 := by
  rw [tree2094_def, tree2092_agree, tree2093_agree]
  rfl
theorem node2094_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2094 live2094 coloured2094 = result2094 := by
  rw [tree2094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2092_eq
  unfold live2092 coloured2092 at child
  try dsimp only [live2094, coloured2094]
  rw [child]
  dsimp only [result2092]
  have child := node2093_eq
  unfold live2093 coloured2093 at child
  try dsimp only [live2094, coloured2094]
  rw [child]
  dsimp only [result2093]
  try dsimp only [colour, result2094]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2095_agree : tree2095 = literal2095 := by
  rw [tree2095_def]
  rfl
theorem node2095_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2095 live2095 coloured2095 = result2095 := by
  rw [tree2095_def]
  try dsimp only [colour, result2095]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2096_agree : tree2096 = literal2096 := by
  rw [tree2096_def, tree2094_agree, tree2095_agree]
  rfl
theorem node2096_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2096 live2096 coloured2096 = result2096 := by
  rw [tree2096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2094_eq
  unfold live2094 coloured2094 at child
  try dsimp only [live2096, coloured2096]
  rw [child]
  dsimp only [result2094]
  have child := node2095_eq
  unfold live2095 coloured2095 at child
  try dsimp only [live2096, coloured2096]
  rw [child]
  dsimp only [result2095]
  try dsimp only [colour, result2096]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2097_agree : tree2097 = literal2097 := by
  rw [tree2097_def]
  rfl
theorem node2097_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2097 live2097 coloured2097 = result2097 := by
  rw [tree2097_def]
  try dsimp only [colour, result2097]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2098_agree : tree2098 = literal2098 := by
  rw [tree2098_def, tree2096_agree, tree2097_agree]
  rfl
theorem node2098_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2098 live2098 coloured2098 = result2098 := by
  rw [tree2098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2096_eq
  unfold live2096 coloured2096 at child
  try dsimp only [live2098, coloured2098]
  rw [child]
  dsimp only [result2096]
  have child := node2097_eq
  unfold live2097 coloured2097 at child
  try dsimp only [live2098, coloured2098]
  rw [child]
  dsimp only [result2097]
  try dsimp only [colour, result2098]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2099_agree : tree2099 = literal2099 := by
  rw [tree2099_def]
  rfl
theorem node2099_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2099 live2099 coloured2099 = result2099 := by
  rw [tree2099_def]
  try dsimp only [colour, result2099]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2100_agree : tree2100 = literal2100 := by
  rw [tree2100_def, tree2098_agree, tree2099_agree]
  rfl
theorem node2100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2100 live2100 coloured2100 = result2100 := by
  rw [tree2100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2098_eq
  unfold live2098 coloured2098 at child
  try dsimp only [live2100, coloured2100]
  rw [child]
  dsimp only [result2098]
  have child := node2099_eq
  unfold live2099 coloured2099 at child
  try dsimp only [live2100, coloured2100]
  rw [child]
  dsimp only [result2099]
  try dsimp only [colour, result2100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2101_agree : tree2101 = literal2101 := by
  rw [tree2101_def]
  rfl
theorem node2101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2101 live2101 coloured2101 = result2101 := by
  rw [tree2101_def]
  try dsimp only [colour, result2101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2102_agree : tree2102 = literal2102 := by
  rw [tree2102_def, tree2100_agree, tree2101_agree]
  rfl
theorem node2102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2102 live2102 coloured2102 = result2102 := by
  rw [tree2102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2100_eq
  unfold live2100 coloured2100 at child
  try dsimp only [live2102, coloured2102]
  rw [child]
  dsimp only [result2100]
  have child := node2101_eq
  unfold live2101 coloured2101 at child
  try dsimp only [live2102, coloured2102]
  rw [child]
  dsimp only [result2101]
  try dsimp only [colour, result2102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2103_agree : tree2103 = literal2103 := by
  rw [tree2103_def]
  rfl
theorem node2103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2103 live2103 coloured2103 = result2103 := by
  rw [tree2103_def]
  try dsimp only [colour, result2103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2104_agree : tree2104 = literal2104 := by
  rw [tree2104_def, tree2102_agree, tree2103_agree]
  rfl
theorem node2104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2104 live2104 coloured2104 = result2104 := by
  rw [tree2104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2102_eq
  unfold live2102 coloured2102 at child
  try dsimp only [live2104, coloured2104]
  rw [child]
  dsimp only [result2102]
  have child := node2103_eq
  unfold live2103 coloured2103 at child
  try dsimp only [live2104, coloured2104]
  rw [child]
  dsimp only [result2103]
  try dsimp only [colour, result2104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2105_agree : tree2105 = literal2105 := by
  rw [tree2105_def]
  rfl
theorem node2105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2105 live2105 coloured2105 = result2105 := by
  rw [tree2105_def]
  try dsimp only [colour, result2105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2106_agree : tree2106 = literal2106 := by
  rw [tree2106_def, tree2104_agree, tree2105_agree]
  rfl
theorem node2106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2106 live2106 coloured2106 = result2106 := by
  rw [tree2106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2104_eq
  unfold live2104 coloured2104 at child
  try dsimp only [live2106, coloured2106]
  rw [child]
  dsimp only [result2104]
  have child := node2105_eq
  unfold live2105 coloured2105 at child
  try dsimp only [live2106, coloured2106]
  rw [child]
  dsimp only [result2105]
  try dsimp only [colour, result2106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2107_agree : tree2107 = literal2107 := by
  rw [tree2107_def]
  rfl
theorem node2107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2107 live2107 coloured2107 = result2107 := by
  rw [tree2107_def]
  try dsimp only [colour, result2107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2108_agree : tree2108 = literal2108 := by
  rw [tree2108_def, tree2106_agree, tree2107_agree]
  rfl
theorem node2108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2108 live2108 coloured2108 = result2108 := by
  rw [tree2108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2106_eq
  unfold live2106 coloured2106 at child
  try dsimp only [live2108, coloured2108]
  rw [child]
  dsimp only [result2106]
  have child := node2107_eq
  unfold live2107 coloured2107 at child
  try dsimp only [live2108, coloured2108]
  rw [child]
  dsimp only [result2107]
  try dsimp only [colour, result2108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2109_agree : tree2109 = literal2109 := by
  rw [tree2109_def]
  rfl
theorem node2109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2109 live2109 coloured2109 = result2109 := by
  rw [tree2109_def]
  try dsimp only [colour, result2109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2110_agree : tree2110 = literal2110 := by
  rw [tree2110_def, tree2108_agree, tree2109_agree]
  rfl
theorem node2110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2110 live2110 coloured2110 = result2110 := by
  rw [tree2110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2108_eq
  unfold live2108 coloured2108 at child
  try dsimp only [live2110, coloured2110]
  rw [child]
  dsimp only [result2108]
  have child := node2109_eq
  unfold live2109 coloured2109 at child
  try dsimp only [live2110, coloured2110]
  rw [child]
  dsimp only [result2109]
  try dsimp only [colour, result2110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2111_agree : tree2111 = literal2111 := by
  rw [tree2111_def]
  rfl
theorem node2111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2111 live2111 coloured2111 = result2111 := by
  rw [tree2111_def]
  try dsimp only [colour, result2111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
