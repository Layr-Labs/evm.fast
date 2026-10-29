import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree9600_agree_conditional
    (child0 : tree9598 = literal9598)
    (child1 : tree9599 = literal9599) : tree9600 = literal9600 := by
  rw [tree9600_def, child0, child1]
  rfl
theorem node9600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9598 live9598 coloured9598 = result9598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9599 live9599 coloured9599 = result9599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9600 live9600 coloured9600 = result9600 := by
  rw [tree9600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9598 coloured9598 at child
  try dsimp only [live9600, coloured9600]
  rw [child]
  dsimp only [result9598]
  have child := child1
  unfold live9599 coloured9599 at child
  try dsimp only [live9600, coloured9600]
  rw [child]
  dsimp only [result9599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9601_agree_conditional : tree9601 = literal9601 := by
  rw [tree9601_def]
  rfl
theorem node9601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9601 live9601 coloured9601 = result9601 := by
  rw [tree9601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9602_agree_conditional
    (child0 : tree9600 = literal9600)
    (child1 : tree9601 = literal9601) : tree9602 = literal9602 := by
  rw [tree9602_def, child0, child1]
  rfl
theorem node9602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9600 live9600 coloured9600 = result9600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9601 live9601 coloured9601 = result9601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9602 live9602 coloured9602 = result9602 := by
  rw [tree9602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9600 coloured9600 at child
  try dsimp only [live9602, coloured9602]
  rw [child]
  dsimp only [result9600]
  have child := child1
  unfold live9601 coloured9601 at child
  try dsimp only [live9602, coloured9602]
  rw [child]
  dsimp only [result9601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9603_agree_conditional : tree9603 = literal9603 := by
  rw [tree9603_def]
  rfl
theorem node9603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9603 live9603 coloured9603 = result9603 := by
  rw [tree9603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9604_agree_conditional
    (child0 : tree9602 = literal9602)
    (child1 : tree9603 = literal9603) : tree9604 = literal9604 := by
  rw [tree9604_def, child0, child1]
  rfl
theorem node9604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9602 live9602 coloured9602 = result9602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9603 live9603 coloured9603 = result9603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9604 live9604 coloured9604 = result9604 := by
  rw [tree9604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9602 coloured9602 at child
  try dsimp only [live9604, coloured9604]
  rw [child]
  dsimp only [result9602]
  have child := child1
  unfold live9603 coloured9603 at child
  try dsimp only [live9604, coloured9604]
  rw [child]
  dsimp only [result9603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9605_agree_conditional : tree9605 = literal9605 := by
  rw [tree9605_def]
  rfl
theorem node9605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9605 live9605 coloured9605 = result9605 := by
  rw [tree9605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9606_agree_conditional
    (child0 : tree9604 = literal9604)
    (child1 : tree9605 = literal9605) : tree9606 = literal9606 := by
  rw [tree9606_def, child0, child1]
  rfl
theorem node9606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9604 live9604 coloured9604 = result9604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9605 live9605 coloured9605 = result9605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9606 live9606 coloured9606 = result9606 := by
  rw [tree9606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9604 coloured9604 at child
  try dsimp only [live9606, coloured9606]
  rw [child]
  dsimp only [result9604]
  have child := child1
  unfold live9605 coloured9605 at child
  try dsimp only [live9606, coloured9606]
  rw [child]
  dsimp only [result9605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9607_agree_conditional : tree9607 = literal9607 := by
  rw [tree9607_def]
  rfl
theorem node9607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9607 live9607 coloured9607 = result9607 := by
  rw [tree9607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9608_agree_conditional
    (child0 : tree9606 = literal9606)
    (child1 : tree9607 = literal9607) : tree9608 = literal9608 := by
  rw [tree9608_def, child0, child1]
  rfl
theorem node9608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9606 live9606 coloured9606 = result9606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9607 live9607 coloured9607 = result9607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9608 live9608 coloured9608 = result9608 := by
  rw [tree9608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9606 coloured9606 at child
  try dsimp only [live9608, coloured9608]
  rw [child]
  dsimp only [result9606]
  have child := child1
  unfold live9607 coloured9607 at child
  try dsimp only [live9608, coloured9608]
  rw [child]
  dsimp only [result9607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9609_agree_conditional : tree9609 = literal9609 := by
  rw [tree9609_def]
  rfl
theorem node9609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9609 live9609 coloured9609 = result9609 := by
  rw [tree9609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9610_agree_conditional
    (child0 : tree9608 = literal9608)
    (child1 : tree9609 = literal9609) : tree9610 = literal9610 := by
  rw [tree9610_def, child0, child1]
  rfl
theorem node9610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9608 live9608 coloured9608 = result9608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9609 live9609 coloured9609 = result9609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9610 live9610 coloured9610 = result9610 := by
  rw [tree9610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9608 coloured9608 at child
  try dsimp only [live9610, coloured9610]
  rw [child]
  dsimp only [result9608]
  have child := child1
  unfold live9609 coloured9609 at child
  try dsimp only [live9610, coloured9610]
  rw [child]
  dsimp only [result9609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9611_agree_conditional : tree9611 = literal9611 := by
  rw [tree9611_def]
  rfl
theorem node9611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9611 live9611 coloured9611 = result9611 := by
  rw [tree9611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9612_agree_conditional
    (child0 : tree9610 = literal9610)
    (child1 : tree9611 = literal9611) : tree9612 = literal9612 := by
  rw [tree9612_def, child0, child1]
  rfl
theorem node9612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9610 live9610 coloured9610 = result9610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9611 live9611 coloured9611 = result9611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9612 live9612 coloured9612 = result9612 := by
  rw [tree9612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9610 coloured9610 at child
  try dsimp only [live9612, coloured9612]
  rw [child]
  dsimp only [result9610]
  have child := child1
  unfold live9611 coloured9611 at child
  try dsimp only [live9612, coloured9612]
  rw [child]
  dsimp only [result9611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9613_agree_conditional : tree9613 = literal9613 := by
  rw [tree9613_def]
  rfl
theorem node9613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9613 live9613 coloured9613 = result9613 := by
  rw [tree9613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9614_agree_conditional
    (child0 : tree9612 = literal9612)
    (child1 : tree9613 = literal9613) : tree9614 = literal9614 := by
  rw [tree9614_def, child0, child1]
  rfl
theorem node9614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9612 live9612 coloured9612 = result9612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9613 live9613 coloured9613 = result9613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9614 live9614 coloured9614 = result9614 := by
  rw [tree9614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9612 coloured9612 at child
  try dsimp only [live9614, coloured9614]
  rw [child]
  dsimp only [result9612]
  have child := child1
  unfold live9613 coloured9613 at child
  try dsimp only [live9614, coloured9614]
  rw [child]
  dsimp only [result9613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9615_agree_conditional : tree9615 = literal9615 := by
  rw [tree9615_def]
  rfl
theorem node9615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9615 live9615 coloured9615 = result9615 := by
  rw [tree9615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9616_agree_conditional
    (child0 : tree9614 = literal9614)
    (child1 : tree9615 = literal9615) : tree9616 = literal9616 := by
  rw [tree9616_def, child0, child1]
  rfl
theorem node9616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9614 live9614 coloured9614 = result9614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9615 live9615 coloured9615 = result9615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9616 live9616 coloured9616 = result9616 := by
  rw [tree9616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9614 coloured9614 at child
  try dsimp only [live9616, coloured9616]
  rw [child]
  dsimp only [result9614]
  have child := child1
  unfold live9615 coloured9615 at child
  try dsimp only [live9616, coloured9616]
  rw [child]
  dsimp only [result9615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9617_agree_conditional : tree9617 = literal9617 := by
  rw [tree9617_def]
  rfl
theorem node9617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9617 live9617 coloured9617 = result9617 := by
  rw [tree9617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9618_agree_conditional
    (child0 : tree9616 = literal9616)
    (child1 : tree9617 = literal9617) : tree9618 = literal9618 := by
  rw [tree9618_def, child0, child1]
  rfl
theorem node9618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9616 live9616 coloured9616 = result9616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9617 live9617 coloured9617 = result9617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9618 live9618 coloured9618 = result9618 := by
  rw [tree9618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9616 coloured9616 at child
  try dsimp only [live9618, coloured9618]
  rw [child]
  dsimp only [result9616]
  have child := child1
  unfold live9617 coloured9617 at child
  try dsimp only [live9618, coloured9618]
  rw [child]
  dsimp only [result9617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9619_agree_conditional : tree9619 = literal9619 := by
  rw [tree9619_def]
  rfl
theorem node9619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9619 live9619 coloured9619 = result9619 := by
  rw [tree9619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9620_agree_conditional
    (child0 : tree9618 = literal9618)
    (child1 : tree9619 = literal9619) : tree9620 = literal9620 := by
  rw [tree9620_def, child0, child1]
  rfl
theorem node9620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9618 live9618 coloured9618 = result9618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9619 live9619 coloured9619 = result9619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9620 live9620 coloured9620 = result9620 := by
  rw [tree9620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9618 coloured9618 at child
  try dsimp only [live9620, coloured9620]
  rw [child]
  dsimp only [result9618]
  have child := child1
  unfold live9619 coloured9619 at child
  try dsimp only [live9620, coloured9620]
  rw [child]
  dsimp only [result9619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9621_agree_conditional : tree9621 = literal9621 := by
  rw [tree9621_def]
  rfl
theorem node9621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9621 live9621 coloured9621 = result9621 := by
  rw [tree9621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9622_agree_conditional
    (child0 : tree9620 = literal9620)
    (child1 : tree9621 = literal9621) : tree9622 = literal9622 := by
  rw [tree9622_def, child0, child1]
  rfl
theorem node9622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9620 live9620 coloured9620 = result9620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9621 live9621 coloured9621 = result9621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9622 live9622 coloured9622 = result9622 := by
  rw [tree9622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9620 coloured9620 at child
  try dsimp only [live9622, coloured9622]
  rw [child]
  dsimp only [result9620]
  have child := child1
  unfold live9621 coloured9621 at child
  try dsimp only [live9622, coloured9622]
  rw [child]
  dsimp only [result9621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9623_agree_conditional : tree9623 = literal9623 := by
  rw [tree9623_def]
  rfl
theorem node9623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9623 live9623 coloured9623 = result9623 := by
  rw [tree9623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9624_agree_conditional
    (child0 : tree9622 = literal9622)
    (child1 : tree9623 = literal9623) : tree9624 = literal9624 := by
  rw [tree9624_def, child0, child1]
  rfl
theorem node9624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9622 live9622 coloured9622 = result9622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9623 live9623 coloured9623 = result9623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9624 live9624 coloured9624 = result9624 := by
  rw [tree9624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9622 coloured9622 at child
  try dsimp only [live9624, coloured9624]
  rw [child]
  dsimp only [result9622]
  have child := child1
  unfold live9623 coloured9623 at child
  try dsimp only [live9624, coloured9624]
  rw [child]
  dsimp only [result9623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9625_agree_conditional : tree9625 = literal9625 := by
  rw [tree9625_def]
  rfl
theorem node9625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9625 live9625 coloured9625 = result9625 := by
  rw [tree9625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9626_agree_conditional
    (child0 : tree9624 = literal9624)
    (child1 : tree9625 = literal9625) : tree9626 = literal9626 := by
  rw [tree9626_def, child0, child1]
  rfl
theorem node9626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9624 live9624 coloured9624 = result9624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9625 live9625 coloured9625 = result9625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9626 live9626 coloured9626 = result9626 := by
  rw [tree9626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9624 coloured9624 at child
  try dsimp only [live9626, coloured9626]
  rw [child]
  dsimp only [result9624]
  have child := child1
  unfold live9625 coloured9625 at child
  try dsimp only [live9626, coloured9626]
  rw [child]
  dsimp only [result9625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9627_agree_conditional : tree9627 = literal9627 := by
  rw [tree9627_def]
  rfl
theorem node9627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9627 live9627 coloured9627 = result9627 := by
  rw [tree9627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9628_agree_conditional
    (child0 : tree9626 = literal9626)
    (child1 : tree9627 = literal9627) : tree9628 = literal9628 := by
  rw [tree9628_def, child0, child1]
  rfl
theorem node9628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9626 live9626 coloured9626 = result9626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9627 live9627 coloured9627 = result9627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9628 live9628 coloured9628 = result9628 := by
  rw [tree9628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9626 coloured9626 at child
  try dsimp only [live9628, coloured9628]
  rw [child]
  dsimp only [result9626]
  have child := child1
  unfold live9627 coloured9627 at child
  try dsimp only [live9628, coloured9628]
  rw [child]
  dsimp only [result9627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9629_agree_conditional : tree9629 = literal9629 := by
  rw [tree9629_def]
  rfl
theorem node9629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9629 live9629 coloured9629 = result9629 := by
  rw [tree9629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9630_agree_conditional
    (child0 : tree9628 = literal9628)
    (child1 : tree9629 = literal9629) : tree9630 = literal9630 := by
  rw [tree9630_def, child0, child1]
  rfl
theorem node9630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9628 live9628 coloured9628 = result9628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9629 live9629 coloured9629 = result9629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9630 live9630 coloured9630 = result9630 := by
  rw [tree9630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9628 coloured9628 at child
  try dsimp only [live9630, coloured9630]
  rw [child]
  dsimp only [result9628]
  have child := child1
  unfold live9629 coloured9629 at child
  try dsimp only [live9630, coloured9630]
  rw [child]
  dsimp only [result9629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9631_agree_conditional : tree9631 = literal9631 := by
  rw [tree9631_def]
  rfl
theorem node9631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9631 live9631 coloured9631 = result9631 := by
  rw [tree9631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9632_agree_conditional
    (child0 : tree9630 = literal9630)
    (child1 : tree9631 = literal9631) : tree9632 = literal9632 := by
  rw [tree9632_def, child0, child1]
  rfl
theorem node9632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9630 live9630 coloured9630 = result9630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9631 live9631 coloured9631 = result9631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9632 live9632 coloured9632 = result9632 := by
  rw [tree9632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9630 coloured9630 at child
  try dsimp only [live9632, coloured9632]
  rw [child]
  dsimp only [result9630]
  have child := child1
  unfold live9631 coloured9631 at child
  try dsimp only [live9632, coloured9632]
  rw [child]
  dsimp only [result9631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9633_agree_conditional : tree9633 = literal9633 := by
  rw [tree9633_def]
  rfl
theorem node9633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9633 live9633 coloured9633 = result9633 := by
  rw [tree9633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9634_agree_conditional
    (child0 : tree9632 = literal9632)
    (child1 : tree9633 = literal9633) : tree9634 = literal9634 := by
  rw [tree9634_def, child0, child1]
  rfl
theorem node9634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9632 live9632 coloured9632 = result9632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9633 live9633 coloured9633 = result9633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9634 live9634 coloured9634 = result9634 := by
  rw [tree9634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9632 coloured9632 at child
  try dsimp only [live9634, coloured9634]
  rw [child]
  dsimp only [result9632]
  have child := child1
  unfold live9633 coloured9633 at child
  try dsimp only [live9634, coloured9634]
  rw [child]
  dsimp only [result9633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9635_agree_conditional : tree9635 = literal9635 := by
  rw [tree9635_def]
  rfl
theorem node9635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9635 live9635 coloured9635 = result9635 := by
  rw [tree9635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9636_agree_conditional
    (child0 : tree9634 = literal9634)
    (child1 : tree9635 = literal9635) : tree9636 = literal9636 := by
  rw [tree9636_def, child0, child1]
  rfl
theorem node9636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9634 live9634 coloured9634 = result9634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9635 live9635 coloured9635 = result9635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9636 live9636 coloured9636 = result9636 := by
  rw [tree9636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9634 coloured9634 at child
  try dsimp only [live9636, coloured9636]
  rw [child]
  dsimp only [result9634]
  have child := child1
  unfold live9635 coloured9635 at child
  try dsimp only [live9636, coloured9636]
  rw [child]
  dsimp only [result9635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9637_agree_conditional : tree9637 = literal9637 := by
  rw [tree9637_def]
  rfl
theorem node9637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9637 live9637 coloured9637 = result9637 := by
  rw [tree9637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9638_agree_conditional
    (child0 : tree9636 = literal9636)
    (child1 : tree9637 = literal9637) : tree9638 = literal9638 := by
  rw [tree9638_def, child0, child1]
  rfl
theorem node9638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9636 live9636 coloured9636 = result9636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9637 live9637 coloured9637 = result9637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9638 live9638 coloured9638 = result9638 := by
  rw [tree9638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9636 coloured9636 at child
  try dsimp only [live9638, coloured9638]
  rw [child]
  dsimp only [result9636]
  have child := child1
  unfold live9637 coloured9637 at child
  try dsimp only [live9638, coloured9638]
  rw [child]
  dsimp only [result9637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9639_agree_conditional : tree9639 = literal9639 := by
  rw [tree9639_def]
  rfl
theorem node9639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9639 live9639 coloured9639 = result9639 := by
  rw [tree9639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9640_agree_conditional
    (child0 : tree9638 = literal9638)
    (child1 : tree9639 = literal9639) : tree9640 = literal9640 := by
  rw [tree9640_def, child0, child1]
  rfl
theorem node9640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9638 live9638 coloured9638 = result9638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9639 live9639 coloured9639 = result9639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9640 live9640 coloured9640 = result9640 := by
  rw [tree9640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9638 coloured9638 at child
  try dsimp only [live9640, coloured9640]
  rw [child]
  dsimp only [result9638]
  have child := child1
  unfold live9639 coloured9639 at child
  try dsimp only [live9640, coloured9640]
  rw [child]
  dsimp only [result9639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9641_agree_conditional : tree9641 = literal9641 := by
  rw [tree9641_def]
  rfl
theorem node9641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9641 live9641 coloured9641 = result9641 := by
  rw [tree9641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9642_agree_conditional
    (child0 : tree9640 = literal9640)
    (child1 : tree9641 = literal9641) : tree9642 = literal9642 := by
  rw [tree9642_def, child0, child1]
  rfl
theorem node9642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9640 live9640 coloured9640 = result9640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9641 live9641 coloured9641 = result9641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9642 live9642 coloured9642 = result9642 := by
  rw [tree9642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9640 coloured9640 at child
  try dsimp only [live9642, coloured9642]
  rw [child]
  dsimp only [result9640]
  have child := child1
  unfold live9641 coloured9641 at child
  try dsimp only [live9642, coloured9642]
  rw [child]
  dsimp only [result9641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9643_agree_conditional : tree9643 = literal9643 := by
  rw [tree9643_def]
  rfl
theorem node9643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9643 live9643 coloured9643 = result9643 := by
  rw [tree9643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9644_agree_conditional
    (child0 : tree9642 = literal9642)
    (child1 : tree9643 = literal9643) : tree9644 = literal9644 := by
  rw [tree9644_def, child0, child1]
  rfl
theorem node9644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9642 live9642 coloured9642 = result9642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9643 live9643 coloured9643 = result9643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9644 live9644 coloured9644 = result9644 := by
  rw [tree9644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9642 coloured9642 at child
  try dsimp only [live9644, coloured9644]
  rw [child]
  dsimp only [result9642]
  have child := child1
  unfold live9643 coloured9643 at child
  try dsimp only [live9644, coloured9644]
  rw [child]
  dsimp only [result9643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9645_agree_conditional : tree9645 = literal9645 := by
  rw [tree9645_def]
  rfl
theorem node9645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9645 live9645 coloured9645 = result9645 := by
  rw [tree9645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9646_agree_conditional
    (child0 : tree9644 = literal9644)
    (child1 : tree9645 = literal9645) : tree9646 = literal9646 := by
  rw [tree9646_def, child0, child1]
  rfl
theorem node9646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9644 live9644 coloured9644 = result9644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9645 live9645 coloured9645 = result9645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9646 live9646 coloured9646 = result9646 := by
  rw [tree9646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9644 coloured9644 at child
  try dsimp only [live9646, coloured9646]
  rw [child]
  dsimp only [result9644]
  have child := child1
  unfold live9645 coloured9645 at child
  try dsimp only [live9646, coloured9646]
  rw [child]
  dsimp only [result9645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9647_agree_conditional : tree9647 = literal9647 := by
  rw [tree9647_def]
  rfl
theorem node9647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9647 live9647 coloured9647 = result9647 := by
  rw [tree9647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9648_agree_conditional
    (child0 : tree9646 = literal9646)
    (child1 : tree9647 = literal9647) : tree9648 = literal9648 := by
  rw [tree9648_def, child0, child1]
  rfl
theorem node9648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9646 live9646 coloured9646 = result9646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9647 live9647 coloured9647 = result9647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9648 live9648 coloured9648 = result9648 := by
  rw [tree9648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9646 coloured9646 at child
  try dsimp only [live9648, coloured9648]
  rw [child]
  dsimp only [result9646]
  have child := child1
  unfold live9647 coloured9647 at child
  try dsimp only [live9648, coloured9648]
  rw [child]
  dsimp only [result9647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9649_agree_conditional : tree9649 = literal9649 := by
  rw [tree9649_def]
  rfl
theorem node9649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9649 live9649 coloured9649 = result9649 := by
  rw [tree9649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9650_agree_conditional
    (child0 : tree9648 = literal9648)
    (child1 : tree9649 = literal9649) : tree9650 = literal9650 := by
  rw [tree9650_def, child0, child1]
  rfl
theorem node9650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9648 live9648 coloured9648 = result9648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9649 live9649 coloured9649 = result9649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9650 live9650 coloured9650 = result9650 := by
  rw [tree9650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9648 coloured9648 at child
  try dsimp only [live9650, coloured9650]
  rw [child]
  dsimp only [result9648]
  have child := child1
  unfold live9649 coloured9649 at child
  try dsimp only [live9650, coloured9650]
  rw [child]
  dsimp only [result9649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9651_agree_conditional : tree9651 = literal9651 := by
  rw [tree9651_def]
  rfl
theorem node9651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9651 live9651 coloured9651 = result9651 := by
  rw [tree9651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9652_agree_conditional
    (child0 : tree9650 = literal9650)
    (child1 : tree9651 = literal9651) : tree9652 = literal9652 := by
  rw [tree9652_def, child0, child1]
  rfl
theorem node9652_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9650 live9650 coloured9650 = result9650)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9651 live9651 coloured9651 = result9651) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9652 live9652 coloured9652 = result9652 := by
  rw [tree9652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9650 coloured9650 at child
  try dsimp only [live9652, coloured9652]
  rw [child]
  dsimp only [result9650]
  have child := child1
  unfold live9651 coloured9651 at child
  try dsimp only [live9652, coloured9652]
  rw [child]
  dsimp only [result9651]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9653_agree_conditional : tree9653 = literal9653 := by
  rw [tree9653_def]
  rfl
theorem node9653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9653 live9653 coloured9653 = result9653 := by
  rw [tree9653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9654_agree_conditional
    (child0 : tree9652 = literal9652)
    (child1 : tree9653 = literal9653) : tree9654 = literal9654 := by
  rw [tree9654_def, child0, child1]
  rfl
theorem node9654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9652 live9652 coloured9652 = result9652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9653 live9653 coloured9653 = result9653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9654 live9654 coloured9654 = result9654 := by
  rw [tree9654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9652 coloured9652 at child
  try dsimp only [live9654, coloured9654]
  rw [child]
  dsimp only [result9652]
  have child := child1
  unfold live9653 coloured9653 at child
  try dsimp only [live9654, coloured9654]
  rw [child]
  dsimp only [result9653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9655_agree_conditional : tree9655 = literal9655 := by
  rw [tree9655_def]
  rfl
theorem node9655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9655 live9655 coloured9655 = result9655 := by
  rw [tree9655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9656_agree_conditional
    (child0 : tree9654 = literal9654)
    (child1 : tree9655 = literal9655) : tree9656 = literal9656 := by
  rw [tree9656_def, child0, child1]
  rfl
theorem node9656_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9654 live9654 coloured9654 = result9654)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9655 live9655 coloured9655 = result9655) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9656 live9656 coloured9656 = result9656 := by
  rw [tree9656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9654 coloured9654 at child
  try dsimp only [live9656, coloured9656]
  rw [child]
  dsimp only [result9654]
  have child := child1
  unfold live9655 coloured9655 at child
  try dsimp only [live9656, coloured9656]
  rw [child]
  dsimp only [result9655]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9657_agree_conditional : tree9657 = literal9657 := by
  rw [tree9657_def]
  rfl
theorem node9657_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9657 live9657 coloured9657 = result9657 := by
  rw [tree9657_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9658_agree_conditional
    (child0 : tree9656 = literal9656)
    (child1 : tree9657 = literal9657) : tree9658 = literal9658 := by
  rw [tree9658_def, child0, child1]
  rfl
theorem node9658_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9656 live9656 coloured9656 = result9656)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9657 live9657 coloured9657 = result9657) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9658 live9658 coloured9658 = result9658 := by
  rw [tree9658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9656 coloured9656 at child
  try dsimp only [live9658, coloured9658]
  rw [child]
  dsimp only [result9656]
  have child := child1
  unfold live9657 coloured9657 at child
  try dsimp only [live9658, coloured9658]
  rw [child]
  dsimp only [result9657]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9659_agree_conditional : tree9659 = literal9659 := by
  rw [tree9659_def]
  rfl
theorem node9659_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9659 live9659 coloured9659 = result9659 := by
  rw [tree9659_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9660_agree_conditional
    (child0 : tree9658 = literal9658)
    (child1 : tree9659 = literal9659) : tree9660 = literal9660 := by
  rw [tree9660_def, child0, child1]
  rfl
theorem node9660_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9658 live9658 coloured9658 = result9658)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9659 live9659 coloured9659 = result9659) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9660 live9660 coloured9660 = result9660 := by
  rw [tree9660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9658 coloured9658 at child
  try dsimp only [live9660, coloured9660]
  rw [child]
  dsimp only [result9658]
  have child := child1
  unfold live9659 coloured9659 at child
  try dsimp only [live9660, coloured9660]
  rw [child]
  dsimp only [result9659]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9661_agree_conditional : tree9661 = literal9661 := by
  rw [tree9661_def]
  rfl
theorem node9661_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9661 live9661 coloured9661 = result9661 := by
  rw [tree9661_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9662_agree_conditional
    (child0 : tree9660 = literal9660)
    (child1 : tree9661 = literal9661) : tree9662 = literal9662 := by
  rw [tree9662_def, child0, child1]
  rfl
theorem node9662_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9660 live9660 coloured9660 = result9660)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9661 live9661 coloured9661 = result9661) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9662 live9662 coloured9662 = result9662 := by
  rw [tree9662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9660 coloured9660 at child
  try dsimp only [live9662, coloured9662]
  rw [child]
  dsimp only [result9660]
  have child := child1
  unfold live9661 coloured9661 at child
  try dsimp only [live9662, coloured9662]
  rw [child]
  dsimp only [result9661]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9663_agree_conditional : tree9663 = literal9663 := by
  rw [tree9663_def]
  rfl
theorem node9663_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9663 live9663 coloured9663 = result9663 := by
  rw [tree9663_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9664_agree_conditional
    (child0 : tree9662 = literal9662)
    (child1 : tree9663 = literal9663) : tree9664 = literal9664 := by
  rw [tree9664_def, child0, child1]
  rfl
theorem node9664_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9662 live9662 coloured9662 = result9662)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9663 live9663 coloured9663 = result9663) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9664 live9664 coloured9664 = result9664 := by
  rw [tree9664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9662 coloured9662 at child
  try dsimp only [live9664, coloured9664]
  rw [child]
  dsimp only [result9662]
  have child := child1
  unfold live9663 coloured9663 at child
  try dsimp only [live9664, coloured9664]
  rw [child]
  dsimp only [result9663]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9665_agree_conditional : tree9665 = literal9665 := by
  rw [tree9665_def]
  rfl
theorem node9665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9665 live9665 coloured9665 = result9665 := by
  rw [tree9665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9666_agree_conditional
    (child0 : tree9664 = literal9664)
    (child1 : tree9665 = literal9665) : tree9666 = literal9666 := by
  rw [tree9666_def, child0, child1]
  rfl
theorem node9666_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9664 live9664 coloured9664 = result9664)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9665 live9665 coloured9665 = result9665) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9666 live9666 coloured9666 = result9666 := by
  rw [tree9666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9664 coloured9664 at child
  try dsimp only [live9666, coloured9666]
  rw [child]
  dsimp only [result9664]
  have child := child1
  unfold live9665 coloured9665 at child
  try dsimp only [live9666, coloured9666]
  rw [child]
  dsimp only [result9665]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9667_agree_conditional : tree9667 = literal9667 := by
  rw [tree9667_def]
  rfl
theorem node9667_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9667 live9667 coloured9667 = result9667 := by
  rw [tree9667_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9668_agree_conditional
    (child0 : tree9666 = literal9666)
    (child1 : tree9667 = literal9667) : tree9668 = literal9668 := by
  rw [tree9668_def, child0, child1]
  rfl
theorem node9668_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9666 live9666 coloured9666 = result9666)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9667 live9667 coloured9667 = result9667) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9668 live9668 coloured9668 = result9668 := by
  rw [tree9668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9666 coloured9666 at child
  try dsimp only [live9668, coloured9668]
  rw [child]
  dsimp only [result9666]
  have child := child1
  unfold live9667 coloured9667 at child
  try dsimp only [live9668, coloured9668]
  rw [child]
  dsimp only [result9667]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9669_agree_conditional : tree9669 = literal9669 := by
  rw [tree9669_def]
  rfl
theorem node9669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9669 live9669 coloured9669 = result9669 := by
  rw [tree9669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9670_agree_conditional
    (child0 : tree9668 = literal9668)
    (child1 : tree9669 = literal9669) : tree9670 = literal9670 := by
  rw [tree9670_def, child0, child1]
  rfl
theorem node9670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9668 live9668 coloured9668 = result9668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9669 live9669 coloured9669 = result9669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9670 live9670 coloured9670 = result9670 := by
  rw [tree9670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9668 coloured9668 at child
  try dsimp only [live9670, coloured9670]
  rw [child]
  dsimp only [result9668]
  have child := child1
  unfold live9669 coloured9669 at child
  try dsimp only [live9670, coloured9670]
  rw [child]
  dsimp only [result9669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9671_agree_conditional : tree9671 = literal9671 := by
  rw [tree9671_def]
  rfl
theorem node9671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9671 live9671 coloured9671 = result9671 := by
  rw [tree9671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9672_agree_conditional
    (child0 : tree9670 = literal9670)
    (child1 : tree9671 = literal9671) : tree9672 = literal9672 := by
  rw [tree9672_def, child0, child1]
  rfl
theorem node9672_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9670 live9670 coloured9670 = result9670)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9671 live9671 coloured9671 = result9671) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9672 live9672 coloured9672 = result9672 := by
  rw [tree9672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9670 coloured9670 at child
  try dsimp only [live9672, coloured9672]
  rw [child]
  dsimp only [result9670]
  have child := child1
  unfold live9671 coloured9671 at child
  try dsimp only [live9672, coloured9672]
  rw [child]
  dsimp only [result9671]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9673_agree_conditional : tree9673 = literal9673 := by
  rw [tree9673_def]
  rfl
theorem node9673_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9673 live9673 coloured9673 = result9673 := by
  rw [tree9673_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9674_agree_conditional
    (child0 : tree9672 = literal9672)
    (child1 : tree9673 = literal9673) : tree9674 = literal9674 := by
  rw [tree9674_def, child0, child1]
  rfl
theorem node9674_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9672 live9672 coloured9672 = result9672)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9673 live9673 coloured9673 = result9673) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9674 live9674 coloured9674 = result9674 := by
  rw [tree9674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9672 coloured9672 at child
  try dsimp only [live9674, coloured9674]
  rw [child]
  dsimp only [result9672]
  have child := child1
  unfold live9673 coloured9673 at child
  try dsimp only [live9674, coloured9674]
  rw [child]
  dsimp only [result9673]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9675_agree_conditional : tree9675 = literal9675 := by
  rw [tree9675_def]
  rfl
theorem node9675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9675 live9675 coloured9675 = result9675 := by
  rw [tree9675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9676_agree_conditional
    (child0 : tree9674 = literal9674)
    (child1 : tree9675 = literal9675) : tree9676 = literal9676 := by
  rw [tree9676_def, child0, child1]
  rfl
theorem node9676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9674 live9674 coloured9674 = result9674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9675 live9675 coloured9675 = result9675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9676 live9676 coloured9676 = result9676 := by
  rw [tree9676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9674 coloured9674 at child
  try dsimp only [live9676, coloured9676]
  rw [child]
  dsimp only [result9674]
  have child := child1
  unfold live9675 coloured9675 at child
  try dsimp only [live9676, coloured9676]
  rw [child]
  dsimp only [result9675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9677_agree_conditional : tree9677 = literal9677 := by
  rw [tree9677_def]
  rfl
theorem node9677_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9677 live9677 coloured9677 = result9677 := by
  rw [tree9677_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9678_agree_conditional
    (child0 : tree9676 = literal9676)
    (child1 : tree9677 = literal9677) : tree9678 = literal9678 := by
  rw [tree9678_def, child0, child1]
  rfl
theorem node9678_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9676 live9676 coloured9676 = result9676)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9677 live9677 coloured9677 = result9677) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9678 live9678 coloured9678 = result9678 := by
  rw [tree9678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9676 coloured9676 at child
  try dsimp only [live9678, coloured9678]
  rw [child]
  dsimp only [result9676]
  have child := child1
  unfold live9677 coloured9677 at child
  try dsimp only [live9678, coloured9678]
  rw [child]
  dsimp only [result9677]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9679_agree_conditional : tree9679 = literal9679 := by
  rw [tree9679_def]
  rfl
theorem node9679_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9679 live9679 coloured9679 = result9679 := by
  rw [tree9679_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9680_agree_conditional
    (child0 : tree9678 = literal9678)
    (child1 : tree9679 = literal9679) : tree9680 = literal9680 := by
  rw [tree9680_def, child0, child1]
  rfl
theorem node9680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9678 live9678 coloured9678 = result9678)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9679 live9679 coloured9679 = result9679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9680 live9680 coloured9680 = result9680 := by
  rw [tree9680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9678 coloured9678 at child
  try dsimp only [live9680, coloured9680]
  rw [child]
  dsimp only [result9678]
  have child := child1
  unfold live9679 coloured9679 at child
  try dsimp only [live9680, coloured9680]
  rw [child]
  dsimp only [result9679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9681_agree_conditional : tree9681 = literal9681 := by
  rw [tree9681_def]
  rfl
theorem node9681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9681 live9681 coloured9681 = result9681 := by
  rw [tree9681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9682_agree_conditional
    (child0 : tree9680 = literal9680)
    (child1 : tree9681 = literal9681) : tree9682 = literal9682 := by
  rw [tree9682_def, child0, child1]
  rfl
theorem node9682_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9680 live9680 coloured9680 = result9680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9681 live9681 coloured9681 = result9681) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9682 live9682 coloured9682 = result9682 := by
  rw [tree9682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9680 coloured9680 at child
  try dsimp only [live9682, coloured9682]
  rw [child]
  dsimp only [result9680]
  have child := child1
  unfold live9681 coloured9681 at child
  try dsimp only [live9682, coloured9682]
  rw [child]
  dsimp only [result9681]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9683_agree_conditional : tree9683 = literal9683 := by
  rw [tree9683_def]
  rfl
theorem node9683_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9683 live9683 coloured9683 = result9683 := by
  rw [tree9683_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9684_agree_conditional
    (child0 : tree9682 = literal9682)
    (child1 : tree9683 = literal9683) : tree9684 = literal9684 := by
  rw [tree9684_def, child0, child1]
  rfl
theorem node9684_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9682 live9682 coloured9682 = result9682)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9683 live9683 coloured9683 = result9683) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9684 live9684 coloured9684 = result9684 := by
  rw [tree9684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9682 coloured9682 at child
  try dsimp only [live9684, coloured9684]
  rw [child]
  dsimp only [result9682]
  have child := child1
  unfold live9683 coloured9683 at child
  try dsimp only [live9684, coloured9684]
  rw [child]
  dsimp only [result9683]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9685_agree_conditional : tree9685 = literal9685 := by
  rw [tree9685_def]
  rfl
theorem node9685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9685 live9685 coloured9685 = result9685 := by
  rw [tree9685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9686_agree_conditional
    (child0 : tree9684 = literal9684)
    (child1 : tree9685 = literal9685) : tree9686 = literal9686 := by
  rw [tree9686_def, child0, child1]
  rfl
theorem node9686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9684 live9684 coloured9684 = result9684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9685 live9685 coloured9685 = result9685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9686 live9686 coloured9686 = result9686 := by
  rw [tree9686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9684 coloured9684 at child
  try dsimp only [live9686, coloured9686]
  rw [child]
  dsimp only [result9684]
  have child := child1
  unfold live9685 coloured9685 at child
  try dsimp only [live9686, coloured9686]
  rw [child]
  dsimp only [result9685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9687_agree_conditional : tree9687 = literal9687 := by
  rw [tree9687_def]
  rfl
theorem node9687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9687 live9687 coloured9687 = result9687 := by
  rw [tree9687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9688_agree_conditional
    (child0 : tree9686 = literal9686)
    (child1 : tree9687 = literal9687) : tree9688 = literal9688 := by
  rw [tree9688_def, child0, child1]
  rfl
theorem node9688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9686 live9686 coloured9686 = result9686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9687 live9687 coloured9687 = result9687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9688 live9688 coloured9688 = result9688 := by
  rw [tree9688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9686 coloured9686 at child
  try dsimp only [live9688, coloured9688]
  rw [child]
  dsimp only [result9686]
  have child := child1
  unfold live9687 coloured9687 at child
  try dsimp only [live9688, coloured9688]
  rw [child]
  dsimp only [result9687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9689_agree_conditional : tree9689 = literal9689 := by
  rw [tree9689_def]
  rfl
theorem node9689_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9689 live9689 coloured9689 = result9689 := by
  rw [tree9689_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9690_agree_conditional
    (child0 : tree9688 = literal9688)
    (child1 : tree9689 = literal9689) : tree9690 = literal9690 := by
  rw [tree9690_def, child0, child1]
  rfl
theorem node9690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9688 live9688 coloured9688 = result9688)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9689 live9689 coloured9689 = result9689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9690 live9690 coloured9690 = result9690 := by
  rw [tree9690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9688 coloured9688 at child
  try dsimp only [live9690, coloured9690]
  rw [child]
  dsimp only [result9688]
  have child := child1
  unfold live9689 coloured9689 at child
  try dsimp only [live9690, coloured9690]
  rw [child]
  dsimp only [result9689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9691_agree_conditional : tree9691 = literal9691 := by
  rw [tree9691_def]
  rfl
theorem node9691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9691 live9691 coloured9691 = result9691 := by
  rw [tree9691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9692_agree_conditional
    (child0 : tree9690 = literal9690)
    (child1 : tree9691 = literal9691) : tree9692 = literal9692 := by
  rw [tree9692_def, child0, child1]
  rfl
theorem node9692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9690 live9690 coloured9690 = result9690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9691 live9691 coloured9691 = result9691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9692 live9692 coloured9692 = result9692 := by
  rw [tree9692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9690 coloured9690 at child
  try dsimp only [live9692, coloured9692]
  rw [child]
  dsimp only [result9690]
  have child := child1
  unfold live9691 coloured9691 at child
  try dsimp only [live9692, coloured9692]
  rw [child]
  dsimp only [result9691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9693_agree_conditional : tree9693 = literal9693 := by
  rw [tree9693_def]
  rfl
theorem node9693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9693 live9693 coloured9693 = result9693 := by
  rw [tree9693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9694_agree_conditional
    (child0 : tree9692 = literal9692)
    (child1 : tree9693 = literal9693) : tree9694 = literal9694 := by
  rw [tree9694_def, child0, child1]
  rfl
theorem node9694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9692 live9692 coloured9692 = result9692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9693 live9693 coloured9693 = result9693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9694 live9694 coloured9694 = result9694 := by
  rw [tree9694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9692 coloured9692 at child
  try dsimp only [live9694, coloured9694]
  rw [child]
  dsimp only [result9692]
  have child := child1
  unfold live9693 coloured9693 at child
  try dsimp only [live9694, coloured9694]
  rw [child]
  dsimp only [result9693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9695_agree_conditional : tree9695 = literal9695 := by
  rw [tree9695_def]
  rfl
theorem node9695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9695 live9695 coloured9695 = result9695 := by
  rw [tree9695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
