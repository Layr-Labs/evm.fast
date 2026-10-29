import InitECandidate.Proofs.ClashStages713.Proof115
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree11136_agree : tree11136 = literal11136 := by
  rw [tree11136_def, tree11134_agree, tree11135_agree]
  rfl
theorem node11136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11136 live11136 coloured11136 = result11136 := by
  rw [tree11136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11134_eq
  unfold live11134 coloured11134 at child
  try dsimp only [live11136, coloured11136]
  rw [child]
  dsimp only [result11134]
  have child := node11135_eq
  unfold live11135 coloured11135 at child
  try dsimp only [live11136, coloured11136]
  rw [child]
  dsimp only [result11135]
  try dsimp only [colour, result11136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11137_agree : tree11137 = literal11137 := by
  rw [tree11137_def]
  rfl
theorem node11137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11137 live11137 coloured11137 = result11137 := by
  rw [tree11137_def]
  try dsimp only [colour, result11137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11138_agree : tree11138 = literal11138 := by
  rw [tree11138_def, tree11136_agree, tree11137_agree]
  rfl
theorem node11138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11138 live11138 coloured11138 = result11138 := by
  rw [tree11138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11136_eq
  unfold live11136 coloured11136 at child
  try dsimp only [live11138, coloured11138]
  rw [child]
  dsimp only [result11136]
  have child := node11137_eq
  unfold live11137 coloured11137 at child
  try dsimp only [live11138, coloured11138]
  rw [child]
  dsimp only [result11137]
  try dsimp only [colour, result11138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11139_agree : tree11139 = literal11139 := by
  rw [tree11139_def]
  rfl
theorem node11139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11139 live11139 coloured11139 = result11139 := by
  rw [tree11139_def]
  try dsimp only [colour, result11139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11140_agree : tree11140 = literal11140 := by
  rw [tree11140_def, tree11138_agree, tree11139_agree]
  rfl
theorem node11140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11140 live11140 coloured11140 = result11140 := by
  rw [tree11140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11138_eq
  unfold live11138 coloured11138 at child
  try dsimp only [live11140, coloured11140]
  rw [child]
  dsimp only [result11138]
  have child := node11139_eq
  unfold live11139 coloured11139 at child
  try dsimp only [live11140, coloured11140]
  rw [child]
  dsimp only [result11139]
  try dsimp only [colour, result11140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11141_agree : tree11141 = literal11141 := by
  rw [tree11141_def]
  rfl
theorem node11141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11141 live11141 coloured11141 = result11141 := by
  rw [tree11141_def]
  try dsimp only [colour, result11141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11142_agree : tree11142 = literal11142 := by
  rw [tree11142_def, tree11140_agree, tree11141_agree]
  rfl
theorem node11142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11142 live11142 coloured11142 = result11142 := by
  rw [tree11142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11140_eq
  unfold live11140 coloured11140 at child
  try dsimp only [live11142, coloured11142]
  rw [child]
  dsimp only [result11140]
  have child := node11141_eq
  unfold live11141 coloured11141 at child
  try dsimp only [live11142, coloured11142]
  rw [child]
  dsimp only [result11141]
  try dsimp only [colour, result11142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11143_agree : tree11143 = literal11143 := by
  rw [tree11143_def]
  rfl
theorem node11143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11143 live11143 coloured11143 = result11143 := by
  rw [tree11143_def]
  try dsimp only [colour, result11143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11144_agree : tree11144 = literal11144 := by
  rw [tree11144_def, tree11142_agree, tree11143_agree]
  rfl
theorem node11144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11144 live11144 coloured11144 = result11144 := by
  rw [tree11144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11142_eq
  unfold live11142 coloured11142 at child
  try dsimp only [live11144, coloured11144]
  rw [child]
  dsimp only [result11142]
  have child := node11143_eq
  unfold live11143 coloured11143 at child
  try dsimp only [live11144, coloured11144]
  rw [child]
  dsimp only [result11143]
  try dsimp only [colour, result11144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11145_agree : tree11145 = literal11145 := by
  rw [tree11145_def]
  rfl
theorem node11145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11145 live11145 coloured11145 = result11145 := by
  rw [tree11145_def]
  try dsimp only [colour, result11145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11146_agree : tree11146 = literal11146 := by
  rw [tree11146_def, tree11144_agree, tree11145_agree]
  rfl
theorem node11146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11146 live11146 coloured11146 = result11146 := by
  rw [tree11146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11144_eq
  unfold live11144 coloured11144 at child
  try dsimp only [live11146, coloured11146]
  rw [child]
  dsimp only [result11144]
  have child := node11145_eq
  unfold live11145 coloured11145 at child
  try dsimp only [live11146, coloured11146]
  rw [child]
  dsimp only [result11145]
  try dsimp only [colour, result11146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11147_agree : tree11147 = literal11147 := by
  rw [tree11147_def]
  rfl
theorem node11147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11147 live11147 coloured11147 = result11147 := by
  rw [tree11147_def]
  try dsimp only [colour, result11147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11148_agree : tree11148 = literal11148 := by
  rw [tree11148_def, tree11146_agree, tree11147_agree]
  rfl
theorem node11148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11148 live11148 coloured11148 = result11148 := by
  rw [tree11148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11146_eq
  unfold live11146 coloured11146 at child
  try dsimp only [live11148, coloured11148]
  rw [child]
  dsimp only [result11146]
  have child := node11147_eq
  unfold live11147 coloured11147 at child
  try dsimp only [live11148, coloured11148]
  rw [child]
  dsimp only [result11147]
  try dsimp only [colour, result11148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11149_agree : tree11149 = literal11149 := by
  rw [tree11149_def]
  rfl
theorem node11149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11149 live11149 coloured11149 = result11149 := by
  rw [tree11149_def]
  try dsimp only [colour, result11149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11150_agree : tree11150 = literal11150 := by
  rw [tree11150_def, tree11148_agree, tree11149_agree]
  rfl
theorem node11150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11150 live11150 coloured11150 = result11150 := by
  rw [tree11150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11148_eq
  unfold live11148 coloured11148 at child
  try dsimp only [live11150, coloured11150]
  rw [child]
  dsimp only [result11148]
  have child := node11149_eq
  unfold live11149 coloured11149 at child
  try dsimp only [live11150, coloured11150]
  rw [child]
  dsimp only [result11149]
  try dsimp only [colour, result11150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11151_agree : tree11151 = literal11151 := by
  rw [tree11151_def]
  rfl
theorem node11151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11151 live11151 coloured11151 = result11151 := by
  rw [tree11151_def]
  try dsimp only [colour, result11151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11152_agree : tree11152 = literal11152 := by
  rw [tree11152_def, tree11150_agree, tree11151_agree]
  rfl
theorem node11152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11152 live11152 coloured11152 = result11152 := by
  rw [tree11152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11150_eq
  unfold live11150 coloured11150 at child
  try dsimp only [live11152, coloured11152]
  rw [child]
  dsimp only [result11150]
  have child := node11151_eq
  unfold live11151 coloured11151 at child
  try dsimp only [live11152, coloured11152]
  rw [child]
  dsimp only [result11151]
  try dsimp only [colour, result11152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11153_agree : tree11153 = literal11153 := by
  rw [tree11153_def]
  rfl
theorem node11153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11153 live11153 coloured11153 = result11153 := by
  rw [tree11153_def]
  try dsimp only [colour, result11153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11154_agree : tree11154 = literal11154 := by
  rw [tree11154_def, tree11152_agree, tree11153_agree]
  rfl
theorem node11154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11154 live11154 coloured11154 = result11154 := by
  rw [tree11154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11152_eq
  unfold live11152 coloured11152 at child
  try dsimp only [live11154, coloured11154]
  rw [child]
  dsimp only [result11152]
  have child := node11153_eq
  unfold live11153 coloured11153 at child
  try dsimp only [live11154, coloured11154]
  rw [child]
  dsimp only [result11153]
  try dsimp only [colour, result11154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11155_agree : tree11155 = literal11155 := by
  rw [tree11155_def]
  rfl
theorem node11155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11155 live11155 coloured11155 = result11155 := by
  rw [tree11155_def]
  try dsimp only [colour, result11155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11156_agree : tree11156 = literal11156 := by
  rw [tree11156_def, tree11154_agree, tree11155_agree]
  rfl
theorem node11156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11156 live11156 coloured11156 = result11156 := by
  rw [tree11156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11154_eq
  unfold live11154 coloured11154 at child
  try dsimp only [live11156, coloured11156]
  rw [child]
  dsimp only [result11154]
  have child := node11155_eq
  unfold live11155 coloured11155 at child
  try dsimp only [live11156, coloured11156]
  rw [child]
  dsimp only [result11155]
  try dsimp only [colour, result11156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11157_agree : tree11157 = literal11157 := by
  rw [tree11157_def]
  rfl
theorem node11157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11157 live11157 coloured11157 = result11157 := by
  rw [tree11157_def]
  try dsimp only [colour, result11157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11158_agree : tree11158 = literal11158 := by
  rw [tree11158_def, tree11156_agree, tree11157_agree]
  rfl
theorem node11158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11158 live11158 coloured11158 = result11158 := by
  rw [tree11158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11156_eq
  unfold live11156 coloured11156 at child
  try dsimp only [live11158, coloured11158]
  rw [child]
  dsimp only [result11156]
  have child := node11157_eq
  unfold live11157 coloured11157 at child
  try dsimp only [live11158, coloured11158]
  rw [child]
  dsimp only [result11157]
  try dsimp only [colour, result11158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11159_agree : tree11159 = literal11159 := by
  rw [tree11159_def]
  rfl
theorem node11159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11159 live11159 coloured11159 = result11159 := by
  rw [tree11159_def]
  try dsimp only [colour, result11159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11160_agree : tree11160 = literal11160 := by
  rw [tree11160_def, tree11158_agree, tree11159_agree]
  rfl
theorem node11160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11160 live11160 coloured11160 = result11160 := by
  rw [tree11160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11158_eq
  unfold live11158 coloured11158 at child
  try dsimp only [live11160, coloured11160]
  rw [child]
  dsimp only [result11158]
  have child := node11159_eq
  unfold live11159 coloured11159 at child
  try dsimp only [live11160, coloured11160]
  rw [child]
  dsimp only [result11159]
  try dsimp only [colour, result11160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11161_agree : tree11161 = literal11161 := by
  rw [tree11161_def]
  rfl
theorem node11161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11161 live11161 coloured11161 = result11161 := by
  rw [tree11161_def]
  try dsimp only [colour, result11161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11162_agree : tree11162 = literal11162 := by
  rw [tree11162_def, tree11160_agree, tree11161_agree]
  rfl
theorem node11162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11162 live11162 coloured11162 = result11162 := by
  rw [tree11162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11160_eq
  unfold live11160 coloured11160 at child
  try dsimp only [live11162, coloured11162]
  rw [child]
  dsimp only [result11160]
  have child := node11161_eq
  unfold live11161 coloured11161 at child
  try dsimp only [live11162, coloured11162]
  rw [child]
  dsimp only [result11161]
  try dsimp only [colour, result11162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11163_agree : tree11163 = literal11163 := by
  rw [tree11163_def]
  rfl
theorem node11163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11163 live11163 coloured11163 = result11163 := by
  rw [tree11163_def]
  try dsimp only [colour, result11163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11164_agree : tree11164 = literal11164 := by
  rw [tree11164_def, tree11162_agree, tree11163_agree]
  rfl
theorem node11164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11164 live11164 coloured11164 = result11164 := by
  rw [tree11164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11162_eq
  unfold live11162 coloured11162 at child
  try dsimp only [live11164, coloured11164]
  rw [child]
  dsimp only [result11162]
  have child := node11163_eq
  unfold live11163 coloured11163 at child
  try dsimp only [live11164, coloured11164]
  rw [child]
  dsimp only [result11163]
  try dsimp only [colour, result11164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11165_agree : tree11165 = literal11165 := by
  rw [tree11165_def]
  rfl
theorem node11165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11165 live11165 coloured11165 = result11165 := by
  rw [tree11165_def]
  try dsimp only [colour, result11165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11166_agree : tree11166 = literal11166 := by
  rw [tree11166_def, tree11164_agree, tree11165_agree]
  rfl
theorem node11166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11166 live11166 coloured11166 = result11166 := by
  rw [tree11166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11164_eq
  unfold live11164 coloured11164 at child
  try dsimp only [live11166, coloured11166]
  rw [child]
  dsimp only [result11164]
  have child := node11165_eq
  unfold live11165 coloured11165 at child
  try dsimp only [live11166, coloured11166]
  rw [child]
  dsimp only [result11165]
  try dsimp only [colour, result11166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11167_agree : tree11167 = literal11167 := by
  rw [tree11167_def]
  rfl
theorem node11167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11167 live11167 coloured11167 = result11167 := by
  rw [tree11167_def]
  try dsimp only [colour, result11167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11168_agree : tree11168 = literal11168 := by
  rw [tree11168_def, tree11166_agree, tree11167_agree]
  rfl
theorem node11168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11168 live11168 coloured11168 = result11168 := by
  rw [tree11168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11166_eq
  unfold live11166 coloured11166 at child
  try dsimp only [live11168, coloured11168]
  rw [child]
  dsimp only [result11166]
  have child := node11167_eq
  unfold live11167 coloured11167 at child
  try dsimp only [live11168, coloured11168]
  rw [child]
  dsimp only [result11167]
  try dsimp only [colour, result11168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11169_agree : tree11169 = literal11169 := by
  rw [tree11169_def]
  rfl
theorem node11169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11169 live11169 coloured11169 = result11169 := by
  rw [tree11169_def]
  try dsimp only [colour, result11169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11170_agree : tree11170 = literal11170 := by
  rw [tree11170_def, tree11168_agree, tree11169_agree]
  rfl
theorem node11170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11170 live11170 coloured11170 = result11170 := by
  rw [tree11170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11168_eq
  unfold live11168 coloured11168 at child
  try dsimp only [live11170, coloured11170]
  rw [child]
  dsimp only [result11168]
  have child := node11169_eq
  unfold live11169 coloured11169 at child
  try dsimp only [live11170, coloured11170]
  rw [child]
  dsimp only [result11169]
  try dsimp only [colour, result11170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11171_agree : tree11171 = literal11171 := by
  rw [tree11171_def]
  rfl
theorem node11171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11171 live11171 coloured11171 = result11171 := by
  rw [tree11171_def]
  try dsimp only [colour, result11171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11172_agree : tree11172 = literal11172 := by
  rw [tree11172_def, tree11170_agree, tree11171_agree]
  rfl
theorem node11172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11172 live11172 coloured11172 = result11172 := by
  rw [tree11172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11170_eq
  unfold live11170 coloured11170 at child
  try dsimp only [live11172, coloured11172]
  rw [child]
  dsimp only [result11170]
  have child := node11171_eq
  unfold live11171 coloured11171 at child
  try dsimp only [live11172, coloured11172]
  rw [child]
  dsimp only [result11171]
  try dsimp only [colour, result11172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11173_agree : tree11173 = literal11173 := by
  rw [tree11173_def]
  rfl
theorem node11173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11173 live11173 coloured11173 = result11173 := by
  rw [tree11173_def]
  try dsimp only [colour, result11173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11174_agree : tree11174 = literal11174 := by
  rw [tree11174_def, tree11172_agree, tree11173_agree]
  rfl
theorem node11174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11174 live11174 coloured11174 = result11174 := by
  rw [tree11174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11172_eq
  unfold live11172 coloured11172 at child
  try dsimp only [live11174, coloured11174]
  rw [child]
  dsimp only [result11172]
  have child := node11173_eq
  unfold live11173 coloured11173 at child
  try dsimp only [live11174, coloured11174]
  rw [child]
  dsimp only [result11173]
  try dsimp only [colour, result11174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11175_agree : tree11175 = literal11175 := by
  rw [tree11175_def]
  rfl
theorem node11175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11175 live11175 coloured11175 = result11175 := by
  rw [tree11175_def]
  try dsimp only [colour, result11175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11176_agree : tree11176 = literal11176 := by
  rw [tree11176_def, tree11174_agree, tree11175_agree]
  rfl
theorem node11176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11176 live11176 coloured11176 = result11176 := by
  rw [tree11176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11174_eq
  unfold live11174 coloured11174 at child
  try dsimp only [live11176, coloured11176]
  rw [child]
  dsimp only [result11174]
  have child := node11175_eq
  unfold live11175 coloured11175 at child
  try dsimp only [live11176, coloured11176]
  rw [child]
  dsimp only [result11175]
  try dsimp only [colour, result11176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11177_agree : tree11177 = literal11177 := by
  rw [tree11177_def]
  rfl
theorem node11177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11177 live11177 coloured11177 = result11177 := by
  rw [tree11177_def]
  try dsimp only [colour, result11177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11178_agree : tree11178 = literal11178 := by
  rw [tree11178_def, tree11176_agree, tree11177_agree]
  rfl
theorem node11178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11178 live11178 coloured11178 = result11178 := by
  rw [tree11178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11176_eq
  unfold live11176 coloured11176 at child
  try dsimp only [live11178, coloured11178]
  rw [child]
  dsimp only [result11176]
  have child := node11177_eq
  unfold live11177 coloured11177 at child
  try dsimp only [live11178, coloured11178]
  rw [child]
  dsimp only [result11177]
  try dsimp only [colour, result11178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11179_agree : tree11179 = literal11179 := by
  rw [tree11179_def]
  rfl
theorem node11179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11179 live11179 coloured11179 = result11179 := by
  rw [tree11179_def]
  try dsimp only [colour, result11179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11180_agree : tree11180 = literal11180 := by
  rw [tree11180_def, tree11178_agree, tree11179_agree]
  rfl
theorem node11180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11180 live11180 coloured11180 = result11180 := by
  rw [tree11180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11178_eq
  unfold live11178 coloured11178 at child
  try dsimp only [live11180, coloured11180]
  rw [child]
  dsimp only [result11178]
  have child := node11179_eq
  unfold live11179 coloured11179 at child
  try dsimp only [live11180, coloured11180]
  rw [child]
  dsimp only [result11179]
  try dsimp only [colour, result11180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11181_agree : tree11181 = literal11181 := by
  rw [tree11181_def]
  rfl
theorem node11181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11181 live11181 coloured11181 = result11181 := by
  rw [tree11181_def]
  try dsimp only [colour, result11181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11182_agree : tree11182 = literal11182 := by
  rw [tree11182_def, tree11180_agree, tree11181_agree]
  rfl
theorem node11182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11182 live11182 coloured11182 = result11182 := by
  rw [tree11182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11180_eq
  unfold live11180 coloured11180 at child
  try dsimp only [live11182, coloured11182]
  rw [child]
  dsimp only [result11180]
  have child := node11181_eq
  unfold live11181 coloured11181 at child
  try dsimp only [live11182, coloured11182]
  rw [child]
  dsimp only [result11181]
  try dsimp only [colour, result11182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11183_agree : tree11183 = literal11183 := by
  rw [tree11183_def]
  rfl
theorem node11183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11183 live11183 coloured11183 = result11183 := by
  rw [tree11183_def]
  try dsimp only [colour, result11183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11184_agree : tree11184 = literal11184 := by
  rw [tree11184_def, tree11182_agree, tree11183_agree]
  rfl
theorem node11184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11184 live11184 coloured11184 = result11184 := by
  rw [tree11184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11182_eq
  unfold live11182 coloured11182 at child
  try dsimp only [live11184, coloured11184]
  rw [child]
  dsimp only [result11182]
  have child := node11183_eq
  unfold live11183 coloured11183 at child
  try dsimp only [live11184, coloured11184]
  rw [child]
  dsimp only [result11183]
  try dsimp only [colour, result11184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11185_agree : tree11185 = literal11185 := by
  rw [tree11185_def]
  rfl
theorem node11185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11185 live11185 coloured11185 = result11185 := by
  rw [tree11185_def]
  try dsimp only [colour, result11185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11186_agree : tree11186 = literal11186 := by
  rw [tree11186_def, tree11184_agree, tree11185_agree]
  rfl
theorem node11186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11186 live11186 coloured11186 = result11186 := by
  rw [tree11186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11184_eq
  unfold live11184 coloured11184 at child
  try dsimp only [live11186, coloured11186]
  rw [child]
  dsimp only [result11184]
  have child := node11185_eq
  unfold live11185 coloured11185 at child
  try dsimp only [live11186, coloured11186]
  rw [child]
  dsimp only [result11185]
  try dsimp only [colour, result11186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11187_agree : tree11187 = literal11187 := by
  rw [tree11187_def]
  rfl
theorem node11187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11187 live11187 coloured11187 = result11187 := by
  rw [tree11187_def]
  try dsimp only [colour, result11187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11188_agree : tree11188 = literal11188 := by
  rw [tree11188_def, tree11186_agree, tree11187_agree]
  rfl
theorem node11188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11188 live11188 coloured11188 = result11188 := by
  rw [tree11188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11186_eq
  unfold live11186 coloured11186 at child
  try dsimp only [live11188, coloured11188]
  rw [child]
  dsimp only [result11186]
  have child := node11187_eq
  unfold live11187 coloured11187 at child
  try dsimp only [live11188, coloured11188]
  rw [child]
  dsimp only [result11187]
  try dsimp only [colour, result11188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11189_agree : tree11189 = literal11189 := by
  rw [tree11189_def]
  rfl
theorem node11189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11189 live11189 coloured11189 = result11189 := by
  rw [tree11189_def]
  try dsimp only [colour, result11189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11190_agree : tree11190 = literal11190 := by
  rw [tree11190_def, tree11188_agree, tree11189_agree]
  rfl
theorem node11190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11190 live11190 coloured11190 = result11190 := by
  rw [tree11190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11188_eq
  unfold live11188 coloured11188 at child
  try dsimp only [live11190, coloured11190]
  rw [child]
  dsimp only [result11188]
  have child := node11189_eq
  unfold live11189 coloured11189 at child
  try dsimp only [live11190, coloured11190]
  rw [child]
  dsimp only [result11189]
  try dsimp only [colour, result11190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11191_agree : tree11191 = literal11191 := by
  rw [tree11191_def]
  rfl
theorem node11191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11191 live11191 coloured11191 = result11191 := by
  rw [tree11191_def]
  try dsimp only [colour, result11191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11192_agree : tree11192 = literal11192 := by
  rw [tree11192_def, tree11190_agree, tree11191_agree]
  rfl
theorem node11192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11192 live11192 coloured11192 = result11192 := by
  rw [tree11192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11190_eq
  unfold live11190 coloured11190 at child
  try dsimp only [live11192, coloured11192]
  rw [child]
  dsimp only [result11190]
  have child := node11191_eq
  unfold live11191 coloured11191 at child
  try dsimp only [live11192, coloured11192]
  rw [child]
  dsimp only [result11191]
  try dsimp only [colour, result11192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11193_agree : tree11193 = literal11193 := by
  rw [tree11193_def]
  rfl
theorem node11193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11193 live11193 coloured11193 = result11193 := by
  rw [tree11193_def]
  try dsimp only [colour, result11193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11194_agree : tree11194 = literal11194 := by
  rw [tree11194_def, tree11192_agree, tree11193_agree]
  rfl
theorem node11194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11194 live11194 coloured11194 = result11194 := by
  rw [tree11194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11192_eq
  unfold live11192 coloured11192 at child
  try dsimp only [live11194, coloured11194]
  rw [child]
  dsimp only [result11192]
  have child := node11193_eq
  unfold live11193 coloured11193 at child
  try dsimp only [live11194, coloured11194]
  rw [child]
  dsimp only [result11193]
  try dsimp only [colour, result11194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11195_agree : tree11195 = literal11195 := by
  rw [tree11195_def]
  rfl
theorem node11195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11195 live11195 coloured11195 = result11195 := by
  rw [tree11195_def]
  try dsimp only [colour, result11195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11196_agree : tree11196 = literal11196 := by
  rw [tree11196_def, tree11194_agree, tree11195_agree]
  rfl
theorem node11196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11196 live11196 coloured11196 = result11196 := by
  rw [tree11196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11194_eq
  unfold live11194 coloured11194 at child
  try dsimp only [live11196, coloured11196]
  rw [child]
  dsimp only [result11194]
  have child := node11195_eq
  unfold live11195 coloured11195 at child
  try dsimp only [live11196, coloured11196]
  rw [child]
  dsimp only [result11195]
  try dsimp only [colour, result11196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11197_agree : tree11197 = literal11197 := by
  rw [tree11197_def]
  rfl
theorem node11197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11197 live11197 coloured11197 = result11197 := by
  rw [tree11197_def]
  try dsimp only [colour, result11197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11198_agree : tree11198 = literal11198 := by
  rw [tree11198_def, tree11196_agree, tree11197_agree]
  rfl
theorem node11198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11198 live11198 coloured11198 = result11198 := by
  rw [tree11198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11196_eq
  unfold live11196 coloured11196 at child
  try dsimp only [live11198, coloured11198]
  rw [child]
  dsimp only [result11196]
  have child := node11197_eq
  unfold live11197 coloured11197 at child
  try dsimp only [live11198, coloured11198]
  rw [child]
  dsimp only [result11197]
  try dsimp only [colour, result11198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11199_agree : tree11199 = literal11199 := by
  rw [tree11199_def]
  rfl
theorem node11199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11199 live11199 coloured11199 = result11199 := by
  rw [tree11199_def]
  try dsimp only [colour, result11199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11200_agree : tree11200 = literal11200 := by
  rw [tree11200_def, tree11198_agree, tree11199_agree]
  rfl
theorem node11200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11200 live11200 coloured11200 = result11200 := by
  rw [tree11200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11198_eq
  unfold live11198 coloured11198 at child
  try dsimp only [live11200, coloured11200]
  rw [child]
  dsimp only [result11198]
  have child := node11199_eq
  unfold live11199 coloured11199 at child
  try dsimp only [live11200, coloured11200]
  rw [child]
  dsimp only [result11199]
  try dsimp only [colour, result11200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11201_agree : tree11201 = literal11201 := by
  rw [tree11201_def]
  rfl
theorem node11201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11201 live11201 coloured11201 = result11201 := by
  rw [tree11201_def]
  try dsimp only [colour, result11201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11202_agree : tree11202 = literal11202 := by
  rw [tree11202_def, tree11200_agree, tree11201_agree]
  rfl
theorem node11202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11202 live11202 coloured11202 = result11202 := by
  rw [tree11202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11200_eq
  unfold live11200 coloured11200 at child
  try dsimp only [live11202, coloured11202]
  rw [child]
  dsimp only [result11200]
  have child := node11201_eq
  unfold live11201 coloured11201 at child
  try dsimp only [live11202, coloured11202]
  rw [child]
  dsimp only [result11201]
  try dsimp only [colour, result11202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11203_agree : tree11203 = literal11203 := by
  rw [tree11203_def]
  rfl
theorem node11203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11203 live11203 coloured11203 = result11203 := by
  rw [tree11203_def]
  try dsimp only [colour, result11203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11204_agree : tree11204 = literal11204 := by
  rw [tree11204_def, tree11202_agree, tree11203_agree]
  rfl
theorem node11204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11204 live11204 coloured11204 = result11204 := by
  rw [tree11204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11202_eq
  unfold live11202 coloured11202 at child
  try dsimp only [live11204, coloured11204]
  rw [child]
  dsimp only [result11202]
  have child := node11203_eq
  unfold live11203 coloured11203 at child
  try dsimp only [live11204, coloured11204]
  rw [child]
  dsimp only [result11203]
  try dsimp only [colour, result11204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11205_agree : tree11205 = literal11205 := by
  rw [tree11205_def]
  rfl
theorem node11205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11205 live11205 coloured11205 = result11205 := by
  rw [tree11205_def]
  try dsimp only [colour, result11205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11206_agree : tree11206 = literal11206 := by
  rw [tree11206_def, tree11204_agree, tree11205_agree]
  rfl
theorem node11206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11206 live11206 coloured11206 = result11206 := by
  rw [tree11206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11204_eq
  unfold live11204 coloured11204 at child
  try dsimp only [live11206, coloured11206]
  rw [child]
  dsimp only [result11204]
  have child := node11205_eq
  unfold live11205 coloured11205 at child
  try dsimp only [live11206, coloured11206]
  rw [child]
  dsimp only [result11205]
  try dsimp only [colour, result11206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11207_agree : tree11207 = literal11207 := by
  rw [tree11207_def]
  rfl
theorem node11207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11207 live11207 coloured11207 = result11207 := by
  rw [tree11207_def]
  try dsimp only [colour, result11207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11208_agree : tree11208 = literal11208 := by
  rw [tree11208_def, tree11206_agree, tree11207_agree]
  rfl
theorem node11208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11208 live11208 coloured11208 = result11208 := by
  rw [tree11208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11206_eq
  unfold live11206 coloured11206 at child
  try dsimp only [live11208, coloured11208]
  rw [child]
  dsimp only [result11206]
  have child := node11207_eq
  unfold live11207 coloured11207 at child
  try dsimp only [live11208, coloured11208]
  rw [child]
  dsimp only [result11207]
  try dsimp only [colour, result11208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11209_agree : tree11209 = literal11209 := by
  rw [tree11209_def]
  rfl
theorem node11209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11209 live11209 coloured11209 = result11209 := by
  rw [tree11209_def]
  try dsimp only [colour, result11209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11210_agree : tree11210 = literal11210 := by
  rw [tree11210_def, tree11208_agree, tree11209_agree]
  rfl
theorem node11210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11210 live11210 coloured11210 = result11210 := by
  rw [tree11210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11208_eq
  unfold live11208 coloured11208 at child
  try dsimp only [live11210, coloured11210]
  rw [child]
  dsimp only [result11208]
  have child := node11209_eq
  unfold live11209 coloured11209 at child
  try dsimp only [live11210, coloured11210]
  rw [child]
  dsimp only [result11209]
  try dsimp only [colour, result11210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11211_agree : tree11211 = literal11211 := by
  rw [tree11211_def]
  rfl
theorem node11211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11211 live11211 coloured11211 = result11211 := by
  rw [tree11211_def]
  try dsimp only [colour, result11211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11212_agree : tree11212 = literal11212 := by
  rw [tree11212_def, tree11210_agree, tree11211_agree]
  rfl
theorem node11212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11212 live11212 coloured11212 = result11212 := by
  rw [tree11212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11210_eq
  unfold live11210 coloured11210 at child
  try dsimp only [live11212, coloured11212]
  rw [child]
  dsimp only [result11210]
  have child := node11211_eq
  unfold live11211 coloured11211 at child
  try dsimp only [live11212, coloured11212]
  rw [child]
  dsimp only [result11211]
  try dsimp only [colour, result11212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11213_agree : tree11213 = literal11213 := by
  rw [tree11213_def]
  rfl
theorem node11213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11213 live11213 coloured11213 = result11213 := by
  rw [tree11213_def]
  try dsimp only [colour, result11213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11214_agree : tree11214 = literal11214 := by
  rw [tree11214_def, tree11212_agree, tree11213_agree]
  rfl
theorem node11214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11214 live11214 coloured11214 = result11214 := by
  rw [tree11214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11212_eq
  unfold live11212 coloured11212 at child
  try dsimp only [live11214, coloured11214]
  rw [child]
  dsimp only [result11212]
  have child := node11213_eq
  unfold live11213 coloured11213 at child
  try dsimp only [live11214, coloured11214]
  rw [child]
  dsimp only [result11213]
  try dsimp only [colour, result11214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11215_agree : tree11215 = literal11215 := by
  rw [tree11215_def]
  rfl
theorem node11215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11215 live11215 coloured11215 = result11215 := by
  rw [tree11215_def]
  try dsimp only [colour, result11215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11216_agree : tree11216 = literal11216 := by
  rw [tree11216_def, tree11214_agree, tree11215_agree]
  rfl
theorem node11216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11216 live11216 coloured11216 = result11216 := by
  rw [tree11216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11214_eq
  unfold live11214 coloured11214 at child
  try dsimp only [live11216, coloured11216]
  rw [child]
  dsimp only [result11214]
  have child := node11215_eq
  unfold live11215 coloured11215 at child
  try dsimp only [live11216, coloured11216]
  rw [child]
  dsimp only [result11215]
  try dsimp only [colour, result11216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11217_agree : tree11217 = literal11217 := by
  rw [tree11217_def]
  rfl
theorem node11217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11217 live11217 coloured11217 = result11217 := by
  rw [tree11217_def]
  try dsimp only [colour, result11217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11218_agree : tree11218 = literal11218 := by
  rw [tree11218_def, tree11216_agree, tree11217_agree]
  rfl
theorem node11218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11218 live11218 coloured11218 = result11218 := by
  rw [tree11218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11216_eq
  unfold live11216 coloured11216 at child
  try dsimp only [live11218, coloured11218]
  rw [child]
  dsimp only [result11216]
  have child := node11217_eq
  unfold live11217 coloured11217 at child
  try dsimp only [live11218, coloured11218]
  rw [child]
  dsimp only [result11217]
  try dsimp only [colour, result11218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11219_agree : tree11219 = literal11219 := by
  rw [tree11219_def]
  rfl
theorem node11219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11219 live11219 coloured11219 = result11219 := by
  rw [tree11219_def]
  try dsimp only [colour, result11219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11220_agree : tree11220 = literal11220 := by
  rw [tree11220_def, tree11218_agree, tree11219_agree]
  rfl
theorem node11220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11220 live11220 coloured11220 = result11220 := by
  rw [tree11220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11218_eq
  unfold live11218 coloured11218 at child
  try dsimp only [live11220, coloured11220]
  rw [child]
  dsimp only [result11218]
  have child := node11219_eq
  unfold live11219 coloured11219 at child
  try dsimp only [live11220, coloured11220]
  rw [child]
  dsimp only [result11219]
  try dsimp only [colour, result11220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11221_agree : tree11221 = literal11221 := by
  rw [tree11221_def]
  rfl
theorem node11221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11221 live11221 coloured11221 = result11221 := by
  rw [tree11221_def]
  try dsimp only [colour, result11221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11222_agree : tree11222 = literal11222 := by
  rw [tree11222_def, tree11220_agree, tree11221_agree]
  rfl
theorem node11222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11222 live11222 coloured11222 = result11222 := by
  rw [tree11222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11220_eq
  unfold live11220 coloured11220 at child
  try dsimp only [live11222, coloured11222]
  rw [child]
  dsimp only [result11220]
  have child := node11221_eq
  unfold live11221 coloured11221 at child
  try dsimp only [live11222, coloured11222]
  rw [child]
  dsimp only [result11221]
  try dsimp only [colour, result11222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11223_agree : tree11223 = literal11223 := by
  rw [tree11223_def]
  rfl
theorem node11223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11223 live11223 coloured11223 = result11223 := by
  rw [tree11223_def]
  try dsimp only [colour, result11223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11224_agree : tree11224 = literal11224 := by
  rw [tree11224_def, tree11222_agree, tree11223_agree]
  rfl
theorem node11224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11224 live11224 coloured11224 = result11224 := by
  rw [tree11224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11222_eq
  unfold live11222 coloured11222 at child
  try dsimp only [live11224, coloured11224]
  rw [child]
  dsimp only [result11222]
  have child := node11223_eq
  unfold live11223 coloured11223 at child
  try dsimp only [live11224, coloured11224]
  rw [child]
  dsimp only [result11223]
  try dsimp only [colour, result11224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11225_agree : tree11225 = literal11225 := by
  rw [tree11225_def]
  rfl
theorem node11225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11225 live11225 coloured11225 = result11225 := by
  rw [tree11225_def]
  try dsimp only [colour, result11225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11226_agree : tree11226 = literal11226 := by
  rw [tree11226_def, tree11224_agree, tree11225_agree]
  rfl
theorem node11226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11226 live11226 coloured11226 = result11226 := by
  rw [tree11226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11224_eq
  unfold live11224 coloured11224 at child
  try dsimp only [live11226, coloured11226]
  rw [child]
  dsimp only [result11224]
  have child := node11225_eq
  unfold live11225 coloured11225 at child
  try dsimp only [live11226, coloured11226]
  rw [child]
  dsimp only [result11225]
  try dsimp only [colour, result11226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11227_agree : tree11227 = literal11227 := by
  rw [tree11227_def]
  rfl
theorem node11227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11227 live11227 coloured11227 = result11227 := by
  rw [tree11227_def]
  try dsimp only [colour, result11227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11228_agree : tree11228 = literal11228 := by
  rw [tree11228_def, tree11226_agree, tree11227_agree]
  rfl
theorem node11228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11228 live11228 coloured11228 = result11228 := by
  rw [tree11228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11226_eq
  unfold live11226 coloured11226 at child
  try dsimp only [live11228, coloured11228]
  rw [child]
  dsimp only [result11226]
  have child := node11227_eq
  unfold live11227 coloured11227 at child
  try dsimp only [live11228, coloured11228]
  rw [child]
  dsimp only [result11227]
  try dsimp only [colour, result11228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11229_agree : tree11229 = literal11229 := by
  rw [tree11229_def]
  rfl
theorem node11229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11229 live11229 coloured11229 = result11229 := by
  rw [tree11229_def]
  try dsimp only [colour, result11229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11230_agree : tree11230 = literal11230 := by
  rw [tree11230_def, tree11228_agree, tree11229_agree]
  rfl
theorem node11230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11230 live11230 coloured11230 = result11230 := by
  rw [tree11230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11228_eq
  unfold live11228 coloured11228 at child
  try dsimp only [live11230, coloured11230]
  rw [child]
  dsimp only [result11228]
  have child := node11229_eq
  unfold live11229 coloured11229 at child
  try dsimp only [live11230, coloured11230]
  rw [child]
  dsimp only [result11229]
  try dsimp only [colour, result11230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11231_agree : tree11231 = literal11231 := by
  rw [tree11231_def]
  rfl
theorem node11231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11231 live11231 coloured11231 = result11231 := by
  rw [tree11231_def]
  try dsimp only [colour, result11231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
