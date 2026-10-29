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
theorem tree3840_agree_conditional
    (child0 : tree3838 = literal3838)
    (child1 : tree3839 = literal3839) : tree3840 = literal3840 := by
  rw [tree3840_def, child0, child1]
  rfl
theorem node3840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3838 live3838 coloured3838 = result3838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3839 live3839 coloured3839 = result3839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3840 live3840 coloured3840 = result3840 := by
  rw [tree3840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3838 coloured3838 at child
  try dsimp only [live3840, coloured3840]
  rw [child]
  dsimp only [result3838]
  have child := child1
  unfold live3839 coloured3839 at child
  try dsimp only [live3840, coloured3840]
  rw [child]
  dsimp only [result3839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3841_agree_conditional : tree3841 = literal3841 := by
  rw [tree3841_def]
  rfl
theorem node3841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3841 live3841 coloured3841 = result3841 := by
  rw [tree3841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3842_agree_conditional
    (child0 : tree3840 = literal3840)
    (child1 : tree3841 = literal3841) : tree3842 = literal3842 := by
  rw [tree3842_def, child0, child1]
  rfl
theorem node3842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3840 live3840 coloured3840 = result3840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3841 live3841 coloured3841 = result3841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3842 live3842 coloured3842 = result3842 := by
  rw [tree3842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3840 coloured3840 at child
  try dsimp only [live3842, coloured3842]
  rw [child]
  dsimp only [result3840]
  have child := child1
  unfold live3841 coloured3841 at child
  try dsimp only [live3842, coloured3842]
  rw [child]
  dsimp only [result3841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3843_agree_conditional : tree3843 = literal3843 := by
  rw [tree3843_def]
  rfl
theorem node3843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3843 live3843 coloured3843 = result3843 := by
  rw [tree3843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3844_agree_conditional
    (child0 : tree3842 = literal3842)
    (child1 : tree3843 = literal3843) : tree3844 = literal3844 := by
  rw [tree3844_def, child0, child1]
  rfl
theorem node3844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3842 live3842 coloured3842 = result3842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3843 live3843 coloured3843 = result3843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3844 live3844 coloured3844 = result3844 := by
  rw [tree3844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3842 coloured3842 at child
  try dsimp only [live3844, coloured3844]
  rw [child]
  dsimp only [result3842]
  have child := child1
  unfold live3843 coloured3843 at child
  try dsimp only [live3844, coloured3844]
  rw [child]
  dsimp only [result3843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3845_agree_conditional : tree3845 = literal3845 := by
  rw [tree3845_def]
  rfl
theorem node3845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3845 live3845 coloured3845 = result3845 := by
  rw [tree3845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3846_agree_conditional
    (child0 : tree3844 = literal3844)
    (child1 : tree3845 = literal3845) : tree3846 = literal3846 := by
  rw [tree3846_def, child0, child1]
  rfl
theorem node3846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3844 live3844 coloured3844 = result3844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3845 live3845 coloured3845 = result3845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3846 live3846 coloured3846 = result3846 := by
  rw [tree3846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3844 coloured3844 at child
  try dsimp only [live3846, coloured3846]
  rw [child]
  dsimp only [result3844]
  have child := child1
  unfold live3845 coloured3845 at child
  try dsimp only [live3846, coloured3846]
  rw [child]
  dsimp only [result3845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3847_agree_conditional : tree3847 = literal3847 := by
  rw [tree3847_def]
  rfl
theorem node3847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3847 live3847 coloured3847 = result3847 := by
  rw [tree3847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3848_agree_conditional
    (child0 : tree3846 = literal3846)
    (child1 : tree3847 = literal3847) : tree3848 = literal3848 := by
  rw [tree3848_def, child0, child1]
  rfl
theorem node3848_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3846 live3846 coloured3846 = result3846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3847 live3847 coloured3847 = result3847) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3848 live3848 coloured3848 = result3848 := by
  rw [tree3848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3846 coloured3846 at child
  try dsimp only [live3848, coloured3848]
  rw [child]
  dsimp only [result3846]
  have child := child1
  unfold live3847 coloured3847 at child
  try dsimp only [live3848, coloured3848]
  rw [child]
  dsimp only [result3847]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3849_agree_conditional : tree3849 = literal3849 := by
  rw [tree3849_def]
  rfl
theorem node3849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3849 live3849 coloured3849 = result3849 := by
  rw [tree3849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3850_agree_conditional
    (child0 : tree3848 = literal3848)
    (child1 : tree3849 = literal3849) : tree3850 = literal3850 := by
  rw [tree3850_def, child0, child1]
  rfl
theorem node3850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3848 live3848 coloured3848 = result3848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3849 live3849 coloured3849 = result3849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3850 live3850 coloured3850 = result3850 := by
  rw [tree3850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3848 coloured3848 at child
  try dsimp only [live3850, coloured3850]
  rw [child]
  dsimp only [result3848]
  have child := child1
  unfold live3849 coloured3849 at child
  try dsimp only [live3850, coloured3850]
  rw [child]
  dsimp only [result3849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3851_agree_conditional : tree3851 = literal3851 := by
  rw [tree3851_def]
  rfl
theorem node3851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3851 live3851 coloured3851 = result3851 := by
  rw [tree3851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3852_agree_conditional
    (child0 : tree3850 = literal3850)
    (child1 : tree3851 = literal3851) : tree3852 = literal3852 := by
  rw [tree3852_def, child0, child1]
  rfl
theorem node3852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3850 live3850 coloured3850 = result3850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3851 live3851 coloured3851 = result3851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3852 live3852 coloured3852 = result3852 := by
  rw [tree3852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3850 coloured3850 at child
  try dsimp only [live3852, coloured3852]
  rw [child]
  dsimp only [result3850]
  have child := child1
  unfold live3851 coloured3851 at child
  try dsimp only [live3852, coloured3852]
  rw [child]
  dsimp only [result3851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3853_agree_conditional : tree3853 = literal3853 := by
  rw [tree3853_def]
  rfl
theorem node3853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3853 live3853 coloured3853 = result3853 := by
  rw [tree3853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3854_agree_conditional
    (child0 : tree3852 = literal3852)
    (child1 : tree3853 = literal3853) : tree3854 = literal3854 := by
  rw [tree3854_def, child0, child1]
  rfl
theorem node3854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3852 live3852 coloured3852 = result3852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3853 live3853 coloured3853 = result3853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3854 live3854 coloured3854 = result3854 := by
  rw [tree3854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3852 coloured3852 at child
  try dsimp only [live3854, coloured3854]
  rw [child]
  dsimp only [result3852]
  have child := child1
  unfold live3853 coloured3853 at child
  try dsimp only [live3854, coloured3854]
  rw [child]
  dsimp only [result3853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3855_agree_conditional : tree3855 = literal3855 := by
  rw [tree3855_def]
  rfl
theorem node3855_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3855 live3855 coloured3855 = result3855 := by
  rw [tree3855_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3856_agree_conditional
    (child0 : tree3854 = literal3854)
    (child1 : tree3855 = literal3855) : tree3856 = literal3856 := by
  rw [tree3856_def, child0, child1]
  rfl
theorem node3856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3854 live3854 coloured3854 = result3854)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3855 live3855 coloured3855 = result3855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3856 live3856 coloured3856 = result3856 := by
  rw [tree3856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3854 coloured3854 at child
  try dsimp only [live3856, coloured3856]
  rw [child]
  dsimp only [result3854]
  have child := child1
  unfold live3855 coloured3855 at child
  try dsimp only [live3856, coloured3856]
  rw [child]
  dsimp only [result3855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3857_agree_conditional : tree3857 = literal3857 := by
  rw [tree3857_def]
  rfl
theorem node3857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3857 live3857 coloured3857 = result3857 := by
  rw [tree3857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3858_agree_conditional
    (child0 : tree3856 = literal3856)
    (child1 : tree3857 = literal3857) : tree3858 = literal3858 := by
  rw [tree3858_def, child0, child1]
  rfl
theorem node3858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3856 live3856 coloured3856 = result3856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3857 live3857 coloured3857 = result3857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3858 live3858 coloured3858 = result3858 := by
  rw [tree3858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3856 coloured3856 at child
  try dsimp only [live3858, coloured3858]
  rw [child]
  dsimp only [result3856]
  have child := child1
  unfold live3857 coloured3857 at child
  try dsimp only [live3858, coloured3858]
  rw [child]
  dsimp only [result3857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3859_agree_conditional : tree3859 = literal3859 := by
  rw [tree3859_def]
  rfl
theorem node3859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3859 live3859 coloured3859 = result3859 := by
  rw [tree3859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3860_agree_conditional
    (child0 : tree3858 = literal3858)
    (child1 : tree3859 = literal3859) : tree3860 = literal3860 := by
  rw [tree3860_def, child0, child1]
  rfl
theorem node3860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3858 live3858 coloured3858 = result3858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3859 live3859 coloured3859 = result3859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3860 live3860 coloured3860 = result3860 := by
  rw [tree3860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3858 coloured3858 at child
  try dsimp only [live3860, coloured3860]
  rw [child]
  dsimp only [result3858]
  have child := child1
  unfold live3859 coloured3859 at child
  try dsimp only [live3860, coloured3860]
  rw [child]
  dsimp only [result3859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3861_agree_conditional : tree3861 = literal3861 := by
  rw [tree3861_def]
  rfl
theorem node3861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3861 live3861 coloured3861 = result3861 := by
  rw [tree3861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3862_agree_conditional
    (child0 : tree3860 = literal3860)
    (child1 : tree3861 = literal3861) : tree3862 = literal3862 := by
  rw [tree3862_def, child0, child1]
  rfl
theorem node3862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3860 live3860 coloured3860 = result3860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3861 live3861 coloured3861 = result3861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3862 live3862 coloured3862 = result3862 := by
  rw [tree3862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3860 coloured3860 at child
  try dsimp only [live3862, coloured3862]
  rw [child]
  dsimp only [result3860]
  have child := child1
  unfold live3861 coloured3861 at child
  try dsimp only [live3862, coloured3862]
  rw [child]
  dsimp only [result3861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3863_agree_conditional : tree3863 = literal3863 := by
  rw [tree3863_def]
  rfl
theorem node3863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3863 live3863 coloured3863 = result3863 := by
  rw [tree3863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3864_agree_conditional
    (child0 : tree3862 = literal3862)
    (child1 : tree3863 = literal3863) : tree3864 = literal3864 := by
  rw [tree3864_def, child0, child1]
  rfl
theorem node3864_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3862 live3862 coloured3862 = result3862)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3863 live3863 coloured3863 = result3863) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3864 live3864 coloured3864 = result3864 := by
  rw [tree3864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3862 coloured3862 at child
  try dsimp only [live3864, coloured3864]
  rw [child]
  dsimp only [result3862]
  have child := child1
  unfold live3863 coloured3863 at child
  try dsimp only [live3864, coloured3864]
  rw [child]
  dsimp only [result3863]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3865_agree_conditional : tree3865 = literal3865 := by
  rw [tree3865_def]
  rfl
theorem node3865_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3865 live3865 coloured3865 = result3865 := by
  rw [tree3865_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3866_agree_conditional
    (child0 : tree3864 = literal3864)
    (child1 : tree3865 = literal3865) : tree3866 = literal3866 := by
  rw [tree3866_def, child0, child1]
  rfl
theorem node3866_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3864 live3864 coloured3864 = result3864)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3865 live3865 coloured3865 = result3865) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3866 live3866 coloured3866 = result3866 := by
  rw [tree3866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3864 coloured3864 at child
  try dsimp only [live3866, coloured3866]
  rw [child]
  dsimp only [result3864]
  have child := child1
  unfold live3865 coloured3865 at child
  try dsimp only [live3866, coloured3866]
  rw [child]
  dsimp only [result3865]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3867_agree_conditional : tree3867 = literal3867 := by
  rw [tree3867_def]
  rfl
theorem node3867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3867 live3867 coloured3867 = result3867 := by
  rw [tree3867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3868_agree_conditional
    (child0 : tree3866 = literal3866)
    (child1 : tree3867 = literal3867) : tree3868 = literal3868 := by
  rw [tree3868_def, child0, child1]
  rfl
theorem node3868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3866 live3866 coloured3866 = result3866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3867 live3867 coloured3867 = result3867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3868 live3868 coloured3868 = result3868 := by
  rw [tree3868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3866 coloured3866 at child
  try dsimp only [live3868, coloured3868]
  rw [child]
  dsimp only [result3866]
  have child := child1
  unfold live3867 coloured3867 at child
  try dsimp only [live3868, coloured3868]
  rw [child]
  dsimp only [result3867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3869_agree_conditional : tree3869 = literal3869 := by
  rw [tree3869_def]
  rfl
theorem node3869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3869 live3869 coloured3869 = result3869 := by
  rw [tree3869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3870_agree_conditional
    (child0 : tree3868 = literal3868)
    (child1 : tree3869 = literal3869) : tree3870 = literal3870 := by
  rw [tree3870_def, child0, child1]
  rfl
theorem node3870_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3868 live3868 coloured3868 = result3868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3869 live3869 coloured3869 = result3869) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3870 live3870 coloured3870 = result3870 := by
  rw [tree3870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3868 coloured3868 at child
  try dsimp only [live3870, coloured3870]
  rw [child]
  dsimp only [result3868]
  have child := child1
  unfold live3869 coloured3869 at child
  try dsimp only [live3870, coloured3870]
  rw [child]
  dsimp only [result3869]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3871_agree_conditional : tree3871 = literal3871 := by
  rw [tree3871_def]
  rfl
theorem node3871_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3871 live3871 coloured3871 = result3871 := by
  rw [tree3871_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3872_agree_conditional
    (child0 : tree3870 = literal3870)
    (child1 : tree3871 = literal3871) : tree3872 = literal3872 := by
  rw [tree3872_def, child0, child1]
  rfl
theorem node3872_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3870 live3870 coloured3870 = result3870)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3871 live3871 coloured3871 = result3871) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3872 live3872 coloured3872 = result3872 := by
  rw [tree3872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3870 coloured3870 at child
  try dsimp only [live3872, coloured3872]
  rw [child]
  dsimp only [result3870]
  have child := child1
  unfold live3871 coloured3871 at child
  try dsimp only [live3872, coloured3872]
  rw [child]
  dsimp only [result3871]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3873_agree_conditional : tree3873 = literal3873 := by
  rw [tree3873_def]
  rfl
theorem node3873_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3873 live3873 coloured3873 = result3873 := by
  rw [tree3873_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3874_agree_conditional
    (child0 : tree3872 = literal3872)
    (child1 : tree3873 = literal3873) : tree3874 = literal3874 := by
  rw [tree3874_def, child0, child1]
  rfl
theorem node3874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3872 live3872 coloured3872 = result3872)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3873 live3873 coloured3873 = result3873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3874 live3874 coloured3874 = result3874 := by
  rw [tree3874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3872 coloured3872 at child
  try dsimp only [live3874, coloured3874]
  rw [child]
  dsimp only [result3872]
  have child := child1
  unfold live3873 coloured3873 at child
  try dsimp only [live3874, coloured3874]
  rw [child]
  dsimp only [result3873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3875_agree_conditional : tree3875 = literal3875 := by
  rw [tree3875_def]
  rfl
theorem node3875_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3875 live3875 coloured3875 = result3875 := by
  rw [tree3875_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3876_agree_conditional
    (child0 : tree3874 = literal3874)
    (child1 : tree3875 = literal3875) : tree3876 = literal3876 := by
  rw [tree3876_def, child0, child1]
  rfl
theorem node3876_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3874 live3874 coloured3874 = result3874)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3875 live3875 coloured3875 = result3875) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3876 live3876 coloured3876 = result3876 := by
  rw [tree3876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3874 coloured3874 at child
  try dsimp only [live3876, coloured3876]
  rw [child]
  dsimp only [result3874]
  have child := child1
  unfold live3875 coloured3875 at child
  try dsimp only [live3876, coloured3876]
  rw [child]
  dsimp only [result3875]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3877_agree_conditional : tree3877 = literal3877 := by
  rw [tree3877_def]
  rfl
theorem node3877_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3877 live3877 coloured3877 = result3877 := by
  rw [tree3877_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3878_agree_conditional
    (child0 : tree3876 = literal3876)
    (child1 : tree3877 = literal3877) : tree3878 = literal3878 := by
  rw [tree3878_def, child0, child1]
  rfl
theorem node3878_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3876 live3876 coloured3876 = result3876)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3877 live3877 coloured3877 = result3877) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3878 live3878 coloured3878 = result3878 := by
  rw [tree3878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3876 coloured3876 at child
  try dsimp only [live3878, coloured3878]
  rw [child]
  dsimp only [result3876]
  have child := child1
  unfold live3877 coloured3877 at child
  try dsimp only [live3878, coloured3878]
  rw [child]
  dsimp only [result3877]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3879_agree_conditional : tree3879 = literal3879 := by
  rw [tree3879_def]
  rfl
theorem node3879_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3879 live3879 coloured3879 = result3879 := by
  rw [tree3879_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3880_agree_conditional
    (child0 : tree3878 = literal3878)
    (child1 : tree3879 = literal3879) : tree3880 = literal3880 := by
  rw [tree3880_def, child0, child1]
  rfl
theorem node3880_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3878 live3878 coloured3878 = result3878)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3879 live3879 coloured3879 = result3879) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3880 live3880 coloured3880 = result3880 := by
  rw [tree3880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3878 coloured3878 at child
  try dsimp only [live3880, coloured3880]
  rw [child]
  dsimp only [result3878]
  have child := child1
  unfold live3879 coloured3879 at child
  try dsimp only [live3880, coloured3880]
  rw [child]
  dsimp only [result3879]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3881_agree_conditional : tree3881 = literal3881 := by
  rw [tree3881_def]
  rfl
theorem node3881_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3881 live3881 coloured3881 = result3881 := by
  rw [tree3881_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3882_agree_conditional
    (child0 : tree3880 = literal3880)
    (child1 : tree3881 = literal3881) : tree3882 = literal3882 := by
  rw [tree3882_def, child0, child1]
  rfl
theorem node3882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3880 live3880 coloured3880 = result3880)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3881 live3881 coloured3881 = result3881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3882 live3882 coloured3882 = result3882 := by
  rw [tree3882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3880 coloured3880 at child
  try dsimp only [live3882, coloured3882]
  rw [child]
  dsimp only [result3880]
  have child := child1
  unfold live3881 coloured3881 at child
  try dsimp only [live3882, coloured3882]
  rw [child]
  dsimp only [result3881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3883_agree_conditional : tree3883 = literal3883 := by
  rw [tree3883_def]
  rfl
theorem node3883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3883 live3883 coloured3883 = result3883 := by
  rw [tree3883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3884_agree_conditional
    (child0 : tree3882 = literal3882)
    (child1 : tree3883 = literal3883) : tree3884 = literal3884 := by
  rw [tree3884_def, child0, child1]
  rfl
theorem node3884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3882 live3882 coloured3882 = result3882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3883 live3883 coloured3883 = result3883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3884 live3884 coloured3884 = result3884 := by
  rw [tree3884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3882 coloured3882 at child
  try dsimp only [live3884, coloured3884]
  rw [child]
  dsimp only [result3882]
  have child := child1
  unfold live3883 coloured3883 at child
  try dsimp only [live3884, coloured3884]
  rw [child]
  dsimp only [result3883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3885_agree_conditional : tree3885 = literal3885 := by
  rw [tree3885_def]
  rfl
theorem node3885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3885 live3885 coloured3885 = result3885 := by
  rw [tree3885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3886_agree_conditional
    (child0 : tree3884 = literal3884)
    (child1 : tree3885 = literal3885) : tree3886 = literal3886 := by
  rw [tree3886_def, child0, child1]
  rfl
theorem node3886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3884 live3884 coloured3884 = result3884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3885 live3885 coloured3885 = result3885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3886 live3886 coloured3886 = result3886 := by
  rw [tree3886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3884 coloured3884 at child
  try dsimp only [live3886, coloured3886]
  rw [child]
  dsimp only [result3884]
  have child := child1
  unfold live3885 coloured3885 at child
  try dsimp only [live3886, coloured3886]
  rw [child]
  dsimp only [result3885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3887_agree_conditional : tree3887 = literal3887 := by
  rw [tree3887_def]
  rfl
theorem node3887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3887 live3887 coloured3887 = result3887 := by
  rw [tree3887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3888_agree_conditional
    (child0 : tree3886 = literal3886)
    (child1 : tree3887 = literal3887) : tree3888 = literal3888 := by
  rw [tree3888_def, child0, child1]
  rfl
theorem node3888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3886 live3886 coloured3886 = result3886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3887 live3887 coloured3887 = result3887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3888 live3888 coloured3888 = result3888 := by
  rw [tree3888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3886 coloured3886 at child
  try dsimp only [live3888, coloured3888]
  rw [child]
  dsimp only [result3886]
  have child := child1
  unfold live3887 coloured3887 at child
  try dsimp only [live3888, coloured3888]
  rw [child]
  dsimp only [result3887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3889_agree_conditional : tree3889 = literal3889 := by
  rw [tree3889_def]
  rfl
theorem node3889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3889 live3889 coloured3889 = result3889 := by
  rw [tree3889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3890_agree_conditional
    (child0 : tree3888 = literal3888)
    (child1 : tree3889 = literal3889) : tree3890 = literal3890 := by
  rw [tree3890_def, child0, child1]
  rfl
theorem node3890_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3888 live3888 coloured3888 = result3888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3889 live3889 coloured3889 = result3889) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3890 live3890 coloured3890 = result3890 := by
  rw [tree3890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3888 coloured3888 at child
  try dsimp only [live3890, coloured3890]
  rw [child]
  dsimp only [result3888]
  have child := child1
  unfold live3889 coloured3889 at child
  try dsimp only [live3890, coloured3890]
  rw [child]
  dsimp only [result3889]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3891_agree_conditional : tree3891 = literal3891 := by
  rw [tree3891_def]
  rfl
theorem node3891_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3891 live3891 coloured3891 = result3891 := by
  rw [tree3891_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3892_agree_conditional
    (child0 : tree3890 = literal3890)
    (child1 : tree3891 = literal3891) : tree3892 = literal3892 := by
  rw [tree3892_def, child0, child1]
  rfl
theorem node3892_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3890 live3890 coloured3890 = result3890)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3891 live3891 coloured3891 = result3891) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3892 live3892 coloured3892 = result3892 := by
  rw [tree3892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3890 coloured3890 at child
  try dsimp only [live3892, coloured3892]
  rw [child]
  dsimp only [result3890]
  have child := child1
  unfold live3891 coloured3891 at child
  try dsimp only [live3892, coloured3892]
  rw [child]
  dsimp only [result3891]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3893_agree_conditional : tree3893 = literal3893 := by
  rw [tree3893_def]
  rfl
theorem node3893_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3893 live3893 coloured3893 = result3893 := by
  rw [tree3893_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3894_agree_conditional
    (child0 : tree3892 = literal3892)
    (child1 : tree3893 = literal3893) : tree3894 = literal3894 := by
  rw [tree3894_def, child0, child1]
  rfl
theorem node3894_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3892 live3892 coloured3892 = result3892)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3893 live3893 coloured3893 = result3893) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3894 live3894 coloured3894 = result3894 := by
  rw [tree3894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3892 coloured3892 at child
  try dsimp only [live3894, coloured3894]
  rw [child]
  dsimp only [result3892]
  have child := child1
  unfold live3893 coloured3893 at child
  try dsimp only [live3894, coloured3894]
  rw [child]
  dsimp only [result3893]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3895_agree_conditional : tree3895 = literal3895 := by
  rw [tree3895_def]
  rfl
theorem node3895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3895 live3895 coloured3895 = result3895 := by
  rw [tree3895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3896_agree_conditional
    (child0 : tree3894 = literal3894)
    (child1 : tree3895 = literal3895) : tree3896 = literal3896 := by
  rw [tree3896_def, child0, child1]
  rfl
theorem node3896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3894 live3894 coloured3894 = result3894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3895 live3895 coloured3895 = result3895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3896 live3896 coloured3896 = result3896 := by
  rw [tree3896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3894 coloured3894 at child
  try dsimp only [live3896, coloured3896]
  rw [child]
  dsimp only [result3894]
  have child := child1
  unfold live3895 coloured3895 at child
  try dsimp only [live3896, coloured3896]
  rw [child]
  dsimp only [result3895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3897_agree_conditional : tree3897 = literal3897 := by
  rw [tree3897_def]
  rfl
theorem node3897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3897 live3897 coloured3897 = result3897 := by
  rw [tree3897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3898_agree_conditional
    (child0 : tree3896 = literal3896)
    (child1 : tree3897 = literal3897) : tree3898 = literal3898 := by
  rw [tree3898_def, child0, child1]
  rfl
theorem node3898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3896 live3896 coloured3896 = result3896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3897 live3897 coloured3897 = result3897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3898 live3898 coloured3898 = result3898 := by
  rw [tree3898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3896 coloured3896 at child
  try dsimp only [live3898, coloured3898]
  rw [child]
  dsimp only [result3896]
  have child := child1
  unfold live3897 coloured3897 at child
  try dsimp only [live3898, coloured3898]
  rw [child]
  dsimp only [result3897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3899_agree_conditional : tree3899 = literal3899 := by
  rw [tree3899_def]
  rfl
theorem node3899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3899 live3899 coloured3899 = result3899 := by
  rw [tree3899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3900_agree_conditional
    (child0 : tree3898 = literal3898)
    (child1 : tree3899 = literal3899) : tree3900 = literal3900 := by
  rw [tree3900_def, child0, child1]
  rfl
theorem node3900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3898 live3898 coloured3898 = result3898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3899 live3899 coloured3899 = result3899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3900 live3900 coloured3900 = result3900 := by
  rw [tree3900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3898 coloured3898 at child
  try dsimp only [live3900, coloured3900]
  rw [child]
  dsimp only [result3898]
  have child := child1
  unfold live3899 coloured3899 at child
  try dsimp only [live3900, coloured3900]
  rw [child]
  dsimp only [result3899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3901_agree_conditional : tree3901 = literal3901 := by
  rw [tree3901_def]
  rfl
theorem node3901_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3901 live3901 coloured3901 = result3901 := by
  rw [tree3901_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3902_agree_conditional
    (child0 : tree3900 = literal3900)
    (child1 : tree3901 = literal3901) : tree3902 = literal3902 := by
  rw [tree3902_def, child0, child1]
  rfl
theorem node3902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3900 live3900 coloured3900 = result3900)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3901 live3901 coloured3901 = result3901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3902 live3902 coloured3902 = result3902 := by
  rw [tree3902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3900 coloured3900 at child
  try dsimp only [live3902, coloured3902]
  rw [child]
  dsimp only [result3900]
  have child := child1
  unfold live3901 coloured3901 at child
  try dsimp only [live3902, coloured3902]
  rw [child]
  dsimp only [result3901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3903_agree_conditional : tree3903 = literal3903 := by
  rw [tree3903_def]
  rfl
theorem node3903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3903 live3903 coloured3903 = result3903 := by
  rw [tree3903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3904_agree_conditional
    (child0 : tree3902 = literal3902)
    (child1 : tree3903 = literal3903) : tree3904 = literal3904 := by
  rw [tree3904_def, child0, child1]
  rfl
theorem node3904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3902 live3902 coloured3902 = result3902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3903 live3903 coloured3903 = result3903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3904 live3904 coloured3904 = result3904 := by
  rw [tree3904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3902 coloured3902 at child
  try dsimp only [live3904, coloured3904]
  rw [child]
  dsimp only [result3902]
  have child := child1
  unfold live3903 coloured3903 at child
  try dsimp only [live3904, coloured3904]
  rw [child]
  dsimp only [result3903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3905_agree_conditional : tree3905 = literal3905 := by
  rw [tree3905_def]
  rfl
theorem node3905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3905 live3905 coloured3905 = result3905 := by
  rw [tree3905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3906_agree_conditional
    (child0 : tree3904 = literal3904)
    (child1 : tree3905 = literal3905) : tree3906 = literal3906 := by
  rw [tree3906_def, child0, child1]
  rfl
theorem node3906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3904 live3904 coloured3904 = result3904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3905 live3905 coloured3905 = result3905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3906 live3906 coloured3906 = result3906 := by
  rw [tree3906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3904 coloured3904 at child
  try dsimp only [live3906, coloured3906]
  rw [child]
  dsimp only [result3904]
  have child := child1
  unfold live3905 coloured3905 at child
  try dsimp only [live3906, coloured3906]
  rw [child]
  dsimp only [result3905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3907_agree_conditional : tree3907 = literal3907 := by
  rw [tree3907_def]
  rfl
theorem node3907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3907 live3907 coloured3907 = result3907 := by
  rw [tree3907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3908_agree_conditional
    (child0 : tree3906 = literal3906)
    (child1 : tree3907 = literal3907) : tree3908 = literal3908 := by
  rw [tree3908_def, child0, child1]
  rfl
theorem node3908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3906 live3906 coloured3906 = result3906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3907 live3907 coloured3907 = result3907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3908 live3908 coloured3908 = result3908 := by
  rw [tree3908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3906 coloured3906 at child
  try dsimp only [live3908, coloured3908]
  rw [child]
  dsimp only [result3906]
  have child := child1
  unfold live3907 coloured3907 at child
  try dsimp only [live3908, coloured3908]
  rw [child]
  dsimp only [result3907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3909_agree_conditional : tree3909 = literal3909 := by
  rw [tree3909_def]
  rfl
theorem node3909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3909 live3909 coloured3909 = result3909 := by
  rw [tree3909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3910_agree_conditional
    (child0 : tree3908 = literal3908)
    (child1 : tree3909 = literal3909) : tree3910 = literal3910 := by
  rw [tree3910_def, child0, child1]
  rfl
theorem node3910_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3908 live3908 coloured3908 = result3908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3909 live3909 coloured3909 = result3909) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3910 live3910 coloured3910 = result3910 := by
  rw [tree3910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3908 coloured3908 at child
  try dsimp only [live3910, coloured3910]
  rw [child]
  dsimp only [result3908]
  have child := child1
  unfold live3909 coloured3909 at child
  try dsimp only [live3910, coloured3910]
  rw [child]
  dsimp only [result3909]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3911_agree_conditional : tree3911 = literal3911 := by
  rw [tree3911_def]
  rfl
theorem node3911_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3911 live3911 coloured3911 = result3911 := by
  rw [tree3911_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3912_agree_conditional
    (child0 : tree3910 = literal3910)
    (child1 : tree3911 = literal3911) : tree3912 = literal3912 := by
  rw [tree3912_def, child0, child1]
  rfl
theorem node3912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3910 live3910 coloured3910 = result3910)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3911 live3911 coloured3911 = result3911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3912 live3912 coloured3912 = result3912 := by
  rw [tree3912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3910 coloured3910 at child
  try dsimp only [live3912, coloured3912]
  rw [child]
  dsimp only [result3910]
  have child := child1
  unfold live3911 coloured3911 at child
  try dsimp only [live3912, coloured3912]
  rw [child]
  dsimp only [result3911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3913_agree_conditional : tree3913 = literal3913 := by
  rw [tree3913_def]
  rfl
theorem node3913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3913 live3913 coloured3913 = result3913 := by
  rw [tree3913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3914_agree_conditional
    (child0 : tree3912 = literal3912)
    (child1 : tree3913 = literal3913) : tree3914 = literal3914 := by
  rw [tree3914_def, child0, child1]
  rfl
theorem node3914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3912 live3912 coloured3912 = result3912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3913 live3913 coloured3913 = result3913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3914 live3914 coloured3914 = result3914 := by
  rw [tree3914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3912 coloured3912 at child
  try dsimp only [live3914, coloured3914]
  rw [child]
  dsimp only [result3912]
  have child := child1
  unfold live3913 coloured3913 at child
  try dsimp only [live3914, coloured3914]
  rw [child]
  dsimp only [result3913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3915_agree_conditional : tree3915 = literal3915 := by
  rw [tree3915_def]
  rfl
theorem node3915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3915 live3915 coloured3915 = result3915 := by
  rw [tree3915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3916_agree_conditional
    (child0 : tree3914 = literal3914)
    (child1 : tree3915 = literal3915) : tree3916 = literal3916 := by
  rw [tree3916_def, child0, child1]
  rfl
theorem node3916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3914 live3914 coloured3914 = result3914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3915 live3915 coloured3915 = result3915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3916 live3916 coloured3916 = result3916 := by
  rw [tree3916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3914 coloured3914 at child
  try dsimp only [live3916, coloured3916]
  rw [child]
  dsimp only [result3914]
  have child := child1
  unfold live3915 coloured3915 at child
  try dsimp only [live3916, coloured3916]
  rw [child]
  dsimp only [result3915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3917_agree_conditional : tree3917 = literal3917 := by
  rw [tree3917_def]
  rfl
theorem node3917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3917 live3917 coloured3917 = result3917 := by
  rw [tree3917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3918_agree_conditional
    (child0 : tree3916 = literal3916)
    (child1 : tree3917 = literal3917) : tree3918 = literal3918 := by
  rw [tree3918_def, child0, child1]
  rfl
theorem node3918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3916 live3916 coloured3916 = result3916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3917 live3917 coloured3917 = result3917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3918 live3918 coloured3918 = result3918 := by
  rw [tree3918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3916 coloured3916 at child
  try dsimp only [live3918, coloured3918]
  rw [child]
  dsimp only [result3916]
  have child := child1
  unfold live3917 coloured3917 at child
  try dsimp only [live3918, coloured3918]
  rw [child]
  dsimp only [result3917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3919_agree_conditional : tree3919 = literal3919 := by
  rw [tree3919_def]
  rfl
theorem node3919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3919 live3919 coloured3919 = result3919 := by
  rw [tree3919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3920_agree_conditional
    (child0 : tree3918 = literal3918)
    (child1 : tree3919 = literal3919) : tree3920 = literal3920 := by
  rw [tree3920_def, child0, child1]
  rfl
theorem node3920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3918 live3918 coloured3918 = result3918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3919 live3919 coloured3919 = result3919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3920 live3920 coloured3920 = result3920 := by
  rw [tree3920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3918 coloured3918 at child
  try dsimp only [live3920, coloured3920]
  rw [child]
  dsimp only [result3918]
  have child := child1
  unfold live3919 coloured3919 at child
  try dsimp only [live3920, coloured3920]
  rw [child]
  dsimp only [result3919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3921_agree_conditional : tree3921 = literal3921 := by
  rw [tree3921_def]
  rfl
theorem node3921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3921 live3921 coloured3921 = result3921 := by
  rw [tree3921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3922_agree_conditional
    (child0 : tree3920 = literal3920)
    (child1 : tree3921 = literal3921) : tree3922 = literal3922 := by
  rw [tree3922_def, child0, child1]
  rfl
theorem node3922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3920 live3920 coloured3920 = result3920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3921 live3921 coloured3921 = result3921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3922 live3922 coloured3922 = result3922 := by
  rw [tree3922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3920 coloured3920 at child
  try dsimp only [live3922, coloured3922]
  rw [child]
  dsimp only [result3920]
  have child := child1
  unfold live3921 coloured3921 at child
  try dsimp only [live3922, coloured3922]
  rw [child]
  dsimp only [result3921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3923_agree_conditional : tree3923 = literal3923 := by
  rw [tree3923_def]
  rfl
theorem node3923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3923 live3923 coloured3923 = result3923 := by
  rw [tree3923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3924_agree_conditional
    (child0 : tree3922 = literal3922)
    (child1 : tree3923 = literal3923) : tree3924 = literal3924 := by
  rw [tree3924_def, child0, child1]
  rfl
theorem node3924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3922 live3922 coloured3922 = result3922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3923 live3923 coloured3923 = result3923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3924 live3924 coloured3924 = result3924 := by
  rw [tree3924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3922 coloured3922 at child
  try dsimp only [live3924, coloured3924]
  rw [child]
  dsimp only [result3922]
  have child := child1
  unfold live3923 coloured3923 at child
  try dsimp only [live3924, coloured3924]
  rw [child]
  dsimp only [result3923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3925_agree_conditional : tree3925 = literal3925 := by
  rw [tree3925_def]
  rfl
theorem node3925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3925 live3925 coloured3925 = result3925 := by
  rw [tree3925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3926_agree_conditional
    (child0 : tree3924 = literal3924)
    (child1 : tree3925 = literal3925) : tree3926 = literal3926 := by
  rw [tree3926_def, child0, child1]
  rfl
theorem node3926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3924 live3924 coloured3924 = result3924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3925 live3925 coloured3925 = result3925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3926 live3926 coloured3926 = result3926 := by
  rw [tree3926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3924 coloured3924 at child
  try dsimp only [live3926, coloured3926]
  rw [child]
  dsimp only [result3924]
  have child := child1
  unfold live3925 coloured3925 at child
  try dsimp only [live3926, coloured3926]
  rw [child]
  dsimp only [result3925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3927_agree_conditional : tree3927 = literal3927 := by
  rw [tree3927_def]
  rfl
theorem node3927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3927 live3927 coloured3927 = result3927 := by
  rw [tree3927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3928_agree_conditional
    (child0 : tree3926 = literal3926)
    (child1 : tree3927 = literal3927) : tree3928 = literal3928 := by
  rw [tree3928_def, child0, child1]
  rfl
theorem node3928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3926 live3926 coloured3926 = result3926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3927 live3927 coloured3927 = result3927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3928 live3928 coloured3928 = result3928 := by
  rw [tree3928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3926 coloured3926 at child
  try dsimp only [live3928, coloured3928]
  rw [child]
  dsimp only [result3926]
  have child := child1
  unfold live3927 coloured3927 at child
  try dsimp only [live3928, coloured3928]
  rw [child]
  dsimp only [result3927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3929_agree_conditional : tree3929 = literal3929 := by
  rw [tree3929_def]
  rfl
theorem node3929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3929 live3929 coloured3929 = result3929 := by
  rw [tree3929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3930_agree_conditional
    (child0 : tree3928 = literal3928)
    (child1 : tree3929 = literal3929) : tree3930 = literal3930 := by
  rw [tree3930_def, child0, child1]
  rfl
theorem node3930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3928 live3928 coloured3928 = result3928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3929 live3929 coloured3929 = result3929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3930 live3930 coloured3930 = result3930 := by
  rw [tree3930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3928 coloured3928 at child
  try dsimp only [live3930, coloured3930]
  rw [child]
  dsimp only [result3928]
  have child := child1
  unfold live3929 coloured3929 at child
  try dsimp only [live3930, coloured3930]
  rw [child]
  dsimp only [result3929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3931_agree_conditional : tree3931 = literal3931 := by
  rw [tree3931_def]
  rfl
theorem node3931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3931 live3931 coloured3931 = result3931 := by
  rw [tree3931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3932_agree_conditional
    (child0 : tree3930 = literal3930)
    (child1 : tree3931 = literal3931) : tree3932 = literal3932 := by
  rw [tree3932_def, child0, child1]
  rfl
theorem node3932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3930 live3930 coloured3930 = result3930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3931 live3931 coloured3931 = result3931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3932 live3932 coloured3932 = result3932 := by
  rw [tree3932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3930 coloured3930 at child
  try dsimp only [live3932, coloured3932]
  rw [child]
  dsimp only [result3930]
  have child := child1
  unfold live3931 coloured3931 at child
  try dsimp only [live3932, coloured3932]
  rw [child]
  dsimp only [result3931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3933_agree_conditional : tree3933 = literal3933 := by
  rw [tree3933_def]
  rfl
theorem node3933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3933 live3933 coloured3933 = result3933 := by
  rw [tree3933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3934_agree_conditional
    (child0 : tree3932 = literal3932)
    (child1 : tree3933 = literal3933) : tree3934 = literal3934 := by
  rw [tree3934_def, child0, child1]
  rfl
theorem node3934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3932 live3932 coloured3932 = result3932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3933 live3933 coloured3933 = result3933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3934 live3934 coloured3934 = result3934 := by
  rw [tree3934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3932 coloured3932 at child
  try dsimp only [live3934, coloured3934]
  rw [child]
  dsimp only [result3932]
  have child := child1
  unfold live3933 coloured3933 at child
  try dsimp only [live3934, coloured3934]
  rw [child]
  dsimp only [result3933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3935_agree_conditional : tree3935 = literal3935 := by
  rw [tree3935_def]
  rfl
theorem node3935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3935 live3935 coloured3935 = result3935 := by
  rw [tree3935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
