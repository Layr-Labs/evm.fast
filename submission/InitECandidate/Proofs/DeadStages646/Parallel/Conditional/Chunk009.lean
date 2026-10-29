import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages646.Parallel.Data.Chunk009
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages646.Parallel
theorem node2304_cond_eq
    (child2302 : Flapjack.WordAlloc.removeDeadStructural input2302 value1342 value1 value2 = (output2302, value1344, value1))
    (child2303 : Flapjack.WordAlloc.removeDeadStructural input2303 value1344 value1 value2 = (output2303, value1345, value1)) : Flapjack.WordAlloc.removeDeadStructural input2304 value1342 value1 value2 = (output2304, value1345, value1) := by
  rw [input2304_def, output2304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2302]
  try dsimp only
  rw [child2303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2302_skip, output2303_skip]
  kernel_rfl

theorem node2305_cond_eq
    (child2299 : Flapjack.WordAlloc.removeDeadStructural input2299 value1340 value1 value2 = (output2299, value1342, value1))
    (child2304 : Flapjack.WordAlloc.removeDeadStructural input2304 value1342 value1 value2 = (output2304, value1345, value1)) : Flapjack.WordAlloc.removeDeadStructural input2305 value1340 value1 value2 = (output2305, value1345, value1) := by
  rw [input2305_def, output2305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2299]
  try dsimp only
  rw [child2304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2299_skip, output2304_skip]
  kernel_rfl

theorem node2306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2306 value1345 value1 value2 = (output2306, value1346, value1) := by
  rw [input2306_def, output2306_def]
  kernel_rfl

theorem node2307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2307 value1346 value1 value2 = (output2307, value1347, value1) := by
  rw [input2307_def, output2307_def]
  kernel_rfl

theorem node2308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2308 value1347 value1 value2 = (output2308, value1348, value1) := by
  rw [input2308_def, output2308_def]
  kernel_rfl

theorem node2309_cond_eq
    (child2307 : Flapjack.WordAlloc.removeDeadStructural input2307 value1346 value1 value2 = (output2307, value1347, value1))
    (child2308 : Flapjack.WordAlloc.removeDeadStructural input2308 value1347 value1 value2 = (output2308, value1348, value1)) : Flapjack.WordAlloc.removeDeadStructural input2309 value1346 value1 value2 = (output2309, value1348, value1) := by
  rw [input2309_def, output2309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2307]
  try dsimp only
  rw [child2308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2307_skip, output2308_skip]
  kernel_rfl

theorem node2310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2310 value1348 value1 value2 = (output2310, value1349, value1) := by
  rw [input2310_def, output2310_def]
  kernel_rfl

theorem node2311_cond_eq
    (child2309 : Flapjack.WordAlloc.removeDeadStructural input2309 value1346 value1 value2 = (output2309, value1348, value1))
    (child2310 : Flapjack.WordAlloc.removeDeadStructural input2310 value1348 value1 value2 = (output2310, value1349, value1)) : Flapjack.WordAlloc.removeDeadStructural input2311 value1346 value1 value2 = (output2311, value1349, value1) := by
  rw [input2311_def, output2311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2309]
  try dsimp only
  rw [child2310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2309_skip, output2310_skip]
  kernel_rfl

theorem node2312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2312 value1349 value1 value2 = (output2312, value1350, value1) := by
  rw [input2312_def, output2312_def]
  kernel_rfl

theorem node2313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2313 value1350 value1 value2 = (output2313, value1351, value1) := by
  rw [input2313_def, output2313_def]
  kernel_rfl

theorem node2314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2314 value1351 value1 value2 = (output2314, value1352, value1) := by
  rw [input2314_def, output2314_def]
  kernel_rfl

theorem node2315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2315 value1352 value1 value2 = (output2315, value1353, value1) := by
  rw [input2315_def, output2315_def]
  kernel_rfl

theorem node2316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2316 value1353 value1 value2 = (output2316, value1354, value1) := by
  rw [input2316_def, output2316_def]
  kernel_rfl

theorem node2317_cond_eq
    (child2315 : Flapjack.WordAlloc.removeDeadStructural input2315 value1352 value1 value2 = (output2315, value1353, value1))
    (child2316 : Flapjack.WordAlloc.removeDeadStructural input2316 value1353 value1 value2 = (output2316, value1354, value1)) : Flapjack.WordAlloc.removeDeadStructural input2317 value1352 value1 value2 = (output2317, value1354, value1) := by
  rw [input2317_def, output2317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2315]
  try dsimp only
  rw [child2316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2315_skip, output2316_skip]
  kernel_rfl

theorem node2318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2318 value1354 value1 value2 = (output2318, value1355, value1) := by
  rw [input2318_def, output2318_def]
  kernel_rfl

theorem node2319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2319 value1355 value1 value2 = (output2319, value1356, value1) := by
  rw [input2319_def, output2319_def]
  kernel_rfl

theorem node2320_cond_eq
    (child2318 : Flapjack.WordAlloc.removeDeadStructural input2318 value1354 value1 value2 = (output2318, value1355, value1))
    (child2319 : Flapjack.WordAlloc.removeDeadStructural input2319 value1355 value1 value2 = (output2319, value1356, value1)) : Flapjack.WordAlloc.removeDeadStructural input2320 value1354 value1 value2 = (output2320, value1356, value1) := by
  rw [input2320_def, output2320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2318]
  try dsimp only
  rw [child2319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2318_skip, output2319_skip]
  kernel_rfl

theorem node2321_cond_eq
    (child2317 : Flapjack.WordAlloc.removeDeadStructural input2317 value1352 value1 value2 = (output2317, value1354, value1))
    (child2320 : Flapjack.WordAlloc.removeDeadStructural input2320 value1354 value1 value2 = (output2320, value1356, value1)) : Flapjack.WordAlloc.removeDeadStructural input2321 value1352 value1 value2 = (output2321, value1356, value1) := by
  rw [input2321_def, output2321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2317]
  try dsimp only
  rw [child2320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2317_skip, output2320_skip]
  kernel_rfl

theorem node2322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2322 value1356 value1 value2 = (output2322, value1357, value1) := by
  rw [input2322_def, output2322_def]
  kernel_rfl

theorem node2323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2323 value1357 value1 value2 = (output2323, value1358, value1) := by
  rw [input2323_def, output2323_def]
  kernel_rfl

theorem node2324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2324 value1358 value1 value2 = (output2324, value1359, value1) := by
  rw [input2324_def, output2324_def]
  kernel_rfl

theorem node2325_cond_eq
    (child2323 : Flapjack.WordAlloc.removeDeadStructural input2323 value1357 value1 value2 = (output2323, value1358, value1))
    (child2324 : Flapjack.WordAlloc.removeDeadStructural input2324 value1358 value1 value2 = (output2324, value1359, value1)) : Flapjack.WordAlloc.removeDeadStructural input2325 value1357 value1 value2 = (output2325, value1359, value1) := by
  rw [input2325_def, output2325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2323]
  try dsimp only
  rw [child2324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2323_skip, output2324_skip]
  kernel_rfl

theorem node2326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2326 value1359 value1 value2 = (output2326, value1360, value1) := by
  rw [input2326_def, output2326_def]
  kernel_rfl

theorem node2327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2327 value1360 value1 value2 = (output2327, value1361, value1) := by
  rw [input2327_def, output2327_def]
  kernel_rfl

theorem node2328_cond_eq
    (child2326 : Flapjack.WordAlloc.removeDeadStructural input2326 value1359 value1 value2 = (output2326, value1360, value1))
    (child2327 : Flapjack.WordAlloc.removeDeadStructural input2327 value1360 value1 value2 = (output2327, value1361, value1)) : Flapjack.WordAlloc.removeDeadStructural input2328 value1359 value1 value2 = (output2328, value1361, value1) := by
  rw [input2328_def, output2328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2326]
  try dsimp only
  rw [child2327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2326_skip, output2327_skip]
  kernel_rfl

theorem node2329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2329 value1361 value1 value2 = (output2329, value1362, value1) := by
  rw [input2329_def, output2329_def]
  kernel_rfl

theorem node2330_cond_eq
    (child2328 : Flapjack.WordAlloc.removeDeadStructural input2328 value1359 value1 value2 = (output2328, value1361, value1))
    (child2329 : Flapjack.WordAlloc.removeDeadStructural input2329 value1361 value1 value2 = (output2329, value1362, value1)) : Flapjack.WordAlloc.removeDeadStructural input2330 value1359 value1 value2 = (output2330, value1362, value1) := by
  rw [input2330_def, output2330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2328]
  try dsimp only
  rw [child2329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2328_skip, output2329_skip]
  kernel_rfl

theorem node2331_cond_eq
    (child2325 : Flapjack.WordAlloc.removeDeadStructural input2325 value1357 value1 value2 = (output2325, value1359, value1))
    (child2330 : Flapjack.WordAlloc.removeDeadStructural input2330 value1359 value1 value2 = (output2330, value1362, value1)) : Flapjack.WordAlloc.removeDeadStructural input2331 value1357 value1 value2 = (output2331, value1362, value1) := by
  rw [input2331_def, output2331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2325]
  try dsimp only
  rw [child2330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2325_skip, output2330_skip]
  kernel_rfl

theorem node2332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2332 value1362 value1 value2 = (output2332, value1363, value1) := by
  rw [input2332_def, output2332_def]
  kernel_rfl

theorem node2333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2333 value1363 value1 value2 = (output2333, value1364, value1) := by
  rw [input2333_def, output2333_def]
  kernel_rfl

theorem node2334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2334 value1364 value1 value2 = (output2334, value1365, value1) := by
  rw [input2334_def, output2334_def]
  kernel_rfl

theorem node2335_cond_eq
    (child2333 : Flapjack.WordAlloc.removeDeadStructural input2333 value1363 value1 value2 = (output2333, value1364, value1))
    (child2334 : Flapjack.WordAlloc.removeDeadStructural input2334 value1364 value1 value2 = (output2334, value1365, value1)) : Flapjack.WordAlloc.removeDeadStructural input2335 value1363 value1 value2 = (output2335, value1365, value1) := by
  rw [input2335_def, output2335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2333]
  try dsimp only
  rw [child2334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2333_skip, output2334_skip]
  kernel_rfl

theorem node2336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2336 value1365 value1 value2 = (output2336, value1366, value1) := by
  rw [input2336_def, output2336_def]
  kernel_rfl

