import InitECandidate.Proofs.ClashStages713.Proof42
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree4128_agree : tree4128 = literal4128 := by
  rw [tree4128_def, tree4126_agree, tree4127_agree]
  rfl
theorem node4128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4128 live4128 coloured4128 = result4128 := by
  rw [tree4128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4126_eq
  unfold live4126 coloured4126 at child
  try dsimp only [live4128, coloured4128]
  rw [child]
  dsimp only [result4126]
  have child := node4127_eq
  unfold live4127 coloured4127 at child
  try dsimp only [live4128, coloured4128]
  rw [child]
  dsimp only [result4127]
  try dsimp only [colour, result4128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4129_agree : tree4129 = literal4129 := by
  rw [tree4129_def]
  rfl
theorem node4129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4129 live4129 coloured4129 = result4129 := by
  rw [tree4129_def]
  try dsimp only [colour, result4129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4130_agree : tree4130 = literal4130 := by
  rw [tree4130_def, tree4128_agree, tree4129_agree]
  rfl
theorem node4130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4130 live4130 coloured4130 = result4130 := by
  rw [tree4130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4128_eq
  unfold live4128 coloured4128 at child
  try dsimp only [live4130, coloured4130]
  rw [child]
  dsimp only [result4128]
  have child := node4129_eq
  unfold live4129 coloured4129 at child
  try dsimp only [live4130, coloured4130]
  rw [child]
  dsimp only [result4129]
  try dsimp only [colour, result4130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4131_agree : tree4131 = literal4131 := by
  rw [tree4131_def]
  rfl
theorem node4131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4131 live4131 coloured4131 = result4131 := by
  rw [tree4131_def]
  try dsimp only [colour, result4131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4132_agree : tree4132 = literal4132 := by
  rw [tree4132_def, tree4130_agree, tree4131_agree]
  rfl
theorem node4132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4132 live4132 coloured4132 = result4132 := by
  rw [tree4132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4130_eq
  unfold live4130 coloured4130 at child
  try dsimp only [live4132, coloured4132]
  rw [child]
  dsimp only [result4130]
  have child := node4131_eq
  unfold live4131 coloured4131 at child
  try dsimp only [live4132, coloured4132]
  rw [child]
  dsimp only [result4131]
  try dsimp only [colour, result4132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4133_agree : tree4133 = literal4133 := by
  rw [tree4133_def]
  rfl
theorem node4133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4133 live4133 coloured4133 = result4133 := by
  rw [tree4133_def]
  try dsimp only [colour, result4133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4134_agree : tree4134 = literal4134 := by
  rw [tree4134_def, tree4132_agree, tree4133_agree]
  rfl
theorem node4134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4134 live4134 coloured4134 = result4134 := by
  rw [tree4134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4132_eq
  unfold live4132 coloured4132 at child
  try dsimp only [live4134, coloured4134]
  rw [child]
  dsimp only [result4132]
  have child := node4133_eq
  unfold live4133 coloured4133 at child
  try dsimp only [live4134, coloured4134]
  rw [child]
  dsimp only [result4133]
  try dsimp only [colour, result4134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4135_agree : tree4135 = literal4135 := by
  rw [tree4135_def]
  rfl
theorem node4135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4135 live4135 coloured4135 = result4135 := by
  rw [tree4135_def]
  try dsimp only [colour, result4135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4136_agree : tree4136 = literal4136 := by
  rw [tree4136_def, tree4134_agree, tree4135_agree]
  rfl
theorem node4136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4136 live4136 coloured4136 = result4136 := by
  rw [tree4136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4134_eq
  unfold live4134 coloured4134 at child
  try dsimp only [live4136, coloured4136]
  rw [child]
  dsimp only [result4134]
  have child := node4135_eq
  unfold live4135 coloured4135 at child
  try dsimp only [live4136, coloured4136]
  rw [child]
  dsimp only [result4135]
  try dsimp only [colour, result4136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4137_agree : tree4137 = literal4137 := by
  rw [tree4137_def]
  rfl
theorem node4137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4137 live4137 coloured4137 = result4137 := by
  rw [tree4137_def]
  try dsimp only [colour, result4137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4138_agree : tree4138 = literal4138 := by
  rw [tree4138_def, tree4136_agree, tree4137_agree]
  rfl
theorem node4138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4138 live4138 coloured4138 = result4138 := by
  rw [tree4138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4136_eq
  unfold live4136 coloured4136 at child
  try dsimp only [live4138, coloured4138]
  rw [child]
  dsimp only [result4136]
  have child := node4137_eq
  unfold live4137 coloured4137 at child
  try dsimp only [live4138, coloured4138]
  rw [child]
  dsimp only [result4137]
  try dsimp only [colour, result4138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4139_agree : tree4139 = literal4139 := by
  rw [tree4139_def]
  rfl
theorem node4139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4139 live4139 coloured4139 = result4139 := by
  rw [tree4139_def]
  try dsimp only [colour, result4139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4140_agree : tree4140 = literal4140 := by
  rw [tree4140_def, tree4138_agree, tree4139_agree]
  rfl
theorem node4140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4140 live4140 coloured4140 = result4140 := by
  rw [tree4140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4138_eq
  unfold live4138 coloured4138 at child
  try dsimp only [live4140, coloured4140]
  rw [child]
  dsimp only [result4138]
  have child := node4139_eq
  unfold live4139 coloured4139 at child
  try dsimp only [live4140, coloured4140]
  rw [child]
  dsimp only [result4139]
  try dsimp only [colour, result4140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4141_agree : tree4141 = literal4141 := by
  rw [tree4141_def]
  rfl
theorem node4141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4141 live4141 coloured4141 = result4141 := by
  rw [tree4141_def]
  try dsimp only [colour, result4141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4142_agree : tree4142 = literal4142 := by
  rw [tree4142_def, tree4140_agree, tree4141_agree]
  rfl
theorem node4142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4142 live4142 coloured4142 = result4142 := by
  rw [tree4142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4140_eq
  unfold live4140 coloured4140 at child
  try dsimp only [live4142, coloured4142]
  rw [child]
  dsimp only [result4140]
  have child := node4141_eq
  unfold live4141 coloured4141 at child
  try dsimp only [live4142, coloured4142]
  rw [child]
  dsimp only [result4141]
  try dsimp only [colour, result4142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4143_agree : tree4143 = literal4143 := by
  rw [tree4143_def]
  rfl
theorem node4143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4143 live4143 coloured4143 = result4143 := by
  rw [tree4143_def]
  try dsimp only [colour, result4143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4144_agree : tree4144 = literal4144 := by
  rw [tree4144_def, tree4142_agree, tree4143_agree]
  rfl
theorem node4144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4144 live4144 coloured4144 = result4144 := by
  rw [tree4144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4142_eq
  unfold live4142 coloured4142 at child
  try dsimp only [live4144, coloured4144]
  rw [child]
  dsimp only [result4142]
  have child := node4143_eq
  unfold live4143 coloured4143 at child
  try dsimp only [live4144, coloured4144]
  rw [child]
  dsimp only [result4143]
  try dsimp only [colour, result4144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4145_agree : tree4145 = literal4145 := by
  rw [tree4145_def]
  rfl
theorem node4145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4145 live4145 coloured4145 = result4145 := by
  rw [tree4145_def]
  try dsimp only [colour, result4145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4146_agree : tree4146 = literal4146 := by
  rw [tree4146_def, tree4144_agree, tree4145_agree]
  rfl
theorem node4146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4146 live4146 coloured4146 = result4146 := by
  rw [tree4146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4144_eq
  unfold live4144 coloured4144 at child
  try dsimp only [live4146, coloured4146]
  rw [child]
  dsimp only [result4144]
  have child := node4145_eq
  unfold live4145 coloured4145 at child
  try dsimp only [live4146, coloured4146]
  rw [child]
  dsimp only [result4145]
  try dsimp only [colour, result4146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4147_agree : tree4147 = literal4147 := by
  rw [tree4147_def]
  rfl
theorem node4147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4147 live4147 coloured4147 = result4147 := by
  rw [tree4147_def]
  try dsimp only [colour, result4147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4148_agree : tree4148 = literal4148 := by
  rw [tree4148_def, tree4146_agree, tree4147_agree]
  rfl
theorem node4148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4148 live4148 coloured4148 = result4148 := by
  rw [tree4148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4146_eq
  unfold live4146 coloured4146 at child
  try dsimp only [live4148, coloured4148]
  rw [child]
  dsimp only [result4146]
  have child := node4147_eq
  unfold live4147 coloured4147 at child
  try dsimp only [live4148, coloured4148]
  rw [child]
  dsimp only [result4147]
  try dsimp only [colour, result4148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4149_agree : tree4149 = literal4149 := by
  rw [tree4149_def]
  rfl
theorem node4149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4149 live4149 coloured4149 = result4149 := by
  rw [tree4149_def]
  try dsimp only [colour, result4149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4150_agree : tree4150 = literal4150 := by
  rw [tree4150_def, tree4148_agree, tree4149_agree]
  rfl
theorem node4150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4150 live4150 coloured4150 = result4150 := by
  rw [tree4150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4148_eq
  unfold live4148 coloured4148 at child
  try dsimp only [live4150, coloured4150]
  rw [child]
  dsimp only [result4148]
  have child := node4149_eq
  unfold live4149 coloured4149 at child
  try dsimp only [live4150, coloured4150]
  rw [child]
  dsimp only [result4149]
  try dsimp only [colour, result4150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4151_agree : tree4151 = literal4151 := by
  rw [tree4151_def]
  rfl
theorem node4151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4151 live4151 coloured4151 = result4151 := by
  rw [tree4151_def]
  try dsimp only [colour, result4151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4152_agree : tree4152 = literal4152 := by
  rw [tree4152_def, tree4150_agree, tree4151_agree]
  rfl
theorem node4152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4152 live4152 coloured4152 = result4152 := by
  rw [tree4152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4150_eq
  unfold live4150 coloured4150 at child
  try dsimp only [live4152, coloured4152]
  rw [child]
  dsimp only [result4150]
  have child := node4151_eq
  unfold live4151 coloured4151 at child
  try dsimp only [live4152, coloured4152]
  rw [child]
  dsimp only [result4151]
  try dsimp only [colour, result4152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4153_agree : tree4153 = literal4153 := by
  rw [tree4153_def]
  rfl
theorem node4153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4153 live4153 coloured4153 = result4153 := by
  rw [tree4153_def]
  try dsimp only [colour, result4153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4154_agree : tree4154 = literal4154 := by
  rw [tree4154_def, tree4152_agree, tree4153_agree]
  rfl
theorem node4154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4154 live4154 coloured4154 = result4154 := by
  rw [tree4154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4152_eq
  unfold live4152 coloured4152 at child
  try dsimp only [live4154, coloured4154]
  rw [child]
  dsimp only [result4152]
  have child := node4153_eq
  unfold live4153 coloured4153 at child
  try dsimp only [live4154, coloured4154]
  rw [child]
  dsimp only [result4153]
  try dsimp only [colour, result4154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4155_agree : tree4155 = literal4155 := by
  rw [tree4155_def]
  rfl
theorem node4155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4155 live4155 coloured4155 = result4155 := by
  rw [tree4155_def]
  try dsimp only [colour, result4155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4156_agree : tree4156 = literal4156 := by
  rw [tree4156_def, tree4154_agree, tree4155_agree]
  rfl
theorem node4156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4156 live4156 coloured4156 = result4156 := by
  rw [tree4156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4154_eq
  unfold live4154 coloured4154 at child
  try dsimp only [live4156, coloured4156]
  rw [child]
  dsimp only [result4154]
  have child := node4155_eq
  unfold live4155 coloured4155 at child
  try dsimp only [live4156, coloured4156]
  rw [child]
  dsimp only [result4155]
  try dsimp only [colour, result4156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4157_agree : tree4157 = literal4157 := by
  rw [tree4157_def]
  rfl
theorem node4157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4157 live4157 coloured4157 = result4157 := by
  rw [tree4157_def]
  try dsimp only [colour, result4157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4158_agree : tree4158 = literal4158 := by
  rw [tree4158_def, tree4156_agree, tree4157_agree]
  rfl
theorem node4158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4158 live4158 coloured4158 = result4158 := by
  rw [tree4158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4156_eq
  unfold live4156 coloured4156 at child
  try dsimp only [live4158, coloured4158]
  rw [child]
  dsimp only [result4156]
  have child := node4157_eq
  unfold live4157 coloured4157 at child
  try dsimp only [live4158, coloured4158]
  rw [child]
  dsimp only [result4157]
  try dsimp only [colour, result4158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4159_agree : tree4159 = literal4159 := by
  rw [tree4159_def]
  rfl
theorem node4159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4159 live4159 coloured4159 = result4159 := by
  rw [tree4159_def]
  try dsimp only [colour, result4159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4160_agree : tree4160 = literal4160 := by
  rw [tree4160_def, tree4158_agree, tree4159_agree]
  rfl
theorem node4160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4160 live4160 coloured4160 = result4160 := by
  rw [tree4160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4158_eq
  unfold live4158 coloured4158 at child
  try dsimp only [live4160, coloured4160]
  rw [child]
  dsimp only [result4158]
  have child := node4159_eq
  unfold live4159 coloured4159 at child
  try dsimp only [live4160, coloured4160]
  rw [child]
  dsimp only [result4159]
  try dsimp only [colour, result4160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4161_agree : tree4161 = literal4161 := by
  rw [tree4161_def]
  rfl
theorem node4161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4161 live4161 coloured4161 = result4161 := by
  rw [tree4161_def]
  try dsimp only [colour, result4161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4162_agree : tree4162 = literal4162 := by
  rw [tree4162_def, tree4160_agree, tree4161_agree]
  rfl
theorem node4162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4162 live4162 coloured4162 = result4162 := by
  rw [tree4162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4160_eq
  unfold live4160 coloured4160 at child
  try dsimp only [live4162, coloured4162]
  rw [child]
  dsimp only [result4160]
  have child := node4161_eq
  unfold live4161 coloured4161 at child
  try dsimp only [live4162, coloured4162]
  rw [child]
  dsimp only [result4161]
  try dsimp only [colour, result4162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4163_agree : tree4163 = literal4163 := by
  rw [tree4163_def]
  rfl
theorem node4163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4163 live4163 coloured4163 = result4163 := by
  rw [tree4163_def]
  try dsimp only [colour, result4163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4164_agree : tree4164 = literal4164 := by
  rw [tree4164_def, tree4162_agree, tree4163_agree]
  rfl
theorem node4164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4164 live4164 coloured4164 = result4164 := by
  rw [tree4164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4162_eq
  unfold live4162 coloured4162 at child
  try dsimp only [live4164, coloured4164]
  rw [child]
  dsimp only [result4162]
  have child := node4163_eq
  unfold live4163 coloured4163 at child
  try dsimp only [live4164, coloured4164]
  rw [child]
  dsimp only [result4163]
  try dsimp only [colour, result4164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4165_agree : tree4165 = literal4165 := by
  rw [tree4165_def]
  rfl
theorem node4165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4165 live4165 coloured4165 = result4165 := by
  rw [tree4165_def]
  try dsimp only [colour, result4165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4166_agree : tree4166 = literal4166 := by
  rw [tree4166_def, tree4164_agree, tree4165_agree]
  rfl
theorem node4166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4166 live4166 coloured4166 = result4166 := by
  rw [tree4166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4164_eq
  unfold live4164 coloured4164 at child
  try dsimp only [live4166, coloured4166]
  rw [child]
  dsimp only [result4164]
  have child := node4165_eq
  unfold live4165 coloured4165 at child
  try dsimp only [live4166, coloured4166]
  rw [child]
  dsimp only [result4165]
  try dsimp only [colour, result4166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4167_agree : tree4167 = literal4167 := by
  rw [tree4167_def]
  rfl
theorem node4167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4167 live4167 coloured4167 = result4167 := by
  rw [tree4167_def]
  try dsimp only [colour, result4167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4168_agree : tree4168 = literal4168 := by
  rw [tree4168_def, tree4166_agree, tree4167_agree]
  rfl
theorem node4168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4168 live4168 coloured4168 = result4168 := by
  rw [tree4168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4166_eq
  unfold live4166 coloured4166 at child
  try dsimp only [live4168, coloured4168]
  rw [child]
  dsimp only [result4166]
  have child := node4167_eq
  unfold live4167 coloured4167 at child
  try dsimp only [live4168, coloured4168]
  rw [child]
  dsimp only [result4167]
  try dsimp only [colour, result4168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4169_agree : tree4169 = literal4169 := by
  rw [tree4169_def]
  rfl
theorem node4169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4169 live4169 coloured4169 = result4169 := by
  rw [tree4169_def]
  try dsimp only [colour, result4169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4170_agree : tree4170 = literal4170 := by
  rw [tree4170_def, tree4168_agree, tree4169_agree]
  rfl
theorem node4170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4170 live4170 coloured4170 = result4170 := by
  rw [tree4170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4168_eq
  unfold live4168 coloured4168 at child
  try dsimp only [live4170, coloured4170]
  rw [child]
  dsimp only [result4168]
  have child := node4169_eq
  unfold live4169 coloured4169 at child
  try dsimp only [live4170, coloured4170]
  rw [child]
  dsimp only [result4169]
  try dsimp only [colour, result4170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4171_agree : tree4171 = literal4171 := by
  rw [tree4171_def]
  rfl
theorem node4171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4171 live4171 coloured4171 = result4171 := by
  rw [tree4171_def]
  try dsimp only [colour, result4171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4172_agree : tree4172 = literal4172 := by
  rw [tree4172_def, tree4170_agree, tree4171_agree]
  rfl
theorem node4172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4172 live4172 coloured4172 = result4172 := by
  rw [tree4172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4170_eq
  unfold live4170 coloured4170 at child
  try dsimp only [live4172, coloured4172]
  rw [child]
  dsimp only [result4170]
  have child := node4171_eq
  unfold live4171 coloured4171 at child
  try dsimp only [live4172, coloured4172]
  rw [child]
  dsimp only [result4171]
  try dsimp only [colour, result4172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4173_agree : tree4173 = literal4173 := by
  rw [tree4173_def]
  rfl
theorem node4173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4173 live4173 coloured4173 = result4173 := by
  rw [tree4173_def]
  try dsimp only [colour, result4173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4174_agree : tree4174 = literal4174 := by
  rw [tree4174_def, tree4172_agree, tree4173_agree]
  rfl
theorem node4174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4174 live4174 coloured4174 = result4174 := by
  rw [tree4174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4172_eq
  unfold live4172 coloured4172 at child
  try dsimp only [live4174, coloured4174]
  rw [child]
  dsimp only [result4172]
  have child := node4173_eq
  unfold live4173 coloured4173 at child
  try dsimp only [live4174, coloured4174]
  rw [child]
  dsimp only [result4173]
  try dsimp only [colour, result4174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4175_agree : tree4175 = literal4175 := by
  rw [tree4175_def]
  rfl
theorem node4175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4175 live4175 coloured4175 = result4175 := by
  rw [tree4175_def]
  try dsimp only [colour, result4175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4176_agree : tree4176 = literal4176 := by
  rw [tree4176_def, tree4174_agree, tree4175_agree]
  rfl
theorem node4176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4176 live4176 coloured4176 = result4176 := by
  rw [tree4176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4174_eq
  unfold live4174 coloured4174 at child
  try dsimp only [live4176, coloured4176]
  rw [child]
  dsimp only [result4174]
  have child := node4175_eq
  unfold live4175 coloured4175 at child
  try dsimp only [live4176, coloured4176]
  rw [child]
  dsimp only [result4175]
  try dsimp only [colour, result4176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4177_agree : tree4177 = literal4177 := by
  rw [tree4177_def]
  rfl
theorem node4177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4177 live4177 coloured4177 = result4177 := by
  rw [tree4177_def]
  try dsimp only [colour, result4177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4178_agree : tree4178 = literal4178 := by
  rw [tree4178_def, tree4176_agree, tree4177_agree]
  rfl
theorem node4178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4178 live4178 coloured4178 = result4178 := by
  rw [tree4178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4176_eq
  unfold live4176 coloured4176 at child
  try dsimp only [live4178, coloured4178]
  rw [child]
  dsimp only [result4176]
  have child := node4177_eq
  unfold live4177 coloured4177 at child
  try dsimp only [live4178, coloured4178]
  rw [child]
  dsimp only [result4177]
  try dsimp only [colour, result4178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4179_agree : tree4179 = literal4179 := by
  rw [tree4179_def]
  rfl
theorem node4179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4179 live4179 coloured4179 = result4179 := by
  rw [tree4179_def]
  try dsimp only [colour, result4179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4180_agree : tree4180 = literal4180 := by
  rw [tree4180_def, tree4178_agree, tree4179_agree]
  rfl
theorem node4180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4180 live4180 coloured4180 = result4180 := by
  rw [tree4180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4178_eq
  unfold live4178 coloured4178 at child
  try dsimp only [live4180, coloured4180]
  rw [child]
  dsimp only [result4178]
  have child := node4179_eq
  unfold live4179 coloured4179 at child
  try dsimp only [live4180, coloured4180]
  rw [child]
  dsimp only [result4179]
  try dsimp only [colour, result4180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4181_agree : tree4181 = literal4181 := by
  rw [tree4181_def]
  rfl
theorem node4181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4181 live4181 coloured4181 = result4181 := by
  rw [tree4181_def]
  try dsimp only [colour, result4181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4182_agree : tree4182 = literal4182 := by
  rw [tree4182_def, tree4180_agree, tree4181_agree]
  rfl
theorem node4182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4182 live4182 coloured4182 = result4182 := by
  rw [tree4182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4180_eq
  unfold live4180 coloured4180 at child
  try dsimp only [live4182, coloured4182]
  rw [child]
  dsimp only [result4180]
  have child := node4181_eq
  unfold live4181 coloured4181 at child
  try dsimp only [live4182, coloured4182]
  rw [child]
  dsimp only [result4181]
  try dsimp only [colour, result4182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4183_agree : tree4183 = literal4183 := by
  rw [tree4183_def]
  rfl
theorem node4183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4183 live4183 coloured4183 = result4183 := by
  rw [tree4183_def]
  try dsimp only [colour, result4183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4184_agree : tree4184 = literal4184 := by
  rw [tree4184_def, tree4182_agree, tree4183_agree]
  rfl
theorem node4184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4184 live4184 coloured4184 = result4184 := by
  rw [tree4184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4182_eq
  unfold live4182 coloured4182 at child
  try dsimp only [live4184, coloured4184]
  rw [child]
  dsimp only [result4182]
  have child := node4183_eq
  unfold live4183 coloured4183 at child
  try dsimp only [live4184, coloured4184]
  rw [child]
  dsimp only [result4183]
  try dsimp only [colour, result4184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4185_agree : tree4185 = literal4185 := by
  rw [tree4185_def]
  rfl
theorem node4185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4185 live4185 coloured4185 = result4185 := by
  rw [tree4185_def]
  try dsimp only [colour, result4185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4186_agree : tree4186 = literal4186 := by
  rw [tree4186_def, tree4184_agree, tree4185_agree]
  rfl
theorem node4186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4186 live4186 coloured4186 = result4186 := by
  rw [tree4186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4184_eq
  unfold live4184 coloured4184 at child
  try dsimp only [live4186, coloured4186]
  rw [child]
  dsimp only [result4184]
  have child := node4185_eq
  unfold live4185 coloured4185 at child
  try dsimp only [live4186, coloured4186]
  rw [child]
  dsimp only [result4185]
  try dsimp only [colour, result4186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4187_agree : tree4187 = literal4187 := by
  rw [tree4187_def]
  rfl
theorem node4187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4187 live4187 coloured4187 = result4187 := by
  rw [tree4187_def]
  try dsimp only [colour, result4187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4188_agree : tree4188 = literal4188 := by
  rw [tree4188_def, tree4186_agree, tree4187_agree]
  rfl
theorem node4188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4188 live4188 coloured4188 = result4188 := by
  rw [tree4188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4186_eq
  unfold live4186 coloured4186 at child
  try dsimp only [live4188, coloured4188]
  rw [child]
  dsimp only [result4186]
  have child := node4187_eq
  unfold live4187 coloured4187 at child
  try dsimp only [live4188, coloured4188]
  rw [child]
  dsimp only [result4187]
  try dsimp only [colour, result4188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4189_agree : tree4189 = literal4189 := by
  rw [tree4189_def]
  rfl
theorem node4189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4189 live4189 coloured4189 = result4189 := by
  rw [tree4189_def]
  try dsimp only [colour, result4189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4190_agree : tree4190 = literal4190 := by
  rw [tree4190_def, tree4188_agree, tree4189_agree]
  rfl
theorem node4190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4190 live4190 coloured4190 = result4190 := by
  rw [tree4190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4188_eq
  unfold live4188 coloured4188 at child
  try dsimp only [live4190, coloured4190]
  rw [child]
  dsimp only [result4188]
  have child := node4189_eq
  unfold live4189 coloured4189 at child
  try dsimp only [live4190, coloured4190]
  rw [child]
  dsimp only [result4189]
  try dsimp only [colour, result4190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4191_agree : tree4191 = literal4191 := by
  rw [tree4191_def]
  rfl
theorem node4191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4191 live4191 coloured4191 = result4191 := by
  rw [tree4191_def]
  try dsimp only [colour, result4191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4192_agree : tree4192 = literal4192 := by
  rw [tree4192_def, tree4190_agree, tree4191_agree]
  rfl
theorem node4192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4192 live4192 coloured4192 = result4192 := by
  rw [tree4192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4190_eq
  unfold live4190 coloured4190 at child
  try dsimp only [live4192, coloured4192]
  rw [child]
  dsimp only [result4190]
  have child := node4191_eq
  unfold live4191 coloured4191 at child
  try dsimp only [live4192, coloured4192]
  rw [child]
  dsimp only [result4191]
  try dsimp only [colour, result4192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4193_agree : tree4193 = literal4193 := by
  rw [tree4193_def]
  rfl
theorem node4193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4193 live4193 coloured4193 = result4193 := by
  rw [tree4193_def]
  try dsimp only [colour, result4193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4194_agree : tree4194 = literal4194 := by
  rw [tree4194_def, tree4192_agree, tree4193_agree]
  rfl
theorem node4194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4194 live4194 coloured4194 = result4194 := by
  rw [tree4194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4192_eq
  unfold live4192 coloured4192 at child
  try dsimp only [live4194, coloured4194]
  rw [child]
  dsimp only [result4192]
  have child := node4193_eq
  unfold live4193 coloured4193 at child
  try dsimp only [live4194, coloured4194]
  rw [child]
  dsimp only [result4193]
  try dsimp only [colour, result4194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4195_agree : tree4195 = literal4195 := by
  rw [tree4195_def]
  rfl
theorem node4195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4195 live4195 coloured4195 = result4195 := by
  rw [tree4195_def]
  try dsimp only [colour, result4195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4196_agree : tree4196 = literal4196 := by
  rw [tree4196_def, tree4194_agree, tree4195_agree]
  rfl
theorem node4196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4196 live4196 coloured4196 = result4196 := by
  rw [tree4196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4194_eq
  unfold live4194 coloured4194 at child
  try dsimp only [live4196, coloured4196]
  rw [child]
  dsimp only [result4194]
  have child := node4195_eq
  unfold live4195 coloured4195 at child
  try dsimp only [live4196, coloured4196]
  rw [child]
  dsimp only [result4195]
  try dsimp only [colour, result4196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4197_agree : tree4197 = literal4197 := by
  rw [tree4197_def]
  rfl
theorem node4197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4197 live4197 coloured4197 = result4197 := by
  rw [tree4197_def]
  try dsimp only [colour, result4197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4198_agree : tree4198 = literal4198 := by
  rw [tree4198_def, tree4196_agree, tree4197_agree]
  rfl
theorem node4198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4198 live4198 coloured4198 = result4198 := by
  rw [tree4198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4196_eq
  unfold live4196 coloured4196 at child
  try dsimp only [live4198, coloured4198]
  rw [child]
  dsimp only [result4196]
  have child := node4197_eq
  unfold live4197 coloured4197 at child
  try dsimp only [live4198, coloured4198]
  rw [child]
  dsimp only [result4197]
  try dsimp only [colour, result4198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4199_agree : tree4199 = literal4199 := by
  rw [tree4199_def]
  rfl
theorem node4199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4199 live4199 coloured4199 = result4199 := by
  rw [tree4199_def]
  try dsimp only [colour, result4199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4200_agree : tree4200 = literal4200 := by
  rw [tree4200_def, tree4198_agree, tree4199_agree]
  rfl
theorem node4200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4200 live4200 coloured4200 = result4200 := by
  rw [tree4200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4198_eq
  unfold live4198 coloured4198 at child
  try dsimp only [live4200, coloured4200]
  rw [child]
  dsimp only [result4198]
  have child := node4199_eq
  unfold live4199 coloured4199 at child
  try dsimp only [live4200, coloured4200]
  rw [child]
  dsimp only [result4199]
  try dsimp only [colour, result4200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4201_agree : tree4201 = literal4201 := by
  rw [tree4201_def]
  rfl
theorem node4201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4201 live4201 coloured4201 = result4201 := by
  rw [tree4201_def]
  try dsimp only [colour, result4201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4202_agree : tree4202 = literal4202 := by
  rw [tree4202_def, tree4200_agree, tree4201_agree]
  rfl
theorem node4202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4202 live4202 coloured4202 = result4202 := by
  rw [tree4202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4200_eq
  unfold live4200 coloured4200 at child
  try dsimp only [live4202, coloured4202]
  rw [child]
  dsimp only [result4200]
  have child := node4201_eq
  unfold live4201 coloured4201 at child
  try dsimp only [live4202, coloured4202]
  rw [child]
  dsimp only [result4201]
  try dsimp only [colour, result4202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4203_agree : tree4203 = literal4203 := by
  rw [tree4203_def]
  rfl
theorem node4203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4203 live4203 coloured4203 = result4203 := by
  rw [tree4203_def]
  try dsimp only [colour, result4203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4204_agree : tree4204 = literal4204 := by
  rw [tree4204_def, tree4202_agree, tree4203_agree]
  rfl
theorem node4204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4204 live4204 coloured4204 = result4204 := by
  rw [tree4204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4202_eq
  unfold live4202 coloured4202 at child
  try dsimp only [live4204, coloured4204]
  rw [child]
  dsimp only [result4202]
  have child := node4203_eq
  unfold live4203 coloured4203 at child
  try dsimp only [live4204, coloured4204]
  rw [child]
  dsimp only [result4203]
  try dsimp only [colour, result4204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4205_agree : tree4205 = literal4205 := by
  rw [tree4205_def]
  rfl
theorem node4205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4205 live4205 coloured4205 = result4205 := by
  rw [tree4205_def]
  try dsimp only [colour, result4205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4206_agree : tree4206 = literal4206 := by
  rw [tree4206_def, tree4204_agree, tree4205_agree]
  rfl
theorem node4206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4206 live4206 coloured4206 = result4206 := by
  rw [tree4206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4204_eq
  unfold live4204 coloured4204 at child
  try dsimp only [live4206, coloured4206]
  rw [child]
  dsimp only [result4204]
  have child := node4205_eq
  unfold live4205 coloured4205 at child
  try dsimp only [live4206, coloured4206]
  rw [child]
  dsimp only [result4205]
  try dsimp only [colour, result4206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4207_agree : tree4207 = literal4207 := by
  rw [tree4207_def]
  rfl
theorem node4207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4207 live4207 coloured4207 = result4207 := by
  rw [tree4207_def]
  try dsimp only [colour, result4207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4208_agree : tree4208 = literal4208 := by
  rw [tree4208_def, tree4206_agree, tree4207_agree]
  rfl
theorem node4208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4208 live4208 coloured4208 = result4208 := by
  rw [tree4208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4206_eq
  unfold live4206 coloured4206 at child
  try dsimp only [live4208, coloured4208]
  rw [child]
  dsimp only [result4206]
  have child := node4207_eq
  unfold live4207 coloured4207 at child
  try dsimp only [live4208, coloured4208]
  rw [child]
  dsimp only [result4207]
  try dsimp only [colour, result4208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4209_agree : tree4209 = literal4209 := by
  rw [tree4209_def]
  rfl
theorem node4209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4209 live4209 coloured4209 = result4209 := by
  rw [tree4209_def]
  try dsimp only [colour, result4209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4210_agree : tree4210 = literal4210 := by
  rw [tree4210_def, tree4208_agree, tree4209_agree]
  rfl
theorem node4210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4210 live4210 coloured4210 = result4210 := by
  rw [tree4210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4208_eq
  unfold live4208 coloured4208 at child
  try dsimp only [live4210, coloured4210]
  rw [child]
  dsimp only [result4208]
  have child := node4209_eq
  unfold live4209 coloured4209 at child
  try dsimp only [live4210, coloured4210]
  rw [child]
  dsimp only [result4209]
  try dsimp only [colour, result4210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4211_agree : tree4211 = literal4211 := by
  rw [tree4211_def]
  rfl
theorem node4211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4211 live4211 coloured4211 = result4211 := by
  rw [tree4211_def]
  try dsimp only [colour, result4211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4212_agree : tree4212 = literal4212 := by
  rw [tree4212_def, tree4210_agree, tree4211_agree]
  rfl
theorem node4212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4212 live4212 coloured4212 = result4212 := by
  rw [tree4212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4210_eq
  unfold live4210 coloured4210 at child
  try dsimp only [live4212, coloured4212]
  rw [child]
  dsimp only [result4210]
  have child := node4211_eq
  unfold live4211 coloured4211 at child
  try dsimp only [live4212, coloured4212]
  rw [child]
  dsimp only [result4211]
  try dsimp only [colour, result4212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4213_agree : tree4213 = literal4213 := by
  rw [tree4213_def]
  rfl
theorem node4213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4213 live4213 coloured4213 = result4213 := by
  rw [tree4213_def]
  try dsimp only [colour, result4213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4214_agree : tree4214 = literal4214 := by
  rw [tree4214_def, tree4212_agree, tree4213_agree]
  rfl
theorem node4214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4214 live4214 coloured4214 = result4214 := by
  rw [tree4214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4212_eq
  unfold live4212 coloured4212 at child
  try dsimp only [live4214, coloured4214]
  rw [child]
  dsimp only [result4212]
  have child := node4213_eq
  unfold live4213 coloured4213 at child
  try dsimp only [live4214, coloured4214]
  rw [child]
  dsimp only [result4213]
  try dsimp only [colour, result4214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4215_agree : tree4215 = literal4215 := by
  rw [tree4215_def]
  rfl
theorem node4215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4215 live4215 coloured4215 = result4215 := by
  rw [tree4215_def]
  try dsimp only [colour, result4215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4216_agree : tree4216 = literal4216 := by
  rw [tree4216_def, tree4214_agree, tree4215_agree]
  rfl
theorem node4216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4216 live4216 coloured4216 = result4216 := by
  rw [tree4216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4214_eq
  unfold live4214 coloured4214 at child
  try dsimp only [live4216, coloured4216]
  rw [child]
  dsimp only [result4214]
  have child := node4215_eq
  unfold live4215 coloured4215 at child
  try dsimp only [live4216, coloured4216]
  rw [child]
  dsimp only [result4215]
  try dsimp only [colour, result4216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4217_agree : tree4217 = literal4217 := by
  rw [tree4217_def]
  rfl
theorem node4217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4217 live4217 coloured4217 = result4217 := by
  rw [tree4217_def]
  try dsimp only [colour, result4217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4218_agree : tree4218 = literal4218 := by
  rw [tree4218_def, tree4216_agree, tree4217_agree]
  rfl
theorem node4218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4218 live4218 coloured4218 = result4218 := by
  rw [tree4218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4216_eq
  unfold live4216 coloured4216 at child
  try dsimp only [live4218, coloured4218]
  rw [child]
  dsimp only [result4216]
  have child := node4217_eq
  unfold live4217 coloured4217 at child
  try dsimp only [live4218, coloured4218]
  rw [child]
  dsimp only [result4217]
  try dsimp only [colour, result4218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4219_agree : tree4219 = literal4219 := by
  rw [tree4219_def]
  rfl
theorem node4219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4219 live4219 coloured4219 = result4219 := by
  rw [tree4219_def]
  try dsimp only [colour, result4219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4220_agree : tree4220 = literal4220 := by
  rw [tree4220_def, tree4218_agree, tree4219_agree]
  rfl
theorem node4220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4220 live4220 coloured4220 = result4220 := by
  rw [tree4220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4218_eq
  unfold live4218 coloured4218 at child
  try dsimp only [live4220, coloured4220]
  rw [child]
  dsimp only [result4218]
  have child := node4219_eq
  unfold live4219 coloured4219 at child
  try dsimp only [live4220, coloured4220]
  rw [child]
  dsimp only [result4219]
  try dsimp only [colour, result4220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4221_agree : tree4221 = literal4221 := by
  rw [tree4221_def]
  rfl
theorem node4221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4221 live4221 coloured4221 = result4221 := by
  rw [tree4221_def]
  try dsimp only [colour, result4221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4222_agree : tree4222 = literal4222 := by
  rw [tree4222_def, tree4220_agree, tree4221_agree]
  rfl
theorem node4222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4222 live4222 coloured4222 = result4222 := by
  rw [tree4222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4220_eq
  unfold live4220 coloured4220 at child
  try dsimp only [live4222, coloured4222]
  rw [child]
  dsimp only [result4220]
  have child := node4221_eq
  unfold live4221 coloured4221 at child
  try dsimp only [live4222, coloured4222]
  rw [child]
  dsimp only [result4221]
  try dsimp only [colour, result4222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4223_agree : tree4223 = literal4223 := by
  rw [tree4223_def]
  rfl
theorem node4223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4223 live4223 coloured4223 = result4223 := by
  rw [tree4223_def]
  try dsimp only [colour, result4223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
