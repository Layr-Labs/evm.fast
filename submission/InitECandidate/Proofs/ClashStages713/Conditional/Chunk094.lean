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
theorem tree9024_agree_conditional
    (child0 : tree9022 = literal9022)
    (child1 : tree9023 = literal9023) : tree9024 = literal9024 := by
  rw [tree9024_def, child0, child1]
  rfl
theorem node9024_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9022 live9022 coloured9022 = result9022)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9023 live9023 coloured9023 = result9023) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9024 live9024 coloured9024 = result9024 := by
  rw [tree9024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9022 coloured9022 at child
  try dsimp only [live9024, coloured9024]
  rw [child]
  dsimp only [result9022]
  have child := child1
  unfold live9023 coloured9023 at child
  try dsimp only [live9024, coloured9024]
  rw [child]
  dsimp only [result9023]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9025_agree_conditional : tree9025 = literal9025 := by
  rw [tree9025_def]
  rfl
theorem node9025_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9025 live9025 coloured9025 = result9025 := by
  rw [tree9025_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9026_agree_conditional
    (child0 : tree9024 = literal9024)
    (child1 : tree9025 = literal9025) : tree9026 = literal9026 := by
  rw [tree9026_def, child0, child1]
  rfl
theorem node9026_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9024 live9024 coloured9024 = result9024)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9025 live9025 coloured9025 = result9025) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9026 live9026 coloured9026 = result9026 := by
  rw [tree9026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9024 coloured9024 at child
  try dsimp only [live9026, coloured9026]
  rw [child]
  dsimp only [result9024]
  have child := child1
  unfold live9025 coloured9025 at child
  try dsimp only [live9026, coloured9026]
  rw [child]
  dsimp only [result9025]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9027_agree_conditional : tree9027 = literal9027 := by
  rw [tree9027_def]
  rfl
theorem node9027_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9027 live9027 coloured9027 = result9027 := by
  rw [tree9027_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9028_agree_conditional
    (child0 : tree9026 = literal9026)
    (child1 : tree9027 = literal9027) : tree9028 = literal9028 := by
  rw [tree9028_def, child0, child1]
  rfl
theorem node9028_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9026 live9026 coloured9026 = result9026)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9027 live9027 coloured9027 = result9027) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9028 live9028 coloured9028 = result9028 := by
  rw [tree9028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9026 coloured9026 at child
  try dsimp only [live9028, coloured9028]
  rw [child]
  dsimp only [result9026]
  have child := child1
  unfold live9027 coloured9027 at child
  try dsimp only [live9028, coloured9028]
  rw [child]
  dsimp only [result9027]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9029_agree_conditional : tree9029 = literal9029 := by
  rw [tree9029_def]
  rfl
theorem node9029_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9029 live9029 coloured9029 = result9029 := by
  rw [tree9029_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9030_agree_conditional
    (child0 : tree9028 = literal9028)
    (child1 : tree9029 = literal9029) : tree9030 = literal9030 := by
  rw [tree9030_def, child0, child1]
  rfl
theorem node9030_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9028 live9028 coloured9028 = result9028)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9029 live9029 coloured9029 = result9029) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9030 live9030 coloured9030 = result9030 := by
  rw [tree9030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9028 coloured9028 at child
  try dsimp only [live9030, coloured9030]
  rw [child]
  dsimp only [result9028]
  have child := child1
  unfold live9029 coloured9029 at child
  try dsimp only [live9030, coloured9030]
  rw [child]
  dsimp only [result9029]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9031_agree_conditional : tree9031 = literal9031 := by
  rw [tree9031_def]
  rfl
theorem node9031_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9031 live9031 coloured9031 = result9031 := by
  rw [tree9031_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9032_agree_conditional
    (child0 : tree9030 = literal9030)
    (child1 : tree9031 = literal9031) : tree9032 = literal9032 := by
  rw [tree9032_def, child0, child1]
  rfl
theorem node9032_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9030 live9030 coloured9030 = result9030)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9031 live9031 coloured9031 = result9031) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9032 live9032 coloured9032 = result9032 := by
  rw [tree9032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9030 coloured9030 at child
  try dsimp only [live9032, coloured9032]
  rw [child]
  dsimp only [result9030]
  have child := child1
  unfold live9031 coloured9031 at child
  try dsimp only [live9032, coloured9032]
  rw [child]
  dsimp only [result9031]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9033_agree_conditional : tree9033 = literal9033 := by
  rw [tree9033_def]
  rfl
theorem node9033_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9033 live9033 coloured9033 = result9033 := by
  rw [tree9033_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9034_agree_conditional
    (child0 : tree9032 = literal9032)
    (child1 : tree9033 = literal9033) : tree9034 = literal9034 := by
  rw [tree9034_def, child0, child1]
  rfl
theorem node9034_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9032 live9032 coloured9032 = result9032)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9033 live9033 coloured9033 = result9033) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9034 live9034 coloured9034 = result9034 := by
  rw [tree9034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9032 coloured9032 at child
  try dsimp only [live9034, coloured9034]
  rw [child]
  dsimp only [result9032]
  have child := child1
  unfold live9033 coloured9033 at child
  try dsimp only [live9034, coloured9034]
  rw [child]
  dsimp only [result9033]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9035_agree_conditional : tree9035 = literal9035 := by
  rw [tree9035_def]
  rfl
theorem node9035_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9035 live9035 coloured9035 = result9035 := by
  rw [tree9035_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9036_agree_conditional
    (child0 : tree9034 = literal9034)
    (child1 : tree9035 = literal9035) : tree9036 = literal9036 := by
  rw [tree9036_def, child0, child1]
  rfl
theorem node9036_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9034 live9034 coloured9034 = result9034)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9035 live9035 coloured9035 = result9035) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9036 live9036 coloured9036 = result9036 := by
  rw [tree9036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9034 coloured9034 at child
  try dsimp only [live9036, coloured9036]
  rw [child]
  dsimp only [result9034]
  have child := child1
  unfold live9035 coloured9035 at child
  try dsimp only [live9036, coloured9036]
  rw [child]
  dsimp only [result9035]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9037_agree_conditional : tree9037 = literal9037 := by
  rw [tree9037_def]
  rfl
theorem node9037_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9037 live9037 coloured9037 = result9037 := by
  rw [tree9037_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9038_agree_conditional
    (child0 : tree9036 = literal9036)
    (child1 : tree9037 = literal9037) : tree9038 = literal9038 := by
  rw [tree9038_def, child0, child1]
  rfl
theorem node9038_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9036 live9036 coloured9036 = result9036)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9037 live9037 coloured9037 = result9037) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9038 live9038 coloured9038 = result9038 := by
  rw [tree9038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9036 coloured9036 at child
  try dsimp only [live9038, coloured9038]
  rw [child]
  dsimp only [result9036]
  have child := child1
  unfold live9037 coloured9037 at child
  try dsimp only [live9038, coloured9038]
  rw [child]
  dsimp only [result9037]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9039_agree_conditional : tree9039 = literal9039 := by
  rw [tree9039_def]
  rfl
theorem node9039_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9039 live9039 coloured9039 = result9039 := by
  rw [tree9039_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9040_agree_conditional
    (child0 : tree9038 = literal9038)
    (child1 : tree9039 = literal9039) : tree9040 = literal9040 := by
  rw [tree9040_def, child0, child1]
  rfl
theorem node9040_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9038 live9038 coloured9038 = result9038)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9039 live9039 coloured9039 = result9039) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9040 live9040 coloured9040 = result9040 := by
  rw [tree9040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9038 coloured9038 at child
  try dsimp only [live9040, coloured9040]
  rw [child]
  dsimp only [result9038]
  have child := child1
  unfold live9039 coloured9039 at child
  try dsimp only [live9040, coloured9040]
  rw [child]
  dsimp only [result9039]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9041_agree_conditional : tree9041 = literal9041 := by
  rw [tree9041_def]
  rfl
theorem node9041_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9041 live9041 coloured9041 = result9041 := by
  rw [tree9041_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9042_agree_conditional
    (child0 : tree9040 = literal9040)
    (child1 : tree9041 = literal9041) : tree9042 = literal9042 := by
  rw [tree9042_def, child0, child1]
  rfl
theorem node9042_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9040 live9040 coloured9040 = result9040)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9041 live9041 coloured9041 = result9041) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9042 live9042 coloured9042 = result9042 := by
  rw [tree9042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9040 coloured9040 at child
  try dsimp only [live9042, coloured9042]
  rw [child]
  dsimp only [result9040]
  have child := child1
  unfold live9041 coloured9041 at child
  try dsimp only [live9042, coloured9042]
  rw [child]
  dsimp only [result9041]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9043_agree_conditional : tree9043 = literal9043 := by
  rw [tree9043_def]
  rfl
theorem node9043_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9043 live9043 coloured9043 = result9043 := by
  rw [tree9043_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9044_agree_conditional
    (child0 : tree9042 = literal9042)
    (child1 : tree9043 = literal9043) : tree9044 = literal9044 := by
  rw [tree9044_def, child0, child1]
  rfl
theorem node9044_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9042 live9042 coloured9042 = result9042)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9043 live9043 coloured9043 = result9043) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9044 live9044 coloured9044 = result9044 := by
  rw [tree9044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9042 coloured9042 at child
  try dsimp only [live9044, coloured9044]
  rw [child]
  dsimp only [result9042]
  have child := child1
  unfold live9043 coloured9043 at child
  try dsimp only [live9044, coloured9044]
  rw [child]
  dsimp only [result9043]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9045_agree_conditional : tree9045 = literal9045 := by
  rw [tree9045_def]
  rfl
theorem node9045_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9045 live9045 coloured9045 = result9045 := by
  rw [tree9045_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9046_agree_conditional
    (child0 : tree9044 = literal9044)
    (child1 : tree9045 = literal9045) : tree9046 = literal9046 := by
  rw [tree9046_def, child0, child1]
  rfl
theorem node9046_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9044 live9044 coloured9044 = result9044)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9045 live9045 coloured9045 = result9045) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9046 live9046 coloured9046 = result9046 := by
  rw [tree9046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9044 coloured9044 at child
  try dsimp only [live9046, coloured9046]
  rw [child]
  dsimp only [result9044]
  have child := child1
  unfold live9045 coloured9045 at child
  try dsimp only [live9046, coloured9046]
  rw [child]
  dsimp only [result9045]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9047_agree_conditional : tree9047 = literal9047 := by
  rw [tree9047_def]
  rfl
theorem node9047_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9047 live9047 coloured9047 = result9047 := by
  rw [tree9047_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9048_agree_conditional
    (child0 : tree9046 = literal9046)
    (child1 : tree9047 = literal9047) : tree9048 = literal9048 := by
  rw [tree9048_def, child0, child1]
  rfl
theorem node9048_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9046 live9046 coloured9046 = result9046)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9047 live9047 coloured9047 = result9047) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9048 live9048 coloured9048 = result9048 := by
  rw [tree9048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9046 coloured9046 at child
  try dsimp only [live9048, coloured9048]
  rw [child]
  dsimp only [result9046]
  have child := child1
  unfold live9047 coloured9047 at child
  try dsimp only [live9048, coloured9048]
  rw [child]
  dsimp only [result9047]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9049_agree_conditional : tree9049 = literal9049 := by
  rw [tree9049_def]
  rfl
theorem node9049_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9049 live9049 coloured9049 = result9049 := by
  rw [tree9049_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9050_agree_conditional
    (child0 : tree9048 = literal9048)
    (child1 : tree9049 = literal9049) : tree9050 = literal9050 := by
  rw [tree9050_def, child0, child1]
  rfl
theorem node9050_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9048 live9048 coloured9048 = result9048)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9049 live9049 coloured9049 = result9049) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9050 live9050 coloured9050 = result9050 := by
  rw [tree9050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9048 coloured9048 at child
  try dsimp only [live9050, coloured9050]
  rw [child]
  dsimp only [result9048]
  have child := child1
  unfold live9049 coloured9049 at child
  try dsimp only [live9050, coloured9050]
  rw [child]
  dsimp only [result9049]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9051_agree_conditional : tree9051 = literal9051 := by
  rw [tree9051_def]
  rfl
theorem node9051_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9051 live9051 coloured9051 = result9051 := by
  rw [tree9051_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9052_agree_conditional
    (child0 : tree9050 = literal9050)
    (child1 : tree9051 = literal9051) : tree9052 = literal9052 := by
  rw [tree9052_def, child0, child1]
  rfl
theorem node9052_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9050 live9050 coloured9050 = result9050)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9051 live9051 coloured9051 = result9051) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9052 live9052 coloured9052 = result9052 := by
  rw [tree9052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9050 coloured9050 at child
  try dsimp only [live9052, coloured9052]
  rw [child]
  dsimp only [result9050]
  have child := child1
  unfold live9051 coloured9051 at child
  try dsimp only [live9052, coloured9052]
  rw [child]
  dsimp only [result9051]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9053_agree_conditional : tree9053 = literal9053 := by
  rw [tree9053_def]
  rfl
theorem node9053_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9053 live9053 coloured9053 = result9053 := by
  rw [tree9053_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9054_agree_conditional
    (child0 : tree9052 = literal9052)
    (child1 : tree9053 = literal9053) : tree9054 = literal9054 := by
  rw [tree9054_def, child0, child1]
  rfl
theorem node9054_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9052 live9052 coloured9052 = result9052)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9053 live9053 coloured9053 = result9053) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9054 live9054 coloured9054 = result9054 := by
  rw [tree9054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9052 coloured9052 at child
  try dsimp only [live9054, coloured9054]
  rw [child]
  dsimp only [result9052]
  have child := child1
  unfold live9053 coloured9053 at child
  try dsimp only [live9054, coloured9054]
  rw [child]
  dsimp only [result9053]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9055_agree_conditional : tree9055 = literal9055 := by
  rw [tree9055_def]
  rfl
theorem node9055_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9055 live9055 coloured9055 = result9055 := by
  rw [tree9055_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9056_agree_conditional
    (child0 : tree9054 = literal9054)
    (child1 : tree9055 = literal9055) : tree9056 = literal9056 := by
  rw [tree9056_def, child0, child1]
  rfl
theorem node9056_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9054 live9054 coloured9054 = result9054)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9055 live9055 coloured9055 = result9055) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9056 live9056 coloured9056 = result9056 := by
  rw [tree9056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9054 coloured9054 at child
  try dsimp only [live9056, coloured9056]
  rw [child]
  dsimp only [result9054]
  have child := child1
  unfold live9055 coloured9055 at child
  try dsimp only [live9056, coloured9056]
  rw [child]
  dsimp only [result9055]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9057_agree_conditional : tree9057 = literal9057 := by
  rw [tree9057_def]
  rfl
theorem node9057_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9057 live9057 coloured9057 = result9057 := by
  rw [tree9057_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9058_agree_conditional
    (child0 : tree9056 = literal9056)
    (child1 : tree9057 = literal9057) : tree9058 = literal9058 := by
  rw [tree9058_def, child0, child1]
  rfl
theorem node9058_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9056 live9056 coloured9056 = result9056)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9057 live9057 coloured9057 = result9057) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9058 live9058 coloured9058 = result9058 := by
  rw [tree9058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9056 coloured9056 at child
  try dsimp only [live9058, coloured9058]
  rw [child]
  dsimp only [result9056]
  have child := child1
  unfold live9057 coloured9057 at child
  try dsimp only [live9058, coloured9058]
  rw [child]
  dsimp only [result9057]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9059_agree_conditional : tree9059 = literal9059 := by
  rw [tree9059_def]
  rfl
theorem node9059_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9059 live9059 coloured9059 = result9059 := by
  rw [tree9059_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9060_agree_conditional
    (child0 : tree9058 = literal9058)
    (child1 : tree9059 = literal9059) : tree9060 = literal9060 := by
  rw [tree9060_def, child0, child1]
  rfl
theorem node9060_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9058 live9058 coloured9058 = result9058)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9059 live9059 coloured9059 = result9059) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9060 live9060 coloured9060 = result9060 := by
  rw [tree9060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9058 coloured9058 at child
  try dsimp only [live9060, coloured9060]
  rw [child]
  dsimp only [result9058]
  have child := child1
  unfold live9059 coloured9059 at child
  try dsimp only [live9060, coloured9060]
  rw [child]
  dsimp only [result9059]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9061_agree_conditional : tree9061 = literal9061 := by
  rw [tree9061_def]
  rfl
theorem node9061_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9061 live9061 coloured9061 = result9061 := by
  rw [tree9061_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9062_agree_conditional
    (child0 : tree9060 = literal9060)
    (child1 : tree9061 = literal9061) : tree9062 = literal9062 := by
  rw [tree9062_def, child0, child1]
  rfl
theorem node9062_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9060 live9060 coloured9060 = result9060)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9061 live9061 coloured9061 = result9061) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9062 live9062 coloured9062 = result9062 := by
  rw [tree9062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9060 coloured9060 at child
  try dsimp only [live9062, coloured9062]
  rw [child]
  dsimp only [result9060]
  have child := child1
  unfold live9061 coloured9061 at child
  try dsimp only [live9062, coloured9062]
  rw [child]
  dsimp only [result9061]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9063_agree_conditional : tree9063 = literal9063 := by
  rw [tree9063_def]
  rfl
theorem node9063_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9063 live9063 coloured9063 = result9063 := by
  rw [tree9063_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9064_agree_conditional
    (child0 : tree9062 = literal9062)
    (child1 : tree9063 = literal9063) : tree9064 = literal9064 := by
  rw [tree9064_def, child0, child1]
  rfl
theorem node9064_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9062 live9062 coloured9062 = result9062)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9063 live9063 coloured9063 = result9063) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9064 live9064 coloured9064 = result9064 := by
  rw [tree9064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9062 coloured9062 at child
  try dsimp only [live9064, coloured9064]
  rw [child]
  dsimp only [result9062]
  have child := child1
  unfold live9063 coloured9063 at child
  try dsimp only [live9064, coloured9064]
  rw [child]
  dsimp only [result9063]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9065_agree_conditional : tree9065 = literal9065 := by
  rw [tree9065_def]
  rfl
theorem node9065_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9065 live9065 coloured9065 = result9065 := by
  rw [tree9065_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9066_agree_conditional
    (child0 : tree9064 = literal9064)
    (child1 : tree9065 = literal9065) : tree9066 = literal9066 := by
  rw [tree9066_def, child0, child1]
  rfl
theorem node9066_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9064 live9064 coloured9064 = result9064)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9065 live9065 coloured9065 = result9065) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9066 live9066 coloured9066 = result9066 := by
  rw [tree9066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9064 coloured9064 at child
  try dsimp only [live9066, coloured9066]
  rw [child]
  dsimp only [result9064]
  have child := child1
  unfold live9065 coloured9065 at child
  try dsimp only [live9066, coloured9066]
  rw [child]
  dsimp only [result9065]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9067_agree_conditional : tree9067 = literal9067 := by
  rw [tree9067_def]
  rfl
theorem node9067_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9067 live9067 coloured9067 = result9067 := by
  rw [tree9067_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9068_agree_conditional
    (child0 : tree9066 = literal9066)
    (child1 : tree9067 = literal9067) : tree9068 = literal9068 := by
  rw [tree9068_def, child0, child1]
  rfl
theorem node9068_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9066 live9066 coloured9066 = result9066)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9067 live9067 coloured9067 = result9067) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9068 live9068 coloured9068 = result9068 := by
  rw [tree9068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9066 coloured9066 at child
  try dsimp only [live9068, coloured9068]
  rw [child]
  dsimp only [result9066]
  have child := child1
  unfold live9067 coloured9067 at child
  try dsimp only [live9068, coloured9068]
  rw [child]
  dsimp only [result9067]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9069_agree_conditional : tree9069 = literal9069 := by
  rw [tree9069_def]
  rfl
theorem node9069_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9069 live9069 coloured9069 = result9069 := by
  rw [tree9069_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9070_agree_conditional
    (child0 : tree9068 = literal9068)
    (child1 : tree9069 = literal9069) : tree9070 = literal9070 := by
  rw [tree9070_def, child0, child1]
  rfl
theorem node9070_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9068 live9068 coloured9068 = result9068)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9069 live9069 coloured9069 = result9069) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9070 live9070 coloured9070 = result9070 := by
  rw [tree9070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9068 coloured9068 at child
  try dsimp only [live9070, coloured9070]
  rw [child]
  dsimp only [result9068]
  have child := child1
  unfold live9069 coloured9069 at child
  try dsimp only [live9070, coloured9070]
  rw [child]
  dsimp only [result9069]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9071_agree_conditional : tree9071 = literal9071 := by
  rw [tree9071_def]
  rfl
theorem node9071_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9071 live9071 coloured9071 = result9071 := by
  rw [tree9071_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9072_agree_conditional
    (child0 : tree9070 = literal9070)
    (child1 : tree9071 = literal9071) : tree9072 = literal9072 := by
  rw [tree9072_def, child0, child1]
  rfl
theorem node9072_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9070 live9070 coloured9070 = result9070)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9071 live9071 coloured9071 = result9071) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9072 live9072 coloured9072 = result9072 := by
  rw [tree9072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9070 coloured9070 at child
  try dsimp only [live9072, coloured9072]
  rw [child]
  dsimp only [result9070]
  have child := child1
  unfold live9071 coloured9071 at child
  try dsimp only [live9072, coloured9072]
  rw [child]
  dsimp only [result9071]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9073_agree_conditional : tree9073 = literal9073 := by
  rw [tree9073_def]
  rfl
theorem node9073_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9073 live9073 coloured9073 = result9073 := by
  rw [tree9073_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9074_agree_conditional
    (child0 : tree9072 = literal9072)
    (child1 : tree9073 = literal9073) : tree9074 = literal9074 := by
  rw [tree9074_def, child0, child1]
  rfl
theorem node9074_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9072 live9072 coloured9072 = result9072)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9073 live9073 coloured9073 = result9073) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9074 live9074 coloured9074 = result9074 := by
  rw [tree9074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9072 coloured9072 at child
  try dsimp only [live9074, coloured9074]
  rw [child]
  dsimp only [result9072]
  have child := child1
  unfold live9073 coloured9073 at child
  try dsimp only [live9074, coloured9074]
  rw [child]
  dsimp only [result9073]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9075_agree_conditional : tree9075 = literal9075 := by
  rw [tree9075_def]
  rfl
theorem node9075_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9075 live9075 coloured9075 = result9075 := by
  rw [tree9075_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9076_agree_conditional
    (child0 : tree9074 = literal9074)
    (child1 : tree9075 = literal9075) : tree9076 = literal9076 := by
  rw [tree9076_def, child0, child1]
  rfl
theorem node9076_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9074 live9074 coloured9074 = result9074)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9075 live9075 coloured9075 = result9075) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9076 live9076 coloured9076 = result9076 := by
  rw [tree9076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9074 coloured9074 at child
  try dsimp only [live9076, coloured9076]
  rw [child]
  dsimp only [result9074]
  have child := child1
  unfold live9075 coloured9075 at child
  try dsimp only [live9076, coloured9076]
  rw [child]
  dsimp only [result9075]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9077_agree_conditional : tree9077 = literal9077 := by
  rw [tree9077_def]
  rfl
theorem node9077_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9077 live9077 coloured9077 = result9077 := by
  rw [tree9077_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9078_agree_conditional
    (child0 : tree9076 = literal9076)
    (child1 : tree9077 = literal9077) : tree9078 = literal9078 := by
  rw [tree9078_def, child0, child1]
  rfl
theorem node9078_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9076 live9076 coloured9076 = result9076)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9077 live9077 coloured9077 = result9077) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9078 live9078 coloured9078 = result9078 := by
  rw [tree9078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9076 coloured9076 at child
  try dsimp only [live9078, coloured9078]
  rw [child]
  dsimp only [result9076]
  have child := child1
  unfold live9077 coloured9077 at child
  try dsimp only [live9078, coloured9078]
  rw [child]
  dsimp only [result9077]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9079_agree_conditional : tree9079 = literal9079 := by
  rw [tree9079_def]
  rfl
theorem node9079_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9079 live9079 coloured9079 = result9079 := by
  rw [tree9079_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9080_agree_conditional
    (child0 : tree9078 = literal9078)
    (child1 : tree9079 = literal9079) : tree9080 = literal9080 := by
  rw [tree9080_def, child0, child1]
  rfl
theorem node9080_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9078 live9078 coloured9078 = result9078)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9079 live9079 coloured9079 = result9079) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9080 live9080 coloured9080 = result9080 := by
  rw [tree9080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9078 coloured9078 at child
  try dsimp only [live9080, coloured9080]
  rw [child]
  dsimp only [result9078]
  have child := child1
  unfold live9079 coloured9079 at child
  try dsimp only [live9080, coloured9080]
  rw [child]
  dsimp only [result9079]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9081_agree_conditional : tree9081 = literal9081 := by
  rw [tree9081_def]
  rfl
theorem node9081_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9081 live9081 coloured9081 = result9081 := by
  rw [tree9081_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9082_agree_conditional
    (child0 : tree9080 = literal9080)
    (child1 : tree9081 = literal9081) : tree9082 = literal9082 := by
  rw [tree9082_def, child0, child1]
  rfl
theorem node9082_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9080 live9080 coloured9080 = result9080)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9081 live9081 coloured9081 = result9081) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9082 live9082 coloured9082 = result9082 := by
  rw [tree9082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9080 coloured9080 at child
  try dsimp only [live9082, coloured9082]
  rw [child]
  dsimp only [result9080]
  have child := child1
  unfold live9081 coloured9081 at child
  try dsimp only [live9082, coloured9082]
  rw [child]
  dsimp only [result9081]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9083_agree_conditional : tree9083 = literal9083 := by
  rw [tree9083_def]
  rfl
theorem node9083_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9083 live9083 coloured9083 = result9083 := by
  rw [tree9083_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9084_agree_conditional
    (child0 : tree9082 = literal9082)
    (child1 : tree9083 = literal9083) : tree9084 = literal9084 := by
  rw [tree9084_def, child0, child1]
  rfl
theorem node9084_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9082 live9082 coloured9082 = result9082)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9083 live9083 coloured9083 = result9083) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9084 live9084 coloured9084 = result9084 := by
  rw [tree9084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9082 coloured9082 at child
  try dsimp only [live9084, coloured9084]
  rw [child]
  dsimp only [result9082]
  have child := child1
  unfold live9083 coloured9083 at child
  try dsimp only [live9084, coloured9084]
  rw [child]
  dsimp only [result9083]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9085_agree_conditional : tree9085 = literal9085 := by
  rw [tree9085_def]
  rfl
theorem node9085_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9085 live9085 coloured9085 = result9085 := by
  rw [tree9085_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9086_agree_conditional
    (child0 : tree9084 = literal9084)
    (child1 : tree9085 = literal9085) : tree9086 = literal9086 := by
  rw [tree9086_def, child0, child1]
  rfl
theorem node9086_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9084 live9084 coloured9084 = result9084)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9085 live9085 coloured9085 = result9085) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9086 live9086 coloured9086 = result9086 := by
  rw [tree9086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9084 coloured9084 at child
  try dsimp only [live9086, coloured9086]
  rw [child]
  dsimp only [result9084]
  have child := child1
  unfold live9085 coloured9085 at child
  try dsimp only [live9086, coloured9086]
  rw [child]
  dsimp only [result9085]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9087_agree_conditional : tree9087 = literal9087 := by
  rw [tree9087_def]
  rfl
theorem node9087_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9087 live9087 coloured9087 = result9087 := by
  rw [tree9087_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9088_agree_conditional
    (child0 : tree9086 = literal9086)
    (child1 : tree9087 = literal9087) : tree9088 = literal9088 := by
  rw [tree9088_def, child0, child1]
  rfl
theorem node9088_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9086 live9086 coloured9086 = result9086)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9087 live9087 coloured9087 = result9087) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9088 live9088 coloured9088 = result9088 := by
  rw [tree9088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9086 coloured9086 at child
  try dsimp only [live9088, coloured9088]
  rw [child]
  dsimp only [result9086]
  have child := child1
  unfold live9087 coloured9087 at child
  try dsimp only [live9088, coloured9088]
  rw [child]
  dsimp only [result9087]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9089_agree_conditional : tree9089 = literal9089 := by
  rw [tree9089_def]
  rfl
theorem node9089_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9089 live9089 coloured9089 = result9089 := by
  rw [tree9089_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9090_agree_conditional
    (child0 : tree9088 = literal9088)
    (child1 : tree9089 = literal9089) : tree9090 = literal9090 := by
  rw [tree9090_def, child0, child1]
  rfl
theorem node9090_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9088 live9088 coloured9088 = result9088)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9089 live9089 coloured9089 = result9089) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9090 live9090 coloured9090 = result9090 := by
  rw [tree9090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9088 coloured9088 at child
  try dsimp only [live9090, coloured9090]
  rw [child]
  dsimp only [result9088]
  have child := child1
  unfold live9089 coloured9089 at child
  try dsimp only [live9090, coloured9090]
  rw [child]
  dsimp only [result9089]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9091_agree_conditional : tree9091 = literal9091 := by
  rw [tree9091_def]
  rfl
theorem node9091_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9091 live9091 coloured9091 = result9091 := by
  rw [tree9091_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9092_agree_conditional
    (child0 : tree9090 = literal9090)
    (child1 : tree9091 = literal9091) : tree9092 = literal9092 := by
  rw [tree9092_def, child0, child1]
  rfl
theorem node9092_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9090 live9090 coloured9090 = result9090)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9091 live9091 coloured9091 = result9091) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9092 live9092 coloured9092 = result9092 := by
  rw [tree9092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9090 coloured9090 at child
  try dsimp only [live9092, coloured9092]
  rw [child]
  dsimp only [result9090]
  have child := child1
  unfold live9091 coloured9091 at child
  try dsimp only [live9092, coloured9092]
  rw [child]
  dsimp only [result9091]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9093_agree_conditional : tree9093 = literal9093 := by
  rw [tree9093_def]
  rfl
theorem node9093_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9093 live9093 coloured9093 = result9093 := by
  rw [tree9093_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9094_agree_conditional
    (child0 : tree9092 = literal9092)
    (child1 : tree9093 = literal9093) : tree9094 = literal9094 := by
  rw [tree9094_def, child0, child1]
  rfl
theorem node9094_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9092 live9092 coloured9092 = result9092)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9093 live9093 coloured9093 = result9093) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9094 live9094 coloured9094 = result9094 := by
  rw [tree9094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9092 coloured9092 at child
  try dsimp only [live9094, coloured9094]
  rw [child]
  dsimp only [result9092]
  have child := child1
  unfold live9093 coloured9093 at child
  try dsimp only [live9094, coloured9094]
  rw [child]
  dsimp only [result9093]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9095_agree_conditional : tree9095 = literal9095 := by
  rw [tree9095_def]
  rfl
theorem node9095_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9095 live9095 coloured9095 = result9095 := by
  rw [tree9095_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9096_agree_conditional
    (child0 : tree9094 = literal9094)
    (child1 : tree9095 = literal9095) : tree9096 = literal9096 := by
  rw [tree9096_def, child0, child1]
  rfl
theorem node9096_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9094 live9094 coloured9094 = result9094)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9095 live9095 coloured9095 = result9095) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9096 live9096 coloured9096 = result9096 := by
  rw [tree9096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9094 coloured9094 at child
  try dsimp only [live9096, coloured9096]
  rw [child]
  dsimp only [result9094]
  have child := child1
  unfold live9095 coloured9095 at child
  try dsimp only [live9096, coloured9096]
  rw [child]
  dsimp only [result9095]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9097_agree_conditional : tree9097 = literal9097 := by
  rw [tree9097_def]
  rfl
theorem node9097_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9097 live9097 coloured9097 = result9097 := by
  rw [tree9097_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9098_agree_conditional
    (child0 : tree9096 = literal9096)
    (child1 : tree9097 = literal9097) : tree9098 = literal9098 := by
  rw [tree9098_def, child0, child1]
  rfl
theorem node9098_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9096 live9096 coloured9096 = result9096)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9097 live9097 coloured9097 = result9097) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9098 live9098 coloured9098 = result9098 := by
  rw [tree9098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9096 coloured9096 at child
  try dsimp only [live9098, coloured9098]
  rw [child]
  dsimp only [result9096]
  have child := child1
  unfold live9097 coloured9097 at child
  try dsimp only [live9098, coloured9098]
  rw [child]
  dsimp only [result9097]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9099_agree_conditional : tree9099 = literal9099 := by
  rw [tree9099_def]
  rfl
theorem node9099_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9099 live9099 coloured9099 = result9099 := by
  rw [tree9099_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9100_agree_conditional
    (child0 : tree9098 = literal9098)
    (child1 : tree9099 = literal9099) : tree9100 = literal9100 := by
  rw [tree9100_def, child0, child1]
  rfl
theorem node9100_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9098 live9098 coloured9098 = result9098)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9099 live9099 coloured9099 = result9099) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9100 live9100 coloured9100 = result9100 := by
  rw [tree9100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9098 coloured9098 at child
  try dsimp only [live9100, coloured9100]
  rw [child]
  dsimp only [result9098]
  have child := child1
  unfold live9099 coloured9099 at child
  try dsimp only [live9100, coloured9100]
  rw [child]
  dsimp only [result9099]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9101_agree_conditional : tree9101 = literal9101 := by
  rw [tree9101_def]
  rfl
theorem node9101_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9101 live9101 coloured9101 = result9101 := by
  rw [tree9101_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9102_agree_conditional
    (child0 : tree9100 = literal9100)
    (child1 : tree9101 = literal9101) : tree9102 = literal9102 := by
  rw [tree9102_def, child0, child1]
  rfl
theorem node9102_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9100 live9100 coloured9100 = result9100)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9101 live9101 coloured9101 = result9101) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9102 live9102 coloured9102 = result9102 := by
  rw [tree9102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9100 coloured9100 at child
  try dsimp only [live9102, coloured9102]
  rw [child]
  dsimp only [result9100]
  have child := child1
  unfold live9101 coloured9101 at child
  try dsimp only [live9102, coloured9102]
  rw [child]
  dsimp only [result9101]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9103_agree_conditional : tree9103 = literal9103 := by
  rw [tree9103_def]
  rfl
theorem node9103_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9103 live9103 coloured9103 = result9103 := by
  rw [tree9103_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9104_agree_conditional
    (child0 : tree9102 = literal9102)
    (child1 : tree9103 = literal9103) : tree9104 = literal9104 := by
  rw [tree9104_def, child0, child1]
  rfl
theorem node9104_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9102 live9102 coloured9102 = result9102)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9103 live9103 coloured9103 = result9103) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9104 live9104 coloured9104 = result9104 := by
  rw [tree9104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9102 coloured9102 at child
  try dsimp only [live9104, coloured9104]
  rw [child]
  dsimp only [result9102]
  have child := child1
  unfold live9103 coloured9103 at child
  try dsimp only [live9104, coloured9104]
  rw [child]
  dsimp only [result9103]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9105_agree_conditional : tree9105 = literal9105 := by
  rw [tree9105_def]
  rfl
theorem node9105_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9105 live9105 coloured9105 = result9105 := by
  rw [tree9105_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9106_agree_conditional
    (child0 : tree9104 = literal9104)
    (child1 : tree9105 = literal9105) : tree9106 = literal9106 := by
  rw [tree9106_def, child0, child1]
  rfl
theorem node9106_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9104 live9104 coloured9104 = result9104)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9105 live9105 coloured9105 = result9105) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9106 live9106 coloured9106 = result9106 := by
  rw [tree9106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9104 coloured9104 at child
  try dsimp only [live9106, coloured9106]
  rw [child]
  dsimp only [result9104]
  have child := child1
  unfold live9105 coloured9105 at child
  try dsimp only [live9106, coloured9106]
  rw [child]
  dsimp only [result9105]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9107_agree_conditional : tree9107 = literal9107 := by
  rw [tree9107_def]
  rfl
theorem node9107_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9107 live9107 coloured9107 = result9107 := by
  rw [tree9107_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9108_agree_conditional
    (child0 : tree9106 = literal9106)
    (child1 : tree9107 = literal9107) : tree9108 = literal9108 := by
  rw [tree9108_def, child0, child1]
  rfl
theorem node9108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9106 live9106 coloured9106 = result9106)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9107 live9107 coloured9107 = result9107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9108 live9108 coloured9108 = result9108 := by
  rw [tree9108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9106 coloured9106 at child
  try dsimp only [live9108, coloured9108]
  rw [child]
  dsimp only [result9106]
  have child := child1
  unfold live9107 coloured9107 at child
  try dsimp only [live9108, coloured9108]
  rw [child]
  dsimp only [result9107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9109_agree_conditional : tree9109 = literal9109 := by
  rw [tree9109_def]
  rfl
theorem node9109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9109 live9109 coloured9109 = result9109 := by
  rw [tree9109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9110_agree_conditional
    (child0 : tree9108 = literal9108)
    (child1 : tree9109 = literal9109) : tree9110 = literal9110 := by
  rw [tree9110_def, child0, child1]
  rfl
theorem node9110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9108 live9108 coloured9108 = result9108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9109 live9109 coloured9109 = result9109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9110 live9110 coloured9110 = result9110 := by
  rw [tree9110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9108 coloured9108 at child
  try dsimp only [live9110, coloured9110]
  rw [child]
  dsimp only [result9108]
  have child := child1
  unfold live9109 coloured9109 at child
  try dsimp only [live9110, coloured9110]
  rw [child]
  dsimp only [result9109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9111_agree_conditional : tree9111 = literal9111 := by
  rw [tree9111_def]
  rfl
theorem node9111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9111 live9111 coloured9111 = result9111 := by
  rw [tree9111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9112_agree_conditional
    (child0 : tree9110 = literal9110)
    (child1 : tree9111 = literal9111) : tree9112 = literal9112 := by
  rw [tree9112_def, child0, child1]
  rfl
theorem node9112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9110 live9110 coloured9110 = result9110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9111 live9111 coloured9111 = result9111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9112 live9112 coloured9112 = result9112 := by
  rw [tree9112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9110 coloured9110 at child
  try dsimp only [live9112, coloured9112]
  rw [child]
  dsimp only [result9110]
  have child := child1
  unfold live9111 coloured9111 at child
  try dsimp only [live9112, coloured9112]
  rw [child]
  dsimp only [result9111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9113_agree_conditional : tree9113 = literal9113 := by
  rw [tree9113_def]
  rfl
theorem node9113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9113 live9113 coloured9113 = result9113 := by
  rw [tree9113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9114_agree_conditional
    (child0 : tree9112 = literal9112)
    (child1 : tree9113 = literal9113) : tree9114 = literal9114 := by
  rw [tree9114_def, child0, child1]
  rfl
theorem node9114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9112 live9112 coloured9112 = result9112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9113 live9113 coloured9113 = result9113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9114 live9114 coloured9114 = result9114 := by
  rw [tree9114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9112 coloured9112 at child
  try dsimp only [live9114, coloured9114]
  rw [child]
  dsimp only [result9112]
  have child := child1
  unfold live9113 coloured9113 at child
  try dsimp only [live9114, coloured9114]
  rw [child]
  dsimp only [result9113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9115_agree_conditional : tree9115 = literal9115 := by
  rw [tree9115_def]
  rfl
theorem node9115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9115 live9115 coloured9115 = result9115 := by
  rw [tree9115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9116_agree_conditional
    (child0 : tree9114 = literal9114)
    (child1 : tree9115 = literal9115) : tree9116 = literal9116 := by
  rw [tree9116_def, child0, child1]
  rfl
theorem node9116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9114 live9114 coloured9114 = result9114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9115 live9115 coloured9115 = result9115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9116 live9116 coloured9116 = result9116 := by
  rw [tree9116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9114 coloured9114 at child
  try dsimp only [live9116, coloured9116]
  rw [child]
  dsimp only [result9114]
  have child := child1
  unfold live9115 coloured9115 at child
  try dsimp only [live9116, coloured9116]
  rw [child]
  dsimp only [result9115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9117_agree_conditional : tree9117 = literal9117 := by
  rw [tree9117_def]
  rfl
theorem node9117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9117 live9117 coloured9117 = result9117 := by
  rw [tree9117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9118_agree_conditional
    (child0 : tree9116 = literal9116)
    (child1 : tree9117 = literal9117) : tree9118 = literal9118 := by
  rw [tree9118_def, child0, child1]
  rfl
theorem node9118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9116 live9116 coloured9116 = result9116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9117 live9117 coloured9117 = result9117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9118 live9118 coloured9118 = result9118 := by
  rw [tree9118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9116 coloured9116 at child
  try dsimp only [live9118, coloured9118]
  rw [child]
  dsimp only [result9116]
  have child := child1
  unfold live9117 coloured9117 at child
  try dsimp only [live9118, coloured9118]
  rw [child]
  dsimp only [result9117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9119_agree_conditional : tree9119 = literal9119 := by
  rw [tree9119_def]
  rfl
theorem node9119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9119 live9119 coloured9119 = result9119 := by
  rw [tree9119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