theorem node2337_cond_eq
    (child2335 : Flapjack.WordAlloc.removeDeadStructural input2335 value1363 value1 value2 = (output2335, value1365, value1))
    (child2336 : Flapjack.WordAlloc.removeDeadStructural input2336 value1365 value1 value2 = (output2336, value1366, value1)) : Flapjack.WordAlloc.removeDeadStructural input2337 value1363 value1 value2 = (output2337, value1366, value1) := by
  rw [input2337_def, output2337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2335]
  try dsimp only
  rw [child2336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2335_skip, output2336_skip]
  kernel_rfl

theorem node2338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2338 value1366 value1 value2 = (output2338, value1367, value1) := by
  rw [input2338_def, output2338_def]
  kernel_rfl

theorem node2339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2339 value1367 value1 value2 = (output2339, value1368, value1) := by
  rw [input2339_def, output2339_def]
  kernel_rfl

theorem node2340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2340 value1368 value1 value2 = (output2340, value1369, value1) := by
  rw [input2340_def, output2340_def]
  kernel_rfl

theorem node2341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2341 value1369 value1 value2 = (output2341, value1370, value1) := by
  rw [input2341_def, output2341_def]
  kernel_rfl

theorem node2342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2342 value1370 value1 value2 = (output2342, value1371, value1) := by
  rw [input2342_def, output2342_def]
  kernel_rfl

theorem node2343_cond_eq
    (child2341 : Flapjack.WordAlloc.removeDeadStructural input2341 value1369 value1 value2 = (output2341, value1370, value1))
    (child2342 : Flapjack.WordAlloc.removeDeadStructural input2342 value1370 value1 value2 = (output2342, value1371, value1)) : Flapjack.WordAlloc.removeDeadStructural input2343 value1369 value1 value2 = (output2343, value1371, value1) := by
  rw [input2343_def, output2343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2341]
  try dsimp only
  rw [child2342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2341_skip, output2342_skip]
  kernel_rfl

theorem node2344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2344 value1371 value1 value2 = (output2344, value1372, value1) := by
  rw [input2344_def, output2344_def]
  kernel_rfl

theorem node2345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2345 value1372 value1 value2 = (output2345, value1373, value1) := by
  rw [input2345_def, output2345_def]
  kernel_rfl

theorem node2346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2346 value1373 value1 value2 = (output2346, value1374, value1) := by
  rw [input2346_def, output2346_def]
  kernel_rfl

theorem node2347_cond_eq
    (child2345 : Flapjack.WordAlloc.removeDeadStructural input2345 value1372 value1 value2 = (output2345, value1373, value1))
    (child2346 : Flapjack.WordAlloc.removeDeadStructural input2346 value1373 value1 value2 = (output2346, value1374, value1)) : Flapjack.WordAlloc.removeDeadStructural input2347 value1372 value1 value2 = (output2347, value1374, value1) := by
  rw [input2347_def, output2347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2345]
  try dsimp only
  rw [child2346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2345_skip, output2346_skip]
  kernel_rfl

theorem node2348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2348 value1374 value1 value2 = (output2348, value1375, value1) := by
  rw [input2348_def, output2348_def]
  kernel_rfl

theorem node2349_cond_eq
    (child2347 : Flapjack.WordAlloc.removeDeadStructural input2347 value1372 value1 value2 = (output2347, value1374, value1))
    (child2348 : Flapjack.WordAlloc.removeDeadStructural input2348 value1374 value1 value2 = (output2348, value1375, value1)) : Flapjack.WordAlloc.removeDeadStructural input2349 value1372 value1 value2 = (output2349, value1375, value1) := by
  rw [input2349_def, output2349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2347]
  try dsimp only
  rw [child2348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2347_skip, output2348_skip]
  kernel_rfl

theorem node2350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2350 value1375 value1 value2 = (output2350, value1376, value1) := by
  rw [input2350_def, output2350_def]
  kernel_rfl

theorem node2351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2351 value1376 value1 value2 = (output2351, value1377, value1) := by
  rw [input2351_def, output2351_def]
  kernel_rfl

theorem node2352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2352 value1377 value1 value2 = (output2352, value1378, value1) := by
  rw [input2352_def, output2352_def]
  kernel_rfl

theorem node2353_cond_eq
    (child2351 : Flapjack.WordAlloc.removeDeadStructural input2351 value1376 value1 value2 = (output2351, value1377, value1))
    (child2352 : Flapjack.WordAlloc.removeDeadStructural input2352 value1377 value1 value2 = (output2352, value1378, value1)) : Flapjack.WordAlloc.removeDeadStructural input2353 value1376 value1 value2 = (output2353, value1378, value1) := by
  rw [input2353_def, output2353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2351]
  try dsimp only
  rw [child2352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2351_skip, output2352_skip]
  kernel_rfl

theorem node2354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2354 value1378 value1 value2 = (output2354, value1379, value1) := by
  rw [input2354_def, output2354_def]
  kernel_rfl

theorem node2355_cond_eq
    (child2353 : Flapjack.WordAlloc.removeDeadStructural input2353 value1376 value1 value2 = (output2353, value1378, value1))
    (child2354 : Flapjack.WordAlloc.removeDeadStructural input2354 value1378 value1 value2 = (output2354, value1379, value1)) : Flapjack.WordAlloc.removeDeadStructural input2355 value1376 value1 value2 = (output2355, value1379, value1) := by
  rw [input2355_def, output2355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2353]
  try dsimp only
  rw [child2354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2353_skip, output2354_skip]
  kernel_rfl

theorem node2356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2356 value1379 value1 value2 = (output2356, value1380, value1) := by
  rw [input2356_def, output2356_def]
  kernel_rfl

theorem node2357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2357 value1380 value1 value2 = (output2357, value1381, value1) := by
  rw [input2357_def, output2357_def]
  kernel_rfl

theorem node2358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2358 value1381 value1 value2 = (output2358, value1381, value1) := by
  rw [input2358_def, output2358_def]
  kernel_rfl

theorem node2359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2359 value1381 value1 value2 = (output2359, value1381, value1) := by
  rw [input2359_def, output2359_def]
  kernel_rfl

theorem node2360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2360 value1381 value1 value2 = (output2360, value1382, value1) := by
  rw [input2360_def, output2360_def]
  kernel_rfl

theorem node2361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2361 value1382 value1 value2 = (output2361, value1383, value1) := by
  rw [input2361_def, output2361_def]
  kernel_rfl

theorem node2362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2362 value1383 value1 value2 = (output2362, value1384, value1) := by
  rw [input2362_def, output2362_def]
  kernel_rfl

theorem node2363_cond_eq
    (child2361 : Flapjack.WordAlloc.removeDeadStructural input2361 value1382 value1 value2 = (output2361, value1383, value1))
    (child2362 : Flapjack.WordAlloc.removeDeadStructural input2362 value1383 value1 value2 = (output2362, value1384, value1)) : Flapjack.WordAlloc.removeDeadStructural input2363 value1382 value1 value2 = (output2363, value1384, value1) := by
  rw [input2363_def, output2363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2361]
  try dsimp only
  rw [child2362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2361_skip, output2362_skip]
  kernel_rfl

theorem node2364_cond_eq
    (child2360 : Flapjack.WordAlloc.removeDeadStructural input2360 value1381 value1 value2 = (output2360, value1382, value1))
    (child2363 : Flapjack.WordAlloc.removeDeadStructural input2363 value1382 value1 value2 = (output2363, value1384, value1)) : Flapjack.WordAlloc.removeDeadStructural input2364 value1381 value1 value2 = (output2364, value1384, value1) := by
  rw [input2364_def, output2364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2360]
  try dsimp only
  rw [child2363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2360_skip, output2363_skip]
  kernel_rfl

theorem node2365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2365 value1384 value1 value2 = (output2365, value1385, value1) := by
  rw [input2365_def, output2365_def]
  kernel_rfl

theorem node2366_cond_eq
    (child2364 : Flapjack.WordAlloc.removeDeadStructural input2364 value1381 value1 value2 = (output2364, value1384, value1))
    (child2365 : Flapjack.WordAlloc.removeDeadStructural input2365 value1384 value1 value2 = (output2365, value1385, value1)) : Flapjack.WordAlloc.removeDeadStructural input2366 value1381 value1 value2 = (output2366, value1385, value1) := by
  rw [input2366_def, output2366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2364]
  try dsimp only
  rw [child2365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2364_skip, output2365_skip]
  kernel_rfl

theorem node2367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2367 value1385 value1 value2 = (output2367, value1386, value1) := by
  rw [input2367_def, output2367_def]
  kernel_rfl

theorem node2368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2368 value1386 value1 value2 = (output2368, value1387, value1) := by
  rw [input2368_def, output2368_def]
  kernel_rfl

theorem node2369_cond_eq
    (child2367 : Flapjack.WordAlloc.removeDeadStructural input2367 value1385 value1 value2 = (output2367, value1386, value1))
    (child2368 : Flapjack.WordAlloc.removeDeadStructural input2368 value1386 value1 value2 = (output2368, value1387, value1)) : Flapjack.WordAlloc.removeDeadStructural input2369 value1385 value1 value2 = (output2369, value1387, value1) := by
  rw [input2369_def, output2369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2367]
  try dsimp only
  rw [child2368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2367_skip, output2368_skip]
  kernel_rfl

theorem node2370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2370 value1387 value1 value2 = (output2370, value1388, value1) := by
  rw [input2370_def, output2370_def]
  kernel_rfl

theorem node2371_cond_eq
    (child2369 : Flapjack.WordAlloc.removeDeadStructural input2369 value1385 value1 value2 = (output2369, value1387, value1))
    (child2370 : Flapjack.WordAlloc.removeDeadStructural input2370 value1387 value1 value2 = (output2370, value1388, value1)) : Flapjack.WordAlloc.removeDeadStructural input2371 value1385 value1 value2 = (output2371, value1388, value1) := by
  rw [input2371_def, output2371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2369]
  try dsimp only
  rw [child2370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2369_skip, output2370_skip]
  kernel_rfl

theorem node2372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2372 value1388 value1 value2 = (output2372, value1389, value1) := by
  rw [input2372_def, output2372_def]
  kernel_rfl

theorem node2373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2373 value1389 value1 value2 = (output2373, value1390, value1) := by
  rw [input2373_def, output2373_def]
  kernel_rfl

theorem node2374_cond_eq
    (child2372 : Flapjack.WordAlloc.removeDeadStructural input2372 value1388 value1 value2 = (output2372, value1389, value1))
    (child2373 : Flapjack.WordAlloc.removeDeadStructural input2373 value1389 value1 value2 = (output2373, value1390, value1)) : Flapjack.WordAlloc.removeDeadStructural input2374 value1388 value1 value2 = (output2374, value1390, value1) := by
  rw [input2374_def, output2374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2372]
  try dsimp only
  rw [child2373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2372_skip, output2373_skip]
  kernel_rfl

