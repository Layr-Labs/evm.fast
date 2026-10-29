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
theorem tree4992_agree_conditional
    (child0 : tree4990 = literal4990)
    (child1 : tree4991 = literal4991) : tree4992 = literal4992 := by
  rw [tree4992_def, child0, child1]
  rfl
theorem node4992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4990 live4990 coloured4990 = result4990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4991 live4991 coloured4991 = result4991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4992 live4992 coloured4992 = result4992 := by
  rw [tree4992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4990 coloured4990 at child
  try dsimp only [live4992, coloured4992]
  rw [child]
  dsimp only [result4990]
  have child := child1
  unfold live4991 coloured4991 at child
  try dsimp only [live4992, coloured4992]
  rw [child]
  dsimp only [result4991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4993_agree_conditional : tree4993 = literal4993 := by
  rw [tree4993_def]
  rfl
theorem node4993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4993 live4993 coloured4993 = result4993 := by
  rw [tree4993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4994_agree_conditional
    (child0 : tree4992 = literal4992)
    (child1 : tree4993 = literal4993) : tree4994 = literal4994 := by
  rw [tree4994_def, child0, child1]
  rfl
theorem node4994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4992 live4992 coloured4992 = result4992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4993 live4993 coloured4993 = result4993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4994 live4994 coloured4994 = result4994 := by
  rw [tree4994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4992 coloured4992 at child
  try dsimp only [live4994, coloured4994]
  rw [child]
  dsimp only [result4992]
  have child := child1
  unfold live4993 coloured4993 at child
  try dsimp only [live4994, coloured4994]
  rw [child]
  dsimp only [result4993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4995_agree_conditional : tree4995 = literal4995 := by
  rw [tree4995_def]
  rfl
theorem node4995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4995 live4995 coloured4995 = result4995 := by
  rw [tree4995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4996_agree_conditional
    (child0 : tree4994 = literal4994)
    (child1 : tree4995 = literal4995) : tree4996 = literal4996 := by
  rw [tree4996_def, child0, child1]
  rfl
theorem node4996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4994 live4994 coloured4994 = result4994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4995 live4995 coloured4995 = result4995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4996 live4996 coloured4996 = result4996 := by
  rw [tree4996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4994 coloured4994 at child
  try dsimp only [live4996, coloured4996]
  rw [child]
  dsimp only [result4994]
  have child := child1
  unfold live4995 coloured4995 at child
  try dsimp only [live4996, coloured4996]
  rw [child]
  dsimp only [result4995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4997_agree_conditional : tree4997 = literal4997 := by
  rw [tree4997_def]
  rfl
theorem node4997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4997 live4997 coloured4997 = result4997 := by
  rw [tree4997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4998_agree_conditional
    (child0 : tree4996 = literal4996)
    (child1 : tree4997 = literal4997) : tree4998 = literal4998 := by
  rw [tree4998_def, child0, child1]
  rfl
theorem node4998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4996 live4996 coloured4996 = result4996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4997 live4997 coloured4997 = result4997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4998 live4998 coloured4998 = result4998 := by
  rw [tree4998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4996 coloured4996 at child
  try dsimp only [live4998, coloured4998]
  rw [child]
  dsimp only [result4996]
  have child := child1
  unfold live4997 coloured4997 at child
  try dsimp only [live4998, coloured4998]
  rw [child]
  dsimp only [result4997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4999_agree_conditional : tree4999 = literal4999 := by
  rw [tree4999_def]
  rfl
theorem node4999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4999 live4999 coloured4999 = result4999 := by
  rw [tree4999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5000_agree_conditional
    (child0 : tree4998 = literal4998)
    (child1 : tree4999 = literal4999) : tree5000 = literal5000 := by
  rw [tree5000_def, child0, child1]
  rfl
theorem node5000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4998 live4998 coloured4998 = result4998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4999 live4999 coloured4999 = result4999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5000 live5000 coloured5000 = result5000 := by
  rw [tree5000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4998 coloured4998 at child
  try dsimp only [live5000, coloured5000]
  rw [child]
  dsimp only [result4998]
  have child := child1
  unfold live4999 coloured4999 at child
  try dsimp only [live5000, coloured5000]
  rw [child]
  dsimp only [result4999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5001_agree_conditional : tree5001 = literal5001 := by
  rw [tree5001_def]
  rfl
theorem node5001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5001 live5001 coloured5001 = result5001 := by
  rw [tree5001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5002_agree_conditional
    (child0 : tree5000 = literal5000)
    (child1 : tree5001 = literal5001) : tree5002 = literal5002 := by
  rw [tree5002_def, child0, child1]
  rfl
theorem node5002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5000 live5000 coloured5000 = result5000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5001 live5001 coloured5001 = result5001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5002 live5002 coloured5002 = result5002 := by
  rw [tree5002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5000 coloured5000 at child
  try dsimp only [live5002, coloured5002]
  rw [child]
  dsimp only [result5000]
  have child := child1
  unfold live5001 coloured5001 at child
  try dsimp only [live5002, coloured5002]
  rw [child]
  dsimp only [result5001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5003_agree_conditional : tree5003 = literal5003 := by
  rw [tree5003_def]
  rfl
theorem node5003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5003 live5003 coloured5003 = result5003 := by
  rw [tree5003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5004_agree_conditional
    (child0 : tree5002 = literal5002)
    (child1 : tree5003 = literal5003) : tree5004 = literal5004 := by
  rw [tree5004_def, child0, child1]
  rfl
theorem node5004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5002 live5002 coloured5002 = result5002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5003 live5003 coloured5003 = result5003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5004 live5004 coloured5004 = result5004 := by
  rw [tree5004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5002 coloured5002 at child
  try dsimp only [live5004, coloured5004]
  rw [child]
  dsimp only [result5002]
  have child := child1
  unfold live5003 coloured5003 at child
  try dsimp only [live5004, coloured5004]
  rw [child]
  dsimp only [result5003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5005_agree_conditional : tree5005 = literal5005 := by
  rw [tree5005_def]
  rfl
theorem node5005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5005 live5005 coloured5005 = result5005 := by
  rw [tree5005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5006_agree_conditional
    (child0 : tree5004 = literal5004)
    (child1 : tree5005 = literal5005) : tree5006 = literal5006 := by
  rw [tree5006_def, child0, child1]
  rfl
theorem node5006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5004 live5004 coloured5004 = result5004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5005 live5005 coloured5005 = result5005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5006 live5006 coloured5006 = result5006 := by
  rw [tree5006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5004 coloured5004 at child
  try dsimp only [live5006, coloured5006]
  rw [child]
  dsimp only [result5004]
  have child := child1
  unfold live5005 coloured5005 at child
  try dsimp only [live5006, coloured5006]
  rw [child]
  dsimp only [result5005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5007_agree_conditional : tree5007 = literal5007 := by
  rw [tree5007_def]
  rfl
theorem node5007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5007 live5007 coloured5007 = result5007 := by
  rw [tree5007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5008_agree_conditional
    (child0 : tree5006 = literal5006)
    (child1 : tree5007 = literal5007) : tree5008 = literal5008 := by
  rw [tree5008_def, child0, child1]
  rfl
theorem node5008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5006 live5006 coloured5006 = result5006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5007 live5007 coloured5007 = result5007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5008 live5008 coloured5008 = result5008 := by
  rw [tree5008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5006 coloured5006 at child
  try dsimp only [live5008, coloured5008]
  rw [child]
  dsimp only [result5006]
  have child := child1
  unfold live5007 coloured5007 at child
  try dsimp only [live5008, coloured5008]
  rw [child]
  dsimp only [result5007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5009_agree_conditional : tree5009 = literal5009 := by
  rw [tree5009_def]
  rfl
theorem node5009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5009 live5009 coloured5009 = result5009 := by
  rw [tree5009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5010_agree_conditional
    (child0 : tree5008 = literal5008)
    (child1 : tree5009 = literal5009) : tree5010 = literal5010 := by
  rw [tree5010_def, child0, child1]
  rfl
theorem node5010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5008 live5008 coloured5008 = result5008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5009 live5009 coloured5009 = result5009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5010 live5010 coloured5010 = result5010 := by
  rw [tree5010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5008 coloured5008 at child
  try dsimp only [live5010, coloured5010]
  rw [child]
  dsimp only [result5008]
  have child := child1
  unfold live5009 coloured5009 at child
  try dsimp only [live5010, coloured5010]
  rw [child]
  dsimp only [result5009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5011_agree_conditional : tree5011 = literal5011 := by
  rw [tree5011_def]
  rfl
theorem node5011_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5011 live5011 coloured5011 = result5011 := by
  rw [tree5011_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5012_agree_conditional
    (child0 : tree5010 = literal5010)
    (child1 : tree5011 = literal5011) : tree5012 = literal5012 := by
  rw [tree5012_def, child0, child1]
  rfl
theorem node5012_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5010 live5010 coloured5010 = result5010)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5011 live5011 coloured5011 = result5011) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5012 live5012 coloured5012 = result5012 := by
  rw [tree5012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5010 coloured5010 at child
  try dsimp only [live5012, coloured5012]
  rw [child]
  dsimp only [result5010]
  have child := child1
  unfold live5011 coloured5011 at child
  try dsimp only [live5012, coloured5012]
  rw [child]
  dsimp only [result5011]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5013_agree_conditional : tree5013 = literal5013 := by
  rw [tree5013_def]
  rfl
theorem node5013_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5013 live5013 coloured5013 = result5013 := by
  rw [tree5013_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5014_agree_conditional
    (child0 : tree5012 = literal5012)
    (child1 : tree5013 = literal5013) : tree5014 = literal5014 := by
  rw [tree5014_def, child0, child1]
  rfl
theorem node5014_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5012 live5012 coloured5012 = result5012)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5013 live5013 coloured5013 = result5013) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5014 live5014 coloured5014 = result5014 := by
  rw [tree5014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5012 coloured5012 at child
  try dsimp only [live5014, coloured5014]
  rw [child]
  dsimp only [result5012]
  have child := child1
  unfold live5013 coloured5013 at child
  try dsimp only [live5014, coloured5014]
  rw [child]
  dsimp only [result5013]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5015_agree_conditional : tree5015 = literal5015 := by
  rw [tree5015_def]
  rfl
theorem node5015_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5015 live5015 coloured5015 = result5015 := by
  rw [tree5015_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5016_agree_conditional
    (child0 : tree5014 = literal5014)
    (child1 : tree5015 = literal5015) : tree5016 = literal5016 := by
  rw [tree5016_def, child0, child1]
  rfl
theorem node5016_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5014 live5014 coloured5014 = result5014)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5015 live5015 coloured5015 = result5015) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5016 live5016 coloured5016 = result5016 := by
  rw [tree5016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5014 coloured5014 at child
  try dsimp only [live5016, coloured5016]
  rw [child]
  dsimp only [result5014]
  have child := child1
  unfold live5015 coloured5015 at child
  try dsimp only [live5016, coloured5016]
  rw [child]
  dsimp only [result5015]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5017_agree_conditional : tree5017 = literal5017 := by
  rw [tree5017_def]
  rfl
theorem node5017_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5017 live5017 coloured5017 = result5017 := by
  rw [tree5017_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5018_agree_conditional
    (child0 : tree5016 = literal5016)
    (child1 : tree5017 = literal5017) : tree5018 = literal5018 := by
  rw [tree5018_def, child0, child1]
  rfl
theorem node5018_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5016 live5016 coloured5016 = result5016)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5017 live5017 coloured5017 = result5017) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5018 live5018 coloured5018 = result5018 := by
  rw [tree5018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5016 coloured5016 at child
  try dsimp only [live5018, coloured5018]
  rw [child]
  dsimp only [result5016]
  have child := child1
  unfold live5017 coloured5017 at child
  try dsimp only [live5018, coloured5018]
  rw [child]
  dsimp only [result5017]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5019_agree_conditional : tree5019 = literal5019 := by
  rw [tree5019_def]
  rfl
theorem node5019_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5019 live5019 coloured5019 = result5019 := by
  rw [tree5019_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5020_agree_conditional
    (child0 : tree5018 = literal5018)
    (child1 : tree5019 = literal5019) : tree5020 = literal5020 := by
  rw [tree5020_def, child0, child1]
  rfl
theorem node5020_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5018 live5018 coloured5018 = result5018)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5019 live5019 coloured5019 = result5019) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5020 live5020 coloured5020 = result5020 := by
  rw [tree5020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5018 coloured5018 at child
  try dsimp only [live5020, coloured5020]
  rw [child]
  dsimp only [result5018]
  have child := child1
  unfold live5019 coloured5019 at child
  try dsimp only [live5020, coloured5020]
  rw [child]
  dsimp only [result5019]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5021_agree_conditional : tree5021 = literal5021 := by
  rw [tree5021_def]
  rfl
theorem node5021_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5021 live5021 coloured5021 = result5021 := by
  rw [tree5021_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5022_agree_conditional
    (child0 : tree5020 = literal5020)
    (child1 : tree5021 = literal5021) : tree5022 = literal5022 := by
  rw [tree5022_def, child0, child1]
  rfl
theorem node5022_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5020 live5020 coloured5020 = result5020)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5021 live5021 coloured5021 = result5021) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5022 live5022 coloured5022 = result5022 := by
  rw [tree5022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5020 coloured5020 at child
  try dsimp only [live5022, coloured5022]
  rw [child]
  dsimp only [result5020]
  have child := child1
  unfold live5021 coloured5021 at child
  try dsimp only [live5022, coloured5022]
  rw [child]
  dsimp only [result5021]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5023_agree_conditional : tree5023 = literal5023 := by
  rw [tree5023_def]
  rfl
theorem node5023_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5023 live5023 coloured5023 = result5023 := by
  rw [tree5023_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5024_agree_conditional
    (child0 : tree5022 = literal5022)
    (child1 : tree5023 = literal5023) : tree5024 = literal5024 := by
  rw [tree5024_def, child0, child1]
  rfl
theorem node5024_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5022 live5022 coloured5022 = result5022)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5023 live5023 coloured5023 = result5023) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5024 live5024 coloured5024 = result5024 := by
  rw [tree5024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5022 coloured5022 at child
  try dsimp only [live5024, coloured5024]
  rw [child]
  dsimp only [result5022]
  have child := child1
  unfold live5023 coloured5023 at child
  try dsimp only [live5024, coloured5024]
  rw [child]
  dsimp only [result5023]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5025_agree_conditional : tree5025 = literal5025 := by
  rw [tree5025_def]
  rfl
theorem node5025_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5025 live5025 coloured5025 = result5025 := by
  rw [tree5025_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5026_agree_conditional
    (child0 : tree5024 = literal5024)
    (child1 : tree5025 = literal5025) : tree5026 = literal5026 := by
  rw [tree5026_def, child0, child1]
  rfl
theorem node5026_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5024 live5024 coloured5024 = result5024)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5025 live5025 coloured5025 = result5025) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5026 live5026 coloured5026 = result5026 := by
  rw [tree5026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5024 coloured5024 at child
  try dsimp only [live5026, coloured5026]
  rw [child]
  dsimp only [result5024]
  have child := child1
  unfold live5025 coloured5025 at child
  try dsimp only [live5026, coloured5026]
  rw [child]
  dsimp only [result5025]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5027_agree_conditional : tree5027 = literal5027 := by
  rw [tree5027_def]
  rfl
theorem node5027_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5027 live5027 coloured5027 = result5027 := by
  rw [tree5027_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5028_agree_conditional
    (child0 : tree5026 = literal5026)
    (child1 : tree5027 = literal5027) : tree5028 = literal5028 := by
  rw [tree5028_def, child0, child1]
  rfl
theorem node5028_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5026 live5026 coloured5026 = result5026)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5027 live5027 coloured5027 = result5027) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5028 live5028 coloured5028 = result5028 := by
  rw [tree5028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5026 coloured5026 at child
  try dsimp only [live5028, coloured5028]
  rw [child]
  dsimp only [result5026]
  have child := child1
  unfold live5027 coloured5027 at child
  try dsimp only [live5028, coloured5028]
  rw [child]
  dsimp only [result5027]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5029_agree_conditional : tree5029 = literal5029 := by
  rw [tree5029_def]
  rfl
theorem node5029_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5029 live5029 coloured5029 = result5029 := by
  rw [tree5029_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5030_agree_conditional
    (child0 : tree5028 = literal5028)
    (child1 : tree5029 = literal5029) : tree5030 = literal5030 := by
  rw [tree5030_def, child0, child1]
  rfl
theorem node5030_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5028 live5028 coloured5028 = result5028)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5029 live5029 coloured5029 = result5029) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5030 live5030 coloured5030 = result5030 := by
  rw [tree5030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5028 coloured5028 at child
  try dsimp only [live5030, coloured5030]
  rw [child]
  dsimp only [result5028]
  have child := child1
  unfold live5029 coloured5029 at child
  try dsimp only [live5030, coloured5030]
  rw [child]
  dsimp only [result5029]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5031_agree_conditional : tree5031 = literal5031 := by
  rw [tree5031_def]
  rfl
theorem node5031_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5031 live5031 coloured5031 = result5031 := by
  rw [tree5031_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5032_agree_conditional
    (child0 : tree5030 = literal5030)
    (child1 : tree5031 = literal5031) : tree5032 = literal5032 := by
  rw [tree5032_def, child0, child1]
  rfl
theorem node5032_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5030 live5030 coloured5030 = result5030)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5031 live5031 coloured5031 = result5031) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5032 live5032 coloured5032 = result5032 := by
  rw [tree5032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5030 coloured5030 at child
  try dsimp only [live5032, coloured5032]
  rw [child]
  dsimp only [result5030]
  have child := child1
  unfold live5031 coloured5031 at child
  try dsimp only [live5032, coloured5032]
  rw [child]
  dsimp only [result5031]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5033_agree_conditional : tree5033 = literal5033 := by
  rw [tree5033_def]
  rfl
theorem node5033_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5033 live5033 coloured5033 = result5033 := by
  rw [tree5033_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5034_agree_conditional
    (child0 : tree5032 = literal5032)
    (child1 : tree5033 = literal5033) : tree5034 = literal5034 := by
  rw [tree5034_def, child0, child1]
  rfl
theorem node5034_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5032 live5032 coloured5032 = result5032)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5033 live5033 coloured5033 = result5033) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5034 live5034 coloured5034 = result5034 := by
  rw [tree5034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5032 coloured5032 at child
  try dsimp only [live5034, coloured5034]
  rw [child]
  dsimp only [result5032]
  have child := child1
  unfold live5033 coloured5033 at child
  try dsimp only [live5034, coloured5034]
  rw [child]
  dsimp only [result5033]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5035_agree_conditional : tree5035 = literal5035 := by
  rw [tree5035_def]
  rfl
theorem node5035_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5035 live5035 coloured5035 = result5035 := by
  rw [tree5035_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5036_agree_conditional
    (child0 : tree5034 = literal5034)
    (child1 : tree5035 = literal5035) : tree5036 = literal5036 := by
  rw [tree5036_def, child0, child1]
  rfl
theorem node5036_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5034 live5034 coloured5034 = result5034)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5035 live5035 coloured5035 = result5035) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5036 live5036 coloured5036 = result5036 := by
  rw [tree5036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5034 coloured5034 at child
  try dsimp only [live5036, coloured5036]
  rw [child]
  dsimp only [result5034]
  have child := child1
  unfold live5035 coloured5035 at child
  try dsimp only [live5036, coloured5036]
  rw [child]
  dsimp only [result5035]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5037_agree_conditional : tree5037 = literal5037 := by
  rw [tree5037_def]
  rfl
theorem node5037_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5037 live5037 coloured5037 = result5037 := by
  rw [tree5037_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5038_agree_conditional
    (child0 : tree5036 = literal5036)
    (child1 : tree5037 = literal5037) : tree5038 = literal5038 := by
  rw [tree5038_def, child0, child1]
  rfl
theorem node5038_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5036 live5036 coloured5036 = result5036)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5037 live5037 coloured5037 = result5037) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5038 live5038 coloured5038 = result5038 := by
  rw [tree5038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5036 coloured5036 at child
  try dsimp only [live5038, coloured5038]
  rw [child]
  dsimp only [result5036]
  have child := child1
  unfold live5037 coloured5037 at child
  try dsimp only [live5038, coloured5038]
  rw [child]
  dsimp only [result5037]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5039_agree_conditional : tree5039 = literal5039 := by
  rw [tree5039_def]
  rfl
theorem node5039_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5039 live5039 coloured5039 = result5039 := by
  rw [tree5039_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5040_agree_conditional
    (child0 : tree5038 = literal5038)
    (child1 : tree5039 = literal5039) : tree5040 = literal5040 := by
  rw [tree5040_def, child0, child1]
  rfl
theorem node5040_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5038 live5038 coloured5038 = result5038)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5039 live5039 coloured5039 = result5039) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5040 live5040 coloured5040 = result5040 := by
  rw [tree5040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5038 coloured5038 at child
  try dsimp only [live5040, coloured5040]
  rw [child]
  dsimp only [result5038]
  have child := child1
  unfold live5039 coloured5039 at child
  try dsimp only [live5040, coloured5040]
  rw [child]
  dsimp only [result5039]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5041_agree_conditional : tree5041 = literal5041 := by
  rw [tree5041_def]
  rfl
theorem node5041_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5041 live5041 coloured5041 = result5041 := by
  rw [tree5041_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5042_agree_conditional
    (child0 : tree5040 = literal5040)
    (child1 : tree5041 = literal5041) : tree5042 = literal5042 := by
  rw [tree5042_def, child0, child1]
  rfl
theorem node5042_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5040 live5040 coloured5040 = result5040)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5041 live5041 coloured5041 = result5041) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5042 live5042 coloured5042 = result5042 := by
  rw [tree5042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5040 coloured5040 at child
  try dsimp only [live5042, coloured5042]
  rw [child]
  dsimp only [result5040]
  have child := child1
  unfold live5041 coloured5041 at child
  try dsimp only [live5042, coloured5042]
  rw [child]
  dsimp only [result5041]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5043_agree_conditional : tree5043 = literal5043 := by
  rw [tree5043_def]
  rfl
theorem node5043_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5043 live5043 coloured5043 = result5043 := by
  rw [tree5043_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5044_agree_conditional
    (child0 : tree5042 = literal5042)
    (child1 : tree5043 = literal5043) : tree5044 = literal5044 := by
  rw [tree5044_def, child0, child1]
  rfl
theorem node5044_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5042 live5042 coloured5042 = result5042)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5043 live5043 coloured5043 = result5043) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5044 live5044 coloured5044 = result5044 := by
  rw [tree5044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5042 coloured5042 at child
  try dsimp only [live5044, coloured5044]
  rw [child]
  dsimp only [result5042]
  have child := child1
  unfold live5043 coloured5043 at child
  try dsimp only [live5044, coloured5044]
  rw [child]
  dsimp only [result5043]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5045_agree_conditional : tree5045 = literal5045 := by
  rw [tree5045_def]
  rfl
theorem node5045_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5045 live5045 coloured5045 = result5045 := by
  rw [tree5045_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5046_agree_conditional
    (child0 : tree5044 = literal5044)
    (child1 : tree5045 = literal5045) : tree5046 = literal5046 := by
  rw [tree5046_def, child0, child1]
  rfl
theorem node5046_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5044 live5044 coloured5044 = result5044)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5045 live5045 coloured5045 = result5045) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5046 live5046 coloured5046 = result5046 := by
  rw [tree5046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5044 coloured5044 at child
  try dsimp only [live5046, coloured5046]
  rw [child]
  dsimp only [result5044]
  have child := child1
  unfold live5045 coloured5045 at child
  try dsimp only [live5046, coloured5046]
  rw [child]
  dsimp only [result5045]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5047_agree_conditional : tree5047 = literal5047 := by
  rw [tree5047_def]
  rfl
theorem node5047_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5047 live5047 coloured5047 = result5047 := by
  rw [tree5047_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5048_agree_conditional
    (child0 : tree5046 = literal5046)
    (child1 : tree5047 = literal5047) : tree5048 = literal5048 := by
  rw [tree5048_def, child0, child1]
  rfl
theorem node5048_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5046 live5046 coloured5046 = result5046)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5047 live5047 coloured5047 = result5047) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5048 live5048 coloured5048 = result5048 := by
  rw [tree5048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5046 coloured5046 at child
  try dsimp only [live5048, coloured5048]
  rw [child]
  dsimp only [result5046]
  have child := child1
  unfold live5047 coloured5047 at child
  try dsimp only [live5048, coloured5048]
  rw [child]
  dsimp only [result5047]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5049_agree_conditional : tree5049 = literal5049 := by
  rw [tree5049_def]
  rfl
theorem node5049_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5049 live5049 coloured5049 = result5049 := by
  rw [tree5049_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5050_agree_conditional
    (child0 : tree5048 = literal5048)
    (child1 : tree5049 = literal5049) : tree5050 = literal5050 := by
  rw [tree5050_def, child0, child1]
  rfl
theorem node5050_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5048 live5048 coloured5048 = result5048)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5049 live5049 coloured5049 = result5049) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5050 live5050 coloured5050 = result5050 := by
  rw [tree5050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5048 coloured5048 at child
  try dsimp only [live5050, coloured5050]
  rw [child]
  dsimp only [result5048]
  have child := child1
  unfold live5049 coloured5049 at child
  try dsimp only [live5050, coloured5050]
  rw [child]
  dsimp only [result5049]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5051_agree_conditional : tree5051 = literal5051 := by
  rw [tree5051_def]
  rfl
theorem node5051_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5051 live5051 coloured5051 = result5051 := by
  rw [tree5051_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5052_agree_conditional
    (child0 : tree5050 = literal5050)
    (child1 : tree5051 = literal5051) : tree5052 = literal5052 := by
  rw [tree5052_def, child0, child1]
  rfl
theorem node5052_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5050 live5050 coloured5050 = result5050)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5051 live5051 coloured5051 = result5051) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5052 live5052 coloured5052 = result5052 := by
  rw [tree5052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5050 coloured5050 at child
  try dsimp only [live5052, coloured5052]
  rw [child]
  dsimp only [result5050]
  have child := child1
  unfold live5051 coloured5051 at child
  try dsimp only [live5052, coloured5052]
  rw [child]
  dsimp only [result5051]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5053_agree_conditional : tree5053 = literal5053 := by
  rw [tree5053_def]
  rfl
theorem node5053_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5053 live5053 coloured5053 = result5053 := by
  rw [tree5053_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5054_agree_conditional
    (child0 : tree5052 = literal5052)
    (child1 : tree5053 = literal5053) : tree5054 = literal5054 := by
  rw [tree5054_def, child0, child1]
  rfl
theorem node5054_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5052 live5052 coloured5052 = result5052)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5053 live5053 coloured5053 = result5053) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5054 live5054 coloured5054 = result5054 := by
  rw [tree5054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5052 coloured5052 at child
  try dsimp only [live5054, coloured5054]
  rw [child]
  dsimp only [result5052]
  have child := child1
  unfold live5053 coloured5053 at child
  try dsimp only [live5054, coloured5054]
  rw [child]
  dsimp only [result5053]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5055_agree_conditional : tree5055 = literal5055 := by
  rw [tree5055_def]
  rfl
theorem node5055_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5055 live5055 coloured5055 = result5055 := by
  rw [tree5055_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5056_agree_conditional
    (child0 : tree5054 = literal5054)
    (child1 : tree5055 = literal5055) : tree5056 = literal5056 := by
  rw [tree5056_def, child0, child1]
  rfl
theorem node5056_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5054 live5054 coloured5054 = result5054)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5055 live5055 coloured5055 = result5055) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5056 live5056 coloured5056 = result5056 := by
  rw [tree5056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5054 coloured5054 at child
  try dsimp only [live5056, coloured5056]
  rw [child]
  dsimp only [result5054]
  have child := child1
  unfold live5055 coloured5055 at child
  try dsimp only [live5056, coloured5056]
  rw [child]
  dsimp only [result5055]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5057_agree_conditional : tree5057 = literal5057 := by
  rw [tree5057_def]
  rfl
theorem node5057_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5057 live5057 coloured5057 = result5057 := by
  rw [tree5057_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5058_agree_conditional
    (child0 : tree5056 = literal5056)
    (child1 : tree5057 = literal5057) : tree5058 = literal5058 := by
  rw [tree5058_def, child0, child1]
  rfl
theorem node5058_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5056 live5056 coloured5056 = result5056)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5057 live5057 coloured5057 = result5057) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5058 live5058 coloured5058 = result5058 := by
  rw [tree5058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5056 coloured5056 at child
  try dsimp only [live5058, coloured5058]
  rw [child]
  dsimp only [result5056]
  have child := child1
  unfold live5057 coloured5057 at child
  try dsimp only [live5058, coloured5058]
  rw [child]
  dsimp only [result5057]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5059_agree_conditional : tree5059 = literal5059 := by
  rw [tree5059_def]
  rfl
theorem node5059_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5059 live5059 coloured5059 = result5059 := by
  rw [tree5059_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5060_agree_conditional
    (child0 : tree5058 = literal5058)
    (child1 : tree5059 = literal5059) : tree5060 = literal5060 := by
  rw [tree5060_def, child0, child1]
  rfl
theorem node5060_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5058 live5058 coloured5058 = result5058)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5059 live5059 coloured5059 = result5059) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5060 live5060 coloured5060 = result5060 := by
  rw [tree5060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5058 coloured5058 at child
  try dsimp only [live5060, coloured5060]
  rw [child]
  dsimp only [result5058]
  have child := child1
  unfold live5059 coloured5059 at child
  try dsimp only [live5060, coloured5060]
  rw [child]
  dsimp only [result5059]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5061_agree_conditional : tree5061 = literal5061 := by
  rw [tree5061_def]
  rfl
theorem node5061_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5061 live5061 coloured5061 = result5061 := by
  rw [tree5061_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5062_agree_conditional
    (child0 : tree5060 = literal5060)
    (child1 : tree5061 = literal5061) : tree5062 = literal5062 := by
  rw [tree5062_def, child0, child1]
  rfl
theorem node5062_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5060 live5060 coloured5060 = result5060)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5061 live5061 coloured5061 = result5061) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5062 live5062 coloured5062 = result5062 := by
  rw [tree5062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5060 coloured5060 at child
  try dsimp only [live5062, coloured5062]
  rw [child]
  dsimp only [result5060]
  have child := child1
  unfold live5061 coloured5061 at child
  try dsimp only [live5062, coloured5062]
  rw [child]
  dsimp only [result5061]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5063_agree_conditional : tree5063 = literal5063 := by
  rw [tree5063_def]
  rfl
theorem node5063_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5063 live5063 coloured5063 = result5063 := by
  rw [tree5063_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5064_agree_conditional
    (child0 : tree5062 = literal5062)
    (child1 : tree5063 = literal5063) : tree5064 = literal5064 := by
  rw [tree5064_def, child0, child1]
  rfl
theorem node5064_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5062 live5062 coloured5062 = result5062)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5063 live5063 coloured5063 = result5063) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5064 live5064 coloured5064 = result5064 := by
  rw [tree5064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5062 coloured5062 at child
  try dsimp only [live5064, coloured5064]
  rw [child]
  dsimp only [result5062]
  have child := child1
  unfold live5063 coloured5063 at child
  try dsimp only [live5064, coloured5064]
  rw [child]
  dsimp only [result5063]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5065_agree_conditional : tree5065 = literal5065 := by
  rw [tree5065_def]
  rfl
theorem node5065_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5065 live5065 coloured5065 = result5065 := by
  rw [tree5065_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5066_agree_conditional
    (child0 : tree5064 = literal5064)
    (child1 : tree5065 = literal5065) : tree5066 = literal5066 := by
  rw [tree5066_def, child0, child1]
  rfl
theorem node5066_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5064 live5064 coloured5064 = result5064)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5065 live5065 coloured5065 = result5065) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5066 live5066 coloured5066 = result5066 := by
  rw [tree5066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5064 coloured5064 at child
  try dsimp only [live5066, coloured5066]
  rw [child]
  dsimp only [result5064]
  have child := child1
  unfold live5065 coloured5065 at child
  try dsimp only [live5066, coloured5066]
  rw [child]
  dsimp only [result5065]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5067_agree_conditional : tree5067 = literal5067 := by
  rw [tree5067_def]
  rfl
theorem node5067_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5067 live5067 coloured5067 = result5067 := by
  rw [tree5067_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5068_agree_conditional
    (child0 : tree5066 = literal5066)
    (child1 : tree5067 = literal5067) : tree5068 = literal5068 := by
  rw [tree5068_def, child0, child1]
  rfl
theorem node5068_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5066 live5066 coloured5066 = result5066)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5067 live5067 coloured5067 = result5067) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5068 live5068 coloured5068 = result5068 := by
  rw [tree5068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5066 coloured5066 at child
  try dsimp only [live5068, coloured5068]
  rw [child]
  dsimp only [result5066]
  have child := child1
  unfold live5067 coloured5067 at child
  try dsimp only [live5068, coloured5068]
  rw [child]
  dsimp only [result5067]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5069_agree_conditional : tree5069 = literal5069 := by
  rw [tree5069_def]
  rfl
theorem node5069_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5069 live5069 coloured5069 = result5069 := by
  rw [tree5069_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5070_agree_conditional
    (child0 : tree5068 = literal5068)
    (child1 : tree5069 = literal5069) : tree5070 = literal5070 := by
  rw [tree5070_def, child0, child1]
  rfl
theorem node5070_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5068 live5068 coloured5068 = result5068)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5069 live5069 coloured5069 = result5069) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5070 live5070 coloured5070 = result5070 := by
  rw [tree5070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5068 coloured5068 at child
  try dsimp only [live5070, coloured5070]
  rw [child]
  dsimp only [result5068]
  have child := child1
  unfold live5069 coloured5069 at child
  try dsimp only [live5070, coloured5070]
  rw [child]
  dsimp only [result5069]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5071_agree_conditional : tree5071 = literal5071 := by
  rw [tree5071_def]
  rfl
theorem node5071_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5071 live5071 coloured5071 = result5071 := by
  rw [tree5071_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5072_agree_conditional
    (child0 : tree5070 = literal5070)
    (child1 : tree5071 = literal5071) : tree5072 = literal5072 := by
  rw [tree5072_def, child0, child1]
  rfl
theorem node5072_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5070 live5070 coloured5070 = result5070)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5071 live5071 coloured5071 = result5071) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5072 live5072 coloured5072 = result5072 := by
  rw [tree5072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5070 coloured5070 at child
  try dsimp only [live5072, coloured5072]
  rw [child]
  dsimp only [result5070]
  have child := child1
  unfold live5071 coloured5071 at child
  try dsimp only [live5072, coloured5072]
  rw [child]
  dsimp only [result5071]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5073_agree_conditional : tree5073 = literal5073 := by
  rw [tree5073_def]
  rfl
theorem node5073_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5073 live5073 coloured5073 = result5073 := by
  rw [tree5073_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5074_agree_conditional
    (child0 : tree5072 = literal5072)
    (child1 : tree5073 = literal5073) : tree5074 = literal5074 := by
  rw [tree5074_def, child0, child1]
  rfl
theorem node5074_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5072 live5072 coloured5072 = result5072)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5073 live5073 coloured5073 = result5073) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5074 live5074 coloured5074 = result5074 := by
  rw [tree5074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5072 coloured5072 at child
  try dsimp only [live5074, coloured5074]
  rw [child]
  dsimp only [result5072]
  have child := child1
  unfold live5073 coloured5073 at child
  try dsimp only [live5074, coloured5074]
  rw [child]
  dsimp only [result5073]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5075_agree_conditional : tree5075 = literal5075 := by
  rw [tree5075_def]
  rfl
theorem node5075_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5075 live5075 coloured5075 = result5075 := by
  rw [tree5075_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5076_agree_conditional
    (child0 : tree5074 = literal5074)
    (child1 : tree5075 = literal5075) : tree5076 = literal5076 := by
  rw [tree5076_def, child0, child1]
  rfl
theorem node5076_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5074 live5074 coloured5074 = result5074)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5075 live5075 coloured5075 = result5075) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5076 live5076 coloured5076 = result5076 := by
  rw [tree5076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5074 coloured5074 at child
  try dsimp only [live5076, coloured5076]
  rw [child]
  dsimp only [result5074]
  have child := child1
  unfold live5075 coloured5075 at child
  try dsimp only [live5076, coloured5076]
  rw [child]
  dsimp only [result5075]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5077_agree_conditional : tree5077 = literal5077 := by
  rw [tree5077_def]
  rfl
theorem node5077_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5077 live5077 coloured5077 = result5077 := by
  rw [tree5077_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5078_agree_conditional
    (child0 : tree5076 = literal5076)
    (child1 : tree5077 = literal5077) : tree5078 = literal5078 := by
  rw [tree5078_def, child0, child1]
  rfl
theorem node5078_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5076 live5076 coloured5076 = result5076)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5077 live5077 coloured5077 = result5077) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5078 live5078 coloured5078 = result5078 := by
  rw [tree5078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5076 coloured5076 at child
  try dsimp only [live5078, coloured5078]
  rw [child]
  dsimp only [result5076]
  have child := child1
  unfold live5077 coloured5077 at child
  try dsimp only [live5078, coloured5078]
  rw [child]
  dsimp only [result5077]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5079_agree_conditional : tree5079 = literal5079 := by
  rw [tree5079_def]
  rfl
theorem node5079_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5079 live5079 coloured5079 = result5079 := by
  rw [tree5079_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5080_agree_conditional
    (child0 : tree5078 = literal5078)
    (child1 : tree5079 = literal5079) : tree5080 = literal5080 := by
  rw [tree5080_def, child0, child1]
  rfl
theorem node5080_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5078 live5078 coloured5078 = result5078)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5079 live5079 coloured5079 = result5079) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5080 live5080 coloured5080 = result5080 := by
  rw [tree5080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5078 coloured5078 at child
  try dsimp only [live5080, coloured5080]
  rw [child]
  dsimp only [result5078]
  have child := child1
  unfold live5079 coloured5079 at child
  try dsimp only [live5080, coloured5080]
  rw [child]
  dsimp only [result5079]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5081_agree_conditional : tree5081 = literal5081 := by
  rw [tree5081_def]
  rfl
theorem node5081_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5081 live5081 coloured5081 = result5081 := by
  rw [tree5081_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5082_agree_conditional
    (child0 : tree5080 = literal5080)
    (child1 : tree5081 = literal5081) : tree5082 = literal5082 := by
  rw [tree5082_def, child0, child1]
  rfl
theorem node5082_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5080 live5080 coloured5080 = result5080)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5081 live5081 coloured5081 = result5081) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5082 live5082 coloured5082 = result5082 := by
  rw [tree5082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5080 coloured5080 at child
  try dsimp only [live5082, coloured5082]
  rw [child]
  dsimp only [result5080]
  have child := child1
  unfold live5081 coloured5081 at child
  try dsimp only [live5082, coloured5082]
  rw [child]
  dsimp only [result5081]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5083_agree_conditional : tree5083 = literal5083 := by
  rw [tree5083_def]
  rfl
theorem node5083_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5083 live5083 coloured5083 = result5083 := by
  rw [tree5083_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5084_agree_conditional
    (child0 : tree5082 = literal5082)
    (child1 : tree5083 = literal5083) : tree5084 = literal5084 := by
  rw [tree5084_def, child0, child1]
  rfl
theorem node5084_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5082 live5082 coloured5082 = result5082)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5083 live5083 coloured5083 = result5083) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5084 live5084 coloured5084 = result5084 := by
  rw [tree5084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5082 coloured5082 at child
  try dsimp only [live5084, coloured5084]
  rw [child]
  dsimp only [result5082]
  have child := child1
  unfold live5083 coloured5083 at child
  try dsimp only [live5084, coloured5084]
  rw [child]
  dsimp only [result5083]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5085_agree_conditional : tree5085 = literal5085 := by
  rw [tree5085_def]
  rfl
theorem node5085_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5085 live5085 coloured5085 = result5085 := by
  rw [tree5085_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5086_agree_conditional
    (child0 : tree5084 = literal5084)
    (child1 : tree5085 = literal5085) : tree5086 = literal5086 := by
  rw [tree5086_def, child0, child1]
  rfl
theorem node5086_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5084 live5084 coloured5084 = result5084)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5085 live5085 coloured5085 = result5085) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5086 live5086 coloured5086 = result5086 := by
  rw [tree5086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5084 coloured5084 at child
  try dsimp only [live5086, coloured5086]
  rw [child]
  dsimp only [result5084]
  have child := child1
  unfold live5085 coloured5085 at child
  try dsimp only [live5086, coloured5086]
  rw [child]
  dsimp only [result5085]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5087_agree_conditional : tree5087 = literal5087 := by
  rw [tree5087_def]
  rfl
theorem node5087_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5087 live5087 coloured5087 = result5087 := by
  rw [tree5087_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
