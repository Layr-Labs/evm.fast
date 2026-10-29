import InitECandidate.Proofs.ClashStages713.Proof83
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree8064_agree : tree8064 = literal8064 := by
  rw [tree8064_def, tree8062_agree, tree8063_agree]
  rfl
theorem node8064_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8064 live8064 coloured8064 = result8064 := by
  rw [tree8064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8062_eq
  unfold live8062 coloured8062 at child
  try dsimp only [live8064, coloured8064]
  rw [child]
  dsimp only [result8062]
  have child := node8063_eq
  unfold live8063 coloured8063 at child
  try dsimp only [live8064, coloured8064]
  rw [child]
  dsimp only [result8063]
  try dsimp only [colour, result8064]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8065_agree : tree8065 = literal8065 := by
  rw [tree8065_def]
  rfl
theorem node8065_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8065 live8065 coloured8065 = result8065 := by
  rw [tree8065_def]
  try dsimp only [colour, result8065]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8066_agree : tree8066 = literal8066 := by
  rw [tree8066_def, tree8064_agree, tree8065_agree]
  rfl
theorem node8066_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8066 live8066 coloured8066 = result8066 := by
  rw [tree8066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8064_eq
  unfold live8064 coloured8064 at child
  try dsimp only [live8066, coloured8066]
  rw [child]
  dsimp only [result8064]
  have child := node8065_eq
  unfold live8065 coloured8065 at child
  try dsimp only [live8066, coloured8066]
  rw [child]
  dsimp only [result8065]
  try dsimp only [colour, result8066]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8067_agree : tree8067 = literal8067 := by
  rw [tree8067_def]
  rfl
theorem node8067_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8067 live8067 coloured8067 = result8067 := by
  rw [tree8067_def]
  try dsimp only [colour, result8067]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8068_agree : tree8068 = literal8068 := by
  rw [tree8068_def, tree8066_agree, tree8067_agree]
  rfl
theorem node8068_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8068 live8068 coloured8068 = result8068 := by
  rw [tree8068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8066_eq
  unfold live8066 coloured8066 at child
  try dsimp only [live8068, coloured8068]
  rw [child]
  dsimp only [result8066]
  have child := node8067_eq
  unfold live8067 coloured8067 at child
  try dsimp only [live8068, coloured8068]
  rw [child]
  dsimp only [result8067]
  try dsimp only [colour, result8068]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8069_agree : tree8069 = literal8069 := by
  rw [tree8069_def]
  rfl
theorem node8069_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8069 live8069 coloured8069 = result8069 := by
  rw [tree8069_def]
  try dsimp only [colour, result8069]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8070_agree : tree8070 = literal8070 := by
  rw [tree8070_def, tree8068_agree, tree8069_agree]
  rfl
theorem node8070_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8070 live8070 coloured8070 = result8070 := by
  rw [tree8070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8068_eq
  unfold live8068 coloured8068 at child
  try dsimp only [live8070, coloured8070]
  rw [child]
  dsimp only [result8068]
  have child := node8069_eq
  unfold live8069 coloured8069 at child
  try dsimp only [live8070, coloured8070]
  rw [child]
  dsimp only [result8069]
  try dsimp only [colour, result8070]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8071_agree : tree8071 = literal8071 := by
  rw [tree8071_def]
  rfl
theorem node8071_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8071 live8071 coloured8071 = result8071 := by
  rw [tree8071_def]
  try dsimp only [colour, result8071]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8072_agree : tree8072 = literal8072 := by
  rw [tree8072_def, tree8070_agree, tree8071_agree]
  rfl
theorem node8072_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8072 live8072 coloured8072 = result8072 := by
  rw [tree8072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8070_eq
  unfold live8070 coloured8070 at child
  try dsimp only [live8072, coloured8072]
  rw [child]
  dsimp only [result8070]
  have child := node8071_eq
  unfold live8071 coloured8071 at child
  try dsimp only [live8072, coloured8072]
  rw [child]
  dsimp only [result8071]
  try dsimp only [colour, result8072]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8073_agree : tree8073 = literal8073 := by
  rw [tree8073_def]
  rfl
theorem node8073_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8073 live8073 coloured8073 = result8073 := by
  rw [tree8073_def]
  try dsimp only [colour, result8073]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8074_agree : tree8074 = literal8074 := by
  rw [tree8074_def, tree8072_agree, tree8073_agree]
  rfl
theorem node8074_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8074 live8074 coloured8074 = result8074 := by
  rw [tree8074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8072_eq
  unfold live8072 coloured8072 at child
  try dsimp only [live8074, coloured8074]
  rw [child]
  dsimp only [result8072]
  have child := node8073_eq
  unfold live8073 coloured8073 at child
  try dsimp only [live8074, coloured8074]
  rw [child]
  dsimp only [result8073]
  try dsimp only [colour, result8074]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8075_agree : tree8075 = literal8075 := by
  rw [tree8075_def]
  rfl
theorem node8075_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8075 live8075 coloured8075 = result8075 := by
  rw [tree8075_def]
  try dsimp only [colour, result8075]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8076_agree : tree8076 = literal8076 := by
  rw [tree8076_def, tree8074_agree, tree8075_agree]
  rfl
theorem node8076_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8076 live8076 coloured8076 = result8076 := by
  rw [tree8076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8074_eq
  unfold live8074 coloured8074 at child
  try dsimp only [live8076, coloured8076]
  rw [child]
  dsimp only [result8074]
  have child := node8075_eq
  unfold live8075 coloured8075 at child
  try dsimp only [live8076, coloured8076]
  rw [child]
  dsimp only [result8075]
  try dsimp only [colour, result8076]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8077_agree : tree8077 = literal8077 := by
  rw [tree8077_def]
  rfl
theorem node8077_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8077 live8077 coloured8077 = result8077 := by
  rw [tree8077_def]
  try dsimp only [colour, result8077]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8078_agree : tree8078 = literal8078 := by
  rw [tree8078_def, tree8076_agree, tree8077_agree]
  rfl
theorem node8078_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8078 live8078 coloured8078 = result8078 := by
  rw [tree8078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8076_eq
  unfold live8076 coloured8076 at child
  try dsimp only [live8078, coloured8078]
  rw [child]
  dsimp only [result8076]
  have child := node8077_eq
  unfold live8077 coloured8077 at child
  try dsimp only [live8078, coloured8078]
  rw [child]
  dsimp only [result8077]
  try dsimp only [colour, result8078]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8079_agree : tree8079 = literal8079 := by
  rw [tree8079_def]
  rfl
theorem node8079_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8079 live8079 coloured8079 = result8079 := by
  rw [tree8079_def]
  try dsimp only [colour, result8079]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8080_agree : tree8080 = literal8080 := by
  rw [tree8080_def, tree8078_agree, tree8079_agree]
  rfl
theorem node8080_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8080 live8080 coloured8080 = result8080 := by
  rw [tree8080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8078_eq
  unfold live8078 coloured8078 at child
  try dsimp only [live8080, coloured8080]
  rw [child]
  dsimp only [result8078]
  have child := node8079_eq
  unfold live8079 coloured8079 at child
  try dsimp only [live8080, coloured8080]
  rw [child]
  dsimp only [result8079]
  try dsimp only [colour, result8080]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8081_agree : tree8081 = literal8081 := by
  rw [tree8081_def]
  rfl
theorem node8081_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8081 live8081 coloured8081 = result8081 := by
  rw [tree8081_def]
  try dsimp only [colour, result8081]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8082_agree : tree8082 = literal8082 := by
  rw [tree8082_def, tree8080_agree, tree8081_agree]
  rfl
theorem node8082_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8082 live8082 coloured8082 = result8082 := by
  rw [tree8082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8080_eq
  unfold live8080 coloured8080 at child
  try dsimp only [live8082, coloured8082]
  rw [child]
  dsimp only [result8080]
  have child := node8081_eq
  unfold live8081 coloured8081 at child
  try dsimp only [live8082, coloured8082]
  rw [child]
  dsimp only [result8081]
  try dsimp only [colour, result8082]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8083_agree : tree8083 = literal8083 := by
  rw [tree8083_def]
  rfl
theorem node8083_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8083 live8083 coloured8083 = result8083 := by
  rw [tree8083_def]
  try dsimp only [colour, result8083]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8084_agree : tree8084 = literal8084 := by
  rw [tree8084_def, tree8082_agree, tree8083_agree]
  rfl
theorem node8084_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8084 live8084 coloured8084 = result8084 := by
  rw [tree8084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8082_eq
  unfold live8082 coloured8082 at child
  try dsimp only [live8084, coloured8084]
  rw [child]
  dsimp only [result8082]
  have child := node8083_eq
  unfold live8083 coloured8083 at child
  try dsimp only [live8084, coloured8084]
  rw [child]
  dsimp only [result8083]
  try dsimp only [colour, result8084]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8085_agree : tree8085 = literal8085 := by
  rw [tree8085_def]
  rfl
theorem node8085_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8085 live8085 coloured8085 = result8085 := by
  rw [tree8085_def]
  try dsimp only [colour, result8085]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8086_agree : tree8086 = literal8086 := by
  rw [tree8086_def, tree8084_agree, tree8085_agree]
  rfl
theorem node8086_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8086 live8086 coloured8086 = result8086 := by
  rw [tree8086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8084_eq
  unfold live8084 coloured8084 at child
  try dsimp only [live8086, coloured8086]
  rw [child]
  dsimp only [result8084]
  have child := node8085_eq
  unfold live8085 coloured8085 at child
  try dsimp only [live8086, coloured8086]
  rw [child]
  dsimp only [result8085]
  try dsimp only [colour, result8086]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8087_agree : tree8087 = literal8087 := by
  rw [tree8087_def]
  rfl
theorem node8087_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8087 live8087 coloured8087 = result8087 := by
  rw [tree8087_def]
  try dsimp only [colour, result8087]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8088_agree : tree8088 = literal8088 := by
  rw [tree8088_def, tree8086_agree, tree8087_agree]
  rfl
theorem node8088_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8088 live8088 coloured8088 = result8088 := by
  rw [tree8088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8086_eq
  unfold live8086 coloured8086 at child
  try dsimp only [live8088, coloured8088]
  rw [child]
  dsimp only [result8086]
  have child := node8087_eq
  unfold live8087 coloured8087 at child
  try dsimp only [live8088, coloured8088]
  rw [child]
  dsimp only [result8087]
  try dsimp only [colour, result8088]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8089_agree : tree8089 = literal8089 := by
  rw [tree8089_def]
  rfl
theorem node8089_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8089 live8089 coloured8089 = result8089 := by
  rw [tree8089_def]
  try dsimp only [colour, result8089]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8090_agree : tree8090 = literal8090 := by
  rw [tree8090_def, tree8088_agree, tree8089_agree]
  rfl
theorem node8090_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8090 live8090 coloured8090 = result8090 := by
  rw [tree8090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8088_eq
  unfold live8088 coloured8088 at child
  try dsimp only [live8090, coloured8090]
  rw [child]
  dsimp only [result8088]
  have child := node8089_eq
  unfold live8089 coloured8089 at child
  try dsimp only [live8090, coloured8090]
  rw [child]
  dsimp only [result8089]
  try dsimp only [colour, result8090]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8091_agree : tree8091 = literal8091 := by
  rw [tree8091_def]
  rfl
theorem node8091_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8091 live8091 coloured8091 = result8091 := by
  rw [tree8091_def]
  try dsimp only [colour, result8091]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8092_agree : tree8092 = literal8092 := by
  rw [tree8092_def, tree8090_agree, tree8091_agree]
  rfl
theorem node8092_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8092 live8092 coloured8092 = result8092 := by
  rw [tree8092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8090_eq
  unfold live8090 coloured8090 at child
  try dsimp only [live8092, coloured8092]
  rw [child]
  dsimp only [result8090]
  have child := node8091_eq
  unfold live8091 coloured8091 at child
  try dsimp only [live8092, coloured8092]
  rw [child]
  dsimp only [result8091]
  try dsimp only [colour, result8092]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8093_agree : tree8093 = literal8093 := by
  rw [tree8093_def]
  rfl
theorem node8093_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8093 live8093 coloured8093 = result8093 := by
  rw [tree8093_def]
  try dsimp only [colour, result8093]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8094_agree : tree8094 = literal8094 := by
  rw [tree8094_def, tree8092_agree, tree8093_agree]
  rfl
theorem node8094_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8094 live8094 coloured8094 = result8094 := by
  rw [tree8094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8092_eq
  unfold live8092 coloured8092 at child
  try dsimp only [live8094, coloured8094]
  rw [child]
  dsimp only [result8092]
  have child := node8093_eq
  unfold live8093 coloured8093 at child
  try dsimp only [live8094, coloured8094]
  rw [child]
  dsimp only [result8093]
  try dsimp only [colour, result8094]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8095_agree : tree8095 = literal8095 := by
  rw [tree8095_def]
  rfl
theorem node8095_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8095 live8095 coloured8095 = result8095 := by
  rw [tree8095_def]
  try dsimp only [colour, result8095]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8096_agree : tree8096 = literal8096 := by
  rw [tree8096_def, tree8094_agree, tree8095_agree]
  rfl
theorem node8096_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8096 live8096 coloured8096 = result8096 := by
  rw [tree8096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8094_eq
  unfold live8094 coloured8094 at child
  try dsimp only [live8096, coloured8096]
  rw [child]
  dsimp only [result8094]
  have child := node8095_eq
  unfold live8095 coloured8095 at child
  try dsimp only [live8096, coloured8096]
  rw [child]
  dsimp only [result8095]
  try dsimp only [colour, result8096]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8097_agree : tree8097 = literal8097 := by
  rw [tree8097_def]
  rfl
theorem node8097_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8097 live8097 coloured8097 = result8097 := by
  rw [tree8097_def]
  try dsimp only [colour, result8097]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8098_agree : tree8098 = literal8098 := by
  rw [tree8098_def, tree8096_agree, tree8097_agree]
  rfl
theorem node8098_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8098 live8098 coloured8098 = result8098 := by
  rw [tree8098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8096_eq
  unfold live8096 coloured8096 at child
  try dsimp only [live8098, coloured8098]
  rw [child]
  dsimp only [result8096]
  have child := node8097_eq
  unfold live8097 coloured8097 at child
  try dsimp only [live8098, coloured8098]
  rw [child]
  dsimp only [result8097]
  try dsimp only [colour, result8098]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8099_agree : tree8099 = literal8099 := by
  rw [tree8099_def]
  rfl
theorem node8099_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8099 live8099 coloured8099 = result8099 := by
  rw [tree8099_def]
  try dsimp only [colour, result8099]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8100_agree : tree8100 = literal8100 := by
  rw [tree8100_def, tree8098_agree, tree8099_agree]
  rfl
theorem node8100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8100 live8100 coloured8100 = result8100 := by
  rw [tree8100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8098_eq
  unfold live8098 coloured8098 at child
  try dsimp only [live8100, coloured8100]
  rw [child]
  dsimp only [result8098]
  have child := node8099_eq
  unfold live8099 coloured8099 at child
  try dsimp only [live8100, coloured8100]
  rw [child]
  dsimp only [result8099]
  try dsimp only [colour, result8100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8101_agree : tree8101 = literal8101 := by
  rw [tree8101_def]
  rfl
theorem node8101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8101 live8101 coloured8101 = result8101 := by
  rw [tree8101_def]
  try dsimp only [colour, result8101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8102_agree : tree8102 = literal8102 := by
  rw [tree8102_def, tree8100_agree, tree8101_agree]
  rfl
theorem node8102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8102 live8102 coloured8102 = result8102 := by
  rw [tree8102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8100_eq
  unfold live8100 coloured8100 at child
  try dsimp only [live8102, coloured8102]
  rw [child]
  dsimp only [result8100]
  have child := node8101_eq
  unfold live8101 coloured8101 at child
  try dsimp only [live8102, coloured8102]
  rw [child]
  dsimp only [result8101]
  try dsimp only [colour, result8102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8103_agree : tree8103 = literal8103 := by
  rw [tree8103_def]
  rfl
theorem node8103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8103 live8103 coloured8103 = result8103 := by
  rw [tree8103_def]
  try dsimp only [colour, result8103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8104_agree : tree8104 = literal8104 := by
  rw [tree8104_def, tree8102_agree, tree8103_agree]
  rfl
theorem node8104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8104 live8104 coloured8104 = result8104 := by
  rw [tree8104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8102_eq
  unfold live8102 coloured8102 at child
  try dsimp only [live8104, coloured8104]
  rw [child]
  dsimp only [result8102]
  have child := node8103_eq
  unfold live8103 coloured8103 at child
  try dsimp only [live8104, coloured8104]
  rw [child]
  dsimp only [result8103]
  try dsimp only [colour, result8104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8105_agree : tree8105 = literal8105 := by
  rw [tree8105_def]
  rfl
theorem node8105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8105 live8105 coloured8105 = result8105 := by
  rw [tree8105_def]
  try dsimp only [colour, result8105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8106_agree : tree8106 = literal8106 := by
  rw [tree8106_def, tree8104_agree, tree8105_agree]
  rfl
theorem node8106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8106 live8106 coloured8106 = result8106 := by
  rw [tree8106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8104_eq
  unfold live8104 coloured8104 at child
  try dsimp only [live8106, coloured8106]
  rw [child]
  dsimp only [result8104]
  have child := node8105_eq
  unfold live8105 coloured8105 at child
  try dsimp only [live8106, coloured8106]
  rw [child]
  dsimp only [result8105]
  try dsimp only [colour, result8106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8107_agree : tree8107 = literal8107 := by
  rw [tree8107_def]
  rfl
theorem node8107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8107 live8107 coloured8107 = result8107 := by
  rw [tree8107_def]
  try dsimp only [colour, result8107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8108_agree : tree8108 = literal8108 := by
  rw [tree8108_def, tree8106_agree, tree8107_agree]
  rfl
theorem node8108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8108 live8108 coloured8108 = result8108 := by
  rw [tree8108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8106_eq
  unfold live8106 coloured8106 at child
  try dsimp only [live8108, coloured8108]
  rw [child]
  dsimp only [result8106]
  have child := node8107_eq
  unfold live8107 coloured8107 at child
  try dsimp only [live8108, coloured8108]
  rw [child]
  dsimp only [result8107]
  try dsimp only [colour, result8108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8109_agree : tree8109 = literal8109 := by
  rw [tree8109_def]
  rfl
theorem node8109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8109 live8109 coloured8109 = result8109 := by
  rw [tree8109_def]
  try dsimp only [colour, result8109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8110_agree : tree8110 = literal8110 := by
  rw [tree8110_def, tree8108_agree, tree8109_agree]
  rfl
theorem node8110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8110 live8110 coloured8110 = result8110 := by
  rw [tree8110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8108_eq
  unfold live8108 coloured8108 at child
  try dsimp only [live8110, coloured8110]
  rw [child]
  dsimp only [result8108]
  have child := node8109_eq
  unfold live8109 coloured8109 at child
  try dsimp only [live8110, coloured8110]
  rw [child]
  dsimp only [result8109]
  try dsimp only [colour, result8110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8111_agree : tree8111 = literal8111 := by
  rw [tree8111_def]
  rfl
theorem node8111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8111 live8111 coloured8111 = result8111 := by
  rw [tree8111_def]
  try dsimp only [colour, result8111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8112_agree : tree8112 = literal8112 := by
  rw [tree8112_def, tree8110_agree, tree8111_agree]
  rfl
theorem node8112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8112 live8112 coloured8112 = result8112 := by
  rw [tree8112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8110_eq
  unfold live8110 coloured8110 at child
  try dsimp only [live8112, coloured8112]
  rw [child]
  dsimp only [result8110]
  have child := node8111_eq
  unfold live8111 coloured8111 at child
  try dsimp only [live8112, coloured8112]
  rw [child]
  dsimp only [result8111]
  try dsimp only [colour, result8112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8113_agree : tree8113 = literal8113 := by
  rw [tree8113_def]
  rfl
theorem node8113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8113 live8113 coloured8113 = result8113 := by
  rw [tree8113_def]
  try dsimp only [colour, result8113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8114_agree : tree8114 = literal8114 := by
  rw [tree8114_def, tree8112_agree, tree8113_agree]
  rfl
theorem node8114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8114 live8114 coloured8114 = result8114 := by
  rw [tree8114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8112_eq
  unfold live8112 coloured8112 at child
  try dsimp only [live8114, coloured8114]
  rw [child]
  dsimp only [result8112]
  have child := node8113_eq
  unfold live8113 coloured8113 at child
  try dsimp only [live8114, coloured8114]
  rw [child]
  dsimp only [result8113]
  try dsimp only [colour, result8114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8115_agree : tree8115 = literal8115 := by
  rw [tree8115_def]
  rfl
theorem node8115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8115 live8115 coloured8115 = result8115 := by
  rw [tree8115_def]
  try dsimp only [colour, result8115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8116_agree : tree8116 = literal8116 := by
  rw [tree8116_def, tree8114_agree, tree8115_agree]
  rfl
theorem node8116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8116 live8116 coloured8116 = result8116 := by
  rw [tree8116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8114_eq
  unfold live8114 coloured8114 at child
  try dsimp only [live8116, coloured8116]
  rw [child]
  dsimp only [result8114]
  have child := node8115_eq
  unfold live8115 coloured8115 at child
  try dsimp only [live8116, coloured8116]
  rw [child]
  dsimp only [result8115]
  try dsimp only [colour, result8116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8117_agree : tree8117 = literal8117 := by
  rw [tree8117_def]
  rfl
theorem node8117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8117 live8117 coloured8117 = result8117 := by
  rw [tree8117_def]
  try dsimp only [colour, result8117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8118_agree : tree8118 = literal8118 := by
  rw [tree8118_def, tree8116_agree, tree8117_agree]
  rfl
theorem node8118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8118 live8118 coloured8118 = result8118 := by
  rw [tree8118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8116_eq
  unfold live8116 coloured8116 at child
  try dsimp only [live8118, coloured8118]
  rw [child]
  dsimp only [result8116]
  have child := node8117_eq
  unfold live8117 coloured8117 at child
  try dsimp only [live8118, coloured8118]
  rw [child]
  dsimp only [result8117]
  try dsimp only [colour, result8118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8119_agree : tree8119 = literal8119 := by
  rw [tree8119_def]
  rfl
theorem node8119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8119 live8119 coloured8119 = result8119 := by
  rw [tree8119_def]
  try dsimp only [colour, result8119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8120_agree : tree8120 = literal8120 := by
  rw [tree8120_def, tree8118_agree, tree8119_agree]
  rfl
theorem node8120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8120 live8120 coloured8120 = result8120 := by
  rw [tree8120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8118_eq
  unfold live8118 coloured8118 at child
  try dsimp only [live8120, coloured8120]
  rw [child]
  dsimp only [result8118]
  have child := node8119_eq
  unfold live8119 coloured8119 at child
  try dsimp only [live8120, coloured8120]
  rw [child]
  dsimp only [result8119]
  try dsimp only [colour, result8120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8121_agree : tree8121 = literal8121 := by
  rw [tree8121_def]
  rfl
theorem node8121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8121 live8121 coloured8121 = result8121 := by
  rw [tree8121_def]
  try dsimp only [colour, result8121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8122_agree : tree8122 = literal8122 := by
  rw [tree8122_def, tree8120_agree, tree8121_agree]
  rfl
theorem node8122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8122 live8122 coloured8122 = result8122 := by
  rw [tree8122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8120_eq
  unfold live8120 coloured8120 at child
  try dsimp only [live8122, coloured8122]
  rw [child]
  dsimp only [result8120]
  have child := node8121_eq
  unfold live8121 coloured8121 at child
  try dsimp only [live8122, coloured8122]
  rw [child]
  dsimp only [result8121]
  try dsimp only [colour, result8122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8123_agree : tree8123 = literal8123 := by
  rw [tree8123_def]
  rfl
theorem node8123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8123 live8123 coloured8123 = result8123 := by
  rw [tree8123_def]
  try dsimp only [colour, result8123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8124_agree : tree8124 = literal8124 := by
  rw [tree8124_def, tree8122_agree, tree8123_agree]
  rfl
theorem node8124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8124 live8124 coloured8124 = result8124 := by
  rw [tree8124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8122_eq
  unfold live8122 coloured8122 at child
  try dsimp only [live8124, coloured8124]
  rw [child]
  dsimp only [result8122]
  have child := node8123_eq
  unfold live8123 coloured8123 at child
  try dsimp only [live8124, coloured8124]
  rw [child]
  dsimp only [result8123]
  try dsimp only [colour, result8124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8125_agree : tree8125 = literal8125 := by
  rw [tree8125_def]
  rfl
theorem node8125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8125 live8125 coloured8125 = result8125 := by
  rw [tree8125_def]
  try dsimp only [colour, result8125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8126_agree : tree8126 = literal8126 := by
  rw [tree8126_def, tree8124_agree, tree8125_agree]
  rfl
theorem node8126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8126 live8126 coloured8126 = result8126 := by
  rw [tree8126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8124_eq
  unfold live8124 coloured8124 at child
  try dsimp only [live8126, coloured8126]
  rw [child]
  dsimp only [result8124]
  have child := node8125_eq
  unfold live8125 coloured8125 at child
  try dsimp only [live8126, coloured8126]
  rw [child]
  dsimp only [result8125]
  try dsimp only [colour, result8126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8127_agree : tree8127 = literal8127 := by
  rw [tree8127_def]
  rfl
theorem node8127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8127 live8127 coloured8127 = result8127 := by
  rw [tree8127_def]
  try dsimp only [colour, result8127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8128_agree : tree8128 = literal8128 := by
  rw [tree8128_def, tree8126_agree, tree8127_agree]
  rfl
theorem node8128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8128 live8128 coloured8128 = result8128 := by
  rw [tree8128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8126_eq
  unfold live8126 coloured8126 at child
  try dsimp only [live8128, coloured8128]
  rw [child]
  dsimp only [result8126]
  have child := node8127_eq
  unfold live8127 coloured8127 at child
  try dsimp only [live8128, coloured8128]
  rw [child]
  dsimp only [result8127]
  try dsimp only [colour, result8128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8129_agree : tree8129 = literal8129 := by
  rw [tree8129_def]
  rfl
theorem node8129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8129 live8129 coloured8129 = result8129 := by
  rw [tree8129_def]
  try dsimp only [colour, result8129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8130_agree : tree8130 = literal8130 := by
  rw [tree8130_def, tree8128_agree, tree8129_agree]
  rfl
theorem node8130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8130 live8130 coloured8130 = result8130 := by
  rw [tree8130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8128_eq
  unfold live8128 coloured8128 at child
  try dsimp only [live8130, coloured8130]
  rw [child]
  dsimp only [result8128]
  have child := node8129_eq
  unfold live8129 coloured8129 at child
  try dsimp only [live8130, coloured8130]
  rw [child]
  dsimp only [result8129]
  try dsimp only [colour, result8130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8131_agree : tree8131 = literal8131 := by
  rw [tree8131_def]
  rfl
theorem node8131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8131 live8131 coloured8131 = result8131 := by
  rw [tree8131_def]
  try dsimp only [colour, result8131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8132_agree : tree8132 = literal8132 := by
  rw [tree8132_def, tree8130_agree, tree8131_agree]
  rfl
theorem node8132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8132 live8132 coloured8132 = result8132 := by
  rw [tree8132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8130_eq
  unfold live8130 coloured8130 at child
  try dsimp only [live8132, coloured8132]
  rw [child]
  dsimp only [result8130]
  have child := node8131_eq
  unfold live8131 coloured8131 at child
  try dsimp only [live8132, coloured8132]
  rw [child]
  dsimp only [result8131]
  try dsimp only [colour, result8132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8133_agree : tree8133 = literal8133 := by
  rw [tree8133_def]
  rfl
theorem node8133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8133 live8133 coloured8133 = result8133 := by
  rw [tree8133_def]
  try dsimp only [colour, result8133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8134_agree : tree8134 = literal8134 := by
  rw [tree8134_def, tree8132_agree, tree8133_agree]
  rfl
theorem node8134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8134 live8134 coloured8134 = result8134 := by
  rw [tree8134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8132_eq
  unfold live8132 coloured8132 at child
  try dsimp only [live8134, coloured8134]
  rw [child]
  dsimp only [result8132]
  have child := node8133_eq
  unfold live8133 coloured8133 at child
  try dsimp only [live8134, coloured8134]
  rw [child]
  dsimp only [result8133]
  try dsimp only [colour, result8134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8135_agree : tree8135 = literal8135 := by
  rw [tree8135_def]
  rfl
theorem node8135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8135 live8135 coloured8135 = result8135 := by
  rw [tree8135_def]
  try dsimp only [colour, result8135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8136_agree : tree8136 = literal8136 := by
  rw [tree8136_def, tree8134_agree, tree8135_agree]
  rfl
theorem node8136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8136 live8136 coloured8136 = result8136 := by
  rw [tree8136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8134_eq
  unfold live8134 coloured8134 at child
  try dsimp only [live8136, coloured8136]
  rw [child]
  dsimp only [result8134]
  have child := node8135_eq
  unfold live8135 coloured8135 at child
  try dsimp only [live8136, coloured8136]
  rw [child]
  dsimp only [result8135]
  try dsimp only [colour, result8136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8137_agree : tree8137 = literal8137 := by
  rw [tree8137_def]
  rfl
theorem node8137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8137 live8137 coloured8137 = result8137 := by
  rw [tree8137_def]
  try dsimp only [colour, result8137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8138_agree : tree8138 = literal8138 := by
  rw [tree8138_def, tree8136_agree, tree8137_agree]
  rfl
theorem node8138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8138 live8138 coloured8138 = result8138 := by
  rw [tree8138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8136_eq
  unfold live8136 coloured8136 at child
  try dsimp only [live8138, coloured8138]
  rw [child]
  dsimp only [result8136]
  have child := node8137_eq
  unfold live8137 coloured8137 at child
  try dsimp only [live8138, coloured8138]
  rw [child]
  dsimp only [result8137]
  try dsimp only [colour, result8138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8139_agree : tree8139 = literal8139 := by
  rw [tree8139_def]
  rfl
theorem node8139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8139 live8139 coloured8139 = result8139 := by
  rw [tree8139_def]
  try dsimp only [colour, result8139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8140_agree : tree8140 = literal8140 := by
  rw [tree8140_def, tree8138_agree, tree8139_agree]
  rfl
theorem node8140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8140 live8140 coloured8140 = result8140 := by
  rw [tree8140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8138_eq
  unfold live8138 coloured8138 at child
  try dsimp only [live8140, coloured8140]
  rw [child]
  dsimp only [result8138]
  have child := node8139_eq
  unfold live8139 coloured8139 at child
  try dsimp only [live8140, coloured8140]
  rw [child]
  dsimp only [result8139]
  try dsimp only [colour, result8140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8141_agree : tree8141 = literal8141 := by
  rw [tree8141_def]
  rfl
theorem node8141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8141 live8141 coloured8141 = result8141 := by
  rw [tree8141_def]
  try dsimp only [colour, result8141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8142_agree : tree8142 = literal8142 := by
  rw [tree8142_def, tree8140_agree, tree8141_agree]
  rfl
theorem node8142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8142 live8142 coloured8142 = result8142 := by
  rw [tree8142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8140_eq
  unfold live8140 coloured8140 at child
  try dsimp only [live8142, coloured8142]
  rw [child]
  dsimp only [result8140]
  have child := node8141_eq
  unfold live8141 coloured8141 at child
  try dsimp only [live8142, coloured8142]
  rw [child]
  dsimp only [result8141]
  try dsimp only [colour, result8142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8143_agree : tree8143 = literal8143 := by
  rw [tree8143_def]
  rfl
theorem node8143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8143 live8143 coloured8143 = result8143 := by
  rw [tree8143_def]
  try dsimp only [colour, result8143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8144_agree : tree8144 = literal8144 := by
  rw [tree8144_def, tree8142_agree, tree8143_agree]
  rfl
theorem node8144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8144 live8144 coloured8144 = result8144 := by
  rw [tree8144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8142_eq
  unfold live8142 coloured8142 at child
  try dsimp only [live8144, coloured8144]
  rw [child]
  dsimp only [result8142]
  have child := node8143_eq
  unfold live8143 coloured8143 at child
  try dsimp only [live8144, coloured8144]
  rw [child]
  dsimp only [result8143]
  try dsimp only [colour, result8144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8145_agree : tree8145 = literal8145 := by
  rw [tree8145_def]
  rfl
theorem node8145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8145 live8145 coloured8145 = result8145 := by
  rw [tree8145_def]
  try dsimp only [colour, result8145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8146_agree : tree8146 = literal8146 := by
  rw [tree8146_def, tree8144_agree, tree8145_agree]
  rfl
theorem node8146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8146 live8146 coloured8146 = result8146 := by
  rw [tree8146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8144_eq
  unfold live8144 coloured8144 at child
  try dsimp only [live8146, coloured8146]
  rw [child]
  dsimp only [result8144]
  have child := node8145_eq
  unfold live8145 coloured8145 at child
  try dsimp only [live8146, coloured8146]
  rw [child]
  dsimp only [result8145]
  try dsimp only [colour, result8146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8147_agree : tree8147 = literal8147 := by
  rw [tree8147_def]
  rfl
theorem node8147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8147 live8147 coloured8147 = result8147 := by
  rw [tree8147_def]
  try dsimp only [colour, result8147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8148_agree : tree8148 = literal8148 := by
  rw [tree8148_def, tree8146_agree, tree8147_agree]
  rfl
theorem node8148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8148 live8148 coloured8148 = result8148 := by
  rw [tree8148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8146_eq
  unfold live8146 coloured8146 at child
  try dsimp only [live8148, coloured8148]
  rw [child]
  dsimp only [result8146]
  have child := node8147_eq
  unfold live8147 coloured8147 at child
  try dsimp only [live8148, coloured8148]
  rw [child]
  dsimp only [result8147]
  try dsimp only [colour, result8148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8149_agree : tree8149 = literal8149 := by
  rw [tree8149_def]
  rfl
theorem node8149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8149 live8149 coloured8149 = result8149 := by
  rw [tree8149_def]
  try dsimp only [colour, result8149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8150_agree : tree8150 = literal8150 := by
  rw [tree8150_def, tree8148_agree, tree8149_agree]
  rfl
theorem node8150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8150 live8150 coloured8150 = result8150 := by
  rw [tree8150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8148_eq
  unfold live8148 coloured8148 at child
  try dsimp only [live8150, coloured8150]
  rw [child]
  dsimp only [result8148]
  have child := node8149_eq
  unfold live8149 coloured8149 at child
  try dsimp only [live8150, coloured8150]
  rw [child]
  dsimp only [result8149]
  try dsimp only [colour, result8150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8151_agree : tree8151 = literal8151 := by
  rw [tree8151_def]
  rfl
theorem node8151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8151 live8151 coloured8151 = result8151 := by
  rw [tree8151_def]
  try dsimp only [colour, result8151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8152_agree : tree8152 = literal8152 := by
  rw [tree8152_def, tree8150_agree, tree8151_agree]
  rfl
theorem node8152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8152 live8152 coloured8152 = result8152 := by
  rw [tree8152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8150_eq
  unfold live8150 coloured8150 at child
  try dsimp only [live8152, coloured8152]
  rw [child]
  dsimp only [result8150]
  have child := node8151_eq
  unfold live8151 coloured8151 at child
  try dsimp only [live8152, coloured8152]
  rw [child]
  dsimp only [result8151]
  try dsimp only [colour, result8152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8153_agree : tree8153 = literal8153 := by
  rw [tree8153_def]
  rfl
theorem node8153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8153 live8153 coloured8153 = result8153 := by
  rw [tree8153_def]
  try dsimp only [colour, result8153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8154_agree : tree8154 = literal8154 := by
  rw [tree8154_def, tree8152_agree, tree8153_agree]
  rfl
theorem node8154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8154 live8154 coloured8154 = result8154 := by
  rw [tree8154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8152_eq
  unfold live8152 coloured8152 at child
  try dsimp only [live8154, coloured8154]
  rw [child]
  dsimp only [result8152]
  have child := node8153_eq
  unfold live8153 coloured8153 at child
  try dsimp only [live8154, coloured8154]
  rw [child]
  dsimp only [result8153]
  try dsimp only [colour, result8154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8155_agree : tree8155 = literal8155 := by
  rw [tree8155_def]
  rfl
theorem node8155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8155 live8155 coloured8155 = result8155 := by
  rw [tree8155_def]
  try dsimp only [colour, result8155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8156_agree : tree8156 = literal8156 := by
  rw [tree8156_def, tree8154_agree, tree8155_agree]
  rfl
theorem node8156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8156 live8156 coloured8156 = result8156 := by
  rw [tree8156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8154_eq
  unfold live8154 coloured8154 at child
  try dsimp only [live8156, coloured8156]
  rw [child]
  dsimp only [result8154]
  have child := node8155_eq
  unfold live8155 coloured8155 at child
  try dsimp only [live8156, coloured8156]
  rw [child]
  dsimp only [result8155]
  try dsimp only [colour, result8156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8157_agree : tree8157 = literal8157 := by
  rw [tree8157_def]
  rfl
theorem node8157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8157 live8157 coloured8157 = result8157 := by
  rw [tree8157_def]
  try dsimp only [colour, result8157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8158_agree : tree8158 = literal8158 := by
  rw [tree8158_def, tree8156_agree, tree8157_agree]
  rfl
theorem node8158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8158 live8158 coloured8158 = result8158 := by
  rw [tree8158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8156_eq
  unfold live8156 coloured8156 at child
  try dsimp only [live8158, coloured8158]
  rw [child]
  dsimp only [result8156]
  have child := node8157_eq
  unfold live8157 coloured8157 at child
  try dsimp only [live8158, coloured8158]
  rw [child]
  dsimp only [result8157]
  try dsimp only [colour, result8158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8159_agree : tree8159 = literal8159 := by
  rw [tree8159_def]
  rfl
theorem node8159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8159 live8159 coloured8159 = result8159 := by
  rw [tree8159_def]
  try dsimp only [colour, result8159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