theorem node2375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2375 value1390 value1 value2 = (output2375, value1391, value1) := by
  rw [input2375_def, output2375_def]
  kernel_rfl

theorem node2376_cond_eq
    (child2374 : Flapjack.WordAlloc.removeDeadStructural input2374 value1388 value1 value2 = (output2374, value1390, value1))
    (child2375 : Flapjack.WordAlloc.removeDeadStructural input2375 value1390 value1 value2 = (output2375, value1391, value1)) : Flapjack.WordAlloc.removeDeadStructural input2376 value1388 value1 value2 = (output2376, value1391, value1) := by
  rw [input2376_def, output2376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2374]
  try dsimp only
  rw [child2375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2374_skip, output2375_skip]
  kernel_rfl

theorem node2377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2377 value1391 value1 value2 = (output2377, value1392, value1) := by
  rw [input2377_def, output2377_def]
  kernel_rfl

theorem node2378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2378 value1392 value1 value2 = (output2378, value1393, value1) := by
  rw [input2378_def, output2378_def]
  kernel_rfl

theorem node2379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2379 value1393 value1 value2 = (output2379, value1394, value1) := by
  rw [input2379_def, output2379_def]
  kernel_rfl

theorem node2380_cond_eq
    (child2378 : Flapjack.WordAlloc.removeDeadStructural input2378 value1392 value1 value2 = (output2378, value1393, value1))
    (child2379 : Flapjack.WordAlloc.removeDeadStructural input2379 value1393 value1 value2 = (output2379, value1394, value1)) : Flapjack.WordAlloc.removeDeadStructural input2380 value1392 value1 value2 = (output2380, value1394, value1) := by
  rw [input2380_def, output2380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2378]
  try dsimp only
  rw [child2379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2378_skip, output2379_skip]
  kernel_rfl

theorem node2381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2381 value1394 value1 value2 = (output2381, value1395, value1) := by
  rw [input2381_def, output2381_def]
  kernel_rfl

theorem node2382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2382 value1395 value1 value2 = (output2382, value1396, value1) := by
  rw [input2382_def, output2382_def]
  kernel_rfl

theorem node2383_cond_eq
    (child2381 : Flapjack.WordAlloc.removeDeadStructural input2381 value1394 value1 value2 = (output2381, value1395, value1))
    (child2382 : Flapjack.WordAlloc.removeDeadStructural input2382 value1395 value1 value2 = (output2382, value1396, value1)) : Flapjack.WordAlloc.removeDeadStructural input2383 value1394 value1 value2 = (output2383, value1396, value1) := by
  rw [input2383_def, output2383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2381]
  try dsimp only
  rw [child2382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2381_skip, output2382_skip]
  kernel_rfl

theorem node2384_cond_eq
    (child2380 : Flapjack.WordAlloc.removeDeadStructural input2380 value1392 value1 value2 = (output2380, value1394, value1))
    (child2383 : Flapjack.WordAlloc.removeDeadStructural input2383 value1394 value1 value2 = (output2383, value1396, value1)) : Flapjack.WordAlloc.removeDeadStructural input2384 value1392 value1 value2 = (output2384, value1396, value1) := by
  rw [input2384_def, output2384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2380]
  try dsimp only
  rw [child2383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2380_skip, output2383_skip]
  kernel_rfl

theorem node2385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2385 value1396 value1 value2 = (output2385, value1397, value1) := by
  rw [input2385_def, output2385_def]
  kernel_rfl

theorem node2386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2386 value1397 value1 value2 = (output2386, value1398, value1) := by
  rw [input2386_def, output2386_def]
  kernel_rfl

theorem node2387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2387 value1398 value1 value2 = (output2387, value1399, value1) := by
  rw [input2387_def, output2387_def]
  kernel_rfl

theorem node2388_cond_eq
    (child2386 : Flapjack.WordAlloc.removeDeadStructural input2386 value1397 value1 value2 = (output2386, value1398, value1))
    (child2387 : Flapjack.WordAlloc.removeDeadStructural input2387 value1398 value1 value2 = (output2387, value1399, value1)) : Flapjack.WordAlloc.removeDeadStructural input2388 value1397 value1 value2 = (output2388, value1399, value1) := by
  rw [input2388_def, output2388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2386]
  try dsimp only
  rw [child2387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2386_skip, output2387_skip]
  kernel_rfl

theorem node2389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2389 value1399 value1 value2 = (output2389, value1400, value1) := by
  rw [input2389_def, output2389_def]
  kernel_rfl

theorem node2390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2390 value1400 value1 value2 = (output2390, value1401, value1) := by
  rw [input2390_def, output2390_def]
  kernel_rfl

theorem node2391_cond_eq
    (child2389 : Flapjack.WordAlloc.removeDeadStructural input2389 value1399 value1 value2 = (output2389, value1400, value1))
    (child2390 : Flapjack.WordAlloc.removeDeadStructural input2390 value1400 value1 value2 = (output2390, value1401, value1)) : Flapjack.WordAlloc.removeDeadStructural input2391 value1399 value1 value2 = (output2391, value1401, value1) := by
  rw [input2391_def, output2391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2389]
  try dsimp only
  rw [child2390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2389_skip, output2390_skip]
  kernel_rfl

theorem node2392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2392 value1401 value1 value2 = (output2392, value1402, value1) := by
  rw [input2392_def, output2392_def]
  kernel_rfl

theorem node2393_cond_eq
    (child2391 : Flapjack.WordAlloc.removeDeadStructural input2391 value1399 value1 value2 = (output2391, value1401, value1))
    (child2392 : Flapjack.WordAlloc.removeDeadStructural input2392 value1401 value1 value2 = (output2392, value1402, value1)) : Flapjack.WordAlloc.removeDeadStructural input2393 value1399 value1 value2 = (output2393, value1402, value1) := by
  rw [input2393_def, output2393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2391]
  try dsimp only
  rw [child2392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2391_skip, output2392_skip]
  kernel_rfl

theorem node2394_cond_eq
    (child2388 : Flapjack.WordAlloc.removeDeadStructural input2388 value1397 value1 value2 = (output2388, value1399, value1))
    (child2393 : Flapjack.WordAlloc.removeDeadStructural input2393 value1399 value1 value2 = (output2393, value1402, value1)) : Flapjack.WordAlloc.removeDeadStructural input2394 value1397 value1 value2 = (output2394, value1402, value1) := by
  rw [input2394_def, output2394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2388]
  try dsimp only
  rw [child2393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2388_skip, output2393_skip]
  kernel_rfl

theorem node2395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2395 value1402 value1 value2 = (output2395, value1403, value1) := by
  rw [input2395_def, output2395_def]
  kernel_rfl

theorem node2396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2396 value1403 value1 value2 = (output2396, value1404, value1) := by
  rw [input2396_def, output2396_def]
  kernel_rfl

theorem node2397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2397 value1404 value1 value2 = (output2397, value1405, value1) := by
  rw [input2397_def, output2397_def]
  kernel_rfl

theorem node2398_cond_eq
    (child2396 : Flapjack.WordAlloc.removeDeadStructural input2396 value1403 value1 value2 = (output2396, value1404, value1))
    (child2397 : Flapjack.WordAlloc.removeDeadStructural input2397 value1404 value1 value2 = (output2397, value1405, value1)) : Flapjack.WordAlloc.removeDeadStructural input2398 value1403 value1 value2 = (output2398, value1405, value1) := by
  rw [input2398_def, output2398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2396]
  try dsimp only
  rw [child2397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2396_skip, output2397_skip]
  kernel_rfl

theorem node2399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2399 value1405 value1 value2 = (output2399, value1406, value1) := by
  rw [input2399_def, output2399_def]
  kernel_rfl

theorem node2400_cond_eq
    (child2398 : Flapjack.WordAlloc.removeDeadStructural input2398 value1403 value1 value2 = (output2398, value1405, value1))
    (child2399 : Flapjack.WordAlloc.removeDeadStructural input2399 value1405 value1 value2 = (output2399, value1406, value1)) : Flapjack.WordAlloc.removeDeadStructural input2400 value1403 value1 value2 = (output2400, value1406, value1) := by
  rw [input2400_def, output2400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2398]
  try dsimp only
  rw [child2399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2398_skip, output2399_skip]
  kernel_rfl

theorem node2401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2401 value1406 value1 value2 = (output2401, value1407, value1) := by
  rw [input2401_def, output2401_def]
  kernel_rfl

theorem node2402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2402 value1407 value1 value2 = (output2402, value1408, value1) := by
  rw [input2402_def, output2402_def]
  kernel_rfl

theorem node2403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2403 value1408 value1 value2 = (output2403, value1409, value1) := by
  rw [input2403_def, output2403_def]
  kernel_rfl

theorem node2404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2404 value1409 value1 value2 = (output2404, value1410, value1) := by
  rw [input2404_def, output2404_def]
  kernel_rfl

theorem node2405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2405 value1410 value1 value2 = (output2405, value1411, value1) := by
  rw [input2405_def, output2405_def]
  kernel_rfl

theorem node2406_cond_eq
    (child2404 : Flapjack.WordAlloc.removeDeadStructural input2404 value1409 value1 value2 = (output2404, value1410, value1))
    (child2405 : Flapjack.WordAlloc.removeDeadStructural input2405 value1410 value1 value2 = (output2405, value1411, value1)) : Flapjack.WordAlloc.removeDeadStructural input2406 value1409 value1 value2 = (output2406, value1411, value1) := by
  rw [input2406_def, output2406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2404]
  try dsimp only
  rw [child2405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2404_skip, output2405_skip]
  kernel_rfl

theorem node2407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2407 value1411 value1 value2 = (output2407, value1412, value1) := by
  rw [input2407_def, output2407_def]
  kernel_rfl

theorem node2408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2408 value1412 value1 value2 = (output2408, value1413, value1) := by
  rw [input2408_def, output2408_def]
  kernel_rfl

theorem node2409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2409 value1413 value1 value2 = (output2409, value1414, value1) := by
  rw [input2409_def, output2409_def]
  kernel_rfl

