import InitECandidate.Proofs.ClashStages713.Proof123
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree11904_agree : tree11904 = literal11904 := by
  rw [tree11904_def, tree11902_agree, tree11903_agree]
  rfl
theorem node11904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11904 live11904 coloured11904 = result11904 := by
  rw [tree11904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11902_eq
  unfold live11902 coloured11902 at child
  try dsimp only [live11904, coloured11904]
  rw [child]
  dsimp only [result11902]
  have child := node11903_eq
  unfold live11903 coloured11903 at child
  try dsimp only [live11904, coloured11904]
  rw [child]
  dsimp only [result11903]
  try dsimp only [colour, result11904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11905_agree : tree11905 = literal11905 := by
  rw [tree11905_def]
  rfl
theorem node11905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11905 live11905 coloured11905 = result11905 := by
  rw [tree11905_def]
  try dsimp only [colour, result11905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11906_agree : tree11906 = literal11906 := by
  rw [tree11906_def, tree11904_agree, tree11905_agree]
  rfl
theorem node11906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11906 live11906 coloured11906 = result11906 := by
  rw [tree11906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11904_eq
  unfold live11904 coloured11904 at child
  try dsimp only [live11906, coloured11906]
  rw [child]
  dsimp only [result11904]
  have child := node11905_eq
  unfold live11905 coloured11905 at child
  try dsimp only [live11906, coloured11906]
  rw [child]
  dsimp only [result11905]
  try dsimp only [colour, result11906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11907_agree : tree11907 = literal11907 := by
  rw [tree11907_def]
  rfl
theorem node11907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11907 live11907 coloured11907 = result11907 := by
  rw [tree11907_def]
  try dsimp only [colour, result11907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11908_agree : tree11908 = literal11908 := by
  rw [tree11908_def, tree11906_agree, tree11907_agree]
  rfl
theorem node11908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11908 live11908 coloured11908 = result11908 := by
  rw [tree11908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11906_eq
  unfold live11906 coloured11906 at child
  try dsimp only [live11908, coloured11908]
  rw [child]
  dsimp only [result11906]
  have child := node11907_eq
  unfold live11907 coloured11907 at child
  try dsimp only [live11908, coloured11908]
  rw [child]
  dsimp only [result11907]
  try dsimp only [colour, result11908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11909_agree : tree11909 = literal11909 := by
  rw [tree11909_def]
  rfl
theorem node11909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11909 live11909 coloured11909 = result11909 := by
  rw [tree11909_def]
  try dsimp only [colour, result11909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11910_agree : tree11910 = literal11910 := by
  rw [tree11910_def, tree11908_agree, tree11909_agree]
  rfl
theorem node11910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11910 live11910 coloured11910 = result11910 := by
  rw [tree11910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11908_eq
  unfold live11908 coloured11908 at child
  try dsimp only [live11910, coloured11910]
  rw [child]
  dsimp only [result11908]
  have child := node11909_eq
  unfold live11909 coloured11909 at child
  try dsimp only [live11910, coloured11910]
  rw [child]
  dsimp only [result11909]
  try dsimp only [colour, result11910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11911_agree : tree11911 = literal11911 := by
  rw [tree11911_def]
  rfl
theorem node11911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11911 live11911 coloured11911 = result11911 := by
  rw [tree11911_def]
  try dsimp only [colour, result11911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11912_agree : tree11912 = literal11912 := by
  rw [tree11912_def, tree11910_agree, tree11911_agree]
  rfl
theorem node11912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11912 live11912 coloured11912 = result11912 := by
  rw [tree11912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11910_eq
  unfold live11910 coloured11910 at child
  try dsimp only [live11912, coloured11912]
  rw [child]
  dsimp only [result11910]
  have child := node11911_eq
  unfold live11911 coloured11911 at child
  try dsimp only [live11912, coloured11912]
  rw [child]
  dsimp only [result11911]
  try dsimp only [colour, result11912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11913_agree : tree11913 = literal11913 := by
  rw [tree11913_def]
  rfl
theorem node11913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11913 live11913 coloured11913 = result11913 := by
  rw [tree11913_def]
  try dsimp only [colour, result11913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11914_agree : tree11914 = literal11914 := by
  rw [tree11914_def, tree11912_agree, tree11913_agree]
  rfl
theorem node11914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11914 live11914 coloured11914 = result11914 := by
  rw [tree11914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11912_eq
  unfold live11912 coloured11912 at child
  try dsimp only [live11914, coloured11914]
  rw [child]
  dsimp only [result11912]
  have child := node11913_eq
  unfold live11913 coloured11913 at child
  try dsimp only [live11914, coloured11914]
  rw [child]
  dsimp only [result11913]
  try dsimp only [colour, result11914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11915_agree : tree11915 = literal11915 := by
  rw [tree11915_def]
  rfl
theorem node11915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11915 live11915 coloured11915 = result11915 := by
  rw [tree11915_def]
  try dsimp only [colour, result11915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11916_agree : tree11916 = literal11916 := by
  rw [tree11916_def, tree11914_agree, tree11915_agree]
  rfl
theorem node11916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11916 live11916 coloured11916 = result11916 := by
  rw [tree11916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11914_eq
  unfold live11914 coloured11914 at child
  try dsimp only [live11916, coloured11916]
  rw [child]
  dsimp only [result11914]
  have child := node11915_eq
  unfold live11915 coloured11915 at child
  try dsimp only [live11916, coloured11916]
  rw [child]
  dsimp only [result11915]
  try dsimp only [colour, result11916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11917_agree : tree11917 = literal11917 := by
  rw [tree11917_def]
  rfl
theorem node11917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11917 live11917 coloured11917 = result11917 := by
  rw [tree11917_def]
  try dsimp only [colour, result11917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11918_agree : tree11918 = literal11918 := by
  rw [tree11918_def, tree11916_agree, tree11917_agree]
  rfl
theorem node11918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11918 live11918 coloured11918 = result11918 := by
  rw [tree11918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11916_eq
  unfold live11916 coloured11916 at child
  try dsimp only [live11918, coloured11918]
  rw [child]
  dsimp only [result11916]
  have child := node11917_eq
  unfold live11917 coloured11917 at child
  try dsimp only [live11918, coloured11918]
  rw [child]
  dsimp only [result11917]
  try dsimp only [colour, result11918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11919_agree : tree11919 = literal11919 := by
  rw [tree11919_def]
  rfl
theorem node11919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11919 live11919 coloured11919 = result11919 := by
  rw [tree11919_def]
  try dsimp only [colour, result11919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11920_agree : tree11920 = literal11920 := by
  rw [tree11920_def, tree11918_agree, tree11919_agree]
  rfl
theorem node11920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11920 live11920 coloured11920 = result11920 := by
  rw [tree11920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11918_eq
  unfold live11918 coloured11918 at child
  try dsimp only [live11920, coloured11920]
  rw [child]
  dsimp only [result11918]
  have child := node11919_eq
  unfold live11919 coloured11919 at child
  try dsimp only [live11920, coloured11920]
  rw [child]
  dsimp only [result11919]
  try dsimp only [colour, result11920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11921_agree : tree11921 = literal11921 := by
  rw [tree11921_def]
  rfl
theorem node11921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11921 live11921 coloured11921 = result11921 := by
  rw [tree11921_def]
  try dsimp only [colour, result11921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11922_agree : tree11922 = literal11922 := by
  rw [tree11922_def, tree11920_agree, tree11921_agree]
  rfl
theorem node11922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11922 live11922 coloured11922 = result11922 := by
  rw [tree11922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11920_eq
  unfold live11920 coloured11920 at child
  try dsimp only [live11922, coloured11922]
  rw [child]
  dsimp only [result11920]
  have child := node11921_eq
  unfold live11921 coloured11921 at child
  try dsimp only [live11922, coloured11922]
  rw [child]
  dsimp only [result11921]
  try dsimp only [colour, result11922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11923_agree : tree11923 = literal11923 := by
  rw [tree11923_def]
  rfl
theorem node11923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11923 live11923 coloured11923 = result11923 := by
  rw [tree11923_def]
  try dsimp only [colour, result11923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11924_agree : tree11924 = literal11924 := by
  rw [tree11924_def, tree11922_agree, tree11923_agree]
  rfl
theorem node11924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11924 live11924 coloured11924 = result11924 := by
  rw [tree11924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11922_eq
  unfold live11922 coloured11922 at child
  try dsimp only [live11924, coloured11924]
  rw [child]
  dsimp only [result11922]
  have child := node11923_eq
  unfold live11923 coloured11923 at child
  try dsimp only [live11924, coloured11924]
  rw [child]
  dsimp only [result11923]
  try dsimp only [colour, result11924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11925_agree : tree11925 = literal11925 := by
  rw [tree11925_def]
  rfl
theorem node11925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11925 live11925 coloured11925 = result11925 := by
  rw [tree11925_def]
  try dsimp only [colour, result11925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11926_agree : tree11926 = literal11926 := by
  rw [tree11926_def, tree11924_agree, tree11925_agree]
  rfl
theorem node11926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11926 live11926 coloured11926 = result11926 := by
  rw [tree11926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11924_eq
  unfold live11924 coloured11924 at child
  try dsimp only [live11926, coloured11926]
  rw [child]
  dsimp only [result11924]
  have child := node11925_eq
  unfold live11925 coloured11925 at child
  try dsimp only [live11926, coloured11926]
  rw [child]
  dsimp only [result11925]
  try dsimp only [colour, result11926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11927_agree : tree11927 = literal11927 := by
  rw [tree11927_def]
  rfl
theorem node11927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11927 live11927 coloured11927 = result11927 := by
  rw [tree11927_def]
  try dsimp only [colour, result11927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11928_agree : tree11928 = literal11928 := by
  rw [tree11928_def, tree11926_agree, tree11927_agree]
  rfl
theorem node11928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11928 live11928 coloured11928 = result11928 := by
  rw [tree11928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11926_eq
  unfold live11926 coloured11926 at child
  try dsimp only [live11928, coloured11928]
  rw [child]
  dsimp only [result11926]
  have child := node11927_eq
  unfold live11927 coloured11927 at child
  try dsimp only [live11928, coloured11928]
  rw [child]
  dsimp only [result11927]
  try dsimp only [colour, result11928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11929_agree : tree11929 = literal11929 := by
  rw [tree11929_def]
  rfl
theorem node11929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11929 live11929 coloured11929 = result11929 := by
  rw [tree11929_def]
  try dsimp only [colour, result11929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11930_agree : tree11930 = literal11930 := by
  rw [tree11930_def, tree11928_agree, tree11929_agree]
  rfl
theorem node11930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11930 live11930 coloured11930 = result11930 := by
  rw [tree11930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11928_eq
  unfold live11928 coloured11928 at child
  try dsimp only [live11930, coloured11930]
  rw [child]
  dsimp only [result11928]
  have child := node11929_eq
  unfold live11929 coloured11929 at child
  try dsimp only [live11930, coloured11930]
  rw [child]
  dsimp only [result11929]
  try dsimp only [colour, result11930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11931_agree : tree11931 = literal11931 := by
  rw [tree11931_def]
  rfl
theorem node11931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11931 live11931 coloured11931 = result11931 := by
  rw [tree11931_def]
  try dsimp only [colour, result11931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11932_agree : tree11932 = literal11932 := by
  rw [tree11932_def, tree11930_agree, tree11931_agree]
  rfl
theorem node11932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11932 live11932 coloured11932 = result11932 := by
  rw [tree11932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11930_eq
  unfold live11930 coloured11930 at child
  try dsimp only [live11932, coloured11932]
  rw [child]
  dsimp only [result11930]
  have child := node11931_eq
  unfold live11931 coloured11931 at child
  try dsimp only [live11932, coloured11932]
  rw [child]
  dsimp only [result11931]
  try dsimp only [colour, result11932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11933_agree : tree11933 = literal11933 := by
  rw [tree11933_def]
  rfl
theorem node11933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11933 live11933 coloured11933 = result11933 := by
  rw [tree11933_def]
  try dsimp only [colour, result11933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11934_agree : tree11934 = literal11934 := by
  rw [tree11934_def, tree11932_agree, tree11933_agree]
  rfl
theorem node11934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11934 live11934 coloured11934 = result11934 := by
  rw [tree11934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11932_eq
  unfold live11932 coloured11932 at child
  try dsimp only [live11934, coloured11934]
  rw [child]
  dsimp only [result11932]
  have child := node11933_eq
  unfold live11933 coloured11933 at child
  try dsimp only [live11934, coloured11934]
  rw [child]
  dsimp only [result11933]
  try dsimp only [colour, result11934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11935_agree : tree11935 = literal11935 := by
  rw [tree11935_def]
  rfl
theorem node11935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11935 live11935 coloured11935 = result11935 := by
  rw [tree11935_def]
  try dsimp only [colour, result11935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11936_agree : tree11936 = literal11936 := by
  rw [tree11936_def, tree11934_agree, tree11935_agree]
  rfl
theorem node11936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11936 live11936 coloured11936 = result11936 := by
  rw [tree11936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11934_eq
  unfold live11934 coloured11934 at child
  try dsimp only [live11936, coloured11936]
  rw [child]
  dsimp only [result11934]
  have child := node11935_eq
  unfold live11935 coloured11935 at child
  try dsimp only [live11936, coloured11936]
  rw [child]
  dsimp only [result11935]
  try dsimp only [colour, result11936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11937_agree : tree11937 = literal11937 := by
  rw [tree11937_def]
  rfl
theorem node11937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11937 live11937 coloured11937 = result11937 := by
  rw [tree11937_def]
  try dsimp only [colour, result11937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11938_agree : tree11938 = literal11938 := by
  rw [tree11938_def, tree11936_agree, tree11937_agree]
  rfl
theorem node11938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11938 live11938 coloured11938 = result11938 := by
  rw [tree11938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11936_eq
  unfold live11936 coloured11936 at child
  try dsimp only [live11938, coloured11938]
  rw [child]
  dsimp only [result11936]
  have child := node11937_eq
  unfold live11937 coloured11937 at child
  try dsimp only [live11938, coloured11938]
  rw [child]
  dsimp only [result11937]
  try dsimp only [colour, result11938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11939_agree : tree11939 = literal11939 := by
  rw [tree11939_def]
  rfl
theorem node11939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11939 live11939 coloured11939 = result11939 := by
  rw [tree11939_def]
  try dsimp only [colour, result11939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11940_agree : tree11940 = literal11940 := by
  rw [tree11940_def, tree11938_agree, tree11939_agree]
  rfl
theorem node11940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11940 live11940 coloured11940 = result11940 := by
  rw [tree11940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11938_eq
  unfold live11938 coloured11938 at child
  try dsimp only [live11940, coloured11940]
  rw [child]
  dsimp only [result11938]
  have child := node11939_eq
  unfold live11939 coloured11939 at child
  try dsimp only [live11940, coloured11940]
  rw [child]
  dsimp only [result11939]
  try dsimp only [colour, result11940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11941_agree : tree11941 = literal11941 := by
  rw [tree11941_def]
  rfl
theorem node11941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11941 live11941 coloured11941 = result11941 := by
  rw [tree11941_def]
  try dsimp only [colour, result11941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11942_agree : tree11942 = literal11942 := by
  rw [tree11942_def, tree11940_agree, tree11941_agree]
  rfl
theorem node11942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11942 live11942 coloured11942 = result11942 := by
  rw [tree11942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11940_eq
  unfold live11940 coloured11940 at child
  try dsimp only [live11942, coloured11942]
  rw [child]
  dsimp only [result11940]
  have child := node11941_eq
  unfold live11941 coloured11941 at child
  try dsimp only [live11942, coloured11942]
  rw [child]
  dsimp only [result11941]
  try dsimp only [colour, result11942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11943_agree : tree11943 = literal11943 := by
  rw [tree11943_def]
  rfl
theorem node11943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11943 live11943 coloured11943 = result11943 := by
  rw [tree11943_def]
  try dsimp only [colour, result11943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11944_agree : tree11944 = literal11944 := by
  rw [tree11944_def, tree11942_agree, tree11943_agree]
  rfl
theorem node11944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11944 live11944 coloured11944 = result11944 := by
  rw [tree11944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11942_eq
  unfold live11942 coloured11942 at child
  try dsimp only [live11944, coloured11944]
  rw [child]
  dsimp only [result11942]
  have child := node11943_eq
  unfold live11943 coloured11943 at child
  try dsimp only [live11944, coloured11944]
  rw [child]
  dsimp only [result11943]
  try dsimp only [colour, result11944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11945_agree : tree11945 = literal11945 := by
  rw [tree11945_def]
  rfl
theorem node11945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11945 live11945 coloured11945 = result11945 := by
  rw [tree11945_def]
  try dsimp only [colour, result11945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11946_agree : tree11946 = literal11946 := by
  rw [tree11946_def, tree11944_agree, tree11945_agree]
  rfl
theorem node11946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11946 live11946 coloured11946 = result11946 := by
  rw [tree11946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11944_eq
  unfold live11944 coloured11944 at child
  try dsimp only [live11946, coloured11946]
  rw [child]
  dsimp only [result11944]
  have child := node11945_eq
  unfold live11945 coloured11945 at child
  try dsimp only [live11946, coloured11946]
  rw [child]
  dsimp only [result11945]
  try dsimp only [colour, result11946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11947_agree : tree11947 = literal11947 := by
  rw [tree11947_def]
  rfl
theorem node11947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11947 live11947 coloured11947 = result11947 := by
  rw [tree11947_def]
  try dsimp only [colour, result11947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11948_agree : tree11948 = literal11948 := by
  rw [tree11948_def, tree11946_agree, tree11947_agree]
  rfl
theorem node11948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11948 live11948 coloured11948 = result11948 := by
  rw [tree11948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11946_eq
  unfold live11946 coloured11946 at child
  try dsimp only [live11948, coloured11948]
  rw [child]
  dsimp only [result11946]
  have child := node11947_eq
  unfold live11947 coloured11947 at child
  try dsimp only [live11948, coloured11948]
  rw [child]
  dsimp only [result11947]
  try dsimp only [colour, result11948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11949_agree : tree11949 = literal11949 := by
  rw [tree11949_def]
  rfl
theorem node11949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11949 live11949 coloured11949 = result11949 := by
  rw [tree11949_def]
  try dsimp only [colour, result11949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11950_agree : tree11950 = literal11950 := by
  rw [tree11950_def, tree11948_agree, tree11949_agree]
  rfl
theorem node11950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11950 live11950 coloured11950 = result11950 := by
  rw [tree11950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11948_eq
  unfold live11948 coloured11948 at child
  try dsimp only [live11950, coloured11950]
  rw [child]
  dsimp only [result11948]
  have child := node11949_eq
  unfold live11949 coloured11949 at child
  try dsimp only [live11950, coloured11950]
  rw [child]
  dsimp only [result11949]
  try dsimp only [colour, result11950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11951_agree : tree11951 = literal11951 := by
  rw [tree11951_def]
  rfl
theorem node11951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11951 live11951 coloured11951 = result11951 := by
  rw [tree11951_def]
  try dsimp only [colour, result11951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11952_agree : tree11952 = literal11952 := by
  rw [tree11952_def, tree11950_agree, tree11951_agree]
  rfl
theorem node11952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11952 live11952 coloured11952 = result11952 := by
  rw [tree11952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11950_eq
  unfold live11950 coloured11950 at child
  try dsimp only [live11952, coloured11952]
  rw [child]
  dsimp only [result11950]
  have child := node11951_eq
  unfold live11951 coloured11951 at child
  try dsimp only [live11952, coloured11952]
  rw [child]
  dsimp only [result11951]
  try dsimp only [colour, result11952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11953_agree : tree11953 = literal11953 := by
  rw [tree11953_def]
  rfl
theorem node11953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11953 live11953 coloured11953 = result11953 := by
  rw [tree11953_def]
  try dsimp only [colour, result11953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11954_agree : tree11954 = literal11954 := by
  rw [tree11954_def, tree11952_agree, tree11953_agree]
  rfl
theorem node11954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11954 live11954 coloured11954 = result11954 := by
  rw [tree11954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11952_eq
  unfold live11952 coloured11952 at child
  try dsimp only [live11954, coloured11954]
  rw [child]
  dsimp only [result11952]
  have child := node11953_eq
  unfold live11953 coloured11953 at child
  try dsimp only [live11954, coloured11954]
  rw [child]
  dsimp only [result11953]
  try dsimp only [colour, result11954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11955_agree : tree11955 = literal11955 := by
  rw [tree11955_def]
  rfl
theorem node11955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11955 live11955 coloured11955 = result11955 := by
  rw [tree11955_def]
  try dsimp only [colour, result11955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11956_agree : tree11956 = literal11956 := by
  rw [tree11956_def, tree11954_agree, tree11955_agree]
  rfl
theorem node11956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11956 live11956 coloured11956 = result11956 := by
  rw [tree11956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11954_eq
  unfold live11954 coloured11954 at child
  try dsimp only [live11956, coloured11956]
  rw [child]
  dsimp only [result11954]
  have child := node11955_eq
  unfold live11955 coloured11955 at child
  try dsimp only [live11956, coloured11956]
  rw [child]
  dsimp only [result11955]
  try dsimp only [colour, result11956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11957_agree : tree11957 = literal11957 := by
  rw [tree11957_def]
  rfl
theorem node11957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11957 live11957 coloured11957 = result11957 := by
  rw [tree11957_def]
  try dsimp only [colour, result11957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11958_agree : tree11958 = literal11958 := by
  rw [tree11958_def, tree11956_agree, tree11957_agree]
  rfl
theorem node11958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11958 live11958 coloured11958 = result11958 := by
  rw [tree11958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11956_eq
  unfold live11956 coloured11956 at child
  try dsimp only [live11958, coloured11958]
  rw [child]
  dsimp only [result11956]
  have child := node11957_eq
  unfold live11957 coloured11957 at child
  try dsimp only [live11958, coloured11958]
  rw [child]
  dsimp only [result11957]
  try dsimp only [colour, result11958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11959_agree : tree11959 = literal11959 := by
  rw [tree11959_def]
  rfl
theorem node11959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11959 live11959 coloured11959 = result11959 := by
  rw [tree11959_def]
  try dsimp only [colour, result11959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11960_agree : tree11960 = literal11960 := by
  rw [tree11960_def, tree11958_agree, tree11959_agree]
  rfl
theorem node11960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11960 live11960 coloured11960 = result11960 := by
  rw [tree11960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11958_eq
  unfold live11958 coloured11958 at child
  try dsimp only [live11960, coloured11960]
  rw [child]
  dsimp only [result11958]
  have child := node11959_eq
  unfold live11959 coloured11959 at child
  try dsimp only [live11960, coloured11960]
  rw [child]
  dsimp only [result11959]
  try dsimp only [colour, result11960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11961_agree : tree11961 = literal11961 := by
  rw [tree11961_def]
  rfl
theorem node11961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11961 live11961 coloured11961 = result11961 := by
  rw [tree11961_def]
  try dsimp only [colour, result11961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11962_agree : tree11962 = literal11962 := by
  rw [tree11962_def, tree11960_agree, tree11961_agree]
  rfl
theorem node11962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11962 live11962 coloured11962 = result11962 := by
  rw [tree11962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11960_eq
  unfold live11960 coloured11960 at child
  try dsimp only [live11962, coloured11962]
  rw [child]
  dsimp only [result11960]
  have child := node11961_eq
  unfold live11961 coloured11961 at child
  try dsimp only [live11962, coloured11962]
  rw [child]
  dsimp only [result11961]
  try dsimp only [colour, result11962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11963_agree : tree11963 = literal11963 := by
  rw [tree11963_def]
  rfl
theorem node11963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11963 live11963 coloured11963 = result11963 := by
  rw [tree11963_def]
  try dsimp only [colour, result11963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11964_agree : tree11964 = literal11964 := by
  rw [tree11964_def, tree11962_agree, tree11963_agree]
  rfl
theorem node11964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11964 live11964 coloured11964 = result11964 := by
  rw [tree11964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11962_eq
  unfold live11962 coloured11962 at child
  try dsimp only [live11964, coloured11964]
  rw [child]
  dsimp only [result11962]
  have child := node11963_eq
  unfold live11963 coloured11963 at child
  try dsimp only [live11964, coloured11964]
  rw [child]
  dsimp only [result11963]
  try dsimp only [colour, result11964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11965_agree : tree11965 = literal11965 := by
  rw [tree11965_def]
  rfl
theorem node11965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11965 live11965 coloured11965 = result11965 := by
  rw [tree11965_def]
  try dsimp only [colour, result11965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11966_agree : tree11966 = literal11966 := by
  rw [tree11966_def, tree11964_agree, tree11965_agree]
  rfl
theorem node11966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11966 live11966 coloured11966 = result11966 := by
  rw [tree11966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11964_eq
  unfold live11964 coloured11964 at child
  try dsimp only [live11966, coloured11966]
  rw [child]
  dsimp only [result11964]
  have child := node11965_eq
  unfold live11965 coloured11965 at child
  try dsimp only [live11966, coloured11966]
  rw [child]
  dsimp only [result11965]
  try dsimp only [colour, result11966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11967_agree : tree11967 = literal11967 := by
  rw [tree11967_def]
  rfl
theorem node11967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11967 live11967 coloured11967 = result11967 := by
  rw [tree11967_def]
  try dsimp only [colour, result11967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11968_agree : tree11968 = literal11968 := by
  rw [tree11968_def, tree11966_agree, tree11967_agree]
  rfl
theorem node11968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11968 live11968 coloured11968 = result11968 := by
  rw [tree11968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11966_eq
  unfold live11966 coloured11966 at child
  try dsimp only [live11968, coloured11968]
  rw [child]
  dsimp only [result11966]
  have child := node11967_eq
  unfold live11967 coloured11967 at child
  try dsimp only [live11968, coloured11968]
  rw [child]
  dsimp only [result11967]
  try dsimp only [colour, result11968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11969_agree : tree11969 = literal11969 := by
  rw [tree11969_def]
  rfl
theorem node11969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11969 live11969 coloured11969 = result11969 := by
  rw [tree11969_def]
  try dsimp only [colour, result11969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11970_agree : tree11970 = literal11970 := by
  rw [tree11970_def, tree11968_agree, tree11969_agree]
  rfl
theorem node11970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11970 live11970 coloured11970 = result11970 := by
  rw [tree11970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11968_eq
  unfold live11968 coloured11968 at child
  try dsimp only [live11970, coloured11970]
  rw [child]
  dsimp only [result11968]
  have child := node11969_eq
  unfold live11969 coloured11969 at child
  try dsimp only [live11970, coloured11970]
  rw [child]
  dsimp only [result11969]
  try dsimp only [colour, result11970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11971_agree : tree11971 = literal11971 := by
  rw [tree11971_def]
  rfl
theorem node11971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11971 live11971 coloured11971 = result11971 := by
  rw [tree11971_def]
  try dsimp only [colour, result11971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11972_agree : tree11972 = literal11972 := by
  rw [tree11972_def, tree11970_agree, tree11971_agree]
  rfl
theorem node11972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11972 live11972 coloured11972 = result11972 := by
  rw [tree11972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11970_eq
  unfold live11970 coloured11970 at child
  try dsimp only [live11972, coloured11972]
  rw [child]
  dsimp only [result11970]
  have child := node11971_eq
  unfold live11971 coloured11971 at child
  try dsimp only [live11972, coloured11972]
  rw [child]
  dsimp only [result11971]
  try dsimp only [colour, result11972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11973_agree : tree11973 = literal11973 := by
  rw [tree11973_def]
  rfl
theorem node11973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11973 live11973 coloured11973 = result11973 := by
  rw [tree11973_def]
  try dsimp only [colour, result11973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11974_agree : tree11974 = literal11974 := by
  rw [tree11974_def, tree11972_agree, tree11973_agree]
  rfl
theorem node11974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11974 live11974 coloured11974 = result11974 := by
  rw [tree11974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11972_eq
  unfold live11972 coloured11972 at child
  try dsimp only [live11974, coloured11974]
  rw [child]
  dsimp only [result11972]
  have child := node11973_eq
  unfold live11973 coloured11973 at child
  try dsimp only [live11974, coloured11974]
  rw [child]
  dsimp only [result11973]
  try dsimp only [colour, result11974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11975_agree : tree11975 = literal11975 := by
  rw [tree11975_def]
  rfl
theorem node11975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11975 live11975 coloured11975 = result11975 := by
  rw [tree11975_def]
  try dsimp only [colour, result11975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11976_agree : tree11976 = literal11976 := by
  rw [tree11976_def, tree11974_agree, tree11975_agree]
  rfl
theorem node11976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11976 live11976 coloured11976 = result11976 := by
  rw [tree11976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11974_eq
  unfold live11974 coloured11974 at child
  try dsimp only [live11976, coloured11976]
  rw [child]
  dsimp only [result11974]
  have child := node11975_eq
  unfold live11975 coloured11975 at child
  try dsimp only [live11976, coloured11976]
  rw [child]
  dsimp only [result11975]
  try dsimp only [colour, result11976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11977_agree : tree11977 = literal11977 := by
  rw [tree11977_def]
  rfl
theorem node11977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11977 live11977 coloured11977 = result11977 := by
  rw [tree11977_def]
  try dsimp only [colour, result11977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11978_agree : tree11978 = literal11978 := by
  rw [tree11978_def, tree11976_agree, tree11977_agree]
  rfl
theorem node11978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11978 live11978 coloured11978 = result11978 := by
  rw [tree11978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11976_eq
  unfold live11976 coloured11976 at child
  try dsimp only [live11978, coloured11978]
  rw [child]
  dsimp only [result11976]
  have child := node11977_eq
  unfold live11977 coloured11977 at child
  try dsimp only [live11978, coloured11978]
  rw [child]
  dsimp only [result11977]
  try dsimp only [colour, result11978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11979_agree : tree11979 = literal11979 := by
  rw [tree11979_def]
  rfl
theorem node11979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11979 live11979 coloured11979 = result11979 := by
  rw [tree11979_def]
  try dsimp only [colour, result11979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11980_agree : tree11980 = literal11980 := by
  rw [tree11980_def, tree11978_agree, tree11979_agree]
  rfl
theorem node11980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11980 live11980 coloured11980 = result11980 := by
  rw [tree11980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11978_eq
  unfold live11978 coloured11978 at child
  try dsimp only [live11980, coloured11980]
  rw [child]
  dsimp only [result11978]
  have child := node11979_eq
  unfold live11979 coloured11979 at child
  try dsimp only [live11980, coloured11980]
  rw [child]
  dsimp only [result11979]
  try dsimp only [colour, result11980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11981_agree : tree11981 = literal11981 := by
  rw [tree11981_def]
  rfl
theorem node11981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11981 live11981 coloured11981 = result11981 := by
  rw [tree11981_def]
  try dsimp only [colour, result11981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11982_agree : tree11982 = literal11982 := by
  rw [tree11982_def, tree11980_agree, tree11981_agree]
  rfl
theorem node11982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11982 live11982 coloured11982 = result11982 := by
  rw [tree11982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11980_eq
  unfold live11980 coloured11980 at child
  try dsimp only [live11982, coloured11982]
  rw [child]
  dsimp only [result11980]
  have child := node11981_eq
  unfold live11981 coloured11981 at child
  try dsimp only [live11982, coloured11982]
  rw [child]
  dsimp only [result11981]
  try dsimp only [colour, result11982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11983_agree : tree11983 = literal11983 := by
  rw [tree11983_def]
  rfl
theorem node11983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11983 live11983 coloured11983 = result11983 := by
  rw [tree11983_def]
  try dsimp only [colour, result11983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11984_agree : tree11984 = literal11984 := by
  rw [tree11984_def, tree11982_agree, tree11983_agree]
  rfl
theorem node11984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11984 live11984 coloured11984 = result11984 := by
  rw [tree11984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11982_eq
  unfold live11982 coloured11982 at child
  try dsimp only [live11984, coloured11984]
  rw [child]
  dsimp only [result11982]
  have child := node11983_eq
  unfold live11983 coloured11983 at child
  try dsimp only [live11984, coloured11984]
  rw [child]
  dsimp only [result11983]
  try dsimp only [colour, result11984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11985_agree : tree11985 = literal11985 := by
  rw [tree11985_def]
  rfl
theorem node11985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11985 live11985 coloured11985 = result11985 := by
  rw [tree11985_def]
  try dsimp only [colour, result11985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11986_agree : tree11986 = literal11986 := by
  rw [tree11986_def, tree11984_agree, tree11985_agree]
  rfl
theorem node11986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11986 live11986 coloured11986 = result11986 := by
  rw [tree11986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11984_eq
  unfold live11984 coloured11984 at child
  try dsimp only [live11986, coloured11986]
  rw [child]
  dsimp only [result11984]
  have child := node11985_eq
  unfold live11985 coloured11985 at child
  try dsimp only [live11986, coloured11986]
  rw [child]
  dsimp only [result11985]
  try dsimp only [colour, result11986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11987_agree : tree11987 = literal11987 := by
  rw [tree11987_def]
  rfl
theorem node11987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11987 live11987 coloured11987 = result11987 := by
  rw [tree11987_def]
  try dsimp only [colour, result11987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11988_agree : tree11988 = literal11988 := by
  rw [tree11988_def, tree11986_agree, tree11987_agree]
  rfl
theorem node11988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11988 live11988 coloured11988 = result11988 := by
  rw [tree11988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11986_eq
  unfold live11986 coloured11986 at child
  try dsimp only [live11988, coloured11988]
  rw [child]
  dsimp only [result11986]
  have child := node11987_eq
  unfold live11987 coloured11987 at child
  try dsimp only [live11988, coloured11988]
  rw [child]
  dsimp only [result11987]
  try dsimp only [colour, result11988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11989_agree : tree11989 = literal11989 := by
  rw [tree11989_def]
  rfl
theorem node11989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11989 live11989 coloured11989 = result11989 := by
  rw [tree11989_def]
  try dsimp only [colour, result11989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11990_agree : tree11990 = literal11990 := by
  rw [tree11990_def, tree11988_agree, tree11989_agree]
  rfl
theorem node11990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11990 live11990 coloured11990 = result11990 := by
  rw [tree11990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11988_eq
  unfold live11988 coloured11988 at child
  try dsimp only [live11990, coloured11990]
  rw [child]
  dsimp only [result11988]
  have child := node11989_eq
  unfold live11989 coloured11989 at child
  try dsimp only [live11990, coloured11990]
  rw [child]
  dsimp only [result11989]
  try dsimp only [colour, result11990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11991_agree : tree11991 = literal11991 := by
  rw [tree11991_def]
  rfl
theorem node11991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11991 live11991 coloured11991 = result11991 := by
  rw [tree11991_def]
  try dsimp only [colour, result11991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11992_agree : tree11992 = literal11992 := by
  rw [tree11992_def, tree11990_agree, tree11991_agree]
  rfl
theorem node11992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11992 live11992 coloured11992 = result11992 := by
  rw [tree11992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11990_eq
  unfold live11990 coloured11990 at child
  try dsimp only [live11992, coloured11992]
  rw [child]
  dsimp only [result11990]
  have child := node11991_eq
  unfold live11991 coloured11991 at child
  try dsimp only [live11992, coloured11992]
  rw [child]
  dsimp only [result11991]
  try dsimp only [colour, result11992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11993_agree : tree11993 = literal11993 := by
  rw [tree11993_def]
  rfl
theorem node11993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11993 live11993 coloured11993 = result11993 := by
  rw [tree11993_def]
  try dsimp only [colour, result11993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11994_agree : tree11994 = literal11994 := by
  rw [tree11994_def]
  rfl
theorem node11994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11994 live11994 coloured11994 = result11994 := by
  rw [tree11994_def]
  try dsimp only [colour, result11994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11995_agree : tree11995 = literal11995 := by
  rw [tree11995_def, tree11993_agree, tree11994_agree]
  rfl
theorem node11995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11995 live11995 coloured11995 = result11995 := by
  rw [tree11995_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11993_eq
  unfold live11993 coloured11993 at child
  try dsimp only [live11995, coloured11995]
  rw [child]
  dsimp only [result11993]
  have child := node11994_eq
  unfold live11994 coloured11994 at child
  try dsimp only [live11995, coloured11995]
  rw [child]
  dsimp only [result11994]
  try dsimp only [colour, result11995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11996_agree : tree11996 = literal11996 := by
  rw [tree11996_def]
  rfl
theorem node11996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11996 live11996 coloured11996 = result11996 := by
  rw [tree11996_def]
  try dsimp only [colour, result11996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11997_agree : tree11997 = literal11997 := by
  rw [tree11997_def]
  rfl
theorem node11997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11997 live11997 coloured11997 = result11997 := by
  rw [tree11997_def]
  try dsimp only [colour, result11997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11998_agree : tree11998 = literal11998 := by
  rw [tree11998_def, tree11996_agree, tree11997_agree]
  rfl
theorem node11998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11998 live11998 coloured11998 = result11998 := by
  rw [tree11998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11996_eq
  unfold live11996 coloured11996 at child
  try dsimp only [live11998, coloured11998]
  rw [child]
  dsimp only [result11996]
  have child := node11997_eq
  unfold live11997 coloured11997 at child
  try dsimp only [live11998, coloured11998]
  rw [child]
  dsimp only [result11997]
  try dsimp only [colour, result11998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11999_agree : tree11999 = literal11999 := by
  rw [tree11999_def]
  rfl
theorem node11999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11999 live11999 coloured11999 = result11999 := by
  rw [tree11999_def]
  try dsimp only [colour, result11999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
