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
theorem tree7104_agree_conditional
    (child0 : tree7102 = literal7102)
    (child1 : tree7103 = literal7103) : tree7104 = literal7104 := by
  rw [tree7104_def, child0, child1]
  rfl
theorem node7104_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7102 live7102 coloured7102 = result7102)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7103 live7103 coloured7103 = result7103) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7104 live7104 coloured7104 = result7104 := by
  rw [tree7104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7102 coloured7102 at child
  try dsimp only [live7104, coloured7104]
  rw [child]
  dsimp only [result7102]
  have child := child1
  unfold live7103 coloured7103 at child
  try dsimp only [live7104, coloured7104]
  rw [child]
  dsimp only [result7103]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7105_agree_conditional : tree7105 = literal7105 := by
  rw [tree7105_def]
  rfl
theorem node7105_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7105 live7105 coloured7105 = result7105 := by
  rw [tree7105_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7106_agree_conditional
    (child0 : tree7104 = literal7104)
    (child1 : tree7105 = literal7105) : tree7106 = literal7106 := by
  rw [tree7106_def, child0, child1]
  rfl
theorem node7106_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7104 live7104 coloured7104 = result7104)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7105 live7105 coloured7105 = result7105) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7106 live7106 coloured7106 = result7106 := by
  rw [tree7106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7104 coloured7104 at child
  try dsimp only [live7106, coloured7106]
  rw [child]
  dsimp only [result7104]
  have child := child1
  unfold live7105 coloured7105 at child
  try dsimp only [live7106, coloured7106]
  rw [child]
  dsimp only [result7105]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7107_agree_conditional : tree7107 = literal7107 := by
  rw [tree7107_def]
  rfl
theorem node7107_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7107 live7107 coloured7107 = result7107 := by
  rw [tree7107_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7108_agree_conditional
    (child0 : tree7106 = literal7106)
    (child1 : tree7107 = literal7107) : tree7108 = literal7108 := by
  rw [tree7108_def, child0, child1]
  rfl
theorem node7108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7106 live7106 coloured7106 = result7106)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7107 live7107 coloured7107 = result7107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7108 live7108 coloured7108 = result7108 := by
  rw [tree7108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7106 coloured7106 at child
  try dsimp only [live7108, coloured7108]
  rw [child]
  dsimp only [result7106]
  have child := child1
  unfold live7107 coloured7107 at child
  try dsimp only [live7108, coloured7108]
  rw [child]
  dsimp only [result7107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7109_agree_conditional : tree7109 = literal7109 := by
  rw [tree7109_def]
  rfl
theorem node7109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7109 live7109 coloured7109 = result7109 := by
  rw [tree7109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7110_agree_conditional
    (child0 : tree7108 = literal7108)
    (child1 : tree7109 = literal7109) : tree7110 = literal7110 := by
  rw [tree7110_def, child0, child1]
  rfl
theorem node7110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7108 live7108 coloured7108 = result7108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7109 live7109 coloured7109 = result7109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7110 live7110 coloured7110 = result7110 := by
  rw [tree7110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7108 coloured7108 at child
  try dsimp only [live7110, coloured7110]
  rw [child]
  dsimp only [result7108]
  have child := child1
  unfold live7109 coloured7109 at child
  try dsimp only [live7110, coloured7110]
  rw [child]
  dsimp only [result7109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7111_agree_conditional : tree7111 = literal7111 := by
  rw [tree7111_def]
  rfl
theorem node7111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7111 live7111 coloured7111 = result7111 := by
  rw [tree7111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7112_agree_conditional
    (child0 : tree7110 = literal7110)
    (child1 : tree7111 = literal7111) : tree7112 = literal7112 := by
  rw [tree7112_def, child0, child1]
  rfl
theorem node7112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7110 live7110 coloured7110 = result7110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7111 live7111 coloured7111 = result7111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7112 live7112 coloured7112 = result7112 := by
  rw [tree7112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7110 coloured7110 at child
  try dsimp only [live7112, coloured7112]
  rw [child]
  dsimp only [result7110]
  have child := child1
  unfold live7111 coloured7111 at child
  try dsimp only [live7112, coloured7112]
  rw [child]
  dsimp only [result7111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7113_agree_conditional : tree7113 = literal7113 := by
  rw [tree7113_def]
  rfl
theorem node7113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7113 live7113 coloured7113 = result7113 := by
  rw [tree7113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7114_agree_conditional
    (child0 : tree7112 = literal7112)
    (child1 : tree7113 = literal7113) : tree7114 = literal7114 := by
  rw [tree7114_def, child0, child1]
  rfl
theorem node7114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7112 live7112 coloured7112 = result7112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7113 live7113 coloured7113 = result7113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7114 live7114 coloured7114 = result7114 := by
  rw [tree7114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7112 coloured7112 at child
  try dsimp only [live7114, coloured7114]
  rw [child]
  dsimp only [result7112]
  have child := child1
  unfold live7113 coloured7113 at child
  try dsimp only [live7114, coloured7114]
  rw [child]
  dsimp only [result7113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7115_agree_conditional : tree7115 = literal7115 := by
  rw [tree7115_def]
  rfl
theorem node7115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7115 live7115 coloured7115 = result7115 := by
  rw [tree7115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7116_agree_conditional
    (child0 : tree7114 = literal7114)
    (child1 : tree7115 = literal7115) : tree7116 = literal7116 := by
  rw [tree7116_def, child0, child1]
  rfl
theorem node7116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7114 live7114 coloured7114 = result7114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7115 live7115 coloured7115 = result7115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7116 live7116 coloured7116 = result7116 := by
  rw [tree7116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7114 coloured7114 at child
  try dsimp only [live7116, coloured7116]
  rw [child]
  dsimp only [result7114]
  have child := child1
  unfold live7115 coloured7115 at child
  try dsimp only [live7116, coloured7116]
  rw [child]
  dsimp only [result7115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7117_agree_conditional : tree7117 = literal7117 := by
  rw [tree7117_def]
  rfl
theorem node7117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7117 live7117 coloured7117 = result7117 := by
  rw [tree7117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7118_agree_conditional
    (child0 : tree7116 = literal7116)
    (child1 : tree7117 = literal7117) : tree7118 = literal7118 := by
  rw [tree7118_def, child0, child1]
  rfl
theorem node7118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7116 live7116 coloured7116 = result7116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7117 live7117 coloured7117 = result7117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7118 live7118 coloured7118 = result7118 := by
  rw [tree7118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7116 coloured7116 at child
  try dsimp only [live7118, coloured7118]
  rw [child]
  dsimp only [result7116]
  have child := child1
  unfold live7117 coloured7117 at child
  try dsimp only [live7118, coloured7118]
  rw [child]
  dsimp only [result7117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7119_agree_conditional : tree7119 = literal7119 := by
  rw [tree7119_def]
  rfl
theorem node7119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7119 live7119 coloured7119 = result7119 := by
  rw [tree7119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7120_agree_conditional
    (child0 : tree7118 = literal7118)
    (child1 : tree7119 = literal7119) : tree7120 = literal7120 := by
  rw [tree7120_def, child0, child1]
  rfl
theorem node7120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7118 live7118 coloured7118 = result7118)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7119 live7119 coloured7119 = result7119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7120 live7120 coloured7120 = result7120 := by
  rw [tree7120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7118 coloured7118 at child
  try dsimp only [live7120, coloured7120]
  rw [child]
  dsimp only [result7118]
  have child := child1
  unfold live7119 coloured7119 at child
  try dsimp only [live7120, coloured7120]
  rw [child]
  dsimp only [result7119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7121_agree_conditional : tree7121 = literal7121 := by
  rw [tree7121_def]
  rfl
theorem node7121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7121 live7121 coloured7121 = result7121 := by
  rw [tree7121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7122_agree_conditional
    (child0 : tree7120 = literal7120)
    (child1 : tree7121 = literal7121) : tree7122 = literal7122 := by
  rw [tree7122_def, child0, child1]
  rfl
theorem node7122_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7120 live7120 coloured7120 = result7120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7121 live7121 coloured7121 = result7121) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7122 live7122 coloured7122 = result7122 := by
  rw [tree7122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7120 coloured7120 at child
  try dsimp only [live7122, coloured7122]
  rw [child]
  dsimp only [result7120]
  have child := child1
  unfold live7121 coloured7121 at child
  try dsimp only [live7122, coloured7122]
  rw [child]
  dsimp only [result7121]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7123_agree_conditional : tree7123 = literal7123 := by
  rw [tree7123_def]
  rfl
theorem node7123_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7123 live7123 coloured7123 = result7123 := by
  rw [tree7123_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7124_agree_conditional
    (child0 : tree7122 = literal7122)
    (child1 : tree7123 = literal7123) : tree7124 = literal7124 := by
  rw [tree7124_def, child0, child1]
  rfl
theorem node7124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7122 live7122 coloured7122 = result7122)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7123 live7123 coloured7123 = result7123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7124 live7124 coloured7124 = result7124 := by
  rw [tree7124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7122 coloured7122 at child
  try dsimp only [live7124, coloured7124]
  rw [child]
  dsimp only [result7122]
  have child := child1
  unfold live7123 coloured7123 at child
  try dsimp only [live7124, coloured7124]
  rw [child]
  dsimp only [result7123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7125_agree_conditional : tree7125 = literal7125 := by
  rw [tree7125_def]
  rfl
theorem node7125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7125 live7125 coloured7125 = result7125 := by
  rw [tree7125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7126_agree_conditional
    (child0 : tree7124 = literal7124)
    (child1 : tree7125 = literal7125) : tree7126 = literal7126 := by
  rw [tree7126_def, child0, child1]
  rfl
theorem node7126_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7124 live7124 coloured7124 = result7124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7125 live7125 coloured7125 = result7125) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7126 live7126 coloured7126 = result7126 := by
  rw [tree7126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7124 coloured7124 at child
  try dsimp only [live7126, coloured7126]
  rw [child]
  dsimp only [result7124]
  have child := child1
  unfold live7125 coloured7125 at child
  try dsimp only [live7126, coloured7126]
  rw [child]
  dsimp only [result7125]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7127_agree_conditional : tree7127 = literal7127 := by
  rw [tree7127_def]
  rfl
theorem node7127_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7127 live7127 coloured7127 = result7127 := by
  rw [tree7127_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7128_agree_conditional
    (child0 : tree7126 = literal7126)
    (child1 : tree7127 = literal7127) : tree7128 = literal7128 := by
  rw [tree7128_def, child0, child1]
  rfl
theorem node7128_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7126 live7126 coloured7126 = result7126)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7127 live7127 coloured7127 = result7127) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7128 live7128 coloured7128 = result7128 := by
  rw [tree7128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7126 coloured7126 at child
  try dsimp only [live7128, coloured7128]
  rw [child]
  dsimp only [result7126]
  have child := child1
  unfold live7127 coloured7127 at child
  try dsimp only [live7128, coloured7128]
  rw [child]
  dsimp only [result7127]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7129_agree_conditional : tree7129 = literal7129 := by
  rw [tree7129_def]
  rfl
theorem node7129_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7129 live7129 coloured7129 = result7129 := by
  rw [tree7129_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7130_agree_conditional
    (child0 : tree7128 = literal7128)
    (child1 : tree7129 = literal7129) : tree7130 = literal7130 := by
  rw [tree7130_def, child0, child1]
  rfl
theorem node7130_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7128 live7128 coloured7128 = result7128)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7129 live7129 coloured7129 = result7129) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7130 live7130 coloured7130 = result7130 := by
  rw [tree7130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7128 coloured7128 at child
  try dsimp only [live7130, coloured7130]
  rw [child]
  dsimp only [result7128]
  have child := child1
  unfold live7129 coloured7129 at child
  try dsimp only [live7130, coloured7130]
  rw [child]
  dsimp only [result7129]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7131_agree_conditional : tree7131 = literal7131 := by
  rw [tree7131_def]
  rfl
theorem node7131_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7131 live7131 coloured7131 = result7131 := by
  rw [tree7131_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7132_agree_conditional
    (child0 : tree7130 = literal7130)
    (child1 : tree7131 = literal7131) : tree7132 = literal7132 := by
  rw [tree7132_def, child0, child1]
  rfl
theorem node7132_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7130 live7130 coloured7130 = result7130)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7131 live7131 coloured7131 = result7131) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7132 live7132 coloured7132 = result7132 := by
  rw [tree7132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7130 coloured7130 at child
  try dsimp only [live7132, coloured7132]
  rw [child]
  dsimp only [result7130]
  have child := child1
  unfold live7131 coloured7131 at child
  try dsimp only [live7132, coloured7132]
  rw [child]
  dsimp only [result7131]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7133_agree_conditional : tree7133 = literal7133 := by
  rw [tree7133_def]
  rfl
theorem node7133_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7133 live7133 coloured7133 = result7133 := by
  rw [tree7133_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7134_agree_conditional
    (child0 : tree7132 = literal7132)
    (child1 : tree7133 = literal7133) : tree7134 = literal7134 := by
  rw [tree7134_def, child0, child1]
  rfl
theorem node7134_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7132 live7132 coloured7132 = result7132)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7133 live7133 coloured7133 = result7133) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7134 live7134 coloured7134 = result7134 := by
  rw [tree7134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7132 coloured7132 at child
  try dsimp only [live7134, coloured7134]
  rw [child]
  dsimp only [result7132]
  have child := child1
  unfold live7133 coloured7133 at child
  try dsimp only [live7134, coloured7134]
  rw [child]
  dsimp only [result7133]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7135_agree_conditional : tree7135 = literal7135 := by
  rw [tree7135_def]
  rfl
theorem node7135_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7135 live7135 coloured7135 = result7135 := by
  rw [tree7135_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7136_agree_conditional
    (child0 : tree7134 = literal7134)
    (child1 : tree7135 = literal7135) : tree7136 = literal7136 := by
  rw [tree7136_def, child0, child1]
  rfl
theorem node7136_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7134 live7134 coloured7134 = result7134)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7135 live7135 coloured7135 = result7135) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7136 live7136 coloured7136 = result7136 := by
  rw [tree7136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7134 coloured7134 at child
  try dsimp only [live7136, coloured7136]
  rw [child]
  dsimp only [result7134]
  have child := child1
  unfold live7135 coloured7135 at child
  try dsimp only [live7136, coloured7136]
  rw [child]
  dsimp only [result7135]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7137_agree_conditional : tree7137 = literal7137 := by
  rw [tree7137_def]
  rfl
theorem node7137_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7137 live7137 coloured7137 = result7137 := by
  rw [tree7137_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7138_agree_conditional
    (child0 : tree7136 = literal7136)
    (child1 : tree7137 = literal7137) : tree7138 = literal7138 := by
  rw [tree7138_def, child0, child1]
  rfl
theorem node7138_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7136 live7136 coloured7136 = result7136)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7137 live7137 coloured7137 = result7137) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7138 live7138 coloured7138 = result7138 := by
  rw [tree7138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7136 coloured7136 at child
  try dsimp only [live7138, coloured7138]
  rw [child]
  dsimp only [result7136]
  have child := child1
  unfold live7137 coloured7137 at child
  try dsimp only [live7138, coloured7138]
  rw [child]
  dsimp only [result7137]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7139_agree_conditional : tree7139 = literal7139 := by
  rw [tree7139_def]
  rfl
theorem node7139_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7139 live7139 coloured7139 = result7139 := by
  rw [tree7139_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7140_agree_conditional
    (child0 : tree7138 = literal7138)
    (child1 : tree7139 = literal7139) : tree7140 = literal7140 := by
  rw [tree7140_def, child0, child1]
  rfl
theorem node7140_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7138 live7138 coloured7138 = result7138)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7139 live7139 coloured7139 = result7139) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7140 live7140 coloured7140 = result7140 := by
  rw [tree7140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7138 coloured7138 at child
  try dsimp only [live7140, coloured7140]
  rw [child]
  dsimp only [result7138]
  have child := child1
  unfold live7139 coloured7139 at child
  try dsimp only [live7140, coloured7140]
  rw [child]
  dsimp only [result7139]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7141_agree_conditional : tree7141 = literal7141 := by
  rw [tree7141_def]
  rfl
theorem node7141_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7141 live7141 coloured7141 = result7141 := by
  rw [tree7141_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7142_agree_conditional
    (child0 : tree7140 = literal7140)
    (child1 : tree7141 = literal7141) : tree7142 = literal7142 := by
  rw [tree7142_def, child0, child1]
  rfl
theorem node7142_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7140 live7140 coloured7140 = result7140)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7141 live7141 coloured7141 = result7141) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7142 live7142 coloured7142 = result7142 := by
  rw [tree7142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7140 coloured7140 at child
  try dsimp only [live7142, coloured7142]
  rw [child]
  dsimp only [result7140]
  have child := child1
  unfold live7141 coloured7141 at child
  try dsimp only [live7142, coloured7142]
  rw [child]
  dsimp only [result7141]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7143_agree_conditional : tree7143 = literal7143 := by
  rw [tree7143_def]
  rfl
theorem node7143_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7143 live7143 coloured7143 = result7143 := by
  rw [tree7143_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7144_agree_conditional
    (child0 : tree7142 = literal7142)
    (child1 : tree7143 = literal7143) : tree7144 = literal7144 := by
  rw [tree7144_def, child0, child1]
  rfl
theorem node7144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7142 live7142 coloured7142 = result7142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7143 live7143 coloured7143 = result7143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7144 live7144 coloured7144 = result7144 := by
  rw [tree7144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7142 coloured7142 at child
  try dsimp only [live7144, coloured7144]
  rw [child]
  dsimp only [result7142]
  have child := child1
  unfold live7143 coloured7143 at child
  try dsimp only [live7144, coloured7144]
  rw [child]
  dsimp only [result7143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7145_agree_conditional : tree7145 = literal7145 := by
  rw [tree7145_def]
  rfl
theorem node7145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7145 live7145 coloured7145 = result7145 := by
  rw [tree7145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7146_agree_conditional
    (child0 : tree7144 = literal7144)
    (child1 : tree7145 = literal7145) : tree7146 = literal7146 := by
  rw [tree7146_def, child0, child1]
  rfl
theorem node7146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7144 live7144 coloured7144 = result7144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7145 live7145 coloured7145 = result7145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7146 live7146 coloured7146 = result7146 := by
  rw [tree7146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7144 coloured7144 at child
  try dsimp only [live7146, coloured7146]
  rw [child]
  dsimp only [result7144]
  have child := child1
  unfold live7145 coloured7145 at child
  try dsimp only [live7146, coloured7146]
  rw [child]
  dsimp only [result7145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7147_agree_conditional : tree7147 = literal7147 := by
  rw [tree7147_def]
  rfl
theorem node7147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7147 live7147 coloured7147 = result7147 := by
  rw [tree7147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7148_agree_conditional
    (child0 : tree7146 = literal7146)
    (child1 : tree7147 = literal7147) : tree7148 = literal7148 := by
  rw [tree7148_def, child0, child1]
  rfl
theorem node7148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7146 live7146 coloured7146 = result7146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7147 live7147 coloured7147 = result7147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7148 live7148 coloured7148 = result7148 := by
  rw [tree7148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7146 coloured7146 at child
  try dsimp only [live7148, coloured7148]
  rw [child]
  dsimp only [result7146]
  have child := child1
  unfold live7147 coloured7147 at child
  try dsimp only [live7148, coloured7148]
  rw [child]
  dsimp only [result7147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7149_agree_conditional : tree7149 = literal7149 := by
  rw [tree7149_def]
  rfl
theorem node7149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7149 live7149 coloured7149 = result7149 := by
  rw [tree7149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7150_agree_conditional
    (child0 : tree7148 = literal7148)
    (child1 : tree7149 = literal7149) : tree7150 = literal7150 := by
  rw [tree7150_def, child0, child1]
  rfl
theorem node7150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7148 live7148 coloured7148 = result7148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7149 live7149 coloured7149 = result7149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7150 live7150 coloured7150 = result7150 := by
  rw [tree7150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7148 coloured7148 at child
  try dsimp only [live7150, coloured7150]
  rw [child]
  dsimp only [result7148]
  have child := child1
  unfold live7149 coloured7149 at child
  try dsimp only [live7150, coloured7150]
  rw [child]
  dsimp only [result7149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7151_agree_conditional : tree7151 = literal7151 := by
  rw [tree7151_def]
  rfl
theorem node7151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7151 live7151 coloured7151 = result7151 := by
  rw [tree7151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7152_agree_conditional
    (child0 : tree7150 = literal7150)
    (child1 : tree7151 = literal7151) : tree7152 = literal7152 := by
  rw [tree7152_def, child0, child1]
  rfl
theorem node7152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7150 live7150 coloured7150 = result7150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7151 live7151 coloured7151 = result7151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7152 live7152 coloured7152 = result7152 := by
  rw [tree7152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7150 coloured7150 at child
  try dsimp only [live7152, coloured7152]
  rw [child]
  dsimp only [result7150]
  have child := child1
  unfold live7151 coloured7151 at child
  try dsimp only [live7152, coloured7152]
  rw [child]
  dsimp only [result7151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7153_agree_conditional : tree7153 = literal7153 := by
  rw [tree7153_def]
  rfl
theorem node7153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7153 live7153 coloured7153 = result7153 := by
  rw [tree7153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7154_agree_conditional
    (child0 : tree7152 = literal7152)
    (child1 : tree7153 = literal7153) : tree7154 = literal7154 := by
  rw [tree7154_def, child0, child1]
  rfl
theorem node7154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7152 live7152 coloured7152 = result7152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7153 live7153 coloured7153 = result7153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7154 live7154 coloured7154 = result7154 := by
  rw [tree7154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7152 coloured7152 at child
  try dsimp only [live7154, coloured7154]
  rw [child]
  dsimp only [result7152]
  have child := child1
  unfold live7153 coloured7153 at child
  try dsimp only [live7154, coloured7154]
  rw [child]
  dsimp only [result7153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7155_agree_conditional : tree7155 = literal7155 := by
  rw [tree7155_def]
  rfl
theorem node7155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7155 live7155 coloured7155 = result7155 := by
  rw [tree7155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7156_agree_conditional
    (child0 : tree7154 = literal7154)
    (child1 : tree7155 = literal7155) : tree7156 = literal7156 := by
  rw [tree7156_def, child0, child1]
  rfl
theorem node7156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7154 live7154 coloured7154 = result7154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7155 live7155 coloured7155 = result7155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7156 live7156 coloured7156 = result7156 := by
  rw [tree7156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7154 coloured7154 at child
  try dsimp only [live7156, coloured7156]
  rw [child]
  dsimp only [result7154]
  have child := child1
  unfold live7155 coloured7155 at child
  try dsimp only [live7156, coloured7156]
  rw [child]
  dsimp only [result7155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7157_agree_conditional : tree7157 = literal7157 := by
  rw [tree7157_def]
  rfl
theorem node7157_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7157 live7157 coloured7157 = result7157 := by
  rw [tree7157_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7158_agree_conditional
    (child0 : tree7156 = literal7156)
    (child1 : tree7157 = literal7157) : tree7158 = literal7158 := by
  rw [tree7158_def, child0, child1]
  rfl
theorem node7158_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7156 live7156 coloured7156 = result7156)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7157 live7157 coloured7157 = result7157) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7158 live7158 coloured7158 = result7158 := by
  rw [tree7158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7156 coloured7156 at child
  try dsimp only [live7158, coloured7158]
  rw [child]
  dsimp only [result7156]
  have child := child1
  unfold live7157 coloured7157 at child
  try dsimp only [live7158, coloured7158]
  rw [child]
  dsimp only [result7157]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7159_agree_conditional : tree7159 = literal7159 := by
  rw [tree7159_def]
  rfl
theorem node7159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7159 live7159 coloured7159 = result7159 := by
  rw [tree7159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7160_agree_conditional
    (child0 : tree7158 = literal7158)
    (child1 : tree7159 = literal7159) : tree7160 = literal7160 := by
  rw [tree7160_def, child0, child1]
  rfl
theorem node7160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7158 live7158 coloured7158 = result7158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7159 live7159 coloured7159 = result7159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7160 live7160 coloured7160 = result7160 := by
  rw [tree7160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7158 coloured7158 at child
  try dsimp only [live7160, coloured7160]
  rw [child]
  dsimp only [result7158]
  have child := child1
  unfold live7159 coloured7159 at child
  try dsimp only [live7160, coloured7160]
  rw [child]
  dsimp only [result7159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7161_agree_conditional : tree7161 = literal7161 := by
  rw [tree7161_def]
  rfl
theorem node7161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7161 live7161 coloured7161 = result7161 := by
  rw [tree7161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7162_agree_conditional
    (child0 : tree7160 = literal7160)
    (child1 : tree7161 = literal7161) : tree7162 = literal7162 := by
  rw [tree7162_def, child0, child1]
  rfl
theorem node7162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7160 live7160 coloured7160 = result7160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7161 live7161 coloured7161 = result7161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7162 live7162 coloured7162 = result7162 := by
  rw [tree7162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7160 coloured7160 at child
  try dsimp only [live7162, coloured7162]
  rw [child]
  dsimp only [result7160]
  have child := child1
  unfold live7161 coloured7161 at child
  try dsimp only [live7162, coloured7162]
  rw [child]
  dsimp only [result7161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7163_agree_conditional : tree7163 = literal7163 := by
  rw [tree7163_def]
  rfl
theorem node7163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7163 live7163 coloured7163 = result7163 := by
  rw [tree7163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7164_agree_conditional
    (child0 : tree7162 = literal7162)
    (child1 : tree7163 = literal7163) : tree7164 = literal7164 := by
  rw [tree7164_def, child0, child1]
  rfl
theorem node7164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7162 live7162 coloured7162 = result7162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7163 live7163 coloured7163 = result7163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7164 live7164 coloured7164 = result7164 := by
  rw [tree7164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7162 coloured7162 at child
  try dsimp only [live7164, coloured7164]
  rw [child]
  dsimp only [result7162]
  have child := child1
  unfold live7163 coloured7163 at child
  try dsimp only [live7164, coloured7164]
  rw [child]
  dsimp only [result7163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7165_agree_conditional : tree7165 = literal7165 := by
  rw [tree7165_def]
  rfl
theorem node7165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7165 live7165 coloured7165 = result7165 := by
  rw [tree7165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7166_agree_conditional
    (child0 : tree7164 = literal7164)
    (child1 : tree7165 = literal7165) : tree7166 = literal7166 := by
  rw [tree7166_def, child0, child1]
  rfl
theorem node7166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7164 live7164 coloured7164 = result7164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7165 live7165 coloured7165 = result7165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7166 live7166 coloured7166 = result7166 := by
  rw [tree7166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7164 coloured7164 at child
  try dsimp only [live7166, coloured7166]
  rw [child]
  dsimp only [result7164]
  have child := child1
  unfold live7165 coloured7165 at child
  try dsimp only [live7166, coloured7166]
  rw [child]
  dsimp only [result7165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7167_agree_conditional : tree7167 = literal7167 := by
  rw [tree7167_def]
  rfl
theorem node7167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7167 live7167 coloured7167 = result7167 := by
  rw [tree7167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7168_agree_conditional
    (child0 : tree7166 = literal7166)
    (child1 : tree7167 = literal7167) : tree7168 = literal7168 := by
  rw [tree7168_def, child0, child1]
  rfl
theorem node7168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7166 live7166 coloured7166 = result7166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7167 live7167 coloured7167 = result7167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7168 live7168 coloured7168 = result7168 := by
  rw [tree7168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7166 coloured7166 at child
  try dsimp only [live7168, coloured7168]
  rw [child]
  dsimp only [result7166]
  have child := child1
  unfold live7167 coloured7167 at child
  try dsimp only [live7168, coloured7168]
  rw [child]
  dsimp only [result7167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7169_agree_conditional : tree7169 = literal7169 := by
  rw [tree7169_def]
  rfl
theorem node7169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7169 live7169 coloured7169 = result7169 := by
  rw [tree7169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7170_agree_conditional
    (child0 : tree7168 = literal7168)
    (child1 : tree7169 = literal7169) : tree7170 = literal7170 := by
  rw [tree7170_def, child0, child1]
  rfl
theorem node7170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7168 live7168 coloured7168 = result7168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7169 live7169 coloured7169 = result7169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7170 live7170 coloured7170 = result7170 := by
  rw [tree7170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7168 coloured7168 at child
  try dsimp only [live7170, coloured7170]
  rw [child]
  dsimp only [result7168]
  have child := child1
  unfold live7169 coloured7169 at child
  try dsimp only [live7170, coloured7170]
  rw [child]
  dsimp only [result7169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7171_agree_conditional : tree7171 = literal7171 := by
  rw [tree7171_def]
  rfl
theorem node7171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7171 live7171 coloured7171 = result7171 := by
  rw [tree7171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7172_agree_conditional
    (child0 : tree7170 = literal7170)
    (child1 : tree7171 = literal7171) : tree7172 = literal7172 := by
  rw [tree7172_def, child0, child1]
  rfl
theorem node7172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7170 live7170 coloured7170 = result7170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7171 live7171 coloured7171 = result7171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7172 live7172 coloured7172 = result7172 := by
  rw [tree7172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7170 coloured7170 at child
  try dsimp only [live7172, coloured7172]
  rw [child]
  dsimp only [result7170]
  have child := child1
  unfold live7171 coloured7171 at child
  try dsimp only [live7172, coloured7172]
  rw [child]
  dsimp only [result7171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7173_agree_conditional : tree7173 = literal7173 := by
  rw [tree7173_def]
  rfl
theorem node7173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7173 live7173 coloured7173 = result7173 := by
  rw [tree7173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7174_agree_conditional
    (child0 : tree7172 = literal7172)
    (child1 : tree7173 = literal7173) : tree7174 = literal7174 := by
  rw [tree7174_def, child0, child1]
  rfl
theorem node7174_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7172 live7172 coloured7172 = result7172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7173 live7173 coloured7173 = result7173) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7174 live7174 coloured7174 = result7174 := by
  rw [tree7174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7172 coloured7172 at child
  try dsimp only [live7174, coloured7174]
  rw [child]
  dsimp only [result7172]
  have child := child1
  unfold live7173 coloured7173 at child
  try dsimp only [live7174, coloured7174]
  rw [child]
  dsimp only [result7173]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7175_agree_conditional : tree7175 = literal7175 := by
  rw [tree7175_def]
  rfl
theorem node7175_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7175 live7175 coloured7175 = result7175 := by
  rw [tree7175_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7176_agree_conditional
    (child0 : tree7174 = literal7174)
    (child1 : tree7175 = literal7175) : tree7176 = literal7176 := by
  rw [tree7176_def, child0, child1]
  rfl
theorem node7176_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7174 live7174 coloured7174 = result7174)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7175 live7175 coloured7175 = result7175) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7176 live7176 coloured7176 = result7176 := by
  rw [tree7176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7174 coloured7174 at child
  try dsimp only [live7176, coloured7176]
  rw [child]
  dsimp only [result7174]
  have child := child1
  unfold live7175 coloured7175 at child
  try dsimp only [live7176, coloured7176]
  rw [child]
  dsimp only [result7175]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7177_agree_conditional : tree7177 = literal7177 := by
  rw [tree7177_def]
  rfl
theorem node7177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7177 live7177 coloured7177 = result7177 := by
  rw [tree7177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7178_agree_conditional
    (child0 : tree7176 = literal7176)
    (child1 : tree7177 = literal7177) : tree7178 = literal7178 := by
  rw [tree7178_def, child0, child1]
  rfl
theorem node7178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7176 live7176 coloured7176 = result7176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7177 live7177 coloured7177 = result7177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7178 live7178 coloured7178 = result7178 := by
  rw [tree7178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7176 coloured7176 at child
  try dsimp only [live7178, coloured7178]
  rw [child]
  dsimp only [result7176]
  have child := child1
  unfold live7177 coloured7177 at child
  try dsimp only [live7178, coloured7178]
  rw [child]
  dsimp only [result7177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7179_agree_conditional : tree7179 = literal7179 := by
  rw [tree7179_def]
  rfl
theorem node7179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7179 live7179 coloured7179 = result7179 := by
  rw [tree7179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7180_agree_conditional
    (child0 : tree7178 = literal7178)
    (child1 : tree7179 = literal7179) : tree7180 = literal7180 := by
  rw [tree7180_def, child0, child1]
  rfl
theorem node7180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7178 live7178 coloured7178 = result7178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7179 live7179 coloured7179 = result7179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7180 live7180 coloured7180 = result7180 := by
  rw [tree7180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7178 coloured7178 at child
  try dsimp only [live7180, coloured7180]
  rw [child]
  dsimp only [result7178]
  have child := child1
  unfold live7179 coloured7179 at child
  try dsimp only [live7180, coloured7180]
  rw [child]
  dsimp only [result7179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7181_agree_conditional : tree7181 = literal7181 := by
  rw [tree7181_def]
  rfl
theorem node7181_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7181 live7181 coloured7181 = result7181 := by
  rw [tree7181_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7182_agree_conditional
    (child0 : tree7180 = literal7180)
    (child1 : tree7181 = literal7181) : tree7182 = literal7182 := by
  rw [tree7182_def, child0, child1]
  rfl
theorem node7182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7180 live7180 coloured7180 = result7180)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7181 live7181 coloured7181 = result7181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7182 live7182 coloured7182 = result7182 := by
  rw [tree7182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7180 coloured7180 at child
  try dsimp only [live7182, coloured7182]
  rw [child]
  dsimp only [result7180]
  have child := child1
  unfold live7181 coloured7181 at child
  try dsimp only [live7182, coloured7182]
  rw [child]
  dsimp only [result7181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7183_agree_conditional : tree7183 = literal7183 := by
  rw [tree7183_def]
  rfl
theorem node7183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7183 live7183 coloured7183 = result7183 := by
  rw [tree7183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7184_agree_conditional
    (child0 : tree7182 = literal7182)
    (child1 : tree7183 = literal7183) : tree7184 = literal7184 := by
  rw [tree7184_def, child0, child1]
  rfl
theorem node7184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7182 live7182 coloured7182 = result7182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7183 live7183 coloured7183 = result7183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7184 live7184 coloured7184 = result7184 := by
  rw [tree7184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7182 coloured7182 at child
  try dsimp only [live7184, coloured7184]
  rw [child]
  dsimp only [result7182]
  have child := child1
  unfold live7183 coloured7183 at child
  try dsimp only [live7184, coloured7184]
  rw [child]
  dsimp only [result7183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7185_agree_conditional : tree7185 = literal7185 := by
  rw [tree7185_def]
  rfl
theorem node7185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7185 live7185 coloured7185 = result7185 := by
  rw [tree7185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7186_agree_conditional
    (child0 : tree7184 = literal7184)
    (child1 : tree7185 = literal7185) : tree7186 = literal7186 := by
  rw [tree7186_def, child0, child1]
  rfl
theorem node7186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7184 live7184 coloured7184 = result7184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7185 live7185 coloured7185 = result7185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7186 live7186 coloured7186 = result7186 := by
  rw [tree7186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7184 coloured7184 at child
  try dsimp only [live7186, coloured7186]
  rw [child]
  dsimp only [result7184]
  have child := child1
  unfold live7185 coloured7185 at child
  try dsimp only [live7186, coloured7186]
  rw [child]
  dsimp only [result7185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7187_agree_conditional : tree7187 = literal7187 := by
  rw [tree7187_def]
  rfl
theorem node7187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7187 live7187 coloured7187 = result7187 := by
  rw [tree7187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7188_agree_conditional
    (child0 : tree7186 = literal7186)
    (child1 : tree7187 = literal7187) : tree7188 = literal7188 := by
  rw [tree7188_def, child0, child1]
  rfl
theorem node7188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7186 live7186 coloured7186 = result7186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7187 live7187 coloured7187 = result7187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7188 live7188 coloured7188 = result7188 := by
  rw [tree7188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7186 coloured7186 at child
  try dsimp only [live7188, coloured7188]
  rw [child]
  dsimp only [result7186]
  have child := child1
  unfold live7187 coloured7187 at child
  try dsimp only [live7188, coloured7188]
  rw [child]
  dsimp only [result7187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7189_agree_conditional : tree7189 = literal7189 := by
  rw [tree7189_def]
  rfl
theorem node7189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7189 live7189 coloured7189 = result7189 := by
  rw [tree7189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7190_agree_conditional
    (child0 : tree7188 = literal7188)
    (child1 : tree7189 = literal7189) : tree7190 = literal7190 := by
  rw [tree7190_def, child0, child1]
  rfl
theorem node7190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7188 live7188 coloured7188 = result7188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7189 live7189 coloured7189 = result7189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7190 live7190 coloured7190 = result7190 := by
  rw [tree7190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7188 coloured7188 at child
  try dsimp only [live7190, coloured7190]
  rw [child]
  dsimp only [result7188]
  have child := child1
  unfold live7189 coloured7189 at child
  try dsimp only [live7190, coloured7190]
  rw [child]
  dsimp only [result7189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7191_agree_conditional : tree7191 = literal7191 := by
  rw [tree7191_def]
  rfl
theorem node7191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7191 live7191 coloured7191 = result7191 := by
  rw [tree7191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7192_agree_conditional
    (child0 : tree7190 = literal7190)
    (child1 : tree7191 = literal7191) : tree7192 = literal7192 := by
  rw [tree7192_def, child0, child1]
  rfl
theorem node7192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7190 live7190 coloured7190 = result7190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7191 live7191 coloured7191 = result7191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7192 live7192 coloured7192 = result7192 := by
  rw [tree7192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7190 coloured7190 at child
  try dsimp only [live7192, coloured7192]
  rw [child]
  dsimp only [result7190]
  have child := child1
  unfold live7191 coloured7191 at child
  try dsimp only [live7192, coloured7192]
  rw [child]
  dsimp only [result7191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7193_agree_conditional : tree7193 = literal7193 := by
  rw [tree7193_def]
  rfl
theorem node7193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7193 live7193 coloured7193 = result7193 := by
  rw [tree7193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7194_agree_conditional
    (child0 : tree7192 = literal7192)
    (child1 : tree7193 = literal7193) : tree7194 = literal7194 := by
  rw [tree7194_def, child0, child1]
  rfl
theorem node7194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7192 live7192 coloured7192 = result7192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7193 live7193 coloured7193 = result7193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7194 live7194 coloured7194 = result7194 := by
  rw [tree7194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7192 coloured7192 at child
  try dsimp only [live7194, coloured7194]
  rw [child]
  dsimp only [result7192]
  have child := child1
  unfold live7193 coloured7193 at child
  try dsimp only [live7194, coloured7194]
  rw [child]
  dsimp only [result7193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7195_agree_conditional : tree7195 = literal7195 := by
  rw [tree7195_def]
  rfl
theorem node7195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7195 live7195 coloured7195 = result7195 := by
  rw [tree7195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7196_agree_conditional
    (child0 : tree7194 = literal7194)
    (child1 : tree7195 = literal7195) : tree7196 = literal7196 := by
  rw [tree7196_def, child0, child1]
  rfl
theorem node7196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7194 live7194 coloured7194 = result7194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7195 live7195 coloured7195 = result7195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7196 live7196 coloured7196 = result7196 := by
  rw [tree7196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7194 coloured7194 at child
  try dsimp only [live7196, coloured7196]
  rw [child]
  dsimp only [result7194]
  have child := child1
  unfold live7195 coloured7195 at child
  try dsimp only [live7196, coloured7196]
  rw [child]
  dsimp only [result7195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7197_agree_conditional : tree7197 = literal7197 := by
  rw [tree7197_def]
  rfl
theorem node7197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7197 live7197 coloured7197 = result7197 := by
  rw [tree7197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7198_agree_conditional
    (child0 : tree7196 = literal7196)
    (child1 : tree7197 = literal7197) : tree7198 = literal7198 := by
  rw [tree7198_def, child0, child1]
  rfl
theorem node7198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7196 live7196 coloured7196 = result7196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7197 live7197 coloured7197 = result7197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7198 live7198 coloured7198 = result7198 := by
  rw [tree7198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7196 coloured7196 at child
  try dsimp only [live7198, coloured7198]
  rw [child]
  dsimp only [result7196]
  have child := child1
  unfold live7197 coloured7197 at child
  try dsimp only [live7198, coloured7198]
  rw [child]
  dsimp only [result7197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7199_agree_conditional : tree7199 = literal7199 := by
  rw [tree7199_def]
  rfl
theorem node7199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7199 live7199 coloured7199 = result7199 := by
  rw [tree7199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
