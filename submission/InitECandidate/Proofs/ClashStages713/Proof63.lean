import InitECandidate.Proofs.ClashStages713.Proof62
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree6048_agree : tree6048 = literal6048 := by
  rw [tree6048_def, tree6046_agree, tree6047_agree]
  rfl
theorem node6048_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6048 live6048 coloured6048 = result6048 := by
  rw [tree6048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6046_eq
  unfold live6046 coloured6046 at child
  try dsimp only [live6048, coloured6048]
  rw [child]
  dsimp only [result6046]
  have child := node6047_eq
  unfold live6047 coloured6047 at child
  try dsimp only [live6048, coloured6048]
  rw [child]
  dsimp only [result6047]
  try dsimp only [colour, result6048]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6049_agree : tree6049 = literal6049 := by
  rw [tree6049_def]
  rfl
theorem node6049_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6049 live6049 coloured6049 = result6049 := by
  rw [tree6049_def]
  try dsimp only [colour, result6049]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6050_agree : tree6050 = literal6050 := by
  rw [tree6050_def, tree6048_agree, tree6049_agree]
  rfl
theorem node6050_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6050 live6050 coloured6050 = result6050 := by
  rw [tree6050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6048_eq
  unfold live6048 coloured6048 at child
  try dsimp only [live6050, coloured6050]
  rw [child]
  dsimp only [result6048]
  have child := node6049_eq
  unfold live6049 coloured6049 at child
  try dsimp only [live6050, coloured6050]
  rw [child]
  dsimp only [result6049]
  try dsimp only [colour, result6050]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6051_agree : tree6051 = literal6051 := by
  rw [tree6051_def]
  rfl
theorem node6051_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6051 live6051 coloured6051 = result6051 := by
  rw [tree6051_def]
  try dsimp only [colour, result6051]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6052_agree : tree6052 = literal6052 := by
  rw [tree6052_def, tree6050_agree, tree6051_agree]
  rfl
theorem node6052_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6052 live6052 coloured6052 = result6052 := by
  rw [tree6052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6050_eq
  unfold live6050 coloured6050 at child
  try dsimp only [live6052, coloured6052]
  rw [child]
  dsimp only [result6050]
  have child := node6051_eq
  unfold live6051 coloured6051 at child
  try dsimp only [live6052, coloured6052]
  rw [child]
  dsimp only [result6051]
  try dsimp only [colour, result6052]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6053_agree : tree6053 = literal6053 := by
  rw [tree6053_def]
  rfl
theorem node6053_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6053 live6053 coloured6053 = result6053 := by
  rw [tree6053_def]
  try dsimp only [colour, result6053]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6054_agree : tree6054 = literal6054 := by
  rw [tree6054_def, tree6052_agree, tree6053_agree]
  rfl
theorem node6054_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6054 live6054 coloured6054 = result6054 := by
  rw [tree6054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6052_eq
  unfold live6052 coloured6052 at child
  try dsimp only [live6054, coloured6054]
  rw [child]
  dsimp only [result6052]
  have child := node6053_eq
  unfold live6053 coloured6053 at child
  try dsimp only [live6054, coloured6054]
  rw [child]
  dsimp only [result6053]
  try dsimp only [colour, result6054]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6055_agree : tree6055 = literal6055 := by
  rw [tree6055_def]
  rfl
theorem node6055_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6055 live6055 coloured6055 = result6055 := by
  rw [tree6055_def]
  try dsimp only [colour, result6055]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6056_agree : tree6056 = literal6056 := by
  rw [tree6056_def, tree6054_agree, tree6055_agree]
  rfl
theorem node6056_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6056 live6056 coloured6056 = result6056 := by
  rw [tree6056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6054_eq
  unfold live6054 coloured6054 at child
  try dsimp only [live6056, coloured6056]
  rw [child]
  dsimp only [result6054]
  have child := node6055_eq
  unfold live6055 coloured6055 at child
  try dsimp only [live6056, coloured6056]
  rw [child]
  dsimp only [result6055]
  try dsimp only [colour, result6056]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6057_agree : tree6057 = literal6057 := by
  rw [tree6057_def]
  rfl
theorem node6057_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6057 live6057 coloured6057 = result6057 := by
  rw [tree6057_def]
  try dsimp only [colour, result6057]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6058_agree : tree6058 = literal6058 := by
  rw [tree6058_def, tree6056_agree, tree6057_agree]
  rfl
theorem node6058_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6058 live6058 coloured6058 = result6058 := by
  rw [tree6058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6056_eq
  unfold live6056 coloured6056 at child
  try dsimp only [live6058, coloured6058]
  rw [child]
  dsimp only [result6056]
  have child := node6057_eq
  unfold live6057 coloured6057 at child
  try dsimp only [live6058, coloured6058]
  rw [child]
  dsimp only [result6057]
  try dsimp only [colour, result6058]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6059_agree : tree6059 = literal6059 := by
  rw [tree6059_def]
  rfl
theorem node6059_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6059 live6059 coloured6059 = result6059 := by
  rw [tree6059_def]
  try dsimp only [colour, result6059]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6060_agree : tree6060 = literal6060 := by
  rw [tree6060_def, tree6058_agree, tree6059_agree]
  rfl
theorem node6060_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6060 live6060 coloured6060 = result6060 := by
  rw [tree6060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6058_eq
  unfold live6058 coloured6058 at child
  try dsimp only [live6060, coloured6060]
  rw [child]
  dsimp only [result6058]
  have child := node6059_eq
  unfold live6059 coloured6059 at child
  try dsimp only [live6060, coloured6060]
  rw [child]
  dsimp only [result6059]
  try dsimp only [colour, result6060]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6061_agree : tree6061 = literal6061 := by
  rw [tree6061_def]
  rfl
theorem node6061_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6061 live6061 coloured6061 = result6061 := by
  rw [tree6061_def]
  try dsimp only [colour, result6061]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6062_agree : tree6062 = literal6062 := by
  rw [tree6062_def, tree6060_agree, tree6061_agree]
  rfl
theorem node6062_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6062 live6062 coloured6062 = result6062 := by
  rw [tree6062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6060_eq
  unfold live6060 coloured6060 at child
  try dsimp only [live6062, coloured6062]
  rw [child]
  dsimp only [result6060]
  have child := node6061_eq
  unfold live6061 coloured6061 at child
  try dsimp only [live6062, coloured6062]
  rw [child]
  dsimp only [result6061]
  try dsimp only [colour, result6062]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6063_agree : tree6063 = literal6063 := by
  rw [tree6063_def]
  rfl
theorem node6063_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6063 live6063 coloured6063 = result6063 := by
  rw [tree6063_def]
  try dsimp only [colour, result6063]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6064_agree : tree6064 = literal6064 := by
  rw [tree6064_def, tree6062_agree, tree6063_agree]
  rfl
theorem node6064_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6064 live6064 coloured6064 = result6064 := by
  rw [tree6064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6062_eq
  unfold live6062 coloured6062 at child
  try dsimp only [live6064, coloured6064]
  rw [child]
  dsimp only [result6062]
  have child := node6063_eq
  unfold live6063 coloured6063 at child
  try dsimp only [live6064, coloured6064]
  rw [child]
  dsimp only [result6063]
  try dsimp only [colour, result6064]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6065_agree : tree6065 = literal6065 := by
  rw [tree6065_def]
  rfl
theorem node6065_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6065 live6065 coloured6065 = result6065 := by
  rw [tree6065_def]
  try dsimp only [colour, result6065]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6066_agree : tree6066 = literal6066 := by
  rw [tree6066_def, tree6064_agree, tree6065_agree]
  rfl
theorem node6066_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6066 live6066 coloured6066 = result6066 := by
  rw [tree6066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6064_eq
  unfold live6064 coloured6064 at child
  try dsimp only [live6066, coloured6066]
  rw [child]
  dsimp only [result6064]
  have child := node6065_eq
  unfold live6065 coloured6065 at child
  try dsimp only [live6066, coloured6066]
  rw [child]
  dsimp only [result6065]
  try dsimp only [colour, result6066]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6067_agree : tree6067 = literal6067 := by
  rw [tree6067_def]
  rfl
theorem node6067_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6067 live6067 coloured6067 = result6067 := by
  rw [tree6067_def]
  try dsimp only [colour, result6067]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6068_agree : tree6068 = literal6068 := by
  rw [tree6068_def, tree6066_agree, tree6067_agree]
  rfl
theorem node6068_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6068 live6068 coloured6068 = result6068 := by
  rw [tree6068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6066_eq
  unfold live6066 coloured6066 at child
  try dsimp only [live6068, coloured6068]
  rw [child]
  dsimp only [result6066]
  have child := node6067_eq
  unfold live6067 coloured6067 at child
  try dsimp only [live6068, coloured6068]
  rw [child]
  dsimp only [result6067]
  try dsimp only [colour, result6068]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6069_agree : tree6069 = literal6069 := by
  rw [tree6069_def]
  rfl
theorem node6069_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6069 live6069 coloured6069 = result6069 := by
  rw [tree6069_def]
  try dsimp only [colour, result6069]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6070_agree : tree6070 = literal6070 := by
  rw [tree6070_def, tree6068_agree, tree6069_agree]
  rfl
theorem node6070_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6070 live6070 coloured6070 = result6070 := by
  rw [tree6070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6068_eq
  unfold live6068 coloured6068 at child
  try dsimp only [live6070, coloured6070]
  rw [child]
  dsimp only [result6068]
  have child := node6069_eq
  unfold live6069 coloured6069 at child
  try dsimp only [live6070, coloured6070]
  rw [child]
  dsimp only [result6069]
  try dsimp only [colour, result6070]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6071_agree : tree6071 = literal6071 := by
  rw [tree6071_def]
  rfl
theorem node6071_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6071 live6071 coloured6071 = result6071 := by
  rw [tree6071_def]
  try dsimp only [colour, result6071]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6072_agree : tree6072 = literal6072 := by
  rw [tree6072_def, tree6070_agree, tree6071_agree]
  rfl
theorem node6072_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6072 live6072 coloured6072 = result6072 := by
  rw [tree6072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6070_eq
  unfold live6070 coloured6070 at child
  try dsimp only [live6072, coloured6072]
  rw [child]
  dsimp only [result6070]
  have child := node6071_eq
  unfold live6071 coloured6071 at child
  try dsimp only [live6072, coloured6072]
  rw [child]
  dsimp only [result6071]
  try dsimp only [colour, result6072]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6073_agree : tree6073 = literal6073 := by
  rw [tree6073_def]
  rfl
theorem node6073_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6073 live6073 coloured6073 = result6073 := by
  rw [tree6073_def]
  try dsimp only [colour, result6073]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6074_agree : tree6074 = literal6074 := by
  rw [tree6074_def, tree6072_agree, tree6073_agree]
  rfl
theorem node6074_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6074 live6074 coloured6074 = result6074 := by
  rw [tree6074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6072_eq
  unfold live6072 coloured6072 at child
  try dsimp only [live6074, coloured6074]
  rw [child]
  dsimp only [result6072]
  have child := node6073_eq
  unfold live6073 coloured6073 at child
  try dsimp only [live6074, coloured6074]
  rw [child]
  dsimp only [result6073]
  try dsimp only [colour, result6074]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6075_agree : tree6075 = literal6075 := by
  rw [tree6075_def]
  rfl
theorem node6075_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6075 live6075 coloured6075 = result6075 := by
  rw [tree6075_def]
  try dsimp only [colour, result6075]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6076_agree : tree6076 = literal6076 := by
  rw [tree6076_def, tree6074_agree, tree6075_agree]
  rfl
theorem node6076_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6076 live6076 coloured6076 = result6076 := by
  rw [tree6076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6074_eq
  unfold live6074 coloured6074 at child
  try dsimp only [live6076, coloured6076]
  rw [child]
  dsimp only [result6074]
  have child := node6075_eq
  unfold live6075 coloured6075 at child
  try dsimp only [live6076, coloured6076]
  rw [child]
  dsimp only [result6075]
  try dsimp only [colour, result6076]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6077_agree : tree6077 = literal6077 := by
  rw [tree6077_def]
  rfl
theorem node6077_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6077 live6077 coloured6077 = result6077 := by
  rw [tree6077_def]
  try dsimp only [colour, result6077]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6078_agree : tree6078 = literal6078 := by
  rw [tree6078_def, tree6076_agree, tree6077_agree]
  rfl
theorem node6078_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6078 live6078 coloured6078 = result6078 := by
  rw [tree6078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6076_eq
  unfold live6076 coloured6076 at child
  try dsimp only [live6078, coloured6078]
  rw [child]
  dsimp only [result6076]
  have child := node6077_eq
  unfold live6077 coloured6077 at child
  try dsimp only [live6078, coloured6078]
  rw [child]
  dsimp only [result6077]
  try dsimp only [colour, result6078]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6079_agree : tree6079 = literal6079 := by
  rw [tree6079_def]
  rfl
theorem node6079_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6079 live6079 coloured6079 = result6079 := by
  rw [tree6079_def]
  try dsimp only [colour, result6079]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6080_agree : tree6080 = literal6080 := by
  rw [tree6080_def, tree6078_agree, tree6079_agree]
  rfl
theorem node6080_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6080 live6080 coloured6080 = result6080 := by
  rw [tree6080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6078_eq
  unfold live6078 coloured6078 at child
  try dsimp only [live6080, coloured6080]
  rw [child]
  dsimp only [result6078]
  have child := node6079_eq
  unfold live6079 coloured6079 at child
  try dsimp only [live6080, coloured6080]
  rw [child]
  dsimp only [result6079]
  try dsimp only [colour, result6080]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6081_agree : tree6081 = literal6081 := by
  rw [tree6081_def]
  rfl
theorem node6081_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6081 live6081 coloured6081 = result6081 := by
  rw [tree6081_def]
  try dsimp only [colour, result6081]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6082_agree : tree6082 = literal6082 := by
  rw [tree6082_def, tree6080_agree, tree6081_agree]
  rfl
theorem node6082_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6082 live6082 coloured6082 = result6082 := by
  rw [tree6082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6080_eq
  unfold live6080 coloured6080 at child
  try dsimp only [live6082, coloured6082]
  rw [child]
  dsimp only [result6080]
  have child := node6081_eq
  unfold live6081 coloured6081 at child
  try dsimp only [live6082, coloured6082]
  rw [child]
  dsimp only [result6081]
  try dsimp only [colour, result6082]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6083_agree : tree6083 = literal6083 := by
  rw [tree6083_def]
  rfl
theorem node6083_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6083 live6083 coloured6083 = result6083 := by
  rw [tree6083_def]
  try dsimp only [colour, result6083]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6084_agree : tree6084 = literal6084 := by
  rw [tree6084_def, tree6082_agree, tree6083_agree]
  rfl
theorem node6084_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6084 live6084 coloured6084 = result6084 := by
  rw [tree6084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6082_eq
  unfold live6082 coloured6082 at child
  try dsimp only [live6084, coloured6084]
  rw [child]
  dsimp only [result6082]
  have child := node6083_eq
  unfold live6083 coloured6083 at child
  try dsimp only [live6084, coloured6084]
  rw [child]
  dsimp only [result6083]
  try dsimp only [colour, result6084]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6085_agree : tree6085 = literal6085 := by
  rw [tree6085_def]
  rfl
theorem node6085_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6085 live6085 coloured6085 = result6085 := by
  rw [tree6085_def]
  try dsimp only [colour, result6085]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6086_agree : tree6086 = literal6086 := by
  rw [tree6086_def, tree6084_agree, tree6085_agree]
  rfl
theorem node6086_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6086 live6086 coloured6086 = result6086 := by
  rw [tree6086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6084_eq
  unfold live6084 coloured6084 at child
  try dsimp only [live6086, coloured6086]
  rw [child]
  dsimp only [result6084]
  have child := node6085_eq
  unfold live6085 coloured6085 at child
  try dsimp only [live6086, coloured6086]
  rw [child]
  dsimp only [result6085]
  try dsimp only [colour, result6086]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6087_agree : tree6087 = literal6087 := by
  rw [tree6087_def]
  rfl
theorem node6087_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6087 live6087 coloured6087 = result6087 := by
  rw [tree6087_def]
  try dsimp only [colour, result6087]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6088_agree : tree6088 = literal6088 := by
  rw [tree6088_def, tree6086_agree, tree6087_agree]
  rfl
theorem node6088_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6088 live6088 coloured6088 = result6088 := by
  rw [tree6088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6086_eq
  unfold live6086 coloured6086 at child
  try dsimp only [live6088, coloured6088]
  rw [child]
  dsimp only [result6086]
  have child := node6087_eq
  unfold live6087 coloured6087 at child
  try dsimp only [live6088, coloured6088]
  rw [child]
  dsimp only [result6087]
  try dsimp only [colour, result6088]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6089_agree : tree6089 = literal6089 := by
  rw [tree6089_def]
  rfl
theorem node6089_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6089 live6089 coloured6089 = result6089 := by
  rw [tree6089_def]
  try dsimp only [colour, result6089]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6090_agree : tree6090 = literal6090 := by
  rw [tree6090_def, tree6088_agree, tree6089_agree]
  rfl
theorem node6090_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6090 live6090 coloured6090 = result6090 := by
  rw [tree6090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6088_eq
  unfold live6088 coloured6088 at child
  try dsimp only [live6090, coloured6090]
  rw [child]
  dsimp only [result6088]
  have child := node6089_eq
  unfold live6089 coloured6089 at child
  try dsimp only [live6090, coloured6090]
  rw [child]
  dsimp only [result6089]
  try dsimp only [colour, result6090]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6091_agree : tree6091 = literal6091 := by
  rw [tree6091_def]
  rfl
theorem node6091_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6091 live6091 coloured6091 = result6091 := by
  rw [tree6091_def]
  try dsimp only [colour, result6091]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6092_agree : tree6092 = literal6092 := by
  rw [tree6092_def, tree6090_agree, tree6091_agree]
  rfl
theorem node6092_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6092 live6092 coloured6092 = result6092 := by
  rw [tree6092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6090_eq
  unfold live6090 coloured6090 at child
  try dsimp only [live6092, coloured6092]
  rw [child]
  dsimp only [result6090]
  have child := node6091_eq
  unfold live6091 coloured6091 at child
  try dsimp only [live6092, coloured6092]
  rw [child]
  dsimp only [result6091]
  try dsimp only [colour, result6092]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6093_agree : tree6093 = literal6093 := by
  rw [tree6093_def]
  rfl
theorem node6093_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6093 live6093 coloured6093 = result6093 := by
  rw [tree6093_def]
  try dsimp only [colour, result6093]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6094_agree : tree6094 = literal6094 := by
  rw [tree6094_def, tree6092_agree, tree6093_agree]
  rfl
theorem node6094_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6094 live6094 coloured6094 = result6094 := by
  rw [tree6094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6092_eq
  unfold live6092 coloured6092 at child
  try dsimp only [live6094, coloured6094]
  rw [child]
  dsimp only [result6092]
  have child := node6093_eq
  unfold live6093 coloured6093 at child
  try dsimp only [live6094, coloured6094]
  rw [child]
  dsimp only [result6093]
  try dsimp only [colour, result6094]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6095_agree : tree6095 = literal6095 := by
  rw [tree6095_def]
  rfl
theorem node6095_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6095 live6095 coloured6095 = result6095 := by
  rw [tree6095_def]
  try dsimp only [colour, result6095]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6096_agree : tree6096 = literal6096 := by
  rw [tree6096_def, tree6094_agree, tree6095_agree]
  rfl
theorem node6096_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6096 live6096 coloured6096 = result6096 := by
  rw [tree6096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6094_eq
  unfold live6094 coloured6094 at child
  try dsimp only [live6096, coloured6096]
  rw [child]
  dsimp only [result6094]
  have child := node6095_eq
  unfold live6095 coloured6095 at child
  try dsimp only [live6096, coloured6096]
  rw [child]
  dsimp only [result6095]
  try dsimp only [colour, result6096]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6097_agree : tree6097 = literal6097 := by
  rw [tree6097_def]
  rfl
theorem node6097_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6097 live6097 coloured6097 = result6097 := by
  rw [tree6097_def]
  try dsimp only [colour, result6097]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6098_agree : tree6098 = literal6098 := by
  rw [tree6098_def, tree6096_agree, tree6097_agree]
  rfl
theorem node6098_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6098 live6098 coloured6098 = result6098 := by
  rw [tree6098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6096_eq
  unfold live6096 coloured6096 at child
  try dsimp only [live6098, coloured6098]
  rw [child]
  dsimp only [result6096]
  have child := node6097_eq
  unfold live6097 coloured6097 at child
  try dsimp only [live6098, coloured6098]
  rw [child]
  dsimp only [result6097]
  try dsimp only [colour, result6098]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6099_agree : tree6099 = literal6099 := by
  rw [tree6099_def]
  rfl
theorem node6099_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6099 live6099 coloured6099 = result6099 := by
  rw [tree6099_def]
  try dsimp only [colour, result6099]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6100_agree : tree6100 = literal6100 := by
  rw [tree6100_def, tree6098_agree, tree6099_agree]
  rfl
theorem node6100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6100 live6100 coloured6100 = result6100 := by
  rw [tree6100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6098_eq
  unfold live6098 coloured6098 at child
  try dsimp only [live6100, coloured6100]
  rw [child]
  dsimp only [result6098]
  have child := node6099_eq
  unfold live6099 coloured6099 at child
  try dsimp only [live6100, coloured6100]
  rw [child]
  dsimp only [result6099]
  try dsimp only [colour, result6100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6101_agree : tree6101 = literal6101 := by
  rw [tree6101_def]
  rfl
theorem node6101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6101 live6101 coloured6101 = result6101 := by
  rw [tree6101_def]
  try dsimp only [colour, result6101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6102_agree : tree6102 = literal6102 := by
  rw [tree6102_def, tree6100_agree, tree6101_agree]
  rfl
theorem node6102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6102 live6102 coloured6102 = result6102 := by
  rw [tree6102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6100_eq
  unfold live6100 coloured6100 at child
  try dsimp only [live6102, coloured6102]
  rw [child]
  dsimp only [result6100]
  have child := node6101_eq
  unfold live6101 coloured6101 at child
  try dsimp only [live6102, coloured6102]
  rw [child]
  dsimp only [result6101]
  try dsimp only [colour, result6102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6103_agree : tree6103 = literal6103 := by
  rw [tree6103_def]
  rfl
theorem node6103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6103 live6103 coloured6103 = result6103 := by
  rw [tree6103_def]
  try dsimp only [colour, result6103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6104_agree : tree6104 = literal6104 := by
  rw [tree6104_def, tree6102_agree, tree6103_agree]
  rfl
theorem node6104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6104 live6104 coloured6104 = result6104 := by
  rw [tree6104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6102_eq
  unfold live6102 coloured6102 at child
  try dsimp only [live6104, coloured6104]
  rw [child]
  dsimp only [result6102]
  have child := node6103_eq
  unfold live6103 coloured6103 at child
  try dsimp only [live6104, coloured6104]
  rw [child]
  dsimp only [result6103]
  try dsimp only [colour, result6104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6105_agree : tree6105 = literal6105 := by
  rw [tree6105_def]
  rfl
theorem node6105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6105 live6105 coloured6105 = result6105 := by
  rw [tree6105_def]
  try dsimp only [colour, result6105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6106_agree : tree6106 = literal6106 := by
  rw [tree6106_def, tree6104_agree, tree6105_agree]
  rfl
theorem node6106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6106 live6106 coloured6106 = result6106 := by
  rw [tree6106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6104_eq
  unfold live6104 coloured6104 at child
  try dsimp only [live6106, coloured6106]
  rw [child]
  dsimp only [result6104]
  have child := node6105_eq
  unfold live6105 coloured6105 at child
  try dsimp only [live6106, coloured6106]
  rw [child]
  dsimp only [result6105]
  try dsimp only [colour, result6106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6107_agree : tree6107 = literal6107 := by
  rw [tree6107_def]
  rfl
theorem node6107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6107 live6107 coloured6107 = result6107 := by
  rw [tree6107_def]
  try dsimp only [colour, result6107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6108_agree : tree6108 = literal6108 := by
  rw [tree6108_def, tree6106_agree, tree6107_agree]
  rfl
theorem node6108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6108 live6108 coloured6108 = result6108 := by
  rw [tree6108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6106_eq
  unfold live6106 coloured6106 at child
  try dsimp only [live6108, coloured6108]
  rw [child]
  dsimp only [result6106]
  have child := node6107_eq
  unfold live6107 coloured6107 at child
  try dsimp only [live6108, coloured6108]
  rw [child]
  dsimp only [result6107]
  try dsimp only [colour, result6108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6109_agree : tree6109 = literal6109 := by
  rw [tree6109_def]
  rfl
theorem node6109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6109 live6109 coloured6109 = result6109 := by
  rw [tree6109_def]
  try dsimp only [colour, result6109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6110_agree : tree6110 = literal6110 := by
  rw [tree6110_def, tree6108_agree, tree6109_agree]
  rfl
theorem node6110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6110 live6110 coloured6110 = result6110 := by
  rw [tree6110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6108_eq
  unfold live6108 coloured6108 at child
  try dsimp only [live6110, coloured6110]
  rw [child]
  dsimp only [result6108]
  have child := node6109_eq
  unfold live6109 coloured6109 at child
  try dsimp only [live6110, coloured6110]
  rw [child]
  dsimp only [result6109]
  try dsimp only [colour, result6110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6111_agree : tree6111 = literal6111 := by
  rw [tree6111_def]
  rfl
theorem node6111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6111 live6111 coloured6111 = result6111 := by
  rw [tree6111_def]
  try dsimp only [colour, result6111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6112_agree : tree6112 = literal6112 := by
  rw [tree6112_def, tree6110_agree, tree6111_agree]
  rfl
theorem node6112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6112 live6112 coloured6112 = result6112 := by
  rw [tree6112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6110_eq
  unfold live6110 coloured6110 at child
  try dsimp only [live6112, coloured6112]
  rw [child]
  dsimp only [result6110]
  have child := node6111_eq
  unfold live6111 coloured6111 at child
  try dsimp only [live6112, coloured6112]
  rw [child]
  dsimp only [result6111]
  try dsimp only [colour, result6112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6113_agree : tree6113 = literal6113 := by
  rw [tree6113_def]
  rfl
theorem node6113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6113 live6113 coloured6113 = result6113 := by
  rw [tree6113_def]
  try dsimp only [colour, result6113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6114_agree : tree6114 = literal6114 := by
  rw [tree6114_def, tree6112_agree, tree6113_agree]
  rfl
theorem node6114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6114 live6114 coloured6114 = result6114 := by
  rw [tree6114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6112_eq
  unfold live6112 coloured6112 at child
  try dsimp only [live6114, coloured6114]
  rw [child]
  dsimp only [result6112]
  have child := node6113_eq
  unfold live6113 coloured6113 at child
  try dsimp only [live6114, coloured6114]
  rw [child]
  dsimp only [result6113]
  try dsimp only [colour, result6114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6115_agree : tree6115 = literal6115 := by
  rw [tree6115_def]
  rfl
theorem node6115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6115 live6115 coloured6115 = result6115 := by
  rw [tree6115_def]
  try dsimp only [colour, result6115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6116_agree : tree6116 = literal6116 := by
  rw [tree6116_def, tree6114_agree, tree6115_agree]
  rfl
theorem node6116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6116 live6116 coloured6116 = result6116 := by
  rw [tree6116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6114_eq
  unfold live6114 coloured6114 at child
  try dsimp only [live6116, coloured6116]
  rw [child]
  dsimp only [result6114]
  have child := node6115_eq
  unfold live6115 coloured6115 at child
  try dsimp only [live6116, coloured6116]
  rw [child]
  dsimp only [result6115]
  try dsimp only [colour, result6116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6117_agree : tree6117 = literal6117 := by
  rw [tree6117_def]
  rfl
theorem node6117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6117 live6117 coloured6117 = result6117 := by
  rw [tree6117_def]
  try dsimp only [colour, result6117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6118_agree : tree6118 = literal6118 := by
  rw [tree6118_def, tree6116_agree, tree6117_agree]
  rfl
theorem node6118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6118 live6118 coloured6118 = result6118 := by
  rw [tree6118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6116_eq
  unfold live6116 coloured6116 at child
  try dsimp only [live6118, coloured6118]
  rw [child]
  dsimp only [result6116]
  have child := node6117_eq
  unfold live6117 coloured6117 at child
  try dsimp only [live6118, coloured6118]
  rw [child]
  dsimp only [result6117]
  try dsimp only [colour, result6118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6119_agree : tree6119 = literal6119 := by
  rw [tree6119_def]
  rfl
theorem node6119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6119 live6119 coloured6119 = result6119 := by
  rw [tree6119_def]
  try dsimp only [colour, result6119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6120_agree : tree6120 = literal6120 := by
  rw [tree6120_def, tree6118_agree, tree6119_agree]
  rfl
theorem node6120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6120 live6120 coloured6120 = result6120 := by
  rw [tree6120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6118_eq
  unfold live6118 coloured6118 at child
  try dsimp only [live6120, coloured6120]
  rw [child]
  dsimp only [result6118]
  have child := node6119_eq
  unfold live6119 coloured6119 at child
  try dsimp only [live6120, coloured6120]
  rw [child]
  dsimp only [result6119]
  try dsimp only [colour, result6120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6121_agree : tree6121 = literal6121 := by
  rw [tree6121_def]
  rfl
theorem node6121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6121 live6121 coloured6121 = result6121 := by
  rw [tree6121_def]
  try dsimp only [colour, result6121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6122_agree : tree6122 = literal6122 := by
  rw [tree6122_def, tree6120_agree, tree6121_agree]
  rfl
theorem node6122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6122 live6122 coloured6122 = result6122 := by
  rw [tree6122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6120_eq
  unfold live6120 coloured6120 at child
  try dsimp only [live6122, coloured6122]
  rw [child]
  dsimp only [result6120]
  have child := node6121_eq
  unfold live6121 coloured6121 at child
  try dsimp only [live6122, coloured6122]
  rw [child]
  dsimp only [result6121]
  try dsimp only [colour, result6122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6123_agree : tree6123 = literal6123 := by
  rw [tree6123_def]
  rfl
theorem node6123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6123 live6123 coloured6123 = result6123 := by
  rw [tree6123_def]
  try dsimp only [colour, result6123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6124_agree : tree6124 = literal6124 := by
  rw [tree6124_def, tree6122_agree, tree6123_agree]
  rfl
theorem node6124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6124 live6124 coloured6124 = result6124 := by
  rw [tree6124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6122_eq
  unfold live6122 coloured6122 at child
  try dsimp only [live6124, coloured6124]
  rw [child]
  dsimp only [result6122]
  have child := node6123_eq
  unfold live6123 coloured6123 at child
  try dsimp only [live6124, coloured6124]
  rw [child]
  dsimp only [result6123]
  try dsimp only [colour, result6124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6125_agree : tree6125 = literal6125 := by
  rw [tree6125_def]
  rfl
theorem node6125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6125 live6125 coloured6125 = result6125 := by
  rw [tree6125_def]
  try dsimp only [colour, result6125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6126_agree : tree6126 = literal6126 := by
  rw [tree6126_def, tree6124_agree, tree6125_agree]
  rfl
theorem node6126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6126 live6126 coloured6126 = result6126 := by
  rw [tree6126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6124_eq
  unfold live6124 coloured6124 at child
  try dsimp only [live6126, coloured6126]
  rw [child]
  dsimp only [result6124]
  have child := node6125_eq
  unfold live6125 coloured6125 at child
  try dsimp only [live6126, coloured6126]
  rw [child]
  dsimp only [result6125]
  try dsimp only [colour, result6126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6127_agree : tree6127 = literal6127 := by
  rw [tree6127_def]
  rfl
theorem node6127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6127 live6127 coloured6127 = result6127 := by
  rw [tree6127_def]
  try dsimp only [colour, result6127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6128_agree : tree6128 = literal6128 := by
  rw [tree6128_def, tree6126_agree, tree6127_agree]
  rfl
theorem node6128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6128 live6128 coloured6128 = result6128 := by
  rw [tree6128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6126_eq
  unfold live6126 coloured6126 at child
  try dsimp only [live6128, coloured6128]
  rw [child]
  dsimp only [result6126]
  have child := node6127_eq
  unfold live6127 coloured6127 at child
  try dsimp only [live6128, coloured6128]
  rw [child]
  dsimp only [result6127]
  try dsimp only [colour, result6128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6129_agree : tree6129 = literal6129 := by
  rw [tree6129_def]
  rfl
theorem node6129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6129 live6129 coloured6129 = result6129 := by
  rw [tree6129_def]
  try dsimp only [colour, result6129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6130_agree : tree6130 = literal6130 := by
  rw [tree6130_def, tree6128_agree, tree6129_agree]
  rfl
theorem node6130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6130 live6130 coloured6130 = result6130 := by
  rw [tree6130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6128_eq
  unfold live6128 coloured6128 at child
  try dsimp only [live6130, coloured6130]
  rw [child]
  dsimp only [result6128]
  have child := node6129_eq
  unfold live6129 coloured6129 at child
  try dsimp only [live6130, coloured6130]
  rw [child]
  dsimp only [result6129]
  try dsimp only [colour, result6130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6131_agree : tree6131 = literal6131 := by
  rw [tree6131_def]
  rfl
theorem node6131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6131 live6131 coloured6131 = result6131 := by
  rw [tree6131_def]
  try dsimp only [colour, result6131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6132_agree : tree6132 = literal6132 := by
  rw [tree6132_def, tree6130_agree, tree6131_agree]
  rfl
theorem node6132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6132 live6132 coloured6132 = result6132 := by
  rw [tree6132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6130_eq
  unfold live6130 coloured6130 at child
  try dsimp only [live6132, coloured6132]
  rw [child]
  dsimp only [result6130]
  have child := node6131_eq
  unfold live6131 coloured6131 at child
  try dsimp only [live6132, coloured6132]
  rw [child]
  dsimp only [result6131]
  try dsimp only [colour, result6132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6133_agree : tree6133 = literal6133 := by
  rw [tree6133_def]
  rfl
theorem node6133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6133 live6133 coloured6133 = result6133 := by
  rw [tree6133_def]
  try dsimp only [colour, result6133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6134_agree : tree6134 = literal6134 := by
  rw [tree6134_def, tree6132_agree, tree6133_agree]
  rfl
theorem node6134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6134 live6134 coloured6134 = result6134 := by
  rw [tree6134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6132_eq
  unfold live6132 coloured6132 at child
  try dsimp only [live6134, coloured6134]
  rw [child]
  dsimp only [result6132]
  have child := node6133_eq
  unfold live6133 coloured6133 at child
  try dsimp only [live6134, coloured6134]
  rw [child]
  dsimp only [result6133]
  try dsimp only [colour, result6134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6135_agree : tree6135 = literal6135 := by
  rw [tree6135_def]
  rfl
theorem node6135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6135 live6135 coloured6135 = result6135 := by
  rw [tree6135_def]
  try dsimp only [colour, result6135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6136_agree : tree6136 = literal6136 := by
  rw [tree6136_def, tree6134_agree, tree6135_agree]
  rfl
theorem node6136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6136 live6136 coloured6136 = result6136 := by
  rw [tree6136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6134_eq
  unfold live6134 coloured6134 at child
  try dsimp only [live6136, coloured6136]
  rw [child]
  dsimp only [result6134]
  have child := node6135_eq
  unfold live6135 coloured6135 at child
  try dsimp only [live6136, coloured6136]
  rw [child]
  dsimp only [result6135]
  try dsimp only [colour, result6136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6137_agree : tree6137 = literal6137 := by
  rw [tree6137_def]
  rfl
theorem node6137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6137 live6137 coloured6137 = result6137 := by
  rw [tree6137_def]
  try dsimp only [colour, result6137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6138_agree : tree6138 = literal6138 := by
  rw [tree6138_def, tree6136_agree, tree6137_agree]
  rfl
theorem node6138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6138 live6138 coloured6138 = result6138 := by
  rw [tree6138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6136_eq
  unfold live6136 coloured6136 at child
  try dsimp only [live6138, coloured6138]
  rw [child]
  dsimp only [result6136]
  have child := node6137_eq
  unfold live6137 coloured6137 at child
  try dsimp only [live6138, coloured6138]
  rw [child]
  dsimp only [result6137]
  try dsimp only [colour, result6138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6139_agree : tree6139 = literal6139 := by
  rw [tree6139_def]
  rfl
theorem node6139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6139 live6139 coloured6139 = result6139 := by
  rw [tree6139_def]
  try dsimp only [colour, result6139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6140_agree : tree6140 = literal6140 := by
  rw [tree6140_def, tree6138_agree, tree6139_agree]
  rfl
theorem node6140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6140 live6140 coloured6140 = result6140 := by
  rw [tree6140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6138_eq
  unfold live6138 coloured6138 at child
  try dsimp only [live6140, coloured6140]
  rw [child]
  dsimp only [result6138]
  have child := node6139_eq
  unfold live6139 coloured6139 at child
  try dsimp only [live6140, coloured6140]
  rw [child]
  dsimp only [result6139]
  try dsimp only [colour, result6140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6141_agree : tree6141 = literal6141 := by
  rw [tree6141_def]
  rfl
theorem node6141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6141 live6141 coloured6141 = result6141 := by
  rw [tree6141_def]
  try dsimp only [colour, result6141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6142_agree : tree6142 = literal6142 := by
  rw [tree6142_def, tree6140_agree, tree6141_agree]
  rfl
theorem node6142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6142 live6142 coloured6142 = result6142 := by
  rw [tree6142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6140_eq
  unfold live6140 coloured6140 at child
  try dsimp only [live6142, coloured6142]
  rw [child]
  dsimp only [result6140]
  have child := node6141_eq
  unfold live6141 coloured6141 at child
  try dsimp only [live6142, coloured6142]
  rw [child]
  dsimp only [result6141]
  try dsimp only [colour, result6142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6143_agree : tree6143 = literal6143 := by
  rw [tree6143_def]
  rfl
theorem node6143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6143 live6143 coloured6143 = result6143 := by
  rw [tree6143_def]
  try dsimp only [colour, result6143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