theorem node2410_cond_eq
    (child2408 : Flapjack.WordAlloc.removeDeadStructural input2408 value1412 value1 value2 = (output2408, value1413, value1))
    (child2409 : Flapjack.WordAlloc.removeDeadStructural input2409 value1413 value1 value2 = (output2409, value1414, value1)) : Flapjack.WordAlloc.removeDeadStructural input2410 value1412 value1 value2 = (output2410, value1414, value1) := by
  rw [input2410_def, output2410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2408]
  try dsimp only
  rw [child2409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2408_skip, output2409_skip]
  kernel_rfl

theorem node2411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2411 value1414 value1 value2 = (output2411, value1415, value1) := by
  rw [input2411_def, output2411_def]
  kernel_rfl

theorem node2412_cond_eq
    (child2410 : Flapjack.WordAlloc.removeDeadStructural input2410 value1412 value1 value2 = (output2410, value1414, value1))
    (child2411 : Flapjack.WordAlloc.removeDeadStructural input2411 value1414 value1 value2 = (output2411, value1415, value1)) : Flapjack.WordAlloc.removeDeadStructural input2412 value1412 value1 value2 = (output2412, value1415, value1) := by
  rw [input2412_def, output2412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2410]
  try dsimp only
  rw [child2411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2410_skip, output2411_skip]
  kernel_rfl

theorem node2413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2413 value1415 value1 value2 = (output2413, value1416, value1) := by
  rw [input2413_def, output2413_def]
  kernel_rfl

theorem node2414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2414 value1416 value1 value2 = (output2414, value1417, value1) := by
  rw [input2414_def, output2414_def]
  kernel_rfl

theorem node2415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2415 value1417 value1 value2 = (output2415, value1418, value1) := by
  rw [input2415_def, output2415_def]
  kernel_rfl

theorem node2416_cond_eq
    (child2414 : Flapjack.WordAlloc.removeDeadStructural input2414 value1416 value1 value2 = (output2414, value1417, value1))
    (child2415 : Flapjack.WordAlloc.removeDeadStructural input2415 value1417 value1 value2 = (output2415, value1418, value1)) : Flapjack.WordAlloc.removeDeadStructural input2416 value1416 value1 value2 = (output2416, value1418, value1) := by
  rw [input2416_def, output2416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2414]
  try dsimp only
  rw [child2415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2414_skip, output2415_skip]
  kernel_rfl

theorem node2417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2417 value1418 value1 value2 = (output2417, value1419, value1) := by
  rw [input2417_def, output2417_def]
  kernel_rfl

theorem node2418_cond_eq
    (child2416 : Flapjack.WordAlloc.removeDeadStructural input2416 value1416 value1 value2 = (output2416, value1418, value1))
    (child2417 : Flapjack.WordAlloc.removeDeadStructural input2417 value1418 value1 value2 = (output2417, value1419, value1)) : Flapjack.WordAlloc.removeDeadStructural input2418 value1416 value1 value2 = (output2418, value1419, value1) := by
  rw [input2418_def, output2418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2416]
  try dsimp only
  rw [child2417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2416_skip, output2417_skip]
  kernel_rfl

theorem node2419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2419 value1419 value1 value2 = (output2419, value1420, value1) := by
  rw [input2419_def, output2419_def]
  kernel_rfl

theorem node2420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2420 value1420 value1 value2 = (output2420, value1421, value1) := by
  rw [input2420_def, output2420_def]
  kernel_rfl

theorem node2421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2421 value1421 value1 value2 = (output2421, value1421, value1) := by
  rw [input2421_def, output2421_def]
  kernel_rfl

theorem node2422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2422 value1421 value1 value2 = (output2422, value1421, value1) := by
  rw [input2422_def, output2422_def]
  kernel_rfl

theorem node2423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2423 value1421 value1 value2 = (output2423, value1422, value1) := by
  rw [input2423_def, output2423_def]
  kernel_rfl

theorem node2424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2424 value1422 value1 value2 = (output2424, value1423, value1) := by
  rw [input2424_def, output2424_def]
  kernel_rfl

theorem node2425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2425 value1423 value1 value2 = (output2425, value1424, value1) := by
  rw [input2425_def, output2425_def]
  kernel_rfl

theorem node2426_cond_eq
    (child2424 : Flapjack.WordAlloc.removeDeadStructural input2424 value1422 value1 value2 = (output2424, value1423, value1))
    (child2425 : Flapjack.WordAlloc.removeDeadStructural input2425 value1423 value1 value2 = (output2425, value1424, value1)) : Flapjack.WordAlloc.removeDeadStructural input2426 value1422 value1 value2 = (output2426, value1424, value1) := by
  rw [input2426_def, output2426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2424]
  try dsimp only
  rw [child2425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2424_skip, output2425_skip]
  kernel_rfl

theorem node2427_cond_eq
    (child2423 : Flapjack.WordAlloc.removeDeadStructural input2423 value1421 value1 value2 = (output2423, value1422, value1))
    (child2426 : Flapjack.WordAlloc.removeDeadStructural input2426 value1422 value1 value2 = (output2426, value1424, value1)) : Flapjack.WordAlloc.removeDeadStructural input2427 value1421 value1 value2 = (output2427, value1424, value1) := by
  rw [input2427_def, output2427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2423]
  try dsimp only
  rw [child2426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2423_skip, output2426_skip]
  kernel_rfl

theorem node2428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2428 value1424 value1 value2 = (output2428, value1425, value1) := by
  rw [input2428_def, output2428_def]
  kernel_rfl

theorem node2429_cond_eq
    (child2427 : Flapjack.WordAlloc.removeDeadStructural input2427 value1421 value1 value2 = (output2427, value1424, value1))
    (child2428 : Flapjack.WordAlloc.removeDeadStructural input2428 value1424 value1 value2 = (output2428, value1425, value1)) : Flapjack.WordAlloc.removeDeadStructural input2429 value1421 value1 value2 = (output2429, value1425, value1) := by
  rw [input2429_def, output2429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2427]
  try dsimp only
  rw [child2428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2427_skip, output2428_skip]
  kernel_rfl

theorem node2430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2430 value1425 value1 value2 = (output2430, value1426, value1) := by
  rw [input2430_def, output2430_def]
  kernel_rfl

theorem node2431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2431 value1426 value1 value2 = (output2431, value1427, value1) := by
  rw [input2431_def, output2431_def]
  kernel_rfl

theorem node2432_cond_eq
    (child2430 : Flapjack.WordAlloc.removeDeadStructural input2430 value1425 value1 value2 = (output2430, value1426, value1))
    (child2431 : Flapjack.WordAlloc.removeDeadStructural input2431 value1426 value1 value2 = (output2431, value1427, value1)) : Flapjack.WordAlloc.removeDeadStructural input2432 value1425 value1 value2 = (output2432, value1427, value1) := by
  rw [input2432_def, output2432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2430]
  try dsimp only
  rw [child2431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2430_skip, output2431_skip]
  kernel_rfl

theorem node2433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2433 value1427 value1 value2 = (output2433, value1428, value1) := by
  rw [input2433_def, output2433_def]
  kernel_rfl

theorem node2434_cond_eq
    (child2432 : Flapjack.WordAlloc.removeDeadStructural input2432 value1425 value1 value2 = (output2432, value1427, value1))
    (child2433 : Flapjack.WordAlloc.removeDeadStructural input2433 value1427 value1 value2 = (output2433, value1428, value1)) : Flapjack.WordAlloc.removeDeadStructural input2434 value1425 value1 value2 = (output2434, value1428, value1) := by
  rw [input2434_def, output2434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2432]
  try dsimp only
  rw [child2433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2432_skip, output2433_skip]
  kernel_rfl

theorem node2435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2435 value1428 value1 value2 = (output2435, value1429, value1) := by
  rw [input2435_def, output2435_def]
  kernel_rfl

theorem node2436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2436 value1429 value1 value2 = (output2436, value1430, value1) := by
  rw [input2436_def, output2436_def]
  kernel_rfl

theorem node2437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2437 value1430 value1 value2 = (output2437, value1431, value1) := by
  rw [input2437_def, output2437_def]
  kernel_rfl

theorem node2438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2438 value1431 value1 value2 = (output2438, value1432, value1) := by
  rw [input2438_def, output2438_def]
  kernel_rfl

theorem node2439_cond_eq
    (child2437 : Flapjack.WordAlloc.removeDeadStructural input2437 value1430 value1 value2 = (output2437, value1431, value1))
    (child2438 : Flapjack.WordAlloc.removeDeadStructural input2438 value1431 value1 value2 = (output2438, value1432, value1)) : Flapjack.WordAlloc.removeDeadStructural input2439 value1430 value1 value2 = (output2439, value1432, value1) := by
  rw [input2439_def, output2439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2437]
  try dsimp only
  rw [child2438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2437_skip, output2438_skip]
  kernel_rfl

theorem node2440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2440 value1432 value1 value2 = (output2440, value1433, value1) := by
  rw [input2440_def, output2440_def]
  kernel_rfl

theorem node2441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2441 value1433 value1 value2 = (output2441, value1434, value1) := by
  rw [input2441_def, output2441_def]
  kernel_rfl

theorem node2442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2442 value1434 value1 value2 = (output2442, value1435, value1) := by
  rw [input2442_def, output2442_def]
  kernel_rfl

theorem node2443_cond_eq
    (child2441 : Flapjack.WordAlloc.removeDeadStructural input2441 value1433 value1 value2 = (output2441, value1434, value1))
    (child2442 : Flapjack.WordAlloc.removeDeadStructural input2442 value1434 value1 value2 = (output2442, value1435, value1)) : Flapjack.WordAlloc.removeDeadStructural input2443 value1433 value1 value2 = (output2443, value1435, value1) := by
  rw [input2443_def, output2443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2441]
  try dsimp only
  rw [child2442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2441_skip, output2442_skip]
  kernel_rfl

theorem node2444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2444 value1435 value1 value2 = (output2444, value1436, value1) := by
  rw [input2444_def, output2444_def]
  kernel_rfl

theorem node2445_cond_eq
    (child2443 : Flapjack.WordAlloc.removeDeadStructural input2443 value1433 value1 value2 = (output2443, value1435, value1))
    (child2444 : Flapjack.WordAlloc.removeDeadStructural input2444 value1435 value1 value2 = (output2444, value1436, value1)) : Flapjack.WordAlloc.removeDeadStructural input2445 value1433 value1 value2 = (output2445, value1436, value1) := by
  rw [input2445_def, output2445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2443]
  try dsimp only
  rw [child2444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2443_skip, output2444_skip]
  kernel_rfl

theorem node2446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2446 value1436 value1 value2 = (output2446, value1437, value1) := by
  rw [input2446_def, output2446_def]
  kernel_rfl

