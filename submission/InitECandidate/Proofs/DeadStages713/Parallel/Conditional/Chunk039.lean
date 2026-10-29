import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk039
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node9984_cond_eq
    (child9982 : Flapjack.WordAlloc.removeDeadStructural input9982 value4996 value1 value2 = (output9982, value4997, value1))
    (child9983 : Flapjack.WordAlloc.removeDeadStructural input9983 value4997 value1 value2 = (output9983, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9984 value4996 value1 value2 = (output9984, value5, value1) := by
  rw [input9984_def, output9984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9982]
  dsimp only
  rw [child9983]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9982_skip, output9983_skip]
  kernel_rfl

theorem node9985_cond_eq
    (child9981 : Flapjack.WordAlloc.removeDeadStructural input9981 value4995 value1 value2 = (output9981, value4996, value1))
    (child9984 : Flapjack.WordAlloc.removeDeadStructural input9984 value4996 value1 value2 = (output9984, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9985 value4995 value1 value2 = (output9985, value5, value1) := by
  rw [input9985_def, output9985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9981]
  dsimp only
  rw [child9984]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9981_skip, output9984_skip]
  kernel_rfl

theorem node9986_cond_eq
    (child9980 : Flapjack.WordAlloc.removeDeadStructural input9980 value4994 value1 value2 = (output9980, value4995, value1))
    (child9985 : Flapjack.WordAlloc.removeDeadStructural input9985 value4995 value1 value2 = (output9985, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9986 value4994 value1 value2 = (output9986, value5, value1) := by
  rw [input9986_def, output9986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9980]
  dsimp only
  rw [child9985]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9980_skip, output9985_skip]
  kernel_rfl

theorem node9987_cond_eq
    (child9979 : Flapjack.WordAlloc.removeDeadStructural input9979 value4992 value1 value2 = (output9979, value4994, value1))
    (child9986 : Flapjack.WordAlloc.removeDeadStructural input9986 value4994 value1 value2 = (output9986, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9987 value4992 value1 value2 = (output9987, value5, value1) := by
  rw [input9987_def, output9987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9979]
  dsimp only
  rw [child9986]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9979_skip, output9986_skip]
  kernel_rfl

theorem node9988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9988 value5 value1 value2 = (output9988, value4998, value1) := by
  rw [input9988_def, output9988_def]
  kernel_rfl

theorem node9989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9989 value4998 value1 value2 = (output9989, value4999, value1) := by
  rw [input9989_def, output9989_def]
  kernel_rfl

theorem node9990_cond_eq
    (child9988 : Flapjack.WordAlloc.removeDeadStructural input9988 value5 value1 value2 = (output9988, value4998, value1))
    (child9989 : Flapjack.WordAlloc.removeDeadStructural input9989 value4998 value1 value2 = (output9989, value4999, value1)) : Flapjack.WordAlloc.removeDeadStructural input9990 value5 value1 value2 = (output9990, value4999, value1) := by
  rw [input9990_def, output9990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9988]
  dsimp only
  rw [child9989]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9988_skip, output9989_skip]
  kernel_rfl

theorem node9991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9991 value4999 value1 value2 = (output9991, value5000, value1) := by
  rw [input9991_def, output9991_def]
  kernel_rfl

theorem node9992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9992 value5000 value1 value2 = (output9992, value5000, value1) := by
  rw [input9992_def, output9992_def]
  kernel_rfl

theorem node9993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9993 value5000 value1 value2 = (output9993, value5001, value1) := by
  rw [input9993_def, output9993_def]
  kernel_rfl

theorem node9994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9994 value5001 value1 value2 = (output9994, value5002, value1) := by
  rw [input9994_def, output9994_def]
  kernel_rfl

theorem node9995_cond_eq
    (child9993 : Flapjack.WordAlloc.removeDeadStructural input9993 value5000 value1 value2 = (output9993, value5001, value1))
    (child9994 : Flapjack.WordAlloc.removeDeadStructural input9994 value5001 value1 value2 = (output9994, value5002, value1)) : Flapjack.WordAlloc.removeDeadStructural input9995 value5000 value1 value2 = (output9995, value5002, value1) := by
  rw [input9995_def, output9995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9993]
  dsimp only
  rw [child9994]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9993_skip, output9994_skip]
  kernel_rfl

theorem node9996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9996 value5002 value1 value2 = (output9996, value5003, value1) := by
  rw [input9996_def, output9996_def]
  kernel_rfl

theorem node9997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9997 value5003 value1 value2 = (output9997, value5004, value1) := by
  rw [input9997_def, output9997_def]
  kernel_rfl

theorem node9998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9998 value5004 value1 value2 = (output9998, value5005, value1) := by
  rw [input9998_def, output9998_def]
  kernel_rfl

theorem node9999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9999 value5005 value1 value2 = (output9999, value5, value1) := by
  rw [input9999_def, output9999_def]
  kernel_rfl

theorem node10000_cond_eq
    (child9998 : Flapjack.WordAlloc.removeDeadStructural input9998 value5004 value1 value2 = (output9998, value5005, value1))
    (child9999 : Flapjack.WordAlloc.removeDeadStructural input9999 value5005 value1 value2 = (output9999, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10000 value5004 value1 value2 = (output10000, value5, value1) := by
  rw [input10000_def, output10000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9998]
  dsimp only
  rw [child9999]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9998_skip, output9999_skip]
  kernel_rfl

theorem node10001_cond_eq
    (child9997 : Flapjack.WordAlloc.removeDeadStructural input9997 value5003 value1 value2 = (output9997, value5004, value1))
    (child10000 : Flapjack.WordAlloc.removeDeadStructural input10000 value5004 value1 value2 = (output10000, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10001 value5003 value1 value2 = (output10001, value5, value1) := by
  rw [input10001_def, output10001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9997]
  dsimp only
  rw [child10000]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9997_skip, output10000_skip]
  kernel_rfl

theorem node10002_cond_eq
    (child9996 : Flapjack.WordAlloc.removeDeadStructural input9996 value5002 value1 value2 = (output9996, value5003, value1))
    (child10001 : Flapjack.WordAlloc.removeDeadStructural input10001 value5003 value1 value2 = (output10001, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10002 value5002 value1 value2 = (output10002, value5, value1) := by
  rw [input10002_def, output10002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9996]
  dsimp only
  rw [child10001]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9996_skip, output10001_skip]
  kernel_rfl

theorem node10003_cond_eq
    (child9995 : Flapjack.WordAlloc.removeDeadStructural input9995 value5000 value1 value2 = (output9995, value5002, value1))
    (child10002 : Flapjack.WordAlloc.removeDeadStructural input10002 value5002 value1 value2 = (output10002, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10003 value5000 value1 value2 = (output10003, value5, value1) := by
  rw [input10003_def, output10003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9995]
  dsimp only
  rw [child10002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9995_skip, output10002_skip]
  kernel_rfl

theorem node10004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10004 value5 value1 value2 = (output10004, value5006, value1) := by
  rw [input10004_def, output10004_def]
  kernel_rfl

theorem node10005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10005 value5006 value1 value2 = (output10005, value5007, value1) := by
  rw [input10005_def, output10005_def]
  kernel_rfl

theorem node10006_cond_eq
    (child10004 : Flapjack.WordAlloc.removeDeadStructural input10004 value5 value1 value2 = (output10004, value5006, value1))
    (child10005 : Flapjack.WordAlloc.removeDeadStructural input10005 value5006 value1 value2 = (output10005, value5007, value1)) : Flapjack.WordAlloc.removeDeadStructural input10006 value5 value1 value2 = (output10006, value5007, value1) := by
  rw [input10006_def, output10006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10004]
  dsimp only
  rw [child10005]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10004_skip, output10005_skip]
  kernel_rfl

theorem node10007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10007 value5007 value1 value2 = (output10007, value5008, value1) := by
  rw [input10007_def, output10007_def]
  kernel_rfl

theorem node10008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10008 value5008 value1 value2 = (output10008, value5008, value1) := by
  rw [input10008_def, output10008_def]
  kernel_rfl

theorem node10009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10009 value5008 value1 value2 = (output10009, value5009, value1) := by
  rw [input10009_def, output10009_def]
  kernel_rfl

theorem node10010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10010 value5009 value1 value2 = (output10010, value5010, value1) := by
  rw [input10010_def, output10010_def]
  kernel_rfl

theorem node10011_cond_eq
    (child10009 : Flapjack.WordAlloc.removeDeadStructural input10009 value5008 value1 value2 = (output10009, value5009, value1))
    (child10010 : Flapjack.WordAlloc.removeDeadStructural input10010 value5009 value1 value2 = (output10010, value5010, value1)) : Flapjack.WordAlloc.removeDeadStructural input10011 value5008 value1 value2 = (output10011, value5010, value1) := by
  rw [input10011_def, output10011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10009]
  dsimp only
  rw [child10010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10009_skip, output10010_skip]
  kernel_rfl

theorem node10012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10012 value5010 value1 value2 = (output10012, value5011, value1) := by
  rw [input10012_def, output10012_def]
  kernel_rfl

theorem node10013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10013 value5011 value1 value2 = (output10013, value5012, value1) := by
  rw [input10013_def, output10013_def]
  kernel_rfl

theorem node10014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10014 value5012 value1 value2 = (output10014, value5013, value1) := by
  rw [input10014_def, output10014_def]
  kernel_rfl

theorem node10015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10015 value5013 value1 value2 = (output10015, value5, value1) := by
  rw [input10015_def, output10015_def]
  kernel_rfl

theorem node10016_cond_eq
    (child10014 : Flapjack.WordAlloc.removeDeadStructural input10014 value5012 value1 value2 = (output10014, value5013, value1))
    (child10015 : Flapjack.WordAlloc.removeDeadStructural input10015 value5013 value1 value2 = (output10015, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10016 value5012 value1 value2 = (output10016, value5, value1) := by
  rw [input10016_def, output10016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10014]
  dsimp only
  rw [child10015]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10014_skip, output10015_skip]
  kernel_rfl

theorem node10017_cond_eq
    (child10013 : Flapjack.WordAlloc.removeDeadStructural input10013 value5011 value1 value2 = (output10013, value5012, value1))
    (child10016 : Flapjack.WordAlloc.removeDeadStructural input10016 value5012 value1 value2 = (output10016, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10017 value5011 value1 value2 = (output10017, value5, value1) := by
  rw [input10017_def, output10017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10013]
  dsimp only
  rw [child10016]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10013_skip, output10016_skip]
  kernel_rfl

theorem node10018_cond_eq
    (child10012 : Flapjack.WordAlloc.removeDeadStructural input10012 value5010 value1 value2 = (output10012, value5011, value1))
    (child10017 : Flapjack.WordAlloc.removeDeadStructural input10017 value5011 value1 value2 = (output10017, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10018 value5010 value1 value2 = (output10018, value5, value1) := by
  rw [input10018_def, output10018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10012]
  dsimp only
  rw [child10017]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10012_skip, output10017_skip]
  kernel_rfl

theorem node10019_cond_eq
    (child10011 : Flapjack.WordAlloc.removeDeadStructural input10011 value5008 value1 value2 = (output10011, value5010, value1))
    (child10018 : Flapjack.WordAlloc.removeDeadStructural input10018 value5010 value1 value2 = (output10018, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10019 value5008 value1 value2 = (output10019, value5, value1) := by
  rw [input10019_def, output10019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10011]
  dsimp only
  rw [child10018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10011_skip, output10018_skip]
  kernel_rfl

theorem node10020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10020 value5 value1 value2 = (output10020, value5014, value1) := by
  rw [input10020_def, output10020_def]
  kernel_rfl

theorem node10021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10021 value5014 value1 value2 = (output10021, value5015, value1) := by
  rw [input10021_def, output10021_def]
  kernel_rfl

theorem node10022_cond_eq
    (child10020 : Flapjack.WordAlloc.removeDeadStructural input10020 value5 value1 value2 = (output10020, value5014, value1))
    (child10021 : Flapjack.WordAlloc.removeDeadStructural input10021 value5014 value1 value2 = (output10021, value5015, value1)) : Flapjack.WordAlloc.removeDeadStructural input10022 value5 value1 value2 = (output10022, value5015, value1) := by
  rw [input10022_def, output10022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10020]
  dsimp only
  rw [child10021]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10020_skip, output10021_skip]
  kernel_rfl

theorem node10023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10023 value5015 value1 value2 = (output10023, value5016, value1) := by
  rw [input10023_def, output10023_def]
  kernel_rfl

theorem node10024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10024 value5016 value1 value2 = (output10024, value5016, value1) := by
  rw [input10024_def, output10024_def]
  kernel_rfl

theorem node10025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10025 value5016 value1 value2 = (output10025, value5017, value1) := by
  rw [input10025_def, output10025_def]
  kernel_rfl

theorem node10026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10026 value5017 value1 value2 = (output10026, value5018, value1) := by
  rw [input10026_def, output10026_def]
  kernel_rfl

theorem node10027_cond_eq
    (child10025 : Flapjack.WordAlloc.removeDeadStructural input10025 value5016 value1 value2 = (output10025, value5017, value1))
    (child10026 : Flapjack.WordAlloc.removeDeadStructural input10026 value5017 value1 value2 = (output10026, value5018, value1)) : Flapjack.WordAlloc.removeDeadStructural input10027 value5016 value1 value2 = (output10027, value5018, value1) := by
  rw [input10027_def, output10027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10025]
  dsimp only
  rw [child10026]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10025_skip, output10026_skip]
  kernel_rfl

theorem node10028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10028 value5018 value1 value2 = (output10028, value5019, value1) := by
  rw [input10028_def, output10028_def]
  kernel_rfl

theorem node10029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10029 value5019 value1 value2 = (output10029, value5020, value1) := by
  rw [input10029_def, output10029_def]
  kernel_rfl

theorem node10030_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10030 value5020 value1 value2 = (output10030, value5021, value1) := by
  rw [input10030_def, output10030_def]
  kernel_rfl

theorem node10031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10031 value5021 value1 value2 = (output10031, value5, value1) := by
  rw [input10031_def, output10031_def]
  kernel_rfl

theorem node10032_cond_eq
    (child10030 : Flapjack.WordAlloc.removeDeadStructural input10030 value5020 value1 value2 = (output10030, value5021, value1))
    (child10031 : Flapjack.WordAlloc.removeDeadStructural input10031 value5021 value1 value2 = (output10031, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10032 value5020 value1 value2 = (output10032, value5, value1) := by
  rw [input10032_def, output10032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10030]
  dsimp only
  rw [child10031]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10030_skip, output10031_skip]
  kernel_rfl

theorem node10033_cond_eq
    (child10029 : Flapjack.WordAlloc.removeDeadStructural input10029 value5019 value1 value2 = (output10029, value5020, value1))
    (child10032 : Flapjack.WordAlloc.removeDeadStructural input10032 value5020 value1 value2 = (output10032, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10033 value5019 value1 value2 = (output10033, value5, value1) := by
  rw [input10033_def, output10033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10029]
  dsimp only
  rw [child10032]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10029_skip, output10032_skip]
  kernel_rfl

theorem node10034_cond_eq
    (child10028 : Flapjack.WordAlloc.removeDeadStructural input10028 value5018 value1 value2 = (output10028, value5019, value1))
    (child10033 : Flapjack.WordAlloc.removeDeadStructural input10033 value5019 value1 value2 = (output10033, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10034 value5018 value1 value2 = (output10034, value5, value1) := by
  rw [input10034_def, output10034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10028]
  dsimp only
  rw [child10033]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10028_skip, output10033_skip]
  kernel_rfl

theorem node10035_cond_eq
    (child10027 : Flapjack.WordAlloc.removeDeadStructural input10027 value5016 value1 value2 = (output10027, value5018, value1))
    (child10034 : Flapjack.WordAlloc.removeDeadStructural input10034 value5018 value1 value2 = (output10034, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10035 value5016 value1 value2 = (output10035, value5, value1) := by
  rw [input10035_def, output10035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10027]
  dsimp only
  rw [child10034]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10027_skip, output10034_skip]
  kernel_rfl

theorem node10036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10036 value5 value1 value2 = (output10036, value5022, value1) := by
  rw [input10036_def, output10036_def]
  kernel_rfl

theorem node10037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10037 value5022 value1 value2 = (output10037, value5023, value1) := by
  rw [input10037_def, output10037_def]
  kernel_rfl

theorem node10038_cond_eq
    (child10036 : Flapjack.WordAlloc.removeDeadStructural input10036 value5 value1 value2 = (output10036, value5022, value1))
    (child10037 : Flapjack.WordAlloc.removeDeadStructural input10037 value5022 value1 value2 = (output10037, value5023, value1)) : Flapjack.WordAlloc.removeDeadStructural input10038 value5 value1 value2 = (output10038, value5023, value1) := by
  rw [input10038_def, output10038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10036]
  dsimp only
  rw [child10037]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10036_skip, output10037_skip]
  kernel_rfl

theorem node10039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10039 value5023 value1 value2 = (output10039, value5024, value1) := by
  rw [input10039_def, output10039_def]
  kernel_rfl

theorem node10040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10040 value5024 value1 value2 = (output10040, value5024, value1) := by
  rw [input10040_def, output10040_def]
  kernel_rfl

theorem node10041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10041 value5024 value1 value2 = (output10041, value5025, value1) := by
  rw [input10041_def, output10041_def]
  kernel_rfl

theorem node10042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10042 value5025 value1 value2 = (output10042, value5026, value1) := by
  rw [input10042_def, output10042_def]
  kernel_rfl

theorem node10043_cond_eq
    (child10041 : Flapjack.WordAlloc.removeDeadStructural input10041 value5024 value1 value2 = (output10041, value5025, value1))
    (child10042 : Flapjack.WordAlloc.removeDeadStructural input10042 value5025 value1 value2 = (output10042, value5026, value1)) : Flapjack.WordAlloc.removeDeadStructural input10043 value5024 value1 value2 = (output10043, value5026, value1) := by
  rw [input10043_def, output10043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10041]
  dsimp only
  rw [child10042]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10041_skip, output10042_skip]
  kernel_rfl

theorem node10044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10044 value5026 value1 value2 = (output10044, value5027, value1) := by
  rw [input10044_def, output10044_def]
  kernel_rfl

theorem node10045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10045 value5027 value1 value2 = (output10045, value5028, value1) := by
  rw [input10045_def, output10045_def]
  kernel_rfl

theorem node10046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10046 value5028 value1 value2 = (output10046, value5029, value1) := by
  rw [input10046_def, output10046_def]
  kernel_rfl

theorem node10047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10047 value5029 value1 value2 = (output10047, value5, value1) := by
  rw [input10047_def, output10047_def]
  kernel_rfl

theorem node10048_cond_eq
    (child10046 : Flapjack.WordAlloc.removeDeadStructural input10046 value5028 value1 value2 = (output10046, value5029, value1))
    (child10047 : Flapjack.WordAlloc.removeDeadStructural input10047 value5029 value1 value2 = (output10047, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10048 value5028 value1 value2 = (output10048, value5, value1) := by
  rw [input10048_def, output10048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10046]
  dsimp only
  rw [child10047]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10046_skip, output10047_skip]
  kernel_rfl

theorem node10049_cond_eq
    (child10045 : Flapjack.WordAlloc.removeDeadStructural input10045 value5027 value1 value2 = (output10045, value5028, value1))
    (child10048 : Flapjack.WordAlloc.removeDeadStructural input10048 value5028 value1 value2 = (output10048, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10049 value5027 value1 value2 = (output10049, value5, value1) := by
  rw [input10049_def, output10049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10045]
  dsimp only
  rw [child10048]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10045_skip, output10048_skip]
  kernel_rfl

theorem node10050_cond_eq
    (child10044 : Flapjack.WordAlloc.removeDeadStructural input10044 value5026 value1 value2 = (output10044, value5027, value1))
    (child10049 : Flapjack.WordAlloc.removeDeadStructural input10049 value5027 value1 value2 = (output10049, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10050 value5026 value1 value2 = (output10050, value5, value1) := by
  rw [input10050_def, output10050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10044]
  dsimp only
  rw [child10049]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10044_skip, output10049_skip]
  kernel_rfl

theorem node10051_cond_eq
    (child10043 : Flapjack.WordAlloc.removeDeadStructural input10043 value5024 value1 value2 = (output10043, value5026, value1))
    (child10050 : Flapjack.WordAlloc.removeDeadStructural input10050 value5026 value1 value2 = (output10050, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10051 value5024 value1 value2 = (output10051, value5, value1) := by
  rw [input10051_def, output10051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10043]
  dsimp only
  rw [child10050]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10043_skip, output10050_skip]
  kernel_rfl

theorem node10052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10052 value5 value1 value2 = (output10052, value5030, value1) := by
  rw [input10052_def, output10052_def]
  kernel_rfl

theorem node10053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10053 value5030 value1 value2 = (output10053, value5031, value1) := by
  rw [input10053_def, output10053_def]
  kernel_rfl

theorem node10054_cond_eq
    (child10052 : Flapjack.WordAlloc.removeDeadStructural input10052 value5 value1 value2 = (output10052, value5030, value1))
    (child10053 : Flapjack.WordAlloc.removeDeadStructural input10053 value5030 value1 value2 = (output10053, value5031, value1)) : Flapjack.WordAlloc.removeDeadStructural input10054 value5 value1 value2 = (output10054, value5031, value1) := by
  rw [input10054_def, output10054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10052]
  dsimp only
  rw [child10053]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10052_skip, output10053_skip]
  kernel_rfl

theorem node10055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10055 value5031 value1 value2 = (output10055, value5032, value1) := by
  rw [input10055_def, output10055_def]
  kernel_rfl

theorem node10056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10056 value5032 value1 value2 = (output10056, value5032, value1) := by
  rw [input10056_def, output10056_def]
  kernel_rfl

theorem node10057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10057 value5032 value1 value2 = (output10057, value5033, value1) := by
  rw [input10057_def, output10057_def]
  kernel_rfl

theorem node10058_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10058 value5033 value1 value2 = (output10058, value5034, value1) := by
  rw [input10058_def, output10058_def]
  kernel_rfl

theorem node10059_cond_eq
    (child10057 : Flapjack.WordAlloc.removeDeadStructural input10057 value5032 value1 value2 = (output10057, value5033, value1))
    (child10058 : Flapjack.WordAlloc.removeDeadStructural input10058 value5033 value1 value2 = (output10058, value5034, value1)) : Flapjack.WordAlloc.removeDeadStructural input10059 value5032 value1 value2 = (output10059, value5034, value1) := by
  rw [input10059_def, output10059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10057]
  dsimp only
  rw [child10058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10057_skip, output10058_skip]
  kernel_rfl

theorem node10060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10060 value5034 value1 value2 = (output10060, value5035, value1) := by
  rw [input10060_def, output10060_def]
  kernel_rfl

theorem node10061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10061 value5035 value1 value2 = (output10061, value5036, value1) := by
  rw [input10061_def, output10061_def]
  kernel_rfl

theorem node10062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10062 value5036 value1 value2 = (output10062, value5037, value1) := by
  rw [input10062_def, output10062_def]
  kernel_rfl

theorem node10063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10063 value5037 value1 value2 = (output10063, value5, value1) := by
  rw [input10063_def, output10063_def]
  kernel_rfl

theorem node10064_cond_eq
    (child10062 : Flapjack.WordAlloc.removeDeadStructural input10062 value5036 value1 value2 = (output10062, value5037, value1))
    (child10063 : Flapjack.WordAlloc.removeDeadStructural input10063 value5037 value1 value2 = (output10063, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10064 value5036 value1 value2 = (output10064, value5, value1) := by
  rw [input10064_def, output10064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10062]
  dsimp only
  rw [child10063]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10062_skip, output10063_skip]
  kernel_rfl

theorem node10065_cond_eq
    (child10061 : Flapjack.WordAlloc.removeDeadStructural input10061 value5035 value1 value2 = (output10061, value5036, value1))
    (child10064 : Flapjack.WordAlloc.removeDeadStructural input10064 value5036 value1 value2 = (output10064, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10065 value5035 value1 value2 = (output10065, value5, value1) := by
  rw [input10065_def, output10065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10061]
  dsimp only
  rw [child10064]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10061_skip, output10064_skip]
  kernel_rfl

theorem node10066_cond_eq
    (child10060 : Flapjack.WordAlloc.removeDeadStructural input10060 value5034 value1 value2 = (output10060, value5035, value1))
    (child10065 : Flapjack.WordAlloc.removeDeadStructural input10065 value5035 value1 value2 = (output10065, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10066 value5034 value1 value2 = (output10066, value5, value1) := by
  rw [input10066_def, output10066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10060]
  dsimp only
  rw [child10065]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10060_skip, output10065_skip]
  kernel_rfl

theorem node10067_cond_eq
    (child10059 : Flapjack.WordAlloc.removeDeadStructural input10059 value5032 value1 value2 = (output10059, value5034, value1))
    (child10066 : Flapjack.WordAlloc.removeDeadStructural input10066 value5034 value1 value2 = (output10066, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10067 value5032 value1 value2 = (output10067, value5, value1) := by
  rw [input10067_def, output10067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10059]
  dsimp only
  rw [child10066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10059_skip, output10066_skip]
  kernel_rfl

theorem node10068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10068 value5 value1 value2 = (output10068, value5038, value1) := by
  rw [input10068_def, output10068_def]
  kernel_rfl

theorem node10069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10069 value5038 value1 value2 = (output10069, value5039, value1) := by
  rw [input10069_def, output10069_def]
  kernel_rfl

theorem node10070_cond_eq
    (child10068 : Flapjack.WordAlloc.removeDeadStructural input10068 value5 value1 value2 = (output10068, value5038, value1))
    (child10069 : Flapjack.WordAlloc.removeDeadStructural input10069 value5038 value1 value2 = (output10069, value5039, value1)) : Flapjack.WordAlloc.removeDeadStructural input10070 value5 value1 value2 = (output10070, value5039, value1) := by
  rw [input10070_def, output10070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10068]
  dsimp only
  rw [child10069]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10068_skip, output10069_skip]
  kernel_rfl

theorem node10071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10071 value5039 value1 value2 = (output10071, value5040, value1) := by
  rw [input10071_def, output10071_def]
  kernel_rfl

theorem node10072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10072 value5040 value1 value2 = (output10072, value5040, value1) := by
  rw [input10072_def, output10072_def]
  kernel_rfl

theorem node10073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10073 value5040 value1 value2 = (output10073, value5041, value1) := by
  rw [input10073_def, output10073_def]
  kernel_rfl

theorem node10074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10074 value5041 value1 value2 = (output10074, value5042, value1) := by
  rw [input10074_def, output10074_def]
  kernel_rfl

theorem node10075_cond_eq
    (child10073 : Flapjack.WordAlloc.removeDeadStructural input10073 value5040 value1 value2 = (output10073, value5041, value1))
    (child10074 : Flapjack.WordAlloc.removeDeadStructural input10074 value5041 value1 value2 = (output10074, value5042, value1)) : Flapjack.WordAlloc.removeDeadStructural input10075 value5040 value1 value2 = (output10075, value5042, value1) := by
  rw [input10075_def, output10075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10073]
  dsimp only
  rw [child10074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10073_skip, output10074_skip]
  kernel_rfl

theorem node10076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10076 value5042 value1 value2 = (output10076, value5043, value1) := by
  rw [input10076_def, output10076_def]
  kernel_rfl

theorem node10077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10077 value5043 value1 value2 = (output10077, value5044, value1) := by
  rw [input10077_def, output10077_def]
  kernel_rfl

theorem node10078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10078 value5044 value1 value2 = (output10078, value5045, value1) := by
  rw [input10078_def, output10078_def]
  kernel_rfl

theorem node10079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10079 value5045 value1 value2 = (output10079, value5, value1) := by
  rw [input10079_def, output10079_def]
  kernel_rfl

theorem node10080_cond_eq
    (child10078 : Flapjack.WordAlloc.removeDeadStructural input10078 value5044 value1 value2 = (output10078, value5045, value1))
    (child10079 : Flapjack.WordAlloc.removeDeadStructural input10079 value5045 value1 value2 = (output10079, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10080 value5044 value1 value2 = (output10080, value5, value1) := by
  rw [input10080_def, output10080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10078]
  dsimp only
  rw [child10079]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10078_skip, output10079_skip]
  kernel_rfl

theorem node10081_cond_eq
    (child10077 : Flapjack.WordAlloc.removeDeadStructural input10077 value5043 value1 value2 = (output10077, value5044, value1))
    (child10080 : Flapjack.WordAlloc.removeDeadStructural input10080 value5044 value1 value2 = (output10080, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10081 value5043 value1 value2 = (output10081, value5, value1) := by
  rw [input10081_def, output10081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10077]
  dsimp only
  rw [child10080]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10077_skip, output10080_skip]
  kernel_rfl

theorem node10082_cond_eq
    (child10076 : Flapjack.WordAlloc.removeDeadStructural input10076 value5042 value1 value2 = (output10076, value5043, value1))
    (child10081 : Flapjack.WordAlloc.removeDeadStructural input10081 value5043 value1 value2 = (output10081, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10082 value5042 value1 value2 = (output10082, value5, value1) := by
  rw [input10082_def, output10082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10076]
  dsimp only
  rw [child10081]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10076_skip, output10081_skip]
  kernel_rfl

theorem node10083_cond_eq
    (child10075 : Flapjack.WordAlloc.removeDeadStructural input10075 value5040 value1 value2 = (output10075, value5042, value1))
    (child10082 : Flapjack.WordAlloc.removeDeadStructural input10082 value5042 value1 value2 = (output10082, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10083 value5040 value1 value2 = (output10083, value5, value1) := by
  rw [input10083_def, output10083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10075]
  dsimp only
  rw [child10082]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10075_skip, output10082_skip]
  kernel_rfl

theorem node10084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10084 value5 value1 value2 = (output10084, value5046, value1) := by
  rw [input10084_def, output10084_def]
  kernel_rfl

theorem node10085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10085 value5046 value1 value2 = (output10085, value5047, value1) := by
  rw [input10085_def, output10085_def]
  kernel_rfl

theorem node10086_cond_eq
    (child10084 : Flapjack.WordAlloc.removeDeadStructural input10084 value5 value1 value2 = (output10084, value5046, value1))
    (child10085 : Flapjack.WordAlloc.removeDeadStructural input10085 value5046 value1 value2 = (output10085, value5047, value1)) : Flapjack.WordAlloc.removeDeadStructural input10086 value5 value1 value2 = (output10086, value5047, value1) := by
  rw [input10086_def, output10086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10084]
  dsimp only
  rw [child10085]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10084_skip, output10085_skip]
  kernel_rfl

theorem node10087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10087 value5047 value1 value2 = (output10087, value5048, value1) := by
  rw [input10087_def, output10087_def]
  kernel_rfl

theorem node10088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10088 value5048 value1 value2 = (output10088, value5048, value1) := by
  rw [input10088_def, output10088_def]
  kernel_rfl

theorem node10089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10089 value5048 value1 value2 = (output10089, value5049, value1) := by
  rw [input10089_def, output10089_def]
  kernel_rfl

theorem node10090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10090 value5049 value1 value2 = (output10090, value5050, value1) := by
  rw [input10090_def, output10090_def]
  kernel_rfl

theorem node10091_cond_eq
    (child10089 : Flapjack.WordAlloc.removeDeadStructural input10089 value5048 value1 value2 = (output10089, value5049, value1))
    (child10090 : Flapjack.WordAlloc.removeDeadStructural input10090 value5049 value1 value2 = (output10090, value5050, value1)) : Flapjack.WordAlloc.removeDeadStructural input10091 value5048 value1 value2 = (output10091, value5050, value1) := by
  rw [input10091_def, output10091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10089]
  dsimp only
  rw [child10090]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10089_skip, output10090_skip]
  kernel_rfl

theorem node10092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10092 value5050 value1 value2 = (output10092, value5051, value1) := by
  rw [input10092_def, output10092_def]
  kernel_rfl

theorem node10093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10093 value5051 value1 value2 = (output10093, value5052, value1) := by
  rw [input10093_def, output10093_def]
  kernel_rfl

theorem node10094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10094 value5052 value1 value2 = (output10094, value5053, value1) := by
  rw [input10094_def, output10094_def]
  kernel_rfl

theorem node10095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10095 value5053 value1 value2 = (output10095, value5, value1) := by
  rw [input10095_def, output10095_def]
  kernel_rfl

theorem node10096_cond_eq
    (child10094 : Flapjack.WordAlloc.removeDeadStructural input10094 value5052 value1 value2 = (output10094, value5053, value1))
    (child10095 : Flapjack.WordAlloc.removeDeadStructural input10095 value5053 value1 value2 = (output10095, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10096 value5052 value1 value2 = (output10096, value5, value1) := by
  rw [input10096_def, output10096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10094]
  dsimp only
  rw [child10095]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10094_skip, output10095_skip]
  kernel_rfl

theorem node10097_cond_eq
    (child10093 : Flapjack.WordAlloc.removeDeadStructural input10093 value5051 value1 value2 = (output10093, value5052, value1))
    (child10096 : Flapjack.WordAlloc.removeDeadStructural input10096 value5052 value1 value2 = (output10096, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10097 value5051 value1 value2 = (output10097, value5, value1) := by
  rw [input10097_def, output10097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10093]
  dsimp only
  rw [child10096]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10093_skip, output10096_skip]
  kernel_rfl

theorem node10098_cond_eq
    (child10092 : Flapjack.WordAlloc.removeDeadStructural input10092 value5050 value1 value2 = (output10092, value5051, value1))
    (child10097 : Flapjack.WordAlloc.removeDeadStructural input10097 value5051 value1 value2 = (output10097, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10098 value5050 value1 value2 = (output10098, value5, value1) := by
  rw [input10098_def, output10098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10092]
  dsimp only
  rw [child10097]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10092_skip, output10097_skip]
  kernel_rfl

theorem node10099_cond_eq
    (child10091 : Flapjack.WordAlloc.removeDeadStructural input10091 value5048 value1 value2 = (output10091, value5050, value1))
    (child10098 : Flapjack.WordAlloc.removeDeadStructural input10098 value5050 value1 value2 = (output10098, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10099 value5048 value1 value2 = (output10099, value5, value1) := by
  rw [input10099_def, output10099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10091]
  dsimp only
  rw [child10098]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10091_skip, output10098_skip]
  kernel_rfl

theorem node10100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10100 value5 value1 value2 = (output10100, value5054, value1) := by
  rw [input10100_def, output10100_def]
  kernel_rfl

theorem node10101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10101 value5054 value1 value2 = (output10101, value5055, value1) := by
  rw [input10101_def, output10101_def]
  kernel_rfl

theorem node10102_cond_eq
    (child10100 : Flapjack.WordAlloc.removeDeadStructural input10100 value5 value1 value2 = (output10100, value5054, value1))
    (child10101 : Flapjack.WordAlloc.removeDeadStructural input10101 value5054 value1 value2 = (output10101, value5055, value1)) : Flapjack.WordAlloc.removeDeadStructural input10102 value5 value1 value2 = (output10102, value5055, value1) := by
  rw [input10102_def, output10102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10100]
  dsimp only
  rw [child10101]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10100_skip, output10101_skip]
  kernel_rfl

theorem node10103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10103 value5055 value1 value2 = (output10103, value5056, value1) := by
  rw [input10103_def, output10103_def]
  kernel_rfl

theorem node10104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10104 value5056 value1 value2 = (output10104, value5056, value1) := by
  rw [input10104_def, output10104_def]
  kernel_rfl

theorem node10105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10105 value5056 value1 value2 = (output10105, value5057, value1) := by
  rw [input10105_def, output10105_def]
  kernel_rfl

theorem node10106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10106 value5057 value1 value2 = (output10106, value5058, value1) := by
  rw [input10106_def, output10106_def]
  kernel_rfl

theorem node10107_cond_eq
    (child10105 : Flapjack.WordAlloc.removeDeadStructural input10105 value5056 value1 value2 = (output10105, value5057, value1))
    (child10106 : Flapjack.WordAlloc.removeDeadStructural input10106 value5057 value1 value2 = (output10106, value5058, value1)) : Flapjack.WordAlloc.removeDeadStructural input10107 value5056 value1 value2 = (output10107, value5058, value1) := by
  rw [input10107_def, output10107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10105]
  dsimp only
  rw [child10106]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10105_skip, output10106_skip]
  kernel_rfl

theorem node10108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10108 value5058 value1 value2 = (output10108, value5059, value1) := by
  rw [input10108_def, output10108_def]
  kernel_rfl

theorem node10109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10109 value5059 value1 value2 = (output10109, value5060, value1) := by
  rw [input10109_def, output10109_def]
  kernel_rfl

theorem node10110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10110 value5060 value1 value2 = (output10110, value5061, value1) := by
  rw [input10110_def, output10110_def]
  kernel_rfl

theorem node10111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10111 value5061 value1 value2 = (output10111, value5, value1) := by
  rw [input10111_def, output10111_def]
  kernel_rfl

theorem node10112_cond_eq
    (child10110 : Flapjack.WordAlloc.removeDeadStructural input10110 value5060 value1 value2 = (output10110, value5061, value1))
    (child10111 : Flapjack.WordAlloc.removeDeadStructural input10111 value5061 value1 value2 = (output10111, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10112 value5060 value1 value2 = (output10112, value5, value1) := by
  rw [input10112_def, output10112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10110]
  dsimp only
  rw [child10111]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10110_skip, output10111_skip]
  kernel_rfl

theorem node10113_cond_eq
    (child10109 : Flapjack.WordAlloc.removeDeadStructural input10109 value5059 value1 value2 = (output10109, value5060, value1))
    (child10112 : Flapjack.WordAlloc.removeDeadStructural input10112 value5060 value1 value2 = (output10112, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10113 value5059 value1 value2 = (output10113, value5, value1) := by
  rw [input10113_def, output10113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10109]
  dsimp only
  rw [child10112]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10109_skip, output10112_skip]
  kernel_rfl

theorem node10114_cond_eq
    (child10108 : Flapjack.WordAlloc.removeDeadStructural input10108 value5058 value1 value2 = (output10108, value5059, value1))
    (child10113 : Flapjack.WordAlloc.removeDeadStructural input10113 value5059 value1 value2 = (output10113, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10114 value5058 value1 value2 = (output10114, value5, value1) := by
  rw [input10114_def, output10114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10108]
  dsimp only
  rw [child10113]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10108_skip, output10113_skip]
  kernel_rfl

theorem node10115_cond_eq
    (child10107 : Flapjack.WordAlloc.removeDeadStructural input10107 value5056 value1 value2 = (output10107, value5058, value1))
    (child10114 : Flapjack.WordAlloc.removeDeadStructural input10114 value5058 value1 value2 = (output10114, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10115 value5056 value1 value2 = (output10115, value5, value1) := by
  rw [input10115_def, output10115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10107]
  dsimp only
  rw [child10114]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10107_skip, output10114_skip]
  kernel_rfl

theorem node10116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10116 value5 value1 value2 = (output10116, value5062, value1) := by
  rw [input10116_def, output10116_def]
  kernel_rfl

theorem node10117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10117 value5062 value1 value2 = (output10117, value5063, value1) := by
  rw [input10117_def, output10117_def]
  kernel_rfl

theorem node10118_cond_eq
    (child10116 : Flapjack.WordAlloc.removeDeadStructural input10116 value5 value1 value2 = (output10116, value5062, value1))
    (child10117 : Flapjack.WordAlloc.removeDeadStructural input10117 value5062 value1 value2 = (output10117, value5063, value1)) : Flapjack.WordAlloc.removeDeadStructural input10118 value5 value1 value2 = (output10118, value5063, value1) := by
  rw [input10118_def, output10118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10116]
  dsimp only
  rw [child10117]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10116_skip, output10117_skip]
  kernel_rfl

theorem node10119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10119 value5063 value1 value2 = (output10119, value5064, value1) := by
  rw [input10119_def, output10119_def]
  kernel_rfl

theorem node10120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10120 value5064 value1 value2 = (output10120, value5064, value1) := by
  rw [input10120_def, output10120_def]
  kernel_rfl

theorem node10121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10121 value5064 value1 value2 = (output10121, value5065, value1) := by
  rw [input10121_def, output10121_def]
  kernel_rfl

theorem node10122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10122 value5065 value1 value2 = (output10122, value5066, value1) := by
  rw [input10122_def, output10122_def]
  kernel_rfl

theorem node10123_cond_eq
    (child10121 : Flapjack.WordAlloc.removeDeadStructural input10121 value5064 value1 value2 = (output10121, value5065, value1))
    (child10122 : Flapjack.WordAlloc.removeDeadStructural input10122 value5065 value1 value2 = (output10122, value5066, value1)) : Flapjack.WordAlloc.removeDeadStructural input10123 value5064 value1 value2 = (output10123, value5066, value1) := by
  rw [input10123_def, output10123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10121]
  dsimp only
  rw [child10122]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10121_skip, output10122_skip]
  kernel_rfl

theorem node10124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10124 value5066 value1 value2 = (output10124, value5067, value1) := by
  rw [input10124_def, output10124_def]
  kernel_rfl

theorem node10125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10125 value5067 value1 value2 = (output10125, value5068, value1) := by
  rw [input10125_def, output10125_def]
  kernel_rfl

theorem node10126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10126 value5068 value1 value2 = (output10126, value5069, value1) := by
  rw [input10126_def, output10126_def]
  kernel_rfl

theorem node10127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10127 value5069 value1 value2 = (output10127, value5, value1) := by
  rw [input10127_def, output10127_def]
  kernel_rfl

theorem node10128_cond_eq
    (child10126 : Flapjack.WordAlloc.removeDeadStructural input10126 value5068 value1 value2 = (output10126, value5069, value1))
    (child10127 : Flapjack.WordAlloc.removeDeadStructural input10127 value5069 value1 value2 = (output10127, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10128 value5068 value1 value2 = (output10128, value5, value1) := by
  rw [input10128_def, output10128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10126]
  dsimp only
  rw [child10127]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10126_skip, output10127_skip]
  kernel_rfl

theorem node10129_cond_eq
    (child10125 : Flapjack.WordAlloc.removeDeadStructural input10125 value5067 value1 value2 = (output10125, value5068, value1))
    (child10128 : Flapjack.WordAlloc.removeDeadStructural input10128 value5068 value1 value2 = (output10128, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10129 value5067 value1 value2 = (output10129, value5, value1) := by
  rw [input10129_def, output10129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10125]
  dsimp only
  rw [child10128]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10125_skip, output10128_skip]
  kernel_rfl

theorem node10130_cond_eq
    (child10124 : Flapjack.WordAlloc.removeDeadStructural input10124 value5066 value1 value2 = (output10124, value5067, value1))
    (child10129 : Flapjack.WordAlloc.removeDeadStructural input10129 value5067 value1 value2 = (output10129, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10130 value5066 value1 value2 = (output10130, value5, value1) := by
  rw [input10130_def, output10130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10124]
  dsimp only
  rw [child10129]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10124_skip, output10129_skip]
  kernel_rfl

theorem node10131_cond_eq
    (child10123 : Flapjack.WordAlloc.removeDeadStructural input10123 value5064 value1 value2 = (output10123, value5066, value1))
    (child10130 : Flapjack.WordAlloc.removeDeadStructural input10130 value5066 value1 value2 = (output10130, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10131 value5064 value1 value2 = (output10131, value5, value1) := by
  rw [input10131_def, output10131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10123]
  dsimp only
  rw [child10130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10123_skip, output10130_skip]
  kernel_rfl

theorem node10132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10132 value5 value1 value2 = (output10132, value5070, value1) := by
  rw [input10132_def, output10132_def]
  kernel_rfl

theorem node10133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10133 value5070 value1 value2 = (output10133, value5071, value1) := by
  rw [input10133_def, output10133_def]
  kernel_rfl

theorem node10134_cond_eq
    (child10132 : Flapjack.WordAlloc.removeDeadStructural input10132 value5 value1 value2 = (output10132, value5070, value1))
    (child10133 : Flapjack.WordAlloc.removeDeadStructural input10133 value5070 value1 value2 = (output10133, value5071, value1)) : Flapjack.WordAlloc.removeDeadStructural input10134 value5 value1 value2 = (output10134, value5071, value1) := by
  rw [input10134_def, output10134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10132]
  dsimp only
  rw [child10133]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10132_skip, output10133_skip]
  kernel_rfl

theorem node10135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10135 value5071 value1 value2 = (output10135, value5072, value1) := by
  rw [input10135_def, output10135_def]
  kernel_rfl

theorem node10136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10136 value5072 value1 value2 = (output10136, value5072, value1) := by
  rw [input10136_def, output10136_def]
  kernel_rfl

theorem node10137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10137 value5072 value1 value2 = (output10137, value5073, value1) := by
  rw [input10137_def, output10137_def]
  kernel_rfl

theorem node10138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10138 value5073 value1 value2 = (output10138, value5074, value1) := by
  rw [input10138_def, output10138_def]
  kernel_rfl

theorem node10139_cond_eq
    (child10137 : Flapjack.WordAlloc.removeDeadStructural input10137 value5072 value1 value2 = (output10137, value5073, value1))
    (child10138 : Flapjack.WordAlloc.removeDeadStructural input10138 value5073 value1 value2 = (output10138, value5074, value1)) : Flapjack.WordAlloc.removeDeadStructural input10139 value5072 value1 value2 = (output10139, value5074, value1) := by
  rw [input10139_def, output10139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10137]
  dsimp only
  rw [child10138]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10137_skip, output10138_skip]
  kernel_rfl

theorem node10140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10140 value5074 value1 value2 = (output10140, value5075, value1) := by
  rw [input10140_def, output10140_def]
  kernel_rfl

theorem node10141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10141 value5075 value1 value2 = (output10141, value5076, value1) := by
  rw [input10141_def, output10141_def]
  kernel_rfl

theorem node10142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10142 value5076 value1 value2 = (output10142, value5077, value1) := by
  rw [input10142_def, output10142_def]
  kernel_rfl

theorem node10143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10143 value5077 value1 value2 = (output10143, value5, value1) := by
  rw [input10143_def, output10143_def]
  kernel_rfl

theorem node10144_cond_eq
    (child10142 : Flapjack.WordAlloc.removeDeadStructural input10142 value5076 value1 value2 = (output10142, value5077, value1))
    (child10143 : Flapjack.WordAlloc.removeDeadStructural input10143 value5077 value1 value2 = (output10143, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10144 value5076 value1 value2 = (output10144, value5, value1) := by
  rw [input10144_def, output10144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10142]
  dsimp only
  rw [child10143]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10142_skip, output10143_skip]
  kernel_rfl

theorem node10145_cond_eq
    (child10141 : Flapjack.WordAlloc.removeDeadStructural input10141 value5075 value1 value2 = (output10141, value5076, value1))
    (child10144 : Flapjack.WordAlloc.removeDeadStructural input10144 value5076 value1 value2 = (output10144, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10145 value5075 value1 value2 = (output10145, value5, value1) := by
  rw [input10145_def, output10145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10141]
  dsimp only
  rw [child10144]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10141_skip, output10144_skip]
  kernel_rfl

theorem node10146_cond_eq
    (child10140 : Flapjack.WordAlloc.removeDeadStructural input10140 value5074 value1 value2 = (output10140, value5075, value1))
    (child10145 : Flapjack.WordAlloc.removeDeadStructural input10145 value5075 value1 value2 = (output10145, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10146 value5074 value1 value2 = (output10146, value5, value1) := by
  rw [input10146_def, output10146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10140]
  dsimp only
  rw [child10145]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10140_skip, output10145_skip]
  kernel_rfl

theorem node10147_cond_eq
    (child10139 : Flapjack.WordAlloc.removeDeadStructural input10139 value5072 value1 value2 = (output10139, value5074, value1))
    (child10146 : Flapjack.WordAlloc.removeDeadStructural input10146 value5074 value1 value2 = (output10146, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10147 value5072 value1 value2 = (output10147, value5, value1) := by
  rw [input10147_def, output10147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10139]
  dsimp only
  rw [child10146]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10139_skip, output10146_skip]
  kernel_rfl

theorem node10148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10148 value5 value1 value2 = (output10148, value5078, value1) := by
  rw [input10148_def, output10148_def]
  kernel_rfl

theorem node10149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10149 value5078 value1 value2 = (output10149, value5079, value1) := by
  rw [input10149_def, output10149_def]
  kernel_rfl

theorem node10150_cond_eq
    (child10148 : Flapjack.WordAlloc.removeDeadStructural input10148 value5 value1 value2 = (output10148, value5078, value1))
    (child10149 : Flapjack.WordAlloc.removeDeadStructural input10149 value5078 value1 value2 = (output10149, value5079, value1)) : Flapjack.WordAlloc.removeDeadStructural input10150 value5 value1 value2 = (output10150, value5079, value1) := by
  rw [input10150_def, output10150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10148]
  dsimp only
  rw [child10149]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10148_skip, output10149_skip]
  kernel_rfl

theorem node10151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10151 value5079 value1 value2 = (output10151, value5080, value1) := by
  rw [input10151_def, output10151_def]
  kernel_rfl

theorem node10152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10152 value5080 value1 value2 = (output10152, value5080, value1) := by
  rw [input10152_def, output10152_def]
  kernel_rfl

theorem node10153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10153 value5080 value1 value2 = (output10153, value5081, value1) := by
  rw [input10153_def, output10153_def]
  kernel_rfl

theorem node10154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10154 value5081 value1 value2 = (output10154, value5082, value1) := by
  rw [input10154_def, output10154_def]
  kernel_rfl

theorem node10155_cond_eq
    (child10153 : Flapjack.WordAlloc.removeDeadStructural input10153 value5080 value1 value2 = (output10153, value5081, value1))
    (child10154 : Flapjack.WordAlloc.removeDeadStructural input10154 value5081 value1 value2 = (output10154, value5082, value1)) : Flapjack.WordAlloc.removeDeadStructural input10155 value5080 value1 value2 = (output10155, value5082, value1) := by
  rw [input10155_def, output10155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10153]
  dsimp only
  rw [child10154]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10153_skip, output10154_skip]
  kernel_rfl

theorem node10156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10156 value5082 value1 value2 = (output10156, value5083, value1) := by
  rw [input10156_def, output10156_def]
  kernel_rfl

theorem node10157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10157 value5083 value1 value2 = (output10157, value5084, value1) := by
  rw [input10157_def, output10157_def]
  kernel_rfl

theorem node10158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10158 value5084 value1 value2 = (output10158, value5085, value1) := by
  rw [input10158_def, output10158_def]
  kernel_rfl

theorem node10159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10159 value5085 value1 value2 = (output10159, value5, value1) := by
  rw [input10159_def, output10159_def]
  kernel_rfl

theorem node10160_cond_eq
    (child10158 : Flapjack.WordAlloc.removeDeadStructural input10158 value5084 value1 value2 = (output10158, value5085, value1))
    (child10159 : Flapjack.WordAlloc.removeDeadStructural input10159 value5085 value1 value2 = (output10159, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10160 value5084 value1 value2 = (output10160, value5, value1) := by
  rw [input10160_def, output10160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10158]
  dsimp only
  rw [child10159]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10158_skip, output10159_skip]
  kernel_rfl

theorem node10161_cond_eq
    (child10157 : Flapjack.WordAlloc.removeDeadStructural input10157 value5083 value1 value2 = (output10157, value5084, value1))
    (child10160 : Flapjack.WordAlloc.removeDeadStructural input10160 value5084 value1 value2 = (output10160, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10161 value5083 value1 value2 = (output10161, value5, value1) := by
  rw [input10161_def, output10161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10157]
  dsimp only
  rw [child10160]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10157_skip, output10160_skip]
  kernel_rfl

theorem node10162_cond_eq
    (child10156 : Flapjack.WordAlloc.removeDeadStructural input10156 value5082 value1 value2 = (output10156, value5083, value1))
    (child10161 : Flapjack.WordAlloc.removeDeadStructural input10161 value5083 value1 value2 = (output10161, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10162 value5082 value1 value2 = (output10162, value5, value1) := by
  rw [input10162_def, output10162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10156]
  dsimp only
  rw [child10161]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10156_skip, output10161_skip]
  kernel_rfl

theorem node10163_cond_eq
    (child10155 : Flapjack.WordAlloc.removeDeadStructural input10155 value5080 value1 value2 = (output10155, value5082, value1))
    (child10162 : Flapjack.WordAlloc.removeDeadStructural input10162 value5082 value1 value2 = (output10162, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10163 value5080 value1 value2 = (output10163, value5, value1) := by
  rw [input10163_def, output10163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10155]
  dsimp only
  rw [child10162]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10155_skip, output10162_skip]
  kernel_rfl

theorem node10164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10164 value5 value1 value2 = (output10164, value5086, value1) := by
  rw [input10164_def, output10164_def]
  kernel_rfl

theorem node10165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10165 value5086 value1 value2 = (output10165, value5087, value1) := by
  rw [input10165_def, output10165_def]
  kernel_rfl

theorem node10166_cond_eq
    (child10164 : Flapjack.WordAlloc.removeDeadStructural input10164 value5 value1 value2 = (output10164, value5086, value1))
    (child10165 : Flapjack.WordAlloc.removeDeadStructural input10165 value5086 value1 value2 = (output10165, value5087, value1)) : Flapjack.WordAlloc.removeDeadStructural input10166 value5 value1 value2 = (output10166, value5087, value1) := by
  rw [input10166_def, output10166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10164]
  dsimp only
  rw [child10165]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10164_skip, output10165_skip]
  kernel_rfl

theorem node10167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10167 value5087 value1 value2 = (output10167, value5088, value1) := by
  rw [input10167_def, output10167_def]
  kernel_rfl

theorem node10168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10168 value5088 value1 value2 = (output10168, value5088, value1) := by
  rw [input10168_def, output10168_def]
  kernel_rfl

theorem node10169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10169 value5088 value1 value2 = (output10169, value5089, value1) := by
  rw [input10169_def, output10169_def]
  kernel_rfl

theorem node10170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10170 value5089 value1 value2 = (output10170, value5090, value1) := by
  rw [input10170_def, output10170_def]
  kernel_rfl

theorem node10171_cond_eq
    (child10169 : Flapjack.WordAlloc.removeDeadStructural input10169 value5088 value1 value2 = (output10169, value5089, value1))
    (child10170 : Flapjack.WordAlloc.removeDeadStructural input10170 value5089 value1 value2 = (output10170, value5090, value1)) : Flapjack.WordAlloc.removeDeadStructural input10171 value5088 value1 value2 = (output10171, value5090, value1) := by
  rw [input10171_def, output10171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10169]
  dsimp only
  rw [child10170]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10169_skip, output10170_skip]
  kernel_rfl

theorem node10172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10172 value5090 value1 value2 = (output10172, value5091, value1) := by
  rw [input10172_def, output10172_def]
  kernel_rfl

theorem node10173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10173 value5091 value1 value2 = (output10173, value5092, value1) := by
  rw [input10173_def, output10173_def]
  kernel_rfl

theorem node10174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10174 value5092 value1 value2 = (output10174, value5093, value1) := by
  rw [input10174_def, output10174_def]
  kernel_rfl

theorem node10175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10175 value5093 value1 value2 = (output10175, value5, value1) := by
  rw [input10175_def, output10175_def]
  kernel_rfl

theorem node10176_cond_eq
    (child10174 : Flapjack.WordAlloc.removeDeadStructural input10174 value5092 value1 value2 = (output10174, value5093, value1))
    (child10175 : Flapjack.WordAlloc.removeDeadStructural input10175 value5093 value1 value2 = (output10175, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10176 value5092 value1 value2 = (output10176, value5, value1) := by
  rw [input10176_def, output10176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10174]
  dsimp only
  rw [child10175]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10174_skip, output10175_skip]
  kernel_rfl

theorem node10177_cond_eq
    (child10173 : Flapjack.WordAlloc.removeDeadStructural input10173 value5091 value1 value2 = (output10173, value5092, value1))
    (child10176 : Flapjack.WordAlloc.removeDeadStructural input10176 value5092 value1 value2 = (output10176, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10177 value5091 value1 value2 = (output10177, value5, value1) := by
  rw [input10177_def, output10177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10173]
  dsimp only
  rw [child10176]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10173_skip, output10176_skip]
  kernel_rfl

theorem node10178_cond_eq
    (child10172 : Flapjack.WordAlloc.removeDeadStructural input10172 value5090 value1 value2 = (output10172, value5091, value1))
    (child10177 : Flapjack.WordAlloc.removeDeadStructural input10177 value5091 value1 value2 = (output10177, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10178 value5090 value1 value2 = (output10178, value5, value1) := by
  rw [input10178_def, output10178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10172]
  dsimp only
  rw [child10177]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10172_skip, output10177_skip]
  kernel_rfl

theorem node10179_cond_eq
    (child10171 : Flapjack.WordAlloc.removeDeadStructural input10171 value5088 value1 value2 = (output10171, value5090, value1))
    (child10178 : Flapjack.WordAlloc.removeDeadStructural input10178 value5090 value1 value2 = (output10178, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10179 value5088 value1 value2 = (output10179, value5, value1) := by
  rw [input10179_def, output10179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10171]
  dsimp only
  rw [child10178]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10171_skip, output10178_skip]
  kernel_rfl

theorem node10180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10180 value5 value1 value2 = (output10180, value5094, value1) := by
  rw [input10180_def, output10180_def]
  kernel_rfl

theorem node10181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10181 value5094 value1 value2 = (output10181, value5095, value1) := by
  rw [input10181_def, output10181_def]
  kernel_rfl

theorem node10182_cond_eq
    (child10180 : Flapjack.WordAlloc.removeDeadStructural input10180 value5 value1 value2 = (output10180, value5094, value1))
    (child10181 : Flapjack.WordAlloc.removeDeadStructural input10181 value5094 value1 value2 = (output10181, value5095, value1)) : Flapjack.WordAlloc.removeDeadStructural input10182 value5 value1 value2 = (output10182, value5095, value1) := by
  rw [input10182_def, output10182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10180]
  dsimp only
  rw [child10181]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10180_skip, output10181_skip]
  kernel_rfl

theorem node10183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10183 value5095 value1 value2 = (output10183, value5096, value1) := by
  rw [input10183_def, output10183_def]
  kernel_rfl

theorem node10184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10184 value5096 value1 value2 = (output10184, value5096, value1) := by
  rw [input10184_def, output10184_def]
  kernel_rfl

theorem node10185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10185 value5096 value1 value2 = (output10185, value5097, value1) := by
  rw [input10185_def, output10185_def]
  kernel_rfl

theorem node10186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10186 value5097 value1 value2 = (output10186, value5098, value1) := by
  rw [input10186_def, output10186_def]
  kernel_rfl

theorem node10187_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10187 value5098 value1 value2 = (output10187, value5099, value1) := by
  rw [input10187_def, output10187_def]
  kernel_rfl

theorem node10188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10188 value5099 value1 value2 = (output10188, value5100, value1) := by
  rw [input10188_def, output10188_def]
  kernel_rfl

theorem node10189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10189 value5100 value1 value2 = (output10189, value5, value1) := by
  rw [input10189_def, output10189_def]
  kernel_rfl

theorem node10190_cond_eq
    (child10188 : Flapjack.WordAlloc.removeDeadStructural input10188 value5099 value1 value2 = (output10188, value5100, value1))
    (child10189 : Flapjack.WordAlloc.removeDeadStructural input10189 value5100 value1 value2 = (output10189, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10190 value5099 value1 value2 = (output10190, value5, value1) := by
  rw [input10190_def, output10190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10188]
  dsimp only
  rw [child10189]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10188_skip, output10189_skip]
  kernel_rfl

theorem node10191_cond_eq
    (child10187 : Flapjack.WordAlloc.removeDeadStructural input10187 value5098 value1 value2 = (output10187, value5099, value1))
    (child10190 : Flapjack.WordAlloc.removeDeadStructural input10190 value5099 value1 value2 = (output10190, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10191 value5098 value1 value2 = (output10191, value5, value1) := by
  rw [input10191_def, output10191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10187]
  dsimp only
  rw [child10190]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10187_skip, output10190_skip]
  kernel_rfl

theorem node10192_cond_eq
    (child10186 : Flapjack.WordAlloc.removeDeadStructural input10186 value5097 value1 value2 = (output10186, value5098, value1))
    (child10191 : Flapjack.WordAlloc.removeDeadStructural input10191 value5098 value1 value2 = (output10191, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10192 value5097 value1 value2 = (output10192, value5, value1) := by
  rw [input10192_def, output10192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10186]
  dsimp only
  rw [child10191]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10186_skip, output10191_skip]
  kernel_rfl

theorem node10193_cond_eq
    (child10185 : Flapjack.WordAlloc.removeDeadStructural input10185 value5096 value1 value2 = (output10185, value5097, value1))
    (child10192 : Flapjack.WordAlloc.removeDeadStructural input10192 value5097 value1 value2 = (output10192, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10193 value5096 value1 value2 = (output10193, value5, value1) := by
  rw [input10193_def, output10193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10185]
  dsimp only
  rw [child10192]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10185_skip, output10192_skip]
  kernel_rfl

theorem node10194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10194 value5 value1 value2 = (output10194, value5101, value1) := by
  rw [input10194_def, output10194_def]
  kernel_rfl

theorem node10195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10195 value5101 value1 value2 = (output10195, value5102, value1) := by
  rw [input10195_def, output10195_def]
  kernel_rfl

theorem node10196_cond_eq
    (child10194 : Flapjack.WordAlloc.removeDeadStructural input10194 value5 value1 value2 = (output10194, value5101, value1))
    (child10195 : Flapjack.WordAlloc.removeDeadStructural input10195 value5101 value1 value2 = (output10195, value5102, value1)) : Flapjack.WordAlloc.removeDeadStructural input10196 value5 value1 value2 = (output10196, value5102, value1) := by
  rw [input10196_def, output10196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10194]
  dsimp only
  rw [child10195]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10194_skip, output10195_skip]
  kernel_rfl

theorem node10197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10197 value5102 value1 value2 = (output10197, value5103, value1) := by
  rw [input10197_def, output10197_def]
  kernel_rfl

theorem node10198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10198 value5103 value1 value2 = (output10198, value5103, value1) := by
  rw [input10198_def, output10198_def]
  kernel_rfl

theorem node10199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10199 value5103 value1 value2 = (output10199, value5104, value1) := by
  rw [input10199_def, output10199_def]
  kernel_rfl

theorem node10200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10200 value5104 value1 value2 = (output10200, value5105, value1) := by
  rw [input10200_def, output10200_def]
  kernel_rfl

theorem node10201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10201 value5105 value1 value2 = (output10201, value5106, value1) := by
  rw [input10201_def, output10201_def]
  kernel_rfl

theorem node10202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10202 value5106 value1 value2 = (output10202, value5107, value1) := by
  rw [input10202_def, output10202_def]
  kernel_rfl

theorem node10203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10203 value5107 value1 value2 = (output10203, value5, value1) := by
  rw [input10203_def, output10203_def]
  kernel_rfl

theorem node10204_cond_eq
    (child10202 : Flapjack.WordAlloc.removeDeadStructural input10202 value5106 value1 value2 = (output10202, value5107, value1))
    (child10203 : Flapjack.WordAlloc.removeDeadStructural input10203 value5107 value1 value2 = (output10203, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10204 value5106 value1 value2 = (output10204, value5, value1) := by
  rw [input10204_def, output10204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10202]
  dsimp only
  rw [child10203]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10202_skip, output10203_skip]
  kernel_rfl

theorem node10205_cond_eq
    (child10201 : Flapjack.WordAlloc.removeDeadStructural input10201 value5105 value1 value2 = (output10201, value5106, value1))
    (child10204 : Flapjack.WordAlloc.removeDeadStructural input10204 value5106 value1 value2 = (output10204, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10205 value5105 value1 value2 = (output10205, value5, value1) := by
  rw [input10205_def, output10205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10201]
  dsimp only
  rw [child10204]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10201_skip, output10204_skip]
  kernel_rfl

theorem node10206_cond_eq
    (child10200 : Flapjack.WordAlloc.removeDeadStructural input10200 value5104 value1 value2 = (output10200, value5105, value1))
    (child10205 : Flapjack.WordAlloc.removeDeadStructural input10205 value5105 value1 value2 = (output10205, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10206 value5104 value1 value2 = (output10206, value5, value1) := by
  rw [input10206_def, output10206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10200]
  dsimp only
  rw [child10205]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10200_skip, output10205_skip]
  kernel_rfl

theorem node10207_cond_eq
    (child10199 : Flapjack.WordAlloc.removeDeadStructural input10199 value5103 value1 value2 = (output10199, value5104, value1))
    (child10206 : Flapjack.WordAlloc.removeDeadStructural input10206 value5104 value1 value2 = (output10206, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10207 value5103 value1 value2 = (output10207, value5, value1) := by
  rw [input10207_def, output10207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10199]
  dsimp only
  rw [child10206]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10199_skip, output10206_skip]
  kernel_rfl

theorem node10208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10208 value5 value1 value2 = (output10208, value5108, value1) := by
  rw [input10208_def, output10208_def]
  kernel_rfl

theorem node10209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10209 value5108 value1 value2 = (output10209, value5109, value1) := by
  rw [input10209_def, output10209_def]
  kernel_rfl

theorem node10210_cond_eq
    (child10208 : Flapjack.WordAlloc.removeDeadStructural input10208 value5 value1 value2 = (output10208, value5108, value1))
    (child10209 : Flapjack.WordAlloc.removeDeadStructural input10209 value5108 value1 value2 = (output10209, value5109, value1)) : Flapjack.WordAlloc.removeDeadStructural input10210 value5 value1 value2 = (output10210, value5109, value1) := by
  rw [input10210_def, output10210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10208]
  dsimp only
  rw [child10209]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10208_skip, output10209_skip]
  kernel_rfl

theorem node10211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10211 value5109 value1 value2 = (output10211, value5110, value1) := by
  rw [input10211_def, output10211_def]
  kernel_rfl

theorem node10212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10212 value5110 value1 value2 = (output10212, value5110, value1) := by
  rw [input10212_def, output10212_def]
  kernel_rfl

theorem node10213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10213 value5110 value1 value2 = (output10213, value5111, value1) := by
  rw [input10213_def, output10213_def]
  kernel_rfl

theorem node10214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10214 value5111 value1 value2 = (output10214, value5112, value1) := by
  rw [input10214_def, output10214_def]
  kernel_rfl

theorem node10215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10215 value5112 value1 value2 = (output10215, value5113, value1) := by
  rw [input10215_def, output10215_def]
  kernel_rfl

theorem node10216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10216 value5113 value1 value2 = (output10216, value5114, value1) := by
  rw [input10216_def, output10216_def]
  kernel_rfl

theorem node10217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10217 value5114 value1 value2 = (output10217, value5, value1) := by
  rw [input10217_def, output10217_def]
  kernel_rfl

theorem node10218_cond_eq
    (child10216 : Flapjack.WordAlloc.removeDeadStructural input10216 value5113 value1 value2 = (output10216, value5114, value1))
    (child10217 : Flapjack.WordAlloc.removeDeadStructural input10217 value5114 value1 value2 = (output10217, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10218 value5113 value1 value2 = (output10218, value5, value1) := by
  rw [input10218_def, output10218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10216]
  dsimp only
  rw [child10217]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10216_skip, output10217_skip]
  kernel_rfl

theorem node10219_cond_eq
    (child10215 : Flapjack.WordAlloc.removeDeadStructural input10215 value5112 value1 value2 = (output10215, value5113, value1))
    (child10218 : Flapjack.WordAlloc.removeDeadStructural input10218 value5113 value1 value2 = (output10218, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10219 value5112 value1 value2 = (output10219, value5, value1) := by
  rw [input10219_def, output10219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10215]
  dsimp only
  rw [child10218]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10215_skip, output10218_skip]
  kernel_rfl

theorem node10220_cond_eq
    (child10214 : Flapjack.WordAlloc.removeDeadStructural input10214 value5111 value1 value2 = (output10214, value5112, value1))
    (child10219 : Flapjack.WordAlloc.removeDeadStructural input10219 value5112 value1 value2 = (output10219, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10220 value5111 value1 value2 = (output10220, value5, value1) := by
  rw [input10220_def, output10220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10214]
  dsimp only
  rw [child10219]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10214_skip, output10219_skip]
  kernel_rfl

theorem node10221_cond_eq
    (child10213 : Flapjack.WordAlloc.removeDeadStructural input10213 value5110 value1 value2 = (output10213, value5111, value1))
    (child10220 : Flapjack.WordAlloc.removeDeadStructural input10220 value5111 value1 value2 = (output10220, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10221 value5110 value1 value2 = (output10221, value5, value1) := by
  rw [input10221_def, output10221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10213]
  dsimp only
  rw [child10220]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10213_skip, output10220_skip]
  kernel_rfl

theorem node10222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10222 value5 value1 value2 = (output10222, value5115, value1) := by
  rw [input10222_def, output10222_def]
  kernel_rfl

theorem node10223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10223 value5115 value1 value2 = (output10223, value5116, value1) := by
  rw [input10223_def, output10223_def]
  kernel_rfl

theorem node10224_cond_eq
    (child10222 : Flapjack.WordAlloc.removeDeadStructural input10222 value5 value1 value2 = (output10222, value5115, value1))
    (child10223 : Flapjack.WordAlloc.removeDeadStructural input10223 value5115 value1 value2 = (output10223, value5116, value1)) : Flapjack.WordAlloc.removeDeadStructural input10224 value5 value1 value2 = (output10224, value5116, value1) := by
  rw [input10224_def, output10224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10222]
  dsimp only
  rw [child10223]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10222_skip, output10223_skip]
  kernel_rfl

theorem node10225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10225 value5116 value1 value2 = (output10225, value5117, value1) := by
  rw [input10225_def, output10225_def]
  kernel_rfl

theorem node10226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10226 value5117 value1 value2 = (output10226, value5117, value1) := by
  rw [input10226_def, output10226_def]
  kernel_rfl

theorem node10227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10227 value5117 value1 value2 = (output10227, value5118, value1) := by
  rw [input10227_def, output10227_def]
  kernel_rfl

theorem node10228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10228 value5118 value1 value2 = (output10228, value5119, value1) := by
  rw [input10228_def, output10228_def]
  kernel_rfl

theorem node10229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10229 value5119 value1 value2 = (output10229, value5120, value1) := by
  rw [input10229_def, output10229_def]
  kernel_rfl

theorem node10230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10230 value5120 value1 value2 = (output10230, value5121, value1) := by
  rw [input10230_def, output10230_def]
  kernel_rfl

theorem node10231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10231 value5121 value1 value2 = (output10231, value5, value1) := by
  rw [input10231_def, output10231_def]
  kernel_rfl

theorem node10232_cond_eq
    (child10230 : Flapjack.WordAlloc.removeDeadStructural input10230 value5120 value1 value2 = (output10230, value5121, value1))
    (child10231 : Flapjack.WordAlloc.removeDeadStructural input10231 value5121 value1 value2 = (output10231, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10232 value5120 value1 value2 = (output10232, value5, value1) := by
  rw [input10232_def, output10232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10230]
  dsimp only
  rw [child10231]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10230_skip, output10231_skip]
  kernel_rfl

theorem node10233_cond_eq
    (child10229 : Flapjack.WordAlloc.removeDeadStructural input10229 value5119 value1 value2 = (output10229, value5120, value1))
    (child10232 : Flapjack.WordAlloc.removeDeadStructural input10232 value5120 value1 value2 = (output10232, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10233 value5119 value1 value2 = (output10233, value5, value1) := by
  rw [input10233_def, output10233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10229]
  dsimp only
  rw [child10232]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10229_skip, output10232_skip]
  kernel_rfl

theorem node10234_cond_eq
    (child10228 : Flapjack.WordAlloc.removeDeadStructural input10228 value5118 value1 value2 = (output10228, value5119, value1))
    (child10233 : Flapjack.WordAlloc.removeDeadStructural input10233 value5119 value1 value2 = (output10233, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10234 value5118 value1 value2 = (output10234, value5, value1) := by
  rw [input10234_def, output10234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10228]
  dsimp only
  rw [child10233]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10228_skip, output10233_skip]
  kernel_rfl

theorem node10235_cond_eq
    (child10227 : Flapjack.WordAlloc.removeDeadStructural input10227 value5117 value1 value2 = (output10227, value5118, value1))
    (child10234 : Flapjack.WordAlloc.removeDeadStructural input10234 value5118 value1 value2 = (output10234, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10235 value5117 value1 value2 = (output10235, value5, value1) := by
  rw [input10235_def, output10235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10227]
  dsimp only
  rw [child10234]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10227_skip, output10234_skip]
  kernel_rfl

theorem node10236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10236 value5 value1 value2 = (output10236, value5122, value1) := by
  rw [input10236_def, output10236_def]
  kernel_rfl

theorem node10237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10237 value5122 value1 value2 = (output10237, value5123, value1) := by
  rw [input10237_def, output10237_def]
  kernel_rfl

theorem node10238_cond_eq
    (child10236 : Flapjack.WordAlloc.removeDeadStructural input10236 value5 value1 value2 = (output10236, value5122, value1))
    (child10237 : Flapjack.WordAlloc.removeDeadStructural input10237 value5122 value1 value2 = (output10237, value5123, value1)) : Flapjack.WordAlloc.removeDeadStructural input10238 value5 value1 value2 = (output10238, value5123, value1) := by
  rw [input10238_def, output10238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10236]
  dsimp only
  rw [child10237]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10236_skip, output10237_skip]
  kernel_rfl

theorem node10239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10239 value5123 value1 value2 = (output10239, value5124, value1) := by
  rw [input10239_def, output10239_def]
  kernel_rfl

#print axioms node10239_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
