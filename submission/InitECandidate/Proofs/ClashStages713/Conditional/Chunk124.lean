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
theorem tree11904_agree_conditional
    (child0 : tree11902 = literal11902)
    (child1 : tree11903 = literal11903) : tree11904 = literal11904 := by
  rw [tree11904_def, child0, child1]
  rfl
theorem node11904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11902 live11902 coloured11902 = result11902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11903 live11903 coloured11903 = result11903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11904 live11904 coloured11904 = result11904 := by
  rw [tree11904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11902 coloured11902 at child
  try dsimp only [live11904, coloured11904]
  rw [child]
  dsimp only [result11902]
  have child := child1
  unfold live11903 coloured11903 at child
  try dsimp only [live11904, coloured11904]
  rw [child]
  dsimp only [result11903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11905_agree_conditional : tree11905 = literal11905 := by
  rw [tree11905_def]
  rfl
theorem node11905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11905 live11905 coloured11905 = result11905 := by
  rw [tree11905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11906_agree_conditional
    (child0 : tree11904 = literal11904)
    (child1 : tree11905 = literal11905) : tree11906 = literal11906 := by
  rw [tree11906_def, child0, child1]
  rfl
theorem node11906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11904 live11904 coloured11904 = result11904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11905 live11905 coloured11905 = result11905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11906 live11906 coloured11906 = result11906 := by
  rw [tree11906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11904 coloured11904 at child
  try dsimp only [live11906, coloured11906]
  rw [child]
  dsimp only [result11904]
  have child := child1
  unfold live11905 coloured11905 at child
  try dsimp only [live11906, coloured11906]
  rw [child]
  dsimp only [result11905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11907_agree_conditional : tree11907 = literal11907 := by
  rw [tree11907_def]
  rfl
theorem node11907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11907 live11907 coloured11907 = result11907 := by
  rw [tree11907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11908_agree_conditional
    (child0 : tree11906 = literal11906)
    (child1 : tree11907 = literal11907) : tree11908 = literal11908 := by
  rw [tree11908_def, child0, child1]
  rfl
theorem node11908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11906 live11906 coloured11906 = result11906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11907 live11907 coloured11907 = result11907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11908 live11908 coloured11908 = result11908 := by
  rw [tree11908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11906 coloured11906 at child
  try dsimp only [live11908, coloured11908]
  rw [child]
  dsimp only [result11906]
  have child := child1
  unfold live11907 coloured11907 at child
  try dsimp only [live11908, coloured11908]
  rw [child]
  dsimp only [result11907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11909_agree_conditional : tree11909 = literal11909 := by
  rw [tree11909_def]
  rfl
theorem node11909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11909 live11909 coloured11909 = result11909 := by
  rw [tree11909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11910_agree_conditional
    (child0 : tree11908 = literal11908)
    (child1 : tree11909 = literal11909) : tree11910 = literal11910 := by
  rw [tree11910_def, child0, child1]
  rfl
theorem node11910_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11908 live11908 coloured11908 = result11908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11909 live11909 coloured11909 = result11909) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11910 live11910 coloured11910 = result11910 := by
  rw [tree11910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11908 coloured11908 at child
  try dsimp only [live11910, coloured11910]
  rw [child]
  dsimp only [result11908]
  have child := child1
  unfold live11909 coloured11909 at child
  try dsimp only [live11910, coloured11910]
  rw [child]
  dsimp only [result11909]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11911_agree_conditional : tree11911 = literal11911 := by
  rw [tree11911_def]
  rfl
theorem node11911_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11911 live11911 coloured11911 = result11911 := by
  rw [tree11911_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11912_agree_conditional
    (child0 : tree11910 = literal11910)
    (child1 : tree11911 = literal11911) : tree11912 = literal11912 := by
  rw [tree11912_def, child0, child1]
  rfl
theorem node11912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11910 live11910 coloured11910 = result11910)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11911 live11911 coloured11911 = result11911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11912 live11912 coloured11912 = result11912 := by
  rw [tree11912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11910 coloured11910 at child
  try dsimp only [live11912, coloured11912]
  rw [child]
  dsimp only [result11910]
  have child := child1
  unfold live11911 coloured11911 at child
  try dsimp only [live11912, coloured11912]
  rw [child]
  dsimp only [result11911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11913_agree_conditional : tree11913 = literal11913 := by
  rw [tree11913_def]
  rfl
theorem node11913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11913 live11913 coloured11913 = result11913 := by
  rw [tree11913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11914_agree_conditional
    (child0 : tree11912 = literal11912)
    (child1 : tree11913 = literal11913) : tree11914 = literal11914 := by
  rw [tree11914_def, child0, child1]
  rfl
theorem node11914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11912 live11912 coloured11912 = result11912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11913 live11913 coloured11913 = result11913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11914 live11914 coloured11914 = result11914 := by
  rw [tree11914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11912 coloured11912 at child
  try dsimp only [live11914, coloured11914]
  rw [child]
  dsimp only [result11912]
  have child := child1
  unfold live11913 coloured11913 at child
  try dsimp only [live11914, coloured11914]
  rw [child]
  dsimp only [result11913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11915_agree_conditional : tree11915 = literal11915 := by
  rw [tree11915_def]
  rfl
theorem node11915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11915 live11915 coloured11915 = result11915 := by
  rw [tree11915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11916_agree_conditional
    (child0 : tree11914 = literal11914)
    (child1 : tree11915 = literal11915) : tree11916 = literal11916 := by
  rw [tree11916_def, child0, child1]
  rfl
theorem node11916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11914 live11914 coloured11914 = result11914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11915 live11915 coloured11915 = result11915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11916 live11916 coloured11916 = result11916 := by
  rw [tree11916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11914 coloured11914 at child
  try dsimp only [live11916, coloured11916]
  rw [child]
  dsimp only [result11914]
  have child := child1
  unfold live11915 coloured11915 at child
  try dsimp only [live11916, coloured11916]
  rw [child]
  dsimp only [result11915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11917_agree_conditional : tree11917 = literal11917 := by
  rw [tree11917_def]
  rfl
theorem node11917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11917 live11917 coloured11917 = result11917 := by
  rw [tree11917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11918_agree_conditional
    (child0 : tree11916 = literal11916)
    (child1 : tree11917 = literal11917) : tree11918 = literal11918 := by
  rw [tree11918_def, child0, child1]
  rfl
theorem node11918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11916 live11916 coloured11916 = result11916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11917 live11917 coloured11917 = result11917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11918 live11918 coloured11918 = result11918 := by
  rw [tree11918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11916 coloured11916 at child
  try dsimp only [live11918, coloured11918]
  rw [child]
  dsimp only [result11916]
  have child := child1
  unfold live11917 coloured11917 at child
  try dsimp only [live11918, coloured11918]
  rw [child]
  dsimp only [result11917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11919_agree_conditional : tree11919 = literal11919 := by
  rw [tree11919_def]
  rfl
theorem node11919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11919 live11919 coloured11919 = result11919 := by
  rw [tree11919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11920_agree_conditional
    (child0 : tree11918 = literal11918)
    (child1 : tree11919 = literal11919) : tree11920 = literal11920 := by
  rw [tree11920_def, child0, child1]
  rfl
theorem node11920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11918 live11918 coloured11918 = result11918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11919 live11919 coloured11919 = result11919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11920 live11920 coloured11920 = result11920 := by
  rw [tree11920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11918 coloured11918 at child
  try dsimp only [live11920, coloured11920]
  rw [child]
  dsimp only [result11918]
  have child := child1
  unfold live11919 coloured11919 at child
  try dsimp only [live11920, coloured11920]
  rw [child]
  dsimp only [result11919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11921_agree_conditional : tree11921 = literal11921 := by
  rw [tree11921_def]
  rfl
theorem node11921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11921 live11921 coloured11921 = result11921 := by
  rw [tree11921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11922_agree_conditional
    (child0 : tree11920 = literal11920)
    (child1 : tree11921 = literal11921) : tree11922 = literal11922 := by
  rw [tree11922_def, child0, child1]
  rfl
theorem node11922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11920 live11920 coloured11920 = result11920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11921 live11921 coloured11921 = result11921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11922 live11922 coloured11922 = result11922 := by
  rw [tree11922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11920 coloured11920 at child
  try dsimp only [live11922, coloured11922]
  rw [child]
  dsimp only [result11920]
  have child := child1
  unfold live11921 coloured11921 at child
  try dsimp only [live11922, coloured11922]
  rw [child]
  dsimp only [result11921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11923_agree_conditional : tree11923 = literal11923 := by
  rw [tree11923_def]
  rfl
theorem node11923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11923 live11923 coloured11923 = result11923 := by
  rw [tree11923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11924_agree_conditional
    (child0 : tree11922 = literal11922)
    (child1 : tree11923 = literal11923) : tree11924 = literal11924 := by
  rw [tree11924_def, child0, child1]
  rfl
theorem node11924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11922 live11922 coloured11922 = result11922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11923 live11923 coloured11923 = result11923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11924 live11924 coloured11924 = result11924 := by
  rw [tree11924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11922 coloured11922 at child
  try dsimp only [live11924, coloured11924]
  rw [child]
  dsimp only [result11922]
  have child := child1
  unfold live11923 coloured11923 at child
  try dsimp only [live11924, coloured11924]
  rw [child]
  dsimp only [result11923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11925_agree_conditional : tree11925 = literal11925 := by
  rw [tree11925_def]
  rfl
theorem node11925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11925 live11925 coloured11925 = result11925 := by
  rw [tree11925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11926_agree_conditional
    (child0 : tree11924 = literal11924)
    (child1 : tree11925 = literal11925) : tree11926 = literal11926 := by
  rw [tree11926_def, child0, child1]
  rfl
theorem node11926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11924 live11924 coloured11924 = result11924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11925 live11925 coloured11925 = result11925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11926 live11926 coloured11926 = result11926 := by
  rw [tree11926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11924 coloured11924 at child
  try dsimp only [live11926, coloured11926]
  rw [child]
  dsimp only [result11924]
  have child := child1
  unfold live11925 coloured11925 at child
  try dsimp only [live11926, coloured11926]
  rw [child]
  dsimp only [result11925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11927_agree_conditional : tree11927 = literal11927 := by
  rw [tree11927_def]
  rfl
theorem node11927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11927 live11927 coloured11927 = result11927 := by
  rw [tree11927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11928_agree_conditional
    (child0 : tree11926 = literal11926)
    (child1 : tree11927 = literal11927) : tree11928 = literal11928 := by
  rw [tree11928_def, child0, child1]
  rfl
theorem node11928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11926 live11926 coloured11926 = result11926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11927 live11927 coloured11927 = result11927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11928 live11928 coloured11928 = result11928 := by
  rw [tree11928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11926 coloured11926 at child
  try dsimp only [live11928, coloured11928]
  rw [child]
  dsimp only [result11926]
  have child := child1
  unfold live11927 coloured11927 at child
  try dsimp only [live11928, coloured11928]
  rw [child]
  dsimp only [result11927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11929_agree_conditional : tree11929 = literal11929 := by
  rw [tree11929_def]
  rfl
theorem node11929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11929 live11929 coloured11929 = result11929 := by
  rw [tree11929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11930_agree_conditional
    (child0 : tree11928 = literal11928)
    (child1 : tree11929 = literal11929) : tree11930 = literal11930 := by
  rw [tree11930_def, child0, child1]
  rfl
theorem node11930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11928 live11928 coloured11928 = result11928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11929 live11929 coloured11929 = result11929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11930 live11930 coloured11930 = result11930 := by
  rw [tree11930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11928 coloured11928 at child
  try dsimp only [live11930, coloured11930]
  rw [child]
  dsimp only [result11928]
  have child := child1
  unfold live11929 coloured11929 at child
  try dsimp only [live11930, coloured11930]
  rw [child]
  dsimp only [result11929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11931_agree_conditional : tree11931 = literal11931 := by
  rw [tree11931_def]
  rfl
theorem node11931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11931 live11931 coloured11931 = result11931 := by
  rw [tree11931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11932_agree_conditional
    (child0 : tree11930 = literal11930)
    (child1 : tree11931 = literal11931) : tree11932 = literal11932 := by
  rw [tree11932_def, child0, child1]
  rfl
theorem node11932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11930 live11930 coloured11930 = result11930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11931 live11931 coloured11931 = result11931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11932 live11932 coloured11932 = result11932 := by
  rw [tree11932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11930 coloured11930 at child
  try dsimp only [live11932, coloured11932]
  rw [child]
  dsimp only [result11930]
  have child := child1
  unfold live11931 coloured11931 at child
  try dsimp only [live11932, coloured11932]
  rw [child]
  dsimp only [result11931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11933_agree_conditional : tree11933 = literal11933 := by
  rw [tree11933_def]
  rfl
theorem node11933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11933 live11933 coloured11933 = result11933 := by
  rw [tree11933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11934_agree_conditional
    (child0 : tree11932 = literal11932)
    (child1 : tree11933 = literal11933) : tree11934 = literal11934 := by
  rw [tree11934_def, child0, child1]
  rfl
theorem node11934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11932 live11932 coloured11932 = result11932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11933 live11933 coloured11933 = result11933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11934 live11934 coloured11934 = result11934 := by
  rw [tree11934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11932 coloured11932 at child
  try dsimp only [live11934, coloured11934]
  rw [child]
  dsimp only [result11932]
  have child := child1
  unfold live11933 coloured11933 at child
  try dsimp only [live11934, coloured11934]
  rw [child]
  dsimp only [result11933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11935_agree_conditional : tree11935 = literal11935 := by
  rw [tree11935_def]
  rfl
theorem node11935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11935 live11935 coloured11935 = result11935 := by
  rw [tree11935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11936_agree_conditional
    (child0 : tree11934 = literal11934)
    (child1 : tree11935 = literal11935) : tree11936 = literal11936 := by
  rw [tree11936_def, child0, child1]
  rfl
theorem node11936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11934 live11934 coloured11934 = result11934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11935 live11935 coloured11935 = result11935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11936 live11936 coloured11936 = result11936 := by
  rw [tree11936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11934 coloured11934 at child
  try dsimp only [live11936, coloured11936]
  rw [child]
  dsimp only [result11934]
  have child := child1
  unfold live11935 coloured11935 at child
  try dsimp only [live11936, coloured11936]
  rw [child]
  dsimp only [result11935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11937_agree_conditional : tree11937 = literal11937 := by
  rw [tree11937_def]
  rfl
theorem node11937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11937 live11937 coloured11937 = result11937 := by
  rw [tree11937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11938_agree_conditional
    (child0 : tree11936 = literal11936)
    (child1 : tree11937 = literal11937) : tree11938 = literal11938 := by
  rw [tree11938_def, child0, child1]
  rfl
theorem node11938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11936 live11936 coloured11936 = result11936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11937 live11937 coloured11937 = result11937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11938 live11938 coloured11938 = result11938 := by
  rw [tree11938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11936 coloured11936 at child
  try dsimp only [live11938, coloured11938]
  rw [child]
  dsimp only [result11936]
  have child := child1
  unfold live11937 coloured11937 at child
  try dsimp only [live11938, coloured11938]
  rw [child]
  dsimp only [result11937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11939_agree_conditional : tree11939 = literal11939 := by
  rw [tree11939_def]
  rfl
theorem node11939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11939 live11939 coloured11939 = result11939 := by
  rw [tree11939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11940_agree_conditional
    (child0 : tree11938 = literal11938)
    (child1 : tree11939 = literal11939) : tree11940 = literal11940 := by
  rw [tree11940_def, child0, child1]
  rfl
theorem node11940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11938 live11938 coloured11938 = result11938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11939 live11939 coloured11939 = result11939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11940 live11940 coloured11940 = result11940 := by
  rw [tree11940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11938 coloured11938 at child
  try dsimp only [live11940, coloured11940]
  rw [child]
  dsimp only [result11938]
  have child := child1
  unfold live11939 coloured11939 at child
  try dsimp only [live11940, coloured11940]
  rw [child]
  dsimp only [result11939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11941_agree_conditional : tree11941 = literal11941 := by
  rw [tree11941_def]
  rfl
theorem node11941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11941 live11941 coloured11941 = result11941 := by
  rw [tree11941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11942_agree_conditional
    (child0 : tree11940 = literal11940)
    (child1 : tree11941 = literal11941) : tree11942 = literal11942 := by
  rw [tree11942_def, child0, child1]
  rfl
theorem node11942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11940 live11940 coloured11940 = result11940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11941 live11941 coloured11941 = result11941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11942 live11942 coloured11942 = result11942 := by
  rw [tree11942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11940 coloured11940 at child
  try dsimp only [live11942, coloured11942]
  rw [child]
  dsimp only [result11940]
  have child := child1
  unfold live11941 coloured11941 at child
  try dsimp only [live11942, coloured11942]
  rw [child]
  dsimp only [result11941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11943_agree_conditional : tree11943 = literal11943 := by
  rw [tree11943_def]
  rfl
theorem node11943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11943 live11943 coloured11943 = result11943 := by
  rw [tree11943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11944_agree_conditional
    (child0 : tree11942 = literal11942)
    (child1 : tree11943 = literal11943) : tree11944 = literal11944 := by
  rw [tree11944_def, child0, child1]
  rfl
theorem node11944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11942 live11942 coloured11942 = result11942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11943 live11943 coloured11943 = result11943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11944 live11944 coloured11944 = result11944 := by
  rw [tree11944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11942 coloured11942 at child
  try dsimp only [live11944, coloured11944]
  rw [child]
  dsimp only [result11942]
  have child := child1
  unfold live11943 coloured11943 at child
  try dsimp only [live11944, coloured11944]
  rw [child]
  dsimp only [result11943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11945_agree_conditional : tree11945 = literal11945 := by
  rw [tree11945_def]
  rfl
theorem node11945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11945 live11945 coloured11945 = result11945 := by
  rw [tree11945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11946_agree_conditional
    (child0 : tree11944 = literal11944)
    (child1 : tree11945 = literal11945) : tree11946 = literal11946 := by
  rw [tree11946_def, child0, child1]
  rfl
theorem node11946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11944 live11944 coloured11944 = result11944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11945 live11945 coloured11945 = result11945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11946 live11946 coloured11946 = result11946 := by
  rw [tree11946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11944 coloured11944 at child
  try dsimp only [live11946, coloured11946]
  rw [child]
  dsimp only [result11944]
  have child := child1
  unfold live11945 coloured11945 at child
  try dsimp only [live11946, coloured11946]
  rw [child]
  dsimp only [result11945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11947_agree_conditional : tree11947 = literal11947 := by
  rw [tree11947_def]
  rfl
theorem node11947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11947 live11947 coloured11947 = result11947 := by
  rw [tree11947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11948_agree_conditional
    (child0 : tree11946 = literal11946)
    (child1 : tree11947 = literal11947) : tree11948 = literal11948 := by
  rw [tree11948_def, child0, child1]
  rfl
theorem node11948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11946 live11946 coloured11946 = result11946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11947 live11947 coloured11947 = result11947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11948 live11948 coloured11948 = result11948 := by
  rw [tree11948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11946 coloured11946 at child
  try dsimp only [live11948, coloured11948]
  rw [child]
  dsimp only [result11946]
  have child := child1
  unfold live11947 coloured11947 at child
  try dsimp only [live11948, coloured11948]
  rw [child]
  dsimp only [result11947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11949_agree_conditional : tree11949 = literal11949 := by
  rw [tree11949_def]
  rfl
theorem node11949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11949 live11949 coloured11949 = result11949 := by
  rw [tree11949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11950_agree_conditional
    (child0 : tree11948 = literal11948)
    (child1 : tree11949 = literal11949) : tree11950 = literal11950 := by
  rw [tree11950_def, child0, child1]
  rfl
theorem node11950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11948 live11948 coloured11948 = result11948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11949 live11949 coloured11949 = result11949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11950 live11950 coloured11950 = result11950 := by
  rw [tree11950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11948 coloured11948 at child
  try dsimp only [live11950, coloured11950]
  rw [child]
  dsimp only [result11948]
  have child := child1
  unfold live11949 coloured11949 at child
  try dsimp only [live11950, coloured11950]
  rw [child]
  dsimp only [result11949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11951_agree_conditional : tree11951 = literal11951 := by
  rw [tree11951_def]
  rfl
theorem node11951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11951 live11951 coloured11951 = result11951 := by
  rw [tree11951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11952_agree_conditional
    (child0 : tree11950 = literal11950)
    (child1 : tree11951 = literal11951) : tree11952 = literal11952 := by
  rw [tree11952_def, child0, child1]
  rfl
theorem node11952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11950 live11950 coloured11950 = result11950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11951 live11951 coloured11951 = result11951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11952 live11952 coloured11952 = result11952 := by
  rw [tree11952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11950 coloured11950 at child
  try dsimp only [live11952, coloured11952]
  rw [child]
  dsimp only [result11950]
  have child := child1
  unfold live11951 coloured11951 at child
  try dsimp only [live11952, coloured11952]
  rw [child]
  dsimp only [result11951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11953_agree_conditional : tree11953 = literal11953 := by
  rw [tree11953_def]
  rfl
theorem node11953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11953 live11953 coloured11953 = result11953 := by
  rw [tree11953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11954_agree_conditional
    (child0 : tree11952 = literal11952)
    (child1 : tree11953 = literal11953) : tree11954 = literal11954 := by
  rw [tree11954_def, child0, child1]
  rfl
theorem node11954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11952 live11952 coloured11952 = result11952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11953 live11953 coloured11953 = result11953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11954 live11954 coloured11954 = result11954 := by
  rw [tree11954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11952 coloured11952 at child
  try dsimp only [live11954, coloured11954]
  rw [child]
  dsimp only [result11952]
  have child := child1
  unfold live11953 coloured11953 at child
  try dsimp only [live11954, coloured11954]
  rw [child]
  dsimp only [result11953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11955_agree_conditional : tree11955 = literal11955 := by
  rw [tree11955_def]
  rfl
theorem node11955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11955 live11955 coloured11955 = result11955 := by
  rw [tree11955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11956_agree_conditional
    (child0 : tree11954 = literal11954)
    (child1 : tree11955 = literal11955) : tree11956 = literal11956 := by
  rw [tree11956_def, child0, child1]
  rfl
theorem node11956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11954 live11954 coloured11954 = result11954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11955 live11955 coloured11955 = result11955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11956 live11956 coloured11956 = result11956 := by
  rw [tree11956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11954 coloured11954 at child
  try dsimp only [live11956, coloured11956]
  rw [child]
  dsimp only [result11954]
  have child := child1
  unfold live11955 coloured11955 at child
  try dsimp only [live11956, coloured11956]
  rw [child]
  dsimp only [result11955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11957_agree_conditional : tree11957 = literal11957 := by
  rw [tree11957_def]
  rfl
theorem node11957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11957 live11957 coloured11957 = result11957 := by
  rw [tree11957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11958_agree_conditional
    (child0 : tree11956 = literal11956)
    (child1 : tree11957 = literal11957) : tree11958 = literal11958 := by
  rw [tree11958_def, child0, child1]
  rfl
theorem node11958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11956 live11956 coloured11956 = result11956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11957 live11957 coloured11957 = result11957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11958 live11958 coloured11958 = result11958 := by
  rw [tree11958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11956 coloured11956 at child
  try dsimp only [live11958, coloured11958]
  rw [child]
  dsimp only [result11956]
  have child := child1
  unfold live11957 coloured11957 at child
  try dsimp only [live11958, coloured11958]
  rw [child]
  dsimp only [result11957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11959_agree_conditional : tree11959 = literal11959 := by
  rw [tree11959_def]
  rfl
theorem node11959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11959 live11959 coloured11959 = result11959 := by
  rw [tree11959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11960_agree_conditional
    (child0 : tree11958 = literal11958)
    (child1 : tree11959 = literal11959) : tree11960 = literal11960 := by
  rw [tree11960_def, child0, child1]
  rfl
theorem node11960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11958 live11958 coloured11958 = result11958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11959 live11959 coloured11959 = result11959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11960 live11960 coloured11960 = result11960 := by
  rw [tree11960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11958 coloured11958 at child
  try dsimp only [live11960, coloured11960]
  rw [child]
  dsimp only [result11958]
  have child := child1
  unfold live11959 coloured11959 at child
  try dsimp only [live11960, coloured11960]
  rw [child]
  dsimp only [result11959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11961_agree_conditional : tree11961 = literal11961 := by
  rw [tree11961_def]
  rfl
theorem node11961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11961 live11961 coloured11961 = result11961 := by
  rw [tree11961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11962_agree_conditional
    (child0 : tree11960 = literal11960)
    (child1 : tree11961 = literal11961) : tree11962 = literal11962 := by
  rw [tree11962_def, child0, child1]
  rfl
theorem node11962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11960 live11960 coloured11960 = result11960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11961 live11961 coloured11961 = result11961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11962 live11962 coloured11962 = result11962 := by
  rw [tree11962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11960 coloured11960 at child
  try dsimp only [live11962, coloured11962]
  rw [child]
  dsimp only [result11960]
  have child := child1
  unfold live11961 coloured11961 at child
  try dsimp only [live11962, coloured11962]
  rw [child]
  dsimp only [result11961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11963_agree_conditional : tree11963 = literal11963 := by
  rw [tree11963_def]
  rfl
theorem node11963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11963 live11963 coloured11963 = result11963 := by
  rw [tree11963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11964_agree_conditional
    (child0 : tree11962 = literal11962)
    (child1 : tree11963 = literal11963) : tree11964 = literal11964 := by
  rw [tree11964_def, child0, child1]
  rfl
theorem node11964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11962 live11962 coloured11962 = result11962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11963 live11963 coloured11963 = result11963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11964 live11964 coloured11964 = result11964 := by
  rw [tree11964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11962 coloured11962 at child
  try dsimp only [live11964, coloured11964]
  rw [child]
  dsimp only [result11962]
  have child := child1
  unfold live11963 coloured11963 at child
  try dsimp only [live11964, coloured11964]
  rw [child]
  dsimp only [result11963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11965_agree_conditional : tree11965 = literal11965 := by
  rw [tree11965_def]
  rfl
theorem node11965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11965 live11965 coloured11965 = result11965 := by
  rw [tree11965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11966_agree_conditional
    (child0 : tree11964 = literal11964)
    (child1 : tree11965 = literal11965) : tree11966 = literal11966 := by
  rw [tree11966_def, child0, child1]
  rfl
theorem node11966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11964 live11964 coloured11964 = result11964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11965 live11965 coloured11965 = result11965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11966 live11966 coloured11966 = result11966 := by
  rw [tree11966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11964 coloured11964 at child
  try dsimp only [live11966, coloured11966]
  rw [child]
  dsimp only [result11964]
  have child := child1
  unfold live11965 coloured11965 at child
  try dsimp only [live11966, coloured11966]
  rw [child]
  dsimp only [result11965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11967_agree_conditional : tree11967 = literal11967 := by
  rw [tree11967_def]
  rfl
theorem node11967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11967 live11967 coloured11967 = result11967 := by
  rw [tree11967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11968_agree_conditional
    (child0 : tree11966 = literal11966)
    (child1 : tree11967 = literal11967) : tree11968 = literal11968 := by
  rw [tree11968_def, child0, child1]
  rfl
theorem node11968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11966 live11966 coloured11966 = result11966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11967 live11967 coloured11967 = result11967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11968 live11968 coloured11968 = result11968 := by
  rw [tree11968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11966 coloured11966 at child
  try dsimp only [live11968, coloured11968]
  rw [child]
  dsimp only [result11966]
  have child := child1
  unfold live11967 coloured11967 at child
  try dsimp only [live11968, coloured11968]
  rw [child]
  dsimp only [result11967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11969_agree_conditional : tree11969 = literal11969 := by
  rw [tree11969_def]
  rfl
theorem node11969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11969 live11969 coloured11969 = result11969 := by
  rw [tree11969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11970_agree_conditional
    (child0 : tree11968 = literal11968)
    (child1 : tree11969 = literal11969) : tree11970 = literal11970 := by
  rw [tree11970_def, child0, child1]
  rfl
theorem node11970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11968 live11968 coloured11968 = result11968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11969 live11969 coloured11969 = result11969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11970 live11970 coloured11970 = result11970 := by
  rw [tree11970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11968 coloured11968 at child
  try dsimp only [live11970, coloured11970]
  rw [child]
  dsimp only [result11968]
  have child := child1
  unfold live11969 coloured11969 at child
  try dsimp only [live11970, coloured11970]
  rw [child]
  dsimp only [result11969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11971_agree_conditional : tree11971 = literal11971 := by
  rw [tree11971_def]
  rfl
theorem node11971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11971 live11971 coloured11971 = result11971 := by
  rw [tree11971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11972_agree_conditional
    (child0 : tree11970 = literal11970)
    (child1 : tree11971 = literal11971) : tree11972 = literal11972 := by
  rw [tree11972_def, child0, child1]
  rfl
theorem node11972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11970 live11970 coloured11970 = result11970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11971 live11971 coloured11971 = result11971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11972 live11972 coloured11972 = result11972 := by
  rw [tree11972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11970 coloured11970 at child
  try dsimp only [live11972, coloured11972]
  rw [child]
  dsimp only [result11970]
  have child := child1
  unfold live11971 coloured11971 at child
  try dsimp only [live11972, coloured11972]
  rw [child]
  dsimp only [result11971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11973_agree_conditional : tree11973 = literal11973 := by
  rw [tree11973_def]
  rfl
theorem node11973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11973 live11973 coloured11973 = result11973 := by
  rw [tree11973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11974_agree_conditional
    (child0 : tree11972 = literal11972)
    (child1 : tree11973 = literal11973) : tree11974 = literal11974 := by
  rw [tree11974_def, child0, child1]
  rfl
theorem node11974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11972 live11972 coloured11972 = result11972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11973 live11973 coloured11973 = result11973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11974 live11974 coloured11974 = result11974 := by
  rw [tree11974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11972 coloured11972 at child
  try dsimp only [live11974, coloured11974]
  rw [child]
  dsimp only [result11972]
  have child := child1
  unfold live11973 coloured11973 at child
  try dsimp only [live11974, coloured11974]
  rw [child]
  dsimp only [result11973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11975_agree_conditional : tree11975 = literal11975 := by
  rw [tree11975_def]
  rfl
theorem node11975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11975 live11975 coloured11975 = result11975 := by
  rw [tree11975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11976_agree_conditional
    (child0 : tree11974 = literal11974)
    (child1 : tree11975 = literal11975) : tree11976 = literal11976 := by
  rw [tree11976_def, child0, child1]
  rfl
theorem node11976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11974 live11974 coloured11974 = result11974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11975 live11975 coloured11975 = result11975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11976 live11976 coloured11976 = result11976 := by
  rw [tree11976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11974 coloured11974 at child
  try dsimp only [live11976, coloured11976]
  rw [child]
  dsimp only [result11974]
  have child := child1
  unfold live11975 coloured11975 at child
  try dsimp only [live11976, coloured11976]
  rw [child]
  dsimp only [result11975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11977_agree_conditional : tree11977 = literal11977 := by
  rw [tree11977_def]
  rfl
theorem node11977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11977 live11977 coloured11977 = result11977 := by
  rw [tree11977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11978_agree_conditional
    (child0 : tree11976 = literal11976)
    (child1 : tree11977 = literal11977) : tree11978 = literal11978 := by
  rw [tree11978_def, child0, child1]
  rfl
theorem node11978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11976 live11976 coloured11976 = result11976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11977 live11977 coloured11977 = result11977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11978 live11978 coloured11978 = result11978 := by
  rw [tree11978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11976 coloured11976 at child
  try dsimp only [live11978, coloured11978]
  rw [child]
  dsimp only [result11976]
  have child := child1
  unfold live11977 coloured11977 at child
  try dsimp only [live11978, coloured11978]
  rw [child]
  dsimp only [result11977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11979_agree_conditional : tree11979 = literal11979 := by
  rw [tree11979_def]
  rfl
theorem node11979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11979 live11979 coloured11979 = result11979 := by
  rw [tree11979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11980_agree_conditional
    (child0 : tree11978 = literal11978)
    (child1 : tree11979 = literal11979) : tree11980 = literal11980 := by
  rw [tree11980_def, child0, child1]
  rfl
theorem node11980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11978 live11978 coloured11978 = result11978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11979 live11979 coloured11979 = result11979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11980 live11980 coloured11980 = result11980 := by
  rw [tree11980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11978 coloured11978 at child
  try dsimp only [live11980, coloured11980]
  rw [child]
  dsimp only [result11978]
  have child := child1
  unfold live11979 coloured11979 at child
  try dsimp only [live11980, coloured11980]
  rw [child]
  dsimp only [result11979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11981_agree_conditional : tree11981 = literal11981 := by
  rw [tree11981_def]
  rfl
theorem node11981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11981 live11981 coloured11981 = result11981 := by
  rw [tree11981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11982_agree_conditional
    (child0 : tree11980 = literal11980)
    (child1 : tree11981 = literal11981) : tree11982 = literal11982 := by
  rw [tree11982_def, child0, child1]
  rfl
theorem node11982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11980 live11980 coloured11980 = result11980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11981 live11981 coloured11981 = result11981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11982 live11982 coloured11982 = result11982 := by
  rw [tree11982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11980 coloured11980 at child
  try dsimp only [live11982, coloured11982]
  rw [child]
  dsimp only [result11980]
  have child := child1
  unfold live11981 coloured11981 at child
  try dsimp only [live11982, coloured11982]
  rw [child]
  dsimp only [result11981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11983_agree_conditional : tree11983 = literal11983 := by
  rw [tree11983_def]
  rfl
theorem node11983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11983 live11983 coloured11983 = result11983 := by
  rw [tree11983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11984_agree_conditional
    (child0 : tree11982 = literal11982)
    (child1 : tree11983 = literal11983) : tree11984 = literal11984 := by
  rw [tree11984_def, child0, child1]
  rfl
theorem node11984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11982 live11982 coloured11982 = result11982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11983 live11983 coloured11983 = result11983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11984 live11984 coloured11984 = result11984 := by
  rw [tree11984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11982 coloured11982 at child
  try dsimp only [live11984, coloured11984]
  rw [child]
  dsimp only [result11982]
  have child := child1
  unfold live11983 coloured11983 at child
  try dsimp only [live11984, coloured11984]
  rw [child]
  dsimp only [result11983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11985_agree_conditional : tree11985 = literal11985 := by
  rw [tree11985_def]
  rfl
theorem node11985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11985 live11985 coloured11985 = result11985 := by
  rw [tree11985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11986_agree_conditional
    (child0 : tree11984 = literal11984)
    (child1 : tree11985 = literal11985) : tree11986 = literal11986 := by
  rw [tree11986_def, child0, child1]
  rfl
theorem node11986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11984 live11984 coloured11984 = result11984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11985 live11985 coloured11985 = result11985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11986 live11986 coloured11986 = result11986 := by
  rw [tree11986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11984 coloured11984 at child
  try dsimp only [live11986, coloured11986]
  rw [child]
  dsimp only [result11984]
  have child := child1
  unfold live11985 coloured11985 at child
  try dsimp only [live11986, coloured11986]
  rw [child]
  dsimp only [result11985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11987_agree_conditional : tree11987 = literal11987 := by
  rw [tree11987_def]
  rfl
theorem node11987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11987 live11987 coloured11987 = result11987 := by
  rw [tree11987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11988_agree_conditional
    (child0 : tree11986 = literal11986)
    (child1 : tree11987 = literal11987) : tree11988 = literal11988 := by
  rw [tree11988_def, child0, child1]
  rfl
theorem node11988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11986 live11986 coloured11986 = result11986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11987 live11987 coloured11987 = result11987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11988 live11988 coloured11988 = result11988 := by
  rw [tree11988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11986 coloured11986 at child
  try dsimp only [live11988, coloured11988]
  rw [child]
  dsimp only [result11986]
  have child := child1
  unfold live11987 coloured11987 at child
  try dsimp only [live11988, coloured11988]
  rw [child]
  dsimp only [result11987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11989_agree_conditional : tree11989 = literal11989 := by
  rw [tree11989_def]
  rfl
theorem node11989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11989 live11989 coloured11989 = result11989 := by
  rw [tree11989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11990_agree_conditional
    (child0 : tree11988 = literal11988)
    (child1 : tree11989 = literal11989) : tree11990 = literal11990 := by
  rw [tree11990_def, child0, child1]
  rfl
theorem node11990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11988 live11988 coloured11988 = result11988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11989 live11989 coloured11989 = result11989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11990 live11990 coloured11990 = result11990 := by
  rw [tree11990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11988 coloured11988 at child
  try dsimp only [live11990, coloured11990]
  rw [child]
  dsimp only [result11988]
  have child := child1
  unfold live11989 coloured11989 at child
  try dsimp only [live11990, coloured11990]
  rw [child]
  dsimp only [result11989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11991_agree_conditional : tree11991 = literal11991 := by
  rw [tree11991_def]
  rfl
theorem node11991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11991 live11991 coloured11991 = result11991 := by
  rw [tree11991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11992_agree_conditional
    (child0 : tree11990 = literal11990)
    (child1 : tree11991 = literal11991) : tree11992 = literal11992 := by
  rw [tree11992_def, child0, child1]
  rfl
theorem node11992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11990 live11990 coloured11990 = result11990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11991 live11991 coloured11991 = result11991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11992 live11992 coloured11992 = result11992 := by
  rw [tree11992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11990 coloured11990 at child
  try dsimp only [live11992, coloured11992]
  rw [child]
  dsimp only [result11990]
  have child := child1
  unfold live11991 coloured11991 at child
  try dsimp only [live11992, coloured11992]
  rw [child]
  dsimp only [result11991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11993_agree_conditional : tree11993 = literal11993 := by
  rw [tree11993_def]
  rfl
theorem node11993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11993 live11993 coloured11993 = result11993 := by
  rw [tree11993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11994_agree_conditional : tree11994 = literal11994 := by
  rw [tree11994_def]
  rfl
theorem node11994_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11994 live11994 coloured11994 = result11994 := by
  rw [tree11994_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11995_agree_conditional
    (child0 : tree11993 = literal11993)
    (child1 : tree11994 = literal11994) : tree11995 = literal11995 := by
  rw [tree11995_def, child0, child1]
  rfl
theorem node11995_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11993 live11993 coloured11993 = result11993)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11994 live11994 coloured11994 = result11994) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11995 live11995 coloured11995 = result11995 := by
  rw [tree11995_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11993 coloured11993 at child
  try dsimp only [live11995, coloured11995]
  rw [child]
  dsimp only [result11993]
  have child := child1
  unfold live11994 coloured11994 at child
  try dsimp only [live11995, coloured11995]
  rw [child]
  dsimp only [result11994]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11996_agree_conditional : tree11996 = literal11996 := by
  rw [tree11996_def]
  rfl
theorem node11996_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11996 live11996 coloured11996 = result11996 := by
  rw [tree11996_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11997_agree_conditional : tree11997 = literal11997 := by
  rw [tree11997_def]
  rfl
theorem node11997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11997 live11997 coloured11997 = result11997 := by
  rw [tree11997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11998_agree_conditional
    (child0 : tree11996 = literal11996)
    (child1 : tree11997 = literal11997) : tree11998 = literal11998 := by
  rw [tree11998_def, child0, child1]
  rfl
theorem node11998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11996 live11996 coloured11996 = result11996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11997 live11997 coloured11997 = result11997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11998 live11998 coloured11998 = result11998 := by
  rw [tree11998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11996 coloured11996 at child
  try dsimp only [live11998, coloured11998]
  rw [child]
  dsimp only [result11996]
  have child := child1
  unfold live11997 coloured11997 at child
  try dsimp only [live11998, coloured11998]
  rw [child]
  dsimp only [result11997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11999_agree_conditional : tree11999 = literal11999 := by
  rw [tree11999_def]
  rfl
theorem node11999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11999 live11999 coloured11999 = result11999 := by
  rw [tree11999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
