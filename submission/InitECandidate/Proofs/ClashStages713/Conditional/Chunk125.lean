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
theorem tree12000_agree_conditional
    (child0 : tree11998 = literal11998)
    (child1 : tree11999 = literal11999) : tree12000 = literal12000 := by
  rw [tree12000_def, child0, child1]
  rfl
theorem node12000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11998 live11998 coloured11998 = result11998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11999 live11999 coloured11999 = result11999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12000 live12000 coloured12000 = result12000 := by
  rw [tree12000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11998 coloured11998 at child
  try dsimp only [live12000, coloured12000]
  rw [child]
  dsimp only [result11998]
  have child := child1
  unfold live11999 coloured11999 at child
  try dsimp only [live12000, coloured12000]
  rw [child]
  dsimp only [result11999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12001_agree_conditional
    (child0 : tree11995 = literal11995)
    (child1 : tree12000 = literal12000) : tree12001 = literal12001 := by
  rw [tree12001_def, child0, child1]
  rfl
theorem node12001_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11995 live11995 coloured11995 = result11995)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12000 live12000 coloured12000 = result12000) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12001 live12001 coloured12001 = result12001 := by
  rw [tree12001_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11995 coloured11995 at child
  try dsimp only [live12001, coloured12001]
  rw [child]
  dsimp only [result11995]
  have child := child1
  unfold live12000 coloured12000 at child
  try dsimp only [live12001, coloured12001]
  rw [child]
  dsimp only [result12000]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12002_agree_conditional
    (child0 : tree11992 = literal11992)
    (child1 : tree12001 = literal12001) : tree12002 = literal12002 := by
  rw [tree12002_def, child0, child1]
  rfl
theorem node12002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11992 live11992 coloured11992 = result11992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12001 live12001 coloured12001 = result12001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12002 live12002 coloured12002 = result12002 := by
  rw [tree12002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11992 coloured11992 at child
  try dsimp only [live12002, coloured12002]
  rw [child]
  dsimp only [result11992]
  have child := child1
  unfold live12001 coloured12001 at child
  try dsimp only [live12002, coloured12002]
  rw [child]
  dsimp only [result12001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12003_agree_conditional : tree12003 = literal12003 := by
  rw [tree12003_def]
  rfl
theorem node12003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12003 live12003 coloured12003 = result12003 := by
  rw [tree12003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12004_agree_conditional
    (child0 : tree12002 = literal12002)
    (child1 : tree12003 = literal12003) : tree12004 = literal12004 := by
  rw [tree12004_def, child0, child1]
  rfl
theorem node12004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12002 live12002 coloured12002 = result12002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12003 live12003 coloured12003 = result12003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12004 live12004 coloured12004 = result12004 := by
  rw [tree12004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12002 coloured12002 at child
  try dsimp only [live12004, coloured12004]
  rw [child]
  dsimp only [result12002]
  have child := child1
  unfold live12003 coloured12003 at child
  try dsimp only [live12004, coloured12004]
  rw [child]
  dsimp only [result12003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12005_agree_conditional : tree12005 = literal12005 := by
  rw [tree12005_def]
  rfl
theorem node12005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12005 live12005 coloured12005 = result12005 := by
  rw [tree12005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12006_agree_conditional
    (child0 : tree12004 = literal12004)
    (child1 : tree12005 = literal12005) : tree12006 = literal12006 := by
  rw [tree12006_def, child0, child1]
  rfl
theorem node12006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12004 live12004 coloured12004 = result12004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12005 live12005 coloured12005 = result12005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12006 live12006 coloured12006 = result12006 := by
  rw [tree12006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12004 coloured12004 at child
  try dsimp only [live12006, coloured12006]
  rw [child]
  dsimp only [result12004]
  have child := child1
  unfold live12005 coloured12005 at child
  try dsimp only [live12006, coloured12006]
  rw [child]
  dsimp only [result12005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12007_agree_conditional : tree12007 = literal12007 := by
  rw [tree12007_def]
  rfl
theorem node12007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12007 live12007 coloured12007 = result12007 := by
  rw [tree12007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12008_agree_conditional
    (child0 : tree12006 = literal12006)
    (child1 : tree12007 = literal12007) : tree12008 = literal12008 := by
  rw [tree12008_def, child0, child1]
  rfl
theorem node12008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12006 live12006 coloured12006 = result12006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12007 live12007 coloured12007 = result12007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12008 live12008 coloured12008 = result12008 := by
  rw [tree12008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12006 coloured12006 at child
  try dsimp only [live12008, coloured12008]
  rw [child]
  dsimp only [result12006]
  have child := child1
  unfold live12007 coloured12007 at child
  try dsimp only [live12008, coloured12008]
  rw [child]
  dsimp only [result12007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12009_agree_conditional : tree12009 = literal12009 := by
  rw [tree12009_def]
  rfl
theorem node12009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12009 live12009 coloured12009 = result12009 := by
  rw [tree12009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12010_agree_conditional
    (child0 : tree12008 = literal12008)
    (child1 : tree12009 = literal12009) : tree12010 = literal12010 := by
  rw [tree12010_def, child0, child1]
  rfl
theorem node12010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12008 live12008 coloured12008 = result12008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12009 live12009 coloured12009 = result12009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12010 live12010 coloured12010 = result12010 := by
  rw [tree12010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12008 coloured12008 at child
  try dsimp only [live12010, coloured12010]
  rw [child]
  dsimp only [result12008]
  have child := child1
  unfold live12009 coloured12009 at child
  try dsimp only [live12010, coloured12010]
  rw [child]
  dsimp only [result12009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12011_agree_conditional : tree12011 = literal12011 := by
  rw [tree12011_def]
  rfl
theorem node12011_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12011 live12011 coloured12011 = result12011 := by
  rw [tree12011_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12012_agree_conditional : tree12012 = literal12012 := by
  rw [tree12012_def]
  rfl
theorem node12012_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12012 live12012 coloured12012 = result12012 := by
  rw [tree12012_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12013_agree_conditional
    (child0 : tree12011 = literal12011)
    (child1 : tree12012 = literal12012) : tree12013 = literal12013 := by
  rw [tree12013_def, child0, child1]
  rfl
theorem node12013_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12011 live12011 coloured12011 = result12011)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12012 live12012 coloured12012 = result12012) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12013 live12013 coloured12013 = result12013 := by
  rw [tree12013_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12011 coloured12011 at child
  try dsimp only [live12013, coloured12013]
  rw [child]
  dsimp only [result12011]
  have child := child1
  unfold live12012 coloured12012 at child
  try dsimp only [live12013, coloured12013]
  rw [child]
  dsimp only [result12012]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12014_agree_conditional : tree12014 = literal12014 := by
  rw [tree12014_def]
  rfl
theorem node12014_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12014 live12014 coloured12014 = result12014 := by
  rw [tree12014_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12015_agree_conditional
    (child0 : tree12013 = literal12013)
    (child1 : tree12014 = literal12014) : tree12015 = literal12015 := by
  rw [tree12015_def, child0, child1]
  rfl
theorem node12015_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12013 live12013 coloured12013 = result12013)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12014 live12014 coloured12014 = result12014) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12015 live12015 coloured12015 = result12015 := by
  rw [tree12015_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12013 coloured12013 at child
  try dsimp only [live12015, coloured12015]
  rw [child]
  dsimp only [result12013]
  have child := child1
  unfold live12014 coloured12014 at child
  try dsimp only [live12015, coloured12015]
  rw [child]
  dsimp only [result12014]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12016_agree_conditional : tree12016 = literal12016 := by
  rw [tree12016_def]
  rfl
theorem node12016_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12016 live12016 coloured12016 = result12016 := by
  rw [tree12016_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12017_agree_conditional
    (child0 : tree12015 = literal12015)
    (child1 : tree12016 = literal12016) : tree12017 = literal12017 := by
  rw [tree12017_def, child0, child1]
  rfl
theorem node12017_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12015 live12015 coloured12015 = result12015)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12016 live12016 coloured12016 = result12016) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12017 live12017 coloured12017 = result12017 := by
  rw [tree12017_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12015 coloured12015 at child
  try dsimp only [live12017, coloured12017]
  rw [child]
  dsimp only [result12015]
  have child := child1
  unfold live12016 coloured12016 at child
  try dsimp only [live12017, coloured12017]
  rw [child]
  dsimp only [result12016]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12018_agree_conditional : tree12018 = literal12018 := by
  rw [tree12018_def]
  rfl
theorem node12018_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12018 live12018 coloured12018 = result12018 := by
  rw [tree12018_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12019_agree_conditional
    (child0 : tree12017 = literal12017)
    (child1 : tree12018 = literal12018) : tree12019 = literal12019 := by
  rw [tree12019_def, child0, child1]
  rfl
theorem node12019_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12017 live12017 coloured12017 = result12017)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12018 live12018 coloured12018 = result12018) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12019 live12019 coloured12019 = result12019 := by
  rw [tree12019_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12017 coloured12017 at child
  try dsimp only [live12019, coloured12019]
  rw [child]
  dsimp only [result12017]
  have child := child1
  unfold live12018 coloured12018 at child
  try dsimp only [live12019, coloured12019]
  rw [child]
  dsimp only [result12018]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12020_agree_conditional : tree12020 = literal12020 := by
  rw [tree12020_def]
  rfl
theorem node12020_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12020 live12020 coloured12020 = result12020 := by
  rw [tree12020_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12021_agree_conditional
    (child0 : tree12019 = literal12019)
    (child1 : tree12020 = literal12020) : tree12021 = literal12021 := by
  rw [tree12021_def, child0, child1]
  rfl
theorem node12021_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12019 live12019 coloured12019 = result12019)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12020 live12020 coloured12020 = result12020) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12021 live12021 coloured12021 = result12021 := by
  rw [tree12021_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12019 coloured12019 at child
  try dsimp only [live12021, coloured12021]
  rw [child]
  dsimp only [result12019]
  have child := child1
  unfold live12020 coloured12020 at child
  try dsimp only [live12021, coloured12021]
  rw [child]
  dsimp only [result12020]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12022_agree_conditional
    (child0 : tree12010 = literal12010)
    (child1 : tree12021 = literal12021) : tree12022 = literal12022 := by
  rw [tree12022_def, child0, child1]
  rfl
theorem node12022_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12010 live12010 coloured12010 = result12010)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12021 live12021 coloured12021 = result12021) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12022 live12022 coloured12022 = result12022 := by
  rw [tree12022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12010 coloured12010 at child
  try dsimp only [live12022, coloured12022]
  rw [child]
  dsimp only [result12010]
  have child := child1
  unfold live12021 coloured12021 at child
  try dsimp only [live12022, coloured12022]
  rw [child]
  dsimp only [result12021]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12023_agree_conditional : tree12023 = literal12023 := by
  rw [tree12023_def]
  rfl
theorem node12023_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12023 live12023 coloured12023 = result12023 := by
  rw [tree12023_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12024_agree_conditional
    (child0 : tree12022 = literal12022)
    (child1 : tree12023 = literal12023) : tree12024 = literal12024 := by
  rw [tree12024_def, child0, child1]
  rfl
theorem node12024_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12022 live12022 coloured12022 = result12022)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12023 live12023 coloured12023 = result12023) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12024 live12024 coloured12024 = result12024 := by
  rw [tree12024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12022 coloured12022 at child
  try dsimp only [live12024, coloured12024]
  rw [child]
  dsimp only [result12022]
  have child := child1
  unfold live12023 coloured12023 at child
  try dsimp only [live12024, coloured12024]
  rw [child]
  dsimp only [result12023]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12025_agree_conditional : tree12025 = literal12025 := by
  rw [tree12025_def]
  rfl
theorem node12025_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12025 live12025 coloured12025 = result12025 := by
  rw [tree12025_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12026_agree_conditional
    (child0 : tree12024 = literal12024)
    (child1 : tree12025 = literal12025) : tree12026 = literal12026 := by
  rw [tree12026_def, child0, child1]
  rfl
theorem node12026_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12024 live12024 coloured12024 = result12024)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12025 live12025 coloured12025 = result12025) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12026 live12026 coloured12026 = result12026 := by
  rw [tree12026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12024 coloured12024 at child
  try dsimp only [live12026, coloured12026]
  rw [child]
  dsimp only [result12024]
  have child := child1
  unfold live12025 coloured12025 at child
  try dsimp only [live12026, coloured12026]
  rw [child]
  dsimp only [result12025]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12027_agree_conditional : tree12027 = literal12027 := by
  rw [tree12027_def]
  rfl
theorem node12027_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12027 live12027 coloured12027 = result12027 := by
  rw [tree12027_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12028_agree_conditional
    (child0 : tree12026 = literal12026)
    (child1 : tree12027 = literal12027) : tree12028 = literal12028 := by
  rw [tree12028_def, child0, child1]
  rfl
theorem node12028_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12026 live12026 coloured12026 = result12026)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12027 live12027 coloured12027 = result12027) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12028 live12028 coloured12028 = result12028 := by
  rw [tree12028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12026 coloured12026 at child
  try dsimp only [live12028, coloured12028]
  rw [child]
  dsimp only [result12026]
  have child := child1
  unfold live12027 coloured12027 at child
  try dsimp only [live12028, coloured12028]
  rw [child]
  dsimp only [result12027]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12029_agree_conditional : tree12029 = literal12029 := by
  rw [tree12029_def]
  rfl
theorem node12029_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12029 live12029 coloured12029 = result12029 := by
  rw [tree12029_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12030_agree_conditional
    (child0 : tree12028 = literal12028)
    (child1 : tree12029 = literal12029) : tree12030 = literal12030 := by
  rw [tree12030_def, child0, child1]
  rfl
theorem node12030_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12028 live12028 coloured12028 = result12028)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12029 live12029 coloured12029 = result12029) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12030 live12030 coloured12030 = result12030 := by
  rw [tree12030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12028 coloured12028 at child
  try dsimp only [live12030, coloured12030]
  rw [child]
  dsimp only [result12028]
  have child := child1
  unfold live12029 coloured12029 at child
  try dsimp only [live12030, coloured12030]
  rw [child]
  dsimp only [result12029]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12031_agree_conditional : tree12031 = literal12031 := by
  rw [tree12031_def]
  rfl
theorem node12031_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12031 live12031 coloured12031 = result12031 := by
  rw [tree12031_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12032_agree_conditional
    (child0 : tree12030 = literal12030)
    (child1 : tree12031 = literal12031) : tree12032 = literal12032 := by
  rw [tree12032_def, child0, child1]
  rfl
theorem node12032_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12030 live12030 coloured12030 = result12030)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12031 live12031 coloured12031 = result12031) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12032 live12032 coloured12032 = result12032 := by
  rw [tree12032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12030 coloured12030 at child
  try dsimp only [live12032, coloured12032]
  rw [child]
  dsimp only [result12030]
  have child := child1
  unfold live12031 coloured12031 at child
  try dsimp only [live12032, coloured12032]
  rw [child]
  dsimp only [result12031]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12033_agree_conditional : tree12033 = literal12033 := by
  rw [tree12033_def]
  rfl
theorem node12033_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12033 live12033 coloured12033 = result12033 := by
  rw [tree12033_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree12034_agree_conditional
    (child0 : tree12032 = literal12032)
    (child1 : tree12033 = literal12033) : tree12034 = literal12034 := by
  rw [tree12034_def, child0, child1]
  rfl
theorem node12034_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12032 live12032 coloured12032 = result12032)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12033 live12033 coloured12033 = result12033) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree12034 live12034 coloured12034 = result12034 := by
  rw [tree12034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live12032 coloured12032 at child
  try dsimp only [live12034, coloured12034]
  rw [child]
  dsimp only [result12032]
  have child := child1
  unfold live12033 coloured12033 at child
  try dsimp only [live12034, coloured12034]
  rw [child]
  dsimp only [result12033]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