theorem node2447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2447 value1437 value1 value2 = (output2447, value1438, value1) := by
  rw [input2447_def, output2447_def]
  kernel_rfl

theorem node2448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2448 value1438 value1 value2 = (output2448, value1439, value1) := by
  rw [input2448_def, output2448_def]
  kernel_rfl

theorem node2449_cond_eq
    (child2447 : Flapjack.WordAlloc.removeDeadStructural input2447 value1437 value1 value2 = (output2447, value1438, value1))
    (child2448 : Flapjack.WordAlloc.removeDeadStructural input2448 value1438 value1 value2 = (output2448, value1439, value1)) : Flapjack.WordAlloc.removeDeadStructural input2449 value1437 value1 value2 = (output2449, value1439, value1) := by
  rw [input2449_def, output2449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2447]
  try dsimp only
  rw [child2448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2447_skip, output2448_skip]
  kernel_rfl

theorem node2450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2450 value1439 value1 value2 = (output2450, value1440, value1) := by
  rw [input2450_def, output2450_def]
  kernel_rfl

theorem node2451_cond_eq
    (child2449 : Flapjack.WordAlloc.removeDeadStructural input2449 value1437 value1 value2 = (output2449, value1439, value1))
    (child2450 : Flapjack.WordAlloc.removeDeadStructural input2450 value1439 value1 value2 = (output2450, value1440, value1)) : Flapjack.WordAlloc.removeDeadStructural input2451 value1437 value1 value2 = (output2451, value1440, value1) := by
  rw [input2451_def, output2451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2449]
  try dsimp only
  rw [child2450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2449_skip, output2450_skip]
  kernel_rfl

theorem node2452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2452 value1440 value1 value2 = (output2452, value1441, value1) := by
  rw [input2452_def, output2452_def]
  kernel_rfl

theorem node2453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2453 value1441 value1 value2 = (output2453, value1442, value1) := by
  rw [input2453_def, output2453_def]
  kernel_rfl

theorem node2454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2454 value1442 value1 value2 = (output2454, value1442, value1) := by
  rw [input2454_def, output2454_def]
  kernel_rfl

theorem node2455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2455 value1442 value1 value2 = (output2455, value1442, value1) := by
  rw [input2455_def, output2455_def]
  kernel_rfl

theorem node2456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2456 value1442 value1 value2 = (output2456, value1442, value1) := by
  rw [input2456_def, output2456_def]
  kernel_rfl

theorem node2457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2457 value1442 value1 value2 = (output2457, value1443, value1) := by
  rw [input2457_def, output2457_def]
  kernel_rfl

theorem node2458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2458 value1443 value1 value2 = (output2458, value1444, value1) := by
  rw [input2458_def, output2458_def]
  kernel_rfl

theorem node2459_cond_eq
    (child2457 : Flapjack.WordAlloc.removeDeadStructural input2457 value1442 value1 value2 = (output2457, value1443, value1))
    (child2458 : Flapjack.WordAlloc.removeDeadStructural input2458 value1443 value1 value2 = (output2458, value1444, value1)) : Flapjack.WordAlloc.removeDeadStructural input2459 value1442 value1 value2 = (output2459, value1444, value1) := by
  rw [input2459_def, output2459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2457]
  try dsimp only
  rw [child2458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2457_skip, output2458_skip]
  kernel_rfl

theorem node2460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2460 value1444 value1 value2 = (output2460, value1445, value1) := by
  rw [input2460_def, output2460_def]
  kernel_rfl

theorem node2461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2461 value1445 value1 value2 = (output2461, value1446, value1) := by
  rw [input2461_def, output2461_def]
  kernel_rfl

theorem node2462_cond_eq
    (child2460 : Flapjack.WordAlloc.removeDeadStructural input2460 value1444 value1 value2 = (output2460, value1445, value1))
    (child2461 : Flapjack.WordAlloc.removeDeadStructural input2461 value1445 value1 value2 = (output2461, value1446, value1)) : Flapjack.WordAlloc.removeDeadStructural input2462 value1444 value1 value2 = (output2462, value1446, value1) := by
  rw [input2462_def, output2462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2460]
  try dsimp only
  rw [child2461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2460_skip, output2461_skip]
  kernel_rfl

theorem node2463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2463 value1446 value1 value2 = (output2463, value1447, value1) := by
  rw [input2463_def, output2463_def]
  kernel_rfl

theorem node2464_cond_eq
    (child2462 : Flapjack.WordAlloc.removeDeadStructural input2462 value1444 value1 value2 = (output2462, value1446, value1))
    (child2463 : Flapjack.WordAlloc.removeDeadStructural input2463 value1446 value1 value2 = (output2463, value1447, value1)) : Flapjack.WordAlloc.removeDeadStructural input2464 value1444 value1 value2 = (output2464, value1447, value1) := by
  rw [input2464_def, output2464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2462]
  try dsimp only
  rw [child2463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2462_skip, output2463_skip]
  kernel_rfl

theorem node2465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2465 value1447 value1 value2 = (output2465, value1448, value1) := by
  rw [input2465_def, output2465_def]
  kernel_rfl

theorem node2466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2466 value1448 value1 value2 = (output2466, value1449, value1) := by
  rw [input2466_def, output2466_def]
  kernel_rfl

theorem node2467_cond_eq
    (child2465 : Flapjack.WordAlloc.removeDeadStructural input2465 value1447 value1 value2 = (output2465, value1448, value1))
    (child2466 : Flapjack.WordAlloc.removeDeadStructural input2466 value1448 value1 value2 = (output2466, value1449, value1)) : Flapjack.WordAlloc.removeDeadStructural input2467 value1447 value1 value2 = (output2467, value1449, value1) := by
  rw [input2467_def, output2467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2465]
  try dsimp only
  rw [child2466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2465_skip, output2466_skip]
  kernel_rfl

theorem node2468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2468 value1449 value1 value2 = (output2468, value1450, value1) := by
  rw [input2468_def, output2468_def]
  kernel_rfl

theorem node2469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2469 value1450 value1 value2 = (output2469, value1451, value1) := by
  rw [input2469_def, output2469_def]
  kernel_rfl

theorem node2470_cond_eq
    (child2468 : Flapjack.WordAlloc.removeDeadStructural input2468 value1449 value1 value2 = (output2468, value1450, value1))
    (child2469 : Flapjack.WordAlloc.removeDeadStructural input2469 value1450 value1 value2 = (output2469, value1451, value1)) : Flapjack.WordAlloc.removeDeadStructural input2470 value1449 value1 value2 = (output2470, value1451, value1) := by
  rw [input2470_def, output2470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2468]
  try dsimp only
  rw [child2469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2468_skip, output2469_skip]
  kernel_rfl

theorem node2471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2471 value1451 value1 value2 = (output2471, value1452, value1) := by
  rw [input2471_def, output2471_def]
  kernel_rfl

theorem node2472_cond_eq
    (child2470 : Flapjack.WordAlloc.removeDeadStructural input2470 value1449 value1 value2 = (output2470, value1451, value1))
    (child2471 : Flapjack.WordAlloc.removeDeadStructural input2471 value1451 value1 value2 = (output2471, value1452, value1)) : Flapjack.WordAlloc.removeDeadStructural input2472 value1449 value1 value2 = (output2472, value1452, value1) := by
  rw [input2472_def, output2472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2470]
  try dsimp only
  rw [child2471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2470_skip, output2471_skip]
  kernel_rfl

theorem node2473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2473 value1452 value1 value2 = (output2473, value1453, value1) := by
  rw [input2473_def, output2473_def]
  kernel_rfl

theorem node2474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2474 value1453 value1 value2 = (output2474, value1454, value1) := by
  rw [input2474_def, output2474_def]
  kernel_rfl

theorem node2475_cond_eq
    (child2473 : Flapjack.WordAlloc.removeDeadStructural input2473 value1452 value1 value2 = (output2473, value1453, value1))
    (child2474 : Flapjack.WordAlloc.removeDeadStructural input2474 value1453 value1 value2 = (output2474, value1454, value1)) : Flapjack.WordAlloc.removeDeadStructural input2475 value1452 value1 value2 = (output2475, value1454, value1) := by
  rw [input2475_def, output2475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2473]
  try dsimp only
  rw [child2474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2473_skip, output2474_skip]
  kernel_rfl

theorem node2476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2476 value1454 value1 value2 = (output2476, value1455, value1) := by
  rw [input2476_def, output2476_def]
  kernel_rfl

theorem node2477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2477 value1455 value1 value2 = (output2477, value1456, value1) := by
  rw [input2477_def, output2477_def]
  kernel_rfl

theorem node2478_cond_eq
    (child2476 : Flapjack.WordAlloc.removeDeadStructural input2476 value1454 value1 value2 = (output2476, value1455, value1))
    (child2477 : Flapjack.WordAlloc.removeDeadStructural input2477 value1455 value1 value2 = (output2477, value1456, value1)) : Flapjack.WordAlloc.removeDeadStructural input2478 value1454 value1 value2 = (output2478, value1456, value1) := by
  rw [input2478_def, output2478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2476]
  try dsimp only
  rw [child2477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2476_skip, output2477_skip]
  kernel_rfl

theorem node2479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2479 value1456 value1 value2 = (output2479, value1457, value1) := by
  rw [input2479_def, output2479_def]
  kernel_rfl

theorem node2480_cond_eq
    (child2478 : Flapjack.WordAlloc.removeDeadStructural input2478 value1454 value1 value2 = (output2478, value1456, value1))
    (child2479 : Flapjack.WordAlloc.removeDeadStructural input2479 value1456 value1 value2 = (output2479, value1457, value1)) : Flapjack.WordAlloc.removeDeadStructural input2480 value1454 value1 value2 = (output2480, value1457, value1) := by
  rw [input2480_def, output2480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2478]
  try dsimp only
  rw [child2479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2478_skip, output2479_skip]
  kernel_rfl

theorem node2481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2481 value1457 value1 value2 = (output2481, value1458, value1) := by
  rw [input2481_def, output2481_def]
  kernel_rfl

theorem node2482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2482 value1458 value1 value2 = (output2482, value1459, value1) := by
  rw [input2482_def, output2482_def]
  kernel_rfl

theorem node2483_cond_eq
    (child2481 : Flapjack.WordAlloc.removeDeadStructural input2481 value1457 value1 value2 = (output2481, value1458, value1))
    (child2482 : Flapjack.WordAlloc.removeDeadStructural input2482 value1458 value1 value2 = (output2482, value1459, value1)) : Flapjack.WordAlloc.removeDeadStructural input2483 value1457 value1 value2 = (output2483, value1459, value1) := by
  rw [input2483_def, output2483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2481]
  try dsimp only
  rw [child2482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2481_skip, output2482_skip]
  kernel_rfl

