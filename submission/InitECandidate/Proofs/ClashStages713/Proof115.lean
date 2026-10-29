import InitECandidate.Proofs.ClashStages713.Proof114
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree11040_agree : tree11040 = literal11040 := by
  rw [tree11040_def, tree11038_agree, tree11039_agree]
  rfl
theorem node11040_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11040 live11040 coloured11040 = result11040 := by
  rw [tree11040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11038_eq
  unfold live11038 coloured11038 at child
  try dsimp only [live11040, coloured11040]
  rw [child]
  dsimp only [result11038]
  have child := node11039_eq
  unfold live11039 coloured11039 at child
  try dsimp only [live11040, coloured11040]
  rw [child]
  dsimp only [result11039]
  try dsimp only [colour, result11040]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11041_agree : tree11041 = literal11041 := by
  rw [tree11041_def]
  rfl
theorem node11041_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11041 live11041 coloured11041 = result11041 := by
  rw [tree11041_def]
  try dsimp only [colour, result11041]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11042_agree : tree11042 = literal11042 := by
  rw [tree11042_def, tree11040_agree, tree11041_agree]
  rfl
theorem node11042_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11042 live11042 coloured11042 = result11042 := by
  rw [tree11042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11040_eq
  unfold live11040 coloured11040 at child
  try dsimp only [live11042, coloured11042]
  rw [child]
  dsimp only [result11040]
  have child := node11041_eq
  unfold live11041 coloured11041 at child
  try dsimp only [live11042, coloured11042]
  rw [child]
  dsimp only [result11041]
  try dsimp only [colour, result11042]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11043_agree : tree11043 = literal11043 := by
  rw [tree11043_def]
  rfl
theorem node11043_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11043 live11043 coloured11043 = result11043 := by
  rw [tree11043_def]
  try dsimp only [colour, result11043]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11044_agree : tree11044 = literal11044 := by
  rw [tree11044_def, tree11042_agree, tree11043_agree]
  rfl
theorem node11044_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11044 live11044 coloured11044 = result11044 := by
  rw [tree11044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11042_eq
  unfold live11042 coloured11042 at child
  try dsimp only [live11044, coloured11044]
  rw [child]
  dsimp only [result11042]
  have child := node11043_eq
  unfold live11043 coloured11043 at child
  try dsimp only [live11044, coloured11044]
  rw [child]
  dsimp only [result11043]
  try dsimp only [colour, result11044]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11045_agree : tree11045 = literal11045 := by
  rw [tree11045_def]
  rfl
theorem node11045_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11045 live11045 coloured11045 = result11045 := by
  rw [tree11045_def]
  try dsimp only [colour, result11045]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11046_agree : tree11046 = literal11046 := by
  rw [tree11046_def, tree11044_agree, tree11045_agree]
  rfl
theorem node11046_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11046 live11046 coloured11046 = result11046 := by
  rw [tree11046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11044_eq
  unfold live11044 coloured11044 at child
  try dsimp only [live11046, coloured11046]
  rw [child]
  dsimp only [result11044]
  have child := node11045_eq
  unfold live11045 coloured11045 at child
  try dsimp only [live11046, coloured11046]
  rw [child]
  dsimp only [result11045]
  try dsimp only [colour, result11046]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11047_agree : tree11047 = literal11047 := by
  rw [tree11047_def]
  rfl
theorem node11047_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11047 live11047 coloured11047 = result11047 := by
  rw [tree11047_def]
  try dsimp only [colour, result11047]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11048_agree : tree11048 = literal11048 := by
  rw [tree11048_def, tree11046_agree, tree11047_agree]
  rfl
theorem node11048_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11048 live11048 coloured11048 = result11048 := by
  rw [tree11048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11046_eq
  unfold live11046 coloured11046 at child
  try dsimp only [live11048, coloured11048]
  rw [child]
  dsimp only [result11046]
  have child := node11047_eq
  unfold live11047 coloured11047 at child
  try dsimp only [live11048, coloured11048]
  rw [child]
  dsimp only [result11047]
  try dsimp only [colour, result11048]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11049_agree : tree11049 = literal11049 := by
  rw [tree11049_def]
  rfl
theorem node11049_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11049 live11049 coloured11049 = result11049 := by
  rw [tree11049_def]
  try dsimp only [colour, result11049]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11050_agree : tree11050 = literal11050 := by
  rw [tree11050_def, tree11048_agree, tree11049_agree]
  rfl
theorem node11050_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11050 live11050 coloured11050 = result11050 := by
  rw [tree11050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11048_eq
  unfold live11048 coloured11048 at child
  try dsimp only [live11050, coloured11050]
  rw [child]
  dsimp only [result11048]
  have child := node11049_eq
  unfold live11049 coloured11049 at child
  try dsimp only [live11050, coloured11050]
  rw [child]
  dsimp only [result11049]
  try dsimp only [colour, result11050]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11051_agree : tree11051 = literal11051 := by
  rw [tree11051_def]
  rfl
theorem node11051_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11051 live11051 coloured11051 = result11051 := by
  rw [tree11051_def]
  try dsimp only [colour, result11051]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11052_agree : tree11052 = literal11052 := by
  rw [tree11052_def, tree11050_agree, tree11051_agree]
  rfl
theorem node11052_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11052 live11052 coloured11052 = result11052 := by
  rw [tree11052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11050_eq
  unfold live11050 coloured11050 at child
  try dsimp only [live11052, coloured11052]
  rw [child]
  dsimp only [result11050]
  have child := node11051_eq
  unfold live11051 coloured11051 at child
  try dsimp only [live11052, coloured11052]
  rw [child]
  dsimp only [result11051]
  try dsimp only [colour, result11052]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11053_agree : tree11053 = literal11053 := by
  rw [tree11053_def]
  rfl
theorem node11053_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11053 live11053 coloured11053 = result11053 := by
  rw [tree11053_def]
  try dsimp only [colour, result11053]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11054_agree : tree11054 = literal11054 := by
  rw [tree11054_def, tree11052_agree, tree11053_agree]
  rfl
theorem node11054_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11054 live11054 coloured11054 = result11054 := by
  rw [tree11054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11052_eq
  unfold live11052 coloured11052 at child
  try dsimp only [live11054, coloured11054]
  rw [child]
  dsimp only [result11052]
  have child := node11053_eq
  unfold live11053 coloured11053 at child
  try dsimp only [live11054, coloured11054]
  rw [child]
  dsimp only [result11053]
  try dsimp only [colour, result11054]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11055_agree : tree11055 = literal11055 := by
  rw [tree11055_def]
  rfl
theorem node11055_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11055 live11055 coloured11055 = result11055 := by
  rw [tree11055_def]
  try dsimp only [colour, result11055]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11056_agree : tree11056 = literal11056 := by
  rw [tree11056_def, tree11054_agree, tree11055_agree]
  rfl
theorem node11056_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11056 live11056 coloured11056 = result11056 := by
  rw [tree11056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11054_eq
  unfold live11054 coloured11054 at child
  try dsimp only [live11056, coloured11056]
  rw [child]
  dsimp only [result11054]
  have child := node11055_eq
  unfold live11055 coloured11055 at child
  try dsimp only [live11056, coloured11056]
  rw [child]
  dsimp only [result11055]
  try dsimp only [colour, result11056]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11057_agree : tree11057 = literal11057 := by
  rw [tree11057_def]
  rfl
theorem node11057_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11057 live11057 coloured11057 = result11057 := by
  rw [tree11057_def]
  try dsimp only [colour, result11057]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11058_agree : tree11058 = literal11058 := by
  rw [tree11058_def, tree11056_agree, tree11057_agree]
  rfl
theorem node11058_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11058 live11058 coloured11058 = result11058 := by
  rw [tree11058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11056_eq
  unfold live11056 coloured11056 at child
  try dsimp only [live11058, coloured11058]
  rw [child]
  dsimp only [result11056]
  have child := node11057_eq
  unfold live11057 coloured11057 at child
  try dsimp only [live11058, coloured11058]
  rw [child]
  dsimp only [result11057]
  try dsimp only [colour, result11058]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11059_agree : tree11059 = literal11059 := by
  rw [tree11059_def]
  rfl
theorem node11059_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11059 live11059 coloured11059 = result11059 := by
  rw [tree11059_def]
  try dsimp only [colour, result11059]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11060_agree : tree11060 = literal11060 := by
  rw [tree11060_def, tree11058_agree, tree11059_agree]
  rfl
theorem node11060_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11060 live11060 coloured11060 = result11060 := by
  rw [tree11060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11058_eq
  unfold live11058 coloured11058 at child
  try dsimp only [live11060, coloured11060]
  rw [child]
  dsimp only [result11058]
  have child := node11059_eq
  unfold live11059 coloured11059 at child
  try dsimp only [live11060, coloured11060]
  rw [child]
  dsimp only [result11059]
  try dsimp only [colour, result11060]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11061_agree : tree11061 = literal11061 := by
  rw [tree11061_def]
  rfl
theorem node11061_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11061 live11061 coloured11061 = result11061 := by
  rw [tree11061_def]
  try dsimp only [colour, result11061]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11062_agree : tree11062 = literal11062 := by
  rw [tree11062_def, tree11060_agree, tree11061_agree]
  rfl
theorem node11062_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11062 live11062 coloured11062 = result11062 := by
  rw [tree11062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11060_eq
  unfold live11060 coloured11060 at child
  try dsimp only [live11062, coloured11062]
  rw [child]
  dsimp only [result11060]
  have child := node11061_eq
  unfold live11061 coloured11061 at child
  try dsimp only [live11062, coloured11062]
  rw [child]
  dsimp only [result11061]
  try dsimp only [colour, result11062]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11063_agree : tree11063 = literal11063 := by
  rw [tree11063_def]
  rfl
theorem node11063_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11063 live11063 coloured11063 = result11063 := by
  rw [tree11063_def]
  try dsimp only [colour, result11063]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11064_agree : tree11064 = literal11064 := by
  rw [tree11064_def, tree11062_agree, tree11063_agree]
  rfl
theorem node11064_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11064 live11064 coloured11064 = result11064 := by
  rw [tree11064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11062_eq
  unfold live11062 coloured11062 at child
  try dsimp only [live11064, coloured11064]
  rw [child]
  dsimp only [result11062]
  have child := node11063_eq
  unfold live11063 coloured11063 at child
  try dsimp only [live11064, coloured11064]
  rw [child]
  dsimp only [result11063]
  try dsimp only [colour, result11064]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11065_agree : tree11065 = literal11065 := by
  rw [tree11065_def]
  rfl
theorem node11065_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11065 live11065 coloured11065 = result11065 := by
  rw [tree11065_def]
  try dsimp only [colour, result11065]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11066_agree : tree11066 = literal11066 := by
  rw [tree11066_def, tree11064_agree, tree11065_agree]
  rfl
theorem node11066_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11066 live11066 coloured11066 = result11066 := by
  rw [tree11066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11064_eq
  unfold live11064 coloured11064 at child
  try dsimp only [live11066, coloured11066]
  rw [child]
  dsimp only [result11064]
  have child := node11065_eq
  unfold live11065 coloured11065 at child
  try dsimp only [live11066, coloured11066]
  rw [child]
  dsimp only [result11065]
  try dsimp only [colour, result11066]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11067_agree : tree11067 = literal11067 := by
  rw [tree11067_def]
  rfl
theorem node11067_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11067 live11067 coloured11067 = result11067 := by
  rw [tree11067_def]
  try dsimp only [colour, result11067]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11068_agree : tree11068 = literal11068 := by
  rw [tree11068_def, tree11066_agree, tree11067_agree]
  rfl
theorem node11068_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11068 live11068 coloured11068 = result11068 := by
  rw [tree11068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11066_eq
  unfold live11066 coloured11066 at child
  try dsimp only [live11068, coloured11068]
  rw [child]
  dsimp only [result11066]
  have child := node11067_eq
  unfold live11067 coloured11067 at child
  try dsimp only [live11068, coloured11068]
  rw [child]
  dsimp only [result11067]
  try dsimp only [colour, result11068]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11069_agree : tree11069 = literal11069 := by
  rw [tree11069_def]
  rfl
theorem node11069_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11069 live11069 coloured11069 = result11069 := by
  rw [tree11069_def]
  try dsimp only [colour, result11069]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11070_agree : tree11070 = literal11070 := by
  rw [tree11070_def, tree11068_agree, tree11069_agree]
  rfl
theorem node11070_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11070 live11070 coloured11070 = result11070 := by
  rw [tree11070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11068_eq
  unfold live11068 coloured11068 at child
  try dsimp only [live11070, coloured11070]
  rw [child]
  dsimp only [result11068]
  have child := node11069_eq
  unfold live11069 coloured11069 at child
  try dsimp only [live11070, coloured11070]
  rw [child]
  dsimp only [result11069]
  try dsimp only [colour, result11070]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11071_agree : tree11071 = literal11071 := by
  rw [tree11071_def]
  rfl
theorem node11071_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11071 live11071 coloured11071 = result11071 := by
  rw [tree11071_def]
  try dsimp only [colour, result11071]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11072_agree : tree11072 = literal11072 := by
  rw [tree11072_def, tree11070_agree, tree11071_agree]
  rfl
theorem node11072_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11072 live11072 coloured11072 = result11072 := by
  rw [tree11072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11070_eq
  unfold live11070 coloured11070 at child
  try dsimp only [live11072, coloured11072]
  rw [child]
  dsimp only [result11070]
  have child := node11071_eq
  unfold live11071 coloured11071 at child
  try dsimp only [live11072, coloured11072]
  rw [child]
  dsimp only [result11071]
  try dsimp only [colour, result11072]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11073_agree : tree11073 = literal11073 := by
  rw [tree11073_def]
  rfl
theorem node11073_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11073 live11073 coloured11073 = result11073 := by
  rw [tree11073_def]
  try dsimp only [colour, result11073]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11074_agree : tree11074 = literal11074 := by
  rw [tree11074_def, tree11072_agree, tree11073_agree]
  rfl
theorem node11074_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11074 live11074 coloured11074 = result11074 := by
  rw [tree11074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11072_eq
  unfold live11072 coloured11072 at child
  try dsimp only [live11074, coloured11074]
  rw [child]
  dsimp only [result11072]
  have child := node11073_eq
  unfold live11073 coloured11073 at child
  try dsimp only [live11074, coloured11074]
  rw [child]
  dsimp only [result11073]
  try dsimp only [colour, result11074]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11075_agree : tree11075 = literal11075 := by
  rw [tree11075_def]
  rfl
theorem node11075_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11075 live11075 coloured11075 = result11075 := by
  rw [tree11075_def]
  try dsimp only [colour, result11075]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11076_agree : tree11076 = literal11076 := by
  rw [tree11076_def, tree11074_agree, tree11075_agree]
  rfl
theorem node11076_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11076 live11076 coloured11076 = result11076 := by
  rw [tree11076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11074_eq
  unfold live11074 coloured11074 at child
  try dsimp only [live11076, coloured11076]
  rw [child]
  dsimp only [result11074]
  have child := node11075_eq
  unfold live11075 coloured11075 at child
  try dsimp only [live11076, coloured11076]
  rw [child]
  dsimp only [result11075]
  try dsimp only [colour, result11076]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11077_agree : tree11077 = literal11077 := by
  rw [tree11077_def]
  rfl
theorem node11077_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11077 live11077 coloured11077 = result11077 := by
  rw [tree11077_def]
  try dsimp only [colour, result11077]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11078_agree : tree11078 = literal11078 := by
  rw [tree11078_def, tree11076_agree, tree11077_agree]
  rfl
theorem node11078_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11078 live11078 coloured11078 = result11078 := by
  rw [tree11078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11076_eq
  unfold live11076 coloured11076 at child
  try dsimp only [live11078, coloured11078]
  rw [child]
  dsimp only [result11076]
  have child := node11077_eq
  unfold live11077 coloured11077 at child
  try dsimp only [live11078, coloured11078]
  rw [child]
  dsimp only [result11077]
  try dsimp only [colour, result11078]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11079_agree : tree11079 = literal11079 := by
  rw [tree11079_def]
  rfl
theorem node11079_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11079 live11079 coloured11079 = result11079 := by
  rw [tree11079_def]
  try dsimp only [colour, result11079]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11080_agree : tree11080 = literal11080 := by
  rw [tree11080_def, tree11078_agree, tree11079_agree]
  rfl
theorem node11080_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11080 live11080 coloured11080 = result11080 := by
  rw [tree11080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11078_eq
  unfold live11078 coloured11078 at child
  try dsimp only [live11080, coloured11080]
  rw [child]
  dsimp only [result11078]
  have child := node11079_eq
  unfold live11079 coloured11079 at child
  try dsimp only [live11080, coloured11080]
  rw [child]
  dsimp only [result11079]
  try dsimp only [colour, result11080]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11081_agree : tree11081 = literal11081 := by
  rw [tree11081_def]
  rfl
theorem node11081_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11081 live11081 coloured11081 = result11081 := by
  rw [tree11081_def]
  try dsimp only [colour, result11081]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11082_agree : tree11082 = literal11082 := by
  rw [tree11082_def, tree11080_agree, tree11081_agree]
  rfl
theorem node11082_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11082 live11082 coloured11082 = result11082 := by
  rw [tree11082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11080_eq
  unfold live11080 coloured11080 at child
  try dsimp only [live11082, coloured11082]
  rw [child]
  dsimp only [result11080]
  have child := node11081_eq
  unfold live11081 coloured11081 at child
  try dsimp only [live11082, coloured11082]
  rw [child]
  dsimp only [result11081]
  try dsimp only [colour, result11082]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11083_agree : tree11083 = literal11083 := by
  rw [tree11083_def]
  rfl
theorem node11083_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11083 live11083 coloured11083 = result11083 := by
  rw [tree11083_def]
  try dsimp only [colour, result11083]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11084_agree : tree11084 = literal11084 := by
  rw [tree11084_def, tree11082_agree, tree11083_agree]
  rfl
theorem node11084_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11084 live11084 coloured11084 = result11084 := by
  rw [tree11084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11082_eq
  unfold live11082 coloured11082 at child
  try dsimp only [live11084, coloured11084]
  rw [child]
  dsimp only [result11082]
  have child := node11083_eq
  unfold live11083 coloured11083 at child
  try dsimp only [live11084, coloured11084]
  rw [child]
  dsimp only [result11083]
  try dsimp only [colour, result11084]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11085_agree : tree11085 = literal11085 := by
  rw [tree11085_def]
  rfl
theorem node11085_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11085 live11085 coloured11085 = result11085 := by
  rw [tree11085_def]
  try dsimp only [colour, result11085]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11086_agree : tree11086 = literal11086 := by
  rw [tree11086_def, tree11084_agree, tree11085_agree]
  rfl
theorem node11086_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11086 live11086 coloured11086 = result11086 := by
  rw [tree11086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11084_eq
  unfold live11084 coloured11084 at child
  try dsimp only [live11086, coloured11086]
  rw [child]
  dsimp only [result11084]
  have child := node11085_eq
  unfold live11085 coloured11085 at child
  try dsimp only [live11086, coloured11086]
  rw [child]
  dsimp only [result11085]
  try dsimp only [colour, result11086]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11087_agree : tree11087 = literal11087 := by
  rw [tree11087_def]
  rfl
theorem node11087_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11087 live11087 coloured11087 = result11087 := by
  rw [tree11087_def]
  try dsimp only [colour, result11087]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11088_agree : tree11088 = literal11088 := by
  rw [tree11088_def, tree11086_agree, tree11087_agree]
  rfl
theorem node11088_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11088 live11088 coloured11088 = result11088 := by
  rw [tree11088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11086_eq
  unfold live11086 coloured11086 at child
  try dsimp only [live11088, coloured11088]
  rw [child]
  dsimp only [result11086]
  have child := node11087_eq
  unfold live11087 coloured11087 at child
  try dsimp only [live11088, coloured11088]
  rw [child]
  dsimp only [result11087]
  try dsimp only [colour, result11088]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11089_agree : tree11089 = literal11089 := by
  rw [tree11089_def]
  rfl
theorem node11089_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11089 live11089 coloured11089 = result11089 := by
  rw [tree11089_def]
  try dsimp only [colour, result11089]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11090_agree : tree11090 = literal11090 := by
  rw [tree11090_def, tree11088_agree, tree11089_agree]
  rfl
theorem node11090_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11090 live11090 coloured11090 = result11090 := by
  rw [tree11090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11088_eq
  unfold live11088 coloured11088 at child
  try dsimp only [live11090, coloured11090]
  rw [child]
  dsimp only [result11088]
  have child := node11089_eq
  unfold live11089 coloured11089 at child
  try dsimp only [live11090, coloured11090]
  rw [child]
  dsimp only [result11089]
  try dsimp only [colour, result11090]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11091_agree : tree11091 = literal11091 := by
  rw [tree11091_def]
  rfl
theorem node11091_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11091 live11091 coloured11091 = result11091 := by
  rw [tree11091_def]
  try dsimp only [colour, result11091]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11092_agree : tree11092 = literal11092 := by
  rw [tree11092_def, tree11090_agree, tree11091_agree]
  rfl
theorem node11092_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11092 live11092 coloured11092 = result11092 := by
  rw [tree11092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11090_eq
  unfold live11090 coloured11090 at child
  try dsimp only [live11092, coloured11092]
  rw [child]
  dsimp only [result11090]
  have child := node11091_eq
  unfold live11091 coloured11091 at child
  try dsimp only [live11092, coloured11092]
  rw [child]
  dsimp only [result11091]
  try dsimp only [colour, result11092]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11093_agree : tree11093 = literal11093 := by
  rw [tree11093_def]
  rfl
theorem node11093_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11093 live11093 coloured11093 = result11093 := by
  rw [tree11093_def]
  try dsimp only [colour, result11093]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11094_agree : tree11094 = literal11094 := by
  rw [tree11094_def, tree11092_agree, tree11093_agree]
  rfl
theorem node11094_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11094 live11094 coloured11094 = result11094 := by
  rw [tree11094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11092_eq
  unfold live11092 coloured11092 at child
  try dsimp only [live11094, coloured11094]
  rw [child]
  dsimp only [result11092]
  have child := node11093_eq
  unfold live11093 coloured11093 at child
  try dsimp only [live11094, coloured11094]
  rw [child]
  dsimp only [result11093]
  try dsimp only [colour, result11094]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11095_agree : tree11095 = literal11095 := by
  rw [tree11095_def]
  rfl
theorem node11095_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11095 live11095 coloured11095 = result11095 := by
  rw [tree11095_def]
  try dsimp only [colour, result11095]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11096_agree : tree11096 = literal11096 := by
  rw [tree11096_def, tree11094_agree, tree11095_agree]
  rfl
theorem node11096_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11096 live11096 coloured11096 = result11096 := by
  rw [tree11096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11094_eq
  unfold live11094 coloured11094 at child
  try dsimp only [live11096, coloured11096]
  rw [child]
  dsimp only [result11094]
  have child := node11095_eq
  unfold live11095 coloured11095 at child
  try dsimp only [live11096, coloured11096]
  rw [child]
  dsimp only [result11095]
  try dsimp only [colour, result11096]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11097_agree : tree11097 = literal11097 := by
  rw [tree11097_def]
  rfl
theorem node11097_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11097 live11097 coloured11097 = result11097 := by
  rw [tree11097_def]
  try dsimp only [colour, result11097]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11098_agree : tree11098 = literal11098 := by
  rw [tree11098_def, tree11096_agree, tree11097_agree]
  rfl
theorem node11098_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11098 live11098 coloured11098 = result11098 := by
  rw [tree11098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11096_eq
  unfold live11096 coloured11096 at child
  try dsimp only [live11098, coloured11098]
  rw [child]
  dsimp only [result11096]
  have child := node11097_eq
  unfold live11097 coloured11097 at child
  try dsimp only [live11098, coloured11098]
  rw [child]
  dsimp only [result11097]
  try dsimp only [colour, result11098]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11099_agree : tree11099 = literal11099 := by
  rw [tree11099_def]
  rfl
theorem node11099_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11099 live11099 coloured11099 = result11099 := by
  rw [tree11099_def]
  try dsimp only [colour, result11099]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11100_agree : tree11100 = literal11100 := by
  rw [tree11100_def, tree11098_agree, tree11099_agree]
  rfl
theorem node11100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11100 live11100 coloured11100 = result11100 := by
  rw [tree11100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11098_eq
  unfold live11098 coloured11098 at child
  try dsimp only [live11100, coloured11100]
  rw [child]
  dsimp only [result11098]
  have child := node11099_eq
  unfold live11099 coloured11099 at child
  try dsimp only [live11100, coloured11100]
  rw [child]
  dsimp only [result11099]
  try dsimp only [colour, result11100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11101_agree : tree11101 = literal11101 := by
  rw [tree11101_def]
  rfl
theorem node11101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11101 live11101 coloured11101 = result11101 := by
  rw [tree11101_def]
  try dsimp only [colour, result11101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11102_agree : tree11102 = literal11102 := by
  rw [tree11102_def, tree11100_agree, tree11101_agree]
  rfl
theorem node11102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11102 live11102 coloured11102 = result11102 := by
  rw [tree11102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11100_eq
  unfold live11100 coloured11100 at child
  try dsimp only [live11102, coloured11102]
  rw [child]
  dsimp only [result11100]
  have child := node11101_eq
  unfold live11101 coloured11101 at child
  try dsimp only [live11102, coloured11102]
  rw [child]
  dsimp only [result11101]
  try dsimp only [colour, result11102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11103_agree : tree11103 = literal11103 := by
  rw [tree11103_def]
  rfl
theorem node11103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11103 live11103 coloured11103 = result11103 := by
  rw [tree11103_def]
  try dsimp only [colour, result11103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11104_agree : tree11104 = literal11104 := by
  rw [tree11104_def, tree11102_agree, tree11103_agree]
  rfl
theorem node11104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11104 live11104 coloured11104 = result11104 := by
  rw [tree11104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11102_eq
  unfold live11102 coloured11102 at child
  try dsimp only [live11104, coloured11104]
  rw [child]
  dsimp only [result11102]
  have child := node11103_eq
  unfold live11103 coloured11103 at child
  try dsimp only [live11104, coloured11104]
  rw [child]
  dsimp only [result11103]
  try dsimp only [colour, result11104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11105_agree : tree11105 = literal11105 := by
  rw [tree11105_def]
  rfl
theorem node11105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11105 live11105 coloured11105 = result11105 := by
  rw [tree11105_def]
  try dsimp only [colour, result11105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11106_agree : tree11106 = literal11106 := by
  rw [tree11106_def, tree11104_agree, tree11105_agree]
  rfl
theorem node11106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11106 live11106 coloured11106 = result11106 := by
  rw [tree11106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11104_eq
  unfold live11104 coloured11104 at child
  try dsimp only [live11106, coloured11106]
  rw [child]
  dsimp only [result11104]
  have child := node11105_eq
  unfold live11105 coloured11105 at child
  try dsimp only [live11106, coloured11106]
  rw [child]
  dsimp only [result11105]
  try dsimp only [colour, result11106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11107_agree : tree11107 = literal11107 := by
  rw [tree11107_def]
  rfl
theorem node11107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11107 live11107 coloured11107 = result11107 := by
  rw [tree11107_def]
  try dsimp only [colour, result11107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11108_agree : tree11108 = literal11108 := by
  rw [tree11108_def, tree11106_agree, tree11107_agree]
  rfl
theorem node11108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11108 live11108 coloured11108 = result11108 := by
  rw [tree11108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11106_eq
  unfold live11106 coloured11106 at child
  try dsimp only [live11108, coloured11108]
  rw [child]
  dsimp only [result11106]
  have child := node11107_eq
  unfold live11107 coloured11107 at child
  try dsimp only [live11108, coloured11108]
  rw [child]
  dsimp only [result11107]
  try dsimp only [colour, result11108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11109_agree : tree11109 = literal11109 := by
  rw [tree11109_def]
  rfl
theorem node11109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11109 live11109 coloured11109 = result11109 := by
  rw [tree11109_def]
  try dsimp only [colour, result11109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11110_agree : tree11110 = literal11110 := by
  rw [tree11110_def, tree11108_agree, tree11109_agree]
  rfl
theorem node11110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11110 live11110 coloured11110 = result11110 := by
  rw [tree11110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11108_eq
  unfold live11108 coloured11108 at child
  try dsimp only [live11110, coloured11110]
  rw [child]
  dsimp only [result11108]
  have child := node11109_eq
  unfold live11109 coloured11109 at child
  try dsimp only [live11110, coloured11110]
  rw [child]
  dsimp only [result11109]
  try dsimp only [colour, result11110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11111_agree : tree11111 = literal11111 := by
  rw [tree11111_def]
  rfl
theorem node11111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11111 live11111 coloured11111 = result11111 := by
  rw [tree11111_def]
  try dsimp only [colour, result11111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11112_agree : tree11112 = literal11112 := by
  rw [tree11112_def, tree11110_agree, tree11111_agree]
  rfl
theorem node11112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11112 live11112 coloured11112 = result11112 := by
  rw [tree11112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11110_eq
  unfold live11110 coloured11110 at child
  try dsimp only [live11112, coloured11112]
  rw [child]
  dsimp only [result11110]
  have child := node11111_eq
  unfold live11111 coloured11111 at child
  try dsimp only [live11112, coloured11112]
  rw [child]
  dsimp only [result11111]
  try dsimp only [colour, result11112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11113_agree : tree11113 = literal11113 := by
  rw [tree11113_def]
  rfl
theorem node11113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11113 live11113 coloured11113 = result11113 := by
  rw [tree11113_def]
  try dsimp only [colour, result11113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11114_agree : tree11114 = literal11114 := by
  rw [tree11114_def, tree11112_agree, tree11113_agree]
  rfl
theorem node11114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11114 live11114 coloured11114 = result11114 := by
  rw [tree11114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11112_eq
  unfold live11112 coloured11112 at child
  try dsimp only [live11114, coloured11114]
  rw [child]
  dsimp only [result11112]
  have child := node11113_eq
  unfold live11113 coloured11113 at child
  try dsimp only [live11114, coloured11114]
  rw [child]
  dsimp only [result11113]
  try dsimp only [colour, result11114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11115_agree : tree11115 = literal11115 := by
  rw [tree11115_def]
  rfl
theorem node11115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11115 live11115 coloured11115 = result11115 := by
  rw [tree11115_def]
  try dsimp only [colour, result11115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11116_agree : tree11116 = literal11116 := by
  rw [tree11116_def, tree11114_agree, tree11115_agree]
  rfl
theorem node11116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11116 live11116 coloured11116 = result11116 := by
  rw [tree11116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11114_eq
  unfold live11114 coloured11114 at child
  try dsimp only [live11116, coloured11116]
  rw [child]
  dsimp only [result11114]
  have child := node11115_eq
  unfold live11115 coloured11115 at child
  try dsimp only [live11116, coloured11116]
  rw [child]
  dsimp only [result11115]
  try dsimp only [colour, result11116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11117_agree : tree11117 = literal11117 := by
  rw [tree11117_def]
  rfl
theorem node11117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11117 live11117 coloured11117 = result11117 := by
  rw [tree11117_def]
  try dsimp only [colour, result11117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11118_agree : tree11118 = literal11118 := by
  rw [tree11118_def, tree11116_agree, tree11117_agree]
  rfl
theorem node11118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11118 live11118 coloured11118 = result11118 := by
  rw [tree11118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11116_eq
  unfold live11116 coloured11116 at child
  try dsimp only [live11118, coloured11118]
  rw [child]
  dsimp only [result11116]
  have child := node11117_eq
  unfold live11117 coloured11117 at child
  try dsimp only [live11118, coloured11118]
  rw [child]
  dsimp only [result11117]
  try dsimp only [colour, result11118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11119_agree : tree11119 = literal11119 := by
  rw [tree11119_def]
  rfl
theorem node11119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11119 live11119 coloured11119 = result11119 := by
  rw [tree11119_def]
  try dsimp only [colour, result11119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11120_agree : tree11120 = literal11120 := by
  rw [tree11120_def, tree11118_agree, tree11119_agree]
  rfl
theorem node11120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11120 live11120 coloured11120 = result11120 := by
  rw [tree11120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11118_eq
  unfold live11118 coloured11118 at child
  try dsimp only [live11120, coloured11120]
  rw [child]
  dsimp only [result11118]
  have child := node11119_eq
  unfold live11119 coloured11119 at child
  try dsimp only [live11120, coloured11120]
  rw [child]
  dsimp only [result11119]
  try dsimp only [colour, result11120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11121_agree : tree11121 = literal11121 := by
  rw [tree11121_def]
  rfl
theorem node11121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11121 live11121 coloured11121 = result11121 := by
  rw [tree11121_def]
  try dsimp only [colour, result11121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11122_agree : tree11122 = literal11122 := by
  rw [tree11122_def, tree11120_agree, tree11121_agree]
  rfl
theorem node11122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11122 live11122 coloured11122 = result11122 := by
  rw [tree11122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11120_eq
  unfold live11120 coloured11120 at child
  try dsimp only [live11122, coloured11122]
  rw [child]
  dsimp only [result11120]
  have child := node11121_eq
  unfold live11121 coloured11121 at child
  try dsimp only [live11122, coloured11122]
  rw [child]
  dsimp only [result11121]
  try dsimp only [colour, result11122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11123_agree : tree11123 = literal11123 := by
  rw [tree11123_def]
  rfl
theorem node11123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11123 live11123 coloured11123 = result11123 := by
  rw [tree11123_def]
  try dsimp only [colour, result11123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11124_agree : tree11124 = literal11124 := by
  rw [tree11124_def, tree11122_agree, tree11123_agree]
  rfl
theorem node11124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11124 live11124 coloured11124 = result11124 := by
  rw [tree11124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11122_eq
  unfold live11122 coloured11122 at child
  try dsimp only [live11124, coloured11124]
  rw [child]
  dsimp only [result11122]
  have child := node11123_eq
  unfold live11123 coloured11123 at child
  try dsimp only [live11124, coloured11124]
  rw [child]
  dsimp only [result11123]
  try dsimp only [colour, result11124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11125_agree : tree11125 = literal11125 := by
  rw [tree11125_def]
  rfl
theorem node11125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11125 live11125 coloured11125 = result11125 := by
  rw [tree11125_def]
  try dsimp only [colour, result11125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11126_agree : tree11126 = literal11126 := by
  rw [tree11126_def, tree11124_agree, tree11125_agree]
  rfl
theorem node11126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11126 live11126 coloured11126 = result11126 := by
  rw [tree11126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11124_eq
  unfold live11124 coloured11124 at child
  try dsimp only [live11126, coloured11126]
  rw [child]
  dsimp only [result11124]
  have child := node11125_eq
  unfold live11125 coloured11125 at child
  try dsimp only [live11126, coloured11126]
  rw [child]
  dsimp only [result11125]
  try dsimp only [colour, result11126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11127_agree : tree11127 = literal11127 := by
  rw [tree11127_def]
  rfl
theorem node11127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11127 live11127 coloured11127 = result11127 := by
  rw [tree11127_def]
  try dsimp only [colour, result11127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11128_agree : tree11128 = literal11128 := by
  rw [tree11128_def, tree11126_agree, tree11127_agree]
  rfl
theorem node11128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11128 live11128 coloured11128 = result11128 := by
  rw [tree11128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11126_eq
  unfold live11126 coloured11126 at child
  try dsimp only [live11128, coloured11128]
  rw [child]
  dsimp only [result11126]
  have child := node11127_eq
  unfold live11127 coloured11127 at child
  try dsimp only [live11128, coloured11128]
  rw [child]
  dsimp only [result11127]
  try dsimp only [colour, result11128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11129_agree : tree11129 = literal11129 := by
  rw [tree11129_def]
  rfl
theorem node11129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11129 live11129 coloured11129 = result11129 := by
  rw [tree11129_def]
  try dsimp only [colour, result11129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11130_agree : tree11130 = literal11130 := by
  rw [tree11130_def, tree11128_agree, tree11129_agree]
  rfl
theorem node11130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11130 live11130 coloured11130 = result11130 := by
  rw [tree11130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11128_eq
  unfold live11128 coloured11128 at child
  try dsimp only [live11130, coloured11130]
  rw [child]
  dsimp only [result11128]
  have child := node11129_eq
  unfold live11129 coloured11129 at child
  try dsimp only [live11130, coloured11130]
  rw [child]
  dsimp only [result11129]
  try dsimp only [colour, result11130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11131_agree : tree11131 = literal11131 := by
  rw [tree11131_def]
  rfl
theorem node11131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11131 live11131 coloured11131 = result11131 := by
  rw [tree11131_def]
  try dsimp only [colour, result11131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11132_agree : tree11132 = literal11132 := by
  rw [tree11132_def, tree11130_agree, tree11131_agree]
  rfl
theorem node11132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11132 live11132 coloured11132 = result11132 := by
  rw [tree11132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11130_eq
  unfold live11130 coloured11130 at child
  try dsimp only [live11132, coloured11132]
  rw [child]
  dsimp only [result11130]
  have child := node11131_eq
  unfold live11131 coloured11131 at child
  try dsimp only [live11132, coloured11132]
  rw [child]
  dsimp only [result11131]
  try dsimp only [colour, result11132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11133_agree : tree11133 = literal11133 := by
  rw [tree11133_def]
  rfl
theorem node11133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11133 live11133 coloured11133 = result11133 := by
  rw [tree11133_def]
  try dsimp only [colour, result11133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11134_agree : tree11134 = literal11134 := by
  rw [tree11134_def, tree11132_agree, tree11133_agree]
  rfl
theorem node11134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11134 live11134 coloured11134 = result11134 := by
  rw [tree11134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11132_eq
  unfold live11132 coloured11132 at child
  try dsimp only [live11134, coloured11134]
  rw [child]
  dsimp only [result11132]
  have child := node11133_eq
  unfold live11133 coloured11133 at child
  try dsimp only [live11134, coloured11134]
  rw [child]
  dsimp only [result11133]
  try dsimp only [colour, result11134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11135_agree : tree11135 = literal11135 := by
  rw [tree11135_def]
  rfl
theorem node11135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11135 live11135 coloured11135 = result11135 := by
  rw [tree11135_def]
  try dsimp only [colour, result11135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
