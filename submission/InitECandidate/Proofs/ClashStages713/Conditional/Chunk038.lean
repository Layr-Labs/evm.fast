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
theorem tree3648_agree_conditional
    (child0 : tree3646 = literal3646)
    (child1 : tree3647 = literal3647) : tree3648 = literal3648 := by
  rw [tree3648_def, child0, child1]
  rfl
theorem node3648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3646 live3646 coloured3646 = result3646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3647 live3647 coloured3647 = result3647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3648 live3648 coloured3648 = result3648 := by
  rw [tree3648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3646 coloured3646 at child
  try dsimp only [live3648, coloured3648]
  rw [child]
  dsimp only [result3646]
  have child := child1
  unfold live3647 coloured3647 at child
  try dsimp only [live3648, coloured3648]
  rw [child]
  dsimp only [result3647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3649_agree_conditional : tree3649 = literal3649 := by
  rw [tree3649_def]
  rfl
theorem node3649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3649 live3649 coloured3649 = result3649 := by
  rw [tree3649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3650_agree_conditional
    (child0 : tree3648 = literal3648)
    (child1 : tree3649 = literal3649) : tree3650 = literal3650 := by
  rw [tree3650_def, child0, child1]
  rfl
theorem node3650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3648 live3648 coloured3648 = result3648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3649 live3649 coloured3649 = result3649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3650 live3650 coloured3650 = result3650 := by
  rw [tree3650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3648 coloured3648 at child
  try dsimp only [live3650, coloured3650]
  rw [child]
  dsimp only [result3648]
  have child := child1
  unfold live3649 coloured3649 at child
  try dsimp only [live3650, coloured3650]
  rw [child]
  dsimp only [result3649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3651_agree_conditional : tree3651 = literal3651 := by
  rw [tree3651_def]
  rfl
theorem node3651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3651 live3651 coloured3651 = result3651 := by
  rw [tree3651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3652_agree_conditional
    (child0 : tree3650 = literal3650)
    (child1 : tree3651 = literal3651) : tree3652 = literal3652 := by
  rw [tree3652_def, child0, child1]
  rfl
theorem node3652_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3650 live3650 coloured3650 = result3650)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3651 live3651 coloured3651 = result3651) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3652 live3652 coloured3652 = result3652 := by
  rw [tree3652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3650 coloured3650 at child
  try dsimp only [live3652, coloured3652]
  rw [child]
  dsimp only [result3650]
  have child := child1
  unfold live3651 coloured3651 at child
  try dsimp only [live3652, coloured3652]
  rw [child]
  dsimp only [result3651]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3653_agree_conditional : tree3653 = literal3653 := by
  rw [tree3653_def]
  rfl
theorem node3653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3653 live3653 coloured3653 = result3653 := by
  rw [tree3653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3654_agree_conditional
    (child0 : tree3652 = literal3652)
    (child1 : tree3653 = literal3653) : tree3654 = literal3654 := by
  rw [tree3654_def, child0, child1]
  rfl
theorem node3654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3652 live3652 coloured3652 = result3652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3653 live3653 coloured3653 = result3653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3654 live3654 coloured3654 = result3654 := by
  rw [tree3654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3652 coloured3652 at child
  try dsimp only [live3654, coloured3654]
  rw [child]
  dsimp only [result3652]
  have child := child1
  unfold live3653 coloured3653 at child
  try dsimp only [live3654, coloured3654]
  rw [child]
  dsimp only [result3653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3655_agree_conditional : tree3655 = literal3655 := by
  rw [tree3655_def]
  rfl
theorem node3655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3655 live3655 coloured3655 = result3655 := by
  rw [tree3655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3656_agree_conditional
    (child0 : tree3654 = literal3654)
    (child1 : tree3655 = literal3655) : tree3656 = literal3656 := by
  rw [tree3656_def, child0, child1]
  rfl
theorem node3656_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3654 live3654 coloured3654 = result3654)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3655 live3655 coloured3655 = result3655) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3656 live3656 coloured3656 = result3656 := by
  rw [tree3656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3654 coloured3654 at child
  try dsimp only [live3656, coloured3656]
  rw [child]
  dsimp only [result3654]
  have child := child1
  unfold live3655 coloured3655 at child
  try dsimp only [live3656, coloured3656]
  rw [child]
  dsimp only [result3655]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3657_agree_conditional : tree3657 = literal3657 := by
  rw [tree3657_def]
  rfl
theorem node3657_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3657 live3657 coloured3657 = result3657 := by
  rw [tree3657_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3658_agree_conditional
    (child0 : tree3656 = literal3656)
    (child1 : tree3657 = literal3657) : tree3658 = literal3658 := by
  rw [tree3658_def, child0, child1]
  rfl
theorem node3658_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3656 live3656 coloured3656 = result3656)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3657 live3657 coloured3657 = result3657) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3658 live3658 coloured3658 = result3658 := by
  rw [tree3658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3656 coloured3656 at child
  try dsimp only [live3658, coloured3658]
  rw [child]
  dsimp only [result3656]
  have child := child1
  unfold live3657 coloured3657 at child
  try dsimp only [live3658, coloured3658]
  rw [child]
  dsimp only [result3657]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3659_agree_conditional : tree3659 = literal3659 := by
  rw [tree3659_def]
  rfl
theorem node3659_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3659 live3659 coloured3659 = result3659 := by
  rw [tree3659_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3660_agree_conditional
    (child0 : tree3658 = literal3658)
    (child1 : tree3659 = literal3659) : tree3660 = literal3660 := by
  rw [tree3660_def, child0, child1]
  rfl
theorem node3660_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3658 live3658 coloured3658 = result3658)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3659 live3659 coloured3659 = result3659) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3660 live3660 coloured3660 = result3660 := by
  rw [tree3660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3658 coloured3658 at child
  try dsimp only [live3660, coloured3660]
  rw [child]
  dsimp only [result3658]
  have child := child1
  unfold live3659 coloured3659 at child
  try dsimp only [live3660, coloured3660]
  rw [child]
  dsimp only [result3659]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3661_agree_conditional : tree3661 = literal3661 := by
  rw [tree3661_def]
  rfl
theorem node3661_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3661 live3661 coloured3661 = result3661 := by
  rw [tree3661_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3662_agree_conditional
    (child0 : tree3660 = literal3660)
    (child1 : tree3661 = literal3661) : tree3662 = literal3662 := by
  rw [tree3662_def, child0, child1]
  rfl
theorem node3662_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3660 live3660 coloured3660 = result3660)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3661 live3661 coloured3661 = result3661) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3662 live3662 coloured3662 = result3662 := by
  rw [tree3662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3660 coloured3660 at child
  try dsimp only [live3662, coloured3662]
  rw [child]
  dsimp only [result3660]
  have child := child1
  unfold live3661 coloured3661 at child
  try dsimp only [live3662, coloured3662]
  rw [child]
  dsimp only [result3661]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3663_agree_conditional : tree3663 = literal3663 := by
  rw [tree3663_def]
  rfl
theorem node3663_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3663 live3663 coloured3663 = result3663 := by
  rw [tree3663_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3664_agree_conditional
    (child0 : tree3662 = literal3662)
    (child1 : tree3663 = literal3663) : tree3664 = literal3664 := by
  rw [tree3664_def, child0, child1]
  rfl
theorem node3664_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3662 live3662 coloured3662 = result3662)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3663 live3663 coloured3663 = result3663) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3664 live3664 coloured3664 = result3664 := by
  rw [tree3664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3662 coloured3662 at child
  try dsimp only [live3664, coloured3664]
  rw [child]
  dsimp only [result3662]
  have child := child1
  unfold live3663 coloured3663 at child
  try dsimp only [live3664, coloured3664]
  rw [child]
  dsimp only [result3663]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3665_agree_conditional : tree3665 = literal3665 := by
  rw [tree3665_def]
  rfl
theorem node3665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3665 live3665 coloured3665 = result3665 := by
  rw [tree3665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3666_agree_conditional
    (child0 : tree3664 = literal3664)
    (child1 : tree3665 = literal3665) : tree3666 = literal3666 := by
  rw [tree3666_def, child0, child1]
  rfl
theorem node3666_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3664 live3664 coloured3664 = result3664)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3665 live3665 coloured3665 = result3665) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3666 live3666 coloured3666 = result3666 := by
  rw [tree3666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3664 coloured3664 at child
  try dsimp only [live3666, coloured3666]
  rw [child]
  dsimp only [result3664]
  have child := child1
  unfold live3665 coloured3665 at child
  try dsimp only [live3666, coloured3666]
  rw [child]
  dsimp only [result3665]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3667_agree_conditional : tree3667 = literal3667 := by
  rw [tree3667_def]
  rfl
theorem node3667_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3667 live3667 coloured3667 = result3667 := by
  rw [tree3667_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3668_agree_conditional
    (child0 : tree3666 = literal3666)
    (child1 : tree3667 = literal3667) : tree3668 = literal3668 := by
  rw [tree3668_def, child0, child1]
  rfl
theorem node3668_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3666 live3666 coloured3666 = result3666)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3667 live3667 coloured3667 = result3667) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3668 live3668 coloured3668 = result3668 := by
  rw [tree3668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3666 coloured3666 at child
  try dsimp only [live3668, coloured3668]
  rw [child]
  dsimp only [result3666]
  have child := child1
  unfold live3667 coloured3667 at child
  try dsimp only [live3668, coloured3668]
  rw [child]
  dsimp only [result3667]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3669_agree_conditional : tree3669 = literal3669 := by
  rw [tree3669_def]
  rfl
theorem node3669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3669 live3669 coloured3669 = result3669 := by
  rw [tree3669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3670_agree_conditional
    (child0 : tree3668 = literal3668)
    (child1 : tree3669 = literal3669) : tree3670 = literal3670 := by
  rw [tree3670_def, child0, child1]
  rfl
theorem node3670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3668 live3668 coloured3668 = result3668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3669 live3669 coloured3669 = result3669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3670 live3670 coloured3670 = result3670 := by
  rw [tree3670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3668 coloured3668 at child
  try dsimp only [live3670, coloured3670]
  rw [child]
  dsimp only [result3668]
  have child := child1
  unfold live3669 coloured3669 at child
  try dsimp only [live3670, coloured3670]
  rw [child]
  dsimp only [result3669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3671_agree_conditional : tree3671 = literal3671 := by
  rw [tree3671_def]
  rfl
theorem node3671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3671 live3671 coloured3671 = result3671 := by
  rw [tree3671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3672_agree_conditional
    (child0 : tree3670 = literal3670)
    (child1 : tree3671 = literal3671) : tree3672 = literal3672 := by
  rw [tree3672_def, child0, child1]
  rfl
theorem node3672_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3670 live3670 coloured3670 = result3670)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3671 live3671 coloured3671 = result3671) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3672 live3672 coloured3672 = result3672 := by
  rw [tree3672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3670 coloured3670 at child
  try dsimp only [live3672, coloured3672]
  rw [child]
  dsimp only [result3670]
  have child := child1
  unfold live3671 coloured3671 at child
  try dsimp only [live3672, coloured3672]
  rw [child]
  dsimp only [result3671]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3673_agree_conditional : tree3673 = literal3673 := by
  rw [tree3673_def]
  rfl
theorem node3673_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3673 live3673 coloured3673 = result3673 := by
  rw [tree3673_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3674_agree_conditional
    (child0 : tree3672 = literal3672)
    (child1 : tree3673 = literal3673) : tree3674 = literal3674 := by
  rw [tree3674_def, child0, child1]
  rfl
theorem node3674_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3672 live3672 coloured3672 = result3672)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3673 live3673 coloured3673 = result3673) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3674 live3674 coloured3674 = result3674 := by
  rw [tree3674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3672 coloured3672 at child
  try dsimp only [live3674, coloured3674]
  rw [child]
  dsimp only [result3672]
  have child := child1
  unfold live3673 coloured3673 at child
  try dsimp only [live3674, coloured3674]
  rw [child]
  dsimp only [result3673]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3675_agree_conditional : tree3675 = literal3675 := by
  rw [tree3675_def]
  rfl
theorem node3675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3675 live3675 coloured3675 = result3675 := by
  rw [tree3675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3676_agree_conditional
    (child0 : tree3674 = literal3674)
    (child1 : tree3675 = literal3675) : tree3676 = literal3676 := by
  rw [tree3676_def, child0, child1]
  rfl
theorem node3676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3674 live3674 coloured3674 = result3674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3675 live3675 coloured3675 = result3675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3676 live3676 coloured3676 = result3676 := by
  rw [tree3676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3674 coloured3674 at child
  try dsimp only [live3676, coloured3676]
  rw [child]
  dsimp only [result3674]
  have child := child1
  unfold live3675 coloured3675 at child
  try dsimp only [live3676, coloured3676]
  rw [child]
  dsimp only [result3675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3677_agree_conditional : tree3677 = literal3677 := by
  rw [tree3677_def]
  rfl
theorem node3677_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3677 live3677 coloured3677 = result3677 := by
  rw [tree3677_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3678_agree_conditional
    (child0 : tree3676 = literal3676)
    (child1 : tree3677 = literal3677) : tree3678 = literal3678 := by
  rw [tree3678_def, child0, child1]
  rfl
theorem node3678_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3676 live3676 coloured3676 = result3676)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3677 live3677 coloured3677 = result3677) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3678 live3678 coloured3678 = result3678 := by
  rw [tree3678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3676 coloured3676 at child
  try dsimp only [live3678, coloured3678]
  rw [child]
  dsimp only [result3676]
  have child := child1
  unfold live3677 coloured3677 at child
  try dsimp only [live3678, coloured3678]
  rw [child]
  dsimp only [result3677]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3679_agree_conditional : tree3679 = literal3679 := by
  rw [tree3679_def]
  rfl
theorem node3679_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3679 live3679 coloured3679 = result3679 := by
  rw [tree3679_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3680_agree_conditional
    (child0 : tree3678 = literal3678)
    (child1 : tree3679 = literal3679) : tree3680 = literal3680 := by
  rw [tree3680_def, child0, child1]
  rfl
theorem node3680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3678 live3678 coloured3678 = result3678)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3679 live3679 coloured3679 = result3679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3680 live3680 coloured3680 = result3680 := by
  rw [tree3680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3678 coloured3678 at child
  try dsimp only [live3680, coloured3680]
  rw [child]
  dsimp only [result3678]
  have child := child1
  unfold live3679 coloured3679 at child
  try dsimp only [live3680, coloured3680]
  rw [child]
  dsimp only [result3679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3681_agree_conditional : tree3681 = literal3681 := by
  rw [tree3681_def]
  rfl
theorem node3681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3681 live3681 coloured3681 = result3681 := by
  rw [tree3681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3682_agree_conditional
    (child0 : tree3680 = literal3680)
    (child1 : tree3681 = literal3681) : tree3682 = literal3682 := by
  rw [tree3682_def, child0, child1]
  rfl
theorem node3682_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3680 live3680 coloured3680 = result3680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3681 live3681 coloured3681 = result3681) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3682 live3682 coloured3682 = result3682 := by
  rw [tree3682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3680 coloured3680 at child
  try dsimp only [live3682, coloured3682]
  rw [child]
  dsimp only [result3680]
  have child := child1
  unfold live3681 coloured3681 at child
  try dsimp only [live3682, coloured3682]
  rw [child]
  dsimp only [result3681]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3683_agree_conditional : tree3683 = literal3683 := by
  rw [tree3683_def]
  rfl
theorem node3683_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3683 live3683 coloured3683 = result3683 := by
  rw [tree3683_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3684_agree_conditional
    (child0 : tree3682 = literal3682)
    (child1 : tree3683 = literal3683) : tree3684 = literal3684 := by
  rw [tree3684_def, child0, child1]
  rfl
theorem node3684_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3682 live3682 coloured3682 = result3682)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3683 live3683 coloured3683 = result3683) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3684 live3684 coloured3684 = result3684 := by
  rw [tree3684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3682 coloured3682 at child
  try dsimp only [live3684, coloured3684]
  rw [child]
  dsimp only [result3682]
  have child := child1
  unfold live3683 coloured3683 at child
  try dsimp only [live3684, coloured3684]
  rw [child]
  dsimp only [result3683]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3685_agree_conditional : tree3685 = literal3685 := by
  rw [tree3685_def]
  rfl
theorem node3685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3685 live3685 coloured3685 = result3685 := by
  rw [tree3685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3686_agree_conditional
    (child0 : tree3684 = literal3684)
    (child1 : tree3685 = literal3685) : tree3686 = literal3686 := by
  rw [tree3686_def, child0, child1]
  rfl
theorem node3686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3684 live3684 coloured3684 = result3684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3685 live3685 coloured3685 = result3685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3686 live3686 coloured3686 = result3686 := by
  rw [tree3686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3684 coloured3684 at child
  try dsimp only [live3686, coloured3686]
  rw [child]
  dsimp only [result3684]
  have child := child1
  unfold live3685 coloured3685 at child
  try dsimp only [live3686, coloured3686]
  rw [child]
  dsimp only [result3685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3687_agree_conditional : tree3687 = literal3687 := by
  rw [tree3687_def]
  rfl
theorem node3687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3687 live3687 coloured3687 = result3687 := by
  rw [tree3687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3688_agree_conditional
    (child0 : tree3686 = literal3686)
    (child1 : tree3687 = literal3687) : tree3688 = literal3688 := by
  rw [tree3688_def, child0, child1]
  rfl
theorem node3688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3686 live3686 coloured3686 = result3686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3687 live3687 coloured3687 = result3687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3688 live3688 coloured3688 = result3688 := by
  rw [tree3688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3686 coloured3686 at child
  try dsimp only [live3688, coloured3688]
  rw [child]
  dsimp only [result3686]
  have child := child1
  unfold live3687 coloured3687 at child
  try dsimp only [live3688, coloured3688]
  rw [child]
  dsimp only [result3687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3689_agree_conditional : tree3689 = literal3689 := by
  rw [tree3689_def]
  rfl
theorem node3689_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3689 live3689 coloured3689 = result3689 := by
  rw [tree3689_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3690_agree_conditional
    (child0 : tree3688 = literal3688)
    (child1 : tree3689 = literal3689) : tree3690 = literal3690 := by
  rw [tree3690_def, child0, child1]
  rfl
theorem node3690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3688 live3688 coloured3688 = result3688)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3689 live3689 coloured3689 = result3689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3690 live3690 coloured3690 = result3690 := by
  rw [tree3690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3688 coloured3688 at child
  try dsimp only [live3690, coloured3690]
  rw [child]
  dsimp only [result3688]
  have child := child1
  unfold live3689 coloured3689 at child
  try dsimp only [live3690, coloured3690]
  rw [child]
  dsimp only [result3689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3691_agree_conditional : tree3691 = literal3691 := by
  rw [tree3691_def]
  rfl
theorem node3691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3691 live3691 coloured3691 = result3691 := by
  rw [tree3691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3692_agree_conditional
    (child0 : tree3690 = literal3690)
    (child1 : tree3691 = literal3691) : tree3692 = literal3692 := by
  rw [tree3692_def, child0, child1]
  rfl
theorem node3692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3690 live3690 coloured3690 = result3690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3691 live3691 coloured3691 = result3691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3692 live3692 coloured3692 = result3692 := by
  rw [tree3692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3690 coloured3690 at child
  try dsimp only [live3692, coloured3692]
  rw [child]
  dsimp only [result3690]
  have child := child1
  unfold live3691 coloured3691 at child
  try dsimp only [live3692, coloured3692]
  rw [child]
  dsimp only [result3691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3693_agree_conditional : tree3693 = literal3693 := by
  rw [tree3693_def]
  rfl
theorem node3693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3693 live3693 coloured3693 = result3693 := by
  rw [tree3693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3694_agree_conditional
    (child0 : tree3692 = literal3692)
    (child1 : tree3693 = literal3693) : tree3694 = literal3694 := by
  rw [tree3694_def, child0, child1]
  rfl
theorem node3694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3692 live3692 coloured3692 = result3692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3693 live3693 coloured3693 = result3693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3694 live3694 coloured3694 = result3694 := by
  rw [tree3694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3692 coloured3692 at child
  try dsimp only [live3694, coloured3694]
  rw [child]
  dsimp only [result3692]
  have child := child1
  unfold live3693 coloured3693 at child
  try dsimp only [live3694, coloured3694]
  rw [child]
  dsimp only [result3693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3695_agree_conditional : tree3695 = literal3695 := by
  rw [tree3695_def]
  rfl
theorem node3695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3695 live3695 coloured3695 = result3695 := by
  rw [tree3695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3696_agree_conditional
    (child0 : tree3694 = literal3694)
    (child1 : tree3695 = literal3695) : tree3696 = literal3696 := by
  rw [tree3696_def, child0, child1]
  rfl
theorem node3696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3694 live3694 coloured3694 = result3694)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3695 live3695 coloured3695 = result3695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3696 live3696 coloured3696 = result3696 := by
  rw [tree3696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3694 coloured3694 at child
  try dsimp only [live3696, coloured3696]
  rw [child]
  dsimp only [result3694]
  have child := child1
  unfold live3695 coloured3695 at child
  try dsimp only [live3696, coloured3696]
  rw [child]
  dsimp only [result3695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3697_agree_conditional : tree3697 = literal3697 := by
  rw [tree3697_def]
  rfl
theorem node3697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3697 live3697 coloured3697 = result3697 := by
  rw [tree3697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3698_agree_conditional
    (child0 : tree3696 = literal3696)
    (child1 : tree3697 = literal3697) : tree3698 = literal3698 := by
  rw [tree3698_def, child0, child1]
  rfl
theorem node3698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3696 live3696 coloured3696 = result3696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3697 live3697 coloured3697 = result3697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3698 live3698 coloured3698 = result3698 := by
  rw [tree3698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3696 coloured3696 at child
  try dsimp only [live3698, coloured3698]
  rw [child]
  dsimp only [result3696]
  have child := child1
  unfold live3697 coloured3697 at child
  try dsimp only [live3698, coloured3698]
  rw [child]
  dsimp only [result3697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3699_agree_conditional : tree3699 = literal3699 := by
  rw [tree3699_def]
  rfl
theorem node3699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3699 live3699 coloured3699 = result3699 := by
  rw [tree3699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3700_agree_conditional
    (child0 : tree3698 = literal3698)
    (child1 : tree3699 = literal3699) : tree3700 = literal3700 := by
  rw [tree3700_def, child0, child1]
  rfl
theorem node3700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3698 live3698 coloured3698 = result3698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3699 live3699 coloured3699 = result3699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3700 live3700 coloured3700 = result3700 := by
  rw [tree3700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3698 coloured3698 at child
  try dsimp only [live3700, coloured3700]
  rw [child]
  dsimp only [result3698]
  have child := child1
  unfold live3699 coloured3699 at child
  try dsimp only [live3700, coloured3700]
  rw [child]
  dsimp only [result3699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3701_agree_conditional : tree3701 = literal3701 := by
  rw [tree3701_def]
  rfl
theorem node3701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3701 live3701 coloured3701 = result3701 := by
  rw [tree3701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3702_agree_conditional
    (child0 : tree3700 = literal3700)
    (child1 : tree3701 = literal3701) : tree3702 = literal3702 := by
  rw [tree3702_def, child0, child1]
  rfl
theorem node3702_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3700 live3700 coloured3700 = result3700)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3701 live3701 coloured3701 = result3701) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3702 live3702 coloured3702 = result3702 := by
  rw [tree3702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3700 coloured3700 at child
  try dsimp only [live3702, coloured3702]
  rw [child]
  dsimp only [result3700]
  have child := child1
  unfold live3701 coloured3701 at child
  try dsimp only [live3702, coloured3702]
  rw [child]
  dsimp only [result3701]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3703_agree_conditional : tree3703 = literal3703 := by
  rw [tree3703_def]
  rfl
theorem node3703_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3703 live3703 coloured3703 = result3703 := by
  rw [tree3703_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3704_agree_conditional
    (child0 : tree3702 = literal3702)
    (child1 : tree3703 = literal3703) : tree3704 = literal3704 := by
  rw [tree3704_def, child0, child1]
  rfl
theorem node3704_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3702 live3702 coloured3702 = result3702)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3703 live3703 coloured3703 = result3703) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3704 live3704 coloured3704 = result3704 := by
  rw [tree3704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3702 coloured3702 at child
  try dsimp only [live3704, coloured3704]
  rw [child]
  dsimp only [result3702]
  have child := child1
  unfold live3703 coloured3703 at child
  try dsimp only [live3704, coloured3704]
  rw [child]
  dsimp only [result3703]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3705_agree_conditional : tree3705 = literal3705 := by
  rw [tree3705_def]
  rfl
theorem node3705_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3705 live3705 coloured3705 = result3705 := by
  rw [tree3705_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3706_agree_conditional
    (child0 : tree3704 = literal3704)
    (child1 : tree3705 = literal3705) : tree3706 = literal3706 := by
  rw [tree3706_def, child0, child1]
  rfl
theorem node3706_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3704 live3704 coloured3704 = result3704)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3705 live3705 coloured3705 = result3705) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3706 live3706 coloured3706 = result3706 := by
  rw [tree3706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3704 coloured3704 at child
  try dsimp only [live3706, coloured3706]
  rw [child]
  dsimp only [result3704]
  have child := child1
  unfold live3705 coloured3705 at child
  try dsimp only [live3706, coloured3706]
  rw [child]
  dsimp only [result3705]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3707_agree_conditional : tree3707 = literal3707 := by
  rw [tree3707_def]
  rfl
theorem node3707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3707 live3707 coloured3707 = result3707 := by
  rw [tree3707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3708_agree_conditional
    (child0 : tree3706 = literal3706)
    (child1 : tree3707 = literal3707) : tree3708 = literal3708 := by
  rw [tree3708_def, child0, child1]
  rfl
theorem node3708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3706 live3706 coloured3706 = result3706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3707 live3707 coloured3707 = result3707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3708 live3708 coloured3708 = result3708 := by
  rw [tree3708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3706 coloured3706 at child
  try dsimp only [live3708, coloured3708]
  rw [child]
  dsimp only [result3706]
  have child := child1
  unfold live3707 coloured3707 at child
  try dsimp only [live3708, coloured3708]
  rw [child]
  dsimp only [result3707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3709_agree_conditional : tree3709 = literal3709 := by
  rw [tree3709_def]
  rfl
theorem node3709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3709 live3709 coloured3709 = result3709 := by
  rw [tree3709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3710_agree_conditional
    (child0 : tree3708 = literal3708)
    (child1 : tree3709 = literal3709) : tree3710 = literal3710 := by
  rw [tree3710_def, child0, child1]
  rfl
theorem node3710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3708 live3708 coloured3708 = result3708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3709 live3709 coloured3709 = result3709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3710 live3710 coloured3710 = result3710 := by
  rw [tree3710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3708 coloured3708 at child
  try dsimp only [live3710, coloured3710]
  rw [child]
  dsimp only [result3708]
  have child := child1
  unfold live3709 coloured3709 at child
  try dsimp only [live3710, coloured3710]
  rw [child]
  dsimp only [result3709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3711_agree_conditional : tree3711 = literal3711 := by
  rw [tree3711_def]
  rfl
theorem node3711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3711 live3711 coloured3711 = result3711 := by
  rw [tree3711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3712_agree_conditional
    (child0 : tree3710 = literal3710)
    (child1 : tree3711 = literal3711) : tree3712 = literal3712 := by
  rw [tree3712_def, child0, child1]
  rfl
theorem node3712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3710 live3710 coloured3710 = result3710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3711 live3711 coloured3711 = result3711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3712 live3712 coloured3712 = result3712 := by
  rw [tree3712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3710 coloured3710 at child
  try dsimp only [live3712, coloured3712]
  rw [child]
  dsimp only [result3710]
  have child := child1
  unfold live3711 coloured3711 at child
  try dsimp only [live3712, coloured3712]
  rw [child]
  dsimp only [result3711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3713_agree_conditional : tree3713 = literal3713 := by
  rw [tree3713_def]
  rfl
theorem node3713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3713 live3713 coloured3713 = result3713 := by
  rw [tree3713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3714_agree_conditional
    (child0 : tree3712 = literal3712)
    (child1 : tree3713 = literal3713) : tree3714 = literal3714 := by
  rw [tree3714_def, child0, child1]
  rfl
theorem node3714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3712 live3712 coloured3712 = result3712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3713 live3713 coloured3713 = result3713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3714 live3714 coloured3714 = result3714 := by
  rw [tree3714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3712 coloured3712 at child
  try dsimp only [live3714, coloured3714]
  rw [child]
  dsimp only [result3712]
  have child := child1
  unfold live3713 coloured3713 at child
  try dsimp only [live3714, coloured3714]
  rw [child]
  dsimp only [result3713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3715_agree_conditional : tree3715 = literal3715 := by
  rw [tree3715_def]
  rfl
theorem node3715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3715 live3715 coloured3715 = result3715 := by
  rw [tree3715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3716_agree_conditional
    (child0 : tree3714 = literal3714)
    (child1 : tree3715 = literal3715) : tree3716 = literal3716 := by
  rw [tree3716_def, child0, child1]
  rfl
theorem node3716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3714 live3714 coloured3714 = result3714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3715 live3715 coloured3715 = result3715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3716 live3716 coloured3716 = result3716 := by
  rw [tree3716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3714 coloured3714 at child
  try dsimp only [live3716, coloured3716]
  rw [child]
  dsimp only [result3714]
  have child := child1
  unfold live3715 coloured3715 at child
  try dsimp only [live3716, coloured3716]
  rw [child]
  dsimp only [result3715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3717_agree_conditional : tree3717 = literal3717 := by
  rw [tree3717_def]
  rfl
theorem node3717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3717 live3717 coloured3717 = result3717 := by
  rw [tree3717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3718_agree_conditional
    (child0 : tree3716 = literal3716)
    (child1 : tree3717 = literal3717) : tree3718 = literal3718 := by
  rw [tree3718_def, child0, child1]
  rfl
theorem node3718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3716 live3716 coloured3716 = result3716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3717 live3717 coloured3717 = result3717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3718 live3718 coloured3718 = result3718 := by
  rw [tree3718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3716 coloured3716 at child
  try dsimp only [live3718, coloured3718]
  rw [child]
  dsimp only [result3716]
  have child := child1
  unfold live3717 coloured3717 at child
  try dsimp only [live3718, coloured3718]
  rw [child]
  dsimp only [result3717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3719_agree_conditional : tree3719 = literal3719 := by
  rw [tree3719_def]
  rfl
theorem node3719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3719 live3719 coloured3719 = result3719 := by
  rw [tree3719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3720_agree_conditional
    (child0 : tree3718 = literal3718)
    (child1 : tree3719 = literal3719) : tree3720 = literal3720 := by
  rw [tree3720_def, child0, child1]
  rfl
theorem node3720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3718 live3718 coloured3718 = result3718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3719 live3719 coloured3719 = result3719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3720 live3720 coloured3720 = result3720 := by
  rw [tree3720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3718 coloured3718 at child
  try dsimp only [live3720, coloured3720]
  rw [child]
  dsimp only [result3718]
  have child := child1
  unfold live3719 coloured3719 at child
  try dsimp only [live3720, coloured3720]
  rw [child]
  dsimp only [result3719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3721_agree_conditional : tree3721 = literal3721 := by
  rw [tree3721_def]
  rfl
theorem node3721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3721 live3721 coloured3721 = result3721 := by
  rw [tree3721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3722_agree_conditional
    (child0 : tree3720 = literal3720)
    (child1 : tree3721 = literal3721) : tree3722 = literal3722 := by
  rw [tree3722_def, child0, child1]
  rfl
theorem node3722_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3720 live3720 coloured3720 = result3720)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3721 live3721 coloured3721 = result3721) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3722 live3722 coloured3722 = result3722 := by
  rw [tree3722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3720 coloured3720 at child
  try dsimp only [live3722, coloured3722]
  rw [child]
  dsimp only [result3720]
  have child := child1
  unfold live3721 coloured3721 at child
  try dsimp only [live3722, coloured3722]
  rw [child]
  dsimp only [result3721]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3723_agree_conditional : tree3723 = literal3723 := by
  rw [tree3723_def]
  rfl
theorem node3723_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3723 live3723 coloured3723 = result3723 := by
  rw [tree3723_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3724_agree_conditional
    (child0 : tree3722 = literal3722)
    (child1 : tree3723 = literal3723) : tree3724 = literal3724 := by
  rw [tree3724_def, child0, child1]
  rfl
theorem node3724_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3722 live3722 coloured3722 = result3722)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3723 live3723 coloured3723 = result3723) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3724 live3724 coloured3724 = result3724 := by
  rw [tree3724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3722 coloured3722 at child
  try dsimp only [live3724, coloured3724]
  rw [child]
  dsimp only [result3722]
  have child := child1
  unfold live3723 coloured3723 at child
  try dsimp only [live3724, coloured3724]
  rw [child]
  dsimp only [result3723]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3725_agree_conditional : tree3725 = literal3725 := by
  rw [tree3725_def]
  rfl
theorem node3725_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3725 live3725 coloured3725 = result3725 := by
  rw [tree3725_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3726_agree_conditional
    (child0 : tree3724 = literal3724)
    (child1 : tree3725 = literal3725) : tree3726 = literal3726 := by
  rw [tree3726_def, child0, child1]
  rfl
theorem node3726_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3724 live3724 coloured3724 = result3724)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3725 live3725 coloured3725 = result3725) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3726 live3726 coloured3726 = result3726 := by
  rw [tree3726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3724 coloured3724 at child
  try dsimp only [live3726, coloured3726]
  rw [child]
  dsimp only [result3724]
  have child := child1
  unfold live3725 coloured3725 at child
  try dsimp only [live3726, coloured3726]
  rw [child]
  dsimp only [result3725]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3727_agree_conditional : tree3727 = literal3727 := by
  rw [tree3727_def]
  rfl
theorem node3727_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3727 live3727 coloured3727 = result3727 := by
  rw [tree3727_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3728_agree_conditional
    (child0 : tree3726 = literal3726)
    (child1 : tree3727 = literal3727) : tree3728 = literal3728 := by
  rw [tree3728_def, child0, child1]
  rfl
theorem node3728_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3726 live3726 coloured3726 = result3726)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3727 live3727 coloured3727 = result3727) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3728 live3728 coloured3728 = result3728 := by
  rw [tree3728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3726 coloured3726 at child
  try dsimp only [live3728, coloured3728]
  rw [child]
  dsimp only [result3726]
  have child := child1
  unfold live3727 coloured3727 at child
  try dsimp only [live3728, coloured3728]
  rw [child]
  dsimp only [result3727]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3729_agree_conditional : tree3729 = literal3729 := by
  rw [tree3729_def]
  rfl
theorem node3729_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3729 live3729 coloured3729 = result3729 := by
  rw [tree3729_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3730_agree_conditional
    (child0 : tree3728 = literal3728)
    (child1 : tree3729 = literal3729) : tree3730 = literal3730 := by
  rw [tree3730_def, child0, child1]
  rfl
theorem node3730_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3728 live3728 coloured3728 = result3728)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3729 live3729 coloured3729 = result3729) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3730 live3730 coloured3730 = result3730 := by
  rw [tree3730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3728 coloured3728 at child
  try dsimp only [live3730, coloured3730]
  rw [child]
  dsimp only [result3728]
  have child := child1
  unfold live3729 coloured3729 at child
  try dsimp only [live3730, coloured3730]
  rw [child]
  dsimp only [result3729]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3731_agree_conditional : tree3731 = literal3731 := by
  rw [tree3731_def]
  rfl
theorem node3731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3731 live3731 coloured3731 = result3731 := by
  rw [tree3731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3732_agree_conditional
    (child0 : tree3730 = literal3730)
    (child1 : tree3731 = literal3731) : tree3732 = literal3732 := by
  rw [tree3732_def, child0, child1]
  rfl
theorem node3732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3730 live3730 coloured3730 = result3730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3731 live3731 coloured3731 = result3731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3732 live3732 coloured3732 = result3732 := by
  rw [tree3732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3730 coloured3730 at child
  try dsimp only [live3732, coloured3732]
  rw [child]
  dsimp only [result3730]
  have child := child1
  unfold live3731 coloured3731 at child
  try dsimp only [live3732, coloured3732]
  rw [child]
  dsimp only [result3731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3733_agree_conditional : tree3733 = literal3733 := by
  rw [tree3733_def]
  rfl
theorem node3733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3733 live3733 coloured3733 = result3733 := by
  rw [tree3733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3734_agree_conditional
    (child0 : tree3732 = literal3732)
    (child1 : tree3733 = literal3733) : tree3734 = literal3734 := by
  rw [tree3734_def, child0, child1]
  rfl
theorem node3734_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3732 live3732 coloured3732 = result3732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3733 live3733 coloured3733 = result3733) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3734 live3734 coloured3734 = result3734 := by
  rw [tree3734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3732 coloured3732 at child
  try dsimp only [live3734, coloured3734]
  rw [child]
  dsimp only [result3732]
  have child := child1
  unfold live3733 coloured3733 at child
  try dsimp only [live3734, coloured3734]
  rw [child]
  dsimp only [result3733]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3735_agree_conditional : tree3735 = literal3735 := by
  rw [tree3735_def]
  rfl
theorem node3735_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3735 live3735 coloured3735 = result3735 := by
  rw [tree3735_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3736_agree_conditional
    (child0 : tree3734 = literal3734)
    (child1 : tree3735 = literal3735) : tree3736 = literal3736 := by
  rw [tree3736_def, child0, child1]
  rfl
theorem node3736_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3734 live3734 coloured3734 = result3734)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3735 live3735 coloured3735 = result3735) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3736 live3736 coloured3736 = result3736 := by
  rw [tree3736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3734 coloured3734 at child
  try dsimp only [live3736, coloured3736]
  rw [child]
  dsimp only [result3734]
  have child := child1
  unfold live3735 coloured3735 at child
  try dsimp only [live3736, coloured3736]
  rw [child]
  dsimp only [result3735]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3737_agree_conditional : tree3737 = literal3737 := by
  rw [tree3737_def]
  rfl
theorem node3737_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3737 live3737 coloured3737 = result3737 := by
  rw [tree3737_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3738_agree_conditional
    (child0 : tree3736 = literal3736)
    (child1 : tree3737 = literal3737) : tree3738 = literal3738 := by
  rw [tree3738_def, child0, child1]
  rfl
theorem node3738_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3736 live3736 coloured3736 = result3736)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3737 live3737 coloured3737 = result3737) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3738 live3738 coloured3738 = result3738 := by
  rw [tree3738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3736 coloured3736 at child
  try dsimp only [live3738, coloured3738]
  rw [child]
  dsimp only [result3736]
  have child := child1
  unfold live3737 coloured3737 at child
  try dsimp only [live3738, coloured3738]
  rw [child]
  dsimp only [result3737]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3739_agree_conditional : tree3739 = literal3739 := by
  rw [tree3739_def]
  rfl
theorem node3739_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3739 live3739 coloured3739 = result3739 := by
  rw [tree3739_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3740_agree_conditional
    (child0 : tree3738 = literal3738)
    (child1 : tree3739 = literal3739) : tree3740 = literal3740 := by
  rw [tree3740_def, child0, child1]
  rfl
theorem node3740_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3738 live3738 coloured3738 = result3738)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3739 live3739 coloured3739 = result3739) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3740 live3740 coloured3740 = result3740 := by
  rw [tree3740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3738 coloured3738 at child
  try dsimp only [live3740, coloured3740]
  rw [child]
  dsimp only [result3738]
  have child := child1
  unfold live3739 coloured3739 at child
  try dsimp only [live3740, coloured3740]
  rw [child]
  dsimp only [result3739]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3741_agree_conditional : tree3741 = literal3741 := by
  rw [tree3741_def]
  rfl
theorem node3741_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3741 live3741 coloured3741 = result3741 := by
  rw [tree3741_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3742_agree_conditional
    (child0 : tree3740 = literal3740)
    (child1 : tree3741 = literal3741) : tree3742 = literal3742 := by
  rw [tree3742_def, child0, child1]
  rfl
theorem node3742_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3740 live3740 coloured3740 = result3740)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3741 live3741 coloured3741 = result3741) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3742 live3742 coloured3742 = result3742 := by
  rw [tree3742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3740 coloured3740 at child
  try dsimp only [live3742, coloured3742]
  rw [child]
  dsimp only [result3740]
  have child := child1
  unfold live3741 coloured3741 at child
  try dsimp only [live3742, coloured3742]
  rw [child]
  dsimp only [result3741]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3743_agree_conditional : tree3743 = literal3743 := by
  rw [tree3743_def]
  rfl
theorem node3743_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3743 live3743 coloured3743 = result3743 := by
  rw [tree3743_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
