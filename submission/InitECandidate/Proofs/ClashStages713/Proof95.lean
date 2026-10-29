import InitECandidate.Proofs.ClashStages713.Proof94
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9120_agree : tree9120 = literal9120 := by
  rw [tree9120_def, tree9118_agree, tree9119_agree]
  rfl
theorem node9120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9120 live9120 coloured9120 = result9120 := by
  rw [tree9120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9118_eq
  unfold live9118 coloured9118 at child
  try dsimp only [live9120, coloured9120]
  rw [child]
  dsimp only [result9118]
  have child := node9119_eq
  unfold live9119 coloured9119 at child
  try dsimp only [live9120, coloured9120]
  rw [child]
  dsimp only [result9119]
  try dsimp only [colour, result9120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9121_agree : tree9121 = literal9121 := by
  rw [tree9121_def]
  rfl
theorem node9121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9121 live9121 coloured9121 = result9121 := by
  rw [tree9121_def]
  try dsimp only [colour, result9121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9122_agree : tree9122 = literal9122 := by
  rw [tree9122_def, tree9120_agree, tree9121_agree]
  rfl
theorem node9122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9122 live9122 coloured9122 = result9122 := by
  rw [tree9122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9120_eq
  unfold live9120 coloured9120 at child
  try dsimp only [live9122, coloured9122]
  rw [child]
  dsimp only [result9120]
  have child := node9121_eq
  unfold live9121 coloured9121 at child
  try dsimp only [live9122, coloured9122]
  rw [child]
  dsimp only [result9121]
  try dsimp only [colour, result9122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9123_agree : tree9123 = literal9123 := by
  rw [tree9123_def]
  rfl
theorem node9123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9123 live9123 coloured9123 = result9123 := by
  rw [tree9123_def]
  try dsimp only [colour, result9123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9124_agree : tree9124 = literal9124 := by
  rw [tree9124_def, tree9122_agree, tree9123_agree]
  rfl
theorem node9124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9124 live9124 coloured9124 = result9124 := by
  rw [tree9124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9122_eq
  unfold live9122 coloured9122 at child
  try dsimp only [live9124, coloured9124]
  rw [child]
  dsimp only [result9122]
  have child := node9123_eq
  unfold live9123 coloured9123 at child
  try dsimp only [live9124, coloured9124]
  rw [child]
  dsimp only [result9123]
  try dsimp only [colour, result9124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9125_agree : tree9125 = literal9125 := by
  rw [tree9125_def]
  rfl
theorem node9125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9125 live9125 coloured9125 = result9125 := by
  rw [tree9125_def]
  try dsimp only [colour, result9125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9126_agree : tree9126 = literal9126 := by
  rw [tree9126_def, tree9124_agree, tree9125_agree]
  rfl
theorem node9126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9126 live9126 coloured9126 = result9126 := by
  rw [tree9126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9124_eq
  unfold live9124 coloured9124 at child
  try dsimp only [live9126, coloured9126]
  rw [child]
  dsimp only [result9124]
  have child := node9125_eq
  unfold live9125 coloured9125 at child
  try dsimp only [live9126, coloured9126]
  rw [child]
  dsimp only [result9125]
  try dsimp only [colour, result9126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9127_agree : tree9127 = literal9127 := by
  rw [tree9127_def]
  rfl
theorem node9127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9127 live9127 coloured9127 = result9127 := by
  rw [tree9127_def]
  try dsimp only [colour, result9127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9128_agree : tree9128 = literal9128 := by
  rw [tree9128_def, tree9126_agree, tree9127_agree]
  rfl
theorem node9128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9128 live9128 coloured9128 = result9128 := by
  rw [tree9128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9126_eq
  unfold live9126 coloured9126 at child
  try dsimp only [live9128, coloured9128]
  rw [child]
  dsimp only [result9126]
  have child := node9127_eq
  unfold live9127 coloured9127 at child
  try dsimp only [live9128, coloured9128]
  rw [child]
  dsimp only [result9127]
  try dsimp only [colour, result9128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9129_agree : tree9129 = literal9129 := by
  rw [tree9129_def]
  rfl
theorem node9129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9129 live9129 coloured9129 = result9129 := by
  rw [tree9129_def]
  try dsimp only [colour, result9129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9130_agree : tree9130 = literal9130 := by
  rw [tree9130_def, tree9128_agree, tree9129_agree]
  rfl
theorem node9130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9130 live9130 coloured9130 = result9130 := by
  rw [tree9130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9128_eq
  unfold live9128 coloured9128 at child
  try dsimp only [live9130, coloured9130]
  rw [child]
  dsimp only [result9128]
  have child := node9129_eq
  unfold live9129 coloured9129 at child
  try dsimp only [live9130, coloured9130]
  rw [child]
  dsimp only [result9129]
  try dsimp only [colour, result9130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9131_agree : tree9131 = literal9131 := by
  rw [tree9131_def]
  rfl
theorem node9131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9131 live9131 coloured9131 = result9131 := by
  rw [tree9131_def]
  try dsimp only [colour, result9131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9132_agree : tree9132 = literal9132 := by
  rw [tree9132_def, tree9130_agree, tree9131_agree]
  rfl
theorem node9132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9132 live9132 coloured9132 = result9132 := by
  rw [tree9132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9130_eq
  unfold live9130 coloured9130 at child
  try dsimp only [live9132, coloured9132]
  rw [child]
  dsimp only [result9130]
  have child := node9131_eq
  unfold live9131 coloured9131 at child
  try dsimp only [live9132, coloured9132]
  rw [child]
  dsimp only [result9131]
  try dsimp only [colour, result9132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9133_agree : tree9133 = literal9133 := by
  rw [tree9133_def]
  rfl
theorem node9133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9133 live9133 coloured9133 = result9133 := by
  rw [tree9133_def]
  try dsimp only [colour, result9133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9134_agree : tree9134 = literal9134 := by
  rw [tree9134_def, tree9132_agree, tree9133_agree]
  rfl
theorem node9134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9134 live9134 coloured9134 = result9134 := by
  rw [tree9134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9132_eq
  unfold live9132 coloured9132 at child
  try dsimp only [live9134, coloured9134]
  rw [child]
  dsimp only [result9132]
  have child := node9133_eq
  unfold live9133 coloured9133 at child
  try dsimp only [live9134, coloured9134]
  rw [child]
  dsimp only [result9133]
  try dsimp only [colour, result9134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9135_agree : tree9135 = literal9135 := by
  rw [tree9135_def]
  rfl
theorem node9135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9135 live9135 coloured9135 = result9135 := by
  rw [tree9135_def]
  try dsimp only [colour, result9135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9136_agree : tree9136 = literal9136 := by
  rw [tree9136_def, tree9134_agree, tree9135_agree]
  rfl
theorem node9136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9136 live9136 coloured9136 = result9136 := by
  rw [tree9136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9134_eq
  unfold live9134 coloured9134 at child
  try dsimp only [live9136, coloured9136]
  rw [child]
  dsimp only [result9134]
  have child := node9135_eq
  unfold live9135 coloured9135 at child
  try dsimp only [live9136, coloured9136]
  rw [child]
  dsimp only [result9135]
  try dsimp only [colour, result9136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9137_agree : tree9137 = literal9137 := by
  rw [tree9137_def]
  rfl
theorem node9137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9137 live9137 coloured9137 = result9137 := by
  rw [tree9137_def]
  try dsimp only [colour, result9137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9138_agree : tree9138 = literal9138 := by
  rw [tree9138_def, tree9136_agree, tree9137_agree]
  rfl
theorem node9138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9138 live9138 coloured9138 = result9138 := by
  rw [tree9138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9136_eq
  unfold live9136 coloured9136 at child
  try dsimp only [live9138, coloured9138]
  rw [child]
  dsimp only [result9136]
  have child := node9137_eq
  unfold live9137 coloured9137 at child
  try dsimp only [live9138, coloured9138]
  rw [child]
  dsimp only [result9137]
  try dsimp only [colour, result9138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9139_agree : tree9139 = literal9139 := by
  rw [tree9139_def]
  rfl
theorem node9139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9139 live9139 coloured9139 = result9139 := by
  rw [tree9139_def]
  try dsimp only [colour, result9139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9140_agree : tree9140 = literal9140 := by
  rw [tree9140_def, tree9138_agree, tree9139_agree]
  rfl
theorem node9140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9140 live9140 coloured9140 = result9140 := by
  rw [tree9140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9138_eq
  unfold live9138 coloured9138 at child
  try dsimp only [live9140, coloured9140]
  rw [child]
  dsimp only [result9138]
  have child := node9139_eq
  unfold live9139 coloured9139 at child
  try dsimp only [live9140, coloured9140]
  rw [child]
  dsimp only [result9139]
  try dsimp only [colour, result9140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9141_agree : tree9141 = literal9141 := by
  rw [tree9141_def]
  rfl
theorem node9141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9141 live9141 coloured9141 = result9141 := by
  rw [tree9141_def]
  try dsimp only [colour, result9141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9142_agree : tree9142 = literal9142 := by
  rw [tree9142_def, tree9140_agree, tree9141_agree]
  rfl
theorem node9142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9142 live9142 coloured9142 = result9142 := by
  rw [tree9142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9140_eq
  unfold live9140 coloured9140 at child
  try dsimp only [live9142, coloured9142]
  rw [child]
  dsimp only [result9140]
  have child := node9141_eq
  unfold live9141 coloured9141 at child
  try dsimp only [live9142, coloured9142]
  rw [child]
  dsimp only [result9141]
  try dsimp only [colour, result9142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9143_agree : tree9143 = literal9143 := by
  rw [tree9143_def]
  rfl
theorem node9143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9143 live9143 coloured9143 = result9143 := by
  rw [tree9143_def]
  try dsimp only [colour, result9143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9144_agree : tree9144 = literal9144 := by
  rw [tree9144_def, tree9142_agree, tree9143_agree]
  rfl
theorem node9144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9144 live9144 coloured9144 = result9144 := by
  rw [tree9144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9142_eq
  unfold live9142 coloured9142 at child
  try dsimp only [live9144, coloured9144]
  rw [child]
  dsimp only [result9142]
  have child := node9143_eq
  unfold live9143 coloured9143 at child
  try dsimp only [live9144, coloured9144]
  rw [child]
  dsimp only [result9143]
  try dsimp only [colour, result9144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9145_agree : tree9145 = literal9145 := by
  rw [tree9145_def]
  rfl
theorem node9145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9145 live9145 coloured9145 = result9145 := by
  rw [tree9145_def]
  try dsimp only [colour, result9145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9146_agree : tree9146 = literal9146 := by
  rw [tree9146_def, tree9144_agree, tree9145_agree]
  rfl
theorem node9146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9146 live9146 coloured9146 = result9146 := by
  rw [tree9146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9144_eq
  unfold live9144 coloured9144 at child
  try dsimp only [live9146, coloured9146]
  rw [child]
  dsimp only [result9144]
  have child := node9145_eq
  unfold live9145 coloured9145 at child
  try dsimp only [live9146, coloured9146]
  rw [child]
  dsimp only [result9145]
  try dsimp only [colour, result9146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9147_agree : tree9147 = literal9147 := by
  rw [tree9147_def]
  rfl
theorem node9147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9147 live9147 coloured9147 = result9147 := by
  rw [tree9147_def]
  try dsimp only [colour, result9147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9148_agree : tree9148 = literal9148 := by
  rw [tree9148_def, tree9146_agree, tree9147_agree]
  rfl
theorem node9148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9148 live9148 coloured9148 = result9148 := by
  rw [tree9148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9146_eq
  unfold live9146 coloured9146 at child
  try dsimp only [live9148, coloured9148]
  rw [child]
  dsimp only [result9146]
  have child := node9147_eq
  unfold live9147 coloured9147 at child
  try dsimp only [live9148, coloured9148]
  rw [child]
  dsimp only [result9147]
  try dsimp only [colour, result9148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9149_agree : tree9149 = literal9149 := by
  rw [tree9149_def]
  rfl
theorem node9149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9149 live9149 coloured9149 = result9149 := by
  rw [tree9149_def]
  try dsimp only [colour, result9149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9150_agree : tree9150 = literal9150 := by
  rw [tree9150_def, tree9148_agree, tree9149_agree]
  rfl
theorem node9150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9150 live9150 coloured9150 = result9150 := by
  rw [tree9150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9148_eq
  unfold live9148 coloured9148 at child
  try dsimp only [live9150, coloured9150]
  rw [child]
  dsimp only [result9148]
  have child := node9149_eq
  unfold live9149 coloured9149 at child
  try dsimp only [live9150, coloured9150]
  rw [child]
  dsimp only [result9149]
  try dsimp only [colour, result9150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9151_agree : tree9151 = literal9151 := by
  rw [tree9151_def]
  rfl
theorem node9151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9151 live9151 coloured9151 = result9151 := by
  rw [tree9151_def]
  try dsimp only [colour, result9151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9152_agree : tree9152 = literal9152 := by
  rw [tree9152_def, tree9150_agree, tree9151_agree]
  rfl
theorem node9152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9152 live9152 coloured9152 = result9152 := by
  rw [tree9152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9150_eq
  unfold live9150 coloured9150 at child
  try dsimp only [live9152, coloured9152]
  rw [child]
  dsimp only [result9150]
  have child := node9151_eq
  unfold live9151 coloured9151 at child
  try dsimp only [live9152, coloured9152]
  rw [child]
  dsimp only [result9151]
  try dsimp only [colour, result9152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9153_agree : tree9153 = literal9153 := by
  rw [tree9153_def]
  rfl
theorem node9153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9153 live9153 coloured9153 = result9153 := by
  rw [tree9153_def]
  try dsimp only [colour, result9153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9154_agree : tree9154 = literal9154 := by
  rw [tree9154_def, tree9152_agree, tree9153_agree]
  rfl
theorem node9154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9154 live9154 coloured9154 = result9154 := by
  rw [tree9154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9152_eq
  unfold live9152 coloured9152 at child
  try dsimp only [live9154, coloured9154]
  rw [child]
  dsimp only [result9152]
  have child := node9153_eq
  unfold live9153 coloured9153 at child
  try dsimp only [live9154, coloured9154]
  rw [child]
  dsimp only [result9153]
  try dsimp only [colour, result9154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9155_agree : tree9155 = literal9155 := by
  rw [tree9155_def]
  rfl
theorem node9155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9155 live9155 coloured9155 = result9155 := by
  rw [tree9155_def]
  try dsimp only [colour, result9155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9156_agree : tree9156 = literal9156 := by
  rw [tree9156_def, tree9154_agree, tree9155_agree]
  rfl
theorem node9156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9156 live9156 coloured9156 = result9156 := by
  rw [tree9156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9154_eq
  unfold live9154 coloured9154 at child
  try dsimp only [live9156, coloured9156]
  rw [child]
  dsimp only [result9154]
  have child := node9155_eq
  unfold live9155 coloured9155 at child
  try dsimp only [live9156, coloured9156]
  rw [child]
  dsimp only [result9155]
  try dsimp only [colour, result9156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9157_agree : tree9157 = literal9157 := by
  rw [tree9157_def]
  rfl
theorem node9157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9157 live9157 coloured9157 = result9157 := by
  rw [tree9157_def]
  try dsimp only [colour, result9157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9158_agree : tree9158 = literal9158 := by
  rw [tree9158_def, tree9156_agree, tree9157_agree]
  rfl
theorem node9158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9158 live9158 coloured9158 = result9158 := by
  rw [tree9158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9156_eq
  unfold live9156 coloured9156 at child
  try dsimp only [live9158, coloured9158]
  rw [child]
  dsimp only [result9156]
  have child := node9157_eq
  unfold live9157 coloured9157 at child
  try dsimp only [live9158, coloured9158]
  rw [child]
  dsimp only [result9157]
  try dsimp only [colour, result9158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9159_agree : tree9159 = literal9159 := by
  rw [tree9159_def]
  rfl
theorem node9159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9159 live9159 coloured9159 = result9159 := by
  rw [tree9159_def]
  try dsimp only [colour, result9159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9160_agree : tree9160 = literal9160 := by
  rw [tree9160_def, tree9158_agree, tree9159_agree]
  rfl
theorem node9160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9160 live9160 coloured9160 = result9160 := by
  rw [tree9160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9158_eq
  unfold live9158 coloured9158 at child
  try dsimp only [live9160, coloured9160]
  rw [child]
  dsimp only [result9158]
  have child := node9159_eq
  unfold live9159 coloured9159 at child
  try dsimp only [live9160, coloured9160]
  rw [child]
  dsimp only [result9159]
  try dsimp only [colour, result9160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9161_agree : tree9161 = literal9161 := by
  rw [tree9161_def]
  rfl
theorem node9161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9161 live9161 coloured9161 = result9161 := by
  rw [tree9161_def]
  try dsimp only [colour, result9161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9162_agree : tree9162 = literal9162 := by
  rw [tree9162_def, tree9160_agree, tree9161_agree]
  rfl
theorem node9162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9162 live9162 coloured9162 = result9162 := by
  rw [tree9162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9160_eq
  unfold live9160 coloured9160 at child
  try dsimp only [live9162, coloured9162]
  rw [child]
  dsimp only [result9160]
  have child := node9161_eq
  unfold live9161 coloured9161 at child
  try dsimp only [live9162, coloured9162]
  rw [child]
  dsimp only [result9161]
  try dsimp only [colour, result9162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9163_agree : tree9163 = literal9163 := by
  rw [tree9163_def]
  rfl
theorem node9163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9163 live9163 coloured9163 = result9163 := by
  rw [tree9163_def]
  try dsimp only [colour, result9163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9164_agree : tree9164 = literal9164 := by
  rw [tree9164_def, tree9162_agree, tree9163_agree]
  rfl
theorem node9164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9164 live9164 coloured9164 = result9164 := by
  rw [tree9164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9162_eq
  unfold live9162 coloured9162 at child
  try dsimp only [live9164, coloured9164]
  rw [child]
  dsimp only [result9162]
  have child := node9163_eq
  unfold live9163 coloured9163 at child
  try dsimp only [live9164, coloured9164]
  rw [child]
  dsimp only [result9163]
  try dsimp only [colour, result9164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9165_agree : tree9165 = literal9165 := by
  rw [tree9165_def]
  rfl
theorem node9165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9165 live9165 coloured9165 = result9165 := by
  rw [tree9165_def]
  try dsimp only [colour, result9165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9166_agree : tree9166 = literal9166 := by
  rw [tree9166_def, tree9164_agree, tree9165_agree]
  rfl
theorem node9166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9166 live9166 coloured9166 = result9166 := by
  rw [tree9166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9164_eq
  unfold live9164 coloured9164 at child
  try dsimp only [live9166, coloured9166]
  rw [child]
  dsimp only [result9164]
  have child := node9165_eq
  unfold live9165 coloured9165 at child
  try dsimp only [live9166, coloured9166]
  rw [child]
  dsimp only [result9165]
  try dsimp only [colour, result9166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9167_agree : tree9167 = literal9167 := by
  rw [tree9167_def]
  rfl
theorem node9167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9167 live9167 coloured9167 = result9167 := by
  rw [tree9167_def]
  try dsimp only [colour, result9167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9168_agree : tree9168 = literal9168 := by
  rw [tree9168_def, tree9166_agree, tree9167_agree]
  rfl
theorem node9168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9168 live9168 coloured9168 = result9168 := by
  rw [tree9168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9166_eq
  unfold live9166 coloured9166 at child
  try dsimp only [live9168, coloured9168]
  rw [child]
  dsimp only [result9166]
  have child := node9167_eq
  unfold live9167 coloured9167 at child
  try dsimp only [live9168, coloured9168]
  rw [child]
  dsimp only [result9167]
  try dsimp only [colour, result9168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9169_agree : tree9169 = literal9169 := by
  rw [tree9169_def]
  rfl
theorem node9169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9169 live9169 coloured9169 = result9169 := by
  rw [tree9169_def]
  try dsimp only [colour, result9169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9170_agree : tree9170 = literal9170 := by
  rw [tree9170_def, tree9168_agree, tree9169_agree]
  rfl
theorem node9170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9170 live9170 coloured9170 = result9170 := by
  rw [tree9170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9168_eq
  unfold live9168 coloured9168 at child
  try dsimp only [live9170, coloured9170]
  rw [child]
  dsimp only [result9168]
  have child := node9169_eq
  unfold live9169 coloured9169 at child
  try dsimp only [live9170, coloured9170]
  rw [child]
  dsimp only [result9169]
  try dsimp only [colour, result9170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9171_agree : tree9171 = literal9171 := by
  rw [tree9171_def]
  rfl
theorem node9171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9171 live9171 coloured9171 = result9171 := by
  rw [tree9171_def]
  try dsimp only [colour, result9171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9172_agree : tree9172 = literal9172 := by
  rw [tree9172_def, tree9170_agree, tree9171_agree]
  rfl
theorem node9172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9172 live9172 coloured9172 = result9172 := by
  rw [tree9172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9170_eq
  unfold live9170 coloured9170 at child
  try dsimp only [live9172, coloured9172]
  rw [child]
  dsimp only [result9170]
  have child := node9171_eq
  unfold live9171 coloured9171 at child
  try dsimp only [live9172, coloured9172]
  rw [child]
  dsimp only [result9171]
  try dsimp only [colour, result9172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9173_agree : tree9173 = literal9173 := by
  rw [tree9173_def]
  rfl
theorem node9173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9173 live9173 coloured9173 = result9173 := by
  rw [tree9173_def]
  try dsimp only [colour, result9173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9174_agree : tree9174 = literal9174 := by
  rw [tree9174_def, tree9172_agree, tree9173_agree]
  rfl
theorem node9174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9174 live9174 coloured9174 = result9174 := by
  rw [tree9174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9172_eq
  unfold live9172 coloured9172 at child
  try dsimp only [live9174, coloured9174]
  rw [child]
  dsimp only [result9172]
  have child := node9173_eq
  unfold live9173 coloured9173 at child
  try dsimp only [live9174, coloured9174]
  rw [child]
  dsimp only [result9173]
  try dsimp only [colour, result9174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9175_agree : tree9175 = literal9175 := by
  rw [tree9175_def]
  rfl
theorem node9175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9175 live9175 coloured9175 = result9175 := by
  rw [tree9175_def]
  try dsimp only [colour, result9175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9176_agree : tree9176 = literal9176 := by
  rw [tree9176_def, tree9174_agree, tree9175_agree]
  rfl
theorem node9176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9176 live9176 coloured9176 = result9176 := by
  rw [tree9176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9174_eq
  unfold live9174 coloured9174 at child
  try dsimp only [live9176, coloured9176]
  rw [child]
  dsimp only [result9174]
  have child := node9175_eq
  unfold live9175 coloured9175 at child
  try dsimp only [live9176, coloured9176]
  rw [child]
  dsimp only [result9175]
  try dsimp only [colour, result9176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9177_agree : tree9177 = literal9177 := by
  rw [tree9177_def]
  rfl
theorem node9177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9177 live9177 coloured9177 = result9177 := by
  rw [tree9177_def]
  try dsimp only [colour, result9177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9178_agree : tree9178 = literal9178 := by
  rw [tree9178_def, tree9176_agree, tree9177_agree]
  rfl
theorem node9178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9178 live9178 coloured9178 = result9178 := by
  rw [tree9178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9176_eq
  unfold live9176 coloured9176 at child
  try dsimp only [live9178, coloured9178]
  rw [child]
  dsimp only [result9176]
  have child := node9177_eq
  unfold live9177 coloured9177 at child
  try dsimp only [live9178, coloured9178]
  rw [child]
  dsimp only [result9177]
  try dsimp only [colour, result9178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9179_agree : tree9179 = literal9179 := by
  rw [tree9179_def]
  rfl
theorem node9179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9179 live9179 coloured9179 = result9179 := by
  rw [tree9179_def]
  try dsimp only [colour, result9179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9180_agree : tree9180 = literal9180 := by
  rw [tree9180_def, tree9178_agree, tree9179_agree]
  rfl
theorem node9180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9180 live9180 coloured9180 = result9180 := by
  rw [tree9180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9178_eq
  unfold live9178 coloured9178 at child
  try dsimp only [live9180, coloured9180]
  rw [child]
  dsimp only [result9178]
  have child := node9179_eq
  unfold live9179 coloured9179 at child
  try dsimp only [live9180, coloured9180]
  rw [child]
  dsimp only [result9179]
  try dsimp only [colour, result9180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9181_agree : tree9181 = literal9181 := by
  rw [tree9181_def]
  rfl
theorem node9181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9181 live9181 coloured9181 = result9181 := by
  rw [tree9181_def]
  try dsimp only [colour, result9181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9182_agree : tree9182 = literal9182 := by
  rw [tree9182_def, tree9180_agree, tree9181_agree]
  rfl
theorem node9182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9182 live9182 coloured9182 = result9182 := by
  rw [tree9182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9180_eq
  unfold live9180 coloured9180 at child
  try dsimp only [live9182, coloured9182]
  rw [child]
  dsimp only [result9180]
  have child := node9181_eq
  unfold live9181 coloured9181 at child
  try dsimp only [live9182, coloured9182]
  rw [child]
  dsimp only [result9181]
  try dsimp only [colour, result9182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9183_agree : tree9183 = literal9183 := by
  rw [tree9183_def]
  rfl
theorem node9183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9183 live9183 coloured9183 = result9183 := by
  rw [tree9183_def]
  try dsimp only [colour, result9183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9184_agree : tree9184 = literal9184 := by
  rw [tree9184_def, tree9182_agree, tree9183_agree]
  rfl
theorem node9184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9184 live9184 coloured9184 = result9184 := by
  rw [tree9184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9182_eq
  unfold live9182 coloured9182 at child
  try dsimp only [live9184, coloured9184]
  rw [child]
  dsimp only [result9182]
  have child := node9183_eq
  unfold live9183 coloured9183 at child
  try dsimp only [live9184, coloured9184]
  rw [child]
  dsimp only [result9183]
  try dsimp only [colour, result9184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9185_agree : tree9185 = literal9185 := by
  rw [tree9185_def]
  rfl
theorem node9185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9185 live9185 coloured9185 = result9185 := by
  rw [tree9185_def]
  try dsimp only [colour, result9185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9186_agree : tree9186 = literal9186 := by
  rw [tree9186_def, tree9184_agree, tree9185_agree]
  rfl
theorem node9186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9186 live9186 coloured9186 = result9186 := by
  rw [tree9186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9184_eq
  unfold live9184 coloured9184 at child
  try dsimp only [live9186, coloured9186]
  rw [child]
  dsimp only [result9184]
  have child := node9185_eq
  unfold live9185 coloured9185 at child
  try dsimp only [live9186, coloured9186]
  rw [child]
  dsimp only [result9185]
  try dsimp only [colour, result9186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9187_agree : tree9187 = literal9187 := by
  rw [tree9187_def]
  rfl
theorem node9187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9187 live9187 coloured9187 = result9187 := by
  rw [tree9187_def]
  try dsimp only [colour, result9187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9188_agree : tree9188 = literal9188 := by
  rw [tree9188_def, tree9186_agree, tree9187_agree]
  rfl
theorem node9188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9188 live9188 coloured9188 = result9188 := by
  rw [tree9188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9186_eq
  unfold live9186 coloured9186 at child
  try dsimp only [live9188, coloured9188]
  rw [child]
  dsimp only [result9186]
  have child := node9187_eq
  unfold live9187 coloured9187 at child
  try dsimp only [live9188, coloured9188]
  rw [child]
  dsimp only [result9187]
  try dsimp only [colour, result9188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9189_agree : tree9189 = literal9189 := by
  rw [tree9189_def]
  rfl
theorem node9189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9189 live9189 coloured9189 = result9189 := by
  rw [tree9189_def]
  try dsimp only [colour, result9189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9190_agree : tree9190 = literal9190 := by
  rw [tree9190_def, tree9188_agree, tree9189_agree]
  rfl
theorem node9190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9190 live9190 coloured9190 = result9190 := by
  rw [tree9190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9188_eq
  unfold live9188 coloured9188 at child
  try dsimp only [live9190, coloured9190]
  rw [child]
  dsimp only [result9188]
  have child := node9189_eq
  unfold live9189 coloured9189 at child
  try dsimp only [live9190, coloured9190]
  rw [child]
  dsimp only [result9189]
  try dsimp only [colour, result9190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9191_agree : tree9191 = literal9191 := by
  rw [tree9191_def]
  rfl
theorem node9191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9191 live9191 coloured9191 = result9191 := by
  rw [tree9191_def]
  try dsimp only [colour, result9191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9192_agree : tree9192 = literal9192 := by
  rw [tree9192_def, tree9190_agree, tree9191_agree]
  rfl
theorem node9192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9192 live9192 coloured9192 = result9192 := by
  rw [tree9192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9190_eq
  unfold live9190 coloured9190 at child
  try dsimp only [live9192, coloured9192]
  rw [child]
  dsimp only [result9190]
  have child := node9191_eq
  unfold live9191 coloured9191 at child
  try dsimp only [live9192, coloured9192]
  rw [child]
  dsimp only [result9191]
  try dsimp only [colour, result9192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9193_agree : tree9193 = literal9193 := by
  rw [tree9193_def]
  rfl
theorem node9193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9193 live9193 coloured9193 = result9193 := by
  rw [tree9193_def]
  try dsimp only [colour, result9193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9194_agree : tree9194 = literal9194 := by
  rw [tree9194_def, tree9192_agree, tree9193_agree]
  rfl
theorem node9194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9194 live9194 coloured9194 = result9194 := by
  rw [tree9194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9192_eq
  unfold live9192 coloured9192 at child
  try dsimp only [live9194, coloured9194]
  rw [child]
  dsimp only [result9192]
  have child := node9193_eq
  unfold live9193 coloured9193 at child
  try dsimp only [live9194, coloured9194]
  rw [child]
  dsimp only [result9193]
  try dsimp only [colour, result9194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9195_agree : tree9195 = literal9195 := by
  rw [tree9195_def]
  rfl
theorem node9195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9195 live9195 coloured9195 = result9195 := by
  rw [tree9195_def]
  try dsimp only [colour, result9195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9196_agree : tree9196 = literal9196 := by
  rw [tree9196_def, tree9194_agree, tree9195_agree]
  rfl
theorem node9196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9196 live9196 coloured9196 = result9196 := by
  rw [tree9196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9194_eq
  unfold live9194 coloured9194 at child
  try dsimp only [live9196, coloured9196]
  rw [child]
  dsimp only [result9194]
  have child := node9195_eq
  unfold live9195 coloured9195 at child
  try dsimp only [live9196, coloured9196]
  rw [child]
  dsimp only [result9195]
  try dsimp only [colour, result9196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9197_agree : tree9197 = literal9197 := by
  rw [tree9197_def]
  rfl
theorem node9197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9197 live9197 coloured9197 = result9197 := by
  rw [tree9197_def]
  try dsimp only [colour, result9197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9198_agree : tree9198 = literal9198 := by
  rw [tree9198_def, tree9196_agree, tree9197_agree]
  rfl
theorem node9198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9198 live9198 coloured9198 = result9198 := by
  rw [tree9198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9196_eq
  unfold live9196 coloured9196 at child
  try dsimp only [live9198, coloured9198]
  rw [child]
  dsimp only [result9196]
  have child := node9197_eq
  unfold live9197 coloured9197 at child
  try dsimp only [live9198, coloured9198]
  rw [child]
  dsimp only [result9197]
  try dsimp only [colour, result9198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9199_agree : tree9199 = literal9199 := by
  rw [tree9199_def]
  rfl
theorem node9199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9199 live9199 coloured9199 = result9199 := by
  rw [tree9199_def]
  try dsimp only [colour, result9199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9200_agree : tree9200 = literal9200 := by
  rw [tree9200_def, tree9198_agree, tree9199_agree]
  rfl
theorem node9200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9200 live9200 coloured9200 = result9200 := by
  rw [tree9200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9198_eq
  unfold live9198 coloured9198 at child
  try dsimp only [live9200, coloured9200]
  rw [child]
  dsimp only [result9198]
  have child := node9199_eq
  unfold live9199 coloured9199 at child
  try dsimp only [live9200, coloured9200]
  rw [child]
  dsimp only [result9199]
  try dsimp only [colour, result9200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9201_agree : tree9201 = literal9201 := by
  rw [tree9201_def]
  rfl
theorem node9201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9201 live9201 coloured9201 = result9201 := by
  rw [tree9201_def]
  try dsimp only [colour, result9201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9202_agree : tree9202 = literal9202 := by
  rw [tree9202_def, tree9200_agree, tree9201_agree]
  rfl
theorem node9202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9202 live9202 coloured9202 = result9202 := by
  rw [tree9202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9200_eq
  unfold live9200 coloured9200 at child
  try dsimp only [live9202, coloured9202]
  rw [child]
  dsimp only [result9200]
  have child := node9201_eq
  unfold live9201 coloured9201 at child
  try dsimp only [live9202, coloured9202]
  rw [child]
  dsimp only [result9201]
  try dsimp only [colour, result9202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9203_agree : tree9203 = literal9203 := by
  rw [tree9203_def]
  rfl
theorem node9203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9203 live9203 coloured9203 = result9203 := by
  rw [tree9203_def]
  try dsimp only [colour, result9203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9204_agree : tree9204 = literal9204 := by
  rw [tree9204_def, tree9202_agree, tree9203_agree]
  rfl
theorem node9204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9204 live9204 coloured9204 = result9204 := by
  rw [tree9204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9202_eq
  unfold live9202 coloured9202 at child
  try dsimp only [live9204, coloured9204]
  rw [child]
  dsimp only [result9202]
  have child := node9203_eq
  unfold live9203 coloured9203 at child
  try dsimp only [live9204, coloured9204]
  rw [child]
  dsimp only [result9203]
  try dsimp only [colour, result9204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9205_agree : tree9205 = literal9205 := by
  rw [tree9205_def]
  rfl
theorem node9205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9205 live9205 coloured9205 = result9205 := by
  rw [tree9205_def]
  try dsimp only [colour, result9205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9206_agree : tree9206 = literal9206 := by
  rw [tree9206_def, tree9204_agree, tree9205_agree]
  rfl
theorem node9206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9206 live9206 coloured9206 = result9206 := by
  rw [tree9206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9204_eq
  unfold live9204 coloured9204 at child
  try dsimp only [live9206, coloured9206]
  rw [child]
  dsimp only [result9204]
  have child := node9205_eq
  unfold live9205 coloured9205 at child
  try dsimp only [live9206, coloured9206]
  rw [child]
  dsimp only [result9205]
  try dsimp only [colour, result9206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9207_agree : tree9207 = literal9207 := by
  rw [tree9207_def]
  rfl
theorem node9207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9207 live9207 coloured9207 = result9207 := by
  rw [tree9207_def]
  try dsimp only [colour, result9207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9208_agree : tree9208 = literal9208 := by
  rw [tree9208_def, tree9206_agree, tree9207_agree]
  rfl
theorem node9208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9208 live9208 coloured9208 = result9208 := by
  rw [tree9208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9206_eq
  unfold live9206 coloured9206 at child
  try dsimp only [live9208, coloured9208]
  rw [child]
  dsimp only [result9206]
  have child := node9207_eq
  unfold live9207 coloured9207 at child
  try dsimp only [live9208, coloured9208]
  rw [child]
  dsimp only [result9207]
  try dsimp only [colour, result9208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9209_agree : tree9209 = literal9209 := by
  rw [tree9209_def]
  rfl
theorem node9209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9209 live9209 coloured9209 = result9209 := by
  rw [tree9209_def]
  try dsimp only [colour, result9209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9210_agree : tree9210 = literal9210 := by
  rw [tree9210_def, tree9208_agree, tree9209_agree]
  rfl
theorem node9210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9210 live9210 coloured9210 = result9210 := by
  rw [tree9210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9208_eq
  unfold live9208 coloured9208 at child
  try dsimp only [live9210, coloured9210]
  rw [child]
  dsimp only [result9208]
  have child := node9209_eq
  unfold live9209 coloured9209 at child
  try dsimp only [live9210, coloured9210]
  rw [child]
  dsimp only [result9209]
  try dsimp only [colour, result9210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9211_agree : tree9211 = literal9211 := by
  rw [tree9211_def]
  rfl
theorem node9211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9211 live9211 coloured9211 = result9211 := by
  rw [tree9211_def]
  try dsimp only [colour, result9211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9212_agree : tree9212 = literal9212 := by
  rw [tree9212_def, tree9210_agree, tree9211_agree]
  rfl
theorem node9212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9212 live9212 coloured9212 = result9212 := by
  rw [tree9212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9210_eq
  unfold live9210 coloured9210 at child
  try dsimp only [live9212, coloured9212]
  rw [child]
  dsimp only [result9210]
  have child := node9211_eq
  unfold live9211 coloured9211 at child
  try dsimp only [live9212, coloured9212]
  rw [child]
  dsimp only [result9211]
  try dsimp only [colour, result9212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9213_agree : tree9213 = literal9213 := by
  rw [tree9213_def]
  rfl
theorem node9213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9213 live9213 coloured9213 = result9213 := by
  rw [tree9213_def]
  try dsimp only [colour, result9213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9214_agree : tree9214 = literal9214 := by
  rw [tree9214_def, tree9212_agree, tree9213_agree]
  rfl
theorem node9214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9214 live9214 coloured9214 = result9214 := by
  rw [tree9214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9212_eq
  unfold live9212 coloured9212 at child
  try dsimp only [live9214, coloured9214]
  rw [child]
  dsimp only [result9212]
  have child := node9213_eq
  unfold live9213 coloured9213 at child
  try dsimp only [live9214, coloured9214]
  rw [child]
  dsimp only [result9213]
  try dsimp only [colour, result9214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9215_agree : tree9215 = literal9215 := by
  rw [tree9215_def]
  rfl
theorem node9215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9215 live9215 coloured9215 = result9215 := by
  rw [tree9215_def]
  try dsimp only [colour, result9215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
