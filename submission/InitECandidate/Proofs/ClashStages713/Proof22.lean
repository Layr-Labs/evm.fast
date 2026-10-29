import InitECandidate.Proofs.ClashStages713.Proof21
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2112_agree : tree2112 = literal2112 := by
  rw [tree2112_def, tree2110_agree, tree2111_agree]
  rfl
theorem node2112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2112 live2112 coloured2112 = result2112 := by
  rw [tree2112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2110_eq
  unfold live2110 coloured2110 at child
  try dsimp only [live2112, coloured2112]
  rw [child]
  dsimp only [result2110]
  have child := node2111_eq
  unfold live2111 coloured2111 at child
  try dsimp only [live2112, coloured2112]
  rw [child]
  dsimp only [result2111]
  try dsimp only [colour, result2112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2113_agree : tree2113 = literal2113 := by
  rw [tree2113_def]
  rfl
theorem node2113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2113 live2113 coloured2113 = result2113 := by
  rw [tree2113_def]
  try dsimp only [colour, result2113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2114_agree : tree2114 = literal2114 := by
  rw [tree2114_def, tree2112_agree, tree2113_agree]
  rfl
theorem node2114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2114 live2114 coloured2114 = result2114 := by
  rw [tree2114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2112_eq
  unfold live2112 coloured2112 at child
  try dsimp only [live2114, coloured2114]
  rw [child]
  dsimp only [result2112]
  have child := node2113_eq
  unfold live2113 coloured2113 at child
  try dsimp only [live2114, coloured2114]
  rw [child]
  dsimp only [result2113]
  try dsimp only [colour, result2114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2115_agree : tree2115 = literal2115 := by
  rw [tree2115_def]
  rfl
theorem node2115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2115 live2115 coloured2115 = result2115 := by
  rw [tree2115_def]
  try dsimp only [colour, result2115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2116_agree : tree2116 = literal2116 := by
  rw [tree2116_def, tree2114_agree, tree2115_agree]
  rfl
theorem node2116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2116 live2116 coloured2116 = result2116 := by
  rw [tree2116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2114_eq
  unfold live2114 coloured2114 at child
  try dsimp only [live2116, coloured2116]
  rw [child]
  dsimp only [result2114]
  have child := node2115_eq
  unfold live2115 coloured2115 at child
  try dsimp only [live2116, coloured2116]
  rw [child]
  dsimp only [result2115]
  try dsimp only [colour, result2116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2117_agree : tree2117 = literal2117 := by
  rw [tree2117_def]
  rfl
theorem node2117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2117 live2117 coloured2117 = result2117 := by
  rw [tree2117_def]
  try dsimp only [colour, result2117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2118_agree : tree2118 = literal2118 := by
  rw [tree2118_def, tree2116_agree, tree2117_agree]
  rfl
theorem node2118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2118 live2118 coloured2118 = result2118 := by
  rw [tree2118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2116_eq
  unfold live2116 coloured2116 at child
  try dsimp only [live2118, coloured2118]
  rw [child]
  dsimp only [result2116]
  have child := node2117_eq
  unfold live2117 coloured2117 at child
  try dsimp only [live2118, coloured2118]
  rw [child]
  dsimp only [result2117]
  try dsimp only [colour, result2118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2119_agree : tree2119 = literal2119 := by
  rw [tree2119_def]
  rfl
theorem node2119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2119 live2119 coloured2119 = result2119 := by
  rw [tree2119_def]
  try dsimp only [colour, result2119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2120_agree : tree2120 = literal2120 := by
  rw [tree2120_def, tree2118_agree, tree2119_agree]
  rfl
theorem node2120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2120 live2120 coloured2120 = result2120 := by
  rw [tree2120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2118_eq
  unfold live2118 coloured2118 at child
  try dsimp only [live2120, coloured2120]
  rw [child]
  dsimp only [result2118]
  have child := node2119_eq
  unfold live2119 coloured2119 at child
  try dsimp only [live2120, coloured2120]
  rw [child]
  dsimp only [result2119]
  try dsimp only [colour, result2120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2121_agree : tree2121 = literal2121 := by
  rw [tree2121_def]
  rfl
theorem node2121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2121 live2121 coloured2121 = result2121 := by
  rw [tree2121_def]
  try dsimp only [colour, result2121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2122_agree : tree2122 = literal2122 := by
  rw [tree2122_def, tree2120_agree, tree2121_agree]
  rfl
theorem node2122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2122 live2122 coloured2122 = result2122 := by
  rw [tree2122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2120_eq
  unfold live2120 coloured2120 at child
  try dsimp only [live2122, coloured2122]
  rw [child]
  dsimp only [result2120]
  have child := node2121_eq
  unfold live2121 coloured2121 at child
  try dsimp only [live2122, coloured2122]
  rw [child]
  dsimp only [result2121]
  try dsimp only [colour, result2122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2123_agree : tree2123 = literal2123 := by
  rw [tree2123_def]
  rfl
theorem node2123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2123 live2123 coloured2123 = result2123 := by
  rw [tree2123_def]
  try dsimp only [colour, result2123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2124_agree : tree2124 = literal2124 := by
  rw [tree2124_def, tree2122_agree, tree2123_agree]
  rfl
theorem node2124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2124 live2124 coloured2124 = result2124 := by
  rw [tree2124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2122_eq
  unfold live2122 coloured2122 at child
  try dsimp only [live2124, coloured2124]
  rw [child]
  dsimp only [result2122]
  have child := node2123_eq
  unfold live2123 coloured2123 at child
  try dsimp only [live2124, coloured2124]
  rw [child]
  dsimp only [result2123]
  try dsimp only [colour, result2124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2125_agree : tree2125 = literal2125 := by
  rw [tree2125_def]
  rfl
theorem node2125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2125 live2125 coloured2125 = result2125 := by
  rw [tree2125_def]
  try dsimp only [colour, result2125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2126_agree : tree2126 = literal2126 := by
  rw [tree2126_def, tree2124_agree, tree2125_agree]
  rfl
theorem node2126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2126 live2126 coloured2126 = result2126 := by
  rw [tree2126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2124_eq
  unfold live2124 coloured2124 at child
  try dsimp only [live2126, coloured2126]
  rw [child]
  dsimp only [result2124]
  have child := node2125_eq
  unfold live2125 coloured2125 at child
  try dsimp only [live2126, coloured2126]
  rw [child]
  dsimp only [result2125]
  try dsimp only [colour, result2126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2127_agree : tree2127 = literal2127 := by
  rw [tree2127_def]
  rfl
theorem node2127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2127 live2127 coloured2127 = result2127 := by
  rw [tree2127_def]
  try dsimp only [colour, result2127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2128_agree : tree2128 = literal2128 := by
  rw [tree2128_def, tree2126_agree, tree2127_agree]
  rfl
theorem node2128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2128 live2128 coloured2128 = result2128 := by
  rw [tree2128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2126_eq
  unfold live2126 coloured2126 at child
  try dsimp only [live2128, coloured2128]
  rw [child]
  dsimp only [result2126]
  have child := node2127_eq
  unfold live2127 coloured2127 at child
  try dsimp only [live2128, coloured2128]
  rw [child]
  dsimp only [result2127]
  try dsimp only [colour, result2128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2129_agree : tree2129 = literal2129 := by
  rw [tree2129_def]
  rfl
theorem node2129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2129 live2129 coloured2129 = result2129 := by
  rw [tree2129_def]
  try dsimp only [colour, result2129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2130_agree : tree2130 = literal2130 := by
  rw [tree2130_def, tree2128_agree, tree2129_agree]
  rfl
theorem node2130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2130 live2130 coloured2130 = result2130 := by
  rw [tree2130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2128_eq
  unfold live2128 coloured2128 at child
  try dsimp only [live2130, coloured2130]
  rw [child]
  dsimp only [result2128]
  have child := node2129_eq
  unfold live2129 coloured2129 at child
  try dsimp only [live2130, coloured2130]
  rw [child]
  dsimp only [result2129]
  try dsimp only [colour, result2130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2131_agree : tree2131 = literal2131 := by
  rw [tree2131_def]
  rfl
theorem node2131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2131 live2131 coloured2131 = result2131 := by
  rw [tree2131_def]
  try dsimp only [colour, result2131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2132_agree : tree2132 = literal2132 := by
  rw [tree2132_def, tree2130_agree, tree2131_agree]
  rfl
theorem node2132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2132 live2132 coloured2132 = result2132 := by
  rw [tree2132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2130_eq
  unfold live2130 coloured2130 at child
  try dsimp only [live2132, coloured2132]
  rw [child]
  dsimp only [result2130]
  have child := node2131_eq
  unfold live2131 coloured2131 at child
  try dsimp only [live2132, coloured2132]
  rw [child]
  dsimp only [result2131]
  try dsimp only [colour, result2132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2133_agree : tree2133 = literal2133 := by
  rw [tree2133_def]
  rfl
theorem node2133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2133 live2133 coloured2133 = result2133 := by
  rw [tree2133_def]
  try dsimp only [colour, result2133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2134_agree : tree2134 = literal2134 := by
  rw [tree2134_def, tree2132_agree, tree2133_agree]
  rfl
theorem node2134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2134 live2134 coloured2134 = result2134 := by
  rw [tree2134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2132_eq
  unfold live2132 coloured2132 at child
  try dsimp only [live2134, coloured2134]
  rw [child]
  dsimp only [result2132]
  have child := node2133_eq
  unfold live2133 coloured2133 at child
  try dsimp only [live2134, coloured2134]
  rw [child]
  dsimp only [result2133]
  try dsimp only [colour, result2134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2135_agree : tree2135 = literal2135 := by
  rw [tree2135_def]
  rfl
theorem node2135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2135 live2135 coloured2135 = result2135 := by
  rw [tree2135_def]
  try dsimp only [colour, result2135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2136_agree : tree2136 = literal2136 := by
  rw [tree2136_def, tree2134_agree, tree2135_agree]
  rfl
theorem node2136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2136 live2136 coloured2136 = result2136 := by
  rw [tree2136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2134_eq
  unfold live2134 coloured2134 at child
  try dsimp only [live2136, coloured2136]
  rw [child]
  dsimp only [result2134]
  have child := node2135_eq
  unfold live2135 coloured2135 at child
  try dsimp only [live2136, coloured2136]
  rw [child]
  dsimp only [result2135]
  try dsimp only [colour, result2136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2137_agree : tree2137 = literal2137 := by
  rw [tree2137_def]
  rfl
theorem node2137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2137 live2137 coloured2137 = result2137 := by
  rw [tree2137_def]
  try dsimp only [colour, result2137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2138_agree : tree2138 = literal2138 := by
  rw [tree2138_def, tree2136_agree, tree2137_agree]
  rfl
theorem node2138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2138 live2138 coloured2138 = result2138 := by
  rw [tree2138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2136_eq
  unfold live2136 coloured2136 at child
  try dsimp only [live2138, coloured2138]
  rw [child]
  dsimp only [result2136]
  have child := node2137_eq
  unfold live2137 coloured2137 at child
  try dsimp only [live2138, coloured2138]
  rw [child]
  dsimp only [result2137]
  try dsimp only [colour, result2138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2139_agree : tree2139 = literal2139 := by
  rw [tree2139_def]
  rfl
theorem node2139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2139 live2139 coloured2139 = result2139 := by
  rw [tree2139_def]
  try dsimp only [colour, result2139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2140_agree : tree2140 = literal2140 := by
  rw [tree2140_def, tree2138_agree, tree2139_agree]
  rfl
theorem node2140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2140 live2140 coloured2140 = result2140 := by
  rw [tree2140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2138_eq
  unfold live2138 coloured2138 at child
  try dsimp only [live2140, coloured2140]
  rw [child]
  dsimp only [result2138]
  have child := node2139_eq
  unfold live2139 coloured2139 at child
  try dsimp only [live2140, coloured2140]
  rw [child]
  dsimp only [result2139]
  try dsimp only [colour, result2140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2141_agree : tree2141 = literal2141 := by
  rw [tree2141_def]
  rfl
theorem node2141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2141 live2141 coloured2141 = result2141 := by
  rw [tree2141_def]
  try dsimp only [colour, result2141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2142_agree : tree2142 = literal2142 := by
  rw [tree2142_def, tree2140_agree, tree2141_agree]
  rfl
theorem node2142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2142 live2142 coloured2142 = result2142 := by
  rw [tree2142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2140_eq
  unfold live2140 coloured2140 at child
  try dsimp only [live2142, coloured2142]
  rw [child]
  dsimp only [result2140]
  have child := node2141_eq
  unfold live2141 coloured2141 at child
  try dsimp only [live2142, coloured2142]
  rw [child]
  dsimp only [result2141]
  try dsimp only [colour, result2142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2143_agree : tree2143 = literal2143 := by
  rw [tree2143_def]
  rfl
theorem node2143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2143 live2143 coloured2143 = result2143 := by
  rw [tree2143_def]
  try dsimp only [colour, result2143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2144_agree : tree2144 = literal2144 := by
  rw [tree2144_def, tree2142_agree, tree2143_agree]
  rfl
theorem node2144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2144 live2144 coloured2144 = result2144 := by
  rw [tree2144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2142_eq
  unfold live2142 coloured2142 at child
  try dsimp only [live2144, coloured2144]
  rw [child]
  dsimp only [result2142]
  have child := node2143_eq
  unfold live2143 coloured2143 at child
  try dsimp only [live2144, coloured2144]
  rw [child]
  dsimp only [result2143]
  try dsimp only [colour, result2144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2145_agree : tree2145 = literal2145 := by
  rw [tree2145_def]
  rfl
theorem node2145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2145 live2145 coloured2145 = result2145 := by
  rw [tree2145_def]
  try dsimp only [colour, result2145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2146_agree : tree2146 = literal2146 := by
  rw [tree2146_def, tree2144_agree, tree2145_agree]
  rfl
theorem node2146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2146 live2146 coloured2146 = result2146 := by
  rw [tree2146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2144_eq
  unfold live2144 coloured2144 at child
  try dsimp only [live2146, coloured2146]
  rw [child]
  dsimp only [result2144]
  have child := node2145_eq
  unfold live2145 coloured2145 at child
  try dsimp only [live2146, coloured2146]
  rw [child]
  dsimp only [result2145]
  try dsimp only [colour, result2146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2147_agree : tree2147 = literal2147 := by
  rw [tree2147_def]
  rfl
theorem node2147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2147 live2147 coloured2147 = result2147 := by
  rw [tree2147_def]
  try dsimp only [colour, result2147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2148_agree : tree2148 = literal2148 := by
  rw [tree2148_def, tree2146_agree, tree2147_agree]
  rfl
theorem node2148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2148 live2148 coloured2148 = result2148 := by
  rw [tree2148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2146_eq
  unfold live2146 coloured2146 at child
  try dsimp only [live2148, coloured2148]
  rw [child]
  dsimp only [result2146]
  have child := node2147_eq
  unfold live2147 coloured2147 at child
  try dsimp only [live2148, coloured2148]
  rw [child]
  dsimp only [result2147]
  try dsimp only [colour, result2148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2149_agree : tree2149 = literal2149 := by
  rw [tree2149_def]
  rfl
theorem node2149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2149 live2149 coloured2149 = result2149 := by
  rw [tree2149_def]
  try dsimp only [colour, result2149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2150_agree : tree2150 = literal2150 := by
  rw [tree2150_def, tree2148_agree, tree2149_agree]
  rfl
theorem node2150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2150 live2150 coloured2150 = result2150 := by
  rw [tree2150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2148_eq
  unfold live2148 coloured2148 at child
  try dsimp only [live2150, coloured2150]
  rw [child]
  dsimp only [result2148]
  have child := node2149_eq
  unfold live2149 coloured2149 at child
  try dsimp only [live2150, coloured2150]
  rw [child]
  dsimp only [result2149]
  try dsimp only [colour, result2150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2151_agree : tree2151 = literal2151 := by
  rw [tree2151_def]
  rfl
theorem node2151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2151 live2151 coloured2151 = result2151 := by
  rw [tree2151_def]
  try dsimp only [colour, result2151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2152_agree : tree2152 = literal2152 := by
  rw [tree2152_def, tree2150_agree, tree2151_agree]
  rfl
theorem node2152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2152 live2152 coloured2152 = result2152 := by
  rw [tree2152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2150_eq
  unfold live2150 coloured2150 at child
  try dsimp only [live2152, coloured2152]
  rw [child]
  dsimp only [result2150]
  have child := node2151_eq
  unfold live2151 coloured2151 at child
  try dsimp only [live2152, coloured2152]
  rw [child]
  dsimp only [result2151]
  try dsimp only [colour, result2152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2153_agree : tree2153 = literal2153 := by
  rw [tree2153_def]
  rfl
theorem node2153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2153 live2153 coloured2153 = result2153 := by
  rw [tree2153_def]
  try dsimp only [colour, result2153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2154_agree : tree2154 = literal2154 := by
  rw [tree2154_def, tree2152_agree, tree2153_agree]
  rfl
theorem node2154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2154 live2154 coloured2154 = result2154 := by
  rw [tree2154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2152_eq
  unfold live2152 coloured2152 at child
  try dsimp only [live2154, coloured2154]
  rw [child]
  dsimp only [result2152]
  have child := node2153_eq
  unfold live2153 coloured2153 at child
  try dsimp only [live2154, coloured2154]
  rw [child]
  dsimp only [result2153]
  try dsimp only [colour, result2154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2155_agree : tree2155 = literal2155 := by
  rw [tree2155_def]
  rfl
theorem node2155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2155 live2155 coloured2155 = result2155 := by
  rw [tree2155_def]
  try dsimp only [colour, result2155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2156_agree : tree2156 = literal2156 := by
  rw [tree2156_def, tree2154_agree, tree2155_agree]
  rfl
theorem node2156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2156 live2156 coloured2156 = result2156 := by
  rw [tree2156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2154_eq
  unfold live2154 coloured2154 at child
  try dsimp only [live2156, coloured2156]
  rw [child]
  dsimp only [result2154]
  have child := node2155_eq
  unfold live2155 coloured2155 at child
  try dsimp only [live2156, coloured2156]
  rw [child]
  dsimp only [result2155]
  try dsimp only [colour, result2156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2157_agree : tree2157 = literal2157 := by
  rw [tree2157_def]
  rfl
theorem node2157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2157 live2157 coloured2157 = result2157 := by
  rw [tree2157_def]
  try dsimp only [colour, result2157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2158_agree : tree2158 = literal2158 := by
  rw [tree2158_def, tree2156_agree, tree2157_agree]
  rfl
theorem node2158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2158 live2158 coloured2158 = result2158 := by
  rw [tree2158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2156_eq
  unfold live2156 coloured2156 at child
  try dsimp only [live2158, coloured2158]
  rw [child]
  dsimp only [result2156]
  have child := node2157_eq
  unfold live2157 coloured2157 at child
  try dsimp only [live2158, coloured2158]
  rw [child]
  dsimp only [result2157]
  try dsimp only [colour, result2158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2159_agree : tree2159 = literal2159 := by
  rw [tree2159_def]
  rfl
theorem node2159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2159 live2159 coloured2159 = result2159 := by
  rw [tree2159_def]
  try dsimp only [colour, result2159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2160_agree : tree2160 = literal2160 := by
  rw [tree2160_def, tree2158_agree, tree2159_agree]
  rfl
theorem node2160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2160 live2160 coloured2160 = result2160 := by
  rw [tree2160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2158_eq
  unfold live2158 coloured2158 at child
  try dsimp only [live2160, coloured2160]
  rw [child]
  dsimp only [result2158]
  have child := node2159_eq
  unfold live2159 coloured2159 at child
  try dsimp only [live2160, coloured2160]
  rw [child]
  dsimp only [result2159]
  try dsimp only [colour, result2160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2161_agree : tree2161 = literal2161 := by
  rw [tree2161_def]
  rfl
theorem node2161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2161 live2161 coloured2161 = result2161 := by
  rw [tree2161_def]
  try dsimp only [colour, result2161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2162_agree : tree2162 = literal2162 := by
  rw [tree2162_def, tree2160_agree, tree2161_agree]
  rfl
theorem node2162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2162 live2162 coloured2162 = result2162 := by
  rw [tree2162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2160_eq
  unfold live2160 coloured2160 at child
  try dsimp only [live2162, coloured2162]
  rw [child]
  dsimp only [result2160]
  have child := node2161_eq
  unfold live2161 coloured2161 at child
  try dsimp only [live2162, coloured2162]
  rw [child]
  dsimp only [result2161]
  try dsimp only [colour, result2162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2163_agree : tree2163 = literal2163 := by
  rw [tree2163_def]
  rfl
theorem node2163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2163 live2163 coloured2163 = result2163 := by
  rw [tree2163_def]
  try dsimp only [colour, result2163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2164_agree : tree2164 = literal2164 := by
  rw [tree2164_def, tree2162_agree, tree2163_agree]
  rfl
theorem node2164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2164 live2164 coloured2164 = result2164 := by
  rw [tree2164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2162_eq
  unfold live2162 coloured2162 at child
  try dsimp only [live2164, coloured2164]
  rw [child]
  dsimp only [result2162]
  have child := node2163_eq
  unfold live2163 coloured2163 at child
  try dsimp only [live2164, coloured2164]
  rw [child]
  dsimp only [result2163]
  try dsimp only [colour, result2164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2165_agree : tree2165 = literal2165 := by
  rw [tree2165_def]
  rfl
theorem node2165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2165 live2165 coloured2165 = result2165 := by
  rw [tree2165_def]
  try dsimp only [colour, result2165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2166_agree : tree2166 = literal2166 := by
  rw [tree2166_def, tree2164_agree, tree2165_agree]
  rfl
theorem node2166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2166 live2166 coloured2166 = result2166 := by
  rw [tree2166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2164_eq
  unfold live2164 coloured2164 at child
  try dsimp only [live2166, coloured2166]
  rw [child]
  dsimp only [result2164]
  have child := node2165_eq
  unfold live2165 coloured2165 at child
  try dsimp only [live2166, coloured2166]
  rw [child]
  dsimp only [result2165]
  try dsimp only [colour, result2166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2167_agree : tree2167 = literal2167 := by
  rw [tree2167_def]
  rfl
theorem node2167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2167 live2167 coloured2167 = result2167 := by
  rw [tree2167_def]
  try dsimp only [colour, result2167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2168_agree : tree2168 = literal2168 := by
  rw [tree2168_def, tree2166_agree, tree2167_agree]
  rfl
theorem node2168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2168 live2168 coloured2168 = result2168 := by
  rw [tree2168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2166_eq
  unfold live2166 coloured2166 at child
  try dsimp only [live2168, coloured2168]
  rw [child]
  dsimp only [result2166]
  have child := node2167_eq
  unfold live2167 coloured2167 at child
  try dsimp only [live2168, coloured2168]
  rw [child]
  dsimp only [result2167]
  try dsimp only [colour, result2168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2169_agree : tree2169 = literal2169 := by
  rw [tree2169_def]
  rfl
theorem node2169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2169 live2169 coloured2169 = result2169 := by
  rw [tree2169_def]
  try dsimp only [colour, result2169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2170_agree : tree2170 = literal2170 := by
  rw [tree2170_def, tree2168_agree, tree2169_agree]
  rfl
theorem node2170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2170 live2170 coloured2170 = result2170 := by
  rw [tree2170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2168_eq
  unfold live2168 coloured2168 at child
  try dsimp only [live2170, coloured2170]
  rw [child]
  dsimp only [result2168]
  have child := node2169_eq
  unfold live2169 coloured2169 at child
  try dsimp only [live2170, coloured2170]
  rw [child]
  dsimp only [result2169]
  try dsimp only [colour, result2170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2171_agree : tree2171 = literal2171 := by
  rw [tree2171_def]
  rfl
theorem node2171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2171 live2171 coloured2171 = result2171 := by
  rw [tree2171_def]
  try dsimp only [colour, result2171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2172_agree : tree2172 = literal2172 := by
  rw [tree2172_def, tree2170_agree, tree2171_agree]
  rfl
theorem node2172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2172 live2172 coloured2172 = result2172 := by
  rw [tree2172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2170_eq
  unfold live2170 coloured2170 at child
  try dsimp only [live2172, coloured2172]
  rw [child]
  dsimp only [result2170]
  have child := node2171_eq
  unfold live2171 coloured2171 at child
  try dsimp only [live2172, coloured2172]
  rw [child]
  dsimp only [result2171]
  try dsimp only [colour, result2172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2173_agree : tree2173 = literal2173 := by
  rw [tree2173_def]
  rfl
theorem node2173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2173 live2173 coloured2173 = result2173 := by
  rw [tree2173_def]
  try dsimp only [colour, result2173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2174_agree : tree2174 = literal2174 := by
  rw [tree2174_def, tree2172_agree, tree2173_agree]
  rfl
theorem node2174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2174 live2174 coloured2174 = result2174 := by
  rw [tree2174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2172_eq
  unfold live2172 coloured2172 at child
  try dsimp only [live2174, coloured2174]
  rw [child]
  dsimp only [result2172]
  have child := node2173_eq
  unfold live2173 coloured2173 at child
  try dsimp only [live2174, coloured2174]
  rw [child]
  dsimp only [result2173]
  try dsimp only [colour, result2174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2175_agree : tree2175 = literal2175 := by
  rw [tree2175_def]
  rfl
theorem node2175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2175 live2175 coloured2175 = result2175 := by
  rw [tree2175_def]
  try dsimp only [colour, result2175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2176_agree : tree2176 = literal2176 := by
  rw [tree2176_def, tree2174_agree, tree2175_agree]
  rfl
theorem node2176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2176 live2176 coloured2176 = result2176 := by
  rw [tree2176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2174_eq
  unfold live2174 coloured2174 at child
  try dsimp only [live2176, coloured2176]
  rw [child]
  dsimp only [result2174]
  have child := node2175_eq
  unfold live2175 coloured2175 at child
  try dsimp only [live2176, coloured2176]
  rw [child]
  dsimp only [result2175]
  try dsimp only [colour, result2176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2177_agree : tree2177 = literal2177 := by
  rw [tree2177_def]
  rfl
theorem node2177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2177 live2177 coloured2177 = result2177 := by
  rw [tree2177_def]
  try dsimp only [colour, result2177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2178_agree : tree2178 = literal2178 := by
  rw [tree2178_def, tree2176_agree, tree2177_agree]
  rfl
theorem node2178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2178 live2178 coloured2178 = result2178 := by
  rw [tree2178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2176_eq
  unfold live2176 coloured2176 at child
  try dsimp only [live2178, coloured2178]
  rw [child]
  dsimp only [result2176]
  have child := node2177_eq
  unfold live2177 coloured2177 at child
  try dsimp only [live2178, coloured2178]
  rw [child]
  dsimp only [result2177]
  try dsimp only [colour, result2178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2179_agree : tree2179 = literal2179 := by
  rw [tree2179_def]
  rfl
theorem node2179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2179 live2179 coloured2179 = result2179 := by
  rw [tree2179_def]
  try dsimp only [colour, result2179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2180_agree : tree2180 = literal2180 := by
  rw [tree2180_def, tree2178_agree, tree2179_agree]
  rfl
theorem node2180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2180 live2180 coloured2180 = result2180 := by
  rw [tree2180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2178_eq
  unfold live2178 coloured2178 at child
  try dsimp only [live2180, coloured2180]
  rw [child]
  dsimp only [result2178]
  have child := node2179_eq
  unfold live2179 coloured2179 at child
  try dsimp only [live2180, coloured2180]
  rw [child]
  dsimp only [result2179]
  try dsimp only [colour, result2180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2181_agree : tree2181 = literal2181 := by
  rw [tree2181_def]
  rfl
theorem node2181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2181 live2181 coloured2181 = result2181 := by
  rw [tree2181_def]
  try dsimp only [colour, result2181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2182_agree : tree2182 = literal2182 := by
  rw [tree2182_def, tree2180_agree, tree2181_agree]
  rfl
theorem node2182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2182 live2182 coloured2182 = result2182 := by
  rw [tree2182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2180_eq
  unfold live2180 coloured2180 at child
  try dsimp only [live2182, coloured2182]
  rw [child]
  dsimp only [result2180]
  have child := node2181_eq
  unfold live2181 coloured2181 at child
  try dsimp only [live2182, coloured2182]
  rw [child]
  dsimp only [result2181]
  try dsimp only [colour, result2182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2183_agree : tree2183 = literal2183 := by
  rw [tree2183_def]
  rfl
theorem node2183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2183 live2183 coloured2183 = result2183 := by
  rw [tree2183_def]
  try dsimp only [colour, result2183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2184_agree : tree2184 = literal2184 := by
  rw [tree2184_def, tree2182_agree, tree2183_agree]
  rfl
theorem node2184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2184 live2184 coloured2184 = result2184 := by
  rw [tree2184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2182_eq
  unfold live2182 coloured2182 at child
  try dsimp only [live2184, coloured2184]
  rw [child]
  dsimp only [result2182]
  have child := node2183_eq
  unfold live2183 coloured2183 at child
  try dsimp only [live2184, coloured2184]
  rw [child]
  dsimp only [result2183]
  try dsimp only [colour, result2184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2185_agree : tree2185 = literal2185 := by
  rw [tree2185_def]
  rfl
theorem node2185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2185 live2185 coloured2185 = result2185 := by
  rw [tree2185_def]
  try dsimp only [colour, result2185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2186_agree : tree2186 = literal2186 := by
  rw [tree2186_def, tree2184_agree, tree2185_agree]
  rfl
theorem node2186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2186 live2186 coloured2186 = result2186 := by
  rw [tree2186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2184_eq
  unfold live2184 coloured2184 at child
  try dsimp only [live2186, coloured2186]
  rw [child]
  dsimp only [result2184]
  have child := node2185_eq
  unfold live2185 coloured2185 at child
  try dsimp only [live2186, coloured2186]
  rw [child]
  dsimp only [result2185]
  try dsimp only [colour, result2186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2187_agree : tree2187 = literal2187 := by
  rw [tree2187_def]
  rfl
theorem node2187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2187 live2187 coloured2187 = result2187 := by
  rw [tree2187_def]
  try dsimp only [colour, result2187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2188_agree : tree2188 = literal2188 := by
  rw [tree2188_def, tree2186_agree, tree2187_agree]
  rfl
theorem node2188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2188 live2188 coloured2188 = result2188 := by
  rw [tree2188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2186_eq
  unfold live2186 coloured2186 at child
  try dsimp only [live2188, coloured2188]
  rw [child]
  dsimp only [result2186]
  have child := node2187_eq
  unfold live2187 coloured2187 at child
  try dsimp only [live2188, coloured2188]
  rw [child]
  dsimp only [result2187]
  try dsimp only [colour, result2188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2189_agree : tree2189 = literal2189 := by
  rw [tree2189_def]
  rfl
theorem node2189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2189 live2189 coloured2189 = result2189 := by
  rw [tree2189_def]
  try dsimp only [colour, result2189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2190_agree : tree2190 = literal2190 := by
  rw [tree2190_def, tree2188_agree, tree2189_agree]
  rfl
theorem node2190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2190 live2190 coloured2190 = result2190 := by
  rw [tree2190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2188_eq
  unfold live2188 coloured2188 at child
  try dsimp only [live2190, coloured2190]
  rw [child]
  dsimp only [result2188]
  have child := node2189_eq
  unfold live2189 coloured2189 at child
  try dsimp only [live2190, coloured2190]
  rw [child]
  dsimp only [result2189]
  try dsimp only [colour, result2190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2191_agree : tree2191 = literal2191 := by
  rw [tree2191_def]
  rfl
theorem node2191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2191 live2191 coloured2191 = result2191 := by
  rw [tree2191_def]
  try dsimp only [colour, result2191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2192_agree : tree2192 = literal2192 := by
  rw [tree2192_def, tree2190_agree, tree2191_agree]
  rfl
theorem node2192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2192 live2192 coloured2192 = result2192 := by
  rw [tree2192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2190_eq
  unfold live2190 coloured2190 at child
  try dsimp only [live2192, coloured2192]
  rw [child]
  dsimp only [result2190]
  have child := node2191_eq
  unfold live2191 coloured2191 at child
  try dsimp only [live2192, coloured2192]
  rw [child]
  dsimp only [result2191]
  try dsimp only [colour, result2192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2193_agree : tree2193 = literal2193 := by
  rw [tree2193_def]
  rfl
theorem node2193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2193 live2193 coloured2193 = result2193 := by
  rw [tree2193_def]
  try dsimp only [colour, result2193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2194_agree : tree2194 = literal2194 := by
  rw [tree2194_def, tree2192_agree, tree2193_agree]
  rfl
theorem node2194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2194 live2194 coloured2194 = result2194 := by
  rw [tree2194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2192_eq
  unfold live2192 coloured2192 at child
  try dsimp only [live2194, coloured2194]
  rw [child]
  dsimp only [result2192]
  have child := node2193_eq
  unfold live2193 coloured2193 at child
  try dsimp only [live2194, coloured2194]
  rw [child]
  dsimp only [result2193]
  try dsimp only [colour, result2194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2195_agree : tree2195 = literal2195 := by
  rw [tree2195_def]
  rfl
theorem node2195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2195 live2195 coloured2195 = result2195 := by
  rw [tree2195_def]
  try dsimp only [colour, result2195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2196_agree : tree2196 = literal2196 := by
  rw [tree2196_def, tree2194_agree, tree2195_agree]
  rfl
theorem node2196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2196 live2196 coloured2196 = result2196 := by
  rw [tree2196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2194_eq
  unfold live2194 coloured2194 at child
  try dsimp only [live2196, coloured2196]
  rw [child]
  dsimp only [result2194]
  have child := node2195_eq
  unfold live2195 coloured2195 at child
  try dsimp only [live2196, coloured2196]
  rw [child]
  dsimp only [result2195]
  try dsimp only [colour, result2196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2197_agree : tree2197 = literal2197 := by
  rw [tree2197_def]
  rfl
theorem node2197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2197 live2197 coloured2197 = result2197 := by
  rw [tree2197_def]
  try dsimp only [colour, result2197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2198_agree : tree2198 = literal2198 := by
  rw [tree2198_def, tree2196_agree, tree2197_agree]
  rfl
theorem node2198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2198 live2198 coloured2198 = result2198 := by
  rw [tree2198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2196_eq
  unfold live2196 coloured2196 at child
  try dsimp only [live2198, coloured2198]
  rw [child]
  dsimp only [result2196]
  have child := node2197_eq
  unfold live2197 coloured2197 at child
  try dsimp only [live2198, coloured2198]
  rw [child]
  dsimp only [result2197]
  try dsimp only [colour, result2198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2199_agree : tree2199 = literal2199 := by
  rw [tree2199_def]
  rfl
theorem node2199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2199 live2199 coloured2199 = result2199 := by
  rw [tree2199_def]
  try dsimp only [colour, result2199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2200_agree : tree2200 = literal2200 := by
  rw [tree2200_def, tree2198_agree, tree2199_agree]
  rfl
theorem node2200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2200 live2200 coloured2200 = result2200 := by
  rw [tree2200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2198_eq
  unfold live2198 coloured2198 at child
  try dsimp only [live2200, coloured2200]
  rw [child]
  dsimp only [result2198]
  have child := node2199_eq
  unfold live2199 coloured2199 at child
  try dsimp only [live2200, coloured2200]
  rw [child]
  dsimp only [result2199]
  try dsimp only [colour, result2200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2201_agree : tree2201 = literal2201 := by
  rw [tree2201_def]
  rfl
theorem node2201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2201 live2201 coloured2201 = result2201 := by
  rw [tree2201_def]
  try dsimp only [colour, result2201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2202_agree : tree2202 = literal2202 := by
  rw [tree2202_def, tree2200_agree, tree2201_agree]
  rfl
theorem node2202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2202 live2202 coloured2202 = result2202 := by
  rw [tree2202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2200_eq
  unfold live2200 coloured2200 at child
  try dsimp only [live2202, coloured2202]
  rw [child]
  dsimp only [result2200]
  have child := node2201_eq
  unfold live2201 coloured2201 at child
  try dsimp only [live2202, coloured2202]
  rw [child]
  dsimp only [result2201]
  try dsimp only [colour, result2202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2203_agree : tree2203 = literal2203 := by
  rw [tree2203_def]
  rfl
theorem node2203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2203 live2203 coloured2203 = result2203 := by
  rw [tree2203_def]
  try dsimp only [colour, result2203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2204_agree : tree2204 = literal2204 := by
  rw [tree2204_def, tree2202_agree, tree2203_agree]
  rfl
theorem node2204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2204 live2204 coloured2204 = result2204 := by
  rw [tree2204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2202_eq
  unfold live2202 coloured2202 at child
  try dsimp only [live2204, coloured2204]
  rw [child]
  dsimp only [result2202]
  have child := node2203_eq
  unfold live2203 coloured2203 at child
  try dsimp only [live2204, coloured2204]
  rw [child]
  dsimp only [result2203]
  try dsimp only [colour, result2204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2205_agree : tree2205 = literal2205 := by
  rw [tree2205_def]
  rfl
theorem node2205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2205 live2205 coloured2205 = result2205 := by
  rw [tree2205_def]
  try dsimp only [colour, result2205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2206_agree : tree2206 = literal2206 := by
  rw [tree2206_def, tree2204_agree, tree2205_agree]
  rfl
theorem node2206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2206 live2206 coloured2206 = result2206 := by
  rw [tree2206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2204_eq
  unfold live2204 coloured2204 at child
  try dsimp only [live2206, coloured2206]
  rw [child]
  dsimp only [result2204]
  have child := node2205_eq
  unfold live2205 coloured2205 at child
  try dsimp only [live2206, coloured2206]
  rw [child]
  dsimp only [result2205]
  try dsimp only [colour, result2206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2207_agree : tree2207 = literal2207 := by
  rw [tree2207_def]
  rfl
theorem node2207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2207 live2207 coloured2207 = result2207 := by
  rw [tree2207_def]
  try dsimp only [colour, result2207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
