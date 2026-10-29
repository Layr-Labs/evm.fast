import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages874.Data
import InitECandidate.Proofs.ClashComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages874
theorem tree1152_agree_conditional
    (child0 : tree1150 = literal1150)
    (child1 : tree1151 = literal1151) : tree1152 = literal1152 := by
  rw [tree1152_def, child0, child1]
  rfl
theorem node1152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1150 live1150 coloured1150 = result1150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1151 live1151 coloured1151 = result1151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1152 live1152 coloured1152 = result1152 := by
  rw [tree1152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1150 coloured1150 at child
  try dsimp only [live1152, coloured1152]
  rw [child]
  dsimp only [result1150]
  have child := child1
  unfold live1151 coloured1151 at child
  try dsimp only [live1152, coloured1152]
  rw [child]
  dsimp only [result1151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1153_agree_conditional : tree1153 = literal1153 := by
  rw [tree1153_def]
  rfl
theorem node1153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1153 live1153 coloured1153 = result1153 := by
  rw [tree1153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1154_agree_conditional
    (child0 : tree1152 = literal1152)
    (child1 : tree1153 = literal1153) : tree1154 = literal1154 := by
  rw [tree1154_def, child0, child1]
  rfl
theorem node1154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1152 live1152 coloured1152 = result1152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1153 live1153 coloured1153 = result1153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1154 live1154 coloured1154 = result1154 := by
  rw [tree1154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1152 coloured1152 at child
  try dsimp only [live1154, coloured1154]
  rw [child]
  dsimp only [result1152]
  have child := child1
  unfold live1153 coloured1153 at child
  try dsimp only [live1154, coloured1154]
  rw [child]
  dsimp only [result1153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1155_agree_conditional : tree1155 = literal1155 := by
  rw [tree1155_def]
  rfl
theorem node1155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1155 live1155 coloured1155 = result1155 := by
  rw [tree1155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1156_agree_conditional
    (child0 : tree1154 = literal1154)
    (child1 : tree1155 = literal1155) : tree1156 = literal1156 := by
  rw [tree1156_def, child0, child1]
  rfl
theorem node1156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1154 live1154 coloured1154 = result1154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1155 live1155 coloured1155 = result1155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1156 live1156 coloured1156 = result1156 := by
  rw [tree1156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1154 coloured1154 at child
  try dsimp only [live1156, coloured1156]
  rw [child]
  dsimp only [result1154]
  have child := child1
  unfold live1155 coloured1155 at child
  try dsimp only [live1156, coloured1156]
  rw [child]
  dsimp only [result1155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages874
