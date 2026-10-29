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
theorem tree7968_agree_conditional
    (child0 : tree7966 = literal7966)
    (child1 : tree7967 = literal7967) : tree7968 = literal7968 := by
  rw [tree7968_def, child0, child1]
  rfl
theorem node7968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7966 live7966 coloured7966 = result7966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7967 live7967 coloured7967 = result7967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7968 live7968 coloured7968 = result7968 := by
  rw [tree7968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7966 coloured7966 at child
  try dsimp only [live7968, coloured7968]
  rw [child]
  dsimp only [result7966]
  have child := child1
  unfold live7967 coloured7967 at child
  try dsimp only [live7968, coloured7968]
  rw [child]
  dsimp only [result7967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7969_agree_conditional : tree7969 = literal7969 := by
  rw [tree7969_def]
  rfl
theorem node7969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7969 live7969 coloured7969 = result7969 := by
  rw [tree7969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7970_agree_conditional
    (child0 : tree7968 = literal7968)
    (child1 : tree7969 = literal7969) : tree7970 = literal7970 := by
  rw [tree7970_def, child0, child1]
  rfl
theorem node7970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7968 live7968 coloured7968 = result7968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7969 live7969 coloured7969 = result7969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7970 live7970 coloured7970 = result7970 := by
  rw [tree7970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7968 coloured7968 at child
  try dsimp only [live7970, coloured7970]
  rw [child]
  dsimp only [result7968]
  have child := child1
  unfold live7969 coloured7969 at child
  try dsimp only [live7970, coloured7970]
  rw [child]
  dsimp only [result7969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7971_agree_conditional : tree7971 = literal7971 := by
  rw [tree7971_def]
  rfl
theorem node7971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7971 live7971 coloured7971 = result7971 := by
  rw [tree7971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7972_agree_conditional
    (child0 : tree7970 = literal7970)
    (child1 : tree7971 = literal7971) : tree7972 = literal7972 := by
  rw [tree7972_def, child0, child1]
  rfl
theorem node7972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7970 live7970 coloured7970 = result7970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7971 live7971 coloured7971 = result7971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7972 live7972 coloured7972 = result7972 := by
  rw [tree7972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7970 coloured7970 at child
  try dsimp only [live7972, coloured7972]
  rw [child]
  dsimp only [result7970]
  have child := child1
  unfold live7971 coloured7971 at child
  try dsimp only [live7972, coloured7972]
  rw [child]
  dsimp only [result7971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7973_agree_conditional : tree7973 = literal7973 := by
  rw [tree7973_def]
  rfl
theorem node7973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7973 live7973 coloured7973 = result7973 := by
  rw [tree7973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7974_agree_conditional
    (child0 : tree7972 = literal7972)
    (child1 : tree7973 = literal7973) : tree7974 = literal7974 := by
  rw [tree7974_def, child0, child1]
  rfl
theorem node7974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7972 live7972 coloured7972 = result7972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7973 live7973 coloured7973 = result7973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7974 live7974 coloured7974 = result7974 := by
  rw [tree7974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7972 coloured7972 at child
  try dsimp only [live7974, coloured7974]
  rw [child]
  dsimp only [result7972]
  have child := child1
  unfold live7973 coloured7973 at child
  try dsimp only [live7974, coloured7974]
  rw [child]
  dsimp only [result7973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7975_agree_conditional : tree7975 = literal7975 := by
  rw [tree7975_def]
  rfl
theorem node7975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7975 live7975 coloured7975 = result7975 := by
  rw [tree7975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7976_agree_conditional
    (child0 : tree7974 = literal7974)
    (child1 : tree7975 = literal7975) : tree7976 = literal7976 := by
  rw [tree7976_def, child0, child1]
  rfl
theorem node7976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7974 live7974 coloured7974 = result7974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7975 live7975 coloured7975 = result7975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7976 live7976 coloured7976 = result7976 := by
  rw [tree7976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7974 coloured7974 at child
  try dsimp only [live7976, coloured7976]
  rw [child]
  dsimp only [result7974]
  have child := child1
  unfold live7975 coloured7975 at child
  try dsimp only [live7976, coloured7976]
  rw [child]
  dsimp only [result7975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7977_agree_conditional : tree7977 = literal7977 := by
  rw [tree7977_def]
  rfl
theorem node7977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7977 live7977 coloured7977 = result7977 := by
  rw [tree7977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7978_agree_conditional
    (child0 : tree7976 = literal7976)
    (child1 : tree7977 = literal7977) : tree7978 = literal7978 := by
  rw [tree7978_def, child0, child1]
  rfl
theorem node7978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7976 live7976 coloured7976 = result7976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7977 live7977 coloured7977 = result7977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7978 live7978 coloured7978 = result7978 := by
  rw [tree7978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7976 coloured7976 at child
  try dsimp only [live7978, coloured7978]
  rw [child]
  dsimp only [result7976]
  have child := child1
  unfold live7977 coloured7977 at child
  try dsimp only [live7978, coloured7978]
  rw [child]
  dsimp only [result7977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7979_agree_conditional : tree7979 = literal7979 := by
  rw [tree7979_def]
  rfl
theorem node7979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7979 live7979 coloured7979 = result7979 := by
  rw [tree7979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7980_agree_conditional
    (child0 : tree7978 = literal7978)
    (child1 : tree7979 = literal7979) : tree7980 = literal7980 := by
  rw [tree7980_def, child0, child1]
  rfl
theorem node7980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7978 live7978 coloured7978 = result7978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7979 live7979 coloured7979 = result7979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7980 live7980 coloured7980 = result7980 := by
  rw [tree7980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7978 coloured7978 at child
  try dsimp only [live7980, coloured7980]
  rw [child]
  dsimp only [result7978]
  have child := child1
  unfold live7979 coloured7979 at child
  try dsimp only [live7980, coloured7980]
  rw [child]
  dsimp only [result7979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7981_agree_conditional : tree7981 = literal7981 := by
  rw [tree7981_def]
  rfl
theorem node7981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7981 live7981 coloured7981 = result7981 := by
  rw [tree7981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7982_agree_conditional
    (child0 : tree7980 = literal7980)
    (child1 : tree7981 = literal7981) : tree7982 = literal7982 := by
  rw [tree7982_def, child0, child1]
  rfl
theorem node7982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7980 live7980 coloured7980 = result7980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7981 live7981 coloured7981 = result7981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7982 live7982 coloured7982 = result7982 := by
  rw [tree7982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7980 coloured7980 at child
  try dsimp only [live7982, coloured7982]
  rw [child]
  dsimp only [result7980]
  have child := child1
  unfold live7981 coloured7981 at child
  try dsimp only [live7982, coloured7982]
  rw [child]
  dsimp only [result7981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7983_agree_conditional : tree7983 = literal7983 := by
  rw [tree7983_def]
  rfl
theorem node7983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7983 live7983 coloured7983 = result7983 := by
  rw [tree7983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7984_agree_conditional
    (child0 : tree7982 = literal7982)
    (child1 : tree7983 = literal7983) : tree7984 = literal7984 := by
  rw [tree7984_def, child0, child1]
  rfl
theorem node7984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7982 live7982 coloured7982 = result7982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7983 live7983 coloured7983 = result7983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7984 live7984 coloured7984 = result7984 := by
  rw [tree7984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7982 coloured7982 at child
  try dsimp only [live7984, coloured7984]
  rw [child]
  dsimp only [result7982]
  have child := child1
  unfold live7983 coloured7983 at child
  try dsimp only [live7984, coloured7984]
  rw [child]
  dsimp only [result7983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7985_agree_conditional : tree7985 = literal7985 := by
  rw [tree7985_def]
  rfl
theorem node7985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7985 live7985 coloured7985 = result7985 := by
  rw [tree7985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7986_agree_conditional
    (child0 : tree7984 = literal7984)
    (child1 : tree7985 = literal7985) : tree7986 = literal7986 := by
  rw [tree7986_def, child0, child1]
  rfl
theorem node7986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7984 live7984 coloured7984 = result7984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7985 live7985 coloured7985 = result7985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7986 live7986 coloured7986 = result7986 := by
  rw [tree7986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7984 coloured7984 at child
  try dsimp only [live7986, coloured7986]
  rw [child]
  dsimp only [result7984]
  have child := child1
  unfold live7985 coloured7985 at child
  try dsimp only [live7986, coloured7986]
  rw [child]
  dsimp only [result7985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7987_agree_conditional : tree7987 = literal7987 := by
  rw [tree7987_def]
  rfl
theorem node7987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7987 live7987 coloured7987 = result7987 := by
  rw [tree7987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7988_agree_conditional
    (child0 : tree7986 = literal7986)
    (child1 : tree7987 = literal7987) : tree7988 = literal7988 := by
  rw [tree7988_def, child0, child1]
  rfl
theorem node7988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7986 live7986 coloured7986 = result7986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7987 live7987 coloured7987 = result7987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7988 live7988 coloured7988 = result7988 := by
  rw [tree7988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7986 coloured7986 at child
  try dsimp only [live7988, coloured7988]
  rw [child]
  dsimp only [result7986]
  have child := child1
  unfold live7987 coloured7987 at child
  try dsimp only [live7988, coloured7988]
  rw [child]
  dsimp only [result7987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7989_agree_conditional : tree7989 = literal7989 := by
  rw [tree7989_def]
  rfl
theorem node7989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7989 live7989 coloured7989 = result7989 := by
  rw [tree7989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7990_agree_conditional
    (child0 : tree7988 = literal7988)
    (child1 : tree7989 = literal7989) : tree7990 = literal7990 := by
  rw [tree7990_def, child0, child1]
  rfl
theorem node7990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7988 live7988 coloured7988 = result7988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7989 live7989 coloured7989 = result7989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7990 live7990 coloured7990 = result7990 := by
  rw [tree7990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7988 coloured7988 at child
  try dsimp only [live7990, coloured7990]
  rw [child]
  dsimp only [result7988]
  have child := child1
  unfold live7989 coloured7989 at child
  try dsimp only [live7990, coloured7990]
  rw [child]
  dsimp only [result7989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7991_agree_conditional : tree7991 = literal7991 := by
  rw [tree7991_def]
  rfl
theorem node7991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7991 live7991 coloured7991 = result7991 := by
  rw [tree7991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7992_agree_conditional
    (child0 : tree7990 = literal7990)
    (child1 : tree7991 = literal7991) : tree7992 = literal7992 := by
  rw [tree7992_def, child0, child1]
  rfl
theorem node7992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7990 live7990 coloured7990 = result7990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7991 live7991 coloured7991 = result7991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7992 live7992 coloured7992 = result7992 := by
  rw [tree7992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7990 coloured7990 at child
  try dsimp only [live7992, coloured7992]
  rw [child]
  dsimp only [result7990]
  have child := child1
  unfold live7991 coloured7991 at child
  try dsimp only [live7992, coloured7992]
  rw [child]
  dsimp only [result7991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7993_agree_conditional : tree7993 = literal7993 := by
  rw [tree7993_def]
  rfl
theorem node7993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7993 live7993 coloured7993 = result7993 := by
  rw [tree7993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7994_agree_conditional
    (child0 : tree7992 = literal7992)
    (child1 : tree7993 = literal7993) : tree7994 = literal7994 := by
  rw [tree7994_def, child0, child1]
  rfl
theorem node7994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7992 live7992 coloured7992 = result7992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7993 live7993 coloured7993 = result7993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7994 live7994 coloured7994 = result7994 := by
  rw [tree7994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7992 coloured7992 at child
  try dsimp only [live7994, coloured7994]
  rw [child]
  dsimp only [result7992]
  have child := child1
  unfold live7993 coloured7993 at child
  try dsimp only [live7994, coloured7994]
  rw [child]
  dsimp only [result7993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7995_agree_conditional : tree7995 = literal7995 := by
  rw [tree7995_def]
  rfl
theorem node7995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7995 live7995 coloured7995 = result7995 := by
  rw [tree7995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7996_agree_conditional
    (child0 : tree7994 = literal7994)
    (child1 : tree7995 = literal7995) : tree7996 = literal7996 := by
  rw [tree7996_def, child0, child1]
  rfl
theorem node7996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7994 live7994 coloured7994 = result7994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7995 live7995 coloured7995 = result7995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7996 live7996 coloured7996 = result7996 := by
  rw [tree7996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7994 coloured7994 at child
  try dsimp only [live7996, coloured7996]
  rw [child]
  dsimp only [result7994]
  have child := child1
  unfold live7995 coloured7995 at child
  try dsimp only [live7996, coloured7996]
  rw [child]
  dsimp only [result7995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7997_agree_conditional : tree7997 = literal7997 := by
  rw [tree7997_def]
  rfl
theorem node7997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7997 live7997 coloured7997 = result7997 := by
  rw [tree7997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7998_agree_conditional
    (child0 : tree7996 = literal7996)
    (child1 : tree7997 = literal7997) : tree7998 = literal7998 := by
  rw [tree7998_def, child0, child1]
  rfl
theorem node7998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7996 live7996 coloured7996 = result7996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7997 live7997 coloured7997 = result7997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7998 live7998 coloured7998 = result7998 := by
  rw [tree7998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7996 coloured7996 at child
  try dsimp only [live7998, coloured7998]
  rw [child]
  dsimp only [result7996]
  have child := child1
  unfold live7997 coloured7997 at child
  try dsimp only [live7998, coloured7998]
  rw [child]
  dsimp only [result7997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7999_agree_conditional : tree7999 = literal7999 := by
  rw [tree7999_def]
  rfl
theorem node7999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7999 live7999 coloured7999 = result7999 := by
  rw [tree7999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8000_agree_conditional
    (child0 : tree7998 = literal7998)
    (child1 : tree7999 = literal7999) : tree8000 = literal8000 := by
  rw [tree8000_def, child0, child1]
  rfl
theorem node8000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7998 live7998 coloured7998 = result7998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7999 live7999 coloured7999 = result7999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8000 live8000 coloured8000 = result8000 := by
  rw [tree8000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7998 coloured7998 at child
  try dsimp only [live8000, coloured8000]
  rw [child]
  dsimp only [result7998]
  have child := child1
  unfold live7999 coloured7999 at child
  try dsimp only [live8000, coloured8000]
  rw [child]
  dsimp only [result7999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8001_agree_conditional : tree8001 = literal8001 := by
  rw [tree8001_def]
  rfl
theorem node8001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8001 live8001 coloured8001 = result8001 := by
  rw [tree8001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8002_agree_conditional
    (child0 : tree8000 = literal8000)
    (child1 : tree8001 = literal8001) : tree8002 = literal8002 := by
  rw [tree8002_def, child0, child1]
  rfl
theorem node8002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8000 live8000 coloured8000 = result8000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8001 live8001 coloured8001 = result8001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8002 live8002 coloured8002 = result8002 := by
  rw [tree8002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8000 coloured8000 at child
  try dsimp only [live8002, coloured8002]
  rw [child]
  dsimp only [result8000]
  have child := child1
  unfold live8001 coloured8001 at child
  try dsimp only [live8002, coloured8002]
  rw [child]
  dsimp only [result8001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8003_agree_conditional : tree8003 = literal8003 := by
  rw [tree8003_def]
  rfl
theorem node8003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8003 live8003 coloured8003 = result8003 := by
  rw [tree8003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8004_agree_conditional
    (child0 : tree8002 = literal8002)
    (child1 : tree8003 = literal8003) : tree8004 = literal8004 := by
  rw [tree8004_def, child0, child1]
  rfl
theorem node8004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8002 live8002 coloured8002 = result8002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8003 live8003 coloured8003 = result8003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8004 live8004 coloured8004 = result8004 := by
  rw [tree8004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8002 coloured8002 at child
  try dsimp only [live8004, coloured8004]
  rw [child]
  dsimp only [result8002]
  have child := child1
  unfold live8003 coloured8003 at child
  try dsimp only [live8004, coloured8004]
  rw [child]
  dsimp only [result8003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8005_agree_conditional : tree8005 = literal8005 := by
  rw [tree8005_def]
  rfl
theorem node8005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8005 live8005 coloured8005 = result8005 := by
  rw [tree8005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8006_agree_conditional
    (child0 : tree8004 = literal8004)
    (child1 : tree8005 = literal8005) : tree8006 = literal8006 := by
  rw [tree8006_def, child0, child1]
  rfl
theorem node8006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8004 live8004 coloured8004 = result8004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8005 live8005 coloured8005 = result8005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8006 live8006 coloured8006 = result8006 := by
  rw [tree8006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8004 coloured8004 at child
  try dsimp only [live8006, coloured8006]
  rw [child]
  dsimp only [result8004]
  have child := child1
  unfold live8005 coloured8005 at child
  try dsimp only [live8006, coloured8006]
  rw [child]
  dsimp only [result8005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8007_agree_conditional : tree8007 = literal8007 := by
  rw [tree8007_def]
  rfl
theorem node8007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8007 live8007 coloured8007 = result8007 := by
  rw [tree8007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8008_agree_conditional
    (child0 : tree8006 = literal8006)
    (child1 : tree8007 = literal8007) : tree8008 = literal8008 := by
  rw [tree8008_def, child0, child1]
  rfl
theorem node8008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8006 live8006 coloured8006 = result8006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8007 live8007 coloured8007 = result8007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8008 live8008 coloured8008 = result8008 := by
  rw [tree8008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8006 coloured8006 at child
  try dsimp only [live8008, coloured8008]
  rw [child]
  dsimp only [result8006]
  have child := child1
  unfold live8007 coloured8007 at child
  try dsimp only [live8008, coloured8008]
  rw [child]
  dsimp only [result8007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8009_agree_conditional : tree8009 = literal8009 := by
  rw [tree8009_def]
  rfl
theorem node8009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8009 live8009 coloured8009 = result8009 := by
  rw [tree8009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8010_agree_conditional
    (child0 : tree8008 = literal8008)
    (child1 : tree8009 = literal8009) : tree8010 = literal8010 := by
  rw [tree8010_def, child0, child1]
  rfl
theorem node8010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8008 live8008 coloured8008 = result8008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8009 live8009 coloured8009 = result8009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8010 live8010 coloured8010 = result8010 := by
  rw [tree8010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8008 coloured8008 at child
  try dsimp only [live8010, coloured8010]
  rw [child]
  dsimp only [result8008]
  have child := child1
  unfold live8009 coloured8009 at child
  try dsimp only [live8010, coloured8010]
  rw [child]
  dsimp only [result8009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8011_agree_conditional : tree8011 = literal8011 := by
  rw [tree8011_def]
  rfl
theorem node8011_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8011 live8011 coloured8011 = result8011 := by
  rw [tree8011_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8012_agree_conditional
    (child0 : tree8010 = literal8010)
    (child1 : tree8011 = literal8011) : tree8012 = literal8012 := by
  rw [tree8012_def, child0, child1]
  rfl
theorem node8012_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8010 live8010 coloured8010 = result8010)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8011 live8011 coloured8011 = result8011) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8012 live8012 coloured8012 = result8012 := by
  rw [tree8012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8010 coloured8010 at child
  try dsimp only [live8012, coloured8012]
  rw [child]
  dsimp only [result8010]
  have child := child1
  unfold live8011 coloured8011 at child
  try dsimp only [live8012, coloured8012]
  rw [child]
  dsimp only [result8011]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8013_agree_conditional : tree8013 = literal8013 := by
  rw [tree8013_def]
  rfl
theorem node8013_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8013 live8013 coloured8013 = result8013 := by
  rw [tree8013_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8014_agree_conditional
    (child0 : tree8012 = literal8012)
    (child1 : tree8013 = literal8013) : tree8014 = literal8014 := by
  rw [tree8014_def, child0, child1]
  rfl
theorem node8014_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8012 live8012 coloured8012 = result8012)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8013 live8013 coloured8013 = result8013) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8014 live8014 coloured8014 = result8014 := by
  rw [tree8014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8012 coloured8012 at child
  try dsimp only [live8014, coloured8014]
  rw [child]
  dsimp only [result8012]
  have child := child1
  unfold live8013 coloured8013 at child
  try dsimp only [live8014, coloured8014]
  rw [child]
  dsimp only [result8013]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8015_agree_conditional : tree8015 = literal8015 := by
  rw [tree8015_def]
  rfl
theorem node8015_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8015 live8015 coloured8015 = result8015 := by
  rw [tree8015_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8016_agree_conditional
    (child0 : tree8014 = literal8014)
    (child1 : tree8015 = literal8015) : tree8016 = literal8016 := by
  rw [tree8016_def, child0, child1]
  rfl
theorem node8016_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8014 live8014 coloured8014 = result8014)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8015 live8015 coloured8015 = result8015) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8016 live8016 coloured8016 = result8016 := by
  rw [tree8016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8014 coloured8014 at child
  try dsimp only [live8016, coloured8016]
  rw [child]
  dsimp only [result8014]
  have child := child1
  unfold live8015 coloured8015 at child
  try dsimp only [live8016, coloured8016]
  rw [child]
  dsimp only [result8015]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8017_agree_conditional : tree8017 = literal8017 := by
  rw [tree8017_def]
  rfl
theorem node8017_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8017 live8017 coloured8017 = result8017 := by
  rw [tree8017_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8018_agree_conditional
    (child0 : tree8016 = literal8016)
    (child1 : tree8017 = literal8017) : tree8018 = literal8018 := by
  rw [tree8018_def, child0, child1]
  rfl
theorem node8018_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8016 live8016 coloured8016 = result8016)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8017 live8017 coloured8017 = result8017) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8018 live8018 coloured8018 = result8018 := by
  rw [tree8018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8016 coloured8016 at child
  try dsimp only [live8018, coloured8018]
  rw [child]
  dsimp only [result8016]
  have child := child1
  unfold live8017 coloured8017 at child
  try dsimp only [live8018, coloured8018]
  rw [child]
  dsimp only [result8017]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8019_agree_conditional : tree8019 = literal8019 := by
  rw [tree8019_def]
  rfl
theorem node8019_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8019 live8019 coloured8019 = result8019 := by
  rw [tree8019_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8020_agree_conditional
    (child0 : tree8018 = literal8018)
    (child1 : tree8019 = literal8019) : tree8020 = literal8020 := by
  rw [tree8020_def, child0, child1]
  rfl
theorem node8020_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8018 live8018 coloured8018 = result8018)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8019 live8019 coloured8019 = result8019) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8020 live8020 coloured8020 = result8020 := by
  rw [tree8020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8018 coloured8018 at child
  try dsimp only [live8020, coloured8020]
  rw [child]
  dsimp only [result8018]
  have child := child1
  unfold live8019 coloured8019 at child
  try dsimp only [live8020, coloured8020]
  rw [child]
  dsimp only [result8019]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8021_agree_conditional : tree8021 = literal8021 := by
  rw [tree8021_def]
  rfl
theorem node8021_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8021 live8021 coloured8021 = result8021 := by
  rw [tree8021_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8022_agree_conditional
    (child0 : tree8020 = literal8020)
    (child1 : tree8021 = literal8021) : tree8022 = literal8022 := by
  rw [tree8022_def, child0, child1]
  rfl
theorem node8022_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8020 live8020 coloured8020 = result8020)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8021 live8021 coloured8021 = result8021) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8022 live8022 coloured8022 = result8022 := by
  rw [tree8022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8020 coloured8020 at child
  try dsimp only [live8022, coloured8022]
  rw [child]
  dsimp only [result8020]
  have child := child1
  unfold live8021 coloured8021 at child
  try dsimp only [live8022, coloured8022]
  rw [child]
  dsimp only [result8021]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8023_agree_conditional : tree8023 = literal8023 := by
  rw [tree8023_def]
  rfl
theorem node8023_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8023 live8023 coloured8023 = result8023 := by
  rw [tree8023_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8024_agree_conditional
    (child0 : tree8022 = literal8022)
    (child1 : tree8023 = literal8023) : tree8024 = literal8024 := by
  rw [tree8024_def, child0, child1]
  rfl
theorem node8024_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8022 live8022 coloured8022 = result8022)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8023 live8023 coloured8023 = result8023) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8024 live8024 coloured8024 = result8024 := by
  rw [tree8024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8022 coloured8022 at child
  try dsimp only [live8024, coloured8024]
  rw [child]
  dsimp only [result8022]
  have child := child1
  unfold live8023 coloured8023 at child
  try dsimp only [live8024, coloured8024]
  rw [child]
  dsimp only [result8023]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8025_agree_conditional : tree8025 = literal8025 := by
  rw [tree8025_def]
  rfl
theorem node8025_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8025 live8025 coloured8025 = result8025 := by
  rw [tree8025_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8026_agree_conditional
    (child0 : tree8024 = literal8024)
    (child1 : tree8025 = literal8025) : tree8026 = literal8026 := by
  rw [tree8026_def, child0, child1]
  rfl
theorem node8026_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8024 live8024 coloured8024 = result8024)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8025 live8025 coloured8025 = result8025) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8026 live8026 coloured8026 = result8026 := by
  rw [tree8026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8024 coloured8024 at child
  try dsimp only [live8026, coloured8026]
  rw [child]
  dsimp only [result8024]
  have child := child1
  unfold live8025 coloured8025 at child
  try dsimp only [live8026, coloured8026]
  rw [child]
  dsimp only [result8025]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8027_agree_conditional : tree8027 = literal8027 := by
  rw [tree8027_def]
  rfl
theorem node8027_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8027 live8027 coloured8027 = result8027 := by
  rw [tree8027_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8028_agree_conditional
    (child0 : tree8026 = literal8026)
    (child1 : tree8027 = literal8027) : tree8028 = literal8028 := by
  rw [tree8028_def, child0, child1]
  rfl
theorem node8028_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8026 live8026 coloured8026 = result8026)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8027 live8027 coloured8027 = result8027) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8028 live8028 coloured8028 = result8028 := by
  rw [tree8028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8026 coloured8026 at child
  try dsimp only [live8028, coloured8028]
  rw [child]
  dsimp only [result8026]
  have child := child1
  unfold live8027 coloured8027 at child
  try dsimp only [live8028, coloured8028]
  rw [child]
  dsimp only [result8027]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8029_agree_conditional : tree8029 = literal8029 := by
  rw [tree8029_def]
  rfl
theorem node8029_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8029 live8029 coloured8029 = result8029 := by
  rw [tree8029_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8030_agree_conditional
    (child0 : tree8028 = literal8028)
    (child1 : tree8029 = literal8029) : tree8030 = literal8030 := by
  rw [tree8030_def, child0, child1]
  rfl
theorem node8030_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8028 live8028 coloured8028 = result8028)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8029 live8029 coloured8029 = result8029) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8030 live8030 coloured8030 = result8030 := by
  rw [tree8030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8028 coloured8028 at child
  try dsimp only [live8030, coloured8030]
  rw [child]
  dsimp only [result8028]
  have child := child1
  unfold live8029 coloured8029 at child
  try dsimp only [live8030, coloured8030]
  rw [child]
  dsimp only [result8029]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8031_agree_conditional : tree8031 = literal8031 := by
  rw [tree8031_def]
  rfl
theorem node8031_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8031 live8031 coloured8031 = result8031 := by
  rw [tree8031_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8032_agree_conditional
    (child0 : tree8030 = literal8030)
    (child1 : tree8031 = literal8031) : tree8032 = literal8032 := by
  rw [tree8032_def, child0, child1]
  rfl
theorem node8032_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8030 live8030 coloured8030 = result8030)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8031 live8031 coloured8031 = result8031) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8032 live8032 coloured8032 = result8032 := by
  rw [tree8032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8030 coloured8030 at child
  try dsimp only [live8032, coloured8032]
  rw [child]
  dsimp only [result8030]
  have child := child1
  unfold live8031 coloured8031 at child
  try dsimp only [live8032, coloured8032]
  rw [child]
  dsimp only [result8031]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8033_agree_conditional : tree8033 = literal8033 := by
  rw [tree8033_def]
  rfl
theorem node8033_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8033 live8033 coloured8033 = result8033 := by
  rw [tree8033_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8034_agree_conditional
    (child0 : tree8032 = literal8032)
    (child1 : tree8033 = literal8033) : tree8034 = literal8034 := by
  rw [tree8034_def, child0, child1]
  rfl
theorem node8034_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8032 live8032 coloured8032 = result8032)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8033 live8033 coloured8033 = result8033) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8034 live8034 coloured8034 = result8034 := by
  rw [tree8034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8032 coloured8032 at child
  try dsimp only [live8034, coloured8034]
  rw [child]
  dsimp only [result8032]
  have child := child1
  unfold live8033 coloured8033 at child
  try dsimp only [live8034, coloured8034]
  rw [child]
  dsimp only [result8033]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8035_agree_conditional : tree8035 = literal8035 := by
  rw [tree8035_def]
  rfl
theorem node8035_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8035 live8035 coloured8035 = result8035 := by
  rw [tree8035_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8036_agree_conditional
    (child0 : tree8034 = literal8034)
    (child1 : tree8035 = literal8035) : tree8036 = literal8036 := by
  rw [tree8036_def, child0, child1]
  rfl
theorem node8036_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8034 live8034 coloured8034 = result8034)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8035 live8035 coloured8035 = result8035) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8036 live8036 coloured8036 = result8036 := by
  rw [tree8036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8034 coloured8034 at child
  try dsimp only [live8036, coloured8036]
  rw [child]
  dsimp only [result8034]
  have child := child1
  unfold live8035 coloured8035 at child
  try dsimp only [live8036, coloured8036]
  rw [child]
  dsimp only [result8035]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8037_agree_conditional : tree8037 = literal8037 := by
  rw [tree8037_def]
  rfl
theorem node8037_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8037 live8037 coloured8037 = result8037 := by
  rw [tree8037_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8038_agree_conditional
    (child0 : tree8036 = literal8036)
    (child1 : tree8037 = literal8037) : tree8038 = literal8038 := by
  rw [tree8038_def, child0, child1]
  rfl
theorem node8038_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8036 live8036 coloured8036 = result8036)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8037 live8037 coloured8037 = result8037) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8038 live8038 coloured8038 = result8038 := by
  rw [tree8038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8036 coloured8036 at child
  try dsimp only [live8038, coloured8038]
  rw [child]
  dsimp only [result8036]
  have child := child1
  unfold live8037 coloured8037 at child
  try dsimp only [live8038, coloured8038]
  rw [child]
  dsimp only [result8037]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8039_agree_conditional : tree8039 = literal8039 := by
  rw [tree8039_def]
  rfl
theorem node8039_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8039 live8039 coloured8039 = result8039 := by
  rw [tree8039_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8040_agree_conditional
    (child0 : tree8038 = literal8038)
    (child1 : tree8039 = literal8039) : tree8040 = literal8040 := by
  rw [tree8040_def, child0, child1]
  rfl
theorem node8040_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8038 live8038 coloured8038 = result8038)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8039 live8039 coloured8039 = result8039) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8040 live8040 coloured8040 = result8040 := by
  rw [tree8040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8038 coloured8038 at child
  try dsimp only [live8040, coloured8040]
  rw [child]
  dsimp only [result8038]
  have child := child1
  unfold live8039 coloured8039 at child
  try dsimp only [live8040, coloured8040]
  rw [child]
  dsimp only [result8039]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8041_agree_conditional : tree8041 = literal8041 := by
  rw [tree8041_def]
  rfl
theorem node8041_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8041 live8041 coloured8041 = result8041 := by
  rw [tree8041_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8042_agree_conditional
    (child0 : tree8040 = literal8040)
    (child1 : tree8041 = literal8041) : tree8042 = literal8042 := by
  rw [tree8042_def, child0, child1]
  rfl
theorem node8042_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8040 live8040 coloured8040 = result8040)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8041 live8041 coloured8041 = result8041) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8042 live8042 coloured8042 = result8042 := by
  rw [tree8042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8040 coloured8040 at child
  try dsimp only [live8042, coloured8042]
  rw [child]
  dsimp only [result8040]
  have child := child1
  unfold live8041 coloured8041 at child
  try dsimp only [live8042, coloured8042]
  rw [child]
  dsimp only [result8041]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8043_agree_conditional : tree8043 = literal8043 := by
  rw [tree8043_def]
  rfl
theorem node8043_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8043 live8043 coloured8043 = result8043 := by
  rw [tree8043_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8044_agree_conditional
    (child0 : tree8042 = literal8042)
    (child1 : tree8043 = literal8043) : tree8044 = literal8044 := by
  rw [tree8044_def, child0, child1]
  rfl
theorem node8044_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8042 live8042 coloured8042 = result8042)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8043 live8043 coloured8043 = result8043) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8044 live8044 coloured8044 = result8044 := by
  rw [tree8044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8042 coloured8042 at child
  try dsimp only [live8044, coloured8044]
  rw [child]
  dsimp only [result8042]
  have child := child1
  unfold live8043 coloured8043 at child
  try dsimp only [live8044, coloured8044]
  rw [child]
  dsimp only [result8043]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8045_agree_conditional : tree8045 = literal8045 := by
  rw [tree8045_def]
  rfl
theorem node8045_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8045 live8045 coloured8045 = result8045 := by
  rw [tree8045_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8046_agree_conditional
    (child0 : tree8044 = literal8044)
    (child1 : tree8045 = literal8045) : tree8046 = literal8046 := by
  rw [tree8046_def, child0, child1]
  rfl
theorem node8046_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8044 live8044 coloured8044 = result8044)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8045 live8045 coloured8045 = result8045) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8046 live8046 coloured8046 = result8046 := by
  rw [tree8046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8044 coloured8044 at child
  try dsimp only [live8046, coloured8046]
  rw [child]
  dsimp only [result8044]
  have child := child1
  unfold live8045 coloured8045 at child
  try dsimp only [live8046, coloured8046]
  rw [child]
  dsimp only [result8045]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8047_agree_conditional : tree8047 = literal8047 := by
  rw [tree8047_def]
  rfl
theorem node8047_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8047 live8047 coloured8047 = result8047 := by
  rw [tree8047_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8048_agree_conditional
    (child0 : tree8046 = literal8046)
    (child1 : tree8047 = literal8047) : tree8048 = literal8048 := by
  rw [tree8048_def, child0, child1]
  rfl
theorem node8048_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8046 live8046 coloured8046 = result8046)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8047 live8047 coloured8047 = result8047) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8048 live8048 coloured8048 = result8048 := by
  rw [tree8048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8046 coloured8046 at child
  try dsimp only [live8048, coloured8048]
  rw [child]
  dsimp only [result8046]
  have child := child1
  unfold live8047 coloured8047 at child
  try dsimp only [live8048, coloured8048]
  rw [child]
  dsimp only [result8047]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8049_agree_conditional : tree8049 = literal8049 := by
  rw [tree8049_def]
  rfl
theorem node8049_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8049 live8049 coloured8049 = result8049 := by
  rw [tree8049_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8050_agree_conditional
    (child0 : tree8048 = literal8048)
    (child1 : tree8049 = literal8049) : tree8050 = literal8050 := by
  rw [tree8050_def, child0, child1]
  rfl
theorem node8050_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8048 live8048 coloured8048 = result8048)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8049 live8049 coloured8049 = result8049) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8050 live8050 coloured8050 = result8050 := by
  rw [tree8050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8048 coloured8048 at child
  try dsimp only [live8050, coloured8050]
  rw [child]
  dsimp only [result8048]
  have child := child1
  unfold live8049 coloured8049 at child
  try dsimp only [live8050, coloured8050]
  rw [child]
  dsimp only [result8049]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8051_agree_conditional : tree8051 = literal8051 := by
  rw [tree8051_def]
  rfl
theorem node8051_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8051 live8051 coloured8051 = result8051 := by
  rw [tree8051_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8052_agree_conditional
    (child0 : tree8050 = literal8050)
    (child1 : tree8051 = literal8051) : tree8052 = literal8052 := by
  rw [tree8052_def, child0, child1]
  rfl
theorem node8052_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8050 live8050 coloured8050 = result8050)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8051 live8051 coloured8051 = result8051) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8052 live8052 coloured8052 = result8052 := by
  rw [tree8052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8050 coloured8050 at child
  try dsimp only [live8052, coloured8052]
  rw [child]
  dsimp only [result8050]
  have child := child1
  unfold live8051 coloured8051 at child
  try dsimp only [live8052, coloured8052]
  rw [child]
  dsimp only [result8051]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8053_agree_conditional : tree8053 = literal8053 := by
  rw [tree8053_def]
  rfl
theorem node8053_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8053 live8053 coloured8053 = result8053 := by
  rw [tree8053_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8054_agree_conditional
    (child0 : tree8052 = literal8052)
    (child1 : tree8053 = literal8053) : tree8054 = literal8054 := by
  rw [tree8054_def, child0, child1]
  rfl
theorem node8054_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8052 live8052 coloured8052 = result8052)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8053 live8053 coloured8053 = result8053) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8054 live8054 coloured8054 = result8054 := by
  rw [tree8054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8052 coloured8052 at child
  try dsimp only [live8054, coloured8054]
  rw [child]
  dsimp only [result8052]
  have child := child1
  unfold live8053 coloured8053 at child
  try dsimp only [live8054, coloured8054]
  rw [child]
  dsimp only [result8053]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8055_agree_conditional : tree8055 = literal8055 := by
  rw [tree8055_def]
  rfl
theorem node8055_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8055 live8055 coloured8055 = result8055 := by
  rw [tree8055_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8056_agree_conditional
    (child0 : tree8054 = literal8054)
    (child1 : tree8055 = literal8055) : tree8056 = literal8056 := by
  rw [tree8056_def, child0, child1]
  rfl
theorem node8056_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8054 live8054 coloured8054 = result8054)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8055 live8055 coloured8055 = result8055) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8056 live8056 coloured8056 = result8056 := by
  rw [tree8056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8054 coloured8054 at child
  try dsimp only [live8056, coloured8056]
  rw [child]
  dsimp only [result8054]
  have child := child1
  unfold live8055 coloured8055 at child
  try dsimp only [live8056, coloured8056]
  rw [child]
  dsimp only [result8055]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8057_agree_conditional : tree8057 = literal8057 := by
  rw [tree8057_def]
  rfl
theorem node8057_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8057 live8057 coloured8057 = result8057 := by
  rw [tree8057_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8058_agree_conditional
    (child0 : tree8056 = literal8056)
    (child1 : tree8057 = literal8057) : tree8058 = literal8058 := by
  rw [tree8058_def, child0, child1]
  rfl
theorem node8058_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8056 live8056 coloured8056 = result8056)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8057 live8057 coloured8057 = result8057) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8058 live8058 coloured8058 = result8058 := by
  rw [tree8058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8056 coloured8056 at child
  try dsimp only [live8058, coloured8058]
  rw [child]
  dsimp only [result8056]
  have child := child1
  unfold live8057 coloured8057 at child
  try dsimp only [live8058, coloured8058]
  rw [child]
  dsimp only [result8057]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8059_agree_conditional : tree8059 = literal8059 := by
  rw [tree8059_def]
  rfl
theorem node8059_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8059 live8059 coloured8059 = result8059 := by
  rw [tree8059_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8060_agree_conditional
    (child0 : tree8058 = literal8058)
    (child1 : tree8059 = literal8059) : tree8060 = literal8060 := by
  rw [tree8060_def, child0, child1]
  rfl
theorem node8060_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8058 live8058 coloured8058 = result8058)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8059 live8059 coloured8059 = result8059) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8060 live8060 coloured8060 = result8060 := by
  rw [tree8060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8058 coloured8058 at child
  try dsimp only [live8060, coloured8060]
  rw [child]
  dsimp only [result8058]
  have child := child1
  unfold live8059 coloured8059 at child
  try dsimp only [live8060, coloured8060]
  rw [child]
  dsimp only [result8059]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8061_agree_conditional : tree8061 = literal8061 := by
  rw [tree8061_def]
  rfl
theorem node8061_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8061 live8061 coloured8061 = result8061 := by
  rw [tree8061_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8062_agree_conditional
    (child0 : tree8060 = literal8060)
    (child1 : tree8061 = literal8061) : tree8062 = literal8062 := by
  rw [tree8062_def, child0, child1]
  rfl
theorem node8062_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8060 live8060 coloured8060 = result8060)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8061 live8061 coloured8061 = result8061) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8062 live8062 coloured8062 = result8062 := by
  rw [tree8062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8060 coloured8060 at child
  try dsimp only [live8062, coloured8062]
  rw [child]
  dsimp only [result8060]
  have child := child1
  unfold live8061 coloured8061 at child
  try dsimp only [live8062, coloured8062]
  rw [child]
  dsimp only [result8061]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8063_agree_conditional : tree8063 = literal8063 := by
  rw [tree8063_def]
  rfl
theorem node8063_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8063 live8063 coloured8063 = result8063 := by
  rw [tree8063_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