theorem node2484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2484 value1459 value1 value2 = (output2484, value1460, value1) := by
  rw [input2484_def, output2484_def]
  kernel_rfl

theorem node2485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2485 value1460 value1 value2 = (output2485, value1461, value1) := by
  rw [input2485_def, output2485_def]
  kernel_rfl

theorem node2486_cond_eq
    (child2484 : Flapjack.WordAlloc.removeDeadStructural input2484 value1459 value1 value2 = (output2484, value1460, value1))
    (child2485 : Flapjack.WordAlloc.removeDeadStructural input2485 value1460 value1 value2 = (output2485, value1461, value1)) : Flapjack.WordAlloc.removeDeadStructural input2486 value1459 value1 value2 = (output2486, value1461, value1) := by
  rw [input2486_def, output2486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2484]
  try dsimp only
  rw [child2485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2484_skip, output2485_skip]
  kernel_rfl

theorem node2487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2487 value1461 value1 value2 = (output2487, value1462, value1) := by
  rw [input2487_def, output2487_def]
  kernel_rfl

theorem node2488_cond_eq
    (child2486 : Flapjack.WordAlloc.removeDeadStructural input2486 value1459 value1 value2 = (output2486, value1461, value1))
    (child2487 : Flapjack.WordAlloc.removeDeadStructural input2487 value1461 value1 value2 = (output2487, value1462, value1)) : Flapjack.WordAlloc.removeDeadStructural input2488 value1459 value1 value2 = (output2488, value1462, value1) := by
  rw [input2488_def, output2488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2486]
  try dsimp only
  rw [child2487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2486_skip, output2487_skip]
  kernel_rfl

theorem node2489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2489 value1462 value1 value2 = (output2489, value1463, value1) := by
  rw [input2489_def, output2489_def]
  kernel_rfl

theorem node2490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2490 value1463 value1 value2 = (output2490, value1464, value1) := by
  rw [input2490_def, output2490_def]
  kernel_rfl

theorem node2491_cond_eq
    (child2489 : Flapjack.WordAlloc.removeDeadStructural input2489 value1462 value1 value2 = (output2489, value1463, value1))
    (child2490 : Flapjack.WordAlloc.removeDeadStructural input2490 value1463 value1 value2 = (output2490, value1464, value1)) : Flapjack.WordAlloc.removeDeadStructural input2491 value1462 value1 value2 = (output2491, value1464, value1) := by
  rw [input2491_def, output2491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2489]
  try dsimp only
  rw [child2490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2489_skip, output2490_skip]
  kernel_rfl

theorem node2492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2492 value1464 value1 value2 = (output2492, value1465, value1) := by
  rw [input2492_def, output2492_def]
  kernel_rfl

theorem node2493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2493 value1465 value1 value2 = (output2493, value1466, value1) := by
  rw [input2493_def, output2493_def]
  kernel_rfl

theorem node2494_cond_eq
    (child2492 : Flapjack.WordAlloc.removeDeadStructural input2492 value1464 value1 value2 = (output2492, value1465, value1))
    (child2493 : Flapjack.WordAlloc.removeDeadStructural input2493 value1465 value1 value2 = (output2493, value1466, value1)) : Flapjack.WordAlloc.removeDeadStructural input2494 value1464 value1 value2 = (output2494, value1466, value1) := by
  rw [input2494_def, output2494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2492]
  try dsimp only
  rw [child2493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2492_skip, output2493_skip]
  kernel_rfl

theorem node2495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2495 value1466 value1 value2 = (output2495, value1467, value1) := by
  rw [input2495_def, output2495_def]
  kernel_rfl

theorem node2496_cond_eq
    (child2494 : Flapjack.WordAlloc.removeDeadStructural input2494 value1464 value1 value2 = (output2494, value1466, value1))
    (child2495 : Flapjack.WordAlloc.removeDeadStructural input2495 value1466 value1 value2 = (output2495, value1467, value1)) : Flapjack.WordAlloc.removeDeadStructural input2496 value1464 value1 value2 = (output2496, value1467, value1) := by
  rw [input2496_def, output2496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2494]
  try dsimp only
  rw [child2495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2494_skip, output2495_skip]
  kernel_rfl

theorem node2497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2497 value1467 value1 value2 = (output2497, value1468, value1) := by
  rw [input2497_def, output2497_def]
  kernel_rfl

theorem node2498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2498 value1468 value1 value2 = (output2498, value1469, value1) := by
  rw [input2498_def, output2498_def]
  kernel_rfl

theorem node2499_cond_eq
    (child2497 : Flapjack.WordAlloc.removeDeadStructural input2497 value1467 value1 value2 = (output2497, value1468, value1))
    (child2498 : Flapjack.WordAlloc.removeDeadStructural input2498 value1468 value1 value2 = (output2498, value1469, value1)) : Flapjack.WordAlloc.removeDeadStructural input2499 value1467 value1 value2 = (output2499, value1469, value1) := by
  rw [input2499_def, output2499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2497]
  try dsimp only
  rw [child2498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2497_skip, output2498_skip]
  kernel_rfl

theorem node2500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2500 value1469 value1 value2 = (output2500, value1470, value1) := by
  rw [input2500_def, output2500_def]
  kernel_rfl

theorem node2501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2501 value1470 value1 value2 = (output2501, value1471, value1) := by
  rw [input2501_def, output2501_def]
  kernel_rfl

theorem node2502_cond_eq
    (child2500 : Flapjack.WordAlloc.removeDeadStructural input2500 value1469 value1 value2 = (output2500, value1470, value1))
    (child2501 : Flapjack.WordAlloc.removeDeadStructural input2501 value1470 value1 value2 = (output2501, value1471, value1)) : Flapjack.WordAlloc.removeDeadStructural input2502 value1469 value1 value2 = (output2502, value1471, value1) := by
  rw [input2502_def, output2502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2500]
  try dsimp only
  rw [child2501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2500_skip, output2501_skip]
  kernel_rfl

theorem node2503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2503 value1471 value1 value2 = (output2503, value1472, value1) := by
  rw [input2503_def, output2503_def]
  kernel_rfl

theorem node2504_cond_eq
    (child2502 : Flapjack.WordAlloc.removeDeadStructural input2502 value1469 value1 value2 = (output2502, value1471, value1))
    (child2503 : Flapjack.WordAlloc.removeDeadStructural input2503 value1471 value1 value2 = (output2503, value1472, value1)) : Flapjack.WordAlloc.removeDeadStructural input2504 value1469 value1 value2 = (output2504, value1472, value1) := by
  rw [input2504_def, output2504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2502]
  try dsimp only
  rw [child2503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2502_skip, output2503_skip]
  kernel_rfl

theorem node2505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2505 value1472 value1 value2 = (output2505, value1473, value1) := by
  rw [input2505_def, output2505_def]
  kernel_rfl

theorem node2506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2506 value1473 value1 value2 = (output2506, value1474, value1) := by
  rw [input2506_def, output2506_def]
  kernel_rfl

theorem node2507_cond_eq
    (child2505 : Flapjack.WordAlloc.removeDeadStructural input2505 value1472 value1 value2 = (output2505, value1473, value1))
    (child2506 : Flapjack.WordAlloc.removeDeadStructural input2506 value1473 value1 value2 = (output2506, value1474, value1)) : Flapjack.WordAlloc.removeDeadStructural input2507 value1472 value1 value2 = (output2507, value1474, value1) := by
  rw [input2507_def, output2507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2505]
  try dsimp only
  rw [child2506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2505_skip, output2506_skip]
  kernel_rfl

theorem node2508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2508 value1474 value1 value2 = (output2508, value1475, value1) := by
  rw [input2508_def, output2508_def]
  kernel_rfl

theorem node2509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2509 value1475 value1 value2 = (output2509, value1476, value1) := by
  rw [input2509_def, output2509_def]
  kernel_rfl

theorem node2510_cond_eq
    (child2508 : Flapjack.WordAlloc.removeDeadStructural input2508 value1474 value1 value2 = (output2508, value1475, value1))
    (child2509 : Flapjack.WordAlloc.removeDeadStructural input2509 value1475 value1 value2 = (output2509, value1476, value1)) : Flapjack.WordAlloc.removeDeadStructural input2510 value1474 value1 value2 = (output2510, value1476, value1) := by
  rw [input2510_def, output2510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2508]
  try dsimp only
  rw [child2509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2508_skip, output2509_skip]
  kernel_rfl

theorem node2511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2511 value1476 value1 value2 = (output2511, value1477, value1) := by
  rw [input2511_def, output2511_def]
  kernel_rfl

theorem node2512_cond_eq
    (child2510 : Flapjack.WordAlloc.removeDeadStructural input2510 value1474 value1 value2 = (output2510, value1476, value1))
    (child2511 : Flapjack.WordAlloc.removeDeadStructural input2511 value1476 value1 value2 = (output2511, value1477, value1)) : Flapjack.WordAlloc.removeDeadStructural input2512 value1474 value1 value2 = (output2512, value1477, value1) := by
  rw [input2512_def, output2512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2510]
  try dsimp only
  rw [child2511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2510_skip, output2511_skip]
  kernel_rfl

theorem node2513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2513 value1477 value1 value2 = (output2513, value1478, value1) := by
  rw [input2513_def, output2513_def]
  kernel_rfl

theorem node2514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2514 value1478 value1 value2 = (output2514, value1479, value1) := by
  rw [input2514_def, output2514_def]
  kernel_rfl

theorem node2515_cond_eq
    (child2513 : Flapjack.WordAlloc.removeDeadStructural input2513 value1477 value1 value2 = (output2513, value1478, value1))
    (child2514 : Flapjack.WordAlloc.removeDeadStructural input2514 value1478 value1 value2 = (output2514, value1479, value1)) : Flapjack.WordAlloc.removeDeadStructural input2515 value1477 value1 value2 = (output2515, value1479, value1) := by
  rw [input2515_def, output2515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2513]
  try dsimp only
  rw [child2514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2513_skip, output2514_skip]
  kernel_rfl

theorem node2516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2516 value1479 value1 value2 = (output2516, value1480, value1) := by
  rw [input2516_def, output2516_def]
  kernel_rfl

theorem node2517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2517 value1480 value1 value2 = (output2517, value1481, value1) := by
  rw [input2517_def, output2517_def]
  kernel_rfl

