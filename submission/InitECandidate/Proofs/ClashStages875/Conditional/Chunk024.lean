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
theorem tree2304_agree_conditional
    (child0 : tree2302 = literal2302)
    (child1 : tree2303 = literal2303) : tree2304 = literal2304 := by
  rw [tree2304_def, child0, child1]
  rfl
theorem node2304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2302 live2302 coloured2302 = result2302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2303 live2303 coloured2303 = result2303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2304 live2304 coloured2304 = result2304 := by
  rw [tree2304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2302 coloured2302 at child
  try dsimp only [live2304, coloured2304]
  rw [child]
  dsimp only [result2302]
  have child := child1
  unfold live2303 coloured2303 at child
  try dsimp only [live2304, coloured2304]
  rw [child]
  dsimp only [result2303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2305_agree_conditional : tree2305 = literal2305 := by
  rw [tree2305_def]
  rfl
theorem node2305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2305 live2305 coloured2305 = result2305 := by
  rw [tree2305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2306_agree_conditional : tree2306 = literal2306 := by
  rw [tree2306_def]
  rfl
theorem node2306_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2306 live2306 coloured2306 = result2306 := by
  rw [tree2306_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2307_agree_conditional
    (child0 : tree2305 = literal2305)
    (child1 : tree2306 = literal2306) : tree2307 = literal2307 := by
  rw [tree2307_def, child0, child1]
  rfl
theorem node2307_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2305 live2305 coloured2305 = result2305)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2306 live2306 coloured2306 = result2306) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2307 live2307 coloured2307 = result2307 := by
  rw [tree2307_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2305 coloured2305 at child
  try dsimp only [live2307, coloured2307]
  rw [child]
  dsimp only [result2305]
  have child := child1
  unfold live2306 coloured2306 at child
  try dsimp only [live2307, coloured2307]
  rw [child]
  dsimp only [result2306]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2308_agree_conditional : tree2308 = literal2308 := by
  rw [tree2308_def]
  rfl
theorem node2308_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2308 live2308 coloured2308 = result2308 := by
  rw [tree2308_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2309_agree_conditional : tree2309 = literal2309 := by
  rw [tree2309_def]
  rfl
theorem node2309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2309 live2309 coloured2309 = result2309 := by
  rw [tree2309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2310_agree_conditional
    (child0 : tree2308 = literal2308)
    (child1 : tree2309 = literal2309) : tree2310 = literal2310 := by
  rw [tree2310_def, child0, child1]
  rfl
theorem node2310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2308 live2308 coloured2308 = result2308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2309 live2309 coloured2309 = result2309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2310 live2310 coloured2310 = result2310 := by
  rw [tree2310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2308 coloured2308 at child
  try dsimp only [live2310, coloured2310]
  rw [child]
  dsimp only [result2308]
  have child := child1
  unfold live2309 coloured2309 at child
  try dsimp only [live2310, coloured2310]
  rw [child]
  dsimp only [result2309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2311_agree_conditional : tree2311 = literal2311 := by
  rw [tree2311_def]
  rfl
theorem node2311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2311 live2311 coloured2311 = result2311 := by
  rw [tree2311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2312_agree_conditional
    (child0 : tree2310 = literal2310)
    (child1 : tree2311 = literal2311) : tree2312 = literal2312 := by
  rw [tree2312_def, child0, child1]
  rfl
theorem node2312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2310 live2310 coloured2310 = result2310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2311 live2311 coloured2311 = result2311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2312 live2312 coloured2312 = result2312 := by
  rw [tree2312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2310 coloured2310 at child
  try dsimp only [live2312, coloured2312]
  rw [child]
  dsimp only [result2310]
  have child := child1
  unfold live2311 coloured2311 at child
  try dsimp only [live2312, coloured2312]
  rw [child]
  dsimp only [result2311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2313_agree_conditional
    (child0 : tree2307 = literal2307)
    (child1 : tree2312 = literal2312) : tree2313 = literal2313 := by
  rw [tree2313_def, child0, child1]
  rfl
theorem node2313_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2307 live2307 coloured2307 = result2307)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2312 live2312 coloured2312 = result2312) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2313 live2313 coloured2313 = result2313 := by
  rw [tree2313_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2307 coloured2307 at child
  try dsimp only [live2313, coloured2313]
  rw [child]
  dsimp only [result2307]
  have child := child1
  unfold live2312 coloured2312 at child
  try dsimp only [live2313, coloured2313]
  rw [child]
  dsimp only [result2312]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2314_agree_conditional
    (child0 : tree2304 = literal2304)
    (child1 : tree2313 = literal2313) : tree2314 = literal2314 := by
  rw [tree2314_def, child0, child1]
  rfl
theorem node2314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2304 live2304 coloured2304 = result2304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2313 live2313 coloured2313 = result2313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2314 live2314 coloured2314 = result2314 := by
  rw [tree2314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2304 coloured2304 at child
  try dsimp only [live2314, coloured2314]
  rw [child]
  dsimp only [result2304]
  have child := child1
  unfold live2313 coloured2313 at child
  try dsimp only [live2314, coloured2314]
  rw [child]
  dsimp only [result2313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2315_agree_conditional : tree2315 = literal2315 := by
  rw [tree2315_def]
  rfl
theorem node2315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2315 live2315 coloured2315 = result2315 := by
  rw [tree2315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2316_agree_conditional
    (child0 : tree2314 = literal2314)
    (child1 : tree2315 = literal2315) : tree2316 = literal2316 := by
  rw [tree2316_def, child0, child1]
  rfl
theorem node2316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2314 live2314 coloured2314 = result2314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2315 live2315 coloured2315 = result2315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2316 live2316 coloured2316 = result2316 := by
  rw [tree2316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2314 coloured2314 at child
  try dsimp only [live2316, coloured2316]
  rw [child]
  dsimp only [result2314]
  have child := child1
  unfold live2315 coloured2315 at child
  try dsimp only [live2316, coloured2316]
  rw [child]
  dsimp only [result2315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2317_agree_conditional : tree2317 = literal2317 := by
  rw [tree2317_def]
  rfl
theorem node2317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2317 live2317 coloured2317 = result2317 := by
  rw [tree2317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2318_agree_conditional
    (child0 : tree2316 = literal2316)
    (child1 : tree2317 = literal2317) : tree2318 = literal2318 := by
  rw [tree2318_def, child0, child1]
  rfl
theorem node2318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2316 live2316 coloured2316 = result2316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2317 live2317 coloured2317 = result2317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2318 live2318 coloured2318 = result2318 := by
  rw [tree2318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2316 coloured2316 at child
  try dsimp only [live2318, coloured2318]
  rw [child]
  dsimp only [result2316]
  have child := child1
  unfold live2317 coloured2317 at child
  try dsimp only [live2318, coloured2318]
  rw [child]
  dsimp only [result2317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2319_agree_conditional : tree2319 = literal2319 := by
  rw [tree2319_def]
  rfl
theorem node2319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2319 live2319 coloured2319 = result2319 := by
  rw [tree2319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2320_agree_conditional
    (child0 : tree2318 = literal2318)
    (child1 : tree2319 = literal2319) : tree2320 = literal2320 := by
  rw [tree2320_def, child0, child1]
  rfl
theorem node2320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2318 live2318 coloured2318 = result2318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2319 live2319 coloured2319 = result2319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2320 live2320 coloured2320 = result2320 := by
  rw [tree2320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2318 coloured2318 at child
  try dsimp only [live2320, coloured2320]
  rw [child]
  dsimp only [result2318]
  have child := child1
  unfold live2319 coloured2319 at child
  try dsimp only [live2320, coloured2320]
  rw [child]
  dsimp only [result2319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2321_agree_conditional : tree2321 = literal2321 := by
  rw [tree2321_def]
  rfl
theorem node2321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2321 live2321 coloured2321 = result2321 := by
  rw [tree2321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2322_agree_conditional
    (child0 : tree2320 = literal2320)
    (child1 : tree2321 = literal2321) : tree2322 = literal2322 := by
  rw [tree2322_def, child0, child1]
  rfl
theorem node2322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2320 live2320 coloured2320 = result2320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2321 live2321 coloured2321 = result2321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2322 live2322 coloured2322 = result2322 := by
  rw [tree2322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2320 coloured2320 at child
  try dsimp only [live2322, coloured2322]
  rw [child]
  dsimp only [result2320]
  have child := child1
  unfold live2321 coloured2321 at child
  try dsimp only [live2322, coloured2322]
  rw [child]
  dsimp only [result2321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2323_agree_conditional : tree2323 = literal2323 := by
  rw [tree2323_def]
  rfl
theorem node2323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2323 live2323 coloured2323 = result2323 := by
  rw [tree2323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2324_agree_conditional : tree2324 = literal2324 := by
  rw [tree2324_def]
  rfl
theorem node2324_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2324 live2324 coloured2324 = result2324 := by
  rw [tree2324_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2325_agree_conditional
    (child0 : tree2323 = literal2323)
    (child1 : tree2324 = literal2324) : tree2325 = literal2325 := by
  rw [tree2325_def, child0, child1]
  rfl
theorem node2325_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2323 live2323 coloured2323 = result2323)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2324 live2324 coloured2324 = result2324) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2325 live2325 coloured2325 = result2325 := by
  rw [tree2325_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2323 coloured2323 at child
  try dsimp only [live2325, coloured2325]
  rw [child]
  dsimp only [result2323]
  have child := child1
  unfold live2324 coloured2324 at child
  try dsimp only [live2325, coloured2325]
  rw [child]
  dsimp only [result2324]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2326_agree_conditional : tree2326 = literal2326 := by
  rw [tree2326_def]
  rfl
theorem node2326_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2326 live2326 coloured2326 = result2326 := by
  rw [tree2326_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2327_agree_conditional : tree2327 = literal2327 := by
  rw [tree2327_def]
  rfl
theorem node2327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2327 live2327 coloured2327 = result2327 := by
  rw [tree2327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2328_agree_conditional
    (child0 : tree2326 = literal2326)
    (child1 : tree2327 = literal2327) : tree2328 = literal2328 := by
  rw [tree2328_def, child0, child1]
  rfl
theorem node2328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2326 live2326 coloured2326 = result2326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2327 live2327 coloured2327 = result2327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2328 live2328 coloured2328 = result2328 := by
  rw [tree2328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2326 coloured2326 at child
  try dsimp only [live2328, coloured2328]
  rw [child]
  dsimp only [result2326]
  have child := child1
  unfold live2327 coloured2327 at child
  try dsimp only [live2328, coloured2328]
  rw [child]
  dsimp only [result2327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2329_agree_conditional : tree2329 = literal2329 := by
  rw [tree2329_def]
  rfl
theorem node2329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2329 live2329 coloured2329 = result2329 := by
  rw [tree2329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2330_agree_conditional
    (child0 : tree2328 = literal2328)
    (child1 : tree2329 = literal2329) : tree2330 = literal2330 := by
  rw [tree2330_def, child0, child1]
  rfl
theorem node2330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2328 live2328 coloured2328 = result2328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2329 live2329 coloured2329 = result2329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2330 live2330 coloured2330 = result2330 := by
  rw [tree2330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2328 coloured2328 at child
  try dsimp only [live2330, coloured2330]
  rw [child]
  dsimp only [result2328]
  have child := child1
  unfold live2329 coloured2329 at child
  try dsimp only [live2330, coloured2330]
  rw [child]
  dsimp only [result2329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2331_agree_conditional
    (child0 : tree2325 = literal2325)
    (child1 : tree2330 = literal2330) : tree2331 = literal2331 := by
  rw [tree2331_def, child0, child1]
  rfl
theorem node2331_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2325 live2325 coloured2325 = result2325)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2330 live2330 coloured2330 = result2330) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2331 live2331 coloured2331 = result2331 := by
  rw [tree2331_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2325 coloured2325 at child
  try dsimp only [live2331, coloured2331]
  rw [child]
  dsimp only [result2325]
  have child := child1
  unfold live2330 coloured2330 at child
  try dsimp only [live2331, coloured2331]
  rw [child]
  dsimp only [result2330]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2332_agree_conditional
    (child0 : tree2322 = literal2322)
    (child1 : tree2331 = literal2331) : tree2332 = literal2332 := by
  rw [tree2332_def, child0, child1]
  rfl
theorem node2332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2322 live2322 coloured2322 = result2322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2331 live2331 coloured2331 = result2331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2332 live2332 coloured2332 = result2332 := by
  rw [tree2332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2322 coloured2322 at child
  try dsimp only [live2332, coloured2332]
  rw [child]
  dsimp only [result2322]
  have child := child1
  unfold live2331 coloured2331 at child
  try dsimp only [live2332, coloured2332]
  rw [child]
  dsimp only [result2331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2333_agree_conditional : tree2333 = literal2333 := by
  rw [tree2333_def]
  rfl
theorem node2333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2333 live2333 coloured2333 = result2333 := by
  rw [tree2333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2334_agree_conditional
    (child0 : tree2332 = literal2332)
    (child1 : tree2333 = literal2333) : tree2334 = literal2334 := by
  rw [tree2334_def, child0, child1]
  rfl
theorem node2334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2332 live2332 coloured2332 = result2332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2333 live2333 coloured2333 = result2333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2334 live2334 coloured2334 = result2334 := by
  rw [tree2334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2332 coloured2332 at child
  try dsimp only [live2334, coloured2334]
  rw [child]
  dsimp only [result2332]
  have child := child1
  unfold live2333 coloured2333 at child
  try dsimp only [live2334, coloured2334]
  rw [child]
  dsimp only [result2333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2335_agree_conditional : tree2335 = literal2335 := by
  rw [tree2335_def]
  rfl
theorem node2335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2335 live2335 coloured2335 = result2335 := by
  rw [tree2335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2336_agree_conditional
    (child0 : tree2334 = literal2334)
    (child1 : tree2335 = literal2335) : tree2336 = literal2336 := by
  rw [tree2336_def, child0, child1]
  rfl
theorem node2336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2334 live2334 coloured2334 = result2334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2335 live2335 coloured2335 = result2335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2336 live2336 coloured2336 = result2336 := by
  rw [tree2336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2334 coloured2334 at child
  try dsimp only [live2336, coloured2336]
  rw [child]
  dsimp only [result2334]
  have child := child1
  unfold live2335 coloured2335 at child
  try dsimp only [live2336, coloured2336]
  rw [child]
  dsimp only [result2335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2337_agree_conditional : tree2337 = literal2337 := by
  rw [tree2337_def]
  rfl
theorem node2337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2337 live2337 coloured2337 = result2337 := by
  rw [tree2337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2338_agree_conditional : tree2338 = literal2338 := by
  rw [tree2338_def]
  rfl
theorem node2338_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2338 live2338 coloured2338 = result2338 := by
  rw [tree2338_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2339_agree_conditional
    (child0 : tree2337 = literal2337)
    (child1 : tree2338 = literal2338) : tree2339 = literal2339 := by
  rw [tree2339_def, child0, child1]
  rfl
theorem node2339_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2337 live2337 coloured2337 = result2337)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2338 live2338 coloured2338 = result2338) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2339 live2339 coloured2339 = result2339 := by
  rw [tree2339_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2337 coloured2337 at child
  try dsimp only [live2339, coloured2339]
  rw [child]
  dsimp only [result2337]
  have child := child1
  unfold live2338 coloured2338 at child
  try dsimp only [live2339, coloured2339]
  rw [child]
  dsimp only [result2338]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2340_agree_conditional : tree2340 = literal2340 := by
  rw [tree2340_def]
  rfl
theorem node2340_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2340 live2340 coloured2340 = result2340 := by
  rw [tree2340_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2341_agree_conditional : tree2341 = literal2341 := by
  rw [tree2341_def]
  rfl
theorem node2341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2341 live2341 coloured2341 = result2341 := by
  rw [tree2341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2342_agree_conditional
    (child0 : tree2340 = literal2340)
    (child1 : tree2341 = literal2341) : tree2342 = literal2342 := by
  rw [tree2342_def, child0, child1]
  rfl
theorem node2342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2340 live2340 coloured2340 = result2340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2341 live2341 coloured2341 = result2341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2342 live2342 coloured2342 = result2342 := by
  rw [tree2342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2340 coloured2340 at child
  try dsimp only [live2342, coloured2342]
  rw [child]
  dsimp only [result2340]
  have child := child1
  unfold live2341 coloured2341 at child
  try dsimp only [live2342, coloured2342]
  rw [child]
  dsimp only [result2341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2343_agree_conditional : tree2343 = literal2343 := by
  rw [tree2343_def]
  rfl
theorem node2343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2343 live2343 coloured2343 = result2343 := by
  rw [tree2343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2344_agree_conditional
    (child0 : tree2342 = literal2342)
    (child1 : tree2343 = literal2343) : tree2344 = literal2344 := by
  rw [tree2344_def, child0, child1]
  rfl
theorem node2344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2342 live2342 coloured2342 = result2342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2343 live2343 coloured2343 = result2343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2344 live2344 coloured2344 = result2344 := by
  rw [tree2344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2342 coloured2342 at child
  try dsimp only [live2344, coloured2344]
  rw [child]
  dsimp only [result2342]
  have child := child1
  unfold live2343 coloured2343 at child
  try dsimp only [live2344, coloured2344]
  rw [child]
  dsimp only [result2343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2345_agree_conditional
    (child0 : tree2339 = literal2339)
    (child1 : tree2344 = literal2344) : tree2345 = literal2345 := by
  rw [tree2345_def, child0, child1]
  rfl
theorem node2345_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2339 live2339 coloured2339 = result2339)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2344 live2344 coloured2344 = result2344) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2345 live2345 coloured2345 = result2345 := by
  rw [tree2345_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2339 coloured2339 at child
  try dsimp only [live2345, coloured2345]
  rw [child]
  dsimp only [result2339]
  have child := child1
  unfold live2344 coloured2344 at child
  try dsimp only [live2345, coloured2345]
  rw [child]
  dsimp only [result2344]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2346_agree_conditional
    (child0 : tree2336 = literal2336)
    (child1 : tree2345 = literal2345) : tree2346 = literal2346 := by
  rw [tree2346_def, child0, child1]
  rfl
theorem node2346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2336 live2336 coloured2336 = result2336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2345 live2345 coloured2345 = result2345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2346 live2346 coloured2346 = result2346 := by
  rw [tree2346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2336 coloured2336 at child
  try dsimp only [live2346, coloured2346]
  rw [child]
  dsimp only [result2336]
  have child := child1
  unfold live2345 coloured2345 at child
  try dsimp only [live2346, coloured2346]
  rw [child]
  dsimp only [result2345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2347_agree_conditional : tree2347 = literal2347 := by
  rw [tree2347_def]
  rfl
theorem node2347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2347 live2347 coloured2347 = result2347 := by
  rw [tree2347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2348_agree_conditional
    (child0 : tree2346 = literal2346)
    (child1 : tree2347 = literal2347) : tree2348 = literal2348 := by
  rw [tree2348_def, child0, child1]
  rfl
theorem node2348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2346 live2346 coloured2346 = result2346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2347 live2347 coloured2347 = result2347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2348 live2348 coloured2348 = result2348 := by
  rw [tree2348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2346 coloured2346 at child
  try dsimp only [live2348, coloured2348]
  rw [child]
  dsimp only [result2346]
  have child := child1
  unfold live2347 coloured2347 at child
  try dsimp only [live2348, coloured2348]
  rw [child]
  dsimp only [result2347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2349_agree_conditional : tree2349 = literal2349 := by
  rw [tree2349_def]
  rfl
theorem node2349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2349 live2349 coloured2349 = result2349 := by
  rw [tree2349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2350_agree_conditional
    (child0 : tree2348 = literal2348)
    (child1 : tree2349 = literal2349) : tree2350 = literal2350 := by
  rw [tree2350_def, child0, child1]
  rfl
theorem node2350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2348 live2348 coloured2348 = result2348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2349 live2349 coloured2349 = result2349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2350 live2350 coloured2350 = result2350 := by
  rw [tree2350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2348 coloured2348 at child
  try dsimp only [live2350, coloured2350]
  rw [child]
  dsimp only [result2348]
  have child := child1
  unfold live2349 coloured2349 at child
  try dsimp only [live2350, coloured2350]
  rw [child]
  dsimp only [result2349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2351_agree_conditional : tree2351 = literal2351 := by
  rw [tree2351_def]
  rfl
theorem node2351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2351 live2351 coloured2351 = result2351 := by
  rw [tree2351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2352_agree_conditional
    (child0 : tree2350 = literal2350)
    (child1 : tree2351 = literal2351) : tree2352 = literal2352 := by
  rw [tree2352_def, child0, child1]
  rfl
theorem node2352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2350 live2350 coloured2350 = result2350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2351 live2351 coloured2351 = result2351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2352 live2352 coloured2352 = result2352 := by
  rw [tree2352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2350 coloured2350 at child
  try dsimp only [live2352, coloured2352]
  rw [child]
  dsimp only [result2350]
  have child := child1
  unfold live2351 coloured2351 at child
  try dsimp only [live2352, coloured2352]
  rw [child]
  dsimp only [result2351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2353_agree_conditional : tree2353 = literal2353 := by
  rw [tree2353_def]
  rfl
theorem node2353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2353 live2353 coloured2353 = result2353 := by
  rw [tree2353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2354_agree_conditional
    (child0 : tree2352 = literal2352)
    (child1 : tree2353 = literal2353) : tree2354 = literal2354 := by
  rw [tree2354_def, child0, child1]
  rfl
theorem node2354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2352 live2352 coloured2352 = result2352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2353 live2353 coloured2353 = result2353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2354 live2354 coloured2354 = result2354 := by
  rw [tree2354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2352 coloured2352 at child
  try dsimp only [live2354, coloured2354]
  rw [child]
  dsimp only [result2352]
  have child := child1
  unfold live2353 coloured2353 at child
  try dsimp only [live2354, coloured2354]
  rw [child]
  dsimp only [result2353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2355_agree_conditional : tree2355 = literal2355 := by
  rw [tree2355_def]
  rfl
theorem node2355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2355 live2355 coloured2355 = result2355 := by
  rw [tree2355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2356_agree_conditional
    (child0 : tree2354 = literal2354)
    (child1 : tree2355 = literal2355) : tree2356 = literal2356 := by
  rw [tree2356_def, child0, child1]
  rfl
theorem node2356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2354 live2354 coloured2354 = result2354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2355 live2355 coloured2355 = result2355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2356 live2356 coloured2356 = result2356 := by
  rw [tree2356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2354 coloured2354 at child
  try dsimp only [live2356, coloured2356]
  rw [child]
  dsimp only [result2354]
  have child := child1
  unfold live2355 coloured2355 at child
  try dsimp only [live2356, coloured2356]
  rw [child]
  dsimp only [result2355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2357_agree_conditional : tree2357 = literal2357 := by
  rw [tree2357_def]
  rfl
theorem node2357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2357 live2357 coloured2357 = result2357 := by
  rw [tree2357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2358_agree_conditional
    (child0 : tree2356 = literal2356)
    (child1 : tree2357 = literal2357) : tree2358 = literal2358 := by
  rw [tree2358_def, child0, child1]
  rfl
theorem node2358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2356 live2356 coloured2356 = result2356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2357 live2357 coloured2357 = result2357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2358 live2358 coloured2358 = result2358 := by
  rw [tree2358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2356 coloured2356 at child
  try dsimp only [live2358, coloured2358]
  rw [child]
  dsimp only [result2356]
  have child := child1
  unfold live2357 coloured2357 at child
  try dsimp only [live2358, coloured2358]
  rw [child]
  dsimp only [result2357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2359_agree_conditional : tree2359 = literal2359 := by
  rw [tree2359_def]
  rfl
theorem node2359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2359 live2359 coloured2359 = result2359 := by
  rw [tree2359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2360_agree_conditional
    (child0 : tree2358 = literal2358)
    (child1 : tree2359 = literal2359) : tree2360 = literal2360 := by
  rw [tree2360_def, child0, child1]
  rfl
theorem node2360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2358 live2358 coloured2358 = result2358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2359 live2359 coloured2359 = result2359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2360 live2360 coloured2360 = result2360 := by
  rw [tree2360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2358 coloured2358 at child
  try dsimp only [live2360, coloured2360]
  rw [child]
  dsimp only [result2358]
  have child := child1
  unfold live2359 coloured2359 at child
  try dsimp only [live2360, coloured2360]
  rw [child]
  dsimp only [result2359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2361_agree_conditional : tree2361 = literal2361 := by
  rw [tree2361_def]
  rfl
theorem node2361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2361 live2361 coloured2361 = result2361 := by
  rw [tree2361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2362_agree_conditional
    (child0 : tree2360 = literal2360)
    (child1 : tree2361 = literal2361) : tree2362 = literal2362 := by
  rw [tree2362_def, child0, child1]
  rfl
theorem node2362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2360 live2360 coloured2360 = result2360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2361 live2361 coloured2361 = result2361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2362 live2362 coloured2362 = result2362 := by
  rw [tree2362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2360 coloured2360 at child
  try dsimp only [live2362, coloured2362]
  rw [child]
  dsimp only [result2360]
  have child := child1
  unfold live2361 coloured2361 at child
  try dsimp only [live2362, coloured2362]
  rw [child]
  dsimp only [result2361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2363_agree_conditional : tree2363 = literal2363 := by
  rw [tree2363_def]
  rfl
theorem node2363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2363 live2363 coloured2363 = result2363 := by
  rw [tree2363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2364_agree_conditional : tree2364 = literal2364 := by
  rw [tree2364_def]
  rfl
theorem node2364_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2364 live2364 coloured2364 = result2364 := by
  rw [tree2364_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2365_agree_conditional
    (child0 : tree2363 = literal2363)
    (child1 : tree2364 = literal2364) : tree2365 = literal2365 := by
  rw [tree2365_def, child0, child1]
  rfl
theorem node2365_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2363 live2363 coloured2363 = result2363)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2364 live2364 coloured2364 = result2364) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2365 live2365 coloured2365 = result2365 := by
  rw [tree2365_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2363 coloured2363 at child
  try dsimp only [live2365, coloured2365]
  rw [child]
  dsimp only [result2363]
  have child := child1
  unfold live2364 coloured2364 at child
  try dsimp only [live2365, coloured2365]
  rw [child]
  dsimp only [result2364]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2366_agree_conditional : tree2366 = literal2366 := by
  rw [tree2366_def]
  rfl
theorem node2366_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2366 live2366 coloured2366 = result2366 := by
  rw [tree2366_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2367_agree_conditional : tree2367 = literal2367 := by
  rw [tree2367_def]
  rfl
theorem node2367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2367 live2367 coloured2367 = result2367 := by
  rw [tree2367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2368_agree_conditional
    (child0 : tree2366 = literal2366)
    (child1 : tree2367 = literal2367) : tree2368 = literal2368 := by
  rw [tree2368_def, child0, child1]
  rfl
theorem node2368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2366 live2366 coloured2366 = result2366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2367 live2367 coloured2367 = result2367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2368 live2368 coloured2368 = result2368 := by
  rw [tree2368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2366 coloured2366 at child
  try dsimp only [live2368, coloured2368]
  rw [child]
  dsimp only [result2366]
  have child := child1
  unfold live2367 coloured2367 at child
  try dsimp only [live2368, coloured2368]
  rw [child]
  dsimp only [result2367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2369_agree_conditional : tree2369 = literal2369 := by
  rw [tree2369_def]
  rfl
theorem node2369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2369 live2369 coloured2369 = result2369 := by
  rw [tree2369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2370_agree_conditional
    (child0 : tree2368 = literal2368)
    (child1 : tree2369 = literal2369) : tree2370 = literal2370 := by
  rw [tree2370_def, child0, child1]
  rfl
theorem node2370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2368 live2368 coloured2368 = result2368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2369 live2369 coloured2369 = result2369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2370 live2370 coloured2370 = result2370 := by
  rw [tree2370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2368 coloured2368 at child
  try dsimp only [live2370, coloured2370]
  rw [child]
  dsimp only [result2368]
  have child := child1
  unfold live2369 coloured2369 at child
  try dsimp only [live2370, coloured2370]
  rw [child]
  dsimp only [result2369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2371_agree_conditional
    (child0 : tree2365 = literal2365)
    (child1 : tree2370 = literal2370) : tree2371 = literal2371 := by
  rw [tree2371_def, child0, child1]
  rfl
theorem node2371_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2365 live2365 coloured2365 = result2365)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2370 live2370 coloured2370 = result2370) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2371 live2371 coloured2371 = result2371 := by
  rw [tree2371_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2365 coloured2365 at child
  try dsimp only [live2371, coloured2371]
  rw [child]
  dsimp only [result2365]
  have child := child1
  unfold live2370 coloured2370 at child
  try dsimp only [live2371, coloured2371]
  rw [child]
  dsimp only [result2370]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2372_agree_conditional
    (child0 : tree2362 = literal2362)
    (child1 : tree2371 = literal2371) : tree2372 = literal2372 := by
  rw [tree2372_def, child0, child1]
  rfl
theorem node2372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2362 live2362 coloured2362 = result2362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2371 live2371 coloured2371 = result2371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2372 live2372 coloured2372 = result2372 := by
  rw [tree2372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2362 coloured2362 at child
  try dsimp only [live2372, coloured2372]
  rw [child]
  dsimp only [result2362]
  have child := child1
  unfold live2371 coloured2371 at child
  try dsimp only [live2372, coloured2372]
  rw [child]
  dsimp only [result2371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2373_agree_conditional : tree2373 = literal2373 := by
  rw [tree2373_def]
  rfl
theorem node2373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2373 live2373 coloured2373 = result2373 := by
  rw [tree2373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2374_agree_conditional
    (child0 : tree2372 = literal2372)
    (child1 : tree2373 = literal2373) : tree2374 = literal2374 := by
  rw [tree2374_def, child0, child1]
  rfl
theorem node2374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2372 live2372 coloured2372 = result2372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2373 live2373 coloured2373 = result2373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2374 live2374 coloured2374 = result2374 := by
  rw [tree2374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2372 coloured2372 at child
  try dsimp only [live2374, coloured2374]
  rw [child]
  dsimp only [result2372]
  have child := child1
  unfold live2373 coloured2373 at child
  try dsimp only [live2374, coloured2374]
  rw [child]
  dsimp only [result2373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2375_agree_conditional : tree2375 = literal2375 := by
  rw [tree2375_def]
  rfl
theorem node2375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2375 live2375 coloured2375 = result2375 := by
  rw [tree2375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2376_agree_conditional
    (child0 : tree2374 = literal2374)
    (child1 : tree2375 = literal2375) : tree2376 = literal2376 := by
  rw [tree2376_def, child0, child1]
  rfl
theorem node2376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2374 live2374 coloured2374 = result2374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2375 live2375 coloured2375 = result2375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2376 live2376 coloured2376 = result2376 := by
  rw [tree2376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2374 coloured2374 at child
  try dsimp only [live2376, coloured2376]
  rw [child]
  dsimp only [result2374]
  have child := child1
  unfold live2375 coloured2375 at child
  try dsimp only [live2376, coloured2376]
  rw [child]
  dsimp only [result2375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2377_agree_conditional : tree2377 = literal2377 := by
  rw [tree2377_def]
  rfl
theorem node2377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2377 live2377 coloured2377 = result2377 := by
  rw [tree2377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2378_agree_conditional
    (child0 : tree2376 = literal2376)
    (child1 : tree2377 = literal2377) : tree2378 = literal2378 := by
  rw [tree2378_def, child0, child1]
  rfl
theorem node2378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2376 live2376 coloured2376 = result2376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2377 live2377 coloured2377 = result2377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2378 live2378 coloured2378 = result2378 := by
  rw [tree2378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2376 coloured2376 at child
  try dsimp only [live2378, coloured2378]
  rw [child]
  dsimp only [result2376]
  have child := child1
  unfold live2377 coloured2377 at child
  try dsimp only [live2378, coloured2378]
  rw [child]
  dsimp only [result2377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2379_agree_conditional : tree2379 = literal2379 := by
  rw [tree2379_def]
  rfl
theorem node2379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2379 live2379 coloured2379 = result2379 := by
  rw [tree2379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2380_agree_conditional : tree2380 = literal2380 := by
  rw [tree2380_def]
  rfl
theorem node2380_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2380 live2380 coloured2380 = result2380 := by
  rw [tree2380_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2381_agree_conditional
    (child0 : tree2379 = literal2379)
    (child1 : tree2380 = literal2380) : tree2381 = literal2381 := by
  rw [tree2381_def, child0, child1]
  rfl
theorem node2381_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2379 live2379 coloured2379 = result2379)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2380 live2380 coloured2380 = result2380) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2381 live2381 coloured2381 = result2381 := by
  rw [tree2381_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2379 coloured2379 at child
  try dsimp only [live2381, coloured2381]
  rw [child]
  dsimp only [result2379]
  have child := child1
  unfold live2380 coloured2380 at child
  try dsimp only [live2381, coloured2381]
  rw [child]
  dsimp only [result2380]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2382_agree_conditional : tree2382 = literal2382 := by
  rw [tree2382_def]
  rfl
theorem node2382_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2382 live2382 coloured2382 = result2382 := by
  rw [tree2382_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2383_agree_conditional
    (child0 : tree2381 = literal2381)
    (child1 : tree2382 = literal2382) : tree2383 = literal2383 := by
  rw [tree2383_def, child0, child1]
  rfl
theorem node2383_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2381 live2381 coloured2381 = result2381)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2382 live2382 coloured2382 = result2382) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2383 live2383 coloured2383 = result2383 := by
  rw [tree2383_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2381 coloured2381 at child
  try dsimp only [live2383, coloured2383]
  rw [child]
  dsimp only [result2381]
  have child := child1
  unfold live2382 coloured2382 at child
  try dsimp only [live2383, coloured2383]
  rw [child]
  dsimp only [result2382]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2384_agree_conditional : tree2384 = literal2384 := by
  rw [tree2384_def]
  rfl
theorem node2384_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2384 live2384 coloured2384 = result2384 := by
  rw [tree2384_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2385_agree_conditional : tree2385 = literal2385 := by
  rw [tree2385_def]
  rfl
theorem node2385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2385 live2385 coloured2385 = result2385 := by
  rw [tree2385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2386_agree_conditional
    (child0 : tree2384 = literal2384)
    (child1 : tree2385 = literal2385) : tree2386 = literal2386 := by
  rw [tree2386_def, child0, child1]
  rfl
theorem node2386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2384 live2384 coloured2384 = result2384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2385 live2385 coloured2385 = result2385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2386 live2386 coloured2386 = result2386 := by
  rw [tree2386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2384 coloured2384 at child
  try dsimp only [live2386, coloured2386]
  rw [child]
  dsimp only [result2384]
  have child := child1
  unfold live2385 coloured2385 at child
  try dsimp only [live2386, coloured2386]
  rw [child]
  dsimp only [result2385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2387_agree_conditional : tree2387 = literal2387 := by
  rw [tree2387_def]
  rfl
theorem node2387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2387 live2387 coloured2387 = result2387 := by
  rw [tree2387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2388_agree_conditional
    (child0 : tree2386 = literal2386)
    (child1 : tree2387 = literal2387) : tree2388 = literal2388 := by
  rw [tree2388_def, child0, child1]
  rfl
theorem node2388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2386 live2386 coloured2386 = result2386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2387 live2387 coloured2387 = result2387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2388 live2388 coloured2388 = result2388 := by
  rw [tree2388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2386 coloured2386 at child
  try dsimp only [live2388, coloured2388]
  rw [child]
  dsimp only [result2386]
  have child := child1
  unfold live2387 coloured2387 at child
  try dsimp only [live2388, coloured2388]
  rw [child]
  dsimp only [result2387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2389_agree_conditional : tree2389 = literal2389 := by
  rw [tree2389_def]
  rfl
theorem node2389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2389 live2389 coloured2389 = result2389 := by
  rw [tree2389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2390_agree_conditional
    (child0 : tree2388 = literal2388)
    (child1 : tree2389 = literal2389) : tree2390 = literal2390 := by
  rw [tree2390_def, child0, child1]
  rfl
theorem node2390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2388 live2388 coloured2388 = result2388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2389 live2389 coloured2389 = result2389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2390 live2390 coloured2390 = result2390 := by
  rw [tree2390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2388 coloured2388 at child
  try dsimp only [live2390, coloured2390]
  rw [child]
  dsimp only [result2388]
  have child := child1
  unfold live2389 coloured2389 at child
  try dsimp only [live2390, coloured2390]
  rw [child]
  dsimp only [result2389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2391_agree_conditional : tree2391 = literal2391 := by
  rw [tree2391_def]
  rfl
theorem node2391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2391 live2391 coloured2391 = result2391 := by
  rw [tree2391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2392_agree_conditional
    (child0 : tree2390 = literal2390)
    (child1 : tree2391 = literal2391) : tree2392 = literal2392 := by
  rw [tree2392_def, child0, child1]
  rfl
theorem node2392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2390 live2390 coloured2390 = result2390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2391 live2391 coloured2391 = result2391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2392 live2392 coloured2392 = result2392 := by
  rw [tree2392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2390 coloured2390 at child
  try dsimp only [live2392, coloured2392]
  rw [child]
  dsimp only [result2390]
  have child := child1
  unfold live2391 coloured2391 at child
  try dsimp only [live2392, coloured2392]
  rw [child]
  dsimp only [result2391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2393_agree_conditional : tree2393 = literal2393 := by
  rw [tree2393_def]
  rfl
theorem node2393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2393 live2393 coloured2393 = result2393 := by
  rw [tree2393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2394_agree_conditional
    (child0 : tree2392 = literal2392)
    (child1 : tree2393 = literal2393) : tree2394 = literal2394 := by
  rw [tree2394_def, child0, child1]
  rfl
theorem node2394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2392 live2392 coloured2392 = result2392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2393 live2393 coloured2393 = result2393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2394 live2394 coloured2394 = result2394 := by
  rw [tree2394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2392 coloured2392 at child
  try dsimp only [live2394, coloured2394]
  rw [child]
  dsimp only [result2392]
  have child := child1
  unfold live2393 coloured2393 at child
  try dsimp only [live2394, coloured2394]
  rw [child]
  dsimp only [result2393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2395_agree_conditional : tree2395 = literal2395 := by
  rw [tree2395_def]
  rfl
theorem node2395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2395 live2395 coloured2395 = result2395 := by
  rw [tree2395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2396_agree_conditional
    (child0 : tree2394 = literal2394)
    (child1 : tree2395 = literal2395) : tree2396 = literal2396 := by
  rw [tree2396_def, child0, child1]
  rfl
theorem node2396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2394 live2394 coloured2394 = result2394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2395 live2395 coloured2395 = result2395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2396 live2396 coloured2396 = result2396 := by
  rw [tree2396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2394 coloured2394 at child
  try dsimp only [live2396, coloured2396]
  rw [child]
  dsimp only [result2394]
  have child := child1
  unfold live2395 coloured2395 at child
  try dsimp only [live2396, coloured2396]
  rw [child]
  dsimp only [result2395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2397_agree_conditional : tree2397 = literal2397 := by
  rw [tree2397_def]
  rfl
theorem node2397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2397 live2397 coloured2397 = result2397 := by
  rw [tree2397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2398_agree_conditional
    (child0 : tree2396 = literal2396)
    (child1 : tree2397 = literal2397) : tree2398 = literal2398 := by
  rw [tree2398_def, child0, child1]
  rfl
theorem node2398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2396 live2396 coloured2396 = result2396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2397 live2397 coloured2397 = result2397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2398 live2398 coloured2398 = result2398 := by
  rw [tree2398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2396 coloured2396 at child
  try dsimp only [live2398, coloured2398]
  rw [child]
  dsimp only [result2396]
  have child := child1
  unfold live2397 coloured2397 at child
  try dsimp only [live2398, coloured2398]
  rw [child]
  dsimp only [result2397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2399_agree_conditional : tree2399 = literal2399 := by
  rw [tree2399_def]
  rfl
theorem node2399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2399 live2399 coloured2399 = result2399 := by
  rw [tree2399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages875
