import InitECandidate.Proofs.ClashStages713.Proof71
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree6912_agree : tree6912 = literal6912 := by
  rw [tree6912_def, tree6910_agree, tree6911_agree]
  rfl
theorem node6912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6912 live6912 coloured6912 = result6912 := by
  rw [tree6912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6910_eq
  unfold live6910 coloured6910 at child
  try dsimp only [live6912, coloured6912]
  rw [child]
  dsimp only [result6910]
  have child := node6911_eq
  unfold live6911 coloured6911 at child
  try dsimp only [live6912, coloured6912]
  rw [child]
  dsimp only [result6911]
  try dsimp only [colour, result6912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6913_agree : tree6913 = literal6913 := by
  rw [tree6913_def]
  rfl
theorem node6913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6913 live6913 coloured6913 = result6913 := by
  rw [tree6913_def]
  try dsimp only [colour, result6913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6914_agree : tree6914 = literal6914 := by
  rw [tree6914_def, tree6912_agree, tree6913_agree]
  rfl
theorem node6914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6914 live6914 coloured6914 = result6914 := by
  rw [tree6914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6912_eq
  unfold live6912 coloured6912 at child
  try dsimp only [live6914, coloured6914]
  rw [child]
  dsimp only [result6912]
  have child := node6913_eq
  unfold live6913 coloured6913 at child
  try dsimp only [live6914, coloured6914]
  rw [child]
  dsimp only [result6913]
  try dsimp only [colour, result6914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6915_agree : tree6915 = literal6915 := by
  rw [tree6915_def]
  rfl
theorem node6915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6915 live6915 coloured6915 = result6915 := by
  rw [tree6915_def]
  try dsimp only [colour, result6915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6916_agree : tree6916 = literal6916 := by
  rw [tree6916_def, tree6914_agree, tree6915_agree]
  rfl
theorem node6916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6916 live6916 coloured6916 = result6916 := by
  rw [tree6916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6914_eq
  unfold live6914 coloured6914 at child
  try dsimp only [live6916, coloured6916]
  rw [child]
  dsimp only [result6914]
  have child := node6915_eq
  unfold live6915 coloured6915 at child
  try dsimp only [live6916, coloured6916]
  rw [child]
  dsimp only [result6915]
  try dsimp only [colour, result6916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6917_agree : tree6917 = literal6917 := by
  rw [tree6917_def]
  rfl
theorem node6917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6917 live6917 coloured6917 = result6917 := by
  rw [tree6917_def]
  try dsimp only [colour, result6917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6918_agree : tree6918 = literal6918 := by
  rw [tree6918_def, tree6916_agree, tree6917_agree]
  rfl
theorem node6918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6918 live6918 coloured6918 = result6918 := by
  rw [tree6918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6916_eq
  unfold live6916 coloured6916 at child
  try dsimp only [live6918, coloured6918]
  rw [child]
  dsimp only [result6916]
  have child := node6917_eq
  unfold live6917 coloured6917 at child
  try dsimp only [live6918, coloured6918]
  rw [child]
  dsimp only [result6917]
  try dsimp only [colour, result6918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6919_agree : tree6919 = literal6919 := by
  rw [tree6919_def]
  rfl
theorem node6919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6919 live6919 coloured6919 = result6919 := by
  rw [tree6919_def]
  try dsimp only [colour, result6919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6920_agree : tree6920 = literal6920 := by
  rw [tree6920_def, tree6918_agree, tree6919_agree]
  rfl
theorem node6920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6920 live6920 coloured6920 = result6920 := by
  rw [tree6920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6918_eq
  unfold live6918 coloured6918 at child
  try dsimp only [live6920, coloured6920]
  rw [child]
  dsimp only [result6918]
  have child := node6919_eq
  unfold live6919 coloured6919 at child
  try dsimp only [live6920, coloured6920]
  rw [child]
  dsimp only [result6919]
  try dsimp only [colour, result6920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6921_agree : tree6921 = literal6921 := by
  rw [tree6921_def]
  rfl
theorem node6921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6921 live6921 coloured6921 = result6921 := by
  rw [tree6921_def]
  try dsimp only [colour, result6921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6922_agree : tree6922 = literal6922 := by
  rw [tree6922_def, tree6920_agree, tree6921_agree]
  rfl
theorem node6922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6922 live6922 coloured6922 = result6922 := by
  rw [tree6922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6920_eq
  unfold live6920 coloured6920 at child
  try dsimp only [live6922, coloured6922]
  rw [child]
  dsimp only [result6920]
  have child := node6921_eq
  unfold live6921 coloured6921 at child
  try dsimp only [live6922, coloured6922]
  rw [child]
  dsimp only [result6921]
  try dsimp only [colour, result6922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6923_agree : tree6923 = literal6923 := by
  rw [tree6923_def]
  rfl
theorem node6923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6923 live6923 coloured6923 = result6923 := by
  rw [tree6923_def]
  try dsimp only [colour, result6923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6924_agree : tree6924 = literal6924 := by
  rw [tree6924_def, tree6922_agree, tree6923_agree]
  rfl
theorem node6924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6924 live6924 coloured6924 = result6924 := by
  rw [tree6924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6922_eq
  unfold live6922 coloured6922 at child
  try dsimp only [live6924, coloured6924]
  rw [child]
  dsimp only [result6922]
  have child := node6923_eq
  unfold live6923 coloured6923 at child
  try dsimp only [live6924, coloured6924]
  rw [child]
  dsimp only [result6923]
  try dsimp only [colour, result6924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6925_agree : tree6925 = literal6925 := by
  rw [tree6925_def]
  rfl
theorem node6925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6925 live6925 coloured6925 = result6925 := by
  rw [tree6925_def]
  try dsimp only [colour, result6925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6926_agree : tree6926 = literal6926 := by
  rw [tree6926_def, tree6924_agree, tree6925_agree]
  rfl
theorem node6926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6926 live6926 coloured6926 = result6926 := by
  rw [tree6926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6924_eq
  unfold live6924 coloured6924 at child
  try dsimp only [live6926, coloured6926]
  rw [child]
  dsimp only [result6924]
  have child := node6925_eq
  unfold live6925 coloured6925 at child
  try dsimp only [live6926, coloured6926]
  rw [child]
  dsimp only [result6925]
  try dsimp only [colour, result6926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6927_agree : tree6927 = literal6927 := by
  rw [tree6927_def]
  rfl
theorem node6927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6927 live6927 coloured6927 = result6927 := by
  rw [tree6927_def]
  try dsimp only [colour, result6927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6928_agree : tree6928 = literal6928 := by
  rw [tree6928_def, tree6926_agree, tree6927_agree]
  rfl
theorem node6928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6928 live6928 coloured6928 = result6928 := by
  rw [tree6928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6926_eq
  unfold live6926 coloured6926 at child
  try dsimp only [live6928, coloured6928]
  rw [child]
  dsimp only [result6926]
  have child := node6927_eq
  unfold live6927 coloured6927 at child
  try dsimp only [live6928, coloured6928]
  rw [child]
  dsimp only [result6927]
  try dsimp only [colour, result6928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6929_agree : tree6929 = literal6929 := by
  rw [tree6929_def]
  rfl
theorem node6929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6929 live6929 coloured6929 = result6929 := by
  rw [tree6929_def]
  try dsimp only [colour, result6929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6930_agree : tree6930 = literal6930 := by
  rw [tree6930_def, tree6928_agree, tree6929_agree]
  rfl
theorem node6930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6930 live6930 coloured6930 = result6930 := by
  rw [tree6930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6928_eq
  unfold live6928 coloured6928 at child
  try dsimp only [live6930, coloured6930]
  rw [child]
  dsimp only [result6928]
  have child := node6929_eq
  unfold live6929 coloured6929 at child
  try dsimp only [live6930, coloured6930]
  rw [child]
  dsimp only [result6929]
  try dsimp only [colour, result6930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6931_agree : tree6931 = literal6931 := by
  rw [tree6931_def]
  rfl
theorem node6931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6931 live6931 coloured6931 = result6931 := by
  rw [tree6931_def]
  try dsimp only [colour, result6931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6932_agree : tree6932 = literal6932 := by
  rw [tree6932_def, tree6930_agree, tree6931_agree]
  rfl
theorem node6932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6932 live6932 coloured6932 = result6932 := by
  rw [tree6932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6930_eq
  unfold live6930 coloured6930 at child
  try dsimp only [live6932, coloured6932]
  rw [child]
  dsimp only [result6930]
  have child := node6931_eq
  unfold live6931 coloured6931 at child
  try dsimp only [live6932, coloured6932]
  rw [child]
  dsimp only [result6931]
  try dsimp only [colour, result6932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6933_agree : tree6933 = literal6933 := by
  rw [tree6933_def]
  rfl
theorem node6933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6933 live6933 coloured6933 = result6933 := by
  rw [tree6933_def]
  try dsimp only [colour, result6933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6934_agree : tree6934 = literal6934 := by
  rw [tree6934_def, tree6932_agree, tree6933_agree]
  rfl
theorem node6934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6934 live6934 coloured6934 = result6934 := by
  rw [tree6934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6932_eq
  unfold live6932 coloured6932 at child
  try dsimp only [live6934, coloured6934]
  rw [child]
  dsimp only [result6932]
  have child := node6933_eq
  unfold live6933 coloured6933 at child
  try dsimp only [live6934, coloured6934]
  rw [child]
  dsimp only [result6933]
  try dsimp only [colour, result6934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6935_agree : tree6935 = literal6935 := by
  rw [tree6935_def]
  rfl
theorem node6935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6935 live6935 coloured6935 = result6935 := by
  rw [tree6935_def]
  try dsimp only [colour, result6935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6936_agree : tree6936 = literal6936 := by
  rw [tree6936_def, tree6934_agree, tree6935_agree]
  rfl
theorem node6936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6936 live6936 coloured6936 = result6936 := by
  rw [tree6936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6934_eq
  unfold live6934 coloured6934 at child
  try dsimp only [live6936, coloured6936]
  rw [child]
  dsimp only [result6934]
  have child := node6935_eq
  unfold live6935 coloured6935 at child
  try dsimp only [live6936, coloured6936]
  rw [child]
  dsimp only [result6935]
  try dsimp only [colour, result6936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6937_agree : tree6937 = literal6937 := by
  rw [tree6937_def]
  rfl
theorem node6937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6937 live6937 coloured6937 = result6937 := by
  rw [tree6937_def]
  try dsimp only [colour, result6937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6938_agree : tree6938 = literal6938 := by
  rw [tree6938_def, tree6936_agree, tree6937_agree]
  rfl
theorem node6938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6938 live6938 coloured6938 = result6938 := by
  rw [tree6938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6936_eq
  unfold live6936 coloured6936 at child
  try dsimp only [live6938, coloured6938]
  rw [child]
  dsimp only [result6936]
  have child := node6937_eq
  unfold live6937 coloured6937 at child
  try dsimp only [live6938, coloured6938]
  rw [child]
  dsimp only [result6937]
  try dsimp only [colour, result6938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6939_agree : tree6939 = literal6939 := by
  rw [tree6939_def]
  rfl
theorem node6939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6939 live6939 coloured6939 = result6939 := by
  rw [tree6939_def]
  try dsimp only [colour, result6939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6940_agree : tree6940 = literal6940 := by
  rw [tree6940_def, tree6938_agree, tree6939_agree]
  rfl
theorem node6940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6940 live6940 coloured6940 = result6940 := by
  rw [tree6940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6938_eq
  unfold live6938 coloured6938 at child
  try dsimp only [live6940, coloured6940]
  rw [child]
  dsimp only [result6938]
  have child := node6939_eq
  unfold live6939 coloured6939 at child
  try dsimp only [live6940, coloured6940]
  rw [child]
  dsimp only [result6939]
  try dsimp only [colour, result6940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6941_agree : tree6941 = literal6941 := by
  rw [tree6941_def]
  rfl
theorem node6941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6941 live6941 coloured6941 = result6941 := by
  rw [tree6941_def]
  try dsimp only [colour, result6941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6942_agree : tree6942 = literal6942 := by
  rw [tree6942_def, tree6940_agree, tree6941_agree]
  rfl
theorem node6942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6942 live6942 coloured6942 = result6942 := by
  rw [tree6942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6940_eq
  unfold live6940 coloured6940 at child
  try dsimp only [live6942, coloured6942]
  rw [child]
  dsimp only [result6940]
  have child := node6941_eq
  unfold live6941 coloured6941 at child
  try dsimp only [live6942, coloured6942]
  rw [child]
  dsimp only [result6941]
  try dsimp only [colour, result6942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6943_agree : tree6943 = literal6943 := by
  rw [tree6943_def]
  rfl
theorem node6943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6943 live6943 coloured6943 = result6943 := by
  rw [tree6943_def]
  try dsimp only [colour, result6943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6944_agree : tree6944 = literal6944 := by
  rw [tree6944_def, tree6942_agree, tree6943_agree]
  rfl
theorem node6944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6944 live6944 coloured6944 = result6944 := by
  rw [tree6944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6942_eq
  unfold live6942 coloured6942 at child
  try dsimp only [live6944, coloured6944]
  rw [child]
  dsimp only [result6942]
  have child := node6943_eq
  unfold live6943 coloured6943 at child
  try dsimp only [live6944, coloured6944]
  rw [child]
  dsimp only [result6943]
  try dsimp only [colour, result6944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6945_agree : tree6945 = literal6945 := by
  rw [tree6945_def]
  rfl
theorem node6945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6945 live6945 coloured6945 = result6945 := by
  rw [tree6945_def]
  try dsimp only [colour, result6945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6946_agree : tree6946 = literal6946 := by
  rw [tree6946_def, tree6944_agree, tree6945_agree]
  rfl
theorem node6946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6946 live6946 coloured6946 = result6946 := by
  rw [tree6946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6944_eq
  unfold live6944 coloured6944 at child
  try dsimp only [live6946, coloured6946]
  rw [child]
  dsimp only [result6944]
  have child := node6945_eq
  unfold live6945 coloured6945 at child
  try dsimp only [live6946, coloured6946]
  rw [child]
  dsimp only [result6945]
  try dsimp only [colour, result6946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6947_agree : tree6947 = literal6947 := by
  rw [tree6947_def]
  rfl
theorem node6947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6947 live6947 coloured6947 = result6947 := by
  rw [tree6947_def]
  try dsimp only [colour, result6947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6948_agree : tree6948 = literal6948 := by
  rw [tree6948_def, tree6946_agree, tree6947_agree]
  rfl
theorem node6948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6948 live6948 coloured6948 = result6948 := by
  rw [tree6948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6946_eq
  unfold live6946 coloured6946 at child
  try dsimp only [live6948, coloured6948]
  rw [child]
  dsimp only [result6946]
  have child := node6947_eq
  unfold live6947 coloured6947 at child
  try dsimp only [live6948, coloured6948]
  rw [child]
  dsimp only [result6947]
  try dsimp only [colour, result6948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6949_agree : tree6949 = literal6949 := by
  rw [tree6949_def]
  rfl
theorem node6949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6949 live6949 coloured6949 = result6949 := by
  rw [tree6949_def]
  try dsimp only [colour, result6949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6950_agree : tree6950 = literal6950 := by
  rw [tree6950_def, tree6948_agree, tree6949_agree]
  rfl
theorem node6950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6950 live6950 coloured6950 = result6950 := by
  rw [tree6950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6948_eq
  unfold live6948 coloured6948 at child
  try dsimp only [live6950, coloured6950]
  rw [child]
  dsimp only [result6948]
  have child := node6949_eq
  unfold live6949 coloured6949 at child
  try dsimp only [live6950, coloured6950]
  rw [child]
  dsimp only [result6949]
  try dsimp only [colour, result6950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6951_agree : tree6951 = literal6951 := by
  rw [tree6951_def]
  rfl
theorem node6951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6951 live6951 coloured6951 = result6951 := by
  rw [tree6951_def]
  try dsimp only [colour, result6951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6952_agree : tree6952 = literal6952 := by
  rw [tree6952_def, tree6950_agree, tree6951_agree]
  rfl
theorem node6952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6952 live6952 coloured6952 = result6952 := by
  rw [tree6952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6950_eq
  unfold live6950 coloured6950 at child
  try dsimp only [live6952, coloured6952]
  rw [child]
  dsimp only [result6950]
  have child := node6951_eq
  unfold live6951 coloured6951 at child
  try dsimp only [live6952, coloured6952]
  rw [child]
  dsimp only [result6951]
  try dsimp only [colour, result6952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6953_agree : tree6953 = literal6953 := by
  rw [tree6953_def]
  rfl
theorem node6953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6953 live6953 coloured6953 = result6953 := by
  rw [tree6953_def]
  try dsimp only [colour, result6953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6954_agree : tree6954 = literal6954 := by
  rw [tree6954_def, tree6952_agree, tree6953_agree]
  rfl
theorem node6954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6954 live6954 coloured6954 = result6954 := by
  rw [tree6954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6952_eq
  unfold live6952 coloured6952 at child
  try dsimp only [live6954, coloured6954]
  rw [child]
  dsimp only [result6952]
  have child := node6953_eq
  unfold live6953 coloured6953 at child
  try dsimp only [live6954, coloured6954]
  rw [child]
  dsimp only [result6953]
  try dsimp only [colour, result6954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6955_agree : tree6955 = literal6955 := by
  rw [tree6955_def]
  rfl
theorem node6955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6955 live6955 coloured6955 = result6955 := by
  rw [tree6955_def]
  try dsimp only [colour, result6955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6956_agree : tree6956 = literal6956 := by
  rw [tree6956_def, tree6954_agree, tree6955_agree]
  rfl
theorem node6956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6956 live6956 coloured6956 = result6956 := by
  rw [tree6956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6954_eq
  unfold live6954 coloured6954 at child
  try dsimp only [live6956, coloured6956]
  rw [child]
  dsimp only [result6954]
  have child := node6955_eq
  unfold live6955 coloured6955 at child
  try dsimp only [live6956, coloured6956]
  rw [child]
  dsimp only [result6955]
  try dsimp only [colour, result6956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6957_agree : tree6957 = literal6957 := by
  rw [tree6957_def]
  rfl
theorem node6957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6957 live6957 coloured6957 = result6957 := by
  rw [tree6957_def]
  try dsimp only [colour, result6957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6958_agree : tree6958 = literal6958 := by
  rw [tree6958_def, tree6956_agree, tree6957_agree]
  rfl
theorem node6958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6958 live6958 coloured6958 = result6958 := by
  rw [tree6958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6956_eq
  unfold live6956 coloured6956 at child
  try dsimp only [live6958, coloured6958]
  rw [child]
  dsimp only [result6956]
  have child := node6957_eq
  unfold live6957 coloured6957 at child
  try dsimp only [live6958, coloured6958]
  rw [child]
  dsimp only [result6957]
  try dsimp only [colour, result6958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6959_agree : tree6959 = literal6959 := by
  rw [tree6959_def]
  rfl
theorem node6959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6959 live6959 coloured6959 = result6959 := by
  rw [tree6959_def]
  try dsimp only [colour, result6959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6960_agree : tree6960 = literal6960 := by
  rw [tree6960_def, tree6958_agree, tree6959_agree]
  rfl
theorem node6960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6960 live6960 coloured6960 = result6960 := by
  rw [tree6960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6958_eq
  unfold live6958 coloured6958 at child
  try dsimp only [live6960, coloured6960]
  rw [child]
  dsimp only [result6958]
  have child := node6959_eq
  unfold live6959 coloured6959 at child
  try dsimp only [live6960, coloured6960]
  rw [child]
  dsimp only [result6959]
  try dsimp only [colour, result6960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6961_agree : tree6961 = literal6961 := by
  rw [tree6961_def]
  rfl
theorem node6961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6961 live6961 coloured6961 = result6961 := by
  rw [tree6961_def]
  try dsimp only [colour, result6961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6962_agree : tree6962 = literal6962 := by
  rw [tree6962_def, tree6960_agree, tree6961_agree]
  rfl
theorem node6962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6962 live6962 coloured6962 = result6962 := by
  rw [tree6962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6960_eq
  unfold live6960 coloured6960 at child
  try dsimp only [live6962, coloured6962]
  rw [child]
  dsimp only [result6960]
  have child := node6961_eq
  unfold live6961 coloured6961 at child
  try dsimp only [live6962, coloured6962]
  rw [child]
  dsimp only [result6961]
  try dsimp only [colour, result6962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6963_agree : tree6963 = literal6963 := by
  rw [tree6963_def]
  rfl
theorem node6963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6963 live6963 coloured6963 = result6963 := by
  rw [tree6963_def]
  try dsimp only [colour, result6963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6964_agree : tree6964 = literal6964 := by
  rw [tree6964_def, tree6962_agree, tree6963_agree]
  rfl
theorem node6964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6964 live6964 coloured6964 = result6964 := by
  rw [tree6964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6962_eq
  unfold live6962 coloured6962 at child
  try dsimp only [live6964, coloured6964]
  rw [child]
  dsimp only [result6962]
  have child := node6963_eq
  unfold live6963 coloured6963 at child
  try dsimp only [live6964, coloured6964]
  rw [child]
  dsimp only [result6963]
  try dsimp only [colour, result6964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6965_agree : tree6965 = literal6965 := by
  rw [tree6965_def]
  rfl
theorem node6965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6965 live6965 coloured6965 = result6965 := by
  rw [tree6965_def]
  try dsimp only [colour, result6965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6966_agree : tree6966 = literal6966 := by
  rw [tree6966_def, tree6964_agree, tree6965_agree]
  rfl
theorem node6966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6966 live6966 coloured6966 = result6966 := by
  rw [tree6966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6964_eq
  unfold live6964 coloured6964 at child
  try dsimp only [live6966, coloured6966]
  rw [child]
  dsimp only [result6964]
  have child := node6965_eq
  unfold live6965 coloured6965 at child
  try dsimp only [live6966, coloured6966]
  rw [child]
  dsimp only [result6965]
  try dsimp only [colour, result6966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6967_agree : tree6967 = literal6967 := by
  rw [tree6967_def]
  rfl
theorem node6967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6967 live6967 coloured6967 = result6967 := by
  rw [tree6967_def]
  try dsimp only [colour, result6967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6968_agree : tree6968 = literal6968 := by
  rw [tree6968_def, tree6966_agree, tree6967_agree]
  rfl
theorem node6968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6968 live6968 coloured6968 = result6968 := by
  rw [tree6968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6966_eq
  unfold live6966 coloured6966 at child
  try dsimp only [live6968, coloured6968]
  rw [child]
  dsimp only [result6966]
  have child := node6967_eq
  unfold live6967 coloured6967 at child
  try dsimp only [live6968, coloured6968]
  rw [child]
  dsimp only [result6967]
  try dsimp only [colour, result6968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6969_agree : tree6969 = literal6969 := by
  rw [tree6969_def]
  rfl
theorem node6969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6969 live6969 coloured6969 = result6969 := by
  rw [tree6969_def]
  try dsimp only [colour, result6969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6970_agree : tree6970 = literal6970 := by
  rw [tree6970_def, tree6968_agree, tree6969_agree]
  rfl
theorem node6970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6970 live6970 coloured6970 = result6970 := by
  rw [tree6970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6968_eq
  unfold live6968 coloured6968 at child
  try dsimp only [live6970, coloured6970]
  rw [child]
  dsimp only [result6968]
  have child := node6969_eq
  unfold live6969 coloured6969 at child
  try dsimp only [live6970, coloured6970]
  rw [child]
  dsimp only [result6969]
  try dsimp only [colour, result6970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6971_agree : tree6971 = literal6971 := by
  rw [tree6971_def]
  rfl
theorem node6971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6971 live6971 coloured6971 = result6971 := by
  rw [tree6971_def]
  try dsimp only [colour, result6971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6972_agree : tree6972 = literal6972 := by
  rw [tree6972_def, tree6970_agree, tree6971_agree]
  rfl
theorem node6972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6972 live6972 coloured6972 = result6972 := by
  rw [tree6972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6970_eq
  unfold live6970 coloured6970 at child
  try dsimp only [live6972, coloured6972]
  rw [child]
  dsimp only [result6970]
  have child := node6971_eq
  unfold live6971 coloured6971 at child
  try dsimp only [live6972, coloured6972]
  rw [child]
  dsimp only [result6971]
  try dsimp only [colour, result6972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6973_agree : tree6973 = literal6973 := by
  rw [tree6973_def]
  rfl
theorem node6973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6973 live6973 coloured6973 = result6973 := by
  rw [tree6973_def]
  try dsimp only [colour, result6973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6974_agree : tree6974 = literal6974 := by
  rw [tree6974_def, tree6972_agree, tree6973_agree]
  rfl
theorem node6974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6974 live6974 coloured6974 = result6974 := by
  rw [tree6974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6972_eq
  unfold live6972 coloured6972 at child
  try dsimp only [live6974, coloured6974]
  rw [child]
  dsimp only [result6972]
  have child := node6973_eq
  unfold live6973 coloured6973 at child
  try dsimp only [live6974, coloured6974]
  rw [child]
  dsimp only [result6973]
  try dsimp only [colour, result6974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6975_agree : tree6975 = literal6975 := by
  rw [tree6975_def]
  rfl
theorem node6975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6975 live6975 coloured6975 = result6975 := by
  rw [tree6975_def]
  try dsimp only [colour, result6975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6976_agree : tree6976 = literal6976 := by
  rw [tree6976_def, tree6974_agree, tree6975_agree]
  rfl
theorem node6976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6976 live6976 coloured6976 = result6976 := by
  rw [tree6976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6974_eq
  unfold live6974 coloured6974 at child
  try dsimp only [live6976, coloured6976]
  rw [child]
  dsimp only [result6974]
  have child := node6975_eq
  unfold live6975 coloured6975 at child
  try dsimp only [live6976, coloured6976]
  rw [child]
  dsimp only [result6975]
  try dsimp only [colour, result6976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6977_agree : tree6977 = literal6977 := by
  rw [tree6977_def]
  rfl
theorem node6977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6977 live6977 coloured6977 = result6977 := by
  rw [tree6977_def]
  try dsimp only [colour, result6977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6978_agree : tree6978 = literal6978 := by
  rw [tree6978_def, tree6976_agree, tree6977_agree]
  rfl
theorem node6978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6978 live6978 coloured6978 = result6978 := by
  rw [tree6978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6976_eq
  unfold live6976 coloured6976 at child
  try dsimp only [live6978, coloured6978]
  rw [child]
  dsimp only [result6976]
  have child := node6977_eq
  unfold live6977 coloured6977 at child
  try dsimp only [live6978, coloured6978]
  rw [child]
  dsimp only [result6977]
  try dsimp only [colour, result6978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6979_agree : tree6979 = literal6979 := by
  rw [tree6979_def]
  rfl
theorem node6979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6979 live6979 coloured6979 = result6979 := by
  rw [tree6979_def]
  try dsimp only [colour, result6979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6980_agree : tree6980 = literal6980 := by
  rw [tree6980_def, tree6978_agree, tree6979_agree]
  rfl
theorem node6980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6980 live6980 coloured6980 = result6980 := by
  rw [tree6980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6978_eq
  unfold live6978 coloured6978 at child
  try dsimp only [live6980, coloured6980]
  rw [child]
  dsimp only [result6978]
  have child := node6979_eq
  unfold live6979 coloured6979 at child
  try dsimp only [live6980, coloured6980]
  rw [child]
  dsimp only [result6979]
  try dsimp only [colour, result6980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6981_agree : tree6981 = literal6981 := by
  rw [tree6981_def]
  rfl
theorem node6981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6981 live6981 coloured6981 = result6981 := by
  rw [tree6981_def]
  try dsimp only [colour, result6981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6982_agree : tree6982 = literal6982 := by
  rw [tree6982_def, tree6980_agree, tree6981_agree]
  rfl
theorem node6982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6982 live6982 coloured6982 = result6982 := by
  rw [tree6982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6980_eq
  unfold live6980 coloured6980 at child
  try dsimp only [live6982, coloured6982]
  rw [child]
  dsimp only [result6980]
  have child := node6981_eq
  unfold live6981 coloured6981 at child
  try dsimp only [live6982, coloured6982]
  rw [child]
  dsimp only [result6981]
  try dsimp only [colour, result6982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6983_agree : tree6983 = literal6983 := by
  rw [tree6983_def]
  rfl
theorem node6983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6983 live6983 coloured6983 = result6983 := by
  rw [tree6983_def]
  try dsimp only [colour, result6983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6984_agree : tree6984 = literal6984 := by
  rw [tree6984_def, tree6982_agree, tree6983_agree]
  rfl
theorem node6984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6984 live6984 coloured6984 = result6984 := by
  rw [tree6984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6982_eq
  unfold live6982 coloured6982 at child
  try dsimp only [live6984, coloured6984]
  rw [child]
  dsimp only [result6982]
  have child := node6983_eq
  unfold live6983 coloured6983 at child
  try dsimp only [live6984, coloured6984]
  rw [child]
  dsimp only [result6983]
  try dsimp only [colour, result6984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6985_agree : tree6985 = literal6985 := by
  rw [tree6985_def]
  rfl
theorem node6985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6985 live6985 coloured6985 = result6985 := by
  rw [tree6985_def]
  try dsimp only [colour, result6985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6986_agree : tree6986 = literal6986 := by
  rw [tree6986_def, tree6984_agree, tree6985_agree]
  rfl
theorem node6986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6986 live6986 coloured6986 = result6986 := by
  rw [tree6986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6984_eq
  unfold live6984 coloured6984 at child
  try dsimp only [live6986, coloured6986]
  rw [child]
  dsimp only [result6984]
  have child := node6985_eq
  unfold live6985 coloured6985 at child
  try dsimp only [live6986, coloured6986]
  rw [child]
  dsimp only [result6985]
  try dsimp only [colour, result6986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6987_agree : tree6987 = literal6987 := by
  rw [tree6987_def]
  rfl
theorem node6987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6987 live6987 coloured6987 = result6987 := by
  rw [tree6987_def]
  try dsimp only [colour, result6987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6988_agree : tree6988 = literal6988 := by
  rw [tree6988_def, tree6986_agree, tree6987_agree]
  rfl
theorem node6988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6988 live6988 coloured6988 = result6988 := by
  rw [tree6988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6986_eq
  unfold live6986 coloured6986 at child
  try dsimp only [live6988, coloured6988]
  rw [child]
  dsimp only [result6986]
  have child := node6987_eq
  unfold live6987 coloured6987 at child
  try dsimp only [live6988, coloured6988]
  rw [child]
  dsimp only [result6987]
  try dsimp only [colour, result6988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6989_agree : tree6989 = literal6989 := by
  rw [tree6989_def]
  rfl
theorem node6989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6989 live6989 coloured6989 = result6989 := by
  rw [tree6989_def]
  try dsimp only [colour, result6989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6990_agree : tree6990 = literal6990 := by
  rw [tree6990_def, tree6988_agree, tree6989_agree]
  rfl
theorem node6990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6990 live6990 coloured6990 = result6990 := by
  rw [tree6990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6988_eq
  unfold live6988 coloured6988 at child
  try dsimp only [live6990, coloured6990]
  rw [child]
  dsimp only [result6988]
  have child := node6989_eq
  unfold live6989 coloured6989 at child
  try dsimp only [live6990, coloured6990]
  rw [child]
  dsimp only [result6989]
  try dsimp only [colour, result6990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6991_agree : tree6991 = literal6991 := by
  rw [tree6991_def]
  rfl
theorem node6991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6991 live6991 coloured6991 = result6991 := by
  rw [tree6991_def]
  try dsimp only [colour, result6991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6992_agree : tree6992 = literal6992 := by
  rw [tree6992_def, tree6990_agree, tree6991_agree]
  rfl
theorem node6992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6992 live6992 coloured6992 = result6992 := by
  rw [tree6992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6990_eq
  unfold live6990 coloured6990 at child
  try dsimp only [live6992, coloured6992]
  rw [child]
  dsimp only [result6990]
  have child := node6991_eq
  unfold live6991 coloured6991 at child
  try dsimp only [live6992, coloured6992]
  rw [child]
  dsimp only [result6991]
  try dsimp only [colour, result6992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6993_agree : tree6993 = literal6993 := by
  rw [tree6993_def]
  rfl
theorem node6993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6993 live6993 coloured6993 = result6993 := by
  rw [tree6993_def]
  try dsimp only [colour, result6993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6994_agree : tree6994 = literal6994 := by
  rw [tree6994_def, tree6992_agree, tree6993_agree]
  rfl
theorem node6994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6994 live6994 coloured6994 = result6994 := by
  rw [tree6994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6992_eq
  unfold live6992 coloured6992 at child
  try dsimp only [live6994, coloured6994]
  rw [child]
  dsimp only [result6992]
  have child := node6993_eq
  unfold live6993 coloured6993 at child
  try dsimp only [live6994, coloured6994]
  rw [child]
  dsimp only [result6993]
  try dsimp only [colour, result6994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6995_agree : tree6995 = literal6995 := by
  rw [tree6995_def]
  rfl
theorem node6995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6995 live6995 coloured6995 = result6995 := by
  rw [tree6995_def]
  try dsimp only [colour, result6995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6996_agree : tree6996 = literal6996 := by
  rw [tree6996_def, tree6994_agree, tree6995_agree]
  rfl
theorem node6996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6996 live6996 coloured6996 = result6996 := by
  rw [tree6996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6994_eq
  unfold live6994 coloured6994 at child
  try dsimp only [live6996, coloured6996]
  rw [child]
  dsimp only [result6994]
  have child := node6995_eq
  unfold live6995 coloured6995 at child
  try dsimp only [live6996, coloured6996]
  rw [child]
  dsimp only [result6995]
  try dsimp only [colour, result6996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6997_agree : tree6997 = literal6997 := by
  rw [tree6997_def]
  rfl
theorem node6997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6997 live6997 coloured6997 = result6997 := by
  rw [tree6997_def]
  try dsimp only [colour, result6997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6998_agree : tree6998 = literal6998 := by
  rw [tree6998_def, tree6996_agree, tree6997_agree]
  rfl
theorem node6998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6998 live6998 coloured6998 = result6998 := by
  rw [tree6998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6996_eq
  unfold live6996 coloured6996 at child
  try dsimp only [live6998, coloured6998]
  rw [child]
  dsimp only [result6996]
  have child := node6997_eq
  unfold live6997 coloured6997 at child
  try dsimp only [live6998, coloured6998]
  rw [child]
  dsimp only [result6997]
  try dsimp only [colour, result6998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6999_agree : tree6999 = literal6999 := by
  rw [tree6999_def]
  rfl
theorem node6999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6999 live6999 coloured6999 = result6999 := by
  rw [tree6999_def]
  try dsimp only [colour, result6999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7000_agree : tree7000 = literal7000 := by
  rw [tree7000_def, tree6998_agree, tree6999_agree]
  rfl
theorem node7000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7000 live7000 coloured7000 = result7000 := by
  rw [tree7000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6998_eq
  unfold live6998 coloured6998 at child
  try dsimp only [live7000, coloured7000]
  rw [child]
  dsimp only [result6998]
  have child := node6999_eq
  unfold live6999 coloured6999 at child
  try dsimp only [live7000, coloured7000]
  rw [child]
  dsimp only [result6999]
  try dsimp only [colour, result7000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7001_agree : tree7001 = literal7001 := by
  rw [tree7001_def]
  rfl
theorem node7001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7001 live7001 coloured7001 = result7001 := by
  rw [tree7001_def]
  try dsimp only [colour, result7001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7002_agree : tree7002 = literal7002 := by
  rw [tree7002_def, tree7000_agree, tree7001_agree]
  rfl
theorem node7002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7002 live7002 coloured7002 = result7002 := by
  rw [tree7002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7000_eq
  unfold live7000 coloured7000 at child
  try dsimp only [live7002, coloured7002]
  rw [child]
  dsimp only [result7000]
  have child := node7001_eq
  unfold live7001 coloured7001 at child
  try dsimp only [live7002, coloured7002]
  rw [child]
  dsimp only [result7001]
  try dsimp only [colour, result7002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7003_agree : tree7003 = literal7003 := by
  rw [tree7003_def]
  rfl
theorem node7003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7003 live7003 coloured7003 = result7003 := by
  rw [tree7003_def]
  try dsimp only [colour, result7003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7004_agree : tree7004 = literal7004 := by
  rw [tree7004_def, tree7002_agree, tree7003_agree]
  rfl
theorem node7004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7004 live7004 coloured7004 = result7004 := by
  rw [tree7004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7002_eq
  unfold live7002 coloured7002 at child
  try dsimp only [live7004, coloured7004]
  rw [child]
  dsimp only [result7002]
  have child := node7003_eq
  unfold live7003 coloured7003 at child
  try dsimp only [live7004, coloured7004]
  rw [child]
  dsimp only [result7003]
  try dsimp only [colour, result7004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7005_agree : tree7005 = literal7005 := by
  rw [tree7005_def]
  rfl
theorem node7005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7005 live7005 coloured7005 = result7005 := by
  rw [tree7005_def]
  try dsimp only [colour, result7005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7006_agree : tree7006 = literal7006 := by
  rw [tree7006_def, tree7004_agree, tree7005_agree]
  rfl
theorem node7006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7006 live7006 coloured7006 = result7006 := by
  rw [tree7006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7004_eq
  unfold live7004 coloured7004 at child
  try dsimp only [live7006, coloured7006]
  rw [child]
  dsimp only [result7004]
  have child := node7005_eq
  unfold live7005 coloured7005 at child
  try dsimp only [live7006, coloured7006]
  rw [child]
  dsimp only [result7005]
  try dsimp only [colour, result7006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7007_agree : tree7007 = literal7007 := by
  rw [tree7007_def]
  rfl
theorem node7007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7007 live7007 coloured7007 = result7007 := by
  rw [tree7007_def]
  try dsimp only [colour, result7007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
