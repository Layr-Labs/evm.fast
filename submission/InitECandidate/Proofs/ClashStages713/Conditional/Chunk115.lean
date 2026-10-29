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
theorem tree11040_agree_conditional
    (child0 : tree11038 = literal11038)
    (child1 : tree11039 = literal11039) : tree11040 = literal11040 := by
  rw [tree11040_def, child0, child1]
  rfl
theorem node11040_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11038 live11038 coloured11038 = result11038)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11039 live11039 coloured11039 = result11039) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11040 live11040 coloured11040 = result11040 := by
  rw [tree11040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11038 coloured11038 at child
  try dsimp only [live11040, coloured11040]
  rw [child]
  dsimp only [result11038]
  have child := child1
  unfold live11039 coloured11039 at child
  try dsimp only [live11040, coloured11040]
  rw [child]
  dsimp only [result11039]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11041_agree_conditional : tree11041 = literal11041 := by
  rw [tree11041_def]
  rfl
theorem node11041_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11041 live11041 coloured11041 = result11041 := by
  rw [tree11041_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11042_agree_conditional
    (child0 : tree11040 = literal11040)
    (child1 : tree11041 = literal11041) : tree11042 = literal11042 := by
  rw [tree11042_def, child0, child1]
  rfl
theorem node11042_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11040 live11040 coloured11040 = result11040)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11041 live11041 coloured11041 = result11041) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11042 live11042 coloured11042 = result11042 := by
  rw [tree11042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11040 coloured11040 at child
  try dsimp only [live11042, coloured11042]
  rw [child]
  dsimp only [result11040]
  have child := child1
  unfold live11041 coloured11041 at child
  try dsimp only [live11042, coloured11042]
  rw [child]
  dsimp only [result11041]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11043_agree_conditional : tree11043 = literal11043 := by
  rw [tree11043_def]
  rfl
theorem node11043_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11043 live11043 coloured11043 = result11043 := by
  rw [tree11043_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11044_agree_conditional
    (child0 : tree11042 = literal11042)
    (child1 : tree11043 = literal11043) : tree11044 = literal11044 := by
  rw [tree11044_def, child0, child1]
  rfl
theorem node11044_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11042 live11042 coloured11042 = result11042)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11043 live11043 coloured11043 = result11043) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11044 live11044 coloured11044 = result11044 := by
  rw [tree11044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11042 coloured11042 at child
  try dsimp only [live11044, coloured11044]
  rw [child]
  dsimp only [result11042]
  have child := child1
  unfold live11043 coloured11043 at child
  try dsimp only [live11044, coloured11044]
  rw [child]
  dsimp only [result11043]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11045_agree_conditional : tree11045 = literal11045 := by
  rw [tree11045_def]
  rfl
theorem node11045_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11045 live11045 coloured11045 = result11045 := by
  rw [tree11045_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11046_agree_conditional
    (child0 : tree11044 = literal11044)
    (child1 : tree11045 = literal11045) : tree11046 = literal11046 := by
  rw [tree11046_def, child0, child1]
  rfl
theorem node11046_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11044 live11044 coloured11044 = result11044)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11045 live11045 coloured11045 = result11045) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11046 live11046 coloured11046 = result11046 := by
  rw [tree11046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11044 coloured11044 at child
  try dsimp only [live11046, coloured11046]
  rw [child]
  dsimp only [result11044]
  have child := child1
  unfold live11045 coloured11045 at child
  try dsimp only [live11046, coloured11046]
  rw [child]
  dsimp only [result11045]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11047_agree_conditional : tree11047 = literal11047 := by
  rw [tree11047_def]
  rfl
theorem node11047_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11047 live11047 coloured11047 = result11047 := by
  rw [tree11047_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11048_agree_conditional
    (child0 : tree11046 = literal11046)
    (child1 : tree11047 = literal11047) : tree11048 = literal11048 := by
  rw [tree11048_def, child0, child1]
  rfl
theorem node11048_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11046 live11046 coloured11046 = result11046)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11047 live11047 coloured11047 = result11047) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11048 live11048 coloured11048 = result11048 := by
  rw [tree11048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11046 coloured11046 at child
  try dsimp only [live11048, coloured11048]
  rw [child]
  dsimp only [result11046]
  have child := child1
  unfold live11047 coloured11047 at child
  try dsimp only [live11048, coloured11048]
  rw [child]
  dsimp only [result11047]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11049_agree_conditional : tree11049 = literal11049 := by
  rw [tree11049_def]
  rfl
theorem node11049_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11049 live11049 coloured11049 = result11049 := by
  rw [tree11049_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11050_agree_conditional
    (child0 : tree11048 = literal11048)
    (child1 : tree11049 = literal11049) : tree11050 = literal11050 := by
  rw [tree11050_def, child0, child1]
  rfl
theorem node11050_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11048 live11048 coloured11048 = result11048)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11049 live11049 coloured11049 = result11049) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11050 live11050 coloured11050 = result11050 := by
  rw [tree11050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11048 coloured11048 at child
  try dsimp only [live11050, coloured11050]
  rw [child]
  dsimp only [result11048]
  have child := child1
  unfold live11049 coloured11049 at child
  try dsimp only [live11050, coloured11050]
  rw [child]
  dsimp only [result11049]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11051_agree_conditional : tree11051 = literal11051 := by
  rw [tree11051_def]
  rfl
theorem node11051_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11051 live11051 coloured11051 = result11051 := by
  rw [tree11051_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11052_agree_conditional
    (child0 : tree11050 = literal11050)
    (child1 : tree11051 = literal11051) : tree11052 = literal11052 := by
  rw [tree11052_def, child0, child1]
  rfl
theorem node11052_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11050 live11050 coloured11050 = result11050)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11051 live11051 coloured11051 = result11051) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11052 live11052 coloured11052 = result11052 := by
  rw [tree11052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11050 coloured11050 at child
  try dsimp only [live11052, coloured11052]
  rw [child]
  dsimp only [result11050]
  have child := child1
  unfold live11051 coloured11051 at child
  try dsimp only [live11052, coloured11052]
  rw [child]
  dsimp only [result11051]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11053_agree_conditional : tree11053 = literal11053 := by
  rw [tree11053_def]
  rfl
theorem node11053_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11053 live11053 coloured11053 = result11053 := by
  rw [tree11053_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11054_agree_conditional
    (child0 : tree11052 = literal11052)
    (child1 : tree11053 = literal11053) : tree11054 = literal11054 := by
  rw [tree11054_def, child0, child1]
  rfl
theorem node11054_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11052 live11052 coloured11052 = result11052)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11053 live11053 coloured11053 = result11053) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11054 live11054 coloured11054 = result11054 := by
  rw [tree11054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11052 coloured11052 at child
  try dsimp only [live11054, coloured11054]
  rw [child]
  dsimp only [result11052]
  have child := child1
  unfold live11053 coloured11053 at child
  try dsimp only [live11054, coloured11054]
  rw [child]
  dsimp only [result11053]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11055_agree_conditional : tree11055 = literal11055 := by
  rw [tree11055_def]
  rfl
theorem node11055_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11055 live11055 coloured11055 = result11055 := by
  rw [tree11055_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11056_agree_conditional
    (child0 : tree11054 = literal11054)
    (child1 : tree11055 = literal11055) : tree11056 = literal11056 := by
  rw [tree11056_def, child0, child1]
  rfl
theorem node11056_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11054 live11054 coloured11054 = result11054)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11055 live11055 coloured11055 = result11055) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11056 live11056 coloured11056 = result11056 := by
  rw [tree11056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11054 coloured11054 at child
  try dsimp only [live11056, coloured11056]
  rw [child]
  dsimp only [result11054]
  have child := child1
  unfold live11055 coloured11055 at child
  try dsimp only [live11056, coloured11056]
  rw [child]
  dsimp only [result11055]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11057_agree_conditional : tree11057 = literal11057 := by
  rw [tree11057_def]
  rfl
theorem node11057_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11057 live11057 coloured11057 = result11057 := by
  rw [tree11057_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11058_agree_conditional
    (child0 : tree11056 = literal11056)
    (child1 : tree11057 = literal11057) : tree11058 = literal11058 := by
  rw [tree11058_def, child0, child1]
  rfl
theorem node11058_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11056 live11056 coloured11056 = result11056)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11057 live11057 coloured11057 = result11057) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11058 live11058 coloured11058 = result11058 := by
  rw [tree11058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11056 coloured11056 at child
  try dsimp only [live11058, coloured11058]
  rw [child]
  dsimp only [result11056]
  have child := child1
  unfold live11057 coloured11057 at child
  try dsimp only [live11058, coloured11058]
  rw [child]
  dsimp only [result11057]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11059_agree_conditional : tree11059 = literal11059 := by
  rw [tree11059_def]
  rfl
theorem node11059_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11059 live11059 coloured11059 = result11059 := by
  rw [tree11059_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11060_agree_conditional
    (child0 : tree11058 = literal11058)
    (child1 : tree11059 = literal11059) : tree11060 = literal11060 := by
  rw [tree11060_def, child0, child1]
  rfl
theorem node11060_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11058 live11058 coloured11058 = result11058)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11059 live11059 coloured11059 = result11059) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11060 live11060 coloured11060 = result11060 := by
  rw [tree11060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11058 coloured11058 at child
  try dsimp only [live11060, coloured11060]
  rw [child]
  dsimp only [result11058]
  have child := child1
  unfold live11059 coloured11059 at child
  try dsimp only [live11060, coloured11060]
  rw [child]
  dsimp only [result11059]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11061_agree_conditional : tree11061 = literal11061 := by
  rw [tree11061_def]
  rfl
theorem node11061_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11061 live11061 coloured11061 = result11061 := by
  rw [tree11061_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11062_agree_conditional
    (child0 : tree11060 = literal11060)
    (child1 : tree11061 = literal11061) : tree11062 = literal11062 := by
  rw [tree11062_def, child0, child1]
  rfl
theorem node11062_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11060 live11060 coloured11060 = result11060)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11061 live11061 coloured11061 = result11061) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11062 live11062 coloured11062 = result11062 := by
  rw [tree11062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11060 coloured11060 at child
  try dsimp only [live11062, coloured11062]
  rw [child]
  dsimp only [result11060]
  have child := child1
  unfold live11061 coloured11061 at child
  try dsimp only [live11062, coloured11062]
  rw [child]
  dsimp only [result11061]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11063_agree_conditional : tree11063 = literal11063 := by
  rw [tree11063_def]
  rfl
theorem node11063_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11063 live11063 coloured11063 = result11063 := by
  rw [tree11063_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11064_agree_conditional
    (child0 : tree11062 = literal11062)
    (child1 : tree11063 = literal11063) : tree11064 = literal11064 := by
  rw [tree11064_def, child0, child1]
  rfl
theorem node11064_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11062 live11062 coloured11062 = result11062)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11063 live11063 coloured11063 = result11063) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11064 live11064 coloured11064 = result11064 := by
  rw [tree11064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11062 coloured11062 at child
  try dsimp only [live11064, coloured11064]
  rw [child]
  dsimp only [result11062]
  have child := child1
  unfold live11063 coloured11063 at child
  try dsimp only [live11064, coloured11064]
  rw [child]
  dsimp only [result11063]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11065_agree_conditional : tree11065 = literal11065 := by
  rw [tree11065_def]
  rfl
theorem node11065_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11065 live11065 coloured11065 = result11065 := by
  rw [tree11065_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11066_agree_conditional
    (child0 : tree11064 = literal11064)
    (child1 : tree11065 = literal11065) : tree11066 = literal11066 := by
  rw [tree11066_def, child0, child1]
  rfl
theorem node11066_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11064 live11064 coloured11064 = result11064)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11065 live11065 coloured11065 = result11065) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11066 live11066 coloured11066 = result11066 := by
  rw [tree11066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11064 coloured11064 at child
  try dsimp only [live11066, coloured11066]
  rw [child]
  dsimp only [result11064]
  have child := child1
  unfold live11065 coloured11065 at child
  try dsimp only [live11066, coloured11066]
  rw [child]
  dsimp only [result11065]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11067_agree_conditional : tree11067 = literal11067 := by
  rw [tree11067_def]
  rfl
theorem node11067_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11067 live11067 coloured11067 = result11067 := by
  rw [tree11067_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11068_agree_conditional
    (child0 : tree11066 = literal11066)
    (child1 : tree11067 = literal11067) : tree11068 = literal11068 := by
  rw [tree11068_def, child0, child1]
  rfl
theorem node11068_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11066 live11066 coloured11066 = result11066)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11067 live11067 coloured11067 = result11067) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11068 live11068 coloured11068 = result11068 := by
  rw [tree11068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11066 coloured11066 at child
  try dsimp only [live11068, coloured11068]
  rw [child]
  dsimp only [result11066]
  have child := child1
  unfold live11067 coloured11067 at child
  try dsimp only [live11068, coloured11068]
  rw [child]
  dsimp only [result11067]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11069_agree_conditional : tree11069 = literal11069 := by
  rw [tree11069_def]
  rfl
theorem node11069_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11069 live11069 coloured11069 = result11069 := by
  rw [tree11069_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11070_agree_conditional
    (child0 : tree11068 = literal11068)
    (child1 : tree11069 = literal11069) : tree11070 = literal11070 := by
  rw [tree11070_def, child0, child1]
  rfl
theorem node11070_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11068 live11068 coloured11068 = result11068)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11069 live11069 coloured11069 = result11069) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11070 live11070 coloured11070 = result11070 := by
  rw [tree11070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11068 coloured11068 at child
  try dsimp only [live11070, coloured11070]
  rw [child]
  dsimp only [result11068]
  have child := child1
  unfold live11069 coloured11069 at child
  try dsimp only [live11070, coloured11070]
  rw [child]
  dsimp only [result11069]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11071_agree_conditional : tree11071 = literal11071 := by
  rw [tree11071_def]
  rfl
theorem node11071_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11071 live11071 coloured11071 = result11071 := by
  rw [tree11071_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11072_agree_conditional
    (child0 : tree11070 = literal11070)
    (child1 : tree11071 = literal11071) : tree11072 = literal11072 := by
  rw [tree11072_def, child0, child1]
  rfl
theorem node11072_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11070 live11070 coloured11070 = result11070)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11071 live11071 coloured11071 = result11071) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11072 live11072 coloured11072 = result11072 := by
  rw [tree11072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11070 coloured11070 at child
  try dsimp only [live11072, coloured11072]
  rw [child]
  dsimp only [result11070]
  have child := child1
  unfold live11071 coloured11071 at child
  try dsimp only [live11072, coloured11072]
  rw [child]
  dsimp only [result11071]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11073_agree_conditional : tree11073 = literal11073 := by
  rw [tree11073_def]
  rfl
theorem node11073_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11073 live11073 coloured11073 = result11073 := by
  rw [tree11073_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11074_agree_conditional
    (child0 : tree11072 = literal11072)
    (child1 : tree11073 = literal11073) : tree11074 = literal11074 := by
  rw [tree11074_def, child0, child1]
  rfl
theorem node11074_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11072 live11072 coloured11072 = result11072)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11073 live11073 coloured11073 = result11073) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11074 live11074 coloured11074 = result11074 := by
  rw [tree11074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11072 coloured11072 at child
  try dsimp only [live11074, coloured11074]
  rw [child]
  dsimp only [result11072]
  have child := child1
  unfold live11073 coloured11073 at child
  try dsimp only [live11074, coloured11074]
  rw [child]
  dsimp only [result11073]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11075_agree_conditional : tree11075 = literal11075 := by
  rw [tree11075_def]
  rfl
theorem node11075_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11075 live11075 coloured11075 = result11075 := by
  rw [tree11075_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11076_agree_conditional
    (child0 : tree11074 = literal11074)
    (child1 : tree11075 = literal11075) : tree11076 = literal11076 := by
  rw [tree11076_def, child0, child1]
  rfl
theorem node11076_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11074 live11074 coloured11074 = result11074)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11075 live11075 coloured11075 = result11075) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11076 live11076 coloured11076 = result11076 := by
  rw [tree11076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11074 coloured11074 at child
  try dsimp only [live11076, coloured11076]
  rw [child]
  dsimp only [result11074]
  have child := child1
  unfold live11075 coloured11075 at child
  try dsimp only [live11076, coloured11076]
  rw [child]
  dsimp only [result11075]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11077_agree_conditional : tree11077 = literal11077 := by
  rw [tree11077_def]
  rfl
theorem node11077_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11077 live11077 coloured11077 = result11077 := by
  rw [tree11077_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11078_agree_conditional
    (child0 : tree11076 = literal11076)
    (child1 : tree11077 = literal11077) : tree11078 = literal11078 := by
  rw [tree11078_def, child0, child1]
  rfl
theorem node11078_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11076 live11076 coloured11076 = result11076)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11077 live11077 coloured11077 = result11077) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11078 live11078 coloured11078 = result11078 := by
  rw [tree11078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11076 coloured11076 at child
  try dsimp only [live11078, coloured11078]
  rw [child]
  dsimp only [result11076]
  have child := child1
  unfold live11077 coloured11077 at child
  try dsimp only [live11078, coloured11078]
  rw [child]
  dsimp only [result11077]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11079_agree_conditional : tree11079 = literal11079 := by
  rw [tree11079_def]
  rfl
theorem node11079_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11079 live11079 coloured11079 = result11079 := by
  rw [tree11079_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11080_agree_conditional
    (child0 : tree11078 = literal11078)
    (child1 : tree11079 = literal11079) : tree11080 = literal11080 := by
  rw [tree11080_def, child0, child1]
  rfl
theorem node11080_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11078 live11078 coloured11078 = result11078)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11079 live11079 coloured11079 = result11079) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11080 live11080 coloured11080 = result11080 := by
  rw [tree11080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11078 coloured11078 at child
  try dsimp only [live11080, coloured11080]
  rw [child]
  dsimp only [result11078]
  have child := child1
  unfold live11079 coloured11079 at child
  try dsimp only [live11080, coloured11080]
  rw [child]
  dsimp only [result11079]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11081_agree_conditional : tree11081 = literal11081 := by
  rw [tree11081_def]
  rfl
theorem node11081_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11081 live11081 coloured11081 = result11081 := by
  rw [tree11081_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11082_agree_conditional
    (child0 : tree11080 = literal11080)
    (child1 : tree11081 = literal11081) : tree11082 = literal11082 := by
  rw [tree11082_def, child0, child1]
  rfl
theorem node11082_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11080 live11080 coloured11080 = result11080)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11081 live11081 coloured11081 = result11081) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11082 live11082 coloured11082 = result11082 := by
  rw [tree11082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11080 coloured11080 at child
  try dsimp only [live11082, coloured11082]
  rw [child]
  dsimp only [result11080]
  have child := child1
  unfold live11081 coloured11081 at child
  try dsimp only [live11082, coloured11082]
  rw [child]
  dsimp only [result11081]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11083_agree_conditional : tree11083 = literal11083 := by
  rw [tree11083_def]
  rfl
theorem node11083_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11083 live11083 coloured11083 = result11083 := by
  rw [tree11083_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11084_agree_conditional
    (child0 : tree11082 = literal11082)
    (child1 : tree11083 = literal11083) : tree11084 = literal11084 := by
  rw [tree11084_def, child0, child1]
  rfl
theorem node11084_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11082 live11082 coloured11082 = result11082)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11083 live11083 coloured11083 = result11083) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11084 live11084 coloured11084 = result11084 := by
  rw [tree11084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11082 coloured11082 at child
  try dsimp only [live11084, coloured11084]
  rw [child]
  dsimp only [result11082]
  have child := child1
  unfold live11083 coloured11083 at child
  try dsimp only [live11084, coloured11084]
  rw [child]
  dsimp only [result11083]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11085_agree_conditional : tree11085 = literal11085 := by
  rw [tree11085_def]
  rfl
theorem node11085_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11085 live11085 coloured11085 = result11085 := by
  rw [tree11085_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11086_agree_conditional
    (child0 : tree11084 = literal11084)
    (child1 : tree11085 = literal11085) : tree11086 = literal11086 := by
  rw [tree11086_def, child0, child1]
  rfl
theorem node11086_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11084 live11084 coloured11084 = result11084)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11085 live11085 coloured11085 = result11085) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11086 live11086 coloured11086 = result11086 := by
  rw [tree11086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11084 coloured11084 at child
  try dsimp only [live11086, coloured11086]
  rw [child]
  dsimp only [result11084]
  have child := child1
  unfold live11085 coloured11085 at child
  try dsimp only [live11086, coloured11086]
  rw [child]
  dsimp only [result11085]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11087_agree_conditional : tree11087 = literal11087 := by
  rw [tree11087_def]
  rfl
theorem node11087_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11087 live11087 coloured11087 = result11087 := by
  rw [tree11087_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11088_agree_conditional
    (child0 : tree11086 = literal11086)
    (child1 : tree11087 = literal11087) : tree11088 = literal11088 := by
  rw [tree11088_def, child0, child1]
  rfl
theorem node11088_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11086 live11086 coloured11086 = result11086)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11087 live11087 coloured11087 = result11087) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11088 live11088 coloured11088 = result11088 := by
  rw [tree11088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11086 coloured11086 at child
  try dsimp only [live11088, coloured11088]
  rw [child]
  dsimp only [result11086]
  have child := child1
  unfold live11087 coloured11087 at child
  try dsimp only [live11088, coloured11088]
  rw [child]
  dsimp only [result11087]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11089_agree_conditional : tree11089 = literal11089 := by
  rw [tree11089_def]
  rfl
theorem node11089_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11089 live11089 coloured11089 = result11089 := by
  rw [tree11089_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11090_agree_conditional
    (child0 : tree11088 = literal11088)
    (child1 : tree11089 = literal11089) : tree11090 = literal11090 := by
  rw [tree11090_def, child0, child1]
  rfl
theorem node11090_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11088 live11088 coloured11088 = result11088)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11089 live11089 coloured11089 = result11089) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11090 live11090 coloured11090 = result11090 := by
  rw [tree11090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11088 coloured11088 at child
  try dsimp only [live11090, coloured11090]
  rw [child]
  dsimp only [result11088]
  have child := child1
  unfold live11089 coloured11089 at child
  try dsimp only [live11090, coloured11090]
  rw [child]
  dsimp only [result11089]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11091_agree_conditional : tree11091 = literal11091 := by
  rw [tree11091_def]
  rfl
theorem node11091_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11091 live11091 coloured11091 = result11091 := by
  rw [tree11091_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11092_agree_conditional
    (child0 : tree11090 = literal11090)
    (child1 : tree11091 = literal11091) : tree11092 = literal11092 := by
  rw [tree11092_def, child0, child1]
  rfl
theorem node11092_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11090 live11090 coloured11090 = result11090)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11091 live11091 coloured11091 = result11091) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11092 live11092 coloured11092 = result11092 := by
  rw [tree11092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11090 coloured11090 at child
  try dsimp only [live11092, coloured11092]
  rw [child]
  dsimp only [result11090]
  have child := child1
  unfold live11091 coloured11091 at child
  try dsimp only [live11092, coloured11092]
  rw [child]
  dsimp only [result11091]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11093_agree_conditional : tree11093 = literal11093 := by
  rw [tree11093_def]
  rfl
theorem node11093_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11093 live11093 coloured11093 = result11093 := by
  rw [tree11093_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11094_agree_conditional
    (child0 : tree11092 = literal11092)
    (child1 : tree11093 = literal11093) : tree11094 = literal11094 := by
  rw [tree11094_def, child0, child1]
  rfl
theorem node11094_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11092 live11092 coloured11092 = result11092)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11093 live11093 coloured11093 = result11093) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11094 live11094 coloured11094 = result11094 := by
  rw [tree11094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11092 coloured11092 at child
  try dsimp only [live11094, coloured11094]
  rw [child]
  dsimp only [result11092]
  have child := child1
  unfold live11093 coloured11093 at child
  try dsimp only [live11094, coloured11094]
  rw [child]
  dsimp only [result11093]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11095_agree_conditional : tree11095 = literal11095 := by
  rw [tree11095_def]
  rfl
theorem node11095_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11095 live11095 coloured11095 = result11095 := by
  rw [tree11095_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11096_agree_conditional
    (child0 : tree11094 = literal11094)
    (child1 : tree11095 = literal11095) : tree11096 = literal11096 := by
  rw [tree11096_def, child0, child1]
  rfl
theorem node11096_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11094 live11094 coloured11094 = result11094)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11095 live11095 coloured11095 = result11095) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11096 live11096 coloured11096 = result11096 := by
  rw [tree11096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11094 coloured11094 at child
  try dsimp only [live11096, coloured11096]
  rw [child]
  dsimp only [result11094]
  have child := child1
  unfold live11095 coloured11095 at child
  try dsimp only [live11096, coloured11096]
  rw [child]
  dsimp only [result11095]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11097_agree_conditional : tree11097 = literal11097 := by
  rw [tree11097_def]
  rfl
theorem node11097_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11097 live11097 coloured11097 = result11097 := by
  rw [tree11097_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11098_agree_conditional
    (child0 : tree11096 = literal11096)
    (child1 : tree11097 = literal11097) : tree11098 = literal11098 := by
  rw [tree11098_def, child0, child1]
  rfl
theorem node11098_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11096 live11096 coloured11096 = result11096)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11097 live11097 coloured11097 = result11097) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11098 live11098 coloured11098 = result11098 := by
  rw [tree11098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11096 coloured11096 at child
  try dsimp only [live11098, coloured11098]
  rw [child]
  dsimp only [result11096]
  have child := child1
  unfold live11097 coloured11097 at child
  try dsimp only [live11098, coloured11098]
  rw [child]
  dsimp only [result11097]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11099_agree_conditional : tree11099 = literal11099 := by
  rw [tree11099_def]
  rfl
theorem node11099_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11099 live11099 coloured11099 = result11099 := by
  rw [tree11099_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11100_agree_conditional
    (child0 : tree11098 = literal11098)
    (child1 : tree11099 = literal11099) : tree11100 = literal11100 := by
  rw [tree11100_def, child0, child1]
  rfl
theorem node11100_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11098 live11098 coloured11098 = result11098)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11099 live11099 coloured11099 = result11099) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11100 live11100 coloured11100 = result11100 := by
  rw [tree11100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11098 coloured11098 at child
  try dsimp only [live11100, coloured11100]
  rw [child]
  dsimp only [result11098]
  have child := child1
  unfold live11099 coloured11099 at child
  try dsimp only [live11100, coloured11100]
  rw [child]
  dsimp only [result11099]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11101_agree_conditional : tree11101 = literal11101 := by
  rw [tree11101_def]
  rfl
theorem node11101_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11101 live11101 coloured11101 = result11101 := by
  rw [tree11101_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11102_agree_conditional
    (child0 : tree11100 = literal11100)
    (child1 : tree11101 = literal11101) : tree11102 = literal11102 := by
  rw [tree11102_def, child0, child1]
  rfl
theorem node11102_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11100 live11100 coloured11100 = result11100)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11101 live11101 coloured11101 = result11101) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11102 live11102 coloured11102 = result11102 := by
  rw [tree11102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11100 coloured11100 at child
  try dsimp only [live11102, coloured11102]
  rw [child]
  dsimp only [result11100]
  have child := child1
  unfold live11101 coloured11101 at child
  try dsimp only [live11102, coloured11102]
  rw [child]
  dsimp only [result11101]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11103_agree_conditional : tree11103 = literal11103 := by
  rw [tree11103_def]
  rfl
theorem node11103_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11103 live11103 coloured11103 = result11103 := by
  rw [tree11103_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11104_agree_conditional
    (child0 : tree11102 = literal11102)
    (child1 : tree11103 = literal11103) : tree11104 = literal11104 := by
  rw [tree11104_def, child0, child1]
  rfl
theorem node11104_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11102 live11102 coloured11102 = result11102)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11103 live11103 coloured11103 = result11103) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11104 live11104 coloured11104 = result11104 := by
  rw [tree11104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11102 coloured11102 at child
  try dsimp only [live11104, coloured11104]
  rw [child]
  dsimp only [result11102]
  have child := child1
  unfold live11103 coloured11103 at child
  try dsimp only [live11104, coloured11104]
  rw [child]
  dsimp only [result11103]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11105_agree_conditional : tree11105 = literal11105 := by
  rw [tree11105_def]
  rfl
theorem node11105_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11105 live11105 coloured11105 = result11105 := by
  rw [tree11105_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11106_agree_conditional
    (child0 : tree11104 = literal11104)
    (child1 : tree11105 = literal11105) : tree11106 = literal11106 := by
  rw [tree11106_def, child0, child1]
  rfl
theorem node11106_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11104 live11104 coloured11104 = result11104)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11105 live11105 coloured11105 = result11105) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11106 live11106 coloured11106 = result11106 := by
  rw [tree11106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11104 coloured11104 at child
  try dsimp only [live11106, coloured11106]
  rw [child]
  dsimp only [result11104]
  have child := child1
  unfold live11105 coloured11105 at child
  try dsimp only [live11106, coloured11106]
  rw [child]
  dsimp only [result11105]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11107_agree_conditional : tree11107 = literal11107 := by
  rw [tree11107_def]
  rfl
theorem node11107_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11107 live11107 coloured11107 = result11107 := by
  rw [tree11107_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11108_agree_conditional
    (child0 : tree11106 = literal11106)
    (child1 : tree11107 = literal11107) : tree11108 = literal11108 := by
  rw [tree11108_def, child0, child1]
  rfl
theorem node11108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11106 live11106 coloured11106 = result11106)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11107 live11107 coloured11107 = result11107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11108 live11108 coloured11108 = result11108 := by
  rw [tree11108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11106 coloured11106 at child
  try dsimp only [live11108, coloured11108]
  rw [child]
  dsimp only [result11106]
  have child := child1
  unfold live11107 coloured11107 at child
  try dsimp only [live11108, coloured11108]
  rw [child]
  dsimp only [result11107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11109_agree_conditional : tree11109 = literal11109 := by
  rw [tree11109_def]
  rfl
theorem node11109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11109 live11109 coloured11109 = result11109 := by
  rw [tree11109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11110_agree_conditional
    (child0 : tree11108 = literal11108)
    (child1 : tree11109 = literal11109) : tree11110 = literal11110 := by
  rw [tree11110_def, child0, child1]
  rfl
theorem node11110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11108 live11108 coloured11108 = result11108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11109 live11109 coloured11109 = result11109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11110 live11110 coloured11110 = result11110 := by
  rw [tree11110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11108 coloured11108 at child
  try dsimp only [live11110, coloured11110]
  rw [child]
  dsimp only [result11108]
  have child := child1
  unfold live11109 coloured11109 at child
  try dsimp only [live11110, coloured11110]
  rw [child]
  dsimp only [result11109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11111_agree_conditional : tree11111 = literal11111 := by
  rw [tree11111_def]
  rfl
theorem node11111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11111 live11111 coloured11111 = result11111 := by
  rw [tree11111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11112_agree_conditional
    (child0 : tree11110 = literal11110)
    (child1 : tree11111 = literal11111) : tree11112 = literal11112 := by
  rw [tree11112_def, child0, child1]
  rfl
theorem node11112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11110 live11110 coloured11110 = result11110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11111 live11111 coloured11111 = result11111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11112 live11112 coloured11112 = result11112 := by
  rw [tree11112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11110 coloured11110 at child
  try dsimp only [live11112, coloured11112]
  rw [child]
  dsimp only [result11110]
  have child := child1
  unfold live11111 coloured11111 at child
  try dsimp only [live11112, coloured11112]
  rw [child]
  dsimp only [result11111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11113_agree_conditional : tree11113 = literal11113 := by
  rw [tree11113_def]
  rfl
theorem node11113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11113 live11113 coloured11113 = result11113 := by
  rw [tree11113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11114_agree_conditional
    (child0 : tree11112 = literal11112)
    (child1 : tree11113 = literal11113) : tree11114 = literal11114 := by
  rw [tree11114_def, child0, child1]
  rfl
theorem node11114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11112 live11112 coloured11112 = result11112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11113 live11113 coloured11113 = result11113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11114 live11114 coloured11114 = result11114 := by
  rw [tree11114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11112 coloured11112 at child
  try dsimp only [live11114, coloured11114]
  rw [child]
  dsimp only [result11112]
  have child := child1
  unfold live11113 coloured11113 at child
  try dsimp only [live11114, coloured11114]
  rw [child]
  dsimp only [result11113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11115_agree_conditional : tree11115 = literal11115 := by
  rw [tree11115_def]
  rfl
theorem node11115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11115 live11115 coloured11115 = result11115 := by
  rw [tree11115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11116_agree_conditional
    (child0 : tree11114 = literal11114)
    (child1 : tree11115 = literal11115) : tree11116 = literal11116 := by
  rw [tree11116_def, child0, child1]
  rfl
theorem node11116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11114 live11114 coloured11114 = result11114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11115 live11115 coloured11115 = result11115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11116 live11116 coloured11116 = result11116 := by
  rw [tree11116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11114 coloured11114 at child
  try dsimp only [live11116, coloured11116]
  rw [child]
  dsimp only [result11114]
  have child := child1
  unfold live11115 coloured11115 at child
  try dsimp only [live11116, coloured11116]
  rw [child]
  dsimp only [result11115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11117_agree_conditional : tree11117 = literal11117 := by
  rw [tree11117_def]
  rfl
theorem node11117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11117 live11117 coloured11117 = result11117 := by
  rw [tree11117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11118_agree_conditional
    (child0 : tree11116 = literal11116)
    (child1 : tree11117 = literal11117) : tree11118 = literal11118 := by
  rw [tree11118_def, child0, child1]
  rfl
theorem node11118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11116 live11116 coloured11116 = result11116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11117 live11117 coloured11117 = result11117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11118 live11118 coloured11118 = result11118 := by
  rw [tree11118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11116 coloured11116 at child
  try dsimp only [live11118, coloured11118]
  rw [child]
  dsimp only [result11116]
  have child := child1
  unfold live11117 coloured11117 at child
  try dsimp only [live11118, coloured11118]
  rw [child]
  dsimp only [result11117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11119_agree_conditional : tree11119 = literal11119 := by
  rw [tree11119_def]
  rfl
theorem node11119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11119 live11119 coloured11119 = result11119 := by
  rw [tree11119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11120_agree_conditional
    (child0 : tree11118 = literal11118)
    (child1 : tree11119 = literal11119) : tree11120 = literal11120 := by
  rw [tree11120_def, child0, child1]
  rfl
theorem node11120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11118 live11118 coloured11118 = result11118)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11119 live11119 coloured11119 = result11119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11120 live11120 coloured11120 = result11120 := by
  rw [tree11120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11118 coloured11118 at child
  try dsimp only [live11120, coloured11120]
  rw [child]
  dsimp only [result11118]
  have child := child1
  unfold live11119 coloured11119 at child
  try dsimp only [live11120, coloured11120]
  rw [child]
  dsimp only [result11119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11121_agree_conditional : tree11121 = literal11121 := by
  rw [tree11121_def]
  rfl
theorem node11121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11121 live11121 coloured11121 = result11121 := by
  rw [tree11121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11122_agree_conditional
    (child0 : tree11120 = literal11120)
    (child1 : tree11121 = literal11121) : tree11122 = literal11122 := by
  rw [tree11122_def, child0, child1]
  rfl
theorem node11122_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11120 live11120 coloured11120 = result11120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11121 live11121 coloured11121 = result11121) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11122 live11122 coloured11122 = result11122 := by
  rw [tree11122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11120 coloured11120 at child
  try dsimp only [live11122, coloured11122]
  rw [child]
  dsimp only [result11120]
  have child := child1
  unfold live11121 coloured11121 at child
  try dsimp only [live11122, coloured11122]
  rw [child]
  dsimp only [result11121]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11123_agree_conditional : tree11123 = literal11123 := by
  rw [tree11123_def]
  rfl
theorem node11123_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11123 live11123 coloured11123 = result11123 := by
  rw [tree11123_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11124_agree_conditional
    (child0 : tree11122 = literal11122)
    (child1 : tree11123 = literal11123) : tree11124 = literal11124 := by
  rw [tree11124_def, child0, child1]
  rfl
theorem node11124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11122 live11122 coloured11122 = result11122)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11123 live11123 coloured11123 = result11123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11124 live11124 coloured11124 = result11124 := by
  rw [tree11124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11122 coloured11122 at child
  try dsimp only [live11124, coloured11124]
  rw [child]
  dsimp only [result11122]
  have child := child1
  unfold live11123 coloured11123 at child
  try dsimp only [live11124, coloured11124]
  rw [child]
  dsimp only [result11123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11125_agree_conditional : tree11125 = literal11125 := by
  rw [tree11125_def]
  rfl
theorem node11125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11125 live11125 coloured11125 = result11125 := by
  rw [tree11125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11126_agree_conditional
    (child0 : tree11124 = literal11124)
    (child1 : tree11125 = literal11125) : tree11126 = literal11126 := by
  rw [tree11126_def, child0, child1]
  rfl
theorem node11126_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11124 live11124 coloured11124 = result11124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11125 live11125 coloured11125 = result11125) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11126 live11126 coloured11126 = result11126 := by
  rw [tree11126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11124 coloured11124 at child
  try dsimp only [live11126, coloured11126]
  rw [child]
  dsimp only [result11124]
  have child := child1
  unfold live11125 coloured11125 at child
  try dsimp only [live11126, coloured11126]
  rw [child]
  dsimp only [result11125]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11127_agree_conditional : tree11127 = literal11127 := by
  rw [tree11127_def]
  rfl
theorem node11127_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11127 live11127 coloured11127 = result11127 := by
  rw [tree11127_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11128_agree_conditional
    (child0 : tree11126 = literal11126)
    (child1 : tree11127 = literal11127) : tree11128 = literal11128 := by
  rw [tree11128_def, child0, child1]
  rfl
theorem node11128_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11126 live11126 coloured11126 = result11126)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11127 live11127 coloured11127 = result11127) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11128 live11128 coloured11128 = result11128 := by
  rw [tree11128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11126 coloured11126 at child
  try dsimp only [live11128, coloured11128]
  rw [child]
  dsimp only [result11126]
  have child := child1
  unfold live11127 coloured11127 at child
  try dsimp only [live11128, coloured11128]
  rw [child]
  dsimp only [result11127]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11129_agree_conditional : tree11129 = literal11129 := by
  rw [tree11129_def]
  rfl
theorem node11129_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11129 live11129 coloured11129 = result11129 := by
  rw [tree11129_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11130_agree_conditional
    (child0 : tree11128 = literal11128)
    (child1 : tree11129 = literal11129) : tree11130 = literal11130 := by
  rw [tree11130_def, child0, child1]
  rfl
theorem node11130_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11128 live11128 coloured11128 = result11128)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11129 live11129 coloured11129 = result11129) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11130 live11130 coloured11130 = result11130 := by
  rw [tree11130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11128 coloured11128 at child
  try dsimp only [live11130, coloured11130]
  rw [child]
  dsimp only [result11128]
  have child := child1
  unfold live11129 coloured11129 at child
  try dsimp only [live11130, coloured11130]
  rw [child]
  dsimp only [result11129]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11131_agree_conditional : tree11131 = literal11131 := by
  rw [tree11131_def]
  rfl
theorem node11131_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11131 live11131 coloured11131 = result11131 := by
  rw [tree11131_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11132_agree_conditional
    (child0 : tree11130 = literal11130)
    (child1 : tree11131 = literal11131) : tree11132 = literal11132 := by
  rw [tree11132_def, child0, child1]
  rfl
theorem node11132_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11130 live11130 coloured11130 = result11130)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11131 live11131 coloured11131 = result11131) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11132 live11132 coloured11132 = result11132 := by
  rw [tree11132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11130 coloured11130 at child
  try dsimp only [live11132, coloured11132]
  rw [child]
  dsimp only [result11130]
  have child := child1
  unfold live11131 coloured11131 at child
  try dsimp only [live11132, coloured11132]
  rw [child]
  dsimp only [result11131]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11133_agree_conditional : tree11133 = literal11133 := by
  rw [tree11133_def]
  rfl
theorem node11133_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11133 live11133 coloured11133 = result11133 := by
  rw [tree11133_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11134_agree_conditional
    (child0 : tree11132 = literal11132)
    (child1 : tree11133 = literal11133) : tree11134 = literal11134 := by
  rw [tree11134_def, child0, child1]
  rfl
theorem node11134_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11132 live11132 coloured11132 = result11132)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11133 live11133 coloured11133 = result11133) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11134 live11134 coloured11134 = result11134 := by
  rw [tree11134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11132 coloured11132 at child
  try dsimp only [live11134, coloured11134]
  rw [child]
  dsimp only [result11132]
  have child := child1
  unfold live11133 coloured11133 at child
  try dsimp only [live11134, coloured11134]
  rw [child]
  dsimp only [result11133]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11135_agree_conditional : tree11135 = literal11135 := by
  rw [tree11135_def]
  rfl
theorem node11135_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11135 live11135 coloured11135 = result11135 := by
  rw [tree11135_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
