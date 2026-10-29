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
theorem tree7680_agree_conditional
    (child0 : tree7678 = literal7678)
    (child1 : tree7679 = literal7679) : tree7680 = literal7680 := by
  rw [tree7680_def, child0, child1]
  rfl
theorem node7680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7678 live7678 coloured7678 = result7678)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7679 live7679 coloured7679 = result7679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7680 live7680 coloured7680 = result7680 := by
  rw [tree7680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7678 coloured7678 at child
  try dsimp only [live7680, coloured7680]
  rw [child]
  dsimp only [result7678]
  have child := child1
  unfold live7679 coloured7679 at child
  try dsimp only [live7680, coloured7680]
  rw [child]
  dsimp only [result7679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7681_agree_conditional : tree7681 = literal7681 := by
  rw [tree7681_def]
  rfl
theorem node7681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7681 live7681 coloured7681 = result7681 := by
  rw [tree7681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7682_agree_conditional
    (child0 : tree7680 = literal7680)
    (child1 : tree7681 = literal7681) : tree7682 = literal7682 := by
  rw [tree7682_def, child0, child1]
  rfl
theorem node7682_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7680 live7680 coloured7680 = result7680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7681 live7681 coloured7681 = result7681) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7682 live7682 coloured7682 = result7682 := by
  rw [tree7682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7680 coloured7680 at child
  try dsimp only [live7682, coloured7682]
  rw [child]
  dsimp only [result7680]
  have child := child1
  unfold live7681 coloured7681 at child
  try dsimp only [live7682, coloured7682]
  rw [child]
  dsimp only [result7681]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7683_agree_conditional : tree7683 = literal7683 := by
  rw [tree7683_def]
  rfl
theorem node7683_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7683 live7683 coloured7683 = result7683 := by
  rw [tree7683_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7684_agree_conditional
    (child0 : tree7682 = literal7682)
    (child1 : tree7683 = literal7683) : tree7684 = literal7684 := by
  rw [tree7684_def, child0, child1]
  rfl
theorem node7684_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7682 live7682 coloured7682 = result7682)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7683 live7683 coloured7683 = result7683) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7684 live7684 coloured7684 = result7684 := by
  rw [tree7684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7682 coloured7682 at child
  try dsimp only [live7684, coloured7684]
  rw [child]
  dsimp only [result7682]
  have child := child1
  unfold live7683 coloured7683 at child
  try dsimp only [live7684, coloured7684]
  rw [child]
  dsimp only [result7683]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7685_agree_conditional : tree7685 = literal7685 := by
  rw [tree7685_def]
  rfl
theorem node7685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7685 live7685 coloured7685 = result7685 := by
  rw [tree7685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7686_agree_conditional
    (child0 : tree7684 = literal7684)
    (child1 : tree7685 = literal7685) : tree7686 = literal7686 := by
  rw [tree7686_def, child0, child1]
  rfl
theorem node7686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7684 live7684 coloured7684 = result7684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7685 live7685 coloured7685 = result7685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7686 live7686 coloured7686 = result7686 := by
  rw [tree7686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7684 coloured7684 at child
  try dsimp only [live7686, coloured7686]
  rw [child]
  dsimp only [result7684]
  have child := child1
  unfold live7685 coloured7685 at child
  try dsimp only [live7686, coloured7686]
  rw [child]
  dsimp only [result7685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7687_agree_conditional : tree7687 = literal7687 := by
  rw [tree7687_def]
  rfl
theorem node7687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7687 live7687 coloured7687 = result7687 := by
  rw [tree7687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7688_agree_conditional
    (child0 : tree7686 = literal7686)
    (child1 : tree7687 = literal7687) : tree7688 = literal7688 := by
  rw [tree7688_def, child0, child1]
  rfl
theorem node7688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7686 live7686 coloured7686 = result7686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7687 live7687 coloured7687 = result7687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7688 live7688 coloured7688 = result7688 := by
  rw [tree7688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7686 coloured7686 at child
  try dsimp only [live7688, coloured7688]
  rw [child]
  dsimp only [result7686]
  have child := child1
  unfold live7687 coloured7687 at child
  try dsimp only [live7688, coloured7688]
  rw [child]
  dsimp only [result7687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7689_agree_conditional : tree7689 = literal7689 := by
  rw [tree7689_def]
  rfl
theorem node7689_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7689 live7689 coloured7689 = result7689 := by
  rw [tree7689_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7690_agree_conditional
    (child0 : tree7688 = literal7688)
    (child1 : tree7689 = literal7689) : tree7690 = literal7690 := by
  rw [tree7690_def, child0, child1]
  rfl
theorem node7690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7688 live7688 coloured7688 = result7688)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7689 live7689 coloured7689 = result7689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7690 live7690 coloured7690 = result7690 := by
  rw [tree7690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7688 coloured7688 at child
  try dsimp only [live7690, coloured7690]
  rw [child]
  dsimp only [result7688]
  have child := child1
  unfold live7689 coloured7689 at child
  try dsimp only [live7690, coloured7690]
  rw [child]
  dsimp only [result7689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7691_agree_conditional : tree7691 = literal7691 := by
  rw [tree7691_def]
  rfl
theorem node7691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7691 live7691 coloured7691 = result7691 := by
  rw [tree7691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7692_agree_conditional
    (child0 : tree7690 = literal7690)
    (child1 : tree7691 = literal7691) : tree7692 = literal7692 := by
  rw [tree7692_def, child0, child1]
  rfl
theorem node7692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7690 live7690 coloured7690 = result7690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7691 live7691 coloured7691 = result7691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7692 live7692 coloured7692 = result7692 := by
  rw [tree7692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7690 coloured7690 at child
  try dsimp only [live7692, coloured7692]
  rw [child]
  dsimp only [result7690]
  have child := child1
  unfold live7691 coloured7691 at child
  try dsimp only [live7692, coloured7692]
  rw [child]
  dsimp only [result7691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7693_agree_conditional : tree7693 = literal7693 := by
  rw [tree7693_def]
  rfl
theorem node7693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7693 live7693 coloured7693 = result7693 := by
  rw [tree7693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7694_agree_conditional
    (child0 : tree7692 = literal7692)
    (child1 : tree7693 = literal7693) : tree7694 = literal7694 := by
  rw [tree7694_def, child0, child1]
  rfl
theorem node7694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7692 live7692 coloured7692 = result7692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7693 live7693 coloured7693 = result7693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7694 live7694 coloured7694 = result7694 := by
  rw [tree7694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7692 coloured7692 at child
  try dsimp only [live7694, coloured7694]
  rw [child]
  dsimp only [result7692]
  have child := child1
  unfold live7693 coloured7693 at child
  try dsimp only [live7694, coloured7694]
  rw [child]
  dsimp only [result7693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7695_agree_conditional : tree7695 = literal7695 := by
  rw [tree7695_def]
  rfl
theorem node7695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7695 live7695 coloured7695 = result7695 := by
  rw [tree7695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7696_agree_conditional
    (child0 : tree7694 = literal7694)
    (child1 : tree7695 = literal7695) : tree7696 = literal7696 := by
  rw [tree7696_def, child0, child1]
  rfl
theorem node7696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7694 live7694 coloured7694 = result7694)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7695 live7695 coloured7695 = result7695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7696 live7696 coloured7696 = result7696 := by
  rw [tree7696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7694 coloured7694 at child
  try dsimp only [live7696, coloured7696]
  rw [child]
  dsimp only [result7694]
  have child := child1
  unfold live7695 coloured7695 at child
  try dsimp only [live7696, coloured7696]
  rw [child]
  dsimp only [result7695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7697_agree_conditional : tree7697 = literal7697 := by
  rw [tree7697_def]
  rfl
theorem node7697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7697 live7697 coloured7697 = result7697 := by
  rw [tree7697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7698_agree_conditional
    (child0 : tree7696 = literal7696)
    (child1 : tree7697 = literal7697) : tree7698 = literal7698 := by
  rw [tree7698_def, child0, child1]
  rfl
theorem node7698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7696 live7696 coloured7696 = result7696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7697 live7697 coloured7697 = result7697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7698 live7698 coloured7698 = result7698 := by
  rw [tree7698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7696 coloured7696 at child
  try dsimp only [live7698, coloured7698]
  rw [child]
  dsimp only [result7696]
  have child := child1
  unfold live7697 coloured7697 at child
  try dsimp only [live7698, coloured7698]
  rw [child]
  dsimp only [result7697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7699_agree_conditional : tree7699 = literal7699 := by
  rw [tree7699_def]
  rfl
theorem node7699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7699 live7699 coloured7699 = result7699 := by
  rw [tree7699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7700_agree_conditional
    (child0 : tree7698 = literal7698)
    (child1 : tree7699 = literal7699) : tree7700 = literal7700 := by
  rw [tree7700_def, child0, child1]
  rfl
theorem node7700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7698 live7698 coloured7698 = result7698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7699 live7699 coloured7699 = result7699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7700 live7700 coloured7700 = result7700 := by
  rw [tree7700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7698 coloured7698 at child
  try dsimp only [live7700, coloured7700]
  rw [child]
  dsimp only [result7698]
  have child := child1
  unfold live7699 coloured7699 at child
  try dsimp only [live7700, coloured7700]
  rw [child]
  dsimp only [result7699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7701_agree_conditional : tree7701 = literal7701 := by
  rw [tree7701_def]
  rfl
theorem node7701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7701 live7701 coloured7701 = result7701 := by
  rw [tree7701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7702_agree_conditional
    (child0 : tree7700 = literal7700)
    (child1 : tree7701 = literal7701) : tree7702 = literal7702 := by
  rw [tree7702_def, child0, child1]
  rfl
theorem node7702_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7700 live7700 coloured7700 = result7700)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7701 live7701 coloured7701 = result7701) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7702 live7702 coloured7702 = result7702 := by
  rw [tree7702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7700 coloured7700 at child
  try dsimp only [live7702, coloured7702]
  rw [child]
  dsimp only [result7700]
  have child := child1
  unfold live7701 coloured7701 at child
  try dsimp only [live7702, coloured7702]
  rw [child]
  dsimp only [result7701]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7703_agree_conditional : tree7703 = literal7703 := by
  rw [tree7703_def]
  rfl
theorem node7703_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7703 live7703 coloured7703 = result7703 := by
  rw [tree7703_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7704_agree_conditional
    (child0 : tree7702 = literal7702)
    (child1 : tree7703 = literal7703) : tree7704 = literal7704 := by
  rw [tree7704_def, child0, child1]
  rfl
theorem node7704_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7702 live7702 coloured7702 = result7702)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7703 live7703 coloured7703 = result7703) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7704 live7704 coloured7704 = result7704 := by
  rw [tree7704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7702 coloured7702 at child
  try dsimp only [live7704, coloured7704]
  rw [child]
  dsimp only [result7702]
  have child := child1
  unfold live7703 coloured7703 at child
  try dsimp only [live7704, coloured7704]
  rw [child]
  dsimp only [result7703]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7705_agree_conditional : tree7705 = literal7705 := by
  rw [tree7705_def]
  rfl
theorem node7705_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7705 live7705 coloured7705 = result7705 := by
  rw [tree7705_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7706_agree_conditional
    (child0 : tree7704 = literal7704)
    (child1 : tree7705 = literal7705) : tree7706 = literal7706 := by
  rw [tree7706_def, child0, child1]
  rfl
theorem node7706_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7704 live7704 coloured7704 = result7704)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7705 live7705 coloured7705 = result7705) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7706 live7706 coloured7706 = result7706 := by
  rw [tree7706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7704 coloured7704 at child
  try dsimp only [live7706, coloured7706]
  rw [child]
  dsimp only [result7704]
  have child := child1
  unfold live7705 coloured7705 at child
  try dsimp only [live7706, coloured7706]
  rw [child]
  dsimp only [result7705]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7707_agree_conditional : tree7707 = literal7707 := by
  rw [tree7707_def]
  rfl
theorem node7707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7707 live7707 coloured7707 = result7707 := by
  rw [tree7707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7708_agree_conditional
    (child0 : tree7706 = literal7706)
    (child1 : tree7707 = literal7707) : tree7708 = literal7708 := by
  rw [tree7708_def, child0, child1]
  rfl
theorem node7708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7706 live7706 coloured7706 = result7706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7707 live7707 coloured7707 = result7707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7708 live7708 coloured7708 = result7708 := by
  rw [tree7708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7706 coloured7706 at child
  try dsimp only [live7708, coloured7708]
  rw [child]
  dsimp only [result7706]
  have child := child1
  unfold live7707 coloured7707 at child
  try dsimp only [live7708, coloured7708]
  rw [child]
  dsimp only [result7707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7709_agree_conditional : tree7709 = literal7709 := by
  rw [tree7709_def]
  rfl
theorem node7709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7709 live7709 coloured7709 = result7709 := by
  rw [tree7709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7710_agree_conditional
    (child0 : tree7708 = literal7708)
    (child1 : tree7709 = literal7709) : tree7710 = literal7710 := by
  rw [tree7710_def, child0, child1]
  rfl
theorem node7710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7708 live7708 coloured7708 = result7708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7709 live7709 coloured7709 = result7709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7710 live7710 coloured7710 = result7710 := by
  rw [tree7710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7708 coloured7708 at child
  try dsimp only [live7710, coloured7710]
  rw [child]
  dsimp only [result7708]
  have child := child1
  unfold live7709 coloured7709 at child
  try dsimp only [live7710, coloured7710]
  rw [child]
  dsimp only [result7709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7711_agree_conditional : tree7711 = literal7711 := by
  rw [tree7711_def]
  rfl
theorem node7711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7711 live7711 coloured7711 = result7711 := by
  rw [tree7711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7712_agree_conditional
    (child0 : tree7710 = literal7710)
    (child1 : tree7711 = literal7711) : tree7712 = literal7712 := by
  rw [tree7712_def, child0, child1]
  rfl
theorem node7712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7710 live7710 coloured7710 = result7710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7711 live7711 coloured7711 = result7711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7712 live7712 coloured7712 = result7712 := by
  rw [tree7712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7710 coloured7710 at child
  try dsimp only [live7712, coloured7712]
  rw [child]
  dsimp only [result7710]
  have child := child1
  unfold live7711 coloured7711 at child
  try dsimp only [live7712, coloured7712]
  rw [child]
  dsimp only [result7711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7713_agree_conditional : tree7713 = literal7713 := by
  rw [tree7713_def]
  rfl
theorem node7713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7713 live7713 coloured7713 = result7713 := by
  rw [tree7713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7714_agree_conditional
    (child0 : tree7712 = literal7712)
    (child1 : tree7713 = literal7713) : tree7714 = literal7714 := by
  rw [tree7714_def, child0, child1]
  rfl
theorem node7714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7712 live7712 coloured7712 = result7712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7713 live7713 coloured7713 = result7713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7714 live7714 coloured7714 = result7714 := by
  rw [tree7714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7712 coloured7712 at child
  try dsimp only [live7714, coloured7714]
  rw [child]
  dsimp only [result7712]
  have child := child1
  unfold live7713 coloured7713 at child
  try dsimp only [live7714, coloured7714]
  rw [child]
  dsimp only [result7713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7715_agree_conditional : tree7715 = literal7715 := by
  rw [tree7715_def]
  rfl
theorem node7715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7715 live7715 coloured7715 = result7715 := by
  rw [tree7715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7716_agree_conditional
    (child0 : tree7714 = literal7714)
    (child1 : tree7715 = literal7715) : tree7716 = literal7716 := by
  rw [tree7716_def, child0, child1]
  rfl
theorem node7716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7714 live7714 coloured7714 = result7714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7715 live7715 coloured7715 = result7715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7716 live7716 coloured7716 = result7716 := by
  rw [tree7716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7714 coloured7714 at child
  try dsimp only [live7716, coloured7716]
  rw [child]
  dsimp only [result7714]
  have child := child1
  unfold live7715 coloured7715 at child
  try dsimp only [live7716, coloured7716]
  rw [child]
  dsimp only [result7715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7717_agree_conditional : tree7717 = literal7717 := by
  rw [tree7717_def]
  rfl
theorem node7717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7717 live7717 coloured7717 = result7717 := by
  rw [tree7717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7718_agree_conditional
    (child0 : tree7716 = literal7716)
    (child1 : tree7717 = literal7717) : tree7718 = literal7718 := by
  rw [tree7718_def, child0, child1]
  rfl
theorem node7718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7716 live7716 coloured7716 = result7716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7717 live7717 coloured7717 = result7717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7718 live7718 coloured7718 = result7718 := by
  rw [tree7718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7716 coloured7716 at child
  try dsimp only [live7718, coloured7718]
  rw [child]
  dsimp only [result7716]
  have child := child1
  unfold live7717 coloured7717 at child
  try dsimp only [live7718, coloured7718]
  rw [child]
  dsimp only [result7717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7719_agree_conditional : tree7719 = literal7719 := by
  rw [tree7719_def]
  rfl
theorem node7719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7719 live7719 coloured7719 = result7719 := by
  rw [tree7719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7720_agree_conditional
    (child0 : tree7718 = literal7718)
    (child1 : tree7719 = literal7719) : tree7720 = literal7720 := by
  rw [tree7720_def, child0, child1]
  rfl
theorem node7720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7718 live7718 coloured7718 = result7718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7719 live7719 coloured7719 = result7719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7720 live7720 coloured7720 = result7720 := by
  rw [tree7720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7718 coloured7718 at child
  try dsimp only [live7720, coloured7720]
  rw [child]
  dsimp only [result7718]
  have child := child1
  unfold live7719 coloured7719 at child
  try dsimp only [live7720, coloured7720]
  rw [child]
  dsimp only [result7719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7721_agree_conditional : tree7721 = literal7721 := by
  rw [tree7721_def]
  rfl
theorem node7721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7721 live7721 coloured7721 = result7721 := by
  rw [tree7721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7722_agree_conditional
    (child0 : tree7720 = literal7720)
    (child1 : tree7721 = literal7721) : tree7722 = literal7722 := by
  rw [tree7722_def, child0, child1]
  rfl
theorem node7722_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7720 live7720 coloured7720 = result7720)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7721 live7721 coloured7721 = result7721) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7722 live7722 coloured7722 = result7722 := by
  rw [tree7722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7720 coloured7720 at child
  try dsimp only [live7722, coloured7722]
  rw [child]
  dsimp only [result7720]
  have child := child1
  unfold live7721 coloured7721 at child
  try dsimp only [live7722, coloured7722]
  rw [child]
  dsimp only [result7721]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7723_agree_conditional : tree7723 = literal7723 := by
  rw [tree7723_def]
  rfl
theorem node7723_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7723 live7723 coloured7723 = result7723 := by
  rw [tree7723_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7724_agree_conditional
    (child0 : tree7722 = literal7722)
    (child1 : tree7723 = literal7723) : tree7724 = literal7724 := by
  rw [tree7724_def, child0, child1]
  rfl
theorem node7724_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7722 live7722 coloured7722 = result7722)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7723 live7723 coloured7723 = result7723) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7724 live7724 coloured7724 = result7724 := by
  rw [tree7724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7722 coloured7722 at child
  try dsimp only [live7724, coloured7724]
  rw [child]
  dsimp only [result7722]
  have child := child1
  unfold live7723 coloured7723 at child
  try dsimp only [live7724, coloured7724]
  rw [child]
  dsimp only [result7723]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7725_agree_conditional : tree7725 = literal7725 := by
  rw [tree7725_def]
  rfl
theorem node7725_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7725 live7725 coloured7725 = result7725 := by
  rw [tree7725_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7726_agree_conditional
    (child0 : tree7724 = literal7724)
    (child1 : tree7725 = literal7725) : tree7726 = literal7726 := by
  rw [tree7726_def, child0, child1]
  rfl
theorem node7726_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7724 live7724 coloured7724 = result7724)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7725 live7725 coloured7725 = result7725) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7726 live7726 coloured7726 = result7726 := by
  rw [tree7726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7724 coloured7724 at child
  try dsimp only [live7726, coloured7726]
  rw [child]
  dsimp only [result7724]
  have child := child1
  unfold live7725 coloured7725 at child
  try dsimp only [live7726, coloured7726]
  rw [child]
  dsimp only [result7725]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7727_agree_conditional : tree7727 = literal7727 := by
  rw [tree7727_def]
  rfl
theorem node7727_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7727 live7727 coloured7727 = result7727 := by
  rw [tree7727_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7728_agree_conditional
    (child0 : tree7726 = literal7726)
    (child1 : tree7727 = literal7727) : tree7728 = literal7728 := by
  rw [tree7728_def, child0, child1]
  rfl
theorem node7728_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7726 live7726 coloured7726 = result7726)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7727 live7727 coloured7727 = result7727) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7728 live7728 coloured7728 = result7728 := by
  rw [tree7728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7726 coloured7726 at child
  try dsimp only [live7728, coloured7728]
  rw [child]
  dsimp only [result7726]
  have child := child1
  unfold live7727 coloured7727 at child
  try dsimp only [live7728, coloured7728]
  rw [child]
  dsimp only [result7727]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7729_agree_conditional : tree7729 = literal7729 := by
  rw [tree7729_def]
  rfl
theorem node7729_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7729 live7729 coloured7729 = result7729 := by
  rw [tree7729_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7730_agree_conditional
    (child0 : tree7728 = literal7728)
    (child1 : tree7729 = literal7729) : tree7730 = literal7730 := by
  rw [tree7730_def, child0, child1]
  rfl
theorem node7730_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7728 live7728 coloured7728 = result7728)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7729 live7729 coloured7729 = result7729) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7730 live7730 coloured7730 = result7730 := by
  rw [tree7730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7728 coloured7728 at child
  try dsimp only [live7730, coloured7730]
  rw [child]
  dsimp only [result7728]
  have child := child1
  unfold live7729 coloured7729 at child
  try dsimp only [live7730, coloured7730]
  rw [child]
  dsimp only [result7729]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7731_agree_conditional : tree7731 = literal7731 := by
  rw [tree7731_def]
  rfl
theorem node7731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7731 live7731 coloured7731 = result7731 := by
  rw [tree7731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7732_agree_conditional
    (child0 : tree7730 = literal7730)
    (child1 : tree7731 = literal7731) : tree7732 = literal7732 := by
  rw [tree7732_def, child0, child1]
  rfl
theorem node7732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7730 live7730 coloured7730 = result7730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7731 live7731 coloured7731 = result7731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7732 live7732 coloured7732 = result7732 := by
  rw [tree7732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7730 coloured7730 at child
  try dsimp only [live7732, coloured7732]
  rw [child]
  dsimp only [result7730]
  have child := child1
  unfold live7731 coloured7731 at child
  try dsimp only [live7732, coloured7732]
  rw [child]
  dsimp only [result7731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7733_agree_conditional : tree7733 = literal7733 := by
  rw [tree7733_def]
  rfl
theorem node7733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7733 live7733 coloured7733 = result7733 := by
  rw [tree7733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7734_agree_conditional
    (child0 : tree7732 = literal7732)
    (child1 : tree7733 = literal7733) : tree7734 = literal7734 := by
  rw [tree7734_def, child0, child1]
  rfl
theorem node7734_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7732 live7732 coloured7732 = result7732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7733 live7733 coloured7733 = result7733) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7734 live7734 coloured7734 = result7734 := by
  rw [tree7734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7732 coloured7732 at child
  try dsimp only [live7734, coloured7734]
  rw [child]
  dsimp only [result7732]
  have child := child1
  unfold live7733 coloured7733 at child
  try dsimp only [live7734, coloured7734]
  rw [child]
  dsimp only [result7733]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7735_agree_conditional : tree7735 = literal7735 := by
  rw [tree7735_def]
  rfl
theorem node7735_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7735 live7735 coloured7735 = result7735 := by
  rw [tree7735_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7736_agree_conditional
    (child0 : tree7734 = literal7734)
    (child1 : tree7735 = literal7735) : tree7736 = literal7736 := by
  rw [tree7736_def, child0, child1]
  rfl
theorem node7736_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7734 live7734 coloured7734 = result7734)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7735 live7735 coloured7735 = result7735) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7736 live7736 coloured7736 = result7736 := by
  rw [tree7736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7734 coloured7734 at child
  try dsimp only [live7736, coloured7736]
  rw [child]
  dsimp only [result7734]
  have child := child1
  unfold live7735 coloured7735 at child
  try dsimp only [live7736, coloured7736]
  rw [child]
  dsimp only [result7735]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7737_agree_conditional : tree7737 = literal7737 := by
  rw [tree7737_def]
  rfl
theorem node7737_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7737 live7737 coloured7737 = result7737 := by
  rw [tree7737_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7738_agree_conditional
    (child0 : tree7736 = literal7736)
    (child1 : tree7737 = literal7737) : tree7738 = literal7738 := by
  rw [tree7738_def, child0, child1]
  rfl
theorem node7738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7736 live7736 coloured7736 = result7736)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7737 live7737 coloured7737 = result7737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7738 live7738 coloured7738 = result7738 := by
  rw [tree7738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7736 coloured7736 at child
  try dsimp only [live7738, coloured7738]
  rw [child]
  dsimp only [result7736]
  have child := child1
  unfold live7737 coloured7737 at child
  try dsimp only [live7738, coloured7738]
  rw [child]
  dsimp only [result7737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7739_agree_conditional : tree7739 = literal7739 := by
  rw [tree7739_def]
  rfl
theorem node7739_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7739 live7739 coloured7739 = result7739 := by
  rw [tree7739_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7740_agree_conditional
    (child0 : tree7738 = literal7738)
    (child1 : tree7739 = literal7739) : tree7740 = literal7740 := by
  rw [tree7740_def, child0, child1]
  rfl
theorem node7740_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7738 live7738 coloured7738 = result7738)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7739 live7739 coloured7739 = result7739) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7740 live7740 coloured7740 = result7740 := by
  rw [tree7740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7738 coloured7738 at child
  try dsimp only [live7740, coloured7740]
  rw [child]
  dsimp only [result7738]
  have child := child1
  unfold live7739 coloured7739 at child
  try dsimp only [live7740, coloured7740]
  rw [child]
  dsimp only [result7739]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7741_agree_conditional : tree7741 = literal7741 := by
  rw [tree7741_def]
  rfl
theorem node7741_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7741 live7741 coloured7741 = result7741 := by
  rw [tree7741_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7742_agree_conditional
    (child0 : tree7740 = literal7740)
    (child1 : tree7741 = literal7741) : tree7742 = literal7742 := by
  rw [tree7742_def, child0, child1]
  rfl
theorem node7742_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7740 live7740 coloured7740 = result7740)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7741 live7741 coloured7741 = result7741) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7742 live7742 coloured7742 = result7742 := by
  rw [tree7742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7740 coloured7740 at child
  try dsimp only [live7742, coloured7742]
  rw [child]
  dsimp only [result7740]
  have child := child1
  unfold live7741 coloured7741 at child
  try dsimp only [live7742, coloured7742]
  rw [child]
  dsimp only [result7741]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7743_agree_conditional : tree7743 = literal7743 := by
  rw [tree7743_def]
  rfl
theorem node7743_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7743 live7743 coloured7743 = result7743 := by
  rw [tree7743_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7744_agree_conditional
    (child0 : tree7742 = literal7742)
    (child1 : tree7743 = literal7743) : tree7744 = literal7744 := by
  rw [tree7744_def, child0, child1]
  rfl
theorem node7744_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7742 live7742 coloured7742 = result7742)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7743 live7743 coloured7743 = result7743) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7744 live7744 coloured7744 = result7744 := by
  rw [tree7744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7742 coloured7742 at child
  try dsimp only [live7744, coloured7744]
  rw [child]
  dsimp only [result7742]
  have child := child1
  unfold live7743 coloured7743 at child
  try dsimp only [live7744, coloured7744]
  rw [child]
  dsimp only [result7743]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7745_agree_conditional : tree7745 = literal7745 := by
  rw [tree7745_def]
  rfl
theorem node7745_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7745 live7745 coloured7745 = result7745 := by
  rw [tree7745_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7746_agree_conditional
    (child0 : tree7744 = literal7744)
    (child1 : tree7745 = literal7745) : tree7746 = literal7746 := by
  rw [tree7746_def, child0, child1]
  rfl
theorem node7746_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7744 live7744 coloured7744 = result7744)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7745 live7745 coloured7745 = result7745) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7746 live7746 coloured7746 = result7746 := by
  rw [tree7746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7744 coloured7744 at child
  try dsimp only [live7746, coloured7746]
  rw [child]
  dsimp only [result7744]
  have child := child1
  unfold live7745 coloured7745 at child
  try dsimp only [live7746, coloured7746]
  rw [child]
  dsimp only [result7745]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7747_agree_conditional : tree7747 = literal7747 := by
  rw [tree7747_def]
  rfl
theorem node7747_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7747 live7747 coloured7747 = result7747 := by
  rw [tree7747_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7748_agree_conditional
    (child0 : tree7746 = literal7746)
    (child1 : tree7747 = literal7747) : tree7748 = literal7748 := by
  rw [tree7748_def, child0, child1]
  rfl
theorem node7748_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7746 live7746 coloured7746 = result7746)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7747 live7747 coloured7747 = result7747) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7748 live7748 coloured7748 = result7748 := by
  rw [tree7748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7746 coloured7746 at child
  try dsimp only [live7748, coloured7748]
  rw [child]
  dsimp only [result7746]
  have child := child1
  unfold live7747 coloured7747 at child
  try dsimp only [live7748, coloured7748]
  rw [child]
  dsimp only [result7747]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7749_agree_conditional : tree7749 = literal7749 := by
  rw [tree7749_def]
  rfl
theorem node7749_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7749 live7749 coloured7749 = result7749 := by
  rw [tree7749_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7750_agree_conditional
    (child0 : tree7748 = literal7748)
    (child1 : tree7749 = literal7749) : tree7750 = literal7750 := by
  rw [tree7750_def, child0, child1]
  rfl
theorem node7750_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7748 live7748 coloured7748 = result7748)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7749 live7749 coloured7749 = result7749) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7750 live7750 coloured7750 = result7750 := by
  rw [tree7750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7748 coloured7748 at child
  try dsimp only [live7750, coloured7750]
  rw [child]
  dsimp only [result7748]
  have child := child1
  unfold live7749 coloured7749 at child
  try dsimp only [live7750, coloured7750]
  rw [child]
  dsimp only [result7749]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7751_agree_conditional : tree7751 = literal7751 := by
  rw [tree7751_def]
  rfl
theorem node7751_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7751 live7751 coloured7751 = result7751 := by
  rw [tree7751_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7752_agree_conditional
    (child0 : tree7750 = literal7750)
    (child1 : tree7751 = literal7751) : tree7752 = literal7752 := by
  rw [tree7752_def, child0, child1]
  rfl
theorem node7752_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7750 live7750 coloured7750 = result7750)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7751 live7751 coloured7751 = result7751) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7752 live7752 coloured7752 = result7752 := by
  rw [tree7752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7750 coloured7750 at child
  try dsimp only [live7752, coloured7752]
  rw [child]
  dsimp only [result7750]
  have child := child1
  unfold live7751 coloured7751 at child
  try dsimp only [live7752, coloured7752]
  rw [child]
  dsimp only [result7751]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7753_agree_conditional : tree7753 = literal7753 := by
  rw [tree7753_def]
  rfl
theorem node7753_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7753 live7753 coloured7753 = result7753 := by
  rw [tree7753_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7754_agree_conditional
    (child0 : tree7752 = literal7752)
    (child1 : tree7753 = literal7753) : tree7754 = literal7754 := by
  rw [tree7754_def, child0, child1]
  rfl
theorem node7754_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7752 live7752 coloured7752 = result7752)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7753 live7753 coloured7753 = result7753) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7754 live7754 coloured7754 = result7754 := by
  rw [tree7754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7752 coloured7752 at child
  try dsimp only [live7754, coloured7754]
  rw [child]
  dsimp only [result7752]
  have child := child1
  unfold live7753 coloured7753 at child
  try dsimp only [live7754, coloured7754]
  rw [child]
  dsimp only [result7753]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7755_agree_conditional : tree7755 = literal7755 := by
  rw [tree7755_def]
  rfl
theorem node7755_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7755 live7755 coloured7755 = result7755 := by
  rw [tree7755_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7756_agree_conditional
    (child0 : tree7754 = literal7754)
    (child1 : tree7755 = literal7755) : tree7756 = literal7756 := by
  rw [tree7756_def, child0, child1]
  rfl
theorem node7756_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7754 live7754 coloured7754 = result7754)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7755 live7755 coloured7755 = result7755) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7756 live7756 coloured7756 = result7756 := by
  rw [tree7756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7754 coloured7754 at child
  try dsimp only [live7756, coloured7756]
  rw [child]
  dsimp only [result7754]
  have child := child1
  unfold live7755 coloured7755 at child
  try dsimp only [live7756, coloured7756]
  rw [child]
  dsimp only [result7755]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7757_agree_conditional : tree7757 = literal7757 := by
  rw [tree7757_def]
  rfl
theorem node7757_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7757 live7757 coloured7757 = result7757 := by
  rw [tree7757_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7758_agree_conditional
    (child0 : tree7756 = literal7756)
    (child1 : tree7757 = literal7757) : tree7758 = literal7758 := by
  rw [tree7758_def, child0, child1]
  rfl
theorem node7758_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7756 live7756 coloured7756 = result7756)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7757 live7757 coloured7757 = result7757) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7758 live7758 coloured7758 = result7758 := by
  rw [tree7758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7756 coloured7756 at child
  try dsimp only [live7758, coloured7758]
  rw [child]
  dsimp only [result7756]
  have child := child1
  unfold live7757 coloured7757 at child
  try dsimp only [live7758, coloured7758]
  rw [child]
  dsimp only [result7757]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7759_agree_conditional : tree7759 = literal7759 := by
  rw [tree7759_def]
  rfl
theorem node7759_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7759 live7759 coloured7759 = result7759 := by
  rw [tree7759_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7760_agree_conditional
    (child0 : tree7758 = literal7758)
    (child1 : tree7759 = literal7759) : tree7760 = literal7760 := by
  rw [tree7760_def, child0, child1]
  rfl
theorem node7760_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7758 live7758 coloured7758 = result7758)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7759 live7759 coloured7759 = result7759) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7760 live7760 coloured7760 = result7760 := by
  rw [tree7760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7758 coloured7758 at child
  try dsimp only [live7760, coloured7760]
  rw [child]
  dsimp only [result7758]
  have child := child1
  unfold live7759 coloured7759 at child
  try dsimp only [live7760, coloured7760]
  rw [child]
  dsimp only [result7759]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7761_agree_conditional : tree7761 = literal7761 := by
  rw [tree7761_def]
  rfl
theorem node7761_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7761 live7761 coloured7761 = result7761 := by
  rw [tree7761_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7762_agree_conditional
    (child0 : tree7760 = literal7760)
    (child1 : tree7761 = literal7761) : tree7762 = literal7762 := by
  rw [tree7762_def, child0, child1]
  rfl
theorem node7762_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7760 live7760 coloured7760 = result7760)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7761 live7761 coloured7761 = result7761) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7762 live7762 coloured7762 = result7762 := by
  rw [tree7762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7760 coloured7760 at child
  try dsimp only [live7762, coloured7762]
  rw [child]
  dsimp only [result7760]
  have child := child1
  unfold live7761 coloured7761 at child
  try dsimp only [live7762, coloured7762]
  rw [child]
  dsimp only [result7761]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7763_agree_conditional : tree7763 = literal7763 := by
  rw [tree7763_def]
  rfl
theorem node7763_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7763 live7763 coloured7763 = result7763 := by
  rw [tree7763_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7764_agree_conditional
    (child0 : tree7762 = literal7762)
    (child1 : tree7763 = literal7763) : tree7764 = literal7764 := by
  rw [tree7764_def, child0, child1]
  rfl
theorem node7764_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7762 live7762 coloured7762 = result7762)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7763 live7763 coloured7763 = result7763) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7764 live7764 coloured7764 = result7764 := by
  rw [tree7764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7762 coloured7762 at child
  try dsimp only [live7764, coloured7764]
  rw [child]
  dsimp only [result7762]
  have child := child1
  unfold live7763 coloured7763 at child
  try dsimp only [live7764, coloured7764]
  rw [child]
  dsimp only [result7763]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7765_agree_conditional : tree7765 = literal7765 := by
  rw [tree7765_def]
  rfl
theorem node7765_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7765 live7765 coloured7765 = result7765 := by
  rw [tree7765_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7766_agree_conditional
    (child0 : tree7764 = literal7764)
    (child1 : tree7765 = literal7765) : tree7766 = literal7766 := by
  rw [tree7766_def, child0, child1]
  rfl
theorem node7766_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7764 live7764 coloured7764 = result7764)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7765 live7765 coloured7765 = result7765) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7766 live7766 coloured7766 = result7766 := by
  rw [tree7766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7764 coloured7764 at child
  try dsimp only [live7766, coloured7766]
  rw [child]
  dsimp only [result7764]
  have child := child1
  unfold live7765 coloured7765 at child
  try dsimp only [live7766, coloured7766]
  rw [child]
  dsimp only [result7765]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7767_agree_conditional : tree7767 = literal7767 := by
  rw [tree7767_def]
  rfl
theorem node7767_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7767 live7767 coloured7767 = result7767 := by
  rw [tree7767_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7768_agree_conditional
    (child0 : tree7766 = literal7766)
    (child1 : tree7767 = literal7767) : tree7768 = literal7768 := by
  rw [tree7768_def, child0, child1]
  rfl
theorem node7768_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7766 live7766 coloured7766 = result7766)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7767 live7767 coloured7767 = result7767) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7768 live7768 coloured7768 = result7768 := by
  rw [tree7768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7766 coloured7766 at child
  try dsimp only [live7768, coloured7768]
  rw [child]
  dsimp only [result7766]
  have child := child1
  unfold live7767 coloured7767 at child
  try dsimp only [live7768, coloured7768]
  rw [child]
  dsimp only [result7767]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7769_agree_conditional : tree7769 = literal7769 := by
  rw [tree7769_def]
  rfl
theorem node7769_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7769 live7769 coloured7769 = result7769 := by
  rw [tree7769_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7770_agree_conditional
    (child0 : tree7768 = literal7768)
    (child1 : tree7769 = literal7769) : tree7770 = literal7770 := by
  rw [tree7770_def, child0, child1]
  rfl
theorem node7770_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7768 live7768 coloured7768 = result7768)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7769 live7769 coloured7769 = result7769) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7770 live7770 coloured7770 = result7770 := by
  rw [tree7770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7768 coloured7768 at child
  try dsimp only [live7770, coloured7770]
  rw [child]
  dsimp only [result7768]
  have child := child1
  unfold live7769 coloured7769 at child
  try dsimp only [live7770, coloured7770]
  rw [child]
  dsimp only [result7769]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7771_agree_conditional : tree7771 = literal7771 := by
  rw [tree7771_def]
  rfl
theorem node7771_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7771 live7771 coloured7771 = result7771 := by
  rw [tree7771_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7772_agree_conditional
    (child0 : tree7770 = literal7770)
    (child1 : tree7771 = literal7771) : tree7772 = literal7772 := by
  rw [tree7772_def, child0, child1]
  rfl
theorem node7772_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7770 live7770 coloured7770 = result7770)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7771 live7771 coloured7771 = result7771) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7772 live7772 coloured7772 = result7772 := by
  rw [tree7772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7770 coloured7770 at child
  try dsimp only [live7772, coloured7772]
  rw [child]
  dsimp only [result7770]
  have child := child1
  unfold live7771 coloured7771 at child
  try dsimp only [live7772, coloured7772]
  rw [child]
  dsimp only [result7771]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7773_agree_conditional : tree7773 = literal7773 := by
  rw [tree7773_def]
  rfl
theorem node7773_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7773 live7773 coloured7773 = result7773 := by
  rw [tree7773_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7774_agree_conditional
    (child0 : tree7772 = literal7772)
    (child1 : tree7773 = literal7773) : tree7774 = literal7774 := by
  rw [tree7774_def, child0, child1]
  rfl
theorem node7774_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7772 live7772 coloured7772 = result7772)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7773 live7773 coloured7773 = result7773) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7774 live7774 coloured7774 = result7774 := by
  rw [tree7774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7772 coloured7772 at child
  try dsimp only [live7774, coloured7774]
  rw [child]
  dsimp only [result7772]
  have child := child1
  unfold live7773 coloured7773 at child
  try dsimp only [live7774, coloured7774]
  rw [child]
  dsimp only [result7773]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7775_agree_conditional : tree7775 = literal7775 := by
  rw [tree7775_def]
  rfl
theorem node7775_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7775 live7775 coloured7775 = result7775 := by
  rw [tree7775_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