theorem node2518_cond_eq
    (child2516 : Flapjack.WordAlloc.removeDeadStructural input2516 value1479 value1 value2 = (output2516, value1480, value1))
    (child2517 : Flapjack.WordAlloc.removeDeadStructural input2517 value1480 value1 value2 = (output2517, value1481, value1)) : Flapjack.WordAlloc.removeDeadStructural input2518 value1479 value1 value2 = (output2518, value1481, value1) := by
  rw [input2518_def, output2518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2516]
  try dsimp only
  rw [child2517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2516_skip, output2517_skip]
  kernel_rfl

theorem node2519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2519 value1481 value1 value2 = (output2519, value1482, value1) := by
  rw [input2519_def, output2519_def]
  kernel_rfl

theorem node2520_cond_eq
    (child2518 : Flapjack.WordAlloc.removeDeadStructural input2518 value1479 value1 value2 = (output2518, value1481, value1))
    (child2519 : Flapjack.WordAlloc.removeDeadStructural input2519 value1481 value1 value2 = (output2519, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2520 value1479 value1 value2 = (output2520, value1482, value1) := by
  rw [input2520_def, output2520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2518]
  try dsimp only
  rw [child2519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2518_skip, output2519_skip]
  kernel_rfl

theorem node2521_cond_eq
    (child2515 : Flapjack.WordAlloc.removeDeadStructural input2515 value1477 value1 value2 = (output2515, value1479, value1))
    (child2520 : Flapjack.WordAlloc.removeDeadStructural input2520 value1479 value1 value2 = (output2520, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2521 value1477 value1 value2 = (output2521, value1482, value1) := by
  rw [input2521_def, output2521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2515]
  try dsimp only
  rw [child2520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2515_skip, output2520_skip]
  kernel_rfl

theorem node2522_cond_eq
    (child2512 : Flapjack.WordAlloc.removeDeadStructural input2512 value1474 value1 value2 = (output2512, value1477, value1))
    (child2521 : Flapjack.WordAlloc.removeDeadStructural input2521 value1477 value1 value2 = (output2521, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2522 value1474 value1 value2 = (output2522, value1482, value1) := by
  rw [input2522_def, output2522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2512]
  try dsimp only
  rw [child2521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2512_skip, output2521_skip]
  kernel_rfl

theorem node2523_cond_eq
    (child2507 : Flapjack.WordAlloc.removeDeadStructural input2507 value1472 value1 value2 = (output2507, value1474, value1))
    (child2522 : Flapjack.WordAlloc.removeDeadStructural input2522 value1474 value1 value2 = (output2522, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2523 value1472 value1 value2 = (output2523, value1482, value1) := by
  rw [input2523_def, output2523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2507]
  try dsimp only
  rw [child2522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2507_skip, output2522_skip]
  kernel_rfl

theorem node2524_cond_eq
    (child2504 : Flapjack.WordAlloc.removeDeadStructural input2504 value1469 value1 value2 = (output2504, value1472, value1))
    (child2523 : Flapjack.WordAlloc.removeDeadStructural input2523 value1472 value1 value2 = (output2523, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2524 value1469 value1 value2 = (output2524, value1482, value1) := by
  rw [input2524_def, output2524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2504]
  try dsimp only
  rw [child2523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2504_skip, output2523_skip]
  kernel_rfl

theorem node2525_cond_eq
    (child2499 : Flapjack.WordAlloc.removeDeadStructural input2499 value1467 value1 value2 = (output2499, value1469, value1))
    (child2524 : Flapjack.WordAlloc.removeDeadStructural input2524 value1469 value1 value2 = (output2524, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2525 value1467 value1 value2 = (output2525, value1482, value1) := by
  rw [input2525_def, output2525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2499]
  try dsimp only
  rw [child2524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2499_skip, output2524_skip]
  kernel_rfl

theorem node2526_cond_eq
    (child2496 : Flapjack.WordAlloc.removeDeadStructural input2496 value1464 value1 value2 = (output2496, value1467, value1))
    (child2525 : Flapjack.WordAlloc.removeDeadStructural input2525 value1467 value1 value2 = (output2525, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2526 value1464 value1 value2 = (output2526, value1482, value1) := by
  rw [input2526_def, output2526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2496]
  try dsimp only
  rw [child2525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2496_skip, output2525_skip]
  kernel_rfl

theorem node2527_cond_eq
    (child2491 : Flapjack.WordAlloc.removeDeadStructural input2491 value1462 value1 value2 = (output2491, value1464, value1))
    (child2526 : Flapjack.WordAlloc.removeDeadStructural input2526 value1464 value1 value2 = (output2526, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2527 value1462 value1 value2 = (output2527, value1482, value1) := by
  rw [input2527_def, output2527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2491]
  try dsimp only
  rw [child2526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2491_skip, output2526_skip]
  kernel_rfl

theorem node2528_cond_eq
    (child2488 : Flapjack.WordAlloc.removeDeadStructural input2488 value1459 value1 value2 = (output2488, value1462, value1))
    (child2527 : Flapjack.WordAlloc.removeDeadStructural input2527 value1462 value1 value2 = (output2527, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2528 value1459 value1 value2 = (output2528, value1482, value1) := by
  rw [input2528_def, output2528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2488]
  try dsimp only
  rw [child2527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2488_skip, output2527_skip]
  kernel_rfl

theorem node2529_cond_eq
    (child2483 : Flapjack.WordAlloc.removeDeadStructural input2483 value1457 value1 value2 = (output2483, value1459, value1))
    (child2528 : Flapjack.WordAlloc.removeDeadStructural input2528 value1459 value1 value2 = (output2528, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2529 value1457 value1 value2 = (output2529, value1482, value1) := by
  rw [input2529_def, output2529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2483]
  try dsimp only
  rw [child2528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2483_skip, output2528_skip]
  kernel_rfl

theorem node2530_cond_eq
    (child2480 : Flapjack.WordAlloc.removeDeadStructural input2480 value1454 value1 value2 = (output2480, value1457, value1))
    (child2529 : Flapjack.WordAlloc.removeDeadStructural input2529 value1457 value1 value2 = (output2529, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2530 value1454 value1 value2 = (output2530, value1482, value1) := by
  rw [input2530_def, output2530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2480]
  try dsimp only
  rw [child2529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2480_skip, output2529_skip]
  kernel_rfl

theorem node2531_cond_eq
    (child2475 : Flapjack.WordAlloc.removeDeadStructural input2475 value1452 value1 value2 = (output2475, value1454, value1))
    (child2530 : Flapjack.WordAlloc.removeDeadStructural input2530 value1454 value1 value2 = (output2530, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2531 value1452 value1 value2 = (output2531, value1482, value1) := by
  rw [input2531_def, output2531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2475]
  try dsimp only
  rw [child2530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2475_skip, output2530_skip]
  kernel_rfl

theorem node2532_cond_eq
    (child2472 : Flapjack.WordAlloc.removeDeadStructural input2472 value1449 value1 value2 = (output2472, value1452, value1))
    (child2531 : Flapjack.WordAlloc.removeDeadStructural input2531 value1452 value1 value2 = (output2531, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2532 value1449 value1 value2 = (output2532, value1482, value1) := by
  rw [input2532_def, output2532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2472]
  try dsimp only
  rw [child2531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2472_skip, output2531_skip]
  kernel_rfl

theorem node2533_cond_eq
    (child2467 : Flapjack.WordAlloc.removeDeadStructural input2467 value1447 value1 value2 = (output2467, value1449, value1))
    (child2532 : Flapjack.WordAlloc.removeDeadStructural input2532 value1449 value1 value2 = (output2532, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2533 value1447 value1 value2 = (output2533, value1482, value1) := by
  rw [input2533_def, output2533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2467]
  try dsimp only
  rw [child2532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2467_skip, output2532_skip]
  kernel_rfl

theorem node2534_cond_eq
    (child2464 : Flapjack.WordAlloc.removeDeadStructural input2464 value1444 value1 value2 = (output2464, value1447, value1))
    (child2533 : Flapjack.WordAlloc.removeDeadStructural input2533 value1447 value1 value2 = (output2533, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2534 value1444 value1 value2 = (output2534, value1482, value1) := by
  rw [input2534_def, output2534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2464]
  try dsimp only
  rw [child2533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2464_skip, output2533_skip]
  kernel_rfl

theorem node2535_cond_eq
    (child2459 : Flapjack.WordAlloc.removeDeadStructural input2459 value1442 value1 value2 = (output2459, value1444, value1))
    (child2534 : Flapjack.WordAlloc.removeDeadStructural input2534 value1444 value1 value2 = (output2534, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2535 value1442 value1 value2 = (output2535, value1482, value1) := by
  rw [input2535_def, output2535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2459]
  try dsimp only
  rw [child2534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2459_skip, output2534_skip]
  kernel_rfl

theorem node2536_cond_eq
    (child2456 : Flapjack.WordAlloc.removeDeadStructural input2456 value1442 value1 value2 = (output2456, value1442, value1))
    (child2535 : Flapjack.WordAlloc.removeDeadStructural input2535 value1442 value1 value2 = (output2535, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2536 value1442 value1 value2 = (output2536, value1482, value1) := by
  rw [input2536_def, output2536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2456]
  try dsimp only
  rw [child2535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2456_skip, output2535_skip]
  kernel_rfl

theorem node2537_cond_eq
    (child2455 : Flapjack.WordAlloc.removeDeadStructural input2455 value1442 value1 value2 = (output2455, value1442, value1))
    (child2536 : Flapjack.WordAlloc.removeDeadStructural input2536 value1442 value1 value2 = (output2536, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2537 value1442 value1 value2 = (output2537, value1482, value1) := by
  rw [input2537_def, output2537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2455]
  try dsimp only
  rw [child2536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2455_skip, output2536_skip]
  kernel_rfl

theorem node2538_cond_eq
    (child2454 : Flapjack.WordAlloc.removeDeadStructural input2454 value1442 value1 value2 = (output2454, value1442, value1))
    (child2537 : Flapjack.WordAlloc.removeDeadStructural input2537 value1442 value1 value2 = (output2537, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2538 value1442 value1 value2 = (output2538, value1482, value1) := by
  rw [input2538_def, output2538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2454]
  try dsimp only
  rw [child2537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2454_skip, output2537_skip]
  kernel_rfl

theorem node2539_cond_eq
    (child2453 : Flapjack.WordAlloc.removeDeadStructural input2453 value1441 value1 value2 = (output2453, value1442, value1))
    (child2538 : Flapjack.WordAlloc.removeDeadStructural input2538 value1442 value1 value2 = (output2538, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2539 value1441 value1 value2 = (output2539, value1482, value1) := by
  rw [input2539_def, output2539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2453]
  try dsimp only
  rw [child2538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2453_skip, output2538_skip]
  kernel_rfl

theorem node2540_cond_eq
    (child2452 : Flapjack.WordAlloc.removeDeadStructural input2452 value1440 value1 value2 = (output2452, value1441, value1))
    (child2539 : Flapjack.WordAlloc.removeDeadStructural input2539 value1441 value1 value2 = (output2539, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2540 value1440 value1 value2 = (output2540, value1482, value1) := by
  rw [input2540_def, output2540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2452]
  try dsimp only
  rw [child2539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2452_skip, output2539_skip]
  kernel_rfl

theorem node2541_cond_eq
    (child2451 : Flapjack.WordAlloc.removeDeadStructural input2451 value1437 value1 value2 = (output2451, value1440, value1))
    (child2540 : Flapjack.WordAlloc.removeDeadStructural input2540 value1440 value1 value2 = (output2540, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2541 value1437 value1 value2 = (output2541, value1482, value1) := by
  rw [input2541_def, output2541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2451]
  try dsimp only
  rw [child2540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2451_skip, output2540_skip]
  kernel_rfl

theorem node2542_cond_eq
    (child2446 : Flapjack.WordAlloc.removeDeadStructural input2446 value1436 value1 value2 = (output2446, value1437, value1))
    (child2541 : Flapjack.WordAlloc.removeDeadStructural input2541 value1437 value1 value2 = (output2541, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2542 value1436 value1 value2 = (output2542, value1482, value1) := by
  rw [input2542_def, output2542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2446]
  try dsimp only
  rw [child2541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2446_skip, output2541_skip]
  kernel_rfl

theorem node2543_cond_eq
    (child2445 : Flapjack.WordAlloc.removeDeadStructural input2445 value1433 value1 value2 = (output2445, value1436, value1))
    (child2542 : Flapjack.WordAlloc.removeDeadStructural input2542 value1436 value1 value2 = (output2542, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2543 value1433 value1 value2 = (output2543, value1482, value1) := by
  rw [input2543_def, output2543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2445]
  try dsimp only
  rw [child2542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2445_skip, output2542_skip]
  kernel_rfl

theorem node2544_cond_eq
    (child2440 : Flapjack.WordAlloc.removeDeadStructural input2440 value1432 value1 value2 = (output2440, value1433, value1))
    (child2543 : Flapjack.WordAlloc.removeDeadStructural input2543 value1433 value1 value2 = (output2543, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2544 value1432 value1 value2 = (output2544, value1482, value1) := by
  rw [input2544_def, output2544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2440]
  try dsimp only
  rw [child2543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2440_skip, output2543_skip]
  kernel_rfl

theorem node2545_cond_eq
    (child2439 : Flapjack.WordAlloc.removeDeadStructural input2439 value1430 value1 value2 = (output2439, value1432, value1))
    (child2544 : Flapjack.WordAlloc.removeDeadStructural input2544 value1432 value1 value2 = (output2544, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2545 value1430 value1 value2 = (output2545, value1482, value1) := by
  rw [input2545_def, output2545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2439]
  try dsimp only
  rw [child2544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2439_skip, output2544_skip]
  kernel_rfl

theorem node2546_cond_eq
    (child2436 : Flapjack.WordAlloc.removeDeadStructural input2436 value1429 value1 value2 = (output2436, value1430, value1))
    (child2545 : Flapjack.WordAlloc.removeDeadStructural input2545 value1430 value1 value2 = (output2545, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2546 value1429 value1 value2 = (output2546, value1482, value1) := by
  rw [input2546_def, output2546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2436]
  try dsimp only
  rw [child2545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2436_skip, output2545_skip]
  kernel_rfl

theorem node2547_cond_eq
    (child2435 : Flapjack.WordAlloc.removeDeadStructural input2435 value1428 value1 value2 = (output2435, value1429, value1))
    (child2546 : Flapjack.WordAlloc.removeDeadStructural input2546 value1429 value1 value2 = (output2546, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2547 value1428 value1 value2 = (output2547, value1482, value1) := by
  rw [input2547_def, output2547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2435]
  try dsimp only
  rw [child2546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2435_skip, output2546_skip]
  kernel_rfl

theorem node2548_cond_eq
    (child2434 : Flapjack.WordAlloc.removeDeadStructural input2434 value1425 value1 value2 = (output2434, value1428, value1))
    (child2547 : Flapjack.WordAlloc.removeDeadStructural input2547 value1428 value1 value2 = (output2547, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2548 value1425 value1 value2 = (output2548, value1482, value1) := by
  rw [input2548_def, output2548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2434]
  try dsimp only
  rw [child2547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2434_skip, output2547_skip]
  kernel_rfl

theorem node2549_cond_eq
    (child2429 : Flapjack.WordAlloc.removeDeadStructural input2429 value1421 value1 value2 = (output2429, value1425, value1))
    (child2548 : Flapjack.WordAlloc.removeDeadStructural input2548 value1425 value1 value2 = (output2548, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2549 value1421 value1 value2 = (output2549, value1482, value1) := by
  rw [input2549_def, output2549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2429]
  try dsimp only
  rw [child2548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2429_skip, output2548_skip]
  kernel_rfl

theorem node2550_cond_eq
    (child2422 : Flapjack.WordAlloc.removeDeadStructural input2422 value1421 value1 value2 = (output2422, value1421, value1))
    (child2549 : Flapjack.WordAlloc.removeDeadStructural input2549 value1421 value1 value2 = (output2549, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2550 value1421 value1 value2 = (output2550, value1482, value1) := by
  rw [input2550_def, output2550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2422]
  try dsimp only
  rw [child2549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2422_skip, output2549_skip]
  kernel_rfl

theorem node2551_cond_eq
    (child2421 : Flapjack.WordAlloc.removeDeadStructural input2421 value1421 value1 value2 = (output2421, value1421, value1))
    (child2550 : Flapjack.WordAlloc.removeDeadStructural input2550 value1421 value1 value2 = (output2550, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2551 value1421 value1 value2 = (output2551, value1482, value1) := by
  rw [input2551_def, output2551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2421]
  try dsimp only
  rw [child2550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2421_skip, output2550_skip]
  kernel_rfl

theorem node2552_cond_eq
    (child2420 : Flapjack.WordAlloc.removeDeadStructural input2420 value1420 value1 value2 = (output2420, value1421, value1))
    (child2551 : Flapjack.WordAlloc.removeDeadStructural input2551 value1421 value1 value2 = (output2551, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2552 value1420 value1 value2 = (output2552, value1482, value1) := by
  rw [input2552_def, output2552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2420]
  try dsimp only
  rw [child2551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2420_skip, output2551_skip]
  kernel_rfl

theorem node2553_cond_eq
    (child2419 : Flapjack.WordAlloc.removeDeadStructural input2419 value1419 value1 value2 = (output2419, value1420, value1))
    (child2552 : Flapjack.WordAlloc.removeDeadStructural input2552 value1420 value1 value2 = (output2552, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2553 value1419 value1 value2 = (output2553, value1482, value1) := by
  rw [input2553_def, output2553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2419]
  try dsimp only
  rw [child2552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2419_skip, output2552_skip]
  kernel_rfl

theorem node2554_cond_eq
    (child2418 : Flapjack.WordAlloc.removeDeadStructural input2418 value1416 value1 value2 = (output2418, value1419, value1))
    (child2553 : Flapjack.WordAlloc.removeDeadStructural input2553 value1419 value1 value2 = (output2553, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2554 value1416 value1 value2 = (output2554, value1482, value1) := by
  rw [input2554_def, output2554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2418]
  try dsimp only
  rw [child2553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2418_skip, output2553_skip]
  kernel_rfl

theorem node2555_cond_eq
    (child2413 : Flapjack.WordAlloc.removeDeadStructural input2413 value1415 value1 value2 = (output2413, value1416, value1))
    (child2554 : Flapjack.WordAlloc.removeDeadStructural input2554 value1416 value1 value2 = (output2554, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2555 value1415 value1 value2 = (output2555, value1482, value1) := by
  rw [input2555_def, output2555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2413]
  try dsimp only
  rw [child2554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2413_skip, output2554_skip]
  kernel_rfl

theorem node2556_cond_eq
    (child2412 : Flapjack.WordAlloc.removeDeadStructural input2412 value1412 value1 value2 = (output2412, value1415, value1))
    (child2555 : Flapjack.WordAlloc.removeDeadStructural input2555 value1415 value1 value2 = (output2555, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2556 value1412 value1 value2 = (output2556, value1482, value1) := by
  rw [input2556_def, output2556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2412]
  try dsimp only
  rw [child2555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2412_skip, output2555_skip]
  kernel_rfl

theorem node2557_cond_eq
    (child2407 : Flapjack.WordAlloc.removeDeadStructural input2407 value1411 value1 value2 = (output2407, value1412, value1))
    (child2556 : Flapjack.WordAlloc.removeDeadStructural input2556 value1412 value1 value2 = (output2556, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2557 value1411 value1 value2 = (output2557, value1482, value1) := by
  rw [input2557_def, output2557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2407]
  try dsimp only
  rw [child2556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2407_skip, output2556_skip]
  kernel_rfl

theorem node2558_cond_eq
    (child2406 : Flapjack.WordAlloc.removeDeadStructural input2406 value1409 value1 value2 = (output2406, value1411, value1))
    (child2557 : Flapjack.WordAlloc.removeDeadStructural input2557 value1411 value1 value2 = (output2557, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2558 value1409 value1 value2 = (output2558, value1482, value1) := by
  rw [input2558_def, output2558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2406]
  try dsimp only
  rw [child2557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2406_skip, output2557_skip]
  kernel_rfl

theorem node2559_cond_eq
    (child2403 : Flapjack.WordAlloc.removeDeadStructural input2403 value1408 value1 value2 = (output2403, value1409, value1))
    (child2558 : Flapjack.WordAlloc.removeDeadStructural input2558 value1409 value1 value2 = (output2558, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2559 value1408 value1 value2 = (output2559, value1482, value1) := by
  rw [input2559_def, output2559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2403]
  try dsimp only
  rw [child2558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2403_skip, output2558_skip]
  kernel_rfl

#print axioms node2559_cond_eq
end InitECandidate.Proofs.DeadStages646.Parallel
