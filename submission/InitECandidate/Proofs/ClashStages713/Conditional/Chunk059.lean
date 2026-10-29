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
theorem tree5664_agree_conditional
    (child0 : tree5662 = literal5662)
    (child1 : tree5663 = literal5663) : tree5664 = literal5664 := by
  rw [tree5664_def, child0, child1]
  rfl
theorem node5664_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5662 live5662 coloured5662 = result5662)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5663 live5663 coloured5663 = result5663) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5664 live5664 coloured5664 = result5664 := by
  rw [tree5664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5662 coloured5662 at child
  try dsimp only [live5664, coloured5664]
  rw [child]
  dsimp only [result5662]
  have child := child1
  unfold live5663 coloured5663 at child
  try dsimp only [live5664, coloured5664]
  rw [child]
  dsimp only [result5663]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5665_agree_conditional : tree5665 = literal5665 := by
  rw [tree5665_def]
  rfl
theorem node5665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5665 live5665 coloured5665 = result5665 := by
  rw [tree5665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5666_agree_conditional
    (child0 : tree5664 = literal5664)
    (child1 : tree5665 = literal5665) : tree5666 = literal5666 := by
  rw [tree5666_def, child0, child1]
  rfl
theorem node5666_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5664 live5664 coloured5664 = result5664)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5665 live5665 coloured5665 = result5665) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5666 live5666 coloured5666 = result5666 := by
  rw [tree5666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5664 coloured5664 at child
  try dsimp only [live5666, coloured5666]
  rw [child]
  dsimp only [result5664]
  have child := child1
  unfold live5665 coloured5665 at child
  try dsimp only [live5666, coloured5666]
  rw [child]
  dsimp only [result5665]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5667_agree_conditional : tree5667 = literal5667 := by
  rw [tree5667_def]
  rfl
theorem node5667_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5667 live5667 coloured5667 = result5667 := by
  rw [tree5667_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5668_agree_conditional
    (child0 : tree5666 = literal5666)
    (child1 : tree5667 = literal5667) : tree5668 = literal5668 := by
  rw [tree5668_def, child0, child1]
  rfl
theorem node5668_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5666 live5666 coloured5666 = result5666)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5667 live5667 coloured5667 = result5667) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5668 live5668 coloured5668 = result5668 := by
  rw [tree5668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5666 coloured5666 at child
  try dsimp only [live5668, coloured5668]
  rw [child]
  dsimp only [result5666]
  have child := child1
  unfold live5667 coloured5667 at child
  try dsimp only [live5668, coloured5668]
  rw [child]
  dsimp only [result5667]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5669_agree_conditional : tree5669 = literal5669 := by
  rw [tree5669_def]
  rfl
theorem node5669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5669 live5669 coloured5669 = result5669 := by
  rw [tree5669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5670_agree_conditional
    (child0 : tree5668 = literal5668)
    (child1 : tree5669 = literal5669) : tree5670 = literal5670 := by
  rw [tree5670_def, child0, child1]
  rfl
theorem node5670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5668 live5668 coloured5668 = result5668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5669 live5669 coloured5669 = result5669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5670 live5670 coloured5670 = result5670 := by
  rw [tree5670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5668 coloured5668 at child
  try dsimp only [live5670, coloured5670]
  rw [child]
  dsimp only [result5668]
  have child := child1
  unfold live5669 coloured5669 at child
  try dsimp only [live5670, coloured5670]
  rw [child]
  dsimp only [result5669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5671_agree_conditional : tree5671 = literal5671 := by
  rw [tree5671_def]
  rfl
theorem node5671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5671 live5671 coloured5671 = result5671 := by
  rw [tree5671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5672_agree_conditional
    (child0 : tree5670 = literal5670)
    (child1 : tree5671 = literal5671) : tree5672 = literal5672 := by
  rw [tree5672_def, child0, child1]
  rfl
theorem node5672_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5670 live5670 coloured5670 = result5670)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5671 live5671 coloured5671 = result5671) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5672 live5672 coloured5672 = result5672 := by
  rw [tree5672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5670 coloured5670 at child
  try dsimp only [live5672, coloured5672]
  rw [child]
  dsimp only [result5670]
  have child := child1
  unfold live5671 coloured5671 at child
  try dsimp only [live5672, coloured5672]
  rw [child]
  dsimp only [result5671]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5673_agree_conditional : tree5673 = literal5673 := by
  rw [tree5673_def]
  rfl
theorem node5673_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5673 live5673 coloured5673 = result5673 := by
  rw [tree5673_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5674_agree_conditional
    (child0 : tree5672 = literal5672)
    (child1 : tree5673 = literal5673) : tree5674 = literal5674 := by
  rw [tree5674_def, child0, child1]
  rfl
theorem node5674_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5672 live5672 coloured5672 = result5672)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5673 live5673 coloured5673 = result5673) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5674 live5674 coloured5674 = result5674 := by
  rw [tree5674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5672 coloured5672 at child
  try dsimp only [live5674, coloured5674]
  rw [child]
  dsimp only [result5672]
  have child := child1
  unfold live5673 coloured5673 at child
  try dsimp only [live5674, coloured5674]
  rw [child]
  dsimp only [result5673]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5675_agree_conditional : tree5675 = literal5675 := by
  rw [tree5675_def]
  rfl
theorem node5675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5675 live5675 coloured5675 = result5675 := by
  rw [tree5675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5676_agree_conditional
    (child0 : tree5674 = literal5674)
    (child1 : tree5675 = literal5675) : tree5676 = literal5676 := by
  rw [tree5676_def, child0, child1]
  rfl
theorem node5676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5674 live5674 coloured5674 = result5674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5675 live5675 coloured5675 = result5675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5676 live5676 coloured5676 = result5676 := by
  rw [tree5676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5674 coloured5674 at child
  try dsimp only [live5676, coloured5676]
  rw [child]
  dsimp only [result5674]
  have child := child1
  unfold live5675 coloured5675 at child
  try dsimp only [live5676, coloured5676]
  rw [child]
  dsimp only [result5675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5677_agree_conditional : tree5677 = literal5677 := by
  rw [tree5677_def]
  rfl
theorem node5677_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5677 live5677 coloured5677 = result5677 := by
  rw [tree5677_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5678_agree_conditional
    (child0 : tree5676 = literal5676)
    (child1 : tree5677 = literal5677) : tree5678 = literal5678 := by
  rw [tree5678_def, child0, child1]
  rfl
theorem node5678_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5676 live5676 coloured5676 = result5676)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5677 live5677 coloured5677 = result5677) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5678 live5678 coloured5678 = result5678 := by
  rw [tree5678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5676 coloured5676 at child
  try dsimp only [live5678, coloured5678]
  rw [child]
  dsimp only [result5676]
  have child := child1
  unfold live5677 coloured5677 at child
  try dsimp only [live5678, coloured5678]
  rw [child]
  dsimp only [result5677]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5679_agree_conditional : tree5679 = literal5679 := by
  rw [tree5679_def]
  rfl
theorem node5679_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5679 live5679 coloured5679 = result5679 := by
  rw [tree5679_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5680_agree_conditional
    (child0 : tree5678 = literal5678)
    (child1 : tree5679 = literal5679) : tree5680 = literal5680 := by
  rw [tree5680_def, child0, child1]
  rfl
theorem node5680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5678 live5678 coloured5678 = result5678)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5679 live5679 coloured5679 = result5679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5680 live5680 coloured5680 = result5680 := by
  rw [tree5680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5678 coloured5678 at child
  try dsimp only [live5680, coloured5680]
  rw [child]
  dsimp only [result5678]
  have child := child1
  unfold live5679 coloured5679 at child
  try dsimp only [live5680, coloured5680]
  rw [child]
  dsimp only [result5679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5681_agree_conditional : tree5681 = literal5681 := by
  rw [tree5681_def]
  rfl
theorem node5681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5681 live5681 coloured5681 = result5681 := by
  rw [tree5681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5682_agree_conditional
    (child0 : tree5680 = literal5680)
    (child1 : tree5681 = literal5681) : tree5682 = literal5682 := by
  rw [tree5682_def, child0, child1]
  rfl
theorem node5682_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5680 live5680 coloured5680 = result5680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5681 live5681 coloured5681 = result5681) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5682 live5682 coloured5682 = result5682 := by
  rw [tree5682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5680 coloured5680 at child
  try dsimp only [live5682, coloured5682]
  rw [child]
  dsimp only [result5680]
  have child := child1
  unfold live5681 coloured5681 at child
  try dsimp only [live5682, coloured5682]
  rw [child]
  dsimp only [result5681]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5683_agree_conditional : tree5683 = literal5683 := by
  rw [tree5683_def]
  rfl
theorem node5683_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5683 live5683 coloured5683 = result5683 := by
  rw [tree5683_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5684_agree_conditional
    (child0 : tree5682 = literal5682)
    (child1 : tree5683 = literal5683) : tree5684 = literal5684 := by
  rw [tree5684_def, child0, child1]
  rfl
theorem node5684_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5682 live5682 coloured5682 = result5682)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5683 live5683 coloured5683 = result5683) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5684 live5684 coloured5684 = result5684 := by
  rw [tree5684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5682 coloured5682 at child
  try dsimp only [live5684, coloured5684]
  rw [child]
  dsimp only [result5682]
  have child := child1
  unfold live5683 coloured5683 at child
  try dsimp only [live5684, coloured5684]
  rw [child]
  dsimp only [result5683]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5685_agree_conditional : tree5685 = literal5685 := by
  rw [tree5685_def]
  rfl
theorem node5685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5685 live5685 coloured5685 = result5685 := by
  rw [tree5685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5686_agree_conditional
    (child0 : tree5684 = literal5684)
    (child1 : tree5685 = literal5685) : tree5686 = literal5686 := by
  rw [tree5686_def, child0, child1]
  rfl
theorem node5686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5684 live5684 coloured5684 = result5684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5685 live5685 coloured5685 = result5685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5686 live5686 coloured5686 = result5686 := by
  rw [tree5686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5684 coloured5684 at child
  try dsimp only [live5686, coloured5686]
  rw [child]
  dsimp only [result5684]
  have child := child1
  unfold live5685 coloured5685 at child
  try dsimp only [live5686, coloured5686]
  rw [child]
  dsimp only [result5685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5687_agree_conditional : tree5687 = literal5687 := by
  rw [tree5687_def]
  rfl
theorem node5687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5687 live5687 coloured5687 = result5687 := by
  rw [tree5687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5688_agree_conditional
    (child0 : tree5686 = literal5686)
    (child1 : tree5687 = literal5687) : tree5688 = literal5688 := by
  rw [tree5688_def, child0, child1]
  rfl
theorem node5688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5686 live5686 coloured5686 = result5686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5687 live5687 coloured5687 = result5687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5688 live5688 coloured5688 = result5688 := by
  rw [tree5688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5686 coloured5686 at child
  try dsimp only [live5688, coloured5688]
  rw [child]
  dsimp only [result5686]
  have child := child1
  unfold live5687 coloured5687 at child
  try dsimp only [live5688, coloured5688]
  rw [child]
  dsimp only [result5687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5689_agree_conditional : tree5689 = literal5689 := by
  rw [tree5689_def]
  rfl
theorem node5689_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5689 live5689 coloured5689 = result5689 := by
  rw [tree5689_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5690_agree_conditional
    (child0 : tree5688 = literal5688)
    (child1 : tree5689 = literal5689) : tree5690 = literal5690 := by
  rw [tree5690_def, child0, child1]
  rfl
theorem node5690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5688 live5688 coloured5688 = result5688)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5689 live5689 coloured5689 = result5689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5690 live5690 coloured5690 = result5690 := by
  rw [tree5690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5688 coloured5688 at child
  try dsimp only [live5690, coloured5690]
  rw [child]
  dsimp only [result5688]
  have child := child1
  unfold live5689 coloured5689 at child
  try dsimp only [live5690, coloured5690]
  rw [child]
  dsimp only [result5689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5691_agree_conditional : tree5691 = literal5691 := by
  rw [tree5691_def]
  rfl
theorem node5691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5691 live5691 coloured5691 = result5691 := by
  rw [tree5691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5692_agree_conditional
    (child0 : tree5690 = literal5690)
    (child1 : tree5691 = literal5691) : tree5692 = literal5692 := by
  rw [tree5692_def, child0, child1]
  rfl
theorem node5692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5690 live5690 coloured5690 = result5690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5691 live5691 coloured5691 = result5691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5692 live5692 coloured5692 = result5692 := by
  rw [tree5692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5690 coloured5690 at child
  try dsimp only [live5692, coloured5692]
  rw [child]
  dsimp only [result5690]
  have child := child1
  unfold live5691 coloured5691 at child
  try dsimp only [live5692, coloured5692]
  rw [child]
  dsimp only [result5691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5693_agree_conditional : tree5693 = literal5693 := by
  rw [tree5693_def]
  rfl
theorem node5693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5693 live5693 coloured5693 = result5693 := by
  rw [tree5693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5694_agree_conditional
    (child0 : tree5692 = literal5692)
    (child1 : tree5693 = literal5693) : tree5694 = literal5694 := by
  rw [tree5694_def, child0, child1]
  rfl
theorem node5694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5692 live5692 coloured5692 = result5692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5693 live5693 coloured5693 = result5693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5694 live5694 coloured5694 = result5694 := by
  rw [tree5694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5692 coloured5692 at child
  try dsimp only [live5694, coloured5694]
  rw [child]
  dsimp only [result5692]
  have child := child1
  unfold live5693 coloured5693 at child
  try dsimp only [live5694, coloured5694]
  rw [child]
  dsimp only [result5693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5695_agree_conditional : tree5695 = literal5695 := by
  rw [tree5695_def]
  rfl
theorem node5695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5695 live5695 coloured5695 = result5695 := by
  rw [tree5695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5696_agree_conditional
    (child0 : tree5694 = literal5694)
    (child1 : tree5695 = literal5695) : tree5696 = literal5696 := by
  rw [tree5696_def, child0, child1]
  rfl
theorem node5696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5694 live5694 coloured5694 = result5694)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5695 live5695 coloured5695 = result5695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5696 live5696 coloured5696 = result5696 := by
  rw [tree5696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5694 coloured5694 at child
  try dsimp only [live5696, coloured5696]
  rw [child]
  dsimp only [result5694]
  have child := child1
  unfold live5695 coloured5695 at child
  try dsimp only [live5696, coloured5696]
  rw [child]
  dsimp only [result5695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5697_agree_conditional : tree5697 = literal5697 := by
  rw [tree5697_def]
  rfl
theorem node5697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5697 live5697 coloured5697 = result5697 := by
  rw [tree5697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5698_agree_conditional
    (child0 : tree5696 = literal5696)
    (child1 : tree5697 = literal5697) : tree5698 = literal5698 := by
  rw [tree5698_def, child0, child1]
  rfl
theorem node5698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5696 live5696 coloured5696 = result5696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5697 live5697 coloured5697 = result5697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5698 live5698 coloured5698 = result5698 := by
  rw [tree5698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5696 coloured5696 at child
  try dsimp only [live5698, coloured5698]
  rw [child]
  dsimp only [result5696]
  have child := child1
  unfold live5697 coloured5697 at child
  try dsimp only [live5698, coloured5698]
  rw [child]
  dsimp only [result5697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5699_agree_conditional : tree5699 = literal5699 := by
  rw [tree5699_def]
  rfl
theorem node5699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5699 live5699 coloured5699 = result5699 := by
  rw [tree5699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5700_agree_conditional
    (child0 : tree5698 = literal5698)
    (child1 : tree5699 = literal5699) : tree5700 = literal5700 := by
  rw [tree5700_def, child0, child1]
  rfl
theorem node5700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5698 live5698 coloured5698 = result5698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5699 live5699 coloured5699 = result5699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5700 live5700 coloured5700 = result5700 := by
  rw [tree5700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5698 coloured5698 at child
  try dsimp only [live5700, coloured5700]
  rw [child]
  dsimp only [result5698]
  have child := child1
  unfold live5699 coloured5699 at child
  try dsimp only [live5700, coloured5700]
  rw [child]
  dsimp only [result5699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5701_agree_conditional : tree5701 = literal5701 := by
  rw [tree5701_def]
  rfl
theorem node5701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5701 live5701 coloured5701 = result5701 := by
  rw [tree5701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5702_agree_conditional
    (child0 : tree5700 = literal5700)
    (child1 : tree5701 = literal5701) : tree5702 = literal5702 := by
  rw [tree5702_def, child0, child1]
  rfl
theorem node5702_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5700 live5700 coloured5700 = result5700)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5701 live5701 coloured5701 = result5701) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5702 live5702 coloured5702 = result5702 := by
  rw [tree5702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5700 coloured5700 at child
  try dsimp only [live5702, coloured5702]
  rw [child]
  dsimp only [result5700]
  have child := child1
  unfold live5701 coloured5701 at child
  try dsimp only [live5702, coloured5702]
  rw [child]
  dsimp only [result5701]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5703_agree_conditional : tree5703 = literal5703 := by
  rw [tree5703_def]
  rfl
theorem node5703_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5703 live5703 coloured5703 = result5703 := by
  rw [tree5703_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5704_agree_conditional
    (child0 : tree5702 = literal5702)
    (child1 : tree5703 = literal5703) : tree5704 = literal5704 := by
  rw [tree5704_def, child0, child1]
  rfl
theorem node5704_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5702 live5702 coloured5702 = result5702)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5703 live5703 coloured5703 = result5703) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5704 live5704 coloured5704 = result5704 := by
  rw [tree5704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5702 coloured5702 at child
  try dsimp only [live5704, coloured5704]
  rw [child]
  dsimp only [result5702]
  have child := child1
  unfold live5703 coloured5703 at child
  try dsimp only [live5704, coloured5704]
  rw [child]
  dsimp only [result5703]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5705_agree_conditional : tree5705 = literal5705 := by
  rw [tree5705_def]
  rfl
theorem node5705_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5705 live5705 coloured5705 = result5705 := by
  rw [tree5705_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5706_agree_conditional
    (child0 : tree5704 = literal5704)
    (child1 : tree5705 = literal5705) : tree5706 = literal5706 := by
  rw [tree5706_def, child0, child1]
  rfl
theorem node5706_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5704 live5704 coloured5704 = result5704)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5705 live5705 coloured5705 = result5705) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5706 live5706 coloured5706 = result5706 := by
  rw [tree5706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5704 coloured5704 at child
  try dsimp only [live5706, coloured5706]
  rw [child]
  dsimp only [result5704]
  have child := child1
  unfold live5705 coloured5705 at child
  try dsimp only [live5706, coloured5706]
  rw [child]
  dsimp only [result5705]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5707_agree_conditional : tree5707 = literal5707 := by
  rw [tree5707_def]
  rfl
theorem node5707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5707 live5707 coloured5707 = result5707 := by
  rw [tree5707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5708_agree_conditional
    (child0 : tree5706 = literal5706)
    (child1 : tree5707 = literal5707) : tree5708 = literal5708 := by
  rw [tree5708_def, child0, child1]
  rfl
theorem node5708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5706 live5706 coloured5706 = result5706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5707 live5707 coloured5707 = result5707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5708 live5708 coloured5708 = result5708 := by
  rw [tree5708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5706 coloured5706 at child
  try dsimp only [live5708, coloured5708]
  rw [child]
  dsimp only [result5706]
  have child := child1
  unfold live5707 coloured5707 at child
  try dsimp only [live5708, coloured5708]
  rw [child]
  dsimp only [result5707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5709_agree_conditional : tree5709 = literal5709 := by
  rw [tree5709_def]
  rfl
theorem node5709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5709 live5709 coloured5709 = result5709 := by
  rw [tree5709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5710_agree_conditional
    (child0 : tree5708 = literal5708)
    (child1 : tree5709 = literal5709) : tree5710 = literal5710 := by
  rw [tree5710_def, child0, child1]
  rfl
theorem node5710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5708 live5708 coloured5708 = result5708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5709 live5709 coloured5709 = result5709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5710 live5710 coloured5710 = result5710 := by
  rw [tree5710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5708 coloured5708 at child
  try dsimp only [live5710, coloured5710]
  rw [child]
  dsimp only [result5708]
  have child := child1
  unfold live5709 coloured5709 at child
  try dsimp only [live5710, coloured5710]
  rw [child]
  dsimp only [result5709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5711_agree_conditional : tree5711 = literal5711 := by
  rw [tree5711_def]
  rfl
theorem node5711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5711 live5711 coloured5711 = result5711 := by
  rw [tree5711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5712_agree_conditional
    (child0 : tree5710 = literal5710)
    (child1 : tree5711 = literal5711) : tree5712 = literal5712 := by
  rw [tree5712_def, child0, child1]
  rfl
theorem node5712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5710 live5710 coloured5710 = result5710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5711 live5711 coloured5711 = result5711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5712 live5712 coloured5712 = result5712 := by
  rw [tree5712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5710 coloured5710 at child
  try dsimp only [live5712, coloured5712]
  rw [child]
  dsimp only [result5710]
  have child := child1
  unfold live5711 coloured5711 at child
  try dsimp only [live5712, coloured5712]
  rw [child]
  dsimp only [result5711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5713_agree_conditional : tree5713 = literal5713 := by
  rw [tree5713_def]
  rfl
theorem node5713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5713 live5713 coloured5713 = result5713 := by
  rw [tree5713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5714_agree_conditional
    (child0 : tree5712 = literal5712)
    (child1 : tree5713 = literal5713) : tree5714 = literal5714 := by
  rw [tree5714_def, child0, child1]
  rfl
theorem node5714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5712 live5712 coloured5712 = result5712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5713 live5713 coloured5713 = result5713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5714 live5714 coloured5714 = result5714 := by
  rw [tree5714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5712 coloured5712 at child
  try dsimp only [live5714, coloured5714]
  rw [child]
  dsimp only [result5712]
  have child := child1
  unfold live5713 coloured5713 at child
  try dsimp only [live5714, coloured5714]
  rw [child]
  dsimp only [result5713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5715_agree_conditional : tree5715 = literal5715 := by
  rw [tree5715_def]
  rfl
theorem node5715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5715 live5715 coloured5715 = result5715 := by
  rw [tree5715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5716_agree_conditional
    (child0 : tree5714 = literal5714)
    (child1 : tree5715 = literal5715) : tree5716 = literal5716 := by
  rw [tree5716_def, child0, child1]
  rfl
theorem node5716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5714 live5714 coloured5714 = result5714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5715 live5715 coloured5715 = result5715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5716 live5716 coloured5716 = result5716 := by
  rw [tree5716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5714 coloured5714 at child
  try dsimp only [live5716, coloured5716]
  rw [child]
  dsimp only [result5714]
  have child := child1
  unfold live5715 coloured5715 at child
  try dsimp only [live5716, coloured5716]
  rw [child]
  dsimp only [result5715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5717_agree_conditional : tree5717 = literal5717 := by
  rw [tree5717_def]
  rfl
theorem node5717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5717 live5717 coloured5717 = result5717 := by
  rw [tree5717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5718_agree_conditional
    (child0 : tree5716 = literal5716)
    (child1 : tree5717 = literal5717) : tree5718 = literal5718 := by
  rw [tree5718_def, child0, child1]
  rfl
theorem node5718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5716 live5716 coloured5716 = result5716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5717 live5717 coloured5717 = result5717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5718 live5718 coloured5718 = result5718 := by
  rw [tree5718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5716 coloured5716 at child
  try dsimp only [live5718, coloured5718]
  rw [child]
  dsimp only [result5716]
  have child := child1
  unfold live5717 coloured5717 at child
  try dsimp only [live5718, coloured5718]
  rw [child]
  dsimp only [result5717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5719_agree_conditional : tree5719 = literal5719 := by
  rw [tree5719_def]
  rfl
theorem node5719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5719 live5719 coloured5719 = result5719 := by
  rw [tree5719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5720_agree_conditional
    (child0 : tree5718 = literal5718)
    (child1 : tree5719 = literal5719) : tree5720 = literal5720 := by
  rw [tree5720_def, child0, child1]
  rfl
theorem node5720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5718 live5718 coloured5718 = result5718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5719 live5719 coloured5719 = result5719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5720 live5720 coloured5720 = result5720 := by
  rw [tree5720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5718 coloured5718 at child
  try dsimp only [live5720, coloured5720]
  rw [child]
  dsimp only [result5718]
  have child := child1
  unfold live5719 coloured5719 at child
  try dsimp only [live5720, coloured5720]
  rw [child]
  dsimp only [result5719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5721_agree_conditional : tree5721 = literal5721 := by
  rw [tree5721_def]
  rfl
theorem node5721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5721 live5721 coloured5721 = result5721 := by
  rw [tree5721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5722_agree_conditional
    (child0 : tree5720 = literal5720)
    (child1 : tree5721 = literal5721) : tree5722 = literal5722 := by
  rw [tree5722_def, child0, child1]
  rfl
theorem node5722_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5720 live5720 coloured5720 = result5720)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5721 live5721 coloured5721 = result5721) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5722 live5722 coloured5722 = result5722 := by
  rw [tree5722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5720 coloured5720 at child
  try dsimp only [live5722, coloured5722]
  rw [child]
  dsimp only [result5720]
  have child := child1
  unfold live5721 coloured5721 at child
  try dsimp only [live5722, coloured5722]
  rw [child]
  dsimp only [result5721]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5723_agree_conditional : tree5723 = literal5723 := by
  rw [tree5723_def]
  rfl
theorem node5723_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5723 live5723 coloured5723 = result5723 := by
  rw [tree5723_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5724_agree_conditional
    (child0 : tree5722 = literal5722)
    (child1 : tree5723 = literal5723) : tree5724 = literal5724 := by
  rw [tree5724_def, child0, child1]
  rfl
theorem node5724_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5722 live5722 coloured5722 = result5722)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5723 live5723 coloured5723 = result5723) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5724 live5724 coloured5724 = result5724 := by
  rw [tree5724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5722 coloured5722 at child
  try dsimp only [live5724, coloured5724]
  rw [child]
  dsimp only [result5722]
  have child := child1
  unfold live5723 coloured5723 at child
  try dsimp only [live5724, coloured5724]
  rw [child]
  dsimp only [result5723]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5725_agree_conditional : tree5725 = literal5725 := by
  rw [tree5725_def]
  rfl
theorem node5725_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5725 live5725 coloured5725 = result5725 := by
  rw [tree5725_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5726_agree_conditional
    (child0 : tree5724 = literal5724)
    (child1 : tree5725 = literal5725) : tree5726 = literal5726 := by
  rw [tree5726_def, child0, child1]
  rfl
theorem node5726_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5724 live5724 coloured5724 = result5724)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5725 live5725 coloured5725 = result5725) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5726 live5726 coloured5726 = result5726 := by
  rw [tree5726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5724 coloured5724 at child
  try dsimp only [live5726, coloured5726]
  rw [child]
  dsimp only [result5724]
  have child := child1
  unfold live5725 coloured5725 at child
  try dsimp only [live5726, coloured5726]
  rw [child]
  dsimp only [result5725]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5727_agree_conditional : tree5727 = literal5727 := by
  rw [tree5727_def]
  rfl
theorem node5727_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5727 live5727 coloured5727 = result5727 := by
  rw [tree5727_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5728_agree_conditional
    (child0 : tree5726 = literal5726)
    (child1 : tree5727 = literal5727) : tree5728 = literal5728 := by
  rw [tree5728_def, child0, child1]
  rfl
theorem node5728_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5726 live5726 coloured5726 = result5726)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5727 live5727 coloured5727 = result5727) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5728 live5728 coloured5728 = result5728 := by
  rw [tree5728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5726 coloured5726 at child
  try dsimp only [live5728, coloured5728]
  rw [child]
  dsimp only [result5726]
  have child := child1
  unfold live5727 coloured5727 at child
  try dsimp only [live5728, coloured5728]
  rw [child]
  dsimp only [result5727]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5729_agree_conditional : tree5729 = literal5729 := by
  rw [tree5729_def]
  rfl
theorem node5729_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5729 live5729 coloured5729 = result5729 := by
  rw [tree5729_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5730_agree_conditional
    (child0 : tree5728 = literal5728)
    (child1 : tree5729 = literal5729) : tree5730 = literal5730 := by
  rw [tree5730_def, child0, child1]
  rfl
theorem node5730_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5728 live5728 coloured5728 = result5728)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5729 live5729 coloured5729 = result5729) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5730 live5730 coloured5730 = result5730 := by
  rw [tree5730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5728 coloured5728 at child
  try dsimp only [live5730, coloured5730]
  rw [child]
  dsimp only [result5728]
  have child := child1
  unfold live5729 coloured5729 at child
  try dsimp only [live5730, coloured5730]
  rw [child]
  dsimp only [result5729]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5731_agree_conditional : tree5731 = literal5731 := by
  rw [tree5731_def]
  rfl
theorem node5731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5731 live5731 coloured5731 = result5731 := by
  rw [tree5731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5732_agree_conditional
    (child0 : tree5730 = literal5730)
    (child1 : tree5731 = literal5731) : tree5732 = literal5732 := by
  rw [tree5732_def, child0, child1]
  rfl
theorem node5732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5730 live5730 coloured5730 = result5730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5731 live5731 coloured5731 = result5731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5732 live5732 coloured5732 = result5732 := by
  rw [tree5732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5730 coloured5730 at child
  try dsimp only [live5732, coloured5732]
  rw [child]
  dsimp only [result5730]
  have child := child1
  unfold live5731 coloured5731 at child
  try dsimp only [live5732, coloured5732]
  rw [child]
  dsimp only [result5731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5733_agree_conditional : tree5733 = literal5733 := by
  rw [tree5733_def]
  rfl
theorem node5733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5733 live5733 coloured5733 = result5733 := by
  rw [tree5733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5734_agree_conditional
    (child0 : tree5732 = literal5732)
    (child1 : tree5733 = literal5733) : tree5734 = literal5734 := by
  rw [tree5734_def, child0, child1]
  rfl
theorem node5734_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5732 live5732 coloured5732 = result5732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5733 live5733 coloured5733 = result5733) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5734 live5734 coloured5734 = result5734 := by
  rw [tree5734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5732 coloured5732 at child
  try dsimp only [live5734, coloured5734]
  rw [child]
  dsimp only [result5732]
  have child := child1
  unfold live5733 coloured5733 at child
  try dsimp only [live5734, coloured5734]
  rw [child]
  dsimp only [result5733]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5735_agree_conditional : tree5735 = literal5735 := by
  rw [tree5735_def]
  rfl
theorem node5735_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5735 live5735 coloured5735 = result5735 := by
  rw [tree5735_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5736_agree_conditional
    (child0 : tree5734 = literal5734)
    (child1 : tree5735 = literal5735) : tree5736 = literal5736 := by
  rw [tree5736_def, child0, child1]
  rfl
theorem node5736_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5734 live5734 coloured5734 = result5734)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5735 live5735 coloured5735 = result5735) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5736 live5736 coloured5736 = result5736 := by
  rw [tree5736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5734 coloured5734 at child
  try dsimp only [live5736, coloured5736]
  rw [child]
  dsimp only [result5734]
  have child := child1
  unfold live5735 coloured5735 at child
  try dsimp only [live5736, coloured5736]
  rw [child]
  dsimp only [result5735]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5737_agree_conditional : tree5737 = literal5737 := by
  rw [tree5737_def]
  rfl
theorem node5737_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5737 live5737 coloured5737 = result5737 := by
  rw [tree5737_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5738_agree_conditional
    (child0 : tree5736 = literal5736)
    (child1 : tree5737 = literal5737) : tree5738 = literal5738 := by
  rw [tree5738_def, child0, child1]
  rfl
theorem node5738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5736 live5736 coloured5736 = result5736)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5737 live5737 coloured5737 = result5737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5738 live5738 coloured5738 = result5738 := by
  rw [tree5738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5736 coloured5736 at child
  try dsimp only [live5738, coloured5738]
  rw [child]
  dsimp only [result5736]
  have child := child1
  unfold live5737 coloured5737 at child
  try dsimp only [live5738, coloured5738]
  rw [child]
  dsimp only [result5737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5739_agree_conditional : tree5739 = literal5739 := by
  rw [tree5739_def]
  rfl
theorem node5739_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5739 live5739 coloured5739 = result5739 := by
  rw [tree5739_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5740_agree_conditional
    (child0 : tree5738 = literal5738)
    (child1 : tree5739 = literal5739) : tree5740 = literal5740 := by
  rw [tree5740_def, child0, child1]
  rfl
theorem node5740_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5738 live5738 coloured5738 = result5738)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5739 live5739 coloured5739 = result5739) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5740 live5740 coloured5740 = result5740 := by
  rw [tree5740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5738 coloured5738 at child
  try dsimp only [live5740, coloured5740]
  rw [child]
  dsimp only [result5738]
  have child := child1
  unfold live5739 coloured5739 at child
  try dsimp only [live5740, coloured5740]
  rw [child]
  dsimp only [result5739]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5741_agree_conditional : tree5741 = literal5741 := by
  rw [tree5741_def]
  rfl
theorem node5741_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5741 live5741 coloured5741 = result5741 := by
  rw [tree5741_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5742_agree_conditional
    (child0 : tree5740 = literal5740)
    (child1 : tree5741 = literal5741) : tree5742 = literal5742 := by
  rw [tree5742_def, child0, child1]
  rfl
theorem node5742_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5740 live5740 coloured5740 = result5740)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5741 live5741 coloured5741 = result5741) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5742 live5742 coloured5742 = result5742 := by
  rw [tree5742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5740 coloured5740 at child
  try dsimp only [live5742, coloured5742]
  rw [child]
  dsimp only [result5740]
  have child := child1
  unfold live5741 coloured5741 at child
  try dsimp only [live5742, coloured5742]
  rw [child]
  dsimp only [result5741]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5743_agree_conditional : tree5743 = literal5743 := by
  rw [tree5743_def]
  rfl
theorem node5743_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5743 live5743 coloured5743 = result5743 := by
  rw [tree5743_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5744_agree_conditional
    (child0 : tree5742 = literal5742)
    (child1 : tree5743 = literal5743) : tree5744 = literal5744 := by
  rw [tree5744_def, child0, child1]
  rfl
theorem node5744_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5742 live5742 coloured5742 = result5742)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5743 live5743 coloured5743 = result5743) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5744 live5744 coloured5744 = result5744 := by
  rw [tree5744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5742 coloured5742 at child
  try dsimp only [live5744, coloured5744]
  rw [child]
  dsimp only [result5742]
  have child := child1
  unfold live5743 coloured5743 at child
  try dsimp only [live5744, coloured5744]
  rw [child]
  dsimp only [result5743]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5745_agree_conditional : tree5745 = literal5745 := by
  rw [tree5745_def]
  rfl
theorem node5745_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5745 live5745 coloured5745 = result5745 := by
  rw [tree5745_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5746_agree_conditional
    (child0 : tree5744 = literal5744)
    (child1 : tree5745 = literal5745) : tree5746 = literal5746 := by
  rw [tree5746_def, child0, child1]
  rfl
theorem node5746_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5744 live5744 coloured5744 = result5744)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5745 live5745 coloured5745 = result5745) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5746 live5746 coloured5746 = result5746 := by
  rw [tree5746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5744 coloured5744 at child
  try dsimp only [live5746, coloured5746]
  rw [child]
  dsimp only [result5744]
  have child := child1
  unfold live5745 coloured5745 at child
  try dsimp only [live5746, coloured5746]
  rw [child]
  dsimp only [result5745]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5747_agree_conditional : tree5747 = literal5747 := by
  rw [tree5747_def]
  rfl
theorem node5747_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5747 live5747 coloured5747 = result5747 := by
  rw [tree5747_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5748_agree_conditional
    (child0 : tree5746 = literal5746)
    (child1 : tree5747 = literal5747) : tree5748 = literal5748 := by
  rw [tree5748_def, child0, child1]
  rfl
theorem node5748_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5746 live5746 coloured5746 = result5746)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5747 live5747 coloured5747 = result5747) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5748 live5748 coloured5748 = result5748 := by
  rw [tree5748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5746 coloured5746 at child
  try dsimp only [live5748, coloured5748]
  rw [child]
  dsimp only [result5746]
  have child := child1
  unfold live5747 coloured5747 at child
  try dsimp only [live5748, coloured5748]
  rw [child]
  dsimp only [result5747]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5749_agree_conditional : tree5749 = literal5749 := by
  rw [tree5749_def]
  rfl
theorem node5749_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5749 live5749 coloured5749 = result5749 := by
  rw [tree5749_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5750_agree_conditional
    (child0 : tree5748 = literal5748)
    (child1 : tree5749 = literal5749) : tree5750 = literal5750 := by
  rw [tree5750_def, child0, child1]
  rfl
theorem node5750_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5748 live5748 coloured5748 = result5748)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5749 live5749 coloured5749 = result5749) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5750 live5750 coloured5750 = result5750 := by
  rw [tree5750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5748 coloured5748 at child
  try dsimp only [live5750, coloured5750]
  rw [child]
  dsimp only [result5748]
  have child := child1
  unfold live5749 coloured5749 at child
  try dsimp only [live5750, coloured5750]
  rw [child]
  dsimp only [result5749]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5751_agree_conditional : tree5751 = literal5751 := by
  rw [tree5751_def]
  rfl
theorem node5751_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5751 live5751 coloured5751 = result5751 := by
  rw [tree5751_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5752_agree_conditional
    (child0 : tree5750 = literal5750)
    (child1 : tree5751 = literal5751) : tree5752 = literal5752 := by
  rw [tree5752_def, child0, child1]
  rfl
theorem node5752_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5750 live5750 coloured5750 = result5750)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5751 live5751 coloured5751 = result5751) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5752 live5752 coloured5752 = result5752 := by
  rw [tree5752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5750 coloured5750 at child
  try dsimp only [live5752, coloured5752]
  rw [child]
  dsimp only [result5750]
  have child := child1
  unfold live5751 coloured5751 at child
  try dsimp only [live5752, coloured5752]
  rw [child]
  dsimp only [result5751]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5753_agree_conditional : tree5753 = literal5753 := by
  rw [tree5753_def]
  rfl
theorem node5753_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5753 live5753 coloured5753 = result5753 := by
  rw [tree5753_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5754_agree_conditional
    (child0 : tree5752 = literal5752)
    (child1 : tree5753 = literal5753) : tree5754 = literal5754 := by
  rw [tree5754_def, child0, child1]
  rfl
theorem node5754_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5752 live5752 coloured5752 = result5752)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5753 live5753 coloured5753 = result5753) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5754 live5754 coloured5754 = result5754 := by
  rw [tree5754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5752 coloured5752 at child
  try dsimp only [live5754, coloured5754]
  rw [child]
  dsimp only [result5752]
  have child := child1
  unfold live5753 coloured5753 at child
  try dsimp only [live5754, coloured5754]
  rw [child]
  dsimp only [result5753]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5755_agree_conditional : tree5755 = literal5755 := by
  rw [tree5755_def]
  rfl
theorem node5755_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5755 live5755 coloured5755 = result5755 := by
  rw [tree5755_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5756_agree_conditional
    (child0 : tree5754 = literal5754)
    (child1 : tree5755 = literal5755) : tree5756 = literal5756 := by
  rw [tree5756_def, child0, child1]
  rfl
theorem node5756_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5754 live5754 coloured5754 = result5754)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5755 live5755 coloured5755 = result5755) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5756 live5756 coloured5756 = result5756 := by
  rw [tree5756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5754 coloured5754 at child
  try dsimp only [live5756, coloured5756]
  rw [child]
  dsimp only [result5754]
  have child := child1
  unfold live5755 coloured5755 at child
  try dsimp only [live5756, coloured5756]
  rw [child]
  dsimp only [result5755]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5757_agree_conditional : tree5757 = literal5757 := by
  rw [tree5757_def]
  rfl
theorem node5757_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5757 live5757 coloured5757 = result5757 := by
  rw [tree5757_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5758_agree_conditional
    (child0 : tree5756 = literal5756)
    (child1 : tree5757 = literal5757) : tree5758 = literal5758 := by
  rw [tree5758_def, child0, child1]
  rfl
theorem node5758_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5756 live5756 coloured5756 = result5756)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5757 live5757 coloured5757 = result5757) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5758 live5758 coloured5758 = result5758 := by
  rw [tree5758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5756 coloured5756 at child
  try dsimp only [live5758, coloured5758]
  rw [child]
  dsimp only [result5756]
  have child := child1
  unfold live5757 coloured5757 at child
  try dsimp only [live5758, coloured5758]
  rw [child]
  dsimp only [result5757]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5759_agree_conditional : tree5759 = literal5759 := by
  rw [tree5759_def]
  rfl
theorem node5759_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5759 live5759 coloured5759 = result5759 := by
  rw [tree5759_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
