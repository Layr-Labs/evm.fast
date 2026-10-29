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
theorem tree9984_agree_conditional
    (child0 : tree9982 = literal9982)
    (child1 : tree9983 = literal9983) : tree9984 = literal9984 := by
  rw [tree9984_def, child0, child1]
  rfl
theorem node9984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9982 live9982 coloured9982 = result9982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9983 live9983 coloured9983 = result9983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9984 live9984 coloured9984 = result9984 := by
  rw [tree9984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9982 coloured9982 at child
  try dsimp only [live9984, coloured9984]
  rw [child]
  dsimp only [result9982]
  have child := child1
  unfold live9983 coloured9983 at child
  try dsimp only [live9984, coloured9984]
  rw [child]
  dsimp only [result9983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9985_agree_conditional : tree9985 = literal9985 := by
  rw [tree9985_def]
  rfl
theorem node9985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9985 live9985 coloured9985 = result9985 := by
  rw [tree9985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9986_agree_conditional
    (child0 : tree9984 = literal9984)
    (child1 : tree9985 = literal9985) : tree9986 = literal9986 := by
  rw [tree9986_def, child0, child1]
  rfl
theorem node9986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9984 live9984 coloured9984 = result9984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9985 live9985 coloured9985 = result9985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9986 live9986 coloured9986 = result9986 := by
  rw [tree9986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9984 coloured9984 at child
  try dsimp only [live9986, coloured9986]
  rw [child]
  dsimp only [result9984]
  have child := child1
  unfold live9985 coloured9985 at child
  try dsimp only [live9986, coloured9986]
  rw [child]
  dsimp only [result9985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9987_agree_conditional : tree9987 = literal9987 := by
  rw [tree9987_def]
  rfl
theorem node9987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9987 live9987 coloured9987 = result9987 := by
  rw [tree9987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9988_agree_conditional
    (child0 : tree9986 = literal9986)
    (child1 : tree9987 = literal9987) : tree9988 = literal9988 := by
  rw [tree9988_def, child0, child1]
  rfl
theorem node9988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9986 live9986 coloured9986 = result9986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9987 live9987 coloured9987 = result9987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9988 live9988 coloured9988 = result9988 := by
  rw [tree9988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9986 coloured9986 at child
  try dsimp only [live9988, coloured9988]
  rw [child]
  dsimp only [result9986]
  have child := child1
  unfold live9987 coloured9987 at child
  try dsimp only [live9988, coloured9988]
  rw [child]
  dsimp only [result9987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9989_agree_conditional : tree9989 = literal9989 := by
  rw [tree9989_def]
  rfl
theorem node9989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9989 live9989 coloured9989 = result9989 := by
  rw [tree9989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9990_agree_conditional
    (child0 : tree9988 = literal9988)
    (child1 : tree9989 = literal9989) : tree9990 = literal9990 := by
  rw [tree9990_def, child0, child1]
  rfl
theorem node9990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9988 live9988 coloured9988 = result9988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9989 live9989 coloured9989 = result9989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9990 live9990 coloured9990 = result9990 := by
  rw [tree9990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9988 coloured9988 at child
  try dsimp only [live9990, coloured9990]
  rw [child]
  dsimp only [result9988]
  have child := child1
  unfold live9989 coloured9989 at child
  try dsimp only [live9990, coloured9990]
  rw [child]
  dsimp only [result9989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9991_agree_conditional : tree9991 = literal9991 := by
  rw [tree9991_def]
  rfl
theorem node9991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9991 live9991 coloured9991 = result9991 := by
  rw [tree9991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9992_agree_conditional
    (child0 : tree9990 = literal9990)
    (child1 : tree9991 = literal9991) : tree9992 = literal9992 := by
  rw [tree9992_def, child0, child1]
  rfl
theorem node9992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9990 live9990 coloured9990 = result9990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9991 live9991 coloured9991 = result9991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9992 live9992 coloured9992 = result9992 := by
  rw [tree9992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9990 coloured9990 at child
  try dsimp only [live9992, coloured9992]
  rw [child]
  dsimp only [result9990]
  have child := child1
  unfold live9991 coloured9991 at child
  try dsimp only [live9992, coloured9992]
  rw [child]
  dsimp only [result9991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9993_agree_conditional : tree9993 = literal9993 := by
  rw [tree9993_def]
  rfl
theorem node9993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9993 live9993 coloured9993 = result9993 := by
  rw [tree9993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9994_agree_conditional
    (child0 : tree9992 = literal9992)
    (child1 : tree9993 = literal9993) : tree9994 = literal9994 := by
  rw [tree9994_def, child0, child1]
  rfl
theorem node9994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9992 live9992 coloured9992 = result9992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9993 live9993 coloured9993 = result9993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9994 live9994 coloured9994 = result9994 := by
  rw [tree9994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9992 coloured9992 at child
  try dsimp only [live9994, coloured9994]
  rw [child]
  dsimp only [result9992]
  have child := child1
  unfold live9993 coloured9993 at child
  try dsimp only [live9994, coloured9994]
  rw [child]
  dsimp only [result9993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9995_agree_conditional : tree9995 = literal9995 := by
  rw [tree9995_def]
  rfl
theorem node9995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9995 live9995 coloured9995 = result9995 := by
  rw [tree9995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9996_agree_conditional
    (child0 : tree9994 = literal9994)
    (child1 : tree9995 = literal9995) : tree9996 = literal9996 := by
  rw [tree9996_def, child0, child1]
  rfl
theorem node9996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9994 live9994 coloured9994 = result9994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9995 live9995 coloured9995 = result9995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9996 live9996 coloured9996 = result9996 := by
  rw [tree9996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9994 coloured9994 at child
  try dsimp only [live9996, coloured9996]
  rw [child]
  dsimp only [result9994]
  have child := child1
  unfold live9995 coloured9995 at child
  try dsimp only [live9996, coloured9996]
  rw [child]
  dsimp only [result9995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9997_agree_conditional : tree9997 = literal9997 := by
  rw [tree9997_def]
  rfl
theorem node9997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9997 live9997 coloured9997 = result9997 := by
  rw [tree9997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9998_agree_conditional
    (child0 : tree9996 = literal9996)
    (child1 : tree9997 = literal9997) : tree9998 = literal9998 := by
  rw [tree9998_def, child0, child1]
  rfl
theorem node9998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9996 live9996 coloured9996 = result9996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9997 live9997 coloured9997 = result9997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9998 live9998 coloured9998 = result9998 := by
  rw [tree9998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9996 coloured9996 at child
  try dsimp only [live9998, coloured9998]
  rw [child]
  dsimp only [result9996]
  have child := child1
  unfold live9997 coloured9997 at child
  try dsimp only [live9998, coloured9998]
  rw [child]
  dsimp only [result9997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9999_agree_conditional : tree9999 = literal9999 := by
  rw [tree9999_def]
  rfl
theorem node9999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9999 live9999 coloured9999 = result9999 := by
  rw [tree9999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10000_agree_conditional
    (child0 : tree9998 = literal9998)
    (child1 : tree9999 = literal9999) : tree10000 = literal10000 := by
  rw [tree10000_def, child0, child1]
  rfl
theorem node10000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9998 live9998 coloured9998 = result9998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9999 live9999 coloured9999 = result9999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10000 live10000 coloured10000 = result10000 := by
  rw [tree10000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9998 coloured9998 at child
  try dsimp only [live10000, coloured10000]
  rw [child]
  dsimp only [result9998]
  have child := child1
  unfold live9999 coloured9999 at child
  try dsimp only [live10000, coloured10000]
  rw [child]
  dsimp only [result9999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10001_agree_conditional : tree10001 = literal10001 := by
  rw [tree10001_def]
  rfl
theorem node10001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10001 live10001 coloured10001 = result10001 := by
  rw [tree10001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10002_agree_conditional
    (child0 : tree10000 = literal10000)
    (child1 : tree10001 = literal10001) : tree10002 = literal10002 := by
  rw [tree10002_def, child0, child1]
  rfl
theorem node10002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10000 live10000 coloured10000 = result10000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10001 live10001 coloured10001 = result10001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10002 live10002 coloured10002 = result10002 := by
  rw [tree10002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10000 coloured10000 at child
  try dsimp only [live10002, coloured10002]
  rw [child]
  dsimp only [result10000]
  have child := child1
  unfold live10001 coloured10001 at child
  try dsimp only [live10002, coloured10002]
  rw [child]
  dsimp only [result10001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10003_agree_conditional : tree10003 = literal10003 := by
  rw [tree10003_def]
  rfl
theorem node10003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10003 live10003 coloured10003 = result10003 := by
  rw [tree10003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10004_agree_conditional
    (child0 : tree10002 = literal10002)
    (child1 : tree10003 = literal10003) : tree10004 = literal10004 := by
  rw [tree10004_def, child0, child1]
  rfl
theorem node10004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10002 live10002 coloured10002 = result10002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10003 live10003 coloured10003 = result10003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10004 live10004 coloured10004 = result10004 := by
  rw [tree10004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10002 coloured10002 at child
  try dsimp only [live10004, coloured10004]
  rw [child]
  dsimp only [result10002]
  have child := child1
  unfold live10003 coloured10003 at child
  try dsimp only [live10004, coloured10004]
  rw [child]
  dsimp only [result10003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10005_agree_conditional : tree10005 = literal10005 := by
  rw [tree10005_def]
  rfl
theorem node10005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10005 live10005 coloured10005 = result10005 := by
  rw [tree10005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10006_agree_conditional
    (child0 : tree10004 = literal10004)
    (child1 : tree10005 = literal10005) : tree10006 = literal10006 := by
  rw [tree10006_def, child0, child1]
  rfl
theorem node10006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10004 live10004 coloured10004 = result10004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10005 live10005 coloured10005 = result10005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10006 live10006 coloured10006 = result10006 := by
  rw [tree10006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10004 coloured10004 at child
  try dsimp only [live10006, coloured10006]
  rw [child]
  dsimp only [result10004]
  have child := child1
  unfold live10005 coloured10005 at child
  try dsimp only [live10006, coloured10006]
  rw [child]
  dsimp only [result10005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10007_agree_conditional : tree10007 = literal10007 := by
  rw [tree10007_def]
  rfl
theorem node10007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10007 live10007 coloured10007 = result10007 := by
  rw [tree10007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10008_agree_conditional
    (child0 : tree10006 = literal10006)
    (child1 : tree10007 = literal10007) : tree10008 = literal10008 := by
  rw [tree10008_def, child0, child1]
  rfl
theorem node10008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10006 live10006 coloured10006 = result10006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10007 live10007 coloured10007 = result10007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10008 live10008 coloured10008 = result10008 := by
  rw [tree10008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10006 coloured10006 at child
  try dsimp only [live10008, coloured10008]
  rw [child]
  dsimp only [result10006]
  have child := child1
  unfold live10007 coloured10007 at child
  try dsimp only [live10008, coloured10008]
  rw [child]
  dsimp only [result10007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10009_agree_conditional : tree10009 = literal10009 := by
  rw [tree10009_def]
  rfl
theorem node10009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10009 live10009 coloured10009 = result10009 := by
  rw [tree10009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10010_agree_conditional
    (child0 : tree10008 = literal10008)
    (child1 : tree10009 = literal10009) : tree10010 = literal10010 := by
  rw [tree10010_def, child0, child1]
  rfl
theorem node10010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10008 live10008 coloured10008 = result10008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10009 live10009 coloured10009 = result10009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10010 live10010 coloured10010 = result10010 := by
  rw [tree10010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10008 coloured10008 at child
  try dsimp only [live10010, coloured10010]
  rw [child]
  dsimp only [result10008]
  have child := child1
  unfold live10009 coloured10009 at child
  try dsimp only [live10010, coloured10010]
  rw [child]
  dsimp only [result10009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10011_agree_conditional : tree10011 = literal10011 := by
  rw [tree10011_def]
  rfl
theorem node10011_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10011 live10011 coloured10011 = result10011 := by
  rw [tree10011_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10012_agree_conditional
    (child0 : tree10010 = literal10010)
    (child1 : tree10011 = literal10011) : tree10012 = literal10012 := by
  rw [tree10012_def, child0, child1]
  rfl
theorem node10012_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10010 live10010 coloured10010 = result10010)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10011 live10011 coloured10011 = result10011) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10012 live10012 coloured10012 = result10012 := by
  rw [tree10012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10010 coloured10010 at child
  try dsimp only [live10012, coloured10012]
  rw [child]
  dsimp only [result10010]
  have child := child1
  unfold live10011 coloured10011 at child
  try dsimp only [live10012, coloured10012]
  rw [child]
  dsimp only [result10011]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10013_agree_conditional : tree10013 = literal10013 := by
  rw [tree10013_def]
  rfl
theorem node10013_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10013 live10013 coloured10013 = result10013 := by
  rw [tree10013_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10014_agree_conditional
    (child0 : tree10012 = literal10012)
    (child1 : tree10013 = literal10013) : tree10014 = literal10014 := by
  rw [tree10014_def, child0, child1]
  rfl
theorem node10014_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10012 live10012 coloured10012 = result10012)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10013 live10013 coloured10013 = result10013) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10014 live10014 coloured10014 = result10014 := by
  rw [tree10014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10012 coloured10012 at child
  try dsimp only [live10014, coloured10014]
  rw [child]
  dsimp only [result10012]
  have child := child1
  unfold live10013 coloured10013 at child
  try dsimp only [live10014, coloured10014]
  rw [child]
  dsimp only [result10013]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10015_agree_conditional : tree10015 = literal10015 := by
  rw [tree10015_def]
  rfl
theorem node10015_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10015 live10015 coloured10015 = result10015 := by
  rw [tree10015_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10016_agree_conditional
    (child0 : tree10014 = literal10014)
    (child1 : tree10015 = literal10015) : tree10016 = literal10016 := by
  rw [tree10016_def, child0, child1]
  rfl
theorem node10016_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10014 live10014 coloured10014 = result10014)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10015 live10015 coloured10015 = result10015) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10016 live10016 coloured10016 = result10016 := by
  rw [tree10016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10014 coloured10014 at child
  try dsimp only [live10016, coloured10016]
  rw [child]
  dsimp only [result10014]
  have child := child1
  unfold live10015 coloured10015 at child
  try dsimp only [live10016, coloured10016]
  rw [child]
  dsimp only [result10015]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10017_agree_conditional : tree10017 = literal10017 := by
  rw [tree10017_def]
  rfl
theorem node10017_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10017 live10017 coloured10017 = result10017 := by
  rw [tree10017_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10018_agree_conditional
    (child0 : tree10016 = literal10016)
    (child1 : tree10017 = literal10017) : tree10018 = literal10018 := by
  rw [tree10018_def, child0, child1]
  rfl
theorem node10018_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10016 live10016 coloured10016 = result10016)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10017 live10017 coloured10017 = result10017) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10018 live10018 coloured10018 = result10018 := by
  rw [tree10018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10016 coloured10016 at child
  try dsimp only [live10018, coloured10018]
  rw [child]
  dsimp only [result10016]
  have child := child1
  unfold live10017 coloured10017 at child
  try dsimp only [live10018, coloured10018]
  rw [child]
  dsimp only [result10017]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10019_agree_conditional : tree10019 = literal10019 := by
  rw [tree10019_def]
  rfl
theorem node10019_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10019 live10019 coloured10019 = result10019 := by
  rw [tree10019_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10020_agree_conditional
    (child0 : tree10018 = literal10018)
    (child1 : tree10019 = literal10019) : tree10020 = literal10020 := by
  rw [tree10020_def, child0, child1]
  rfl
theorem node10020_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10018 live10018 coloured10018 = result10018)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10019 live10019 coloured10019 = result10019) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10020 live10020 coloured10020 = result10020 := by
  rw [tree10020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10018 coloured10018 at child
  try dsimp only [live10020, coloured10020]
  rw [child]
  dsimp only [result10018]
  have child := child1
  unfold live10019 coloured10019 at child
  try dsimp only [live10020, coloured10020]
  rw [child]
  dsimp only [result10019]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10021_agree_conditional : tree10021 = literal10021 := by
  rw [tree10021_def]
  rfl
theorem node10021_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10021 live10021 coloured10021 = result10021 := by
  rw [tree10021_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10022_agree_conditional
    (child0 : tree10020 = literal10020)
    (child1 : tree10021 = literal10021) : tree10022 = literal10022 := by
  rw [tree10022_def, child0, child1]
  rfl
theorem node10022_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10020 live10020 coloured10020 = result10020)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10021 live10021 coloured10021 = result10021) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10022 live10022 coloured10022 = result10022 := by
  rw [tree10022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10020 coloured10020 at child
  try dsimp only [live10022, coloured10022]
  rw [child]
  dsimp only [result10020]
  have child := child1
  unfold live10021 coloured10021 at child
  try dsimp only [live10022, coloured10022]
  rw [child]
  dsimp only [result10021]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10023_agree_conditional : tree10023 = literal10023 := by
  rw [tree10023_def]
  rfl
theorem node10023_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10023 live10023 coloured10023 = result10023 := by
  rw [tree10023_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10024_agree_conditional
    (child0 : tree10022 = literal10022)
    (child1 : tree10023 = literal10023) : tree10024 = literal10024 := by
  rw [tree10024_def, child0, child1]
  rfl
theorem node10024_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10022 live10022 coloured10022 = result10022)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10023 live10023 coloured10023 = result10023) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10024 live10024 coloured10024 = result10024 := by
  rw [tree10024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10022 coloured10022 at child
  try dsimp only [live10024, coloured10024]
  rw [child]
  dsimp only [result10022]
  have child := child1
  unfold live10023 coloured10023 at child
  try dsimp only [live10024, coloured10024]
  rw [child]
  dsimp only [result10023]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10025_agree_conditional : tree10025 = literal10025 := by
  rw [tree10025_def]
  rfl
theorem node10025_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10025 live10025 coloured10025 = result10025 := by
  rw [tree10025_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10026_agree_conditional
    (child0 : tree10024 = literal10024)
    (child1 : tree10025 = literal10025) : tree10026 = literal10026 := by
  rw [tree10026_def, child0, child1]
  rfl
theorem node10026_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10024 live10024 coloured10024 = result10024)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10025 live10025 coloured10025 = result10025) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10026 live10026 coloured10026 = result10026 := by
  rw [tree10026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10024 coloured10024 at child
  try dsimp only [live10026, coloured10026]
  rw [child]
  dsimp only [result10024]
  have child := child1
  unfold live10025 coloured10025 at child
  try dsimp only [live10026, coloured10026]
  rw [child]
  dsimp only [result10025]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10027_agree_conditional : tree10027 = literal10027 := by
  rw [tree10027_def]
  rfl
theorem node10027_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10027 live10027 coloured10027 = result10027 := by
  rw [tree10027_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10028_agree_conditional
    (child0 : tree10026 = literal10026)
    (child1 : tree10027 = literal10027) : tree10028 = literal10028 := by
  rw [tree10028_def, child0, child1]
  rfl
theorem node10028_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10026 live10026 coloured10026 = result10026)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10027 live10027 coloured10027 = result10027) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10028 live10028 coloured10028 = result10028 := by
  rw [tree10028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10026 coloured10026 at child
  try dsimp only [live10028, coloured10028]
  rw [child]
  dsimp only [result10026]
  have child := child1
  unfold live10027 coloured10027 at child
  try dsimp only [live10028, coloured10028]
  rw [child]
  dsimp only [result10027]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10029_agree_conditional : tree10029 = literal10029 := by
  rw [tree10029_def]
  rfl
theorem node10029_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10029 live10029 coloured10029 = result10029 := by
  rw [tree10029_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10030_agree_conditional
    (child0 : tree10028 = literal10028)
    (child1 : tree10029 = literal10029) : tree10030 = literal10030 := by
  rw [tree10030_def, child0, child1]
  rfl
theorem node10030_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10028 live10028 coloured10028 = result10028)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10029 live10029 coloured10029 = result10029) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10030 live10030 coloured10030 = result10030 := by
  rw [tree10030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10028 coloured10028 at child
  try dsimp only [live10030, coloured10030]
  rw [child]
  dsimp only [result10028]
  have child := child1
  unfold live10029 coloured10029 at child
  try dsimp only [live10030, coloured10030]
  rw [child]
  dsimp only [result10029]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10031_agree_conditional : tree10031 = literal10031 := by
  rw [tree10031_def]
  rfl
theorem node10031_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10031 live10031 coloured10031 = result10031 := by
  rw [tree10031_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10032_agree_conditional
    (child0 : tree10030 = literal10030)
    (child1 : tree10031 = literal10031) : tree10032 = literal10032 := by
  rw [tree10032_def, child0, child1]
  rfl
theorem node10032_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10030 live10030 coloured10030 = result10030)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10031 live10031 coloured10031 = result10031) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10032 live10032 coloured10032 = result10032 := by
  rw [tree10032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10030 coloured10030 at child
  try dsimp only [live10032, coloured10032]
  rw [child]
  dsimp only [result10030]
  have child := child1
  unfold live10031 coloured10031 at child
  try dsimp only [live10032, coloured10032]
  rw [child]
  dsimp only [result10031]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10033_agree_conditional : tree10033 = literal10033 := by
  rw [tree10033_def]
  rfl
theorem node10033_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10033 live10033 coloured10033 = result10033 := by
  rw [tree10033_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10034_agree_conditional
    (child0 : tree10032 = literal10032)
    (child1 : tree10033 = literal10033) : tree10034 = literal10034 := by
  rw [tree10034_def, child0, child1]
  rfl
theorem node10034_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10032 live10032 coloured10032 = result10032)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10033 live10033 coloured10033 = result10033) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10034 live10034 coloured10034 = result10034 := by
  rw [tree10034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10032 coloured10032 at child
  try dsimp only [live10034, coloured10034]
  rw [child]
  dsimp only [result10032]
  have child := child1
  unfold live10033 coloured10033 at child
  try dsimp only [live10034, coloured10034]
  rw [child]
  dsimp only [result10033]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10035_agree_conditional : tree10035 = literal10035 := by
  rw [tree10035_def]
  rfl
theorem node10035_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10035 live10035 coloured10035 = result10035 := by
  rw [tree10035_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10036_agree_conditional
    (child0 : tree10034 = literal10034)
    (child1 : tree10035 = literal10035) : tree10036 = literal10036 := by
  rw [tree10036_def, child0, child1]
  rfl
theorem node10036_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10034 live10034 coloured10034 = result10034)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10035 live10035 coloured10035 = result10035) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10036 live10036 coloured10036 = result10036 := by
  rw [tree10036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10034 coloured10034 at child
  try dsimp only [live10036, coloured10036]
  rw [child]
  dsimp only [result10034]
  have child := child1
  unfold live10035 coloured10035 at child
  try dsimp only [live10036, coloured10036]
  rw [child]
  dsimp only [result10035]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10037_agree_conditional : tree10037 = literal10037 := by
  rw [tree10037_def]
  rfl
theorem node10037_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10037 live10037 coloured10037 = result10037 := by
  rw [tree10037_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10038_agree_conditional
    (child0 : tree10036 = literal10036)
    (child1 : tree10037 = literal10037) : tree10038 = literal10038 := by
  rw [tree10038_def, child0, child1]
  rfl
theorem node10038_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10036 live10036 coloured10036 = result10036)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10037 live10037 coloured10037 = result10037) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10038 live10038 coloured10038 = result10038 := by
  rw [tree10038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10036 coloured10036 at child
  try dsimp only [live10038, coloured10038]
  rw [child]
  dsimp only [result10036]
  have child := child1
  unfold live10037 coloured10037 at child
  try dsimp only [live10038, coloured10038]
  rw [child]
  dsimp only [result10037]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10039_agree_conditional : tree10039 = literal10039 := by
  rw [tree10039_def]
  rfl
theorem node10039_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10039 live10039 coloured10039 = result10039 := by
  rw [tree10039_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10040_agree_conditional
    (child0 : tree10038 = literal10038)
    (child1 : tree10039 = literal10039) : tree10040 = literal10040 := by
  rw [tree10040_def, child0, child1]
  rfl
theorem node10040_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10038 live10038 coloured10038 = result10038)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10039 live10039 coloured10039 = result10039) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10040 live10040 coloured10040 = result10040 := by
  rw [tree10040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10038 coloured10038 at child
  try dsimp only [live10040, coloured10040]
  rw [child]
  dsimp only [result10038]
  have child := child1
  unfold live10039 coloured10039 at child
  try dsimp only [live10040, coloured10040]
  rw [child]
  dsimp only [result10039]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10041_agree_conditional : tree10041 = literal10041 := by
  rw [tree10041_def]
  rfl
theorem node10041_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10041 live10041 coloured10041 = result10041 := by
  rw [tree10041_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10042_agree_conditional
    (child0 : tree10040 = literal10040)
    (child1 : tree10041 = literal10041) : tree10042 = literal10042 := by
  rw [tree10042_def, child0, child1]
  rfl
theorem node10042_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10040 live10040 coloured10040 = result10040)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10041 live10041 coloured10041 = result10041) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10042 live10042 coloured10042 = result10042 := by
  rw [tree10042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10040 coloured10040 at child
  try dsimp only [live10042, coloured10042]
  rw [child]
  dsimp only [result10040]
  have child := child1
  unfold live10041 coloured10041 at child
  try dsimp only [live10042, coloured10042]
  rw [child]
  dsimp only [result10041]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10043_agree_conditional : tree10043 = literal10043 := by
  rw [tree10043_def]
  rfl
theorem node10043_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10043 live10043 coloured10043 = result10043 := by
  rw [tree10043_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10044_agree_conditional
    (child0 : tree10042 = literal10042)
    (child1 : tree10043 = literal10043) : tree10044 = literal10044 := by
  rw [tree10044_def, child0, child1]
  rfl
theorem node10044_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10042 live10042 coloured10042 = result10042)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10043 live10043 coloured10043 = result10043) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10044 live10044 coloured10044 = result10044 := by
  rw [tree10044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10042 coloured10042 at child
  try dsimp only [live10044, coloured10044]
  rw [child]
  dsimp only [result10042]
  have child := child1
  unfold live10043 coloured10043 at child
  try dsimp only [live10044, coloured10044]
  rw [child]
  dsimp only [result10043]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10045_agree_conditional : tree10045 = literal10045 := by
  rw [tree10045_def]
  rfl
theorem node10045_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10045 live10045 coloured10045 = result10045 := by
  rw [tree10045_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10046_agree_conditional
    (child0 : tree10044 = literal10044)
    (child1 : tree10045 = literal10045) : tree10046 = literal10046 := by
  rw [tree10046_def, child0, child1]
  rfl
theorem node10046_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10044 live10044 coloured10044 = result10044)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10045 live10045 coloured10045 = result10045) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10046 live10046 coloured10046 = result10046 := by
  rw [tree10046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10044 coloured10044 at child
  try dsimp only [live10046, coloured10046]
  rw [child]
  dsimp only [result10044]
  have child := child1
  unfold live10045 coloured10045 at child
  try dsimp only [live10046, coloured10046]
  rw [child]
  dsimp only [result10045]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10047_agree_conditional : tree10047 = literal10047 := by
  rw [tree10047_def]
  rfl
theorem node10047_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10047 live10047 coloured10047 = result10047 := by
  rw [tree10047_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10048_agree_conditional
    (child0 : tree10046 = literal10046)
    (child1 : tree10047 = literal10047) : tree10048 = literal10048 := by
  rw [tree10048_def, child0, child1]
  rfl
theorem node10048_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10046 live10046 coloured10046 = result10046)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10047 live10047 coloured10047 = result10047) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10048 live10048 coloured10048 = result10048 := by
  rw [tree10048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10046 coloured10046 at child
  try dsimp only [live10048, coloured10048]
  rw [child]
  dsimp only [result10046]
  have child := child1
  unfold live10047 coloured10047 at child
  try dsimp only [live10048, coloured10048]
  rw [child]
  dsimp only [result10047]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10049_agree_conditional : tree10049 = literal10049 := by
  rw [tree10049_def]
  rfl
theorem node10049_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10049 live10049 coloured10049 = result10049 := by
  rw [tree10049_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10050_agree_conditional
    (child0 : tree10048 = literal10048)
    (child1 : tree10049 = literal10049) : tree10050 = literal10050 := by
  rw [tree10050_def, child0, child1]
  rfl
theorem node10050_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10048 live10048 coloured10048 = result10048)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10049 live10049 coloured10049 = result10049) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10050 live10050 coloured10050 = result10050 := by
  rw [tree10050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10048 coloured10048 at child
  try dsimp only [live10050, coloured10050]
  rw [child]
  dsimp only [result10048]
  have child := child1
  unfold live10049 coloured10049 at child
  try dsimp only [live10050, coloured10050]
  rw [child]
  dsimp only [result10049]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10051_agree_conditional : tree10051 = literal10051 := by
  rw [tree10051_def]
  rfl
theorem node10051_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10051 live10051 coloured10051 = result10051 := by
  rw [tree10051_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10052_agree_conditional
    (child0 : tree10050 = literal10050)
    (child1 : tree10051 = literal10051) : tree10052 = literal10052 := by
  rw [tree10052_def, child0, child1]
  rfl
theorem node10052_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10050 live10050 coloured10050 = result10050)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10051 live10051 coloured10051 = result10051) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10052 live10052 coloured10052 = result10052 := by
  rw [tree10052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10050 coloured10050 at child
  try dsimp only [live10052, coloured10052]
  rw [child]
  dsimp only [result10050]
  have child := child1
  unfold live10051 coloured10051 at child
  try dsimp only [live10052, coloured10052]
  rw [child]
  dsimp only [result10051]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10053_agree_conditional : tree10053 = literal10053 := by
  rw [tree10053_def]
  rfl
theorem node10053_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10053 live10053 coloured10053 = result10053 := by
  rw [tree10053_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10054_agree_conditional
    (child0 : tree10052 = literal10052)
    (child1 : tree10053 = literal10053) : tree10054 = literal10054 := by
  rw [tree10054_def, child0, child1]
  rfl
theorem node10054_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10052 live10052 coloured10052 = result10052)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10053 live10053 coloured10053 = result10053) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10054 live10054 coloured10054 = result10054 := by
  rw [tree10054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10052 coloured10052 at child
  try dsimp only [live10054, coloured10054]
  rw [child]
  dsimp only [result10052]
  have child := child1
  unfold live10053 coloured10053 at child
  try dsimp only [live10054, coloured10054]
  rw [child]
  dsimp only [result10053]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10055_agree_conditional : tree10055 = literal10055 := by
  rw [tree10055_def]
  rfl
theorem node10055_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10055 live10055 coloured10055 = result10055 := by
  rw [tree10055_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10056_agree_conditional
    (child0 : tree10054 = literal10054)
    (child1 : tree10055 = literal10055) : tree10056 = literal10056 := by
  rw [tree10056_def, child0, child1]
  rfl
theorem node10056_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10054 live10054 coloured10054 = result10054)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10055 live10055 coloured10055 = result10055) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10056 live10056 coloured10056 = result10056 := by
  rw [tree10056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10054 coloured10054 at child
  try dsimp only [live10056, coloured10056]
  rw [child]
  dsimp only [result10054]
  have child := child1
  unfold live10055 coloured10055 at child
  try dsimp only [live10056, coloured10056]
  rw [child]
  dsimp only [result10055]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10057_agree_conditional : tree10057 = literal10057 := by
  rw [tree10057_def]
  rfl
theorem node10057_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10057 live10057 coloured10057 = result10057 := by
  rw [tree10057_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10058_agree_conditional
    (child0 : tree10056 = literal10056)
    (child1 : tree10057 = literal10057) : tree10058 = literal10058 := by
  rw [tree10058_def, child0, child1]
  rfl
theorem node10058_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10056 live10056 coloured10056 = result10056)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10057 live10057 coloured10057 = result10057) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10058 live10058 coloured10058 = result10058 := by
  rw [tree10058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10056 coloured10056 at child
  try dsimp only [live10058, coloured10058]
  rw [child]
  dsimp only [result10056]
  have child := child1
  unfold live10057 coloured10057 at child
  try dsimp only [live10058, coloured10058]
  rw [child]
  dsimp only [result10057]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10059_agree_conditional : tree10059 = literal10059 := by
  rw [tree10059_def]
  rfl
theorem node10059_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10059 live10059 coloured10059 = result10059 := by
  rw [tree10059_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10060_agree_conditional
    (child0 : tree10058 = literal10058)
    (child1 : tree10059 = literal10059) : tree10060 = literal10060 := by
  rw [tree10060_def, child0, child1]
  rfl
theorem node10060_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10058 live10058 coloured10058 = result10058)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10059 live10059 coloured10059 = result10059) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10060 live10060 coloured10060 = result10060 := by
  rw [tree10060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10058 coloured10058 at child
  try dsimp only [live10060, coloured10060]
  rw [child]
  dsimp only [result10058]
  have child := child1
  unfold live10059 coloured10059 at child
  try dsimp only [live10060, coloured10060]
  rw [child]
  dsimp only [result10059]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10061_agree_conditional : tree10061 = literal10061 := by
  rw [tree10061_def]
  rfl
theorem node10061_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10061 live10061 coloured10061 = result10061 := by
  rw [tree10061_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10062_agree_conditional
    (child0 : tree10060 = literal10060)
    (child1 : tree10061 = literal10061) : tree10062 = literal10062 := by
  rw [tree10062_def, child0, child1]
  rfl
theorem node10062_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10060 live10060 coloured10060 = result10060)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10061 live10061 coloured10061 = result10061) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10062 live10062 coloured10062 = result10062 := by
  rw [tree10062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10060 coloured10060 at child
  try dsimp only [live10062, coloured10062]
  rw [child]
  dsimp only [result10060]
  have child := child1
  unfold live10061 coloured10061 at child
  try dsimp only [live10062, coloured10062]
  rw [child]
  dsimp only [result10061]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10063_agree_conditional : tree10063 = literal10063 := by
  rw [tree10063_def]
  rfl
theorem node10063_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10063 live10063 coloured10063 = result10063 := by
  rw [tree10063_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10064_agree_conditional
    (child0 : tree10062 = literal10062)
    (child1 : tree10063 = literal10063) : tree10064 = literal10064 := by
  rw [tree10064_def, child0, child1]
  rfl
theorem node10064_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10062 live10062 coloured10062 = result10062)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10063 live10063 coloured10063 = result10063) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10064 live10064 coloured10064 = result10064 := by
  rw [tree10064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10062 coloured10062 at child
  try dsimp only [live10064, coloured10064]
  rw [child]
  dsimp only [result10062]
  have child := child1
  unfold live10063 coloured10063 at child
  try dsimp only [live10064, coloured10064]
  rw [child]
  dsimp only [result10063]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10065_agree_conditional : tree10065 = literal10065 := by
  rw [tree10065_def]
  rfl
theorem node10065_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10065 live10065 coloured10065 = result10065 := by
  rw [tree10065_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10066_agree_conditional
    (child0 : tree10064 = literal10064)
    (child1 : tree10065 = literal10065) : tree10066 = literal10066 := by
  rw [tree10066_def, child0, child1]
  rfl
theorem node10066_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10064 live10064 coloured10064 = result10064)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10065 live10065 coloured10065 = result10065) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10066 live10066 coloured10066 = result10066 := by
  rw [tree10066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10064 coloured10064 at child
  try dsimp only [live10066, coloured10066]
  rw [child]
  dsimp only [result10064]
  have child := child1
  unfold live10065 coloured10065 at child
  try dsimp only [live10066, coloured10066]
  rw [child]
  dsimp only [result10065]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10067_agree_conditional : tree10067 = literal10067 := by
  rw [tree10067_def]
  rfl
theorem node10067_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10067 live10067 coloured10067 = result10067 := by
  rw [tree10067_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10068_agree_conditional
    (child0 : tree10066 = literal10066)
    (child1 : tree10067 = literal10067) : tree10068 = literal10068 := by
  rw [tree10068_def, child0, child1]
  rfl
theorem node10068_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10066 live10066 coloured10066 = result10066)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10067 live10067 coloured10067 = result10067) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10068 live10068 coloured10068 = result10068 := by
  rw [tree10068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10066 coloured10066 at child
  try dsimp only [live10068, coloured10068]
  rw [child]
  dsimp only [result10066]
  have child := child1
  unfold live10067 coloured10067 at child
  try dsimp only [live10068, coloured10068]
  rw [child]
  dsimp only [result10067]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10069_agree_conditional : tree10069 = literal10069 := by
  rw [tree10069_def]
  rfl
theorem node10069_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10069 live10069 coloured10069 = result10069 := by
  rw [tree10069_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10070_agree_conditional
    (child0 : tree10068 = literal10068)
    (child1 : tree10069 = literal10069) : tree10070 = literal10070 := by
  rw [tree10070_def, child0, child1]
  rfl
theorem node10070_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10068 live10068 coloured10068 = result10068)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10069 live10069 coloured10069 = result10069) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10070 live10070 coloured10070 = result10070 := by
  rw [tree10070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10068 coloured10068 at child
  try dsimp only [live10070, coloured10070]
  rw [child]
  dsimp only [result10068]
  have child := child1
  unfold live10069 coloured10069 at child
  try dsimp only [live10070, coloured10070]
  rw [child]
  dsimp only [result10069]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10071_agree_conditional : tree10071 = literal10071 := by
  rw [tree10071_def]
  rfl
theorem node10071_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10071 live10071 coloured10071 = result10071 := by
  rw [tree10071_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10072_agree_conditional
    (child0 : tree10070 = literal10070)
    (child1 : tree10071 = literal10071) : tree10072 = literal10072 := by
  rw [tree10072_def, child0, child1]
  rfl
theorem node10072_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10070 live10070 coloured10070 = result10070)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10071 live10071 coloured10071 = result10071) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10072 live10072 coloured10072 = result10072 := by
  rw [tree10072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10070 coloured10070 at child
  try dsimp only [live10072, coloured10072]
  rw [child]
  dsimp only [result10070]
  have child := child1
  unfold live10071 coloured10071 at child
  try dsimp only [live10072, coloured10072]
  rw [child]
  dsimp only [result10071]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10073_agree_conditional : tree10073 = literal10073 := by
  rw [tree10073_def]
  rfl
theorem node10073_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10073 live10073 coloured10073 = result10073 := by
  rw [tree10073_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10074_agree_conditional
    (child0 : tree10072 = literal10072)
    (child1 : tree10073 = literal10073) : tree10074 = literal10074 := by
  rw [tree10074_def, child0, child1]
  rfl
theorem node10074_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10072 live10072 coloured10072 = result10072)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10073 live10073 coloured10073 = result10073) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10074 live10074 coloured10074 = result10074 := by
  rw [tree10074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10072 coloured10072 at child
  try dsimp only [live10074, coloured10074]
  rw [child]
  dsimp only [result10072]
  have child := child1
  unfold live10073 coloured10073 at child
  try dsimp only [live10074, coloured10074]
  rw [child]
  dsimp only [result10073]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10075_agree_conditional : tree10075 = literal10075 := by
  rw [tree10075_def]
  rfl
theorem node10075_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10075 live10075 coloured10075 = result10075 := by
  rw [tree10075_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10076_agree_conditional
    (child0 : tree10074 = literal10074)
    (child1 : tree10075 = literal10075) : tree10076 = literal10076 := by
  rw [tree10076_def, child0, child1]
  rfl
theorem node10076_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10074 live10074 coloured10074 = result10074)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10075 live10075 coloured10075 = result10075) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10076 live10076 coloured10076 = result10076 := by
  rw [tree10076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10074 coloured10074 at child
  try dsimp only [live10076, coloured10076]
  rw [child]
  dsimp only [result10074]
  have child := child1
  unfold live10075 coloured10075 at child
  try dsimp only [live10076, coloured10076]
  rw [child]
  dsimp only [result10075]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10077_agree_conditional : tree10077 = literal10077 := by
  rw [tree10077_def]
  rfl
theorem node10077_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10077 live10077 coloured10077 = result10077 := by
  rw [tree10077_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10078_agree_conditional
    (child0 : tree10076 = literal10076)
    (child1 : tree10077 = literal10077) : tree10078 = literal10078 := by
  rw [tree10078_def, child0, child1]
  rfl
theorem node10078_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10076 live10076 coloured10076 = result10076)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10077 live10077 coloured10077 = result10077) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10078 live10078 coloured10078 = result10078 := by
  rw [tree10078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10076 coloured10076 at child
  try dsimp only [live10078, coloured10078]
  rw [child]
  dsimp only [result10076]
  have child := child1
  unfold live10077 coloured10077 at child
  try dsimp only [live10078, coloured10078]
  rw [child]
  dsimp only [result10077]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10079_agree_conditional : tree10079 = literal10079 := by
  rw [tree10079_def]
  rfl
theorem node10079_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10079 live10079 coloured10079 = result10079 := by
  rw [tree10079_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
