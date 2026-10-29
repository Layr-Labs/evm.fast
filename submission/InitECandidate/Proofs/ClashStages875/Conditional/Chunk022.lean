import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages875.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages875
theorem tree2112_agree_conditional : tree2112 = literal2112 := by
  rw [tree2112_def]
  rfl
theorem node2112_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2112 live2112 coloured2112 = result2112 := by
  rw [tree2112_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2113_agree_conditional
    (child0 : tree2111 = literal2111)
    (child1 : tree2112 = literal2112) : tree2113 = literal2113 := by
  rw [tree2113_def, child0, child1]
  rfl
theorem node2113_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2111 live2111 coloured2111 = result2111)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2112 live2112 coloured2112 = result2112) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2113 live2113 coloured2113 = result2113 := by
  rw [tree2113_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2111 coloured2111 at child
  try dsimp only [live2113, coloured2113]
  rw [child]
  dsimp only [result2111]
  have child := child1
  unfold live2112 coloured2112 at child
  try dsimp only [live2113, coloured2113]
  rw [child]
  dsimp only [result2112]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2114_agree_conditional : tree2114 = literal2114 := by
  rw [tree2114_def]
  rfl
theorem node2114_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2114 live2114 coloured2114 = result2114 := by
  rw [tree2114_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2115_agree_conditional : tree2115 = literal2115 := by
  rw [tree2115_def]
  rfl
theorem node2115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2115 live2115 coloured2115 = result2115 := by
  rw [tree2115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2116_agree_conditional
    (child0 : tree2114 = literal2114)
    (child1 : tree2115 = literal2115) : tree2116 = literal2116 := by
  rw [tree2116_def, child0, child1]
  rfl
theorem node2116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2114 live2114 coloured2114 = result2114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2115 live2115 coloured2115 = result2115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2116 live2116 coloured2116 = result2116 := by
  rw [tree2116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2114 coloured2114 at child
  try dsimp only [live2116, coloured2116]
  rw [child]
  dsimp only [result2114]
  have child := child1
  unfold live2115 coloured2115 at child
  try dsimp only [live2116, coloured2116]
  rw [child]
  dsimp only [result2115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2117_agree_conditional : tree2117 = literal2117 := by
  rw [tree2117_def]
  rfl
theorem node2117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2117 live2117 coloured2117 = result2117 := by
  rw [tree2117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2118_agree_conditional
    (child0 : tree2116 = literal2116)
    (child1 : tree2117 = literal2117) : tree2118 = literal2118 := by
  rw [tree2118_def, child0, child1]
  rfl
theorem node2118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2116 live2116 coloured2116 = result2116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2117 live2117 coloured2117 = result2117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2118 live2118 coloured2118 = result2118 := by
  rw [tree2118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2116 coloured2116 at child
  try dsimp only [live2118, coloured2118]
  rw [child]
  dsimp only [result2116]
  have child := child1
  unfold live2117 coloured2117 at child
  try dsimp only [live2118, coloured2118]
  rw [child]
  dsimp only [result2117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2119_agree_conditional
    (child0 : tree2113 = literal2113)
    (child1 : tree2118 = literal2118) : tree2119 = literal2119 := by
  rw [tree2119_def, child0, child1]
  rfl
theorem node2119_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2113 live2113 coloured2113 = result2113)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2118 live2118 coloured2118 = result2118) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2119 live2119 coloured2119 = result2119 := by
  rw [tree2119_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2113 coloured2113 at child
  try dsimp only [live2119, coloured2119]
  rw [child]
  dsimp only [result2113]
  have child := child1
  unfold live2118 coloured2118 at child
  try dsimp only [live2119, coloured2119]
  rw [child]
  dsimp only [result2118]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2120_agree_conditional
    (child0 : tree2110 = literal2110)
    (child1 : tree2119 = literal2119) : tree2120 = literal2120 := by
  rw [tree2120_def, child0, child1]
  rfl
theorem node2120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2110 live2110 coloured2110 = result2110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2119 live2119 coloured2119 = result2119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2120 live2120 coloured2120 = result2120 := by
  rw [tree2120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2110 coloured2110 at child
  try dsimp only [live2120, coloured2120]
  rw [child]
  dsimp only [result2110]
  have child := child1
  unfold live2119 coloured2119 at child
  try dsimp only [live2120, coloured2120]
  rw [child]
  dsimp only [result2119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2121_agree_conditional : tree2121 = literal2121 := by
  rw [tree2121_def]
  rfl
theorem node2121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2121 live2121 coloured2121 = result2121 := by
  rw [tree2121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2122_agree_conditional
    (child0 : tree2120 = literal2120)
    (child1 : tree2121 = literal2121) : tree2122 = literal2122 := by
  rw [tree2122_def, child0, child1]
  rfl
theorem node2122_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2120 live2120 coloured2120 = result2120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2121 live2121 coloured2121 = result2121) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2122 live2122 coloured2122 = result2122 := by
  rw [tree2122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2120 coloured2120 at child
  try dsimp only [live2122, coloured2122]
  rw [child]
  dsimp only [result2120]
  have child := child1
  unfold live2121 coloured2121 at child
  try dsimp only [live2122, coloured2122]
  rw [child]
  dsimp only [result2121]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2123_agree_conditional : tree2123 = literal2123 := by
  rw [tree2123_def]
  rfl
theorem node2123_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2123 live2123 coloured2123 = result2123 := by
  rw [tree2123_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2124_agree_conditional
    (child0 : tree2122 = literal2122)
    (child1 : tree2123 = literal2123) : tree2124 = literal2124 := by
  rw [tree2124_def, child0, child1]
  rfl
theorem node2124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2122 live2122 coloured2122 = result2122)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2123 live2123 coloured2123 = result2123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2124 live2124 coloured2124 = result2124 := by
  rw [tree2124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2122 coloured2122 at child
  try dsimp only [live2124, coloured2124]
  rw [child]
  dsimp only [result2122]
  have child := child1
  unfold live2123 coloured2123 at child
  try dsimp only [live2124, coloured2124]
  rw [child]
  dsimp only [result2123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2125_agree_conditional : tree2125 = literal2125 := by
  rw [tree2125_def]
  rfl
theorem node2125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2125 live2125 coloured2125 = result2125 := by
  rw [tree2125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2126_agree_conditional : tree2126 = literal2126 := by
  rw [tree2126_def]
  rfl
theorem node2126_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2126 live2126 coloured2126 = result2126 := by
  rw [tree2126_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2127_agree_conditional
    (child0 : tree2125 = literal2125)
    (child1 : tree2126 = literal2126) : tree2127 = literal2127 := by
  rw [tree2127_def, child0, child1]
  rfl
theorem node2127_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2125 live2125 coloured2125 = result2125)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2126 live2126 coloured2126 = result2126) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2127 live2127 coloured2127 = result2127 := by
  rw [tree2127_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2125 coloured2125 at child
  try dsimp only [live2127, coloured2127]
  rw [child]
  dsimp only [result2125]
  have child := child1
  unfold live2126 coloured2126 at child
  try dsimp only [live2127, coloured2127]
  rw [child]
  dsimp only [result2126]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2128_agree_conditional : tree2128 = literal2128 := by
  rw [tree2128_def]
  rfl
theorem node2128_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2128 live2128 coloured2128 = result2128 := by
  rw [tree2128_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2129_agree_conditional : tree2129 = literal2129 := by
  rw [tree2129_def]
  rfl
theorem node2129_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2129 live2129 coloured2129 = result2129 := by
  rw [tree2129_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2130_agree_conditional
    (child0 : tree2128 = literal2128)
    (child1 : tree2129 = literal2129) : tree2130 = literal2130 := by
  rw [tree2130_def, child0, child1]
  rfl
theorem node2130_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2128 live2128 coloured2128 = result2128)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2129 live2129 coloured2129 = result2129) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2130 live2130 coloured2130 = result2130 := by
  rw [tree2130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2128 coloured2128 at child
  try dsimp only [live2130, coloured2130]
  rw [child]
  dsimp only [result2128]
  have child := child1
  unfold live2129 coloured2129 at child
  try dsimp only [live2130, coloured2130]
  rw [child]
  dsimp only [result2129]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2131_agree_conditional : tree2131 = literal2131 := by
  rw [tree2131_def]
  rfl
theorem node2131_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2131 live2131 coloured2131 = result2131 := by
  rw [tree2131_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2132_agree_conditional
    (child0 : tree2130 = literal2130)
    (child1 : tree2131 = literal2131) : tree2132 = literal2132 := by
  rw [tree2132_def, child0, child1]
  rfl
theorem node2132_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2130 live2130 coloured2130 = result2130)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2131 live2131 coloured2131 = result2131) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2132 live2132 coloured2132 = result2132 := by
  rw [tree2132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2130 coloured2130 at child
  try dsimp only [live2132, coloured2132]
  rw [child]
  dsimp only [result2130]
  have child := child1
  unfold live2131 coloured2131 at child
  try dsimp only [live2132, coloured2132]
  rw [child]
  dsimp only [result2131]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2133_agree_conditional
    (child0 : tree2127 = literal2127)
    (child1 : tree2132 = literal2132) : tree2133 = literal2133 := by
  rw [tree2133_def, child0, child1]
  rfl
theorem node2133_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2127 live2127 coloured2127 = result2127)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2132 live2132 coloured2132 = result2132) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2133 live2133 coloured2133 = result2133 := by
  rw [tree2133_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2127 coloured2127 at child
  try dsimp only [live2133, coloured2133]
  rw [child]
  dsimp only [result2127]
  have child := child1
  unfold live2132 coloured2132 at child
  try dsimp only [live2133, coloured2133]
  rw [child]
  dsimp only [result2132]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2134_agree_conditional
    (child0 : tree2124 = literal2124)
    (child1 : tree2133 = literal2133) : tree2134 = literal2134 := by
  rw [tree2134_def, child0, child1]
  rfl
theorem node2134_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2124 live2124 coloured2124 = result2124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2133 live2133 coloured2133 = result2133) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2134 live2134 coloured2134 = result2134 := by
  rw [tree2134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2124 coloured2124 at child
  try dsimp only [live2134, coloured2134]
  rw [child]
  dsimp only [result2124]
  have child := child1
  unfold live2133 coloured2133 at child
  try dsimp only [live2134, coloured2134]
  rw [child]
  dsimp only [result2133]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2135_agree_conditional : tree2135 = literal2135 := by
  rw [tree2135_def]
  rfl
theorem node2135_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2135 live2135 coloured2135 = result2135 := by
  rw [tree2135_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2136_agree_conditional
    (child0 : tree2134 = literal2134)
    (child1 : tree2135 = literal2135) : tree2136 = literal2136 := by
  rw [tree2136_def, child0, child1]
  rfl
theorem node2136_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2134 live2134 coloured2134 = result2134)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2135 live2135 coloured2135 = result2135) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2136 live2136 coloured2136 = result2136 := by
  rw [tree2136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2134 coloured2134 at child
  try dsimp only [live2136, coloured2136]
  rw [child]
  dsimp only [result2134]
  have child := child1
  unfold live2135 coloured2135 at child
  try dsimp only [live2136, coloured2136]
  rw [child]
  dsimp only [result2135]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2137_agree_conditional : tree2137 = literal2137 := by
  rw [tree2137_def]
  rfl
theorem node2137_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2137 live2137 coloured2137 = result2137 := by
  rw [tree2137_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2138_agree_conditional
    (child0 : tree2136 = literal2136)
    (child1 : tree2137 = literal2137) : tree2138 = literal2138 := by
  rw [tree2138_def, child0, child1]
  rfl
theorem node2138_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2136 live2136 coloured2136 = result2136)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2137 live2137 coloured2137 = result2137) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2138 live2138 coloured2138 = result2138 := by
  rw [tree2138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2136 coloured2136 at child
  try dsimp only [live2138, coloured2138]
  rw [child]
  dsimp only [result2136]
  have child := child1
  unfold live2137 coloured2137 at child
  try dsimp only [live2138, coloured2138]
  rw [child]
  dsimp only [result2137]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2139_agree_conditional : tree2139 = literal2139 := by
  rw [tree2139_def]
  rfl
theorem node2139_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2139 live2139 coloured2139 = result2139 := by
  rw [tree2139_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2140_agree_conditional
    (child0 : tree2138 = literal2138)
    (child1 : tree2139 = literal2139) : tree2140 = literal2140 := by
  rw [tree2140_def, child0, child1]
  rfl
theorem node2140_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2138 live2138 coloured2138 = result2138)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2139 live2139 coloured2139 = result2139) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2140 live2140 coloured2140 = result2140 := by
  rw [tree2140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2138 coloured2138 at child
  try dsimp only [live2140, coloured2140]
  rw [child]
  dsimp only [result2138]
  have child := child1
  unfold live2139 coloured2139 at child
  try dsimp only [live2140, coloured2140]
  rw [child]
  dsimp only [result2139]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2141_agree_conditional : tree2141 = literal2141 := by
  rw [tree2141_def]
  rfl
theorem node2141_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2141 live2141 coloured2141 = result2141 := by
  rw [tree2141_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2142_agree_conditional
    (child0 : tree2140 = literal2140)
    (child1 : tree2141 = literal2141) : tree2142 = literal2142 := by
  rw [tree2142_def, child0, child1]
  rfl
theorem node2142_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2140 live2140 coloured2140 = result2140)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2141 live2141 coloured2141 = result2141) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2142 live2142 coloured2142 = result2142 := by
  rw [tree2142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2140 coloured2140 at child
  try dsimp only [live2142, coloured2142]
  rw [child]
  dsimp only [result2140]
  have child := child1
  unfold live2141 coloured2141 at child
  try dsimp only [live2142, coloured2142]
  rw [child]
  dsimp only [result2141]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2143_agree_conditional : tree2143 = literal2143 := by
  rw [tree2143_def]
  rfl
theorem node2143_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2143 live2143 coloured2143 = result2143 := by
  rw [tree2143_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2144_agree_conditional
    (child0 : tree2142 = literal2142)
    (child1 : tree2143 = literal2143) : tree2144 = literal2144 := by
  rw [tree2144_def, child0, child1]
  rfl
theorem node2144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2142 live2142 coloured2142 = result2142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2143 live2143 coloured2143 = result2143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2144 live2144 coloured2144 = result2144 := by
  rw [tree2144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2142 coloured2142 at child
  try dsimp only [live2144, coloured2144]
  rw [child]
  dsimp only [result2142]
  have child := child1
  unfold live2143 coloured2143 at child
  try dsimp only [live2144, coloured2144]
  rw [child]
  dsimp only [result2143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2145_agree_conditional : tree2145 = literal2145 := by
  rw [tree2145_def]
  rfl
theorem node2145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2145 live2145 coloured2145 = result2145 := by
  rw [tree2145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2146_agree_conditional
    (child0 : tree2144 = literal2144)
    (child1 : tree2145 = literal2145) : tree2146 = literal2146 := by
  rw [tree2146_def, child0, child1]
  rfl
theorem node2146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2144 live2144 coloured2144 = result2144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2145 live2145 coloured2145 = result2145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2146 live2146 coloured2146 = result2146 := by
  rw [tree2146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2144 coloured2144 at child
  try dsimp only [live2146, coloured2146]
  rw [child]
  dsimp only [result2144]
  have child := child1
  unfold live2145 coloured2145 at child
  try dsimp only [live2146, coloured2146]
  rw [child]
  dsimp only [result2145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2147_agree_conditional : tree2147 = literal2147 := by
  rw [tree2147_def]
  rfl
theorem node2147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2147 live2147 coloured2147 = result2147 := by
  rw [tree2147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2148_agree_conditional
    (child0 : tree2146 = literal2146)
    (child1 : tree2147 = literal2147) : tree2148 = literal2148 := by
  rw [tree2148_def, child0, child1]
  rfl
theorem node2148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2146 live2146 coloured2146 = result2146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2147 live2147 coloured2147 = result2147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2148 live2148 coloured2148 = result2148 := by
  rw [tree2148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2146 coloured2146 at child
  try dsimp only [live2148, coloured2148]
  rw [child]
  dsimp only [result2146]
  have child := child1
  unfold live2147 coloured2147 at child
  try dsimp only [live2148, coloured2148]
  rw [child]
  dsimp only [result2147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2149_agree_conditional : tree2149 = literal2149 := by
  rw [tree2149_def]
  rfl
theorem node2149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2149 live2149 coloured2149 = result2149 := by
  rw [tree2149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2150_agree_conditional
    (child0 : tree2148 = literal2148)
    (child1 : tree2149 = literal2149) : tree2150 = literal2150 := by
  rw [tree2150_def, child0, child1]
  rfl
theorem node2150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2148 live2148 coloured2148 = result2148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2149 live2149 coloured2149 = result2149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2150 live2150 coloured2150 = result2150 := by
  rw [tree2150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2148 coloured2148 at child
  try dsimp only [live2150, coloured2150]
  rw [child]
  dsimp only [result2148]
  have child := child1
  unfold live2149 coloured2149 at child
  try dsimp only [live2150, coloured2150]
  rw [child]
  dsimp only [result2149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2151_agree_conditional : tree2151 = literal2151 := by
  rw [tree2151_def]
  rfl
theorem node2151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2151 live2151 coloured2151 = result2151 := by
  rw [tree2151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2152_agree_conditional
    (child0 : tree2150 = literal2150)
    (child1 : tree2151 = literal2151) : tree2152 = literal2152 := by
  rw [tree2152_def, child0, child1]
  rfl
theorem node2152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2150 live2150 coloured2150 = result2150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2151 live2151 coloured2151 = result2151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2152 live2152 coloured2152 = result2152 := by
  rw [tree2152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2150 coloured2150 at child
  try dsimp only [live2152, coloured2152]
  rw [child]
  dsimp only [result2150]
  have child := child1
  unfold live2151 coloured2151 at child
  try dsimp only [live2152, coloured2152]
  rw [child]
  dsimp only [result2151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2153_agree_conditional : tree2153 = literal2153 := by
  rw [tree2153_def]
  rfl
theorem node2153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2153 live2153 coloured2153 = result2153 := by
  rw [tree2153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2154_agree_conditional
    (child0 : tree2152 = literal2152)
    (child1 : tree2153 = literal2153) : tree2154 = literal2154 := by
  rw [tree2154_def, child0, child1]
  rfl
theorem node2154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2152 live2152 coloured2152 = result2152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2153 live2153 coloured2153 = result2153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2154 live2154 coloured2154 = result2154 := by
  rw [tree2154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2152 coloured2152 at child
  try dsimp only [live2154, coloured2154]
  rw [child]
  dsimp only [result2152]
  have child := child1
  unfold live2153 coloured2153 at child
  try dsimp only [live2154, coloured2154]
  rw [child]
  dsimp only [result2153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2155_agree_conditional : tree2155 = literal2155 := by
  rw [tree2155_def]
  rfl
theorem node2155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2155 live2155 coloured2155 = result2155 := by
  rw [tree2155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2156_agree_conditional : tree2156 = literal2156 := by
  rw [tree2156_def]
  rfl
theorem node2156_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2156 live2156 coloured2156 = result2156 := by
  rw [tree2156_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2157_agree_conditional
    (child0 : tree2155 = literal2155)
    (child1 : tree2156 = literal2156) : tree2157 = literal2157 := by
  rw [tree2157_def, child0, child1]
  rfl
theorem node2157_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2155 live2155 coloured2155 = result2155)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2156 live2156 coloured2156 = result2156) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2157 live2157 coloured2157 = result2157 := by
  rw [tree2157_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2155 coloured2155 at child
  try dsimp only [live2157, coloured2157]
  rw [child]
  dsimp only [result2155]
  have child := child1
  unfold live2156 coloured2156 at child
  try dsimp only [live2157, coloured2157]
  rw [child]
  dsimp only [result2156]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2158_agree_conditional : tree2158 = literal2158 := by
  rw [tree2158_def]
  rfl
theorem node2158_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2158 live2158 coloured2158 = result2158 := by
  rw [tree2158_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2159_agree_conditional : tree2159 = literal2159 := by
  rw [tree2159_def]
  rfl
theorem node2159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2159 live2159 coloured2159 = result2159 := by
  rw [tree2159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2160_agree_conditional
    (child0 : tree2158 = literal2158)
    (child1 : tree2159 = literal2159) : tree2160 = literal2160 := by
  rw [tree2160_def, child0, child1]
  rfl
theorem node2160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2158 live2158 coloured2158 = result2158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2159 live2159 coloured2159 = result2159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2160 live2160 coloured2160 = result2160 := by
  rw [tree2160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2158 coloured2158 at child
  try dsimp only [live2160, coloured2160]
  rw [child]
  dsimp only [result2158]
  have child := child1
  unfold live2159 coloured2159 at child
  try dsimp only [live2160, coloured2160]
  rw [child]
  dsimp only [result2159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2161_agree_conditional : tree2161 = literal2161 := by
  rw [tree2161_def]
  rfl
theorem node2161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2161 live2161 coloured2161 = result2161 := by
  rw [tree2161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2162_agree_conditional
    (child0 : tree2160 = literal2160)
    (child1 : tree2161 = literal2161) : tree2162 = literal2162 := by
  rw [tree2162_def, child0, child1]
  rfl
theorem node2162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2160 live2160 coloured2160 = result2160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2161 live2161 coloured2161 = result2161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2162 live2162 coloured2162 = result2162 := by
  rw [tree2162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2160 coloured2160 at child
  try dsimp only [live2162, coloured2162]
  rw [child]
  dsimp only [result2160]
  have child := child1
  unfold live2161 coloured2161 at child
  try dsimp only [live2162, coloured2162]
  rw [child]
  dsimp only [result2161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2163_agree_conditional
    (child0 : tree2157 = literal2157)
    (child1 : tree2162 = literal2162) : tree2163 = literal2163 := by
  rw [tree2163_def, child0, child1]
  rfl
theorem node2163_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2157 live2157 coloured2157 = result2157)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2162 live2162 coloured2162 = result2162) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2163 live2163 coloured2163 = result2163 := by
  rw [tree2163_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2157 coloured2157 at child
  try dsimp only [live2163, coloured2163]
  rw [child]
  dsimp only [result2157]
  have child := child1
  unfold live2162 coloured2162 at child
  try dsimp only [live2163, coloured2163]
  rw [child]
  dsimp only [result2162]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2164_agree_conditional
    (child0 : tree2154 = literal2154)
    (child1 : tree2163 = literal2163) : tree2164 = literal2164 := by
  rw [tree2164_def, child0, child1]
  rfl
theorem node2164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2154 live2154 coloured2154 = result2154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2163 live2163 coloured2163 = result2163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2164 live2164 coloured2164 = result2164 := by
  rw [tree2164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2154 coloured2154 at child
  try dsimp only [live2164, coloured2164]
  rw [child]
  dsimp only [result2154]
  have child := child1
  unfold live2163 coloured2163 at child
  try dsimp only [live2164, coloured2164]
  rw [child]
  dsimp only [result2163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2165_agree_conditional : tree2165 = literal2165 := by
  rw [tree2165_def]
  rfl
theorem node2165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2165 live2165 coloured2165 = result2165 := by
  rw [tree2165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2166_agree_conditional
    (child0 : tree2164 = literal2164)
    (child1 : tree2165 = literal2165) : tree2166 = literal2166 := by
  rw [tree2166_def, child0, child1]
  rfl
theorem node2166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2164 live2164 coloured2164 = result2164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2165 live2165 coloured2165 = result2165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2166 live2166 coloured2166 = result2166 := by
  rw [tree2166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2164 coloured2164 at child
  try dsimp only [live2166, coloured2166]
  rw [child]
  dsimp only [result2164]
  have child := child1
  unfold live2165 coloured2165 at child
  try dsimp only [live2166, coloured2166]
  rw [child]
  dsimp only [result2165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2167_agree_conditional : tree2167 = literal2167 := by
  rw [tree2167_def]
  rfl
theorem node2167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2167 live2167 coloured2167 = result2167 := by
  rw [tree2167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2168_agree_conditional
    (child0 : tree2166 = literal2166)
    (child1 : tree2167 = literal2167) : tree2168 = literal2168 := by
  rw [tree2168_def, child0, child1]
  rfl
theorem node2168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2166 live2166 coloured2166 = result2166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2167 live2167 coloured2167 = result2167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2168 live2168 coloured2168 = result2168 := by
  rw [tree2168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2166 coloured2166 at child
  try dsimp only [live2168, coloured2168]
  rw [child]
  dsimp only [result2166]
  have child := child1
  unfold live2167 coloured2167 at child
  try dsimp only [live2168, coloured2168]
  rw [child]
  dsimp only [result2167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2169_agree_conditional : tree2169 = literal2169 := by
  rw [tree2169_def]
  rfl
theorem node2169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2169 live2169 coloured2169 = result2169 := by
  rw [tree2169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2170_agree_conditional
    (child0 : tree2168 = literal2168)
    (child1 : tree2169 = literal2169) : tree2170 = literal2170 := by
  rw [tree2170_def, child0, child1]
  rfl
theorem node2170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2168 live2168 coloured2168 = result2168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2169 live2169 coloured2169 = result2169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2170 live2170 coloured2170 = result2170 := by
  rw [tree2170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2168 coloured2168 at child
  try dsimp only [live2170, coloured2170]
  rw [child]
  dsimp only [result2168]
  have child := child1
  unfold live2169 coloured2169 at child
  try dsimp only [live2170, coloured2170]
  rw [child]
  dsimp only [result2169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2171_agree_conditional : tree2171 = literal2171 := by
  rw [tree2171_def]
  rfl
theorem node2171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2171 live2171 coloured2171 = result2171 := by
  rw [tree2171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2172_agree_conditional
    (child0 : tree2170 = literal2170)
    (child1 : tree2171 = literal2171) : tree2172 = literal2172 := by
  rw [tree2172_def, child0, child1]
  rfl
theorem node2172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2170 live2170 coloured2170 = result2170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2171 live2171 coloured2171 = result2171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2172 live2172 coloured2172 = result2172 := by
  rw [tree2172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2170 coloured2170 at child
  try dsimp only [live2172, coloured2172]
  rw [child]
  dsimp only [result2170]
  have child := child1
  unfold live2171 coloured2171 at child
  try dsimp only [live2172, coloured2172]
  rw [child]
  dsimp only [result2171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2173_agree_conditional : tree2173 = literal2173 := by
  rw [tree2173_def]
  rfl
theorem node2173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2173 live2173 coloured2173 = result2173 := by
  rw [tree2173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2174_agree_conditional : tree2174 = literal2174 := by
  rw [tree2174_def]
  rfl
theorem node2174_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2174 live2174 coloured2174 = result2174 := by
  rw [tree2174_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2175_agree_conditional
    (child0 : tree2173 = literal2173)
    (child1 : tree2174 = literal2174) : tree2175 = literal2175 := by
  rw [tree2175_def, child0, child1]
  rfl
theorem node2175_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2173 live2173 coloured2173 = result2173)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2174 live2174 coloured2174 = result2174) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2175 live2175 coloured2175 = result2175 := by
  rw [tree2175_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2173 coloured2173 at child
  try dsimp only [live2175, coloured2175]
  rw [child]
  dsimp only [result2173]
  have child := child1
  unfold live2174 coloured2174 at child
  try dsimp only [live2175, coloured2175]
  rw [child]
  dsimp only [result2174]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2176_agree_conditional : tree2176 = literal2176 := by
  rw [tree2176_def]
  rfl
theorem node2176_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2176 live2176 coloured2176 = result2176 := by
  rw [tree2176_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2177_agree_conditional : tree2177 = literal2177 := by
  rw [tree2177_def]
  rfl
theorem node2177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2177 live2177 coloured2177 = result2177 := by
  rw [tree2177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2178_agree_conditional
    (child0 : tree2176 = literal2176)
    (child1 : tree2177 = literal2177) : tree2178 = literal2178 := by
  rw [tree2178_def, child0, child1]
  rfl
theorem node2178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2176 live2176 coloured2176 = result2176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2177 live2177 coloured2177 = result2177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2178 live2178 coloured2178 = result2178 := by
  rw [tree2178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2176 coloured2176 at child
  try dsimp only [live2178, coloured2178]
  rw [child]
  dsimp only [result2176]
  have child := child1
  unfold live2177 coloured2177 at child
  try dsimp only [live2178, coloured2178]
  rw [child]
  dsimp only [result2177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2179_agree_conditional : tree2179 = literal2179 := by
  rw [tree2179_def]
  rfl
theorem node2179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2179 live2179 coloured2179 = result2179 := by
  rw [tree2179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2180_agree_conditional
    (child0 : tree2178 = literal2178)
    (child1 : tree2179 = literal2179) : tree2180 = literal2180 := by
  rw [tree2180_def, child0, child1]
  rfl
theorem node2180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2178 live2178 coloured2178 = result2178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2179 live2179 coloured2179 = result2179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2180 live2180 coloured2180 = result2180 := by
  rw [tree2180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2178 coloured2178 at child
  try dsimp only [live2180, coloured2180]
  rw [child]
  dsimp only [result2178]
  have child := child1
  unfold live2179 coloured2179 at child
  try dsimp only [live2180, coloured2180]
  rw [child]
  dsimp only [result2179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2181_agree_conditional
    (child0 : tree2175 = literal2175)
    (child1 : tree2180 = literal2180) : tree2181 = literal2181 := by
  rw [tree2181_def, child0, child1]
  rfl
theorem node2181_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2175 live2175 coloured2175 = result2175)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2180 live2180 coloured2180 = result2180) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2181 live2181 coloured2181 = result2181 := by
  rw [tree2181_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2175 coloured2175 at child
  try dsimp only [live2181, coloured2181]
  rw [child]
  dsimp only [result2175]
  have child := child1
  unfold live2180 coloured2180 at child
  try dsimp only [live2181, coloured2181]
  rw [child]
  dsimp only [result2180]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2182_agree_conditional
    (child0 : tree2172 = literal2172)
    (child1 : tree2181 = literal2181) : tree2182 = literal2182 := by
  rw [tree2182_def, child0, child1]
  rfl
theorem node2182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2172 live2172 coloured2172 = result2172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2181 live2181 coloured2181 = result2181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2182 live2182 coloured2182 = result2182 := by
  rw [tree2182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2172 coloured2172 at child
  try dsimp only [live2182, coloured2182]
  rw [child]
  dsimp only [result2172]
  have child := child1
  unfold live2181 coloured2181 at child
  try dsimp only [live2182, coloured2182]
  rw [child]
  dsimp only [result2181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2183_agree_conditional : tree2183 = literal2183 := by
  rw [tree2183_def]
  rfl
theorem node2183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2183 live2183 coloured2183 = result2183 := by
  rw [tree2183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2184_agree_conditional
    (child0 : tree2182 = literal2182)
    (child1 : tree2183 = literal2183) : tree2184 = literal2184 := by
  rw [tree2184_def, child0, child1]
  rfl
theorem node2184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2182 live2182 coloured2182 = result2182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2183 live2183 coloured2183 = result2183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2184 live2184 coloured2184 = result2184 := by
  rw [tree2184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2182 coloured2182 at child
  try dsimp only [live2184, coloured2184]
  rw [child]
  dsimp only [result2182]
  have child := child1
  unfold live2183 coloured2183 at child
  try dsimp only [live2184, coloured2184]
  rw [child]
  dsimp only [result2183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2185_agree_conditional : tree2185 = literal2185 := by
  rw [tree2185_def]
  rfl
theorem node2185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2185 live2185 coloured2185 = result2185 := by
  rw [tree2185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2186_agree_conditional
    (child0 : tree2184 = literal2184)
    (child1 : tree2185 = literal2185) : tree2186 = literal2186 := by
  rw [tree2186_def, child0, child1]
  rfl
theorem node2186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2184 live2184 coloured2184 = result2184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2185 live2185 coloured2185 = result2185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2186 live2186 coloured2186 = result2186 := by
  rw [tree2186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2184 coloured2184 at child
  try dsimp only [live2186, coloured2186]
  rw [child]
  dsimp only [result2184]
  have child := child1
  unfold live2185 coloured2185 at child
  try dsimp only [live2186, coloured2186]
  rw [child]
  dsimp only [result2185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2187_agree_conditional : tree2187 = literal2187 := by
  rw [tree2187_def]
  rfl
theorem node2187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2187 live2187 coloured2187 = result2187 := by
  rw [tree2187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2188_agree_conditional
    (child0 : tree2186 = literal2186)
    (child1 : tree2187 = literal2187) : tree2188 = literal2188 := by
  rw [tree2188_def, child0, child1]
  rfl
theorem node2188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2186 live2186 coloured2186 = result2186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2187 live2187 coloured2187 = result2187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2188 live2188 coloured2188 = result2188 := by
  rw [tree2188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2186 coloured2186 at child
  try dsimp only [live2188, coloured2188]
  rw [child]
  dsimp only [result2186]
  have child := child1
  unfold live2187 coloured2187 at child
  try dsimp only [live2188, coloured2188]
  rw [child]
  dsimp only [result2187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2189_agree_conditional : tree2189 = literal2189 := by
  rw [tree2189_def]
  rfl
theorem node2189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2189 live2189 coloured2189 = result2189 := by
  rw [tree2189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2190_agree_conditional
    (child0 : tree2188 = literal2188)
    (child1 : tree2189 = literal2189) : tree2190 = literal2190 := by
  rw [tree2190_def, child0, child1]
  rfl
theorem node2190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2188 live2188 coloured2188 = result2188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2189 live2189 coloured2189 = result2189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2190 live2190 coloured2190 = result2190 := by
  rw [tree2190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2188 coloured2188 at child
  try dsimp only [live2190, coloured2190]
  rw [child]
  dsimp only [result2188]
  have child := child1
  unfold live2189 coloured2189 at child
  try dsimp only [live2190, coloured2190]
  rw [child]
  dsimp only [result2189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2191_agree_conditional : tree2191 = literal2191 := by
  rw [tree2191_def]
  rfl
theorem node2191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2191 live2191 coloured2191 = result2191 := by
  rw [tree2191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2192_agree_conditional
    (child0 : tree2190 = literal2190)
    (child1 : tree2191 = literal2191) : tree2192 = literal2192 := by
  rw [tree2192_def, child0, child1]
  rfl
theorem node2192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2190 live2190 coloured2190 = result2190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2191 live2191 coloured2191 = result2191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2192 live2192 coloured2192 = result2192 := by
  rw [tree2192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2190 coloured2190 at child
  try dsimp only [live2192, coloured2192]
  rw [child]
  dsimp only [result2190]
  have child := child1
  unfold live2191 coloured2191 at child
  try dsimp only [live2192, coloured2192]
  rw [child]
  dsimp only [result2191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2193_agree_conditional : tree2193 = literal2193 := by
  rw [tree2193_def]
  rfl
theorem node2193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2193 live2193 coloured2193 = result2193 := by
  rw [tree2193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2194_agree_conditional
    (child0 : tree2192 = literal2192)
    (child1 : tree2193 = literal2193) : tree2194 = literal2194 := by
  rw [tree2194_def, child0, child1]
  rfl
theorem node2194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2192 live2192 coloured2192 = result2192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2193 live2193 coloured2193 = result2193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2194 live2194 coloured2194 = result2194 := by
  rw [tree2194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2192 coloured2192 at child
  try dsimp only [live2194, coloured2194]
  rw [child]
  dsimp only [result2192]
  have child := child1
  unfold live2193 coloured2193 at child
  try dsimp only [live2194, coloured2194]
  rw [child]
  dsimp only [result2193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2195_agree_conditional : tree2195 = literal2195 := by
  rw [tree2195_def]
  rfl
theorem node2195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2195 live2195 coloured2195 = result2195 := by
  rw [tree2195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2196_agree_conditional
    (child0 : tree2194 = literal2194)
    (child1 : tree2195 = literal2195) : tree2196 = literal2196 := by
  rw [tree2196_def, child0, child1]
  rfl
theorem node2196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2194 live2194 coloured2194 = result2194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2195 live2195 coloured2195 = result2195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2196 live2196 coloured2196 = result2196 := by
  rw [tree2196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2194 coloured2194 at child
  try dsimp only [live2196, coloured2196]
  rw [child]
  dsimp only [result2194]
  have child := child1
  unfold live2195 coloured2195 at child
  try dsimp only [live2196, coloured2196]
  rw [child]
  dsimp only [result2195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2197_agree_conditional : tree2197 = literal2197 := by
  rw [tree2197_def]
  rfl
theorem node2197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2197 live2197 coloured2197 = result2197 := by
  rw [tree2197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2198_agree_conditional : tree2198 = literal2198 := by
  rw [tree2198_def]
  rfl
theorem node2198_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2198 live2198 coloured2198 = result2198 := by
  rw [tree2198_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2199_agree_conditional
    (child0 : tree2197 = literal2197)
    (child1 : tree2198 = literal2198) : tree2199 = literal2199 := by
  rw [tree2199_def, child0, child1]
  rfl
theorem node2199_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2197 live2197 coloured2197 = result2197)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2198 live2198 coloured2198 = result2198) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2199 live2199 coloured2199 = result2199 := by
  rw [tree2199_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2197 coloured2197 at child
  try dsimp only [live2199, coloured2199]
  rw [child]
  dsimp only [result2197]
  have child := child1
  unfold live2198 coloured2198 at child
  try dsimp only [live2199, coloured2199]
  rw [child]
  dsimp only [result2198]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2200_agree_conditional : tree2200 = literal2200 := by
  rw [tree2200_def]
  rfl
theorem node2200_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2200 live2200 coloured2200 = result2200 := by
  rw [tree2200_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2201_agree_conditional : tree2201 = literal2201 := by
  rw [tree2201_def]
  rfl
theorem node2201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2201 live2201 coloured2201 = result2201 := by
  rw [tree2201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2202_agree_conditional
    (child0 : tree2200 = literal2200)
    (child1 : tree2201 = literal2201) : tree2202 = literal2202 := by
  rw [tree2202_def, child0, child1]
  rfl
theorem node2202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2200 live2200 coloured2200 = result2200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2201 live2201 coloured2201 = result2201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2202 live2202 coloured2202 = result2202 := by
  rw [tree2202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2200 coloured2200 at child
  try dsimp only [live2202, coloured2202]
  rw [child]
  dsimp only [result2200]
  have child := child1
  unfold live2201 coloured2201 at child
  try dsimp only [live2202, coloured2202]
  rw [child]
  dsimp only [result2201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2203_agree_conditional : tree2203 = literal2203 := by
  rw [tree2203_def]
  rfl
theorem node2203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2203 live2203 coloured2203 = result2203 := by
  rw [tree2203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2204_agree_conditional
    (child0 : tree2202 = literal2202)
    (child1 : tree2203 = literal2203) : tree2204 = literal2204 := by
  rw [tree2204_def, child0, child1]
  rfl
theorem node2204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2202 live2202 coloured2202 = result2202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2203 live2203 coloured2203 = result2203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2204 live2204 coloured2204 = result2204 := by
  rw [tree2204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2202 coloured2202 at child
  try dsimp only [live2204, coloured2204]
  rw [child]
  dsimp only [result2202]
  have child := child1
  unfold live2203 coloured2203 at child
  try dsimp only [live2204, coloured2204]
  rw [child]
  dsimp only [result2203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2205_agree_conditional
    (child0 : tree2199 = literal2199)
    (child1 : tree2204 = literal2204) : tree2205 = literal2205 := by
  rw [tree2205_def, child0, child1]
  rfl
theorem node2205_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2199 live2199 coloured2199 = result2199)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2204 live2204 coloured2204 = result2204) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2205 live2205 coloured2205 = result2205 := by
  rw [tree2205_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2199 coloured2199 at child
  try dsimp only [live2205, coloured2205]
  rw [child]
  dsimp only [result2199]
  have child := child1
  unfold live2204 coloured2204 at child
  try dsimp only [live2205, coloured2205]
  rw [child]
  dsimp only [result2204]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2206_agree_conditional
    (child0 : tree2196 = literal2196)
    (child1 : tree2205 = literal2205) : tree2206 = literal2206 := by
  rw [tree2206_def, child0, child1]
  rfl
theorem node2206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2196 live2196 coloured2196 = result2196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2205 live2205 coloured2205 = result2205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2206 live2206 coloured2206 = result2206 := by
  rw [tree2206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2196 coloured2196 at child
  try dsimp only [live2206, coloured2206]
  rw [child]
  dsimp only [result2196]
  have child := child1
  unfold live2205 coloured2205 at child
  try dsimp only [live2206, coloured2206]
  rw [child]
  dsimp only [result2205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2207_agree_conditional : tree2207 = literal2207 := by
  rw [tree2207_def]
  rfl
theorem node2207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2207 live2207 coloured2207 = result2207 := by
  rw [tree2207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages875
