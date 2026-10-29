import InitECandidate.Proofs.ClashStages874.Proof9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages874
theorem tree960_agree : tree960 = literal960 := by
  rw [tree960_def, tree958_agree, tree959_agree]
  rfl
theorem node960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree960 live960 coloured960 = result960 := by
  rw [tree960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node958_eq
  unfold live958 coloured958 at child
  try dsimp only [live960, coloured960]
  rw [child]
  dsimp only [result958]
  have child := node959_eq
  unfold live959 coloured959 at child
  try dsimp only [live960, coloured960]
  rw [child]
  dsimp only [result959]
  try dsimp only [colour, result960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree961_agree : tree961 = literal961 := by
  rw [tree961_def]
  rfl
theorem node961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree961 live961 coloured961 = result961 := by
  rw [tree961_def]
  try dsimp only [colour, result961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree962_agree : tree962 = literal962 := by
  rw [tree962_def]
  rfl
theorem node962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree962 live962 coloured962 = result962 := by
  rw [tree962_def]
  try dsimp only [colour, result962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree963_agree : tree963 = literal963 := by
  rw [tree963_def, tree961_agree, tree962_agree]
  rfl
theorem node963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree963 live963 coloured963 = result963 := by
  rw [tree963_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node961_eq
  unfold live961 coloured961 at child
  try dsimp only [live963, coloured963]
  rw [child]
  dsimp only [result961]
  have child := node962_eq
  unfold live962 coloured962 at child
  try dsimp only [live963, coloured963]
  rw [child]
  dsimp only [result962]
  try dsimp only [colour, result963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree964_agree : tree964 = literal964 := by
  rw [tree964_def]
  rfl
theorem node964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree964 live964 coloured964 = result964 := by
  rw [tree964_def]
  try dsimp only [colour, result964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree965_agree : tree965 = literal965 := by
  rw [tree965_def]
  rfl
theorem node965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree965 live965 coloured965 = result965 := by
  rw [tree965_def]
  try dsimp only [colour, result965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree966_agree : tree966 = literal966 := by
  rw [tree966_def, tree964_agree, tree965_agree]
  rfl
theorem node966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree966 live966 coloured966 = result966 := by
  rw [tree966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node964_eq
  unfold live964 coloured964 at child
  try dsimp only [live966, coloured966]
  rw [child]
  dsimp only [result964]
  have child := node965_eq
  unfold live965 coloured965 at child
  try dsimp only [live966, coloured966]
  rw [child]
  dsimp only [result965]
  try dsimp only [colour, result966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree967_agree : tree967 = literal967 := by
  rw [tree967_def, tree963_agree, tree966_agree]
  rfl
theorem node967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree967 live967 coloured967 = result967 := by
  rw [tree967_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node963_eq
  unfold live963 coloured963 at child
  try dsimp only [live967, coloured967]
  rw [child]
  dsimp only [result963]
  have child := node966_eq
  unfold live966 coloured966 at child
  try dsimp only [live967, coloured967]
  rw [child]
  dsimp only [result966]
  try dsimp only [colour, result967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree968_agree : tree968 = literal968 := by
  rw [tree968_def]
  rfl
theorem node968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree968 live968 coloured968 = result968 := by
  rw [tree968_def]
  try dsimp only [colour, result968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree969_agree : tree969 = literal969 := by
  rw [tree969_def, tree967_agree, tree968_agree]
  rfl
theorem node969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree969 live969 coloured969 = result969 := by
  rw [tree969_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node967_eq
  unfold live967 coloured967 at child
  try dsimp only [live969, coloured969]
  rw [child]
  dsimp only [result967]
  have child := node968_eq
  unfold live968 coloured968 at child
  try dsimp only [live969, coloured969]
  rw [child]
  dsimp only [result968]
  try dsimp only [colour, result969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree970_agree : tree970 = literal970 := by
  rw [tree970_def, tree960_agree, tree969_agree]
  rfl
theorem node970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree970 live970 coloured970 = result970 := by
  rw [tree970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node960_eq
  unfold live960 coloured960 at child
  try dsimp only [live970, coloured970]
  rw [child]
  dsimp only [result960]
  have child := node969_eq
  unfold live969 coloured969 at child
  try dsimp only [live970, coloured970]
  rw [child]
  dsimp only [result969]
  try dsimp only [colour, result970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree971_agree : tree971 = literal971 := by
  rw [tree971_def]
  rfl
theorem node971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree971 live971 coloured971 = result971 := by
  rw [tree971_def]
  try dsimp only [colour, result971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree972_agree : tree972 = literal972 := by
  rw [tree972_def, tree970_agree, tree971_agree]
  rfl
theorem node972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree972 live972 coloured972 = result972 := by
  rw [tree972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node970_eq
  unfold live970 coloured970 at child
  try dsimp only [live972, coloured972]
  rw [child]
  dsimp only [result970]
  have child := node971_eq
  unfold live971 coloured971 at child
  try dsimp only [live972, coloured972]
  rw [child]
  dsimp only [result971]
  try dsimp only [colour, result972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree973_agree : tree973 = literal973 := by
  rw [tree973_def]
  rfl
theorem node973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree973 live973 coloured973 = result973 := by
  rw [tree973_def]
  try dsimp only [colour, result973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree974_agree : tree974 = literal974 := by
  rw [tree974_def, tree972_agree, tree973_agree]
  rfl
theorem node974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree974 live974 coloured974 = result974 := by
  rw [tree974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node972_eq
  unfold live972 coloured972 at child
  try dsimp only [live974, coloured974]
  rw [child]
  dsimp only [result972]
  have child := node973_eq
  unfold live973 coloured973 at child
  try dsimp only [live974, coloured974]
  rw [child]
  dsimp only [result973]
  try dsimp only [colour, result974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree975_agree : tree975 = literal975 := by
  rw [tree975_def]
  rfl
theorem node975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree975 live975 coloured975 = result975 := by
  rw [tree975_def]
  try dsimp only [colour, result975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree976_agree : tree976 = literal976 := by
  rw [tree976_def, tree974_agree, tree975_agree]
  rfl
theorem node976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree976 live976 coloured976 = result976 := by
  rw [tree976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node974_eq
  unfold live974 coloured974 at child
  try dsimp only [live976, coloured976]
  rw [child]
  dsimp only [result974]
  have child := node975_eq
  unfold live975 coloured975 at child
  try dsimp only [live976, coloured976]
  rw [child]
  dsimp only [result975]
  try dsimp only [colour, result976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree977_agree : tree977 = literal977 := by
  rw [tree977_def]
  rfl
theorem node977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree977 live977 coloured977 = result977 := by
  rw [tree977_def]
  try dsimp only [colour, result977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree978_agree : tree978 = literal978 := by
  rw [tree978_def, tree976_agree, tree977_agree]
  rfl
theorem node978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree978 live978 coloured978 = result978 := by
  rw [tree978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node976_eq
  unfold live976 coloured976 at child
  try dsimp only [live978, coloured978]
  rw [child]
  dsimp only [result976]
  have child := node977_eq
  unfold live977 coloured977 at child
  try dsimp only [live978, coloured978]
  rw [child]
  dsimp only [result977]
  try dsimp only [colour, result978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree979_agree : tree979 = literal979 := by
  rw [tree979_def]
  rfl
theorem node979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree979 live979 coloured979 = result979 := by
  rw [tree979_def]
  try dsimp only [colour, result979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree980_agree : tree980 = literal980 := by
  rw [tree980_def, tree978_agree, tree979_agree]
  rfl
theorem node980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree980 live980 coloured980 = result980 := by
  rw [tree980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node978_eq
  unfold live978 coloured978 at child
  try dsimp only [live980, coloured980]
  rw [child]
  dsimp only [result978]
  have child := node979_eq
  unfold live979 coloured979 at child
  try dsimp only [live980, coloured980]
  rw [child]
  dsimp only [result979]
  try dsimp only [colour, result980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree981_agree : tree981 = literal981 := by
  rw [tree981_def]
  rfl
theorem node981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree981 live981 coloured981 = result981 := by
  rw [tree981_def]
  try dsimp only [colour, result981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree982_agree : tree982 = literal982 := by
  rw [tree982_def, tree980_agree, tree981_agree]
  rfl
theorem node982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree982 live982 coloured982 = result982 := by
  rw [tree982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node980_eq
  unfold live980 coloured980 at child
  try dsimp only [live982, coloured982]
  rw [child]
  dsimp only [result980]
  have child := node981_eq
  unfold live981 coloured981 at child
  try dsimp only [live982, coloured982]
  rw [child]
  dsimp only [result981]
  try dsimp only [colour, result982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree983_agree : tree983 = literal983 := by
  rw [tree983_def]
  rfl
theorem node983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree983 live983 coloured983 = result983 := by
  rw [tree983_def]
  try dsimp only [colour, result983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree984_agree : tree984 = literal984 := by
  rw [tree984_def, tree982_agree, tree983_agree]
  rfl
theorem node984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree984 live984 coloured984 = result984 := by
  rw [tree984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node982_eq
  unfold live982 coloured982 at child
  try dsimp only [live984, coloured984]
  rw [child]
  dsimp only [result982]
  have child := node983_eq
  unfold live983 coloured983 at child
  try dsimp only [live984, coloured984]
  rw [child]
  dsimp only [result983]
  try dsimp only [colour, result984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree985_agree : tree985 = literal985 := by
  rw [tree985_def]
  rfl
theorem node985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree985 live985 coloured985 = result985 := by
  rw [tree985_def]
  try dsimp only [colour, result985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree986_agree : tree986 = literal986 := by
  rw [tree986_def, tree984_agree, tree985_agree]
  rfl
theorem node986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree986 live986 coloured986 = result986 := by
  rw [tree986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node984_eq
  unfold live984 coloured984 at child
  try dsimp only [live986, coloured986]
  rw [child]
  dsimp only [result984]
  have child := node985_eq
  unfold live985 coloured985 at child
  try dsimp only [live986, coloured986]
  rw [child]
  dsimp only [result985]
  try dsimp only [colour, result986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree987_agree : tree987 = literal987 := by
  rw [tree987_def]
  rfl
theorem node987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree987 live987 coloured987 = result987 := by
  rw [tree987_def]
  try dsimp only [colour, result987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree988_agree : tree988 = literal988 := by
  rw [tree988_def, tree986_agree, tree987_agree]
  rfl
theorem node988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree988 live988 coloured988 = result988 := by
  rw [tree988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node986_eq
  unfold live986 coloured986 at child
  try dsimp only [live988, coloured988]
  rw [child]
  dsimp only [result986]
  have child := node987_eq
  unfold live987 coloured987 at child
  try dsimp only [live988, coloured988]
  rw [child]
  dsimp only [result987]
  try dsimp only [colour, result988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree989_agree : tree989 = literal989 := by
  rw [tree989_def]
  rfl
theorem node989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree989 live989 coloured989 = result989 := by
  rw [tree989_def]
  try dsimp only [colour, result989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree990_agree : tree990 = literal990 := by
  rw [tree990_def, tree988_agree, tree989_agree]
  rfl
theorem node990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree990 live990 coloured990 = result990 := by
  rw [tree990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node988_eq
  unfold live988 coloured988 at child
  try dsimp only [live990, coloured990]
  rw [child]
  dsimp only [result988]
  have child := node989_eq
  unfold live989 coloured989 at child
  try dsimp only [live990, coloured990]
  rw [child]
  dsimp only [result989]
  try dsimp only [colour, result990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree991_agree : tree991 = literal991 := by
  rw [tree991_def]
  rfl
theorem node991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree991 live991 coloured991 = result991 := by
  rw [tree991_def]
  try dsimp only [colour, result991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree992_agree : tree992 = literal992 := by
  rw [tree992_def, tree990_agree, tree991_agree]
  rfl
theorem node992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree992 live992 coloured992 = result992 := by
  rw [tree992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node990_eq
  unfold live990 coloured990 at child
  try dsimp only [live992, coloured992]
  rw [child]
  dsimp only [result990]
  have child := node991_eq
  unfold live991 coloured991 at child
  try dsimp only [live992, coloured992]
  rw [child]
  dsimp only [result991]
  try dsimp only [colour, result992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree993_agree : tree993 = literal993 := by
  rw [tree993_def]
  rfl
theorem node993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree993 live993 coloured993 = result993 := by
  rw [tree993_def]
  try dsimp only [colour, result993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree994_agree : tree994 = literal994 := by
  rw [tree994_def, tree992_agree, tree993_agree]
  rfl
theorem node994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree994 live994 coloured994 = result994 := by
  rw [tree994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node992_eq
  unfold live992 coloured992 at child
  try dsimp only [live994, coloured994]
  rw [child]
  dsimp only [result992]
  have child := node993_eq
  unfold live993 coloured993 at child
  try dsimp only [live994, coloured994]
  rw [child]
  dsimp only [result993]
  try dsimp only [colour, result994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree995_agree : tree995 = literal995 := by
  rw [tree995_def]
  rfl
theorem node995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree995 live995 coloured995 = result995 := by
  rw [tree995_def]
  try dsimp only [colour, result995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree996_agree : tree996 = literal996 := by
  rw [tree996_def, tree994_agree, tree995_agree]
  rfl
theorem node996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree996 live996 coloured996 = result996 := by
  rw [tree996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node994_eq
  unfold live994 coloured994 at child
  try dsimp only [live996, coloured996]
  rw [child]
  dsimp only [result994]
  have child := node995_eq
  unfold live995 coloured995 at child
  try dsimp only [live996, coloured996]
  rw [child]
  dsimp only [result995]
  try dsimp only [colour, result996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree997_agree : tree997 = literal997 := by
  rw [tree997_def]
  rfl
theorem node997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree997 live997 coloured997 = result997 := by
  rw [tree997_def]
  try dsimp only [colour, result997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree998_agree : tree998 = literal998 := by
  rw [tree998_def, tree996_agree, tree997_agree]
  rfl
theorem node998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree998 live998 coloured998 = result998 := by
  rw [tree998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node996_eq
  unfold live996 coloured996 at child
  try dsimp only [live998, coloured998]
  rw [child]
  dsimp only [result996]
  have child := node997_eq
  unfold live997 coloured997 at child
  try dsimp only [live998, coloured998]
  rw [child]
  dsimp only [result997]
  try dsimp only [colour, result998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree999_agree : tree999 = literal999 := by
  rw [tree999_def]
  rfl
theorem node999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree999 live999 coloured999 = result999 := by
  rw [tree999_def]
  try dsimp only [colour, result999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1000_agree : tree1000 = literal1000 := by
  rw [tree1000_def, tree998_agree, tree999_agree]
  rfl
theorem node1000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1000 live1000 coloured1000 = result1000 := by
  rw [tree1000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node998_eq
  unfold live998 coloured998 at child
  try dsimp only [live1000, coloured1000]
  rw [child]
  dsimp only [result998]
  have child := node999_eq
  unfold live999 coloured999 at child
  try dsimp only [live1000, coloured1000]
  rw [child]
  dsimp only [result999]
  try dsimp only [colour, result1000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1001_agree : tree1001 = literal1001 := by
  rw [tree1001_def]
  rfl
theorem node1001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1001 live1001 coloured1001 = result1001 := by
  rw [tree1001_def]
  try dsimp only [colour, result1001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1002_agree : tree1002 = literal1002 := by
  rw [tree1002_def, tree1000_agree, tree1001_agree]
  rfl
theorem node1002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1002 live1002 coloured1002 = result1002 := by
  rw [tree1002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1000_eq
  unfold live1000 coloured1000 at child
  try dsimp only [live1002, coloured1002]
  rw [child]
  dsimp only [result1000]
  have child := node1001_eq
  unfold live1001 coloured1001 at child
  try dsimp only [live1002, coloured1002]
  rw [child]
  dsimp only [result1001]
  try dsimp only [colour, result1002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1003_agree : tree1003 = literal1003 := by
  rw [tree1003_def]
  rfl
theorem node1003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1003 live1003 coloured1003 = result1003 := by
  rw [tree1003_def]
  try dsimp only [colour, result1003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1004_agree : tree1004 = literal1004 := by
  rw [tree1004_def]
  rfl
theorem node1004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1004 live1004 coloured1004 = result1004 := by
  rw [tree1004_def]
  try dsimp only [colour, result1004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1005_agree : tree1005 = literal1005 := by
  rw [tree1005_def, tree1003_agree, tree1004_agree]
  rfl
theorem node1005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1005 live1005 coloured1005 = result1005 := by
  rw [tree1005_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1003_eq
  unfold live1003 coloured1003 at child
  try dsimp only [live1005, coloured1005]
  rw [child]
  dsimp only [result1003]
  have child := node1004_eq
  unfold live1004 coloured1004 at child
  try dsimp only [live1005, coloured1005]
  rw [child]
  dsimp only [result1004]
  try dsimp only [colour, result1005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1006_agree : tree1006 = literal1006 := by
  rw [tree1006_def]
  rfl
theorem node1006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1006 live1006 coloured1006 = result1006 := by
  rw [tree1006_def]
  try dsimp only [colour, result1006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1007_agree : tree1007 = literal1007 := by
  rw [tree1007_def]
  rfl
theorem node1007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1007 live1007 coloured1007 = result1007 := by
  rw [tree1007_def]
  try dsimp only [colour, result1007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1008_agree : tree1008 = literal1008 := by
  rw [tree1008_def, tree1006_agree, tree1007_agree]
  rfl
theorem node1008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1008 live1008 coloured1008 = result1008 := by
  rw [tree1008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1006_eq
  unfold live1006 coloured1006 at child
  try dsimp only [live1008, coloured1008]
  rw [child]
  dsimp only [result1006]
  have child := node1007_eq
  unfold live1007 coloured1007 at child
  try dsimp only [live1008, coloured1008]
  rw [child]
  dsimp only [result1007]
  try dsimp only [colour, result1008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1009_agree : tree1009 = literal1009 := by
  rw [tree1009_def]
  rfl
theorem node1009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1009 live1009 coloured1009 = result1009 := by
  rw [tree1009_def]
  try dsimp only [colour, result1009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1010_agree : tree1010 = literal1010 := by
  rw [tree1010_def, tree1008_agree, tree1009_agree]
  rfl
theorem node1010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1010 live1010 coloured1010 = result1010 := by
  rw [tree1010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1008_eq
  unfold live1008 coloured1008 at child
  try dsimp only [live1010, coloured1010]
  rw [child]
  dsimp only [result1008]
  have child := node1009_eq
  unfold live1009 coloured1009 at child
  try dsimp only [live1010, coloured1010]
  rw [child]
  dsimp only [result1009]
  try dsimp only [colour, result1010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1011_agree : tree1011 = literal1011 := by
  rw [tree1011_def, tree1005_agree, tree1010_agree]
  rfl
theorem node1011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1011 live1011 coloured1011 = result1011 := by
  rw [tree1011_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1005_eq
  unfold live1005 coloured1005 at child
  try dsimp only [live1011, coloured1011]
  rw [child]
  dsimp only [result1005]
  have child := node1010_eq
  unfold live1010 coloured1010 at child
  try dsimp only [live1011, coloured1011]
  rw [child]
  dsimp only [result1010]
  try dsimp only [colour, result1011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1012_agree : tree1012 = literal1012 := by
  rw [tree1012_def, tree1002_agree, tree1011_agree]
  rfl
theorem node1012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1012 live1012 coloured1012 = result1012 := by
  rw [tree1012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1002_eq
  unfold live1002 coloured1002 at child
  try dsimp only [live1012, coloured1012]
  rw [child]
  dsimp only [result1002]
  have child := node1011_eq
  unfold live1011 coloured1011 at child
  try dsimp only [live1012, coloured1012]
  rw [child]
  dsimp only [result1011]
  try dsimp only [colour, result1012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1013_agree : tree1013 = literal1013 := by
  rw [tree1013_def]
  rfl
theorem node1013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1013 live1013 coloured1013 = result1013 := by
  rw [tree1013_def]
  try dsimp only [colour, result1013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1014_agree : tree1014 = literal1014 := by
  rw [tree1014_def, tree1012_agree, tree1013_agree]
  rfl
theorem node1014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1014 live1014 coloured1014 = result1014 := by
  rw [tree1014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1012_eq
  unfold live1012 coloured1012 at child
  try dsimp only [live1014, coloured1014]
  rw [child]
  dsimp only [result1012]
  have child := node1013_eq
  unfold live1013 coloured1013 at child
  try dsimp only [live1014, coloured1014]
  rw [child]
  dsimp only [result1013]
  try dsimp only [colour, result1014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1015_agree : tree1015 = literal1015 := by
  rw [tree1015_def]
  rfl
theorem node1015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1015 live1015 coloured1015 = result1015 := by
  rw [tree1015_def]
  try dsimp only [colour, result1015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1016_agree : tree1016 = literal1016 := by
  rw [tree1016_def, tree1014_agree, tree1015_agree]
  rfl
theorem node1016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1016 live1016 coloured1016 = result1016 := by
  rw [tree1016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1014_eq
  unfold live1014 coloured1014 at child
  try dsimp only [live1016, coloured1016]
  rw [child]
  dsimp only [result1014]
  have child := node1015_eq
  unfold live1015 coloured1015 at child
  try dsimp only [live1016, coloured1016]
  rw [child]
  dsimp only [result1015]
  try dsimp only [colour, result1016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1017_agree : tree1017 = literal1017 := by
  rw [tree1017_def]
  rfl
theorem node1017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1017 live1017 coloured1017 = result1017 := by
  rw [tree1017_def]
  try dsimp only [colour, result1017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1018_agree : tree1018 = literal1018 := by
  rw [tree1018_def, tree1016_agree, tree1017_agree]
  rfl
theorem node1018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1018 live1018 coloured1018 = result1018 := by
  rw [tree1018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1016_eq
  unfold live1016 coloured1016 at child
  try dsimp only [live1018, coloured1018]
  rw [child]
  dsimp only [result1016]
  have child := node1017_eq
  unfold live1017 coloured1017 at child
  try dsimp only [live1018, coloured1018]
  rw [child]
  dsimp only [result1017]
  try dsimp only [colour, result1018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1019_agree : tree1019 = literal1019 := by
  rw [tree1019_def]
  rfl
theorem node1019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1019 live1019 coloured1019 = result1019 := by
  rw [tree1019_def]
  try dsimp only [colour, result1019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1020_agree : tree1020 = literal1020 := by
  rw [tree1020_def]
  rfl
theorem node1020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1020 live1020 coloured1020 = result1020 := by
  rw [tree1020_def]
  try dsimp only [colour, result1020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1021_agree : tree1021 = literal1021 := by
  rw [tree1021_def, tree1019_agree, tree1020_agree]
  rfl
theorem node1021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1021 live1021 coloured1021 = result1021 := by
  rw [tree1021_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1019_eq
  unfold live1019 coloured1019 at child
  try dsimp only [live1021, coloured1021]
  rw [child]
  dsimp only [result1019]
  have child := node1020_eq
  unfold live1020 coloured1020 at child
  try dsimp only [live1021, coloured1021]
  rw [child]
  dsimp only [result1020]
  try dsimp only [colour, result1021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1022_agree : tree1022 = literal1022 := by
  rw [tree1022_def]
  rfl
theorem node1022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1022 live1022 coloured1022 = result1022 := by
  rw [tree1022_def]
  try dsimp only [colour, result1022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1023_agree : tree1023 = literal1023 := by
  rw [tree1023_def, tree1021_agree, tree1022_agree]
  rfl
theorem node1023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1023 live1023 coloured1023 = result1023 := by
  rw [tree1023_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1021_eq
  unfold live1021 coloured1021 at child
  try dsimp only [live1023, coloured1023]
  rw [child]
  dsimp only [result1021]
  have child := node1022_eq
  unfold live1022 coloured1022 at child
  try dsimp only [live1023, coloured1023]
  rw [child]
  dsimp only [result1022]
  try dsimp only [colour, result1023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1024_agree : tree1024 = literal1024 := by
  rw [tree1024_def]
  rfl
theorem node1024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1024 live1024 coloured1024 = result1024 := by
  rw [tree1024_def]
  try dsimp only [colour, result1024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1025_agree : tree1025 = literal1025 := by
  rw [tree1025_def, tree1023_agree, tree1024_agree]
  rfl
theorem node1025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1025 live1025 coloured1025 = result1025 := by
  rw [tree1025_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1023_eq
  unfold live1023 coloured1023 at child
  try dsimp only [live1025, coloured1025]
  rw [child]
  dsimp only [result1023]
  have child := node1024_eq
  unfold live1024 coloured1024 at child
  try dsimp only [live1025, coloured1025]
  rw [child]
  dsimp only [result1024]
  try dsimp only [colour, result1025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1026_agree : tree1026 = literal1026 := by
  rw [tree1026_def]
  rfl
theorem node1026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1026 live1026 coloured1026 = result1026 := by
  rw [tree1026_def]
  try dsimp only [colour, result1026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1027_agree : tree1027 = literal1027 := by
  rw [tree1027_def, tree1025_agree, tree1026_agree]
  rfl
theorem node1027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1027 live1027 coloured1027 = result1027 := by
  rw [tree1027_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1025_eq
  unfold live1025 coloured1025 at child
  try dsimp only [live1027, coloured1027]
  rw [child]
  dsimp only [result1025]
  have child := node1026_eq
  unfold live1026 coloured1026 at child
  try dsimp only [live1027, coloured1027]
  rw [child]
  dsimp only [result1026]
  try dsimp only [colour, result1027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1028_agree : tree1028 = literal1028 := by
  rw [tree1028_def]
  rfl
theorem node1028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1028 live1028 coloured1028 = result1028 := by
  rw [tree1028_def]
  try dsimp only [colour, result1028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1029_agree : tree1029 = literal1029 := by
  rw [tree1029_def, tree1027_agree, tree1028_agree]
  rfl
theorem node1029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1029 live1029 coloured1029 = result1029 := by
  rw [tree1029_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1027_eq
  unfold live1027 coloured1027 at child
  try dsimp only [live1029, coloured1029]
  rw [child]
  dsimp only [result1027]
  have child := node1028_eq
  unfold live1028 coloured1028 at child
  try dsimp only [live1029, coloured1029]
  rw [child]
  dsimp only [result1028]
  try dsimp only [colour, result1029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1030_agree : tree1030 = literal1030 := by
  rw [tree1030_def]
  rfl
theorem node1030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1030 live1030 coloured1030 = result1030 := by
  rw [tree1030_def]
  try dsimp only [colour, result1030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1031_agree : tree1031 = literal1031 := by
  rw [tree1031_def, tree1029_agree, tree1030_agree]
  rfl
theorem node1031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1031 live1031 coloured1031 = result1031 := by
  rw [tree1031_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1029_eq
  unfold live1029 coloured1029 at child
  try dsimp only [live1031, coloured1031]
  rw [child]
  dsimp only [result1029]
  have child := node1030_eq
  unfold live1030 coloured1030 at child
  try dsimp only [live1031, coloured1031]
  rw [child]
  dsimp only [result1030]
  try dsimp only [colour, result1031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1032_agree : tree1032 = literal1032 := by
  rw [tree1032_def]
  rfl
theorem node1032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1032 live1032 coloured1032 = result1032 := by
  rw [tree1032_def]
  try dsimp only [colour, result1032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1033_agree : tree1033 = literal1033 := by
  rw [tree1033_def, tree1031_agree, tree1032_agree]
  rfl
theorem node1033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1033 live1033 coloured1033 = result1033 := by
  rw [tree1033_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1031_eq
  unfold live1031 coloured1031 at child
  try dsimp only [live1033, coloured1033]
  rw [child]
  dsimp only [result1031]
  have child := node1032_eq
  unfold live1032 coloured1032 at child
  try dsimp only [live1033, coloured1033]
  rw [child]
  dsimp only [result1032]
  try dsimp only [colour, result1033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1034_agree : tree1034 = literal1034 := by
  rw [tree1034_def]
  rfl
theorem node1034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1034 live1034 coloured1034 = result1034 := by
  rw [tree1034_def]
  try dsimp only [colour, result1034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1035_agree : tree1035 = literal1035 := by
  rw [tree1035_def, tree1033_agree, tree1034_agree]
  rfl
theorem node1035_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1035 live1035 coloured1035 = result1035 := by
  rw [tree1035_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1033_eq
  unfold live1033 coloured1033 at child
  try dsimp only [live1035, coloured1035]
  rw [child]
  dsimp only [result1033]
  have child := node1034_eq
  unfold live1034 coloured1034 at child
  try dsimp only [live1035, coloured1035]
  rw [child]
  dsimp only [result1034]
  try dsimp only [colour, result1035]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1036_agree : tree1036 = literal1036 := by
  rw [tree1036_def, tree1018_agree, tree1035_agree]
  rfl
theorem node1036_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1036 live1036 coloured1036 = result1036 := by
  rw [tree1036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1018_eq
  unfold live1018 coloured1018 at child
  try dsimp only [live1036, coloured1036]
  rw [child]
  dsimp only [result1018]
  have child := node1035_eq
  unfold live1035 coloured1035 at child
  try dsimp only [live1036, coloured1036]
  rw [child]
  dsimp only [result1035]
  try dsimp only [colour, result1036]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1037_agree : tree1037 = literal1037 := by
  rw [tree1037_def]
  rfl
theorem node1037_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1037 live1037 coloured1037 = result1037 := by
  rw [tree1037_def]
  try dsimp only [colour, result1037]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1038_agree : tree1038 = literal1038 := by
  rw [tree1038_def, tree1036_agree, tree1037_agree]
  rfl
theorem node1038_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1038 live1038 coloured1038 = result1038 := by
  rw [tree1038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1036_eq
  unfold live1036 coloured1036 at child
  try dsimp only [live1038, coloured1038]
  rw [child]
  dsimp only [result1036]
  have child := node1037_eq
  unfold live1037 coloured1037 at child
  try dsimp only [live1038, coloured1038]
  rw [child]
  dsimp only [result1037]
  try dsimp only [colour, result1038]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1039_agree : tree1039 = literal1039 := by
  rw [tree1039_def]
  rfl
theorem node1039_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1039 live1039 coloured1039 = result1039 := by
  rw [tree1039_def]
  try dsimp only [colour, result1039]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1040_agree : tree1040 = literal1040 := by
  rw [tree1040_def, tree1038_agree, tree1039_agree]
  rfl
theorem node1040_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1040 live1040 coloured1040 = result1040 := by
  rw [tree1040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1038_eq
  unfold live1038 coloured1038 at child
  try dsimp only [live1040, coloured1040]
  rw [child]
  dsimp only [result1038]
  have child := node1039_eq
  unfold live1039 coloured1039 at child
  try dsimp only [live1040, coloured1040]
  rw [child]
  dsimp only [result1039]
  try dsimp only [colour, result1040]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1041_agree : tree1041 = literal1041 := by
  rw [tree1041_def]
  rfl
theorem node1041_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1041 live1041 coloured1041 = result1041 := by
  rw [tree1041_def]
  try dsimp only [colour, result1041]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1042_agree : tree1042 = literal1042 := by
  rw [tree1042_def]
  rfl
theorem node1042_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1042 live1042 coloured1042 = result1042 := by
  rw [tree1042_def]
  try dsimp only [colour, result1042]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1043_agree : tree1043 = literal1043 := by
  rw [tree1043_def, tree1041_agree, tree1042_agree]
  rfl
theorem node1043_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1043 live1043 coloured1043 = result1043 := by
  rw [tree1043_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1041_eq
  unfold live1041 coloured1041 at child
  try dsimp only [live1043, coloured1043]
  rw [child]
  dsimp only [result1041]
  have child := node1042_eq
  unfold live1042 coloured1042 at child
  try dsimp only [live1043, coloured1043]
  rw [child]
  dsimp only [result1042]
  try dsimp only [colour, result1043]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1044_agree : tree1044 = literal1044 := by
  rw [tree1044_def]
  rfl
theorem node1044_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1044 live1044 coloured1044 = result1044 := by
  rw [tree1044_def]
  try dsimp only [colour, result1044]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1045_agree : tree1045 = literal1045 := by
  rw [tree1045_def]
  rfl
theorem node1045_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1045 live1045 coloured1045 = result1045 := by
  rw [tree1045_def]
  try dsimp only [colour, result1045]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1046_agree : tree1046 = literal1046 := by
  rw [tree1046_def, tree1044_agree, tree1045_agree]
  rfl
theorem node1046_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1046 live1046 coloured1046 = result1046 := by
  rw [tree1046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1044_eq
  unfold live1044 coloured1044 at child
  try dsimp only [live1046, coloured1046]
  rw [child]
  dsimp only [result1044]
  have child := node1045_eq
  unfold live1045 coloured1045 at child
  try dsimp only [live1046, coloured1046]
  rw [child]
  dsimp only [result1045]
  try dsimp only [colour, result1046]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1047_agree : tree1047 = literal1047 := by
  rw [tree1047_def]
  rfl
theorem node1047_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1047 live1047 coloured1047 = result1047 := by
  rw [tree1047_def]
  try dsimp only [colour, result1047]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1048_agree : tree1048 = literal1048 := by
  rw [tree1048_def, tree1046_agree, tree1047_agree]
  rfl
theorem node1048_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1048 live1048 coloured1048 = result1048 := by
  rw [tree1048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1046_eq
  unfold live1046 coloured1046 at child
  try dsimp only [live1048, coloured1048]
  rw [child]
  dsimp only [result1046]
  have child := node1047_eq
  unfold live1047 coloured1047 at child
  try dsimp only [live1048, coloured1048]
  rw [child]
  dsimp only [result1047]
  try dsimp only [colour, result1048]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1049_agree : tree1049 = literal1049 := by
  rw [tree1049_def, tree1043_agree, tree1048_agree]
  rfl
theorem node1049_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1049 live1049 coloured1049 = result1049 := by
  rw [tree1049_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1043_eq
  unfold live1043 coloured1043 at child
  try dsimp only [live1049, coloured1049]
  rw [child]
  dsimp only [result1043]
  have child := node1048_eq
  unfold live1048 coloured1048 at child
  try dsimp only [live1049, coloured1049]
  rw [child]
  dsimp only [result1048]
  try dsimp only [colour, result1049]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1050_agree : tree1050 = literal1050 := by
  rw [tree1050_def, tree1040_agree, tree1049_agree]
  rfl
theorem node1050_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1050 live1050 coloured1050 = result1050 := by
  rw [tree1050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1040_eq
  unfold live1040 coloured1040 at child
  try dsimp only [live1050, coloured1050]
  rw [child]
  dsimp only [result1040]
  have child := node1049_eq
  unfold live1049 coloured1049 at child
  try dsimp only [live1050, coloured1050]
  rw [child]
  dsimp only [result1049]
  try dsimp only [colour, result1050]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1051_agree : tree1051 = literal1051 := by
  rw [tree1051_def]
  rfl
theorem node1051_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1051 live1051 coloured1051 = result1051 := by
  rw [tree1051_def]
  try dsimp only [colour, result1051]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1052_agree : tree1052 = literal1052 := by
  rw [tree1052_def, tree1050_agree, tree1051_agree]
  rfl
theorem node1052_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1052 live1052 coloured1052 = result1052 := by
  rw [tree1052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1050_eq
  unfold live1050 coloured1050 at child
  try dsimp only [live1052, coloured1052]
  rw [child]
  dsimp only [result1050]
  have child := node1051_eq
  unfold live1051 coloured1051 at child
  try dsimp only [live1052, coloured1052]
  rw [child]
  dsimp only [result1051]
  try dsimp only [colour, result1052]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1053_agree : tree1053 = literal1053 := by
  rw [tree1053_def]
  rfl
theorem node1053_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1053 live1053 coloured1053 = result1053 := by
  rw [tree1053_def]
  try dsimp only [colour, result1053]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1054_agree : tree1054 = literal1054 := by
  rw [tree1054_def, tree1052_agree, tree1053_agree]
  rfl
theorem node1054_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1054 live1054 coloured1054 = result1054 := by
  rw [tree1054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1052_eq
  unfold live1052 coloured1052 at child
  try dsimp only [live1054, coloured1054]
  rw [child]
  dsimp only [result1052]
  have child := node1053_eq
  unfold live1053 coloured1053 at child
  try dsimp only [live1054, coloured1054]
  rw [child]
  dsimp only [result1053]
  try dsimp only [colour, result1054]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1055_agree : tree1055 = literal1055 := by
  rw [tree1055_def]
  rfl
theorem node1055_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1055 live1055 coloured1055 = result1055 := by
  rw [tree1055_def]
  try dsimp only [colour, result1055]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages874
