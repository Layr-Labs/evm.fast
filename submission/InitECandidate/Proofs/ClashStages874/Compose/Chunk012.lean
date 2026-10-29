import InitECandidate.Proofs.ClashStages874.Conditional.Chunk012
import InitECandidate.Proofs.ClashStages874.Compose.Chunk011
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
theorem tree1152_agree : tree1152 = literal1152 :=
  tree1152_agree_conditional tree1150_agree tree1151_agree
theorem node1152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1152 live1152 coloured1152 = result1152 :=
  node1152_eq_conditional node1150_eq node1151_eq
theorem tree1153_agree : tree1153 = literal1153 :=
  tree1153_agree_conditional
theorem node1153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1153 live1153 coloured1153 = result1153 :=
  node1153_eq_conditional
theorem tree1154_agree : tree1154 = literal1154 :=
  tree1154_agree_conditional tree1152_agree tree1153_agree
theorem node1154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1154 live1154 coloured1154 = result1154 :=
  node1154_eq_conditional node1152_eq node1153_eq
theorem tree1155_agree : tree1155 = literal1155 :=
  tree1155_agree_conditional
theorem node1155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1155 live1155 coloured1155 = result1155 :=
  node1155_eq_conditional
theorem tree1156_agree : tree1156 = literal1156 :=
  tree1156_agree_conditional tree1154_agree tree1155_agree
theorem node1156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1156 live1156 coloured1156 = result1156 :=
  node1156_eq_conditional node1154_eq node1155_eq
end InitECandidate.Proofs.ClashStages874
