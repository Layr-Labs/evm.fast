import InitECandidate.Proofs.ClashStages713.Proof61
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree5952_agree : tree5952 = literal5952 := by
  rw [tree5952_def, tree5950_agree, tree5951_agree]
  rfl
theorem node5952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5952 live5952 coloured5952 = result5952 := by
  rw [tree5952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5950_eq
  unfold live5950 coloured5950 at child
  try dsimp only [live5952, coloured5952]
  rw [child]
  dsimp only [result5950]
  have child := node5951_eq
  unfold live5951 coloured5951 at child
  try dsimp only [live5952, coloured5952]
  rw [child]
  dsimp only [result5951]
  try dsimp only [colour, result5952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5953_agree : tree5953 = literal5953 := by
  rw [tree5953_def]
  rfl
theorem node5953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5953 live5953 coloured5953 = result5953 := by
  rw [tree5953_def]
  try dsimp only [colour, result5953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5954_agree : tree5954 = literal5954 := by
  rw [tree5954_def, tree5952_agree, tree5953_agree]
  rfl
theorem node5954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5954 live5954 coloured5954 = result5954 := by
  rw [tree5954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5952_eq
  unfold live5952 coloured5952 at child
  try dsimp only [live5954, coloured5954]
  rw [child]
  dsimp only [result5952]
  have child := node5953_eq
  unfold live5953 coloured5953 at child
  try dsimp only [live5954, coloured5954]
  rw [child]
  dsimp only [result5953]
  try dsimp only [colour, result5954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5955_agree : tree5955 = literal5955 := by
  rw [tree5955_def]
  rfl
theorem node5955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5955 live5955 coloured5955 = result5955 := by
  rw [tree5955_def]
  try dsimp only [colour, result5955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5956_agree : tree5956 = literal5956 := by
  rw [tree5956_def, tree5954_agree, tree5955_agree]
  rfl
theorem node5956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5956 live5956 coloured5956 = result5956 := by
  rw [tree5956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5954_eq
  unfold live5954 coloured5954 at child
  try dsimp only [live5956, coloured5956]
  rw [child]
  dsimp only [result5954]
  have child := node5955_eq
  unfold live5955 coloured5955 at child
  try dsimp only [live5956, coloured5956]
  rw [child]
  dsimp only [result5955]
  try dsimp only [colour, result5956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5957_agree : tree5957 = literal5957 := by
  rw [tree5957_def]
  rfl
theorem node5957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5957 live5957 coloured5957 = result5957 := by
  rw [tree5957_def]
  try dsimp only [colour, result5957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5958_agree : tree5958 = literal5958 := by
  rw [tree5958_def, tree5956_agree, tree5957_agree]
  rfl
theorem node5958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5958 live5958 coloured5958 = result5958 := by
  rw [tree5958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5956_eq
  unfold live5956 coloured5956 at child
  try dsimp only [live5958, coloured5958]
  rw [child]
  dsimp only [result5956]
  have child := node5957_eq
  unfold live5957 coloured5957 at child
  try dsimp only [live5958, coloured5958]
  rw [child]
  dsimp only [result5957]
  try dsimp only [colour, result5958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5959_agree : tree5959 = literal5959 := by
  rw [tree5959_def]
  rfl
theorem node5959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5959 live5959 coloured5959 = result5959 := by
  rw [tree5959_def]
  try dsimp only [colour, result5959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5960_agree : tree5960 = literal5960 := by
  rw [tree5960_def, tree5958_agree, tree5959_agree]
  rfl
theorem node5960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5960 live5960 coloured5960 = result5960 := by
  rw [tree5960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5958_eq
  unfold live5958 coloured5958 at child
  try dsimp only [live5960, coloured5960]
  rw [child]
  dsimp only [result5958]
  have child := node5959_eq
  unfold live5959 coloured5959 at child
  try dsimp only [live5960, coloured5960]
  rw [child]
  dsimp only [result5959]
  try dsimp only [colour, result5960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5961_agree : tree5961 = literal5961 := by
  rw [tree5961_def]
  rfl
theorem node5961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5961 live5961 coloured5961 = result5961 := by
  rw [tree5961_def]
  try dsimp only [colour, result5961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5962_agree : tree5962 = literal5962 := by
  rw [tree5962_def, tree5960_agree, tree5961_agree]
  rfl
theorem node5962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5962 live5962 coloured5962 = result5962 := by
  rw [tree5962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5960_eq
  unfold live5960 coloured5960 at child
  try dsimp only [live5962, coloured5962]
  rw [child]
  dsimp only [result5960]
  have child := node5961_eq
  unfold live5961 coloured5961 at child
  try dsimp only [live5962, coloured5962]
  rw [child]
  dsimp only [result5961]
  try dsimp only [colour, result5962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5963_agree : tree5963 = literal5963 := by
  rw [tree5963_def]
  rfl
theorem node5963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5963 live5963 coloured5963 = result5963 := by
  rw [tree5963_def]
  try dsimp only [colour, result5963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5964_agree : tree5964 = literal5964 := by
  rw [tree5964_def, tree5962_agree, tree5963_agree]
  rfl
theorem node5964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5964 live5964 coloured5964 = result5964 := by
  rw [tree5964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5962_eq
  unfold live5962 coloured5962 at child
  try dsimp only [live5964, coloured5964]
  rw [child]
  dsimp only [result5962]
  have child := node5963_eq
  unfold live5963 coloured5963 at child
  try dsimp only [live5964, coloured5964]
  rw [child]
  dsimp only [result5963]
  try dsimp only [colour, result5964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5965_agree : tree5965 = literal5965 := by
  rw [tree5965_def]
  rfl
theorem node5965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5965 live5965 coloured5965 = result5965 := by
  rw [tree5965_def]
  try dsimp only [colour, result5965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5966_agree : tree5966 = literal5966 := by
  rw [tree5966_def, tree5964_agree, tree5965_agree]
  rfl
theorem node5966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5966 live5966 coloured5966 = result5966 := by
  rw [tree5966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5964_eq
  unfold live5964 coloured5964 at child
  try dsimp only [live5966, coloured5966]
  rw [child]
  dsimp only [result5964]
  have child := node5965_eq
  unfold live5965 coloured5965 at child
  try dsimp only [live5966, coloured5966]
  rw [child]
  dsimp only [result5965]
  try dsimp only [colour, result5966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5967_agree : tree5967 = literal5967 := by
  rw [tree5967_def]
  rfl
theorem node5967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5967 live5967 coloured5967 = result5967 := by
  rw [tree5967_def]
  try dsimp only [colour, result5967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5968_agree : tree5968 = literal5968 := by
  rw [tree5968_def, tree5966_agree, tree5967_agree]
  rfl
theorem node5968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5968 live5968 coloured5968 = result5968 := by
  rw [tree5968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5966_eq
  unfold live5966 coloured5966 at child
  try dsimp only [live5968, coloured5968]
  rw [child]
  dsimp only [result5966]
  have child := node5967_eq
  unfold live5967 coloured5967 at child
  try dsimp only [live5968, coloured5968]
  rw [child]
  dsimp only [result5967]
  try dsimp only [colour, result5968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5969_agree : tree5969 = literal5969 := by
  rw [tree5969_def]
  rfl
theorem node5969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5969 live5969 coloured5969 = result5969 := by
  rw [tree5969_def]
  try dsimp only [colour, result5969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5970_agree : tree5970 = literal5970 := by
  rw [tree5970_def, tree5968_agree, tree5969_agree]
  rfl
theorem node5970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5970 live5970 coloured5970 = result5970 := by
  rw [tree5970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5968_eq
  unfold live5968 coloured5968 at child
  try dsimp only [live5970, coloured5970]
  rw [child]
  dsimp only [result5968]
  have child := node5969_eq
  unfold live5969 coloured5969 at child
  try dsimp only [live5970, coloured5970]
  rw [child]
  dsimp only [result5969]
  try dsimp only [colour, result5970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5971_agree : tree5971 = literal5971 := by
  rw [tree5971_def]
  rfl
theorem node5971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5971 live5971 coloured5971 = result5971 := by
  rw [tree5971_def]
  try dsimp only [colour, result5971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5972_agree : tree5972 = literal5972 := by
  rw [tree5972_def, tree5970_agree, tree5971_agree]
  rfl
theorem node5972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5972 live5972 coloured5972 = result5972 := by
  rw [tree5972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5970_eq
  unfold live5970 coloured5970 at child
  try dsimp only [live5972, coloured5972]
  rw [child]
  dsimp only [result5970]
  have child := node5971_eq
  unfold live5971 coloured5971 at child
  try dsimp only [live5972, coloured5972]
  rw [child]
  dsimp only [result5971]
  try dsimp only [colour, result5972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5973_agree : tree5973 = literal5973 := by
  rw [tree5973_def]
  rfl
theorem node5973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5973 live5973 coloured5973 = result5973 := by
  rw [tree5973_def]
  try dsimp only [colour, result5973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5974_agree : tree5974 = literal5974 := by
  rw [tree5974_def, tree5972_agree, tree5973_agree]
  rfl
theorem node5974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5974 live5974 coloured5974 = result5974 := by
  rw [tree5974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5972_eq
  unfold live5972 coloured5972 at child
  try dsimp only [live5974, coloured5974]
  rw [child]
  dsimp only [result5972]
  have child := node5973_eq
  unfold live5973 coloured5973 at child
  try dsimp only [live5974, coloured5974]
  rw [child]
  dsimp only [result5973]
  try dsimp only [colour, result5974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5975_agree : tree5975 = literal5975 := by
  rw [tree5975_def]
  rfl
theorem node5975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5975 live5975 coloured5975 = result5975 := by
  rw [tree5975_def]
  try dsimp only [colour, result5975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5976_agree : tree5976 = literal5976 := by
  rw [tree5976_def, tree5974_agree, tree5975_agree]
  rfl
theorem node5976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5976 live5976 coloured5976 = result5976 := by
  rw [tree5976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5974_eq
  unfold live5974 coloured5974 at child
  try dsimp only [live5976, coloured5976]
  rw [child]
  dsimp only [result5974]
  have child := node5975_eq
  unfold live5975 coloured5975 at child
  try dsimp only [live5976, coloured5976]
  rw [child]
  dsimp only [result5975]
  try dsimp only [colour, result5976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5977_agree : tree5977 = literal5977 := by
  rw [tree5977_def]
  rfl
theorem node5977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5977 live5977 coloured5977 = result5977 := by
  rw [tree5977_def]
  try dsimp only [colour, result5977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5978_agree : tree5978 = literal5978 := by
  rw [tree5978_def, tree5976_agree, tree5977_agree]
  rfl
theorem node5978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5978 live5978 coloured5978 = result5978 := by
  rw [tree5978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5976_eq
  unfold live5976 coloured5976 at child
  try dsimp only [live5978, coloured5978]
  rw [child]
  dsimp only [result5976]
  have child := node5977_eq
  unfold live5977 coloured5977 at child
  try dsimp only [live5978, coloured5978]
  rw [child]
  dsimp only [result5977]
  try dsimp only [colour, result5978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5979_agree : tree5979 = literal5979 := by
  rw [tree5979_def]
  rfl
theorem node5979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5979 live5979 coloured5979 = result5979 := by
  rw [tree5979_def]
  try dsimp only [colour, result5979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5980_agree : tree5980 = literal5980 := by
  rw [tree5980_def, tree5978_agree, tree5979_agree]
  rfl
theorem node5980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5980 live5980 coloured5980 = result5980 := by
  rw [tree5980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5978_eq
  unfold live5978 coloured5978 at child
  try dsimp only [live5980, coloured5980]
  rw [child]
  dsimp only [result5978]
  have child := node5979_eq
  unfold live5979 coloured5979 at child
  try dsimp only [live5980, coloured5980]
  rw [child]
  dsimp only [result5979]
  try dsimp only [colour, result5980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5981_agree : tree5981 = literal5981 := by
  rw [tree5981_def]
  rfl
theorem node5981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5981 live5981 coloured5981 = result5981 := by
  rw [tree5981_def]
  try dsimp only [colour, result5981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5982_agree : tree5982 = literal5982 := by
  rw [tree5982_def, tree5980_agree, tree5981_agree]
  rfl
theorem node5982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5982 live5982 coloured5982 = result5982 := by
  rw [tree5982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5980_eq
  unfold live5980 coloured5980 at child
  try dsimp only [live5982, coloured5982]
  rw [child]
  dsimp only [result5980]
  have child := node5981_eq
  unfold live5981 coloured5981 at child
  try dsimp only [live5982, coloured5982]
  rw [child]
  dsimp only [result5981]
  try dsimp only [colour, result5982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5983_agree : tree5983 = literal5983 := by
  rw [tree5983_def]
  rfl
theorem node5983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5983 live5983 coloured5983 = result5983 := by
  rw [tree5983_def]
  try dsimp only [colour, result5983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5984_agree : tree5984 = literal5984 := by
  rw [tree5984_def, tree5982_agree, tree5983_agree]
  rfl
theorem node5984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5984 live5984 coloured5984 = result5984 := by
  rw [tree5984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5982_eq
  unfold live5982 coloured5982 at child
  try dsimp only [live5984, coloured5984]
  rw [child]
  dsimp only [result5982]
  have child := node5983_eq
  unfold live5983 coloured5983 at child
  try dsimp only [live5984, coloured5984]
  rw [child]
  dsimp only [result5983]
  try dsimp only [colour, result5984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5985_agree : tree5985 = literal5985 := by
  rw [tree5985_def]
  rfl
theorem node5985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5985 live5985 coloured5985 = result5985 := by
  rw [tree5985_def]
  try dsimp only [colour, result5985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5986_agree : tree5986 = literal5986 := by
  rw [tree5986_def, tree5984_agree, tree5985_agree]
  rfl
theorem node5986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5986 live5986 coloured5986 = result5986 := by
  rw [tree5986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5984_eq
  unfold live5984 coloured5984 at child
  try dsimp only [live5986, coloured5986]
  rw [child]
  dsimp only [result5984]
  have child := node5985_eq
  unfold live5985 coloured5985 at child
  try dsimp only [live5986, coloured5986]
  rw [child]
  dsimp only [result5985]
  try dsimp only [colour, result5986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5987_agree : tree5987 = literal5987 := by
  rw [tree5987_def]
  rfl
theorem node5987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5987 live5987 coloured5987 = result5987 := by
  rw [tree5987_def]
  try dsimp only [colour, result5987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5988_agree : tree5988 = literal5988 := by
  rw [tree5988_def, tree5986_agree, tree5987_agree]
  rfl
theorem node5988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5988 live5988 coloured5988 = result5988 := by
  rw [tree5988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5986_eq
  unfold live5986 coloured5986 at child
  try dsimp only [live5988, coloured5988]
  rw [child]
  dsimp only [result5986]
  have child := node5987_eq
  unfold live5987 coloured5987 at child
  try dsimp only [live5988, coloured5988]
  rw [child]
  dsimp only [result5987]
  try dsimp only [colour, result5988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5989_agree : tree5989 = literal5989 := by
  rw [tree5989_def]
  rfl
theorem node5989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5989 live5989 coloured5989 = result5989 := by
  rw [tree5989_def]
  try dsimp only [colour, result5989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5990_agree : tree5990 = literal5990 := by
  rw [tree5990_def, tree5988_agree, tree5989_agree]
  rfl
theorem node5990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5990 live5990 coloured5990 = result5990 := by
  rw [tree5990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5988_eq
  unfold live5988 coloured5988 at child
  try dsimp only [live5990, coloured5990]
  rw [child]
  dsimp only [result5988]
  have child := node5989_eq
  unfold live5989 coloured5989 at child
  try dsimp only [live5990, coloured5990]
  rw [child]
  dsimp only [result5989]
  try dsimp only [colour, result5990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5991_agree : tree5991 = literal5991 := by
  rw [tree5991_def]
  rfl
theorem node5991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5991 live5991 coloured5991 = result5991 := by
  rw [tree5991_def]
  try dsimp only [colour, result5991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5992_agree : tree5992 = literal5992 := by
  rw [tree5992_def, tree5990_agree, tree5991_agree]
  rfl
theorem node5992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5992 live5992 coloured5992 = result5992 := by
  rw [tree5992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5990_eq
  unfold live5990 coloured5990 at child
  try dsimp only [live5992, coloured5992]
  rw [child]
  dsimp only [result5990]
  have child := node5991_eq
  unfold live5991 coloured5991 at child
  try dsimp only [live5992, coloured5992]
  rw [child]
  dsimp only [result5991]
  try dsimp only [colour, result5992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5993_agree : tree5993 = literal5993 := by
  rw [tree5993_def]
  rfl
theorem node5993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5993 live5993 coloured5993 = result5993 := by
  rw [tree5993_def]
  try dsimp only [colour, result5993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5994_agree : tree5994 = literal5994 := by
  rw [tree5994_def, tree5992_agree, tree5993_agree]
  rfl
theorem node5994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5994 live5994 coloured5994 = result5994 := by
  rw [tree5994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5992_eq
  unfold live5992 coloured5992 at child
  try dsimp only [live5994, coloured5994]
  rw [child]
  dsimp only [result5992]
  have child := node5993_eq
  unfold live5993 coloured5993 at child
  try dsimp only [live5994, coloured5994]
  rw [child]
  dsimp only [result5993]
  try dsimp only [colour, result5994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5995_agree : tree5995 = literal5995 := by
  rw [tree5995_def]
  rfl
theorem node5995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5995 live5995 coloured5995 = result5995 := by
  rw [tree5995_def]
  try dsimp only [colour, result5995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5996_agree : tree5996 = literal5996 := by
  rw [tree5996_def, tree5994_agree, tree5995_agree]
  rfl
theorem node5996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5996 live5996 coloured5996 = result5996 := by
  rw [tree5996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5994_eq
  unfold live5994 coloured5994 at child
  try dsimp only [live5996, coloured5996]
  rw [child]
  dsimp only [result5994]
  have child := node5995_eq
  unfold live5995 coloured5995 at child
  try dsimp only [live5996, coloured5996]
  rw [child]
  dsimp only [result5995]
  try dsimp only [colour, result5996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5997_agree : tree5997 = literal5997 := by
  rw [tree5997_def]
  rfl
theorem node5997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5997 live5997 coloured5997 = result5997 := by
  rw [tree5997_def]
  try dsimp only [colour, result5997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5998_agree : tree5998 = literal5998 := by
  rw [tree5998_def, tree5996_agree, tree5997_agree]
  rfl
theorem node5998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5998 live5998 coloured5998 = result5998 := by
  rw [tree5998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5996_eq
  unfold live5996 coloured5996 at child
  try dsimp only [live5998, coloured5998]
  rw [child]
  dsimp only [result5996]
  have child := node5997_eq
  unfold live5997 coloured5997 at child
  try dsimp only [live5998, coloured5998]
  rw [child]
  dsimp only [result5997]
  try dsimp only [colour, result5998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5999_agree : tree5999 = literal5999 := by
  rw [tree5999_def]
  rfl
theorem node5999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5999 live5999 coloured5999 = result5999 := by
  rw [tree5999_def]
  try dsimp only [colour, result5999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6000_agree : tree6000 = literal6000 := by
  rw [tree6000_def, tree5998_agree, tree5999_agree]
  rfl
theorem node6000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6000 live6000 coloured6000 = result6000 := by
  rw [tree6000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5998_eq
  unfold live5998 coloured5998 at child
  try dsimp only [live6000, coloured6000]
  rw [child]
  dsimp only [result5998]
  have child := node5999_eq
  unfold live5999 coloured5999 at child
  try dsimp only [live6000, coloured6000]
  rw [child]
  dsimp only [result5999]
  try dsimp only [colour, result6000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6001_agree : tree6001 = literal6001 := by
  rw [tree6001_def]
  rfl
theorem node6001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6001 live6001 coloured6001 = result6001 := by
  rw [tree6001_def]
  try dsimp only [colour, result6001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6002_agree : tree6002 = literal6002 := by
  rw [tree6002_def, tree6000_agree, tree6001_agree]
  rfl
theorem node6002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6002 live6002 coloured6002 = result6002 := by
  rw [tree6002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6000_eq
  unfold live6000 coloured6000 at child
  try dsimp only [live6002, coloured6002]
  rw [child]
  dsimp only [result6000]
  have child := node6001_eq
  unfold live6001 coloured6001 at child
  try dsimp only [live6002, coloured6002]
  rw [child]
  dsimp only [result6001]
  try dsimp only [colour, result6002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6003_agree : tree6003 = literal6003 := by
  rw [tree6003_def]
  rfl
theorem node6003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6003 live6003 coloured6003 = result6003 := by
  rw [tree6003_def]
  try dsimp only [colour, result6003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6004_agree : tree6004 = literal6004 := by
  rw [tree6004_def, tree6002_agree, tree6003_agree]
  rfl
theorem node6004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6004 live6004 coloured6004 = result6004 := by
  rw [tree6004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6002_eq
  unfold live6002 coloured6002 at child
  try dsimp only [live6004, coloured6004]
  rw [child]
  dsimp only [result6002]
  have child := node6003_eq
  unfold live6003 coloured6003 at child
  try dsimp only [live6004, coloured6004]
  rw [child]
  dsimp only [result6003]
  try dsimp only [colour, result6004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6005_agree : tree6005 = literal6005 := by
  rw [tree6005_def]
  rfl
theorem node6005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6005 live6005 coloured6005 = result6005 := by
  rw [tree6005_def]
  try dsimp only [colour, result6005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6006_agree : tree6006 = literal6006 := by
  rw [tree6006_def, tree6004_agree, tree6005_agree]
  rfl
theorem node6006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6006 live6006 coloured6006 = result6006 := by
  rw [tree6006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6004_eq
  unfold live6004 coloured6004 at child
  try dsimp only [live6006, coloured6006]
  rw [child]
  dsimp only [result6004]
  have child := node6005_eq
  unfold live6005 coloured6005 at child
  try dsimp only [live6006, coloured6006]
  rw [child]
  dsimp only [result6005]
  try dsimp only [colour, result6006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6007_agree : tree6007 = literal6007 := by
  rw [tree6007_def]
  rfl
theorem node6007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6007 live6007 coloured6007 = result6007 := by
  rw [tree6007_def]
  try dsimp only [colour, result6007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6008_agree : tree6008 = literal6008 := by
  rw [tree6008_def, tree6006_agree, tree6007_agree]
  rfl
theorem node6008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6008 live6008 coloured6008 = result6008 := by
  rw [tree6008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6006_eq
  unfold live6006 coloured6006 at child
  try dsimp only [live6008, coloured6008]
  rw [child]
  dsimp only [result6006]
  have child := node6007_eq
  unfold live6007 coloured6007 at child
  try dsimp only [live6008, coloured6008]
  rw [child]
  dsimp only [result6007]
  try dsimp only [colour, result6008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6009_agree : tree6009 = literal6009 := by
  rw [tree6009_def]
  rfl
theorem node6009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6009 live6009 coloured6009 = result6009 := by
  rw [tree6009_def]
  try dsimp only [colour, result6009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6010_agree : tree6010 = literal6010 := by
  rw [tree6010_def, tree6008_agree, tree6009_agree]
  rfl
theorem node6010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6010 live6010 coloured6010 = result6010 := by
  rw [tree6010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6008_eq
  unfold live6008 coloured6008 at child
  try dsimp only [live6010, coloured6010]
  rw [child]
  dsimp only [result6008]
  have child := node6009_eq
  unfold live6009 coloured6009 at child
  try dsimp only [live6010, coloured6010]
  rw [child]
  dsimp only [result6009]
  try dsimp only [colour, result6010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6011_agree : tree6011 = literal6011 := by
  rw [tree6011_def]
  rfl
theorem node6011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6011 live6011 coloured6011 = result6011 := by
  rw [tree6011_def]
  try dsimp only [colour, result6011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6012_agree : tree6012 = literal6012 := by
  rw [tree6012_def, tree6010_agree, tree6011_agree]
  rfl
theorem node6012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6012 live6012 coloured6012 = result6012 := by
  rw [tree6012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6010_eq
  unfold live6010 coloured6010 at child
  try dsimp only [live6012, coloured6012]
  rw [child]
  dsimp only [result6010]
  have child := node6011_eq
  unfold live6011 coloured6011 at child
  try dsimp only [live6012, coloured6012]
  rw [child]
  dsimp only [result6011]
  try dsimp only [colour, result6012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6013_agree : tree6013 = literal6013 := by
  rw [tree6013_def]
  rfl
theorem node6013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6013 live6013 coloured6013 = result6013 := by
  rw [tree6013_def]
  try dsimp only [colour, result6013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6014_agree : tree6014 = literal6014 := by
  rw [tree6014_def, tree6012_agree, tree6013_agree]
  rfl
theorem node6014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6014 live6014 coloured6014 = result6014 := by
  rw [tree6014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6012_eq
  unfold live6012 coloured6012 at child
  try dsimp only [live6014, coloured6014]
  rw [child]
  dsimp only [result6012]
  have child := node6013_eq
  unfold live6013 coloured6013 at child
  try dsimp only [live6014, coloured6014]
  rw [child]
  dsimp only [result6013]
  try dsimp only [colour, result6014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6015_agree : tree6015 = literal6015 := by
  rw [tree6015_def]
  rfl
theorem node6015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6015 live6015 coloured6015 = result6015 := by
  rw [tree6015_def]
  try dsimp only [colour, result6015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6016_agree : tree6016 = literal6016 := by
  rw [tree6016_def, tree6014_agree, tree6015_agree]
  rfl
theorem node6016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6016 live6016 coloured6016 = result6016 := by
  rw [tree6016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6014_eq
  unfold live6014 coloured6014 at child
  try dsimp only [live6016, coloured6016]
  rw [child]
  dsimp only [result6014]
  have child := node6015_eq
  unfold live6015 coloured6015 at child
  try dsimp only [live6016, coloured6016]
  rw [child]
  dsimp only [result6015]
  try dsimp only [colour, result6016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6017_agree : tree6017 = literal6017 := by
  rw [tree6017_def]
  rfl
theorem node6017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6017 live6017 coloured6017 = result6017 := by
  rw [tree6017_def]
  try dsimp only [colour, result6017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6018_agree : tree6018 = literal6018 := by
  rw [tree6018_def, tree6016_agree, tree6017_agree]
  rfl
theorem node6018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6018 live6018 coloured6018 = result6018 := by
  rw [tree6018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6016_eq
  unfold live6016 coloured6016 at child
  try dsimp only [live6018, coloured6018]
  rw [child]
  dsimp only [result6016]
  have child := node6017_eq
  unfold live6017 coloured6017 at child
  try dsimp only [live6018, coloured6018]
  rw [child]
  dsimp only [result6017]
  try dsimp only [colour, result6018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6019_agree : tree6019 = literal6019 := by
  rw [tree6019_def]
  rfl
theorem node6019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6019 live6019 coloured6019 = result6019 := by
  rw [tree6019_def]
  try dsimp only [colour, result6019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6020_agree : tree6020 = literal6020 := by
  rw [tree6020_def, tree6018_agree, tree6019_agree]
  rfl
theorem node6020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6020 live6020 coloured6020 = result6020 := by
  rw [tree6020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6018_eq
  unfold live6018 coloured6018 at child
  try dsimp only [live6020, coloured6020]
  rw [child]
  dsimp only [result6018]
  have child := node6019_eq
  unfold live6019 coloured6019 at child
  try dsimp only [live6020, coloured6020]
  rw [child]
  dsimp only [result6019]
  try dsimp only [colour, result6020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6021_agree : tree6021 = literal6021 := by
  rw [tree6021_def]
  rfl
theorem node6021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6021 live6021 coloured6021 = result6021 := by
  rw [tree6021_def]
  try dsimp only [colour, result6021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6022_agree : tree6022 = literal6022 := by
  rw [tree6022_def, tree6020_agree, tree6021_agree]
  rfl
theorem node6022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6022 live6022 coloured6022 = result6022 := by
  rw [tree6022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6020_eq
  unfold live6020 coloured6020 at child
  try dsimp only [live6022, coloured6022]
  rw [child]
  dsimp only [result6020]
  have child := node6021_eq
  unfold live6021 coloured6021 at child
  try dsimp only [live6022, coloured6022]
  rw [child]
  dsimp only [result6021]
  try dsimp only [colour, result6022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6023_agree : tree6023 = literal6023 := by
  rw [tree6023_def]
  rfl
theorem node6023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6023 live6023 coloured6023 = result6023 := by
  rw [tree6023_def]
  try dsimp only [colour, result6023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6024_agree : tree6024 = literal6024 := by
  rw [tree6024_def, tree6022_agree, tree6023_agree]
  rfl
theorem node6024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6024 live6024 coloured6024 = result6024 := by
  rw [tree6024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6022_eq
  unfold live6022 coloured6022 at child
  try dsimp only [live6024, coloured6024]
  rw [child]
  dsimp only [result6022]
  have child := node6023_eq
  unfold live6023 coloured6023 at child
  try dsimp only [live6024, coloured6024]
  rw [child]
  dsimp only [result6023]
  try dsimp only [colour, result6024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6025_agree : tree6025 = literal6025 := by
  rw [tree6025_def]
  rfl
theorem node6025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6025 live6025 coloured6025 = result6025 := by
  rw [tree6025_def]
  try dsimp only [colour, result6025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6026_agree : tree6026 = literal6026 := by
  rw [tree6026_def, tree6024_agree, tree6025_agree]
  rfl
theorem node6026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6026 live6026 coloured6026 = result6026 := by
  rw [tree6026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6024_eq
  unfold live6024 coloured6024 at child
  try dsimp only [live6026, coloured6026]
  rw [child]
  dsimp only [result6024]
  have child := node6025_eq
  unfold live6025 coloured6025 at child
  try dsimp only [live6026, coloured6026]
  rw [child]
  dsimp only [result6025]
  try dsimp only [colour, result6026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6027_agree : tree6027 = literal6027 := by
  rw [tree6027_def]
  rfl
theorem node6027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6027 live6027 coloured6027 = result6027 := by
  rw [tree6027_def]
  try dsimp only [colour, result6027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6028_agree : tree6028 = literal6028 := by
  rw [tree6028_def, tree6026_agree, tree6027_agree]
  rfl
theorem node6028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6028 live6028 coloured6028 = result6028 := by
  rw [tree6028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6026_eq
  unfold live6026 coloured6026 at child
  try dsimp only [live6028, coloured6028]
  rw [child]
  dsimp only [result6026]
  have child := node6027_eq
  unfold live6027 coloured6027 at child
  try dsimp only [live6028, coloured6028]
  rw [child]
  dsimp only [result6027]
  try dsimp only [colour, result6028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6029_agree : tree6029 = literal6029 := by
  rw [tree6029_def]
  rfl
theorem node6029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6029 live6029 coloured6029 = result6029 := by
  rw [tree6029_def]
  try dsimp only [colour, result6029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6030_agree : tree6030 = literal6030 := by
  rw [tree6030_def, tree6028_agree, tree6029_agree]
  rfl
theorem node6030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6030 live6030 coloured6030 = result6030 := by
  rw [tree6030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6028_eq
  unfold live6028 coloured6028 at child
  try dsimp only [live6030, coloured6030]
  rw [child]
  dsimp only [result6028]
  have child := node6029_eq
  unfold live6029 coloured6029 at child
  try dsimp only [live6030, coloured6030]
  rw [child]
  dsimp only [result6029]
  try dsimp only [colour, result6030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6031_agree : tree6031 = literal6031 := by
  rw [tree6031_def]
  rfl
theorem node6031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6031 live6031 coloured6031 = result6031 := by
  rw [tree6031_def]
  try dsimp only [colour, result6031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6032_agree : tree6032 = literal6032 := by
  rw [tree6032_def, tree6030_agree, tree6031_agree]
  rfl
theorem node6032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6032 live6032 coloured6032 = result6032 := by
  rw [tree6032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6030_eq
  unfold live6030 coloured6030 at child
  try dsimp only [live6032, coloured6032]
  rw [child]
  dsimp only [result6030]
  have child := node6031_eq
  unfold live6031 coloured6031 at child
  try dsimp only [live6032, coloured6032]
  rw [child]
  dsimp only [result6031]
  try dsimp only [colour, result6032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6033_agree : tree6033 = literal6033 := by
  rw [tree6033_def]
  rfl
theorem node6033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6033 live6033 coloured6033 = result6033 := by
  rw [tree6033_def]
  try dsimp only [colour, result6033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6034_agree : tree6034 = literal6034 := by
  rw [tree6034_def, tree6032_agree, tree6033_agree]
  rfl
theorem node6034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6034 live6034 coloured6034 = result6034 := by
  rw [tree6034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6032_eq
  unfold live6032 coloured6032 at child
  try dsimp only [live6034, coloured6034]
  rw [child]
  dsimp only [result6032]
  have child := node6033_eq
  unfold live6033 coloured6033 at child
  try dsimp only [live6034, coloured6034]
  rw [child]
  dsimp only [result6033]
  try dsimp only [colour, result6034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6035_agree : tree6035 = literal6035 := by
  rw [tree6035_def]
  rfl
theorem node6035_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6035 live6035 coloured6035 = result6035 := by
  rw [tree6035_def]
  try dsimp only [colour, result6035]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6036_agree : tree6036 = literal6036 := by
  rw [tree6036_def, tree6034_agree, tree6035_agree]
  rfl
theorem node6036_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6036 live6036 coloured6036 = result6036 := by
  rw [tree6036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6034_eq
  unfold live6034 coloured6034 at child
  try dsimp only [live6036, coloured6036]
  rw [child]
  dsimp only [result6034]
  have child := node6035_eq
  unfold live6035 coloured6035 at child
  try dsimp only [live6036, coloured6036]
  rw [child]
  dsimp only [result6035]
  try dsimp only [colour, result6036]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6037_agree : tree6037 = literal6037 := by
  rw [tree6037_def]
  rfl
theorem node6037_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6037 live6037 coloured6037 = result6037 := by
  rw [tree6037_def]
  try dsimp only [colour, result6037]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6038_agree : tree6038 = literal6038 := by
  rw [tree6038_def, tree6036_agree, tree6037_agree]
  rfl
theorem node6038_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6038 live6038 coloured6038 = result6038 := by
  rw [tree6038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6036_eq
  unfold live6036 coloured6036 at child
  try dsimp only [live6038, coloured6038]
  rw [child]
  dsimp only [result6036]
  have child := node6037_eq
  unfold live6037 coloured6037 at child
  try dsimp only [live6038, coloured6038]
  rw [child]
  dsimp only [result6037]
  try dsimp only [colour, result6038]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6039_agree : tree6039 = literal6039 := by
  rw [tree6039_def]
  rfl
theorem node6039_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6039 live6039 coloured6039 = result6039 := by
  rw [tree6039_def]
  try dsimp only [colour, result6039]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6040_agree : tree6040 = literal6040 := by
  rw [tree6040_def, tree6038_agree, tree6039_agree]
  rfl
theorem node6040_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6040 live6040 coloured6040 = result6040 := by
  rw [tree6040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6038_eq
  unfold live6038 coloured6038 at child
  try dsimp only [live6040, coloured6040]
  rw [child]
  dsimp only [result6038]
  have child := node6039_eq
  unfold live6039 coloured6039 at child
  try dsimp only [live6040, coloured6040]
  rw [child]
  dsimp only [result6039]
  try dsimp only [colour, result6040]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6041_agree : tree6041 = literal6041 := by
  rw [tree6041_def]
  rfl
theorem node6041_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6041 live6041 coloured6041 = result6041 := by
  rw [tree6041_def]
  try dsimp only [colour, result6041]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6042_agree : tree6042 = literal6042 := by
  rw [tree6042_def, tree6040_agree, tree6041_agree]
  rfl
theorem node6042_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6042 live6042 coloured6042 = result6042 := by
  rw [tree6042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6040_eq
  unfold live6040 coloured6040 at child
  try dsimp only [live6042, coloured6042]
  rw [child]
  dsimp only [result6040]
  have child := node6041_eq
  unfold live6041 coloured6041 at child
  try dsimp only [live6042, coloured6042]
  rw [child]
  dsimp only [result6041]
  try dsimp only [colour, result6042]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6043_agree : tree6043 = literal6043 := by
  rw [tree6043_def]
  rfl
theorem node6043_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6043 live6043 coloured6043 = result6043 := by
  rw [tree6043_def]
  try dsimp only [colour, result6043]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6044_agree : tree6044 = literal6044 := by
  rw [tree6044_def, tree6042_agree, tree6043_agree]
  rfl
theorem node6044_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6044 live6044 coloured6044 = result6044 := by
  rw [tree6044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6042_eq
  unfold live6042 coloured6042 at child
  try dsimp only [live6044, coloured6044]
  rw [child]
  dsimp only [result6042]
  have child := node6043_eq
  unfold live6043 coloured6043 at child
  try dsimp only [live6044, coloured6044]
  rw [child]
  dsimp only [result6043]
  try dsimp only [colour, result6044]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6045_agree : tree6045 = literal6045 := by
  rw [tree6045_def]
  rfl
theorem node6045_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6045 live6045 coloured6045 = result6045 := by
  rw [tree6045_def]
  try dsimp only [colour, result6045]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6046_agree : tree6046 = literal6046 := by
  rw [tree6046_def, tree6044_agree, tree6045_agree]
  rfl
theorem node6046_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6046 live6046 coloured6046 = result6046 := by
  rw [tree6046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6044_eq
  unfold live6044 coloured6044 at child
  try dsimp only [live6046, coloured6046]
  rw [child]
  dsimp only [result6044]
  have child := node6045_eq
  unfold live6045 coloured6045 at child
  try dsimp only [live6046, coloured6046]
  rw [child]
  dsimp only [result6045]
  try dsimp only [colour, result6046]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6047_agree : tree6047 = literal6047 := by
  rw [tree6047_def]
  rfl
theorem node6047_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6047 live6047 coloured6047 = result6047 := by
  rw [tree6047_def]
  try dsimp only [colour, result6047]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
