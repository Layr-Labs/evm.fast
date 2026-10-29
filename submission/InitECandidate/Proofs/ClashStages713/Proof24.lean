import InitECandidate.Proofs.ClashStages713.Proof23
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2304_agree : tree2304 = literal2304 := by
  rw [tree2304_def, tree2302_agree, tree2303_agree]
  rfl
theorem node2304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2304 live2304 coloured2304 = result2304 := by
  rw [tree2304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2302_eq
  unfold live2302 coloured2302 at child
  try dsimp only [live2304, coloured2304]
  rw [child]
  dsimp only [result2302]
  have child := node2303_eq
  unfold live2303 coloured2303 at child
  try dsimp only [live2304, coloured2304]
  rw [child]
  dsimp only [result2303]
  try dsimp only [colour, result2304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2305_agree : tree2305 = literal2305 := by
  rw [tree2305_def]
  rfl
theorem node2305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2305 live2305 coloured2305 = result2305 := by
  rw [tree2305_def]
  try dsimp only [colour, result2305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2306_agree : tree2306 = literal2306 := by
  rw [tree2306_def, tree2304_agree, tree2305_agree]
  rfl
theorem node2306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2306 live2306 coloured2306 = result2306 := by
  rw [tree2306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2304_eq
  unfold live2304 coloured2304 at child
  try dsimp only [live2306, coloured2306]
  rw [child]
  dsimp only [result2304]
  have child := node2305_eq
  unfold live2305 coloured2305 at child
  try dsimp only [live2306, coloured2306]
  rw [child]
  dsimp only [result2305]
  try dsimp only [colour, result2306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2307_agree : tree2307 = literal2307 := by
  rw [tree2307_def]
  rfl
theorem node2307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2307 live2307 coloured2307 = result2307 := by
  rw [tree2307_def]
  try dsimp only [colour, result2307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2308_agree : tree2308 = literal2308 := by
  rw [tree2308_def, tree2306_agree, tree2307_agree]
  rfl
theorem node2308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2308 live2308 coloured2308 = result2308 := by
  rw [tree2308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2306_eq
  unfold live2306 coloured2306 at child
  try dsimp only [live2308, coloured2308]
  rw [child]
  dsimp only [result2306]
  have child := node2307_eq
  unfold live2307 coloured2307 at child
  try dsimp only [live2308, coloured2308]
  rw [child]
  dsimp only [result2307]
  try dsimp only [colour, result2308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2309_agree : tree2309 = literal2309 := by
  rw [tree2309_def]
  rfl
theorem node2309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2309 live2309 coloured2309 = result2309 := by
  rw [tree2309_def]
  try dsimp only [colour, result2309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2310_agree : tree2310 = literal2310 := by
  rw [tree2310_def, tree2308_agree, tree2309_agree]
  rfl
theorem node2310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2310 live2310 coloured2310 = result2310 := by
  rw [tree2310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2308_eq
  unfold live2308 coloured2308 at child
  try dsimp only [live2310, coloured2310]
  rw [child]
  dsimp only [result2308]
  have child := node2309_eq
  unfold live2309 coloured2309 at child
  try dsimp only [live2310, coloured2310]
  rw [child]
  dsimp only [result2309]
  try dsimp only [colour, result2310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2311_agree : tree2311 = literal2311 := by
  rw [tree2311_def]
  rfl
theorem node2311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2311 live2311 coloured2311 = result2311 := by
  rw [tree2311_def]
  try dsimp only [colour, result2311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2312_agree : tree2312 = literal2312 := by
  rw [tree2312_def, tree2310_agree, tree2311_agree]
  rfl
theorem node2312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2312 live2312 coloured2312 = result2312 := by
  rw [tree2312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2310_eq
  unfold live2310 coloured2310 at child
  try dsimp only [live2312, coloured2312]
  rw [child]
  dsimp only [result2310]
  have child := node2311_eq
  unfold live2311 coloured2311 at child
  try dsimp only [live2312, coloured2312]
  rw [child]
  dsimp only [result2311]
  try dsimp only [colour, result2312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2313_agree : tree2313 = literal2313 := by
  rw [tree2313_def]
  rfl
theorem node2313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2313 live2313 coloured2313 = result2313 := by
  rw [tree2313_def]
  try dsimp only [colour, result2313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2314_agree : tree2314 = literal2314 := by
  rw [tree2314_def, tree2312_agree, tree2313_agree]
  rfl
theorem node2314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2314 live2314 coloured2314 = result2314 := by
  rw [tree2314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2312_eq
  unfold live2312 coloured2312 at child
  try dsimp only [live2314, coloured2314]
  rw [child]
  dsimp only [result2312]
  have child := node2313_eq
  unfold live2313 coloured2313 at child
  try dsimp only [live2314, coloured2314]
  rw [child]
  dsimp only [result2313]
  try dsimp only [colour, result2314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2315_agree : tree2315 = literal2315 := by
  rw [tree2315_def]
  rfl
theorem node2315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2315 live2315 coloured2315 = result2315 := by
  rw [tree2315_def]
  try dsimp only [colour, result2315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2316_agree : tree2316 = literal2316 := by
  rw [tree2316_def, tree2314_agree, tree2315_agree]
  rfl
theorem node2316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2316 live2316 coloured2316 = result2316 := by
  rw [tree2316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2314_eq
  unfold live2314 coloured2314 at child
  try dsimp only [live2316, coloured2316]
  rw [child]
  dsimp only [result2314]
  have child := node2315_eq
  unfold live2315 coloured2315 at child
  try dsimp only [live2316, coloured2316]
  rw [child]
  dsimp only [result2315]
  try dsimp only [colour, result2316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2317_agree : tree2317 = literal2317 := by
  rw [tree2317_def]
  rfl
theorem node2317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2317 live2317 coloured2317 = result2317 := by
  rw [tree2317_def]
  try dsimp only [colour, result2317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2318_agree : tree2318 = literal2318 := by
  rw [tree2318_def, tree2316_agree, tree2317_agree]
  rfl
theorem node2318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2318 live2318 coloured2318 = result2318 := by
  rw [tree2318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2316_eq
  unfold live2316 coloured2316 at child
  try dsimp only [live2318, coloured2318]
  rw [child]
  dsimp only [result2316]
  have child := node2317_eq
  unfold live2317 coloured2317 at child
  try dsimp only [live2318, coloured2318]
  rw [child]
  dsimp only [result2317]
  try dsimp only [colour, result2318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2319_agree : tree2319 = literal2319 := by
  rw [tree2319_def]
  rfl
theorem node2319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2319 live2319 coloured2319 = result2319 := by
  rw [tree2319_def]
  try dsimp only [colour, result2319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2320_agree : tree2320 = literal2320 := by
  rw [tree2320_def, tree2318_agree, tree2319_agree]
  rfl
theorem node2320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2320 live2320 coloured2320 = result2320 := by
  rw [tree2320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2318_eq
  unfold live2318 coloured2318 at child
  try dsimp only [live2320, coloured2320]
  rw [child]
  dsimp only [result2318]
  have child := node2319_eq
  unfold live2319 coloured2319 at child
  try dsimp only [live2320, coloured2320]
  rw [child]
  dsimp only [result2319]
  try dsimp only [colour, result2320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2321_agree : tree2321 = literal2321 := by
  rw [tree2321_def]
  rfl
theorem node2321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2321 live2321 coloured2321 = result2321 := by
  rw [tree2321_def]
  try dsimp only [colour, result2321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2322_agree : tree2322 = literal2322 := by
  rw [tree2322_def, tree2320_agree, tree2321_agree]
  rfl
theorem node2322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2322 live2322 coloured2322 = result2322 := by
  rw [tree2322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2320_eq
  unfold live2320 coloured2320 at child
  try dsimp only [live2322, coloured2322]
  rw [child]
  dsimp only [result2320]
  have child := node2321_eq
  unfold live2321 coloured2321 at child
  try dsimp only [live2322, coloured2322]
  rw [child]
  dsimp only [result2321]
  try dsimp only [colour, result2322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2323_agree : tree2323 = literal2323 := by
  rw [tree2323_def]
  rfl
theorem node2323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2323 live2323 coloured2323 = result2323 := by
  rw [tree2323_def]
  try dsimp only [colour, result2323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2324_agree : tree2324 = literal2324 := by
  rw [tree2324_def, tree2322_agree, tree2323_agree]
  rfl
theorem node2324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2324 live2324 coloured2324 = result2324 := by
  rw [tree2324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2322_eq
  unfold live2322 coloured2322 at child
  try dsimp only [live2324, coloured2324]
  rw [child]
  dsimp only [result2322]
  have child := node2323_eq
  unfold live2323 coloured2323 at child
  try dsimp only [live2324, coloured2324]
  rw [child]
  dsimp only [result2323]
  try dsimp only [colour, result2324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2325_agree : tree2325 = literal2325 := by
  rw [tree2325_def]
  rfl
theorem node2325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2325 live2325 coloured2325 = result2325 := by
  rw [tree2325_def]
  try dsimp only [colour, result2325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2326_agree : tree2326 = literal2326 := by
  rw [tree2326_def, tree2324_agree, tree2325_agree]
  rfl
theorem node2326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2326 live2326 coloured2326 = result2326 := by
  rw [tree2326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2324_eq
  unfold live2324 coloured2324 at child
  try dsimp only [live2326, coloured2326]
  rw [child]
  dsimp only [result2324]
  have child := node2325_eq
  unfold live2325 coloured2325 at child
  try dsimp only [live2326, coloured2326]
  rw [child]
  dsimp only [result2325]
  try dsimp only [colour, result2326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2327_agree : tree2327 = literal2327 := by
  rw [tree2327_def]
  rfl
theorem node2327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2327 live2327 coloured2327 = result2327 := by
  rw [tree2327_def]
  try dsimp only [colour, result2327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2328_agree : tree2328 = literal2328 := by
  rw [tree2328_def, tree2326_agree, tree2327_agree]
  rfl
theorem node2328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2328 live2328 coloured2328 = result2328 := by
  rw [tree2328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2326_eq
  unfold live2326 coloured2326 at child
  try dsimp only [live2328, coloured2328]
  rw [child]
  dsimp only [result2326]
  have child := node2327_eq
  unfold live2327 coloured2327 at child
  try dsimp only [live2328, coloured2328]
  rw [child]
  dsimp only [result2327]
  try dsimp only [colour, result2328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2329_agree : tree2329 = literal2329 := by
  rw [tree2329_def]
  rfl
theorem node2329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2329 live2329 coloured2329 = result2329 := by
  rw [tree2329_def]
  try dsimp only [colour, result2329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2330_agree : tree2330 = literal2330 := by
  rw [tree2330_def, tree2328_agree, tree2329_agree]
  rfl
theorem node2330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2330 live2330 coloured2330 = result2330 := by
  rw [tree2330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2328_eq
  unfold live2328 coloured2328 at child
  try dsimp only [live2330, coloured2330]
  rw [child]
  dsimp only [result2328]
  have child := node2329_eq
  unfold live2329 coloured2329 at child
  try dsimp only [live2330, coloured2330]
  rw [child]
  dsimp only [result2329]
  try dsimp only [colour, result2330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2331_agree : tree2331 = literal2331 := by
  rw [tree2331_def]
  rfl
theorem node2331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2331 live2331 coloured2331 = result2331 := by
  rw [tree2331_def]
  try dsimp only [colour, result2331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2332_agree : tree2332 = literal2332 := by
  rw [tree2332_def, tree2330_agree, tree2331_agree]
  rfl
theorem node2332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2332 live2332 coloured2332 = result2332 := by
  rw [tree2332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2330_eq
  unfold live2330 coloured2330 at child
  try dsimp only [live2332, coloured2332]
  rw [child]
  dsimp only [result2330]
  have child := node2331_eq
  unfold live2331 coloured2331 at child
  try dsimp only [live2332, coloured2332]
  rw [child]
  dsimp only [result2331]
  try dsimp only [colour, result2332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2333_agree : tree2333 = literal2333 := by
  rw [tree2333_def]
  rfl
theorem node2333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2333 live2333 coloured2333 = result2333 := by
  rw [tree2333_def]
  try dsimp only [colour, result2333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2334_agree : tree2334 = literal2334 := by
  rw [tree2334_def, tree2332_agree, tree2333_agree]
  rfl
theorem node2334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2334 live2334 coloured2334 = result2334 := by
  rw [tree2334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2332_eq
  unfold live2332 coloured2332 at child
  try dsimp only [live2334, coloured2334]
  rw [child]
  dsimp only [result2332]
  have child := node2333_eq
  unfold live2333 coloured2333 at child
  try dsimp only [live2334, coloured2334]
  rw [child]
  dsimp only [result2333]
  try dsimp only [colour, result2334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2335_agree : tree2335 = literal2335 := by
  rw [tree2335_def]
  rfl
theorem node2335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2335 live2335 coloured2335 = result2335 := by
  rw [tree2335_def]
  try dsimp only [colour, result2335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2336_agree : tree2336 = literal2336 := by
  rw [tree2336_def, tree2334_agree, tree2335_agree]
  rfl
theorem node2336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2336 live2336 coloured2336 = result2336 := by
  rw [tree2336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2334_eq
  unfold live2334 coloured2334 at child
  try dsimp only [live2336, coloured2336]
  rw [child]
  dsimp only [result2334]
  have child := node2335_eq
  unfold live2335 coloured2335 at child
  try dsimp only [live2336, coloured2336]
  rw [child]
  dsimp only [result2335]
  try dsimp only [colour, result2336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2337_agree : tree2337 = literal2337 := by
  rw [tree2337_def]
  rfl
theorem node2337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2337 live2337 coloured2337 = result2337 := by
  rw [tree2337_def]
  try dsimp only [colour, result2337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2338_agree : tree2338 = literal2338 := by
  rw [tree2338_def, tree2336_agree, tree2337_agree]
  rfl
theorem node2338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2338 live2338 coloured2338 = result2338 := by
  rw [tree2338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2336_eq
  unfold live2336 coloured2336 at child
  try dsimp only [live2338, coloured2338]
  rw [child]
  dsimp only [result2336]
  have child := node2337_eq
  unfold live2337 coloured2337 at child
  try dsimp only [live2338, coloured2338]
  rw [child]
  dsimp only [result2337]
  try dsimp only [colour, result2338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2339_agree : tree2339 = literal2339 := by
  rw [tree2339_def]
  rfl
theorem node2339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2339 live2339 coloured2339 = result2339 := by
  rw [tree2339_def]
  try dsimp only [colour, result2339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2340_agree : tree2340 = literal2340 := by
  rw [tree2340_def, tree2338_agree, tree2339_agree]
  rfl
theorem node2340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2340 live2340 coloured2340 = result2340 := by
  rw [tree2340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2338_eq
  unfold live2338 coloured2338 at child
  try dsimp only [live2340, coloured2340]
  rw [child]
  dsimp only [result2338]
  have child := node2339_eq
  unfold live2339 coloured2339 at child
  try dsimp only [live2340, coloured2340]
  rw [child]
  dsimp only [result2339]
  try dsimp only [colour, result2340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2341_agree : tree2341 = literal2341 := by
  rw [tree2341_def]
  rfl
theorem node2341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2341 live2341 coloured2341 = result2341 := by
  rw [tree2341_def]
  try dsimp only [colour, result2341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2342_agree : tree2342 = literal2342 := by
  rw [tree2342_def, tree2340_agree, tree2341_agree]
  rfl
theorem node2342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2342 live2342 coloured2342 = result2342 := by
  rw [tree2342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2340_eq
  unfold live2340 coloured2340 at child
  try dsimp only [live2342, coloured2342]
  rw [child]
  dsimp only [result2340]
  have child := node2341_eq
  unfold live2341 coloured2341 at child
  try dsimp only [live2342, coloured2342]
  rw [child]
  dsimp only [result2341]
  try dsimp only [colour, result2342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2343_agree : tree2343 = literal2343 := by
  rw [tree2343_def]
  rfl
theorem node2343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2343 live2343 coloured2343 = result2343 := by
  rw [tree2343_def]
  try dsimp only [colour, result2343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2344_agree : tree2344 = literal2344 := by
  rw [tree2344_def, tree2342_agree, tree2343_agree]
  rfl
theorem node2344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2344 live2344 coloured2344 = result2344 := by
  rw [tree2344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2342_eq
  unfold live2342 coloured2342 at child
  try dsimp only [live2344, coloured2344]
  rw [child]
  dsimp only [result2342]
  have child := node2343_eq
  unfold live2343 coloured2343 at child
  try dsimp only [live2344, coloured2344]
  rw [child]
  dsimp only [result2343]
  try dsimp only [colour, result2344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2345_agree : tree2345 = literal2345 := by
  rw [tree2345_def]
  rfl
theorem node2345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2345 live2345 coloured2345 = result2345 := by
  rw [tree2345_def]
  try dsimp only [colour, result2345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2346_agree : tree2346 = literal2346 := by
  rw [tree2346_def, tree2344_agree, tree2345_agree]
  rfl
theorem node2346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2346 live2346 coloured2346 = result2346 := by
  rw [tree2346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2344_eq
  unfold live2344 coloured2344 at child
  try dsimp only [live2346, coloured2346]
  rw [child]
  dsimp only [result2344]
  have child := node2345_eq
  unfold live2345 coloured2345 at child
  try dsimp only [live2346, coloured2346]
  rw [child]
  dsimp only [result2345]
  try dsimp only [colour, result2346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2347_agree : tree2347 = literal2347 := by
  rw [tree2347_def]
  rfl
theorem node2347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2347 live2347 coloured2347 = result2347 := by
  rw [tree2347_def]
  try dsimp only [colour, result2347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2348_agree : tree2348 = literal2348 := by
  rw [tree2348_def, tree2346_agree, tree2347_agree]
  rfl
theorem node2348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2348 live2348 coloured2348 = result2348 := by
  rw [tree2348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2346_eq
  unfold live2346 coloured2346 at child
  try dsimp only [live2348, coloured2348]
  rw [child]
  dsimp only [result2346]
  have child := node2347_eq
  unfold live2347 coloured2347 at child
  try dsimp only [live2348, coloured2348]
  rw [child]
  dsimp only [result2347]
  try dsimp only [colour, result2348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2349_agree : tree2349 = literal2349 := by
  rw [tree2349_def]
  rfl
theorem node2349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2349 live2349 coloured2349 = result2349 := by
  rw [tree2349_def]
  try dsimp only [colour, result2349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2350_agree : tree2350 = literal2350 := by
  rw [tree2350_def, tree2348_agree, tree2349_agree]
  rfl
theorem node2350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2350 live2350 coloured2350 = result2350 := by
  rw [tree2350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2348_eq
  unfold live2348 coloured2348 at child
  try dsimp only [live2350, coloured2350]
  rw [child]
  dsimp only [result2348]
  have child := node2349_eq
  unfold live2349 coloured2349 at child
  try dsimp only [live2350, coloured2350]
  rw [child]
  dsimp only [result2349]
  try dsimp only [colour, result2350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2351_agree : tree2351 = literal2351 := by
  rw [tree2351_def]
  rfl
theorem node2351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2351 live2351 coloured2351 = result2351 := by
  rw [tree2351_def]
  try dsimp only [colour, result2351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2352_agree : tree2352 = literal2352 := by
  rw [tree2352_def, tree2350_agree, tree2351_agree]
  rfl
theorem node2352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2352 live2352 coloured2352 = result2352 := by
  rw [tree2352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2350_eq
  unfold live2350 coloured2350 at child
  try dsimp only [live2352, coloured2352]
  rw [child]
  dsimp only [result2350]
  have child := node2351_eq
  unfold live2351 coloured2351 at child
  try dsimp only [live2352, coloured2352]
  rw [child]
  dsimp only [result2351]
  try dsimp only [colour, result2352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2353_agree : tree2353 = literal2353 := by
  rw [tree2353_def]
  rfl
theorem node2353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2353 live2353 coloured2353 = result2353 := by
  rw [tree2353_def]
  try dsimp only [colour, result2353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2354_agree : tree2354 = literal2354 := by
  rw [tree2354_def, tree2352_agree, tree2353_agree]
  rfl
theorem node2354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2354 live2354 coloured2354 = result2354 := by
  rw [tree2354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2352_eq
  unfold live2352 coloured2352 at child
  try dsimp only [live2354, coloured2354]
  rw [child]
  dsimp only [result2352]
  have child := node2353_eq
  unfold live2353 coloured2353 at child
  try dsimp only [live2354, coloured2354]
  rw [child]
  dsimp only [result2353]
  try dsimp only [colour, result2354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2355_agree : tree2355 = literal2355 := by
  rw [tree2355_def]
  rfl
theorem node2355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2355 live2355 coloured2355 = result2355 := by
  rw [tree2355_def]
  try dsimp only [colour, result2355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2356_agree : tree2356 = literal2356 := by
  rw [tree2356_def, tree2354_agree, tree2355_agree]
  rfl
theorem node2356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2356 live2356 coloured2356 = result2356 := by
  rw [tree2356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2354_eq
  unfold live2354 coloured2354 at child
  try dsimp only [live2356, coloured2356]
  rw [child]
  dsimp only [result2354]
  have child := node2355_eq
  unfold live2355 coloured2355 at child
  try dsimp only [live2356, coloured2356]
  rw [child]
  dsimp only [result2355]
  try dsimp only [colour, result2356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2357_agree : tree2357 = literal2357 := by
  rw [tree2357_def]
  rfl
theorem node2357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2357 live2357 coloured2357 = result2357 := by
  rw [tree2357_def]
  try dsimp only [colour, result2357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2358_agree : tree2358 = literal2358 := by
  rw [tree2358_def, tree2356_agree, tree2357_agree]
  rfl
theorem node2358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2358 live2358 coloured2358 = result2358 := by
  rw [tree2358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2356_eq
  unfold live2356 coloured2356 at child
  try dsimp only [live2358, coloured2358]
  rw [child]
  dsimp only [result2356]
  have child := node2357_eq
  unfold live2357 coloured2357 at child
  try dsimp only [live2358, coloured2358]
  rw [child]
  dsimp only [result2357]
  try dsimp only [colour, result2358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2359_agree : tree2359 = literal2359 := by
  rw [tree2359_def]
  rfl
theorem node2359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2359 live2359 coloured2359 = result2359 := by
  rw [tree2359_def]
  try dsimp only [colour, result2359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2360_agree : tree2360 = literal2360 := by
  rw [tree2360_def, tree2358_agree, tree2359_agree]
  rfl
theorem node2360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2360 live2360 coloured2360 = result2360 := by
  rw [tree2360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2358_eq
  unfold live2358 coloured2358 at child
  try dsimp only [live2360, coloured2360]
  rw [child]
  dsimp only [result2358]
  have child := node2359_eq
  unfold live2359 coloured2359 at child
  try dsimp only [live2360, coloured2360]
  rw [child]
  dsimp only [result2359]
  try dsimp only [colour, result2360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2361_agree : tree2361 = literal2361 := by
  rw [tree2361_def]
  rfl
theorem node2361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2361 live2361 coloured2361 = result2361 := by
  rw [tree2361_def]
  try dsimp only [colour, result2361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2362_agree : tree2362 = literal2362 := by
  rw [tree2362_def, tree2360_agree, tree2361_agree]
  rfl
theorem node2362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2362 live2362 coloured2362 = result2362 := by
  rw [tree2362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2360_eq
  unfold live2360 coloured2360 at child
  try dsimp only [live2362, coloured2362]
  rw [child]
  dsimp only [result2360]
  have child := node2361_eq
  unfold live2361 coloured2361 at child
  try dsimp only [live2362, coloured2362]
  rw [child]
  dsimp only [result2361]
  try dsimp only [colour, result2362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2363_agree : tree2363 = literal2363 := by
  rw [tree2363_def]
  rfl
theorem node2363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2363 live2363 coloured2363 = result2363 := by
  rw [tree2363_def]
  try dsimp only [colour, result2363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2364_agree : tree2364 = literal2364 := by
  rw [tree2364_def, tree2362_agree, tree2363_agree]
  rfl
theorem node2364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2364 live2364 coloured2364 = result2364 := by
  rw [tree2364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2362_eq
  unfold live2362 coloured2362 at child
  try dsimp only [live2364, coloured2364]
  rw [child]
  dsimp only [result2362]
  have child := node2363_eq
  unfold live2363 coloured2363 at child
  try dsimp only [live2364, coloured2364]
  rw [child]
  dsimp only [result2363]
  try dsimp only [colour, result2364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2365_agree : tree2365 = literal2365 := by
  rw [tree2365_def]
  rfl
theorem node2365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2365 live2365 coloured2365 = result2365 := by
  rw [tree2365_def]
  try dsimp only [colour, result2365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2366_agree : tree2366 = literal2366 := by
  rw [tree2366_def, tree2364_agree, tree2365_agree]
  rfl
theorem node2366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2366 live2366 coloured2366 = result2366 := by
  rw [tree2366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2364_eq
  unfold live2364 coloured2364 at child
  try dsimp only [live2366, coloured2366]
  rw [child]
  dsimp only [result2364]
  have child := node2365_eq
  unfold live2365 coloured2365 at child
  try dsimp only [live2366, coloured2366]
  rw [child]
  dsimp only [result2365]
  try dsimp only [colour, result2366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2367_agree : tree2367 = literal2367 := by
  rw [tree2367_def]
  rfl
theorem node2367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2367 live2367 coloured2367 = result2367 := by
  rw [tree2367_def]
  try dsimp only [colour, result2367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2368_agree : tree2368 = literal2368 := by
  rw [tree2368_def, tree2366_agree, tree2367_agree]
  rfl
theorem node2368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2368 live2368 coloured2368 = result2368 := by
  rw [tree2368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2366_eq
  unfold live2366 coloured2366 at child
  try dsimp only [live2368, coloured2368]
  rw [child]
  dsimp only [result2366]
  have child := node2367_eq
  unfold live2367 coloured2367 at child
  try dsimp only [live2368, coloured2368]
  rw [child]
  dsimp only [result2367]
  try dsimp only [colour, result2368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2369_agree : tree2369 = literal2369 := by
  rw [tree2369_def]
  rfl
theorem node2369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2369 live2369 coloured2369 = result2369 := by
  rw [tree2369_def]
  try dsimp only [colour, result2369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2370_agree : tree2370 = literal2370 := by
  rw [tree2370_def, tree2368_agree, tree2369_agree]
  rfl
theorem node2370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2370 live2370 coloured2370 = result2370 := by
  rw [tree2370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2368_eq
  unfold live2368 coloured2368 at child
  try dsimp only [live2370, coloured2370]
  rw [child]
  dsimp only [result2368]
  have child := node2369_eq
  unfold live2369 coloured2369 at child
  try dsimp only [live2370, coloured2370]
  rw [child]
  dsimp only [result2369]
  try dsimp only [colour, result2370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2371_agree : tree2371 = literal2371 := by
  rw [tree2371_def]
  rfl
theorem node2371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2371 live2371 coloured2371 = result2371 := by
  rw [tree2371_def]
  try dsimp only [colour, result2371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2372_agree : tree2372 = literal2372 := by
  rw [tree2372_def, tree2370_agree, tree2371_agree]
  rfl
theorem node2372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2372 live2372 coloured2372 = result2372 := by
  rw [tree2372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2370_eq
  unfold live2370 coloured2370 at child
  try dsimp only [live2372, coloured2372]
  rw [child]
  dsimp only [result2370]
  have child := node2371_eq
  unfold live2371 coloured2371 at child
  try dsimp only [live2372, coloured2372]
  rw [child]
  dsimp only [result2371]
  try dsimp only [colour, result2372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2373_agree : tree2373 = literal2373 := by
  rw [tree2373_def]
  rfl
theorem node2373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2373 live2373 coloured2373 = result2373 := by
  rw [tree2373_def]
  try dsimp only [colour, result2373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2374_agree : tree2374 = literal2374 := by
  rw [tree2374_def, tree2372_agree, tree2373_agree]
  rfl
theorem node2374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2374 live2374 coloured2374 = result2374 := by
  rw [tree2374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2372_eq
  unfold live2372 coloured2372 at child
  try dsimp only [live2374, coloured2374]
  rw [child]
  dsimp only [result2372]
  have child := node2373_eq
  unfold live2373 coloured2373 at child
  try dsimp only [live2374, coloured2374]
  rw [child]
  dsimp only [result2373]
  try dsimp only [colour, result2374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2375_agree : tree2375 = literal2375 := by
  rw [tree2375_def]
  rfl
theorem node2375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2375 live2375 coloured2375 = result2375 := by
  rw [tree2375_def]
  try dsimp only [colour, result2375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2376_agree : tree2376 = literal2376 := by
  rw [tree2376_def, tree2374_agree, tree2375_agree]
  rfl
theorem node2376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2376 live2376 coloured2376 = result2376 := by
  rw [tree2376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2374_eq
  unfold live2374 coloured2374 at child
  try dsimp only [live2376, coloured2376]
  rw [child]
  dsimp only [result2374]
  have child := node2375_eq
  unfold live2375 coloured2375 at child
  try dsimp only [live2376, coloured2376]
  rw [child]
  dsimp only [result2375]
  try dsimp only [colour, result2376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2377_agree : tree2377 = literal2377 := by
  rw [tree2377_def]
  rfl
theorem node2377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2377 live2377 coloured2377 = result2377 := by
  rw [tree2377_def]
  try dsimp only [colour, result2377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2378_agree : tree2378 = literal2378 := by
  rw [tree2378_def, tree2376_agree, tree2377_agree]
  rfl
theorem node2378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2378 live2378 coloured2378 = result2378 := by
  rw [tree2378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2376_eq
  unfold live2376 coloured2376 at child
  try dsimp only [live2378, coloured2378]
  rw [child]
  dsimp only [result2376]
  have child := node2377_eq
  unfold live2377 coloured2377 at child
  try dsimp only [live2378, coloured2378]
  rw [child]
  dsimp only [result2377]
  try dsimp only [colour, result2378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2379_agree : tree2379 = literal2379 := by
  rw [tree2379_def]
  rfl
theorem node2379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2379 live2379 coloured2379 = result2379 := by
  rw [tree2379_def]
  try dsimp only [colour, result2379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2380_agree : tree2380 = literal2380 := by
  rw [tree2380_def, tree2378_agree, tree2379_agree]
  rfl
theorem node2380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2380 live2380 coloured2380 = result2380 := by
  rw [tree2380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2378_eq
  unfold live2378 coloured2378 at child
  try dsimp only [live2380, coloured2380]
  rw [child]
  dsimp only [result2378]
  have child := node2379_eq
  unfold live2379 coloured2379 at child
  try dsimp only [live2380, coloured2380]
  rw [child]
  dsimp only [result2379]
  try dsimp only [colour, result2380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2381_agree : tree2381 = literal2381 := by
  rw [tree2381_def]
  rfl
theorem node2381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2381 live2381 coloured2381 = result2381 := by
  rw [tree2381_def]
  try dsimp only [colour, result2381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2382_agree : tree2382 = literal2382 := by
  rw [tree2382_def, tree2380_agree, tree2381_agree]
  rfl
theorem node2382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2382 live2382 coloured2382 = result2382 := by
  rw [tree2382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2380_eq
  unfold live2380 coloured2380 at child
  try dsimp only [live2382, coloured2382]
  rw [child]
  dsimp only [result2380]
  have child := node2381_eq
  unfold live2381 coloured2381 at child
  try dsimp only [live2382, coloured2382]
  rw [child]
  dsimp only [result2381]
  try dsimp only [colour, result2382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2383_agree : tree2383 = literal2383 := by
  rw [tree2383_def]
  rfl
theorem node2383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2383 live2383 coloured2383 = result2383 := by
  rw [tree2383_def]
  try dsimp only [colour, result2383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2384_agree : tree2384 = literal2384 := by
  rw [tree2384_def, tree2382_agree, tree2383_agree]
  rfl
theorem node2384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2384 live2384 coloured2384 = result2384 := by
  rw [tree2384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2382_eq
  unfold live2382 coloured2382 at child
  try dsimp only [live2384, coloured2384]
  rw [child]
  dsimp only [result2382]
  have child := node2383_eq
  unfold live2383 coloured2383 at child
  try dsimp only [live2384, coloured2384]
  rw [child]
  dsimp only [result2383]
  try dsimp only [colour, result2384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2385_agree : tree2385 = literal2385 := by
  rw [tree2385_def]
  rfl
theorem node2385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2385 live2385 coloured2385 = result2385 := by
  rw [tree2385_def]
  try dsimp only [colour, result2385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2386_agree : tree2386 = literal2386 := by
  rw [tree2386_def, tree2384_agree, tree2385_agree]
  rfl
theorem node2386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2386 live2386 coloured2386 = result2386 := by
  rw [tree2386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2384_eq
  unfold live2384 coloured2384 at child
  try dsimp only [live2386, coloured2386]
  rw [child]
  dsimp only [result2384]
  have child := node2385_eq
  unfold live2385 coloured2385 at child
  try dsimp only [live2386, coloured2386]
  rw [child]
  dsimp only [result2385]
  try dsimp only [colour, result2386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2387_agree : tree2387 = literal2387 := by
  rw [tree2387_def]
  rfl
theorem node2387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2387 live2387 coloured2387 = result2387 := by
  rw [tree2387_def]
  try dsimp only [colour, result2387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2388_agree : tree2388 = literal2388 := by
  rw [tree2388_def, tree2386_agree, tree2387_agree]
  rfl
theorem node2388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2388 live2388 coloured2388 = result2388 := by
  rw [tree2388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2386_eq
  unfold live2386 coloured2386 at child
  try dsimp only [live2388, coloured2388]
  rw [child]
  dsimp only [result2386]
  have child := node2387_eq
  unfold live2387 coloured2387 at child
  try dsimp only [live2388, coloured2388]
  rw [child]
  dsimp only [result2387]
  try dsimp only [colour, result2388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2389_agree : tree2389 = literal2389 := by
  rw [tree2389_def]
  rfl
theorem node2389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2389 live2389 coloured2389 = result2389 := by
  rw [tree2389_def]
  try dsimp only [colour, result2389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2390_agree : tree2390 = literal2390 := by
  rw [tree2390_def, tree2388_agree, tree2389_agree]
  rfl
theorem node2390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2390 live2390 coloured2390 = result2390 := by
  rw [tree2390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2388_eq
  unfold live2388 coloured2388 at child
  try dsimp only [live2390, coloured2390]
  rw [child]
  dsimp only [result2388]
  have child := node2389_eq
  unfold live2389 coloured2389 at child
  try dsimp only [live2390, coloured2390]
  rw [child]
  dsimp only [result2389]
  try dsimp only [colour, result2390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2391_agree : tree2391 = literal2391 := by
  rw [tree2391_def]
  rfl
theorem node2391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2391 live2391 coloured2391 = result2391 := by
  rw [tree2391_def]
  try dsimp only [colour, result2391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2392_agree : tree2392 = literal2392 := by
  rw [tree2392_def, tree2390_agree, tree2391_agree]
  rfl
theorem node2392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2392 live2392 coloured2392 = result2392 := by
  rw [tree2392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2390_eq
  unfold live2390 coloured2390 at child
  try dsimp only [live2392, coloured2392]
  rw [child]
  dsimp only [result2390]
  have child := node2391_eq
  unfold live2391 coloured2391 at child
  try dsimp only [live2392, coloured2392]
  rw [child]
  dsimp only [result2391]
  try dsimp only [colour, result2392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2393_agree : tree2393 = literal2393 := by
  rw [tree2393_def]
  rfl
theorem node2393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2393 live2393 coloured2393 = result2393 := by
  rw [tree2393_def]
  try dsimp only [colour, result2393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2394_agree : tree2394 = literal2394 := by
  rw [tree2394_def, tree2392_agree, tree2393_agree]
  rfl
theorem node2394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2394 live2394 coloured2394 = result2394 := by
  rw [tree2394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2392_eq
  unfold live2392 coloured2392 at child
  try dsimp only [live2394, coloured2394]
  rw [child]
  dsimp only [result2392]
  have child := node2393_eq
  unfold live2393 coloured2393 at child
  try dsimp only [live2394, coloured2394]
  rw [child]
  dsimp only [result2393]
  try dsimp only [colour, result2394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2395_agree : tree2395 = literal2395 := by
  rw [tree2395_def]
  rfl
theorem node2395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2395 live2395 coloured2395 = result2395 := by
  rw [tree2395_def]
  try dsimp only [colour, result2395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2396_agree : tree2396 = literal2396 := by
  rw [tree2396_def, tree2394_agree, tree2395_agree]
  rfl
theorem node2396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2396 live2396 coloured2396 = result2396 := by
  rw [tree2396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2394_eq
  unfold live2394 coloured2394 at child
  try dsimp only [live2396, coloured2396]
  rw [child]
  dsimp only [result2394]
  have child := node2395_eq
  unfold live2395 coloured2395 at child
  try dsimp only [live2396, coloured2396]
  rw [child]
  dsimp only [result2395]
  try dsimp only [colour, result2396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2397_agree : tree2397 = literal2397 := by
  rw [tree2397_def]
  rfl
theorem node2397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2397 live2397 coloured2397 = result2397 := by
  rw [tree2397_def]
  try dsimp only [colour, result2397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2398_agree : tree2398 = literal2398 := by
  rw [tree2398_def, tree2396_agree, tree2397_agree]
  rfl
theorem node2398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2398 live2398 coloured2398 = result2398 := by
  rw [tree2398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2396_eq
  unfold live2396 coloured2396 at child
  try dsimp only [live2398, coloured2398]
  rw [child]
  dsimp only [result2396]
  have child := node2397_eq
  unfold live2397 coloured2397 at child
  try dsimp only [live2398, coloured2398]
  rw [child]
  dsimp only [result2397]
  try dsimp only [colour, result2398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2399_agree : tree2399 = literal2399 := by
  rw [tree2399_def]
  rfl
theorem node2399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2399 live2399 coloured2399 = result2399 := by
  rw [tree2399_def]
  try dsimp only [colour, result2399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
