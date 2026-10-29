import InitECandidate.Proofs.ClashStages713.Proof39
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3840_agree : tree3840 = literal3840 := by
  rw [tree3840_def, tree3838_agree, tree3839_agree]
  rfl
theorem node3840_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3840 live3840 coloured3840 = result3840 := by
  rw [tree3840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3838_eq
  unfold live3838 coloured3838 at child
  try dsimp only [live3840, coloured3840]
  rw [child]
  dsimp only [result3838]
  have child := node3839_eq
  unfold live3839 coloured3839 at child
  try dsimp only [live3840, coloured3840]
  rw [child]
  dsimp only [result3839]
  try dsimp only [colour, result3840]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3841_agree : tree3841 = literal3841 := by
  rw [tree3841_def]
  rfl
theorem node3841_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3841 live3841 coloured3841 = result3841 := by
  rw [tree3841_def]
  try dsimp only [colour, result3841]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3842_agree : tree3842 = literal3842 := by
  rw [tree3842_def, tree3840_agree, tree3841_agree]
  rfl
theorem node3842_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3842 live3842 coloured3842 = result3842 := by
  rw [tree3842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3840_eq
  unfold live3840 coloured3840 at child
  try dsimp only [live3842, coloured3842]
  rw [child]
  dsimp only [result3840]
  have child := node3841_eq
  unfold live3841 coloured3841 at child
  try dsimp only [live3842, coloured3842]
  rw [child]
  dsimp only [result3841]
  try dsimp only [colour, result3842]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3843_agree : tree3843 = literal3843 := by
  rw [tree3843_def]
  rfl
theorem node3843_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3843 live3843 coloured3843 = result3843 := by
  rw [tree3843_def]
  try dsimp only [colour, result3843]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3844_agree : tree3844 = literal3844 := by
  rw [tree3844_def, tree3842_agree, tree3843_agree]
  rfl
theorem node3844_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3844 live3844 coloured3844 = result3844 := by
  rw [tree3844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3842_eq
  unfold live3842 coloured3842 at child
  try dsimp only [live3844, coloured3844]
  rw [child]
  dsimp only [result3842]
  have child := node3843_eq
  unfold live3843 coloured3843 at child
  try dsimp only [live3844, coloured3844]
  rw [child]
  dsimp only [result3843]
  try dsimp only [colour, result3844]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3845_agree : tree3845 = literal3845 := by
  rw [tree3845_def]
  rfl
theorem node3845_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3845 live3845 coloured3845 = result3845 := by
  rw [tree3845_def]
  try dsimp only [colour, result3845]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3846_agree : tree3846 = literal3846 := by
  rw [tree3846_def, tree3844_agree, tree3845_agree]
  rfl
theorem node3846_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3846 live3846 coloured3846 = result3846 := by
  rw [tree3846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3844_eq
  unfold live3844 coloured3844 at child
  try dsimp only [live3846, coloured3846]
  rw [child]
  dsimp only [result3844]
  have child := node3845_eq
  unfold live3845 coloured3845 at child
  try dsimp only [live3846, coloured3846]
  rw [child]
  dsimp only [result3845]
  try dsimp only [colour, result3846]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3847_agree : tree3847 = literal3847 := by
  rw [tree3847_def]
  rfl
theorem node3847_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3847 live3847 coloured3847 = result3847 := by
  rw [tree3847_def]
  try dsimp only [colour, result3847]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3848_agree : tree3848 = literal3848 := by
  rw [tree3848_def, tree3846_agree, tree3847_agree]
  rfl
theorem node3848_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3848 live3848 coloured3848 = result3848 := by
  rw [tree3848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3846_eq
  unfold live3846 coloured3846 at child
  try dsimp only [live3848, coloured3848]
  rw [child]
  dsimp only [result3846]
  have child := node3847_eq
  unfold live3847 coloured3847 at child
  try dsimp only [live3848, coloured3848]
  rw [child]
  dsimp only [result3847]
  try dsimp only [colour, result3848]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3849_agree : tree3849 = literal3849 := by
  rw [tree3849_def]
  rfl
theorem node3849_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3849 live3849 coloured3849 = result3849 := by
  rw [tree3849_def]
  try dsimp only [colour, result3849]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3850_agree : tree3850 = literal3850 := by
  rw [tree3850_def, tree3848_agree, tree3849_agree]
  rfl
theorem node3850_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3850 live3850 coloured3850 = result3850 := by
  rw [tree3850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3848_eq
  unfold live3848 coloured3848 at child
  try dsimp only [live3850, coloured3850]
  rw [child]
  dsimp only [result3848]
  have child := node3849_eq
  unfold live3849 coloured3849 at child
  try dsimp only [live3850, coloured3850]
  rw [child]
  dsimp only [result3849]
  try dsimp only [colour, result3850]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3851_agree : tree3851 = literal3851 := by
  rw [tree3851_def]
  rfl
theorem node3851_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3851 live3851 coloured3851 = result3851 := by
  rw [tree3851_def]
  try dsimp only [colour, result3851]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3852_agree : tree3852 = literal3852 := by
  rw [tree3852_def, tree3850_agree, tree3851_agree]
  rfl
theorem node3852_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3852 live3852 coloured3852 = result3852 := by
  rw [tree3852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3850_eq
  unfold live3850 coloured3850 at child
  try dsimp only [live3852, coloured3852]
  rw [child]
  dsimp only [result3850]
  have child := node3851_eq
  unfold live3851 coloured3851 at child
  try dsimp only [live3852, coloured3852]
  rw [child]
  dsimp only [result3851]
  try dsimp only [colour, result3852]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3853_agree : tree3853 = literal3853 := by
  rw [tree3853_def]
  rfl
theorem node3853_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3853 live3853 coloured3853 = result3853 := by
  rw [tree3853_def]
  try dsimp only [colour, result3853]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3854_agree : tree3854 = literal3854 := by
  rw [tree3854_def, tree3852_agree, tree3853_agree]
  rfl
theorem node3854_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3854 live3854 coloured3854 = result3854 := by
  rw [tree3854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3852_eq
  unfold live3852 coloured3852 at child
  try dsimp only [live3854, coloured3854]
  rw [child]
  dsimp only [result3852]
  have child := node3853_eq
  unfold live3853 coloured3853 at child
  try dsimp only [live3854, coloured3854]
  rw [child]
  dsimp only [result3853]
  try dsimp only [colour, result3854]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3855_agree : tree3855 = literal3855 := by
  rw [tree3855_def]
  rfl
theorem node3855_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3855 live3855 coloured3855 = result3855 := by
  rw [tree3855_def]
  try dsimp only [colour, result3855]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3856_agree : tree3856 = literal3856 := by
  rw [tree3856_def, tree3854_agree, tree3855_agree]
  rfl
theorem node3856_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3856 live3856 coloured3856 = result3856 := by
  rw [tree3856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3854_eq
  unfold live3854 coloured3854 at child
  try dsimp only [live3856, coloured3856]
  rw [child]
  dsimp only [result3854]
  have child := node3855_eq
  unfold live3855 coloured3855 at child
  try dsimp only [live3856, coloured3856]
  rw [child]
  dsimp only [result3855]
  try dsimp only [colour, result3856]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3857_agree : tree3857 = literal3857 := by
  rw [tree3857_def]
  rfl
theorem node3857_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3857 live3857 coloured3857 = result3857 := by
  rw [tree3857_def]
  try dsimp only [colour, result3857]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3858_agree : tree3858 = literal3858 := by
  rw [tree3858_def, tree3856_agree, tree3857_agree]
  rfl
theorem node3858_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3858 live3858 coloured3858 = result3858 := by
  rw [tree3858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3856_eq
  unfold live3856 coloured3856 at child
  try dsimp only [live3858, coloured3858]
  rw [child]
  dsimp only [result3856]
  have child := node3857_eq
  unfold live3857 coloured3857 at child
  try dsimp only [live3858, coloured3858]
  rw [child]
  dsimp only [result3857]
  try dsimp only [colour, result3858]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3859_agree : tree3859 = literal3859 := by
  rw [tree3859_def]
  rfl
theorem node3859_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3859 live3859 coloured3859 = result3859 := by
  rw [tree3859_def]
  try dsimp only [colour, result3859]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3860_agree : tree3860 = literal3860 := by
  rw [tree3860_def, tree3858_agree, tree3859_agree]
  rfl
theorem node3860_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3860 live3860 coloured3860 = result3860 := by
  rw [tree3860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3858_eq
  unfold live3858 coloured3858 at child
  try dsimp only [live3860, coloured3860]
  rw [child]
  dsimp only [result3858]
  have child := node3859_eq
  unfold live3859 coloured3859 at child
  try dsimp only [live3860, coloured3860]
  rw [child]
  dsimp only [result3859]
  try dsimp only [colour, result3860]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3861_agree : tree3861 = literal3861 := by
  rw [tree3861_def]
  rfl
theorem node3861_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3861 live3861 coloured3861 = result3861 := by
  rw [tree3861_def]
  try dsimp only [colour, result3861]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3862_agree : tree3862 = literal3862 := by
  rw [tree3862_def, tree3860_agree, tree3861_agree]
  rfl
theorem node3862_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3862 live3862 coloured3862 = result3862 := by
  rw [tree3862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3860_eq
  unfold live3860 coloured3860 at child
  try dsimp only [live3862, coloured3862]
  rw [child]
  dsimp only [result3860]
  have child := node3861_eq
  unfold live3861 coloured3861 at child
  try dsimp only [live3862, coloured3862]
  rw [child]
  dsimp only [result3861]
  try dsimp only [colour, result3862]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3863_agree : tree3863 = literal3863 := by
  rw [tree3863_def]
  rfl
theorem node3863_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3863 live3863 coloured3863 = result3863 := by
  rw [tree3863_def]
  try dsimp only [colour, result3863]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3864_agree : tree3864 = literal3864 := by
  rw [tree3864_def, tree3862_agree, tree3863_agree]
  rfl
theorem node3864_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3864 live3864 coloured3864 = result3864 := by
  rw [tree3864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3862_eq
  unfold live3862 coloured3862 at child
  try dsimp only [live3864, coloured3864]
  rw [child]
  dsimp only [result3862]
  have child := node3863_eq
  unfold live3863 coloured3863 at child
  try dsimp only [live3864, coloured3864]
  rw [child]
  dsimp only [result3863]
  try dsimp only [colour, result3864]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3865_agree : tree3865 = literal3865 := by
  rw [tree3865_def]
  rfl
theorem node3865_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3865 live3865 coloured3865 = result3865 := by
  rw [tree3865_def]
  try dsimp only [colour, result3865]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3866_agree : tree3866 = literal3866 := by
  rw [tree3866_def, tree3864_agree, tree3865_agree]
  rfl
theorem node3866_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3866 live3866 coloured3866 = result3866 := by
  rw [tree3866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3864_eq
  unfold live3864 coloured3864 at child
  try dsimp only [live3866, coloured3866]
  rw [child]
  dsimp only [result3864]
  have child := node3865_eq
  unfold live3865 coloured3865 at child
  try dsimp only [live3866, coloured3866]
  rw [child]
  dsimp only [result3865]
  try dsimp only [colour, result3866]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3867_agree : tree3867 = literal3867 := by
  rw [tree3867_def]
  rfl
theorem node3867_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3867 live3867 coloured3867 = result3867 := by
  rw [tree3867_def]
  try dsimp only [colour, result3867]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3868_agree : tree3868 = literal3868 := by
  rw [tree3868_def, tree3866_agree, tree3867_agree]
  rfl
theorem node3868_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3868 live3868 coloured3868 = result3868 := by
  rw [tree3868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3866_eq
  unfold live3866 coloured3866 at child
  try dsimp only [live3868, coloured3868]
  rw [child]
  dsimp only [result3866]
  have child := node3867_eq
  unfold live3867 coloured3867 at child
  try dsimp only [live3868, coloured3868]
  rw [child]
  dsimp only [result3867]
  try dsimp only [colour, result3868]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3869_agree : tree3869 = literal3869 := by
  rw [tree3869_def]
  rfl
theorem node3869_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3869 live3869 coloured3869 = result3869 := by
  rw [tree3869_def]
  try dsimp only [colour, result3869]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3870_agree : tree3870 = literal3870 := by
  rw [tree3870_def, tree3868_agree, tree3869_agree]
  rfl
theorem node3870_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3870 live3870 coloured3870 = result3870 := by
  rw [tree3870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3868_eq
  unfold live3868 coloured3868 at child
  try dsimp only [live3870, coloured3870]
  rw [child]
  dsimp only [result3868]
  have child := node3869_eq
  unfold live3869 coloured3869 at child
  try dsimp only [live3870, coloured3870]
  rw [child]
  dsimp only [result3869]
  try dsimp only [colour, result3870]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3871_agree : tree3871 = literal3871 := by
  rw [tree3871_def]
  rfl
theorem node3871_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3871 live3871 coloured3871 = result3871 := by
  rw [tree3871_def]
  try dsimp only [colour, result3871]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3872_agree : tree3872 = literal3872 := by
  rw [tree3872_def, tree3870_agree, tree3871_agree]
  rfl
theorem node3872_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3872 live3872 coloured3872 = result3872 := by
  rw [tree3872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3870_eq
  unfold live3870 coloured3870 at child
  try dsimp only [live3872, coloured3872]
  rw [child]
  dsimp only [result3870]
  have child := node3871_eq
  unfold live3871 coloured3871 at child
  try dsimp only [live3872, coloured3872]
  rw [child]
  dsimp only [result3871]
  try dsimp only [colour, result3872]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3873_agree : tree3873 = literal3873 := by
  rw [tree3873_def]
  rfl
theorem node3873_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3873 live3873 coloured3873 = result3873 := by
  rw [tree3873_def]
  try dsimp only [colour, result3873]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3874_agree : tree3874 = literal3874 := by
  rw [tree3874_def, tree3872_agree, tree3873_agree]
  rfl
theorem node3874_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3874 live3874 coloured3874 = result3874 := by
  rw [tree3874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3872_eq
  unfold live3872 coloured3872 at child
  try dsimp only [live3874, coloured3874]
  rw [child]
  dsimp only [result3872]
  have child := node3873_eq
  unfold live3873 coloured3873 at child
  try dsimp only [live3874, coloured3874]
  rw [child]
  dsimp only [result3873]
  try dsimp only [colour, result3874]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3875_agree : tree3875 = literal3875 := by
  rw [tree3875_def]
  rfl
theorem node3875_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3875 live3875 coloured3875 = result3875 := by
  rw [tree3875_def]
  try dsimp only [colour, result3875]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3876_agree : tree3876 = literal3876 := by
  rw [tree3876_def, tree3874_agree, tree3875_agree]
  rfl
theorem node3876_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3876 live3876 coloured3876 = result3876 := by
  rw [tree3876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3874_eq
  unfold live3874 coloured3874 at child
  try dsimp only [live3876, coloured3876]
  rw [child]
  dsimp only [result3874]
  have child := node3875_eq
  unfold live3875 coloured3875 at child
  try dsimp only [live3876, coloured3876]
  rw [child]
  dsimp only [result3875]
  try dsimp only [colour, result3876]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3877_agree : tree3877 = literal3877 := by
  rw [tree3877_def]
  rfl
theorem node3877_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3877 live3877 coloured3877 = result3877 := by
  rw [tree3877_def]
  try dsimp only [colour, result3877]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3878_agree : tree3878 = literal3878 := by
  rw [tree3878_def, tree3876_agree, tree3877_agree]
  rfl
theorem node3878_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3878 live3878 coloured3878 = result3878 := by
  rw [tree3878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3876_eq
  unfold live3876 coloured3876 at child
  try dsimp only [live3878, coloured3878]
  rw [child]
  dsimp only [result3876]
  have child := node3877_eq
  unfold live3877 coloured3877 at child
  try dsimp only [live3878, coloured3878]
  rw [child]
  dsimp only [result3877]
  try dsimp only [colour, result3878]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3879_agree : tree3879 = literal3879 := by
  rw [tree3879_def]
  rfl
theorem node3879_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3879 live3879 coloured3879 = result3879 := by
  rw [tree3879_def]
  try dsimp only [colour, result3879]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3880_agree : tree3880 = literal3880 := by
  rw [tree3880_def, tree3878_agree, tree3879_agree]
  rfl
theorem node3880_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3880 live3880 coloured3880 = result3880 := by
  rw [tree3880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3878_eq
  unfold live3878 coloured3878 at child
  try dsimp only [live3880, coloured3880]
  rw [child]
  dsimp only [result3878]
  have child := node3879_eq
  unfold live3879 coloured3879 at child
  try dsimp only [live3880, coloured3880]
  rw [child]
  dsimp only [result3879]
  try dsimp only [colour, result3880]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3881_agree : tree3881 = literal3881 := by
  rw [tree3881_def]
  rfl
theorem node3881_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3881 live3881 coloured3881 = result3881 := by
  rw [tree3881_def]
  try dsimp only [colour, result3881]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3882_agree : tree3882 = literal3882 := by
  rw [tree3882_def, tree3880_agree, tree3881_agree]
  rfl
theorem node3882_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3882 live3882 coloured3882 = result3882 := by
  rw [tree3882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3880_eq
  unfold live3880 coloured3880 at child
  try dsimp only [live3882, coloured3882]
  rw [child]
  dsimp only [result3880]
  have child := node3881_eq
  unfold live3881 coloured3881 at child
  try dsimp only [live3882, coloured3882]
  rw [child]
  dsimp only [result3881]
  try dsimp only [colour, result3882]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3883_agree : tree3883 = literal3883 := by
  rw [tree3883_def]
  rfl
theorem node3883_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3883 live3883 coloured3883 = result3883 := by
  rw [tree3883_def]
  try dsimp only [colour, result3883]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3884_agree : tree3884 = literal3884 := by
  rw [tree3884_def, tree3882_agree, tree3883_agree]
  rfl
theorem node3884_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3884 live3884 coloured3884 = result3884 := by
  rw [tree3884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3882_eq
  unfold live3882 coloured3882 at child
  try dsimp only [live3884, coloured3884]
  rw [child]
  dsimp only [result3882]
  have child := node3883_eq
  unfold live3883 coloured3883 at child
  try dsimp only [live3884, coloured3884]
  rw [child]
  dsimp only [result3883]
  try dsimp only [colour, result3884]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3885_agree : tree3885 = literal3885 := by
  rw [tree3885_def]
  rfl
theorem node3885_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3885 live3885 coloured3885 = result3885 := by
  rw [tree3885_def]
  try dsimp only [colour, result3885]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3886_agree : tree3886 = literal3886 := by
  rw [tree3886_def, tree3884_agree, tree3885_agree]
  rfl
theorem node3886_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3886 live3886 coloured3886 = result3886 := by
  rw [tree3886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3884_eq
  unfold live3884 coloured3884 at child
  try dsimp only [live3886, coloured3886]
  rw [child]
  dsimp only [result3884]
  have child := node3885_eq
  unfold live3885 coloured3885 at child
  try dsimp only [live3886, coloured3886]
  rw [child]
  dsimp only [result3885]
  try dsimp only [colour, result3886]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3887_agree : tree3887 = literal3887 := by
  rw [tree3887_def]
  rfl
theorem node3887_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3887 live3887 coloured3887 = result3887 := by
  rw [tree3887_def]
  try dsimp only [colour, result3887]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3888_agree : tree3888 = literal3888 := by
  rw [tree3888_def, tree3886_agree, tree3887_agree]
  rfl
theorem node3888_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3888 live3888 coloured3888 = result3888 := by
  rw [tree3888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3886_eq
  unfold live3886 coloured3886 at child
  try dsimp only [live3888, coloured3888]
  rw [child]
  dsimp only [result3886]
  have child := node3887_eq
  unfold live3887 coloured3887 at child
  try dsimp only [live3888, coloured3888]
  rw [child]
  dsimp only [result3887]
  try dsimp only [colour, result3888]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3889_agree : tree3889 = literal3889 := by
  rw [tree3889_def]
  rfl
theorem node3889_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3889 live3889 coloured3889 = result3889 := by
  rw [tree3889_def]
  try dsimp only [colour, result3889]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3890_agree : tree3890 = literal3890 := by
  rw [tree3890_def, tree3888_agree, tree3889_agree]
  rfl
theorem node3890_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3890 live3890 coloured3890 = result3890 := by
  rw [tree3890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3888_eq
  unfold live3888 coloured3888 at child
  try dsimp only [live3890, coloured3890]
  rw [child]
  dsimp only [result3888]
  have child := node3889_eq
  unfold live3889 coloured3889 at child
  try dsimp only [live3890, coloured3890]
  rw [child]
  dsimp only [result3889]
  try dsimp only [colour, result3890]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3891_agree : tree3891 = literal3891 := by
  rw [tree3891_def]
  rfl
theorem node3891_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3891 live3891 coloured3891 = result3891 := by
  rw [tree3891_def]
  try dsimp only [colour, result3891]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3892_agree : tree3892 = literal3892 := by
  rw [tree3892_def, tree3890_agree, tree3891_agree]
  rfl
theorem node3892_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3892 live3892 coloured3892 = result3892 := by
  rw [tree3892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3890_eq
  unfold live3890 coloured3890 at child
  try dsimp only [live3892, coloured3892]
  rw [child]
  dsimp only [result3890]
  have child := node3891_eq
  unfold live3891 coloured3891 at child
  try dsimp only [live3892, coloured3892]
  rw [child]
  dsimp only [result3891]
  try dsimp only [colour, result3892]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3893_agree : tree3893 = literal3893 := by
  rw [tree3893_def]
  rfl
theorem node3893_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3893 live3893 coloured3893 = result3893 := by
  rw [tree3893_def]
  try dsimp only [colour, result3893]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3894_agree : tree3894 = literal3894 := by
  rw [tree3894_def, tree3892_agree, tree3893_agree]
  rfl
theorem node3894_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3894 live3894 coloured3894 = result3894 := by
  rw [tree3894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3892_eq
  unfold live3892 coloured3892 at child
  try dsimp only [live3894, coloured3894]
  rw [child]
  dsimp only [result3892]
  have child := node3893_eq
  unfold live3893 coloured3893 at child
  try dsimp only [live3894, coloured3894]
  rw [child]
  dsimp only [result3893]
  try dsimp only [colour, result3894]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3895_agree : tree3895 = literal3895 := by
  rw [tree3895_def]
  rfl
theorem node3895_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3895 live3895 coloured3895 = result3895 := by
  rw [tree3895_def]
  try dsimp only [colour, result3895]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3896_agree : tree3896 = literal3896 := by
  rw [tree3896_def, tree3894_agree, tree3895_agree]
  rfl
theorem node3896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3896 live3896 coloured3896 = result3896 := by
  rw [tree3896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3894_eq
  unfold live3894 coloured3894 at child
  try dsimp only [live3896, coloured3896]
  rw [child]
  dsimp only [result3894]
  have child := node3895_eq
  unfold live3895 coloured3895 at child
  try dsimp only [live3896, coloured3896]
  rw [child]
  dsimp only [result3895]
  try dsimp only [colour, result3896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3897_agree : tree3897 = literal3897 := by
  rw [tree3897_def]
  rfl
theorem node3897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3897 live3897 coloured3897 = result3897 := by
  rw [tree3897_def]
  try dsimp only [colour, result3897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3898_agree : tree3898 = literal3898 := by
  rw [tree3898_def, tree3896_agree, tree3897_agree]
  rfl
theorem node3898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3898 live3898 coloured3898 = result3898 := by
  rw [tree3898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3896_eq
  unfold live3896 coloured3896 at child
  try dsimp only [live3898, coloured3898]
  rw [child]
  dsimp only [result3896]
  have child := node3897_eq
  unfold live3897 coloured3897 at child
  try dsimp only [live3898, coloured3898]
  rw [child]
  dsimp only [result3897]
  try dsimp only [colour, result3898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3899_agree : tree3899 = literal3899 := by
  rw [tree3899_def]
  rfl
theorem node3899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3899 live3899 coloured3899 = result3899 := by
  rw [tree3899_def]
  try dsimp only [colour, result3899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3900_agree : tree3900 = literal3900 := by
  rw [tree3900_def, tree3898_agree, tree3899_agree]
  rfl
theorem node3900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3900 live3900 coloured3900 = result3900 := by
  rw [tree3900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3898_eq
  unfold live3898 coloured3898 at child
  try dsimp only [live3900, coloured3900]
  rw [child]
  dsimp only [result3898]
  have child := node3899_eq
  unfold live3899 coloured3899 at child
  try dsimp only [live3900, coloured3900]
  rw [child]
  dsimp only [result3899]
  try dsimp only [colour, result3900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3901_agree : tree3901 = literal3901 := by
  rw [tree3901_def]
  rfl
theorem node3901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3901 live3901 coloured3901 = result3901 := by
  rw [tree3901_def]
  try dsimp only [colour, result3901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3902_agree : tree3902 = literal3902 := by
  rw [tree3902_def, tree3900_agree, tree3901_agree]
  rfl
theorem node3902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3902 live3902 coloured3902 = result3902 := by
  rw [tree3902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3900_eq
  unfold live3900 coloured3900 at child
  try dsimp only [live3902, coloured3902]
  rw [child]
  dsimp only [result3900]
  have child := node3901_eq
  unfold live3901 coloured3901 at child
  try dsimp only [live3902, coloured3902]
  rw [child]
  dsimp only [result3901]
  try dsimp only [colour, result3902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3903_agree : tree3903 = literal3903 := by
  rw [tree3903_def]
  rfl
theorem node3903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3903 live3903 coloured3903 = result3903 := by
  rw [tree3903_def]
  try dsimp only [colour, result3903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3904_agree : tree3904 = literal3904 := by
  rw [tree3904_def, tree3902_agree, tree3903_agree]
  rfl
theorem node3904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3904 live3904 coloured3904 = result3904 := by
  rw [tree3904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3902_eq
  unfold live3902 coloured3902 at child
  try dsimp only [live3904, coloured3904]
  rw [child]
  dsimp only [result3902]
  have child := node3903_eq
  unfold live3903 coloured3903 at child
  try dsimp only [live3904, coloured3904]
  rw [child]
  dsimp only [result3903]
  try dsimp only [colour, result3904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3905_agree : tree3905 = literal3905 := by
  rw [tree3905_def]
  rfl
theorem node3905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3905 live3905 coloured3905 = result3905 := by
  rw [tree3905_def]
  try dsimp only [colour, result3905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3906_agree : tree3906 = literal3906 := by
  rw [tree3906_def, tree3904_agree, tree3905_agree]
  rfl
theorem node3906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3906 live3906 coloured3906 = result3906 := by
  rw [tree3906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3904_eq
  unfold live3904 coloured3904 at child
  try dsimp only [live3906, coloured3906]
  rw [child]
  dsimp only [result3904]
  have child := node3905_eq
  unfold live3905 coloured3905 at child
  try dsimp only [live3906, coloured3906]
  rw [child]
  dsimp only [result3905]
  try dsimp only [colour, result3906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3907_agree : tree3907 = literal3907 := by
  rw [tree3907_def]
  rfl
theorem node3907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3907 live3907 coloured3907 = result3907 := by
  rw [tree3907_def]
  try dsimp only [colour, result3907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3908_agree : tree3908 = literal3908 := by
  rw [tree3908_def, tree3906_agree, tree3907_agree]
  rfl
theorem node3908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3908 live3908 coloured3908 = result3908 := by
  rw [tree3908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3906_eq
  unfold live3906 coloured3906 at child
  try dsimp only [live3908, coloured3908]
  rw [child]
  dsimp only [result3906]
  have child := node3907_eq
  unfold live3907 coloured3907 at child
  try dsimp only [live3908, coloured3908]
  rw [child]
  dsimp only [result3907]
  try dsimp only [colour, result3908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3909_agree : tree3909 = literal3909 := by
  rw [tree3909_def]
  rfl
theorem node3909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3909 live3909 coloured3909 = result3909 := by
  rw [tree3909_def]
  try dsimp only [colour, result3909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3910_agree : tree3910 = literal3910 := by
  rw [tree3910_def, tree3908_agree, tree3909_agree]
  rfl
theorem node3910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3910 live3910 coloured3910 = result3910 := by
  rw [tree3910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3908_eq
  unfold live3908 coloured3908 at child
  try dsimp only [live3910, coloured3910]
  rw [child]
  dsimp only [result3908]
  have child := node3909_eq
  unfold live3909 coloured3909 at child
  try dsimp only [live3910, coloured3910]
  rw [child]
  dsimp only [result3909]
  try dsimp only [colour, result3910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3911_agree : tree3911 = literal3911 := by
  rw [tree3911_def]
  rfl
theorem node3911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3911 live3911 coloured3911 = result3911 := by
  rw [tree3911_def]
  try dsimp only [colour, result3911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3912_agree : tree3912 = literal3912 := by
  rw [tree3912_def, tree3910_agree, tree3911_agree]
  rfl
theorem node3912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3912 live3912 coloured3912 = result3912 := by
  rw [tree3912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3910_eq
  unfold live3910 coloured3910 at child
  try dsimp only [live3912, coloured3912]
  rw [child]
  dsimp only [result3910]
  have child := node3911_eq
  unfold live3911 coloured3911 at child
  try dsimp only [live3912, coloured3912]
  rw [child]
  dsimp only [result3911]
  try dsimp only [colour, result3912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3913_agree : tree3913 = literal3913 := by
  rw [tree3913_def]
  rfl
theorem node3913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3913 live3913 coloured3913 = result3913 := by
  rw [tree3913_def]
  try dsimp only [colour, result3913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3914_agree : tree3914 = literal3914 := by
  rw [tree3914_def, tree3912_agree, tree3913_agree]
  rfl
theorem node3914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3914 live3914 coloured3914 = result3914 := by
  rw [tree3914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3912_eq
  unfold live3912 coloured3912 at child
  try dsimp only [live3914, coloured3914]
  rw [child]
  dsimp only [result3912]
  have child := node3913_eq
  unfold live3913 coloured3913 at child
  try dsimp only [live3914, coloured3914]
  rw [child]
  dsimp only [result3913]
  try dsimp only [colour, result3914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3915_agree : tree3915 = literal3915 := by
  rw [tree3915_def]
  rfl
theorem node3915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3915 live3915 coloured3915 = result3915 := by
  rw [tree3915_def]
  try dsimp only [colour, result3915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3916_agree : tree3916 = literal3916 := by
  rw [tree3916_def, tree3914_agree, tree3915_agree]
  rfl
theorem node3916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3916 live3916 coloured3916 = result3916 := by
  rw [tree3916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3914_eq
  unfold live3914 coloured3914 at child
  try dsimp only [live3916, coloured3916]
  rw [child]
  dsimp only [result3914]
  have child := node3915_eq
  unfold live3915 coloured3915 at child
  try dsimp only [live3916, coloured3916]
  rw [child]
  dsimp only [result3915]
  try dsimp only [colour, result3916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3917_agree : tree3917 = literal3917 := by
  rw [tree3917_def]
  rfl
theorem node3917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3917 live3917 coloured3917 = result3917 := by
  rw [tree3917_def]
  try dsimp only [colour, result3917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3918_agree : tree3918 = literal3918 := by
  rw [tree3918_def, tree3916_agree, tree3917_agree]
  rfl
theorem node3918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3918 live3918 coloured3918 = result3918 := by
  rw [tree3918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3916_eq
  unfold live3916 coloured3916 at child
  try dsimp only [live3918, coloured3918]
  rw [child]
  dsimp only [result3916]
  have child := node3917_eq
  unfold live3917 coloured3917 at child
  try dsimp only [live3918, coloured3918]
  rw [child]
  dsimp only [result3917]
  try dsimp only [colour, result3918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3919_agree : tree3919 = literal3919 := by
  rw [tree3919_def]
  rfl
theorem node3919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3919 live3919 coloured3919 = result3919 := by
  rw [tree3919_def]
  try dsimp only [colour, result3919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3920_agree : tree3920 = literal3920 := by
  rw [tree3920_def, tree3918_agree, tree3919_agree]
  rfl
theorem node3920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3920 live3920 coloured3920 = result3920 := by
  rw [tree3920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3918_eq
  unfold live3918 coloured3918 at child
  try dsimp only [live3920, coloured3920]
  rw [child]
  dsimp only [result3918]
  have child := node3919_eq
  unfold live3919 coloured3919 at child
  try dsimp only [live3920, coloured3920]
  rw [child]
  dsimp only [result3919]
  try dsimp only [colour, result3920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3921_agree : tree3921 = literal3921 := by
  rw [tree3921_def]
  rfl
theorem node3921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3921 live3921 coloured3921 = result3921 := by
  rw [tree3921_def]
  try dsimp only [colour, result3921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3922_agree : tree3922 = literal3922 := by
  rw [tree3922_def, tree3920_agree, tree3921_agree]
  rfl
theorem node3922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3922 live3922 coloured3922 = result3922 := by
  rw [tree3922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3920_eq
  unfold live3920 coloured3920 at child
  try dsimp only [live3922, coloured3922]
  rw [child]
  dsimp only [result3920]
  have child := node3921_eq
  unfold live3921 coloured3921 at child
  try dsimp only [live3922, coloured3922]
  rw [child]
  dsimp only [result3921]
  try dsimp only [colour, result3922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3923_agree : tree3923 = literal3923 := by
  rw [tree3923_def]
  rfl
theorem node3923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3923 live3923 coloured3923 = result3923 := by
  rw [tree3923_def]
  try dsimp only [colour, result3923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3924_agree : tree3924 = literal3924 := by
  rw [tree3924_def, tree3922_agree, tree3923_agree]
  rfl
theorem node3924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3924 live3924 coloured3924 = result3924 := by
  rw [tree3924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3922_eq
  unfold live3922 coloured3922 at child
  try dsimp only [live3924, coloured3924]
  rw [child]
  dsimp only [result3922]
  have child := node3923_eq
  unfold live3923 coloured3923 at child
  try dsimp only [live3924, coloured3924]
  rw [child]
  dsimp only [result3923]
  try dsimp only [colour, result3924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3925_agree : tree3925 = literal3925 := by
  rw [tree3925_def]
  rfl
theorem node3925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3925 live3925 coloured3925 = result3925 := by
  rw [tree3925_def]
  try dsimp only [colour, result3925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3926_agree : tree3926 = literal3926 := by
  rw [tree3926_def, tree3924_agree, tree3925_agree]
  rfl
theorem node3926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3926 live3926 coloured3926 = result3926 := by
  rw [tree3926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3924_eq
  unfold live3924 coloured3924 at child
  try dsimp only [live3926, coloured3926]
  rw [child]
  dsimp only [result3924]
  have child := node3925_eq
  unfold live3925 coloured3925 at child
  try dsimp only [live3926, coloured3926]
  rw [child]
  dsimp only [result3925]
  try dsimp only [colour, result3926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3927_agree : tree3927 = literal3927 := by
  rw [tree3927_def]
  rfl
theorem node3927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3927 live3927 coloured3927 = result3927 := by
  rw [tree3927_def]
  try dsimp only [colour, result3927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3928_agree : tree3928 = literal3928 := by
  rw [tree3928_def, tree3926_agree, tree3927_agree]
  rfl
theorem node3928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3928 live3928 coloured3928 = result3928 := by
  rw [tree3928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3926_eq
  unfold live3926 coloured3926 at child
  try dsimp only [live3928, coloured3928]
  rw [child]
  dsimp only [result3926]
  have child := node3927_eq
  unfold live3927 coloured3927 at child
  try dsimp only [live3928, coloured3928]
  rw [child]
  dsimp only [result3927]
  try dsimp only [colour, result3928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3929_agree : tree3929 = literal3929 := by
  rw [tree3929_def]
  rfl
theorem node3929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3929 live3929 coloured3929 = result3929 := by
  rw [tree3929_def]
  try dsimp only [colour, result3929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3930_agree : tree3930 = literal3930 := by
  rw [tree3930_def, tree3928_agree, tree3929_agree]
  rfl
theorem node3930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3930 live3930 coloured3930 = result3930 := by
  rw [tree3930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3928_eq
  unfold live3928 coloured3928 at child
  try dsimp only [live3930, coloured3930]
  rw [child]
  dsimp only [result3928]
  have child := node3929_eq
  unfold live3929 coloured3929 at child
  try dsimp only [live3930, coloured3930]
  rw [child]
  dsimp only [result3929]
  try dsimp only [colour, result3930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3931_agree : tree3931 = literal3931 := by
  rw [tree3931_def]
  rfl
theorem node3931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3931 live3931 coloured3931 = result3931 := by
  rw [tree3931_def]
  try dsimp only [colour, result3931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3932_agree : tree3932 = literal3932 := by
  rw [tree3932_def, tree3930_agree, tree3931_agree]
  rfl
theorem node3932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3932 live3932 coloured3932 = result3932 := by
  rw [tree3932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3930_eq
  unfold live3930 coloured3930 at child
  try dsimp only [live3932, coloured3932]
  rw [child]
  dsimp only [result3930]
  have child := node3931_eq
  unfold live3931 coloured3931 at child
  try dsimp only [live3932, coloured3932]
  rw [child]
  dsimp only [result3931]
  try dsimp only [colour, result3932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3933_agree : tree3933 = literal3933 := by
  rw [tree3933_def]
  rfl
theorem node3933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3933 live3933 coloured3933 = result3933 := by
  rw [tree3933_def]
  try dsimp only [colour, result3933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3934_agree : tree3934 = literal3934 := by
  rw [tree3934_def, tree3932_agree, tree3933_agree]
  rfl
theorem node3934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3934 live3934 coloured3934 = result3934 := by
  rw [tree3934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3932_eq
  unfold live3932 coloured3932 at child
  try dsimp only [live3934, coloured3934]
  rw [child]
  dsimp only [result3932]
  have child := node3933_eq
  unfold live3933 coloured3933 at child
  try dsimp only [live3934, coloured3934]
  rw [child]
  dsimp only [result3933]
  try dsimp only [colour, result3934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3935_agree : tree3935 = literal3935 := by
  rw [tree3935_def]
  rfl
theorem node3935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3935 live3935 coloured3935 = result3935 := by
  rw [tree3935_def]
  try dsimp only [colour, result3935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
