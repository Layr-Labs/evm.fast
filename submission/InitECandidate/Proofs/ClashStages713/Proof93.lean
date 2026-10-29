import InitECandidate.Proofs.ClashStages713.Proof92
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree8928_agree : tree8928 = literal8928 := by
  rw [tree8928_def, tree8926_agree, tree8927_agree]
  rfl
theorem node8928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8928 live8928 coloured8928 = result8928 := by
  rw [tree8928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8926_eq
  unfold live8926 coloured8926 at child
  try dsimp only [live8928, coloured8928]
  rw [child]
  dsimp only [result8926]
  have child := node8927_eq
  unfold live8927 coloured8927 at child
  try dsimp only [live8928, coloured8928]
  rw [child]
  dsimp only [result8927]
  try dsimp only [colour, result8928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8929_agree : tree8929 = literal8929 := by
  rw [tree8929_def]
  rfl
theorem node8929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8929 live8929 coloured8929 = result8929 := by
  rw [tree8929_def]
  try dsimp only [colour, result8929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8930_agree : tree8930 = literal8930 := by
  rw [tree8930_def, tree8928_agree, tree8929_agree]
  rfl
theorem node8930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8930 live8930 coloured8930 = result8930 := by
  rw [tree8930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8928_eq
  unfold live8928 coloured8928 at child
  try dsimp only [live8930, coloured8930]
  rw [child]
  dsimp only [result8928]
  have child := node8929_eq
  unfold live8929 coloured8929 at child
  try dsimp only [live8930, coloured8930]
  rw [child]
  dsimp only [result8929]
  try dsimp only [colour, result8930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8931_agree : tree8931 = literal8931 := by
  rw [tree8931_def]
  rfl
theorem node8931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8931 live8931 coloured8931 = result8931 := by
  rw [tree8931_def]
  try dsimp only [colour, result8931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8932_agree : tree8932 = literal8932 := by
  rw [tree8932_def, tree8930_agree, tree8931_agree]
  rfl
theorem node8932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8932 live8932 coloured8932 = result8932 := by
  rw [tree8932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8930_eq
  unfold live8930 coloured8930 at child
  try dsimp only [live8932, coloured8932]
  rw [child]
  dsimp only [result8930]
  have child := node8931_eq
  unfold live8931 coloured8931 at child
  try dsimp only [live8932, coloured8932]
  rw [child]
  dsimp only [result8931]
  try dsimp only [colour, result8932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8933_agree : tree8933 = literal8933 := by
  rw [tree8933_def]
  rfl
theorem node8933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8933 live8933 coloured8933 = result8933 := by
  rw [tree8933_def]
  try dsimp only [colour, result8933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8934_agree : tree8934 = literal8934 := by
  rw [tree8934_def, tree8932_agree, tree8933_agree]
  rfl
theorem node8934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8934 live8934 coloured8934 = result8934 := by
  rw [tree8934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8932_eq
  unfold live8932 coloured8932 at child
  try dsimp only [live8934, coloured8934]
  rw [child]
  dsimp only [result8932]
  have child := node8933_eq
  unfold live8933 coloured8933 at child
  try dsimp only [live8934, coloured8934]
  rw [child]
  dsimp only [result8933]
  try dsimp only [colour, result8934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8935_agree : tree8935 = literal8935 := by
  rw [tree8935_def]
  rfl
theorem node8935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8935 live8935 coloured8935 = result8935 := by
  rw [tree8935_def]
  try dsimp only [colour, result8935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8936_agree : tree8936 = literal8936 := by
  rw [tree8936_def, tree8934_agree, tree8935_agree]
  rfl
theorem node8936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8936 live8936 coloured8936 = result8936 := by
  rw [tree8936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8934_eq
  unfold live8934 coloured8934 at child
  try dsimp only [live8936, coloured8936]
  rw [child]
  dsimp only [result8934]
  have child := node8935_eq
  unfold live8935 coloured8935 at child
  try dsimp only [live8936, coloured8936]
  rw [child]
  dsimp only [result8935]
  try dsimp only [colour, result8936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8937_agree : tree8937 = literal8937 := by
  rw [tree8937_def]
  rfl
theorem node8937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8937 live8937 coloured8937 = result8937 := by
  rw [tree8937_def]
  try dsimp only [colour, result8937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8938_agree : tree8938 = literal8938 := by
  rw [tree8938_def, tree8936_agree, tree8937_agree]
  rfl
theorem node8938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8938 live8938 coloured8938 = result8938 := by
  rw [tree8938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8936_eq
  unfold live8936 coloured8936 at child
  try dsimp only [live8938, coloured8938]
  rw [child]
  dsimp only [result8936]
  have child := node8937_eq
  unfold live8937 coloured8937 at child
  try dsimp only [live8938, coloured8938]
  rw [child]
  dsimp only [result8937]
  try dsimp only [colour, result8938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8939_agree : tree8939 = literal8939 := by
  rw [tree8939_def]
  rfl
theorem node8939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8939 live8939 coloured8939 = result8939 := by
  rw [tree8939_def]
  try dsimp only [colour, result8939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8940_agree : tree8940 = literal8940 := by
  rw [tree8940_def, tree8938_agree, tree8939_agree]
  rfl
theorem node8940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8940 live8940 coloured8940 = result8940 := by
  rw [tree8940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8938_eq
  unfold live8938 coloured8938 at child
  try dsimp only [live8940, coloured8940]
  rw [child]
  dsimp only [result8938]
  have child := node8939_eq
  unfold live8939 coloured8939 at child
  try dsimp only [live8940, coloured8940]
  rw [child]
  dsimp only [result8939]
  try dsimp only [colour, result8940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8941_agree : tree8941 = literal8941 := by
  rw [tree8941_def]
  rfl
theorem node8941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8941 live8941 coloured8941 = result8941 := by
  rw [tree8941_def]
  try dsimp only [colour, result8941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8942_agree : tree8942 = literal8942 := by
  rw [tree8942_def, tree8940_agree, tree8941_agree]
  rfl
theorem node8942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8942 live8942 coloured8942 = result8942 := by
  rw [tree8942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8940_eq
  unfold live8940 coloured8940 at child
  try dsimp only [live8942, coloured8942]
  rw [child]
  dsimp only [result8940]
  have child := node8941_eq
  unfold live8941 coloured8941 at child
  try dsimp only [live8942, coloured8942]
  rw [child]
  dsimp only [result8941]
  try dsimp only [colour, result8942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8943_agree : tree8943 = literal8943 := by
  rw [tree8943_def]
  rfl
theorem node8943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8943 live8943 coloured8943 = result8943 := by
  rw [tree8943_def]
  try dsimp only [colour, result8943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8944_agree : tree8944 = literal8944 := by
  rw [tree8944_def, tree8942_agree, tree8943_agree]
  rfl
theorem node8944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8944 live8944 coloured8944 = result8944 := by
  rw [tree8944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8942_eq
  unfold live8942 coloured8942 at child
  try dsimp only [live8944, coloured8944]
  rw [child]
  dsimp only [result8942]
  have child := node8943_eq
  unfold live8943 coloured8943 at child
  try dsimp only [live8944, coloured8944]
  rw [child]
  dsimp only [result8943]
  try dsimp only [colour, result8944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8945_agree : tree8945 = literal8945 := by
  rw [tree8945_def]
  rfl
theorem node8945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8945 live8945 coloured8945 = result8945 := by
  rw [tree8945_def]
  try dsimp only [colour, result8945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8946_agree : tree8946 = literal8946 := by
  rw [tree8946_def, tree8944_agree, tree8945_agree]
  rfl
theorem node8946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8946 live8946 coloured8946 = result8946 := by
  rw [tree8946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8944_eq
  unfold live8944 coloured8944 at child
  try dsimp only [live8946, coloured8946]
  rw [child]
  dsimp only [result8944]
  have child := node8945_eq
  unfold live8945 coloured8945 at child
  try dsimp only [live8946, coloured8946]
  rw [child]
  dsimp only [result8945]
  try dsimp only [colour, result8946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8947_agree : tree8947 = literal8947 := by
  rw [tree8947_def]
  rfl
theorem node8947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8947 live8947 coloured8947 = result8947 := by
  rw [tree8947_def]
  try dsimp only [colour, result8947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8948_agree : tree8948 = literal8948 := by
  rw [tree8948_def, tree8946_agree, tree8947_agree]
  rfl
theorem node8948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8948 live8948 coloured8948 = result8948 := by
  rw [tree8948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8946_eq
  unfold live8946 coloured8946 at child
  try dsimp only [live8948, coloured8948]
  rw [child]
  dsimp only [result8946]
  have child := node8947_eq
  unfold live8947 coloured8947 at child
  try dsimp only [live8948, coloured8948]
  rw [child]
  dsimp only [result8947]
  try dsimp only [colour, result8948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8949_agree : tree8949 = literal8949 := by
  rw [tree8949_def]
  rfl
theorem node8949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8949 live8949 coloured8949 = result8949 := by
  rw [tree8949_def]
  try dsimp only [colour, result8949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8950_agree : tree8950 = literal8950 := by
  rw [tree8950_def, tree8948_agree, tree8949_agree]
  rfl
theorem node8950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8950 live8950 coloured8950 = result8950 := by
  rw [tree8950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8948_eq
  unfold live8948 coloured8948 at child
  try dsimp only [live8950, coloured8950]
  rw [child]
  dsimp only [result8948]
  have child := node8949_eq
  unfold live8949 coloured8949 at child
  try dsimp only [live8950, coloured8950]
  rw [child]
  dsimp only [result8949]
  try dsimp only [colour, result8950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8951_agree : tree8951 = literal8951 := by
  rw [tree8951_def]
  rfl
theorem node8951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8951 live8951 coloured8951 = result8951 := by
  rw [tree8951_def]
  try dsimp only [colour, result8951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8952_agree : tree8952 = literal8952 := by
  rw [tree8952_def, tree8950_agree, tree8951_agree]
  rfl
theorem node8952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8952 live8952 coloured8952 = result8952 := by
  rw [tree8952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8950_eq
  unfold live8950 coloured8950 at child
  try dsimp only [live8952, coloured8952]
  rw [child]
  dsimp only [result8950]
  have child := node8951_eq
  unfold live8951 coloured8951 at child
  try dsimp only [live8952, coloured8952]
  rw [child]
  dsimp only [result8951]
  try dsimp only [colour, result8952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8953_agree : tree8953 = literal8953 := by
  rw [tree8953_def]
  rfl
theorem node8953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8953 live8953 coloured8953 = result8953 := by
  rw [tree8953_def]
  try dsimp only [colour, result8953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8954_agree : tree8954 = literal8954 := by
  rw [tree8954_def, tree8952_agree, tree8953_agree]
  rfl
theorem node8954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8954 live8954 coloured8954 = result8954 := by
  rw [tree8954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8952_eq
  unfold live8952 coloured8952 at child
  try dsimp only [live8954, coloured8954]
  rw [child]
  dsimp only [result8952]
  have child := node8953_eq
  unfold live8953 coloured8953 at child
  try dsimp only [live8954, coloured8954]
  rw [child]
  dsimp only [result8953]
  try dsimp only [colour, result8954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8955_agree : tree8955 = literal8955 := by
  rw [tree8955_def]
  rfl
theorem node8955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8955 live8955 coloured8955 = result8955 := by
  rw [tree8955_def]
  try dsimp only [colour, result8955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8956_agree : tree8956 = literal8956 := by
  rw [tree8956_def, tree8954_agree, tree8955_agree]
  rfl
theorem node8956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8956 live8956 coloured8956 = result8956 := by
  rw [tree8956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8954_eq
  unfold live8954 coloured8954 at child
  try dsimp only [live8956, coloured8956]
  rw [child]
  dsimp only [result8954]
  have child := node8955_eq
  unfold live8955 coloured8955 at child
  try dsimp only [live8956, coloured8956]
  rw [child]
  dsimp only [result8955]
  try dsimp only [colour, result8956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8957_agree : tree8957 = literal8957 := by
  rw [tree8957_def]
  rfl
theorem node8957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8957 live8957 coloured8957 = result8957 := by
  rw [tree8957_def]
  try dsimp only [colour, result8957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8958_agree : tree8958 = literal8958 := by
  rw [tree8958_def, tree8956_agree, tree8957_agree]
  rfl
theorem node8958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8958 live8958 coloured8958 = result8958 := by
  rw [tree8958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8956_eq
  unfold live8956 coloured8956 at child
  try dsimp only [live8958, coloured8958]
  rw [child]
  dsimp only [result8956]
  have child := node8957_eq
  unfold live8957 coloured8957 at child
  try dsimp only [live8958, coloured8958]
  rw [child]
  dsimp only [result8957]
  try dsimp only [colour, result8958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8959_agree : tree8959 = literal8959 := by
  rw [tree8959_def]
  rfl
theorem node8959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8959 live8959 coloured8959 = result8959 := by
  rw [tree8959_def]
  try dsimp only [colour, result8959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8960_agree : tree8960 = literal8960 := by
  rw [tree8960_def, tree8958_agree, tree8959_agree]
  rfl
theorem node8960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8960 live8960 coloured8960 = result8960 := by
  rw [tree8960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8958_eq
  unfold live8958 coloured8958 at child
  try dsimp only [live8960, coloured8960]
  rw [child]
  dsimp only [result8958]
  have child := node8959_eq
  unfold live8959 coloured8959 at child
  try dsimp only [live8960, coloured8960]
  rw [child]
  dsimp only [result8959]
  try dsimp only [colour, result8960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8961_agree : tree8961 = literal8961 := by
  rw [tree8961_def]
  rfl
theorem node8961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8961 live8961 coloured8961 = result8961 := by
  rw [tree8961_def]
  try dsimp only [colour, result8961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8962_agree : tree8962 = literal8962 := by
  rw [tree8962_def, tree8960_agree, tree8961_agree]
  rfl
theorem node8962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8962 live8962 coloured8962 = result8962 := by
  rw [tree8962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8960_eq
  unfold live8960 coloured8960 at child
  try dsimp only [live8962, coloured8962]
  rw [child]
  dsimp only [result8960]
  have child := node8961_eq
  unfold live8961 coloured8961 at child
  try dsimp only [live8962, coloured8962]
  rw [child]
  dsimp only [result8961]
  try dsimp only [colour, result8962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8963_agree : tree8963 = literal8963 := by
  rw [tree8963_def]
  rfl
theorem node8963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8963 live8963 coloured8963 = result8963 := by
  rw [tree8963_def]
  try dsimp only [colour, result8963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8964_agree : tree8964 = literal8964 := by
  rw [tree8964_def, tree8962_agree, tree8963_agree]
  rfl
theorem node8964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8964 live8964 coloured8964 = result8964 := by
  rw [tree8964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8962_eq
  unfold live8962 coloured8962 at child
  try dsimp only [live8964, coloured8964]
  rw [child]
  dsimp only [result8962]
  have child := node8963_eq
  unfold live8963 coloured8963 at child
  try dsimp only [live8964, coloured8964]
  rw [child]
  dsimp only [result8963]
  try dsimp only [colour, result8964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8965_agree : tree8965 = literal8965 := by
  rw [tree8965_def]
  rfl
theorem node8965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8965 live8965 coloured8965 = result8965 := by
  rw [tree8965_def]
  try dsimp only [colour, result8965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8966_agree : tree8966 = literal8966 := by
  rw [tree8966_def, tree8964_agree, tree8965_agree]
  rfl
theorem node8966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8966 live8966 coloured8966 = result8966 := by
  rw [tree8966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8964_eq
  unfold live8964 coloured8964 at child
  try dsimp only [live8966, coloured8966]
  rw [child]
  dsimp only [result8964]
  have child := node8965_eq
  unfold live8965 coloured8965 at child
  try dsimp only [live8966, coloured8966]
  rw [child]
  dsimp only [result8965]
  try dsimp only [colour, result8966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8967_agree : tree8967 = literal8967 := by
  rw [tree8967_def]
  rfl
theorem node8967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8967 live8967 coloured8967 = result8967 := by
  rw [tree8967_def]
  try dsimp only [colour, result8967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8968_agree : tree8968 = literal8968 := by
  rw [tree8968_def, tree8966_agree, tree8967_agree]
  rfl
theorem node8968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8968 live8968 coloured8968 = result8968 := by
  rw [tree8968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8966_eq
  unfold live8966 coloured8966 at child
  try dsimp only [live8968, coloured8968]
  rw [child]
  dsimp only [result8966]
  have child := node8967_eq
  unfold live8967 coloured8967 at child
  try dsimp only [live8968, coloured8968]
  rw [child]
  dsimp only [result8967]
  try dsimp only [colour, result8968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8969_agree : tree8969 = literal8969 := by
  rw [tree8969_def]
  rfl
theorem node8969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8969 live8969 coloured8969 = result8969 := by
  rw [tree8969_def]
  try dsimp only [colour, result8969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8970_agree : tree8970 = literal8970 := by
  rw [tree8970_def, tree8968_agree, tree8969_agree]
  rfl
theorem node8970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8970 live8970 coloured8970 = result8970 := by
  rw [tree8970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8968_eq
  unfold live8968 coloured8968 at child
  try dsimp only [live8970, coloured8970]
  rw [child]
  dsimp only [result8968]
  have child := node8969_eq
  unfold live8969 coloured8969 at child
  try dsimp only [live8970, coloured8970]
  rw [child]
  dsimp only [result8969]
  try dsimp only [colour, result8970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8971_agree : tree8971 = literal8971 := by
  rw [tree8971_def]
  rfl
theorem node8971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8971 live8971 coloured8971 = result8971 := by
  rw [tree8971_def]
  try dsimp only [colour, result8971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8972_agree : tree8972 = literal8972 := by
  rw [tree8972_def, tree8970_agree, tree8971_agree]
  rfl
theorem node8972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8972 live8972 coloured8972 = result8972 := by
  rw [tree8972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8970_eq
  unfold live8970 coloured8970 at child
  try dsimp only [live8972, coloured8972]
  rw [child]
  dsimp only [result8970]
  have child := node8971_eq
  unfold live8971 coloured8971 at child
  try dsimp only [live8972, coloured8972]
  rw [child]
  dsimp only [result8971]
  try dsimp only [colour, result8972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8973_agree : tree8973 = literal8973 := by
  rw [tree8973_def]
  rfl
theorem node8973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8973 live8973 coloured8973 = result8973 := by
  rw [tree8973_def]
  try dsimp only [colour, result8973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8974_agree : tree8974 = literal8974 := by
  rw [tree8974_def, tree8972_agree, tree8973_agree]
  rfl
theorem node8974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8974 live8974 coloured8974 = result8974 := by
  rw [tree8974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8972_eq
  unfold live8972 coloured8972 at child
  try dsimp only [live8974, coloured8974]
  rw [child]
  dsimp only [result8972]
  have child := node8973_eq
  unfold live8973 coloured8973 at child
  try dsimp only [live8974, coloured8974]
  rw [child]
  dsimp only [result8973]
  try dsimp only [colour, result8974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8975_agree : tree8975 = literal8975 := by
  rw [tree8975_def]
  rfl
theorem node8975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8975 live8975 coloured8975 = result8975 := by
  rw [tree8975_def]
  try dsimp only [colour, result8975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8976_agree : tree8976 = literal8976 := by
  rw [tree8976_def, tree8974_agree, tree8975_agree]
  rfl
theorem node8976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8976 live8976 coloured8976 = result8976 := by
  rw [tree8976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8974_eq
  unfold live8974 coloured8974 at child
  try dsimp only [live8976, coloured8976]
  rw [child]
  dsimp only [result8974]
  have child := node8975_eq
  unfold live8975 coloured8975 at child
  try dsimp only [live8976, coloured8976]
  rw [child]
  dsimp only [result8975]
  try dsimp only [colour, result8976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8977_agree : tree8977 = literal8977 := by
  rw [tree8977_def]
  rfl
theorem node8977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8977 live8977 coloured8977 = result8977 := by
  rw [tree8977_def]
  try dsimp only [colour, result8977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8978_agree : tree8978 = literal8978 := by
  rw [tree8978_def, tree8976_agree, tree8977_agree]
  rfl
theorem node8978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8978 live8978 coloured8978 = result8978 := by
  rw [tree8978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8976_eq
  unfold live8976 coloured8976 at child
  try dsimp only [live8978, coloured8978]
  rw [child]
  dsimp only [result8976]
  have child := node8977_eq
  unfold live8977 coloured8977 at child
  try dsimp only [live8978, coloured8978]
  rw [child]
  dsimp only [result8977]
  try dsimp only [colour, result8978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8979_agree : tree8979 = literal8979 := by
  rw [tree8979_def]
  rfl
theorem node8979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8979 live8979 coloured8979 = result8979 := by
  rw [tree8979_def]
  try dsimp only [colour, result8979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8980_agree : tree8980 = literal8980 := by
  rw [tree8980_def, tree8978_agree, tree8979_agree]
  rfl
theorem node8980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8980 live8980 coloured8980 = result8980 := by
  rw [tree8980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8978_eq
  unfold live8978 coloured8978 at child
  try dsimp only [live8980, coloured8980]
  rw [child]
  dsimp only [result8978]
  have child := node8979_eq
  unfold live8979 coloured8979 at child
  try dsimp only [live8980, coloured8980]
  rw [child]
  dsimp only [result8979]
  try dsimp only [colour, result8980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8981_agree : tree8981 = literal8981 := by
  rw [tree8981_def]
  rfl
theorem node8981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8981 live8981 coloured8981 = result8981 := by
  rw [tree8981_def]
  try dsimp only [colour, result8981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8982_agree : tree8982 = literal8982 := by
  rw [tree8982_def, tree8980_agree, tree8981_agree]
  rfl
theorem node8982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8982 live8982 coloured8982 = result8982 := by
  rw [tree8982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8980_eq
  unfold live8980 coloured8980 at child
  try dsimp only [live8982, coloured8982]
  rw [child]
  dsimp only [result8980]
  have child := node8981_eq
  unfold live8981 coloured8981 at child
  try dsimp only [live8982, coloured8982]
  rw [child]
  dsimp only [result8981]
  try dsimp only [colour, result8982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8983_agree : tree8983 = literal8983 := by
  rw [tree8983_def]
  rfl
theorem node8983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8983 live8983 coloured8983 = result8983 := by
  rw [tree8983_def]
  try dsimp only [colour, result8983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8984_agree : tree8984 = literal8984 := by
  rw [tree8984_def, tree8982_agree, tree8983_agree]
  rfl
theorem node8984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8984 live8984 coloured8984 = result8984 := by
  rw [tree8984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8982_eq
  unfold live8982 coloured8982 at child
  try dsimp only [live8984, coloured8984]
  rw [child]
  dsimp only [result8982]
  have child := node8983_eq
  unfold live8983 coloured8983 at child
  try dsimp only [live8984, coloured8984]
  rw [child]
  dsimp only [result8983]
  try dsimp only [colour, result8984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8985_agree : tree8985 = literal8985 := by
  rw [tree8985_def]
  rfl
theorem node8985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8985 live8985 coloured8985 = result8985 := by
  rw [tree8985_def]
  try dsimp only [colour, result8985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8986_agree : tree8986 = literal8986 := by
  rw [tree8986_def, tree8984_agree, tree8985_agree]
  rfl
theorem node8986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8986 live8986 coloured8986 = result8986 := by
  rw [tree8986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8984_eq
  unfold live8984 coloured8984 at child
  try dsimp only [live8986, coloured8986]
  rw [child]
  dsimp only [result8984]
  have child := node8985_eq
  unfold live8985 coloured8985 at child
  try dsimp only [live8986, coloured8986]
  rw [child]
  dsimp only [result8985]
  try dsimp only [colour, result8986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8987_agree : tree8987 = literal8987 := by
  rw [tree8987_def]
  rfl
theorem node8987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8987 live8987 coloured8987 = result8987 := by
  rw [tree8987_def]
  try dsimp only [colour, result8987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8988_agree : tree8988 = literal8988 := by
  rw [tree8988_def, tree8986_agree, tree8987_agree]
  rfl
theorem node8988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8988 live8988 coloured8988 = result8988 := by
  rw [tree8988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8986_eq
  unfold live8986 coloured8986 at child
  try dsimp only [live8988, coloured8988]
  rw [child]
  dsimp only [result8986]
  have child := node8987_eq
  unfold live8987 coloured8987 at child
  try dsimp only [live8988, coloured8988]
  rw [child]
  dsimp only [result8987]
  try dsimp only [colour, result8988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8989_agree : tree8989 = literal8989 := by
  rw [tree8989_def]
  rfl
theorem node8989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8989 live8989 coloured8989 = result8989 := by
  rw [tree8989_def]
  try dsimp only [colour, result8989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8990_agree : tree8990 = literal8990 := by
  rw [tree8990_def, tree8988_agree, tree8989_agree]
  rfl
theorem node8990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8990 live8990 coloured8990 = result8990 := by
  rw [tree8990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8988_eq
  unfold live8988 coloured8988 at child
  try dsimp only [live8990, coloured8990]
  rw [child]
  dsimp only [result8988]
  have child := node8989_eq
  unfold live8989 coloured8989 at child
  try dsimp only [live8990, coloured8990]
  rw [child]
  dsimp only [result8989]
  try dsimp only [colour, result8990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8991_agree : tree8991 = literal8991 := by
  rw [tree8991_def]
  rfl
theorem node8991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8991 live8991 coloured8991 = result8991 := by
  rw [tree8991_def]
  try dsimp only [colour, result8991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8992_agree : tree8992 = literal8992 := by
  rw [tree8992_def, tree8990_agree, tree8991_agree]
  rfl
theorem node8992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8992 live8992 coloured8992 = result8992 := by
  rw [tree8992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8990_eq
  unfold live8990 coloured8990 at child
  try dsimp only [live8992, coloured8992]
  rw [child]
  dsimp only [result8990]
  have child := node8991_eq
  unfold live8991 coloured8991 at child
  try dsimp only [live8992, coloured8992]
  rw [child]
  dsimp only [result8991]
  try dsimp only [colour, result8992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8993_agree : tree8993 = literal8993 := by
  rw [tree8993_def]
  rfl
theorem node8993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8993 live8993 coloured8993 = result8993 := by
  rw [tree8993_def]
  try dsimp only [colour, result8993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8994_agree : tree8994 = literal8994 := by
  rw [tree8994_def, tree8992_agree, tree8993_agree]
  rfl
theorem node8994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8994 live8994 coloured8994 = result8994 := by
  rw [tree8994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8992_eq
  unfold live8992 coloured8992 at child
  try dsimp only [live8994, coloured8994]
  rw [child]
  dsimp only [result8992]
  have child := node8993_eq
  unfold live8993 coloured8993 at child
  try dsimp only [live8994, coloured8994]
  rw [child]
  dsimp only [result8993]
  try dsimp only [colour, result8994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8995_agree : tree8995 = literal8995 := by
  rw [tree8995_def]
  rfl
theorem node8995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8995 live8995 coloured8995 = result8995 := by
  rw [tree8995_def]
  try dsimp only [colour, result8995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8996_agree : tree8996 = literal8996 := by
  rw [tree8996_def, tree8994_agree, tree8995_agree]
  rfl
theorem node8996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8996 live8996 coloured8996 = result8996 := by
  rw [tree8996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8994_eq
  unfold live8994 coloured8994 at child
  try dsimp only [live8996, coloured8996]
  rw [child]
  dsimp only [result8994]
  have child := node8995_eq
  unfold live8995 coloured8995 at child
  try dsimp only [live8996, coloured8996]
  rw [child]
  dsimp only [result8995]
  try dsimp only [colour, result8996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8997_agree : tree8997 = literal8997 := by
  rw [tree8997_def]
  rfl
theorem node8997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8997 live8997 coloured8997 = result8997 := by
  rw [tree8997_def]
  try dsimp only [colour, result8997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8998_agree : tree8998 = literal8998 := by
  rw [tree8998_def, tree8996_agree, tree8997_agree]
  rfl
theorem node8998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8998 live8998 coloured8998 = result8998 := by
  rw [tree8998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8996_eq
  unfold live8996 coloured8996 at child
  try dsimp only [live8998, coloured8998]
  rw [child]
  dsimp only [result8996]
  have child := node8997_eq
  unfold live8997 coloured8997 at child
  try dsimp only [live8998, coloured8998]
  rw [child]
  dsimp only [result8997]
  try dsimp only [colour, result8998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8999_agree : tree8999 = literal8999 := by
  rw [tree8999_def]
  rfl
theorem node8999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8999 live8999 coloured8999 = result8999 := by
  rw [tree8999_def]
  try dsimp only [colour, result8999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9000_agree : tree9000 = literal9000 := by
  rw [tree9000_def, tree8998_agree, tree8999_agree]
  rfl
theorem node9000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9000 live9000 coloured9000 = result9000 := by
  rw [tree9000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8998_eq
  unfold live8998 coloured8998 at child
  try dsimp only [live9000, coloured9000]
  rw [child]
  dsimp only [result8998]
  have child := node8999_eq
  unfold live8999 coloured8999 at child
  try dsimp only [live9000, coloured9000]
  rw [child]
  dsimp only [result8999]
  try dsimp only [colour, result9000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9001_agree : tree9001 = literal9001 := by
  rw [tree9001_def]
  rfl
theorem node9001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9001 live9001 coloured9001 = result9001 := by
  rw [tree9001_def]
  try dsimp only [colour, result9001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9002_agree : tree9002 = literal9002 := by
  rw [tree9002_def, tree9000_agree, tree9001_agree]
  rfl
theorem node9002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9002 live9002 coloured9002 = result9002 := by
  rw [tree9002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9000_eq
  unfold live9000 coloured9000 at child
  try dsimp only [live9002, coloured9002]
  rw [child]
  dsimp only [result9000]
  have child := node9001_eq
  unfold live9001 coloured9001 at child
  try dsimp only [live9002, coloured9002]
  rw [child]
  dsimp only [result9001]
  try dsimp only [colour, result9002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9003_agree : tree9003 = literal9003 := by
  rw [tree9003_def]
  rfl
theorem node9003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9003 live9003 coloured9003 = result9003 := by
  rw [tree9003_def]
  try dsimp only [colour, result9003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9004_agree : tree9004 = literal9004 := by
  rw [tree9004_def, tree9002_agree, tree9003_agree]
  rfl
theorem node9004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9004 live9004 coloured9004 = result9004 := by
  rw [tree9004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9002_eq
  unfold live9002 coloured9002 at child
  try dsimp only [live9004, coloured9004]
  rw [child]
  dsimp only [result9002]
  have child := node9003_eq
  unfold live9003 coloured9003 at child
  try dsimp only [live9004, coloured9004]
  rw [child]
  dsimp only [result9003]
  try dsimp only [colour, result9004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9005_agree : tree9005 = literal9005 := by
  rw [tree9005_def]
  rfl
theorem node9005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9005 live9005 coloured9005 = result9005 := by
  rw [tree9005_def]
  try dsimp only [colour, result9005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9006_agree : tree9006 = literal9006 := by
  rw [tree9006_def, tree9004_agree, tree9005_agree]
  rfl
theorem node9006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9006 live9006 coloured9006 = result9006 := by
  rw [tree9006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9004_eq
  unfold live9004 coloured9004 at child
  try dsimp only [live9006, coloured9006]
  rw [child]
  dsimp only [result9004]
  have child := node9005_eq
  unfold live9005 coloured9005 at child
  try dsimp only [live9006, coloured9006]
  rw [child]
  dsimp only [result9005]
  try dsimp only [colour, result9006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9007_agree : tree9007 = literal9007 := by
  rw [tree9007_def]
  rfl
theorem node9007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9007 live9007 coloured9007 = result9007 := by
  rw [tree9007_def]
  try dsimp only [colour, result9007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9008_agree : tree9008 = literal9008 := by
  rw [tree9008_def, tree9006_agree, tree9007_agree]
  rfl
theorem node9008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9008 live9008 coloured9008 = result9008 := by
  rw [tree9008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9006_eq
  unfold live9006 coloured9006 at child
  try dsimp only [live9008, coloured9008]
  rw [child]
  dsimp only [result9006]
  have child := node9007_eq
  unfold live9007 coloured9007 at child
  try dsimp only [live9008, coloured9008]
  rw [child]
  dsimp only [result9007]
  try dsimp only [colour, result9008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9009_agree : tree9009 = literal9009 := by
  rw [tree9009_def]
  rfl
theorem node9009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9009 live9009 coloured9009 = result9009 := by
  rw [tree9009_def]
  try dsimp only [colour, result9009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9010_agree : tree9010 = literal9010 := by
  rw [tree9010_def, tree9008_agree, tree9009_agree]
  rfl
theorem node9010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9010 live9010 coloured9010 = result9010 := by
  rw [tree9010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9008_eq
  unfold live9008 coloured9008 at child
  try dsimp only [live9010, coloured9010]
  rw [child]
  dsimp only [result9008]
  have child := node9009_eq
  unfold live9009 coloured9009 at child
  try dsimp only [live9010, coloured9010]
  rw [child]
  dsimp only [result9009]
  try dsimp only [colour, result9010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9011_agree : tree9011 = literal9011 := by
  rw [tree9011_def]
  rfl
theorem node9011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9011 live9011 coloured9011 = result9011 := by
  rw [tree9011_def]
  try dsimp only [colour, result9011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9012_agree : tree9012 = literal9012 := by
  rw [tree9012_def, tree9010_agree, tree9011_agree]
  rfl
theorem node9012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9012 live9012 coloured9012 = result9012 := by
  rw [tree9012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9010_eq
  unfold live9010 coloured9010 at child
  try dsimp only [live9012, coloured9012]
  rw [child]
  dsimp only [result9010]
  have child := node9011_eq
  unfold live9011 coloured9011 at child
  try dsimp only [live9012, coloured9012]
  rw [child]
  dsimp only [result9011]
  try dsimp only [colour, result9012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9013_agree : tree9013 = literal9013 := by
  rw [tree9013_def]
  rfl
theorem node9013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9013 live9013 coloured9013 = result9013 := by
  rw [tree9013_def]
  try dsimp only [colour, result9013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9014_agree : tree9014 = literal9014 := by
  rw [tree9014_def, tree9012_agree, tree9013_agree]
  rfl
theorem node9014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9014 live9014 coloured9014 = result9014 := by
  rw [tree9014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9012_eq
  unfold live9012 coloured9012 at child
  try dsimp only [live9014, coloured9014]
  rw [child]
  dsimp only [result9012]
  have child := node9013_eq
  unfold live9013 coloured9013 at child
  try dsimp only [live9014, coloured9014]
  rw [child]
  dsimp only [result9013]
  try dsimp only [colour, result9014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9015_agree : tree9015 = literal9015 := by
  rw [tree9015_def]
  rfl
theorem node9015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9015 live9015 coloured9015 = result9015 := by
  rw [tree9015_def]
  try dsimp only [colour, result9015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9016_agree : tree9016 = literal9016 := by
  rw [tree9016_def, tree9014_agree, tree9015_agree]
  rfl
theorem node9016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9016 live9016 coloured9016 = result9016 := by
  rw [tree9016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9014_eq
  unfold live9014 coloured9014 at child
  try dsimp only [live9016, coloured9016]
  rw [child]
  dsimp only [result9014]
  have child := node9015_eq
  unfold live9015 coloured9015 at child
  try dsimp only [live9016, coloured9016]
  rw [child]
  dsimp only [result9015]
  try dsimp only [colour, result9016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9017_agree : tree9017 = literal9017 := by
  rw [tree9017_def]
  rfl
theorem node9017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9017 live9017 coloured9017 = result9017 := by
  rw [tree9017_def]
  try dsimp only [colour, result9017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9018_agree : tree9018 = literal9018 := by
  rw [tree9018_def, tree9016_agree, tree9017_agree]
  rfl
theorem node9018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9018 live9018 coloured9018 = result9018 := by
  rw [tree9018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9016_eq
  unfold live9016 coloured9016 at child
  try dsimp only [live9018, coloured9018]
  rw [child]
  dsimp only [result9016]
  have child := node9017_eq
  unfold live9017 coloured9017 at child
  try dsimp only [live9018, coloured9018]
  rw [child]
  dsimp only [result9017]
  try dsimp only [colour, result9018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9019_agree : tree9019 = literal9019 := by
  rw [tree9019_def]
  rfl
theorem node9019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9019 live9019 coloured9019 = result9019 := by
  rw [tree9019_def]
  try dsimp only [colour, result9019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9020_agree : tree9020 = literal9020 := by
  rw [tree9020_def, tree9018_agree, tree9019_agree]
  rfl
theorem node9020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9020 live9020 coloured9020 = result9020 := by
  rw [tree9020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9018_eq
  unfold live9018 coloured9018 at child
  try dsimp only [live9020, coloured9020]
  rw [child]
  dsimp only [result9018]
  have child := node9019_eq
  unfold live9019 coloured9019 at child
  try dsimp only [live9020, coloured9020]
  rw [child]
  dsimp only [result9019]
  try dsimp only [colour, result9020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9021_agree : tree9021 = literal9021 := by
  rw [tree9021_def]
  rfl
theorem node9021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9021 live9021 coloured9021 = result9021 := by
  rw [tree9021_def]
  try dsimp only [colour, result9021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9022_agree : tree9022 = literal9022 := by
  rw [tree9022_def, tree9020_agree, tree9021_agree]
  rfl
theorem node9022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9022 live9022 coloured9022 = result9022 := by
  rw [tree9022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9020_eq
  unfold live9020 coloured9020 at child
  try dsimp only [live9022, coloured9022]
  rw [child]
  dsimp only [result9020]
  have child := node9021_eq
  unfold live9021 coloured9021 at child
  try dsimp only [live9022, coloured9022]
  rw [child]
  dsimp only [result9021]
  try dsimp only [colour, result9022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9023_agree : tree9023 = literal9023 := by
  rw [tree9023_def]
  rfl
theorem node9023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9023 live9023 coloured9023 = result9023 := by
  rw [tree9023_def]
  try dsimp only [colour, result9023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
