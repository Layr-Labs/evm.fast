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
theorem tree10656_agree_conditional
    (child0 : tree10654 = literal10654)
    (child1 : tree10655 = literal10655) : tree10656 = literal10656 := by
  rw [tree10656_def, child0, child1]
  rfl
theorem node10656_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10654 live10654 coloured10654 = result10654)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10655 live10655 coloured10655 = result10655) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10656 live10656 coloured10656 = result10656 := by
  rw [tree10656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10654 coloured10654 at child
  try dsimp only [live10656, coloured10656]
  rw [child]
  dsimp only [result10654]
  have child := child1
  unfold live10655 coloured10655 at child
  try dsimp only [live10656, coloured10656]
  rw [child]
  dsimp only [result10655]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10657_agree_conditional : tree10657 = literal10657 := by
  rw [tree10657_def]
  rfl
theorem node10657_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10657 live10657 coloured10657 = result10657 := by
  rw [tree10657_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10658_agree_conditional
    (child0 : tree10656 = literal10656)
    (child1 : tree10657 = literal10657) : tree10658 = literal10658 := by
  rw [tree10658_def, child0, child1]
  rfl
theorem node10658_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10656 live10656 coloured10656 = result10656)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10657 live10657 coloured10657 = result10657) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10658 live10658 coloured10658 = result10658 := by
  rw [tree10658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10656 coloured10656 at child
  try dsimp only [live10658, coloured10658]
  rw [child]
  dsimp only [result10656]
  have child := child1
  unfold live10657 coloured10657 at child
  try dsimp only [live10658, coloured10658]
  rw [child]
  dsimp only [result10657]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10659_agree_conditional : tree10659 = literal10659 := by
  rw [tree10659_def]
  rfl
theorem node10659_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10659 live10659 coloured10659 = result10659 := by
  rw [tree10659_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10660_agree_conditional
    (child0 : tree10658 = literal10658)
    (child1 : tree10659 = literal10659) : tree10660 = literal10660 := by
  rw [tree10660_def, child0, child1]
  rfl
theorem node10660_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10658 live10658 coloured10658 = result10658)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10659 live10659 coloured10659 = result10659) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10660 live10660 coloured10660 = result10660 := by
  rw [tree10660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10658 coloured10658 at child
  try dsimp only [live10660, coloured10660]
  rw [child]
  dsimp only [result10658]
  have child := child1
  unfold live10659 coloured10659 at child
  try dsimp only [live10660, coloured10660]
  rw [child]
  dsimp only [result10659]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10661_agree_conditional : tree10661 = literal10661 := by
  rw [tree10661_def]
  rfl
theorem node10661_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10661 live10661 coloured10661 = result10661 := by
  rw [tree10661_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10662_agree_conditional
    (child0 : tree10660 = literal10660)
    (child1 : tree10661 = literal10661) : tree10662 = literal10662 := by
  rw [tree10662_def, child0, child1]
  rfl
theorem node10662_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10660 live10660 coloured10660 = result10660)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10661 live10661 coloured10661 = result10661) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10662 live10662 coloured10662 = result10662 := by
  rw [tree10662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10660 coloured10660 at child
  try dsimp only [live10662, coloured10662]
  rw [child]
  dsimp only [result10660]
  have child := child1
  unfold live10661 coloured10661 at child
  try dsimp only [live10662, coloured10662]
  rw [child]
  dsimp only [result10661]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10663_agree_conditional : tree10663 = literal10663 := by
  rw [tree10663_def]
  rfl
theorem node10663_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10663 live10663 coloured10663 = result10663 := by
  rw [tree10663_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10664_agree_conditional
    (child0 : tree10662 = literal10662)
    (child1 : tree10663 = literal10663) : tree10664 = literal10664 := by
  rw [tree10664_def, child0, child1]
  rfl
theorem node10664_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10662 live10662 coloured10662 = result10662)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10663 live10663 coloured10663 = result10663) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10664 live10664 coloured10664 = result10664 := by
  rw [tree10664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10662 coloured10662 at child
  try dsimp only [live10664, coloured10664]
  rw [child]
  dsimp only [result10662]
  have child := child1
  unfold live10663 coloured10663 at child
  try dsimp only [live10664, coloured10664]
  rw [child]
  dsimp only [result10663]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10665_agree_conditional : tree10665 = literal10665 := by
  rw [tree10665_def]
  rfl
theorem node10665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10665 live10665 coloured10665 = result10665 := by
  rw [tree10665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10666_agree_conditional
    (child0 : tree10664 = literal10664)
    (child1 : tree10665 = literal10665) : tree10666 = literal10666 := by
  rw [tree10666_def, child0, child1]
  rfl
theorem node10666_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10664 live10664 coloured10664 = result10664)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10665 live10665 coloured10665 = result10665) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10666 live10666 coloured10666 = result10666 := by
  rw [tree10666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10664 coloured10664 at child
  try dsimp only [live10666, coloured10666]
  rw [child]
  dsimp only [result10664]
  have child := child1
  unfold live10665 coloured10665 at child
  try dsimp only [live10666, coloured10666]
  rw [child]
  dsimp only [result10665]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10667_agree_conditional : tree10667 = literal10667 := by
  rw [tree10667_def]
  rfl
theorem node10667_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10667 live10667 coloured10667 = result10667 := by
  rw [tree10667_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10668_agree_conditional
    (child0 : tree10666 = literal10666)
    (child1 : tree10667 = literal10667) : tree10668 = literal10668 := by
  rw [tree10668_def, child0, child1]
  rfl
theorem node10668_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10666 live10666 coloured10666 = result10666)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10667 live10667 coloured10667 = result10667) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10668 live10668 coloured10668 = result10668 := by
  rw [tree10668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10666 coloured10666 at child
  try dsimp only [live10668, coloured10668]
  rw [child]
  dsimp only [result10666]
  have child := child1
  unfold live10667 coloured10667 at child
  try dsimp only [live10668, coloured10668]
  rw [child]
  dsimp only [result10667]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10669_agree_conditional : tree10669 = literal10669 := by
  rw [tree10669_def]
  rfl
theorem node10669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10669 live10669 coloured10669 = result10669 := by
  rw [tree10669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10670_agree_conditional
    (child0 : tree10668 = literal10668)
    (child1 : tree10669 = literal10669) : tree10670 = literal10670 := by
  rw [tree10670_def, child0, child1]
  rfl
theorem node10670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10668 live10668 coloured10668 = result10668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10669 live10669 coloured10669 = result10669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10670 live10670 coloured10670 = result10670 := by
  rw [tree10670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10668 coloured10668 at child
  try dsimp only [live10670, coloured10670]
  rw [child]
  dsimp only [result10668]
  have child := child1
  unfold live10669 coloured10669 at child
  try dsimp only [live10670, coloured10670]
  rw [child]
  dsimp only [result10669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10671_agree_conditional : tree10671 = literal10671 := by
  rw [tree10671_def]
  rfl
theorem node10671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10671 live10671 coloured10671 = result10671 := by
  rw [tree10671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10672_agree_conditional
    (child0 : tree10670 = literal10670)
    (child1 : tree10671 = literal10671) : tree10672 = literal10672 := by
  rw [tree10672_def, child0, child1]
  rfl
theorem node10672_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10670 live10670 coloured10670 = result10670)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10671 live10671 coloured10671 = result10671) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10672 live10672 coloured10672 = result10672 := by
  rw [tree10672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10670 coloured10670 at child
  try dsimp only [live10672, coloured10672]
  rw [child]
  dsimp only [result10670]
  have child := child1
  unfold live10671 coloured10671 at child
  try dsimp only [live10672, coloured10672]
  rw [child]
  dsimp only [result10671]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10673_agree_conditional : tree10673 = literal10673 := by
  rw [tree10673_def]
  rfl
theorem node10673_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10673 live10673 coloured10673 = result10673 := by
  rw [tree10673_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10674_agree_conditional
    (child0 : tree10672 = literal10672)
    (child1 : tree10673 = literal10673) : tree10674 = literal10674 := by
  rw [tree10674_def, child0, child1]
  rfl
theorem node10674_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10672 live10672 coloured10672 = result10672)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10673 live10673 coloured10673 = result10673) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10674 live10674 coloured10674 = result10674 := by
  rw [tree10674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10672 coloured10672 at child
  try dsimp only [live10674, coloured10674]
  rw [child]
  dsimp only [result10672]
  have child := child1
  unfold live10673 coloured10673 at child
  try dsimp only [live10674, coloured10674]
  rw [child]
  dsimp only [result10673]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10675_agree_conditional : tree10675 = literal10675 := by
  rw [tree10675_def]
  rfl
theorem node10675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10675 live10675 coloured10675 = result10675 := by
  rw [tree10675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10676_agree_conditional
    (child0 : tree10674 = literal10674)
    (child1 : tree10675 = literal10675) : tree10676 = literal10676 := by
  rw [tree10676_def, child0, child1]
  rfl
theorem node10676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10674 live10674 coloured10674 = result10674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10675 live10675 coloured10675 = result10675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10676 live10676 coloured10676 = result10676 := by
  rw [tree10676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10674 coloured10674 at child
  try dsimp only [live10676, coloured10676]
  rw [child]
  dsimp only [result10674]
  have child := child1
  unfold live10675 coloured10675 at child
  try dsimp only [live10676, coloured10676]
  rw [child]
  dsimp only [result10675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10677_agree_conditional : tree10677 = literal10677 := by
  rw [tree10677_def]
  rfl
theorem node10677_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10677 live10677 coloured10677 = result10677 := by
  rw [tree10677_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10678_agree_conditional
    (child0 : tree10676 = literal10676)
    (child1 : tree10677 = literal10677) : tree10678 = literal10678 := by
  rw [tree10678_def, child0, child1]
  rfl
theorem node10678_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10676 live10676 coloured10676 = result10676)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10677 live10677 coloured10677 = result10677) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10678 live10678 coloured10678 = result10678 := by
  rw [tree10678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10676 coloured10676 at child
  try dsimp only [live10678, coloured10678]
  rw [child]
  dsimp only [result10676]
  have child := child1
  unfold live10677 coloured10677 at child
  try dsimp only [live10678, coloured10678]
  rw [child]
  dsimp only [result10677]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10679_agree_conditional : tree10679 = literal10679 := by
  rw [tree10679_def]
  rfl
theorem node10679_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10679 live10679 coloured10679 = result10679 := by
  rw [tree10679_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10680_agree_conditional
    (child0 : tree10678 = literal10678)
    (child1 : tree10679 = literal10679) : tree10680 = literal10680 := by
  rw [tree10680_def, child0, child1]
  rfl
theorem node10680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10678 live10678 coloured10678 = result10678)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10679 live10679 coloured10679 = result10679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10680 live10680 coloured10680 = result10680 := by
  rw [tree10680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10678 coloured10678 at child
  try dsimp only [live10680, coloured10680]
  rw [child]
  dsimp only [result10678]
  have child := child1
  unfold live10679 coloured10679 at child
  try dsimp only [live10680, coloured10680]
  rw [child]
  dsimp only [result10679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10681_agree_conditional : tree10681 = literal10681 := by
  rw [tree10681_def]
  rfl
theorem node10681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10681 live10681 coloured10681 = result10681 := by
  rw [tree10681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10682_agree_conditional
    (child0 : tree10680 = literal10680)
    (child1 : tree10681 = literal10681) : tree10682 = literal10682 := by
  rw [tree10682_def, child0, child1]
  rfl
theorem node10682_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10680 live10680 coloured10680 = result10680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10681 live10681 coloured10681 = result10681) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10682 live10682 coloured10682 = result10682 := by
  rw [tree10682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10680 coloured10680 at child
  try dsimp only [live10682, coloured10682]
  rw [child]
  dsimp only [result10680]
  have child := child1
  unfold live10681 coloured10681 at child
  try dsimp only [live10682, coloured10682]
  rw [child]
  dsimp only [result10681]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10683_agree_conditional : tree10683 = literal10683 := by
  rw [tree10683_def]
  rfl
theorem node10683_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10683 live10683 coloured10683 = result10683 := by
  rw [tree10683_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10684_agree_conditional
    (child0 : tree10682 = literal10682)
    (child1 : tree10683 = literal10683) : tree10684 = literal10684 := by
  rw [tree10684_def, child0, child1]
  rfl
theorem node10684_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10682 live10682 coloured10682 = result10682)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10683 live10683 coloured10683 = result10683) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10684 live10684 coloured10684 = result10684 := by
  rw [tree10684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10682 coloured10682 at child
  try dsimp only [live10684, coloured10684]
  rw [child]
  dsimp only [result10682]
  have child := child1
  unfold live10683 coloured10683 at child
  try dsimp only [live10684, coloured10684]
  rw [child]
  dsimp only [result10683]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10685_agree_conditional : tree10685 = literal10685 := by
  rw [tree10685_def]
  rfl
theorem node10685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10685 live10685 coloured10685 = result10685 := by
  rw [tree10685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10686_agree_conditional
    (child0 : tree10684 = literal10684)
    (child1 : tree10685 = literal10685) : tree10686 = literal10686 := by
  rw [tree10686_def, child0, child1]
  rfl
theorem node10686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10684 live10684 coloured10684 = result10684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10685 live10685 coloured10685 = result10685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10686 live10686 coloured10686 = result10686 := by
  rw [tree10686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10684 coloured10684 at child
  try dsimp only [live10686, coloured10686]
  rw [child]
  dsimp only [result10684]
  have child := child1
  unfold live10685 coloured10685 at child
  try dsimp only [live10686, coloured10686]
  rw [child]
  dsimp only [result10685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10687_agree_conditional : tree10687 = literal10687 := by
  rw [tree10687_def]
  rfl
theorem node10687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10687 live10687 coloured10687 = result10687 := by
  rw [tree10687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10688_agree_conditional
    (child0 : tree10686 = literal10686)
    (child1 : tree10687 = literal10687) : tree10688 = literal10688 := by
  rw [tree10688_def, child0, child1]
  rfl
theorem node10688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10686 live10686 coloured10686 = result10686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10687 live10687 coloured10687 = result10687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10688 live10688 coloured10688 = result10688 := by
  rw [tree10688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10686 coloured10686 at child
  try dsimp only [live10688, coloured10688]
  rw [child]
  dsimp only [result10686]
  have child := child1
  unfold live10687 coloured10687 at child
  try dsimp only [live10688, coloured10688]
  rw [child]
  dsimp only [result10687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10689_agree_conditional : tree10689 = literal10689 := by
  rw [tree10689_def]
  rfl
theorem node10689_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10689 live10689 coloured10689 = result10689 := by
  rw [tree10689_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10690_agree_conditional
    (child0 : tree10688 = literal10688)
    (child1 : tree10689 = literal10689) : tree10690 = literal10690 := by
  rw [tree10690_def, child0, child1]
  rfl
theorem node10690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10688 live10688 coloured10688 = result10688)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10689 live10689 coloured10689 = result10689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10690 live10690 coloured10690 = result10690 := by
  rw [tree10690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10688 coloured10688 at child
  try dsimp only [live10690, coloured10690]
  rw [child]
  dsimp only [result10688]
  have child := child1
  unfold live10689 coloured10689 at child
  try dsimp only [live10690, coloured10690]
  rw [child]
  dsimp only [result10689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10691_agree_conditional : tree10691 = literal10691 := by
  rw [tree10691_def]
  rfl
theorem node10691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10691 live10691 coloured10691 = result10691 := by
  rw [tree10691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10692_agree_conditional
    (child0 : tree10690 = literal10690)
    (child1 : tree10691 = literal10691) : tree10692 = literal10692 := by
  rw [tree10692_def, child0, child1]
  rfl
theorem node10692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10690 live10690 coloured10690 = result10690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10691 live10691 coloured10691 = result10691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10692 live10692 coloured10692 = result10692 := by
  rw [tree10692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10690 coloured10690 at child
  try dsimp only [live10692, coloured10692]
  rw [child]
  dsimp only [result10690]
  have child := child1
  unfold live10691 coloured10691 at child
  try dsimp only [live10692, coloured10692]
  rw [child]
  dsimp only [result10691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10693_agree_conditional : tree10693 = literal10693 := by
  rw [tree10693_def]
  rfl
theorem node10693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10693 live10693 coloured10693 = result10693 := by
  rw [tree10693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10694_agree_conditional
    (child0 : tree10692 = literal10692)
    (child1 : tree10693 = literal10693) : tree10694 = literal10694 := by
  rw [tree10694_def, child0, child1]
  rfl
theorem node10694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10692 live10692 coloured10692 = result10692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10693 live10693 coloured10693 = result10693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10694 live10694 coloured10694 = result10694 := by
  rw [tree10694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10692 coloured10692 at child
  try dsimp only [live10694, coloured10694]
  rw [child]
  dsimp only [result10692]
  have child := child1
  unfold live10693 coloured10693 at child
  try dsimp only [live10694, coloured10694]
  rw [child]
  dsimp only [result10693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10695_agree_conditional : tree10695 = literal10695 := by
  rw [tree10695_def]
  rfl
theorem node10695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10695 live10695 coloured10695 = result10695 := by
  rw [tree10695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10696_agree_conditional
    (child0 : tree10694 = literal10694)
    (child1 : tree10695 = literal10695) : tree10696 = literal10696 := by
  rw [tree10696_def, child0, child1]
  rfl
theorem node10696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10694 live10694 coloured10694 = result10694)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10695 live10695 coloured10695 = result10695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10696 live10696 coloured10696 = result10696 := by
  rw [tree10696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10694 coloured10694 at child
  try dsimp only [live10696, coloured10696]
  rw [child]
  dsimp only [result10694]
  have child := child1
  unfold live10695 coloured10695 at child
  try dsimp only [live10696, coloured10696]
  rw [child]
  dsimp only [result10695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10697_agree_conditional : tree10697 = literal10697 := by
  rw [tree10697_def]
  rfl
theorem node10697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10697 live10697 coloured10697 = result10697 := by
  rw [tree10697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10698_agree_conditional
    (child0 : tree10696 = literal10696)
    (child1 : tree10697 = literal10697) : tree10698 = literal10698 := by
  rw [tree10698_def, child0, child1]
  rfl
theorem node10698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10696 live10696 coloured10696 = result10696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10697 live10697 coloured10697 = result10697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10698 live10698 coloured10698 = result10698 := by
  rw [tree10698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10696 coloured10696 at child
  try dsimp only [live10698, coloured10698]
  rw [child]
  dsimp only [result10696]
  have child := child1
  unfold live10697 coloured10697 at child
  try dsimp only [live10698, coloured10698]
  rw [child]
  dsimp only [result10697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10699_agree_conditional : tree10699 = literal10699 := by
  rw [tree10699_def]
  rfl
theorem node10699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10699 live10699 coloured10699 = result10699 := by
  rw [tree10699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10700_agree_conditional
    (child0 : tree10698 = literal10698)
    (child1 : tree10699 = literal10699) : tree10700 = literal10700 := by
  rw [tree10700_def, child0, child1]
  rfl
theorem node10700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10698 live10698 coloured10698 = result10698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10699 live10699 coloured10699 = result10699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10700 live10700 coloured10700 = result10700 := by
  rw [tree10700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10698 coloured10698 at child
  try dsimp only [live10700, coloured10700]
  rw [child]
  dsimp only [result10698]
  have child := child1
  unfold live10699 coloured10699 at child
  try dsimp only [live10700, coloured10700]
  rw [child]
  dsimp only [result10699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10701_agree_conditional : tree10701 = literal10701 := by
  rw [tree10701_def]
  rfl
theorem node10701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10701 live10701 coloured10701 = result10701 := by
  rw [tree10701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10702_agree_conditional
    (child0 : tree10700 = literal10700)
    (child1 : tree10701 = literal10701) : tree10702 = literal10702 := by
  rw [tree10702_def, child0, child1]
  rfl
theorem node10702_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10700 live10700 coloured10700 = result10700)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10701 live10701 coloured10701 = result10701) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10702 live10702 coloured10702 = result10702 := by
  rw [tree10702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10700 coloured10700 at child
  try dsimp only [live10702, coloured10702]
  rw [child]
  dsimp only [result10700]
  have child := child1
  unfold live10701 coloured10701 at child
  try dsimp only [live10702, coloured10702]
  rw [child]
  dsimp only [result10701]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10703_agree_conditional : tree10703 = literal10703 := by
  rw [tree10703_def]
  rfl
theorem node10703_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10703 live10703 coloured10703 = result10703 := by
  rw [tree10703_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10704_agree_conditional
    (child0 : tree10702 = literal10702)
    (child1 : tree10703 = literal10703) : tree10704 = literal10704 := by
  rw [tree10704_def, child0, child1]
  rfl
theorem node10704_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10702 live10702 coloured10702 = result10702)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10703 live10703 coloured10703 = result10703) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10704 live10704 coloured10704 = result10704 := by
  rw [tree10704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10702 coloured10702 at child
  try dsimp only [live10704, coloured10704]
  rw [child]
  dsimp only [result10702]
  have child := child1
  unfold live10703 coloured10703 at child
  try dsimp only [live10704, coloured10704]
  rw [child]
  dsimp only [result10703]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10705_agree_conditional : tree10705 = literal10705 := by
  rw [tree10705_def]
  rfl
theorem node10705_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10705 live10705 coloured10705 = result10705 := by
  rw [tree10705_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10706_agree_conditional
    (child0 : tree10704 = literal10704)
    (child1 : tree10705 = literal10705) : tree10706 = literal10706 := by
  rw [tree10706_def, child0, child1]
  rfl
theorem node10706_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10704 live10704 coloured10704 = result10704)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10705 live10705 coloured10705 = result10705) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10706 live10706 coloured10706 = result10706 := by
  rw [tree10706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10704 coloured10704 at child
  try dsimp only [live10706, coloured10706]
  rw [child]
  dsimp only [result10704]
  have child := child1
  unfold live10705 coloured10705 at child
  try dsimp only [live10706, coloured10706]
  rw [child]
  dsimp only [result10705]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10707_agree_conditional : tree10707 = literal10707 := by
  rw [tree10707_def]
  rfl
theorem node10707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10707 live10707 coloured10707 = result10707 := by
  rw [tree10707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10708_agree_conditional
    (child0 : tree10706 = literal10706)
    (child1 : tree10707 = literal10707) : tree10708 = literal10708 := by
  rw [tree10708_def, child0, child1]
  rfl
theorem node10708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10706 live10706 coloured10706 = result10706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10707 live10707 coloured10707 = result10707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10708 live10708 coloured10708 = result10708 := by
  rw [tree10708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10706 coloured10706 at child
  try dsimp only [live10708, coloured10708]
  rw [child]
  dsimp only [result10706]
  have child := child1
  unfold live10707 coloured10707 at child
  try dsimp only [live10708, coloured10708]
  rw [child]
  dsimp only [result10707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10709_agree_conditional : tree10709 = literal10709 := by
  rw [tree10709_def]
  rfl
theorem node10709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10709 live10709 coloured10709 = result10709 := by
  rw [tree10709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10710_agree_conditional
    (child0 : tree10708 = literal10708)
    (child1 : tree10709 = literal10709) : tree10710 = literal10710 := by
  rw [tree10710_def, child0, child1]
  rfl
theorem node10710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10708 live10708 coloured10708 = result10708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10709 live10709 coloured10709 = result10709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10710 live10710 coloured10710 = result10710 := by
  rw [tree10710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10708 coloured10708 at child
  try dsimp only [live10710, coloured10710]
  rw [child]
  dsimp only [result10708]
  have child := child1
  unfold live10709 coloured10709 at child
  try dsimp only [live10710, coloured10710]
  rw [child]
  dsimp only [result10709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10711_agree_conditional : tree10711 = literal10711 := by
  rw [tree10711_def]
  rfl
theorem node10711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10711 live10711 coloured10711 = result10711 := by
  rw [tree10711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10712_agree_conditional
    (child0 : tree10710 = literal10710)
    (child1 : tree10711 = literal10711) : tree10712 = literal10712 := by
  rw [tree10712_def, child0, child1]
  rfl
theorem node10712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10710 live10710 coloured10710 = result10710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10711 live10711 coloured10711 = result10711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10712 live10712 coloured10712 = result10712 := by
  rw [tree10712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10710 coloured10710 at child
  try dsimp only [live10712, coloured10712]
  rw [child]
  dsimp only [result10710]
  have child := child1
  unfold live10711 coloured10711 at child
  try dsimp only [live10712, coloured10712]
  rw [child]
  dsimp only [result10711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10713_agree_conditional : tree10713 = literal10713 := by
  rw [tree10713_def]
  rfl
theorem node10713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10713 live10713 coloured10713 = result10713 := by
  rw [tree10713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10714_agree_conditional
    (child0 : tree10712 = literal10712)
    (child1 : tree10713 = literal10713) : tree10714 = literal10714 := by
  rw [tree10714_def, child0, child1]
  rfl
theorem node10714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10712 live10712 coloured10712 = result10712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10713 live10713 coloured10713 = result10713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10714 live10714 coloured10714 = result10714 := by
  rw [tree10714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10712 coloured10712 at child
  try dsimp only [live10714, coloured10714]
  rw [child]
  dsimp only [result10712]
  have child := child1
  unfold live10713 coloured10713 at child
  try dsimp only [live10714, coloured10714]
  rw [child]
  dsimp only [result10713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10715_agree_conditional : tree10715 = literal10715 := by
  rw [tree10715_def]
  rfl
theorem node10715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10715 live10715 coloured10715 = result10715 := by
  rw [tree10715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10716_agree_conditional
    (child0 : tree10714 = literal10714)
    (child1 : tree10715 = literal10715) : tree10716 = literal10716 := by
  rw [tree10716_def, child0, child1]
  rfl
theorem node10716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10714 live10714 coloured10714 = result10714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10715 live10715 coloured10715 = result10715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10716 live10716 coloured10716 = result10716 := by
  rw [tree10716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10714 coloured10714 at child
  try dsimp only [live10716, coloured10716]
  rw [child]
  dsimp only [result10714]
  have child := child1
  unfold live10715 coloured10715 at child
  try dsimp only [live10716, coloured10716]
  rw [child]
  dsimp only [result10715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10717_agree_conditional : tree10717 = literal10717 := by
  rw [tree10717_def]
  rfl
theorem node10717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10717 live10717 coloured10717 = result10717 := by
  rw [tree10717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10718_agree_conditional
    (child0 : tree10716 = literal10716)
    (child1 : tree10717 = literal10717) : tree10718 = literal10718 := by
  rw [tree10718_def, child0, child1]
  rfl
theorem node10718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10716 live10716 coloured10716 = result10716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10717 live10717 coloured10717 = result10717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10718 live10718 coloured10718 = result10718 := by
  rw [tree10718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10716 coloured10716 at child
  try dsimp only [live10718, coloured10718]
  rw [child]
  dsimp only [result10716]
  have child := child1
  unfold live10717 coloured10717 at child
  try dsimp only [live10718, coloured10718]
  rw [child]
  dsimp only [result10717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10719_agree_conditional : tree10719 = literal10719 := by
  rw [tree10719_def]
  rfl
theorem node10719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10719 live10719 coloured10719 = result10719 := by
  rw [tree10719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10720_agree_conditional
    (child0 : tree10718 = literal10718)
    (child1 : tree10719 = literal10719) : tree10720 = literal10720 := by
  rw [tree10720_def, child0, child1]
  rfl
theorem node10720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10718 live10718 coloured10718 = result10718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10719 live10719 coloured10719 = result10719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10720 live10720 coloured10720 = result10720 := by
  rw [tree10720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10718 coloured10718 at child
  try dsimp only [live10720, coloured10720]
  rw [child]
  dsimp only [result10718]
  have child := child1
  unfold live10719 coloured10719 at child
  try dsimp only [live10720, coloured10720]
  rw [child]
  dsimp only [result10719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10721_agree_conditional : tree10721 = literal10721 := by
  rw [tree10721_def]
  rfl
theorem node10721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10721 live10721 coloured10721 = result10721 := by
  rw [tree10721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10722_agree_conditional
    (child0 : tree10720 = literal10720)
    (child1 : tree10721 = literal10721) : tree10722 = literal10722 := by
  rw [tree10722_def, child0, child1]
  rfl
theorem node10722_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10720 live10720 coloured10720 = result10720)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10721 live10721 coloured10721 = result10721) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10722 live10722 coloured10722 = result10722 := by
  rw [tree10722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10720 coloured10720 at child
  try dsimp only [live10722, coloured10722]
  rw [child]
  dsimp only [result10720]
  have child := child1
  unfold live10721 coloured10721 at child
  try dsimp only [live10722, coloured10722]
  rw [child]
  dsimp only [result10721]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10723_agree_conditional : tree10723 = literal10723 := by
  rw [tree10723_def]
  rfl
theorem node10723_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10723 live10723 coloured10723 = result10723 := by
  rw [tree10723_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10724_agree_conditional
    (child0 : tree10722 = literal10722)
    (child1 : tree10723 = literal10723) : tree10724 = literal10724 := by
  rw [tree10724_def, child0, child1]
  rfl
theorem node10724_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10722 live10722 coloured10722 = result10722)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10723 live10723 coloured10723 = result10723) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10724 live10724 coloured10724 = result10724 := by
  rw [tree10724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10722 coloured10722 at child
  try dsimp only [live10724, coloured10724]
  rw [child]
  dsimp only [result10722]
  have child := child1
  unfold live10723 coloured10723 at child
  try dsimp only [live10724, coloured10724]
  rw [child]
  dsimp only [result10723]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10725_agree_conditional : tree10725 = literal10725 := by
  rw [tree10725_def]
  rfl
theorem node10725_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10725 live10725 coloured10725 = result10725 := by
  rw [tree10725_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10726_agree_conditional
    (child0 : tree10724 = literal10724)
    (child1 : tree10725 = literal10725) : tree10726 = literal10726 := by
  rw [tree10726_def, child0, child1]
  rfl
theorem node10726_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10724 live10724 coloured10724 = result10724)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10725 live10725 coloured10725 = result10725) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10726 live10726 coloured10726 = result10726 := by
  rw [tree10726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10724 coloured10724 at child
  try dsimp only [live10726, coloured10726]
  rw [child]
  dsimp only [result10724]
  have child := child1
  unfold live10725 coloured10725 at child
  try dsimp only [live10726, coloured10726]
  rw [child]
  dsimp only [result10725]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10727_agree_conditional : tree10727 = literal10727 := by
  rw [tree10727_def]
  rfl
theorem node10727_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10727 live10727 coloured10727 = result10727 := by
  rw [tree10727_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10728_agree_conditional
    (child0 : tree10726 = literal10726)
    (child1 : tree10727 = literal10727) : tree10728 = literal10728 := by
  rw [tree10728_def, child0, child1]
  rfl
theorem node10728_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10726 live10726 coloured10726 = result10726)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10727 live10727 coloured10727 = result10727) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10728 live10728 coloured10728 = result10728 := by
  rw [tree10728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10726 coloured10726 at child
  try dsimp only [live10728, coloured10728]
  rw [child]
  dsimp only [result10726]
  have child := child1
  unfold live10727 coloured10727 at child
  try dsimp only [live10728, coloured10728]
  rw [child]
  dsimp only [result10727]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10729_agree_conditional : tree10729 = literal10729 := by
  rw [tree10729_def]
  rfl
theorem node10729_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10729 live10729 coloured10729 = result10729 := by
  rw [tree10729_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10730_agree_conditional
    (child0 : tree10728 = literal10728)
    (child1 : tree10729 = literal10729) : tree10730 = literal10730 := by
  rw [tree10730_def, child0, child1]
  rfl
theorem node10730_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10728 live10728 coloured10728 = result10728)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10729 live10729 coloured10729 = result10729) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10730 live10730 coloured10730 = result10730 := by
  rw [tree10730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10728 coloured10728 at child
  try dsimp only [live10730, coloured10730]
  rw [child]
  dsimp only [result10728]
  have child := child1
  unfold live10729 coloured10729 at child
  try dsimp only [live10730, coloured10730]
  rw [child]
  dsimp only [result10729]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10731_agree_conditional : tree10731 = literal10731 := by
  rw [tree10731_def]
  rfl
theorem node10731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10731 live10731 coloured10731 = result10731 := by
  rw [tree10731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10732_agree_conditional
    (child0 : tree10730 = literal10730)
    (child1 : tree10731 = literal10731) : tree10732 = literal10732 := by
  rw [tree10732_def, child0, child1]
  rfl
theorem node10732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10730 live10730 coloured10730 = result10730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10731 live10731 coloured10731 = result10731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10732 live10732 coloured10732 = result10732 := by
  rw [tree10732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10730 coloured10730 at child
  try dsimp only [live10732, coloured10732]
  rw [child]
  dsimp only [result10730]
  have child := child1
  unfold live10731 coloured10731 at child
  try dsimp only [live10732, coloured10732]
  rw [child]
  dsimp only [result10731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10733_agree_conditional : tree10733 = literal10733 := by
  rw [tree10733_def]
  rfl
theorem node10733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10733 live10733 coloured10733 = result10733 := by
  rw [tree10733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10734_agree_conditional
    (child0 : tree10732 = literal10732)
    (child1 : tree10733 = literal10733) : tree10734 = literal10734 := by
  rw [tree10734_def, child0, child1]
  rfl
theorem node10734_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10732 live10732 coloured10732 = result10732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10733 live10733 coloured10733 = result10733) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10734 live10734 coloured10734 = result10734 := by
  rw [tree10734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10732 coloured10732 at child
  try dsimp only [live10734, coloured10734]
  rw [child]
  dsimp only [result10732]
  have child := child1
  unfold live10733 coloured10733 at child
  try dsimp only [live10734, coloured10734]
  rw [child]
  dsimp only [result10733]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10735_agree_conditional : tree10735 = literal10735 := by
  rw [tree10735_def]
  rfl
theorem node10735_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10735 live10735 coloured10735 = result10735 := by
  rw [tree10735_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10736_agree_conditional
    (child0 : tree10734 = literal10734)
    (child1 : tree10735 = literal10735) : tree10736 = literal10736 := by
  rw [tree10736_def, child0, child1]
  rfl
theorem node10736_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10734 live10734 coloured10734 = result10734)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10735 live10735 coloured10735 = result10735) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10736 live10736 coloured10736 = result10736 := by
  rw [tree10736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10734 coloured10734 at child
  try dsimp only [live10736, coloured10736]
  rw [child]
  dsimp only [result10734]
  have child := child1
  unfold live10735 coloured10735 at child
  try dsimp only [live10736, coloured10736]
  rw [child]
  dsimp only [result10735]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10737_agree_conditional : tree10737 = literal10737 := by
  rw [tree10737_def]
  rfl
theorem node10737_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10737 live10737 coloured10737 = result10737 := by
  rw [tree10737_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10738_agree_conditional
    (child0 : tree10736 = literal10736)
    (child1 : tree10737 = literal10737) : tree10738 = literal10738 := by
  rw [tree10738_def, child0, child1]
  rfl
theorem node10738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10736 live10736 coloured10736 = result10736)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10737 live10737 coloured10737 = result10737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10738 live10738 coloured10738 = result10738 := by
  rw [tree10738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10736 coloured10736 at child
  try dsimp only [live10738, coloured10738]
  rw [child]
  dsimp only [result10736]
  have child := child1
  unfold live10737 coloured10737 at child
  try dsimp only [live10738, coloured10738]
  rw [child]
  dsimp only [result10737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10739_agree_conditional : tree10739 = literal10739 := by
  rw [tree10739_def]
  rfl
theorem node10739_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10739 live10739 coloured10739 = result10739 := by
  rw [tree10739_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10740_agree_conditional
    (child0 : tree10738 = literal10738)
    (child1 : tree10739 = literal10739) : tree10740 = literal10740 := by
  rw [tree10740_def, child0, child1]
  rfl
theorem node10740_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10738 live10738 coloured10738 = result10738)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10739 live10739 coloured10739 = result10739) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10740 live10740 coloured10740 = result10740 := by
  rw [tree10740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10738 coloured10738 at child
  try dsimp only [live10740, coloured10740]
  rw [child]
  dsimp only [result10738]
  have child := child1
  unfold live10739 coloured10739 at child
  try dsimp only [live10740, coloured10740]
  rw [child]
  dsimp only [result10739]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10741_agree_conditional : tree10741 = literal10741 := by
  rw [tree10741_def]
  rfl
theorem node10741_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10741 live10741 coloured10741 = result10741 := by
  rw [tree10741_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10742_agree_conditional
    (child0 : tree10740 = literal10740)
    (child1 : tree10741 = literal10741) : tree10742 = literal10742 := by
  rw [tree10742_def, child0, child1]
  rfl
theorem node10742_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10740 live10740 coloured10740 = result10740)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10741 live10741 coloured10741 = result10741) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10742 live10742 coloured10742 = result10742 := by
  rw [tree10742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10740 coloured10740 at child
  try dsimp only [live10742, coloured10742]
  rw [child]
  dsimp only [result10740]
  have child := child1
  unfold live10741 coloured10741 at child
  try dsimp only [live10742, coloured10742]
  rw [child]
  dsimp only [result10741]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10743_agree_conditional : tree10743 = literal10743 := by
  rw [tree10743_def]
  rfl
theorem node10743_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10743 live10743 coloured10743 = result10743 := by
  rw [tree10743_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10744_agree_conditional
    (child0 : tree10742 = literal10742)
    (child1 : tree10743 = literal10743) : tree10744 = literal10744 := by
  rw [tree10744_def, child0, child1]
  rfl
theorem node10744_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10742 live10742 coloured10742 = result10742)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10743 live10743 coloured10743 = result10743) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10744 live10744 coloured10744 = result10744 := by
  rw [tree10744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10742 coloured10742 at child
  try dsimp only [live10744, coloured10744]
  rw [child]
  dsimp only [result10742]
  have child := child1
  unfold live10743 coloured10743 at child
  try dsimp only [live10744, coloured10744]
  rw [child]
  dsimp only [result10743]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10745_agree_conditional : tree10745 = literal10745 := by
  rw [tree10745_def]
  rfl
theorem node10745_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10745 live10745 coloured10745 = result10745 := by
  rw [tree10745_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10746_agree_conditional
    (child0 : tree10744 = literal10744)
    (child1 : tree10745 = literal10745) : tree10746 = literal10746 := by
  rw [tree10746_def, child0, child1]
  rfl
theorem node10746_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10744 live10744 coloured10744 = result10744)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10745 live10745 coloured10745 = result10745) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10746 live10746 coloured10746 = result10746 := by
  rw [tree10746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10744 coloured10744 at child
  try dsimp only [live10746, coloured10746]
  rw [child]
  dsimp only [result10744]
  have child := child1
  unfold live10745 coloured10745 at child
  try dsimp only [live10746, coloured10746]
  rw [child]
  dsimp only [result10745]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10747_agree_conditional : tree10747 = literal10747 := by
  rw [tree10747_def]
  rfl
theorem node10747_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10747 live10747 coloured10747 = result10747 := by
  rw [tree10747_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10748_agree_conditional
    (child0 : tree10746 = literal10746)
    (child1 : tree10747 = literal10747) : tree10748 = literal10748 := by
  rw [tree10748_def, child0, child1]
  rfl
theorem node10748_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10746 live10746 coloured10746 = result10746)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10747 live10747 coloured10747 = result10747) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10748 live10748 coloured10748 = result10748 := by
  rw [tree10748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10746 coloured10746 at child
  try dsimp only [live10748, coloured10748]
  rw [child]
  dsimp only [result10746]
  have child := child1
  unfold live10747 coloured10747 at child
  try dsimp only [live10748, coloured10748]
  rw [child]
  dsimp only [result10747]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10749_agree_conditional : tree10749 = literal10749 := by
  rw [tree10749_def]
  rfl
theorem node10749_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10749 live10749 coloured10749 = result10749 := by
  rw [tree10749_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10750_agree_conditional
    (child0 : tree10748 = literal10748)
    (child1 : tree10749 = literal10749) : tree10750 = literal10750 := by
  rw [tree10750_def, child0, child1]
  rfl
theorem node10750_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10748 live10748 coloured10748 = result10748)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10749 live10749 coloured10749 = result10749) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10750 live10750 coloured10750 = result10750 := by
  rw [tree10750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10748 coloured10748 at child
  try dsimp only [live10750, coloured10750]
  rw [child]
  dsimp only [result10748]
  have child := child1
  unfold live10749 coloured10749 at child
  try dsimp only [live10750, coloured10750]
  rw [child]
  dsimp only [result10749]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10751_agree_conditional : tree10751 = literal10751 := by
  rw [tree10751_def]
  rfl
theorem node10751_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10751 live10751 coloured10751 = result10751 := by
  rw [tree10751_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
