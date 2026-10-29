import InitECandidate.Proofs.ClashStages874.Proof11
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages874
theorem tree1152_agree : tree1152 = literal1152 := by
  rw [tree1152_def, tree1150_agree, tree1151_agree]
  rfl
theorem node1152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1152 live1152 coloured1152 = result1152 := by
  rw [tree1152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1150_eq
  unfold live1150 coloured1150 at child
  try dsimp only [live1152, coloured1152]
  rw [child]
  dsimp only [result1150]
  have child := node1151_eq
  unfold live1151 coloured1151 at child
  try dsimp only [live1152, coloured1152]
  rw [child]
  dsimp only [result1151]
  try dsimp only [colour, result1152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1153_agree : tree1153 = literal1153 := by
  rw [tree1153_def]
  rfl
theorem node1153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1153 live1153 coloured1153 = result1153 := by
  rw [tree1153_def]
  try dsimp only [colour, result1153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1154_agree : tree1154 = literal1154 := by
  rw [tree1154_def, tree1152_agree, tree1153_agree]
  rfl
theorem node1154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1154 live1154 coloured1154 = result1154 := by
  rw [tree1154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1152_eq
  unfold live1152 coloured1152 at child
  try dsimp only [live1154, coloured1154]
  rw [child]
  dsimp only [result1152]
  have child := node1153_eq
  unfold live1153 coloured1153 at child
  try dsimp only [live1154, coloured1154]
  rw [child]
  dsimp only [result1153]
  try dsimp only [colour, result1154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1155_agree : tree1155 = literal1155 := by
  rw [tree1155_def]
  rfl
theorem node1155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1155 live1155 coloured1155 = result1155 := by
  rw [tree1155_def]
  try dsimp only [colour, result1155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1156_agree : tree1156 = literal1156 := by
  rw [tree1156_def, tree1154_agree, tree1155_agree]
  rfl
theorem node1156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1156 live1156 coloured1156 = result1156 := by
  rw [tree1156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1154_eq
  unfold live1154 coloured1154 at child
  try dsimp only [live1156, coloured1156]
  rw [child]
  dsimp only [result1154]
  have child := node1155_eq
  unfold live1155 coloured1155 at child
  try dsimp only [live1156, coloured1156]
  rw [child]
  dsimp only [result1155]
  try dsimp only [colour, result1156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages874
