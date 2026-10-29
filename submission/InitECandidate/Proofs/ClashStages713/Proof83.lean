import InitECandidate.Proofs.ClashStages713.Proof82
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree7968_agree : tree7968 = literal7968 := by
  rw [tree7968_def, tree7966_agree, tree7967_agree]
  rfl
theorem node7968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7968 live7968 coloured7968 = result7968 := by
  rw [tree7968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7966_eq
  unfold live7966 coloured7966 at child
  try dsimp only [live7968, coloured7968]
  rw [child]
  dsimp only [result7966]
  have child := node7967_eq
  unfold live7967 coloured7967 at child
  try dsimp only [live7968, coloured7968]
  rw [child]
  dsimp only [result7967]
  try dsimp only [colour, result7968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7969_agree : tree7969 = literal7969 := by
  rw [tree7969_def]
  rfl
theorem node7969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7969 live7969 coloured7969 = result7969 := by
  rw [tree7969_def]
  try dsimp only [colour, result7969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7970_agree : tree7970 = literal7970 := by
  rw [tree7970_def, tree7968_agree, tree7969_agree]
  rfl
theorem node7970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7970 live7970 coloured7970 = result7970 := by
  rw [tree7970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7968_eq
  unfold live7968 coloured7968 at child
  try dsimp only [live7970, coloured7970]
  rw [child]
  dsimp only [result7968]
  have child := node7969_eq
  unfold live7969 coloured7969 at child
  try dsimp only [live7970, coloured7970]
  rw [child]
  dsimp only [result7969]
  try dsimp only [colour, result7970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7971_agree : tree7971 = literal7971 := by
  rw [tree7971_def]
  rfl
theorem node7971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7971 live7971 coloured7971 = result7971 := by
  rw [tree7971_def]
  try dsimp only [colour, result7971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7972_agree : tree7972 = literal7972 := by
  rw [tree7972_def, tree7970_agree, tree7971_agree]
  rfl
theorem node7972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7972 live7972 coloured7972 = result7972 := by
  rw [tree7972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7970_eq
  unfold live7970 coloured7970 at child
  try dsimp only [live7972, coloured7972]
  rw [child]
  dsimp only [result7970]
  have child := node7971_eq
  unfold live7971 coloured7971 at child
  try dsimp only [live7972, coloured7972]
  rw [child]
  dsimp only [result7971]
  try dsimp only [colour, result7972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7973_agree : tree7973 = literal7973 := by
  rw [tree7973_def]
  rfl
theorem node7973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7973 live7973 coloured7973 = result7973 := by
  rw [tree7973_def]
  try dsimp only [colour, result7973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7974_agree : tree7974 = literal7974 := by
  rw [tree7974_def, tree7972_agree, tree7973_agree]
  rfl
theorem node7974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7974 live7974 coloured7974 = result7974 := by
  rw [tree7974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7972_eq
  unfold live7972 coloured7972 at child
  try dsimp only [live7974, coloured7974]
  rw [child]
  dsimp only [result7972]
  have child := node7973_eq
  unfold live7973 coloured7973 at child
  try dsimp only [live7974, coloured7974]
  rw [child]
  dsimp only [result7973]
  try dsimp only [colour, result7974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7975_agree : tree7975 = literal7975 := by
  rw [tree7975_def]
  rfl
theorem node7975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7975 live7975 coloured7975 = result7975 := by
  rw [tree7975_def]
  try dsimp only [colour, result7975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7976_agree : tree7976 = literal7976 := by
  rw [tree7976_def, tree7974_agree, tree7975_agree]
  rfl
theorem node7976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7976 live7976 coloured7976 = result7976 := by
  rw [tree7976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7974_eq
  unfold live7974 coloured7974 at child
  try dsimp only [live7976, coloured7976]
  rw [child]
  dsimp only [result7974]
  have child := node7975_eq
  unfold live7975 coloured7975 at child
  try dsimp only [live7976, coloured7976]
  rw [child]
  dsimp only [result7975]
  try dsimp only [colour, result7976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7977_agree : tree7977 = literal7977 := by
  rw [tree7977_def]
  rfl
theorem node7977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7977 live7977 coloured7977 = result7977 := by
  rw [tree7977_def]
  try dsimp only [colour, result7977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7978_agree : tree7978 = literal7978 := by
  rw [tree7978_def, tree7976_agree, tree7977_agree]
  rfl
theorem node7978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7978 live7978 coloured7978 = result7978 := by
  rw [tree7978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7976_eq
  unfold live7976 coloured7976 at child
  try dsimp only [live7978, coloured7978]
  rw [child]
  dsimp only [result7976]
  have child := node7977_eq
  unfold live7977 coloured7977 at child
  try dsimp only [live7978, coloured7978]
  rw [child]
  dsimp only [result7977]
  try dsimp only [colour, result7978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7979_agree : tree7979 = literal7979 := by
  rw [tree7979_def]
  rfl
theorem node7979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7979 live7979 coloured7979 = result7979 := by
  rw [tree7979_def]
  try dsimp only [colour, result7979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7980_agree : tree7980 = literal7980 := by
  rw [tree7980_def, tree7978_agree, tree7979_agree]
  rfl
theorem node7980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7980 live7980 coloured7980 = result7980 := by
  rw [tree7980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7978_eq
  unfold live7978 coloured7978 at child
  try dsimp only [live7980, coloured7980]
  rw [child]
  dsimp only [result7978]
  have child := node7979_eq
  unfold live7979 coloured7979 at child
  try dsimp only [live7980, coloured7980]
  rw [child]
  dsimp only [result7979]
  try dsimp only [colour, result7980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7981_agree : tree7981 = literal7981 := by
  rw [tree7981_def]
  rfl
theorem node7981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7981 live7981 coloured7981 = result7981 := by
  rw [tree7981_def]
  try dsimp only [colour, result7981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7982_agree : tree7982 = literal7982 := by
  rw [tree7982_def, tree7980_agree, tree7981_agree]
  rfl
theorem node7982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7982 live7982 coloured7982 = result7982 := by
  rw [tree7982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7980_eq
  unfold live7980 coloured7980 at child
  try dsimp only [live7982, coloured7982]
  rw [child]
  dsimp only [result7980]
  have child := node7981_eq
  unfold live7981 coloured7981 at child
  try dsimp only [live7982, coloured7982]
  rw [child]
  dsimp only [result7981]
  try dsimp only [colour, result7982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7983_agree : tree7983 = literal7983 := by
  rw [tree7983_def]
  rfl
theorem node7983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7983 live7983 coloured7983 = result7983 := by
  rw [tree7983_def]
  try dsimp only [colour, result7983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7984_agree : tree7984 = literal7984 := by
  rw [tree7984_def, tree7982_agree, tree7983_agree]
  rfl
theorem node7984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7984 live7984 coloured7984 = result7984 := by
  rw [tree7984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7982_eq
  unfold live7982 coloured7982 at child
  try dsimp only [live7984, coloured7984]
  rw [child]
  dsimp only [result7982]
  have child := node7983_eq
  unfold live7983 coloured7983 at child
  try dsimp only [live7984, coloured7984]
  rw [child]
  dsimp only [result7983]
  try dsimp only [colour, result7984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7985_agree : tree7985 = literal7985 := by
  rw [tree7985_def]
  rfl
theorem node7985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7985 live7985 coloured7985 = result7985 := by
  rw [tree7985_def]
  try dsimp only [colour, result7985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7986_agree : tree7986 = literal7986 := by
  rw [tree7986_def, tree7984_agree, tree7985_agree]
  rfl
theorem node7986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7986 live7986 coloured7986 = result7986 := by
  rw [tree7986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7984_eq
  unfold live7984 coloured7984 at child
  try dsimp only [live7986, coloured7986]
  rw [child]
  dsimp only [result7984]
  have child := node7985_eq
  unfold live7985 coloured7985 at child
  try dsimp only [live7986, coloured7986]
  rw [child]
  dsimp only [result7985]
  try dsimp only [colour, result7986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7987_agree : tree7987 = literal7987 := by
  rw [tree7987_def]
  rfl
theorem node7987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7987 live7987 coloured7987 = result7987 := by
  rw [tree7987_def]
  try dsimp only [colour, result7987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7988_agree : tree7988 = literal7988 := by
  rw [tree7988_def, tree7986_agree, tree7987_agree]
  rfl
theorem node7988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7988 live7988 coloured7988 = result7988 := by
  rw [tree7988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7986_eq
  unfold live7986 coloured7986 at child
  try dsimp only [live7988, coloured7988]
  rw [child]
  dsimp only [result7986]
  have child := node7987_eq
  unfold live7987 coloured7987 at child
  try dsimp only [live7988, coloured7988]
  rw [child]
  dsimp only [result7987]
  try dsimp only [colour, result7988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7989_agree : tree7989 = literal7989 := by
  rw [tree7989_def]
  rfl
theorem node7989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7989 live7989 coloured7989 = result7989 := by
  rw [tree7989_def]
  try dsimp only [colour, result7989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7990_agree : tree7990 = literal7990 := by
  rw [tree7990_def, tree7988_agree, tree7989_agree]
  rfl
theorem node7990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7990 live7990 coloured7990 = result7990 := by
  rw [tree7990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7988_eq
  unfold live7988 coloured7988 at child
  try dsimp only [live7990, coloured7990]
  rw [child]
  dsimp only [result7988]
  have child := node7989_eq
  unfold live7989 coloured7989 at child
  try dsimp only [live7990, coloured7990]
  rw [child]
  dsimp only [result7989]
  try dsimp only [colour, result7990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7991_agree : tree7991 = literal7991 := by
  rw [tree7991_def]
  rfl
theorem node7991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7991 live7991 coloured7991 = result7991 := by
  rw [tree7991_def]
  try dsimp only [colour, result7991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7992_agree : tree7992 = literal7992 := by
  rw [tree7992_def, tree7990_agree, tree7991_agree]
  rfl
theorem node7992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7992 live7992 coloured7992 = result7992 := by
  rw [tree7992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7990_eq
  unfold live7990 coloured7990 at child
  try dsimp only [live7992, coloured7992]
  rw [child]
  dsimp only [result7990]
  have child := node7991_eq
  unfold live7991 coloured7991 at child
  try dsimp only [live7992, coloured7992]
  rw [child]
  dsimp only [result7991]
  try dsimp only [colour, result7992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7993_agree : tree7993 = literal7993 := by
  rw [tree7993_def]
  rfl
theorem node7993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7993 live7993 coloured7993 = result7993 := by
  rw [tree7993_def]
  try dsimp only [colour, result7993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7994_agree : tree7994 = literal7994 := by
  rw [tree7994_def, tree7992_agree, tree7993_agree]
  rfl
theorem node7994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7994 live7994 coloured7994 = result7994 := by
  rw [tree7994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7992_eq
  unfold live7992 coloured7992 at child
  try dsimp only [live7994, coloured7994]
  rw [child]
  dsimp only [result7992]
  have child := node7993_eq
  unfold live7993 coloured7993 at child
  try dsimp only [live7994, coloured7994]
  rw [child]
  dsimp only [result7993]
  try dsimp only [colour, result7994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7995_agree : tree7995 = literal7995 := by
  rw [tree7995_def]
  rfl
theorem node7995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7995 live7995 coloured7995 = result7995 := by
  rw [tree7995_def]
  try dsimp only [colour, result7995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7996_agree : tree7996 = literal7996 := by
  rw [tree7996_def, tree7994_agree, tree7995_agree]
  rfl
theorem node7996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7996 live7996 coloured7996 = result7996 := by
  rw [tree7996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7994_eq
  unfold live7994 coloured7994 at child
  try dsimp only [live7996, coloured7996]
  rw [child]
  dsimp only [result7994]
  have child := node7995_eq
  unfold live7995 coloured7995 at child
  try dsimp only [live7996, coloured7996]
  rw [child]
  dsimp only [result7995]
  try dsimp only [colour, result7996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7997_agree : tree7997 = literal7997 := by
  rw [tree7997_def]
  rfl
theorem node7997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7997 live7997 coloured7997 = result7997 := by
  rw [tree7997_def]
  try dsimp only [colour, result7997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7998_agree : tree7998 = literal7998 := by
  rw [tree7998_def, tree7996_agree, tree7997_agree]
  rfl
theorem node7998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7998 live7998 coloured7998 = result7998 := by
  rw [tree7998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7996_eq
  unfold live7996 coloured7996 at child
  try dsimp only [live7998, coloured7998]
  rw [child]
  dsimp only [result7996]
  have child := node7997_eq
  unfold live7997 coloured7997 at child
  try dsimp only [live7998, coloured7998]
  rw [child]
  dsimp only [result7997]
  try dsimp only [colour, result7998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7999_agree : tree7999 = literal7999 := by
  rw [tree7999_def]
  rfl
theorem node7999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7999 live7999 coloured7999 = result7999 := by
  rw [tree7999_def]
  try dsimp only [colour, result7999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8000_agree : tree8000 = literal8000 := by
  rw [tree8000_def, tree7998_agree, tree7999_agree]
  rfl
theorem node8000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8000 live8000 coloured8000 = result8000 := by
  rw [tree8000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7998_eq
  unfold live7998 coloured7998 at child
  try dsimp only [live8000, coloured8000]
  rw [child]
  dsimp only [result7998]
  have child := node7999_eq
  unfold live7999 coloured7999 at child
  try dsimp only [live8000, coloured8000]
  rw [child]
  dsimp only [result7999]
  try dsimp only [colour, result8000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8001_agree : tree8001 = literal8001 := by
  rw [tree8001_def]
  rfl
theorem node8001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8001 live8001 coloured8001 = result8001 := by
  rw [tree8001_def]
  try dsimp only [colour, result8001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8002_agree : tree8002 = literal8002 := by
  rw [tree8002_def, tree8000_agree, tree8001_agree]
  rfl
theorem node8002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8002 live8002 coloured8002 = result8002 := by
  rw [tree8002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8000_eq
  unfold live8000 coloured8000 at child
  try dsimp only [live8002, coloured8002]
  rw [child]
  dsimp only [result8000]
  have child := node8001_eq
  unfold live8001 coloured8001 at child
  try dsimp only [live8002, coloured8002]
  rw [child]
  dsimp only [result8001]
  try dsimp only [colour, result8002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8003_agree : tree8003 = literal8003 := by
  rw [tree8003_def]
  rfl
theorem node8003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8003 live8003 coloured8003 = result8003 := by
  rw [tree8003_def]
  try dsimp only [colour, result8003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8004_agree : tree8004 = literal8004 := by
  rw [tree8004_def, tree8002_agree, tree8003_agree]
  rfl
theorem node8004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8004 live8004 coloured8004 = result8004 := by
  rw [tree8004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8002_eq
  unfold live8002 coloured8002 at child
  try dsimp only [live8004, coloured8004]
  rw [child]
  dsimp only [result8002]
  have child := node8003_eq
  unfold live8003 coloured8003 at child
  try dsimp only [live8004, coloured8004]
  rw [child]
  dsimp only [result8003]
  try dsimp only [colour, result8004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8005_agree : tree8005 = literal8005 := by
  rw [tree8005_def]
  rfl
theorem node8005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8005 live8005 coloured8005 = result8005 := by
  rw [tree8005_def]
  try dsimp only [colour, result8005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8006_agree : tree8006 = literal8006 := by
  rw [tree8006_def, tree8004_agree, tree8005_agree]
  rfl
theorem node8006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8006 live8006 coloured8006 = result8006 := by
  rw [tree8006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8004_eq
  unfold live8004 coloured8004 at child
  try dsimp only [live8006, coloured8006]
  rw [child]
  dsimp only [result8004]
  have child := node8005_eq
  unfold live8005 coloured8005 at child
  try dsimp only [live8006, coloured8006]
  rw [child]
  dsimp only [result8005]
  try dsimp only [colour, result8006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8007_agree : tree8007 = literal8007 := by
  rw [tree8007_def]
  rfl
theorem node8007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8007 live8007 coloured8007 = result8007 := by
  rw [tree8007_def]
  try dsimp only [colour, result8007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8008_agree : tree8008 = literal8008 := by
  rw [tree8008_def, tree8006_agree, tree8007_agree]
  rfl
theorem node8008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8008 live8008 coloured8008 = result8008 := by
  rw [tree8008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8006_eq
  unfold live8006 coloured8006 at child
  try dsimp only [live8008, coloured8008]
  rw [child]
  dsimp only [result8006]
  have child := node8007_eq
  unfold live8007 coloured8007 at child
  try dsimp only [live8008, coloured8008]
  rw [child]
  dsimp only [result8007]
  try dsimp only [colour, result8008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8009_agree : tree8009 = literal8009 := by
  rw [tree8009_def]
  rfl
theorem node8009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8009 live8009 coloured8009 = result8009 := by
  rw [tree8009_def]
  try dsimp only [colour, result8009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8010_agree : tree8010 = literal8010 := by
  rw [tree8010_def, tree8008_agree, tree8009_agree]
  rfl
theorem node8010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8010 live8010 coloured8010 = result8010 := by
  rw [tree8010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8008_eq
  unfold live8008 coloured8008 at child
  try dsimp only [live8010, coloured8010]
  rw [child]
  dsimp only [result8008]
  have child := node8009_eq
  unfold live8009 coloured8009 at child
  try dsimp only [live8010, coloured8010]
  rw [child]
  dsimp only [result8009]
  try dsimp only [colour, result8010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8011_agree : tree8011 = literal8011 := by
  rw [tree8011_def]
  rfl
theorem node8011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8011 live8011 coloured8011 = result8011 := by
  rw [tree8011_def]
  try dsimp only [colour, result8011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8012_agree : tree8012 = literal8012 := by
  rw [tree8012_def, tree8010_agree, tree8011_agree]
  rfl
theorem node8012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8012 live8012 coloured8012 = result8012 := by
  rw [tree8012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8010_eq
  unfold live8010 coloured8010 at child
  try dsimp only [live8012, coloured8012]
  rw [child]
  dsimp only [result8010]
  have child := node8011_eq
  unfold live8011 coloured8011 at child
  try dsimp only [live8012, coloured8012]
  rw [child]
  dsimp only [result8011]
  try dsimp only [colour, result8012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8013_agree : tree8013 = literal8013 := by
  rw [tree8013_def]
  rfl
theorem node8013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8013 live8013 coloured8013 = result8013 := by
  rw [tree8013_def]
  try dsimp only [colour, result8013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8014_agree : tree8014 = literal8014 := by
  rw [tree8014_def, tree8012_agree, tree8013_agree]
  rfl
theorem node8014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8014 live8014 coloured8014 = result8014 := by
  rw [tree8014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8012_eq
  unfold live8012 coloured8012 at child
  try dsimp only [live8014, coloured8014]
  rw [child]
  dsimp only [result8012]
  have child := node8013_eq
  unfold live8013 coloured8013 at child
  try dsimp only [live8014, coloured8014]
  rw [child]
  dsimp only [result8013]
  try dsimp only [colour, result8014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8015_agree : tree8015 = literal8015 := by
  rw [tree8015_def]
  rfl
theorem node8015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8015 live8015 coloured8015 = result8015 := by
  rw [tree8015_def]
  try dsimp only [colour, result8015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8016_agree : tree8016 = literal8016 := by
  rw [tree8016_def, tree8014_agree, tree8015_agree]
  rfl
theorem node8016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8016 live8016 coloured8016 = result8016 := by
  rw [tree8016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8014_eq
  unfold live8014 coloured8014 at child
  try dsimp only [live8016, coloured8016]
  rw [child]
  dsimp only [result8014]
  have child := node8015_eq
  unfold live8015 coloured8015 at child
  try dsimp only [live8016, coloured8016]
  rw [child]
  dsimp only [result8015]
  try dsimp only [colour, result8016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8017_agree : tree8017 = literal8017 := by
  rw [tree8017_def]
  rfl
theorem node8017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8017 live8017 coloured8017 = result8017 := by
  rw [tree8017_def]
  try dsimp only [colour, result8017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8018_agree : tree8018 = literal8018 := by
  rw [tree8018_def, tree8016_agree, tree8017_agree]
  rfl
theorem node8018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8018 live8018 coloured8018 = result8018 := by
  rw [tree8018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8016_eq
  unfold live8016 coloured8016 at child
  try dsimp only [live8018, coloured8018]
  rw [child]
  dsimp only [result8016]
  have child := node8017_eq
  unfold live8017 coloured8017 at child
  try dsimp only [live8018, coloured8018]
  rw [child]
  dsimp only [result8017]
  try dsimp only [colour, result8018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8019_agree : tree8019 = literal8019 := by
  rw [tree8019_def]
  rfl
theorem node8019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8019 live8019 coloured8019 = result8019 := by
  rw [tree8019_def]
  try dsimp only [colour, result8019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8020_agree : tree8020 = literal8020 := by
  rw [tree8020_def, tree8018_agree, tree8019_agree]
  rfl
theorem node8020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8020 live8020 coloured8020 = result8020 := by
  rw [tree8020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8018_eq
  unfold live8018 coloured8018 at child
  try dsimp only [live8020, coloured8020]
  rw [child]
  dsimp only [result8018]
  have child := node8019_eq
  unfold live8019 coloured8019 at child
  try dsimp only [live8020, coloured8020]
  rw [child]
  dsimp only [result8019]
  try dsimp only [colour, result8020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8021_agree : tree8021 = literal8021 := by
  rw [tree8021_def]
  rfl
theorem node8021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8021 live8021 coloured8021 = result8021 := by
  rw [tree8021_def]
  try dsimp only [colour, result8021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8022_agree : tree8022 = literal8022 := by
  rw [tree8022_def, tree8020_agree, tree8021_agree]
  rfl
theorem node8022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8022 live8022 coloured8022 = result8022 := by
  rw [tree8022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8020_eq
  unfold live8020 coloured8020 at child
  try dsimp only [live8022, coloured8022]
  rw [child]
  dsimp only [result8020]
  have child := node8021_eq
  unfold live8021 coloured8021 at child
  try dsimp only [live8022, coloured8022]
  rw [child]
  dsimp only [result8021]
  try dsimp only [colour, result8022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8023_agree : tree8023 = literal8023 := by
  rw [tree8023_def]
  rfl
theorem node8023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8023 live8023 coloured8023 = result8023 := by
  rw [tree8023_def]
  try dsimp only [colour, result8023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8024_agree : tree8024 = literal8024 := by
  rw [tree8024_def, tree8022_agree, tree8023_agree]
  rfl
theorem node8024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8024 live8024 coloured8024 = result8024 := by
  rw [tree8024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8022_eq
  unfold live8022 coloured8022 at child
  try dsimp only [live8024, coloured8024]
  rw [child]
  dsimp only [result8022]
  have child := node8023_eq
  unfold live8023 coloured8023 at child
  try dsimp only [live8024, coloured8024]
  rw [child]
  dsimp only [result8023]
  try dsimp only [colour, result8024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8025_agree : tree8025 = literal8025 := by
  rw [tree8025_def]
  rfl
theorem node8025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8025 live8025 coloured8025 = result8025 := by
  rw [tree8025_def]
  try dsimp only [colour, result8025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8026_agree : tree8026 = literal8026 := by
  rw [tree8026_def, tree8024_agree, tree8025_agree]
  rfl
theorem node8026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8026 live8026 coloured8026 = result8026 := by
  rw [tree8026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8024_eq
  unfold live8024 coloured8024 at child
  try dsimp only [live8026, coloured8026]
  rw [child]
  dsimp only [result8024]
  have child := node8025_eq
  unfold live8025 coloured8025 at child
  try dsimp only [live8026, coloured8026]
  rw [child]
  dsimp only [result8025]
  try dsimp only [colour, result8026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8027_agree : tree8027 = literal8027 := by
  rw [tree8027_def]
  rfl
theorem node8027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8027 live8027 coloured8027 = result8027 := by
  rw [tree8027_def]
  try dsimp only [colour, result8027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8028_agree : tree8028 = literal8028 := by
  rw [tree8028_def, tree8026_agree, tree8027_agree]
  rfl
theorem node8028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8028 live8028 coloured8028 = result8028 := by
  rw [tree8028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8026_eq
  unfold live8026 coloured8026 at child
  try dsimp only [live8028, coloured8028]
  rw [child]
  dsimp only [result8026]
  have child := node8027_eq
  unfold live8027 coloured8027 at child
  try dsimp only [live8028, coloured8028]
  rw [child]
  dsimp only [result8027]
  try dsimp only [colour, result8028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8029_agree : tree8029 = literal8029 := by
  rw [tree8029_def]
  rfl
theorem node8029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8029 live8029 coloured8029 = result8029 := by
  rw [tree8029_def]
  try dsimp only [colour, result8029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8030_agree : tree8030 = literal8030 := by
  rw [tree8030_def, tree8028_agree, tree8029_agree]
  rfl
theorem node8030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8030 live8030 coloured8030 = result8030 := by
  rw [tree8030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8028_eq
  unfold live8028 coloured8028 at child
  try dsimp only [live8030, coloured8030]
  rw [child]
  dsimp only [result8028]
  have child := node8029_eq
  unfold live8029 coloured8029 at child
  try dsimp only [live8030, coloured8030]
  rw [child]
  dsimp only [result8029]
  try dsimp only [colour, result8030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8031_agree : tree8031 = literal8031 := by
  rw [tree8031_def]
  rfl
theorem node8031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8031 live8031 coloured8031 = result8031 := by
  rw [tree8031_def]
  try dsimp only [colour, result8031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8032_agree : tree8032 = literal8032 := by
  rw [tree8032_def, tree8030_agree, tree8031_agree]
  rfl
theorem node8032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8032 live8032 coloured8032 = result8032 := by
  rw [tree8032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8030_eq
  unfold live8030 coloured8030 at child
  try dsimp only [live8032, coloured8032]
  rw [child]
  dsimp only [result8030]
  have child := node8031_eq
  unfold live8031 coloured8031 at child
  try dsimp only [live8032, coloured8032]
  rw [child]
  dsimp only [result8031]
  try dsimp only [colour, result8032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8033_agree : tree8033 = literal8033 := by
  rw [tree8033_def]
  rfl
theorem node8033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8033 live8033 coloured8033 = result8033 := by
  rw [tree8033_def]
  try dsimp only [colour, result8033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8034_agree : tree8034 = literal8034 := by
  rw [tree8034_def, tree8032_agree, tree8033_agree]
  rfl
theorem node8034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8034 live8034 coloured8034 = result8034 := by
  rw [tree8034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8032_eq
  unfold live8032 coloured8032 at child
  try dsimp only [live8034, coloured8034]
  rw [child]
  dsimp only [result8032]
  have child := node8033_eq
  unfold live8033 coloured8033 at child
  try dsimp only [live8034, coloured8034]
  rw [child]
  dsimp only [result8033]
  try dsimp only [colour, result8034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8035_agree : tree8035 = literal8035 := by
  rw [tree8035_def]
  rfl
theorem node8035_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8035 live8035 coloured8035 = result8035 := by
  rw [tree8035_def]
  try dsimp only [colour, result8035]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8036_agree : tree8036 = literal8036 := by
  rw [tree8036_def, tree8034_agree, tree8035_agree]
  rfl
theorem node8036_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8036 live8036 coloured8036 = result8036 := by
  rw [tree8036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8034_eq
  unfold live8034 coloured8034 at child
  try dsimp only [live8036, coloured8036]
  rw [child]
  dsimp only [result8034]
  have child := node8035_eq
  unfold live8035 coloured8035 at child
  try dsimp only [live8036, coloured8036]
  rw [child]
  dsimp only [result8035]
  try dsimp only [colour, result8036]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8037_agree : tree8037 = literal8037 := by
  rw [tree8037_def]
  rfl
theorem node8037_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8037 live8037 coloured8037 = result8037 := by
  rw [tree8037_def]
  try dsimp only [colour, result8037]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8038_agree : tree8038 = literal8038 := by
  rw [tree8038_def, tree8036_agree, tree8037_agree]
  rfl
theorem node8038_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8038 live8038 coloured8038 = result8038 := by
  rw [tree8038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8036_eq
  unfold live8036 coloured8036 at child
  try dsimp only [live8038, coloured8038]
  rw [child]
  dsimp only [result8036]
  have child := node8037_eq
  unfold live8037 coloured8037 at child
  try dsimp only [live8038, coloured8038]
  rw [child]
  dsimp only [result8037]
  try dsimp only [colour, result8038]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8039_agree : tree8039 = literal8039 := by
  rw [tree8039_def]
  rfl
theorem node8039_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8039 live8039 coloured8039 = result8039 := by
  rw [tree8039_def]
  try dsimp only [colour, result8039]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8040_agree : tree8040 = literal8040 := by
  rw [tree8040_def, tree8038_agree, tree8039_agree]
  rfl
theorem node8040_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8040 live8040 coloured8040 = result8040 := by
  rw [tree8040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8038_eq
  unfold live8038 coloured8038 at child
  try dsimp only [live8040, coloured8040]
  rw [child]
  dsimp only [result8038]
  have child := node8039_eq
  unfold live8039 coloured8039 at child
  try dsimp only [live8040, coloured8040]
  rw [child]
  dsimp only [result8039]
  try dsimp only [colour, result8040]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8041_agree : tree8041 = literal8041 := by
  rw [tree8041_def]
  rfl
theorem node8041_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8041 live8041 coloured8041 = result8041 := by
  rw [tree8041_def]
  try dsimp only [colour, result8041]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8042_agree : tree8042 = literal8042 := by
  rw [tree8042_def, tree8040_agree, tree8041_agree]
  rfl
theorem node8042_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8042 live8042 coloured8042 = result8042 := by
  rw [tree8042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8040_eq
  unfold live8040 coloured8040 at child
  try dsimp only [live8042, coloured8042]
  rw [child]
  dsimp only [result8040]
  have child := node8041_eq
  unfold live8041 coloured8041 at child
  try dsimp only [live8042, coloured8042]
  rw [child]
  dsimp only [result8041]
  try dsimp only [colour, result8042]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8043_agree : tree8043 = literal8043 := by
  rw [tree8043_def]
  rfl
theorem node8043_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8043 live8043 coloured8043 = result8043 := by
  rw [tree8043_def]
  try dsimp only [colour, result8043]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8044_agree : tree8044 = literal8044 := by
  rw [tree8044_def, tree8042_agree, tree8043_agree]
  rfl
theorem node8044_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8044 live8044 coloured8044 = result8044 := by
  rw [tree8044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8042_eq
  unfold live8042 coloured8042 at child
  try dsimp only [live8044, coloured8044]
  rw [child]
  dsimp only [result8042]
  have child := node8043_eq
  unfold live8043 coloured8043 at child
  try dsimp only [live8044, coloured8044]
  rw [child]
  dsimp only [result8043]
  try dsimp only [colour, result8044]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8045_agree : tree8045 = literal8045 := by
  rw [tree8045_def]
  rfl
theorem node8045_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8045 live8045 coloured8045 = result8045 := by
  rw [tree8045_def]
  try dsimp only [colour, result8045]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8046_agree : tree8046 = literal8046 := by
  rw [tree8046_def, tree8044_agree, tree8045_agree]
  rfl
theorem node8046_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8046 live8046 coloured8046 = result8046 := by
  rw [tree8046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8044_eq
  unfold live8044 coloured8044 at child
  try dsimp only [live8046, coloured8046]
  rw [child]
  dsimp only [result8044]
  have child := node8045_eq
  unfold live8045 coloured8045 at child
  try dsimp only [live8046, coloured8046]
  rw [child]
  dsimp only [result8045]
  try dsimp only [colour, result8046]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8047_agree : tree8047 = literal8047 := by
  rw [tree8047_def]
  rfl
theorem node8047_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8047 live8047 coloured8047 = result8047 := by
  rw [tree8047_def]
  try dsimp only [colour, result8047]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8048_agree : tree8048 = literal8048 := by
  rw [tree8048_def, tree8046_agree, tree8047_agree]
  rfl
theorem node8048_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8048 live8048 coloured8048 = result8048 := by
  rw [tree8048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8046_eq
  unfold live8046 coloured8046 at child
  try dsimp only [live8048, coloured8048]
  rw [child]
  dsimp only [result8046]
  have child := node8047_eq
  unfold live8047 coloured8047 at child
  try dsimp only [live8048, coloured8048]
  rw [child]
  dsimp only [result8047]
  try dsimp only [colour, result8048]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8049_agree : tree8049 = literal8049 := by
  rw [tree8049_def]
  rfl
theorem node8049_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8049 live8049 coloured8049 = result8049 := by
  rw [tree8049_def]
  try dsimp only [colour, result8049]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8050_agree : tree8050 = literal8050 := by
  rw [tree8050_def, tree8048_agree, tree8049_agree]
  rfl
theorem node8050_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8050 live8050 coloured8050 = result8050 := by
  rw [tree8050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8048_eq
  unfold live8048 coloured8048 at child
  try dsimp only [live8050, coloured8050]
  rw [child]
  dsimp only [result8048]
  have child := node8049_eq
  unfold live8049 coloured8049 at child
  try dsimp only [live8050, coloured8050]
  rw [child]
  dsimp only [result8049]
  try dsimp only [colour, result8050]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8051_agree : tree8051 = literal8051 := by
  rw [tree8051_def]
  rfl
theorem node8051_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8051 live8051 coloured8051 = result8051 := by
  rw [tree8051_def]
  try dsimp only [colour, result8051]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8052_agree : tree8052 = literal8052 := by
  rw [tree8052_def, tree8050_agree, tree8051_agree]
  rfl
theorem node8052_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8052 live8052 coloured8052 = result8052 := by
  rw [tree8052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8050_eq
  unfold live8050 coloured8050 at child
  try dsimp only [live8052, coloured8052]
  rw [child]
  dsimp only [result8050]
  have child := node8051_eq
  unfold live8051 coloured8051 at child
  try dsimp only [live8052, coloured8052]
  rw [child]
  dsimp only [result8051]
  try dsimp only [colour, result8052]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8053_agree : tree8053 = literal8053 := by
  rw [tree8053_def]
  rfl
theorem node8053_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8053 live8053 coloured8053 = result8053 := by
  rw [tree8053_def]
  try dsimp only [colour, result8053]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8054_agree : tree8054 = literal8054 := by
  rw [tree8054_def, tree8052_agree, tree8053_agree]
  rfl
theorem node8054_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8054 live8054 coloured8054 = result8054 := by
  rw [tree8054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8052_eq
  unfold live8052 coloured8052 at child
  try dsimp only [live8054, coloured8054]
  rw [child]
  dsimp only [result8052]
  have child := node8053_eq
  unfold live8053 coloured8053 at child
  try dsimp only [live8054, coloured8054]
  rw [child]
  dsimp only [result8053]
  try dsimp only [colour, result8054]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8055_agree : tree8055 = literal8055 := by
  rw [tree8055_def]
  rfl
theorem node8055_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8055 live8055 coloured8055 = result8055 := by
  rw [tree8055_def]
  try dsimp only [colour, result8055]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8056_agree : tree8056 = literal8056 := by
  rw [tree8056_def, tree8054_agree, tree8055_agree]
  rfl
theorem node8056_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8056 live8056 coloured8056 = result8056 := by
  rw [tree8056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8054_eq
  unfold live8054 coloured8054 at child
  try dsimp only [live8056, coloured8056]
  rw [child]
  dsimp only [result8054]
  have child := node8055_eq
  unfold live8055 coloured8055 at child
  try dsimp only [live8056, coloured8056]
  rw [child]
  dsimp only [result8055]
  try dsimp only [colour, result8056]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8057_agree : tree8057 = literal8057 := by
  rw [tree8057_def]
  rfl
theorem node8057_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8057 live8057 coloured8057 = result8057 := by
  rw [tree8057_def]
  try dsimp only [colour, result8057]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8058_agree : tree8058 = literal8058 := by
  rw [tree8058_def, tree8056_agree, tree8057_agree]
  rfl
theorem node8058_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8058 live8058 coloured8058 = result8058 := by
  rw [tree8058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8056_eq
  unfold live8056 coloured8056 at child
  try dsimp only [live8058, coloured8058]
  rw [child]
  dsimp only [result8056]
  have child := node8057_eq
  unfold live8057 coloured8057 at child
  try dsimp only [live8058, coloured8058]
  rw [child]
  dsimp only [result8057]
  try dsimp only [colour, result8058]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8059_agree : tree8059 = literal8059 := by
  rw [tree8059_def]
  rfl
theorem node8059_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8059 live8059 coloured8059 = result8059 := by
  rw [tree8059_def]
  try dsimp only [colour, result8059]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8060_agree : tree8060 = literal8060 := by
  rw [tree8060_def, tree8058_agree, tree8059_agree]
  rfl
theorem node8060_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8060 live8060 coloured8060 = result8060 := by
  rw [tree8060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8058_eq
  unfold live8058 coloured8058 at child
  try dsimp only [live8060, coloured8060]
  rw [child]
  dsimp only [result8058]
  have child := node8059_eq
  unfold live8059 coloured8059 at child
  try dsimp only [live8060, coloured8060]
  rw [child]
  dsimp only [result8059]
  try dsimp only [colour, result8060]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8061_agree : tree8061 = literal8061 := by
  rw [tree8061_def]
  rfl
theorem node8061_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8061 live8061 coloured8061 = result8061 := by
  rw [tree8061_def]
  try dsimp only [colour, result8061]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8062_agree : tree8062 = literal8062 := by
  rw [tree8062_def, tree8060_agree, tree8061_agree]
  rfl
theorem node8062_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8062 live8062 coloured8062 = result8062 := by
  rw [tree8062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8060_eq
  unfold live8060 coloured8060 at child
  try dsimp only [live8062, coloured8062]
  rw [child]
  dsimp only [result8060]
  have child := node8061_eq
  unfold live8061 coloured8061 at child
  try dsimp only [live8062, coloured8062]
  rw [child]
  dsimp only [result8061]
  try dsimp only [colour, result8062]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8063_agree : tree8063 = literal8063 := by
  rw [tree8063_def]
  rfl
theorem node8063_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8063 live8063 coloured8063 = result8063 := by
  rw [tree8063_def]
  try dsimp only [colour, result8063]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
