import InitECandidate.Proofs.ClashStages713.Proof113
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree10944_agree : tree10944 = literal10944 := by
  rw [tree10944_def, tree10942_agree, tree10943_agree]
  rfl
theorem node10944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10944 live10944 coloured10944 = result10944 := by
  rw [tree10944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10942_eq
  unfold live10942 coloured10942 at child
  try dsimp only [live10944, coloured10944]
  rw [child]
  dsimp only [result10942]
  have child := node10943_eq
  unfold live10943 coloured10943 at child
  try dsimp only [live10944, coloured10944]
  rw [child]
  dsimp only [result10943]
  try dsimp only [colour, result10944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10945_agree : tree10945 = literal10945 := by
  rw [tree10945_def]
  rfl
theorem node10945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10945 live10945 coloured10945 = result10945 := by
  rw [tree10945_def]
  try dsimp only [colour, result10945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10946_agree : tree10946 = literal10946 := by
  rw [tree10946_def, tree10944_agree, tree10945_agree]
  rfl
theorem node10946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10946 live10946 coloured10946 = result10946 := by
  rw [tree10946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10944_eq
  unfold live10944 coloured10944 at child
  try dsimp only [live10946, coloured10946]
  rw [child]
  dsimp only [result10944]
  have child := node10945_eq
  unfold live10945 coloured10945 at child
  try dsimp only [live10946, coloured10946]
  rw [child]
  dsimp only [result10945]
  try dsimp only [colour, result10946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10947_agree : tree10947 = literal10947 := by
  rw [tree10947_def]
  rfl
theorem node10947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10947 live10947 coloured10947 = result10947 := by
  rw [tree10947_def]
  try dsimp only [colour, result10947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10948_agree : tree10948 = literal10948 := by
  rw [tree10948_def, tree10946_agree, tree10947_agree]
  rfl
theorem node10948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10948 live10948 coloured10948 = result10948 := by
  rw [tree10948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10946_eq
  unfold live10946 coloured10946 at child
  try dsimp only [live10948, coloured10948]
  rw [child]
  dsimp only [result10946]
  have child := node10947_eq
  unfold live10947 coloured10947 at child
  try dsimp only [live10948, coloured10948]
  rw [child]
  dsimp only [result10947]
  try dsimp only [colour, result10948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10949_agree : tree10949 = literal10949 := by
  rw [tree10949_def]
  rfl
theorem node10949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10949 live10949 coloured10949 = result10949 := by
  rw [tree10949_def]
  try dsimp only [colour, result10949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10950_agree : tree10950 = literal10950 := by
  rw [tree10950_def, tree10948_agree, tree10949_agree]
  rfl
theorem node10950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10950 live10950 coloured10950 = result10950 := by
  rw [tree10950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10948_eq
  unfold live10948 coloured10948 at child
  try dsimp only [live10950, coloured10950]
  rw [child]
  dsimp only [result10948]
  have child := node10949_eq
  unfold live10949 coloured10949 at child
  try dsimp only [live10950, coloured10950]
  rw [child]
  dsimp only [result10949]
  try dsimp only [colour, result10950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10951_agree : tree10951 = literal10951 := by
  rw [tree10951_def]
  rfl
theorem node10951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10951 live10951 coloured10951 = result10951 := by
  rw [tree10951_def]
  try dsimp only [colour, result10951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10952_agree : tree10952 = literal10952 := by
  rw [tree10952_def, tree10950_agree, tree10951_agree]
  rfl
theorem node10952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10952 live10952 coloured10952 = result10952 := by
  rw [tree10952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10950_eq
  unfold live10950 coloured10950 at child
  try dsimp only [live10952, coloured10952]
  rw [child]
  dsimp only [result10950]
  have child := node10951_eq
  unfold live10951 coloured10951 at child
  try dsimp only [live10952, coloured10952]
  rw [child]
  dsimp only [result10951]
  try dsimp only [colour, result10952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10953_agree : tree10953 = literal10953 := by
  rw [tree10953_def]
  rfl
theorem node10953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10953 live10953 coloured10953 = result10953 := by
  rw [tree10953_def]
  try dsimp only [colour, result10953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10954_agree : tree10954 = literal10954 := by
  rw [tree10954_def, tree10952_agree, tree10953_agree]
  rfl
theorem node10954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10954 live10954 coloured10954 = result10954 := by
  rw [tree10954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10952_eq
  unfold live10952 coloured10952 at child
  try dsimp only [live10954, coloured10954]
  rw [child]
  dsimp only [result10952]
  have child := node10953_eq
  unfold live10953 coloured10953 at child
  try dsimp only [live10954, coloured10954]
  rw [child]
  dsimp only [result10953]
  try dsimp only [colour, result10954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10955_agree : tree10955 = literal10955 := by
  rw [tree10955_def]
  rfl
theorem node10955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10955 live10955 coloured10955 = result10955 := by
  rw [tree10955_def]
  try dsimp only [colour, result10955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10956_agree : tree10956 = literal10956 := by
  rw [tree10956_def, tree10954_agree, tree10955_agree]
  rfl
theorem node10956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10956 live10956 coloured10956 = result10956 := by
  rw [tree10956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10954_eq
  unfold live10954 coloured10954 at child
  try dsimp only [live10956, coloured10956]
  rw [child]
  dsimp only [result10954]
  have child := node10955_eq
  unfold live10955 coloured10955 at child
  try dsimp only [live10956, coloured10956]
  rw [child]
  dsimp only [result10955]
  try dsimp only [colour, result10956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10957_agree : tree10957 = literal10957 := by
  rw [tree10957_def]
  rfl
theorem node10957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10957 live10957 coloured10957 = result10957 := by
  rw [tree10957_def]
  try dsimp only [colour, result10957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10958_agree : tree10958 = literal10958 := by
  rw [tree10958_def, tree10956_agree, tree10957_agree]
  rfl
theorem node10958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10958 live10958 coloured10958 = result10958 := by
  rw [tree10958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10956_eq
  unfold live10956 coloured10956 at child
  try dsimp only [live10958, coloured10958]
  rw [child]
  dsimp only [result10956]
  have child := node10957_eq
  unfold live10957 coloured10957 at child
  try dsimp only [live10958, coloured10958]
  rw [child]
  dsimp only [result10957]
  try dsimp only [colour, result10958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10959_agree : tree10959 = literal10959 := by
  rw [tree10959_def]
  rfl
theorem node10959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10959 live10959 coloured10959 = result10959 := by
  rw [tree10959_def]
  try dsimp only [colour, result10959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10960_agree : tree10960 = literal10960 := by
  rw [tree10960_def, tree10958_agree, tree10959_agree]
  rfl
theorem node10960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10960 live10960 coloured10960 = result10960 := by
  rw [tree10960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10958_eq
  unfold live10958 coloured10958 at child
  try dsimp only [live10960, coloured10960]
  rw [child]
  dsimp only [result10958]
  have child := node10959_eq
  unfold live10959 coloured10959 at child
  try dsimp only [live10960, coloured10960]
  rw [child]
  dsimp only [result10959]
  try dsimp only [colour, result10960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10961_agree : tree10961 = literal10961 := by
  rw [tree10961_def]
  rfl
theorem node10961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10961 live10961 coloured10961 = result10961 := by
  rw [tree10961_def]
  try dsimp only [colour, result10961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10962_agree : tree10962 = literal10962 := by
  rw [tree10962_def, tree10960_agree, tree10961_agree]
  rfl
theorem node10962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10962 live10962 coloured10962 = result10962 := by
  rw [tree10962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10960_eq
  unfold live10960 coloured10960 at child
  try dsimp only [live10962, coloured10962]
  rw [child]
  dsimp only [result10960]
  have child := node10961_eq
  unfold live10961 coloured10961 at child
  try dsimp only [live10962, coloured10962]
  rw [child]
  dsimp only [result10961]
  try dsimp only [colour, result10962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10963_agree : tree10963 = literal10963 := by
  rw [tree10963_def]
  rfl
theorem node10963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10963 live10963 coloured10963 = result10963 := by
  rw [tree10963_def]
  try dsimp only [colour, result10963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10964_agree : tree10964 = literal10964 := by
  rw [tree10964_def, tree10962_agree, tree10963_agree]
  rfl
theorem node10964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10964 live10964 coloured10964 = result10964 := by
  rw [tree10964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10962_eq
  unfold live10962 coloured10962 at child
  try dsimp only [live10964, coloured10964]
  rw [child]
  dsimp only [result10962]
  have child := node10963_eq
  unfold live10963 coloured10963 at child
  try dsimp only [live10964, coloured10964]
  rw [child]
  dsimp only [result10963]
  try dsimp only [colour, result10964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10965_agree : tree10965 = literal10965 := by
  rw [tree10965_def]
  rfl
theorem node10965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10965 live10965 coloured10965 = result10965 := by
  rw [tree10965_def]
  try dsimp only [colour, result10965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10966_agree : tree10966 = literal10966 := by
  rw [tree10966_def, tree10964_agree, tree10965_agree]
  rfl
theorem node10966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10966 live10966 coloured10966 = result10966 := by
  rw [tree10966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10964_eq
  unfold live10964 coloured10964 at child
  try dsimp only [live10966, coloured10966]
  rw [child]
  dsimp only [result10964]
  have child := node10965_eq
  unfold live10965 coloured10965 at child
  try dsimp only [live10966, coloured10966]
  rw [child]
  dsimp only [result10965]
  try dsimp only [colour, result10966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10967_agree : tree10967 = literal10967 := by
  rw [tree10967_def]
  rfl
theorem node10967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10967 live10967 coloured10967 = result10967 := by
  rw [tree10967_def]
  try dsimp only [colour, result10967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10968_agree : tree10968 = literal10968 := by
  rw [tree10968_def, tree10966_agree, tree10967_agree]
  rfl
theorem node10968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10968 live10968 coloured10968 = result10968 := by
  rw [tree10968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10966_eq
  unfold live10966 coloured10966 at child
  try dsimp only [live10968, coloured10968]
  rw [child]
  dsimp only [result10966]
  have child := node10967_eq
  unfold live10967 coloured10967 at child
  try dsimp only [live10968, coloured10968]
  rw [child]
  dsimp only [result10967]
  try dsimp only [colour, result10968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10969_agree : tree10969 = literal10969 := by
  rw [tree10969_def]
  rfl
theorem node10969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10969 live10969 coloured10969 = result10969 := by
  rw [tree10969_def]
  try dsimp only [colour, result10969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10970_agree : tree10970 = literal10970 := by
  rw [tree10970_def, tree10968_agree, tree10969_agree]
  rfl
theorem node10970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10970 live10970 coloured10970 = result10970 := by
  rw [tree10970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10968_eq
  unfold live10968 coloured10968 at child
  try dsimp only [live10970, coloured10970]
  rw [child]
  dsimp only [result10968]
  have child := node10969_eq
  unfold live10969 coloured10969 at child
  try dsimp only [live10970, coloured10970]
  rw [child]
  dsimp only [result10969]
  try dsimp only [colour, result10970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10971_agree : tree10971 = literal10971 := by
  rw [tree10971_def]
  rfl
theorem node10971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10971 live10971 coloured10971 = result10971 := by
  rw [tree10971_def]
  try dsimp only [colour, result10971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10972_agree : tree10972 = literal10972 := by
  rw [tree10972_def, tree10970_agree, tree10971_agree]
  rfl
theorem node10972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10972 live10972 coloured10972 = result10972 := by
  rw [tree10972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10970_eq
  unfold live10970 coloured10970 at child
  try dsimp only [live10972, coloured10972]
  rw [child]
  dsimp only [result10970]
  have child := node10971_eq
  unfold live10971 coloured10971 at child
  try dsimp only [live10972, coloured10972]
  rw [child]
  dsimp only [result10971]
  try dsimp only [colour, result10972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10973_agree : tree10973 = literal10973 := by
  rw [tree10973_def]
  rfl
theorem node10973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10973 live10973 coloured10973 = result10973 := by
  rw [tree10973_def]
  try dsimp only [colour, result10973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10974_agree : tree10974 = literal10974 := by
  rw [tree10974_def, tree10972_agree, tree10973_agree]
  rfl
theorem node10974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10974 live10974 coloured10974 = result10974 := by
  rw [tree10974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10972_eq
  unfold live10972 coloured10972 at child
  try dsimp only [live10974, coloured10974]
  rw [child]
  dsimp only [result10972]
  have child := node10973_eq
  unfold live10973 coloured10973 at child
  try dsimp only [live10974, coloured10974]
  rw [child]
  dsimp only [result10973]
  try dsimp only [colour, result10974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10975_agree : tree10975 = literal10975 := by
  rw [tree10975_def]
  rfl
theorem node10975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10975 live10975 coloured10975 = result10975 := by
  rw [tree10975_def]
  try dsimp only [colour, result10975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10976_agree : tree10976 = literal10976 := by
  rw [tree10976_def, tree10974_agree, tree10975_agree]
  rfl
theorem node10976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10976 live10976 coloured10976 = result10976 := by
  rw [tree10976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10974_eq
  unfold live10974 coloured10974 at child
  try dsimp only [live10976, coloured10976]
  rw [child]
  dsimp only [result10974]
  have child := node10975_eq
  unfold live10975 coloured10975 at child
  try dsimp only [live10976, coloured10976]
  rw [child]
  dsimp only [result10975]
  try dsimp only [colour, result10976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10977_agree : tree10977 = literal10977 := by
  rw [tree10977_def]
  rfl
theorem node10977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10977 live10977 coloured10977 = result10977 := by
  rw [tree10977_def]
  try dsimp only [colour, result10977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10978_agree : tree10978 = literal10978 := by
  rw [tree10978_def, tree10976_agree, tree10977_agree]
  rfl
theorem node10978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10978 live10978 coloured10978 = result10978 := by
  rw [tree10978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10976_eq
  unfold live10976 coloured10976 at child
  try dsimp only [live10978, coloured10978]
  rw [child]
  dsimp only [result10976]
  have child := node10977_eq
  unfold live10977 coloured10977 at child
  try dsimp only [live10978, coloured10978]
  rw [child]
  dsimp only [result10977]
  try dsimp only [colour, result10978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10979_agree : tree10979 = literal10979 := by
  rw [tree10979_def]
  rfl
theorem node10979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10979 live10979 coloured10979 = result10979 := by
  rw [tree10979_def]
  try dsimp only [colour, result10979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10980_agree : tree10980 = literal10980 := by
  rw [tree10980_def, tree10978_agree, tree10979_agree]
  rfl
theorem node10980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10980 live10980 coloured10980 = result10980 := by
  rw [tree10980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10978_eq
  unfold live10978 coloured10978 at child
  try dsimp only [live10980, coloured10980]
  rw [child]
  dsimp only [result10978]
  have child := node10979_eq
  unfold live10979 coloured10979 at child
  try dsimp only [live10980, coloured10980]
  rw [child]
  dsimp only [result10979]
  try dsimp only [colour, result10980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10981_agree : tree10981 = literal10981 := by
  rw [tree10981_def]
  rfl
theorem node10981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10981 live10981 coloured10981 = result10981 := by
  rw [tree10981_def]
  try dsimp only [colour, result10981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10982_agree : tree10982 = literal10982 := by
  rw [tree10982_def, tree10980_agree, tree10981_agree]
  rfl
theorem node10982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10982 live10982 coloured10982 = result10982 := by
  rw [tree10982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10980_eq
  unfold live10980 coloured10980 at child
  try dsimp only [live10982, coloured10982]
  rw [child]
  dsimp only [result10980]
  have child := node10981_eq
  unfold live10981 coloured10981 at child
  try dsimp only [live10982, coloured10982]
  rw [child]
  dsimp only [result10981]
  try dsimp only [colour, result10982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10983_agree : tree10983 = literal10983 := by
  rw [tree10983_def]
  rfl
theorem node10983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10983 live10983 coloured10983 = result10983 := by
  rw [tree10983_def]
  try dsimp only [colour, result10983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10984_agree : tree10984 = literal10984 := by
  rw [tree10984_def, tree10982_agree, tree10983_agree]
  rfl
theorem node10984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10984 live10984 coloured10984 = result10984 := by
  rw [tree10984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10982_eq
  unfold live10982 coloured10982 at child
  try dsimp only [live10984, coloured10984]
  rw [child]
  dsimp only [result10982]
  have child := node10983_eq
  unfold live10983 coloured10983 at child
  try dsimp only [live10984, coloured10984]
  rw [child]
  dsimp only [result10983]
  try dsimp only [colour, result10984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10985_agree : tree10985 = literal10985 := by
  rw [tree10985_def]
  rfl
theorem node10985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10985 live10985 coloured10985 = result10985 := by
  rw [tree10985_def]
  try dsimp only [colour, result10985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10986_agree : tree10986 = literal10986 := by
  rw [tree10986_def, tree10984_agree, tree10985_agree]
  rfl
theorem node10986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10986 live10986 coloured10986 = result10986 := by
  rw [tree10986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10984_eq
  unfold live10984 coloured10984 at child
  try dsimp only [live10986, coloured10986]
  rw [child]
  dsimp only [result10984]
  have child := node10985_eq
  unfold live10985 coloured10985 at child
  try dsimp only [live10986, coloured10986]
  rw [child]
  dsimp only [result10985]
  try dsimp only [colour, result10986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10987_agree : tree10987 = literal10987 := by
  rw [tree10987_def]
  rfl
theorem node10987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10987 live10987 coloured10987 = result10987 := by
  rw [tree10987_def]
  try dsimp only [colour, result10987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10988_agree : tree10988 = literal10988 := by
  rw [tree10988_def, tree10986_agree, tree10987_agree]
  rfl
theorem node10988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10988 live10988 coloured10988 = result10988 := by
  rw [tree10988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10986_eq
  unfold live10986 coloured10986 at child
  try dsimp only [live10988, coloured10988]
  rw [child]
  dsimp only [result10986]
  have child := node10987_eq
  unfold live10987 coloured10987 at child
  try dsimp only [live10988, coloured10988]
  rw [child]
  dsimp only [result10987]
  try dsimp only [colour, result10988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10989_agree : tree10989 = literal10989 := by
  rw [tree10989_def]
  rfl
theorem node10989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10989 live10989 coloured10989 = result10989 := by
  rw [tree10989_def]
  try dsimp only [colour, result10989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10990_agree : tree10990 = literal10990 := by
  rw [tree10990_def, tree10988_agree, tree10989_agree]
  rfl
theorem node10990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10990 live10990 coloured10990 = result10990 := by
  rw [tree10990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10988_eq
  unfold live10988 coloured10988 at child
  try dsimp only [live10990, coloured10990]
  rw [child]
  dsimp only [result10988]
  have child := node10989_eq
  unfold live10989 coloured10989 at child
  try dsimp only [live10990, coloured10990]
  rw [child]
  dsimp only [result10989]
  try dsimp only [colour, result10990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10991_agree : tree10991 = literal10991 := by
  rw [tree10991_def]
  rfl
theorem node10991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10991 live10991 coloured10991 = result10991 := by
  rw [tree10991_def]
  try dsimp only [colour, result10991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10992_agree : tree10992 = literal10992 := by
  rw [tree10992_def, tree10990_agree, tree10991_agree]
  rfl
theorem node10992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10992 live10992 coloured10992 = result10992 := by
  rw [tree10992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10990_eq
  unfold live10990 coloured10990 at child
  try dsimp only [live10992, coloured10992]
  rw [child]
  dsimp only [result10990]
  have child := node10991_eq
  unfold live10991 coloured10991 at child
  try dsimp only [live10992, coloured10992]
  rw [child]
  dsimp only [result10991]
  try dsimp only [colour, result10992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10993_agree : tree10993 = literal10993 := by
  rw [tree10993_def]
  rfl
theorem node10993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10993 live10993 coloured10993 = result10993 := by
  rw [tree10993_def]
  try dsimp only [colour, result10993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10994_agree : tree10994 = literal10994 := by
  rw [tree10994_def, tree10992_agree, tree10993_agree]
  rfl
theorem node10994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10994 live10994 coloured10994 = result10994 := by
  rw [tree10994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10992_eq
  unfold live10992 coloured10992 at child
  try dsimp only [live10994, coloured10994]
  rw [child]
  dsimp only [result10992]
  have child := node10993_eq
  unfold live10993 coloured10993 at child
  try dsimp only [live10994, coloured10994]
  rw [child]
  dsimp only [result10993]
  try dsimp only [colour, result10994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10995_agree : tree10995 = literal10995 := by
  rw [tree10995_def]
  rfl
theorem node10995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10995 live10995 coloured10995 = result10995 := by
  rw [tree10995_def]
  try dsimp only [colour, result10995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10996_agree : tree10996 = literal10996 := by
  rw [tree10996_def, tree10994_agree, tree10995_agree]
  rfl
theorem node10996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10996 live10996 coloured10996 = result10996 := by
  rw [tree10996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10994_eq
  unfold live10994 coloured10994 at child
  try dsimp only [live10996, coloured10996]
  rw [child]
  dsimp only [result10994]
  have child := node10995_eq
  unfold live10995 coloured10995 at child
  try dsimp only [live10996, coloured10996]
  rw [child]
  dsimp only [result10995]
  try dsimp only [colour, result10996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10997_agree : tree10997 = literal10997 := by
  rw [tree10997_def]
  rfl
theorem node10997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10997 live10997 coloured10997 = result10997 := by
  rw [tree10997_def]
  try dsimp only [colour, result10997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10998_agree : tree10998 = literal10998 := by
  rw [tree10998_def, tree10996_agree, tree10997_agree]
  rfl
theorem node10998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10998 live10998 coloured10998 = result10998 := by
  rw [tree10998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10996_eq
  unfold live10996 coloured10996 at child
  try dsimp only [live10998, coloured10998]
  rw [child]
  dsimp only [result10996]
  have child := node10997_eq
  unfold live10997 coloured10997 at child
  try dsimp only [live10998, coloured10998]
  rw [child]
  dsimp only [result10997]
  try dsimp only [colour, result10998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10999_agree : tree10999 = literal10999 := by
  rw [tree10999_def]
  rfl
theorem node10999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10999 live10999 coloured10999 = result10999 := by
  rw [tree10999_def]
  try dsimp only [colour, result10999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11000_agree : tree11000 = literal11000 := by
  rw [tree11000_def, tree10998_agree, tree10999_agree]
  rfl
theorem node11000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11000 live11000 coloured11000 = result11000 := by
  rw [tree11000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10998_eq
  unfold live10998 coloured10998 at child
  try dsimp only [live11000, coloured11000]
  rw [child]
  dsimp only [result10998]
  have child := node10999_eq
  unfold live10999 coloured10999 at child
  try dsimp only [live11000, coloured11000]
  rw [child]
  dsimp only [result10999]
  try dsimp only [colour, result11000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11001_agree : tree11001 = literal11001 := by
  rw [tree11001_def]
  rfl
theorem node11001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11001 live11001 coloured11001 = result11001 := by
  rw [tree11001_def]
  try dsimp only [colour, result11001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11002_agree : tree11002 = literal11002 := by
  rw [tree11002_def, tree11000_agree, tree11001_agree]
  rfl
theorem node11002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11002 live11002 coloured11002 = result11002 := by
  rw [tree11002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11000_eq
  unfold live11000 coloured11000 at child
  try dsimp only [live11002, coloured11002]
  rw [child]
  dsimp only [result11000]
  have child := node11001_eq
  unfold live11001 coloured11001 at child
  try dsimp only [live11002, coloured11002]
  rw [child]
  dsimp only [result11001]
  try dsimp only [colour, result11002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11003_agree : tree11003 = literal11003 := by
  rw [tree11003_def]
  rfl
theorem node11003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11003 live11003 coloured11003 = result11003 := by
  rw [tree11003_def]
  try dsimp only [colour, result11003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11004_agree : tree11004 = literal11004 := by
  rw [tree11004_def, tree11002_agree, tree11003_agree]
  rfl
theorem node11004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11004 live11004 coloured11004 = result11004 := by
  rw [tree11004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11002_eq
  unfold live11002 coloured11002 at child
  try dsimp only [live11004, coloured11004]
  rw [child]
  dsimp only [result11002]
  have child := node11003_eq
  unfold live11003 coloured11003 at child
  try dsimp only [live11004, coloured11004]
  rw [child]
  dsimp only [result11003]
  try dsimp only [colour, result11004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11005_agree : tree11005 = literal11005 := by
  rw [tree11005_def]
  rfl
theorem node11005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11005 live11005 coloured11005 = result11005 := by
  rw [tree11005_def]
  try dsimp only [colour, result11005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11006_agree : tree11006 = literal11006 := by
  rw [tree11006_def, tree11004_agree, tree11005_agree]
  rfl
theorem node11006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11006 live11006 coloured11006 = result11006 := by
  rw [tree11006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11004_eq
  unfold live11004 coloured11004 at child
  try dsimp only [live11006, coloured11006]
  rw [child]
  dsimp only [result11004]
  have child := node11005_eq
  unfold live11005 coloured11005 at child
  try dsimp only [live11006, coloured11006]
  rw [child]
  dsimp only [result11005]
  try dsimp only [colour, result11006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11007_agree : tree11007 = literal11007 := by
  rw [tree11007_def]
  rfl
theorem node11007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11007 live11007 coloured11007 = result11007 := by
  rw [tree11007_def]
  try dsimp only [colour, result11007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11008_agree : tree11008 = literal11008 := by
  rw [tree11008_def, tree11006_agree, tree11007_agree]
  rfl
theorem node11008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11008 live11008 coloured11008 = result11008 := by
  rw [tree11008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11006_eq
  unfold live11006 coloured11006 at child
  try dsimp only [live11008, coloured11008]
  rw [child]
  dsimp only [result11006]
  have child := node11007_eq
  unfold live11007 coloured11007 at child
  try dsimp only [live11008, coloured11008]
  rw [child]
  dsimp only [result11007]
  try dsimp only [colour, result11008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11009_agree : tree11009 = literal11009 := by
  rw [tree11009_def]
  rfl
theorem node11009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11009 live11009 coloured11009 = result11009 := by
  rw [tree11009_def]
  try dsimp only [colour, result11009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11010_agree : tree11010 = literal11010 := by
  rw [tree11010_def, tree11008_agree, tree11009_agree]
  rfl
theorem node11010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11010 live11010 coloured11010 = result11010 := by
  rw [tree11010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11008_eq
  unfold live11008 coloured11008 at child
  try dsimp only [live11010, coloured11010]
  rw [child]
  dsimp only [result11008]
  have child := node11009_eq
  unfold live11009 coloured11009 at child
  try dsimp only [live11010, coloured11010]
  rw [child]
  dsimp only [result11009]
  try dsimp only [colour, result11010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11011_agree : tree11011 = literal11011 := by
  rw [tree11011_def]
  rfl
theorem node11011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11011 live11011 coloured11011 = result11011 := by
  rw [tree11011_def]
  try dsimp only [colour, result11011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11012_agree : tree11012 = literal11012 := by
  rw [tree11012_def, tree11010_agree, tree11011_agree]
  rfl
theorem node11012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11012 live11012 coloured11012 = result11012 := by
  rw [tree11012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11010_eq
  unfold live11010 coloured11010 at child
  try dsimp only [live11012, coloured11012]
  rw [child]
  dsimp only [result11010]
  have child := node11011_eq
  unfold live11011 coloured11011 at child
  try dsimp only [live11012, coloured11012]
  rw [child]
  dsimp only [result11011]
  try dsimp only [colour, result11012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11013_agree : tree11013 = literal11013 := by
  rw [tree11013_def]
  rfl
theorem node11013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11013 live11013 coloured11013 = result11013 := by
  rw [tree11013_def]
  try dsimp only [colour, result11013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11014_agree : tree11014 = literal11014 := by
  rw [tree11014_def, tree11012_agree, tree11013_agree]
  rfl
theorem node11014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11014 live11014 coloured11014 = result11014 := by
  rw [tree11014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11012_eq
  unfold live11012 coloured11012 at child
  try dsimp only [live11014, coloured11014]
  rw [child]
  dsimp only [result11012]
  have child := node11013_eq
  unfold live11013 coloured11013 at child
  try dsimp only [live11014, coloured11014]
  rw [child]
  dsimp only [result11013]
  try dsimp only [colour, result11014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11015_agree : tree11015 = literal11015 := by
  rw [tree11015_def]
  rfl
theorem node11015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11015 live11015 coloured11015 = result11015 := by
  rw [tree11015_def]
  try dsimp only [colour, result11015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11016_agree : tree11016 = literal11016 := by
  rw [tree11016_def, tree11014_agree, tree11015_agree]
  rfl
theorem node11016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11016 live11016 coloured11016 = result11016 := by
  rw [tree11016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11014_eq
  unfold live11014 coloured11014 at child
  try dsimp only [live11016, coloured11016]
  rw [child]
  dsimp only [result11014]
  have child := node11015_eq
  unfold live11015 coloured11015 at child
  try dsimp only [live11016, coloured11016]
  rw [child]
  dsimp only [result11015]
  try dsimp only [colour, result11016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11017_agree : tree11017 = literal11017 := by
  rw [tree11017_def]
  rfl
theorem node11017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11017 live11017 coloured11017 = result11017 := by
  rw [tree11017_def]
  try dsimp only [colour, result11017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11018_agree : tree11018 = literal11018 := by
  rw [tree11018_def, tree11016_agree, tree11017_agree]
  rfl
theorem node11018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11018 live11018 coloured11018 = result11018 := by
  rw [tree11018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11016_eq
  unfold live11016 coloured11016 at child
  try dsimp only [live11018, coloured11018]
  rw [child]
  dsimp only [result11016]
  have child := node11017_eq
  unfold live11017 coloured11017 at child
  try dsimp only [live11018, coloured11018]
  rw [child]
  dsimp only [result11017]
  try dsimp only [colour, result11018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11019_agree : tree11019 = literal11019 := by
  rw [tree11019_def]
  rfl
theorem node11019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11019 live11019 coloured11019 = result11019 := by
  rw [tree11019_def]
  try dsimp only [colour, result11019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11020_agree : tree11020 = literal11020 := by
  rw [tree11020_def, tree11018_agree, tree11019_agree]
  rfl
theorem node11020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11020 live11020 coloured11020 = result11020 := by
  rw [tree11020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11018_eq
  unfold live11018 coloured11018 at child
  try dsimp only [live11020, coloured11020]
  rw [child]
  dsimp only [result11018]
  have child := node11019_eq
  unfold live11019 coloured11019 at child
  try dsimp only [live11020, coloured11020]
  rw [child]
  dsimp only [result11019]
  try dsimp only [colour, result11020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11021_agree : tree11021 = literal11021 := by
  rw [tree11021_def]
  rfl
theorem node11021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11021 live11021 coloured11021 = result11021 := by
  rw [tree11021_def]
  try dsimp only [colour, result11021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11022_agree : tree11022 = literal11022 := by
  rw [tree11022_def, tree11020_agree, tree11021_agree]
  rfl
theorem node11022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11022 live11022 coloured11022 = result11022 := by
  rw [tree11022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11020_eq
  unfold live11020 coloured11020 at child
  try dsimp only [live11022, coloured11022]
  rw [child]
  dsimp only [result11020]
  have child := node11021_eq
  unfold live11021 coloured11021 at child
  try dsimp only [live11022, coloured11022]
  rw [child]
  dsimp only [result11021]
  try dsimp only [colour, result11022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11023_agree : tree11023 = literal11023 := by
  rw [tree11023_def]
  rfl
theorem node11023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11023 live11023 coloured11023 = result11023 := by
  rw [tree11023_def]
  try dsimp only [colour, result11023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11024_agree : tree11024 = literal11024 := by
  rw [tree11024_def, tree11022_agree, tree11023_agree]
  rfl
theorem node11024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11024 live11024 coloured11024 = result11024 := by
  rw [tree11024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11022_eq
  unfold live11022 coloured11022 at child
  try dsimp only [live11024, coloured11024]
  rw [child]
  dsimp only [result11022]
  have child := node11023_eq
  unfold live11023 coloured11023 at child
  try dsimp only [live11024, coloured11024]
  rw [child]
  dsimp only [result11023]
  try dsimp only [colour, result11024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11025_agree : tree11025 = literal11025 := by
  rw [tree11025_def]
  rfl
theorem node11025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11025 live11025 coloured11025 = result11025 := by
  rw [tree11025_def]
  try dsimp only [colour, result11025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11026_agree : tree11026 = literal11026 := by
  rw [tree11026_def, tree11024_agree, tree11025_agree]
  rfl
theorem node11026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11026 live11026 coloured11026 = result11026 := by
  rw [tree11026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11024_eq
  unfold live11024 coloured11024 at child
  try dsimp only [live11026, coloured11026]
  rw [child]
  dsimp only [result11024]
  have child := node11025_eq
  unfold live11025 coloured11025 at child
  try dsimp only [live11026, coloured11026]
  rw [child]
  dsimp only [result11025]
  try dsimp only [colour, result11026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11027_agree : tree11027 = literal11027 := by
  rw [tree11027_def]
  rfl
theorem node11027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11027 live11027 coloured11027 = result11027 := by
  rw [tree11027_def]
  try dsimp only [colour, result11027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11028_agree : tree11028 = literal11028 := by
  rw [tree11028_def, tree11026_agree, tree11027_agree]
  rfl
theorem node11028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11028 live11028 coloured11028 = result11028 := by
  rw [tree11028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11026_eq
  unfold live11026 coloured11026 at child
  try dsimp only [live11028, coloured11028]
  rw [child]
  dsimp only [result11026]
  have child := node11027_eq
  unfold live11027 coloured11027 at child
  try dsimp only [live11028, coloured11028]
  rw [child]
  dsimp only [result11027]
  try dsimp only [colour, result11028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11029_agree : tree11029 = literal11029 := by
  rw [tree11029_def]
  rfl
theorem node11029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11029 live11029 coloured11029 = result11029 := by
  rw [tree11029_def]
  try dsimp only [colour, result11029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11030_agree : tree11030 = literal11030 := by
  rw [tree11030_def, tree11028_agree, tree11029_agree]
  rfl
theorem node11030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11030 live11030 coloured11030 = result11030 := by
  rw [tree11030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11028_eq
  unfold live11028 coloured11028 at child
  try dsimp only [live11030, coloured11030]
  rw [child]
  dsimp only [result11028]
  have child := node11029_eq
  unfold live11029 coloured11029 at child
  try dsimp only [live11030, coloured11030]
  rw [child]
  dsimp only [result11029]
  try dsimp only [colour, result11030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11031_agree : tree11031 = literal11031 := by
  rw [tree11031_def]
  rfl
theorem node11031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11031 live11031 coloured11031 = result11031 := by
  rw [tree11031_def]
  try dsimp only [colour, result11031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11032_agree : tree11032 = literal11032 := by
  rw [tree11032_def, tree11030_agree, tree11031_agree]
  rfl
theorem node11032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11032 live11032 coloured11032 = result11032 := by
  rw [tree11032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11030_eq
  unfold live11030 coloured11030 at child
  try dsimp only [live11032, coloured11032]
  rw [child]
  dsimp only [result11030]
  have child := node11031_eq
  unfold live11031 coloured11031 at child
  try dsimp only [live11032, coloured11032]
  rw [child]
  dsimp only [result11031]
  try dsimp only [colour, result11032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11033_agree : tree11033 = literal11033 := by
  rw [tree11033_def]
  rfl
theorem node11033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11033 live11033 coloured11033 = result11033 := by
  rw [tree11033_def]
  try dsimp only [colour, result11033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11034_agree : tree11034 = literal11034 := by
  rw [tree11034_def, tree11032_agree, tree11033_agree]
  rfl
theorem node11034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11034 live11034 coloured11034 = result11034 := by
  rw [tree11034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11032_eq
  unfold live11032 coloured11032 at child
  try dsimp only [live11034, coloured11034]
  rw [child]
  dsimp only [result11032]
  have child := node11033_eq
  unfold live11033 coloured11033 at child
  try dsimp only [live11034, coloured11034]
  rw [child]
  dsimp only [result11033]
  try dsimp only [colour, result11034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11035_agree : tree11035 = literal11035 := by
  rw [tree11035_def]
  rfl
theorem node11035_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11035 live11035 coloured11035 = result11035 := by
  rw [tree11035_def]
  try dsimp only [colour, result11035]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11036_agree : tree11036 = literal11036 := by
  rw [tree11036_def, tree11034_agree, tree11035_agree]
  rfl
theorem node11036_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11036 live11036 coloured11036 = result11036 := by
  rw [tree11036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11034_eq
  unfold live11034 coloured11034 at child
  try dsimp only [live11036, coloured11036]
  rw [child]
  dsimp only [result11034]
  have child := node11035_eq
  unfold live11035 coloured11035 at child
  try dsimp only [live11036, coloured11036]
  rw [child]
  dsimp only [result11035]
  try dsimp only [colour, result11036]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11037_agree : tree11037 = literal11037 := by
  rw [tree11037_def]
  rfl
theorem node11037_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11037 live11037 coloured11037 = result11037 := by
  rw [tree11037_def]
  try dsimp only [colour, result11037]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11038_agree : tree11038 = literal11038 := by
  rw [tree11038_def, tree11036_agree, tree11037_agree]
  rfl
theorem node11038_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11038 live11038 coloured11038 = result11038 := by
  rw [tree11038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11036_eq
  unfold live11036 coloured11036 at child
  try dsimp only [live11038, coloured11038]
  rw [child]
  dsimp only [result11036]
  have child := node11037_eq
  unfold live11037 coloured11037 at child
  try dsimp only [live11038, coloured11038]
  rw [child]
  dsimp only [result11037]
  try dsimp only [colour, result11038]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11039_agree : tree11039 = literal11039 := by
  rw [tree11039_def]
  rfl
theorem node11039_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11039 live11039 coloured11039 = result11039 := by
  rw [tree11039_def]
  try dsimp only [colour, result11039]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
