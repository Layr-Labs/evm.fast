import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages646.Parallel.Data.Chunk010
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages646.Parallel
theorem node2560_cond_eq
    (child2402 : Flapjack.WordAlloc.removeDeadStructural input2402 value1407 value1 value2 = (output2402, value1408, value1))
    (child2559 : Flapjack.WordAlloc.removeDeadStructural input2559 value1408 value1 value2 = (output2559, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2560 value1407 value1 value2 = (output2560, value1482, value1) := by
  rw [input2560_def, output2560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2402]
  try dsimp only
  rw [child2559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2402_skip, output2559_skip]
  kernel_rfl

theorem node2561_cond_eq
    (child2401 : Flapjack.WordAlloc.removeDeadStructural input2401 value1406 value1 value2 = (output2401, value1407, value1))
    (child2560 : Flapjack.WordAlloc.removeDeadStructural input2560 value1407 value1 value2 = (output2560, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2561 value1406 value1 value2 = (output2561, value1482, value1) := by
  rw [input2561_def, output2561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2401]
  try dsimp only
  rw [child2560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2401_skip, output2560_skip]
  kernel_rfl

theorem node2562_cond_eq
    (child2400 : Flapjack.WordAlloc.removeDeadStructural input2400 value1403 value1 value2 = (output2400, value1406, value1))
    (child2561 : Flapjack.WordAlloc.removeDeadStructural input2561 value1406 value1 value2 = (output2561, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2562 value1403 value1 value2 = (output2562, value1482, value1) := by
  rw [input2562_def, output2562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2400]
  try dsimp only
  rw [child2561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2400_skip, output2561_skip]
  kernel_rfl

theorem node2563_cond_eq
    (child2395 : Flapjack.WordAlloc.removeDeadStructural input2395 value1402 value1 value2 = (output2395, value1403, value1))
    (child2562 : Flapjack.WordAlloc.removeDeadStructural input2562 value1403 value1 value2 = (output2562, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2563 value1402 value1 value2 = (output2563, value1482, value1) := by
  rw [input2563_def, output2563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2395]
  try dsimp only
  rw [child2562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2395_skip, output2562_skip]
  kernel_rfl

theorem node2564_cond_eq
    (child2394 : Flapjack.WordAlloc.removeDeadStructural input2394 value1397 value1 value2 = (output2394, value1402, value1))
    (child2563 : Flapjack.WordAlloc.removeDeadStructural input2563 value1402 value1 value2 = (output2563, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2564 value1397 value1 value2 = (output2564, value1482, value1) := by
  rw [input2564_def, output2564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2394]
  try dsimp only
  rw [child2563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2394_skip, output2563_skip]
  kernel_rfl

theorem node2565_cond_eq
    (child2385 : Flapjack.WordAlloc.removeDeadStructural input2385 value1396 value1 value2 = (output2385, value1397, value1))
    (child2564 : Flapjack.WordAlloc.removeDeadStructural input2564 value1397 value1 value2 = (output2564, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2565 value1396 value1 value2 = (output2565, value1482, value1) := by
  rw [input2565_def, output2565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2385]
  try dsimp only
  rw [child2564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2385_skip, output2564_skip]
  kernel_rfl

theorem node2566_cond_eq
    (child2384 : Flapjack.WordAlloc.removeDeadStructural input2384 value1392 value1 value2 = (output2384, value1396, value1))
    (child2565 : Flapjack.WordAlloc.removeDeadStructural input2565 value1396 value1 value2 = (output2565, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2566 value1392 value1 value2 = (output2566, value1482, value1) := by
  rw [input2566_def, output2566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2384]
  try dsimp only
  rw [child2565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2384_skip, output2565_skip]
  kernel_rfl

theorem node2567_cond_eq
    (child2377 : Flapjack.WordAlloc.removeDeadStructural input2377 value1391 value1 value2 = (output2377, value1392, value1))
    (child2566 : Flapjack.WordAlloc.removeDeadStructural input2566 value1392 value1 value2 = (output2566, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2567 value1391 value1 value2 = (output2567, value1482, value1) := by
  rw [input2567_def, output2567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2377]
  try dsimp only
  rw [child2566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2377_skip, output2566_skip]
  kernel_rfl

theorem node2568_cond_eq
    (child2376 : Flapjack.WordAlloc.removeDeadStructural input2376 value1388 value1 value2 = (output2376, value1391, value1))
    (child2567 : Flapjack.WordAlloc.removeDeadStructural input2567 value1391 value1 value2 = (output2567, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2568 value1388 value1 value2 = (output2568, value1482, value1) := by
  rw [input2568_def, output2568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2376]
  try dsimp only
  rw [child2567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2376_skip, output2567_skip]
  kernel_rfl

theorem node2569_cond_eq
    (child2371 : Flapjack.WordAlloc.removeDeadStructural input2371 value1385 value1 value2 = (output2371, value1388, value1))
    (child2568 : Flapjack.WordAlloc.removeDeadStructural input2568 value1388 value1 value2 = (output2568, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2569 value1385 value1 value2 = (output2569, value1482, value1) := by
  rw [input2569_def, output2569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2371]
  try dsimp only
  rw [child2568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2371_skip, output2568_skip]
  kernel_rfl

theorem node2570_cond_eq
    (child2366 : Flapjack.WordAlloc.removeDeadStructural input2366 value1381 value1 value2 = (output2366, value1385, value1))
    (child2569 : Flapjack.WordAlloc.removeDeadStructural input2569 value1385 value1 value2 = (output2569, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2570 value1381 value1 value2 = (output2570, value1482, value1) := by
  rw [input2570_def, output2570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2366]
  try dsimp only
  rw [child2569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2366_skip, output2569_skip]
  kernel_rfl

theorem node2571_cond_eq
    (child2359 : Flapjack.WordAlloc.removeDeadStructural input2359 value1381 value1 value2 = (output2359, value1381, value1))
    (child2570 : Flapjack.WordAlloc.removeDeadStructural input2570 value1381 value1 value2 = (output2570, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2571 value1381 value1 value2 = (output2571, value1482, value1) := by
  rw [input2571_def, output2571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2359]
  try dsimp only
  rw [child2570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2359_skip, output2570_skip]
  kernel_rfl

theorem node2572_cond_eq
    (child2358 : Flapjack.WordAlloc.removeDeadStructural input2358 value1381 value1 value2 = (output2358, value1381, value1))
    (child2571 : Flapjack.WordAlloc.removeDeadStructural input2571 value1381 value1 value2 = (output2571, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2572 value1381 value1 value2 = (output2572, value1482, value1) := by
  rw [input2572_def, output2572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2358]
  try dsimp only
  rw [child2571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2358_skip, output2571_skip]
  kernel_rfl

theorem node2573_cond_eq
    (child2357 : Flapjack.WordAlloc.removeDeadStructural input2357 value1380 value1 value2 = (output2357, value1381, value1))
    (child2572 : Flapjack.WordAlloc.removeDeadStructural input2572 value1381 value1 value2 = (output2572, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2573 value1380 value1 value2 = (output2573, value1482, value1) := by
  rw [input2573_def, output2573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2357]
  try dsimp only
  rw [child2572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2357_skip, output2572_skip]
  kernel_rfl

theorem node2574_cond_eq
    (child2356 : Flapjack.WordAlloc.removeDeadStructural input2356 value1379 value1 value2 = (output2356, value1380, value1))
    (child2573 : Flapjack.WordAlloc.removeDeadStructural input2573 value1380 value1 value2 = (output2573, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2574 value1379 value1 value2 = (output2574, value1482, value1) := by
  rw [input2574_def, output2574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2356]
  try dsimp only
  rw [child2573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2356_skip, output2573_skip]
  kernel_rfl

theorem node2575_cond_eq
    (child2355 : Flapjack.WordAlloc.removeDeadStructural input2355 value1376 value1 value2 = (output2355, value1379, value1))
    (child2574 : Flapjack.WordAlloc.removeDeadStructural input2574 value1379 value1 value2 = (output2574, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2575 value1376 value1 value2 = (output2575, value1482, value1) := by
  rw [input2575_def, output2575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2355]
  try dsimp only
  rw [child2574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2355_skip, output2574_skip]
  kernel_rfl

theorem node2576_cond_eq
    (child2350 : Flapjack.WordAlloc.removeDeadStructural input2350 value1375 value1 value2 = (output2350, value1376, value1))
    (child2575 : Flapjack.WordAlloc.removeDeadStructural input2575 value1376 value1 value2 = (output2575, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2576 value1375 value1 value2 = (output2576, value1482, value1) := by
  rw [input2576_def, output2576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2350]
  try dsimp only
  rw [child2575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2350_skip, output2575_skip]
  kernel_rfl

theorem node2577_cond_eq
    (child2349 : Flapjack.WordAlloc.removeDeadStructural input2349 value1372 value1 value2 = (output2349, value1375, value1))
    (child2576 : Flapjack.WordAlloc.removeDeadStructural input2576 value1375 value1 value2 = (output2576, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2577 value1372 value1 value2 = (output2577, value1482, value1) := by
  rw [input2577_def, output2577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2349]
  try dsimp only
  rw [child2576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2349_skip, output2576_skip]
  kernel_rfl

theorem node2578_cond_eq
    (child2344 : Flapjack.WordAlloc.removeDeadStructural input2344 value1371 value1 value2 = (output2344, value1372, value1))
    (child2577 : Flapjack.WordAlloc.removeDeadStructural input2577 value1372 value1 value2 = (output2577, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2578 value1371 value1 value2 = (output2578, value1482, value1) := by
  rw [input2578_def, output2578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2344]
  try dsimp only
  rw [child2577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2344_skip, output2577_skip]
  kernel_rfl

theorem node2579_cond_eq
    (child2343 : Flapjack.WordAlloc.removeDeadStructural input2343 value1369 value1 value2 = (output2343, value1371, value1))
    (child2578 : Flapjack.WordAlloc.removeDeadStructural input2578 value1371 value1 value2 = (output2578, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2579 value1369 value1 value2 = (output2579, value1482, value1) := by
  rw [input2579_def, output2579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2343]
  try dsimp only
  rw [child2578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2343_skip, output2578_skip]
  kernel_rfl

theorem node2580_cond_eq
    (child2340 : Flapjack.WordAlloc.removeDeadStructural input2340 value1368 value1 value2 = (output2340, value1369, value1))
    (child2579 : Flapjack.WordAlloc.removeDeadStructural input2579 value1369 value1 value2 = (output2579, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2580 value1368 value1 value2 = (output2580, value1482, value1) := by
  rw [input2580_def, output2580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2340]
  try dsimp only
  rw [child2579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2340_skip, output2579_skip]
  kernel_rfl

theorem node2581_cond_eq
    (child2339 : Flapjack.WordAlloc.removeDeadStructural input2339 value1367 value1 value2 = (output2339, value1368, value1))
    (child2580 : Flapjack.WordAlloc.removeDeadStructural input2580 value1368 value1 value2 = (output2580, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2581 value1367 value1 value2 = (output2581, value1482, value1) := by
  rw [input2581_def, output2581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2339]
  try dsimp only
  rw [child2580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2339_skip, output2580_skip]
  kernel_rfl

theorem node2582_cond_eq
    (child2338 : Flapjack.WordAlloc.removeDeadStructural input2338 value1366 value1 value2 = (output2338, value1367, value1))
    (child2581 : Flapjack.WordAlloc.removeDeadStructural input2581 value1367 value1 value2 = (output2581, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2582 value1366 value1 value2 = (output2582, value1482, value1) := by
  rw [input2582_def, output2582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2338]
  try dsimp only
  rw [child2581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2338_skip, output2581_skip]
  kernel_rfl

theorem node2583_cond_eq
    (child2337 : Flapjack.WordAlloc.removeDeadStructural input2337 value1363 value1 value2 = (output2337, value1366, value1))
    (child2582 : Flapjack.WordAlloc.removeDeadStructural input2582 value1366 value1 value2 = (output2582, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2583 value1363 value1 value2 = (output2583, value1482, value1) := by
  rw [input2583_def, output2583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2337]
  try dsimp only
  rw [child2582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2337_skip, output2582_skip]
  kernel_rfl

theorem node2584_cond_eq
    (child2332 : Flapjack.WordAlloc.removeDeadStructural input2332 value1362 value1 value2 = (output2332, value1363, value1))
    (child2583 : Flapjack.WordAlloc.removeDeadStructural input2583 value1363 value1 value2 = (output2583, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2584 value1362 value1 value2 = (output2584, value1482, value1) := by
  rw [input2584_def, output2584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2332]
  try dsimp only
  rw [child2583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2332_skip, output2583_skip]
  kernel_rfl

theorem node2585_cond_eq
    (child2331 : Flapjack.WordAlloc.removeDeadStructural input2331 value1357 value1 value2 = (output2331, value1362, value1))
    (child2584 : Flapjack.WordAlloc.removeDeadStructural input2584 value1362 value1 value2 = (output2584, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2585 value1357 value1 value2 = (output2585, value1482, value1) := by
  rw [input2585_def, output2585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2331]
  try dsimp only
  rw [child2584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2331_skip, output2584_skip]
  kernel_rfl

theorem node2586_cond_eq
    (child2322 : Flapjack.WordAlloc.removeDeadStructural input2322 value1356 value1 value2 = (output2322, value1357, value1))
    (child2585 : Flapjack.WordAlloc.removeDeadStructural input2585 value1357 value1 value2 = (output2585, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2586 value1356 value1 value2 = (output2586, value1482, value1) := by
  rw [input2586_def, output2586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2322]
  try dsimp only
  rw [child2585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2322_skip, output2585_skip]
  kernel_rfl

theorem node2587_cond_eq
    (child2321 : Flapjack.WordAlloc.removeDeadStructural input2321 value1352 value1 value2 = (output2321, value1356, value1))
    (child2586 : Flapjack.WordAlloc.removeDeadStructural input2586 value1356 value1 value2 = (output2586, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2587 value1352 value1 value2 = (output2587, value1482, value1) := by
  rw [input2587_def, output2587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2321]
  try dsimp only
  rw [child2586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2321_skip, output2586_skip]
  kernel_rfl

theorem node2588_cond_eq
    (child2314 : Flapjack.WordAlloc.removeDeadStructural input2314 value1351 value1 value2 = (output2314, value1352, value1))
    (child2587 : Flapjack.WordAlloc.removeDeadStructural input2587 value1352 value1 value2 = (output2587, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2588 value1351 value1 value2 = (output2588, value1482, value1) := by
  rw [input2588_def, output2588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2314]
  try dsimp only
  rw [child2587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2314_skip, output2587_skip]
  kernel_rfl

theorem node2589_cond_eq
    (child2313 : Flapjack.WordAlloc.removeDeadStructural input2313 value1350 value1 value2 = (output2313, value1351, value1))
    (child2588 : Flapjack.WordAlloc.removeDeadStructural input2588 value1351 value1 value2 = (output2588, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2589 value1350 value1 value2 = (output2589, value1482, value1) := by
  rw [input2589_def, output2589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2313]
  try dsimp only
  rw [child2588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2313_skip, output2588_skip]
  kernel_rfl

theorem node2590_cond_eq
    (child2312 : Flapjack.WordAlloc.removeDeadStructural input2312 value1349 value1 value2 = (output2312, value1350, value1))
    (child2589 : Flapjack.WordAlloc.removeDeadStructural input2589 value1350 value1 value2 = (output2589, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2590 value1349 value1 value2 = (output2590, value1482, value1) := by
  rw [input2590_def, output2590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2312]
  try dsimp only
  rw [child2589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2312_skip, output2589_skip]
  kernel_rfl

theorem node2591_cond_eq
    (child2311 : Flapjack.WordAlloc.removeDeadStructural input2311 value1346 value1 value2 = (output2311, value1349, value1))
    (child2590 : Flapjack.WordAlloc.removeDeadStructural input2590 value1349 value1 value2 = (output2590, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2591 value1346 value1 value2 = (output2591, value1482, value1) := by
  rw [input2591_def, output2591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2311]
  try dsimp only
  rw [child2590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2311_skip, output2590_skip]
  kernel_rfl

theorem node2592_cond_eq
    (child2306 : Flapjack.WordAlloc.removeDeadStructural input2306 value1345 value1 value2 = (output2306, value1346, value1))
    (child2591 : Flapjack.WordAlloc.removeDeadStructural input2591 value1346 value1 value2 = (output2591, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2592 value1345 value1 value2 = (output2592, value1482, value1) := by
  rw [input2592_def, output2592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2306]
  try dsimp only
  rw [child2591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2306_skip, output2591_skip]
  kernel_rfl

theorem node2593_cond_eq
    (child2305 : Flapjack.WordAlloc.removeDeadStructural input2305 value1340 value1 value2 = (output2305, value1345, value1))
    (child2592 : Flapjack.WordAlloc.removeDeadStructural input2592 value1345 value1 value2 = (output2592, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2593 value1340 value1 value2 = (output2593, value1482, value1) := by
  rw [input2593_def, output2593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2305]
  try dsimp only
  rw [child2592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2305_skip, output2592_skip]
  kernel_rfl

theorem node2594_cond_eq
    (child2296 : Flapjack.WordAlloc.removeDeadStructural input2296 value1339 value1 value2 = (output2296, value1340, value1))
    (child2593 : Flapjack.WordAlloc.removeDeadStructural input2593 value1340 value1 value2 = (output2593, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2594 value1339 value1 value2 = (output2594, value1482, value1) := by
  rw [input2594_def, output2594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2296]
  try dsimp only
  rw [child2593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2296_skip, output2593_skip]
  kernel_rfl

theorem node2595_cond_eq
    (child2295 : Flapjack.WordAlloc.removeDeadStructural input2295 value1335 value1 value2 = (output2295, value1339, value1))
    (child2594 : Flapjack.WordAlloc.removeDeadStructural input2594 value1339 value1 value2 = (output2594, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2595 value1335 value1 value2 = (output2595, value1482, value1) := by
  rw [input2595_def, output2595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2295]
  try dsimp only
  rw [child2594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2295_skip, output2594_skip]
  kernel_rfl

theorem node2596_cond_eq
    (child2288 : Flapjack.WordAlloc.removeDeadStructural input2288 value1334 value1 value2 = (output2288, value1335, value1))
    (child2595 : Flapjack.WordAlloc.removeDeadStructural input2595 value1335 value1 value2 = (output2595, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2596 value1334 value1 value2 = (output2596, value1482, value1) := by
  rw [input2596_def, output2596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2288]
  try dsimp only
  rw [child2595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2288_skip, output2595_skip]
  kernel_rfl

theorem node2597_cond_eq
    (child2287 : Flapjack.WordAlloc.removeDeadStructural input2287 value1331 value1 value2 = (output2287, value1334, value1))
    (child2596 : Flapjack.WordAlloc.removeDeadStructural input2596 value1334 value1 value2 = (output2596, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2597 value1331 value1 value2 = (output2597, value1482, value1) := by
  rw [input2597_def, output2597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2287]
  try dsimp only
  rw [child2596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2287_skip, output2596_skip]
  kernel_rfl

theorem node2598_cond_eq
    (child2282 : Flapjack.WordAlloc.removeDeadStructural input2282 value1328 value1 value2 = (output2282, value1331, value1))
    (child2597 : Flapjack.WordAlloc.removeDeadStructural input2597 value1331 value1 value2 = (output2597, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2598 value1328 value1 value2 = (output2598, value1482, value1) := by
  rw [input2598_def, output2598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2282]
  try dsimp only
  rw [child2597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2282_skip, output2597_skip]
  kernel_rfl

theorem node2599_cond_eq
    (child2277 : Flapjack.WordAlloc.removeDeadStructural input2277 value1324 value1 value2 = (output2277, value1328, value1))
    (child2598 : Flapjack.WordAlloc.removeDeadStructural input2598 value1328 value1 value2 = (output2598, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2599 value1324 value1 value2 = (output2599, value1482, value1) := by
  rw [input2599_def, output2599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2277]
  try dsimp only
  rw [child2598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2277_skip, output2598_skip]
  kernel_rfl

theorem node2600_cond_eq
    (child2270 : Flapjack.WordAlloc.removeDeadStructural input2270 value1324 value1 value2 = (output2270, value1324, value1))
    (child2599 : Flapjack.WordAlloc.removeDeadStructural input2599 value1324 value1 value2 = (output2599, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2600 value1324 value1 value2 = (output2600, value1482, value1) := by
  rw [input2600_def, output2600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2270]
  try dsimp only
  rw [child2599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2270_skip, output2599_skip]
  kernel_rfl

theorem node2601_cond_eq
    (child2269 : Flapjack.WordAlloc.removeDeadStructural input2269 value1324 value1 value2 = (output2269, value1324, value1))
    (child2600 : Flapjack.WordAlloc.removeDeadStructural input2600 value1324 value1 value2 = (output2600, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2601 value1324 value1 value2 = (output2601, value1482, value1) := by
  rw [input2601_def, output2601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2269]
  try dsimp only
  rw [child2600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2269_skip, output2600_skip]
  kernel_rfl

theorem node2602_cond_eq
    (child2268 : Flapjack.WordAlloc.removeDeadStructural input2268 value1323 value1 value2 = (output2268, value1324, value1))
    (child2601 : Flapjack.WordAlloc.removeDeadStructural input2601 value1324 value1 value2 = (output2601, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2602 value1323 value1 value2 = (output2602, value1482, value1) := by
  rw [input2602_def, output2602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2268]
  try dsimp only
  rw [child2601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2268_skip, output2601_skip]
  kernel_rfl

theorem node2603_cond_eq
    (child2267 : Flapjack.WordAlloc.removeDeadStructural input2267 value1322 value1 value2 = (output2267, value1323, value1))
    (child2602 : Flapjack.WordAlloc.removeDeadStructural input2602 value1323 value1 value2 = (output2602, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2603 value1322 value1 value2 = (output2603, value1482, value1) := by
  rw [input2603_def, output2603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2267]
  try dsimp only
  rw [child2602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2267_skip, output2602_skip]
  kernel_rfl

theorem node2604_cond_eq
    (child2266 : Flapjack.WordAlloc.removeDeadStructural input2266 value1319 value1 value2 = (output2266, value1322, value1))
    (child2603 : Flapjack.WordAlloc.removeDeadStructural input2603 value1322 value1 value2 = (output2603, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2604 value1319 value1 value2 = (output2604, value1482, value1) := by
  rw [input2604_def, output2604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2266]
  try dsimp only
  rw [child2603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2266_skip, output2603_skip]
  kernel_rfl

theorem node2605_cond_eq
    (child2261 : Flapjack.WordAlloc.removeDeadStructural input2261 value1318 value1 value2 = (output2261, value1319, value1))
    (child2604 : Flapjack.WordAlloc.removeDeadStructural input2604 value1319 value1 value2 = (output2604, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2605 value1318 value1 value2 = (output2605, value1482, value1) := by
  rw [input2605_def, output2605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2261]
  try dsimp only
  rw [child2604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2261_skip, output2604_skip]
  kernel_rfl

theorem node2606_cond_eq
    (child2260 : Flapjack.WordAlloc.removeDeadStructural input2260 value1315 value1 value2 = (output2260, value1318, value1))
    (child2605 : Flapjack.WordAlloc.removeDeadStructural input2605 value1318 value1 value2 = (output2605, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2606 value1315 value1 value2 = (output2606, value1482, value1) := by
  rw [input2606_def, output2606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2260]
  try dsimp only
  rw [child2605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2260_skip, output2605_skip]
  kernel_rfl

theorem node2607_cond_eq
    (child2255 : Flapjack.WordAlloc.removeDeadStructural input2255 value1314 value1 value2 = (output2255, value1315, value1))
    (child2606 : Flapjack.WordAlloc.removeDeadStructural input2606 value1315 value1 value2 = (output2606, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2607 value1314 value1 value2 = (output2607, value1482, value1) := by
  rw [input2607_def, output2607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2255]
  try dsimp only
  rw [child2606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2255_skip, output2606_skip]
  kernel_rfl

theorem node2608_cond_eq
    (child2254 : Flapjack.WordAlloc.removeDeadStructural input2254 value1312 value1 value2 = (output2254, value1314, value1))
    (child2607 : Flapjack.WordAlloc.removeDeadStructural input2607 value1314 value1 value2 = (output2607, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2608 value1312 value1 value2 = (output2608, value1482, value1) := by
  rw [input2608_def, output2608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2254]
  try dsimp only
  rw [child2607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2254_skip, output2607_skip]
  kernel_rfl

theorem node2609_cond_eq
    (child2251 : Flapjack.WordAlloc.removeDeadStructural input2251 value1311 value1 value2 = (output2251, value1312, value1))
    (child2608 : Flapjack.WordAlloc.removeDeadStructural input2608 value1312 value1 value2 = (output2608, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2609 value1311 value1 value2 = (output2609, value1482, value1) := by
  rw [input2609_def, output2609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2251]
  try dsimp only
  rw [child2608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2251_skip, output2608_skip]
  kernel_rfl

theorem node2610_cond_eq
    (child2250 : Flapjack.WordAlloc.removeDeadStructural input2250 value1310 value1 value2 = (output2250, value1311, value1))
    (child2609 : Flapjack.WordAlloc.removeDeadStructural input2609 value1311 value1 value2 = (output2609, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2610 value1310 value1 value2 = (output2610, value1482, value1) := by
  rw [input2610_def, output2610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2250]
  try dsimp only
  rw [child2609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2250_skip, output2609_skip]
  kernel_rfl

theorem node2611_cond_eq
    (child2249 : Flapjack.WordAlloc.removeDeadStructural input2249 value1309 value1 value2 = (output2249, value1310, value1))
    (child2610 : Flapjack.WordAlloc.removeDeadStructural input2610 value1310 value1 value2 = (output2610, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2611 value1309 value1 value2 = (output2611, value1482, value1) := by
  rw [input2611_def, output2611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2249]
  try dsimp only
  rw [child2610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2249_skip, output2610_skip]
  kernel_rfl

theorem node2612_cond_eq
    (child2248 : Flapjack.WordAlloc.removeDeadStructural input2248 value1306 value1 value2 = (output2248, value1309, value1))
    (child2611 : Flapjack.WordAlloc.removeDeadStructural input2611 value1309 value1 value2 = (output2611, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2612 value1306 value1 value2 = (output2612, value1482, value1) := by
  rw [input2612_def, output2612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2248]
  try dsimp only
  rw [child2611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2248_skip, output2611_skip]
  kernel_rfl

theorem node2613_cond_eq
    (child2243 : Flapjack.WordAlloc.removeDeadStructural input2243 value1305 value1 value2 = (output2243, value1306, value1))
    (child2612 : Flapjack.WordAlloc.removeDeadStructural input2612 value1306 value1 value2 = (output2612, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2613 value1305 value1 value2 = (output2613, value1482, value1) := by
  rw [input2613_def, output2613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2243]
  try dsimp only
  rw [child2612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2243_skip, output2612_skip]
  kernel_rfl

theorem node2614_cond_eq
    (child2242 : Flapjack.WordAlloc.removeDeadStructural input2242 value1300 value1 value2 = (output2242, value1305, value1))
    (child2613 : Flapjack.WordAlloc.removeDeadStructural input2613 value1305 value1 value2 = (output2613, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2614 value1300 value1 value2 = (output2614, value1482, value1) := by
  rw [input2614_def, output2614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2242]
  try dsimp only
  rw [child2613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2242_skip, output2613_skip]
  kernel_rfl

theorem node2615_cond_eq
    (child2233 : Flapjack.WordAlloc.removeDeadStructural input2233 value1299 value1 value2 = (output2233, value1300, value1))
    (child2614 : Flapjack.WordAlloc.removeDeadStructural input2614 value1300 value1 value2 = (output2614, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2615 value1299 value1 value2 = (output2615, value1482, value1) := by
  rw [input2615_def, output2615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2233]
  try dsimp only
  rw [child2614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2233_skip, output2614_skip]
  kernel_rfl

theorem node2616_cond_eq
    (child2232 : Flapjack.WordAlloc.removeDeadStructural input2232 value1295 value1 value2 = (output2232, value1299, value1))
    (child2615 : Flapjack.WordAlloc.removeDeadStructural input2615 value1299 value1 value2 = (output2615, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2616 value1295 value1 value2 = (output2616, value1482, value1) := by
  rw [input2616_def, output2616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2232]
  try dsimp only
  rw [child2615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2232_skip, output2615_skip]
  kernel_rfl

theorem node2617_cond_eq
    (child2225 : Flapjack.WordAlloc.removeDeadStructural input2225 value1294 value1 value2 = (output2225, value1295, value1))
    (child2616 : Flapjack.WordAlloc.removeDeadStructural input2616 value1295 value1 value2 = (output2616, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2617 value1294 value1 value2 = (output2617, value1482, value1) := by
  rw [input2617_def, output2617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2225]
  try dsimp only
  rw [child2616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2225_skip, output2616_skip]
  kernel_rfl

theorem node2618_cond_eq
    (child2224 : Flapjack.WordAlloc.removeDeadStructural input2224 value1293 value1 value2 = (output2224, value1294, value1))
    (child2617 : Flapjack.WordAlloc.removeDeadStructural input2617 value1294 value1 value2 = (output2617, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2618 value1293 value1 value2 = (output2618, value1482, value1) := by
  rw [input2618_def, output2618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2224]
  try dsimp only
  rw [child2617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2224_skip, output2617_skip]
  kernel_rfl

theorem node2619_cond_eq
    (child2223 : Flapjack.WordAlloc.removeDeadStructural input2223 value1292 value1 value2 = (output2223, value1293, value1))
    (child2618 : Flapjack.WordAlloc.removeDeadStructural input2618 value1293 value1 value2 = (output2618, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2619 value1292 value1 value2 = (output2619, value1482, value1) := by
  rw [input2619_def, output2619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2223]
  try dsimp only
  rw [child2618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2223_skip, output2618_skip]
  kernel_rfl

theorem node2620_cond_eq
    (child2222 : Flapjack.WordAlloc.removeDeadStructural input2222 value1289 value1 value2 = (output2222, value1292, value1))
    (child2619 : Flapjack.WordAlloc.removeDeadStructural input2619 value1292 value1 value2 = (output2619, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2620 value1289 value1 value2 = (output2620, value1482, value1) := by
  rw [input2620_def, output2620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2222]
  try dsimp only
  rw [child2619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2222_skip, output2619_skip]
  kernel_rfl

theorem node2621_cond_eq
    (child2217 : Flapjack.WordAlloc.removeDeadStructural input2217 value1288 value1 value2 = (output2217, value1289, value1))
    (child2620 : Flapjack.WordAlloc.removeDeadStructural input2620 value1289 value1 value2 = (output2620, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2621 value1288 value1 value2 = (output2621, value1482, value1) := by
  rw [input2621_def, output2621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2217]
  try dsimp only
  rw [child2620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2217_skip, output2620_skip]
  kernel_rfl

theorem node2622_cond_eq
    (child2216 : Flapjack.WordAlloc.removeDeadStructural input2216 value1283 value1 value2 = (output2216, value1288, value1))
    (child2621 : Flapjack.WordAlloc.removeDeadStructural input2621 value1288 value1 value2 = (output2621, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2622 value1283 value1 value2 = (output2622, value1482, value1) := by
  rw [input2622_def, output2622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2216]
  try dsimp only
  rw [child2621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2216_skip, output2621_skip]
  kernel_rfl

theorem node2623_cond_eq
    (child2207 : Flapjack.WordAlloc.removeDeadStructural input2207 value1282 value1 value2 = (output2207, value1283, value1))
    (child2622 : Flapjack.WordAlloc.removeDeadStructural input2622 value1283 value1 value2 = (output2622, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2623 value1282 value1 value2 = (output2623, value1482, value1) := by
  rw [input2623_def, output2623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2207]
  try dsimp only
  rw [child2622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2207_skip, output2622_skip]
  kernel_rfl

theorem node2624_cond_eq
    (child2206 : Flapjack.WordAlloc.removeDeadStructural input2206 value1278 value1 value2 = (output2206, value1282, value1))
    (child2623 : Flapjack.WordAlloc.removeDeadStructural input2623 value1282 value1 value2 = (output2623, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2624 value1278 value1 value2 = (output2624, value1482, value1) := by
  rw [input2624_def, output2624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2206]
  try dsimp only
  rw [child2623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2206_skip, output2623_skip]
  kernel_rfl

theorem node2625_cond_eq
    (child2199 : Flapjack.WordAlloc.removeDeadStructural input2199 value1277 value1 value2 = (output2199, value1278, value1))
    (child2624 : Flapjack.WordAlloc.removeDeadStructural input2624 value1278 value1 value2 = (output2624, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2625 value1277 value1 value2 = (output2625, value1482, value1) := by
  rw [input2625_def, output2625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2199]
  try dsimp only
  rw [child2624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2199_skip, output2624_skip]
  kernel_rfl

theorem node2626_cond_eq
    (child2198 : Flapjack.WordAlloc.removeDeadStructural input2198 value1276 value1 value2 = (output2198, value1277, value1))
    (child2625 : Flapjack.WordAlloc.removeDeadStructural input2625 value1277 value1 value2 = (output2625, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2626 value1276 value1 value2 = (output2626, value1482, value1) := by
  rw [input2626_def, output2626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2198]
  try dsimp only
  rw [child2625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2198_skip, output2625_skip]
  kernel_rfl

theorem node2627_cond_eq
    (child2197 : Flapjack.WordAlloc.removeDeadStructural input2197 value1275 value1 value2 = (output2197, value1276, value1))
    (child2626 : Flapjack.WordAlloc.removeDeadStructural input2626 value1276 value1 value2 = (output2626, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2627 value1275 value1 value2 = (output2627, value1482, value1) := by
  rw [input2627_def, output2627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2197]
  try dsimp only
  rw [child2626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2197_skip, output2626_skip]
  kernel_rfl

theorem node2628_cond_eq
    (child2196 : Flapjack.WordAlloc.removeDeadStructural input2196 value1272 value1 value2 = (output2196, value1275, value1))
    (child2627 : Flapjack.WordAlloc.removeDeadStructural input2627 value1275 value1 value2 = (output2627, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2628 value1272 value1 value2 = (output2628, value1482, value1) := by
  rw [input2628_def, output2628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2196]
  try dsimp only
  rw [child2627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2196_skip, output2627_skip]
  kernel_rfl

theorem node2629_cond_eq
    (child2191 : Flapjack.WordAlloc.removeDeadStructural input2191 value1271 value1 value2 = (output2191, value1272, value1))
    (child2628 : Flapjack.WordAlloc.removeDeadStructural input2628 value1272 value1 value2 = (output2628, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2629 value1271 value1 value2 = (output2629, value1482, value1) := by
  rw [input2629_def, output2629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2191]
  try dsimp only
  rw [child2628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2191_skip, output2628_skip]
  kernel_rfl

theorem node2630_cond_eq
    (child2190 : Flapjack.WordAlloc.removeDeadStructural input2190 value1266 value1 value2 = (output2190, value1271, value1))
    (child2629 : Flapjack.WordAlloc.removeDeadStructural input2629 value1271 value1 value2 = (output2629, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2630 value1266 value1 value2 = (output2630, value1482, value1) := by
  rw [input2630_def, output2630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2190]
  try dsimp only
  rw [child2629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2190_skip, output2629_skip]
  kernel_rfl

theorem node2631_cond_eq
    (child2181 : Flapjack.WordAlloc.removeDeadStructural input2181 value1265 value1 value2 = (output2181, value1266, value1))
    (child2630 : Flapjack.WordAlloc.removeDeadStructural input2630 value1266 value1 value2 = (output2630, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2631 value1265 value1 value2 = (output2631, value1482, value1) := by
  rw [input2631_def, output2631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2181]
  try dsimp only
  rw [child2630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2181_skip, output2630_skip]
  kernel_rfl

theorem node2632_cond_eq
    (child2180 : Flapjack.WordAlloc.removeDeadStructural input2180 value1261 value1 value2 = (output2180, value1265, value1))
    (child2631 : Flapjack.WordAlloc.removeDeadStructural input2631 value1265 value1 value2 = (output2631, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2632 value1261 value1 value2 = (output2632, value1482, value1) := by
  rw [input2632_def, output2632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2180]
  try dsimp only
  rw [child2631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2180_skip, output2631_skip]
  kernel_rfl

theorem node2633_cond_eq
    (child2173 : Flapjack.WordAlloc.removeDeadStructural input2173 value1260 value1 value2 = (output2173, value1261, value1))
    (child2632 : Flapjack.WordAlloc.removeDeadStructural input2632 value1261 value1 value2 = (output2632, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2633 value1260 value1 value2 = (output2633, value1482, value1) := by
  rw [input2633_def, output2633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2173]
  try dsimp only
  rw [child2632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2173_skip, output2632_skip]
  kernel_rfl

theorem node2634_cond_eq
    (child2172 : Flapjack.WordAlloc.removeDeadStructural input2172 value1257 value1 value2 = (output2172, value1260, value1))
    (child2633 : Flapjack.WordAlloc.removeDeadStructural input2633 value1260 value1 value2 = (output2633, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2634 value1257 value1 value2 = (output2634, value1482, value1) := by
  rw [input2634_def, output2634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2172]
  try dsimp only
  rw [child2633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2172_skip, output2633_skip]
  kernel_rfl

theorem node2635_cond_eq
    (child2167 : Flapjack.WordAlloc.removeDeadStructural input2167 value1254 value1 value2 = (output2167, value1257, value1))
    (child2634 : Flapjack.WordAlloc.removeDeadStructural input2634 value1257 value1 value2 = (output2634, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2635 value1254 value1 value2 = (output2635, value1482, value1) := by
  rw [input2635_def, output2635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2167]
  try dsimp only
  rw [child2634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2167_skip, output2634_skip]
  kernel_rfl

theorem node2636_cond_eq
    (child2162 : Flapjack.WordAlloc.removeDeadStructural input2162 value1250 value1 value2 = (output2162, value1254, value1))
    (child2635 : Flapjack.WordAlloc.removeDeadStructural input2635 value1254 value1 value2 = (output2635, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2636 value1250 value1 value2 = (output2636, value1482, value1) := by
  rw [input2636_def, output2636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2162]
  try dsimp only
  rw [child2635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2162_skip, output2635_skip]
  kernel_rfl

theorem node2637_cond_eq
    (child2155 : Flapjack.WordAlloc.removeDeadStructural input2155 value1250 value1 value2 = (output2155, value1250, value1))
    (child2636 : Flapjack.WordAlloc.removeDeadStructural input2636 value1250 value1 value2 = (output2636, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2637 value1250 value1 value2 = (output2637, value1482, value1) := by
  rw [input2637_def, output2637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2155]
  try dsimp only
  rw [child2636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2155_skip, output2636_skip]
  kernel_rfl

theorem node2638_cond_eq
    (child2154 : Flapjack.WordAlloc.removeDeadStructural input2154 value1250 value1 value2 = (output2154, value1250, value1))
    (child2637 : Flapjack.WordAlloc.removeDeadStructural input2637 value1250 value1 value2 = (output2637, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2638 value1250 value1 value2 = (output2638, value1482, value1) := by
  rw [input2638_def, output2638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2154]
  try dsimp only
  rw [child2637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2154_skip, output2637_skip]
  kernel_rfl

theorem node2639_cond_eq
    (child2153 : Flapjack.WordAlloc.removeDeadStructural input2153 value1249 value1 value2 = (output2153, value1250, value1))
    (child2638 : Flapjack.WordAlloc.removeDeadStructural input2638 value1250 value1 value2 = (output2638, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2639 value1249 value1 value2 = (output2639, value1482, value1) := by
  rw [input2639_def, output2639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2153]
  try dsimp only
  rw [child2638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2153_skip, output2638_skip]
  kernel_rfl

theorem node2640_cond_eq
    (child2152 : Flapjack.WordAlloc.removeDeadStructural input2152 value1248 value1 value2 = (output2152, value1249, value1))
    (child2639 : Flapjack.WordAlloc.removeDeadStructural input2639 value1249 value1 value2 = (output2639, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2640 value1248 value1 value2 = (output2640, value1482, value1) := by
  rw [input2640_def, output2640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2152]
  try dsimp only
  rw [child2639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2152_skip, output2639_skip]
  kernel_rfl

theorem node2641_cond_eq
    (child2151 : Flapjack.WordAlloc.removeDeadStructural input2151 value1245 value1 value2 = (output2151, value1248, value1))
    (child2640 : Flapjack.WordAlloc.removeDeadStructural input2640 value1248 value1 value2 = (output2640, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2641 value1245 value1 value2 = (output2641, value1482, value1) := by
  rw [input2641_def, output2641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2151]
  try dsimp only
  rw [child2640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2151_skip, output2640_skip]
  kernel_rfl

theorem node2642_cond_eq
    (child2146 : Flapjack.WordAlloc.removeDeadStructural input2146 value1244 value1 value2 = (output2146, value1245, value1))
    (child2641 : Flapjack.WordAlloc.removeDeadStructural input2641 value1245 value1 value2 = (output2641, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2642 value1244 value1 value2 = (output2642, value1482, value1) := by
  rw [input2642_def, output2642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2146]
  try dsimp only
  rw [child2641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2146_skip, output2641_skip]
  kernel_rfl

theorem node2643_cond_eq
    (child2145 : Flapjack.WordAlloc.removeDeadStructural input2145 value1241 value1 value2 = (output2145, value1244, value1))
    (child2642 : Flapjack.WordAlloc.removeDeadStructural input2642 value1244 value1 value2 = (output2642, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2643 value1241 value1 value2 = (output2643, value1482, value1) := by
  rw [input2643_def, output2643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2145]
  try dsimp only
  rw [child2642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2145_skip, output2642_skip]
  kernel_rfl

theorem node2644_cond_eq
    (child2140 : Flapjack.WordAlloc.removeDeadStructural input2140 value1240 value1 value2 = (output2140, value1241, value1))
    (child2643 : Flapjack.WordAlloc.removeDeadStructural input2643 value1241 value1 value2 = (output2643, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2644 value1240 value1 value2 = (output2644, value1482, value1) := by
  rw [input2644_def, output2644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2140]
  try dsimp only
  rw [child2643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2140_skip, output2643_skip]
  kernel_rfl

theorem node2645_cond_eq
    (child2139 : Flapjack.WordAlloc.removeDeadStructural input2139 value1238 value1 value2 = (output2139, value1240, value1))
    (child2644 : Flapjack.WordAlloc.removeDeadStructural input2644 value1240 value1 value2 = (output2644, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2645 value1238 value1 value2 = (output2645, value1482, value1) := by
  rw [input2645_def, output2645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2139]
  try dsimp only
  rw [child2644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2139_skip, output2644_skip]
  kernel_rfl

theorem node2646_cond_eq
    (child2136 : Flapjack.WordAlloc.removeDeadStructural input2136 value1237 value1 value2 = (output2136, value1238, value1))
    (child2645 : Flapjack.WordAlloc.removeDeadStructural input2645 value1238 value1 value2 = (output2645, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2646 value1237 value1 value2 = (output2646, value1482, value1) := by
  rw [input2646_def, output2646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2136]
  try dsimp only
  rw [child2645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2136_skip, output2645_skip]
  kernel_rfl

theorem node2647_cond_eq
    (child2135 : Flapjack.WordAlloc.removeDeadStructural input2135 value1236 value1 value2 = (output2135, value1237, value1))
    (child2646 : Flapjack.WordAlloc.removeDeadStructural input2646 value1237 value1 value2 = (output2646, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2647 value1236 value1 value2 = (output2647, value1482, value1) := by
  rw [input2647_def, output2647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2135]
  try dsimp only
  rw [child2646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2135_skip, output2646_skip]
  kernel_rfl

theorem node2648_cond_eq
    (child2134 : Flapjack.WordAlloc.removeDeadStructural input2134 value1235 value1 value2 = (output2134, value1236, value1))
    (child2647 : Flapjack.WordAlloc.removeDeadStructural input2647 value1236 value1 value2 = (output2647, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2648 value1235 value1 value2 = (output2648, value1482, value1) := by
  rw [input2648_def, output2648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2134]
  try dsimp only
  rw [child2647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2134_skip, output2647_skip]
  kernel_rfl

theorem node2649_cond_eq
    (child2133 : Flapjack.WordAlloc.removeDeadStructural input2133 value1232 value1 value2 = (output2133, value1235, value1))
    (child2648 : Flapjack.WordAlloc.removeDeadStructural input2648 value1235 value1 value2 = (output2648, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2649 value1232 value1 value2 = (output2649, value1482, value1) := by
  rw [input2649_def, output2649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2133]
  try dsimp only
  rw [child2648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2133_skip, output2648_skip]
  kernel_rfl

theorem node2650_cond_eq
    (child2128 : Flapjack.WordAlloc.removeDeadStructural input2128 value1231 value1 value2 = (output2128, value1232, value1))
    (child2649 : Flapjack.WordAlloc.removeDeadStructural input2649 value1232 value1 value2 = (output2649, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2650 value1231 value1 value2 = (output2650, value1482, value1) := by
  rw [input2650_def, output2650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2128]
  try dsimp only
  rw [child2649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2128_skip, output2649_skip]
  kernel_rfl

theorem node2651_cond_eq
    (child2127 : Flapjack.WordAlloc.removeDeadStructural input2127 value1226 value1 value2 = (output2127, value1231, value1))
    (child2650 : Flapjack.WordAlloc.removeDeadStructural input2650 value1231 value1 value2 = (output2650, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2651 value1226 value1 value2 = (output2651, value1482, value1) := by
  rw [input2651_def, output2651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2127]
  try dsimp only
  rw [child2650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2127_skip, output2650_skip]
  kernel_rfl

theorem node2652_cond_eq
    (child2118 : Flapjack.WordAlloc.removeDeadStructural input2118 value1225 value1 value2 = (output2118, value1226, value1))
    (child2651 : Flapjack.WordAlloc.removeDeadStructural input2651 value1226 value1 value2 = (output2651, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2652 value1225 value1 value2 = (output2652, value1482, value1) := by
  rw [input2652_def, output2652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2118]
  try dsimp only
  rw [child2651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2118_skip, output2651_skip]
  kernel_rfl

theorem node2653_cond_eq
    (child2117 : Flapjack.WordAlloc.removeDeadStructural input2117 value1221 value1 value2 = (output2117, value1225, value1))
    (child2652 : Flapjack.WordAlloc.removeDeadStructural input2652 value1225 value1 value2 = (output2652, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2653 value1221 value1 value2 = (output2653, value1482, value1) := by
  rw [input2653_def, output2653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2117]
  try dsimp only
  rw [child2652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2117_skip, output2652_skip]
  kernel_rfl

theorem node2654_cond_eq
    (child2110 : Flapjack.WordAlloc.removeDeadStructural input2110 value1220 value1 value2 = (output2110, value1221, value1))
    (child2653 : Flapjack.WordAlloc.removeDeadStructural input2653 value1221 value1 value2 = (output2653, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2654 value1220 value1 value2 = (output2654, value1482, value1) := by
  rw [input2654_def, output2654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2110]
  try dsimp only
  rw [child2653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2110_skip, output2653_skip]
  kernel_rfl

theorem node2655_cond_eq
    (child2109 : Flapjack.WordAlloc.removeDeadStructural input2109 value1219 value1 value2 = (output2109, value1220, value1))
    (child2654 : Flapjack.WordAlloc.removeDeadStructural input2654 value1220 value1 value2 = (output2654, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2655 value1219 value1 value2 = (output2655, value1482, value1) := by
  rw [input2655_def, output2655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2109]
  try dsimp only
  rw [child2654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2109_skip, output2654_skip]
  kernel_rfl

theorem node2656_cond_eq
    (child2108 : Flapjack.WordAlloc.removeDeadStructural input2108 value1218 value1 value2 = (output2108, value1219, value1))
    (child2655 : Flapjack.WordAlloc.removeDeadStructural input2655 value1219 value1 value2 = (output2655, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2656 value1218 value1 value2 = (output2656, value1482, value1) := by
  rw [input2656_def, output2656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2108]
  try dsimp only
  rw [child2655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2108_skip, output2655_skip]
  kernel_rfl

theorem node2657_cond_eq
    (child2107 : Flapjack.WordAlloc.removeDeadStructural input2107 value1215 value1 value2 = (output2107, value1218, value1))
    (child2656 : Flapjack.WordAlloc.removeDeadStructural input2656 value1218 value1 value2 = (output2656, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2657 value1215 value1 value2 = (output2657, value1482, value1) := by
  rw [input2657_def, output2657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2107]
  try dsimp only
  rw [child2656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2107_skip, output2656_skip]
  kernel_rfl

theorem node2658_cond_eq
    (child2102 : Flapjack.WordAlloc.removeDeadStructural input2102 value1214 value1 value2 = (output2102, value1215, value1))
    (child2657 : Flapjack.WordAlloc.removeDeadStructural input2657 value1215 value1 value2 = (output2657, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2658 value1214 value1 value2 = (output2658, value1482, value1) := by
  rw [input2658_def, output2658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2102]
  try dsimp only
  rw [child2657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2102_skip, output2657_skip]
  kernel_rfl

theorem node2659_cond_eq
    (child2101 : Flapjack.WordAlloc.removeDeadStructural input2101 value1209 value1 value2 = (output2101, value1214, value1))
    (child2658 : Flapjack.WordAlloc.removeDeadStructural input2658 value1214 value1 value2 = (output2658, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2659 value1209 value1 value2 = (output2659, value1482, value1) := by
  rw [input2659_def, output2659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2101]
  try dsimp only
  rw [child2658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2101_skip, output2658_skip]
  kernel_rfl

theorem node2660_cond_eq
    (child2092 : Flapjack.WordAlloc.removeDeadStructural input2092 value1208 value1 value2 = (output2092, value1209, value1))
    (child2659 : Flapjack.WordAlloc.removeDeadStructural input2659 value1209 value1 value2 = (output2659, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2660 value1208 value1 value2 = (output2660, value1482, value1) := by
  rw [input2660_def, output2660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2092]
  try dsimp only
  rw [child2659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2092_skip, output2659_skip]
  kernel_rfl

theorem node2661_cond_eq
    (child2091 : Flapjack.WordAlloc.removeDeadStructural input2091 value1204 value1 value2 = (output2091, value1208, value1))
    (child2660 : Flapjack.WordAlloc.removeDeadStructural input2660 value1208 value1 value2 = (output2660, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2661 value1204 value1 value2 = (output2661, value1482, value1) := by
  rw [input2661_def, output2661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2091]
  try dsimp only
  rw [child2660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2091_skip, output2660_skip]
  kernel_rfl

theorem node2662_cond_eq
    (child2084 : Flapjack.WordAlloc.removeDeadStructural input2084 value1203 value1 value2 = (output2084, value1204, value1))
    (child2661 : Flapjack.WordAlloc.removeDeadStructural input2661 value1204 value1 value2 = (output2661, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2662 value1203 value1 value2 = (output2662, value1482, value1) := by
  rw [input2662_def, output2662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2084]
  try dsimp only
  rw [child2661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2084_skip, output2661_skip]
  kernel_rfl

theorem node2663_cond_eq
    (child2083 : Flapjack.WordAlloc.removeDeadStructural input2083 value1202 value1 value2 = (output2083, value1203, value1))
    (child2662 : Flapjack.WordAlloc.removeDeadStructural input2662 value1203 value1 value2 = (output2662, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2663 value1202 value1 value2 = (output2663, value1482, value1) := by
  rw [input2663_def, output2663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2083]
  try dsimp only
  rw [child2662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2083_skip, output2662_skip]
  kernel_rfl

theorem node2664_cond_eq
    (child2082 : Flapjack.WordAlloc.removeDeadStructural input2082 value1201 value1 value2 = (output2082, value1202, value1))
    (child2663 : Flapjack.WordAlloc.removeDeadStructural input2663 value1202 value1 value2 = (output2663, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2664 value1201 value1 value2 = (output2664, value1482, value1) := by
  rw [input2664_def, output2664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2082]
  try dsimp only
  rw [child2663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2082_skip, output2663_skip]
  kernel_rfl

theorem node2665_cond_eq
    (child2081 : Flapjack.WordAlloc.removeDeadStructural input2081 value1198 value1 value2 = (output2081, value1201, value1))
    (child2664 : Flapjack.WordAlloc.removeDeadStructural input2664 value1201 value1 value2 = (output2664, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2665 value1198 value1 value2 = (output2665, value1482, value1) := by
  rw [input2665_def, output2665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2081]
  try dsimp only
  rw [child2664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2081_skip, output2664_skip]
  kernel_rfl

theorem node2666_cond_eq
    (child2076 : Flapjack.WordAlloc.removeDeadStructural input2076 value1197 value1 value2 = (output2076, value1198, value1))
    (child2665 : Flapjack.WordAlloc.removeDeadStructural input2665 value1198 value1 value2 = (output2665, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2666 value1197 value1 value2 = (output2666, value1482, value1) := by
  rw [input2666_def, output2666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2076]
  try dsimp only
  rw [child2665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2076_skip, output2665_skip]
  kernel_rfl

theorem node2667_cond_eq
    (child2075 : Flapjack.WordAlloc.removeDeadStructural input2075 value1192 value1 value2 = (output2075, value1197, value1))
    (child2666 : Flapjack.WordAlloc.removeDeadStructural input2666 value1197 value1 value2 = (output2666, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2667 value1192 value1 value2 = (output2667, value1482, value1) := by
  rw [input2667_def, output2667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2075]
  try dsimp only
  rw [child2666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2075_skip, output2666_skip]
  kernel_rfl

theorem node2668_cond_eq
    (child2066 : Flapjack.WordAlloc.removeDeadStructural input2066 value1191 value1 value2 = (output2066, value1192, value1))
    (child2667 : Flapjack.WordAlloc.removeDeadStructural input2667 value1192 value1 value2 = (output2667, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2668 value1191 value1 value2 = (output2668, value1482, value1) := by
  rw [input2668_def, output2668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2066]
  try dsimp only
  rw [child2667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2066_skip, output2667_skip]
  kernel_rfl

theorem node2669_cond_eq
    (child2065 : Flapjack.WordAlloc.removeDeadStructural input2065 value1187 value1 value2 = (output2065, value1191, value1))
    (child2668 : Flapjack.WordAlloc.removeDeadStructural input2668 value1191 value1 value2 = (output2668, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2669 value1187 value1 value2 = (output2669, value1482, value1) := by
  rw [input2669_def, output2669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2065]
  try dsimp only
  rw [child2668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2065_skip, output2668_skip]
  kernel_rfl

theorem node2670_cond_eq
    (child2058 : Flapjack.WordAlloc.removeDeadStructural input2058 value1186 value1 value2 = (output2058, value1187, value1))
    (child2669 : Flapjack.WordAlloc.removeDeadStructural input2669 value1187 value1 value2 = (output2669, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2670 value1186 value1 value2 = (output2670, value1482, value1) := by
  rw [input2670_def, output2670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2058]
  try dsimp only
  rw [child2669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2058_skip, output2669_skip]
  kernel_rfl

theorem node2671_cond_eq
    (child2057 : Flapjack.WordAlloc.removeDeadStructural input2057 value1185 value1 value2 = (output2057, value1186, value1))
    (child2670 : Flapjack.WordAlloc.removeDeadStructural input2670 value1186 value1 value2 = (output2670, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2671 value1185 value1 value2 = (output2671, value1482, value1) := by
  rw [input2671_def, output2671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2057]
  try dsimp only
  rw [child2670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2057_skip, output2670_skip]
  kernel_rfl

theorem node2672_cond_eq
    (child2056 : Flapjack.WordAlloc.removeDeadStructural input2056 value1184 value1 value2 = (output2056, value1185, value1))
    (child2671 : Flapjack.WordAlloc.removeDeadStructural input2671 value1185 value1 value2 = (output2671, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2672 value1184 value1 value2 = (output2672, value1482, value1) := by
  rw [input2672_def, output2672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2056]
  try dsimp only
  rw [child2671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2056_skip, output2671_skip]
  kernel_rfl

theorem node2673_cond_eq
    (child2055 : Flapjack.WordAlloc.removeDeadStructural input2055 value1181 value1 value2 = (output2055, value1184, value1))
    (child2672 : Flapjack.WordAlloc.removeDeadStructural input2672 value1184 value1 value2 = (output2672, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2673 value1181 value1 value2 = (output2673, value1482, value1) := by
  rw [input2673_def, output2673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2055]
  try dsimp only
  rw [child2672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2055_skip, output2672_skip]
  kernel_rfl

theorem node2674_cond_eq
    (child2050 : Flapjack.WordAlloc.removeDeadStructural input2050 value1180 value1 value2 = (output2050, value1181, value1))
    (child2673 : Flapjack.WordAlloc.removeDeadStructural input2673 value1181 value1 value2 = (output2673, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2674 value1180 value1 value2 = (output2674, value1482, value1) := by
  rw [input2674_def, output2674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2050]
  try dsimp only
  rw [child2673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2050_skip, output2673_skip]
  kernel_rfl

theorem node2675_cond_eq
    (child2049 : Flapjack.WordAlloc.removeDeadStructural input2049 value1175 value1 value2 = (output2049, value1180, value1))
    (child2674 : Flapjack.WordAlloc.removeDeadStructural input2674 value1180 value1 value2 = (output2674, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2675 value1175 value1 value2 = (output2675, value1482, value1) := by
  rw [input2675_def, output2675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2049]
  try dsimp only
  rw [child2674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2049_skip, output2674_skip]
  kernel_rfl

theorem node2676_cond_eq
    (child2040 : Flapjack.WordAlloc.removeDeadStructural input2040 value1174 value1 value2 = (output2040, value1175, value1))
    (child2675 : Flapjack.WordAlloc.removeDeadStructural input2675 value1175 value1 value2 = (output2675, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2676 value1174 value1 value2 = (output2676, value1482, value1) := by
  rw [input2676_def, output2676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2040]
  try dsimp only
  rw [child2675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2040_skip, output2675_skip]
  kernel_rfl

theorem node2677_cond_eq
    (child2039 : Flapjack.WordAlloc.removeDeadStructural input2039 value1170 value1 value2 = (output2039, value1174, value1))
    (child2676 : Flapjack.WordAlloc.removeDeadStructural input2676 value1174 value1 value2 = (output2676, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2677 value1170 value1 value2 = (output2677, value1482, value1) := by
  rw [input2677_def, output2677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2039]
  try dsimp only
  rw [child2676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2039_skip, output2676_skip]
  kernel_rfl

theorem node2678_cond_eq
    (child2032 : Flapjack.WordAlloc.removeDeadStructural input2032 value1169 value1 value2 = (output2032, value1170, value1))
    (child2677 : Flapjack.WordAlloc.removeDeadStructural input2677 value1170 value1 value2 = (output2677, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2678 value1169 value1 value2 = (output2678, value1482, value1) := by
  rw [input2678_def, output2678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2032]
  try dsimp only
  rw [child2677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2032_skip, output2677_skip]
  kernel_rfl

theorem node2679_cond_eq
    (child2031 : Flapjack.WordAlloc.removeDeadStructural input2031 value1166 value1 value2 = (output2031, value1169, value1))
    (child2678 : Flapjack.WordAlloc.removeDeadStructural input2678 value1169 value1 value2 = (output2678, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2679 value1166 value1 value2 = (output2679, value1482, value1) := by
  rw [input2679_def, output2679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2031]
  try dsimp only
  rw [child2678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2031_skip, output2678_skip]
  kernel_rfl

theorem node2680_cond_eq
    (child2026 : Flapjack.WordAlloc.removeDeadStructural input2026 value1163 value1 value2 = (output2026, value1166, value1))
    (child2679 : Flapjack.WordAlloc.removeDeadStructural input2679 value1166 value1 value2 = (output2679, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2680 value1163 value1 value2 = (output2680, value1482, value1) := by
  rw [input2680_def, output2680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2026]
  try dsimp only
  rw [child2679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2026_skip, output2679_skip]
  kernel_rfl

theorem node2681_cond_eq
    (child2021 : Flapjack.WordAlloc.removeDeadStructural input2021 value1159 value1 value2 = (output2021, value1163, value1))
    (child2680 : Flapjack.WordAlloc.removeDeadStructural input2680 value1163 value1 value2 = (output2680, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2681 value1159 value1 value2 = (output2681, value1482, value1) := by
  rw [input2681_def, output2681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2021]
  try dsimp only
  rw [child2680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2021_skip, output2680_skip]
  kernel_rfl

theorem node2682_cond_eq
    (child2014 : Flapjack.WordAlloc.removeDeadStructural input2014 value1159 value1 value2 = (output2014, value1159, value1))
    (child2681 : Flapjack.WordAlloc.removeDeadStructural input2681 value1159 value1 value2 = (output2681, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2682 value1159 value1 value2 = (output2682, value1482, value1) := by
  rw [input2682_def, output2682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2014]
  try dsimp only
  rw [child2681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2014_skip, output2681_skip]
  kernel_rfl

theorem node2683_cond_eq
    (child2013 : Flapjack.WordAlloc.removeDeadStructural input2013 value1159 value1 value2 = (output2013, value1159, value1))
    (child2682 : Flapjack.WordAlloc.removeDeadStructural input2682 value1159 value1 value2 = (output2682, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2683 value1159 value1 value2 = (output2683, value1482, value1) := by
  rw [input2683_def, output2683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2013]
  try dsimp only
  rw [child2682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2013_skip, output2682_skip]
  kernel_rfl

theorem node2684_cond_eq
    (child2012 : Flapjack.WordAlloc.removeDeadStructural input2012 value1158 value1 value2 = (output2012, value1159, value1))
    (child2683 : Flapjack.WordAlloc.removeDeadStructural input2683 value1159 value1 value2 = (output2683, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2684 value1158 value1 value2 = (output2684, value1482, value1) := by
  rw [input2684_def, output2684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2012]
  try dsimp only
  rw [child2683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2012_skip, output2683_skip]
  kernel_rfl

theorem node2685_cond_eq
    (child2011 : Flapjack.WordAlloc.removeDeadStructural input2011 value1157 value1 value2 = (output2011, value1158, value1))
    (child2684 : Flapjack.WordAlloc.removeDeadStructural input2684 value1158 value1 value2 = (output2684, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2685 value1157 value1 value2 = (output2685, value1482, value1) := by
  rw [input2685_def, output2685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2011]
  try dsimp only
  rw [child2684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2011_skip, output2684_skip]
  kernel_rfl

theorem node2686_cond_eq
    (child2010 : Flapjack.WordAlloc.removeDeadStructural input2010 value1154 value1 value2 = (output2010, value1157, value1))
    (child2685 : Flapjack.WordAlloc.removeDeadStructural input2685 value1157 value1 value2 = (output2685, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2686 value1154 value1 value2 = (output2686, value1482, value1) := by
  rw [input2686_def, output2686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2010]
  try dsimp only
  rw [child2685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2010_skip, output2685_skip]
  kernel_rfl

theorem node2687_cond_eq
    (child2005 : Flapjack.WordAlloc.removeDeadStructural input2005 value1153 value1 value2 = (output2005, value1154, value1))
    (child2686 : Flapjack.WordAlloc.removeDeadStructural input2686 value1154 value1 value2 = (output2686, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2687 value1153 value1 value2 = (output2687, value1482, value1) := by
  rw [input2687_def, output2687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2005]
  try dsimp only
  rw [child2686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2005_skip, output2686_skip]
  kernel_rfl

theorem node2688_cond_eq
    (child2004 : Flapjack.WordAlloc.removeDeadStructural input2004 value1150 value1 value2 = (output2004, value1153, value1))
    (child2687 : Flapjack.WordAlloc.removeDeadStructural input2687 value1153 value1 value2 = (output2687, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2688 value1150 value1 value2 = (output2688, value1482, value1) := by
  rw [input2688_def, output2688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2004]
  try dsimp only
  rw [child2687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2004_skip, output2687_skip]
  kernel_rfl

theorem node2689_cond_eq
    (child1999 : Flapjack.WordAlloc.removeDeadStructural input1999 value1149 value1 value2 = (output1999, value1150, value1))
    (child2688 : Flapjack.WordAlloc.removeDeadStructural input2688 value1150 value1 value2 = (output2688, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2689 value1149 value1 value2 = (output2689, value1482, value1) := by
  rw [input2689_def, output2689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1999]
  try dsimp only
  rw [child2688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1999_skip, output2688_skip]
  kernel_rfl

theorem node2690_cond_eq
    (child1998 : Flapjack.WordAlloc.removeDeadStructural input1998 value1147 value1 value2 = (output1998, value1149, value1))
    (child2689 : Flapjack.WordAlloc.removeDeadStructural input2689 value1149 value1 value2 = (output2689, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2690 value1147 value1 value2 = (output2690, value1482, value1) := by
  rw [input2690_def, output2690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1998]
  try dsimp only
  rw [child2689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1998_skip, output2689_skip]
  kernel_rfl

theorem node2691_cond_eq
    (child1995 : Flapjack.WordAlloc.removeDeadStructural input1995 value1146 value1 value2 = (output1995, value1147, value1))
    (child2690 : Flapjack.WordAlloc.removeDeadStructural input2690 value1147 value1 value2 = (output2690, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2691 value1146 value1 value2 = (output2691, value1482, value1) := by
  rw [input2691_def, output2691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1995]
  try dsimp only
  rw [child2690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1995_skip, output2690_skip]
  kernel_rfl

theorem node2692_cond_eq
    (child1994 : Flapjack.WordAlloc.removeDeadStructural input1994 value1145 value1 value2 = (output1994, value1146, value1))
    (child2691 : Flapjack.WordAlloc.removeDeadStructural input2691 value1146 value1 value2 = (output2691, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2692 value1145 value1 value2 = (output2692, value1482, value1) := by
  rw [input2692_def, output2692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1994]
  try dsimp only
  rw [child2691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1994_skip, output2691_skip]
  kernel_rfl

theorem node2693_cond_eq
    (child1993 : Flapjack.WordAlloc.removeDeadStructural input1993 value1144 value1 value2 = (output1993, value1145, value1))
    (child2692 : Flapjack.WordAlloc.removeDeadStructural input2692 value1145 value1 value2 = (output2692, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2693 value1144 value1 value2 = (output2693, value1482, value1) := by
  rw [input2693_def, output2693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1993]
  try dsimp only
  rw [child2692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1993_skip, output2692_skip]
  kernel_rfl

theorem node2694_cond_eq
    (child1992 : Flapjack.WordAlloc.removeDeadStructural input1992 value1141 value1 value2 = (output1992, value1144, value1))
    (child2693 : Flapjack.WordAlloc.removeDeadStructural input2693 value1144 value1 value2 = (output2693, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2694 value1141 value1 value2 = (output2694, value1482, value1) := by
  rw [input2694_def, output2694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1992]
  try dsimp only
  rw [child2693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1992_skip, output2693_skip]
  kernel_rfl

theorem node2695_cond_eq
    (child1987 : Flapjack.WordAlloc.removeDeadStructural input1987 value1140 value1 value2 = (output1987, value1141, value1))
    (child2694 : Flapjack.WordAlloc.removeDeadStructural input2694 value1141 value1 value2 = (output2694, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2695 value1140 value1 value2 = (output2695, value1482, value1) := by
  rw [input2695_def, output2695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1987]
  try dsimp only
  rw [child2694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1987_skip, output2694_skip]
  kernel_rfl

theorem node2696_cond_eq
    (child1986 : Flapjack.WordAlloc.removeDeadStructural input1986 value1135 value1 value2 = (output1986, value1140, value1))
    (child2695 : Flapjack.WordAlloc.removeDeadStructural input2695 value1140 value1 value2 = (output2695, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2696 value1135 value1 value2 = (output2696, value1482, value1) := by
  rw [input2696_def, output2696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1986]
  try dsimp only
  rw [child2695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1986_skip, output2695_skip]
  kernel_rfl

theorem node2697_cond_eq
    (child1977 : Flapjack.WordAlloc.removeDeadStructural input1977 value1134 value1 value2 = (output1977, value1135, value1))
    (child2696 : Flapjack.WordAlloc.removeDeadStructural input2696 value1135 value1 value2 = (output2696, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2697 value1134 value1 value2 = (output2697, value1482, value1) := by
  rw [input2697_def, output2697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1977]
  try dsimp only
  rw [child2696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1977_skip, output2696_skip]
  kernel_rfl

theorem node2698_cond_eq
    (child1976 : Flapjack.WordAlloc.removeDeadStructural input1976 value1130 value1 value2 = (output1976, value1134, value1))
    (child2697 : Flapjack.WordAlloc.removeDeadStructural input2697 value1134 value1 value2 = (output2697, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2698 value1130 value1 value2 = (output2698, value1482, value1) := by
  rw [input2698_def, output2698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1976]
  try dsimp only
  rw [child2697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1976_skip, output2697_skip]
  kernel_rfl

theorem node2699_cond_eq
    (child1969 : Flapjack.WordAlloc.removeDeadStructural input1969 value1129 value1 value2 = (output1969, value1130, value1))
    (child2698 : Flapjack.WordAlloc.removeDeadStructural input2698 value1130 value1 value2 = (output2698, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2699 value1129 value1 value2 = (output2699, value1482, value1) := by
  rw [input2699_def, output2699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1969]
  try dsimp only
  rw [child2698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1969_skip, output2698_skip]
  kernel_rfl

theorem node2700_cond_eq
    (child1968 : Flapjack.WordAlloc.removeDeadStructural input1968 value1128 value1 value2 = (output1968, value1129, value1))
    (child2699 : Flapjack.WordAlloc.removeDeadStructural input2699 value1129 value1 value2 = (output2699, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2700 value1128 value1 value2 = (output2700, value1482, value1) := by
  rw [input2700_def, output2700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1968]
  try dsimp only
  rw [child2699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1968_skip, output2699_skip]
  kernel_rfl

theorem node2701_cond_eq
    (child1967 : Flapjack.WordAlloc.removeDeadStructural input1967 value1127 value1 value2 = (output1967, value1128, value1))
    (child2700 : Flapjack.WordAlloc.removeDeadStructural input2700 value1128 value1 value2 = (output2700, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2701 value1127 value1 value2 = (output2701, value1482, value1) := by
  rw [input2701_def, output2701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1967]
  try dsimp only
  rw [child2700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1967_skip, output2700_skip]
  kernel_rfl

theorem node2702_cond_eq
    (child1966 : Flapjack.WordAlloc.removeDeadStructural input1966 value1124 value1 value2 = (output1966, value1127, value1))
    (child2701 : Flapjack.WordAlloc.removeDeadStructural input2701 value1127 value1 value2 = (output2701, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2702 value1124 value1 value2 = (output2702, value1482, value1) := by
  rw [input2702_def, output2702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1966]
  try dsimp only
  rw [child2701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1966_skip, output2701_skip]
  kernel_rfl

theorem node2703_cond_eq
    (child1961 : Flapjack.WordAlloc.removeDeadStructural input1961 value1123 value1 value2 = (output1961, value1124, value1))
    (child2702 : Flapjack.WordAlloc.removeDeadStructural input2702 value1124 value1 value2 = (output2702, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2703 value1123 value1 value2 = (output2703, value1482, value1) := by
  rw [input2703_def, output2703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1961]
  try dsimp only
  rw [child2702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1961_skip, output2702_skip]
  kernel_rfl

theorem node2704_cond_eq
    (child1960 : Flapjack.WordAlloc.removeDeadStructural input1960 value1118 value1 value2 = (output1960, value1123, value1))
    (child2703 : Flapjack.WordAlloc.removeDeadStructural input2703 value1123 value1 value2 = (output2703, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2704 value1118 value1 value2 = (output2704, value1482, value1) := by
  rw [input2704_def, output2704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1960]
  try dsimp only
  rw [child2703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1960_skip, output2703_skip]
  kernel_rfl

theorem node2705_cond_eq
    (child1951 : Flapjack.WordAlloc.removeDeadStructural input1951 value1117 value1 value2 = (output1951, value1118, value1))
    (child2704 : Flapjack.WordAlloc.removeDeadStructural input2704 value1118 value1 value2 = (output2704, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2705 value1117 value1 value2 = (output2705, value1482, value1) := by
  rw [input2705_def, output2705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1951]
  try dsimp only
  rw [child2704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1951_skip, output2704_skip]
  kernel_rfl

theorem node2706_cond_eq
    (child1950 : Flapjack.WordAlloc.removeDeadStructural input1950 value1113 value1 value2 = (output1950, value1117, value1))
    (child2705 : Flapjack.WordAlloc.removeDeadStructural input2705 value1117 value1 value2 = (output2705, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2706 value1113 value1 value2 = (output2706, value1482, value1) := by
  rw [input2706_def, output2706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1950]
  try dsimp only
  rw [child2705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1950_skip, output2705_skip]
  kernel_rfl

theorem node2707_cond_eq
    (child1943 : Flapjack.WordAlloc.removeDeadStructural input1943 value1112 value1 value2 = (output1943, value1113, value1))
    (child2706 : Flapjack.WordAlloc.removeDeadStructural input2706 value1113 value1 value2 = (output2706, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2707 value1112 value1 value2 = (output2707, value1482, value1) := by
  rw [input2707_def, output2707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1943]
  try dsimp only
  rw [child2706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1943_skip, output2706_skip]
  kernel_rfl

theorem node2708_cond_eq
    (child1942 : Flapjack.WordAlloc.removeDeadStructural input1942 value1111 value1 value2 = (output1942, value1112, value1))
    (child2707 : Flapjack.WordAlloc.removeDeadStructural input2707 value1112 value1 value2 = (output2707, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2708 value1111 value1 value2 = (output2708, value1482, value1) := by
  rw [input2708_def, output2708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1942]
  try dsimp only
  rw [child2707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1942_skip, output2707_skip]
  kernel_rfl

theorem node2709_cond_eq
    (child1941 : Flapjack.WordAlloc.removeDeadStructural input1941 value1110 value1 value2 = (output1941, value1111, value1))
    (child2708 : Flapjack.WordAlloc.removeDeadStructural input2708 value1111 value1 value2 = (output2708, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2709 value1110 value1 value2 = (output2709, value1482, value1) := by
  rw [input2709_def, output2709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1941]
  try dsimp only
  rw [child2708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1941_skip, output2708_skip]
  kernel_rfl

theorem node2710_cond_eq
    (child1940 : Flapjack.WordAlloc.removeDeadStructural input1940 value1107 value1 value2 = (output1940, value1110, value1))
    (child2709 : Flapjack.WordAlloc.removeDeadStructural input2709 value1110 value1 value2 = (output2709, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2710 value1107 value1 value2 = (output2710, value1482, value1) := by
  rw [input2710_def, output2710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1940]
  try dsimp only
  rw [child2709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1940_skip, output2709_skip]
  kernel_rfl

theorem node2711_cond_eq
    (child1935 : Flapjack.WordAlloc.removeDeadStructural input1935 value1106 value1 value2 = (output1935, value1107, value1))
    (child2710 : Flapjack.WordAlloc.removeDeadStructural input2710 value1107 value1 value2 = (output2710, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2711 value1106 value1 value2 = (output2711, value1482, value1) := by
  rw [input2711_def, output2711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1935]
  try dsimp only
  rw [child2710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1935_skip, output2710_skip]
  kernel_rfl

theorem node2712_cond_eq
    (child1934 : Flapjack.WordAlloc.removeDeadStructural input1934 value1101 value1 value2 = (output1934, value1106, value1))
    (child2711 : Flapjack.WordAlloc.removeDeadStructural input2711 value1106 value1 value2 = (output2711, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2712 value1101 value1 value2 = (output2712, value1482, value1) := by
  rw [input2712_def, output2712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1934]
  try dsimp only
  rw [child2711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1934_skip, output2711_skip]
  kernel_rfl

theorem node2713_cond_eq
    (child1925 : Flapjack.WordAlloc.removeDeadStructural input1925 value1100 value1 value2 = (output1925, value1101, value1))
    (child2712 : Flapjack.WordAlloc.removeDeadStructural input2712 value1101 value1 value2 = (output2712, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2713 value1100 value1 value2 = (output2713, value1482, value1) := by
  rw [input2713_def, output2713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1925]
  try dsimp only
  rw [child2712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1925_skip, output2712_skip]
  kernel_rfl

theorem node2714_cond_eq
    (child1924 : Flapjack.WordAlloc.removeDeadStructural input1924 value1096 value1 value2 = (output1924, value1100, value1))
    (child2713 : Flapjack.WordAlloc.removeDeadStructural input2713 value1100 value1 value2 = (output2713, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2714 value1096 value1 value2 = (output2714, value1482, value1) := by
  rw [input2714_def, output2714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1924]
  try dsimp only
  rw [child2713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1924_skip, output2713_skip]
  kernel_rfl

theorem node2715_cond_eq
    (child1917 : Flapjack.WordAlloc.removeDeadStructural input1917 value1095 value1 value2 = (output1917, value1096, value1))
    (child2714 : Flapjack.WordAlloc.removeDeadStructural input2714 value1096 value1 value2 = (output2714, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2715 value1095 value1 value2 = (output2715, value1482, value1) := by
  rw [input2715_def, output2715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1917]
  try dsimp only
  rw [child2714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1917_skip, output2714_skip]
  kernel_rfl

theorem node2716_cond_eq
    (child1916 : Flapjack.WordAlloc.removeDeadStructural input1916 value1094 value1 value2 = (output1916, value1095, value1))
    (child2715 : Flapjack.WordAlloc.removeDeadStructural input2715 value1095 value1 value2 = (output2715, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2716 value1094 value1 value2 = (output2716, value1482, value1) := by
  rw [input2716_def, output2716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1916]
  try dsimp only
  rw [child2715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1916_skip, output2715_skip]
  kernel_rfl

theorem node2717_cond_eq
    (child1915 : Flapjack.WordAlloc.removeDeadStructural input1915 value1093 value1 value2 = (output1915, value1094, value1))
    (child2716 : Flapjack.WordAlloc.removeDeadStructural input2716 value1094 value1 value2 = (output2716, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2717 value1093 value1 value2 = (output2717, value1482, value1) := by
  rw [input2717_def, output2717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1915]
  try dsimp only
  rw [child2716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1915_skip, output2716_skip]
  kernel_rfl

theorem node2718_cond_eq
    (child1914 : Flapjack.WordAlloc.removeDeadStructural input1914 value1090 value1 value2 = (output1914, value1093, value1))
    (child2717 : Flapjack.WordAlloc.removeDeadStructural input2717 value1093 value1 value2 = (output2717, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2718 value1090 value1 value2 = (output2718, value1482, value1) := by
  rw [input2718_def, output2718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1914]
  try dsimp only
  rw [child2717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1914_skip, output2717_skip]
  kernel_rfl

theorem node2719_cond_eq
    (child1909 : Flapjack.WordAlloc.removeDeadStructural input1909 value1089 value1 value2 = (output1909, value1090, value1))
    (child2718 : Flapjack.WordAlloc.removeDeadStructural input2718 value1090 value1 value2 = (output2718, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2719 value1089 value1 value2 = (output2719, value1482, value1) := by
  rw [input2719_def, output2719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1909]
  try dsimp only
  rw [child2718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1909_skip, output2718_skip]
  kernel_rfl

theorem node2720_cond_eq
    (child1908 : Flapjack.WordAlloc.removeDeadStructural input1908 value1084 value1 value2 = (output1908, value1089, value1))
    (child2719 : Flapjack.WordAlloc.removeDeadStructural input2719 value1089 value1 value2 = (output2719, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2720 value1084 value1 value2 = (output2720, value1482, value1) := by
  rw [input2720_def, output2720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1908]
  try dsimp only
  rw [child2719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1908_skip, output2719_skip]
  kernel_rfl

theorem node2721_cond_eq
    (child1899 : Flapjack.WordAlloc.removeDeadStructural input1899 value1083 value1 value2 = (output1899, value1084, value1))
    (child2720 : Flapjack.WordAlloc.removeDeadStructural input2720 value1084 value1 value2 = (output2720, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2721 value1083 value1 value2 = (output2721, value1482, value1) := by
  rw [input2721_def, output2721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1899]
  try dsimp only
  rw [child2720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1899_skip, output2720_skip]
  kernel_rfl

theorem node2722_cond_eq
    (child1898 : Flapjack.WordAlloc.removeDeadStructural input1898 value1079 value1 value2 = (output1898, value1083, value1))
    (child2721 : Flapjack.WordAlloc.removeDeadStructural input2721 value1083 value1 value2 = (output2721, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2722 value1079 value1 value2 = (output2722, value1482, value1) := by
  rw [input2722_def, output2722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1898]
  try dsimp only
  rw [child2721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1898_skip, output2721_skip]
  kernel_rfl

theorem node2723_cond_eq
    (child1891 : Flapjack.WordAlloc.removeDeadStructural input1891 value1078 value1 value2 = (output1891, value1079, value1))
    (child2722 : Flapjack.WordAlloc.removeDeadStructural input2722 value1079 value1 value2 = (output2722, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2723 value1078 value1 value2 = (output2723, value1482, value1) := by
  rw [input2723_def, output2723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1891]
  try dsimp only
  rw [child2722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1891_skip, output2722_skip]
  kernel_rfl

theorem node2724_cond_eq
    (child1890 : Flapjack.WordAlloc.removeDeadStructural input1890 value1077 value1 value2 = (output1890, value1078, value1))
    (child2723 : Flapjack.WordAlloc.removeDeadStructural input2723 value1078 value1 value2 = (output2723, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2724 value1077 value1 value2 = (output2724, value1482, value1) := by
  rw [input2724_def, output2724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1890]
  try dsimp only
  rw [child2723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1890_skip, output2723_skip]
  kernel_rfl

theorem node2725_cond_eq
    (child1889 : Flapjack.WordAlloc.removeDeadStructural input1889 value1076 value1 value2 = (output1889, value1077, value1))
    (child2724 : Flapjack.WordAlloc.removeDeadStructural input2724 value1077 value1 value2 = (output2724, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2725 value1076 value1 value2 = (output2725, value1482, value1) := by
  rw [input2725_def, output2725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1889]
  try dsimp only
  rw [child2724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1889_skip, output2724_skip]
  kernel_rfl

theorem node2726_cond_eq
    (child1888 : Flapjack.WordAlloc.removeDeadStructural input1888 value1073 value1 value2 = (output1888, value1076, value1))
    (child2725 : Flapjack.WordAlloc.removeDeadStructural input2725 value1076 value1 value2 = (output2725, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2726 value1073 value1 value2 = (output2726, value1482, value1) := by
  rw [input2726_def, output2726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1888]
  try dsimp only
  rw [child2725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1888_skip, output2725_skip]
  kernel_rfl

theorem node2727_cond_eq
    (child1883 : Flapjack.WordAlloc.removeDeadStructural input1883 value1072 value1 value2 = (output1883, value1073, value1))
    (child2726 : Flapjack.WordAlloc.removeDeadStructural input2726 value1073 value1 value2 = (output2726, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2727 value1072 value1 value2 = (output2727, value1482, value1) := by
  rw [input2727_def, output2727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1883]
  try dsimp only
  rw [child2726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1883_skip, output2726_skip]
  kernel_rfl

theorem node2728_cond_eq
    (child1882 : Flapjack.WordAlloc.removeDeadStructural input1882 value1067 value1 value2 = (output1882, value1072, value1))
    (child2727 : Flapjack.WordAlloc.removeDeadStructural input2727 value1072 value1 value2 = (output2727, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2728 value1067 value1 value2 = (output2728, value1482, value1) := by
  rw [input2728_def, output2728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1882]
  try dsimp only
  rw [child2727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1882_skip, output2727_skip]
  kernel_rfl

theorem node2729_cond_eq
    (child1873 : Flapjack.WordAlloc.removeDeadStructural input1873 value1066 value1 value2 = (output1873, value1067, value1))
    (child2728 : Flapjack.WordAlloc.removeDeadStructural input2728 value1067 value1 value2 = (output2728, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2729 value1066 value1 value2 = (output2729, value1482, value1) := by
  rw [input2729_def, output2729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1873]
  try dsimp only
  rw [child2728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1873_skip, output2728_skip]
  kernel_rfl

theorem node2730_cond_eq
    (child1872 : Flapjack.WordAlloc.removeDeadStructural input1872 value1062 value1 value2 = (output1872, value1066, value1))
    (child2729 : Flapjack.WordAlloc.removeDeadStructural input2729 value1066 value1 value2 = (output2729, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2730 value1062 value1 value2 = (output2730, value1482, value1) := by
  rw [input2730_def, output2730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1872]
  try dsimp only
  rw [child2729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1872_skip, output2729_skip]
  kernel_rfl

theorem node2731_cond_eq
    (child1865 : Flapjack.WordAlloc.removeDeadStructural input1865 value1061 value1 value2 = (output1865, value1062, value1))
    (child2730 : Flapjack.WordAlloc.removeDeadStructural input2730 value1062 value1 value2 = (output2730, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2731 value1061 value1 value2 = (output2731, value1482, value1) := by
  rw [input2731_def, output2731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1865]
  try dsimp only
  rw [child2730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1865_skip, output2730_skip]
  kernel_rfl

theorem node2732_cond_eq
    (child1864 : Flapjack.WordAlloc.removeDeadStructural input1864 value1058 value1 value2 = (output1864, value1061, value1))
    (child2731 : Flapjack.WordAlloc.removeDeadStructural input2731 value1061 value1 value2 = (output2731, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2732 value1058 value1 value2 = (output2732, value1482, value1) := by
  rw [input2732_def, output2732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1864]
  try dsimp only
  rw [child2731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1864_skip, output2731_skip]
  kernel_rfl

theorem node2733_cond_eq
    (child1859 : Flapjack.WordAlloc.removeDeadStructural input1859 value1055 value1 value2 = (output1859, value1058, value1))
    (child2732 : Flapjack.WordAlloc.removeDeadStructural input2732 value1058 value1 value2 = (output2732, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2733 value1055 value1 value2 = (output2733, value1482, value1) := by
  rw [input2733_def, output2733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1859]
  try dsimp only
  rw [child2732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1859_skip, output2732_skip]
  kernel_rfl

theorem node2734_cond_eq
    (child1854 : Flapjack.WordAlloc.removeDeadStructural input1854 value1051 value1 value2 = (output1854, value1055, value1))
    (child2733 : Flapjack.WordAlloc.removeDeadStructural input2733 value1055 value1 value2 = (output2733, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2734 value1051 value1 value2 = (output2734, value1482, value1) := by
  rw [input2734_def, output2734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1854]
  try dsimp only
  rw [child2733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1854_skip, output2733_skip]
  kernel_rfl

theorem node2735_cond_eq
    (child1847 : Flapjack.WordAlloc.removeDeadStructural input1847 value1051 value1 value2 = (output1847, value1051, value1))
    (child2734 : Flapjack.WordAlloc.removeDeadStructural input2734 value1051 value1 value2 = (output2734, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2735 value1051 value1 value2 = (output2735, value1482, value1) := by
  rw [input2735_def, output2735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1847]
  try dsimp only
  rw [child2734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1847_skip, output2734_skip]
  kernel_rfl

theorem node2736_cond_eq
    (child1846 : Flapjack.WordAlloc.removeDeadStructural input1846 value1051 value1 value2 = (output1846, value1051, value1))
    (child2735 : Flapjack.WordAlloc.removeDeadStructural input2735 value1051 value1 value2 = (output2735, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2736 value1051 value1 value2 = (output2736, value1482, value1) := by
  rw [input2736_def, output2736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1846]
  try dsimp only
  rw [child2735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1846_skip, output2735_skip]
  kernel_rfl

theorem node2737_cond_eq
    (child1845 : Flapjack.WordAlloc.removeDeadStructural input1845 value1050 value1 value2 = (output1845, value1051, value1))
    (child2736 : Flapjack.WordAlloc.removeDeadStructural input2736 value1051 value1 value2 = (output2736, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2737 value1050 value1 value2 = (output2737, value1482, value1) := by
  rw [input2737_def, output2737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1845]
  try dsimp only
  rw [child2736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1845_skip, output2736_skip]
  kernel_rfl

theorem node2738_cond_eq
    (child1844 : Flapjack.WordAlloc.removeDeadStructural input1844 value1049 value1 value2 = (output1844, value1050, value1))
    (child2737 : Flapjack.WordAlloc.removeDeadStructural input2737 value1050 value1 value2 = (output2737, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2738 value1049 value1 value2 = (output2738, value1482, value1) := by
  rw [input2738_def, output2738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1844]
  try dsimp only
  rw [child2737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1844_skip, output2737_skip]
  kernel_rfl

theorem node2739_cond_eq
    (child1843 : Flapjack.WordAlloc.removeDeadStructural input1843 value1046 value1 value2 = (output1843, value1049, value1))
    (child2738 : Flapjack.WordAlloc.removeDeadStructural input2738 value1049 value1 value2 = (output2738, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2739 value1046 value1 value2 = (output2739, value1482, value1) := by
  rw [input2739_def, output2739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1843]
  try dsimp only
  rw [child2738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1843_skip, output2738_skip]
  kernel_rfl

theorem node2740_cond_eq
    (child1838 : Flapjack.WordAlloc.removeDeadStructural input1838 value1045 value1 value2 = (output1838, value1046, value1))
    (child2739 : Flapjack.WordAlloc.removeDeadStructural input2739 value1046 value1 value2 = (output2739, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2740 value1045 value1 value2 = (output2740, value1482, value1) := by
  rw [input2740_def, output2740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1838]
  try dsimp only
  rw [child2739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1838_skip, output2739_skip]
  kernel_rfl

theorem node2741_cond_eq
    (child1837 : Flapjack.WordAlloc.removeDeadStructural input1837 value1042 value1 value2 = (output1837, value1045, value1))
    (child2740 : Flapjack.WordAlloc.removeDeadStructural input2740 value1045 value1 value2 = (output2740, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2741 value1042 value1 value2 = (output2741, value1482, value1) := by
  rw [input2741_def, output2741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1837]
  try dsimp only
  rw [child2740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1837_skip, output2740_skip]
  kernel_rfl

theorem node2742_cond_eq
    (child1832 : Flapjack.WordAlloc.removeDeadStructural input1832 value1041 value1 value2 = (output1832, value1042, value1))
    (child2741 : Flapjack.WordAlloc.removeDeadStructural input2741 value1042 value1 value2 = (output2741, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2742 value1041 value1 value2 = (output2742, value1482, value1) := by
  rw [input2742_def, output2742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1832]
  try dsimp only
  rw [child2741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1832_skip, output2741_skip]
  kernel_rfl

theorem node2743_cond_eq
    (child1831 : Flapjack.WordAlloc.removeDeadStructural input1831 value1039 value1 value2 = (output1831, value1041, value1))
    (child2742 : Flapjack.WordAlloc.removeDeadStructural input2742 value1041 value1 value2 = (output2742, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2743 value1039 value1 value2 = (output2743, value1482, value1) := by
  rw [input2743_def, output2743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1831]
  try dsimp only
  rw [child2742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1831_skip, output2742_skip]
  kernel_rfl

theorem node2744_cond_eq
    (child1828 : Flapjack.WordAlloc.removeDeadStructural input1828 value1038 value1 value2 = (output1828, value1039, value1))
    (child2743 : Flapjack.WordAlloc.removeDeadStructural input2743 value1039 value1 value2 = (output2743, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2744 value1038 value1 value2 = (output2744, value1482, value1) := by
  rw [input2744_def, output2744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1828]
  try dsimp only
  rw [child2743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1828_skip, output2743_skip]
  kernel_rfl

theorem node2745_cond_eq
    (child1827 : Flapjack.WordAlloc.removeDeadStructural input1827 value1037 value1 value2 = (output1827, value1038, value1))
    (child2744 : Flapjack.WordAlloc.removeDeadStructural input2744 value1038 value1 value2 = (output2744, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2745 value1037 value1 value2 = (output2745, value1482, value1) := by
  rw [input2745_def, output2745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1827]
  try dsimp only
  rw [child2744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1827_skip, output2744_skip]
  kernel_rfl

theorem node2746_cond_eq
    (child1826 : Flapjack.WordAlloc.removeDeadStructural input1826 value1036 value1 value2 = (output1826, value1037, value1))
    (child2745 : Flapjack.WordAlloc.removeDeadStructural input2745 value1037 value1 value2 = (output2745, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2746 value1036 value1 value2 = (output2746, value1482, value1) := by
  rw [input2746_def, output2746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1826]
  try dsimp only
  rw [child2745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1826_skip, output2745_skip]
  kernel_rfl

theorem node2747_cond_eq
    (child1825 : Flapjack.WordAlloc.removeDeadStructural input1825 value1033 value1 value2 = (output1825, value1036, value1))
    (child2746 : Flapjack.WordAlloc.removeDeadStructural input2746 value1036 value1 value2 = (output2746, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2747 value1033 value1 value2 = (output2747, value1482, value1) := by
  rw [input2747_def, output2747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1825]
  try dsimp only
  rw [child2746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1825_skip, output2746_skip]
  kernel_rfl

theorem node2748_cond_eq
    (child1820 : Flapjack.WordAlloc.removeDeadStructural input1820 value1032 value1 value2 = (output1820, value1033, value1))
    (child2747 : Flapjack.WordAlloc.removeDeadStructural input2747 value1033 value1 value2 = (output2747, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2748 value1032 value1 value2 = (output2748, value1482, value1) := by
  rw [input2748_def, output2748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1820]
  try dsimp only
  rw [child2747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1820_skip, output2747_skip]
  kernel_rfl

theorem node2749_cond_eq
    (child1819 : Flapjack.WordAlloc.removeDeadStructural input1819 value1027 value1 value2 = (output1819, value1032, value1))
    (child2748 : Flapjack.WordAlloc.removeDeadStructural input2748 value1032 value1 value2 = (output2748, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2749 value1027 value1 value2 = (output2749, value1482, value1) := by
  rw [input2749_def, output2749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1819]
  try dsimp only
  rw [child2748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1819_skip, output2748_skip]
  kernel_rfl

theorem node2750_cond_eq
    (child1810 : Flapjack.WordAlloc.removeDeadStructural input1810 value1026 value1 value2 = (output1810, value1027, value1))
    (child2749 : Flapjack.WordAlloc.removeDeadStructural input2749 value1027 value1 value2 = (output2749, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2750 value1026 value1 value2 = (output2750, value1482, value1) := by
  rw [input2750_def, output2750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1810]
  try dsimp only
  rw [child2749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1810_skip, output2749_skip]
  kernel_rfl

theorem node2751_cond_eq
    (child1809 : Flapjack.WordAlloc.removeDeadStructural input1809 value1022 value1 value2 = (output1809, value1026, value1))
    (child2750 : Flapjack.WordAlloc.removeDeadStructural input2750 value1026 value1 value2 = (output2750, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2751 value1022 value1 value2 = (output2751, value1482, value1) := by
  rw [input2751_def, output2751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1809]
  try dsimp only
  rw [child2750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1809_skip, output2750_skip]
  kernel_rfl

theorem node2752_cond_eq
    (child1802 : Flapjack.WordAlloc.removeDeadStructural input1802 value1021 value1 value2 = (output1802, value1022, value1))
    (child2751 : Flapjack.WordAlloc.removeDeadStructural input2751 value1022 value1 value2 = (output2751, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2752 value1021 value1 value2 = (output2752, value1482, value1) := by
  rw [input2752_def, output2752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1802]
  try dsimp only
  rw [child2751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1802_skip, output2751_skip]
  kernel_rfl

theorem node2753_cond_eq
    (child1801 : Flapjack.WordAlloc.removeDeadStructural input1801 value1020 value1 value2 = (output1801, value1021, value1))
    (child2752 : Flapjack.WordAlloc.removeDeadStructural input2752 value1021 value1 value2 = (output2752, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2753 value1020 value1 value2 = (output2753, value1482, value1) := by
  rw [input2753_def, output2753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1801]
  try dsimp only
  rw [child2752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1801_skip, output2752_skip]
  kernel_rfl

theorem node2754_cond_eq
    (child1800 : Flapjack.WordAlloc.removeDeadStructural input1800 value1019 value1 value2 = (output1800, value1020, value1))
    (child2753 : Flapjack.WordAlloc.removeDeadStructural input2753 value1020 value1 value2 = (output2753, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2754 value1019 value1 value2 = (output2754, value1482, value1) := by
  rw [input2754_def, output2754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1800]
  try dsimp only
  rw [child2753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1800_skip, output2753_skip]
  kernel_rfl

theorem node2755_cond_eq
    (child1799 : Flapjack.WordAlloc.removeDeadStructural input1799 value1016 value1 value2 = (output1799, value1019, value1))
    (child2754 : Flapjack.WordAlloc.removeDeadStructural input2754 value1019 value1 value2 = (output2754, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2755 value1016 value1 value2 = (output2755, value1482, value1) := by
  rw [input2755_def, output2755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1799]
  try dsimp only
  rw [child2754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1799_skip, output2754_skip]
  kernel_rfl

theorem node2756_cond_eq
    (child1794 : Flapjack.WordAlloc.removeDeadStructural input1794 value1015 value1 value2 = (output1794, value1016, value1))
    (child2755 : Flapjack.WordAlloc.removeDeadStructural input2755 value1016 value1 value2 = (output2755, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2756 value1015 value1 value2 = (output2756, value1482, value1) := by
  rw [input2756_def, output2756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1794]
  try dsimp only
  rw [child2755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1794_skip, output2755_skip]
  kernel_rfl

theorem node2757_cond_eq
    (child1793 : Flapjack.WordAlloc.removeDeadStructural input1793 value1010 value1 value2 = (output1793, value1015, value1))
    (child2756 : Flapjack.WordAlloc.removeDeadStructural input2756 value1015 value1 value2 = (output2756, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2757 value1010 value1 value2 = (output2757, value1482, value1) := by
  rw [input2757_def, output2757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1793]
  try dsimp only
  rw [child2756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1793_skip, output2756_skip]
  kernel_rfl

theorem node2758_cond_eq
    (child1784 : Flapjack.WordAlloc.removeDeadStructural input1784 value1009 value1 value2 = (output1784, value1010, value1))
    (child2757 : Flapjack.WordAlloc.removeDeadStructural input2757 value1010 value1 value2 = (output2757, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2758 value1009 value1 value2 = (output2758, value1482, value1) := by
  rw [input2758_def, output2758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1784]
  try dsimp only
  rw [child2757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1784_skip, output2757_skip]
  kernel_rfl

theorem node2759_cond_eq
    (child1783 : Flapjack.WordAlloc.removeDeadStructural input1783 value1005 value1 value2 = (output1783, value1009, value1))
    (child2758 : Flapjack.WordAlloc.removeDeadStructural input2758 value1009 value1 value2 = (output2758, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2759 value1005 value1 value2 = (output2759, value1482, value1) := by
  rw [input2759_def, output2759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1783]
  try dsimp only
  rw [child2758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1783_skip, output2758_skip]
  kernel_rfl

theorem node2760_cond_eq
    (child1776 : Flapjack.WordAlloc.removeDeadStructural input1776 value1004 value1 value2 = (output1776, value1005, value1))
    (child2759 : Flapjack.WordAlloc.removeDeadStructural input2759 value1005 value1 value2 = (output2759, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2760 value1004 value1 value2 = (output2760, value1482, value1) := by
  rw [input2760_def, output2760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1776]
  try dsimp only
  rw [child2759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1776_skip, output2759_skip]
  kernel_rfl

theorem node2761_cond_eq
    (child1775 : Flapjack.WordAlloc.removeDeadStructural input1775 value1003 value1 value2 = (output1775, value1004, value1))
    (child2760 : Flapjack.WordAlloc.removeDeadStructural input2760 value1004 value1 value2 = (output2760, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2761 value1003 value1 value2 = (output2761, value1482, value1) := by
  rw [input2761_def, output2761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1775]
  try dsimp only
  rw [child2760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1775_skip, output2760_skip]
  kernel_rfl

theorem node2762_cond_eq
    (child1774 : Flapjack.WordAlloc.removeDeadStructural input1774 value1002 value1 value2 = (output1774, value1003, value1))
    (child2761 : Flapjack.WordAlloc.removeDeadStructural input2761 value1003 value1 value2 = (output2761, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2762 value1002 value1 value2 = (output2762, value1482, value1) := by
  rw [input2762_def, output2762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1774]
  try dsimp only
  rw [child2761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1774_skip, output2761_skip]
  kernel_rfl

theorem node2763_cond_eq
    (child1773 : Flapjack.WordAlloc.removeDeadStructural input1773 value999 value1 value2 = (output1773, value1002, value1))
    (child2762 : Flapjack.WordAlloc.removeDeadStructural input2762 value1002 value1 value2 = (output2762, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2763 value999 value1 value2 = (output2763, value1482, value1) := by
  rw [input2763_def, output2763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1773]
  try dsimp only
  rw [child2762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1773_skip, output2762_skip]
  kernel_rfl

theorem node2764_cond_eq
    (child1768 : Flapjack.WordAlloc.removeDeadStructural input1768 value998 value1 value2 = (output1768, value999, value1))
    (child2763 : Flapjack.WordAlloc.removeDeadStructural input2763 value999 value1 value2 = (output2763, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2764 value998 value1 value2 = (output2764, value1482, value1) := by
  rw [input2764_def, output2764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1768]
  try dsimp only
  rw [child2763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1768_skip, output2763_skip]
  kernel_rfl

theorem node2765_cond_eq
    (child1767 : Flapjack.WordAlloc.removeDeadStructural input1767 value993 value1 value2 = (output1767, value998, value1))
    (child2764 : Flapjack.WordAlloc.removeDeadStructural input2764 value998 value1 value2 = (output2764, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2765 value993 value1 value2 = (output2765, value1482, value1) := by
  rw [input2765_def, output2765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1767]
  try dsimp only
  rw [child2764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1767_skip, output2764_skip]
  kernel_rfl

theorem node2766_cond_eq
    (child1758 : Flapjack.WordAlloc.removeDeadStructural input1758 value992 value1 value2 = (output1758, value993, value1))
    (child2765 : Flapjack.WordAlloc.removeDeadStructural input2765 value993 value1 value2 = (output2765, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2766 value992 value1 value2 = (output2766, value1482, value1) := by
  rw [input2766_def, output2766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1758]
  try dsimp only
  rw [child2765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1758_skip, output2765_skip]
  kernel_rfl

theorem node2767_cond_eq
    (child1757 : Flapjack.WordAlloc.removeDeadStructural input1757 value988 value1 value2 = (output1757, value992, value1))
    (child2766 : Flapjack.WordAlloc.removeDeadStructural input2766 value992 value1 value2 = (output2766, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2767 value988 value1 value2 = (output2767, value1482, value1) := by
  rw [input2767_def, output2767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1757]
  try dsimp only
  rw [child2766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1757_skip, output2766_skip]
  kernel_rfl

theorem node2768_cond_eq
    (child1750 : Flapjack.WordAlloc.removeDeadStructural input1750 value987 value1 value2 = (output1750, value988, value1))
    (child2767 : Flapjack.WordAlloc.removeDeadStructural input2767 value988 value1 value2 = (output2767, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2768 value987 value1 value2 = (output2768, value1482, value1) := by
  rw [input2768_def, output2768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1750]
  try dsimp only
  rw [child2767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1750_skip, output2767_skip]
  kernel_rfl

theorem node2769_cond_eq
    (child1749 : Flapjack.WordAlloc.removeDeadStructural input1749 value986 value1 value2 = (output1749, value987, value1))
    (child2768 : Flapjack.WordAlloc.removeDeadStructural input2768 value987 value1 value2 = (output2768, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2769 value986 value1 value2 = (output2769, value1482, value1) := by
  rw [input2769_def, output2769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1749]
  try dsimp only
  rw [child2768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1749_skip, output2768_skip]
  kernel_rfl

theorem node2770_cond_eq
    (child1748 : Flapjack.WordAlloc.removeDeadStructural input1748 value985 value1 value2 = (output1748, value986, value1))
    (child2769 : Flapjack.WordAlloc.removeDeadStructural input2769 value986 value1 value2 = (output2769, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2770 value985 value1 value2 = (output2770, value1482, value1) := by
  rw [input2770_def, output2770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1748]
  try dsimp only
  rw [child2769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1748_skip, output2769_skip]
  kernel_rfl

theorem node2771_cond_eq
    (child1747 : Flapjack.WordAlloc.removeDeadStructural input1747 value982 value1 value2 = (output1747, value985, value1))
    (child2770 : Flapjack.WordAlloc.removeDeadStructural input2770 value985 value1 value2 = (output2770, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2771 value982 value1 value2 = (output2771, value1482, value1) := by
  rw [input2771_def, output2771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1747]
  try dsimp only
  rw [child2770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1747_skip, output2770_skip]
  kernel_rfl

theorem node2772_cond_eq
    (child1742 : Flapjack.WordAlloc.removeDeadStructural input1742 value981 value1 value2 = (output1742, value982, value1))
    (child2771 : Flapjack.WordAlloc.removeDeadStructural input2771 value982 value1 value2 = (output2771, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2772 value981 value1 value2 = (output2772, value1482, value1) := by
  rw [input2772_def, output2772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1742]
  try dsimp only
  rw [child2771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1742_skip, output2771_skip]
  kernel_rfl

theorem node2773_cond_eq
    (child1741 : Flapjack.WordAlloc.removeDeadStructural input1741 value976 value1 value2 = (output1741, value981, value1))
    (child2772 : Flapjack.WordAlloc.removeDeadStructural input2772 value981 value1 value2 = (output2772, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2773 value976 value1 value2 = (output2773, value1482, value1) := by
  rw [input2773_def, output2773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1741]
  try dsimp only
  rw [child2772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1741_skip, output2772_skip]
  kernel_rfl

theorem node2774_cond_eq
    (child1732 : Flapjack.WordAlloc.removeDeadStructural input1732 value975 value1 value2 = (output1732, value976, value1))
    (child2773 : Flapjack.WordAlloc.removeDeadStructural input2773 value976 value1 value2 = (output2773, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2774 value975 value1 value2 = (output2774, value1482, value1) := by
  rw [input2774_def, output2774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1732]
  try dsimp only
  rw [child2773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1732_skip, output2773_skip]
  kernel_rfl

theorem node2775_cond_eq
    (child1731 : Flapjack.WordAlloc.removeDeadStructural input1731 value971 value1 value2 = (output1731, value975, value1))
    (child2774 : Flapjack.WordAlloc.removeDeadStructural input2774 value975 value1 value2 = (output2774, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2775 value971 value1 value2 = (output2775, value1482, value1) := by
  rw [input2775_def, output2775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1731]
  try dsimp only
  rw [child2774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1731_skip, output2774_skip]
  kernel_rfl

theorem node2776_cond_eq
    (child1724 : Flapjack.WordAlloc.removeDeadStructural input1724 value970 value1 value2 = (output1724, value971, value1))
    (child2775 : Flapjack.WordAlloc.removeDeadStructural input2775 value971 value1 value2 = (output2775, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2776 value970 value1 value2 = (output2776, value1482, value1) := by
  rw [input2776_def, output2776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1724]
  try dsimp only
  rw [child2775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1724_skip, output2775_skip]
  kernel_rfl

theorem node2777_cond_eq
    (child1723 : Flapjack.WordAlloc.removeDeadStructural input1723 value969 value1 value2 = (output1723, value970, value1))
    (child2776 : Flapjack.WordAlloc.removeDeadStructural input2776 value970 value1 value2 = (output2776, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2777 value969 value1 value2 = (output2777, value1482, value1) := by
  rw [input2777_def, output2777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1723]
  try dsimp only
  rw [child2776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1723_skip, output2776_skip]
  kernel_rfl

theorem node2778_cond_eq
    (child1722 : Flapjack.WordAlloc.removeDeadStructural input1722 value968 value1 value2 = (output1722, value969, value1))
    (child2777 : Flapjack.WordAlloc.removeDeadStructural input2777 value969 value1 value2 = (output2777, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2778 value968 value1 value2 = (output2778, value1482, value1) := by
  rw [input2778_def, output2778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1722]
  try dsimp only
  rw [child2777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1722_skip, output2777_skip]
  kernel_rfl

theorem node2779_cond_eq
    (child1721 : Flapjack.WordAlloc.removeDeadStructural input1721 value965 value1 value2 = (output1721, value968, value1))
    (child2778 : Flapjack.WordAlloc.removeDeadStructural input2778 value968 value1 value2 = (output2778, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2779 value965 value1 value2 = (output2779, value1482, value1) := by
  rw [input2779_def, output2779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1721]
  try dsimp only
  rw [child2778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1721_skip, output2778_skip]
  kernel_rfl

theorem node2780_cond_eq
    (child1716 : Flapjack.WordAlloc.removeDeadStructural input1716 value964 value1 value2 = (output1716, value965, value1))
    (child2779 : Flapjack.WordAlloc.removeDeadStructural input2779 value965 value1 value2 = (output2779, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2780 value964 value1 value2 = (output2780, value1482, value1) := by
  rw [input2780_def, output2780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1716]
  try dsimp only
  rw [child2779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1716_skip, output2779_skip]
  kernel_rfl

theorem node2781_cond_eq
    (child1715 : Flapjack.WordAlloc.removeDeadStructural input1715 value959 value1 value2 = (output1715, value964, value1))
    (child2780 : Flapjack.WordAlloc.removeDeadStructural input2780 value964 value1 value2 = (output2780, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2781 value959 value1 value2 = (output2781, value1482, value1) := by
  rw [input2781_def, output2781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1715]
  try dsimp only
  rw [child2780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1715_skip, output2780_skip]
  kernel_rfl

theorem node2782_cond_eq
    (child1706 : Flapjack.WordAlloc.removeDeadStructural input1706 value958 value1 value2 = (output1706, value959, value1))
    (child2781 : Flapjack.WordAlloc.removeDeadStructural input2781 value959 value1 value2 = (output2781, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2782 value958 value1 value2 = (output2782, value1482, value1) := by
  rw [input2782_def, output2782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1706]
  try dsimp only
  rw [child2781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1706_skip, output2781_skip]
  kernel_rfl

theorem node2783_cond_eq
    (child1705 : Flapjack.WordAlloc.removeDeadStructural input1705 value954 value1 value2 = (output1705, value958, value1))
    (child2782 : Flapjack.WordAlloc.removeDeadStructural input2782 value958 value1 value2 = (output2782, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2783 value954 value1 value2 = (output2783, value1482, value1) := by
  rw [input2783_def, output2783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1705]
  try dsimp only
  rw [child2782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1705_skip, output2782_skip]
  kernel_rfl

theorem node2784_cond_eq
    (child1698 : Flapjack.WordAlloc.removeDeadStructural input1698 value953 value1 value2 = (output1698, value954, value1))
    (child2783 : Flapjack.WordAlloc.removeDeadStructural input2783 value954 value1 value2 = (output2783, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2784 value953 value1 value2 = (output2784, value1482, value1) := by
  rw [input2784_def, output2784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1698]
  try dsimp only
  rw [child2783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1698_skip, output2783_skip]
  kernel_rfl

theorem node2785_cond_eq
    (child1697 : Flapjack.WordAlloc.removeDeadStructural input1697 value952 value1 value2 = (output1697, value953, value1))
    (child2784 : Flapjack.WordAlloc.removeDeadStructural input2784 value953 value1 value2 = (output2784, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2785 value952 value1 value2 = (output2785, value1482, value1) := by
  rw [input2785_def, output2785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1697]
  try dsimp only
  rw [child2784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1697_skip, output2784_skip]
  kernel_rfl

theorem node2786_cond_eq
    (child1696 : Flapjack.WordAlloc.removeDeadStructural input1696 value951 value1 value2 = (output1696, value952, value1))
    (child2785 : Flapjack.WordAlloc.removeDeadStructural input2785 value952 value1 value2 = (output2785, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2786 value951 value1 value2 = (output2786, value1482, value1) := by
  rw [input2786_def, output2786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1696]
  try dsimp only
  rw [child2785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1696_skip, output2785_skip]
  kernel_rfl

theorem node2787_cond_eq
    (child1695 : Flapjack.WordAlloc.removeDeadStructural input1695 value948 value1 value2 = (output1695, value951, value1))
    (child2786 : Flapjack.WordAlloc.removeDeadStructural input2786 value951 value1 value2 = (output2786, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2787 value948 value1 value2 = (output2787, value1482, value1) := by
  rw [input2787_def, output2787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1695]
  try dsimp only
  rw [child2786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1695_skip, output2786_skip]
  kernel_rfl

theorem node2788_cond_eq
    (child1690 : Flapjack.WordAlloc.removeDeadStructural input1690 value947 value1 value2 = (output1690, value948, value1))
    (child2787 : Flapjack.WordAlloc.removeDeadStructural input2787 value948 value1 value2 = (output2787, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2788 value947 value1 value2 = (output2788, value1482, value1) := by
  rw [input2788_def, output2788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1690]
  try dsimp only
  rw [child2787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1690_skip, output2787_skip]
  kernel_rfl

theorem node2789_cond_eq
    (child1689 : Flapjack.WordAlloc.removeDeadStructural input1689 value942 value1 value2 = (output1689, value947, value1))
    (child2788 : Flapjack.WordAlloc.removeDeadStructural input2788 value947 value1 value2 = (output2788, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2789 value942 value1 value2 = (output2789, value1482, value1) := by
  rw [input2789_def, output2789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1689]
  try dsimp only
  rw [child2788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1689_skip, output2788_skip]
  kernel_rfl

theorem node2790_cond_eq
    (child1680 : Flapjack.WordAlloc.removeDeadStructural input1680 value941 value1 value2 = (output1680, value942, value1))
    (child2789 : Flapjack.WordAlloc.removeDeadStructural input2789 value942 value1 value2 = (output2789, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2790 value941 value1 value2 = (output2790, value1482, value1) := by
  rw [input2790_def, output2790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1680]
  try dsimp only
  rw [child2789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1680_skip, output2789_skip]
  kernel_rfl

theorem node2791_cond_eq
    (child1679 : Flapjack.WordAlloc.removeDeadStructural input1679 value937 value1 value2 = (output1679, value941, value1))
    (child2790 : Flapjack.WordAlloc.removeDeadStructural input2790 value941 value1 value2 = (output2790, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2791 value937 value1 value2 = (output2791, value1482, value1) := by
  rw [input2791_def, output2791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1679]
  try dsimp only
  rw [child2790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1679_skip, output2790_skip]
  kernel_rfl

theorem node2792_cond_eq
    (child1672 : Flapjack.WordAlloc.removeDeadStructural input1672 value936 value1 value2 = (output1672, value937, value1))
    (child2791 : Flapjack.WordAlloc.removeDeadStructural input2791 value937 value1 value2 = (output2791, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2792 value936 value1 value2 = (output2792, value1482, value1) := by
  rw [input2792_def, output2792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1672]
  try dsimp only
  rw [child2791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1672_skip, output2791_skip]
  kernel_rfl

theorem node2793_cond_eq
    (child1671 : Flapjack.WordAlloc.removeDeadStructural input1671 value933 value1 value2 = (output1671, value936, value1))
    (child2792 : Flapjack.WordAlloc.removeDeadStructural input2792 value936 value1 value2 = (output2792, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2793 value933 value1 value2 = (output2793, value1482, value1) := by
  rw [input2793_def, output2793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1671]
  try dsimp only
  rw [child2792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1671_skip, output2792_skip]
  kernel_rfl

theorem node2794_cond_eq
    (child1666 : Flapjack.WordAlloc.removeDeadStructural input1666 value930 value1 value2 = (output1666, value933, value1))
    (child2793 : Flapjack.WordAlloc.removeDeadStructural input2793 value933 value1 value2 = (output2793, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2794 value930 value1 value2 = (output2794, value1482, value1) := by
  rw [input2794_def, output2794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1666]
  try dsimp only
  rw [child2793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1666_skip, output2793_skip]
  kernel_rfl

theorem node2795_cond_eq
    (child1661 : Flapjack.WordAlloc.removeDeadStructural input1661 value926 value1 value2 = (output1661, value930, value1))
    (child2794 : Flapjack.WordAlloc.removeDeadStructural input2794 value930 value1 value2 = (output2794, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2795 value926 value1 value2 = (output2795, value1482, value1) := by
  rw [input2795_def, output2795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1661]
  try dsimp only
  rw [child2794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1661_skip, output2794_skip]
  kernel_rfl

theorem node2796_cond_eq
    (child1654 : Flapjack.WordAlloc.removeDeadStructural input1654 value926 value1 value2 = (output1654, value926, value1))
    (child2795 : Flapjack.WordAlloc.removeDeadStructural input2795 value926 value1 value2 = (output2795, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2796 value926 value1 value2 = (output2796, value1482, value1) := by
  rw [input2796_def, output2796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1654]
  try dsimp only
  rw [child2795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1654_skip, output2795_skip]
  kernel_rfl

theorem node2797_cond_eq
    (child1653 : Flapjack.WordAlloc.removeDeadStructural input1653 value926 value1 value2 = (output1653, value926, value1))
    (child2796 : Flapjack.WordAlloc.removeDeadStructural input2796 value926 value1 value2 = (output2796, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2797 value926 value1 value2 = (output2797, value1482, value1) := by
  rw [input2797_def, output2797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1653]
  try dsimp only
  rw [child2796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1653_skip, output2796_skip]
  kernel_rfl

theorem node2798_cond_eq
    (child1652 : Flapjack.WordAlloc.removeDeadStructural input1652 value925 value1 value2 = (output1652, value926, value1))
    (child2797 : Flapjack.WordAlloc.removeDeadStructural input2797 value926 value1 value2 = (output2797, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2798 value925 value1 value2 = (output2798, value1482, value1) := by
  rw [input2798_def, output2798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1652]
  try dsimp only
  rw [child2797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1652_skip, output2797_skip]
  kernel_rfl

theorem node2799_cond_eq
    (child1651 : Flapjack.WordAlloc.removeDeadStructural input1651 value924 value1 value2 = (output1651, value925, value1))
    (child2798 : Flapjack.WordAlloc.removeDeadStructural input2798 value925 value1 value2 = (output2798, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2799 value924 value1 value2 = (output2799, value1482, value1) := by
  rw [input2799_def, output2799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1651]
  try dsimp only
  rw [child2798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1651_skip, output2798_skip]
  kernel_rfl

theorem node2800_cond_eq
    (child1650 : Flapjack.WordAlloc.removeDeadStructural input1650 value921 value1 value2 = (output1650, value924, value1))
    (child2799 : Flapjack.WordAlloc.removeDeadStructural input2799 value924 value1 value2 = (output2799, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2800 value921 value1 value2 = (output2800, value1482, value1) := by
  rw [input2800_def, output2800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1650]
  try dsimp only
  rw [child2799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1650_skip, output2799_skip]
  kernel_rfl

theorem node2801_cond_eq
    (child1645 : Flapjack.WordAlloc.removeDeadStructural input1645 value920 value1 value2 = (output1645, value921, value1))
    (child2800 : Flapjack.WordAlloc.removeDeadStructural input2800 value921 value1 value2 = (output2800, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2801 value920 value1 value2 = (output2801, value1482, value1) := by
  rw [input2801_def, output2801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1645]
  try dsimp only
  rw [child2800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1645_skip, output2800_skip]
  kernel_rfl

theorem node2802_cond_eq
    (child1644 : Flapjack.WordAlloc.removeDeadStructural input1644 value917 value1 value2 = (output1644, value920, value1))
    (child2801 : Flapjack.WordAlloc.removeDeadStructural input2801 value920 value1 value2 = (output2801, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2802 value917 value1 value2 = (output2802, value1482, value1) := by
  rw [input2802_def, output2802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1644]
  try dsimp only
  rw [child2801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1644_skip, output2801_skip]
  kernel_rfl

theorem node2803_cond_eq
    (child1639 : Flapjack.WordAlloc.removeDeadStructural input1639 value916 value1 value2 = (output1639, value917, value1))
    (child2802 : Flapjack.WordAlloc.removeDeadStructural input2802 value917 value1 value2 = (output2802, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2803 value916 value1 value2 = (output2803, value1482, value1) := by
  rw [input2803_def, output2803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1639]
  try dsimp only
  rw [child2802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1639_skip, output2802_skip]
  kernel_rfl

theorem node2804_cond_eq
    (child1638 : Flapjack.WordAlloc.removeDeadStructural input1638 value914 value1 value2 = (output1638, value916, value1))
    (child2803 : Flapjack.WordAlloc.removeDeadStructural input2803 value916 value1 value2 = (output2803, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2804 value914 value1 value2 = (output2804, value1482, value1) := by
  rw [input2804_def, output2804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1638]
  try dsimp only
  rw [child2803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1638_skip, output2803_skip]
  kernel_rfl

theorem node2805_cond_eq
    (child1635 : Flapjack.WordAlloc.removeDeadStructural input1635 value913 value1 value2 = (output1635, value914, value1))
    (child2804 : Flapjack.WordAlloc.removeDeadStructural input2804 value914 value1 value2 = (output2804, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2805 value913 value1 value2 = (output2805, value1482, value1) := by
  rw [input2805_def, output2805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1635]
  try dsimp only
  rw [child2804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1635_skip, output2804_skip]
  kernel_rfl

theorem node2806_cond_eq
    (child1634 : Flapjack.WordAlloc.removeDeadStructural input1634 value912 value1 value2 = (output1634, value913, value1))
    (child2805 : Flapjack.WordAlloc.removeDeadStructural input2805 value913 value1 value2 = (output2805, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2806 value912 value1 value2 = (output2806, value1482, value1) := by
  rw [input2806_def, output2806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1634]
  try dsimp only
  rw [child2805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1634_skip, output2805_skip]
  kernel_rfl

theorem node2807_cond_eq
    (child1633 : Flapjack.WordAlloc.removeDeadStructural input1633 value911 value1 value2 = (output1633, value912, value1))
    (child2806 : Flapjack.WordAlloc.removeDeadStructural input2806 value912 value1 value2 = (output2806, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2807 value911 value1 value2 = (output2807, value1482, value1) := by
  rw [input2807_def, output2807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1633]
  try dsimp only
  rw [child2806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1633_skip, output2806_skip]
  kernel_rfl

theorem node2808_cond_eq
    (child1632 : Flapjack.WordAlloc.removeDeadStructural input1632 value908 value1 value2 = (output1632, value911, value1))
    (child2807 : Flapjack.WordAlloc.removeDeadStructural input2807 value911 value1 value2 = (output2807, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2808 value908 value1 value2 = (output2808, value1482, value1) := by
  rw [input2808_def, output2808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1632]
  try dsimp only
  rw [child2807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1632_skip, output2807_skip]
  kernel_rfl

theorem node2809_cond_eq
    (child1627 : Flapjack.WordAlloc.removeDeadStructural input1627 value907 value1 value2 = (output1627, value908, value1))
    (child2808 : Flapjack.WordAlloc.removeDeadStructural input2808 value908 value1 value2 = (output2808, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2809 value907 value1 value2 = (output2809, value1482, value1) := by
  rw [input2809_def, output2809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1627]
  try dsimp only
  rw [child2808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1627_skip, output2808_skip]
  kernel_rfl

theorem node2810_cond_eq
    (child1626 : Flapjack.WordAlloc.removeDeadStructural input1626 value902 value1 value2 = (output1626, value907, value1))
    (child2809 : Flapjack.WordAlloc.removeDeadStructural input2809 value907 value1 value2 = (output2809, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2810 value902 value1 value2 = (output2810, value1482, value1) := by
  rw [input2810_def, output2810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1626]
  try dsimp only
  rw [child2809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1626_skip, output2809_skip]
  kernel_rfl

theorem node2811_cond_eq
    (child1617 : Flapjack.WordAlloc.removeDeadStructural input1617 value901 value1 value2 = (output1617, value902, value1))
    (child2810 : Flapjack.WordAlloc.removeDeadStructural input2810 value902 value1 value2 = (output2810, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2811 value901 value1 value2 = (output2811, value1482, value1) := by
  rw [input2811_def, output2811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1617]
  try dsimp only
  rw [child2810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1617_skip, output2810_skip]
  kernel_rfl

theorem node2812_cond_eq
    (child1616 : Flapjack.WordAlloc.removeDeadStructural input1616 value897 value1 value2 = (output1616, value901, value1))
    (child2811 : Flapjack.WordAlloc.removeDeadStructural input2811 value901 value1 value2 = (output2811, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2812 value897 value1 value2 = (output2812, value1482, value1) := by
  rw [input2812_def, output2812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1616]
  try dsimp only
  rw [child2811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1616_skip, output2811_skip]
  kernel_rfl

theorem node2813_cond_eq
    (child1609 : Flapjack.WordAlloc.removeDeadStructural input1609 value896 value1 value2 = (output1609, value897, value1))
    (child2812 : Flapjack.WordAlloc.removeDeadStructural input2812 value897 value1 value2 = (output2812, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2813 value896 value1 value2 = (output2813, value1482, value1) := by
  rw [input2813_def, output2813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1609]
  try dsimp only
  rw [child2812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1609_skip, output2812_skip]
  kernel_rfl

theorem node2814_cond_eq
    (child1608 : Flapjack.WordAlloc.removeDeadStructural input1608 value895 value1 value2 = (output1608, value896, value1))
    (child2813 : Flapjack.WordAlloc.removeDeadStructural input2813 value896 value1 value2 = (output2813, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2814 value895 value1 value2 = (output2814, value1482, value1) := by
  rw [input2814_def, output2814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1608]
  try dsimp only
  rw [child2813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1608_skip, output2813_skip]
  kernel_rfl

theorem node2815_cond_eq
    (child1607 : Flapjack.WordAlloc.removeDeadStructural input1607 value894 value1 value2 = (output1607, value895, value1))
    (child2814 : Flapjack.WordAlloc.removeDeadStructural input2814 value895 value1 value2 = (output2814, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2815 value894 value1 value2 = (output2815, value1482, value1) := by
  rw [input2815_def, output2815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1607]
  try dsimp only
  rw [child2814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1607_skip, output2814_skip]
  kernel_rfl

#print axioms node2815_cond_eq
end InitECandidate.Proofs.DeadStages646.Parallel
