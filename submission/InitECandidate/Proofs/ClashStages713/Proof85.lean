import InitECandidate.Proofs.ClashStages713.Proof84
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree8160_agree : tree8160 = literal8160 := by
  rw [tree8160_def, tree8158_agree, tree8159_agree]
  rfl
theorem node8160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8160 live8160 coloured8160 = result8160 := by
  rw [tree8160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8158_eq
  unfold live8158 coloured8158 at child
  try dsimp only [live8160, coloured8160]
  rw [child]
  dsimp only [result8158]
  have child := node8159_eq
  unfold live8159 coloured8159 at child
  try dsimp only [live8160, coloured8160]
  rw [child]
  dsimp only [result8159]
  try dsimp only [colour, result8160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8161_agree : tree8161 = literal8161 := by
  rw [tree8161_def]
  rfl
theorem node8161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8161 live8161 coloured8161 = result8161 := by
  rw [tree8161_def]
  try dsimp only [colour, result8161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8162_agree : tree8162 = literal8162 := by
  rw [tree8162_def, tree8160_agree, tree8161_agree]
  rfl
theorem node8162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8162 live8162 coloured8162 = result8162 := by
  rw [tree8162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8160_eq
  unfold live8160 coloured8160 at child
  try dsimp only [live8162, coloured8162]
  rw [child]
  dsimp only [result8160]
  have child := node8161_eq
  unfold live8161 coloured8161 at child
  try dsimp only [live8162, coloured8162]
  rw [child]
  dsimp only [result8161]
  try dsimp only [colour, result8162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8163_agree : tree8163 = literal8163 := by
  rw [tree8163_def]
  rfl
theorem node8163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8163 live8163 coloured8163 = result8163 := by
  rw [tree8163_def]
  try dsimp only [colour, result8163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8164_agree : tree8164 = literal8164 := by
  rw [tree8164_def, tree8162_agree, tree8163_agree]
  rfl
theorem node8164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8164 live8164 coloured8164 = result8164 := by
  rw [tree8164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8162_eq
  unfold live8162 coloured8162 at child
  try dsimp only [live8164, coloured8164]
  rw [child]
  dsimp only [result8162]
  have child := node8163_eq
  unfold live8163 coloured8163 at child
  try dsimp only [live8164, coloured8164]
  rw [child]
  dsimp only [result8163]
  try dsimp only [colour, result8164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8165_agree : tree8165 = literal8165 := by
  rw [tree8165_def]
  rfl
theorem node8165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8165 live8165 coloured8165 = result8165 := by
  rw [tree8165_def]
  try dsimp only [colour, result8165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8166_agree : tree8166 = literal8166 := by
  rw [tree8166_def, tree8164_agree, tree8165_agree]
  rfl
theorem node8166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8166 live8166 coloured8166 = result8166 := by
  rw [tree8166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8164_eq
  unfold live8164 coloured8164 at child
  try dsimp only [live8166, coloured8166]
  rw [child]
  dsimp only [result8164]
  have child := node8165_eq
  unfold live8165 coloured8165 at child
  try dsimp only [live8166, coloured8166]
  rw [child]
  dsimp only [result8165]
  try dsimp only [colour, result8166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8167_agree : tree8167 = literal8167 := by
  rw [tree8167_def]
  rfl
theorem node8167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8167 live8167 coloured8167 = result8167 := by
  rw [tree8167_def]
  try dsimp only [colour, result8167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8168_agree : tree8168 = literal8168 := by
  rw [tree8168_def, tree8166_agree, tree8167_agree]
  rfl
theorem node8168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8168 live8168 coloured8168 = result8168 := by
  rw [tree8168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8166_eq
  unfold live8166 coloured8166 at child
  try dsimp only [live8168, coloured8168]
  rw [child]
  dsimp only [result8166]
  have child := node8167_eq
  unfold live8167 coloured8167 at child
  try dsimp only [live8168, coloured8168]
  rw [child]
  dsimp only [result8167]
  try dsimp only [colour, result8168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8169_agree : tree8169 = literal8169 := by
  rw [tree8169_def]
  rfl
theorem node8169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8169 live8169 coloured8169 = result8169 := by
  rw [tree8169_def]
  try dsimp only [colour, result8169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8170_agree : tree8170 = literal8170 := by
  rw [tree8170_def, tree8168_agree, tree8169_agree]
  rfl
theorem node8170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8170 live8170 coloured8170 = result8170 := by
  rw [tree8170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8168_eq
  unfold live8168 coloured8168 at child
  try dsimp only [live8170, coloured8170]
  rw [child]
  dsimp only [result8168]
  have child := node8169_eq
  unfold live8169 coloured8169 at child
  try dsimp only [live8170, coloured8170]
  rw [child]
  dsimp only [result8169]
  try dsimp only [colour, result8170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8171_agree : tree8171 = literal8171 := by
  rw [tree8171_def]
  rfl
theorem node8171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8171 live8171 coloured8171 = result8171 := by
  rw [tree8171_def]
  try dsimp only [colour, result8171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8172_agree : tree8172 = literal8172 := by
  rw [tree8172_def, tree8170_agree, tree8171_agree]
  rfl
theorem node8172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8172 live8172 coloured8172 = result8172 := by
  rw [tree8172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8170_eq
  unfold live8170 coloured8170 at child
  try dsimp only [live8172, coloured8172]
  rw [child]
  dsimp only [result8170]
  have child := node8171_eq
  unfold live8171 coloured8171 at child
  try dsimp only [live8172, coloured8172]
  rw [child]
  dsimp only [result8171]
  try dsimp only [colour, result8172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8173_agree : tree8173 = literal8173 := by
  rw [tree8173_def]
  rfl
theorem node8173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8173 live8173 coloured8173 = result8173 := by
  rw [tree8173_def]
  try dsimp only [colour, result8173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8174_agree : tree8174 = literal8174 := by
  rw [tree8174_def, tree8172_agree, tree8173_agree]
  rfl
theorem node8174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8174 live8174 coloured8174 = result8174 := by
  rw [tree8174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8172_eq
  unfold live8172 coloured8172 at child
  try dsimp only [live8174, coloured8174]
  rw [child]
  dsimp only [result8172]
  have child := node8173_eq
  unfold live8173 coloured8173 at child
  try dsimp only [live8174, coloured8174]
  rw [child]
  dsimp only [result8173]
  try dsimp only [colour, result8174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8175_agree : tree8175 = literal8175 := by
  rw [tree8175_def]
  rfl
theorem node8175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8175 live8175 coloured8175 = result8175 := by
  rw [tree8175_def]
  try dsimp only [colour, result8175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8176_agree : tree8176 = literal8176 := by
  rw [tree8176_def, tree8174_agree, tree8175_agree]
  rfl
theorem node8176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8176 live8176 coloured8176 = result8176 := by
  rw [tree8176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8174_eq
  unfold live8174 coloured8174 at child
  try dsimp only [live8176, coloured8176]
  rw [child]
  dsimp only [result8174]
  have child := node8175_eq
  unfold live8175 coloured8175 at child
  try dsimp only [live8176, coloured8176]
  rw [child]
  dsimp only [result8175]
  try dsimp only [colour, result8176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8177_agree : tree8177 = literal8177 := by
  rw [tree8177_def]
  rfl
theorem node8177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8177 live8177 coloured8177 = result8177 := by
  rw [tree8177_def]
  try dsimp only [colour, result8177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8178_agree : tree8178 = literal8178 := by
  rw [tree8178_def, tree8176_agree, tree8177_agree]
  rfl
theorem node8178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8178 live8178 coloured8178 = result8178 := by
  rw [tree8178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8176_eq
  unfold live8176 coloured8176 at child
  try dsimp only [live8178, coloured8178]
  rw [child]
  dsimp only [result8176]
  have child := node8177_eq
  unfold live8177 coloured8177 at child
  try dsimp only [live8178, coloured8178]
  rw [child]
  dsimp only [result8177]
  try dsimp only [colour, result8178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8179_agree : tree8179 = literal8179 := by
  rw [tree8179_def]
  rfl
theorem node8179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8179 live8179 coloured8179 = result8179 := by
  rw [tree8179_def]
  try dsimp only [colour, result8179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8180_agree : tree8180 = literal8180 := by
  rw [tree8180_def, tree8178_agree, tree8179_agree]
  rfl
theorem node8180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8180 live8180 coloured8180 = result8180 := by
  rw [tree8180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8178_eq
  unfold live8178 coloured8178 at child
  try dsimp only [live8180, coloured8180]
  rw [child]
  dsimp only [result8178]
  have child := node8179_eq
  unfold live8179 coloured8179 at child
  try dsimp only [live8180, coloured8180]
  rw [child]
  dsimp only [result8179]
  try dsimp only [colour, result8180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8181_agree : tree8181 = literal8181 := by
  rw [tree8181_def]
  rfl
theorem node8181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8181 live8181 coloured8181 = result8181 := by
  rw [tree8181_def]
  try dsimp only [colour, result8181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8182_agree : tree8182 = literal8182 := by
  rw [tree8182_def, tree8180_agree, tree8181_agree]
  rfl
theorem node8182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8182 live8182 coloured8182 = result8182 := by
  rw [tree8182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8180_eq
  unfold live8180 coloured8180 at child
  try dsimp only [live8182, coloured8182]
  rw [child]
  dsimp only [result8180]
  have child := node8181_eq
  unfold live8181 coloured8181 at child
  try dsimp only [live8182, coloured8182]
  rw [child]
  dsimp only [result8181]
  try dsimp only [colour, result8182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8183_agree : tree8183 = literal8183 := by
  rw [tree8183_def]
  rfl
theorem node8183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8183 live8183 coloured8183 = result8183 := by
  rw [tree8183_def]
  try dsimp only [colour, result8183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8184_agree : tree8184 = literal8184 := by
  rw [tree8184_def, tree8182_agree, tree8183_agree]
  rfl
theorem node8184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8184 live8184 coloured8184 = result8184 := by
  rw [tree8184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8182_eq
  unfold live8182 coloured8182 at child
  try dsimp only [live8184, coloured8184]
  rw [child]
  dsimp only [result8182]
  have child := node8183_eq
  unfold live8183 coloured8183 at child
  try dsimp only [live8184, coloured8184]
  rw [child]
  dsimp only [result8183]
  try dsimp only [colour, result8184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8185_agree : tree8185 = literal8185 := by
  rw [tree8185_def]
  rfl
theorem node8185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8185 live8185 coloured8185 = result8185 := by
  rw [tree8185_def]
  try dsimp only [colour, result8185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8186_agree : tree8186 = literal8186 := by
  rw [tree8186_def, tree8184_agree, tree8185_agree]
  rfl
theorem node8186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8186 live8186 coloured8186 = result8186 := by
  rw [tree8186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8184_eq
  unfold live8184 coloured8184 at child
  try dsimp only [live8186, coloured8186]
  rw [child]
  dsimp only [result8184]
  have child := node8185_eq
  unfold live8185 coloured8185 at child
  try dsimp only [live8186, coloured8186]
  rw [child]
  dsimp only [result8185]
  try dsimp only [colour, result8186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8187_agree : tree8187 = literal8187 := by
  rw [tree8187_def]
  rfl
theorem node8187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8187 live8187 coloured8187 = result8187 := by
  rw [tree8187_def]
  try dsimp only [colour, result8187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8188_agree : tree8188 = literal8188 := by
  rw [tree8188_def, tree8186_agree, tree8187_agree]
  rfl
theorem node8188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8188 live8188 coloured8188 = result8188 := by
  rw [tree8188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8186_eq
  unfold live8186 coloured8186 at child
  try dsimp only [live8188, coloured8188]
  rw [child]
  dsimp only [result8186]
  have child := node8187_eq
  unfold live8187 coloured8187 at child
  try dsimp only [live8188, coloured8188]
  rw [child]
  dsimp only [result8187]
  try dsimp only [colour, result8188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8189_agree : tree8189 = literal8189 := by
  rw [tree8189_def]
  rfl
theorem node8189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8189 live8189 coloured8189 = result8189 := by
  rw [tree8189_def]
  try dsimp only [colour, result8189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8190_agree : tree8190 = literal8190 := by
  rw [tree8190_def, tree8188_agree, tree8189_agree]
  rfl
theorem node8190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8190 live8190 coloured8190 = result8190 := by
  rw [tree8190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8188_eq
  unfold live8188 coloured8188 at child
  try dsimp only [live8190, coloured8190]
  rw [child]
  dsimp only [result8188]
  have child := node8189_eq
  unfold live8189 coloured8189 at child
  try dsimp only [live8190, coloured8190]
  rw [child]
  dsimp only [result8189]
  try dsimp only [colour, result8190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8191_agree : tree8191 = literal8191 := by
  rw [tree8191_def]
  rfl
theorem node8191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8191 live8191 coloured8191 = result8191 := by
  rw [tree8191_def]
  try dsimp only [colour, result8191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8192_agree : tree8192 = literal8192 := by
  rw [tree8192_def, tree8190_agree, tree8191_agree]
  rfl
theorem node8192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8192 live8192 coloured8192 = result8192 := by
  rw [tree8192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8190_eq
  unfold live8190 coloured8190 at child
  try dsimp only [live8192, coloured8192]
  rw [child]
  dsimp only [result8190]
  have child := node8191_eq
  unfold live8191 coloured8191 at child
  try dsimp only [live8192, coloured8192]
  rw [child]
  dsimp only [result8191]
  try dsimp only [colour, result8192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8193_agree : tree8193 = literal8193 := by
  rw [tree8193_def]
  rfl
theorem node8193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8193 live8193 coloured8193 = result8193 := by
  rw [tree8193_def]
  try dsimp only [colour, result8193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8194_agree : tree8194 = literal8194 := by
  rw [tree8194_def, tree8192_agree, tree8193_agree]
  rfl
theorem node8194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8194 live8194 coloured8194 = result8194 := by
  rw [tree8194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8192_eq
  unfold live8192 coloured8192 at child
  try dsimp only [live8194, coloured8194]
  rw [child]
  dsimp only [result8192]
  have child := node8193_eq
  unfold live8193 coloured8193 at child
  try dsimp only [live8194, coloured8194]
  rw [child]
  dsimp only [result8193]
  try dsimp only [colour, result8194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8195_agree : tree8195 = literal8195 := by
  rw [tree8195_def]
  rfl
theorem node8195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8195 live8195 coloured8195 = result8195 := by
  rw [tree8195_def]
  try dsimp only [colour, result8195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8196_agree : tree8196 = literal8196 := by
  rw [tree8196_def, tree8194_agree, tree8195_agree]
  rfl
theorem node8196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8196 live8196 coloured8196 = result8196 := by
  rw [tree8196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8194_eq
  unfold live8194 coloured8194 at child
  try dsimp only [live8196, coloured8196]
  rw [child]
  dsimp only [result8194]
  have child := node8195_eq
  unfold live8195 coloured8195 at child
  try dsimp only [live8196, coloured8196]
  rw [child]
  dsimp only [result8195]
  try dsimp only [colour, result8196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8197_agree : tree8197 = literal8197 := by
  rw [tree8197_def]
  rfl
theorem node8197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8197 live8197 coloured8197 = result8197 := by
  rw [tree8197_def]
  try dsimp only [colour, result8197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8198_agree : tree8198 = literal8198 := by
  rw [tree8198_def, tree8196_agree, tree8197_agree]
  rfl
theorem node8198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8198 live8198 coloured8198 = result8198 := by
  rw [tree8198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8196_eq
  unfold live8196 coloured8196 at child
  try dsimp only [live8198, coloured8198]
  rw [child]
  dsimp only [result8196]
  have child := node8197_eq
  unfold live8197 coloured8197 at child
  try dsimp only [live8198, coloured8198]
  rw [child]
  dsimp only [result8197]
  try dsimp only [colour, result8198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8199_agree : tree8199 = literal8199 := by
  rw [tree8199_def]
  rfl
theorem node8199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8199 live8199 coloured8199 = result8199 := by
  rw [tree8199_def]
  try dsimp only [colour, result8199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8200_agree : tree8200 = literal8200 := by
  rw [tree8200_def, tree8198_agree, tree8199_agree]
  rfl
theorem node8200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8200 live8200 coloured8200 = result8200 := by
  rw [tree8200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8198_eq
  unfold live8198 coloured8198 at child
  try dsimp only [live8200, coloured8200]
  rw [child]
  dsimp only [result8198]
  have child := node8199_eq
  unfold live8199 coloured8199 at child
  try dsimp only [live8200, coloured8200]
  rw [child]
  dsimp only [result8199]
  try dsimp only [colour, result8200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8201_agree : tree8201 = literal8201 := by
  rw [tree8201_def]
  rfl
theorem node8201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8201 live8201 coloured8201 = result8201 := by
  rw [tree8201_def]
  try dsimp only [colour, result8201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8202_agree : tree8202 = literal8202 := by
  rw [tree8202_def, tree8200_agree, tree8201_agree]
  rfl
theorem node8202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8202 live8202 coloured8202 = result8202 := by
  rw [tree8202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8200_eq
  unfold live8200 coloured8200 at child
  try dsimp only [live8202, coloured8202]
  rw [child]
  dsimp only [result8200]
  have child := node8201_eq
  unfold live8201 coloured8201 at child
  try dsimp only [live8202, coloured8202]
  rw [child]
  dsimp only [result8201]
  try dsimp only [colour, result8202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8203_agree : tree8203 = literal8203 := by
  rw [tree8203_def]
  rfl
theorem node8203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8203 live8203 coloured8203 = result8203 := by
  rw [tree8203_def]
  try dsimp only [colour, result8203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8204_agree : tree8204 = literal8204 := by
  rw [tree8204_def, tree8202_agree, tree8203_agree]
  rfl
theorem node8204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8204 live8204 coloured8204 = result8204 := by
  rw [tree8204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8202_eq
  unfold live8202 coloured8202 at child
  try dsimp only [live8204, coloured8204]
  rw [child]
  dsimp only [result8202]
  have child := node8203_eq
  unfold live8203 coloured8203 at child
  try dsimp only [live8204, coloured8204]
  rw [child]
  dsimp only [result8203]
  try dsimp only [colour, result8204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8205_agree : tree8205 = literal8205 := by
  rw [tree8205_def]
  rfl
theorem node8205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8205 live8205 coloured8205 = result8205 := by
  rw [tree8205_def]
  try dsimp only [colour, result8205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8206_agree : tree8206 = literal8206 := by
  rw [tree8206_def, tree8204_agree, tree8205_agree]
  rfl
theorem node8206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8206 live8206 coloured8206 = result8206 := by
  rw [tree8206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8204_eq
  unfold live8204 coloured8204 at child
  try dsimp only [live8206, coloured8206]
  rw [child]
  dsimp only [result8204]
  have child := node8205_eq
  unfold live8205 coloured8205 at child
  try dsimp only [live8206, coloured8206]
  rw [child]
  dsimp only [result8205]
  try dsimp only [colour, result8206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8207_agree : tree8207 = literal8207 := by
  rw [tree8207_def]
  rfl
theorem node8207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8207 live8207 coloured8207 = result8207 := by
  rw [tree8207_def]
  try dsimp only [colour, result8207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8208_agree : tree8208 = literal8208 := by
  rw [tree8208_def, tree8206_agree, tree8207_agree]
  rfl
theorem node8208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8208 live8208 coloured8208 = result8208 := by
  rw [tree8208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8206_eq
  unfold live8206 coloured8206 at child
  try dsimp only [live8208, coloured8208]
  rw [child]
  dsimp only [result8206]
  have child := node8207_eq
  unfold live8207 coloured8207 at child
  try dsimp only [live8208, coloured8208]
  rw [child]
  dsimp only [result8207]
  try dsimp only [colour, result8208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8209_agree : tree8209 = literal8209 := by
  rw [tree8209_def]
  rfl
theorem node8209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8209 live8209 coloured8209 = result8209 := by
  rw [tree8209_def]
  try dsimp only [colour, result8209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8210_agree : tree8210 = literal8210 := by
  rw [tree8210_def, tree8208_agree, tree8209_agree]
  rfl
theorem node8210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8210 live8210 coloured8210 = result8210 := by
  rw [tree8210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8208_eq
  unfold live8208 coloured8208 at child
  try dsimp only [live8210, coloured8210]
  rw [child]
  dsimp only [result8208]
  have child := node8209_eq
  unfold live8209 coloured8209 at child
  try dsimp only [live8210, coloured8210]
  rw [child]
  dsimp only [result8209]
  try dsimp only [colour, result8210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8211_agree : tree8211 = literal8211 := by
  rw [tree8211_def]
  rfl
theorem node8211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8211 live8211 coloured8211 = result8211 := by
  rw [tree8211_def]
  try dsimp only [colour, result8211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8212_agree : tree8212 = literal8212 := by
  rw [tree8212_def, tree8210_agree, tree8211_agree]
  rfl
theorem node8212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8212 live8212 coloured8212 = result8212 := by
  rw [tree8212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8210_eq
  unfold live8210 coloured8210 at child
  try dsimp only [live8212, coloured8212]
  rw [child]
  dsimp only [result8210]
  have child := node8211_eq
  unfold live8211 coloured8211 at child
  try dsimp only [live8212, coloured8212]
  rw [child]
  dsimp only [result8211]
  try dsimp only [colour, result8212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8213_agree : tree8213 = literal8213 := by
  rw [tree8213_def]
  rfl
theorem node8213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8213 live8213 coloured8213 = result8213 := by
  rw [tree8213_def]
  try dsimp only [colour, result8213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8214_agree : tree8214 = literal8214 := by
  rw [tree8214_def, tree8212_agree, tree8213_agree]
  rfl
theorem node8214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8214 live8214 coloured8214 = result8214 := by
  rw [tree8214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8212_eq
  unfold live8212 coloured8212 at child
  try dsimp only [live8214, coloured8214]
  rw [child]
  dsimp only [result8212]
  have child := node8213_eq
  unfold live8213 coloured8213 at child
  try dsimp only [live8214, coloured8214]
  rw [child]
  dsimp only [result8213]
  try dsimp only [colour, result8214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8215_agree : tree8215 = literal8215 := by
  rw [tree8215_def]
  rfl
theorem node8215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8215 live8215 coloured8215 = result8215 := by
  rw [tree8215_def]
  try dsimp only [colour, result8215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8216_agree : tree8216 = literal8216 := by
  rw [tree8216_def, tree8214_agree, tree8215_agree]
  rfl
theorem node8216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8216 live8216 coloured8216 = result8216 := by
  rw [tree8216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8214_eq
  unfold live8214 coloured8214 at child
  try dsimp only [live8216, coloured8216]
  rw [child]
  dsimp only [result8214]
  have child := node8215_eq
  unfold live8215 coloured8215 at child
  try dsimp only [live8216, coloured8216]
  rw [child]
  dsimp only [result8215]
  try dsimp only [colour, result8216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8217_agree : tree8217 = literal8217 := by
  rw [tree8217_def]
  rfl
theorem node8217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8217 live8217 coloured8217 = result8217 := by
  rw [tree8217_def]
  try dsimp only [colour, result8217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8218_agree : tree8218 = literal8218 := by
  rw [tree8218_def, tree8216_agree, tree8217_agree]
  rfl
theorem node8218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8218 live8218 coloured8218 = result8218 := by
  rw [tree8218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8216_eq
  unfold live8216 coloured8216 at child
  try dsimp only [live8218, coloured8218]
  rw [child]
  dsimp only [result8216]
  have child := node8217_eq
  unfold live8217 coloured8217 at child
  try dsimp only [live8218, coloured8218]
  rw [child]
  dsimp only [result8217]
  try dsimp only [colour, result8218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8219_agree : tree8219 = literal8219 := by
  rw [tree8219_def]
  rfl
theorem node8219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8219 live8219 coloured8219 = result8219 := by
  rw [tree8219_def]
  try dsimp only [colour, result8219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8220_agree : tree8220 = literal8220 := by
  rw [tree8220_def, tree8218_agree, tree8219_agree]
  rfl
theorem node8220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8220 live8220 coloured8220 = result8220 := by
  rw [tree8220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8218_eq
  unfold live8218 coloured8218 at child
  try dsimp only [live8220, coloured8220]
  rw [child]
  dsimp only [result8218]
  have child := node8219_eq
  unfold live8219 coloured8219 at child
  try dsimp only [live8220, coloured8220]
  rw [child]
  dsimp only [result8219]
  try dsimp only [colour, result8220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8221_agree : tree8221 = literal8221 := by
  rw [tree8221_def]
  rfl
theorem node8221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8221 live8221 coloured8221 = result8221 := by
  rw [tree8221_def]
  try dsimp only [colour, result8221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8222_agree : tree8222 = literal8222 := by
  rw [tree8222_def, tree8220_agree, tree8221_agree]
  rfl
theorem node8222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8222 live8222 coloured8222 = result8222 := by
  rw [tree8222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8220_eq
  unfold live8220 coloured8220 at child
  try dsimp only [live8222, coloured8222]
  rw [child]
  dsimp only [result8220]
  have child := node8221_eq
  unfold live8221 coloured8221 at child
  try dsimp only [live8222, coloured8222]
  rw [child]
  dsimp only [result8221]
  try dsimp only [colour, result8222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8223_agree : tree8223 = literal8223 := by
  rw [tree8223_def]
  rfl
theorem node8223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8223 live8223 coloured8223 = result8223 := by
  rw [tree8223_def]
  try dsimp only [colour, result8223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8224_agree : tree8224 = literal8224 := by
  rw [tree8224_def, tree8222_agree, tree8223_agree]
  rfl
theorem node8224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8224 live8224 coloured8224 = result8224 := by
  rw [tree8224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8222_eq
  unfold live8222 coloured8222 at child
  try dsimp only [live8224, coloured8224]
  rw [child]
  dsimp only [result8222]
  have child := node8223_eq
  unfold live8223 coloured8223 at child
  try dsimp only [live8224, coloured8224]
  rw [child]
  dsimp only [result8223]
  try dsimp only [colour, result8224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8225_agree : tree8225 = literal8225 := by
  rw [tree8225_def]
  rfl
theorem node8225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8225 live8225 coloured8225 = result8225 := by
  rw [tree8225_def]
  try dsimp only [colour, result8225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8226_agree : tree8226 = literal8226 := by
  rw [tree8226_def, tree8224_agree, tree8225_agree]
  rfl
theorem node8226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8226 live8226 coloured8226 = result8226 := by
  rw [tree8226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8224_eq
  unfold live8224 coloured8224 at child
  try dsimp only [live8226, coloured8226]
  rw [child]
  dsimp only [result8224]
  have child := node8225_eq
  unfold live8225 coloured8225 at child
  try dsimp only [live8226, coloured8226]
  rw [child]
  dsimp only [result8225]
  try dsimp only [colour, result8226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8227_agree : tree8227 = literal8227 := by
  rw [tree8227_def]
  rfl
theorem node8227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8227 live8227 coloured8227 = result8227 := by
  rw [tree8227_def]
  try dsimp only [colour, result8227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8228_agree : tree8228 = literal8228 := by
  rw [tree8228_def, tree8226_agree, tree8227_agree]
  rfl
theorem node8228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8228 live8228 coloured8228 = result8228 := by
  rw [tree8228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8226_eq
  unfold live8226 coloured8226 at child
  try dsimp only [live8228, coloured8228]
  rw [child]
  dsimp only [result8226]
  have child := node8227_eq
  unfold live8227 coloured8227 at child
  try dsimp only [live8228, coloured8228]
  rw [child]
  dsimp only [result8227]
  try dsimp only [colour, result8228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8229_agree : tree8229 = literal8229 := by
  rw [tree8229_def]
  rfl
theorem node8229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8229 live8229 coloured8229 = result8229 := by
  rw [tree8229_def]
  try dsimp only [colour, result8229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8230_agree : tree8230 = literal8230 := by
  rw [tree8230_def, tree8228_agree, tree8229_agree]
  rfl
theorem node8230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8230 live8230 coloured8230 = result8230 := by
  rw [tree8230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8228_eq
  unfold live8228 coloured8228 at child
  try dsimp only [live8230, coloured8230]
  rw [child]
  dsimp only [result8228]
  have child := node8229_eq
  unfold live8229 coloured8229 at child
  try dsimp only [live8230, coloured8230]
  rw [child]
  dsimp only [result8229]
  try dsimp only [colour, result8230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8231_agree : tree8231 = literal8231 := by
  rw [tree8231_def]
  rfl
theorem node8231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8231 live8231 coloured8231 = result8231 := by
  rw [tree8231_def]
  try dsimp only [colour, result8231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8232_agree : tree8232 = literal8232 := by
  rw [tree8232_def, tree8230_agree, tree8231_agree]
  rfl
theorem node8232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8232 live8232 coloured8232 = result8232 := by
  rw [tree8232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8230_eq
  unfold live8230 coloured8230 at child
  try dsimp only [live8232, coloured8232]
  rw [child]
  dsimp only [result8230]
  have child := node8231_eq
  unfold live8231 coloured8231 at child
  try dsimp only [live8232, coloured8232]
  rw [child]
  dsimp only [result8231]
  try dsimp only [colour, result8232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8233_agree : tree8233 = literal8233 := by
  rw [tree8233_def]
  rfl
theorem node8233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8233 live8233 coloured8233 = result8233 := by
  rw [tree8233_def]
  try dsimp only [colour, result8233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8234_agree : tree8234 = literal8234 := by
  rw [tree8234_def, tree8232_agree, tree8233_agree]
  rfl
theorem node8234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8234 live8234 coloured8234 = result8234 := by
  rw [tree8234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8232_eq
  unfold live8232 coloured8232 at child
  try dsimp only [live8234, coloured8234]
  rw [child]
  dsimp only [result8232]
  have child := node8233_eq
  unfold live8233 coloured8233 at child
  try dsimp only [live8234, coloured8234]
  rw [child]
  dsimp only [result8233]
  try dsimp only [colour, result8234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8235_agree : tree8235 = literal8235 := by
  rw [tree8235_def]
  rfl
theorem node8235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8235 live8235 coloured8235 = result8235 := by
  rw [tree8235_def]
  try dsimp only [colour, result8235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8236_agree : tree8236 = literal8236 := by
  rw [tree8236_def, tree8234_agree, tree8235_agree]
  rfl
theorem node8236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8236 live8236 coloured8236 = result8236 := by
  rw [tree8236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8234_eq
  unfold live8234 coloured8234 at child
  try dsimp only [live8236, coloured8236]
  rw [child]
  dsimp only [result8234]
  have child := node8235_eq
  unfold live8235 coloured8235 at child
  try dsimp only [live8236, coloured8236]
  rw [child]
  dsimp only [result8235]
  try dsimp only [colour, result8236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8237_agree : tree8237 = literal8237 := by
  rw [tree8237_def]
  rfl
theorem node8237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8237 live8237 coloured8237 = result8237 := by
  rw [tree8237_def]
  try dsimp only [colour, result8237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8238_agree : tree8238 = literal8238 := by
  rw [tree8238_def, tree8236_agree, tree8237_agree]
  rfl
theorem node8238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8238 live8238 coloured8238 = result8238 := by
  rw [tree8238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8236_eq
  unfold live8236 coloured8236 at child
  try dsimp only [live8238, coloured8238]
  rw [child]
  dsimp only [result8236]
  have child := node8237_eq
  unfold live8237 coloured8237 at child
  try dsimp only [live8238, coloured8238]
  rw [child]
  dsimp only [result8237]
  try dsimp only [colour, result8238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8239_agree : tree8239 = literal8239 := by
  rw [tree8239_def]
  rfl
theorem node8239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8239 live8239 coloured8239 = result8239 := by
  rw [tree8239_def]
  try dsimp only [colour, result8239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8240_agree : tree8240 = literal8240 := by
  rw [tree8240_def, tree8238_agree, tree8239_agree]
  rfl
theorem node8240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8240 live8240 coloured8240 = result8240 := by
  rw [tree8240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8238_eq
  unfold live8238 coloured8238 at child
  try dsimp only [live8240, coloured8240]
  rw [child]
  dsimp only [result8238]
  have child := node8239_eq
  unfold live8239 coloured8239 at child
  try dsimp only [live8240, coloured8240]
  rw [child]
  dsimp only [result8239]
  try dsimp only [colour, result8240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8241_agree : tree8241 = literal8241 := by
  rw [tree8241_def]
  rfl
theorem node8241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8241 live8241 coloured8241 = result8241 := by
  rw [tree8241_def]
  try dsimp only [colour, result8241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8242_agree : tree8242 = literal8242 := by
  rw [tree8242_def, tree8240_agree, tree8241_agree]
  rfl
theorem node8242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8242 live8242 coloured8242 = result8242 := by
  rw [tree8242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8240_eq
  unfold live8240 coloured8240 at child
  try dsimp only [live8242, coloured8242]
  rw [child]
  dsimp only [result8240]
  have child := node8241_eq
  unfold live8241 coloured8241 at child
  try dsimp only [live8242, coloured8242]
  rw [child]
  dsimp only [result8241]
  try dsimp only [colour, result8242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8243_agree : tree8243 = literal8243 := by
  rw [tree8243_def]
  rfl
theorem node8243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8243 live8243 coloured8243 = result8243 := by
  rw [tree8243_def]
  try dsimp only [colour, result8243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8244_agree : tree8244 = literal8244 := by
  rw [tree8244_def, tree8242_agree, tree8243_agree]
  rfl
theorem node8244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8244 live8244 coloured8244 = result8244 := by
  rw [tree8244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8242_eq
  unfold live8242 coloured8242 at child
  try dsimp only [live8244, coloured8244]
  rw [child]
  dsimp only [result8242]
  have child := node8243_eq
  unfold live8243 coloured8243 at child
  try dsimp only [live8244, coloured8244]
  rw [child]
  dsimp only [result8243]
  try dsimp only [colour, result8244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8245_agree : tree8245 = literal8245 := by
  rw [tree8245_def]
  rfl
theorem node8245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8245 live8245 coloured8245 = result8245 := by
  rw [tree8245_def]
  try dsimp only [colour, result8245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8246_agree : tree8246 = literal8246 := by
  rw [tree8246_def, tree8244_agree, tree8245_agree]
  rfl
theorem node8246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8246 live8246 coloured8246 = result8246 := by
  rw [tree8246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8244_eq
  unfold live8244 coloured8244 at child
  try dsimp only [live8246, coloured8246]
  rw [child]
  dsimp only [result8244]
  have child := node8245_eq
  unfold live8245 coloured8245 at child
  try dsimp only [live8246, coloured8246]
  rw [child]
  dsimp only [result8245]
  try dsimp only [colour, result8246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8247_agree : tree8247 = literal8247 := by
  rw [tree8247_def]
  rfl
theorem node8247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8247 live8247 coloured8247 = result8247 := by
  rw [tree8247_def]
  try dsimp only [colour, result8247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8248_agree : tree8248 = literal8248 := by
  rw [tree8248_def, tree8246_agree, tree8247_agree]
  rfl
theorem node8248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8248 live8248 coloured8248 = result8248 := by
  rw [tree8248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8246_eq
  unfold live8246 coloured8246 at child
  try dsimp only [live8248, coloured8248]
  rw [child]
  dsimp only [result8246]
  have child := node8247_eq
  unfold live8247 coloured8247 at child
  try dsimp only [live8248, coloured8248]
  rw [child]
  dsimp only [result8247]
  try dsimp only [colour, result8248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8249_agree : tree8249 = literal8249 := by
  rw [tree8249_def]
  rfl
theorem node8249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8249 live8249 coloured8249 = result8249 := by
  rw [tree8249_def]
  try dsimp only [colour, result8249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8250_agree : tree8250 = literal8250 := by
  rw [tree8250_def, tree8248_agree, tree8249_agree]
  rfl
theorem node8250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8250 live8250 coloured8250 = result8250 := by
  rw [tree8250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8248_eq
  unfold live8248 coloured8248 at child
  try dsimp only [live8250, coloured8250]
  rw [child]
  dsimp only [result8248]
  have child := node8249_eq
  unfold live8249 coloured8249 at child
  try dsimp only [live8250, coloured8250]
  rw [child]
  dsimp only [result8249]
  try dsimp only [colour, result8250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8251_agree : tree8251 = literal8251 := by
  rw [tree8251_def]
  rfl
theorem node8251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8251 live8251 coloured8251 = result8251 := by
  rw [tree8251_def]
  try dsimp only [colour, result8251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8252_agree : tree8252 = literal8252 := by
  rw [tree8252_def, tree8250_agree, tree8251_agree]
  rfl
theorem node8252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8252 live8252 coloured8252 = result8252 := by
  rw [tree8252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8250_eq
  unfold live8250 coloured8250 at child
  try dsimp only [live8252, coloured8252]
  rw [child]
  dsimp only [result8250]
  have child := node8251_eq
  unfold live8251 coloured8251 at child
  try dsimp only [live8252, coloured8252]
  rw [child]
  dsimp only [result8251]
  try dsimp only [colour, result8252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8253_agree : tree8253 = literal8253 := by
  rw [tree8253_def]
  rfl
theorem node8253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8253 live8253 coloured8253 = result8253 := by
  rw [tree8253_def]
  try dsimp only [colour, result8253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8254_agree : tree8254 = literal8254 := by
  rw [tree8254_def, tree8252_agree, tree8253_agree]
  rfl
theorem node8254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8254 live8254 coloured8254 = result8254 := by
  rw [tree8254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8252_eq
  unfold live8252 coloured8252 at child
  try dsimp only [live8254, coloured8254]
  rw [child]
  dsimp only [result8252]
  have child := node8253_eq
  unfold live8253 coloured8253 at child
  try dsimp only [live8254, coloured8254]
  rw [child]
  dsimp only [result8253]
  try dsimp only [colour, result8254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8255_agree : tree8255 = literal8255 := by
  rw [tree8255_def]
  rfl
theorem node8255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8255 live8255 coloured8255 = result8255 := by
  rw [tree8255_def]
  try dsimp only [colour, result8255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
