import InitECandidate.Proofs.ClashStages713.Proof22
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2208_agree : tree2208 = literal2208 := by
  rw [tree2208_def, tree2206_agree, tree2207_agree]
  rfl
theorem node2208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2208 live2208 coloured2208 = result2208 := by
  rw [tree2208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2206_eq
  unfold live2206 coloured2206 at child
  try dsimp only [live2208, coloured2208]
  rw [child]
  dsimp only [result2206]
  have child := node2207_eq
  unfold live2207 coloured2207 at child
  try dsimp only [live2208, coloured2208]
  rw [child]
  dsimp only [result2207]
  try dsimp only [colour, result2208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2209_agree : tree2209 = literal2209 := by
  rw [tree2209_def]
  rfl
theorem node2209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2209 live2209 coloured2209 = result2209 := by
  rw [tree2209_def]
  try dsimp only [colour, result2209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2210_agree : tree2210 = literal2210 := by
  rw [tree2210_def, tree2208_agree, tree2209_agree]
  rfl
theorem node2210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2210 live2210 coloured2210 = result2210 := by
  rw [tree2210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2208_eq
  unfold live2208 coloured2208 at child
  try dsimp only [live2210, coloured2210]
  rw [child]
  dsimp only [result2208]
  have child := node2209_eq
  unfold live2209 coloured2209 at child
  try dsimp only [live2210, coloured2210]
  rw [child]
  dsimp only [result2209]
  try dsimp only [colour, result2210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2211_agree : tree2211 = literal2211 := by
  rw [tree2211_def]
  rfl
theorem node2211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2211 live2211 coloured2211 = result2211 := by
  rw [tree2211_def]
  try dsimp only [colour, result2211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2212_agree : tree2212 = literal2212 := by
  rw [tree2212_def, tree2210_agree, tree2211_agree]
  rfl
theorem node2212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2212 live2212 coloured2212 = result2212 := by
  rw [tree2212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2210_eq
  unfold live2210 coloured2210 at child
  try dsimp only [live2212, coloured2212]
  rw [child]
  dsimp only [result2210]
  have child := node2211_eq
  unfold live2211 coloured2211 at child
  try dsimp only [live2212, coloured2212]
  rw [child]
  dsimp only [result2211]
  try dsimp only [colour, result2212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2213_agree : tree2213 = literal2213 := by
  rw [tree2213_def]
  rfl
theorem node2213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2213 live2213 coloured2213 = result2213 := by
  rw [tree2213_def]
  try dsimp only [colour, result2213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2214_agree : tree2214 = literal2214 := by
  rw [tree2214_def, tree2212_agree, tree2213_agree]
  rfl
theorem node2214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2214 live2214 coloured2214 = result2214 := by
  rw [tree2214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2212_eq
  unfold live2212 coloured2212 at child
  try dsimp only [live2214, coloured2214]
  rw [child]
  dsimp only [result2212]
  have child := node2213_eq
  unfold live2213 coloured2213 at child
  try dsimp only [live2214, coloured2214]
  rw [child]
  dsimp only [result2213]
  try dsimp only [colour, result2214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2215_agree : tree2215 = literal2215 := by
  rw [tree2215_def]
  rfl
theorem node2215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2215 live2215 coloured2215 = result2215 := by
  rw [tree2215_def]
  try dsimp only [colour, result2215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2216_agree : tree2216 = literal2216 := by
  rw [tree2216_def, tree2214_agree, tree2215_agree]
  rfl
theorem node2216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2216 live2216 coloured2216 = result2216 := by
  rw [tree2216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2214_eq
  unfold live2214 coloured2214 at child
  try dsimp only [live2216, coloured2216]
  rw [child]
  dsimp only [result2214]
  have child := node2215_eq
  unfold live2215 coloured2215 at child
  try dsimp only [live2216, coloured2216]
  rw [child]
  dsimp only [result2215]
  try dsimp only [colour, result2216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2217_agree : tree2217 = literal2217 := by
  rw [tree2217_def]
  rfl
theorem node2217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2217 live2217 coloured2217 = result2217 := by
  rw [tree2217_def]
  try dsimp only [colour, result2217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2218_agree : tree2218 = literal2218 := by
  rw [tree2218_def, tree2216_agree, tree2217_agree]
  rfl
theorem node2218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2218 live2218 coloured2218 = result2218 := by
  rw [tree2218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2216_eq
  unfold live2216 coloured2216 at child
  try dsimp only [live2218, coloured2218]
  rw [child]
  dsimp only [result2216]
  have child := node2217_eq
  unfold live2217 coloured2217 at child
  try dsimp only [live2218, coloured2218]
  rw [child]
  dsimp only [result2217]
  try dsimp only [colour, result2218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2219_agree : tree2219 = literal2219 := by
  rw [tree2219_def]
  rfl
theorem node2219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2219 live2219 coloured2219 = result2219 := by
  rw [tree2219_def]
  try dsimp only [colour, result2219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2220_agree : tree2220 = literal2220 := by
  rw [tree2220_def, tree2218_agree, tree2219_agree]
  rfl
theorem node2220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2220 live2220 coloured2220 = result2220 := by
  rw [tree2220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2218_eq
  unfold live2218 coloured2218 at child
  try dsimp only [live2220, coloured2220]
  rw [child]
  dsimp only [result2218]
  have child := node2219_eq
  unfold live2219 coloured2219 at child
  try dsimp only [live2220, coloured2220]
  rw [child]
  dsimp only [result2219]
  try dsimp only [colour, result2220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2221_agree : tree2221 = literal2221 := by
  rw [tree2221_def]
  rfl
theorem node2221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2221 live2221 coloured2221 = result2221 := by
  rw [tree2221_def]
  try dsimp only [colour, result2221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2222_agree : tree2222 = literal2222 := by
  rw [tree2222_def, tree2220_agree, tree2221_agree]
  rfl
theorem node2222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2222 live2222 coloured2222 = result2222 := by
  rw [tree2222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2220_eq
  unfold live2220 coloured2220 at child
  try dsimp only [live2222, coloured2222]
  rw [child]
  dsimp only [result2220]
  have child := node2221_eq
  unfold live2221 coloured2221 at child
  try dsimp only [live2222, coloured2222]
  rw [child]
  dsimp only [result2221]
  try dsimp only [colour, result2222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2223_agree : tree2223 = literal2223 := by
  rw [tree2223_def]
  rfl
theorem node2223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2223 live2223 coloured2223 = result2223 := by
  rw [tree2223_def]
  try dsimp only [colour, result2223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2224_agree : tree2224 = literal2224 := by
  rw [tree2224_def, tree2222_agree, tree2223_agree]
  rfl
theorem node2224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2224 live2224 coloured2224 = result2224 := by
  rw [tree2224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2222_eq
  unfold live2222 coloured2222 at child
  try dsimp only [live2224, coloured2224]
  rw [child]
  dsimp only [result2222]
  have child := node2223_eq
  unfold live2223 coloured2223 at child
  try dsimp only [live2224, coloured2224]
  rw [child]
  dsimp only [result2223]
  try dsimp only [colour, result2224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2225_agree : tree2225 = literal2225 := by
  rw [tree2225_def]
  rfl
theorem node2225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2225 live2225 coloured2225 = result2225 := by
  rw [tree2225_def]
  try dsimp only [colour, result2225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2226_agree : tree2226 = literal2226 := by
  rw [tree2226_def, tree2224_agree, tree2225_agree]
  rfl
theorem node2226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2226 live2226 coloured2226 = result2226 := by
  rw [tree2226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2224_eq
  unfold live2224 coloured2224 at child
  try dsimp only [live2226, coloured2226]
  rw [child]
  dsimp only [result2224]
  have child := node2225_eq
  unfold live2225 coloured2225 at child
  try dsimp only [live2226, coloured2226]
  rw [child]
  dsimp only [result2225]
  try dsimp only [colour, result2226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2227_agree : tree2227 = literal2227 := by
  rw [tree2227_def]
  rfl
theorem node2227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2227 live2227 coloured2227 = result2227 := by
  rw [tree2227_def]
  try dsimp only [colour, result2227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2228_agree : tree2228 = literal2228 := by
  rw [tree2228_def, tree2226_agree, tree2227_agree]
  rfl
theorem node2228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2228 live2228 coloured2228 = result2228 := by
  rw [tree2228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2226_eq
  unfold live2226 coloured2226 at child
  try dsimp only [live2228, coloured2228]
  rw [child]
  dsimp only [result2226]
  have child := node2227_eq
  unfold live2227 coloured2227 at child
  try dsimp only [live2228, coloured2228]
  rw [child]
  dsimp only [result2227]
  try dsimp only [colour, result2228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2229_agree : tree2229 = literal2229 := by
  rw [tree2229_def]
  rfl
theorem node2229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2229 live2229 coloured2229 = result2229 := by
  rw [tree2229_def]
  try dsimp only [colour, result2229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2230_agree : tree2230 = literal2230 := by
  rw [tree2230_def, tree2228_agree, tree2229_agree]
  rfl
theorem node2230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2230 live2230 coloured2230 = result2230 := by
  rw [tree2230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2228_eq
  unfold live2228 coloured2228 at child
  try dsimp only [live2230, coloured2230]
  rw [child]
  dsimp only [result2228]
  have child := node2229_eq
  unfold live2229 coloured2229 at child
  try dsimp only [live2230, coloured2230]
  rw [child]
  dsimp only [result2229]
  try dsimp only [colour, result2230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2231_agree : tree2231 = literal2231 := by
  rw [tree2231_def]
  rfl
theorem node2231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2231 live2231 coloured2231 = result2231 := by
  rw [tree2231_def]
  try dsimp only [colour, result2231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2232_agree : tree2232 = literal2232 := by
  rw [tree2232_def, tree2230_agree, tree2231_agree]
  rfl
theorem node2232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2232 live2232 coloured2232 = result2232 := by
  rw [tree2232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2230_eq
  unfold live2230 coloured2230 at child
  try dsimp only [live2232, coloured2232]
  rw [child]
  dsimp only [result2230]
  have child := node2231_eq
  unfold live2231 coloured2231 at child
  try dsimp only [live2232, coloured2232]
  rw [child]
  dsimp only [result2231]
  try dsimp only [colour, result2232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2233_agree : tree2233 = literal2233 := by
  rw [tree2233_def]
  rfl
theorem node2233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2233 live2233 coloured2233 = result2233 := by
  rw [tree2233_def]
  try dsimp only [colour, result2233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2234_agree : tree2234 = literal2234 := by
  rw [tree2234_def, tree2232_agree, tree2233_agree]
  rfl
theorem node2234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2234 live2234 coloured2234 = result2234 := by
  rw [tree2234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2232_eq
  unfold live2232 coloured2232 at child
  try dsimp only [live2234, coloured2234]
  rw [child]
  dsimp only [result2232]
  have child := node2233_eq
  unfold live2233 coloured2233 at child
  try dsimp only [live2234, coloured2234]
  rw [child]
  dsimp only [result2233]
  try dsimp only [colour, result2234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2235_agree : tree2235 = literal2235 := by
  rw [tree2235_def]
  rfl
theorem node2235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2235 live2235 coloured2235 = result2235 := by
  rw [tree2235_def]
  try dsimp only [colour, result2235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2236_agree : tree2236 = literal2236 := by
  rw [tree2236_def, tree2234_agree, tree2235_agree]
  rfl
theorem node2236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2236 live2236 coloured2236 = result2236 := by
  rw [tree2236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2234_eq
  unfold live2234 coloured2234 at child
  try dsimp only [live2236, coloured2236]
  rw [child]
  dsimp only [result2234]
  have child := node2235_eq
  unfold live2235 coloured2235 at child
  try dsimp only [live2236, coloured2236]
  rw [child]
  dsimp only [result2235]
  try dsimp only [colour, result2236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2237_agree : tree2237 = literal2237 := by
  rw [tree2237_def]
  rfl
theorem node2237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2237 live2237 coloured2237 = result2237 := by
  rw [tree2237_def]
  try dsimp only [colour, result2237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2238_agree : tree2238 = literal2238 := by
  rw [tree2238_def, tree2236_agree, tree2237_agree]
  rfl
theorem node2238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2238 live2238 coloured2238 = result2238 := by
  rw [tree2238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2236_eq
  unfold live2236 coloured2236 at child
  try dsimp only [live2238, coloured2238]
  rw [child]
  dsimp only [result2236]
  have child := node2237_eq
  unfold live2237 coloured2237 at child
  try dsimp only [live2238, coloured2238]
  rw [child]
  dsimp only [result2237]
  try dsimp only [colour, result2238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2239_agree : tree2239 = literal2239 := by
  rw [tree2239_def]
  rfl
theorem node2239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2239 live2239 coloured2239 = result2239 := by
  rw [tree2239_def]
  try dsimp only [colour, result2239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2240_agree : tree2240 = literal2240 := by
  rw [tree2240_def, tree2238_agree, tree2239_agree]
  rfl
theorem node2240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2240 live2240 coloured2240 = result2240 := by
  rw [tree2240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2238_eq
  unfold live2238 coloured2238 at child
  try dsimp only [live2240, coloured2240]
  rw [child]
  dsimp only [result2238]
  have child := node2239_eq
  unfold live2239 coloured2239 at child
  try dsimp only [live2240, coloured2240]
  rw [child]
  dsimp only [result2239]
  try dsimp only [colour, result2240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2241_agree : tree2241 = literal2241 := by
  rw [tree2241_def]
  rfl
theorem node2241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2241 live2241 coloured2241 = result2241 := by
  rw [tree2241_def]
  try dsimp only [colour, result2241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2242_agree : tree2242 = literal2242 := by
  rw [tree2242_def, tree2240_agree, tree2241_agree]
  rfl
theorem node2242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2242 live2242 coloured2242 = result2242 := by
  rw [tree2242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2240_eq
  unfold live2240 coloured2240 at child
  try dsimp only [live2242, coloured2242]
  rw [child]
  dsimp only [result2240]
  have child := node2241_eq
  unfold live2241 coloured2241 at child
  try dsimp only [live2242, coloured2242]
  rw [child]
  dsimp only [result2241]
  try dsimp only [colour, result2242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2243_agree : tree2243 = literal2243 := by
  rw [tree2243_def]
  rfl
theorem node2243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2243 live2243 coloured2243 = result2243 := by
  rw [tree2243_def]
  try dsimp only [colour, result2243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2244_agree : tree2244 = literal2244 := by
  rw [tree2244_def, tree2242_agree, tree2243_agree]
  rfl
theorem node2244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2244 live2244 coloured2244 = result2244 := by
  rw [tree2244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2242_eq
  unfold live2242 coloured2242 at child
  try dsimp only [live2244, coloured2244]
  rw [child]
  dsimp only [result2242]
  have child := node2243_eq
  unfold live2243 coloured2243 at child
  try dsimp only [live2244, coloured2244]
  rw [child]
  dsimp only [result2243]
  try dsimp only [colour, result2244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2245_agree : tree2245 = literal2245 := by
  rw [tree2245_def]
  rfl
theorem node2245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2245 live2245 coloured2245 = result2245 := by
  rw [tree2245_def]
  try dsimp only [colour, result2245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2246_agree : tree2246 = literal2246 := by
  rw [tree2246_def, tree2244_agree, tree2245_agree]
  rfl
theorem node2246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2246 live2246 coloured2246 = result2246 := by
  rw [tree2246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2244_eq
  unfold live2244 coloured2244 at child
  try dsimp only [live2246, coloured2246]
  rw [child]
  dsimp only [result2244]
  have child := node2245_eq
  unfold live2245 coloured2245 at child
  try dsimp only [live2246, coloured2246]
  rw [child]
  dsimp only [result2245]
  try dsimp only [colour, result2246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2247_agree : tree2247 = literal2247 := by
  rw [tree2247_def]
  rfl
theorem node2247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2247 live2247 coloured2247 = result2247 := by
  rw [tree2247_def]
  try dsimp only [colour, result2247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2248_agree : tree2248 = literal2248 := by
  rw [tree2248_def, tree2246_agree, tree2247_agree]
  rfl
theorem node2248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2248 live2248 coloured2248 = result2248 := by
  rw [tree2248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2246_eq
  unfold live2246 coloured2246 at child
  try dsimp only [live2248, coloured2248]
  rw [child]
  dsimp only [result2246]
  have child := node2247_eq
  unfold live2247 coloured2247 at child
  try dsimp only [live2248, coloured2248]
  rw [child]
  dsimp only [result2247]
  try dsimp only [colour, result2248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2249_agree : tree2249 = literal2249 := by
  rw [tree2249_def]
  rfl
theorem node2249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2249 live2249 coloured2249 = result2249 := by
  rw [tree2249_def]
  try dsimp only [colour, result2249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2250_agree : tree2250 = literal2250 := by
  rw [tree2250_def, tree2248_agree, tree2249_agree]
  rfl
theorem node2250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2250 live2250 coloured2250 = result2250 := by
  rw [tree2250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2248_eq
  unfold live2248 coloured2248 at child
  try dsimp only [live2250, coloured2250]
  rw [child]
  dsimp only [result2248]
  have child := node2249_eq
  unfold live2249 coloured2249 at child
  try dsimp only [live2250, coloured2250]
  rw [child]
  dsimp only [result2249]
  try dsimp only [colour, result2250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2251_agree : tree2251 = literal2251 := by
  rw [tree2251_def]
  rfl
theorem node2251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2251 live2251 coloured2251 = result2251 := by
  rw [tree2251_def]
  try dsimp only [colour, result2251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2252_agree : tree2252 = literal2252 := by
  rw [tree2252_def, tree2250_agree, tree2251_agree]
  rfl
theorem node2252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2252 live2252 coloured2252 = result2252 := by
  rw [tree2252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2250_eq
  unfold live2250 coloured2250 at child
  try dsimp only [live2252, coloured2252]
  rw [child]
  dsimp only [result2250]
  have child := node2251_eq
  unfold live2251 coloured2251 at child
  try dsimp only [live2252, coloured2252]
  rw [child]
  dsimp only [result2251]
  try dsimp only [colour, result2252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2253_agree : tree2253 = literal2253 := by
  rw [tree2253_def]
  rfl
theorem node2253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2253 live2253 coloured2253 = result2253 := by
  rw [tree2253_def]
  try dsimp only [colour, result2253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2254_agree : tree2254 = literal2254 := by
  rw [tree2254_def, tree2252_agree, tree2253_agree]
  rfl
theorem node2254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2254 live2254 coloured2254 = result2254 := by
  rw [tree2254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2252_eq
  unfold live2252 coloured2252 at child
  try dsimp only [live2254, coloured2254]
  rw [child]
  dsimp only [result2252]
  have child := node2253_eq
  unfold live2253 coloured2253 at child
  try dsimp only [live2254, coloured2254]
  rw [child]
  dsimp only [result2253]
  try dsimp only [colour, result2254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2255_agree : tree2255 = literal2255 := by
  rw [tree2255_def]
  rfl
theorem node2255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2255 live2255 coloured2255 = result2255 := by
  rw [tree2255_def]
  try dsimp only [colour, result2255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2256_agree : tree2256 = literal2256 := by
  rw [tree2256_def, tree2254_agree, tree2255_agree]
  rfl
theorem node2256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2256 live2256 coloured2256 = result2256 := by
  rw [tree2256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2254_eq
  unfold live2254 coloured2254 at child
  try dsimp only [live2256, coloured2256]
  rw [child]
  dsimp only [result2254]
  have child := node2255_eq
  unfold live2255 coloured2255 at child
  try dsimp only [live2256, coloured2256]
  rw [child]
  dsimp only [result2255]
  try dsimp only [colour, result2256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2257_agree : tree2257 = literal2257 := by
  rw [tree2257_def]
  rfl
theorem node2257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2257 live2257 coloured2257 = result2257 := by
  rw [tree2257_def]
  try dsimp only [colour, result2257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2258_agree : tree2258 = literal2258 := by
  rw [tree2258_def, tree2256_agree, tree2257_agree]
  rfl
theorem node2258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2258 live2258 coloured2258 = result2258 := by
  rw [tree2258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2256_eq
  unfold live2256 coloured2256 at child
  try dsimp only [live2258, coloured2258]
  rw [child]
  dsimp only [result2256]
  have child := node2257_eq
  unfold live2257 coloured2257 at child
  try dsimp only [live2258, coloured2258]
  rw [child]
  dsimp only [result2257]
  try dsimp only [colour, result2258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2259_agree : tree2259 = literal2259 := by
  rw [tree2259_def]
  rfl
theorem node2259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2259 live2259 coloured2259 = result2259 := by
  rw [tree2259_def]
  try dsimp only [colour, result2259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2260_agree : tree2260 = literal2260 := by
  rw [tree2260_def, tree2258_agree, tree2259_agree]
  rfl
theorem node2260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2260 live2260 coloured2260 = result2260 := by
  rw [tree2260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2258_eq
  unfold live2258 coloured2258 at child
  try dsimp only [live2260, coloured2260]
  rw [child]
  dsimp only [result2258]
  have child := node2259_eq
  unfold live2259 coloured2259 at child
  try dsimp only [live2260, coloured2260]
  rw [child]
  dsimp only [result2259]
  try dsimp only [colour, result2260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2261_agree : tree2261 = literal2261 := by
  rw [tree2261_def]
  rfl
theorem node2261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2261 live2261 coloured2261 = result2261 := by
  rw [tree2261_def]
  try dsimp only [colour, result2261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2262_agree : tree2262 = literal2262 := by
  rw [tree2262_def, tree2260_agree, tree2261_agree]
  rfl
theorem node2262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2262 live2262 coloured2262 = result2262 := by
  rw [tree2262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2260_eq
  unfold live2260 coloured2260 at child
  try dsimp only [live2262, coloured2262]
  rw [child]
  dsimp only [result2260]
  have child := node2261_eq
  unfold live2261 coloured2261 at child
  try dsimp only [live2262, coloured2262]
  rw [child]
  dsimp only [result2261]
  try dsimp only [colour, result2262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2263_agree : tree2263 = literal2263 := by
  rw [tree2263_def]
  rfl
theorem node2263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2263 live2263 coloured2263 = result2263 := by
  rw [tree2263_def]
  try dsimp only [colour, result2263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2264_agree : tree2264 = literal2264 := by
  rw [tree2264_def, tree2262_agree, tree2263_agree]
  rfl
theorem node2264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2264 live2264 coloured2264 = result2264 := by
  rw [tree2264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2262_eq
  unfold live2262 coloured2262 at child
  try dsimp only [live2264, coloured2264]
  rw [child]
  dsimp only [result2262]
  have child := node2263_eq
  unfold live2263 coloured2263 at child
  try dsimp only [live2264, coloured2264]
  rw [child]
  dsimp only [result2263]
  try dsimp only [colour, result2264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2265_agree : tree2265 = literal2265 := by
  rw [tree2265_def]
  rfl
theorem node2265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2265 live2265 coloured2265 = result2265 := by
  rw [tree2265_def]
  try dsimp only [colour, result2265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2266_agree : tree2266 = literal2266 := by
  rw [tree2266_def, tree2264_agree, tree2265_agree]
  rfl
theorem node2266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2266 live2266 coloured2266 = result2266 := by
  rw [tree2266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2264_eq
  unfold live2264 coloured2264 at child
  try dsimp only [live2266, coloured2266]
  rw [child]
  dsimp only [result2264]
  have child := node2265_eq
  unfold live2265 coloured2265 at child
  try dsimp only [live2266, coloured2266]
  rw [child]
  dsimp only [result2265]
  try dsimp only [colour, result2266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2267_agree : tree2267 = literal2267 := by
  rw [tree2267_def]
  rfl
theorem node2267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2267 live2267 coloured2267 = result2267 := by
  rw [tree2267_def]
  try dsimp only [colour, result2267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2268_agree : tree2268 = literal2268 := by
  rw [tree2268_def, tree2266_agree, tree2267_agree]
  rfl
theorem node2268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2268 live2268 coloured2268 = result2268 := by
  rw [tree2268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2266_eq
  unfold live2266 coloured2266 at child
  try dsimp only [live2268, coloured2268]
  rw [child]
  dsimp only [result2266]
  have child := node2267_eq
  unfold live2267 coloured2267 at child
  try dsimp only [live2268, coloured2268]
  rw [child]
  dsimp only [result2267]
  try dsimp only [colour, result2268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2269_agree : tree2269 = literal2269 := by
  rw [tree2269_def]
  rfl
theorem node2269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2269 live2269 coloured2269 = result2269 := by
  rw [tree2269_def]
  try dsimp only [colour, result2269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2270_agree : tree2270 = literal2270 := by
  rw [tree2270_def, tree2268_agree, tree2269_agree]
  rfl
theorem node2270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2270 live2270 coloured2270 = result2270 := by
  rw [tree2270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2268_eq
  unfold live2268 coloured2268 at child
  try dsimp only [live2270, coloured2270]
  rw [child]
  dsimp only [result2268]
  have child := node2269_eq
  unfold live2269 coloured2269 at child
  try dsimp only [live2270, coloured2270]
  rw [child]
  dsimp only [result2269]
  try dsimp only [colour, result2270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2271_agree : tree2271 = literal2271 := by
  rw [tree2271_def]
  rfl
theorem node2271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2271 live2271 coloured2271 = result2271 := by
  rw [tree2271_def]
  try dsimp only [colour, result2271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2272_agree : tree2272 = literal2272 := by
  rw [tree2272_def, tree2270_agree, tree2271_agree]
  rfl
theorem node2272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2272 live2272 coloured2272 = result2272 := by
  rw [tree2272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2270_eq
  unfold live2270 coloured2270 at child
  try dsimp only [live2272, coloured2272]
  rw [child]
  dsimp only [result2270]
  have child := node2271_eq
  unfold live2271 coloured2271 at child
  try dsimp only [live2272, coloured2272]
  rw [child]
  dsimp only [result2271]
  try dsimp only [colour, result2272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2273_agree : tree2273 = literal2273 := by
  rw [tree2273_def]
  rfl
theorem node2273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2273 live2273 coloured2273 = result2273 := by
  rw [tree2273_def]
  try dsimp only [colour, result2273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2274_agree : tree2274 = literal2274 := by
  rw [tree2274_def, tree2272_agree, tree2273_agree]
  rfl
theorem node2274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2274 live2274 coloured2274 = result2274 := by
  rw [tree2274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2272_eq
  unfold live2272 coloured2272 at child
  try dsimp only [live2274, coloured2274]
  rw [child]
  dsimp only [result2272]
  have child := node2273_eq
  unfold live2273 coloured2273 at child
  try dsimp only [live2274, coloured2274]
  rw [child]
  dsimp only [result2273]
  try dsimp only [colour, result2274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2275_agree : tree2275 = literal2275 := by
  rw [tree2275_def]
  rfl
theorem node2275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2275 live2275 coloured2275 = result2275 := by
  rw [tree2275_def]
  try dsimp only [colour, result2275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2276_agree : tree2276 = literal2276 := by
  rw [tree2276_def, tree2274_agree, tree2275_agree]
  rfl
theorem node2276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2276 live2276 coloured2276 = result2276 := by
  rw [tree2276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2274_eq
  unfold live2274 coloured2274 at child
  try dsimp only [live2276, coloured2276]
  rw [child]
  dsimp only [result2274]
  have child := node2275_eq
  unfold live2275 coloured2275 at child
  try dsimp only [live2276, coloured2276]
  rw [child]
  dsimp only [result2275]
  try dsimp only [colour, result2276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2277_agree : tree2277 = literal2277 := by
  rw [tree2277_def]
  rfl
theorem node2277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2277 live2277 coloured2277 = result2277 := by
  rw [tree2277_def]
  try dsimp only [colour, result2277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2278_agree : tree2278 = literal2278 := by
  rw [tree2278_def, tree2276_agree, tree2277_agree]
  rfl
theorem node2278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2278 live2278 coloured2278 = result2278 := by
  rw [tree2278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2276_eq
  unfold live2276 coloured2276 at child
  try dsimp only [live2278, coloured2278]
  rw [child]
  dsimp only [result2276]
  have child := node2277_eq
  unfold live2277 coloured2277 at child
  try dsimp only [live2278, coloured2278]
  rw [child]
  dsimp only [result2277]
  try dsimp only [colour, result2278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2279_agree : tree2279 = literal2279 := by
  rw [tree2279_def]
  rfl
theorem node2279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2279 live2279 coloured2279 = result2279 := by
  rw [tree2279_def]
  try dsimp only [colour, result2279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2280_agree : tree2280 = literal2280 := by
  rw [tree2280_def, tree2278_agree, tree2279_agree]
  rfl
theorem node2280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2280 live2280 coloured2280 = result2280 := by
  rw [tree2280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2278_eq
  unfold live2278 coloured2278 at child
  try dsimp only [live2280, coloured2280]
  rw [child]
  dsimp only [result2278]
  have child := node2279_eq
  unfold live2279 coloured2279 at child
  try dsimp only [live2280, coloured2280]
  rw [child]
  dsimp only [result2279]
  try dsimp only [colour, result2280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2281_agree : tree2281 = literal2281 := by
  rw [tree2281_def]
  rfl
theorem node2281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2281 live2281 coloured2281 = result2281 := by
  rw [tree2281_def]
  try dsimp only [colour, result2281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2282_agree : tree2282 = literal2282 := by
  rw [tree2282_def, tree2280_agree, tree2281_agree]
  rfl
theorem node2282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2282 live2282 coloured2282 = result2282 := by
  rw [tree2282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2280_eq
  unfold live2280 coloured2280 at child
  try dsimp only [live2282, coloured2282]
  rw [child]
  dsimp only [result2280]
  have child := node2281_eq
  unfold live2281 coloured2281 at child
  try dsimp only [live2282, coloured2282]
  rw [child]
  dsimp only [result2281]
  try dsimp only [colour, result2282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2283_agree : tree2283 = literal2283 := by
  rw [tree2283_def]
  rfl
theorem node2283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2283 live2283 coloured2283 = result2283 := by
  rw [tree2283_def]
  try dsimp only [colour, result2283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2284_agree : tree2284 = literal2284 := by
  rw [tree2284_def, tree2282_agree, tree2283_agree]
  rfl
theorem node2284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2284 live2284 coloured2284 = result2284 := by
  rw [tree2284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2282_eq
  unfold live2282 coloured2282 at child
  try dsimp only [live2284, coloured2284]
  rw [child]
  dsimp only [result2282]
  have child := node2283_eq
  unfold live2283 coloured2283 at child
  try dsimp only [live2284, coloured2284]
  rw [child]
  dsimp only [result2283]
  try dsimp only [colour, result2284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2285_agree : tree2285 = literal2285 := by
  rw [tree2285_def]
  rfl
theorem node2285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2285 live2285 coloured2285 = result2285 := by
  rw [tree2285_def]
  try dsimp only [colour, result2285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2286_agree : tree2286 = literal2286 := by
  rw [tree2286_def, tree2284_agree, tree2285_agree]
  rfl
theorem node2286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2286 live2286 coloured2286 = result2286 := by
  rw [tree2286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2284_eq
  unfold live2284 coloured2284 at child
  try dsimp only [live2286, coloured2286]
  rw [child]
  dsimp only [result2284]
  have child := node2285_eq
  unfold live2285 coloured2285 at child
  try dsimp only [live2286, coloured2286]
  rw [child]
  dsimp only [result2285]
  try dsimp only [colour, result2286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2287_agree : tree2287 = literal2287 := by
  rw [tree2287_def]
  rfl
theorem node2287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2287 live2287 coloured2287 = result2287 := by
  rw [tree2287_def]
  try dsimp only [colour, result2287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2288_agree : tree2288 = literal2288 := by
  rw [tree2288_def, tree2286_agree, tree2287_agree]
  rfl
theorem node2288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2288 live2288 coloured2288 = result2288 := by
  rw [tree2288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2286_eq
  unfold live2286 coloured2286 at child
  try dsimp only [live2288, coloured2288]
  rw [child]
  dsimp only [result2286]
  have child := node2287_eq
  unfold live2287 coloured2287 at child
  try dsimp only [live2288, coloured2288]
  rw [child]
  dsimp only [result2287]
  try dsimp only [colour, result2288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2289_agree : tree2289 = literal2289 := by
  rw [tree2289_def]
  rfl
theorem node2289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2289 live2289 coloured2289 = result2289 := by
  rw [tree2289_def]
  try dsimp only [colour, result2289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2290_agree : tree2290 = literal2290 := by
  rw [tree2290_def, tree2288_agree, tree2289_agree]
  rfl
theorem node2290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2290 live2290 coloured2290 = result2290 := by
  rw [tree2290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2288_eq
  unfold live2288 coloured2288 at child
  try dsimp only [live2290, coloured2290]
  rw [child]
  dsimp only [result2288]
  have child := node2289_eq
  unfold live2289 coloured2289 at child
  try dsimp only [live2290, coloured2290]
  rw [child]
  dsimp only [result2289]
  try dsimp only [colour, result2290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2291_agree : tree2291 = literal2291 := by
  rw [tree2291_def]
  rfl
theorem node2291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2291 live2291 coloured2291 = result2291 := by
  rw [tree2291_def]
  try dsimp only [colour, result2291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2292_agree : tree2292 = literal2292 := by
  rw [tree2292_def, tree2290_agree, tree2291_agree]
  rfl
theorem node2292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2292 live2292 coloured2292 = result2292 := by
  rw [tree2292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2290_eq
  unfold live2290 coloured2290 at child
  try dsimp only [live2292, coloured2292]
  rw [child]
  dsimp only [result2290]
  have child := node2291_eq
  unfold live2291 coloured2291 at child
  try dsimp only [live2292, coloured2292]
  rw [child]
  dsimp only [result2291]
  try dsimp only [colour, result2292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2293_agree : tree2293 = literal2293 := by
  rw [tree2293_def]
  rfl
theorem node2293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2293 live2293 coloured2293 = result2293 := by
  rw [tree2293_def]
  try dsimp only [colour, result2293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2294_agree : tree2294 = literal2294 := by
  rw [tree2294_def, tree2292_agree, tree2293_agree]
  rfl
theorem node2294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2294 live2294 coloured2294 = result2294 := by
  rw [tree2294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2292_eq
  unfold live2292 coloured2292 at child
  try dsimp only [live2294, coloured2294]
  rw [child]
  dsimp only [result2292]
  have child := node2293_eq
  unfold live2293 coloured2293 at child
  try dsimp only [live2294, coloured2294]
  rw [child]
  dsimp only [result2293]
  try dsimp only [colour, result2294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2295_agree : tree2295 = literal2295 := by
  rw [tree2295_def]
  rfl
theorem node2295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2295 live2295 coloured2295 = result2295 := by
  rw [tree2295_def]
  try dsimp only [colour, result2295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2296_agree : tree2296 = literal2296 := by
  rw [tree2296_def, tree2294_agree, tree2295_agree]
  rfl
theorem node2296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2296 live2296 coloured2296 = result2296 := by
  rw [tree2296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2294_eq
  unfold live2294 coloured2294 at child
  try dsimp only [live2296, coloured2296]
  rw [child]
  dsimp only [result2294]
  have child := node2295_eq
  unfold live2295 coloured2295 at child
  try dsimp only [live2296, coloured2296]
  rw [child]
  dsimp only [result2295]
  try dsimp only [colour, result2296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2297_agree : tree2297 = literal2297 := by
  rw [tree2297_def]
  rfl
theorem node2297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2297 live2297 coloured2297 = result2297 := by
  rw [tree2297_def]
  try dsimp only [colour, result2297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2298_agree : tree2298 = literal2298 := by
  rw [tree2298_def, tree2296_agree, tree2297_agree]
  rfl
theorem node2298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2298 live2298 coloured2298 = result2298 := by
  rw [tree2298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2296_eq
  unfold live2296 coloured2296 at child
  try dsimp only [live2298, coloured2298]
  rw [child]
  dsimp only [result2296]
  have child := node2297_eq
  unfold live2297 coloured2297 at child
  try dsimp only [live2298, coloured2298]
  rw [child]
  dsimp only [result2297]
  try dsimp only [colour, result2298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2299_agree : tree2299 = literal2299 := by
  rw [tree2299_def]
  rfl
theorem node2299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2299 live2299 coloured2299 = result2299 := by
  rw [tree2299_def]
  try dsimp only [colour, result2299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2300_agree : tree2300 = literal2300 := by
  rw [tree2300_def, tree2298_agree, tree2299_agree]
  rfl
theorem node2300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2300 live2300 coloured2300 = result2300 := by
  rw [tree2300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2298_eq
  unfold live2298 coloured2298 at child
  try dsimp only [live2300, coloured2300]
  rw [child]
  dsimp only [result2298]
  have child := node2299_eq
  unfold live2299 coloured2299 at child
  try dsimp only [live2300, coloured2300]
  rw [child]
  dsimp only [result2299]
  try dsimp only [colour, result2300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2301_agree : tree2301 = literal2301 := by
  rw [tree2301_def]
  rfl
theorem node2301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2301 live2301 coloured2301 = result2301 := by
  rw [tree2301_def]
  try dsimp only [colour, result2301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2302_agree : tree2302 = literal2302 := by
  rw [tree2302_def, tree2300_agree, tree2301_agree]
  rfl
theorem node2302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2302 live2302 coloured2302 = result2302 := by
  rw [tree2302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2300_eq
  unfold live2300 coloured2300 at child
  try dsimp only [live2302, coloured2302]
  rw [child]
  dsimp only [result2300]
  have child := node2301_eq
  unfold live2301 coloured2301 at child
  try dsimp only [live2302, coloured2302]
  rw [child]
  dsimp only [result2301]
  try dsimp only [colour, result2302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2303_agree : tree2303 = literal2303 := by
  rw [tree2303_def]
  rfl
theorem node2303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2303 live2303 coloured2303 = result2303 := by
  rw [tree2303_def]
  try dsimp only [colour, result2303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
