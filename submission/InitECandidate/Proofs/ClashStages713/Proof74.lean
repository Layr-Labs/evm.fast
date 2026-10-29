import InitECandidate.Proofs.ClashStages713.Proof73
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree7104_agree : tree7104 = literal7104 := by
  rw [tree7104_def, tree7102_agree, tree7103_agree]
  rfl
theorem node7104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7104 live7104 coloured7104 = result7104 := by
  rw [tree7104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7102_eq
  unfold live7102 coloured7102 at child
  try dsimp only [live7104, coloured7104]
  rw [child]
  dsimp only [result7102]
  have child := node7103_eq
  unfold live7103 coloured7103 at child
  try dsimp only [live7104, coloured7104]
  rw [child]
  dsimp only [result7103]
  try dsimp only [colour, result7104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7105_agree : tree7105 = literal7105 := by
  rw [tree7105_def]
  rfl
theorem node7105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7105 live7105 coloured7105 = result7105 := by
  rw [tree7105_def]
  try dsimp only [colour, result7105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7106_agree : tree7106 = literal7106 := by
  rw [tree7106_def, tree7104_agree, tree7105_agree]
  rfl
theorem node7106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7106 live7106 coloured7106 = result7106 := by
  rw [tree7106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7104_eq
  unfold live7104 coloured7104 at child
  try dsimp only [live7106, coloured7106]
  rw [child]
  dsimp only [result7104]
  have child := node7105_eq
  unfold live7105 coloured7105 at child
  try dsimp only [live7106, coloured7106]
  rw [child]
  dsimp only [result7105]
  try dsimp only [colour, result7106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7107_agree : tree7107 = literal7107 := by
  rw [tree7107_def]
  rfl
theorem node7107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7107 live7107 coloured7107 = result7107 := by
  rw [tree7107_def]
  try dsimp only [colour, result7107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7108_agree : tree7108 = literal7108 := by
  rw [tree7108_def, tree7106_agree, tree7107_agree]
  rfl
theorem node7108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7108 live7108 coloured7108 = result7108 := by
  rw [tree7108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7106_eq
  unfold live7106 coloured7106 at child
  try dsimp only [live7108, coloured7108]
  rw [child]
  dsimp only [result7106]
  have child := node7107_eq
  unfold live7107 coloured7107 at child
  try dsimp only [live7108, coloured7108]
  rw [child]
  dsimp only [result7107]
  try dsimp only [colour, result7108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7109_agree : tree7109 = literal7109 := by
  rw [tree7109_def]
  rfl
theorem node7109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7109 live7109 coloured7109 = result7109 := by
  rw [tree7109_def]
  try dsimp only [colour, result7109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7110_agree : tree7110 = literal7110 := by
  rw [tree7110_def, tree7108_agree, tree7109_agree]
  rfl
theorem node7110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7110 live7110 coloured7110 = result7110 := by
  rw [tree7110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7108_eq
  unfold live7108 coloured7108 at child
  try dsimp only [live7110, coloured7110]
  rw [child]
  dsimp only [result7108]
  have child := node7109_eq
  unfold live7109 coloured7109 at child
  try dsimp only [live7110, coloured7110]
  rw [child]
  dsimp only [result7109]
  try dsimp only [colour, result7110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7111_agree : tree7111 = literal7111 := by
  rw [tree7111_def]
  rfl
theorem node7111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7111 live7111 coloured7111 = result7111 := by
  rw [tree7111_def]
  try dsimp only [colour, result7111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7112_agree : tree7112 = literal7112 := by
  rw [tree7112_def, tree7110_agree, tree7111_agree]
  rfl
theorem node7112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7112 live7112 coloured7112 = result7112 := by
  rw [tree7112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7110_eq
  unfold live7110 coloured7110 at child
  try dsimp only [live7112, coloured7112]
  rw [child]
  dsimp only [result7110]
  have child := node7111_eq
  unfold live7111 coloured7111 at child
  try dsimp only [live7112, coloured7112]
  rw [child]
  dsimp only [result7111]
  try dsimp only [colour, result7112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7113_agree : tree7113 = literal7113 := by
  rw [tree7113_def]
  rfl
theorem node7113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7113 live7113 coloured7113 = result7113 := by
  rw [tree7113_def]
  try dsimp only [colour, result7113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7114_agree : tree7114 = literal7114 := by
  rw [tree7114_def, tree7112_agree, tree7113_agree]
  rfl
theorem node7114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7114 live7114 coloured7114 = result7114 := by
  rw [tree7114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7112_eq
  unfold live7112 coloured7112 at child
  try dsimp only [live7114, coloured7114]
  rw [child]
  dsimp only [result7112]
  have child := node7113_eq
  unfold live7113 coloured7113 at child
  try dsimp only [live7114, coloured7114]
  rw [child]
  dsimp only [result7113]
  try dsimp only [colour, result7114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7115_agree : tree7115 = literal7115 := by
  rw [tree7115_def]
  rfl
theorem node7115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7115 live7115 coloured7115 = result7115 := by
  rw [tree7115_def]
  try dsimp only [colour, result7115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7116_agree : tree7116 = literal7116 := by
  rw [tree7116_def, tree7114_agree, tree7115_agree]
  rfl
theorem node7116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7116 live7116 coloured7116 = result7116 := by
  rw [tree7116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7114_eq
  unfold live7114 coloured7114 at child
  try dsimp only [live7116, coloured7116]
  rw [child]
  dsimp only [result7114]
  have child := node7115_eq
  unfold live7115 coloured7115 at child
  try dsimp only [live7116, coloured7116]
  rw [child]
  dsimp only [result7115]
  try dsimp only [colour, result7116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7117_agree : tree7117 = literal7117 := by
  rw [tree7117_def]
  rfl
theorem node7117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7117 live7117 coloured7117 = result7117 := by
  rw [tree7117_def]
  try dsimp only [colour, result7117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7118_agree : tree7118 = literal7118 := by
  rw [tree7118_def, tree7116_agree, tree7117_agree]
  rfl
theorem node7118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7118 live7118 coloured7118 = result7118 := by
  rw [tree7118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7116_eq
  unfold live7116 coloured7116 at child
  try dsimp only [live7118, coloured7118]
  rw [child]
  dsimp only [result7116]
  have child := node7117_eq
  unfold live7117 coloured7117 at child
  try dsimp only [live7118, coloured7118]
  rw [child]
  dsimp only [result7117]
  try dsimp only [colour, result7118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7119_agree : tree7119 = literal7119 := by
  rw [tree7119_def]
  rfl
theorem node7119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7119 live7119 coloured7119 = result7119 := by
  rw [tree7119_def]
  try dsimp only [colour, result7119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7120_agree : tree7120 = literal7120 := by
  rw [tree7120_def, tree7118_agree, tree7119_agree]
  rfl
theorem node7120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7120 live7120 coloured7120 = result7120 := by
  rw [tree7120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7118_eq
  unfold live7118 coloured7118 at child
  try dsimp only [live7120, coloured7120]
  rw [child]
  dsimp only [result7118]
  have child := node7119_eq
  unfold live7119 coloured7119 at child
  try dsimp only [live7120, coloured7120]
  rw [child]
  dsimp only [result7119]
  try dsimp only [colour, result7120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7121_agree : tree7121 = literal7121 := by
  rw [tree7121_def]
  rfl
theorem node7121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7121 live7121 coloured7121 = result7121 := by
  rw [tree7121_def]
  try dsimp only [colour, result7121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7122_agree : tree7122 = literal7122 := by
  rw [tree7122_def, tree7120_agree, tree7121_agree]
  rfl
theorem node7122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7122 live7122 coloured7122 = result7122 := by
  rw [tree7122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7120_eq
  unfold live7120 coloured7120 at child
  try dsimp only [live7122, coloured7122]
  rw [child]
  dsimp only [result7120]
  have child := node7121_eq
  unfold live7121 coloured7121 at child
  try dsimp only [live7122, coloured7122]
  rw [child]
  dsimp only [result7121]
  try dsimp only [colour, result7122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7123_agree : tree7123 = literal7123 := by
  rw [tree7123_def]
  rfl
theorem node7123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7123 live7123 coloured7123 = result7123 := by
  rw [tree7123_def]
  try dsimp only [colour, result7123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7124_agree : tree7124 = literal7124 := by
  rw [tree7124_def, tree7122_agree, tree7123_agree]
  rfl
theorem node7124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7124 live7124 coloured7124 = result7124 := by
  rw [tree7124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7122_eq
  unfold live7122 coloured7122 at child
  try dsimp only [live7124, coloured7124]
  rw [child]
  dsimp only [result7122]
  have child := node7123_eq
  unfold live7123 coloured7123 at child
  try dsimp only [live7124, coloured7124]
  rw [child]
  dsimp only [result7123]
  try dsimp only [colour, result7124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7125_agree : tree7125 = literal7125 := by
  rw [tree7125_def]
  rfl
theorem node7125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7125 live7125 coloured7125 = result7125 := by
  rw [tree7125_def]
  try dsimp only [colour, result7125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7126_agree : tree7126 = literal7126 := by
  rw [tree7126_def, tree7124_agree, tree7125_agree]
  rfl
theorem node7126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7126 live7126 coloured7126 = result7126 := by
  rw [tree7126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7124_eq
  unfold live7124 coloured7124 at child
  try dsimp only [live7126, coloured7126]
  rw [child]
  dsimp only [result7124]
  have child := node7125_eq
  unfold live7125 coloured7125 at child
  try dsimp only [live7126, coloured7126]
  rw [child]
  dsimp only [result7125]
  try dsimp only [colour, result7126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7127_agree : tree7127 = literal7127 := by
  rw [tree7127_def]
  rfl
theorem node7127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7127 live7127 coloured7127 = result7127 := by
  rw [tree7127_def]
  try dsimp only [colour, result7127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7128_agree : tree7128 = literal7128 := by
  rw [tree7128_def, tree7126_agree, tree7127_agree]
  rfl
theorem node7128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7128 live7128 coloured7128 = result7128 := by
  rw [tree7128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7126_eq
  unfold live7126 coloured7126 at child
  try dsimp only [live7128, coloured7128]
  rw [child]
  dsimp only [result7126]
  have child := node7127_eq
  unfold live7127 coloured7127 at child
  try dsimp only [live7128, coloured7128]
  rw [child]
  dsimp only [result7127]
  try dsimp only [colour, result7128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7129_agree : tree7129 = literal7129 := by
  rw [tree7129_def]
  rfl
theorem node7129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7129 live7129 coloured7129 = result7129 := by
  rw [tree7129_def]
  try dsimp only [colour, result7129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7130_agree : tree7130 = literal7130 := by
  rw [tree7130_def, tree7128_agree, tree7129_agree]
  rfl
theorem node7130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7130 live7130 coloured7130 = result7130 := by
  rw [tree7130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7128_eq
  unfold live7128 coloured7128 at child
  try dsimp only [live7130, coloured7130]
  rw [child]
  dsimp only [result7128]
  have child := node7129_eq
  unfold live7129 coloured7129 at child
  try dsimp only [live7130, coloured7130]
  rw [child]
  dsimp only [result7129]
  try dsimp only [colour, result7130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7131_agree : tree7131 = literal7131 := by
  rw [tree7131_def]
  rfl
theorem node7131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7131 live7131 coloured7131 = result7131 := by
  rw [tree7131_def]
  try dsimp only [colour, result7131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7132_agree : tree7132 = literal7132 := by
  rw [tree7132_def, tree7130_agree, tree7131_agree]
  rfl
theorem node7132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7132 live7132 coloured7132 = result7132 := by
  rw [tree7132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7130_eq
  unfold live7130 coloured7130 at child
  try dsimp only [live7132, coloured7132]
  rw [child]
  dsimp only [result7130]
  have child := node7131_eq
  unfold live7131 coloured7131 at child
  try dsimp only [live7132, coloured7132]
  rw [child]
  dsimp only [result7131]
  try dsimp only [colour, result7132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7133_agree : tree7133 = literal7133 := by
  rw [tree7133_def]
  rfl
theorem node7133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7133 live7133 coloured7133 = result7133 := by
  rw [tree7133_def]
  try dsimp only [colour, result7133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7134_agree : tree7134 = literal7134 := by
  rw [tree7134_def, tree7132_agree, tree7133_agree]
  rfl
theorem node7134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7134 live7134 coloured7134 = result7134 := by
  rw [tree7134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7132_eq
  unfold live7132 coloured7132 at child
  try dsimp only [live7134, coloured7134]
  rw [child]
  dsimp only [result7132]
  have child := node7133_eq
  unfold live7133 coloured7133 at child
  try dsimp only [live7134, coloured7134]
  rw [child]
  dsimp only [result7133]
  try dsimp only [colour, result7134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7135_agree : tree7135 = literal7135 := by
  rw [tree7135_def]
  rfl
theorem node7135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7135 live7135 coloured7135 = result7135 := by
  rw [tree7135_def]
  try dsimp only [colour, result7135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7136_agree : tree7136 = literal7136 := by
  rw [tree7136_def, tree7134_agree, tree7135_agree]
  rfl
theorem node7136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7136 live7136 coloured7136 = result7136 := by
  rw [tree7136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7134_eq
  unfold live7134 coloured7134 at child
  try dsimp only [live7136, coloured7136]
  rw [child]
  dsimp only [result7134]
  have child := node7135_eq
  unfold live7135 coloured7135 at child
  try dsimp only [live7136, coloured7136]
  rw [child]
  dsimp only [result7135]
  try dsimp only [colour, result7136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7137_agree : tree7137 = literal7137 := by
  rw [tree7137_def]
  rfl
theorem node7137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7137 live7137 coloured7137 = result7137 := by
  rw [tree7137_def]
  try dsimp only [colour, result7137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7138_agree : tree7138 = literal7138 := by
  rw [tree7138_def, tree7136_agree, tree7137_agree]
  rfl
theorem node7138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7138 live7138 coloured7138 = result7138 := by
  rw [tree7138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7136_eq
  unfold live7136 coloured7136 at child
  try dsimp only [live7138, coloured7138]
  rw [child]
  dsimp only [result7136]
  have child := node7137_eq
  unfold live7137 coloured7137 at child
  try dsimp only [live7138, coloured7138]
  rw [child]
  dsimp only [result7137]
  try dsimp only [colour, result7138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7139_agree : tree7139 = literal7139 := by
  rw [tree7139_def]
  rfl
theorem node7139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7139 live7139 coloured7139 = result7139 := by
  rw [tree7139_def]
  try dsimp only [colour, result7139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7140_agree : tree7140 = literal7140 := by
  rw [tree7140_def, tree7138_agree, tree7139_agree]
  rfl
theorem node7140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7140 live7140 coloured7140 = result7140 := by
  rw [tree7140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7138_eq
  unfold live7138 coloured7138 at child
  try dsimp only [live7140, coloured7140]
  rw [child]
  dsimp only [result7138]
  have child := node7139_eq
  unfold live7139 coloured7139 at child
  try dsimp only [live7140, coloured7140]
  rw [child]
  dsimp only [result7139]
  try dsimp only [colour, result7140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7141_agree : tree7141 = literal7141 := by
  rw [tree7141_def]
  rfl
theorem node7141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7141 live7141 coloured7141 = result7141 := by
  rw [tree7141_def]
  try dsimp only [colour, result7141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7142_agree : tree7142 = literal7142 := by
  rw [tree7142_def, tree7140_agree, tree7141_agree]
  rfl
theorem node7142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7142 live7142 coloured7142 = result7142 := by
  rw [tree7142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7140_eq
  unfold live7140 coloured7140 at child
  try dsimp only [live7142, coloured7142]
  rw [child]
  dsimp only [result7140]
  have child := node7141_eq
  unfold live7141 coloured7141 at child
  try dsimp only [live7142, coloured7142]
  rw [child]
  dsimp only [result7141]
  try dsimp only [colour, result7142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7143_agree : tree7143 = literal7143 := by
  rw [tree7143_def]
  rfl
theorem node7143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7143 live7143 coloured7143 = result7143 := by
  rw [tree7143_def]
  try dsimp only [colour, result7143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7144_agree : tree7144 = literal7144 := by
  rw [tree7144_def, tree7142_agree, tree7143_agree]
  rfl
theorem node7144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7144 live7144 coloured7144 = result7144 := by
  rw [tree7144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7142_eq
  unfold live7142 coloured7142 at child
  try dsimp only [live7144, coloured7144]
  rw [child]
  dsimp only [result7142]
  have child := node7143_eq
  unfold live7143 coloured7143 at child
  try dsimp only [live7144, coloured7144]
  rw [child]
  dsimp only [result7143]
  try dsimp only [colour, result7144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7145_agree : tree7145 = literal7145 := by
  rw [tree7145_def]
  rfl
theorem node7145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7145 live7145 coloured7145 = result7145 := by
  rw [tree7145_def]
  try dsimp only [colour, result7145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7146_agree : tree7146 = literal7146 := by
  rw [tree7146_def, tree7144_agree, tree7145_agree]
  rfl
theorem node7146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7146 live7146 coloured7146 = result7146 := by
  rw [tree7146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7144_eq
  unfold live7144 coloured7144 at child
  try dsimp only [live7146, coloured7146]
  rw [child]
  dsimp only [result7144]
  have child := node7145_eq
  unfold live7145 coloured7145 at child
  try dsimp only [live7146, coloured7146]
  rw [child]
  dsimp only [result7145]
  try dsimp only [colour, result7146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7147_agree : tree7147 = literal7147 := by
  rw [tree7147_def]
  rfl
theorem node7147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7147 live7147 coloured7147 = result7147 := by
  rw [tree7147_def]
  try dsimp only [colour, result7147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7148_agree : tree7148 = literal7148 := by
  rw [tree7148_def, tree7146_agree, tree7147_agree]
  rfl
theorem node7148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7148 live7148 coloured7148 = result7148 := by
  rw [tree7148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7146_eq
  unfold live7146 coloured7146 at child
  try dsimp only [live7148, coloured7148]
  rw [child]
  dsimp only [result7146]
  have child := node7147_eq
  unfold live7147 coloured7147 at child
  try dsimp only [live7148, coloured7148]
  rw [child]
  dsimp only [result7147]
  try dsimp only [colour, result7148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7149_agree : tree7149 = literal7149 := by
  rw [tree7149_def]
  rfl
theorem node7149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7149 live7149 coloured7149 = result7149 := by
  rw [tree7149_def]
  try dsimp only [colour, result7149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7150_agree : tree7150 = literal7150 := by
  rw [tree7150_def, tree7148_agree, tree7149_agree]
  rfl
theorem node7150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7150 live7150 coloured7150 = result7150 := by
  rw [tree7150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7148_eq
  unfold live7148 coloured7148 at child
  try dsimp only [live7150, coloured7150]
  rw [child]
  dsimp only [result7148]
  have child := node7149_eq
  unfold live7149 coloured7149 at child
  try dsimp only [live7150, coloured7150]
  rw [child]
  dsimp only [result7149]
  try dsimp only [colour, result7150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7151_agree : tree7151 = literal7151 := by
  rw [tree7151_def]
  rfl
theorem node7151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7151 live7151 coloured7151 = result7151 := by
  rw [tree7151_def]
  try dsimp only [colour, result7151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7152_agree : tree7152 = literal7152 := by
  rw [tree7152_def, tree7150_agree, tree7151_agree]
  rfl
theorem node7152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7152 live7152 coloured7152 = result7152 := by
  rw [tree7152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7150_eq
  unfold live7150 coloured7150 at child
  try dsimp only [live7152, coloured7152]
  rw [child]
  dsimp only [result7150]
  have child := node7151_eq
  unfold live7151 coloured7151 at child
  try dsimp only [live7152, coloured7152]
  rw [child]
  dsimp only [result7151]
  try dsimp only [colour, result7152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7153_agree : tree7153 = literal7153 := by
  rw [tree7153_def]
  rfl
theorem node7153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7153 live7153 coloured7153 = result7153 := by
  rw [tree7153_def]
  try dsimp only [colour, result7153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7154_agree : tree7154 = literal7154 := by
  rw [tree7154_def, tree7152_agree, tree7153_agree]
  rfl
theorem node7154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7154 live7154 coloured7154 = result7154 := by
  rw [tree7154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7152_eq
  unfold live7152 coloured7152 at child
  try dsimp only [live7154, coloured7154]
  rw [child]
  dsimp only [result7152]
  have child := node7153_eq
  unfold live7153 coloured7153 at child
  try dsimp only [live7154, coloured7154]
  rw [child]
  dsimp only [result7153]
  try dsimp only [colour, result7154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7155_agree : tree7155 = literal7155 := by
  rw [tree7155_def]
  rfl
theorem node7155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7155 live7155 coloured7155 = result7155 := by
  rw [tree7155_def]
  try dsimp only [colour, result7155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7156_agree : tree7156 = literal7156 := by
  rw [tree7156_def, tree7154_agree, tree7155_agree]
  rfl
theorem node7156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7156 live7156 coloured7156 = result7156 := by
  rw [tree7156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7154_eq
  unfold live7154 coloured7154 at child
  try dsimp only [live7156, coloured7156]
  rw [child]
  dsimp only [result7154]
  have child := node7155_eq
  unfold live7155 coloured7155 at child
  try dsimp only [live7156, coloured7156]
  rw [child]
  dsimp only [result7155]
  try dsimp only [colour, result7156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7157_agree : tree7157 = literal7157 := by
  rw [tree7157_def]
  rfl
theorem node7157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7157 live7157 coloured7157 = result7157 := by
  rw [tree7157_def]
  try dsimp only [colour, result7157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7158_agree : tree7158 = literal7158 := by
  rw [tree7158_def, tree7156_agree, tree7157_agree]
  rfl
theorem node7158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7158 live7158 coloured7158 = result7158 := by
  rw [tree7158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7156_eq
  unfold live7156 coloured7156 at child
  try dsimp only [live7158, coloured7158]
  rw [child]
  dsimp only [result7156]
  have child := node7157_eq
  unfold live7157 coloured7157 at child
  try dsimp only [live7158, coloured7158]
  rw [child]
  dsimp only [result7157]
  try dsimp only [colour, result7158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7159_agree : tree7159 = literal7159 := by
  rw [tree7159_def]
  rfl
theorem node7159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7159 live7159 coloured7159 = result7159 := by
  rw [tree7159_def]
  try dsimp only [colour, result7159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7160_agree : tree7160 = literal7160 := by
  rw [tree7160_def, tree7158_agree, tree7159_agree]
  rfl
theorem node7160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7160 live7160 coloured7160 = result7160 := by
  rw [tree7160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7158_eq
  unfold live7158 coloured7158 at child
  try dsimp only [live7160, coloured7160]
  rw [child]
  dsimp only [result7158]
  have child := node7159_eq
  unfold live7159 coloured7159 at child
  try dsimp only [live7160, coloured7160]
  rw [child]
  dsimp only [result7159]
  try dsimp only [colour, result7160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7161_agree : tree7161 = literal7161 := by
  rw [tree7161_def]
  rfl
theorem node7161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7161 live7161 coloured7161 = result7161 := by
  rw [tree7161_def]
  try dsimp only [colour, result7161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7162_agree : tree7162 = literal7162 := by
  rw [tree7162_def, tree7160_agree, tree7161_agree]
  rfl
theorem node7162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7162 live7162 coloured7162 = result7162 := by
  rw [tree7162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7160_eq
  unfold live7160 coloured7160 at child
  try dsimp only [live7162, coloured7162]
  rw [child]
  dsimp only [result7160]
  have child := node7161_eq
  unfold live7161 coloured7161 at child
  try dsimp only [live7162, coloured7162]
  rw [child]
  dsimp only [result7161]
  try dsimp only [colour, result7162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7163_agree : tree7163 = literal7163 := by
  rw [tree7163_def]
  rfl
theorem node7163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7163 live7163 coloured7163 = result7163 := by
  rw [tree7163_def]
  try dsimp only [colour, result7163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7164_agree : tree7164 = literal7164 := by
  rw [tree7164_def, tree7162_agree, tree7163_agree]
  rfl
theorem node7164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7164 live7164 coloured7164 = result7164 := by
  rw [tree7164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7162_eq
  unfold live7162 coloured7162 at child
  try dsimp only [live7164, coloured7164]
  rw [child]
  dsimp only [result7162]
  have child := node7163_eq
  unfold live7163 coloured7163 at child
  try dsimp only [live7164, coloured7164]
  rw [child]
  dsimp only [result7163]
  try dsimp only [colour, result7164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7165_agree : tree7165 = literal7165 := by
  rw [tree7165_def]
  rfl
theorem node7165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7165 live7165 coloured7165 = result7165 := by
  rw [tree7165_def]
  try dsimp only [colour, result7165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7166_agree : tree7166 = literal7166 := by
  rw [tree7166_def, tree7164_agree, tree7165_agree]
  rfl
theorem node7166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7166 live7166 coloured7166 = result7166 := by
  rw [tree7166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7164_eq
  unfold live7164 coloured7164 at child
  try dsimp only [live7166, coloured7166]
  rw [child]
  dsimp only [result7164]
  have child := node7165_eq
  unfold live7165 coloured7165 at child
  try dsimp only [live7166, coloured7166]
  rw [child]
  dsimp only [result7165]
  try dsimp only [colour, result7166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7167_agree : tree7167 = literal7167 := by
  rw [tree7167_def]
  rfl
theorem node7167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7167 live7167 coloured7167 = result7167 := by
  rw [tree7167_def]
  try dsimp only [colour, result7167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7168_agree : tree7168 = literal7168 := by
  rw [tree7168_def, tree7166_agree, tree7167_agree]
  rfl
theorem node7168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7168 live7168 coloured7168 = result7168 := by
  rw [tree7168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7166_eq
  unfold live7166 coloured7166 at child
  try dsimp only [live7168, coloured7168]
  rw [child]
  dsimp only [result7166]
  have child := node7167_eq
  unfold live7167 coloured7167 at child
  try dsimp only [live7168, coloured7168]
  rw [child]
  dsimp only [result7167]
  try dsimp only [colour, result7168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7169_agree : tree7169 = literal7169 := by
  rw [tree7169_def]
  rfl
theorem node7169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7169 live7169 coloured7169 = result7169 := by
  rw [tree7169_def]
  try dsimp only [colour, result7169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7170_agree : tree7170 = literal7170 := by
  rw [tree7170_def, tree7168_agree, tree7169_agree]
  rfl
theorem node7170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7170 live7170 coloured7170 = result7170 := by
  rw [tree7170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7168_eq
  unfold live7168 coloured7168 at child
  try dsimp only [live7170, coloured7170]
  rw [child]
  dsimp only [result7168]
  have child := node7169_eq
  unfold live7169 coloured7169 at child
  try dsimp only [live7170, coloured7170]
  rw [child]
  dsimp only [result7169]
  try dsimp only [colour, result7170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7171_agree : tree7171 = literal7171 := by
  rw [tree7171_def]
  rfl
theorem node7171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7171 live7171 coloured7171 = result7171 := by
  rw [tree7171_def]
  try dsimp only [colour, result7171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7172_agree : tree7172 = literal7172 := by
  rw [tree7172_def, tree7170_agree, tree7171_agree]
  rfl
theorem node7172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7172 live7172 coloured7172 = result7172 := by
  rw [tree7172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7170_eq
  unfold live7170 coloured7170 at child
  try dsimp only [live7172, coloured7172]
  rw [child]
  dsimp only [result7170]
  have child := node7171_eq
  unfold live7171 coloured7171 at child
  try dsimp only [live7172, coloured7172]
  rw [child]
  dsimp only [result7171]
  try dsimp only [colour, result7172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7173_agree : tree7173 = literal7173 := by
  rw [tree7173_def]
  rfl
theorem node7173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7173 live7173 coloured7173 = result7173 := by
  rw [tree7173_def]
  try dsimp only [colour, result7173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7174_agree : tree7174 = literal7174 := by
  rw [tree7174_def, tree7172_agree, tree7173_agree]
  rfl
theorem node7174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7174 live7174 coloured7174 = result7174 := by
  rw [tree7174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7172_eq
  unfold live7172 coloured7172 at child
  try dsimp only [live7174, coloured7174]
  rw [child]
  dsimp only [result7172]
  have child := node7173_eq
  unfold live7173 coloured7173 at child
  try dsimp only [live7174, coloured7174]
  rw [child]
  dsimp only [result7173]
  try dsimp only [colour, result7174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7175_agree : tree7175 = literal7175 := by
  rw [tree7175_def]
  rfl
theorem node7175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7175 live7175 coloured7175 = result7175 := by
  rw [tree7175_def]
  try dsimp only [colour, result7175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7176_agree : tree7176 = literal7176 := by
  rw [tree7176_def, tree7174_agree, tree7175_agree]
  rfl
theorem node7176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7176 live7176 coloured7176 = result7176 := by
  rw [tree7176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7174_eq
  unfold live7174 coloured7174 at child
  try dsimp only [live7176, coloured7176]
  rw [child]
  dsimp only [result7174]
  have child := node7175_eq
  unfold live7175 coloured7175 at child
  try dsimp only [live7176, coloured7176]
  rw [child]
  dsimp only [result7175]
  try dsimp only [colour, result7176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7177_agree : tree7177 = literal7177 := by
  rw [tree7177_def]
  rfl
theorem node7177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7177 live7177 coloured7177 = result7177 := by
  rw [tree7177_def]
  try dsimp only [colour, result7177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7178_agree : tree7178 = literal7178 := by
  rw [tree7178_def, tree7176_agree, tree7177_agree]
  rfl
theorem node7178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7178 live7178 coloured7178 = result7178 := by
  rw [tree7178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7176_eq
  unfold live7176 coloured7176 at child
  try dsimp only [live7178, coloured7178]
  rw [child]
  dsimp only [result7176]
  have child := node7177_eq
  unfold live7177 coloured7177 at child
  try dsimp only [live7178, coloured7178]
  rw [child]
  dsimp only [result7177]
  try dsimp only [colour, result7178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7179_agree : tree7179 = literal7179 := by
  rw [tree7179_def]
  rfl
theorem node7179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7179 live7179 coloured7179 = result7179 := by
  rw [tree7179_def]
  try dsimp only [colour, result7179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7180_agree : tree7180 = literal7180 := by
  rw [tree7180_def, tree7178_agree, tree7179_agree]
  rfl
theorem node7180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7180 live7180 coloured7180 = result7180 := by
  rw [tree7180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7178_eq
  unfold live7178 coloured7178 at child
  try dsimp only [live7180, coloured7180]
  rw [child]
  dsimp only [result7178]
  have child := node7179_eq
  unfold live7179 coloured7179 at child
  try dsimp only [live7180, coloured7180]
  rw [child]
  dsimp only [result7179]
  try dsimp only [colour, result7180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7181_agree : tree7181 = literal7181 := by
  rw [tree7181_def]
  rfl
theorem node7181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7181 live7181 coloured7181 = result7181 := by
  rw [tree7181_def]
  try dsimp only [colour, result7181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7182_agree : tree7182 = literal7182 := by
  rw [tree7182_def, tree7180_agree, tree7181_agree]
  rfl
theorem node7182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7182 live7182 coloured7182 = result7182 := by
  rw [tree7182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7180_eq
  unfold live7180 coloured7180 at child
  try dsimp only [live7182, coloured7182]
  rw [child]
  dsimp only [result7180]
  have child := node7181_eq
  unfold live7181 coloured7181 at child
  try dsimp only [live7182, coloured7182]
  rw [child]
  dsimp only [result7181]
  try dsimp only [colour, result7182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7183_agree : tree7183 = literal7183 := by
  rw [tree7183_def]
  rfl
theorem node7183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7183 live7183 coloured7183 = result7183 := by
  rw [tree7183_def]
  try dsimp only [colour, result7183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7184_agree : tree7184 = literal7184 := by
  rw [tree7184_def, tree7182_agree, tree7183_agree]
  rfl
theorem node7184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7184 live7184 coloured7184 = result7184 := by
  rw [tree7184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7182_eq
  unfold live7182 coloured7182 at child
  try dsimp only [live7184, coloured7184]
  rw [child]
  dsimp only [result7182]
  have child := node7183_eq
  unfold live7183 coloured7183 at child
  try dsimp only [live7184, coloured7184]
  rw [child]
  dsimp only [result7183]
  try dsimp only [colour, result7184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7185_agree : tree7185 = literal7185 := by
  rw [tree7185_def]
  rfl
theorem node7185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7185 live7185 coloured7185 = result7185 := by
  rw [tree7185_def]
  try dsimp only [colour, result7185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7186_agree : tree7186 = literal7186 := by
  rw [tree7186_def, tree7184_agree, tree7185_agree]
  rfl
theorem node7186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7186 live7186 coloured7186 = result7186 := by
  rw [tree7186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7184_eq
  unfold live7184 coloured7184 at child
  try dsimp only [live7186, coloured7186]
  rw [child]
  dsimp only [result7184]
  have child := node7185_eq
  unfold live7185 coloured7185 at child
  try dsimp only [live7186, coloured7186]
  rw [child]
  dsimp only [result7185]
  try dsimp only [colour, result7186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7187_agree : tree7187 = literal7187 := by
  rw [tree7187_def]
  rfl
theorem node7187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7187 live7187 coloured7187 = result7187 := by
  rw [tree7187_def]
  try dsimp only [colour, result7187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7188_agree : tree7188 = literal7188 := by
  rw [tree7188_def, tree7186_agree, tree7187_agree]
  rfl
theorem node7188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7188 live7188 coloured7188 = result7188 := by
  rw [tree7188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7186_eq
  unfold live7186 coloured7186 at child
  try dsimp only [live7188, coloured7188]
  rw [child]
  dsimp only [result7186]
  have child := node7187_eq
  unfold live7187 coloured7187 at child
  try dsimp only [live7188, coloured7188]
  rw [child]
  dsimp only [result7187]
  try dsimp only [colour, result7188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7189_agree : tree7189 = literal7189 := by
  rw [tree7189_def]
  rfl
theorem node7189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7189 live7189 coloured7189 = result7189 := by
  rw [tree7189_def]
  try dsimp only [colour, result7189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7190_agree : tree7190 = literal7190 := by
  rw [tree7190_def, tree7188_agree, tree7189_agree]
  rfl
theorem node7190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7190 live7190 coloured7190 = result7190 := by
  rw [tree7190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7188_eq
  unfold live7188 coloured7188 at child
  try dsimp only [live7190, coloured7190]
  rw [child]
  dsimp only [result7188]
  have child := node7189_eq
  unfold live7189 coloured7189 at child
  try dsimp only [live7190, coloured7190]
  rw [child]
  dsimp only [result7189]
  try dsimp only [colour, result7190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7191_agree : tree7191 = literal7191 := by
  rw [tree7191_def]
  rfl
theorem node7191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7191 live7191 coloured7191 = result7191 := by
  rw [tree7191_def]
  try dsimp only [colour, result7191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7192_agree : tree7192 = literal7192 := by
  rw [tree7192_def, tree7190_agree, tree7191_agree]
  rfl
theorem node7192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7192 live7192 coloured7192 = result7192 := by
  rw [tree7192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7190_eq
  unfold live7190 coloured7190 at child
  try dsimp only [live7192, coloured7192]
  rw [child]
  dsimp only [result7190]
  have child := node7191_eq
  unfold live7191 coloured7191 at child
  try dsimp only [live7192, coloured7192]
  rw [child]
  dsimp only [result7191]
  try dsimp only [colour, result7192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7193_agree : tree7193 = literal7193 := by
  rw [tree7193_def]
  rfl
theorem node7193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7193 live7193 coloured7193 = result7193 := by
  rw [tree7193_def]
  try dsimp only [colour, result7193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7194_agree : tree7194 = literal7194 := by
  rw [tree7194_def, tree7192_agree, tree7193_agree]
  rfl
theorem node7194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7194 live7194 coloured7194 = result7194 := by
  rw [tree7194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7192_eq
  unfold live7192 coloured7192 at child
  try dsimp only [live7194, coloured7194]
  rw [child]
  dsimp only [result7192]
  have child := node7193_eq
  unfold live7193 coloured7193 at child
  try dsimp only [live7194, coloured7194]
  rw [child]
  dsimp only [result7193]
  try dsimp only [colour, result7194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7195_agree : tree7195 = literal7195 := by
  rw [tree7195_def]
  rfl
theorem node7195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7195 live7195 coloured7195 = result7195 := by
  rw [tree7195_def]
  try dsimp only [colour, result7195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7196_agree : tree7196 = literal7196 := by
  rw [tree7196_def, tree7194_agree, tree7195_agree]
  rfl
theorem node7196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7196 live7196 coloured7196 = result7196 := by
  rw [tree7196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7194_eq
  unfold live7194 coloured7194 at child
  try dsimp only [live7196, coloured7196]
  rw [child]
  dsimp only [result7194]
  have child := node7195_eq
  unfold live7195 coloured7195 at child
  try dsimp only [live7196, coloured7196]
  rw [child]
  dsimp only [result7195]
  try dsimp only [colour, result7196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7197_agree : tree7197 = literal7197 := by
  rw [tree7197_def]
  rfl
theorem node7197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7197 live7197 coloured7197 = result7197 := by
  rw [tree7197_def]
  try dsimp only [colour, result7197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7198_agree : tree7198 = literal7198 := by
  rw [tree7198_def, tree7196_agree, tree7197_agree]
  rfl
theorem node7198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7198 live7198 coloured7198 = result7198 := by
  rw [tree7198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7196_eq
  unfold live7196 coloured7196 at child
  try dsimp only [live7198, coloured7198]
  rw [child]
  dsimp only [result7196]
  have child := node7197_eq
  unfold live7197 coloured7197 at child
  try dsimp only [live7198, coloured7198]
  rw [child]
  dsimp only [result7197]
  try dsimp only [colour, result7198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7199_agree : tree7199 = literal7199 := by
  rw [tree7199_def]
  rfl
theorem node7199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7199 live7199 coloured7199 = result7199 := by
  rw [tree7199_def]
  try dsimp only [colour, result7199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
