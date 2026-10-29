import InitECandidate.Proofs.ClashStages713.Proof103
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9984_agree : tree9984 = literal9984 := by
  rw [tree9984_def, tree9982_agree, tree9983_agree]
  rfl
theorem node9984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9984 live9984 coloured9984 = result9984 := by
  rw [tree9984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9982_eq
  unfold live9982 coloured9982 at child
  try dsimp only [live9984, coloured9984]
  rw [child]
  dsimp only [result9982]
  have child := node9983_eq
  unfold live9983 coloured9983 at child
  try dsimp only [live9984, coloured9984]
  rw [child]
  dsimp only [result9983]
  try dsimp only [colour, result9984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9985_agree : tree9985 = literal9985 := by
  rw [tree9985_def]
  rfl
theorem node9985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9985 live9985 coloured9985 = result9985 := by
  rw [tree9985_def]
  try dsimp only [colour, result9985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9986_agree : tree9986 = literal9986 := by
  rw [tree9986_def, tree9984_agree, tree9985_agree]
  rfl
theorem node9986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9986 live9986 coloured9986 = result9986 := by
  rw [tree9986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9984_eq
  unfold live9984 coloured9984 at child
  try dsimp only [live9986, coloured9986]
  rw [child]
  dsimp only [result9984]
  have child := node9985_eq
  unfold live9985 coloured9985 at child
  try dsimp only [live9986, coloured9986]
  rw [child]
  dsimp only [result9985]
  try dsimp only [colour, result9986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9987_agree : tree9987 = literal9987 := by
  rw [tree9987_def]
  rfl
theorem node9987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9987 live9987 coloured9987 = result9987 := by
  rw [tree9987_def]
  try dsimp only [colour, result9987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9988_agree : tree9988 = literal9988 := by
  rw [tree9988_def, tree9986_agree, tree9987_agree]
  rfl
theorem node9988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9988 live9988 coloured9988 = result9988 := by
  rw [tree9988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9986_eq
  unfold live9986 coloured9986 at child
  try dsimp only [live9988, coloured9988]
  rw [child]
  dsimp only [result9986]
  have child := node9987_eq
  unfold live9987 coloured9987 at child
  try dsimp only [live9988, coloured9988]
  rw [child]
  dsimp only [result9987]
  try dsimp only [colour, result9988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9989_agree : tree9989 = literal9989 := by
  rw [tree9989_def]
  rfl
theorem node9989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9989 live9989 coloured9989 = result9989 := by
  rw [tree9989_def]
  try dsimp only [colour, result9989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9990_agree : tree9990 = literal9990 := by
  rw [tree9990_def, tree9988_agree, tree9989_agree]
  rfl
theorem node9990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9990 live9990 coloured9990 = result9990 := by
  rw [tree9990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9988_eq
  unfold live9988 coloured9988 at child
  try dsimp only [live9990, coloured9990]
  rw [child]
  dsimp only [result9988]
  have child := node9989_eq
  unfold live9989 coloured9989 at child
  try dsimp only [live9990, coloured9990]
  rw [child]
  dsimp only [result9989]
  try dsimp only [colour, result9990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9991_agree : tree9991 = literal9991 := by
  rw [tree9991_def]
  rfl
theorem node9991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9991 live9991 coloured9991 = result9991 := by
  rw [tree9991_def]
  try dsimp only [colour, result9991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9992_agree : tree9992 = literal9992 := by
  rw [tree9992_def, tree9990_agree, tree9991_agree]
  rfl
theorem node9992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9992 live9992 coloured9992 = result9992 := by
  rw [tree9992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9990_eq
  unfold live9990 coloured9990 at child
  try dsimp only [live9992, coloured9992]
  rw [child]
  dsimp only [result9990]
  have child := node9991_eq
  unfold live9991 coloured9991 at child
  try dsimp only [live9992, coloured9992]
  rw [child]
  dsimp only [result9991]
  try dsimp only [colour, result9992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9993_agree : tree9993 = literal9993 := by
  rw [tree9993_def]
  rfl
theorem node9993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9993 live9993 coloured9993 = result9993 := by
  rw [tree9993_def]
  try dsimp only [colour, result9993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9994_agree : tree9994 = literal9994 := by
  rw [tree9994_def, tree9992_agree, tree9993_agree]
  rfl
theorem node9994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9994 live9994 coloured9994 = result9994 := by
  rw [tree9994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9992_eq
  unfold live9992 coloured9992 at child
  try dsimp only [live9994, coloured9994]
  rw [child]
  dsimp only [result9992]
  have child := node9993_eq
  unfold live9993 coloured9993 at child
  try dsimp only [live9994, coloured9994]
  rw [child]
  dsimp only [result9993]
  try dsimp only [colour, result9994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9995_agree : tree9995 = literal9995 := by
  rw [tree9995_def]
  rfl
theorem node9995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9995 live9995 coloured9995 = result9995 := by
  rw [tree9995_def]
  try dsimp only [colour, result9995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9996_agree : tree9996 = literal9996 := by
  rw [tree9996_def, tree9994_agree, tree9995_agree]
  rfl
theorem node9996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9996 live9996 coloured9996 = result9996 := by
  rw [tree9996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9994_eq
  unfold live9994 coloured9994 at child
  try dsimp only [live9996, coloured9996]
  rw [child]
  dsimp only [result9994]
  have child := node9995_eq
  unfold live9995 coloured9995 at child
  try dsimp only [live9996, coloured9996]
  rw [child]
  dsimp only [result9995]
  try dsimp only [colour, result9996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9997_agree : tree9997 = literal9997 := by
  rw [tree9997_def]
  rfl
theorem node9997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9997 live9997 coloured9997 = result9997 := by
  rw [tree9997_def]
  try dsimp only [colour, result9997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9998_agree : tree9998 = literal9998 := by
  rw [tree9998_def, tree9996_agree, tree9997_agree]
  rfl
theorem node9998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9998 live9998 coloured9998 = result9998 := by
  rw [tree9998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9996_eq
  unfold live9996 coloured9996 at child
  try dsimp only [live9998, coloured9998]
  rw [child]
  dsimp only [result9996]
  have child := node9997_eq
  unfold live9997 coloured9997 at child
  try dsimp only [live9998, coloured9998]
  rw [child]
  dsimp only [result9997]
  try dsimp only [colour, result9998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9999_agree : tree9999 = literal9999 := by
  rw [tree9999_def]
  rfl
theorem node9999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9999 live9999 coloured9999 = result9999 := by
  rw [tree9999_def]
  try dsimp only [colour, result9999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10000_agree : tree10000 = literal10000 := by
  rw [tree10000_def, tree9998_agree, tree9999_agree]
  rfl
theorem node10000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10000 live10000 coloured10000 = result10000 := by
  rw [tree10000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9998_eq
  unfold live9998 coloured9998 at child
  try dsimp only [live10000, coloured10000]
  rw [child]
  dsimp only [result9998]
  have child := node9999_eq
  unfold live9999 coloured9999 at child
  try dsimp only [live10000, coloured10000]
  rw [child]
  dsimp only [result9999]
  try dsimp only [colour, result10000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10001_agree : tree10001 = literal10001 := by
  rw [tree10001_def]
  rfl
theorem node10001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10001 live10001 coloured10001 = result10001 := by
  rw [tree10001_def]
  try dsimp only [colour, result10001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10002_agree : tree10002 = literal10002 := by
  rw [tree10002_def, tree10000_agree, tree10001_agree]
  rfl
theorem node10002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10002 live10002 coloured10002 = result10002 := by
  rw [tree10002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10000_eq
  unfold live10000 coloured10000 at child
  try dsimp only [live10002, coloured10002]
  rw [child]
  dsimp only [result10000]
  have child := node10001_eq
  unfold live10001 coloured10001 at child
  try dsimp only [live10002, coloured10002]
  rw [child]
  dsimp only [result10001]
  try dsimp only [colour, result10002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10003_agree : tree10003 = literal10003 := by
  rw [tree10003_def]
  rfl
theorem node10003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10003 live10003 coloured10003 = result10003 := by
  rw [tree10003_def]
  try dsimp only [colour, result10003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10004_agree : tree10004 = literal10004 := by
  rw [tree10004_def, tree10002_agree, tree10003_agree]
  rfl
theorem node10004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10004 live10004 coloured10004 = result10004 := by
  rw [tree10004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10002_eq
  unfold live10002 coloured10002 at child
  try dsimp only [live10004, coloured10004]
  rw [child]
  dsimp only [result10002]
  have child := node10003_eq
  unfold live10003 coloured10003 at child
  try dsimp only [live10004, coloured10004]
  rw [child]
  dsimp only [result10003]
  try dsimp only [colour, result10004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10005_agree : tree10005 = literal10005 := by
  rw [tree10005_def]
  rfl
theorem node10005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10005 live10005 coloured10005 = result10005 := by
  rw [tree10005_def]
  try dsimp only [colour, result10005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10006_agree : tree10006 = literal10006 := by
  rw [tree10006_def, tree10004_agree, tree10005_agree]
  rfl
theorem node10006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10006 live10006 coloured10006 = result10006 := by
  rw [tree10006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10004_eq
  unfold live10004 coloured10004 at child
  try dsimp only [live10006, coloured10006]
  rw [child]
  dsimp only [result10004]
  have child := node10005_eq
  unfold live10005 coloured10005 at child
  try dsimp only [live10006, coloured10006]
  rw [child]
  dsimp only [result10005]
  try dsimp only [colour, result10006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10007_agree : tree10007 = literal10007 := by
  rw [tree10007_def]
  rfl
theorem node10007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10007 live10007 coloured10007 = result10007 := by
  rw [tree10007_def]
  try dsimp only [colour, result10007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10008_agree : tree10008 = literal10008 := by
  rw [tree10008_def, tree10006_agree, tree10007_agree]
  rfl
theorem node10008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10008 live10008 coloured10008 = result10008 := by
  rw [tree10008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10006_eq
  unfold live10006 coloured10006 at child
  try dsimp only [live10008, coloured10008]
  rw [child]
  dsimp only [result10006]
  have child := node10007_eq
  unfold live10007 coloured10007 at child
  try dsimp only [live10008, coloured10008]
  rw [child]
  dsimp only [result10007]
  try dsimp only [colour, result10008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10009_agree : tree10009 = literal10009 := by
  rw [tree10009_def]
  rfl
theorem node10009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10009 live10009 coloured10009 = result10009 := by
  rw [tree10009_def]
  try dsimp only [colour, result10009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10010_agree : tree10010 = literal10010 := by
  rw [tree10010_def, tree10008_agree, tree10009_agree]
  rfl
theorem node10010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10010 live10010 coloured10010 = result10010 := by
  rw [tree10010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10008_eq
  unfold live10008 coloured10008 at child
  try dsimp only [live10010, coloured10010]
  rw [child]
  dsimp only [result10008]
  have child := node10009_eq
  unfold live10009 coloured10009 at child
  try dsimp only [live10010, coloured10010]
  rw [child]
  dsimp only [result10009]
  try dsimp only [colour, result10010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10011_agree : tree10011 = literal10011 := by
  rw [tree10011_def]
  rfl
theorem node10011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10011 live10011 coloured10011 = result10011 := by
  rw [tree10011_def]
  try dsimp only [colour, result10011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10012_agree : tree10012 = literal10012 := by
  rw [tree10012_def, tree10010_agree, tree10011_agree]
  rfl
theorem node10012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10012 live10012 coloured10012 = result10012 := by
  rw [tree10012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10010_eq
  unfold live10010 coloured10010 at child
  try dsimp only [live10012, coloured10012]
  rw [child]
  dsimp only [result10010]
  have child := node10011_eq
  unfold live10011 coloured10011 at child
  try dsimp only [live10012, coloured10012]
  rw [child]
  dsimp only [result10011]
  try dsimp only [colour, result10012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10013_agree : tree10013 = literal10013 := by
  rw [tree10013_def]
  rfl
theorem node10013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10013 live10013 coloured10013 = result10013 := by
  rw [tree10013_def]
  try dsimp only [colour, result10013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10014_agree : tree10014 = literal10014 := by
  rw [tree10014_def, tree10012_agree, tree10013_agree]
  rfl
theorem node10014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10014 live10014 coloured10014 = result10014 := by
  rw [tree10014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10012_eq
  unfold live10012 coloured10012 at child
  try dsimp only [live10014, coloured10014]
  rw [child]
  dsimp only [result10012]
  have child := node10013_eq
  unfold live10013 coloured10013 at child
  try dsimp only [live10014, coloured10014]
  rw [child]
  dsimp only [result10013]
  try dsimp only [colour, result10014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10015_agree : tree10015 = literal10015 := by
  rw [tree10015_def]
  rfl
theorem node10015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10015 live10015 coloured10015 = result10015 := by
  rw [tree10015_def]
  try dsimp only [colour, result10015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10016_agree : tree10016 = literal10016 := by
  rw [tree10016_def, tree10014_agree, tree10015_agree]
  rfl
theorem node10016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10016 live10016 coloured10016 = result10016 := by
  rw [tree10016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10014_eq
  unfold live10014 coloured10014 at child
  try dsimp only [live10016, coloured10016]
  rw [child]
  dsimp only [result10014]
  have child := node10015_eq
  unfold live10015 coloured10015 at child
  try dsimp only [live10016, coloured10016]
  rw [child]
  dsimp only [result10015]
  try dsimp only [colour, result10016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10017_agree : tree10017 = literal10017 := by
  rw [tree10017_def]
  rfl
theorem node10017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10017 live10017 coloured10017 = result10017 := by
  rw [tree10017_def]
  try dsimp only [colour, result10017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10018_agree : tree10018 = literal10018 := by
  rw [tree10018_def, tree10016_agree, tree10017_agree]
  rfl
theorem node10018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10018 live10018 coloured10018 = result10018 := by
  rw [tree10018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10016_eq
  unfold live10016 coloured10016 at child
  try dsimp only [live10018, coloured10018]
  rw [child]
  dsimp only [result10016]
  have child := node10017_eq
  unfold live10017 coloured10017 at child
  try dsimp only [live10018, coloured10018]
  rw [child]
  dsimp only [result10017]
  try dsimp only [colour, result10018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10019_agree : tree10019 = literal10019 := by
  rw [tree10019_def]
  rfl
theorem node10019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10019 live10019 coloured10019 = result10019 := by
  rw [tree10019_def]
  try dsimp only [colour, result10019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10020_agree : tree10020 = literal10020 := by
  rw [tree10020_def, tree10018_agree, tree10019_agree]
  rfl
theorem node10020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10020 live10020 coloured10020 = result10020 := by
  rw [tree10020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10018_eq
  unfold live10018 coloured10018 at child
  try dsimp only [live10020, coloured10020]
  rw [child]
  dsimp only [result10018]
  have child := node10019_eq
  unfold live10019 coloured10019 at child
  try dsimp only [live10020, coloured10020]
  rw [child]
  dsimp only [result10019]
  try dsimp only [colour, result10020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10021_agree : tree10021 = literal10021 := by
  rw [tree10021_def]
  rfl
theorem node10021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10021 live10021 coloured10021 = result10021 := by
  rw [tree10021_def]
  try dsimp only [colour, result10021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10022_agree : tree10022 = literal10022 := by
  rw [tree10022_def, tree10020_agree, tree10021_agree]
  rfl
theorem node10022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10022 live10022 coloured10022 = result10022 := by
  rw [tree10022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10020_eq
  unfold live10020 coloured10020 at child
  try dsimp only [live10022, coloured10022]
  rw [child]
  dsimp only [result10020]
  have child := node10021_eq
  unfold live10021 coloured10021 at child
  try dsimp only [live10022, coloured10022]
  rw [child]
  dsimp only [result10021]
  try dsimp only [colour, result10022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10023_agree : tree10023 = literal10023 := by
  rw [tree10023_def]
  rfl
theorem node10023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10023 live10023 coloured10023 = result10023 := by
  rw [tree10023_def]
  try dsimp only [colour, result10023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10024_agree : tree10024 = literal10024 := by
  rw [tree10024_def, tree10022_agree, tree10023_agree]
  rfl
theorem node10024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10024 live10024 coloured10024 = result10024 := by
  rw [tree10024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10022_eq
  unfold live10022 coloured10022 at child
  try dsimp only [live10024, coloured10024]
  rw [child]
  dsimp only [result10022]
  have child := node10023_eq
  unfold live10023 coloured10023 at child
  try dsimp only [live10024, coloured10024]
  rw [child]
  dsimp only [result10023]
  try dsimp only [colour, result10024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10025_agree : tree10025 = literal10025 := by
  rw [tree10025_def]
  rfl
theorem node10025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10025 live10025 coloured10025 = result10025 := by
  rw [tree10025_def]
  try dsimp only [colour, result10025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10026_agree : tree10026 = literal10026 := by
  rw [tree10026_def, tree10024_agree, tree10025_agree]
  rfl
theorem node10026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10026 live10026 coloured10026 = result10026 := by
  rw [tree10026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10024_eq
  unfold live10024 coloured10024 at child
  try dsimp only [live10026, coloured10026]
  rw [child]
  dsimp only [result10024]
  have child := node10025_eq
  unfold live10025 coloured10025 at child
  try dsimp only [live10026, coloured10026]
  rw [child]
  dsimp only [result10025]
  try dsimp only [colour, result10026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10027_agree : tree10027 = literal10027 := by
  rw [tree10027_def]
  rfl
theorem node10027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10027 live10027 coloured10027 = result10027 := by
  rw [tree10027_def]
  try dsimp only [colour, result10027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10028_agree : tree10028 = literal10028 := by
  rw [tree10028_def, tree10026_agree, tree10027_agree]
  rfl
theorem node10028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10028 live10028 coloured10028 = result10028 := by
  rw [tree10028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10026_eq
  unfold live10026 coloured10026 at child
  try dsimp only [live10028, coloured10028]
  rw [child]
  dsimp only [result10026]
  have child := node10027_eq
  unfold live10027 coloured10027 at child
  try dsimp only [live10028, coloured10028]
  rw [child]
  dsimp only [result10027]
  try dsimp only [colour, result10028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10029_agree : tree10029 = literal10029 := by
  rw [tree10029_def]
  rfl
theorem node10029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10029 live10029 coloured10029 = result10029 := by
  rw [tree10029_def]
  try dsimp only [colour, result10029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10030_agree : tree10030 = literal10030 := by
  rw [tree10030_def, tree10028_agree, tree10029_agree]
  rfl
theorem node10030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10030 live10030 coloured10030 = result10030 := by
  rw [tree10030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10028_eq
  unfold live10028 coloured10028 at child
  try dsimp only [live10030, coloured10030]
  rw [child]
  dsimp only [result10028]
  have child := node10029_eq
  unfold live10029 coloured10029 at child
  try dsimp only [live10030, coloured10030]
  rw [child]
  dsimp only [result10029]
  try dsimp only [colour, result10030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10031_agree : tree10031 = literal10031 := by
  rw [tree10031_def]
  rfl
theorem node10031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10031 live10031 coloured10031 = result10031 := by
  rw [tree10031_def]
  try dsimp only [colour, result10031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10032_agree : tree10032 = literal10032 := by
  rw [tree10032_def, tree10030_agree, tree10031_agree]
  rfl
theorem node10032_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10032 live10032 coloured10032 = result10032 := by
  rw [tree10032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10030_eq
  unfold live10030 coloured10030 at child
  try dsimp only [live10032, coloured10032]
  rw [child]
  dsimp only [result10030]
  have child := node10031_eq
  unfold live10031 coloured10031 at child
  try dsimp only [live10032, coloured10032]
  rw [child]
  dsimp only [result10031]
  try dsimp only [colour, result10032]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10033_agree : tree10033 = literal10033 := by
  rw [tree10033_def]
  rfl
theorem node10033_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10033 live10033 coloured10033 = result10033 := by
  rw [tree10033_def]
  try dsimp only [colour, result10033]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10034_agree : tree10034 = literal10034 := by
  rw [tree10034_def, tree10032_agree, tree10033_agree]
  rfl
theorem node10034_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10034 live10034 coloured10034 = result10034 := by
  rw [tree10034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10032_eq
  unfold live10032 coloured10032 at child
  try dsimp only [live10034, coloured10034]
  rw [child]
  dsimp only [result10032]
  have child := node10033_eq
  unfold live10033 coloured10033 at child
  try dsimp only [live10034, coloured10034]
  rw [child]
  dsimp only [result10033]
  try dsimp only [colour, result10034]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10035_agree : tree10035 = literal10035 := by
  rw [tree10035_def]
  rfl
theorem node10035_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10035 live10035 coloured10035 = result10035 := by
  rw [tree10035_def]
  try dsimp only [colour, result10035]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10036_agree : tree10036 = literal10036 := by
  rw [tree10036_def, tree10034_agree, tree10035_agree]
  rfl
theorem node10036_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10036 live10036 coloured10036 = result10036 := by
  rw [tree10036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10034_eq
  unfold live10034 coloured10034 at child
  try dsimp only [live10036, coloured10036]
  rw [child]
  dsimp only [result10034]
  have child := node10035_eq
  unfold live10035 coloured10035 at child
  try dsimp only [live10036, coloured10036]
  rw [child]
  dsimp only [result10035]
  try dsimp only [colour, result10036]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10037_agree : tree10037 = literal10037 := by
  rw [tree10037_def]
  rfl
theorem node10037_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10037 live10037 coloured10037 = result10037 := by
  rw [tree10037_def]
  try dsimp only [colour, result10037]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10038_agree : tree10038 = literal10038 := by
  rw [tree10038_def, tree10036_agree, tree10037_agree]
  rfl
theorem node10038_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10038 live10038 coloured10038 = result10038 := by
  rw [tree10038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10036_eq
  unfold live10036 coloured10036 at child
  try dsimp only [live10038, coloured10038]
  rw [child]
  dsimp only [result10036]
  have child := node10037_eq
  unfold live10037 coloured10037 at child
  try dsimp only [live10038, coloured10038]
  rw [child]
  dsimp only [result10037]
  try dsimp only [colour, result10038]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10039_agree : tree10039 = literal10039 := by
  rw [tree10039_def]
  rfl
theorem node10039_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10039 live10039 coloured10039 = result10039 := by
  rw [tree10039_def]
  try dsimp only [colour, result10039]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10040_agree : tree10040 = literal10040 := by
  rw [tree10040_def, tree10038_agree, tree10039_agree]
  rfl
theorem node10040_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10040 live10040 coloured10040 = result10040 := by
  rw [tree10040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10038_eq
  unfold live10038 coloured10038 at child
  try dsimp only [live10040, coloured10040]
  rw [child]
  dsimp only [result10038]
  have child := node10039_eq
  unfold live10039 coloured10039 at child
  try dsimp only [live10040, coloured10040]
  rw [child]
  dsimp only [result10039]
  try dsimp only [colour, result10040]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10041_agree : tree10041 = literal10041 := by
  rw [tree10041_def]
  rfl
theorem node10041_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10041 live10041 coloured10041 = result10041 := by
  rw [tree10041_def]
  try dsimp only [colour, result10041]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10042_agree : tree10042 = literal10042 := by
  rw [tree10042_def, tree10040_agree, tree10041_agree]
  rfl
theorem node10042_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10042 live10042 coloured10042 = result10042 := by
  rw [tree10042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10040_eq
  unfold live10040 coloured10040 at child
  try dsimp only [live10042, coloured10042]
  rw [child]
  dsimp only [result10040]
  have child := node10041_eq
  unfold live10041 coloured10041 at child
  try dsimp only [live10042, coloured10042]
  rw [child]
  dsimp only [result10041]
  try dsimp only [colour, result10042]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10043_agree : tree10043 = literal10043 := by
  rw [tree10043_def]
  rfl
theorem node10043_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10043 live10043 coloured10043 = result10043 := by
  rw [tree10043_def]
  try dsimp only [colour, result10043]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10044_agree : tree10044 = literal10044 := by
  rw [tree10044_def, tree10042_agree, tree10043_agree]
  rfl
theorem node10044_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10044 live10044 coloured10044 = result10044 := by
  rw [tree10044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10042_eq
  unfold live10042 coloured10042 at child
  try dsimp only [live10044, coloured10044]
  rw [child]
  dsimp only [result10042]
  have child := node10043_eq
  unfold live10043 coloured10043 at child
  try dsimp only [live10044, coloured10044]
  rw [child]
  dsimp only [result10043]
  try dsimp only [colour, result10044]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10045_agree : tree10045 = literal10045 := by
  rw [tree10045_def]
  rfl
theorem node10045_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10045 live10045 coloured10045 = result10045 := by
  rw [tree10045_def]
  try dsimp only [colour, result10045]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10046_agree : tree10046 = literal10046 := by
  rw [tree10046_def, tree10044_agree, tree10045_agree]
  rfl
theorem node10046_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10046 live10046 coloured10046 = result10046 := by
  rw [tree10046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10044_eq
  unfold live10044 coloured10044 at child
  try dsimp only [live10046, coloured10046]
  rw [child]
  dsimp only [result10044]
  have child := node10045_eq
  unfold live10045 coloured10045 at child
  try dsimp only [live10046, coloured10046]
  rw [child]
  dsimp only [result10045]
  try dsimp only [colour, result10046]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10047_agree : tree10047 = literal10047 := by
  rw [tree10047_def]
  rfl
theorem node10047_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10047 live10047 coloured10047 = result10047 := by
  rw [tree10047_def]
  try dsimp only [colour, result10047]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10048_agree : tree10048 = literal10048 := by
  rw [tree10048_def, tree10046_agree, tree10047_agree]
  rfl
theorem node10048_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10048 live10048 coloured10048 = result10048 := by
  rw [tree10048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10046_eq
  unfold live10046 coloured10046 at child
  try dsimp only [live10048, coloured10048]
  rw [child]
  dsimp only [result10046]
  have child := node10047_eq
  unfold live10047 coloured10047 at child
  try dsimp only [live10048, coloured10048]
  rw [child]
  dsimp only [result10047]
  try dsimp only [colour, result10048]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10049_agree : tree10049 = literal10049 := by
  rw [tree10049_def]
  rfl
theorem node10049_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10049 live10049 coloured10049 = result10049 := by
  rw [tree10049_def]
  try dsimp only [colour, result10049]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10050_agree : tree10050 = literal10050 := by
  rw [tree10050_def, tree10048_agree, tree10049_agree]
  rfl
theorem node10050_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10050 live10050 coloured10050 = result10050 := by
  rw [tree10050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10048_eq
  unfold live10048 coloured10048 at child
  try dsimp only [live10050, coloured10050]
  rw [child]
  dsimp only [result10048]
  have child := node10049_eq
  unfold live10049 coloured10049 at child
  try dsimp only [live10050, coloured10050]
  rw [child]
  dsimp only [result10049]
  try dsimp only [colour, result10050]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10051_agree : tree10051 = literal10051 := by
  rw [tree10051_def]
  rfl
theorem node10051_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10051 live10051 coloured10051 = result10051 := by
  rw [tree10051_def]
  try dsimp only [colour, result10051]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10052_agree : tree10052 = literal10052 := by
  rw [tree10052_def, tree10050_agree, tree10051_agree]
  rfl
theorem node10052_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10052 live10052 coloured10052 = result10052 := by
  rw [tree10052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10050_eq
  unfold live10050 coloured10050 at child
  try dsimp only [live10052, coloured10052]
  rw [child]
  dsimp only [result10050]
  have child := node10051_eq
  unfold live10051 coloured10051 at child
  try dsimp only [live10052, coloured10052]
  rw [child]
  dsimp only [result10051]
  try dsimp only [colour, result10052]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10053_agree : tree10053 = literal10053 := by
  rw [tree10053_def]
  rfl
theorem node10053_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10053 live10053 coloured10053 = result10053 := by
  rw [tree10053_def]
  try dsimp only [colour, result10053]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10054_agree : tree10054 = literal10054 := by
  rw [tree10054_def, tree10052_agree, tree10053_agree]
  rfl
theorem node10054_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10054 live10054 coloured10054 = result10054 := by
  rw [tree10054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10052_eq
  unfold live10052 coloured10052 at child
  try dsimp only [live10054, coloured10054]
  rw [child]
  dsimp only [result10052]
  have child := node10053_eq
  unfold live10053 coloured10053 at child
  try dsimp only [live10054, coloured10054]
  rw [child]
  dsimp only [result10053]
  try dsimp only [colour, result10054]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10055_agree : tree10055 = literal10055 := by
  rw [tree10055_def]
  rfl
theorem node10055_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10055 live10055 coloured10055 = result10055 := by
  rw [tree10055_def]
  try dsimp only [colour, result10055]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10056_agree : tree10056 = literal10056 := by
  rw [tree10056_def, tree10054_agree, tree10055_agree]
  rfl
theorem node10056_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10056 live10056 coloured10056 = result10056 := by
  rw [tree10056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10054_eq
  unfold live10054 coloured10054 at child
  try dsimp only [live10056, coloured10056]
  rw [child]
  dsimp only [result10054]
  have child := node10055_eq
  unfold live10055 coloured10055 at child
  try dsimp only [live10056, coloured10056]
  rw [child]
  dsimp only [result10055]
  try dsimp only [colour, result10056]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10057_agree : tree10057 = literal10057 := by
  rw [tree10057_def]
  rfl
theorem node10057_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10057 live10057 coloured10057 = result10057 := by
  rw [tree10057_def]
  try dsimp only [colour, result10057]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10058_agree : tree10058 = literal10058 := by
  rw [tree10058_def, tree10056_agree, tree10057_agree]
  rfl
theorem node10058_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10058 live10058 coloured10058 = result10058 := by
  rw [tree10058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10056_eq
  unfold live10056 coloured10056 at child
  try dsimp only [live10058, coloured10058]
  rw [child]
  dsimp only [result10056]
  have child := node10057_eq
  unfold live10057 coloured10057 at child
  try dsimp only [live10058, coloured10058]
  rw [child]
  dsimp only [result10057]
  try dsimp only [colour, result10058]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10059_agree : tree10059 = literal10059 := by
  rw [tree10059_def]
  rfl
theorem node10059_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10059 live10059 coloured10059 = result10059 := by
  rw [tree10059_def]
  try dsimp only [colour, result10059]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10060_agree : tree10060 = literal10060 := by
  rw [tree10060_def, tree10058_agree, tree10059_agree]
  rfl
theorem node10060_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10060 live10060 coloured10060 = result10060 := by
  rw [tree10060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10058_eq
  unfold live10058 coloured10058 at child
  try dsimp only [live10060, coloured10060]
  rw [child]
  dsimp only [result10058]
  have child := node10059_eq
  unfold live10059 coloured10059 at child
  try dsimp only [live10060, coloured10060]
  rw [child]
  dsimp only [result10059]
  try dsimp only [colour, result10060]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10061_agree : tree10061 = literal10061 := by
  rw [tree10061_def]
  rfl
theorem node10061_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10061 live10061 coloured10061 = result10061 := by
  rw [tree10061_def]
  try dsimp only [colour, result10061]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10062_agree : tree10062 = literal10062 := by
  rw [tree10062_def, tree10060_agree, tree10061_agree]
  rfl
theorem node10062_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10062 live10062 coloured10062 = result10062 := by
  rw [tree10062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10060_eq
  unfold live10060 coloured10060 at child
  try dsimp only [live10062, coloured10062]
  rw [child]
  dsimp only [result10060]
  have child := node10061_eq
  unfold live10061 coloured10061 at child
  try dsimp only [live10062, coloured10062]
  rw [child]
  dsimp only [result10061]
  try dsimp only [colour, result10062]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10063_agree : tree10063 = literal10063 := by
  rw [tree10063_def]
  rfl
theorem node10063_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10063 live10063 coloured10063 = result10063 := by
  rw [tree10063_def]
  try dsimp only [colour, result10063]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10064_agree : tree10064 = literal10064 := by
  rw [tree10064_def, tree10062_agree, tree10063_agree]
  rfl
theorem node10064_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10064 live10064 coloured10064 = result10064 := by
  rw [tree10064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10062_eq
  unfold live10062 coloured10062 at child
  try dsimp only [live10064, coloured10064]
  rw [child]
  dsimp only [result10062]
  have child := node10063_eq
  unfold live10063 coloured10063 at child
  try dsimp only [live10064, coloured10064]
  rw [child]
  dsimp only [result10063]
  try dsimp only [colour, result10064]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10065_agree : tree10065 = literal10065 := by
  rw [tree10065_def]
  rfl
theorem node10065_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10065 live10065 coloured10065 = result10065 := by
  rw [tree10065_def]
  try dsimp only [colour, result10065]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10066_agree : tree10066 = literal10066 := by
  rw [tree10066_def, tree10064_agree, tree10065_agree]
  rfl
theorem node10066_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10066 live10066 coloured10066 = result10066 := by
  rw [tree10066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10064_eq
  unfold live10064 coloured10064 at child
  try dsimp only [live10066, coloured10066]
  rw [child]
  dsimp only [result10064]
  have child := node10065_eq
  unfold live10065 coloured10065 at child
  try dsimp only [live10066, coloured10066]
  rw [child]
  dsimp only [result10065]
  try dsimp only [colour, result10066]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10067_agree : tree10067 = literal10067 := by
  rw [tree10067_def]
  rfl
theorem node10067_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10067 live10067 coloured10067 = result10067 := by
  rw [tree10067_def]
  try dsimp only [colour, result10067]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10068_agree : tree10068 = literal10068 := by
  rw [tree10068_def, tree10066_agree, tree10067_agree]
  rfl
theorem node10068_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10068 live10068 coloured10068 = result10068 := by
  rw [tree10068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10066_eq
  unfold live10066 coloured10066 at child
  try dsimp only [live10068, coloured10068]
  rw [child]
  dsimp only [result10066]
  have child := node10067_eq
  unfold live10067 coloured10067 at child
  try dsimp only [live10068, coloured10068]
  rw [child]
  dsimp only [result10067]
  try dsimp only [colour, result10068]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10069_agree : tree10069 = literal10069 := by
  rw [tree10069_def]
  rfl
theorem node10069_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10069 live10069 coloured10069 = result10069 := by
  rw [tree10069_def]
  try dsimp only [colour, result10069]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10070_agree : tree10070 = literal10070 := by
  rw [tree10070_def, tree10068_agree, tree10069_agree]
  rfl
theorem node10070_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10070 live10070 coloured10070 = result10070 := by
  rw [tree10070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10068_eq
  unfold live10068 coloured10068 at child
  try dsimp only [live10070, coloured10070]
  rw [child]
  dsimp only [result10068]
  have child := node10069_eq
  unfold live10069 coloured10069 at child
  try dsimp only [live10070, coloured10070]
  rw [child]
  dsimp only [result10069]
  try dsimp only [colour, result10070]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10071_agree : tree10071 = literal10071 := by
  rw [tree10071_def]
  rfl
theorem node10071_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10071 live10071 coloured10071 = result10071 := by
  rw [tree10071_def]
  try dsimp only [colour, result10071]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10072_agree : tree10072 = literal10072 := by
  rw [tree10072_def, tree10070_agree, tree10071_agree]
  rfl
theorem node10072_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10072 live10072 coloured10072 = result10072 := by
  rw [tree10072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10070_eq
  unfold live10070 coloured10070 at child
  try dsimp only [live10072, coloured10072]
  rw [child]
  dsimp only [result10070]
  have child := node10071_eq
  unfold live10071 coloured10071 at child
  try dsimp only [live10072, coloured10072]
  rw [child]
  dsimp only [result10071]
  try dsimp only [colour, result10072]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10073_agree : tree10073 = literal10073 := by
  rw [tree10073_def]
  rfl
theorem node10073_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10073 live10073 coloured10073 = result10073 := by
  rw [tree10073_def]
  try dsimp only [colour, result10073]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10074_agree : tree10074 = literal10074 := by
  rw [tree10074_def, tree10072_agree, tree10073_agree]
  rfl
theorem node10074_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10074 live10074 coloured10074 = result10074 := by
  rw [tree10074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10072_eq
  unfold live10072 coloured10072 at child
  try dsimp only [live10074, coloured10074]
  rw [child]
  dsimp only [result10072]
  have child := node10073_eq
  unfold live10073 coloured10073 at child
  try dsimp only [live10074, coloured10074]
  rw [child]
  dsimp only [result10073]
  try dsimp only [colour, result10074]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10075_agree : tree10075 = literal10075 := by
  rw [tree10075_def]
  rfl
theorem node10075_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10075 live10075 coloured10075 = result10075 := by
  rw [tree10075_def]
  try dsimp only [colour, result10075]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10076_agree : tree10076 = literal10076 := by
  rw [tree10076_def, tree10074_agree, tree10075_agree]
  rfl
theorem node10076_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10076 live10076 coloured10076 = result10076 := by
  rw [tree10076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10074_eq
  unfold live10074 coloured10074 at child
  try dsimp only [live10076, coloured10076]
  rw [child]
  dsimp only [result10074]
  have child := node10075_eq
  unfold live10075 coloured10075 at child
  try dsimp only [live10076, coloured10076]
  rw [child]
  dsimp only [result10075]
  try dsimp only [colour, result10076]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10077_agree : tree10077 = literal10077 := by
  rw [tree10077_def]
  rfl
theorem node10077_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10077 live10077 coloured10077 = result10077 := by
  rw [tree10077_def]
  try dsimp only [colour, result10077]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10078_agree : tree10078 = literal10078 := by
  rw [tree10078_def, tree10076_agree, tree10077_agree]
  rfl
theorem node10078_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10078 live10078 coloured10078 = result10078 := by
  rw [tree10078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10076_eq
  unfold live10076 coloured10076 at child
  try dsimp only [live10078, coloured10078]
  rw [child]
  dsimp only [result10076]
  have child := node10077_eq
  unfold live10077 coloured10077 at child
  try dsimp only [live10078, coloured10078]
  rw [child]
  dsimp only [result10077]
  try dsimp only [colour, result10078]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10079_agree : tree10079 = literal10079 := by
  rw [tree10079_def]
  rfl
theorem node10079_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10079 live10079 coloured10079 = result10079 := by
  rw [tree10079_def]
  try dsimp only [colour, result10079]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
