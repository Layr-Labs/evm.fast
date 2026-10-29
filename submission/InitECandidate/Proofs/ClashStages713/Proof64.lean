import InitECandidate.Proofs.ClashStages713.Proof63
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree6144_agree : tree6144 = literal6144 := by
  rw [tree6144_def, tree6142_agree, tree6143_agree]
  rfl
theorem node6144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6144 live6144 coloured6144 = result6144 := by
  rw [tree6144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6142_eq
  unfold live6142 coloured6142 at child
  try dsimp only [live6144, coloured6144]
  rw [child]
  dsimp only [result6142]
  have child := node6143_eq
  unfold live6143 coloured6143 at child
  try dsimp only [live6144, coloured6144]
  rw [child]
  dsimp only [result6143]
  try dsimp only [colour, result6144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6145_agree : tree6145 = literal6145 := by
  rw [tree6145_def]
  rfl
theorem node6145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6145 live6145 coloured6145 = result6145 := by
  rw [tree6145_def]
  try dsimp only [colour, result6145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6146_agree : tree6146 = literal6146 := by
  rw [tree6146_def, tree6144_agree, tree6145_agree]
  rfl
theorem node6146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6146 live6146 coloured6146 = result6146 := by
  rw [tree6146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6144_eq
  unfold live6144 coloured6144 at child
  try dsimp only [live6146, coloured6146]
  rw [child]
  dsimp only [result6144]
  have child := node6145_eq
  unfold live6145 coloured6145 at child
  try dsimp only [live6146, coloured6146]
  rw [child]
  dsimp only [result6145]
  try dsimp only [colour, result6146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6147_agree : tree6147 = literal6147 := by
  rw [tree6147_def]
  rfl
theorem node6147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6147 live6147 coloured6147 = result6147 := by
  rw [tree6147_def]
  try dsimp only [colour, result6147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6148_agree : tree6148 = literal6148 := by
  rw [tree6148_def, tree6146_agree, tree6147_agree]
  rfl
theorem node6148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6148 live6148 coloured6148 = result6148 := by
  rw [tree6148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6146_eq
  unfold live6146 coloured6146 at child
  try dsimp only [live6148, coloured6148]
  rw [child]
  dsimp only [result6146]
  have child := node6147_eq
  unfold live6147 coloured6147 at child
  try dsimp only [live6148, coloured6148]
  rw [child]
  dsimp only [result6147]
  try dsimp only [colour, result6148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6149_agree : tree6149 = literal6149 := by
  rw [tree6149_def]
  rfl
theorem node6149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6149 live6149 coloured6149 = result6149 := by
  rw [tree6149_def]
  try dsimp only [colour, result6149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6150_agree : tree6150 = literal6150 := by
  rw [tree6150_def, tree6148_agree, tree6149_agree]
  rfl
theorem node6150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6150 live6150 coloured6150 = result6150 := by
  rw [tree6150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6148_eq
  unfold live6148 coloured6148 at child
  try dsimp only [live6150, coloured6150]
  rw [child]
  dsimp only [result6148]
  have child := node6149_eq
  unfold live6149 coloured6149 at child
  try dsimp only [live6150, coloured6150]
  rw [child]
  dsimp only [result6149]
  try dsimp only [colour, result6150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6151_agree : tree6151 = literal6151 := by
  rw [tree6151_def]
  rfl
theorem node6151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6151 live6151 coloured6151 = result6151 := by
  rw [tree6151_def]
  try dsimp only [colour, result6151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6152_agree : tree6152 = literal6152 := by
  rw [tree6152_def, tree6150_agree, tree6151_agree]
  rfl
theorem node6152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6152 live6152 coloured6152 = result6152 := by
  rw [tree6152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6150_eq
  unfold live6150 coloured6150 at child
  try dsimp only [live6152, coloured6152]
  rw [child]
  dsimp only [result6150]
  have child := node6151_eq
  unfold live6151 coloured6151 at child
  try dsimp only [live6152, coloured6152]
  rw [child]
  dsimp only [result6151]
  try dsimp only [colour, result6152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6153_agree : tree6153 = literal6153 := by
  rw [tree6153_def]
  rfl
theorem node6153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6153 live6153 coloured6153 = result6153 := by
  rw [tree6153_def]
  try dsimp only [colour, result6153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6154_agree : tree6154 = literal6154 := by
  rw [tree6154_def, tree6152_agree, tree6153_agree]
  rfl
theorem node6154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6154 live6154 coloured6154 = result6154 := by
  rw [tree6154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6152_eq
  unfold live6152 coloured6152 at child
  try dsimp only [live6154, coloured6154]
  rw [child]
  dsimp only [result6152]
  have child := node6153_eq
  unfold live6153 coloured6153 at child
  try dsimp only [live6154, coloured6154]
  rw [child]
  dsimp only [result6153]
  try dsimp only [colour, result6154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6155_agree : tree6155 = literal6155 := by
  rw [tree6155_def]
  rfl
theorem node6155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6155 live6155 coloured6155 = result6155 := by
  rw [tree6155_def]
  try dsimp only [colour, result6155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6156_agree : tree6156 = literal6156 := by
  rw [tree6156_def, tree6154_agree, tree6155_agree]
  rfl
theorem node6156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6156 live6156 coloured6156 = result6156 := by
  rw [tree6156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6154_eq
  unfold live6154 coloured6154 at child
  try dsimp only [live6156, coloured6156]
  rw [child]
  dsimp only [result6154]
  have child := node6155_eq
  unfold live6155 coloured6155 at child
  try dsimp only [live6156, coloured6156]
  rw [child]
  dsimp only [result6155]
  try dsimp only [colour, result6156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6157_agree : tree6157 = literal6157 := by
  rw [tree6157_def]
  rfl
theorem node6157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6157 live6157 coloured6157 = result6157 := by
  rw [tree6157_def]
  try dsimp only [colour, result6157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6158_agree : tree6158 = literal6158 := by
  rw [tree6158_def, tree6156_agree, tree6157_agree]
  rfl
theorem node6158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6158 live6158 coloured6158 = result6158 := by
  rw [tree6158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6156_eq
  unfold live6156 coloured6156 at child
  try dsimp only [live6158, coloured6158]
  rw [child]
  dsimp only [result6156]
  have child := node6157_eq
  unfold live6157 coloured6157 at child
  try dsimp only [live6158, coloured6158]
  rw [child]
  dsimp only [result6157]
  try dsimp only [colour, result6158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6159_agree : tree6159 = literal6159 := by
  rw [tree6159_def]
  rfl
theorem node6159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6159 live6159 coloured6159 = result6159 := by
  rw [tree6159_def]
  try dsimp only [colour, result6159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6160_agree : tree6160 = literal6160 := by
  rw [tree6160_def, tree6158_agree, tree6159_agree]
  rfl
theorem node6160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6160 live6160 coloured6160 = result6160 := by
  rw [tree6160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6158_eq
  unfold live6158 coloured6158 at child
  try dsimp only [live6160, coloured6160]
  rw [child]
  dsimp only [result6158]
  have child := node6159_eq
  unfold live6159 coloured6159 at child
  try dsimp only [live6160, coloured6160]
  rw [child]
  dsimp only [result6159]
  try dsimp only [colour, result6160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6161_agree : tree6161 = literal6161 := by
  rw [tree6161_def]
  rfl
theorem node6161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6161 live6161 coloured6161 = result6161 := by
  rw [tree6161_def]
  try dsimp only [colour, result6161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6162_agree : tree6162 = literal6162 := by
  rw [tree6162_def, tree6160_agree, tree6161_agree]
  rfl
theorem node6162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6162 live6162 coloured6162 = result6162 := by
  rw [tree6162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6160_eq
  unfold live6160 coloured6160 at child
  try dsimp only [live6162, coloured6162]
  rw [child]
  dsimp only [result6160]
  have child := node6161_eq
  unfold live6161 coloured6161 at child
  try dsimp only [live6162, coloured6162]
  rw [child]
  dsimp only [result6161]
  try dsimp only [colour, result6162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6163_agree : tree6163 = literal6163 := by
  rw [tree6163_def]
  rfl
theorem node6163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6163 live6163 coloured6163 = result6163 := by
  rw [tree6163_def]
  try dsimp only [colour, result6163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6164_agree : tree6164 = literal6164 := by
  rw [tree6164_def, tree6162_agree, tree6163_agree]
  rfl
theorem node6164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6164 live6164 coloured6164 = result6164 := by
  rw [tree6164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6162_eq
  unfold live6162 coloured6162 at child
  try dsimp only [live6164, coloured6164]
  rw [child]
  dsimp only [result6162]
  have child := node6163_eq
  unfold live6163 coloured6163 at child
  try dsimp only [live6164, coloured6164]
  rw [child]
  dsimp only [result6163]
  try dsimp only [colour, result6164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6165_agree : tree6165 = literal6165 := by
  rw [tree6165_def]
  rfl
theorem node6165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6165 live6165 coloured6165 = result6165 := by
  rw [tree6165_def]
  try dsimp only [colour, result6165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6166_agree : tree6166 = literal6166 := by
  rw [tree6166_def, tree6164_agree, tree6165_agree]
  rfl
theorem node6166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6166 live6166 coloured6166 = result6166 := by
  rw [tree6166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6164_eq
  unfold live6164 coloured6164 at child
  try dsimp only [live6166, coloured6166]
  rw [child]
  dsimp only [result6164]
  have child := node6165_eq
  unfold live6165 coloured6165 at child
  try dsimp only [live6166, coloured6166]
  rw [child]
  dsimp only [result6165]
  try dsimp only [colour, result6166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6167_agree : tree6167 = literal6167 := by
  rw [tree6167_def]
  rfl
theorem node6167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6167 live6167 coloured6167 = result6167 := by
  rw [tree6167_def]
  try dsimp only [colour, result6167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6168_agree : tree6168 = literal6168 := by
  rw [tree6168_def, tree6166_agree, tree6167_agree]
  rfl
theorem node6168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6168 live6168 coloured6168 = result6168 := by
  rw [tree6168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6166_eq
  unfold live6166 coloured6166 at child
  try dsimp only [live6168, coloured6168]
  rw [child]
  dsimp only [result6166]
  have child := node6167_eq
  unfold live6167 coloured6167 at child
  try dsimp only [live6168, coloured6168]
  rw [child]
  dsimp only [result6167]
  try dsimp only [colour, result6168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6169_agree : tree6169 = literal6169 := by
  rw [tree6169_def]
  rfl
theorem node6169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6169 live6169 coloured6169 = result6169 := by
  rw [tree6169_def]
  try dsimp only [colour, result6169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6170_agree : tree6170 = literal6170 := by
  rw [tree6170_def, tree6168_agree, tree6169_agree]
  rfl
theorem node6170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6170 live6170 coloured6170 = result6170 := by
  rw [tree6170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6168_eq
  unfold live6168 coloured6168 at child
  try dsimp only [live6170, coloured6170]
  rw [child]
  dsimp only [result6168]
  have child := node6169_eq
  unfold live6169 coloured6169 at child
  try dsimp only [live6170, coloured6170]
  rw [child]
  dsimp only [result6169]
  try dsimp only [colour, result6170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6171_agree : tree6171 = literal6171 := by
  rw [tree6171_def]
  rfl
theorem node6171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6171 live6171 coloured6171 = result6171 := by
  rw [tree6171_def]
  try dsimp only [colour, result6171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6172_agree : tree6172 = literal6172 := by
  rw [tree6172_def, tree6170_agree, tree6171_agree]
  rfl
theorem node6172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6172 live6172 coloured6172 = result6172 := by
  rw [tree6172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6170_eq
  unfold live6170 coloured6170 at child
  try dsimp only [live6172, coloured6172]
  rw [child]
  dsimp only [result6170]
  have child := node6171_eq
  unfold live6171 coloured6171 at child
  try dsimp only [live6172, coloured6172]
  rw [child]
  dsimp only [result6171]
  try dsimp only [colour, result6172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6173_agree : tree6173 = literal6173 := by
  rw [tree6173_def]
  rfl
theorem node6173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6173 live6173 coloured6173 = result6173 := by
  rw [tree6173_def]
  try dsimp only [colour, result6173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6174_agree : tree6174 = literal6174 := by
  rw [tree6174_def, tree6172_agree, tree6173_agree]
  rfl
theorem node6174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6174 live6174 coloured6174 = result6174 := by
  rw [tree6174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6172_eq
  unfold live6172 coloured6172 at child
  try dsimp only [live6174, coloured6174]
  rw [child]
  dsimp only [result6172]
  have child := node6173_eq
  unfold live6173 coloured6173 at child
  try dsimp only [live6174, coloured6174]
  rw [child]
  dsimp only [result6173]
  try dsimp only [colour, result6174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6175_agree : tree6175 = literal6175 := by
  rw [tree6175_def]
  rfl
theorem node6175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6175 live6175 coloured6175 = result6175 := by
  rw [tree6175_def]
  try dsimp only [colour, result6175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6176_agree : tree6176 = literal6176 := by
  rw [tree6176_def, tree6174_agree, tree6175_agree]
  rfl
theorem node6176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6176 live6176 coloured6176 = result6176 := by
  rw [tree6176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6174_eq
  unfold live6174 coloured6174 at child
  try dsimp only [live6176, coloured6176]
  rw [child]
  dsimp only [result6174]
  have child := node6175_eq
  unfold live6175 coloured6175 at child
  try dsimp only [live6176, coloured6176]
  rw [child]
  dsimp only [result6175]
  try dsimp only [colour, result6176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6177_agree : tree6177 = literal6177 := by
  rw [tree6177_def]
  rfl
theorem node6177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6177 live6177 coloured6177 = result6177 := by
  rw [tree6177_def]
  try dsimp only [colour, result6177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6178_agree : tree6178 = literal6178 := by
  rw [tree6178_def, tree6176_agree, tree6177_agree]
  rfl
theorem node6178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6178 live6178 coloured6178 = result6178 := by
  rw [tree6178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6176_eq
  unfold live6176 coloured6176 at child
  try dsimp only [live6178, coloured6178]
  rw [child]
  dsimp only [result6176]
  have child := node6177_eq
  unfold live6177 coloured6177 at child
  try dsimp only [live6178, coloured6178]
  rw [child]
  dsimp only [result6177]
  try dsimp only [colour, result6178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6179_agree : tree6179 = literal6179 := by
  rw [tree6179_def]
  rfl
theorem node6179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6179 live6179 coloured6179 = result6179 := by
  rw [tree6179_def]
  try dsimp only [colour, result6179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6180_agree : tree6180 = literal6180 := by
  rw [tree6180_def, tree6178_agree, tree6179_agree]
  rfl
theorem node6180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6180 live6180 coloured6180 = result6180 := by
  rw [tree6180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6178_eq
  unfold live6178 coloured6178 at child
  try dsimp only [live6180, coloured6180]
  rw [child]
  dsimp only [result6178]
  have child := node6179_eq
  unfold live6179 coloured6179 at child
  try dsimp only [live6180, coloured6180]
  rw [child]
  dsimp only [result6179]
  try dsimp only [colour, result6180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6181_agree : tree6181 = literal6181 := by
  rw [tree6181_def]
  rfl
theorem node6181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6181 live6181 coloured6181 = result6181 := by
  rw [tree6181_def]
  try dsimp only [colour, result6181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6182_agree : tree6182 = literal6182 := by
  rw [tree6182_def, tree6180_agree, tree6181_agree]
  rfl
theorem node6182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6182 live6182 coloured6182 = result6182 := by
  rw [tree6182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6180_eq
  unfold live6180 coloured6180 at child
  try dsimp only [live6182, coloured6182]
  rw [child]
  dsimp only [result6180]
  have child := node6181_eq
  unfold live6181 coloured6181 at child
  try dsimp only [live6182, coloured6182]
  rw [child]
  dsimp only [result6181]
  try dsimp only [colour, result6182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6183_agree : tree6183 = literal6183 := by
  rw [tree6183_def]
  rfl
theorem node6183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6183 live6183 coloured6183 = result6183 := by
  rw [tree6183_def]
  try dsimp only [colour, result6183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6184_agree : tree6184 = literal6184 := by
  rw [tree6184_def, tree6182_agree, tree6183_agree]
  rfl
theorem node6184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6184 live6184 coloured6184 = result6184 := by
  rw [tree6184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6182_eq
  unfold live6182 coloured6182 at child
  try dsimp only [live6184, coloured6184]
  rw [child]
  dsimp only [result6182]
  have child := node6183_eq
  unfold live6183 coloured6183 at child
  try dsimp only [live6184, coloured6184]
  rw [child]
  dsimp only [result6183]
  try dsimp only [colour, result6184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6185_agree : tree6185 = literal6185 := by
  rw [tree6185_def]
  rfl
theorem node6185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6185 live6185 coloured6185 = result6185 := by
  rw [tree6185_def]
  try dsimp only [colour, result6185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6186_agree : tree6186 = literal6186 := by
  rw [tree6186_def, tree6184_agree, tree6185_agree]
  rfl
theorem node6186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6186 live6186 coloured6186 = result6186 := by
  rw [tree6186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6184_eq
  unfold live6184 coloured6184 at child
  try dsimp only [live6186, coloured6186]
  rw [child]
  dsimp only [result6184]
  have child := node6185_eq
  unfold live6185 coloured6185 at child
  try dsimp only [live6186, coloured6186]
  rw [child]
  dsimp only [result6185]
  try dsimp only [colour, result6186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6187_agree : tree6187 = literal6187 := by
  rw [tree6187_def]
  rfl
theorem node6187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6187 live6187 coloured6187 = result6187 := by
  rw [tree6187_def]
  try dsimp only [colour, result6187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6188_agree : tree6188 = literal6188 := by
  rw [tree6188_def, tree6186_agree, tree6187_agree]
  rfl
theorem node6188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6188 live6188 coloured6188 = result6188 := by
  rw [tree6188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6186_eq
  unfold live6186 coloured6186 at child
  try dsimp only [live6188, coloured6188]
  rw [child]
  dsimp only [result6186]
  have child := node6187_eq
  unfold live6187 coloured6187 at child
  try dsimp only [live6188, coloured6188]
  rw [child]
  dsimp only [result6187]
  try dsimp only [colour, result6188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6189_agree : tree6189 = literal6189 := by
  rw [tree6189_def]
  rfl
theorem node6189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6189 live6189 coloured6189 = result6189 := by
  rw [tree6189_def]
  try dsimp only [colour, result6189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6190_agree : tree6190 = literal6190 := by
  rw [tree6190_def, tree6188_agree, tree6189_agree]
  rfl
theorem node6190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6190 live6190 coloured6190 = result6190 := by
  rw [tree6190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6188_eq
  unfold live6188 coloured6188 at child
  try dsimp only [live6190, coloured6190]
  rw [child]
  dsimp only [result6188]
  have child := node6189_eq
  unfold live6189 coloured6189 at child
  try dsimp only [live6190, coloured6190]
  rw [child]
  dsimp only [result6189]
  try dsimp only [colour, result6190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6191_agree : tree6191 = literal6191 := by
  rw [tree6191_def]
  rfl
theorem node6191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6191 live6191 coloured6191 = result6191 := by
  rw [tree6191_def]
  try dsimp only [colour, result6191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6192_agree : tree6192 = literal6192 := by
  rw [tree6192_def, tree6190_agree, tree6191_agree]
  rfl
theorem node6192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6192 live6192 coloured6192 = result6192 := by
  rw [tree6192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6190_eq
  unfold live6190 coloured6190 at child
  try dsimp only [live6192, coloured6192]
  rw [child]
  dsimp only [result6190]
  have child := node6191_eq
  unfold live6191 coloured6191 at child
  try dsimp only [live6192, coloured6192]
  rw [child]
  dsimp only [result6191]
  try dsimp only [colour, result6192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6193_agree : tree6193 = literal6193 := by
  rw [tree6193_def]
  rfl
theorem node6193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6193 live6193 coloured6193 = result6193 := by
  rw [tree6193_def]
  try dsimp only [colour, result6193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6194_agree : tree6194 = literal6194 := by
  rw [tree6194_def, tree6192_agree, tree6193_agree]
  rfl
theorem node6194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6194 live6194 coloured6194 = result6194 := by
  rw [tree6194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6192_eq
  unfold live6192 coloured6192 at child
  try dsimp only [live6194, coloured6194]
  rw [child]
  dsimp only [result6192]
  have child := node6193_eq
  unfold live6193 coloured6193 at child
  try dsimp only [live6194, coloured6194]
  rw [child]
  dsimp only [result6193]
  try dsimp only [colour, result6194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6195_agree : tree6195 = literal6195 := by
  rw [tree6195_def]
  rfl
theorem node6195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6195 live6195 coloured6195 = result6195 := by
  rw [tree6195_def]
  try dsimp only [colour, result6195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6196_agree : tree6196 = literal6196 := by
  rw [tree6196_def, tree6194_agree, tree6195_agree]
  rfl
theorem node6196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6196 live6196 coloured6196 = result6196 := by
  rw [tree6196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6194_eq
  unfold live6194 coloured6194 at child
  try dsimp only [live6196, coloured6196]
  rw [child]
  dsimp only [result6194]
  have child := node6195_eq
  unfold live6195 coloured6195 at child
  try dsimp only [live6196, coloured6196]
  rw [child]
  dsimp only [result6195]
  try dsimp only [colour, result6196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6197_agree : tree6197 = literal6197 := by
  rw [tree6197_def]
  rfl
theorem node6197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6197 live6197 coloured6197 = result6197 := by
  rw [tree6197_def]
  try dsimp only [colour, result6197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6198_agree : tree6198 = literal6198 := by
  rw [tree6198_def, tree6196_agree, tree6197_agree]
  rfl
theorem node6198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6198 live6198 coloured6198 = result6198 := by
  rw [tree6198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6196_eq
  unfold live6196 coloured6196 at child
  try dsimp only [live6198, coloured6198]
  rw [child]
  dsimp only [result6196]
  have child := node6197_eq
  unfold live6197 coloured6197 at child
  try dsimp only [live6198, coloured6198]
  rw [child]
  dsimp only [result6197]
  try dsimp only [colour, result6198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6199_agree : tree6199 = literal6199 := by
  rw [tree6199_def]
  rfl
theorem node6199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6199 live6199 coloured6199 = result6199 := by
  rw [tree6199_def]
  try dsimp only [colour, result6199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6200_agree : tree6200 = literal6200 := by
  rw [tree6200_def, tree6198_agree, tree6199_agree]
  rfl
theorem node6200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6200 live6200 coloured6200 = result6200 := by
  rw [tree6200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6198_eq
  unfold live6198 coloured6198 at child
  try dsimp only [live6200, coloured6200]
  rw [child]
  dsimp only [result6198]
  have child := node6199_eq
  unfold live6199 coloured6199 at child
  try dsimp only [live6200, coloured6200]
  rw [child]
  dsimp only [result6199]
  try dsimp only [colour, result6200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6201_agree : tree6201 = literal6201 := by
  rw [tree6201_def]
  rfl
theorem node6201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6201 live6201 coloured6201 = result6201 := by
  rw [tree6201_def]
  try dsimp only [colour, result6201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6202_agree : tree6202 = literal6202 := by
  rw [tree6202_def, tree6200_agree, tree6201_agree]
  rfl
theorem node6202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6202 live6202 coloured6202 = result6202 := by
  rw [tree6202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6200_eq
  unfold live6200 coloured6200 at child
  try dsimp only [live6202, coloured6202]
  rw [child]
  dsimp only [result6200]
  have child := node6201_eq
  unfold live6201 coloured6201 at child
  try dsimp only [live6202, coloured6202]
  rw [child]
  dsimp only [result6201]
  try dsimp only [colour, result6202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6203_agree : tree6203 = literal6203 := by
  rw [tree6203_def]
  rfl
theorem node6203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6203 live6203 coloured6203 = result6203 := by
  rw [tree6203_def]
  try dsimp only [colour, result6203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6204_agree : tree6204 = literal6204 := by
  rw [tree6204_def, tree6202_agree, tree6203_agree]
  rfl
theorem node6204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6204 live6204 coloured6204 = result6204 := by
  rw [tree6204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6202_eq
  unfold live6202 coloured6202 at child
  try dsimp only [live6204, coloured6204]
  rw [child]
  dsimp only [result6202]
  have child := node6203_eq
  unfold live6203 coloured6203 at child
  try dsimp only [live6204, coloured6204]
  rw [child]
  dsimp only [result6203]
  try dsimp only [colour, result6204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6205_agree : tree6205 = literal6205 := by
  rw [tree6205_def]
  rfl
theorem node6205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6205 live6205 coloured6205 = result6205 := by
  rw [tree6205_def]
  try dsimp only [colour, result6205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6206_agree : tree6206 = literal6206 := by
  rw [tree6206_def, tree6204_agree, tree6205_agree]
  rfl
theorem node6206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6206 live6206 coloured6206 = result6206 := by
  rw [tree6206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6204_eq
  unfold live6204 coloured6204 at child
  try dsimp only [live6206, coloured6206]
  rw [child]
  dsimp only [result6204]
  have child := node6205_eq
  unfold live6205 coloured6205 at child
  try dsimp only [live6206, coloured6206]
  rw [child]
  dsimp only [result6205]
  try dsimp only [colour, result6206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6207_agree : tree6207 = literal6207 := by
  rw [tree6207_def]
  rfl
theorem node6207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6207 live6207 coloured6207 = result6207 := by
  rw [tree6207_def]
  try dsimp only [colour, result6207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6208_agree : tree6208 = literal6208 := by
  rw [tree6208_def, tree6206_agree, tree6207_agree]
  rfl
theorem node6208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6208 live6208 coloured6208 = result6208 := by
  rw [tree6208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6206_eq
  unfold live6206 coloured6206 at child
  try dsimp only [live6208, coloured6208]
  rw [child]
  dsimp only [result6206]
  have child := node6207_eq
  unfold live6207 coloured6207 at child
  try dsimp only [live6208, coloured6208]
  rw [child]
  dsimp only [result6207]
  try dsimp only [colour, result6208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6209_agree : tree6209 = literal6209 := by
  rw [tree6209_def]
  rfl
theorem node6209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6209 live6209 coloured6209 = result6209 := by
  rw [tree6209_def]
  try dsimp only [colour, result6209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6210_agree : tree6210 = literal6210 := by
  rw [tree6210_def, tree6208_agree, tree6209_agree]
  rfl
theorem node6210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6210 live6210 coloured6210 = result6210 := by
  rw [tree6210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6208_eq
  unfold live6208 coloured6208 at child
  try dsimp only [live6210, coloured6210]
  rw [child]
  dsimp only [result6208]
  have child := node6209_eq
  unfold live6209 coloured6209 at child
  try dsimp only [live6210, coloured6210]
  rw [child]
  dsimp only [result6209]
  try dsimp only [colour, result6210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6211_agree : tree6211 = literal6211 := by
  rw [tree6211_def]
  rfl
theorem node6211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6211 live6211 coloured6211 = result6211 := by
  rw [tree6211_def]
  try dsimp only [colour, result6211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6212_agree : tree6212 = literal6212 := by
  rw [tree6212_def, tree6210_agree, tree6211_agree]
  rfl
theorem node6212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6212 live6212 coloured6212 = result6212 := by
  rw [tree6212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6210_eq
  unfold live6210 coloured6210 at child
  try dsimp only [live6212, coloured6212]
  rw [child]
  dsimp only [result6210]
  have child := node6211_eq
  unfold live6211 coloured6211 at child
  try dsimp only [live6212, coloured6212]
  rw [child]
  dsimp only [result6211]
  try dsimp only [colour, result6212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6213_agree : tree6213 = literal6213 := by
  rw [tree6213_def]
  rfl
theorem node6213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6213 live6213 coloured6213 = result6213 := by
  rw [tree6213_def]
  try dsimp only [colour, result6213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6214_agree : tree6214 = literal6214 := by
  rw [tree6214_def, tree6212_agree, tree6213_agree]
  rfl
theorem node6214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6214 live6214 coloured6214 = result6214 := by
  rw [tree6214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6212_eq
  unfold live6212 coloured6212 at child
  try dsimp only [live6214, coloured6214]
  rw [child]
  dsimp only [result6212]
  have child := node6213_eq
  unfold live6213 coloured6213 at child
  try dsimp only [live6214, coloured6214]
  rw [child]
  dsimp only [result6213]
  try dsimp only [colour, result6214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6215_agree : tree6215 = literal6215 := by
  rw [tree6215_def]
  rfl
theorem node6215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6215 live6215 coloured6215 = result6215 := by
  rw [tree6215_def]
  try dsimp only [colour, result6215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6216_agree : tree6216 = literal6216 := by
  rw [tree6216_def, tree6214_agree, tree6215_agree]
  rfl
theorem node6216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6216 live6216 coloured6216 = result6216 := by
  rw [tree6216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6214_eq
  unfold live6214 coloured6214 at child
  try dsimp only [live6216, coloured6216]
  rw [child]
  dsimp only [result6214]
  have child := node6215_eq
  unfold live6215 coloured6215 at child
  try dsimp only [live6216, coloured6216]
  rw [child]
  dsimp only [result6215]
  try dsimp only [colour, result6216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6217_agree : tree6217 = literal6217 := by
  rw [tree6217_def]
  rfl
theorem node6217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6217 live6217 coloured6217 = result6217 := by
  rw [tree6217_def]
  try dsimp only [colour, result6217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6218_agree : tree6218 = literal6218 := by
  rw [tree6218_def, tree6216_agree, tree6217_agree]
  rfl
theorem node6218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6218 live6218 coloured6218 = result6218 := by
  rw [tree6218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6216_eq
  unfold live6216 coloured6216 at child
  try dsimp only [live6218, coloured6218]
  rw [child]
  dsimp only [result6216]
  have child := node6217_eq
  unfold live6217 coloured6217 at child
  try dsimp only [live6218, coloured6218]
  rw [child]
  dsimp only [result6217]
  try dsimp only [colour, result6218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6219_agree : tree6219 = literal6219 := by
  rw [tree6219_def]
  rfl
theorem node6219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6219 live6219 coloured6219 = result6219 := by
  rw [tree6219_def]
  try dsimp only [colour, result6219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6220_agree : tree6220 = literal6220 := by
  rw [tree6220_def, tree6218_agree, tree6219_agree]
  rfl
theorem node6220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6220 live6220 coloured6220 = result6220 := by
  rw [tree6220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6218_eq
  unfold live6218 coloured6218 at child
  try dsimp only [live6220, coloured6220]
  rw [child]
  dsimp only [result6218]
  have child := node6219_eq
  unfold live6219 coloured6219 at child
  try dsimp only [live6220, coloured6220]
  rw [child]
  dsimp only [result6219]
  try dsimp only [colour, result6220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6221_agree : tree6221 = literal6221 := by
  rw [tree6221_def]
  rfl
theorem node6221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6221 live6221 coloured6221 = result6221 := by
  rw [tree6221_def]
  try dsimp only [colour, result6221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6222_agree : tree6222 = literal6222 := by
  rw [tree6222_def, tree6220_agree, tree6221_agree]
  rfl
theorem node6222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6222 live6222 coloured6222 = result6222 := by
  rw [tree6222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6220_eq
  unfold live6220 coloured6220 at child
  try dsimp only [live6222, coloured6222]
  rw [child]
  dsimp only [result6220]
  have child := node6221_eq
  unfold live6221 coloured6221 at child
  try dsimp only [live6222, coloured6222]
  rw [child]
  dsimp only [result6221]
  try dsimp only [colour, result6222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6223_agree : tree6223 = literal6223 := by
  rw [tree6223_def]
  rfl
theorem node6223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6223 live6223 coloured6223 = result6223 := by
  rw [tree6223_def]
  try dsimp only [colour, result6223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6224_agree : tree6224 = literal6224 := by
  rw [tree6224_def, tree6222_agree, tree6223_agree]
  rfl
theorem node6224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6224 live6224 coloured6224 = result6224 := by
  rw [tree6224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6222_eq
  unfold live6222 coloured6222 at child
  try dsimp only [live6224, coloured6224]
  rw [child]
  dsimp only [result6222]
  have child := node6223_eq
  unfold live6223 coloured6223 at child
  try dsimp only [live6224, coloured6224]
  rw [child]
  dsimp only [result6223]
  try dsimp only [colour, result6224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6225_agree : tree6225 = literal6225 := by
  rw [tree6225_def]
  rfl
theorem node6225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6225 live6225 coloured6225 = result6225 := by
  rw [tree6225_def]
  try dsimp only [colour, result6225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6226_agree : tree6226 = literal6226 := by
  rw [tree6226_def, tree6224_agree, tree6225_agree]
  rfl
theorem node6226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6226 live6226 coloured6226 = result6226 := by
  rw [tree6226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6224_eq
  unfold live6224 coloured6224 at child
  try dsimp only [live6226, coloured6226]
  rw [child]
  dsimp only [result6224]
  have child := node6225_eq
  unfold live6225 coloured6225 at child
  try dsimp only [live6226, coloured6226]
  rw [child]
  dsimp only [result6225]
  try dsimp only [colour, result6226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6227_agree : tree6227 = literal6227 := by
  rw [tree6227_def]
  rfl
theorem node6227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6227 live6227 coloured6227 = result6227 := by
  rw [tree6227_def]
  try dsimp only [colour, result6227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6228_agree : tree6228 = literal6228 := by
  rw [tree6228_def, tree6226_agree, tree6227_agree]
  rfl
theorem node6228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6228 live6228 coloured6228 = result6228 := by
  rw [tree6228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6226_eq
  unfold live6226 coloured6226 at child
  try dsimp only [live6228, coloured6228]
  rw [child]
  dsimp only [result6226]
  have child := node6227_eq
  unfold live6227 coloured6227 at child
  try dsimp only [live6228, coloured6228]
  rw [child]
  dsimp only [result6227]
  try dsimp only [colour, result6228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6229_agree : tree6229 = literal6229 := by
  rw [tree6229_def]
  rfl
theorem node6229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6229 live6229 coloured6229 = result6229 := by
  rw [tree6229_def]
  try dsimp only [colour, result6229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6230_agree : tree6230 = literal6230 := by
  rw [tree6230_def, tree6228_agree, tree6229_agree]
  rfl
theorem node6230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6230 live6230 coloured6230 = result6230 := by
  rw [tree6230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6228_eq
  unfold live6228 coloured6228 at child
  try dsimp only [live6230, coloured6230]
  rw [child]
  dsimp only [result6228]
  have child := node6229_eq
  unfold live6229 coloured6229 at child
  try dsimp only [live6230, coloured6230]
  rw [child]
  dsimp only [result6229]
  try dsimp only [colour, result6230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6231_agree : tree6231 = literal6231 := by
  rw [tree6231_def]
  rfl
theorem node6231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6231 live6231 coloured6231 = result6231 := by
  rw [tree6231_def]
  try dsimp only [colour, result6231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6232_agree : tree6232 = literal6232 := by
  rw [tree6232_def, tree6230_agree, tree6231_agree]
  rfl
theorem node6232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6232 live6232 coloured6232 = result6232 := by
  rw [tree6232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6230_eq
  unfold live6230 coloured6230 at child
  try dsimp only [live6232, coloured6232]
  rw [child]
  dsimp only [result6230]
  have child := node6231_eq
  unfold live6231 coloured6231 at child
  try dsimp only [live6232, coloured6232]
  rw [child]
  dsimp only [result6231]
  try dsimp only [colour, result6232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6233_agree : tree6233 = literal6233 := by
  rw [tree6233_def]
  rfl
theorem node6233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6233 live6233 coloured6233 = result6233 := by
  rw [tree6233_def]
  try dsimp only [colour, result6233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6234_agree : tree6234 = literal6234 := by
  rw [tree6234_def, tree6232_agree, tree6233_agree]
  rfl
theorem node6234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6234 live6234 coloured6234 = result6234 := by
  rw [tree6234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6232_eq
  unfold live6232 coloured6232 at child
  try dsimp only [live6234, coloured6234]
  rw [child]
  dsimp only [result6232]
  have child := node6233_eq
  unfold live6233 coloured6233 at child
  try dsimp only [live6234, coloured6234]
  rw [child]
  dsimp only [result6233]
  try dsimp only [colour, result6234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6235_agree : tree6235 = literal6235 := by
  rw [tree6235_def]
  rfl
theorem node6235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6235 live6235 coloured6235 = result6235 := by
  rw [tree6235_def]
  try dsimp only [colour, result6235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6236_agree : tree6236 = literal6236 := by
  rw [tree6236_def, tree6234_agree, tree6235_agree]
  rfl
theorem node6236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6236 live6236 coloured6236 = result6236 := by
  rw [tree6236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6234_eq
  unfold live6234 coloured6234 at child
  try dsimp only [live6236, coloured6236]
  rw [child]
  dsimp only [result6234]
  have child := node6235_eq
  unfold live6235 coloured6235 at child
  try dsimp only [live6236, coloured6236]
  rw [child]
  dsimp only [result6235]
  try dsimp only [colour, result6236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6237_agree : tree6237 = literal6237 := by
  rw [tree6237_def]
  rfl
theorem node6237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6237 live6237 coloured6237 = result6237 := by
  rw [tree6237_def]
  try dsimp only [colour, result6237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6238_agree : tree6238 = literal6238 := by
  rw [tree6238_def, tree6236_agree, tree6237_agree]
  rfl
theorem node6238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6238 live6238 coloured6238 = result6238 := by
  rw [tree6238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6236_eq
  unfold live6236 coloured6236 at child
  try dsimp only [live6238, coloured6238]
  rw [child]
  dsimp only [result6236]
  have child := node6237_eq
  unfold live6237 coloured6237 at child
  try dsimp only [live6238, coloured6238]
  rw [child]
  dsimp only [result6237]
  try dsimp only [colour, result6238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6239_agree : tree6239 = literal6239 := by
  rw [tree6239_def]
  rfl
theorem node6239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6239 live6239 coloured6239 = result6239 := by
  rw [tree6239_def]
  try dsimp only [colour, result6239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
