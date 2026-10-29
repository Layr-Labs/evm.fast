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
theorem tree6624_agree_conditional
    (child0 : tree6622 = literal6622)
    (child1 : tree6623 = literal6623) : tree6624 = literal6624 := by
  rw [tree6624_def, child0, child1]
  rfl
theorem node6624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6622 live6622 coloured6622 = result6622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6623 live6623 coloured6623 = result6623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6624 live6624 coloured6624 = result6624 := by
  rw [tree6624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6622 coloured6622 at child
  try dsimp only [live6624, coloured6624]
  rw [child]
  dsimp only [result6622]
  have child := child1
  unfold live6623 coloured6623 at child
  try dsimp only [live6624, coloured6624]
  rw [child]
  dsimp only [result6623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6625_agree_conditional : tree6625 = literal6625 := by
  rw [tree6625_def]
  rfl
theorem node6625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6625 live6625 coloured6625 = result6625 := by
  rw [tree6625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6626_agree_conditional
    (child0 : tree6624 = literal6624)
    (child1 : tree6625 = literal6625) : tree6626 = literal6626 := by
  rw [tree6626_def, child0, child1]
  rfl
theorem node6626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6624 live6624 coloured6624 = result6624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6625 live6625 coloured6625 = result6625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6626 live6626 coloured6626 = result6626 := by
  rw [tree6626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6624 coloured6624 at child
  try dsimp only [live6626, coloured6626]
  rw [child]
  dsimp only [result6624]
  have child := child1
  unfold live6625 coloured6625 at child
  try dsimp only [live6626, coloured6626]
  rw [child]
  dsimp only [result6625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6627_agree_conditional : tree6627 = literal6627 := by
  rw [tree6627_def]
  rfl
theorem node6627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6627 live6627 coloured6627 = result6627 := by
  rw [tree6627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6628_agree_conditional
    (child0 : tree6626 = literal6626)
    (child1 : tree6627 = literal6627) : tree6628 = literal6628 := by
  rw [tree6628_def, child0, child1]
  rfl
theorem node6628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6626 live6626 coloured6626 = result6626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6627 live6627 coloured6627 = result6627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6628 live6628 coloured6628 = result6628 := by
  rw [tree6628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6626 coloured6626 at child
  try dsimp only [live6628, coloured6628]
  rw [child]
  dsimp only [result6626]
  have child := child1
  unfold live6627 coloured6627 at child
  try dsimp only [live6628, coloured6628]
  rw [child]
  dsimp only [result6627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6629_agree_conditional : tree6629 = literal6629 := by
  rw [tree6629_def]
  rfl
theorem node6629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6629 live6629 coloured6629 = result6629 := by
  rw [tree6629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6630_agree_conditional
    (child0 : tree6628 = literal6628)
    (child1 : tree6629 = literal6629) : tree6630 = literal6630 := by
  rw [tree6630_def, child0, child1]
  rfl
theorem node6630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6628 live6628 coloured6628 = result6628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6629 live6629 coloured6629 = result6629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6630 live6630 coloured6630 = result6630 := by
  rw [tree6630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6628 coloured6628 at child
  try dsimp only [live6630, coloured6630]
  rw [child]
  dsimp only [result6628]
  have child := child1
  unfold live6629 coloured6629 at child
  try dsimp only [live6630, coloured6630]
  rw [child]
  dsimp only [result6629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6631_agree_conditional : tree6631 = literal6631 := by
  rw [tree6631_def]
  rfl
theorem node6631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6631 live6631 coloured6631 = result6631 := by
  rw [tree6631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6632_agree_conditional
    (child0 : tree6630 = literal6630)
    (child1 : tree6631 = literal6631) : tree6632 = literal6632 := by
  rw [tree6632_def, child0, child1]
  rfl
theorem node6632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6630 live6630 coloured6630 = result6630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6631 live6631 coloured6631 = result6631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6632 live6632 coloured6632 = result6632 := by
  rw [tree6632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6630 coloured6630 at child
  try dsimp only [live6632, coloured6632]
  rw [child]
  dsimp only [result6630]
  have child := child1
  unfold live6631 coloured6631 at child
  try dsimp only [live6632, coloured6632]
  rw [child]
  dsimp only [result6631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6633_agree_conditional : tree6633 = literal6633 := by
  rw [tree6633_def]
  rfl
theorem node6633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6633 live6633 coloured6633 = result6633 := by
  rw [tree6633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6634_agree_conditional
    (child0 : tree6632 = literal6632)
    (child1 : tree6633 = literal6633) : tree6634 = literal6634 := by
  rw [tree6634_def, child0, child1]
  rfl
theorem node6634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6632 live6632 coloured6632 = result6632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6633 live6633 coloured6633 = result6633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6634 live6634 coloured6634 = result6634 := by
  rw [tree6634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6632 coloured6632 at child
  try dsimp only [live6634, coloured6634]
  rw [child]
  dsimp only [result6632]
  have child := child1
  unfold live6633 coloured6633 at child
  try dsimp only [live6634, coloured6634]
  rw [child]
  dsimp only [result6633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6635_agree_conditional : tree6635 = literal6635 := by
  rw [tree6635_def]
  rfl
theorem node6635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6635 live6635 coloured6635 = result6635 := by
  rw [tree6635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6636_agree_conditional
    (child0 : tree6634 = literal6634)
    (child1 : tree6635 = literal6635) : tree6636 = literal6636 := by
  rw [tree6636_def, child0, child1]
  rfl
theorem node6636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6634 live6634 coloured6634 = result6634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6635 live6635 coloured6635 = result6635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6636 live6636 coloured6636 = result6636 := by
  rw [tree6636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6634 coloured6634 at child
  try dsimp only [live6636, coloured6636]
  rw [child]
  dsimp only [result6634]
  have child := child1
  unfold live6635 coloured6635 at child
  try dsimp only [live6636, coloured6636]
  rw [child]
  dsimp only [result6635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6637_agree_conditional : tree6637 = literal6637 := by
  rw [tree6637_def]
  rfl
theorem node6637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6637 live6637 coloured6637 = result6637 := by
  rw [tree6637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6638_agree_conditional
    (child0 : tree6636 = literal6636)
    (child1 : tree6637 = literal6637) : tree6638 = literal6638 := by
  rw [tree6638_def, child0, child1]
  rfl
theorem node6638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6636 live6636 coloured6636 = result6636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6637 live6637 coloured6637 = result6637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6638 live6638 coloured6638 = result6638 := by
  rw [tree6638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6636 coloured6636 at child
  try dsimp only [live6638, coloured6638]
  rw [child]
  dsimp only [result6636]
  have child := child1
  unfold live6637 coloured6637 at child
  try dsimp only [live6638, coloured6638]
  rw [child]
  dsimp only [result6637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6639_agree_conditional : tree6639 = literal6639 := by
  rw [tree6639_def]
  rfl
theorem node6639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6639 live6639 coloured6639 = result6639 := by
  rw [tree6639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6640_agree_conditional
    (child0 : tree6638 = literal6638)
    (child1 : tree6639 = literal6639) : tree6640 = literal6640 := by
  rw [tree6640_def, child0, child1]
  rfl
theorem node6640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6638 live6638 coloured6638 = result6638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6639 live6639 coloured6639 = result6639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6640 live6640 coloured6640 = result6640 := by
  rw [tree6640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6638 coloured6638 at child
  try dsimp only [live6640, coloured6640]
  rw [child]
  dsimp only [result6638]
  have child := child1
  unfold live6639 coloured6639 at child
  try dsimp only [live6640, coloured6640]
  rw [child]
  dsimp only [result6639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6641_agree_conditional : tree6641 = literal6641 := by
  rw [tree6641_def]
  rfl
theorem node6641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6641 live6641 coloured6641 = result6641 := by
  rw [tree6641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6642_agree_conditional
    (child0 : tree6640 = literal6640)
    (child1 : tree6641 = literal6641) : tree6642 = literal6642 := by
  rw [tree6642_def, child0, child1]
  rfl
theorem node6642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6640 live6640 coloured6640 = result6640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6641 live6641 coloured6641 = result6641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6642 live6642 coloured6642 = result6642 := by
  rw [tree6642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6640 coloured6640 at child
  try dsimp only [live6642, coloured6642]
  rw [child]
  dsimp only [result6640]
  have child := child1
  unfold live6641 coloured6641 at child
  try dsimp only [live6642, coloured6642]
  rw [child]
  dsimp only [result6641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6643_agree_conditional : tree6643 = literal6643 := by
  rw [tree6643_def]
  rfl
theorem node6643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6643 live6643 coloured6643 = result6643 := by
  rw [tree6643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6644_agree_conditional
    (child0 : tree6642 = literal6642)
    (child1 : tree6643 = literal6643) : tree6644 = literal6644 := by
  rw [tree6644_def, child0, child1]
  rfl
theorem node6644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6642 live6642 coloured6642 = result6642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6643 live6643 coloured6643 = result6643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6644 live6644 coloured6644 = result6644 := by
  rw [tree6644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6642 coloured6642 at child
  try dsimp only [live6644, coloured6644]
  rw [child]
  dsimp only [result6642]
  have child := child1
  unfold live6643 coloured6643 at child
  try dsimp only [live6644, coloured6644]
  rw [child]
  dsimp only [result6643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6645_agree_conditional : tree6645 = literal6645 := by
  rw [tree6645_def]
  rfl
theorem node6645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6645 live6645 coloured6645 = result6645 := by
  rw [tree6645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6646_agree_conditional
    (child0 : tree6644 = literal6644)
    (child1 : tree6645 = literal6645) : tree6646 = literal6646 := by
  rw [tree6646_def, child0, child1]
  rfl
theorem node6646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6644 live6644 coloured6644 = result6644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6645 live6645 coloured6645 = result6645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6646 live6646 coloured6646 = result6646 := by
  rw [tree6646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6644 coloured6644 at child
  try dsimp only [live6646, coloured6646]
  rw [child]
  dsimp only [result6644]
  have child := child1
  unfold live6645 coloured6645 at child
  try dsimp only [live6646, coloured6646]
  rw [child]
  dsimp only [result6645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6647_agree_conditional : tree6647 = literal6647 := by
  rw [tree6647_def]
  rfl
theorem node6647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6647 live6647 coloured6647 = result6647 := by
  rw [tree6647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6648_agree_conditional
    (child0 : tree6646 = literal6646)
    (child1 : tree6647 = literal6647) : tree6648 = literal6648 := by
  rw [tree6648_def, child0, child1]
  rfl
theorem node6648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6646 live6646 coloured6646 = result6646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6647 live6647 coloured6647 = result6647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6648 live6648 coloured6648 = result6648 := by
  rw [tree6648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6646 coloured6646 at child
  try dsimp only [live6648, coloured6648]
  rw [child]
  dsimp only [result6646]
  have child := child1
  unfold live6647 coloured6647 at child
  try dsimp only [live6648, coloured6648]
  rw [child]
  dsimp only [result6647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6649_agree_conditional : tree6649 = literal6649 := by
  rw [tree6649_def]
  rfl
theorem node6649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6649 live6649 coloured6649 = result6649 := by
  rw [tree6649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6650_agree_conditional
    (child0 : tree6648 = literal6648)
    (child1 : tree6649 = literal6649) : tree6650 = literal6650 := by
  rw [tree6650_def, child0, child1]
  rfl
theorem node6650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6648 live6648 coloured6648 = result6648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6649 live6649 coloured6649 = result6649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6650 live6650 coloured6650 = result6650 := by
  rw [tree6650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6648 coloured6648 at child
  try dsimp only [live6650, coloured6650]
  rw [child]
  dsimp only [result6648]
  have child := child1
  unfold live6649 coloured6649 at child
  try dsimp only [live6650, coloured6650]
  rw [child]
  dsimp only [result6649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6651_agree_conditional : tree6651 = literal6651 := by
  rw [tree6651_def]
  rfl
theorem node6651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6651 live6651 coloured6651 = result6651 := by
  rw [tree6651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6652_agree_conditional
    (child0 : tree6650 = literal6650)
    (child1 : tree6651 = literal6651) : tree6652 = literal6652 := by
  rw [tree6652_def, child0, child1]
  rfl
theorem node6652_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6650 live6650 coloured6650 = result6650)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6651 live6651 coloured6651 = result6651) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6652 live6652 coloured6652 = result6652 := by
  rw [tree6652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6650 coloured6650 at child
  try dsimp only [live6652, coloured6652]
  rw [child]
  dsimp only [result6650]
  have child := child1
  unfold live6651 coloured6651 at child
  try dsimp only [live6652, coloured6652]
  rw [child]
  dsimp only [result6651]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6653_agree_conditional : tree6653 = literal6653 := by
  rw [tree6653_def]
  rfl
theorem node6653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6653 live6653 coloured6653 = result6653 := by
  rw [tree6653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6654_agree_conditional
    (child0 : tree6652 = literal6652)
    (child1 : tree6653 = literal6653) : tree6654 = literal6654 := by
  rw [tree6654_def, child0, child1]
  rfl
theorem node6654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6652 live6652 coloured6652 = result6652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6653 live6653 coloured6653 = result6653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6654 live6654 coloured6654 = result6654 := by
  rw [tree6654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6652 coloured6652 at child
  try dsimp only [live6654, coloured6654]
  rw [child]
  dsimp only [result6652]
  have child := child1
  unfold live6653 coloured6653 at child
  try dsimp only [live6654, coloured6654]
  rw [child]
  dsimp only [result6653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6655_agree_conditional : tree6655 = literal6655 := by
  rw [tree6655_def]
  rfl
theorem node6655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6655 live6655 coloured6655 = result6655 := by
  rw [tree6655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6656_agree_conditional
    (child0 : tree6654 = literal6654)
    (child1 : tree6655 = literal6655) : tree6656 = literal6656 := by
  rw [tree6656_def, child0, child1]
  rfl
theorem node6656_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6654 live6654 coloured6654 = result6654)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6655 live6655 coloured6655 = result6655) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6656 live6656 coloured6656 = result6656 := by
  rw [tree6656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6654 coloured6654 at child
  try dsimp only [live6656, coloured6656]
  rw [child]
  dsimp only [result6654]
  have child := child1
  unfold live6655 coloured6655 at child
  try dsimp only [live6656, coloured6656]
  rw [child]
  dsimp only [result6655]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6657_agree_conditional : tree6657 = literal6657 := by
  rw [tree6657_def]
  rfl
theorem node6657_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6657 live6657 coloured6657 = result6657 := by
  rw [tree6657_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6658_agree_conditional
    (child0 : tree6656 = literal6656)
    (child1 : tree6657 = literal6657) : tree6658 = literal6658 := by
  rw [tree6658_def, child0, child1]
  rfl
theorem node6658_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6656 live6656 coloured6656 = result6656)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6657 live6657 coloured6657 = result6657) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6658 live6658 coloured6658 = result6658 := by
  rw [tree6658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6656 coloured6656 at child
  try dsimp only [live6658, coloured6658]
  rw [child]
  dsimp only [result6656]
  have child := child1
  unfold live6657 coloured6657 at child
  try dsimp only [live6658, coloured6658]
  rw [child]
  dsimp only [result6657]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6659_agree_conditional : tree6659 = literal6659 := by
  rw [tree6659_def]
  rfl
theorem node6659_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6659 live6659 coloured6659 = result6659 := by
  rw [tree6659_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6660_agree_conditional
    (child0 : tree6658 = literal6658)
    (child1 : tree6659 = literal6659) : tree6660 = literal6660 := by
  rw [tree6660_def, child0, child1]
  rfl
theorem node6660_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6658 live6658 coloured6658 = result6658)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6659 live6659 coloured6659 = result6659) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6660 live6660 coloured6660 = result6660 := by
  rw [tree6660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6658 coloured6658 at child
  try dsimp only [live6660, coloured6660]
  rw [child]
  dsimp only [result6658]
  have child := child1
  unfold live6659 coloured6659 at child
  try dsimp only [live6660, coloured6660]
  rw [child]
  dsimp only [result6659]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6661_agree_conditional : tree6661 = literal6661 := by
  rw [tree6661_def]
  rfl
theorem node6661_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6661 live6661 coloured6661 = result6661 := by
  rw [tree6661_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6662_agree_conditional
    (child0 : tree6660 = literal6660)
    (child1 : tree6661 = literal6661) : tree6662 = literal6662 := by
  rw [tree6662_def, child0, child1]
  rfl
theorem node6662_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6660 live6660 coloured6660 = result6660)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6661 live6661 coloured6661 = result6661) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6662 live6662 coloured6662 = result6662 := by
  rw [tree6662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6660 coloured6660 at child
  try dsimp only [live6662, coloured6662]
  rw [child]
  dsimp only [result6660]
  have child := child1
  unfold live6661 coloured6661 at child
  try dsimp only [live6662, coloured6662]
  rw [child]
  dsimp only [result6661]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6663_agree_conditional : tree6663 = literal6663 := by
  rw [tree6663_def]
  rfl
theorem node6663_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6663 live6663 coloured6663 = result6663 := by
  rw [tree6663_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6664_agree_conditional
    (child0 : tree6662 = literal6662)
    (child1 : tree6663 = literal6663) : tree6664 = literal6664 := by
  rw [tree6664_def, child0, child1]
  rfl
theorem node6664_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6662 live6662 coloured6662 = result6662)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6663 live6663 coloured6663 = result6663) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6664 live6664 coloured6664 = result6664 := by
  rw [tree6664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6662 coloured6662 at child
  try dsimp only [live6664, coloured6664]
  rw [child]
  dsimp only [result6662]
  have child := child1
  unfold live6663 coloured6663 at child
  try dsimp only [live6664, coloured6664]
  rw [child]
  dsimp only [result6663]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6665_agree_conditional : tree6665 = literal6665 := by
  rw [tree6665_def]
  rfl
theorem node6665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6665 live6665 coloured6665 = result6665 := by
  rw [tree6665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6666_agree_conditional
    (child0 : tree6664 = literal6664)
    (child1 : tree6665 = literal6665) : tree6666 = literal6666 := by
  rw [tree6666_def, child0, child1]
  rfl
theorem node6666_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6664 live6664 coloured6664 = result6664)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6665 live6665 coloured6665 = result6665) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6666 live6666 coloured6666 = result6666 := by
  rw [tree6666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6664 coloured6664 at child
  try dsimp only [live6666, coloured6666]
  rw [child]
  dsimp only [result6664]
  have child := child1
  unfold live6665 coloured6665 at child
  try dsimp only [live6666, coloured6666]
  rw [child]
  dsimp only [result6665]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6667_agree_conditional : tree6667 = literal6667 := by
  rw [tree6667_def]
  rfl
theorem node6667_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6667 live6667 coloured6667 = result6667 := by
  rw [tree6667_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6668_agree_conditional
    (child0 : tree6666 = literal6666)
    (child1 : tree6667 = literal6667) : tree6668 = literal6668 := by
  rw [tree6668_def, child0, child1]
  rfl
theorem node6668_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6666 live6666 coloured6666 = result6666)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6667 live6667 coloured6667 = result6667) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6668 live6668 coloured6668 = result6668 := by
  rw [tree6668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6666 coloured6666 at child
  try dsimp only [live6668, coloured6668]
  rw [child]
  dsimp only [result6666]
  have child := child1
  unfold live6667 coloured6667 at child
  try dsimp only [live6668, coloured6668]
  rw [child]
  dsimp only [result6667]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6669_agree_conditional : tree6669 = literal6669 := by
  rw [tree6669_def]
  rfl
theorem node6669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6669 live6669 coloured6669 = result6669 := by
  rw [tree6669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6670_agree_conditional
    (child0 : tree6668 = literal6668)
    (child1 : tree6669 = literal6669) : tree6670 = literal6670 := by
  rw [tree6670_def, child0, child1]
  rfl
theorem node6670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6668 live6668 coloured6668 = result6668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6669 live6669 coloured6669 = result6669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6670 live6670 coloured6670 = result6670 := by
  rw [tree6670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6668 coloured6668 at child
  try dsimp only [live6670, coloured6670]
  rw [child]
  dsimp only [result6668]
  have child := child1
  unfold live6669 coloured6669 at child
  try dsimp only [live6670, coloured6670]
  rw [child]
  dsimp only [result6669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6671_agree_conditional : tree6671 = literal6671 := by
  rw [tree6671_def]
  rfl
theorem node6671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6671 live6671 coloured6671 = result6671 := by
  rw [tree6671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6672_agree_conditional
    (child0 : tree6670 = literal6670)
    (child1 : tree6671 = literal6671) : tree6672 = literal6672 := by
  rw [tree6672_def, child0, child1]
  rfl
theorem node6672_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6670 live6670 coloured6670 = result6670)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6671 live6671 coloured6671 = result6671) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6672 live6672 coloured6672 = result6672 := by
  rw [tree6672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6670 coloured6670 at child
  try dsimp only [live6672, coloured6672]
  rw [child]
  dsimp only [result6670]
  have child := child1
  unfold live6671 coloured6671 at child
  try dsimp only [live6672, coloured6672]
  rw [child]
  dsimp only [result6671]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6673_agree_conditional : tree6673 = literal6673 := by
  rw [tree6673_def]
  rfl
theorem node6673_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6673 live6673 coloured6673 = result6673 := by
  rw [tree6673_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6674_agree_conditional
    (child0 : tree6672 = literal6672)
    (child1 : tree6673 = literal6673) : tree6674 = literal6674 := by
  rw [tree6674_def, child0, child1]
  rfl
theorem node6674_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6672 live6672 coloured6672 = result6672)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6673 live6673 coloured6673 = result6673) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6674 live6674 coloured6674 = result6674 := by
  rw [tree6674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6672 coloured6672 at child
  try dsimp only [live6674, coloured6674]
  rw [child]
  dsimp only [result6672]
  have child := child1
  unfold live6673 coloured6673 at child
  try dsimp only [live6674, coloured6674]
  rw [child]
  dsimp only [result6673]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6675_agree_conditional : tree6675 = literal6675 := by
  rw [tree6675_def]
  rfl
theorem node6675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6675 live6675 coloured6675 = result6675 := by
  rw [tree6675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6676_agree_conditional
    (child0 : tree6674 = literal6674)
    (child1 : tree6675 = literal6675) : tree6676 = literal6676 := by
  rw [tree6676_def, child0, child1]
  rfl
theorem node6676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6674 live6674 coloured6674 = result6674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6675 live6675 coloured6675 = result6675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6676 live6676 coloured6676 = result6676 := by
  rw [tree6676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6674 coloured6674 at child
  try dsimp only [live6676, coloured6676]
  rw [child]
  dsimp only [result6674]
  have child := child1
  unfold live6675 coloured6675 at child
  try dsimp only [live6676, coloured6676]
  rw [child]
  dsimp only [result6675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6677_agree_conditional : tree6677 = literal6677 := by
  rw [tree6677_def]
  rfl
theorem node6677_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6677 live6677 coloured6677 = result6677 := by
  rw [tree6677_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6678_agree_conditional
    (child0 : tree6676 = literal6676)
    (child1 : tree6677 = literal6677) : tree6678 = literal6678 := by
  rw [tree6678_def, child0, child1]
  rfl
theorem node6678_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6676 live6676 coloured6676 = result6676)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6677 live6677 coloured6677 = result6677) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6678 live6678 coloured6678 = result6678 := by
  rw [tree6678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6676 coloured6676 at child
  try dsimp only [live6678, coloured6678]
  rw [child]
  dsimp only [result6676]
  have child := child1
  unfold live6677 coloured6677 at child
  try dsimp only [live6678, coloured6678]
  rw [child]
  dsimp only [result6677]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6679_agree_conditional : tree6679 = literal6679 := by
  rw [tree6679_def]
  rfl
theorem node6679_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6679 live6679 coloured6679 = result6679 := by
  rw [tree6679_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6680_agree_conditional
    (child0 : tree6678 = literal6678)
    (child1 : tree6679 = literal6679) : tree6680 = literal6680 := by
  rw [tree6680_def, child0, child1]
  rfl
theorem node6680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6678 live6678 coloured6678 = result6678)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6679 live6679 coloured6679 = result6679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6680 live6680 coloured6680 = result6680 := by
  rw [tree6680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6678 coloured6678 at child
  try dsimp only [live6680, coloured6680]
  rw [child]
  dsimp only [result6678]
  have child := child1
  unfold live6679 coloured6679 at child
  try dsimp only [live6680, coloured6680]
  rw [child]
  dsimp only [result6679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6681_agree_conditional : tree6681 = literal6681 := by
  rw [tree6681_def]
  rfl
theorem node6681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6681 live6681 coloured6681 = result6681 := by
  rw [tree6681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6682_agree_conditional
    (child0 : tree6680 = literal6680)
    (child1 : tree6681 = literal6681) : tree6682 = literal6682 := by
  rw [tree6682_def, child0, child1]
  rfl
theorem node6682_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6680 live6680 coloured6680 = result6680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6681 live6681 coloured6681 = result6681) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6682 live6682 coloured6682 = result6682 := by
  rw [tree6682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6680 coloured6680 at child
  try dsimp only [live6682, coloured6682]
  rw [child]
  dsimp only [result6680]
  have child := child1
  unfold live6681 coloured6681 at child
  try dsimp only [live6682, coloured6682]
  rw [child]
  dsimp only [result6681]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6683_agree_conditional : tree6683 = literal6683 := by
  rw [tree6683_def]
  rfl
theorem node6683_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6683 live6683 coloured6683 = result6683 := by
  rw [tree6683_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6684_agree_conditional
    (child0 : tree6682 = literal6682)
    (child1 : tree6683 = literal6683) : tree6684 = literal6684 := by
  rw [tree6684_def, child0, child1]
  rfl
theorem node6684_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6682 live6682 coloured6682 = result6682)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6683 live6683 coloured6683 = result6683) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6684 live6684 coloured6684 = result6684 := by
  rw [tree6684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6682 coloured6682 at child
  try dsimp only [live6684, coloured6684]
  rw [child]
  dsimp only [result6682]
  have child := child1
  unfold live6683 coloured6683 at child
  try dsimp only [live6684, coloured6684]
  rw [child]
  dsimp only [result6683]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6685_agree_conditional : tree6685 = literal6685 := by
  rw [tree6685_def]
  rfl
theorem node6685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6685 live6685 coloured6685 = result6685 := by
  rw [tree6685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6686_agree_conditional
    (child0 : tree6684 = literal6684)
    (child1 : tree6685 = literal6685) : tree6686 = literal6686 := by
  rw [tree6686_def, child0, child1]
  rfl
theorem node6686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6684 live6684 coloured6684 = result6684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6685 live6685 coloured6685 = result6685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6686 live6686 coloured6686 = result6686 := by
  rw [tree6686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6684 coloured6684 at child
  try dsimp only [live6686, coloured6686]
  rw [child]
  dsimp only [result6684]
  have child := child1
  unfold live6685 coloured6685 at child
  try dsimp only [live6686, coloured6686]
  rw [child]
  dsimp only [result6685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6687_agree_conditional : tree6687 = literal6687 := by
  rw [tree6687_def]
  rfl
theorem node6687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6687 live6687 coloured6687 = result6687 := by
  rw [tree6687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6688_agree_conditional
    (child0 : tree6686 = literal6686)
    (child1 : tree6687 = literal6687) : tree6688 = literal6688 := by
  rw [tree6688_def, child0, child1]
  rfl
theorem node6688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6686 live6686 coloured6686 = result6686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6687 live6687 coloured6687 = result6687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6688 live6688 coloured6688 = result6688 := by
  rw [tree6688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6686 coloured6686 at child
  try dsimp only [live6688, coloured6688]
  rw [child]
  dsimp only [result6686]
  have child := child1
  unfold live6687 coloured6687 at child
  try dsimp only [live6688, coloured6688]
  rw [child]
  dsimp only [result6687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6689_agree_conditional : tree6689 = literal6689 := by
  rw [tree6689_def]
  rfl
theorem node6689_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6689 live6689 coloured6689 = result6689 := by
  rw [tree6689_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6690_agree_conditional
    (child0 : tree6688 = literal6688)
    (child1 : tree6689 = literal6689) : tree6690 = literal6690 := by
  rw [tree6690_def, child0, child1]
  rfl
theorem node6690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6688 live6688 coloured6688 = result6688)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6689 live6689 coloured6689 = result6689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6690 live6690 coloured6690 = result6690 := by
  rw [tree6690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6688 coloured6688 at child
  try dsimp only [live6690, coloured6690]
  rw [child]
  dsimp only [result6688]
  have child := child1
  unfold live6689 coloured6689 at child
  try dsimp only [live6690, coloured6690]
  rw [child]
  dsimp only [result6689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6691_agree_conditional : tree6691 = literal6691 := by
  rw [tree6691_def]
  rfl
theorem node6691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6691 live6691 coloured6691 = result6691 := by
  rw [tree6691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6692_agree_conditional
    (child0 : tree6690 = literal6690)
    (child1 : tree6691 = literal6691) : tree6692 = literal6692 := by
  rw [tree6692_def, child0, child1]
  rfl
theorem node6692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6690 live6690 coloured6690 = result6690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6691 live6691 coloured6691 = result6691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6692 live6692 coloured6692 = result6692 := by
  rw [tree6692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6690 coloured6690 at child
  try dsimp only [live6692, coloured6692]
  rw [child]
  dsimp only [result6690]
  have child := child1
  unfold live6691 coloured6691 at child
  try dsimp only [live6692, coloured6692]
  rw [child]
  dsimp only [result6691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6693_agree_conditional : tree6693 = literal6693 := by
  rw [tree6693_def]
  rfl
theorem node6693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6693 live6693 coloured6693 = result6693 := by
  rw [tree6693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6694_agree_conditional
    (child0 : tree6692 = literal6692)
    (child1 : tree6693 = literal6693) : tree6694 = literal6694 := by
  rw [tree6694_def, child0, child1]
  rfl
theorem node6694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6692 live6692 coloured6692 = result6692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6693 live6693 coloured6693 = result6693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6694 live6694 coloured6694 = result6694 := by
  rw [tree6694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6692 coloured6692 at child
  try dsimp only [live6694, coloured6694]
  rw [child]
  dsimp only [result6692]
  have child := child1
  unfold live6693 coloured6693 at child
  try dsimp only [live6694, coloured6694]
  rw [child]
  dsimp only [result6693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6695_agree_conditional : tree6695 = literal6695 := by
  rw [tree6695_def]
  rfl
theorem node6695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6695 live6695 coloured6695 = result6695 := by
  rw [tree6695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6696_agree_conditional
    (child0 : tree6694 = literal6694)
    (child1 : tree6695 = literal6695) : tree6696 = literal6696 := by
  rw [tree6696_def, child0, child1]
  rfl
theorem node6696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6694 live6694 coloured6694 = result6694)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6695 live6695 coloured6695 = result6695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6696 live6696 coloured6696 = result6696 := by
  rw [tree6696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6694 coloured6694 at child
  try dsimp only [live6696, coloured6696]
  rw [child]
  dsimp only [result6694]
  have child := child1
  unfold live6695 coloured6695 at child
  try dsimp only [live6696, coloured6696]
  rw [child]
  dsimp only [result6695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6697_agree_conditional : tree6697 = literal6697 := by
  rw [tree6697_def]
  rfl
theorem node6697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6697 live6697 coloured6697 = result6697 := by
  rw [tree6697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6698_agree_conditional
    (child0 : tree6696 = literal6696)
    (child1 : tree6697 = literal6697) : tree6698 = literal6698 := by
  rw [tree6698_def, child0, child1]
  rfl
theorem node6698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6696 live6696 coloured6696 = result6696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6697 live6697 coloured6697 = result6697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6698 live6698 coloured6698 = result6698 := by
  rw [tree6698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6696 coloured6696 at child
  try dsimp only [live6698, coloured6698]
  rw [child]
  dsimp only [result6696]
  have child := child1
  unfold live6697 coloured6697 at child
  try dsimp only [live6698, coloured6698]
  rw [child]
  dsimp only [result6697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6699_agree_conditional : tree6699 = literal6699 := by
  rw [tree6699_def]
  rfl
theorem node6699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6699 live6699 coloured6699 = result6699 := by
  rw [tree6699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6700_agree_conditional
    (child0 : tree6698 = literal6698)
    (child1 : tree6699 = literal6699) : tree6700 = literal6700 := by
  rw [tree6700_def, child0, child1]
  rfl
theorem node6700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6698 live6698 coloured6698 = result6698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6699 live6699 coloured6699 = result6699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6700 live6700 coloured6700 = result6700 := by
  rw [tree6700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6698 coloured6698 at child
  try dsimp only [live6700, coloured6700]
  rw [child]
  dsimp only [result6698]
  have child := child1
  unfold live6699 coloured6699 at child
  try dsimp only [live6700, coloured6700]
  rw [child]
  dsimp only [result6699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6701_agree_conditional : tree6701 = literal6701 := by
  rw [tree6701_def]
  rfl
theorem node6701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6701 live6701 coloured6701 = result6701 := by
  rw [tree6701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6702_agree_conditional
    (child0 : tree6700 = literal6700)
    (child1 : tree6701 = literal6701) : tree6702 = literal6702 := by
  rw [tree6702_def, child0, child1]
  rfl
theorem node6702_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6700 live6700 coloured6700 = result6700)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6701 live6701 coloured6701 = result6701) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6702 live6702 coloured6702 = result6702 := by
  rw [tree6702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6700 coloured6700 at child
  try dsimp only [live6702, coloured6702]
  rw [child]
  dsimp only [result6700]
  have child := child1
  unfold live6701 coloured6701 at child
  try dsimp only [live6702, coloured6702]
  rw [child]
  dsimp only [result6701]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6703_agree_conditional : tree6703 = literal6703 := by
  rw [tree6703_def]
  rfl
theorem node6703_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6703 live6703 coloured6703 = result6703 := by
  rw [tree6703_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6704_agree_conditional
    (child0 : tree6702 = literal6702)
    (child1 : tree6703 = literal6703) : tree6704 = literal6704 := by
  rw [tree6704_def, child0, child1]
  rfl
theorem node6704_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6702 live6702 coloured6702 = result6702)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6703 live6703 coloured6703 = result6703) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6704 live6704 coloured6704 = result6704 := by
  rw [tree6704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6702 coloured6702 at child
  try dsimp only [live6704, coloured6704]
  rw [child]
  dsimp only [result6702]
  have child := child1
  unfold live6703 coloured6703 at child
  try dsimp only [live6704, coloured6704]
  rw [child]
  dsimp only [result6703]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6705_agree_conditional : tree6705 = literal6705 := by
  rw [tree6705_def]
  rfl
theorem node6705_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6705 live6705 coloured6705 = result6705 := by
  rw [tree6705_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6706_agree_conditional
    (child0 : tree6704 = literal6704)
    (child1 : tree6705 = literal6705) : tree6706 = literal6706 := by
  rw [tree6706_def, child0, child1]
  rfl
theorem node6706_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6704 live6704 coloured6704 = result6704)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6705 live6705 coloured6705 = result6705) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6706 live6706 coloured6706 = result6706 := by
  rw [tree6706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6704 coloured6704 at child
  try dsimp only [live6706, coloured6706]
  rw [child]
  dsimp only [result6704]
  have child := child1
  unfold live6705 coloured6705 at child
  try dsimp only [live6706, coloured6706]
  rw [child]
  dsimp only [result6705]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6707_agree_conditional : tree6707 = literal6707 := by
  rw [tree6707_def]
  rfl
theorem node6707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6707 live6707 coloured6707 = result6707 := by
  rw [tree6707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6708_agree_conditional
    (child0 : tree6706 = literal6706)
    (child1 : tree6707 = literal6707) : tree6708 = literal6708 := by
  rw [tree6708_def, child0, child1]
  rfl
theorem node6708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6706 live6706 coloured6706 = result6706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6707 live6707 coloured6707 = result6707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6708 live6708 coloured6708 = result6708 := by
  rw [tree6708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6706 coloured6706 at child
  try dsimp only [live6708, coloured6708]
  rw [child]
  dsimp only [result6706]
  have child := child1
  unfold live6707 coloured6707 at child
  try dsimp only [live6708, coloured6708]
  rw [child]
  dsimp only [result6707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6709_agree_conditional : tree6709 = literal6709 := by
  rw [tree6709_def]
  rfl
theorem node6709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6709 live6709 coloured6709 = result6709 := by
  rw [tree6709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6710_agree_conditional
    (child0 : tree6708 = literal6708)
    (child1 : tree6709 = literal6709) : tree6710 = literal6710 := by
  rw [tree6710_def, child0, child1]
  rfl
theorem node6710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6708 live6708 coloured6708 = result6708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6709 live6709 coloured6709 = result6709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6710 live6710 coloured6710 = result6710 := by
  rw [tree6710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6708 coloured6708 at child
  try dsimp only [live6710, coloured6710]
  rw [child]
  dsimp only [result6708]
  have child := child1
  unfold live6709 coloured6709 at child
  try dsimp only [live6710, coloured6710]
  rw [child]
  dsimp only [result6709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6711_agree_conditional : tree6711 = literal6711 := by
  rw [tree6711_def]
  rfl
theorem node6711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6711 live6711 coloured6711 = result6711 := by
  rw [tree6711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6712_agree_conditional
    (child0 : tree6710 = literal6710)
    (child1 : tree6711 = literal6711) : tree6712 = literal6712 := by
  rw [tree6712_def, child0, child1]
  rfl
theorem node6712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6710 live6710 coloured6710 = result6710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6711 live6711 coloured6711 = result6711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6712 live6712 coloured6712 = result6712 := by
  rw [tree6712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6710 coloured6710 at child
  try dsimp only [live6712, coloured6712]
  rw [child]
  dsimp only [result6710]
  have child := child1
  unfold live6711 coloured6711 at child
  try dsimp only [live6712, coloured6712]
  rw [child]
  dsimp only [result6711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6713_agree_conditional : tree6713 = literal6713 := by
  rw [tree6713_def]
  rfl
theorem node6713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6713 live6713 coloured6713 = result6713 := by
  rw [tree6713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6714_agree_conditional
    (child0 : tree6712 = literal6712)
    (child1 : tree6713 = literal6713) : tree6714 = literal6714 := by
  rw [tree6714_def, child0, child1]
  rfl
theorem node6714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6712 live6712 coloured6712 = result6712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6713 live6713 coloured6713 = result6713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6714 live6714 coloured6714 = result6714 := by
  rw [tree6714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6712 coloured6712 at child
  try dsimp only [live6714, coloured6714]
  rw [child]
  dsimp only [result6712]
  have child := child1
  unfold live6713 coloured6713 at child
  try dsimp only [live6714, coloured6714]
  rw [child]
  dsimp only [result6713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6715_agree_conditional : tree6715 = literal6715 := by
  rw [tree6715_def]
  rfl
theorem node6715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6715 live6715 coloured6715 = result6715 := by
  rw [tree6715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6716_agree_conditional
    (child0 : tree6714 = literal6714)
    (child1 : tree6715 = literal6715) : tree6716 = literal6716 := by
  rw [tree6716_def, child0, child1]
  rfl
theorem node6716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6714 live6714 coloured6714 = result6714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6715 live6715 coloured6715 = result6715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6716 live6716 coloured6716 = result6716 := by
  rw [tree6716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6714 coloured6714 at child
  try dsimp only [live6716, coloured6716]
  rw [child]
  dsimp only [result6714]
  have child := child1
  unfold live6715 coloured6715 at child
  try dsimp only [live6716, coloured6716]
  rw [child]
  dsimp only [result6715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6717_agree_conditional : tree6717 = literal6717 := by
  rw [tree6717_def]
  rfl
theorem node6717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6717 live6717 coloured6717 = result6717 := by
  rw [tree6717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6718_agree_conditional
    (child0 : tree6716 = literal6716)
    (child1 : tree6717 = literal6717) : tree6718 = literal6718 := by
  rw [tree6718_def, child0, child1]
  rfl
theorem node6718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6716 live6716 coloured6716 = result6716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6717 live6717 coloured6717 = result6717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6718 live6718 coloured6718 = result6718 := by
  rw [tree6718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6716 coloured6716 at child
  try dsimp only [live6718, coloured6718]
  rw [child]
  dsimp only [result6716]
  have child := child1
  unfold live6717 coloured6717 at child
  try dsimp only [live6718, coloured6718]
  rw [child]
  dsimp only [result6717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6719_agree_conditional : tree6719 = literal6719 := by
  rw [tree6719_def]
  rfl
theorem node6719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6719 live6719 coloured6719 = result6719 := by
  rw [tree6719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
