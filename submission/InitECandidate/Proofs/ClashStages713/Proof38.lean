import InitECandidate.Proofs.ClashStages713.Proof37
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3648_agree : tree3648 = literal3648 := by
  rw [tree3648_def, tree3646_agree, tree3647_agree]
  rfl
theorem node3648_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3648 live3648 coloured3648 = result3648 := by
  rw [tree3648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3646_eq
  unfold live3646 coloured3646 at child
  try dsimp only [live3648, coloured3648]
  rw [child]
  dsimp only [result3646]
  have child := node3647_eq
  unfold live3647 coloured3647 at child
  try dsimp only [live3648, coloured3648]
  rw [child]
  dsimp only [result3647]
  try dsimp only [colour, result3648]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3649_agree : tree3649 = literal3649 := by
  rw [tree3649_def]
  rfl
theorem node3649_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3649 live3649 coloured3649 = result3649 := by
  rw [tree3649_def]
  try dsimp only [colour, result3649]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3650_agree : tree3650 = literal3650 := by
  rw [tree3650_def, tree3648_agree, tree3649_agree]
  rfl
theorem node3650_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3650 live3650 coloured3650 = result3650 := by
  rw [tree3650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3648_eq
  unfold live3648 coloured3648 at child
  try dsimp only [live3650, coloured3650]
  rw [child]
  dsimp only [result3648]
  have child := node3649_eq
  unfold live3649 coloured3649 at child
  try dsimp only [live3650, coloured3650]
  rw [child]
  dsimp only [result3649]
  try dsimp only [colour, result3650]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3651_agree : tree3651 = literal3651 := by
  rw [tree3651_def]
  rfl
theorem node3651_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3651 live3651 coloured3651 = result3651 := by
  rw [tree3651_def]
  try dsimp only [colour, result3651]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3652_agree : tree3652 = literal3652 := by
  rw [tree3652_def, tree3650_agree, tree3651_agree]
  rfl
theorem node3652_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3652 live3652 coloured3652 = result3652 := by
  rw [tree3652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3650_eq
  unfold live3650 coloured3650 at child
  try dsimp only [live3652, coloured3652]
  rw [child]
  dsimp only [result3650]
  have child := node3651_eq
  unfold live3651 coloured3651 at child
  try dsimp only [live3652, coloured3652]
  rw [child]
  dsimp only [result3651]
  try dsimp only [colour, result3652]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3653_agree : tree3653 = literal3653 := by
  rw [tree3653_def]
  rfl
theorem node3653_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3653 live3653 coloured3653 = result3653 := by
  rw [tree3653_def]
  try dsimp only [colour, result3653]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3654_agree : tree3654 = literal3654 := by
  rw [tree3654_def, tree3652_agree, tree3653_agree]
  rfl
theorem node3654_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3654 live3654 coloured3654 = result3654 := by
  rw [tree3654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3652_eq
  unfold live3652 coloured3652 at child
  try dsimp only [live3654, coloured3654]
  rw [child]
  dsimp only [result3652]
  have child := node3653_eq
  unfold live3653 coloured3653 at child
  try dsimp only [live3654, coloured3654]
  rw [child]
  dsimp only [result3653]
  try dsimp only [colour, result3654]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3655_agree : tree3655 = literal3655 := by
  rw [tree3655_def]
  rfl
theorem node3655_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3655 live3655 coloured3655 = result3655 := by
  rw [tree3655_def]
  try dsimp only [colour, result3655]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3656_agree : tree3656 = literal3656 := by
  rw [tree3656_def, tree3654_agree, tree3655_agree]
  rfl
theorem node3656_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3656 live3656 coloured3656 = result3656 := by
  rw [tree3656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3654_eq
  unfold live3654 coloured3654 at child
  try dsimp only [live3656, coloured3656]
  rw [child]
  dsimp only [result3654]
  have child := node3655_eq
  unfold live3655 coloured3655 at child
  try dsimp only [live3656, coloured3656]
  rw [child]
  dsimp only [result3655]
  try dsimp only [colour, result3656]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3657_agree : tree3657 = literal3657 := by
  rw [tree3657_def]
  rfl
theorem node3657_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3657 live3657 coloured3657 = result3657 := by
  rw [tree3657_def]
  try dsimp only [colour, result3657]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3658_agree : tree3658 = literal3658 := by
  rw [tree3658_def, tree3656_agree, tree3657_agree]
  rfl
theorem node3658_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3658 live3658 coloured3658 = result3658 := by
  rw [tree3658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3656_eq
  unfold live3656 coloured3656 at child
  try dsimp only [live3658, coloured3658]
  rw [child]
  dsimp only [result3656]
  have child := node3657_eq
  unfold live3657 coloured3657 at child
  try dsimp only [live3658, coloured3658]
  rw [child]
  dsimp only [result3657]
  try dsimp only [colour, result3658]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3659_agree : tree3659 = literal3659 := by
  rw [tree3659_def]
  rfl
theorem node3659_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3659 live3659 coloured3659 = result3659 := by
  rw [tree3659_def]
  try dsimp only [colour, result3659]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3660_agree : tree3660 = literal3660 := by
  rw [tree3660_def, tree3658_agree, tree3659_agree]
  rfl
theorem node3660_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3660 live3660 coloured3660 = result3660 := by
  rw [tree3660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3658_eq
  unfold live3658 coloured3658 at child
  try dsimp only [live3660, coloured3660]
  rw [child]
  dsimp only [result3658]
  have child := node3659_eq
  unfold live3659 coloured3659 at child
  try dsimp only [live3660, coloured3660]
  rw [child]
  dsimp only [result3659]
  try dsimp only [colour, result3660]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3661_agree : tree3661 = literal3661 := by
  rw [tree3661_def]
  rfl
theorem node3661_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3661 live3661 coloured3661 = result3661 := by
  rw [tree3661_def]
  try dsimp only [colour, result3661]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3662_agree : tree3662 = literal3662 := by
  rw [tree3662_def, tree3660_agree, tree3661_agree]
  rfl
theorem node3662_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3662 live3662 coloured3662 = result3662 := by
  rw [tree3662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3660_eq
  unfold live3660 coloured3660 at child
  try dsimp only [live3662, coloured3662]
  rw [child]
  dsimp only [result3660]
  have child := node3661_eq
  unfold live3661 coloured3661 at child
  try dsimp only [live3662, coloured3662]
  rw [child]
  dsimp only [result3661]
  try dsimp only [colour, result3662]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3663_agree : tree3663 = literal3663 := by
  rw [tree3663_def]
  rfl
theorem node3663_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3663 live3663 coloured3663 = result3663 := by
  rw [tree3663_def]
  try dsimp only [colour, result3663]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3664_agree : tree3664 = literal3664 := by
  rw [tree3664_def, tree3662_agree, tree3663_agree]
  rfl
theorem node3664_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3664 live3664 coloured3664 = result3664 := by
  rw [tree3664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3662_eq
  unfold live3662 coloured3662 at child
  try dsimp only [live3664, coloured3664]
  rw [child]
  dsimp only [result3662]
  have child := node3663_eq
  unfold live3663 coloured3663 at child
  try dsimp only [live3664, coloured3664]
  rw [child]
  dsimp only [result3663]
  try dsimp only [colour, result3664]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3665_agree : tree3665 = literal3665 := by
  rw [tree3665_def]
  rfl
theorem node3665_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3665 live3665 coloured3665 = result3665 := by
  rw [tree3665_def]
  try dsimp only [colour, result3665]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3666_agree : tree3666 = literal3666 := by
  rw [tree3666_def, tree3664_agree, tree3665_agree]
  rfl
theorem node3666_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3666 live3666 coloured3666 = result3666 := by
  rw [tree3666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3664_eq
  unfold live3664 coloured3664 at child
  try dsimp only [live3666, coloured3666]
  rw [child]
  dsimp only [result3664]
  have child := node3665_eq
  unfold live3665 coloured3665 at child
  try dsimp only [live3666, coloured3666]
  rw [child]
  dsimp only [result3665]
  try dsimp only [colour, result3666]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3667_agree : tree3667 = literal3667 := by
  rw [tree3667_def]
  rfl
theorem node3667_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3667 live3667 coloured3667 = result3667 := by
  rw [tree3667_def]
  try dsimp only [colour, result3667]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3668_agree : tree3668 = literal3668 := by
  rw [tree3668_def, tree3666_agree, tree3667_agree]
  rfl
theorem node3668_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3668 live3668 coloured3668 = result3668 := by
  rw [tree3668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3666_eq
  unfold live3666 coloured3666 at child
  try dsimp only [live3668, coloured3668]
  rw [child]
  dsimp only [result3666]
  have child := node3667_eq
  unfold live3667 coloured3667 at child
  try dsimp only [live3668, coloured3668]
  rw [child]
  dsimp only [result3667]
  try dsimp only [colour, result3668]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3669_agree : tree3669 = literal3669 := by
  rw [tree3669_def]
  rfl
theorem node3669_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3669 live3669 coloured3669 = result3669 := by
  rw [tree3669_def]
  try dsimp only [colour, result3669]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3670_agree : tree3670 = literal3670 := by
  rw [tree3670_def, tree3668_agree, tree3669_agree]
  rfl
theorem node3670_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3670 live3670 coloured3670 = result3670 := by
  rw [tree3670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3668_eq
  unfold live3668 coloured3668 at child
  try dsimp only [live3670, coloured3670]
  rw [child]
  dsimp only [result3668]
  have child := node3669_eq
  unfold live3669 coloured3669 at child
  try dsimp only [live3670, coloured3670]
  rw [child]
  dsimp only [result3669]
  try dsimp only [colour, result3670]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3671_agree : tree3671 = literal3671 := by
  rw [tree3671_def]
  rfl
theorem node3671_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3671 live3671 coloured3671 = result3671 := by
  rw [tree3671_def]
  try dsimp only [colour, result3671]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3672_agree : tree3672 = literal3672 := by
  rw [tree3672_def, tree3670_agree, tree3671_agree]
  rfl
theorem node3672_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3672 live3672 coloured3672 = result3672 := by
  rw [tree3672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3670_eq
  unfold live3670 coloured3670 at child
  try dsimp only [live3672, coloured3672]
  rw [child]
  dsimp only [result3670]
  have child := node3671_eq
  unfold live3671 coloured3671 at child
  try dsimp only [live3672, coloured3672]
  rw [child]
  dsimp only [result3671]
  try dsimp only [colour, result3672]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3673_agree : tree3673 = literal3673 := by
  rw [tree3673_def]
  rfl
theorem node3673_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3673 live3673 coloured3673 = result3673 := by
  rw [tree3673_def]
  try dsimp only [colour, result3673]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3674_agree : tree3674 = literal3674 := by
  rw [tree3674_def, tree3672_agree, tree3673_agree]
  rfl
theorem node3674_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3674 live3674 coloured3674 = result3674 := by
  rw [tree3674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3672_eq
  unfold live3672 coloured3672 at child
  try dsimp only [live3674, coloured3674]
  rw [child]
  dsimp only [result3672]
  have child := node3673_eq
  unfold live3673 coloured3673 at child
  try dsimp only [live3674, coloured3674]
  rw [child]
  dsimp only [result3673]
  try dsimp only [colour, result3674]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3675_agree : tree3675 = literal3675 := by
  rw [tree3675_def]
  rfl
theorem node3675_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3675 live3675 coloured3675 = result3675 := by
  rw [tree3675_def]
  try dsimp only [colour, result3675]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3676_agree : tree3676 = literal3676 := by
  rw [tree3676_def, tree3674_agree, tree3675_agree]
  rfl
theorem node3676_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3676 live3676 coloured3676 = result3676 := by
  rw [tree3676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3674_eq
  unfold live3674 coloured3674 at child
  try dsimp only [live3676, coloured3676]
  rw [child]
  dsimp only [result3674]
  have child := node3675_eq
  unfold live3675 coloured3675 at child
  try dsimp only [live3676, coloured3676]
  rw [child]
  dsimp only [result3675]
  try dsimp only [colour, result3676]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3677_agree : tree3677 = literal3677 := by
  rw [tree3677_def]
  rfl
theorem node3677_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3677 live3677 coloured3677 = result3677 := by
  rw [tree3677_def]
  try dsimp only [colour, result3677]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3678_agree : tree3678 = literal3678 := by
  rw [tree3678_def, tree3676_agree, tree3677_agree]
  rfl
theorem node3678_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3678 live3678 coloured3678 = result3678 := by
  rw [tree3678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3676_eq
  unfold live3676 coloured3676 at child
  try dsimp only [live3678, coloured3678]
  rw [child]
  dsimp only [result3676]
  have child := node3677_eq
  unfold live3677 coloured3677 at child
  try dsimp only [live3678, coloured3678]
  rw [child]
  dsimp only [result3677]
  try dsimp only [colour, result3678]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3679_agree : tree3679 = literal3679 := by
  rw [tree3679_def]
  rfl
theorem node3679_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3679 live3679 coloured3679 = result3679 := by
  rw [tree3679_def]
  try dsimp only [colour, result3679]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3680_agree : tree3680 = literal3680 := by
  rw [tree3680_def, tree3678_agree, tree3679_agree]
  rfl
theorem node3680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3680 live3680 coloured3680 = result3680 := by
  rw [tree3680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3678_eq
  unfold live3678 coloured3678 at child
  try dsimp only [live3680, coloured3680]
  rw [child]
  dsimp only [result3678]
  have child := node3679_eq
  unfold live3679 coloured3679 at child
  try dsimp only [live3680, coloured3680]
  rw [child]
  dsimp only [result3679]
  try dsimp only [colour, result3680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3681_agree : tree3681 = literal3681 := by
  rw [tree3681_def]
  rfl
theorem node3681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3681 live3681 coloured3681 = result3681 := by
  rw [tree3681_def]
  try dsimp only [colour, result3681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3682_agree : tree3682 = literal3682 := by
  rw [tree3682_def, tree3680_agree, tree3681_agree]
  rfl
theorem node3682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3682 live3682 coloured3682 = result3682 := by
  rw [tree3682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3680_eq
  unfold live3680 coloured3680 at child
  try dsimp only [live3682, coloured3682]
  rw [child]
  dsimp only [result3680]
  have child := node3681_eq
  unfold live3681 coloured3681 at child
  try dsimp only [live3682, coloured3682]
  rw [child]
  dsimp only [result3681]
  try dsimp only [colour, result3682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3683_agree : tree3683 = literal3683 := by
  rw [tree3683_def]
  rfl
theorem node3683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3683 live3683 coloured3683 = result3683 := by
  rw [tree3683_def]
  try dsimp only [colour, result3683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3684_agree : tree3684 = literal3684 := by
  rw [tree3684_def, tree3682_agree, tree3683_agree]
  rfl
theorem node3684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3684 live3684 coloured3684 = result3684 := by
  rw [tree3684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3682_eq
  unfold live3682 coloured3682 at child
  try dsimp only [live3684, coloured3684]
  rw [child]
  dsimp only [result3682]
  have child := node3683_eq
  unfold live3683 coloured3683 at child
  try dsimp only [live3684, coloured3684]
  rw [child]
  dsimp only [result3683]
  try dsimp only [colour, result3684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3685_agree : tree3685 = literal3685 := by
  rw [tree3685_def]
  rfl
theorem node3685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3685 live3685 coloured3685 = result3685 := by
  rw [tree3685_def]
  try dsimp only [colour, result3685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3686_agree : tree3686 = literal3686 := by
  rw [tree3686_def, tree3684_agree, tree3685_agree]
  rfl
theorem node3686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3686 live3686 coloured3686 = result3686 := by
  rw [tree3686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3684_eq
  unfold live3684 coloured3684 at child
  try dsimp only [live3686, coloured3686]
  rw [child]
  dsimp only [result3684]
  have child := node3685_eq
  unfold live3685 coloured3685 at child
  try dsimp only [live3686, coloured3686]
  rw [child]
  dsimp only [result3685]
  try dsimp only [colour, result3686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3687_agree : tree3687 = literal3687 := by
  rw [tree3687_def]
  rfl
theorem node3687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3687 live3687 coloured3687 = result3687 := by
  rw [tree3687_def]
  try dsimp only [colour, result3687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3688_agree : tree3688 = literal3688 := by
  rw [tree3688_def, tree3686_agree, tree3687_agree]
  rfl
theorem node3688_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3688 live3688 coloured3688 = result3688 := by
  rw [tree3688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3686_eq
  unfold live3686 coloured3686 at child
  try dsimp only [live3688, coloured3688]
  rw [child]
  dsimp only [result3686]
  have child := node3687_eq
  unfold live3687 coloured3687 at child
  try dsimp only [live3688, coloured3688]
  rw [child]
  dsimp only [result3687]
  try dsimp only [colour, result3688]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3689_agree : tree3689 = literal3689 := by
  rw [tree3689_def]
  rfl
theorem node3689_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3689 live3689 coloured3689 = result3689 := by
  rw [tree3689_def]
  try dsimp only [colour, result3689]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3690_agree : tree3690 = literal3690 := by
  rw [tree3690_def, tree3688_agree, tree3689_agree]
  rfl
theorem node3690_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3690 live3690 coloured3690 = result3690 := by
  rw [tree3690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3688_eq
  unfold live3688 coloured3688 at child
  try dsimp only [live3690, coloured3690]
  rw [child]
  dsimp only [result3688]
  have child := node3689_eq
  unfold live3689 coloured3689 at child
  try dsimp only [live3690, coloured3690]
  rw [child]
  dsimp only [result3689]
  try dsimp only [colour, result3690]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3691_agree : tree3691 = literal3691 := by
  rw [tree3691_def]
  rfl
theorem node3691_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3691 live3691 coloured3691 = result3691 := by
  rw [tree3691_def]
  try dsimp only [colour, result3691]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3692_agree : tree3692 = literal3692 := by
  rw [tree3692_def, tree3690_agree, tree3691_agree]
  rfl
theorem node3692_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3692 live3692 coloured3692 = result3692 := by
  rw [tree3692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3690_eq
  unfold live3690 coloured3690 at child
  try dsimp only [live3692, coloured3692]
  rw [child]
  dsimp only [result3690]
  have child := node3691_eq
  unfold live3691 coloured3691 at child
  try dsimp only [live3692, coloured3692]
  rw [child]
  dsimp only [result3691]
  try dsimp only [colour, result3692]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3693_agree : tree3693 = literal3693 := by
  rw [tree3693_def]
  rfl
theorem node3693_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3693 live3693 coloured3693 = result3693 := by
  rw [tree3693_def]
  try dsimp only [colour, result3693]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3694_agree : tree3694 = literal3694 := by
  rw [tree3694_def, tree3692_agree, tree3693_agree]
  rfl
theorem node3694_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3694 live3694 coloured3694 = result3694 := by
  rw [tree3694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3692_eq
  unfold live3692 coloured3692 at child
  try dsimp only [live3694, coloured3694]
  rw [child]
  dsimp only [result3692]
  have child := node3693_eq
  unfold live3693 coloured3693 at child
  try dsimp only [live3694, coloured3694]
  rw [child]
  dsimp only [result3693]
  try dsimp only [colour, result3694]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3695_agree : tree3695 = literal3695 := by
  rw [tree3695_def]
  rfl
theorem node3695_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3695 live3695 coloured3695 = result3695 := by
  rw [tree3695_def]
  try dsimp only [colour, result3695]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3696_agree : tree3696 = literal3696 := by
  rw [tree3696_def, tree3694_agree, tree3695_agree]
  rfl
theorem node3696_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3696 live3696 coloured3696 = result3696 := by
  rw [tree3696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3694_eq
  unfold live3694 coloured3694 at child
  try dsimp only [live3696, coloured3696]
  rw [child]
  dsimp only [result3694]
  have child := node3695_eq
  unfold live3695 coloured3695 at child
  try dsimp only [live3696, coloured3696]
  rw [child]
  dsimp only [result3695]
  try dsimp only [colour, result3696]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3697_agree : tree3697 = literal3697 := by
  rw [tree3697_def]
  rfl
theorem node3697_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3697 live3697 coloured3697 = result3697 := by
  rw [tree3697_def]
  try dsimp only [colour, result3697]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3698_agree : tree3698 = literal3698 := by
  rw [tree3698_def, tree3696_agree, tree3697_agree]
  rfl
theorem node3698_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3698 live3698 coloured3698 = result3698 := by
  rw [tree3698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3696_eq
  unfold live3696 coloured3696 at child
  try dsimp only [live3698, coloured3698]
  rw [child]
  dsimp only [result3696]
  have child := node3697_eq
  unfold live3697 coloured3697 at child
  try dsimp only [live3698, coloured3698]
  rw [child]
  dsimp only [result3697]
  try dsimp only [colour, result3698]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3699_agree : tree3699 = literal3699 := by
  rw [tree3699_def]
  rfl
theorem node3699_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3699 live3699 coloured3699 = result3699 := by
  rw [tree3699_def]
  try dsimp only [colour, result3699]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3700_agree : tree3700 = literal3700 := by
  rw [tree3700_def, tree3698_agree, tree3699_agree]
  rfl
theorem node3700_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3700 live3700 coloured3700 = result3700 := by
  rw [tree3700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3698_eq
  unfold live3698 coloured3698 at child
  try dsimp only [live3700, coloured3700]
  rw [child]
  dsimp only [result3698]
  have child := node3699_eq
  unfold live3699 coloured3699 at child
  try dsimp only [live3700, coloured3700]
  rw [child]
  dsimp only [result3699]
  try dsimp only [colour, result3700]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3701_agree : tree3701 = literal3701 := by
  rw [tree3701_def]
  rfl
theorem node3701_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3701 live3701 coloured3701 = result3701 := by
  rw [tree3701_def]
  try dsimp only [colour, result3701]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3702_agree : tree3702 = literal3702 := by
  rw [tree3702_def, tree3700_agree, tree3701_agree]
  rfl
theorem node3702_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3702 live3702 coloured3702 = result3702 := by
  rw [tree3702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3700_eq
  unfold live3700 coloured3700 at child
  try dsimp only [live3702, coloured3702]
  rw [child]
  dsimp only [result3700]
  have child := node3701_eq
  unfold live3701 coloured3701 at child
  try dsimp only [live3702, coloured3702]
  rw [child]
  dsimp only [result3701]
  try dsimp only [colour, result3702]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3703_agree : tree3703 = literal3703 := by
  rw [tree3703_def]
  rfl
theorem node3703_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3703 live3703 coloured3703 = result3703 := by
  rw [tree3703_def]
  try dsimp only [colour, result3703]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3704_agree : tree3704 = literal3704 := by
  rw [tree3704_def, tree3702_agree, tree3703_agree]
  rfl
theorem node3704_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3704 live3704 coloured3704 = result3704 := by
  rw [tree3704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3702_eq
  unfold live3702 coloured3702 at child
  try dsimp only [live3704, coloured3704]
  rw [child]
  dsimp only [result3702]
  have child := node3703_eq
  unfold live3703 coloured3703 at child
  try dsimp only [live3704, coloured3704]
  rw [child]
  dsimp only [result3703]
  try dsimp only [colour, result3704]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3705_agree : tree3705 = literal3705 := by
  rw [tree3705_def]
  rfl
theorem node3705_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3705 live3705 coloured3705 = result3705 := by
  rw [tree3705_def]
  try dsimp only [colour, result3705]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3706_agree : tree3706 = literal3706 := by
  rw [tree3706_def, tree3704_agree, tree3705_agree]
  rfl
theorem node3706_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3706 live3706 coloured3706 = result3706 := by
  rw [tree3706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3704_eq
  unfold live3704 coloured3704 at child
  try dsimp only [live3706, coloured3706]
  rw [child]
  dsimp only [result3704]
  have child := node3705_eq
  unfold live3705 coloured3705 at child
  try dsimp only [live3706, coloured3706]
  rw [child]
  dsimp only [result3705]
  try dsimp only [colour, result3706]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3707_agree : tree3707 = literal3707 := by
  rw [tree3707_def]
  rfl
theorem node3707_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3707 live3707 coloured3707 = result3707 := by
  rw [tree3707_def]
  try dsimp only [colour, result3707]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3708_agree : tree3708 = literal3708 := by
  rw [tree3708_def, tree3706_agree, tree3707_agree]
  rfl
theorem node3708_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3708 live3708 coloured3708 = result3708 := by
  rw [tree3708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3706_eq
  unfold live3706 coloured3706 at child
  try dsimp only [live3708, coloured3708]
  rw [child]
  dsimp only [result3706]
  have child := node3707_eq
  unfold live3707 coloured3707 at child
  try dsimp only [live3708, coloured3708]
  rw [child]
  dsimp only [result3707]
  try dsimp only [colour, result3708]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3709_agree : tree3709 = literal3709 := by
  rw [tree3709_def]
  rfl
theorem node3709_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3709 live3709 coloured3709 = result3709 := by
  rw [tree3709_def]
  try dsimp only [colour, result3709]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3710_agree : tree3710 = literal3710 := by
  rw [tree3710_def, tree3708_agree, tree3709_agree]
  rfl
theorem node3710_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3710 live3710 coloured3710 = result3710 := by
  rw [tree3710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3708_eq
  unfold live3708 coloured3708 at child
  try dsimp only [live3710, coloured3710]
  rw [child]
  dsimp only [result3708]
  have child := node3709_eq
  unfold live3709 coloured3709 at child
  try dsimp only [live3710, coloured3710]
  rw [child]
  dsimp only [result3709]
  try dsimp only [colour, result3710]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3711_agree : tree3711 = literal3711 := by
  rw [tree3711_def]
  rfl
theorem node3711_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3711 live3711 coloured3711 = result3711 := by
  rw [tree3711_def]
  try dsimp only [colour, result3711]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3712_agree : tree3712 = literal3712 := by
  rw [tree3712_def, tree3710_agree, tree3711_agree]
  rfl
theorem node3712_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3712 live3712 coloured3712 = result3712 := by
  rw [tree3712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3710_eq
  unfold live3710 coloured3710 at child
  try dsimp only [live3712, coloured3712]
  rw [child]
  dsimp only [result3710]
  have child := node3711_eq
  unfold live3711 coloured3711 at child
  try dsimp only [live3712, coloured3712]
  rw [child]
  dsimp only [result3711]
  try dsimp only [colour, result3712]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3713_agree : tree3713 = literal3713 := by
  rw [tree3713_def]
  rfl
theorem node3713_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3713 live3713 coloured3713 = result3713 := by
  rw [tree3713_def]
  try dsimp only [colour, result3713]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3714_agree : tree3714 = literal3714 := by
  rw [tree3714_def, tree3712_agree, tree3713_agree]
  rfl
theorem node3714_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3714 live3714 coloured3714 = result3714 := by
  rw [tree3714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3712_eq
  unfold live3712 coloured3712 at child
  try dsimp only [live3714, coloured3714]
  rw [child]
  dsimp only [result3712]
  have child := node3713_eq
  unfold live3713 coloured3713 at child
  try dsimp only [live3714, coloured3714]
  rw [child]
  dsimp only [result3713]
  try dsimp only [colour, result3714]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3715_agree : tree3715 = literal3715 := by
  rw [tree3715_def]
  rfl
theorem node3715_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3715 live3715 coloured3715 = result3715 := by
  rw [tree3715_def]
  try dsimp only [colour, result3715]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3716_agree : tree3716 = literal3716 := by
  rw [tree3716_def, tree3714_agree, tree3715_agree]
  rfl
theorem node3716_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3716 live3716 coloured3716 = result3716 := by
  rw [tree3716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3714_eq
  unfold live3714 coloured3714 at child
  try dsimp only [live3716, coloured3716]
  rw [child]
  dsimp only [result3714]
  have child := node3715_eq
  unfold live3715 coloured3715 at child
  try dsimp only [live3716, coloured3716]
  rw [child]
  dsimp only [result3715]
  try dsimp only [colour, result3716]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3717_agree : tree3717 = literal3717 := by
  rw [tree3717_def]
  rfl
theorem node3717_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3717 live3717 coloured3717 = result3717 := by
  rw [tree3717_def]
  try dsimp only [colour, result3717]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3718_agree : tree3718 = literal3718 := by
  rw [tree3718_def, tree3716_agree, tree3717_agree]
  rfl
theorem node3718_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3718 live3718 coloured3718 = result3718 := by
  rw [tree3718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3716_eq
  unfold live3716 coloured3716 at child
  try dsimp only [live3718, coloured3718]
  rw [child]
  dsimp only [result3716]
  have child := node3717_eq
  unfold live3717 coloured3717 at child
  try dsimp only [live3718, coloured3718]
  rw [child]
  dsimp only [result3717]
  try dsimp only [colour, result3718]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3719_agree : tree3719 = literal3719 := by
  rw [tree3719_def]
  rfl
theorem node3719_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3719 live3719 coloured3719 = result3719 := by
  rw [tree3719_def]
  try dsimp only [colour, result3719]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3720_agree : tree3720 = literal3720 := by
  rw [tree3720_def, tree3718_agree, tree3719_agree]
  rfl
theorem node3720_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3720 live3720 coloured3720 = result3720 := by
  rw [tree3720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3718_eq
  unfold live3718 coloured3718 at child
  try dsimp only [live3720, coloured3720]
  rw [child]
  dsimp only [result3718]
  have child := node3719_eq
  unfold live3719 coloured3719 at child
  try dsimp only [live3720, coloured3720]
  rw [child]
  dsimp only [result3719]
  try dsimp only [colour, result3720]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3721_agree : tree3721 = literal3721 := by
  rw [tree3721_def]
  rfl
theorem node3721_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3721 live3721 coloured3721 = result3721 := by
  rw [tree3721_def]
  try dsimp only [colour, result3721]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3722_agree : tree3722 = literal3722 := by
  rw [tree3722_def, tree3720_agree, tree3721_agree]
  rfl
theorem node3722_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3722 live3722 coloured3722 = result3722 := by
  rw [tree3722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3720_eq
  unfold live3720 coloured3720 at child
  try dsimp only [live3722, coloured3722]
  rw [child]
  dsimp only [result3720]
  have child := node3721_eq
  unfold live3721 coloured3721 at child
  try dsimp only [live3722, coloured3722]
  rw [child]
  dsimp only [result3721]
  try dsimp only [colour, result3722]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3723_agree : tree3723 = literal3723 := by
  rw [tree3723_def]
  rfl
theorem node3723_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3723 live3723 coloured3723 = result3723 := by
  rw [tree3723_def]
  try dsimp only [colour, result3723]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3724_agree : tree3724 = literal3724 := by
  rw [tree3724_def, tree3722_agree, tree3723_agree]
  rfl
theorem node3724_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3724 live3724 coloured3724 = result3724 := by
  rw [tree3724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3722_eq
  unfold live3722 coloured3722 at child
  try dsimp only [live3724, coloured3724]
  rw [child]
  dsimp only [result3722]
  have child := node3723_eq
  unfold live3723 coloured3723 at child
  try dsimp only [live3724, coloured3724]
  rw [child]
  dsimp only [result3723]
  try dsimp only [colour, result3724]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3725_agree : tree3725 = literal3725 := by
  rw [tree3725_def]
  rfl
theorem node3725_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3725 live3725 coloured3725 = result3725 := by
  rw [tree3725_def]
  try dsimp only [colour, result3725]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3726_agree : tree3726 = literal3726 := by
  rw [tree3726_def, tree3724_agree, tree3725_agree]
  rfl
theorem node3726_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3726 live3726 coloured3726 = result3726 := by
  rw [tree3726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3724_eq
  unfold live3724 coloured3724 at child
  try dsimp only [live3726, coloured3726]
  rw [child]
  dsimp only [result3724]
  have child := node3725_eq
  unfold live3725 coloured3725 at child
  try dsimp only [live3726, coloured3726]
  rw [child]
  dsimp only [result3725]
  try dsimp only [colour, result3726]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3727_agree : tree3727 = literal3727 := by
  rw [tree3727_def]
  rfl
theorem node3727_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3727 live3727 coloured3727 = result3727 := by
  rw [tree3727_def]
  try dsimp only [colour, result3727]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3728_agree : tree3728 = literal3728 := by
  rw [tree3728_def, tree3726_agree, tree3727_agree]
  rfl
theorem node3728_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3728 live3728 coloured3728 = result3728 := by
  rw [tree3728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3726_eq
  unfold live3726 coloured3726 at child
  try dsimp only [live3728, coloured3728]
  rw [child]
  dsimp only [result3726]
  have child := node3727_eq
  unfold live3727 coloured3727 at child
  try dsimp only [live3728, coloured3728]
  rw [child]
  dsimp only [result3727]
  try dsimp only [colour, result3728]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3729_agree : tree3729 = literal3729 := by
  rw [tree3729_def]
  rfl
theorem node3729_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3729 live3729 coloured3729 = result3729 := by
  rw [tree3729_def]
  try dsimp only [colour, result3729]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3730_agree : tree3730 = literal3730 := by
  rw [tree3730_def, tree3728_agree, tree3729_agree]
  rfl
theorem node3730_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3730 live3730 coloured3730 = result3730 := by
  rw [tree3730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3728_eq
  unfold live3728 coloured3728 at child
  try dsimp only [live3730, coloured3730]
  rw [child]
  dsimp only [result3728]
  have child := node3729_eq
  unfold live3729 coloured3729 at child
  try dsimp only [live3730, coloured3730]
  rw [child]
  dsimp only [result3729]
  try dsimp only [colour, result3730]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3731_agree : tree3731 = literal3731 := by
  rw [tree3731_def]
  rfl
theorem node3731_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3731 live3731 coloured3731 = result3731 := by
  rw [tree3731_def]
  try dsimp only [colour, result3731]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3732_agree : tree3732 = literal3732 := by
  rw [tree3732_def, tree3730_agree, tree3731_agree]
  rfl
theorem node3732_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3732 live3732 coloured3732 = result3732 := by
  rw [tree3732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3730_eq
  unfold live3730 coloured3730 at child
  try dsimp only [live3732, coloured3732]
  rw [child]
  dsimp only [result3730]
  have child := node3731_eq
  unfold live3731 coloured3731 at child
  try dsimp only [live3732, coloured3732]
  rw [child]
  dsimp only [result3731]
  try dsimp only [colour, result3732]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3733_agree : tree3733 = literal3733 := by
  rw [tree3733_def]
  rfl
theorem node3733_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3733 live3733 coloured3733 = result3733 := by
  rw [tree3733_def]
  try dsimp only [colour, result3733]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3734_agree : tree3734 = literal3734 := by
  rw [tree3734_def, tree3732_agree, tree3733_agree]
  rfl
theorem node3734_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3734 live3734 coloured3734 = result3734 := by
  rw [tree3734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3732_eq
  unfold live3732 coloured3732 at child
  try dsimp only [live3734, coloured3734]
  rw [child]
  dsimp only [result3732]
  have child := node3733_eq
  unfold live3733 coloured3733 at child
  try dsimp only [live3734, coloured3734]
  rw [child]
  dsimp only [result3733]
  try dsimp only [colour, result3734]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3735_agree : tree3735 = literal3735 := by
  rw [tree3735_def]
  rfl
theorem node3735_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3735 live3735 coloured3735 = result3735 := by
  rw [tree3735_def]
  try dsimp only [colour, result3735]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3736_agree : tree3736 = literal3736 := by
  rw [tree3736_def, tree3734_agree, tree3735_agree]
  rfl
theorem node3736_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3736 live3736 coloured3736 = result3736 := by
  rw [tree3736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3734_eq
  unfold live3734 coloured3734 at child
  try dsimp only [live3736, coloured3736]
  rw [child]
  dsimp only [result3734]
  have child := node3735_eq
  unfold live3735 coloured3735 at child
  try dsimp only [live3736, coloured3736]
  rw [child]
  dsimp only [result3735]
  try dsimp only [colour, result3736]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3737_agree : tree3737 = literal3737 := by
  rw [tree3737_def]
  rfl
theorem node3737_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3737 live3737 coloured3737 = result3737 := by
  rw [tree3737_def]
  try dsimp only [colour, result3737]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3738_agree : tree3738 = literal3738 := by
  rw [tree3738_def, tree3736_agree, tree3737_agree]
  rfl
theorem node3738_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3738 live3738 coloured3738 = result3738 := by
  rw [tree3738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3736_eq
  unfold live3736 coloured3736 at child
  try dsimp only [live3738, coloured3738]
  rw [child]
  dsimp only [result3736]
  have child := node3737_eq
  unfold live3737 coloured3737 at child
  try dsimp only [live3738, coloured3738]
  rw [child]
  dsimp only [result3737]
  try dsimp only [colour, result3738]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3739_agree : tree3739 = literal3739 := by
  rw [tree3739_def]
  rfl
theorem node3739_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3739 live3739 coloured3739 = result3739 := by
  rw [tree3739_def]
  try dsimp only [colour, result3739]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3740_agree : tree3740 = literal3740 := by
  rw [tree3740_def, tree3738_agree, tree3739_agree]
  rfl
theorem node3740_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3740 live3740 coloured3740 = result3740 := by
  rw [tree3740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3738_eq
  unfold live3738 coloured3738 at child
  try dsimp only [live3740, coloured3740]
  rw [child]
  dsimp only [result3738]
  have child := node3739_eq
  unfold live3739 coloured3739 at child
  try dsimp only [live3740, coloured3740]
  rw [child]
  dsimp only [result3739]
  try dsimp only [colour, result3740]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3741_agree : tree3741 = literal3741 := by
  rw [tree3741_def]
  rfl
theorem node3741_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3741 live3741 coloured3741 = result3741 := by
  rw [tree3741_def]
  try dsimp only [colour, result3741]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3742_agree : tree3742 = literal3742 := by
  rw [tree3742_def, tree3740_agree, tree3741_agree]
  rfl
theorem node3742_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3742 live3742 coloured3742 = result3742 := by
  rw [tree3742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3740_eq
  unfold live3740 coloured3740 at child
  try dsimp only [live3742, coloured3742]
  rw [child]
  dsimp only [result3740]
  have child := node3741_eq
  unfold live3741 coloured3741 at child
  try dsimp only [live3742, coloured3742]
  rw [child]
  dsimp only [result3741]
  try dsimp only [colour, result3742]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3743_agree : tree3743 = literal3743 := by
  rw [tree3743_def]
  rfl
theorem node3743_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3743 live3743 coloured3743 = result3743 := by
  rw [tree3743_def]
  try dsimp only [colour, result3743]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
