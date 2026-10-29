import InitECandidate.Proofs.ClashStages713.Proof58
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree5664_agree : tree5664 = literal5664 := by
  rw [tree5664_def, tree5662_agree, tree5663_agree]
  rfl
theorem node5664_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5664 live5664 coloured5664 = result5664 := by
  rw [tree5664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5662_eq
  unfold live5662 coloured5662 at child
  try dsimp only [live5664, coloured5664]
  rw [child]
  dsimp only [result5662]
  have child := node5663_eq
  unfold live5663 coloured5663 at child
  try dsimp only [live5664, coloured5664]
  rw [child]
  dsimp only [result5663]
  try dsimp only [colour, result5664]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5665_agree : tree5665 = literal5665 := by
  rw [tree5665_def]
  rfl
theorem node5665_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5665 live5665 coloured5665 = result5665 := by
  rw [tree5665_def]
  try dsimp only [colour, result5665]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5666_agree : tree5666 = literal5666 := by
  rw [tree5666_def, tree5664_agree, tree5665_agree]
  rfl
theorem node5666_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5666 live5666 coloured5666 = result5666 := by
  rw [tree5666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5664_eq
  unfold live5664 coloured5664 at child
  try dsimp only [live5666, coloured5666]
  rw [child]
  dsimp only [result5664]
  have child := node5665_eq
  unfold live5665 coloured5665 at child
  try dsimp only [live5666, coloured5666]
  rw [child]
  dsimp only [result5665]
  try dsimp only [colour, result5666]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5667_agree : tree5667 = literal5667 := by
  rw [tree5667_def]
  rfl
theorem node5667_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5667 live5667 coloured5667 = result5667 := by
  rw [tree5667_def]
  try dsimp only [colour, result5667]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5668_agree : tree5668 = literal5668 := by
  rw [tree5668_def, tree5666_agree, tree5667_agree]
  rfl
theorem node5668_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5668 live5668 coloured5668 = result5668 := by
  rw [tree5668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5666_eq
  unfold live5666 coloured5666 at child
  try dsimp only [live5668, coloured5668]
  rw [child]
  dsimp only [result5666]
  have child := node5667_eq
  unfold live5667 coloured5667 at child
  try dsimp only [live5668, coloured5668]
  rw [child]
  dsimp only [result5667]
  try dsimp only [colour, result5668]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5669_agree : tree5669 = literal5669 := by
  rw [tree5669_def]
  rfl
theorem node5669_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5669 live5669 coloured5669 = result5669 := by
  rw [tree5669_def]
  try dsimp only [colour, result5669]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5670_agree : tree5670 = literal5670 := by
  rw [tree5670_def, tree5668_agree, tree5669_agree]
  rfl
theorem node5670_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5670 live5670 coloured5670 = result5670 := by
  rw [tree5670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5668_eq
  unfold live5668 coloured5668 at child
  try dsimp only [live5670, coloured5670]
  rw [child]
  dsimp only [result5668]
  have child := node5669_eq
  unfold live5669 coloured5669 at child
  try dsimp only [live5670, coloured5670]
  rw [child]
  dsimp only [result5669]
  try dsimp only [colour, result5670]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5671_agree : tree5671 = literal5671 := by
  rw [tree5671_def]
  rfl
theorem node5671_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5671 live5671 coloured5671 = result5671 := by
  rw [tree5671_def]
  try dsimp only [colour, result5671]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5672_agree : tree5672 = literal5672 := by
  rw [tree5672_def, tree5670_agree, tree5671_agree]
  rfl
theorem node5672_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5672 live5672 coloured5672 = result5672 := by
  rw [tree5672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5670_eq
  unfold live5670 coloured5670 at child
  try dsimp only [live5672, coloured5672]
  rw [child]
  dsimp only [result5670]
  have child := node5671_eq
  unfold live5671 coloured5671 at child
  try dsimp only [live5672, coloured5672]
  rw [child]
  dsimp only [result5671]
  try dsimp only [colour, result5672]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5673_agree : tree5673 = literal5673 := by
  rw [tree5673_def]
  rfl
theorem node5673_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5673 live5673 coloured5673 = result5673 := by
  rw [tree5673_def]
  try dsimp only [colour, result5673]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5674_agree : tree5674 = literal5674 := by
  rw [tree5674_def, tree5672_agree, tree5673_agree]
  rfl
theorem node5674_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5674 live5674 coloured5674 = result5674 := by
  rw [tree5674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5672_eq
  unfold live5672 coloured5672 at child
  try dsimp only [live5674, coloured5674]
  rw [child]
  dsimp only [result5672]
  have child := node5673_eq
  unfold live5673 coloured5673 at child
  try dsimp only [live5674, coloured5674]
  rw [child]
  dsimp only [result5673]
  try dsimp only [colour, result5674]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5675_agree : tree5675 = literal5675 := by
  rw [tree5675_def]
  rfl
theorem node5675_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5675 live5675 coloured5675 = result5675 := by
  rw [tree5675_def]
  try dsimp only [colour, result5675]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5676_agree : tree5676 = literal5676 := by
  rw [tree5676_def, tree5674_agree, tree5675_agree]
  rfl
theorem node5676_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5676 live5676 coloured5676 = result5676 := by
  rw [tree5676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5674_eq
  unfold live5674 coloured5674 at child
  try dsimp only [live5676, coloured5676]
  rw [child]
  dsimp only [result5674]
  have child := node5675_eq
  unfold live5675 coloured5675 at child
  try dsimp only [live5676, coloured5676]
  rw [child]
  dsimp only [result5675]
  try dsimp only [colour, result5676]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5677_agree : tree5677 = literal5677 := by
  rw [tree5677_def]
  rfl
theorem node5677_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5677 live5677 coloured5677 = result5677 := by
  rw [tree5677_def]
  try dsimp only [colour, result5677]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5678_agree : tree5678 = literal5678 := by
  rw [tree5678_def, tree5676_agree, tree5677_agree]
  rfl
theorem node5678_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5678 live5678 coloured5678 = result5678 := by
  rw [tree5678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5676_eq
  unfold live5676 coloured5676 at child
  try dsimp only [live5678, coloured5678]
  rw [child]
  dsimp only [result5676]
  have child := node5677_eq
  unfold live5677 coloured5677 at child
  try dsimp only [live5678, coloured5678]
  rw [child]
  dsimp only [result5677]
  try dsimp only [colour, result5678]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5679_agree : tree5679 = literal5679 := by
  rw [tree5679_def]
  rfl
theorem node5679_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5679 live5679 coloured5679 = result5679 := by
  rw [tree5679_def]
  try dsimp only [colour, result5679]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5680_agree : tree5680 = literal5680 := by
  rw [tree5680_def, tree5678_agree, tree5679_agree]
  rfl
theorem node5680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5680 live5680 coloured5680 = result5680 := by
  rw [tree5680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5678_eq
  unfold live5678 coloured5678 at child
  try dsimp only [live5680, coloured5680]
  rw [child]
  dsimp only [result5678]
  have child := node5679_eq
  unfold live5679 coloured5679 at child
  try dsimp only [live5680, coloured5680]
  rw [child]
  dsimp only [result5679]
  try dsimp only [colour, result5680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5681_agree : tree5681 = literal5681 := by
  rw [tree5681_def]
  rfl
theorem node5681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5681 live5681 coloured5681 = result5681 := by
  rw [tree5681_def]
  try dsimp only [colour, result5681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5682_agree : tree5682 = literal5682 := by
  rw [tree5682_def, tree5680_agree, tree5681_agree]
  rfl
theorem node5682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5682 live5682 coloured5682 = result5682 := by
  rw [tree5682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5680_eq
  unfold live5680 coloured5680 at child
  try dsimp only [live5682, coloured5682]
  rw [child]
  dsimp only [result5680]
  have child := node5681_eq
  unfold live5681 coloured5681 at child
  try dsimp only [live5682, coloured5682]
  rw [child]
  dsimp only [result5681]
  try dsimp only [colour, result5682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5683_agree : tree5683 = literal5683 := by
  rw [tree5683_def]
  rfl
theorem node5683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5683 live5683 coloured5683 = result5683 := by
  rw [tree5683_def]
  try dsimp only [colour, result5683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5684_agree : tree5684 = literal5684 := by
  rw [tree5684_def, tree5682_agree, tree5683_agree]
  rfl
theorem node5684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5684 live5684 coloured5684 = result5684 := by
  rw [tree5684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5682_eq
  unfold live5682 coloured5682 at child
  try dsimp only [live5684, coloured5684]
  rw [child]
  dsimp only [result5682]
  have child := node5683_eq
  unfold live5683 coloured5683 at child
  try dsimp only [live5684, coloured5684]
  rw [child]
  dsimp only [result5683]
  try dsimp only [colour, result5684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5685_agree : tree5685 = literal5685 := by
  rw [tree5685_def]
  rfl
theorem node5685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5685 live5685 coloured5685 = result5685 := by
  rw [tree5685_def]
  try dsimp only [colour, result5685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5686_agree : tree5686 = literal5686 := by
  rw [tree5686_def, tree5684_agree, tree5685_agree]
  rfl
theorem node5686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5686 live5686 coloured5686 = result5686 := by
  rw [tree5686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5684_eq
  unfold live5684 coloured5684 at child
  try dsimp only [live5686, coloured5686]
  rw [child]
  dsimp only [result5684]
  have child := node5685_eq
  unfold live5685 coloured5685 at child
  try dsimp only [live5686, coloured5686]
  rw [child]
  dsimp only [result5685]
  try dsimp only [colour, result5686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5687_agree : tree5687 = literal5687 := by
  rw [tree5687_def]
  rfl
theorem node5687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5687 live5687 coloured5687 = result5687 := by
  rw [tree5687_def]
  try dsimp only [colour, result5687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5688_agree : tree5688 = literal5688 := by
  rw [tree5688_def, tree5686_agree, tree5687_agree]
  rfl
theorem node5688_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5688 live5688 coloured5688 = result5688 := by
  rw [tree5688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5686_eq
  unfold live5686 coloured5686 at child
  try dsimp only [live5688, coloured5688]
  rw [child]
  dsimp only [result5686]
  have child := node5687_eq
  unfold live5687 coloured5687 at child
  try dsimp only [live5688, coloured5688]
  rw [child]
  dsimp only [result5687]
  try dsimp only [colour, result5688]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5689_agree : tree5689 = literal5689 := by
  rw [tree5689_def]
  rfl
theorem node5689_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5689 live5689 coloured5689 = result5689 := by
  rw [tree5689_def]
  try dsimp only [colour, result5689]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5690_agree : tree5690 = literal5690 := by
  rw [tree5690_def, tree5688_agree, tree5689_agree]
  rfl
theorem node5690_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5690 live5690 coloured5690 = result5690 := by
  rw [tree5690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5688_eq
  unfold live5688 coloured5688 at child
  try dsimp only [live5690, coloured5690]
  rw [child]
  dsimp only [result5688]
  have child := node5689_eq
  unfold live5689 coloured5689 at child
  try dsimp only [live5690, coloured5690]
  rw [child]
  dsimp only [result5689]
  try dsimp only [colour, result5690]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5691_agree : tree5691 = literal5691 := by
  rw [tree5691_def]
  rfl
theorem node5691_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5691 live5691 coloured5691 = result5691 := by
  rw [tree5691_def]
  try dsimp only [colour, result5691]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5692_agree : tree5692 = literal5692 := by
  rw [tree5692_def, tree5690_agree, tree5691_agree]
  rfl
theorem node5692_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5692 live5692 coloured5692 = result5692 := by
  rw [tree5692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5690_eq
  unfold live5690 coloured5690 at child
  try dsimp only [live5692, coloured5692]
  rw [child]
  dsimp only [result5690]
  have child := node5691_eq
  unfold live5691 coloured5691 at child
  try dsimp only [live5692, coloured5692]
  rw [child]
  dsimp only [result5691]
  try dsimp only [colour, result5692]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5693_agree : tree5693 = literal5693 := by
  rw [tree5693_def]
  rfl
theorem node5693_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5693 live5693 coloured5693 = result5693 := by
  rw [tree5693_def]
  try dsimp only [colour, result5693]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5694_agree : tree5694 = literal5694 := by
  rw [tree5694_def, tree5692_agree, tree5693_agree]
  rfl
theorem node5694_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5694 live5694 coloured5694 = result5694 := by
  rw [tree5694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5692_eq
  unfold live5692 coloured5692 at child
  try dsimp only [live5694, coloured5694]
  rw [child]
  dsimp only [result5692]
  have child := node5693_eq
  unfold live5693 coloured5693 at child
  try dsimp only [live5694, coloured5694]
  rw [child]
  dsimp only [result5693]
  try dsimp only [colour, result5694]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5695_agree : tree5695 = literal5695 := by
  rw [tree5695_def]
  rfl
theorem node5695_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5695 live5695 coloured5695 = result5695 := by
  rw [tree5695_def]
  try dsimp only [colour, result5695]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5696_agree : tree5696 = literal5696 := by
  rw [tree5696_def, tree5694_agree, tree5695_agree]
  rfl
theorem node5696_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5696 live5696 coloured5696 = result5696 := by
  rw [tree5696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5694_eq
  unfold live5694 coloured5694 at child
  try dsimp only [live5696, coloured5696]
  rw [child]
  dsimp only [result5694]
  have child := node5695_eq
  unfold live5695 coloured5695 at child
  try dsimp only [live5696, coloured5696]
  rw [child]
  dsimp only [result5695]
  try dsimp only [colour, result5696]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5697_agree : tree5697 = literal5697 := by
  rw [tree5697_def]
  rfl
theorem node5697_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5697 live5697 coloured5697 = result5697 := by
  rw [tree5697_def]
  try dsimp only [colour, result5697]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5698_agree : tree5698 = literal5698 := by
  rw [tree5698_def, tree5696_agree, tree5697_agree]
  rfl
theorem node5698_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5698 live5698 coloured5698 = result5698 := by
  rw [tree5698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5696_eq
  unfold live5696 coloured5696 at child
  try dsimp only [live5698, coloured5698]
  rw [child]
  dsimp only [result5696]
  have child := node5697_eq
  unfold live5697 coloured5697 at child
  try dsimp only [live5698, coloured5698]
  rw [child]
  dsimp only [result5697]
  try dsimp only [colour, result5698]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5699_agree : tree5699 = literal5699 := by
  rw [tree5699_def]
  rfl
theorem node5699_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5699 live5699 coloured5699 = result5699 := by
  rw [tree5699_def]
  try dsimp only [colour, result5699]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5700_agree : tree5700 = literal5700 := by
  rw [tree5700_def, tree5698_agree, tree5699_agree]
  rfl
theorem node5700_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5700 live5700 coloured5700 = result5700 := by
  rw [tree5700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5698_eq
  unfold live5698 coloured5698 at child
  try dsimp only [live5700, coloured5700]
  rw [child]
  dsimp only [result5698]
  have child := node5699_eq
  unfold live5699 coloured5699 at child
  try dsimp only [live5700, coloured5700]
  rw [child]
  dsimp only [result5699]
  try dsimp only [colour, result5700]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5701_agree : tree5701 = literal5701 := by
  rw [tree5701_def]
  rfl
theorem node5701_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5701 live5701 coloured5701 = result5701 := by
  rw [tree5701_def]
  try dsimp only [colour, result5701]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5702_agree : tree5702 = literal5702 := by
  rw [tree5702_def, tree5700_agree, tree5701_agree]
  rfl
theorem node5702_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5702 live5702 coloured5702 = result5702 := by
  rw [tree5702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5700_eq
  unfold live5700 coloured5700 at child
  try dsimp only [live5702, coloured5702]
  rw [child]
  dsimp only [result5700]
  have child := node5701_eq
  unfold live5701 coloured5701 at child
  try dsimp only [live5702, coloured5702]
  rw [child]
  dsimp only [result5701]
  try dsimp only [colour, result5702]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5703_agree : tree5703 = literal5703 := by
  rw [tree5703_def]
  rfl
theorem node5703_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5703 live5703 coloured5703 = result5703 := by
  rw [tree5703_def]
  try dsimp only [colour, result5703]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5704_agree : tree5704 = literal5704 := by
  rw [tree5704_def, tree5702_agree, tree5703_agree]
  rfl
theorem node5704_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5704 live5704 coloured5704 = result5704 := by
  rw [tree5704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5702_eq
  unfold live5702 coloured5702 at child
  try dsimp only [live5704, coloured5704]
  rw [child]
  dsimp only [result5702]
  have child := node5703_eq
  unfold live5703 coloured5703 at child
  try dsimp only [live5704, coloured5704]
  rw [child]
  dsimp only [result5703]
  try dsimp only [colour, result5704]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5705_agree : tree5705 = literal5705 := by
  rw [tree5705_def]
  rfl
theorem node5705_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5705 live5705 coloured5705 = result5705 := by
  rw [tree5705_def]
  try dsimp only [colour, result5705]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5706_agree : tree5706 = literal5706 := by
  rw [tree5706_def, tree5704_agree, tree5705_agree]
  rfl
theorem node5706_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5706 live5706 coloured5706 = result5706 := by
  rw [tree5706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5704_eq
  unfold live5704 coloured5704 at child
  try dsimp only [live5706, coloured5706]
  rw [child]
  dsimp only [result5704]
  have child := node5705_eq
  unfold live5705 coloured5705 at child
  try dsimp only [live5706, coloured5706]
  rw [child]
  dsimp only [result5705]
  try dsimp only [colour, result5706]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5707_agree : tree5707 = literal5707 := by
  rw [tree5707_def]
  rfl
theorem node5707_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5707 live5707 coloured5707 = result5707 := by
  rw [tree5707_def]
  try dsimp only [colour, result5707]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5708_agree : tree5708 = literal5708 := by
  rw [tree5708_def, tree5706_agree, tree5707_agree]
  rfl
theorem node5708_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5708 live5708 coloured5708 = result5708 := by
  rw [tree5708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5706_eq
  unfold live5706 coloured5706 at child
  try dsimp only [live5708, coloured5708]
  rw [child]
  dsimp only [result5706]
  have child := node5707_eq
  unfold live5707 coloured5707 at child
  try dsimp only [live5708, coloured5708]
  rw [child]
  dsimp only [result5707]
  try dsimp only [colour, result5708]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5709_agree : tree5709 = literal5709 := by
  rw [tree5709_def]
  rfl
theorem node5709_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5709 live5709 coloured5709 = result5709 := by
  rw [tree5709_def]
  try dsimp only [colour, result5709]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5710_agree : tree5710 = literal5710 := by
  rw [tree5710_def, tree5708_agree, tree5709_agree]
  rfl
theorem node5710_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5710 live5710 coloured5710 = result5710 := by
  rw [tree5710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5708_eq
  unfold live5708 coloured5708 at child
  try dsimp only [live5710, coloured5710]
  rw [child]
  dsimp only [result5708]
  have child := node5709_eq
  unfold live5709 coloured5709 at child
  try dsimp only [live5710, coloured5710]
  rw [child]
  dsimp only [result5709]
  try dsimp only [colour, result5710]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5711_agree : tree5711 = literal5711 := by
  rw [tree5711_def]
  rfl
theorem node5711_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5711 live5711 coloured5711 = result5711 := by
  rw [tree5711_def]
  try dsimp only [colour, result5711]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5712_agree : tree5712 = literal5712 := by
  rw [tree5712_def, tree5710_agree, tree5711_agree]
  rfl
theorem node5712_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5712 live5712 coloured5712 = result5712 := by
  rw [tree5712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5710_eq
  unfold live5710 coloured5710 at child
  try dsimp only [live5712, coloured5712]
  rw [child]
  dsimp only [result5710]
  have child := node5711_eq
  unfold live5711 coloured5711 at child
  try dsimp only [live5712, coloured5712]
  rw [child]
  dsimp only [result5711]
  try dsimp only [colour, result5712]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5713_agree : tree5713 = literal5713 := by
  rw [tree5713_def]
  rfl
theorem node5713_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5713 live5713 coloured5713 = result5713 := by
  rw [tree5713_def]
  try dsimp only [colour, result5713]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5714_agree : tree5714 = literal5714 := by
  rw [tree5714_def, tree5712_agree, tree5713_agree]
  rfl
theorem node5714_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5714 live5714 coloured5714 = result5714 := by
  rw [tree5714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5712_eq
  unfold live5712 coloured5712 at child
  try dsimp only [live5714, coloured5714]
  rw [child]
  dsimp only [result5712]
  have child := node5713_eq
  unfold live5713 coloured5713 at child
  try dsimp only [live5714, coloured5714]
  rw [child]
  dsimp only [result5713]
  try dsimp only [colour, result5714]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5715_agree : tree5715 = literal5715 := by
  rw [tree5715_def]
  rfl
theorem node5715_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5715 live5715 coloured5715 = result5715 := by
  rw [tree5715_def]
  try dsimp only [colour, result5715]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5716_agree : tree5716 = literal5716 := by
  rw [tree5716_def, tree5714_agree, tree5715_agree]
  rfl
theorem node5716_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5716 live5716 coloured5716 = result5716 := by
  rw [tree5716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5714_eq
  unfold live5714 coloured5714 at child
  try dsimp only [live5716, coloured5716]
  rw [child]
  dsimp only [result5714]
  have child := node5715_eq
  unfold live5715 coloured5715 at child
  try dsimp only [live5716, coloured5716]
  rw [child]
  dsimp only [result5715]
  try dsimp only [colour, result5716]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5717_agree : tree5717 = literal5717 := by
  rw [tree5717_def]
  rfl
theorem node5717_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5717 live5717 coloured5717 = result5717 := by
  rw [tree5717_def]
  try dsimp only [colour, result5717]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5718_agree : tree5718 = literal5718 := by
  rw [tree5718_def, tree5716_agree, tree5717_agree]
  rfl
theorem node5718_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5718 live5718 coloured5718 = result5718 := by
  rw [tree5718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5716_eq
  unfold live5716 coloured5716 at child
  try dsimp only [live5718, coloured5718]
  rw [child]
  dsimp only [result5716]
  have child := node5717_eq
  unfold live5717 coloured5717 at child
  try dsimp only [live5718, coloured5718]
  rw [child]
  dsimp only [result5717]
  try dsimp only [colour, result5718]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5719_agree : tree5719 = literal5719 := by
  rw [tree5719_def]
  rfl
theorem node5719_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5719 live5719 coloured5719 = result5719 := by
  rw [tree5719_def]
  try dsimp only [colour, result5719]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5720_agree : tree5720 = literal5720 := by
  rw [tree5720_def, tree5718_agree, tree5719_agree]
  rfl
theorem node5720_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5720 live5720 coloured5720 = result5720 := by
  rw [tree5720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5718_eq
  unfold live5718 coloured5718 at child
  try dsimp only [live5720, coloured5720]
  rw [child]
  dsimp only [result5718]
  have child := node5719_eq
  unfold live5719 coloured5719 at child
  try dsimp only [live5720, coloured5720]
  rw [child]
  dsimp only [result5719]
  try dsimp only [colour, result5720]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5721_agree : tree5721 = literal5721 := by
  rw [tree5721_def]
  rfl
theorem node5721_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5721 live5721 coloured5721 = result5721 := by
  rw [tree5721_def]
  try dsimp only [colour, result5721]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5722_agree : tree5722 = literal5722 := by
  rw [tree5722_def, tree5720_agree, tree5721_agree]
  rfl
theorem node5722_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5722 live5722 coloured5722 = result5722 := by
  rw [tree5722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5720_eq
  unfold live5720 coloured5720 at child
  try dsimp only [live5722, coloured5722]
  rw [child]
  dsimp only [result5720]
  have child := node5721_eq
  unfold live5721 coloured5721 at child
  try dsimp only [live5722, coloured5722]
  rw [child]
  dsimp only [result5721]
  try dsimp only [colour, result5722]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5723_agree : tree5723 = literal5723 := by
  rw [tree5723_def]
  rfl
theorem node5723_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5723 live5723 coloured5723 = result5723 := by
  rw [tree5723_def]
  try dsimp only [colour, result5723]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5724_agree : tree5724 = literal5724 := by
  rw [tree5724_def, tree5722_agree, tree5723_agree]
  rfl
theorem node5724_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5724 live5724 coloured5724 = result5724 := by
  rw [tree5724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5722_eq
  unfold live5722 coloured5722 at child
  try dsimp only [live5724, coloured5724]
  rw [child]
  dsimp only [result5722]
  have child := node5723_eq
  unfold live5723 coloured5723 at child
  try dsimp only [live5724, coloured5724]
  rw [child]
  dsimp only [result5723]
  try dsimp only [colour, result5724]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5725_agree : tree5725 = literal5725 := by
  rw [tree5725_def]
  rfl
theorem node5725_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5725 live5725 coloured5725 = result5725 := by
  rw [tree5725_def]
  try dsimp only [colour, result5725]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5726_agree : tree5726 = literal5726 := by
  rw [tree5726_def, tree5724_agree, tree5725_agree]
  rfl
theorem node5726_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5726 live5726 coloured5726 = result5726 := by
  rw [tree5726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5724_eq
  unfold live5724 coloured5724 at child
  try dsimp only [live5726, coloured5726]
  rw [child]
  dsimp only [result5724]
  have child := node5725_eq
  unfold live5725 coloured5725 at child
  try dsimp only [live5726, coloured5726]
  rw [child]
  dsimp only [result5725]
  try dsimp only [colour, result5726]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5727_agree : tree5727 = literal5727 := by
  rw [tree5727_def]
  rfl
theorem node5727_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5727 live5727 coloured5727 = result5727 := by
  rw [tree5727_def]
  try dsimp only [colour, result5727]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5728_agree : tree5728 = literal5728 := by
  rw [tree5728_def, tree5726_agree, tree5727_agree]
  rfl
theorem node5728_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5728 live5728 coloured5728 = result5728 := by
  rw [tree5728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5726_eq
  unfold live5726 coloured5726 at child
  try dsimp only [live5728, coloured5728]
  rw [child]
  dsimp only [result5726]
  have child := node5727_eq
  unfold live5727 coloured5727 at child
  try dsimp only [live5728, coloured5728]
  rw [child]
  dsimp only [result5727]
  try dsimp only [colour, result5728]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5729_agree : tree5729 = literal5729 := by
  rw [tree5729_def]
  rfl
theorem node5729_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5729 live5729 coloured5729 = result5729 := by
  rw [tree5729_def]
  try dsimp only [colour, result5729]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5730_agree : tree5730 = literal5730 := by
  rw [tree5730_def, tree5728_agree, tree5729_agree]
  rfl
theorem node5730_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5730 live5730 coloured5730 = result5730 := by
  rw [tree5730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5728_eq
  unfold live5728 coloured5728 at child
  try dsimp only [live5730, coloured5730]
  rw [child]
  dsimp only [result5728]
  have child := node5729_eq
  unfold live5729 coloured5729 at child
  try dsimp only [live5730, coloured5730]
  rw [child]
  dsimp only [result5729]
  try dsimp only [colour, result5730]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5731_agree : tree5731 = literal5731 := by
  rw [tree5731_def]
  rfl
theorem node5731_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5731 live5731 coloured5731 = result5731 := by
  rw [tree5731_def]
  try dsimp only [colour, result5731]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5732_agree : tree5732 = literal5732 := by
  rw [tree5732_def, tree5730_agree, tree5731_agree]
  rfl
theorem node5732_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5732 live5732 coloured5732 = result5732 := by
  rw [tree5732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5730_eq
  unfold live5730 coloured5730 at child
  try dsimp only [live5732, coloured5732]
  rw [child]
  dsimp only [result5730]
  have child := node5731_eq
  unfold live5731 coloured5731 at child
  try dsimp only [live5732, coloured5732]
  rw [child]
  dsimp only [result5731]
  try dsimp only [colour, result5732]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5733_agree : tree5733 = literal5733 := by
  rw [tree5733_def]
  rfl
theorem node5733_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5733 live5733 coloured5733 = result5733 := by
  rw [tree5733_def]
  try dsimp only [colour, result5733]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5734_agree : tree5734 = literal5734 := by
  rw [tree5734_def, tree5732_agree, tree5733_agree]
  rfl
theorem node5734_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5734 live5734 coloured5734 = result5734 := by
  rw [tree5734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5732_eq
  unfold live5732 coloured5732 at child
  try dsimp only [live5734, coloured5734]
  rw [child]
  dsimp only [result5732]
  have child := node5733_eq
  unfold live5733 coloured5733 at child
  try dsimp only [live5734, coloured5734]
  rw [child]
  dsimp only [result5733]
  try dsimp only [colour, result5734]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5735_agree : tree5735 = literal5735 := by
  rw [tree5735_def]
  rfl
theorem node5735_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5735 live5735 coloured5735 = result5735 := by
  rw [tree5735_def]
  try dsimp only [colour, result5735]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5736_agree : tree5736 = literal5736 := by
  rw [tree5736_def, tree5734_agree, tree5735_agree]
  rfl
theorem node5736_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5736 live5736 coloured5736 = result5736 := by
  rw [tree5736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5734_eq
  unfold live5734 coloured5734 at child
  try dsimp only [live5736, coloured5736]
  rw [child]
  dsimp only [result5734]
  have child := node5735_eq
  unfold live5735 coloured5735 at child
  try dsimp only [live5736, coloured5736]
  rw [child]
  dsimp only [result5735]
  try dsimp only [colour, result5736]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5737_agree : tree5737 = literal5737 := by
  rw [tree5737_def]
  rfl
theorem node5737_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5737 live5737 coloured5737 = result5737 := by
  rw [tree5737_def]
  try dsimp only [colour, result5737]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5738_agree : tree5738 = literal5738 := by
  rw [tree5738_def, tree5736_agree, tree5737_agree]
  rfl
theorem node5738_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5738 live5738 coloured5738 = result5738 := by
  rw [tree5738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5736_eq
  unfold live5736 coloured5736 at child
  try dsimp only [live5738, coloured5738]
  rw [child]
  dsimp only [result5736]
  have child := node5737_eq
  unfold live5737 coloured5737 at child
  try dsimp only [live5738, coloured5738]
  rw [child]
  dsimp only [result5737]
  try dsimp only [colour, result5738]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5739_agree : tree5739 = literal5739 := by
  rw [tree5739_def]
  rfl
theorem node5739_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5739 live5739 coloured5739 = result5739 := by
  rw [tree5739_def]
  try dsimp only [colour, result5739]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5740_agree : tree5740 = literal5740 := by
  rw [tree5740_def, tree5738_agree, tree5739_agree]
  rfl
theorem node5740_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5740 live5740 coloured5740 = result5740 := by
  rw [tree5740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5738_eq
  unfold live5738 coloured5738 at child
  try dsimp only [live5740, coloured5740]
  rw [child]
  dsimp only [result5738]
  have child := node5739_eq
  unfold live5739 coloured5739 at child
  try dsimp only [live5740, coloured5740]
  rw [child]
  dsimp only [result5739]
  try dsimp only [colour, result5740]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5741_agree : tree5741 = literal5741 := by
  rw [tree5741_def]
  rfl
theorem node5741_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5741 live5741 coloured5741 = result5741 := by
  rw [tree5741_def]
  try dsimp only [colour, result5741]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5742_agree : tree5742 = literal5742 := by
  rw [tree5742_def, tree5740_agree, tree5741_agree]
  rfl
theorem node5742_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5742 live5742 coloured5742 = result5742 := by
  rw [tree5742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5740_eq
  unfold live5740 coloured5740 at child
  try dsimp only [live5742, coloured5742]
  rw [child]
  dsimp only [result5740]
  have child := node5741_eq
  unfold live5741 coloured5741 at child
  try dsimp only [live5742, coloured5742]
  rw [child]
  dsimp only [result5741]
  try dsimp only [colour, result5742]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5743_agree : tree5743 = literal5743 := by
  rw [tree5743_def]
  rfl
theorem node5743_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5743 live5743 coloured5743 = result5743 := by
  rw [tree5743_def]
  try dsimp only [colour, result5743]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5744_agree : tree5744 = literal5744 := by
  rw [tree5744_def, tree5742_agree, tree5743_agree]
  rfl
theorem node5744_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5744 live5744 coloured5744 = result5744 := by
  rw [tree5744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5742_eq
  unfold live5742 coloured5742 at child
  try dsimp only [live5744, coloured5744]
  rw [child]
  dsimp only [result5742]
  have child := node5743_eq
  unfold live5743 coloured5743 at child
  try dsimp only [live5744, coloured5744]
  rw [child]
  dsimp only [result5743]
  try dsimp only [colour, result5744]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5745_agree : tree5745 = literal5745 := by
  rw [tree5745_def]
  rfl
theorem node5745_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5745 live5745 coloured5745 = result5745 := by
  rw [tree5745_def]
  try dsimp only [colour, result5745]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5746_agree : tree5746 = literal5746 := by
  rw [tree5746_def, tree5744_agree, tree5745_agree]
  rfl
theorem node5746_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5746 live5746 coloured5746 = result5746 := by
  rw [tree5746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5744_eq
  unfold live5744 coloured5744 at child
  try dsimp only [live5746, coloured5746]
  rw [child]
  dsimp only [result5744]
  have child := node5745_eq
  unfold live5745 coloured5745 at child
  try dsimp only [live5746, coloured5746]
  rw [child]
  dsimp only [result5745]
  try dsimp only [colour, result5746]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5747_agree : tree5747 = literal5747 := by
  rw [tree5747_def]
  rfl
theorem node5747_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5747 live5747 coloured5747 = result5747 := by
  rw [tree5747_def]
  try dsimp only [colour, result5747]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5748_agree : tree5748 = literal5748 := by
  rw [tree5748_def, tree5746_agree, tree5747_agree]
  rfl
theorem node5748_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5748 live5748 coloured5748 = result5748 := by
  rw [tree5748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5746_eq
  unfold live5746 coloured5746 at child
  try dsimp only [live5748, coloured5748]
  rw [child]
  dsimp only [result5746]
  have child := node5747_eq
  unfold live5747 coloured5747 at child
  try dsimp only [live5748, coloured5748]
  rw [child]
  dsimp only [result5747]
  try dsimp only [colour, result5748]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5749_agree : tree5749 = literal5749 := by
  rw [tree5749_def]
  rfl
theorem node5749_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5749 live5749 coloured5749 = result5749 := by
  rw [tree5749_def]
  try dsimp only [colour, result5749]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5750_agree : tree5750 = literal5750 := by
  rw [tree5750_def, tree5748_agree, tree5749_agree]
  rfl
theorem node5750_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5750 live5750 coloured5750 = result5750 := by
  rw [tree5750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5748_eq
  unfold live5748 coloured5748 at child
  try dsimp only [live5750, coloured5750]
  rw [child]
  dsimp only [result5748]
  have child := node5749_eq
  unfold live5749 coloured5749 at child
  try dsimp only [live5750, coloured5750]
  rw [child]
  dsimp only [result5749]
  try dsimp only [colour, result5750]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5751_agree : tree5751 = literal5751 := by
  rw [tree5751_def]
  rfl
theorem node5751_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5751 live5751 coloured5751 = result5751 := by
  rw [tree5751_def]
  try dsimp only [colour, result5751]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5752_agree : tree5752 = literal5752 := by
  rw [tree5752_def, tree5750_agree, tree5751_agree]
  rfl
theorem node5752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5752 live5752 coloured5752 = result5752 := by
  rw [tree5752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5750_eq
  unfold live5750 coloured5750 at child
  try dsimp only [live5752, coloured5752]
  rw [child]
  dsimp only [result5750]
  have child := node5751_eq
  unfold live5751 coloured5751 at child
  try dsimp only [live5752, coloured5752]
  rw [child]
  dsimp only [result5751]
  try dsimp only [colour, result5752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5753_agree : tree5753 = literal5753 := by
  rw [tree5753_def]
  rfl
theorem node5753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5753 live5753 coloured5753 = result5753 := by
  rw [tree5753_def]
  try dsimp only [colour, result5753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5754_agree : tree5754 = literal5754 := by
  rw [tree5754_def, tree5752_agree, tree5753_agree]
  rfl
theorem node5754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5754 live5754 coloured5754 = result5754 := by
  rw [tree5754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5752_eq
  unfold live5752 coloured5752 at child
  try dsimp only [live5754, coloured5754]
  rw [child]
  dsimp only [result5752]
  have child := node5753_eq
  unfold live5753 coloured5753 at child
  try dsimp only [live5754, coloured5754]
  rw [child]
  dsimp only [result5753]
  try dsimp only [colour, result5754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5755_agree : tree5755 = literal5755 := by
  rw [tree5755_def]
  rfl
theorem node5755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5755 live5755 coloured5755 = result5755 := by
  rw [tree5755_def]
  try dsimp only [colour, result5755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5756_agree : tree5756 = literal5756 := by
  rw [tree5756_def, tree5754_agree, tree5755_agree]
  rfl
theorem node5756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5756 live5756 coloured5756 = result5756 := by
  rw [tree5756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5754_eq
  unfold live5754 coloured5754 at child
  try dsimp only [live5756, coloured5756]
  rw [child]
  dsimp only [result5754]
  have child := node5755_eq
  unfold live5755 coloured5755 at child
  try dsimp only [live5756, coloured5756]
  rw [child]
  dsimp only [result5755]
  try dsimp only [colour, result5756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5757_agree : tree5757 = literal5757 := by
  rw [tree5757_def]
  rfl
theorem node5757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5757 live5757 coloured5757 = result5757 := by
  rw [tree5757_def]
  try dsimp only [colour, result5757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5758_agree : tree5758 = literal5758 := by
  rw [tree5758_def, tree5756_agree, tree5757_agree]
  rfl
theorem node5758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5758 live5758 coloured5758 = result5758 := by
  rw [tree5758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5756_eq
  unfold live5756 coloured5756 at child
  try dsimp only [live5758, coloured5758]
  rw [child]
  dsimp only [result5756]
  have child := node5757_eq
  unfold live5757 coloured5757 at child
  try dsimp only [live5758, coloured5758]
  rw [child]
  dsimp only [result5757]
  try dsimp only [colour, result5758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5759_agree : tree5759 = literal5759 := by
  rw [tree5759_def]
  rfl
theorem node5759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5759 live5759 coloured5759 = result5759 := by
  rw [tree5759_def]
  try dsimp only [colour, result5759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
