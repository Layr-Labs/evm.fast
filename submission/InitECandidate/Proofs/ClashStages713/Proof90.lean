import InitECandidate.Proofs.ClashStages713.Proof89
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree8640_agree : tree8640 = literal8640 := by
  rw [tree8640_def, tree8638_agree, tree8639_agree]
  rfl
theorem node8640_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8640 live8640 coloured8640 = result8640 := by
  rw [tree8640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8638_eq
  unfold live8638 coloured8638 at child
  try dsimp only [live8640, coloured8640]
  rw [child]
  dsimp only [result8638]
  have child := node8639_eq
  unfold live8639 coloured8639 at child
  try dsimp only [live8640, coloured8640]
  rw [child]
  dsimp only [result8639]
  try dsimp only [colour, result8640]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8641_agree : tree8641 = literal8641 := by
  rw [tree8641_def]
  rfl
theorem node8641_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8641 live8641 coloured8641 = result8641 := by
  rw [tree8641_def]
  try dsimp only [colour, result8641]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8642_agree : tree8642 = literal8642 := by
  rw [tree8642_def, tree8640_agree, tree8641_agree]
  rfl
theorem node8642_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8642 live8642 coloured8642 = result8642 := by
  rw [tree8642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8640_eq
  unfold live8640 coloured8640 at child
  try dsimp only [live8642, coloured8642]
  rw [child]
  dsimp only [result8640]
  have child := node8641_eq
  unfold live8641 coloured8641 at child
  try dsimp only [live8642, coloured8642]
  rw [child]
  dsimp only [result8641]
  try dsimp only [colour, result8642]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8643_agree : tree8643 = literal8643 := by
  rw [tree8643_def]
  rfl
theorem node8643_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8643 live8643 coloured8643 = result8643 := by
  rw [tree8643_def]
  try dsimp only [colour, result8643]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8644_agree : tree8644 = literal8644 := by
  rw [tree8644_def, tree8642_agree, tree8643_agree]
  rfl
theorem node8644_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8644 live8644 coloured8644 = result8644 := by
  rw [tree8644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8642_eq
  unfold live8642 coloured8642 at child
  try dsimp only [live8644, coloured8644]
  rw [child]
  dsimp only [result8642]
  have child := node8643_eq
  unfold live8643 coloured8643 at child
  try dsimp only [live8644, coloured8644]
  rw [child]
  dsimp only [result8643]
  try dsimp only [colour, result8644]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8645_agree : tree8645 = literal8645 := by
  rw [tree8645_def]
  rfl
theorem node8645_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8645 live8645 coloured8645 = result8645 := by
  rw [tree8645_def]
  try dsimp only [colour, result8645]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8646_agree : tree8646 = literal8646 := by
  rw [tree8646_def, tree8644_agree, tree8645_agree]
  rfl
theorem node8646_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8646 live8646 coloured8646 = result8646 := by
  rw [tree8646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8644_eq
  unfold live8644 coloured8644 at child
  try dsimp only [live8646, coloured8646]
  rw [child]
  dsimp only [result8644]
  have child := node8645_eq
  unfold live8645 coloured8645 at child
  try dsimp only [live8646, coloured8646]
  rw [child]
  dsimp only [result8645]
  try dsimp only [colour, result8646]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8647_agree : tree8647 = literal8647 := by
  rw [tree8647_def]
  rfl
theorem node8647_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8647 live8647 coloured8647 = result8647 := by
  rw [tree8647_def]
  try dsimp only [colour, result8647]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8648_agree : tree8648 = literal8648 := by
  rw [tree8648_def, tree8646_agree, tree8647_agree]
  rfl
theorem node8648_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8648 live8648 coloured8648 = result8648 := by
  rw [tree8648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8646_eq
  unfold live8646 coloured8646 at child
  try dsimp only [live8648, coloured8648]
  rw [child]
  dsimp only [result8646]
  have child := node8647_eq
  unfold live8647 coloured8647 at child
  try dsimp only [live8648, coloured8648]
  rw [child]
  dsimp only [result8647]
  try dsimp only [colour, result8648]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8649_agree : tree8649 = literal8649 := by
  rw [tree8649_def]
  rfl
theorem node8649_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8649 live8649 coloured8649 = result8649 := by
  rw [tree8649_def]
  try dsimp only [colour, result8649]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8650_agree : tree8650 = literal8650 := by
  rw [tree8650_def, tree8648_agree, tree8649_agree]
  rfl
theorem node8650_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8650 live8650 coloured8650 = result8650 := by
  rw [tree8650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8648_eq
  unfold live8648 coloured8648 at child
  try dsimp only [live8650, coloured8650]
  rw [child]
  dsimp only [result8648]
  have child := node8649_eq
  unfold live8649 coloured8649 at child
  try dsimp only [live8650, coloured8650]
  rw [child]
  dsimp only [result8649]
  try dsimp only [colour, result8650]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8651_agree : tree8651 = literal8651 := by
  rw [tree8651_def]
  rfl
theorem node8651_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8651 live8651 coloured8651 = result8651 := by
  rw [tree8651_def]
  try dsimp only [colour, result8651]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8652_agree : tree8652 = literal8652 := by
  rw [tree8652_def, tree8650_agree, tree8651_agree]
  rfl
theorem node8652_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8652 live8652 coloured8652 = result8652 := by
  rw [tree8652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8650_eq
  unfold live8650 coloured8650 at child
  try dsimp only [live8652, coloured8652]
  rw [child]
  dsimp only [result8650]
  have child := node8651_eq
  unfold live8651 coloured8651 at child
  try dsimp only [live8652, coloured8652]
  rw [child]
  dsimp only [result8651]
  try dsimp only [colour, result8652]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8653_agree : tree8653 = literal8653 := by
  rw [tree8653_def]
  rfl
theorem node8653_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8653 live8653 coloured8653 = result8653 := by
  rw [tree8653_def]
  try dsimp only [colour, result8653]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8654_agree : tree8654 = literal8654 := by
  rw [tree8654_def, tree8652_agree, tree8653_agree]
  rfl
theorem node8654_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8654 live8654 coloured8654 = result8654 := by
  rw [tree8654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8652_eq
  unfold live8652 coloured8652 at child
  try dsimp only [live8654, coloured8654]
  rw [child]
  dsimp only [result8652]
  have child := node8653_eq
  unfold live8653 coloured8653 at child
  try dsimp only [live8654, coloured8654]
  rw [child]
  dsimp only [result8653]
  try dsimp only [colour, result8654]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8655_agree : tree8655 = literal8655 := by
  rw [tree8655_def]
  rfl
theorem node8655_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8655 live8655 coloured8655 = result8655 := by
  rw [tree8655_def]
  try dsimp only [colour, result8655]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8656_agree : tree8656 = literal8656 := by
  rw [tree8656_def, tree8654_agree, tree8655_agree]
  rfl
theorem node8656_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8656 live8656 coloured8656 = result8656 := by
  rw [tree8656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8654_eq
  unfold live8654 coloured8654 at child
  try dsimp only [live8656, coloured8656]
  rw [child]
  dsimp only [result8654]
  have child := node8655_eq
  unfold live8655 coloured8655 at child
  try dsimp only [live8656, coloured8656]
  rw [child]
  dsimp only [result8655]
  try dsimp only [colour, result8656]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8657_agree : tree8657 = literal8657 := by
  rw [tree8657_def]
  rfl
theorem node8657_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8657 live8657 coloured8657 = result8657 := by
  rw [tree8657_def]
  try dsimp only [colour, result8657]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8658_agree : tree8658 = literal8658 := by
  rw [tree8658_def, tree8656_agree, tree8657_agree]
  rfl
theorem node8658_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8658 live8658 coloured8658 = result8658 := by
  rw [tree8658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8656_eq
  unfold live8656 coloured8656 at child
  try dsimp only [live8658, coloured8658]
  rw [child]
  dsimp only [result8656]
  have child := node8657_eq
  unfold live8657 coloured8657 at child
  try dsimp only [live8658, coloured8658]
  rw [child]
  dsimp only [result8657]
  try dsimp only [colour, result8658]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8659_agree : tree8659 = literal8659 := by
  rw [tree8659_def]
  rfl
theorem node8659_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8659 live8659 coloured8659 = result8659 := by
  rw [tree8659_def]
  try dsimp only [colour, result8659]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8660_agree : tree8660 = literal8660 := by
  rw [tree8660_def, tree8658_agree, tree8659_agree]
  rfl
theorem node8660_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8660 live8660 coloured8660 = result8660 := by
  rw [tree8660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8658_eq
  unfold live8658 coloured8658 at child
  try dsimp only [live8660, coloured8660]
  rw [child]
  dsimp only [result8658]
  have child := node8659_eq
  unfold live8659 coloured8659 at child
  try dsimp only [live8660, coloured8660]
  rw [child]
  dsimp only [result8659]
  try dsimp only [colour, result8660]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8661_agree : tree8661 = literal8661 := by
  rw [tree8661_def]
  rfl
theorem node8661_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8661 live8661 coloured8661 = result8661 := by
  rw [tree8661_def]
  try dsimp only [colour, result8661]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8662_agree : tree8662 = literal8662 := by
  rw [tree8662_def, tree8660_agree, tree8661_agree]
  rfl
theorem node8662_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8662 live8662 coloured8662 = result8662 := by
  rw [tree8662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8660_eq
  unfold live8660 coloured8660 at child
  try dsimp only [live8662, coloured8662]
  rw [child]
  dsimp only [result8660]
  have child := node8661_eq
  unfold live8661 coloured8661 at child
  try dsimp only [live8662, coloured8662]
  rw [child]
  dsimp only [result8661]
  try dsimp only [colour, result8662]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8663_agree : tree8663 = literal8663 := by
  rw [tree8663_def]
  rfl
theorem node8663_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8663 live8663 coloured8663 = result8663 := by
  rw [tree8663_def]
  try dsimp only [colour, result8663]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8664_agree : tree8664 = literal8664 := by
  rw [tree8664_def, tree8662_agree, tree8663_agree]
  rfl
theorem node8664_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8664 live8664 coloured8664 = result8664 := by
  rw [tree8664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8662_eq
  unfold live8662 coloured8662 at child
  try dsimp only [live8664, coloured8664]
  rw [child]
  dsimp only [result8662]
  have child := node8663_eq
  unfold live8663 coloured8663 at child
  try dsimp only [live8664, coloured8664]
  rw [child]
  dsimp only [result8663]
  try dsimp only [colour, result8664]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8665_agree : tree8665 = literal8665 := by
  rw [tree8665_def]
  rfl
theorem node8665_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8665 live8665 coloured8665 = result8665 := by
  rw [tree8665_def]
  try dsimp only [colour, result8665]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8666_agree : tree8666 = literal8666 := by
  rw [tree8666_def, tree8664_agree, tree8665_agree]
  rfl
theorem node8666_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8666 live8666 coloured8666 = result8666 := by
  rw [tree8666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8664_eq
  unfold live8664 coloured8664 at child
  try dsimp only [live8666, coloured8666]
  rw [child]
  dsimp only [result8664]
  have child := node8665_eq
  unfold live8665 coloured8665 at child
  try dsimp only [live8666, coloured8666]
  rw [child]
  dsimp only [result8665]
  try dsimp only [colour, result8666]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8667_agree : tree8667 = literal8667 := by
  rw [tree8667_def]
  rfl
theorem node8667_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8667 live8667 coloured8667 = result8667 := by
  rw [tree8667_def]
  try dsimp only [colour, result8667]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8668_agree : tree8668 = literal8668 := by
  rw [tree8668_def, tree8666_agree, tree8667_agree]
  rfl
theorem node8668_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8668 live8668 coloured8668 = result8668 := by
  rw [tree8668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8666_eq
  unfold live8666 coloured8666 at child
  try dsimp only [live8668, coloured8668]
  rw [child]
  dsimp only [result8666]
  have child := node8667_eq
  unfold live8667 coloured8667 at child
  try dsimp only [live8668, coloured8668]
  rw [child]
  dsimp only [result8667]
  try dsimp only [colour, result8668]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8669_agree : tree8669 = literal8669 := by
  rw [tree8669_def]
  rfl
theorem node8669_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8669 live8669 coloured8669 = result8669 := by
  rw [tree8669_def]
  try dsimp only [colour, result8669]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8670_agree : tree8670 = literal8670 := by
  rw [tree8670_def, tree8668_agree, tree8669_agree]
  rfl
theorem node8670_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8670 live8670 coloured8670 = result8670 := by
  rw [tree8670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8668_eq
  unfold live8668 coloured8668 at child
  try dsimp only [live8670, coloured8670]
  rw [child]
  dsimp only [result8668]
  have child := node8669_eq
  unfold live8669 coloured8669 at child
  try dsimp only [live8670, coloured8670]
  rw [child]
  dsimp only [result8669]
  try dsimp only [colour, result8670]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8671_agree : tree8671 = literal8671 := by
  rw [tree8671_def]
  rfl
theorem node8671_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8671 live8671 coloured8671 = result8671 := by
  rw [tree8671_def]
  try dsimp only [colour, result8671]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8672_agree : tree8672 = literal8672 := by
  rw [tree8672_def, tree8670_agree, tree8671_agree]
  rfl
theorem node8672_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8672 live8672 coloured8672 = result8672 := by
  rw [tree8672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8670_eq
  unfold live8670 coloured8670 at child
  try dsimp only [live8672, coloured8672]
  rw [child]
  dsimp only [result8670]
  have child := node8671_eq
  unfold live8671 coloured8671 at child
  try dsimp only [live8672, coloured8672]
  rw [child]
  dsimp only [result8671]
  try dsimp only [colour, result8672]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8673_agree : tree8673 = literal8673 := by
  rw [tree8673_def]
  rfl
theorem node8673_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8673 live8673 coloured8673 = result8673 := by
  rw [tree8673_def]
  try dsimp only [colour, result8673]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8674_agree : tree8674 = literal8674 := by
  rw [tree8674_def, tree8672_agree, tree8673_agree]
  rfl
theorem node8674_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8674 live8674 coloured8674 = result8674 := by
  rw [tree8674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8672_eq
  unfold live8672 coloured8672 at child
  try dsimp only [live8674, coloured8674]
  rw [child]
  dsimp only [result8672]
  have child := node8673_eq
  unfold live8673 coloured8673 at child
  try dsimp only [live8674, coloured8674]
  rw [child]
  dsimp only [result8673]
  try dsimp only [colour, result8674]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8675_agree : tree8675 = literal8675 := by
  rw [tree8675_def]
  rfl
theorem node8675_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8675 live8675 coloured8675 = result8675 := by
  rw [tree8675_def]
  try dsimp only [colour, result8675]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8676_agree : tree8676 = literal8676 := by
  rw [tree8676_def, tree8674_agree, tree8675_agree]
  rfl
theorem node8676_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8676 live8676 coloured8676 = result8676 := by
  rw [tree8676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8674_eq
  unfold live8674 coloured8674 at child
  try dsimp only [live8676, coloured8676]
  rw [child]
  dsimp only [result8674]
  have child := node8675_eq
  unfold live8675 coloured8675 at child
  try dsimp only [live8676, coloured8676]
  rw [child]
  dsimp only [result8675]
  try dsimp only [colour, result8676]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8677_agree : tree8677 = literal8677 := by
  rw [tree8677_def]
  rfl
theorem node8677_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8677 live8677 coloured8677 = result8677 := by
  rw [tree8677_def]
  try dsimp only [colour, result8677]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8678_agree : tree8678 = literal8678 := by
  rw [tree8678_def, tree8676_agree, tree8677_agree]
  rfl
theorem node8678_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8678 live8678 coloured8678 = result8678 := by
  rw [tree8678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8676_eq
  unfold live8676 coloured8676 at child
  try dsimp only [live8678, coloured8678]
  rw [child]
  dsimp only [result8676]
  have child := node8677_eq
  unfold live8677 coloured8677 at child
  try dsimp only [live8678, coloured8678]
  rw [child]
  dsimp only [result8677]
  try dsimp only [colour, result8678]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8679_agree : tree8679 = literal8679 := by
  rw [tree8679_def]
  rfl
theorem node8679_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8679 live8679 coloured8679 = result8679 := by
  rw [tree8679_def]
  try dsimp only [colour, result8679]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8680_agree : tree8680 = literal8680 := by
  rw [tree8680_def, tree8678_agree, tree8679_agree]
  rfl
theorem node8680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8680 live8680 coloured8680 = result8680 := by
  rw [tree8680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8678_eq
  unfold live8678 coloured8678 at child
  try dsimp only [live8680, coloured8680]
  rw [child]
  dsimp only [result8678]
  have child := node8679_eq
  unfold live8679 coloured8679 at child
  try dsimp only [live8680, coloured8680]
  rw [child]
  dsimp only [result8679]
  try dsimp only [colour, result8680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8681_agree : tree8681 = literal8681 := by
  rw [tree8681_def]
  rfl
theorem node8681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8681 live8681 coloured8681 = result8681 := by
  rw [tree8681_def]
  try dsimp only [colour, result8681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8682_agree : tree8682 = literal8682 := by
  rw [tree8682_def, tree8680_agree, tree8681_agree]
  rfl
theorem node8682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8682 live8682 coloured8682 = result8682 := by
  rw [tree8682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8680_eq
  unfold live8680 coloured8680 at child
  try dsimp only [live8682, coloured8682]
  rw [child]
  dsimp only [result8680]
  have child := node8681_eq
  unfold live8681 coloured8681 at child
  try dsimp only [live8682, coloured8682]
  rw [child]
  dsimp only [result8681]
  try dsimp only [colour, result8682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8683_agree : tree8683 = literal8683 := by
  rw [tree8683_def]
  rfl
theorem node8683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8683 live8683 coloured8683 = result8683 := by
  rw [tree8683_def]
  try dsimp only [colour, result8683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8684_agree : tree8684 = literal8684 := by
  rw [tree8684_def, tree8682_agree, tree8683_agree]
  rfl
theorem node8684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8684 live8684 coloured8684 = result8684 := by
  rw [tree8684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8682_eq
  unfold live8682 coloured8682 at child
  try dsimp only [live8684, coloured8684]
  rw [child]
  dsimp only [result8682]
  have child := node8683_eq
  unfold live8683 coloured8683 at child
  try dsimp only [live8684, coloured8684]
  rw [child]
  dsimp only [result8683]
  try dsimp only [colour, result8684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8685_agree : tree8685 = literal8685 := by
  rw [tree8685_def]
  rfl
theorem node8685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8685 live8685 coloured8685 = result8685 := by
  rw [tree8685_def]
  try dsimp only [colour, result8685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8686_agree : tree8686 = literal8686 := by
  rw [tree8686_def, tree8684_agree, tree8685_agree]
  rfl
theorem node8686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8686 live8686 coloured8686 = result8686 := by
  rw [tree8686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8684_eq
  unfold live8684 coloured8684 at child
  try dsimp only [live8686, coloured8686]
  rw [child]
  dsimp only [result8684]
  have child := node8685_eq
  unfold live8685 coloured8685 at child
  try dsimp only [live8686, coloured8686]
  rw [child]
  dsimp only [result8685]
  try dsimp only [colour, result8686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8687_agree : tree8687 = literal8687 := by
  rw [tree8687_def]
  rfl
theorem node8687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8687 live8687 coloured8687 = result8687 := by
  rw [tree8687_def]
  try dsimp only [colour, result8687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8688_agree : tree8688 = literal8688 := by
  rw [tree8688_def, tree8686_agree, tree8687_agree]
  rfl
theorem node8688_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8688 live8688 coloured8688 = result8688 := by
  rw [tree8688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8686_eq
  unfold live8686 coloured8686 at child
  try dsimp only [live8688, coloured8688]
  rw [child]
  dsimp only [result8686]
  have child := node8687_eq
  unfold live8687 coloured8687 at child
  try dsimp only [live8688, coloured8688]
  rw [child]
  dsimp only [result8687]
  try dsimp only [colour, result8688]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8689_agree : tree8689 = literal8689 := by
  rw [tree8689_def]
  rfl
theorem node8689_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8689 live8689 coloured8689 = result8689 := by
  rw [tree8689_def]
  try dsimp only [colour, result8689]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8690_agree : tree8690 = literal8690 := by
  rw [tree8690_def, tree8688_agree, tree8689_agree]
  rfl
theorem node8690_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8690 live8690 coloured8690 = result8690 := by
  rw [tree8690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8688_eq
  unfold live8688 coloured8688 at child
  try dsimp only [live8690, coloured8690]
  rw [child]
  dsimp only [result8688]
  have child := node8689_eq
  unfold live8689 coloured8689 at child
  try dsimp only [live8690, coloured8690]
  rw [child]
  dsimp only [result8689]
  try dsimp only [colour, result8690]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8691_agree : tree8691 = literal8691 := by
  rw [tree8691_def]
  rfl
theorem node8691_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8691 live8691 coloured8691 = result8691 := by
  rw [tree8691_def]
  try dsimp only [colour, result8691]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8692_agree : tree8692 = literal8692 := by
  rw [tree8692_def, tree8690_agree, tree8691_agree]
  rfl
theorem node8692_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8692 live8692 coloured8692 = result8692 := by
  rw [tree8692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8690_eq
  unfold live8690 coloured8690 at child
  try dsimp only [live8692, coloured8692]
  rw [child]
  dsimp only [result8690]
  have child := node8691_eq
  unfold live8691 coloured8691 at child
  try dsimp only [live8692, coloured8692]
  rw [child]
  dsimp only [result8691]
  try dsimp only [colour, result8692]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8693_agree : tree8693 = literal8693 := by
  rw [tree8693_def]
  rfl
theorem node8693_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8693 live8693 coloured8693 = result8693 := by
  rw [tree8693_def]
  try dsimp only [colour, result8693]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8694_agree : tree8694 = literal8694 := by
  rw [tree8694_def, tree8692_agree, tree8693_agree]
  rfl
theorem node8694_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8694 live8694 coloured8694 = result8694 := by
  rw [tree8694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8692_eq
  unfold live8692 coloured8692 at child
  try dsimp only [live8694, coloured8694]
  rw [child]
  dsimp only [result8692]
  have child := node8693_eq
  unfold live8693 coloured8693 at child
  try dsimp only [live8694, coloured8694]
  rw [child]
  dsimp only [result8693]
  try dsimp only [colour, result8694]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8695_agree : tree8695 = literal8695 := by
  rw [tree8695_def]
  rfl
theorem node8695_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8695 live8695 coloured8695 = result8695 := by
  rw [tree8695_def]
  try dsimp only [colour, result8695]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8696_agree : tree8696 = literal8696 := by
  rw [tree8696_def, tree8694_agree, tree8695_agree]
  rfl
theorem node8696_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8696 live8696 coloured8696 = result8696 := by
  rw [tree8696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8694_eq
  unfold live8694 coloured8694 at child
  try dsimp only [live8696, coloured8696]
  rw [child]
  dsimp only [result8694]
  have child := node8695_eq
  unfold live8695 coloured8695 at child
  try dsimp only [live8696, coloured8696]
  rw [child]
  dsimp only [result8695]
  try dsimp only [colour, result8696]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8697_agree : tree8697 = literal8697 := by
  rw [tree8697_def]
  rfl
theorem node8697_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8697 live8697 coloured8697 = result8697 := by
  rw [tree8697_def]
  try dsimp only [colour, result8697]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8698_agree : tree8698 = literal8698 := by
  rw [tree8698_def, tree8696_agree, tree8697_agree]
  rfl
theorem node8698_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8698 live8698 coloured8698 = result8698 := by
  rw [tree8698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8696_eq
  unfold live8696 coloured8696 at child
  try dsimp only [live8698, coloured8698]
  rw [child]
  dsimp only [result8696]
  have child := node8697_eq
  unfold live8697 coloured8697 at child
  try dsimp only [live8698, coloured8698]
  rw [child]
  dsimp only [result8697]
  try dsimp only [colour, result8698]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8699_agree : tree8699 = literal8699 := by
  rw [tree8699_def]
  rfl
theorem node8699_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8699 live8699 coloured8699 = result8699 := by
  rw [tree8699_def]
  try dsimp only [colour, result8699]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8700_agree : tree8700 = literal8700 := by
  rw [tree8700_def, tree8698_agree, tree8699_agree]
  rfl
theorem node8700_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8700 live8700 coloured8700 = result8700 := by
  rw [tree8700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8698_eq
  unfold live8698 coloured8698 at child
  try dsimp only [live8700, coloured8700]
  rw [child]
  dsimp only [result8698]
  have child := node8699_eq
  unfold live8699 coloured8699 at child
  try dsimp only [live8700, coloured8700]
  rw [child]
  dsimp only [result8699]
  try dsimp only [colour, result8700]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8701_agree : tree8701 = literal8701 := by
  rw [tree8701_def]
  rfl
theorem node8701_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8701 live8701 coloured8701 = result8701 := by
  rw [tree8701_def]
  try dsimp only [colour, result8701]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8702_agree : tree8702 = literal8702 := by
  rw [tree8702_def, tree8700_agree, tree8701_agree]
  rfl
theorem node8702_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8702 live8702 coloured8702 = result8702 := by
  rw [tree8702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8700_eq
  unfold live8700 coloured8700 at child
  try dsimp only [live8702, coloured8702]
  rw [child]
  dsimp only [result8700]
  have child := node8701_eq
  unfold live8701 coloured8701 at child
  try dsimp only [live8702, coloured8702]
  rw [child]
  dsimp only [result8701]
  try dsimp only [colour, result8702]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8703_agree : tree8703 = literal8703 := by
  rw [tree8703_def]
  rfl
theorem node8703_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8703 live8703 coloured8703 = result8703 := by
  rw [tree8703_def]
  try dsimp only [colour, result8703]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8704_agree : tree8704 = literal8704 := by
  rw [tree8704_def, tree8702_agree, tree8703_agree]
  rfl
theorem node8704_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8704 live8704 coloured8704 = result8704 := by
  rw [tree8704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8702_eq
  unfold live8702 coloured8702 at child
  try dsimp only [live8704, coloured8704]
  rw [child]
  dsimp only [result8702]
  have child := node8703_eq
  unfold live8703 coloured8703 at child
  try dsimp only [live8704, coloured8704]
  rw [child]
  dsimp only [result8703]
  try dsimp only [colour, result8704]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8705_agree : tree8705 = literal8705 := by
  rw [tree8705_def]
  rfl
theorem node8705_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8705 live8705 coloured8705 = result8705 := by
  rw [tree8705_def]
  try dsimp only [colour, result8705]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8706_agree : tree8706 = literal8706 := by
  rw [tree8706_def, tree8704_agree, tree8705_agree]
  rfl
theorem node8706_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8706 live8706 coloured8706 = result8706 := by
  rw [tree8706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8704_eq
  unfold live8704 coloured8704 at child
  try dsimp only [live8706, coloured8706]
  rw [child]
  dsimp only [result8704]
  have child := node8705_eq
  unfold live8705 coloured8705 at child
  try dsimp only [live8706, coloured8706]
  rw [child]
  dsimp only [result8705]
  try dsimp only [colour, result8706]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8707_agree : tree8707 = literal8707 := by
  rw [tree8707_def]
  rfl
theorem node8707_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8707 live8707 coloured8707 = result8707 := by
  rw [tree8707_def]
  try dsimp only [colour, result8707]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8708_agree : tree8708 = literal8708 := by
  rw [tree8708_def, tree8706_agree, tree8707_agree]
  rfl
theorem node8708_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8708 live8708 coloured8708 = result8708 := by
  rw [tree8708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8706_eq
  unfold live8706 coloured8706 at child
  try dsimp only [live8708, coloured8708]
  rw [child]
  dsimp only [result8706]
  have child := node8707_eq
  unfold live8707 coloured8707 at child
  try dsimp only [live8708, coloured8708]
  rw [child]
  dsimp only [result8707]
  try dsimp only [colour, result8708]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8709_agree : tree8709 = literal8709 := by
  rw [tree8709_def]
  rfl
theorem node8709_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8709 live8709 coloured8709 = result8709 := by
  rw [tree8709_def]
  try dsimp only [colour, result8709]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8710_agree : tree8710 = literal8710 := by
  rw [tree8710_def, tree8708_agree, tree8709_agree]
  rfl
theorem node8710_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8710 live8710 coloured8710 = result8710 := by
  rw [tree8710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8708_eq
  unfold live8708 coloured8708 at child
  try dsimp only [live8710, coloured8710]
  rw [child]
  dsimp only [result8708]
  have child := node8709_eq
  unfold live8709 coloured8709 at child
  try dsimp only [live8710, coloured8710]
  rw [child]
  dsimp only [result8709]
  try dsimp only [colour, result8710]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8711_agree : tree8711 = literal8711 := by
  rw [tree8711_def]
  rfl
theorem node8711_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8711 live8711 coloured8711 = result8711 := by
  rw [tree8711_def]
  try dsimp only [colour, result8711]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8712_agree : tree8712 = literal8712 := by
  rw [tree8712_def, tree8710_agree, tree8711_agree]
  rfl
theorem node8712_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8712 live8712 coloured8712 = result8712 := by
  rw [tree8712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8710_eq
  unfold live8710 coloured8710 at child
  try dsimp only [live8712, coloured8712]
  rw [child]
  dsimp only [result8710]
  have child := node8711_eq
  unfold live8711 coloured8711 at child
  try dsimp only [live8712, coloured8712]
  rw [child]
  dsimp only [result8711]
  try dsimp only [colour, result8712]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8713_agree : tree8713 = literal8713 := by
  rw [tree8713_def]
  rfl
theorem node8713_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8713 live8713 coloured8713 = result8713 := by
  rw [tree8713_def]
  try dsimp only [colour, result8713]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8714_agree : tree8714 = literal8714 := by
  rw [tree8714_def, tree8712_agree, tree8713_agree]
  rfl
theorem node8714_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8714 live8714 coloured8714 = result8714 := by
  rw [tree8714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8712_eq
  unfold live8712 coloured8712 at child
  try dsimp only [live8714, coloured8714]
  rw [child]
  dsimp only [result8712]
  have child := node8713_eq
  unfold live8713 coloured8713 at child
  try dsimp only [live8714, coloured8714]
  rw [child]
  dsimp only [result8713]
  try dsimp only [colour, result8714]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8715_agree : tree8715 = literal8715 := by
  rw [tree8715_def]
  rfl
theorem node8715_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8715 live8715 coloured8715 = result8715 := by
  rw [tree8715_def]
  try dsimp only [colour, result8715]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8716_agree : tree8716 = literal8716 := by
  rw [tree8716_def, tree8714_agree, tree8715_agree]
  rfl
theorem node8716_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8716 live8716 coloured8716 = result8716 := by
  rw [tree8716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8714_eq
  unfold live8714 coloured8714 at child
  try dsimp only [live8716, coloured8716]
  rw [child]
  dsimp only [result8714]
  have child := node8715_eq
  unfold live8715 coloured8715 at child
  try dsimp only [live8716, coloured8716]
  rw [child]
  dsimp only [result8715]
  try dsimp only [colour, result8716]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8717_agree : tree8717 = literal8717 := by
  rw [tree8717_def]
  rfl
theorem node8717_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8717 live8717 coloured8717 = result8717 := by
  rw [tree8717_def]
  try dsimp only [colour, result8717]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8718_agree : tree8718 = literal8718 := by
  rw [tree8718_def, tree8716_agree, tree8717_agree]
  rfl
theorem node8718_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8718 live8718 coloured8718 = result8718 := by
  rw [tree8718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8716_eq
  unfold live8716 coloured8716 at child
  try dsimp only [live8718, coloured8718]
  rw [child]
  dsimp only [result8716]
  have child := node8717_eq
  unfold live8717 coloured8717 at child
  try dsimp only [live8718, coloured8718]
  rw [child]
  dsimp only [result8717]
  try dsimp only [colour, result8718]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8719_agree : tree8719 = literal8719 := by
  rw [tree8719_def]
  rfl
theorem node8719_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8719 live8719 coloured8719 = result8719 := by
  rw [tree8719_def]
  try dsimp only [colour, result8719]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8720_agree : tree8720 = literal8720 := by
  rw [tree8720_def, tree8718_agree, tree8719_agree]
  rfl
theorem node8720_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8720 live8720 coloured8720 = result8720 := by
  rw [tree8720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8718_eq
  unfold live8718 coloured8718 at child
  try dsimp only [live8720, coloured8720]
  rw [child]
  dsimp only [result8718]
  have child := node8719_eq
  unfold live8719 coloured8719 at child
  try dsimp only [live8720, coloured8720]
  rw [child]
  dsimp only [result8719]
  try dsimp only [colour, result8720]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8721_agree : tree8721 = literal8721 := by
  rw [tree8721_def]
  rfl
theorem node8721_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8721 live8721 coloured8721 = result8721 := by
  rw [tree8721_def]
  try dsimp only [colour, result8721]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8722_agree : tree8722 = literal8722 := by
  rw [tree8722_def, tree8720_agree, tree8721_agree]
  rfl
theorem node8722_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8722 live8722 coloured8722 = result8722 := by
  rw [tree8722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8720_eq
  unfold live8720 coloured8720 at child
  try dsimp only [live8722, coloured8722]
  rw [child]
  dsimp only [result8720]
  have child := node8721_eq
  unfold live8721 coloured8721 at child
  try dsimp only [live8722, coloured8722]
  rw [child]
  dsimp only [result8721]
  try dsimp only [colour, result8722]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8723_agree : tree8723 = literal8723 := by
  rw [tree8723_def]
  rfl
theorem node8723_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8723 live8723 coloured8723 = result8723 := by
  rw [tree8723_def]
  try dsimp only [colour, result8723]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8724_agree : tree8724 = literal8724 := by
  rw [tree8724_def, tree8722_agree, tree8723_agree]
  rfl
theorem node8724_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8724 live8724 coloured8724 = result8724 := by
  rw [tree8724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8722_eq
  unfold live8722 coloured8722 at child
  try dsimp only [live8724, coloured8724]
  rw [child]
  dsimp only [result8722]
  have child := node8723_eq
  unfold live8723 coloured8723 at child
  try dsimp only [live8724, coloured8724]
  rw [child]
  dsimp only [result8723]
  try dsimp only [colour, result8724]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8725_agree : tree8725 = literal8725 := by
  rw [tree8725_def]
  rfl
theorem node8725_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8725 live8725 coloured8725 = result8725 := by
  rw [tree8725_def]
  try dsimp only [colour, result8725]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8726_agree : tree8726 = literal8726 := by
  rw [tree8726_def, tree8724_agree, tree8725_agree]
  rfl
theorem node8726_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8726 live8726 coloured8726 = result8726 := by
  rw [tree8726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8724_eq
  unfold live8724 coloured8724 at child
  try dsimp only [live8726, coloured8726]
  rw [child]
  dsimp only [result8724]
  have child := node8725_eq
  unfold live8725 coloured8725 at child
  try dsimp only [live8726, coloured8726]
  rw [child]
  dsimp only [result8725]
  try dsimp only [colour, result8726]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8727_agree : tree8727 = literal8727 := by
  rw [tree8727_def]
  rfl
theorem node8727_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8727 live8727 coloured8727 = result8727 := by
  rw [tree8727_def]
  try dsimp only [colour, result8727]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8728_agree : tree8728 = literal8728 := by
  rw [tree8728_def, tree8726_agree, tree8727_agree]
  rfl
theorem node8728_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8728 live8728 coloured8728 = result8728 := by
  rw [tree8728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8726_eq
  unfold live8726 coloured8726 at child
  try dsimp only [live8728, coloured8728]
  rw [child]
  dsimp only [result8726]
  have child := node8727_eq
  unfold live8727 coloured8727 at child
  try dsimp only [live8728, coloured8728]
  rw [child]
  dsimp only [result8727]
  try dsimp only [colour, result8728]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8729_agree : tree8729 = literal8729 := by
  rw [tree8729_def]
  rfl
theorem node8729_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8729 live8729 coloured8729 = result8729 := by
  rw [tree8729_def]
  try dsimp only [colour, result8729]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8730_agree : tree8730 = literal8730 := by
  rw [tree8730_def, tree8728_agree, tree8729_agree]
  rfl
theorem node8730_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8730 live8730 coloured8730 = result8730 := by
  rw [tree8730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8728_eq
  unfold live8728 coloured8728 at child
  try dsimp only [live8730, coloured8730]
  rw [child]
  dsimp only [result8728]
  have child := node8729_eq
  unfold live8729 coloured8729 at child
  try dsimp only [live8730, coloured8730]
  rw [child]
  dsimp only [result8729]
  try dsimp only [colour, result8730]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8731_agree : tree8731 = literal8731 := by
  rw [tree8731_def]
  rfl
theorem node8731_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8731 live8731 coloured8731 = result8731 := by
  rw [tree8731_def]
  try dsimp only [colour, result8731]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8732_agree : tree8732 = literal8732 := by
  rw [tree8732_def, tree8730_agree, tree8731_agree]
  rfl
theorem node8732_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8732 live8732 coloured8732 = result8732 := by
  rw [tree8732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8730_eq
  unfold live8730 coloured8730 at child
  try dsimp only [live8732, coloured8732]
  rw [child]
  dsimp only [result8730]
  have child := node8731_eq
  unfold live8731 coloured8731 at child
  try dsimp only [live8732, coloured8732]
  rw [child]
  dsimp only [result8731]
  try dsimp only [colour, result8732]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8733_agree : tree8733 = literal8733 := by
  rw [tree8733_def]
  rfl
theorem node8733_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8733 live8733 coloured8733 = result8733 := by
  rw [tree8733_def]
  try dsimp only [colour, result8733]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8734_agree : tree8734 = literal8734 := by
  rw [tree8734_def, tree8732_agree, tree8733_agree]
  rfl
theorem node8734_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8734 live8734 coloured8734 = result8734 := by
  rw [tree8734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8732_eq
  unfold live8732 coloured8732 at child
  try dsimp only [live8734, coloured8734]
  rw [child]
  dsimp only [result8732]
  have child := node8733_eq
  unfold live8733 coloured8733 at child
  try dsimp only [live8734, coloured8734]
  rw [child]
  dsimp only [result8733]
  try dsimp only [colour, result8734]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8735_agree : tree8735 = literal8735 := by
  rw [tree8735_def]
  rfl
theorem node8735_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8735 live8735 coloured8735 = result8735 := by
  rw [tree8735_def]
  try dsimp only [colour, result8735]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
