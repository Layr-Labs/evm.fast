import InitECandidate.Proofs.ClashStages713.Proof38
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3744_agree : tree3744 = literal3744 := by
  rw [tree3744_def, tree3742_agree, tree3743_agree]
  rfl
theorem node3744_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3744 live3744 coloured3744 = result3744 := by
  rw [tree3744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3742_eq
  unfold live3742 coloured3742 at child
  try dsimp only [live3744, coloured3744]
  rw [child]
  dsimp only [result3742]
  have child := node3743_eq
  unfold live3743 coloured3743 at child
  try dsimp only [live3744, coloured3744]
  rw [child]
  dsimp only [result3743]
  try dsimp only [colour, result3744]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3745_agree : tree3745 = literal3745 := by
  rw [tree3745_def]
  rfl
theorem node3745_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3745 live3745 coloured3745 = result3745 := by
  rw [tree3745_def]
  try dsimp only [colour, result3745]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3746_agree : tree3746 = literal3746 := by
  rw [tree3746_def, tree3744_agree, tree3745_agree]
  rfl
theorem node3746_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3746 live3746 coloured3746 = result3746 := by
  rw [tree3746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3744_eq
  unfold live3744 coloured3744 at child
  try dsimp only [live3746, coloured3746]
  rw [child]
  dsimp only [result3744]
  have child := node3745_eq
  unfold live3745 coloured3745 at child
  try dsimp only [live3746, coloured3746]
  rw [child]
  dsimp only [result3745]
  try dsimp only [colour, result3746]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3747_agree : tree3747 = literal3747 := by
  rw [tree3747_def]
  rfl
theorem node3747_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3747 live3747 coloured3747 = result3747 := by
  rw [tree3747_def]
  try dsimp only [colour, result3747]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3748_agree : tree3748 = literal3748 := by
  rw [tree3748_def, tree3746_agree, tree3747_agree]
  rfl
theorem node3748_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3748 live3748 coloured3748 = result3748 := by
  rw [tree3748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3746_eq
  unfold live3746 coloured3746 at child
  try dsimp only [live3748, coloured3748]
  rw [child]
  dsimp only [result3746]
  have child := node3747_eq
  unfold live3747 coloured3747 at child
  try dsimp only [live3748, coloured3748]
  rw [child]
  dsimp only [result3747]
  try dsimp only [colour, result3748]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3749_agree : tree3749 = literal3749 := by
  rw [tree3749_def]
  rfl
theorem node3749_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3749 live3749 coloured3749 = result3749 := by
  rw [tree3749_def]
  try dsimp only [colour, result3749]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3750_agree : tree3750 = literal3750 := by
  rw [tree3750_def, tree3748_agree, tree3749_agree]
  rfl
theorem node3750_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3750 live3750 coloured3750 = result3750 := by
  rw [tree3750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3748_eq
  unfold live3748 coloured3748 at child
  try dsimp only [live3750, coloured3750]
  rw [child]
  dsimp only [result3748]
  have child := node3749_eq
  unfold live3749 coloured3749 at child
  try dsimp only [live3750, coloured3750]
  rw [child]
  dsimp only [result3749]
  try dsimp only [colour, result3750]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3751_agree : tree3751 = literal3751 := by
  rw [tree3751_def]
  rfl
theorem node3751_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3751 live3751 coloured3751 = result3751 := by
  rw [tree3751_def]
  try dsimp only [colour, result3751]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3752_agree : tree3752 = literal3752 := by
  rw [tree3752_def, tree3750_agree, tree3751_agree]
  rfl
theorem node3752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3752 live3752 coloured3752 = result3752 := by
  rw [tree3752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3750_eq
  unfold live3750 coloured3750 at child
  try dsimp only [live3752, coloured3752]
  rw [child]
  dsimp only [result3750]
  have child := node3751_eq
  unfold live3751 coloured3751 at child
  try dsimp only [live3752, coloured3752]
  rw [child]
  dsimp only [result3751]
  try dsimp only [colour, result3752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3753_agree : tree3753 = literal3753 := by
  rw [tree3753_def]
  rfl
theorem node3753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3753 live3753 coloured3753 = result3753 := by
  rw [tree3753_def]
  try dsimp only [colour, result3753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3754_agree : tree3754 = literal3754 := by
  rw [tree3754_def, tree3752_agree, tree3753_agree]
  rfl
theorem node3754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3754 live3754 coloured3754 = result3754 := by
  rw [tree3754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3752_eq
  unfold live3752 coloured3752 at child
  try dsimp only [live3754, coloured3754]
  rw [child]
  dsimp only [result3752]
  have child := node3753_eq
  unfold live3753 coloured3753 at child
  try dsimp only [live3754, coloured3754]
  rw [child]
  dsimp only [result3753]
  try dsimp only [colour, result3754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3755_agree : tree3755 = literal3755 := by
  rw [tree3755_def]
  rfl
theorem node3755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3755 live3755 coloured3755 = result3755 := by
  rw [tree3755_def]
  try dsimp only [colour, result3755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3756_agree : tree3756 = literal3756 := by
  rw [tree3756_def, tree3754_agree, tree3755_agree]
  rfl
theorem node3756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3756 live3756 coloured3756 = result3756 := by
  rw [tree3756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3754_eq
  unfold live3754 coloured3754 at child
  try dsimp only [live3756, coloured3756]
  rw [child]
  dsimp only [result3754]
  have child := node3755_eq
  unfold live3755 coloured3755 at child
  try dsimp only [live3756, coloured3756]
  rw [child]
  dsimp only [result3755]
  try dsimp only [colour, result3756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3757_agree : tree3757 = literal3757 := by
  rw [tree3757_def]
  rfl
theorem node3757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3757 live3757 coloured3757 = result3757 := by
  rw [tree3757_def]
  try dsimp only [colour, result3757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3758_agree : tree3758 = literal3758 := by
  rw [tree3758_def, tree3756_agree, tree3757_agree]
  rfl
theorem node3758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3758 live3758 coloured3758 = result3758 := by
  rw [tree3758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3756_eq
  unfold live3756 coloured3756 at child
  try dsimp only [live3758, coloured3758]
  rw [child]
  dsimp only [result3756]
  have child := node3757_eq
  unfold live3757 coloured3757 at child
  try dsimp only [live3758, coloured3758]
  rw [child]
  dsimp only [result3757]
  try dsimp only [colour, result3758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3759_agree : tree3759 = literal3759 := by
  rw [tree3759_def]
  rfl
theorem node3759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3759 live3759 coloured3759 = result3759 := by
  rw [tree3759_def]
  try dsimp only [colour, result3759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3760_agree : tree3760 = literal3760 := by
  rw [tree3760_def, tree3758_agree, tree3759_agree]
  rfl
theorem node3760_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3760 live3760 coloured3760 = result3760 := by
  rw [tree3760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3758_eq
  unfold live3758 coloured3758 at child
  try dsimp only [live3760, coloured3760]
  rw [child]
  dsimp only [result3758]
  have child := node3759_eq
  unfold live3759 coloured3759 at child
  try dsimp only [live3760, coloured3760]
  rw [child]
  dsimp only [result3759]
  try dsimp only [colour, result3760]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3761_agree : tree3761 = literal3761 := by
  rw [tree3761_def]
  rfl
theorem node3761_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3761 live3761 coloured3761 = result3761 := by
  rw [tree3761_def]
  try dsimp only [colour, result3761]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3762_agree : tree3762 = literal3762 := by
  rw [tree3762_def, tree3760_agree, tree3761_agree]
  rfl
theorem node3762_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3762 live3762 coloured3762 = result3762 := by
  rw [tree3762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3760_eq
  unfold live3760 coloured3760 at child
  try dsimp only [live3762, coloured3762]
  rw [child]
  dsimp only [result3760]
  have child := node3761_eq
  unfold live3761 coloured3761 at child
  try dsimp only [live3762, coloured3762]
  rw [child]
  dsimp only [result3761]
  try dsimp only [colour, result3762]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3763_agree : tree3763 = literal3763 := by
  rw [tree3763_def]
  rfl
theorem node3763_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3763 live3763 coloured3763 = result3763 := by
  rw [tree3763_def]
  try dsimp only [colour, result3763]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3764_agree : tree3764 = literal3764 := by
  rw [tree3764_def, tree3762_agree, tree3763_agree]
  rfl
theorem node3764_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3764 live3764 coloured3764 = result3764 := by
  rw [tree3764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3762_eq
  unfold live3762 coloured3762 at child
  try dsimp only [live3764, coloured3764]
  rw [child]
  dsimp only [result3762]
  have child := node3763_eq
  unfold live3763 coloured3763 at child
  try dsimp only [live3764, coloured3764]
  rw [child]
  dsimp only [result3763]
  try dsimp only [colour, result3764]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3765_agree : tree3765 = literal3765 := by
  rw [tree3765_def]
  rfl
theorem node3765_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3765 live3765 coloured3765 = result3765 := by
  rw [tree3765_def]
  try dsimp only [colour, result3765]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3766_agree : tree3766 = literal3766 := by
  rw [tree3766_def, tree3764_agree, tree3765_agree]
  rfl
theorem node3766_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3766 live3766 coloured3766 = result3766 := by
  rw [tree3766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3764_eq
  unfold live3764 coloured3764 at child
  try dsimp only [live3766, coloured3766]
  rw [child]
  dsimp only [result3764]
  have child := node3765_eq
  unfold live3765 coloured3765 at child
  try dsimp only [live3766, coloured3766]
  rw [child]
  dsimp only [result3765]
  try dsimp only [colour, result3766]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3767_agree : tree3767 = literal3767 := by
  rw [tree3767_def]
  rfl
theorem node3767_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3767 live3767 coloured3767 = result3767 := by
  rw [tree3767_def]
  try dsimp only [colour, result3767]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3768_agree : tree3768 = literal3768 := by
  rw [tree3768_def, tree3766_agree, tree3767_agree]
  rfl
theorem node3768_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3768 live3768 coloured3768 = result3768 := by
  rw [tree3768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3766_eq
  unfold live3766 coloured3766 at child
  try dsimp only [live3768, coloured3768]
  rw [child]
  dsimp only [result3766]
  have child := node3767_eq
  unfold live3767 coloured3767 at child
  try dsimp only [live3768, coloured3768]
  rw [child]
  dsimp only [result3767]
  try dsimp only [colour, result3768]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3769_agree : tree3769 = literal3769 := by
  rw [tree3769_def]
  rfl
theorem node3769_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3769 live3769 coloured3769 = result3769 := by
  rw [tree3769_def]
  try dsimp only [colour, result3769]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3770_agree : tree3770 = literal3770 := by
  rw [tree3770_def, tree3768_agree, tree3769_agree]
  rfl
theorem node3770_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3770 live3770 coloured3770 = result3770 := by
  rw [tree3770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3768_eq
  unfold live3768 coloured3768 at child
  try dsimp only [live3770, coloured3770]
  rw [child]
  dsimp only [result3768]
  have child := node3769_eq
  unfold live3769 coloured3769 at child
  try dsimp only [live3770, coloured3770]
  rw [child]
  dsimp only [result3769]
  try dsimp only [colour, result3770]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3771_agree : tree3771 = literal3771 := by
  rw [tree3771_def]
  rfl
theorem node3771_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3771 live3771 coloured3771 = result3771 := by
  rw [tree3771_def]
  try dsimp only [colour, result3771]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3772_agree : tree3772 = literal3772 := by
  rw [tree3772_def, tree3770_agree, tree3771_agree]
  rfl
theorem node3772_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3772 live3772 coloured3772 = result3772 := by
  rw [tree3772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3770_eq
  unfold live3770 coloured3770 at child
  try dsimp only [live3772, coloured3772]
  rw [child]
  dsimp only [result3770]
  have child := node3771_eq
  unfold live3771 coloured3771 at child
  try dsimp only [live3772, coloured3772]
  rw [child]
  dsimp only [result3771]
  try dsimp only [colour, result3772]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3773_agree : tree3773 = literal3773 := by
  rw [tree3773_def]
  rfl
theorem node3773_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3773 live3773 coloured3773 = result3773 := by
  rw [tree3773_def]
  try dsimp only [colour, result3773]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3774_agree : tree3774 = literal3774 := by
  rw [tree3774_def, tree3772_agree, tree3773_agree]
  rfl
theorem node3774_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3774 live3774 coloured3774 = result3774 := by
  rw [tree3774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3772_eq
  unfold live3772 coloured3772 at child
  try dsimp only [live3774, coloured3774]
  rw [child]
  dsimp only [result3772]
  have child := node3773_eq
  unfold live3773 coloured3773 at child
  try dsimp only [live3774, coloured3774]
  rw [child]
  dsimp only [result3773]
  try dsimp only [colour, result3774]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3775_agree : tree3775 = literal3775 := by
  rw [tree3775_def]
  rfl
theorem node3775_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3775 live3775 coloured3775 = result3775 := by
  rw [tree3775_def]
  try dsimp only [colour, result3775]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3776_agree : tree3776 = literal3776 := by
  rw [tree3776_def, tree3774_agree, tree3775_agree]
  rfl
theorem node3776_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3776 live3776 coloured3776 = result3776 := by
  rw [tree3776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3774_eq
  unfold live3774 coloured3774 at child
  try dsimp only [live3776, coloured3776]
  rw [child]
  dsimp only [result3774]
  have child := node3775_eq
  unfold live3775 coloured3775 at child
  try dsimp only [live3776, coloured3776]
  rw [child]
  dsimp only [result3775]
  try dsimp only [colour, result3776]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3777_agree : tree3777 = literal3777 := by
  rw [tree3777_def]
  rfl
theorem node3777_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3777 live3777 coloured3777 = result3777 := by
  rw [tree3777_def]
  try dsimp only [colour, result3777]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3778_agree : tree3778 = literal3778 := by
  rw [tree3778_def, tree3776_agree, tree3777_agree]
  rfl
theorem node3778_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3778 live3778 coloured3778 = result3778 := by
  rw [tree3778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3776_eq
  unfold live3776 coloured3776 at child
  try dsimp only [live3778, coloured3778]
  rw [child]
  dsimp only [result3776]
  have child := node3777_eq
  unfold live3777 coloured3777 at child
  try dsimp only [live3778, coloured3778]
  rw [child]
  dsimp only [result3777]
  try dsimp only [colour, result3778]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3779_agree : tree3779 = literal3779 := by
  rw [tree3779_def]
  rfl
theorem node3779_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3779 live3779 coloured3779 = result3779 := by
  rw [tree3779_def]
  try dsimp only [colour, result3779]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3780_agree : tree3780 = literal3780 := by
  rw [tree3780_def, tree3778_agree, tree3779_agree]
  rfl
theorem node3780_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3780 live3780 coloured3780 = result3780 := by
  rw [tree3780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3778_eq
  unfold live3778 coloured3778 at child
  try dsimp only [live3780, coloured3780]
  rw [child]
  dsimp only [result3778]
  have child := node3779_eq
  unfold live3779 coloured3779 at child
  try dsimp only [live3780, coloured3780]
  rw [child]
  dsimp only [result3779]
  try dsimp only [colour, result3780]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3781_agree : tree3781 = literal3781 := by
  rw [tree3781_def]
  rfl
theorem node3781_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3781 live3781 coloured3781 = result3781 := by
  rw [tree3781_def]
  try dsimp only [colour, result3781]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3782_agree : tree3782 = literal3782 := by
  rw [tree3782_def, tree3780_agree, tree3781_agree]
  rfl
theorem node3782_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3782 live3782 coloured3782 = result3782 := by
  rw [tree3782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3780_eq
  unfold live3780 coloured3780 at child
  try dsimp only [live3782, coloured3782]
  rw [child]
  dsimp only [result3780]
  have child := node3781_eq
  unfold live3781 coloured3781 at child
  try dsimp only [live3782, coloured3782]
  rw [child]
  dsimp only [result3781]
  try dsimp only [colour, result3782]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3783_agree : tree3783 = literal3783 := by
  rw [tree3783_def]
  rfl
theorem node3783_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3783 live3783 coloured3783 = result3783 := by
  rw [tree3783_def]
  try dsimp only [colour, result3783]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3784_agree : tree3784 = literal3784 := by
  rw [tree3784_def, tree3782_agree, tree3783_agree]
  rfl
theorem node3784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3784 live3784 coloured3784 = result3784 := by
  rw [tree3784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3782_eq
  unfold live3782 coloured3782 at child
  try dsimp only [live3784, coloured3784]
  rw [child]
  dsimp only [result3782]
  have child := node3783_eq
  unfold live3783 coloured3783 at child
  try dsimp only [live3784, coloured3784]
  rw [child]
  dsimp only [result3783]
  try dsimp only [colour, result3784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3785_agree : tree3785 = literal3785 := by
  rw [tree3785_def]
  rfl
theorem node3785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3785 live3785 coloured3785 = result3785 := by
  rw [tree3785_def]
  try dsimp only [colour, result3785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3786_agree : tree3786 = literal3786 := by
  rw [tree3786_def, tree3784_agree, tree3785_agree]
  rfl
theorem node3786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3786 live3786 coloured3786 = result3786 := by
  rw [tree3786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3784_eq
  unfold live3784 coloured3784 at child
  try dsimp only [live3786, coloured3786]
  rw [child]
  dsimp only [result3784]
  have child := node3785_eq
  unfold live3785 coloured3785 at child
  try dsimp only [live3786, coloured3786]
  rw [child]
  dsimp only [result3785]
  try dsimp only [colour, result3786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3787_agree : tree3787 = literal3787 := by
  rw [tree3787_def]
  rfl
theorem node3787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3787 live3787 coloured3787 = result3787 := by
  rw [tree3787_def]
  try dsimp only [colour, result3787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3788_agree : tree3788 = literal3788 := by
  rw [tree3788_def, tree3786_agree, tree3787_agree]
  rfl
theorem node3788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3788 live3788 coloured3788 = result3788 := by
  rw [tree3788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3786_eq
  unfold live3786 coloured3786 at child
  try dsimp only [live3788, coloured3788]
  rw [child]
  dsimp only [result3786]
  have child := node3787_eq
  unfold live3787 coloured3787 at child
  try dsimp only [live3788, coloured3788]
  rw [child]
  dsimp only [result3787]
  try dsimp only [colour, result3788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3789_agree : tree3789 = literal3789 := by
  rw [tree3789_def]
  rfl
theorem node3789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3789 live3789 coloured3789 = result3789 := by
  rw [tree3789_def]
  try dsimp only [colour, result3789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3790_agree : tree3790 = literal3790 := by
  rw [tree3790_def, tree3788_agree, tree3789_agree]
  rfl
theorem node3790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3790 live3790 coloured3790 = result3790 := by
  rw [tree3790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3788_eq
  unfold live3788 coloured3788 at child
  try dsimp only [live3790, coloured3790]
  rw [child]
  dsimp only [result3788]
  have child := node3789_eq
  unfold live3789 coloured3789 at child
  try dsimp only [live3790, coloured3790]
  rw [child]
  dsimp only [result3789]
  try dsimp only [colour, result3790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3791_agree : tree3791 = literal3791 := by
  rw [tree3791_def]
  rfl
theorem node3791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3791 live3791 coloured3791 = result3791 := by
  rw [tree3791_def]
  try dsimp only [colour, result3791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3792_agree : tree3792 = literal3792 := by
  rw [tree3792_def, tree3790_agree, tree3791_agree]
  rfl
theorem node3792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3792 live3792 coloured3792 = result3792 := by
  rw [tree3792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3790_eq
  unfold live3790 coloured3790 at child
  try dsimp only [live3792, coloured3792]
  rw [child]
  dsimp only [result3790]
  have child := node3791_eq
  unfold live3791 coloured3791 at child
  try dsimp only [live3792, coloured3792]
  rw [child]
  dsimp only [result3791]
  try dsimp only [colour, result3792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3793_agree : tree3793 = literal3793 := by
  rw [tree3793_def]
  rfl
theorem node3793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3793 live3793 coloured3793 = result3793 := by
  rw [tree3793_def]
  try dsimp only [colour, result3793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3794_agree : tree3794 = literal3794 := by
  rw [tree3794_def, tree3792_agree, tree3793_agree]
  rfl
theorem node3794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3794 live3794 coloured3794 = result3794 := by
  rw [tree3794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3792_eq
  unfold live3792 coloured3792 at child
  try dsimp only [live3794, coloured3794]
  rw [child]
  dsimp only [result3792]
  have child := node3793_eq
  unfold live3793 coloured3793 at child
  try dsimp only [live3794, coloured3794]
  rw [child]
  dsimp only [result3793]
  try dsimp only [colour, result3794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3795_agree : tree3795 = literal3795 := by
  rw [tree3795_def]
  rfl
theorem node3795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3795 live3795 coloured3795 = result3795 := by
  rw [tree3795_def]
  try dsimp only [colour, result3795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3796_agree : tree3796 = literal3796 := by
  rw [tree3796_def, tree3794_agree, tree3795_agree]
  rfl
theorem node3796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3796 live3796 coloured3796 = result3796 := by
  rw [tree3796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3794_eq
  unfold live3794 coloured3794 at child
  try dsimp only [live3796, coloured3796]
  rw [child]
  dsimp only [result3794]
  have child := node3795_eq
  unfold live3795 coloured3795 at child
  try dsimp only [live3796, coloured3796]
  rw [child]
  dsimp only [result3795]
  try dsimp only [colour, result3796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3797_agree : tree3797 = literal3797 := by
  rw [tree3797_def]
  rfl
theorem node3797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3797 live3797 coloured3797 = result3797 := by
  rw [tree3797_def]
  try dsimp only [colour, result3797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3798_agree : tree3798 = literal3798 := by
  rw [tree3798_def, tree3796_agree, tree3797_agree]
  rfl
theorem node3798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3798 live3798 coloured3798 = result3798 := by
  rw [tree3798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3796_eq
  unfold live3796 coloured3796 at child
  try dsimp only [live3798, coloured3798]
  rw [child]
  dsimp only [result3796]
  have child := node3797_eq
  unfold live3797 coloured3797 at child
  try dsimp only [live3798, coloured3798]
  rw [child]
  dsimp only [result3797]
  try dsimp only [colour, result3798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3799_agree : tree3799 = literal3799 := by
  rw [tree3799_def]
  rfl
theorem node3799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3799 live3799 coloured3799 = result3799 := by
  rw [tree3799_def]
  try dsimp only [colour, result3799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3800_agree : tree3800 = literal3800 := by
  rw [tree3800_def, tree3798_agree, tree3799_agree]
  rfl
theorem node3800_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3800 live3800 coloured3800 = result3800 := by
  rw [tree3800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3798_eq
  unfold live3798 coloured3798 at child
  try dsimp only [live3800, coloured3800]
  rw [child]
  dsimp only [result3798]
  have child := node3799_eq
  unfold live3799 coloured3799 at child
  try dsimp only [live3800, coloured3800]
  rw [child]
  dsimp only [result3799]
  try dsimp only [colour, result3800]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3801_agree : tree3801 = literal3801 := by
  rw [tree3801_def]
  rfl
theorem node3801_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3801 live3801 coloured3801 = result3801 := by
  rw [tree3801_def]
  try dsimp only [colour, result3801]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3802_agree : tree3802 = literal3802 := by
  rw [tree3802_def, tree3800_agree, tree3801_agree]
  rfl
theorem node3802_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3802 live3802 coloured3802 = result3802 := by
  rw [tree3802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3800_eq
  unfold live3800 coloured3800 at child
  try dsimp only [live3802, coloured3802]
  rw [child]
  dsimp only [result3800]
  have child := node3801_eq
  unfold live3801 coloured3801 at child
  try dsimp only [live3802, coloured3802]
  rw [child]
  dsimp only [result3801]
  try dsimp only [colour, result3802]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3803_agree : tree3803 = literal3803 := by
  rw [tree3803_def]
  rfl
theorem node3803_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3803 live3803 coloured3803 = result3803 := by
  rw [tree3803_def]
  try dsimp only [colour, result3803]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3804_agree : tree3804 = literal3804 := by
  rw [tree3804_def, tree3802_agree, tree3803_agree]
  rfl
theorem node3804_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3804 live3804 coloured3804 = result3804 := by
  rw [tree3804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3802_eq
  unfold live3802 coloured3802 at child
  try dsimp only [live3804, coloured3804]
  rw [child]
  dsimp only [result3802]
  have child := node3803_eq
  unfold live3803 coloured3803 at child
  try dsimp only [live3804, coloured3804]
  rw [child]
  dsimp only [result3803]
  try dsimp only [colour, result3804]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3805_agree : tree3805 = literal3805 := by
  rw [tree3805_def]
  rfl
theorem node3805_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3805 live3805 coloured3805 = result3805 := by
  rw [tree3805_def]
  try dsimp only [colour, result3805]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3806_agree : tree3806 = literal3806 := by
  rw [tree3806_def, tree3804_agree, tree3805_agree]
  rfl
theorem node3806_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3806 live3806 coloured3806 = result3806 := by
  rw [tree3806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3804_eq
  unfold live3804 coloured3804 at child
  try dsimp only [live3806, coloured3806]
  rw [child]
  dsimp only [result3804]
  have child := node3805_eq
  unfold live3805 coloured3805 at child
  try dsimp only [live3806, coloured3806]
  rw [child]
  dsimp only [result3805]
  try dsimp only [colour, result3806]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3807_agree : tree3807 = literal3807 := by
  rw [tree3807_def]
  rfl
theorem node3807_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3807 live3807 coloured3807 = result3807 := by
  rw [tree3807_def]
  try dsimp only [colour, result3807]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3808_agree : tree3808 = literal3808 := by
  rw [tree3808_def, tree3806_agree, tree3807_agree]
  rfl
theorem node3808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3808 live3808 coloured3808 = result3808 := by
  rw [tree3808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3806_eq
  unfold live3806 coloured3806 at child
  try dsimp only [live3808, coloured3808]
  rw [child]
  dsimp only [result3806]
  have child := node3807_eq
  unfold live3807 coloured3807 at child
  try dsimp only [live3808, coloured3808]
  rw [child]
  dsimp only [result3807]
  try dsimp only [colour, result3808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3809_agree : tree3809 = literal3809 := by
  rw [tree3809_def]
  rfl
theorem node3809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3809 live3809 coloured3809 = result3809 := by
  rw [tree3809_def]
  try dsimp only [colour, result3809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3810_agree : tree3810 = literal3810 := by
  rw [tree3810_def, tree3808_agree, tree3809_agree]
  rfl
theorem node3810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3810 live3810 coloured3810 = result3810 := by
  rw [tree3810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3808_eq
  unfold live3808 coloured3808 at child
  try dsimp only [live3810, coloured3810]
  rw [child]
  dsimp only [result3808]
  have child := node3809_eq
  unfold live3809 coloured3809 at child
  try dsimp only [live3810, coloured3810]
  rw [child]
  dsimp only [result3809]
  try dsimp only [colour, result3810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3811_agree : tree3811 = literal3811 := by
  rw [tree3811_def]
  rfl
theorem node3811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3811 live3811 coloured3811 = result3811 := by
  rw [tree3811_def]
  try dsimp only [colour, result3811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3812_agree : tree3812 = literal3812 := by
  rw [tree3812_def, tree3810_agree, tree3811_agree]
  rfl
theorem node3812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3812 live3812 coloured3812 = result3812 := by
  rw [tree3812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3810_eq
  unfold live3810 coloured3810 at child
  try dsimp only [live3812, coloured3812]
  rw [child]
  dsimp only [result3810]
  have child := node3811_eq
  unfold live3811 coloured3811 at child
  try dsimp only [live3812, coloured3812]
  rw [child]
  dsimp only [result3811]
  try dsimp only [colour, result3812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3813_agree : tree3813 = literal3813 := by
  rw [tree3813_def]
  rfl
theorem node3813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3813 live3813 coloured3813 = result3813 := by
  rw [tree3813_def]
  try dsimp only [colour, result3813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3814_agree : tree3814 = literal3814 := by
  rw [tree3814_def, tree3812_agree, tree3813_agree]
  rfl
theorem node3814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3814 live3814 coloured3814 = result3814 := by
  rw [tree3814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3812_eq
  unfold live3812 coloured3812 at child
  try dsimp only [live3814, coloured3814]
  rw [child]
  dsimp only [result3812]
  have child := node3813_eq
  unfold live3813 coloured3813 at child
  try dsimp only [live3814, coloured3814]
  rw [child]
  dsimp only [result3813]
  try dsimp only [colour, result3814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3815_agree : tree3815 = literal3815 := by
  rw [tree3815_def]
  rfl
theorem node3815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3815 live3815 coloured3815 = result3815 := by
  rw [tree3815_def]
  try dsimp only [colour, result3815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3816_agree : tree3816 = literal3816 := by
  rw [tree3816_def, tree3814_agree, tree3815_agree]
  rfl
theorem node3816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3816 live3816 coloured3816 = result3816 := by
  rw [tree3816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3814_eq
  unfold live3814 coloured3814 at child
  try dsimp only [live3816, coloured3816]
  rw [child]
  dsimp only [result3814]
  have child := node3815_eq
  unfold live3815 coloured3815 at child
  try dsimp only [live3816, coloured3816]
  rw [child]
  dsimp only [result3815]
  try dsimp only [colour, result3816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3817_agree : tree3817 = literal3817 := by
  rw [tree3817_def]
  rfl
theorem node3817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3817 live3817 coloured3817 = result3817 := by
  rw [tree3817_def]
  try dsimp only [colour, result3817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3818_agree : tree3818 = literal3818 := by
  rw [tree3818_def, tree3816_agree, tree3817_agree]
  rfl
theorem node3818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3818 live3818 coloured3818 = result3818 := by
  rw [tree3818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3816_eq
  unfold live3816 coloured3816 at child
  try dsimp only [live3818, coloured3818]
  rw [child]
  dsimp only [result3816]
  have child := node3817_eq
  unfold live3817 coloured3817 at child
  try dsimp only [live3818, coloured3818]
  rw [child]
  dsimp only [result3817]
  try dsimp only [colour, result3818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3819_agree : tree3819 = literal3819 := by
  rw [tree3819_def]
  rfl
theorem node3819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3819 live3819 coloured3819 = result3819 := by
  rw [tree3819_def]
  try dsimp only [colour, result3819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3820_agree : tree3820 = literal3820 := by
  rw [tree3820_def, tree3818_agree, tree3819_agree]
  rfl
theorem node3820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3820 live3820 coloured3820 = result3820 := by
  rw [tree3820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3818_eq
  unfold live3818 coloured3818 at child
  try dsimp only [live3820, coloured3820]
  rw [child]
  dsimp only [result3818]
  have child := node3819_eq
  unfold live3819 coloured3819 at child
  try dsimp only [live3820, coloured3820]
  rw [child]
  dsimp only [result3819]
  try dsimp only [colour, result3820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3821_agree : tree3821 = literal3821 := by
  rw [tree3821_def]
  rfl
theorem node3821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3821 live3821 coloured3821 = result3821 := by
  rw [tree3821_def]
  try dsimp only [colour, result3821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3822_agree : tree3822 = literal3822 := by
  rw [tree3822_def, tree3820_agree, tree3821_agree]
  rfl
theorem node3822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3822 live3822 coloured3822 = result3822 := by
  rw [tree3822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3820_eq
  unfold live3820 coloured3820 at child
  try dsimp only [live3822, coloured3822]
  rw [child]
  dsimp only [result3820]
  have child := node3821_eq
  unfold live3821 coloured3821 at child
  try dsimp only [live3822, coloured3822]
  rw [child]
  dsimp only [result3821]
  try dsimp only [colour, result3822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3823_agree : tree3823 = literal3823 := by
  rw [tree3823_def]
  rfl
theorem node3823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3823 live3823 coloured3823 = result3823 := by
  rw [tree3823_def]
  try dsimp only [colour, result3823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3824_agree : tree3824 = literal3824 := by
  rw [tree3824_def, tree3822_agree, tree3823_agree]
  rfl
theorem node3824_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3824 live3824 coloured3824 = result3824 := by
  rw [tree3824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3822_eq
  unfold live3822 coloured3822 at child
  try dsimp only [live3824, coloured3824]
  rw [child]
  dsimp only [result3822]
  have child := node3823_eq
  unfold live3823 coloured3823 at child
  try dsimp only [live3824, coloured3824]
  rw [child]
  dsimp only [result3823]
  try dsimp only [colour, result3824]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3825_agree : tree3825 = literal3825 := by
  rw [tree3825_def]
  rfl
theorem node3825_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3825 live3825 coloured3825 = result3825 := by
  rw [tree3825_def]
  try dsimp only [colour, result3825]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3826_agree : tree3826 = literal3826 := by
  rw [tree3826_def, tree3824_agree, tree3825_agree]
  rfl
theorem node3826_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3826 live3826 coloured3826 = result3826 := by
  rw [tree3826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3824_eq
  unfold live3824 coloured3824 at child
  try dsimp only [live3826, coloured3826]
  rw [child]
  dsimp only [result3824]
  have child := node3825_eq
  unfold live3825 coloured3825 at child
  try dsimp only [live3826, coloured3826]
  rw [child]
  dsimp only [result3825]
  try dsimp only [colour, result3826]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3827_agree : tree3827 = literal3827 := by
  rw [tree3827_def]
  rfl
theorem node3827_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3827 live3827 coloured3827 = result3827 := by
  rw [tree3827_def]
  try dsimp only [colour, result3827]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3828_agree : tree3828 = literal3828 := by
  rw [tree3828_def, tree3826_agree, tree3827_agree]
  rfl
theorem node3828_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3828 live3828 coloured3828 = result3828 := by
  rw [tree3828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3826_eq
  unfold live3826 coloured3826 at child
  try dsimp only [live3828, coloured3828]
  rw [child]
  dsimp only [result3826]
  have child := node3827_eq
  unfold live3827 coloured3827 at child
  try dsimp only [live3828, coloured3828]
  rw [child]
  dsimp only [result3827]
  try dsimp only [colour, result3828]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3829_agree : tree3829 = literal3829 := by
  rw [tree3829_def]
  rfl
theorem node3829_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3829 live3829 coloured3829 = result3829 := by
  rw [tree3829_def]
  try dsimp only [colour, result3829]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3830_agree : tree3830 = literal3830 := by
  rw [tree3830_def, tree3828_agree, tree3829_agree]
  rfl
theorem node3830_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3830 live3830 coloured3830 = result3830 := by
  rw [tree3830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3828_eq
  unfold live3828 coloured3828 at child
  try dsimp only [live3830, coloured3830]
  rw [child]
  dsimp only [result3828]
  have child := node3829_eq
  unfold live3829 coloured3829 at child
  try dsimp only [live3830, coloured3830]
  rw [child]
  dsimp only [result3829]
  try dsimp only [colour, result3830]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3831_agree : tree3831 = literal3831 := by
  rw [tree3831_def]
  rfl
theorem node3831_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3831 live3831 coloured3831 = result3831 := by
  rw [tree3831_def]
  try dsimp only [colour, result3831]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3832_agree : tree3832 = literal3832 := by
  rw [tree3832_def, tree3830_agree, tree3831_agree]
  rfl
theorem node3832_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3832 live3832 coloured3832 = result3832 := by
  rw [tree3832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3830_eq
  unfold live3830 coloured3830 at child
  try dsimp only [live3832, coloured3832]
  rw [child]
  dsimp only [result3830]
  have child := node3831_eq
  unfold live3831 coloured3831 at child
  try dsimp only [live3832, coloured3832]
  rw [child]
  dsimp only [result3831]
  try dsimp only [colour, result3832]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3833_agree : tree3833 = literal3833 := by
  rw [tree3833_def]
  rfl
theorem node3833_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3833 live3833 coloured3833 = result3833 := by
  rw [tree3833_def]
  try dsimp only [colour, result3833]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3834_agree : tree3834 = literal3834 := by
  rw [tree3834_def, tree3832_agree, tree3833_agree]
  rfl
theorem node3834_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3834 live3834 coloured3834 = result3834 := by
  rw [tree3834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3832_eq
  unfold live3832 coloured3832 at child
  try dsimp only [live3834, coloured3834]
  rw [child]
  dsimp only [result3832]
  have child := node3833_eq
  unfold live3833 coloured3833 at child
  try dsimp only [live3834, coloured3834]
  rw [child]
  dsimp only [result3833]
  try dsimp only [colour, result3834]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3835_agree : tree3835 = literal3835 := by
  rw [tree3835_def]
  rfl
theorem node3835_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3835 live3835 coloured3835 = result3835 := by
  rw [tree3835_def]
  try dsimp only [colour, result3835]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3836_agree : tree3836 = literal3836 := by
  rw [tree3836_def, tree3834_agree, tree3835_agree]
  rfl
theorem node3836_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3836 live3836 coloured3836 = result3836 := by
  rw [tree3836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3834_eq
  unfold live3834 coloured3834 at child
  try dsimp only [live3836, coloured3836]
  rw [child]
  dsimp only [result3834]
  have child := node3835_eq
  unfold live3835 coloured3835 at child
  try dsimp only [live3836, coloured3836]
  rw [child]
  dsimp only [result3835]
  try dsimp only [colour, result3836]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3837_agree : tree3837 = literal3837 := by
  rw [tree3837_def]
  rfl
theorem node3837_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3837 live3837 coloured3837 = result3837 := by
  rw [tree3837_def]
  try dsimp only [colour, result3837]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3838_agree : tree3838 = literal3838 := by
  rw [tree3838_def, tree3836_agree, tree3837_agree]
  rfl
theorem node3838_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3838 live3838 coloured3838 = result3838 := by
  rw [tree3838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3836_eq
  unfold live3836 coloured3836 at child
  try dsimp only [live3838, coloured3838]
  rw [child]
  dsimp only [result3836]
  have child := node3837_eq
  unfold live3837 coloured3837 at child
  try dsimp only [live3838, coloured3838]
  rw [child]
  dsimp only [result3837]
  try dsimp only [colour, result3838]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3839_agree : tree3839 = literal3839 := by
  rw [tree3839_def]
  rfl
theorem node3839_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3839 live3839 coloured3839 = result3839 := by
  rw [tree3839_def]
  try dsimp only [colour, result3839]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
