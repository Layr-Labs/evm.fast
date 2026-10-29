import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk010
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node2560_cond_eq
    (child2558 : Flapjack.WordAlloc.removeDeadStructural input2558 value1284 value1 value2 = (output2558, value1285, value1))
    (child2559 : Flapjack.WordAlloc.removeDeadStructural input2559 value1285 value1 value2 = (output2559, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2560 value1284 value1 value2 = (output2560, value5, value1) := by
  rw [input2560_def, output2560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2558]
  dsimp only
  rw [child2559]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2558_skip, output2559_skip]
  kernel_rfl

theorem node2561_cond_eq
    (child2557 : Flapjack.WordAlloc.removeDeadStructural input2557 value1283 value1 value2 = (output2557, value1284, value1))
    (child2560 : Flapjack.WordAlloc.removeDeadStructural input2560 value1284 value1 value2 = (output2560, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2561 value1283 value1 value2 = (output2561, value5, value1) := by
  rw [input2561_def, output2561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2557]
  dsimp only
  rw [child2560]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2557_skip, output2560_skip]
  kernel_rfl

theorem node2562_cond_eq
    (child2556 : Flapjack.WordAlloc.removeDeadStructural input2556 value1282 value1 value2 = (output2556, value1283, value1))
    (child2561 : Flapjack.WordAlloc.removeDeadStructural input2561 value1283 value1 value2 = (output2561, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2562 value1282 value1 value2 = (output2562, value5, value1) := by
  rw [input2562_def, output2562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2556]
  dsimp only
  rw [child2561]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2556_skip, output2561_skip]
  kernel_rfl

theorem node2563_cond_eq
    (child2555 : Flapjack.WordAlloc.removeDeadStructural input2555 value1280 value1 value2 = (output2555, value1282, value1))
    (child2562 : Flapjack.WordAlloc.removeDeadStructural input2562 value1282 value1 value2 = (output2562, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2563 value1280 value1 value2 = (output2563, value5, value1) := by
  rw [input2563_def, output2563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2555]
  dsimp only
  rw [child2562]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2555_skip, output2562_skip]
  kernel_rfl

theorem node2564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2564 value5 value1 value2 = (output2564, value1286, value1) := by
  rw [input2564_def, output2564_def]
  kernel_rfl

theorem node2565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2565 value1286 value1 value2 = (output2565, value1287, value1) := by
  rw [input2565_def, output2565_def]
  kernel_rfl

theorem node2566_cond_eq
    (child2564 : Flapjack.WordAlloc.removeDeadStructural input2564 value5 value1 value2 = (output2564, value1286, value1))
    (child2565 : Flapjack.WordAlloc.removeDeadStructural input2565 value1286 value1 value2 = (output2565, value1287, value1)) : Flapjack.WordAlloc.removeDeadStructural input2566 value5 value1 value2 = (output2566, value1287, value1) := by
  rw [input2566_def, output2566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2564]
  dsimp only
  rw [child2565]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2564_skip, output2565_skip]
  kernel_rfl

theorem node2567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2567 value1287 value1 value2 = (output2567, value1288, value1) := by
  rw [input2567_def, output2567_def]
  kernel_rfl

theorem node2568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2568 value1288 value1 value2 = (output2568, value1288, value1) := by
  rw [input2568_def, output2568_def]
  kernel_rfl

theorem node2569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2569 value1288 value1 value2 = (output2569, value1289, value1) := by
  rw [input2569_def, output2569_def]
  kernel_rfl

theorem node2570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2570 value1289 value1 value2 = (output2570, value1290, value1) := by
  rw [input2570_def, output2570_def]
  kernel_rfl

theorem node2571_cond_eq
    (child2569 : Flapjack.WordAlloc.removeDeadStructural input2569 value1288 value1 value2 = (output2569, value1289, value1))
    (child2570 : Flapjack.WordAlloc.removeDeadStructural input2570 value1289 value1 value2 = (output2570, value1290, value1)) : Flapjack.WordAlloc.removeDeadStructural input2571 value1288 value1 value2 = (output2571, value1290, value1) := by
  rw [input2571_def, output2571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2569]
  dsimp only
  rw [child2570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2569_skip, output2570_skip]
  kernel_rfl

theorem node2572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2572 value1290 value1 value2 = (output2572, value1291, value1) := by
  rw [input2572_def, output2572_def]
  kernel_rfl

theorem node2573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2573 value1291 value1 value2 = (output2573, value1292, value1) := by
  rw [input2573_def, output2573_def]
  kernel_rfl

theorem node2574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2574 value1292 value1 value2 = (output2574, value1293, value1) := by
  rw [input2574_def, output2574_def]
  kernel_rfl

theorem node2575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2575 value1293 value1 value2 = (output2575, value5, value1) := by
  rw [input2575_def, output2575_def]
  kernel_rfl

theorem node2576_cond_eq
    (child2574 : Flapjack.WordAlloc.removeDeadStructural input2574 value1292 value1 value2 = (output2574, value1293, value1))
    (child2575 : Flapjack.WordAlloc.removeDeadStructural input2575 value1293 value1 value2 = (output2575, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2576 value1292 value1 value2 = (output2576, value5, value1) := by
  rw [input2576_def, output2576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2574]
  dsimp only
  rw [child2575]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2574_skip, output2575_skip]
  kernel_rfl

theorem node2577_cond_eq
    (child2573 : Flapjack.WordAlloc.removeDeadStructural input2573 value1291 value1 value2 = (output2573, value1292, value1))
    (child2576 : Flapjack.WordAlloc.removeDeadStructural input2576 value1292 value1 value2 = (output2576, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2577 value1291 value1 value2 = (output2577, value5, value1) := by
  rw [input2577_def, output2577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2573]
  dsimp only
  rw [child2576]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2573_skip, output2576_skip]
  kernel_rfl

theorem node2578_cond_eq
    (child2572 : Flapjack.WordAlloc.removeDeadStructural input2572 value1290 value1 value2 = (output2572, value1291, value1))
    (child2577 : Flapjack.WordAlloc.removeDeadStructural input2577 value1291 value1 value2 = (output2577, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2578 value1290 value1 value2 = (output2578, value5, value1) := by
  rw [input2578_def, output2578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2572]
  dsimp only
  rw [child2577]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2572_skip, output2577_skip]
  kernel_rfl

theorem node2579_cond_eq
    (child2571 : Flapjack.WordAlloc.removeDeadStructural input2571 value1288 value1 value2 = (output2571, value1290, value1))
    (child2578 : Flapjack.WordAlloc.removeDeadStructural input2578 value1290 value1 value2 = (output2578, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2579 value1288 value1 value2 = (output2579, value5, value1) := by
  rw [input2579_def, output2579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2571]
  dsimp only
  rw [child2578]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2571_skip, output2578_skip]
  kernel_rfl

theorem node2580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2580 value5 value1 value2 = (output2580, value1294, value1) := by
  rw [input2580_def, output2580_def]
  kernel_rfl

theorem node2581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2581 value1294 value1 value2 = (output2581, value1295, value1) := by
  rw [input2581_def, output2581_def]
  kernel_rfl

theorem node2582_cond_eq
    (child2580 : Flapjack.WordAlloc.removeDeadStructural input2580 value5 value1 value2 = (output2580, value1294, value1))
    (child2581 : Flapjack.WordAlloc.removeDeadStructural input2581 value1294 value1 value2 = (output2581, value1295, value1)) : Flapjack.WordAlloc.removeDeadStructural input2582 value5 value1 value2 = (output2582, value1295, value1) := by
  rw [input2582_def, output2582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2580]
  dsimp only
  rw [child2581]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2580_skip, output2581_skip]
  kernel_rfl

theorem node2583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2583 value1295 value1 value2 = (output2583, value1296, value1) := by
  rw [input2583_def, output2583_def]
  kernel_rfl

theorem node2584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2584 value1296 value1 value2 = (output2584, value1296, value1) := by
  rw [input2584_def, output2584_def]
  kernel_rfl

theorem node2585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2585 value1296 value1 value2 = (output2585, value1297, value1) := by
  rw [input2585_def, output2585_def]
  kernel_rfl

theorem node2586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2586 value1297 value1 value2 = (output2586, value1298, value1) := by
  rw [input2586_def, output2586_def]
  kernel_rfl

theorem node2587_cond_eq
    (child2585 : Flapjack.WordAlloc.removeDeadStructural input2585 value1296 value1 value2 = (output2585, value1297, value1))
    (child2586 : Flapjack.WordAlloc.removeDeadStructural input2586 value1297 value1 value2 = (output2586, value1298, value1)) : Flapjack.WordAlloc.removeDeadStructural input2587 value1296 value1 value2 = (output2587, value1298, value1) := by
  rw [input2587_def, output2587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2585]
  dsimp only
  rw [child2586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2585_skip, output2586_skip]
  kernel_rfl

theorem node2588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2588 value1298 value1 value2 = (output2588, value1299, value1) := by
  rw [input2588_def, output2588_def]
  kernel_rfl

theorem node2589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2589 value1299 value1 value2 = (output2589, value1300, value1) := by
  rw [input2589_def, output2589_def]
  kernel_rfl

theorem node2590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2590 value1300 value1 value2 = (output2590, value1301, value1) := by
  rw [input2590_def, output2590_def]
  kernel_rfl

theorem node2591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2591 value1301 value1 value2 = (output2591, value5, value1) := by
  rw [input2591_def, output2591_def]
  kernel_rfl

theorem node2592_cond_eq
    (child2590 : Flapjack.WordAlloc.removeDeadStructural input2590 value1300 value1 value2 = (output2590, value1301, value1))
    (child2591 : Flapjack.WordAlloc.removeDeadStructural input2591 value1301 value1 value2 = (output2591, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2592 value1300 value1 value2 = (output2592, value5, value1) := by
  rw [input2592_def, output2592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2590]
  dsimp only
  rw [child2591]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2590_skip, output2591_skip]
  kernel_rfl

theorem node2593_cond_eq
    (child2589 : Flapjack.WordAlloc.removeDeadStructural input2589 value1299 value1 value2 = (output2589, value1300, value1))
    (child2592 : Flapjack.WordAlloc.removeDeadStructural input2592 value1300 value1 value2 = (output2592, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2593 value1299 value1 value2 = (output2593, value5, value1) := by
  rw [input2593_def, output2593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2589]
  dsimp only
  rw [child2592]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2589_skip, output2592_skip]
  kernel_rfl

theorem node2594_cond_eq
    (child2588 : Flapjack.WordAlloc.removeDeadStructural input2588 value1298 value1 value2 = (output2588, value1299, value1))
    (child2593 : Flapjack.WordAlloc.removeDeadStructural input2593 value1299 value1 value2 = (output2593, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2594 value1298 value1 value2 = (output2594, value5, value1) := by
  rw [input2594_def, output2594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2588]
  dsimp only
  rw [child2593]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2588_skip, output2593_skip]
  kernel_rfl

theorem node2595_cond_eq
    (child2587 : Flapjack.WordAlloc.removeDeadStructural input2587 value1296 value1 value2 = (output2587, value1298, value1))
    (child2594 : Flapjack.WordAlloc.removeDeadStructural input2594 value1298 value1 value2 = (output2594, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2595 value1296 value1 value2 = (output2595, value5, value1) := by
  rw [input2595_def, output2595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2587]
  dsimp only
  rw [child2594]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2587_skip, output2594_skip]
  kernel_rfl

theorem node2596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2596 value5 value1 value2 = (output2596, value1302, value1) := by
  rw [input2596_def, output2596_def]
  kernel_rfl

theorem node2597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2597 value1302 value1 value2 = (output2597, value1303, value1) := by
  rw [input2597_def, output2597_def]
  kernel_rfl

theorem node2598_cond_eq
    (child2596 : Flapjack.WordAlloc.removeDeadStructural input2596 value5 value1 value2 = (output2596, value1302, value1))
    (child2597 : Flapjack.WordAlloc.removeDeadStructural input2597 value1302 value1 value2 = (output2597, value1303, value1)) : Flapjack.WordAlloc.removeDeadStructural input2598 value5 value1 value2 = (output2598, value1303, value1) := by
  rw [input2598_def, output2598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2596]
  dsimp only
  rw [child2597]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2596_skip, output2597_skip]
  kernel_rfl

theorem node2599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2599 value1303 value1 value2 = (output2599, value1304, value1) := by
  rw [input2599_def, output2599_def]
  kernel_rfl

theorem node2600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2600 value1304 value1 value2 = (output2600, value1304, value1) := by
  rw [input2600_def, output2600_def]
  kernel_rfl

theorem node2601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2601 value1304 value1 value2 = (output2601, value1305, value1) := by
  rw [input2601_def, output2601_def]
  kernel_rfl

theorem node2602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2602 value1305 value1 value2 = (output2602, value1306, value1) := by
  rw [input2602_def, output2602_def]
  kernel_rfl

theorem node2603_cond_eq
    (child2601 : Flapjack.WordAlloc.removeDeadStructural input2601 value1304 value1 value2 = (output2601, value1305, value1))
    (child2602 : Flapjack.WordAlloc.removeDeadStructural input2602 value1305 value1 value2 = (output2602, value1306, value1)) : Flapjack.WordAlloc.removeDeadStructural input2603 value1304 value1 value2 = (output2603, value1306, value1) := by
  rw [input2603_def, output2603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2601]
  dsimp only
  rw [child2602]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2601_skip, output2602_skip]
  kernel_rfl

theorem node2604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2604 value1306 value1 value2 = (output2604, value1307, value1) := by
  rw [input2604_def, output2604_def]
  kernel_rfl

theorem node2605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2605 value1307 value1 value2 = (output2605, value1308, value1) := by
  rw [input2605_def, output2605_def]
  kernel_rfl

theorem node2606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2606 value1308 value1 value2 = (output2606, value1309, value1) := by
  rw [input2606_def, output2606_def]
  kernel_rfl

theorem node2607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2607 value1309 value1 value2 = (output2607, value5, value1) := by
  rw [input2607_def, output2607_def]
  kernel_rfl

theorem node2608_cond_eq
    (child2606 : Flapjack.WordAlloc.removeDeadStructural input2606 value1308 value1 value2 = (output2606, value1309, value1))
    (child2607 : Flapjack.WordAlloc.removeDeadStructural input2607 value1309 value1 value2 = (output2607, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2608 value1308 value1 value2 = (output2608, value5, value1) := by
  rw [input2608_def, output2608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2606]
  dsimp only
  rw [child2607]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2606_skip, output2607_skip]
  kernel_rfl

theorem node2609_cond_eq
    (child2605 : Flapjack.WordAlloc.removeDeadStructural input2605 value1307 value1 value2 = (output2605, value1308, value1))
    (child2608 : Flapjack.WordAlloc.removeDeadStructural input2608 value1308 value1 value2 = (output2608, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2609 value1307 value1 value2 = (output2609, value5, value1) := by
  rw [input2609_def, output2609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2605]
  dsimp only
  rw [child2608]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2605_skip, output2608_skip]
  kernel_rfl

theorem node2610_cond_eq
    (child2604 : Flapjack.WordAlloc.removeDeadStructural input2604 value1306 value1 value2 = (output2604, value1307, value1))
    (child2609 : Flapjack.WordAlloc.removeDeadStructural input2609 value1307 value1 value2 = (output2609, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2610 value1306 value1 value2 = (output2610, value5, value1) := by
  rw [input2610_def, output2610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2604]
  dsimp only
  rw [child2609]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2604_skip, output2609_skip]
  kernel_rfl

theorem node2611_cond_eq
    (child2603 : Flapjack.WordAlloc.removeDeadStructural input2603 value1304 value1 value2 = (output2603, value1306, value1))
    (child2610 : Flapjack.WordAlloc.removeDeadStructural input2610 value1306 value1 value2 = (output2610, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2611 value1304 value1 value2 = (output2611, value5, value1) := by
  rw [input2611_def, output2611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2603]
  dsimp only
  rw [child2610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2603_skip, output2610_skip]
  kernel_rfl

theorem node2612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2612 value5 value1 value2 = (output2612, value1310, value1) := by
  rw [input2612_def, output2612_def]
  kernel_rfl

theorem node2613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2613 value1310 value1 value2 = (output2613, value1311, value1) := by
  rw [input2613_def, output2613_def]
  kernel_rfl

theorem node2614_cond_eq
    (child2612 : Flapjack.WordAlloc.removeDeadStructural input2612 value5 value1 value2 = (output2612, value1310, value1))
    (child2613 : Flapjack.WordAlloc.removeDeadStructural input2613 value1310 value1 value2 = (output2613, value1311, value1)) : Flapjack.WordAlloc.removeDeadStructural input2614 value5 value1 value2 = (output2614, value1311, value1) := by
  rw [input2614_def, output2614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2612]
  dsimp only
  rw [child2613]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2612_skip, output2613_skip]
  kernel_rfl

theorem node2615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2615 value1311 value1 value2 = (output2615, value1312, value1) := by
  rw [input2615_def, output2615_def]
  kernel_rfl

theorem node2616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2616 value1312 value1 value2 = (output2616, value1312, value1) := by
  rw [input2616_def, output2616_def]
  kernel_rfl

theorem node2617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2617 value1312 value1 value2 = (output2617, value1313, value1) := by
  rw [input2617_def, output2617_def]
  kernel_rfl

theorem node2618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2618 value1313 value1 value2 = (output2618, value1314, value1) := by
  rw [input2618_def, output2618_def]
  kernel_rfl

theorem node2619_cond_eq
    (child2617 : Flapjack.WordAlloc.removeDeadStructural input2617 value1312 value1 value2 = (output2617, value1313, value1))
    (child2618 : Flapjack.WordAlloc.removeDeadStructural input2618 value1313 value1 value2 = (output2618, value1314, value1)) : Flapjack.WordAlloc.removeDeadStructural input2619 value1312 value1 value2 = (output2619, value1314, value1) := by
  rw [input2619_def, output2619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2617]
  dsimp only
  rw [child2618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2617_skip, output2618_skip]
  kernel_rfl

theorem node2620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2620 value1314 value1 value2 = (output2620, value1315, value1) := by
  rw [input2620_def, output2620_def]
  kernel_rfl

theorem node2621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2621 value1315 value1 value2 = (output2621, value1316, value1) := by
  rw [input2621_def, output2621_def]
  kernel_rfl

theorem node2622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2622 value1316 value1 value2 = (output2622, value1317, value1) := by
  rw [input2622_def, output2622_def]
  kernel_rfl

theorem node2623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2623 value1317 value1 value2 = (output2623, value5, value1) := by
  rw [input2623_def, output2623_def]
  kernel_rfl

theorem node2624_cond_eq
    (child2622 : Flapjack.WordAlloc.removeDeadStructural input2622 value1316 value1 value2 = (output2622, value1317, value1))
    (child2623 : Flapjack.WordAlloc.removeDeadStructural input2623 value1317 value1 value2 = (output2623, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2624 value1316 value1 value2 = (output2624, value5, value1) := by
  rw [input2624_def, output2624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2622]
  dsimp only
  rw [child2623]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2622_skip, output2623_skip]
  kernel_rfl

theorem node2625_cond_eq
    (child2621 : Flapjack.WordAlloc.removeDeadStructural input2621 value1315 value1 value2 = (output2621, value1316, value1))
    (child2624 : Flapjack.WordAlloc.removeDeadStructural input2624 value1316 value1 value2 = (output2624, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2625 value1315 value1 value2 = (output2625, value5, value1) := by
  rw [input2625_def, output2625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2621]
  dsimp only
  rw [child2624]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2621_skip, output2624_skip]
  kernel_rfl

theorem node2626_cond_eq
    (child2620 : Flapjack.WordAlloc.removeDeadStructural input2620 value1314 value1 value2 = (output2620, value1315, value1))
    (child2625 : Flapjack.WordAlloc.removeDeadStructural input2625 value1315 value1 value2 = (output2625, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2626 value1314 value1 value2 = (output2626, value5, value1) := by
  rw [input2626_def, output2626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2620]
  dsimp only
  rw [child2625]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2620_skip, output2625_skip]
  kernel_rfl

theorem node2627_cond_eq
    (child2619 : Flapjack.WordAlloc.removeDeadStructural input2619 value1312 value1 value2 = (output2619, value1314, value1))
    (child2626 : Flapjack.WordAlloc.removeDeadStructural input2626 value1314 value1 value2 = (output2626, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2627 value1312 value1 value2 = (output2627, value5, value1) := by
  rw [input2627_def, output2627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2619]
  dsimp only
  rw [child2626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2619_skip, output2626_skip]
  kernel_rfl

theorem node2628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2628 value5 value1 value2 = (output2628, value1318, value1) := by
  rw [input2628_def, output2628_def]
  kernel_rfl

theorem node2629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2629 value1318 value1 value2 = (output2629, value1319, value1) := by
  rw [input2629_def, output2629_def]
  kernel_rfl

theorem node2630_cond_eq
    (child2628 : Flapjack.WordAlloc.removeDeadStructural input2628 value5 value1 value2 = (output2628, value1318, value1))
    (child2629 : Flapjack.WordAlloc.removeDeadStructural input2629 value1318 value1 value2 = (output2629, value1319, value1)) : Flapjack.WordAlloc.removeDeadStructural input2630 value5 value1 value2 = (output2630, value1319, value1) := by
  rw [input2630_def, output2630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2628]
  dsimp only
  rw [child2629]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2628_skip, output2629_skip]
  kernel_rfl

theorem node2631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2631 value1319 value1 value2 = (output2631, value1320, value1) := by
  rw [input2631_def, output2631_def]
  kernel_rfl

theorem node2632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2632 value1320 value1 value2 = (output2632, value1320, value1) := by
  rw [input2632_def, output2632_def]
  kernel_rfl

theorem node2633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2633 value1320 value1 value2 = (output2633, value1321, value1) := by
  rw [input2633_def, output2633_def]
  kernel_rfl

theorem node2634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2634 value1321 value1 value2 = (output2634, value1322, value1) := by
  rw [input2634_def, output2634_def]
  kernel_rfl

theorem node2635_cond_eq
    (child2633 : Flapjack.WordAlloc.removeDeadStructural input2633 value1320 value1 value2 = (output2633, value1321, value1))
    (child2634 : Flapjack.WordAlloc.removeDeadStructural input2634 value1321 value1 value2 = (output2634, value1322, value1)) : Flapjack.WordAlloc.removeDeadStructural input2635 value1320 value1 value2 = (output2635, value1322, value1) := by
  rw [input2635_def, output2635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2633]
  dsimp only
  rw [child2634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2633_skip, output2634_skip]
  kernel_rfl

theorem node2636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2636 value1322 value1 value2 = (output2636, value1323, value1) := by
  rw [input2636_def, output2636_def]
  kernel_rfl

theorem node2637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2637 value1323 value1 value2 = (output2637, value1324, value1) := by
  rw [input2637_def, output2637_def]
  kernel_rfl

theorem node2638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2638 value1324 value1 value2 = (output2638, value1325, value1) := by
  rw [input2638_def, output2638_def]
  kernel_rfl

theorem node2639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2639 value1325 value1 value2 = (output2639, value5, value1) := by
  rw [input2639_def, output2639_def]
  kernel_rfl

theorem node2640_cond_eq
    (child2638 : Flapjack.WordAlloc.removeDeadStructural input2638 value1324 value1 value2 = (output2638, value1325, value1))
    (child2639 : Flapjack.WordAlloc.removeDeadStructural input2639 value1325 value1 value2 = (output2639, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2640 value1324 value1 value2 = (output2640, value5, value1) := by
  rw [input2640_def, output2640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2638]
  dsimp only
  rw [child2639]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2638_skip, output2639_skip]
  kernel_rfl

theorem node2641_cond_eq
    (child2637 : Flapjack.WordAlloc.removeDeadStructural input2637 value1323 value1 value2 = (output2637, value1324, value1))
    (child2640 : Flapjack.WordAlloc.removeDeadStructural input2640 value1324 value1 value2 = (output2640, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2641 value1323 value1 value2 = (output2641, value5, value1) := by
  rw [input2641_def, output2641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2637]
  dsimp only
  rw [child2640]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2637_skip, output2640_skip]
  kernel_rfl

theorem node2642_cond_eq
    (child2636 : Flapjack.WordAlloc.removeDeadStructural input2636 value1322 value1 value2 = (output2636, value1323, value1))
    (child2641 : Flapjack.WordAlloc.removeDeadStructural input2641 value1323 value1 value2 = (output2641, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2642 value1322 value1 value2 = (output2642, value5, value1) := by
  rw [input2642_def, output2642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2636]
  dsimp only
  rw [child2641]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2636_skip, output2641_skip]
  kernel_rfl

theorem node2643_cond_eq
    (child2635 : Flapjack.WordAlloc.removeDeadStructural input2635 value1320 value1 value2 = (output2635, value1322, value1))
    (child2642 : Flapjack.WordAlloc.removeDeadStructural input2642 value1322 value1 value2 = (output2642, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2643 value1320 value1 value2 = (output2643, value5, value1) := by
  rw [input2643_def, output2643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2635]
  dsimp only
  rw [child2642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2635_skip, output2642_skip]
  kernel_rfl

theorem node2644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2644 value5 value1 value2 = (output2644, value1326, value1) := by
  rw [input2644_def, output2644_def]
  kernel_rfl

theorem node2645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2645 value1326 value1 value2 = (output2645, value1327, value1) := by
  rw [input2645_def, output2645_def]
  kernel_rfl

theorem node2646_cond_eq
    (child2644 : Flapjack.WordAlloc.removeDeadStructural input2644 value5 value1 value2 = (output2644, value1326, value1))
    (child2645 : Flapjack.WordAlloc.removeDeadStructural input2645 value1326 value1 value2 = (output2645, value1327, value1)) : Flapjack.WordAlloc.removeDeadStructural input2646 value5 value1 value2 = (output2646, value1327, value1) := by
  rw [input2646_def, output2646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2644]
  dsimp only
  rw [child2645]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2644_skip, output2645_skip]
  kernel_rfl

theorem node2647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2647 value1327 value1 value2 = (output2647, value1328, value1) := by
  rw [input2647_def, output2647_def]
  kernel_rfl

theorem node2648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2648 value1328 value1 value2 = (output2648, value1328, value1) := by
  rw [input2648_def, output2648_def]
  kernel_rfl

theorem node2649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2649 value1328 value1 value2 = (output2649, value1329, value1) := by
  rw [input2649_def, output2649_def]
  kernel_rfl

theorem node2650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2650 value1329 value1 value2 = (output2650, value1330, value1) := by
  rw [input2650_def, output2650_def]
  kernel_rfl

theorem node2651_cond_eq
    (child2649 : Flapjack.WordAlloc.removeDeadStructural input2649 value1328 value1 value2 = (output2649, value1329, value1))
    (child2650 : Flapjack.WordAlloc.removeDeadStructural input2650 value1329 value1 value2 = (output2650, value1330, value1)) : Flapjack.WordAlloc.removeDeadStructural input2651 value1328 value1 value2 = (output2651, value1330, value1) := by
  rw [input2651_def, output2651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2649]
  dsimp only
  rw [child2650]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2649_skip, output2650_skip]
  kernel_rfl

theorem node2652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2652 value1330 value1 value2 = (output2652, value1331, value1) := by
  rw [input2652_def, output2652_def]
  kernel_rfl

theorem node2653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2653 value1331 value1 value2 = (output2653, value1332, value1) := by
  rw [input2653_def, output2653_def]
  kernel_rfl

theorem node2654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2654 value1332 value1 value2 = (output2654, value1333, value1) := by
  rw [input2654_def, output2654_def]
  kernel_rfl

theorem node2655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2655 value1333 value1 value2 = (output2655, value5, value1) := by
  rw [input2655_def, output2655_def]
  kernel_rfl

theorem node2656_cond_eq
    (child2654 : Flapjack.WordAlloc.removeDeadStructural input2654 value1332 value1 value2 = (output2654, value1333, value1))
    (child2655 : Flapjack.WordAlloc.removeDeadStructural input2655 value1333 value1 value2 = (output2655, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2656 value1332 value1 value2 = (output2656, value5, value1) := by
  rw [input2656_def, output2656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2654]
  dsimp only
  rw [child2655]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2654_skip, output2655_skip]
  kernel_rfl

theorem node2657_cond_eq
    (child2653 : Flapjack.WordAlloc.removeDeadStructural input2653 value1331 value1 value2 = (output2653, value1332, value1))
    (child2656 : Flapjack.WordAlloc.removeDeadStructural input2656 value1332 value1 value2 = (output2656, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2657 value1331 value1 value2 = (output2657, value5, value1) := by
  rw [input2657_def, output2657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2653]
  dsimp only
  rw [child2656]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2653_skip, output2656_skip]
  kernel_rfl

theorem node2658_cond_eq
    (child2652 : Flapjack.WordAlloc.removeDeadStructural input2652 value1330 value1 value2 = (output2652, value1331, value1))
    (child2657 : Flapjack.WordAlloc.removeDeadStructural input2657 value1331 value1 value2 = (output2657, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2658 value1330 value1 value2 = (output2658, value5, value1) := by
  rw [input2658_def, output2658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2652]
  dsimp only
  rw [child2657]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2652_skip, output2657_skip]
  kernel_rfl

theorem node2659_cond_eq
    (child2651 : Flapjack.WordAlloc.removeDeadStructural input2651 value1328 value1 value2 = (output2651, value1330, value1))
    (child2658 : Flapjack.WordAlloc.removeDeadStructural input2658 value1330 value1 value2 = (output2658, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2659 value1328 value1 value2 = (output2659, value5, value1) := by
  rw [input2659_def, output2659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2651]
  dsimp only
  rw [child2658]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2651_skip, output2658_skip]
  kernel_rfl

theorem node2660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2660 value5 value1 value2 = (output2660, value1334, value1) := by
  rw [input2660_def, output2660_def]
  kernel_rfl

theorem node2661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2661 value1334 value1 value2 = (output2661, value1335, value1) := by
  rw [input2661_def, output2661_def]
  kernel_rfl

theorem node2662_cond_eq
    (child2660 : Flapjack.WordAlloc.removeDeadStructural input2660 value5 value1 value2 = (output2660, value1334, value1))
    (child2661 : Flapjack.WordAlloc.removeDeadStructural input2661 value1334 value1 value2 = (output2661, value1335, value1)) : Flapjack.WordAlloc.removeDeadStructural input2662 value5 value1 value2 = (output2662, value1335, value1) := by
  rw [input2662_def, output2662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2660]
  dsimp only
  rw [child2661]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2660_skip, output2661_skip]
  kernel_rfl

theorem node2663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2663 value1335 value1 value2 = (output2663, value1336, value1) := by
  rw [input2663_def, output2663_def]
  kernel_rfl

theorem node2664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2664 value1336 value1 value2 = (output2664, value1336, value1) := by
  rw [input2664_def, output2664_def]
  kernel_rfl

theorem node2665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2665 value1336 value1 value2 = (output2665, value1337, value1) := by
  rw [input2665_def, output2665_def]
  kernel_rfl

theorem node2666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2666 value1337 value1 value2 = (output2666, value1338, value1) := by
  rw [input2666_def, output2666_def]
  kernel_rfl

theorem node2667_cond_eq
    (child2665 : Flapjack.WordAlloc.removeDeadStructural input2665 value1336 value1 value2 = (output2665, value1337, value1))
    (child2666 : Flapjack.WordAlloc.removeDeadStructural input2666 value1337 value1 value2 = (output2666, value1338, value1)) : Flapjack.WordAlloc.removeDeadStructural input2667 value1336 value1 value2 = (output2667, value1338, value1) := by
  rw [input2667_def, output2667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2665]
  dsimp only
  rw [child2666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2665_skip, output2666_skip]
  kernel_rfl

theorem node2668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2668 value1338 value1 value2 = (output2668, value1339, value1) := by
  rw [input2668_def, output2668_def]
  kernel_rfl

theorem node2669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2669 value1339 value1 value2 = (output2669, value1340, value1) := by
  rw [input2669_def, output2669_def]
  kernel_rfl

theorem node2670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2670 value1340 value1 value2 = (output2670, value1341, value1) := by
  rw [input2670_def, output2670_def]
  kernel_rfl

theorem node2671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2671 value1341 value1 value2 = (output2671, value5, value1) := by
  rw [input2671_def, output2671_def]
  kernel_rfl

theorem node2672_cond_eq
    (child2670 : Flapjack.WordAlloc.removeDeadStructural input2670 value1340 value1 value2 = (output2670, value1341, value1))
    (child2671 : Flapjack.WordAlloc.removeDeadStructural input2671 value1341 value1 value2 = (output2671, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2672 value1340 value1 value2 = (output2672, value5, value1) := by
  rw [input2672_def, output2672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2670]
  dsimp only
  rw [child2671]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2670_skip, output2671_skip]
  kernel_rfl

theorem node2673_cond_eq
    (child2669 : Flapjack.WordAlloc.removeDeadStructural input2669 value1339 value1 value2 = (output2669, value1340, value1))
    (child2672 : Flapjack.WordAlloc.removeDeadStructural input2672 value1340 value1 value2 = (output2672, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2673 value1339 value1 value2 = (output2673, value5, value1) := by
  rw [input2673_def, output2673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2669]
  dsimp only
  rw [child2672]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2669_skip, output2672_skip]
  kernel_rfl

theorem node2674_cond_eq
    (child2668 : Flapjack.WordAlloc.removeDeadStructural input2668 value1338 value1 value2 = (output2668, value1339, value1))
    (child2673 : Flapjack.WordAlloc.removeDeadStructural input2673 value1339 value1 value2 = (output2673, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2674 value1338 value1 value2 = (output2674, value5, value1) := by
  rw [input2674_def, output2674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2668]
  dsimp only
  rw [child2673]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2668_skip, output2673_skip]
  kernel_rfl

theorem node2675_cond_eq
    (child2667 : Flapjack.WordAlloc.removeDeadStructural input2667 value1336 value1 value2 = (output2667, value1338, value1))
    (child2674 : Flapjack.WordAlloc.removeDeadStructural input2674 value1338 value1 value2 = (output2674, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2675 value1336 value1 value2 = (output2675, value5, value1) := by
  rw [input2675_def, output2675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2667]
  dsimp only
  rw [child2674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2667_skip, output2674_skip]
  kernel_rfl

theorem node2676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2676 value5 value1 value2 = (output2676, value1342, value1) := by
  rw [input2676_def, output2676_def]
  kernel_rfl

theorem node2677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2677 value1342 value1 value2 = (output2677, value1343, value1) := by
  rw [input2677_def, output2677_def]
  kernel_rfl

theorem node2678_cond_eq
    (child2676 : Flapjack.WordAlloc.removeDeadStructural input2676 value5 value1 value2 = (output2676, value1342, value1))
    (child2677 : Flapjack.WordAlloc.removeDeadStructural input2677 value1342 value1 value2 = (output2677, value1343, value1)) : Flapjack.WordAlloc.removeDeadStructural input2678 value5 value1 value2 = (output2678, value1343, value1) := by
  rw [input2678_def, output2678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2676]
  dsimp only
  rw [child2677]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2676_skip, output2677_skip]
  kernel_rfl

theorem node2679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2679 value1343 value1 value2 = (output2679, value1344, value1) := by
  rw [input2679_def, output2679_def]
  kernel_rfl

theorem node2680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2680 value1344 value1 value2 = (output2680, value1344, value1) := by
  rw [input2680_def, output2680_def]
  kernel_rfl

theorem node2681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2681 value1344 value1 value2 = (output2681, value1345, value1) := by
  rw [input2681_def, output2681_def]
  kernel_rfl

theorem node2682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2682 value1345 value1 value2 = (output2682, value1346, value1) := by
  rw [input2682_def, output2682_def]
  kernel_rfl

theorem node2683_cond_eq
    (child2681 : Flapjack.WordAlloc.removeDeadStructural input2681 value1344 value1 value2 = (output2681, value1345, value1))
    (child2682 : Flapjack.WordAlloc.removeDeadStructural input2682 value1345 value1 value2 = (output2682, value1346, value1)) : Flapjack.WordAlloc.removeDeadStructural input2683 value1344 value1 value2 = (output2683, value1346, value1) := by
  rw [input2683_def, output2683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2681]
  dsimp only
  rw [child2682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2681_skip, output2682_skip]
  kernel_rfl

theorem node2684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2684 value1346 value1 value2 = (output2684, value1347, value1) := by
  rw [input2684_def, output2684_def]
  kernel_rfl

theorem node2685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2685 value1347 value1 value2 = (output2685, value1348, value1) := by
  rw [input2685_def, output2685_def]
  kernel_rfl

theorem node2686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2686 value1348 value1 value2 = (output2686, value1349, value1) := by
  rw [input2686_def, output2686_def]
  kernel_rfl

theorem node2687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2687 value1349 value1 value2 = (output2687, value5, value1) := by
  rw [input2687_def, output2687_def]
  kernel_rfl

theorem node2688_cond_eq
    (child2686 : Flapjack.WordAlloc.removeDeadStructural input2686 value1348 value1 value2 = (output2686, value1349, value1))
    (child2687 : Flapjack.WordAlloc.removeDeadStructural input2687 value1349 value1 value2 = (output2687, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2688 value1348 value1 value2 = (output2688, value5, value1) := by
  rw [input2688_def, output2688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2686]
  dsimp only
  rw [child2687]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2686_skip, output2687_skip]
  kernel_rfl

theorem node2689_cond_eq
    (child2685 : Flapjack.WordAlloc.removeDeadStructural input2685 value1347 value1 value2 = (output2685, value1348, value1))
    (child2688 : Flapjack.WordAlloc.removeDeadStructural input2688 value1348 value1 value2 = (output2688, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2689 value1347 value1 value2 = (output2689, value5, value1) := by
  rw [input2689_def, output2689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2685]
  dsimp only
  rw [child2688]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2685_skip, output2688_skip]
  kernel_rfl

theorem node2690_cond_eq
    (child2684 : Flapjack.WordAlloc.removeDeadStructural input2684 value1346 value1 value2 = (output2684, value1347, value1))
    (child2689 : Flapjack.WordAlloc.removeDeadStructural input2689 value1347 value1 value2 = (output2689, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2690 value1346 value1 value2 = (output2690, value5, value1) := by
  rw [input2690_def, output2690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2684]
  dsimp only
  rw [child2689]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2684_skip, output2689_skip]
  kernel_rfl

theorem node2691_cond_eq
    (child2683 : Flapjack.WordAlloc.removeDeadStructural input2683 value1344 value1 value2 = (output2683, value1346, value1))
    (child2690 : Flapjack.WordAlloc.removeDeadStructural input2690 value1346 value1 value2 = (output2690, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2691 value1344 value1 value2 = (output2691, value5, value1) := by
  rw [input2691_def, output2691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2683]
  dsimp only
  rw [child2690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2683_skip, output2690_skip]
  kernel_rfl

theorem node2692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2692 value5 value1 value2 = (output2692, value1350, value1) := by
  rw [input2692_def, output2692_def]
  kernel_rfl

theorem node2693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2693 value1350 value1 value2 = (output2693, value1351, value1) := by
  rw [input2693_def, output2693_def]
  kernel_rfl

theorem node2694_cond_eq
    (child2692 : Flapjack.WordAlloc.removeDeadStructural input2692 value5 value1 value2 = (output2692, value1350, value1))
    (child2693 : Flapjack.WordAlloc.removeDeadStructural input2693 value1350 value1 value2 = (output2693, value1351, value1)) : Flapjack.WordAlloc.removeDeadStructural input2694 value5 value1 value2 = (output2694, value1351, value1) := by
  rw [input2694_def, output2694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2692]
  dsimp only
  rw [child2693]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2692_skip, output2693_skip]
  kernel_rfl

theorem node2695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2695 value1351 value1 value2 = (output2695, value1352, value1) := by
  rw [input2695_def, output2695_def]
  kernel_rfl

theorem node2696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2696 value1352 value1 value2 = (output2696, value1352, value1) := by
  rw [input2696_def, output2696_def]
  kernel_rfl

theorem node2697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2697 value1352 value1 value2 = (output2697, value1353, value1) := by
  rw [input2697_def, output2697_def]
  kernel_rfl

theorem node2698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2698 value1353 value1 value2 = (output2698, value1354, value1) := by
  rw [input2698_def, output2698_def]
  kernel_rfl

theorem node2699_cond_eq
    (child2697 : Flapjack.WordAlloc.removeDeadStructural input2697 value1352 value1 value2 = (output2697, value1353, value1))
    (child2698 : Flapjack.WordAlloc.removeDeadStructural input2698 value1353 value1 value2 = (output2698, value1354, value1)) : Flapjack.WordAlloc.removeDeadStructural input2699 value1352 value1 value2 = (output2699, value1354, value1) := by
  rw [input2699_def, output2699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2697]
  dsimp only
  rw [child2698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2697_skip, output2698_skip]
  kernel_rfl

theorem node2700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2700 value1354 value1 value2 = (output2700, value1355, value1) := by
  rw [input2700_def, output2700_def]
  kernel_rfl

theorem node2701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2701 value1355 value1 value2 = (output2701, value1356, value1) := by
  rw [input2701_def, output2701_def]
  kernel_rfl

theorem node2702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2702 value1356 value1 value2 = (output2702, value1357, value1) := by
  rw [input2702_def, output2702_def]
  kernel_rfl

theorem node2703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2703 value1357 value1 value2 = (output2703, value5, value1) := by
  rw [input2703_def, output2703_def]
  kernel_rfl

theorem node2704_cond_eq
    (child2702 : Flapjack.WordAlloc.removeDeadStructural input2702 value1356 value1 value2 = (output2702, value1357, value1))
    (child2703 : Flapjack.WordAlloc.removeDeadStructural input2703 value1357 value1 value2 = (output2703, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2704 value1356 value1 value2 = (output2704, value5, value1) := by
  rw [input2704_def, output2704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2702]
  dsimp only
  rw [child2703]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2702_skip, output2703_skip]
  kernel_rfl

theorem node2705_cond_eq
    (child2701 : Flapjack.WordAlloc.removeDeadStructural input2701 value1355 value1 value2 = (output2701, value1356, value1))
    (child2704 : Flapjack.WordAlloc.removeDeadStructural input2704 value1356 value1 value2 = (output2704, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2705 value1355 value1 value2 = (output2705, value5, value1) := by
  rw [input2705_def, output2705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2701]
  dsimp only
  rw [child2704]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2701_skip, output2704_skip]
  kernel_rfl

theorem node2706_cond_eq
    (child2700 : Flapjack.WordAlloc.removeDeadStructural input2700 value1354 value1 value2 = (output2700, value1355, value1))
    (child2705 : Flapjack.WordAlloc.removeDeadStructural input2705 value1355 value1 value2 = (output2705, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2706 value1354 value1 value2 = (output2706, value5, value1) := by
  rw [input2706_def, output2706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2700]
  dsimp only
  rw [child2705]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2700_skip, output2705_skip]
  kernel_rfl

theorem node2707_cond_eq
    (child2699 : Flapjack.WordAlloc.removeDeadStructural input2699 value1352 value1 value2 = (output2699, value1354, value1))
    (child2706 : Flapjack.WordAlloc.removeDeadStructural input2706 value1354 value1 value2 = (output2706, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2707 value1352 value1 value2 = (output2707, value5, value1) := by
  rw [input2707_def, output2707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2699]
  dsimp only
  rw [child2706]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2699_skip, output2706_skip]
  kernel_rfl

theorem node2708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2708 value5 value1 value2 = (output2708, value1358, value1) := by
  rw [input2708_def, output2708_def]
  kernel_rfl

theorem node2709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2709 value1358 value1 value2 = (output2709, value1359, value1) := by
  rw [input2709_def, output2709_def]
  kernel_rfl

theorem node2710_cond_eq
    (child2708 : Flapjack.WordAlloc.removeDeadStructural input2708 value5 value1 value2 = (output2708, value1358, value1))
    (child2709 : Flapjack.WordAlloc.removeDeadStructural input2709 value1358 value1 value2 = (output2709, value1359, value1)) : Flapjack.WordAlloc.removeDeadStructural input2710 value5 value1 value2 = (output2710, value1359, value1) := by
  rw [input2710_def, output2710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2708]
  dsimp only
  rw [child2709]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2708_skip, output2709_skip]
  kernel_rfl

theorem node2711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2711 value1359 value1 value2 = (output2711, value1360, value1) := by
  rw [input2711_def, output2711_def]
  kernel_rfl

theorem node2712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2712 value1360 value1 value2 = (output2712, value1360, value1) := by
  rw [input2712_def, output2712_def]
  kernel_rfl

theorem node2713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2713 value1360 value1 value2 = (output2713, value1361, value1) := by
  rw [input2713_def, output2713_def]
  kernel_rfl

theorem node2714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2714 value1361 value1 value2 = (output2714, value1362, value1) := by
  rw [input2714_def, output2714_def]
  kernel_rfl

theorem node2715_cond_eq
    (child2713 : Flapjack.WordAlloc.removeDeadStructural input2713 value1360 value1 value2 = (output2713, value1361, value1))
    (child2714 : Flapjack.WordAlloc.removeDeadStructural input2714 value1361 value1 value2 = (output2714, value1362, value1)) : Flapjack.WordAlloc.removeDeadStructural input2715 value1360 value1 value2 = (output2715, value1362, value1) := by
  rw [input2715_def, output2715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2713]
  dsimp only
  rw [child2714]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2713_skip, output2714_skip]
  kernel_rfl

theorem node2716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2716 value1362 value1 value2 = (output2716, value1363, value1) := by
  rw [input2716_def, output2716_def]
  kernel_rfl

theorem node2717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2717 value1363 value1 value2 = (output2717, value1364, value1) := by
  rw [input2717_def, output2717_def]
  kernel_rfl

theorem node2718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2718 value1364 value1 value2 = (output2718, value1365, value1) := by
  rw [input2718_def, output2718_def]
  kernel_rfl

theorem node2719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2719 value1365 value1 value2 = (output2719, value5, value1) := by
  rw [input2719_def, output2719_def]
  kernel_rfl

theorem node2720_cond_eq
    (child2718 : Flapjack.WordAlloc.removeDeadStructural input2718 value1364 value1 value2 = (output2718, value1365, value1))
    (child2719 : Flapjack.WordAlloc.removeDeadStructural input2719 value1365 value1 value2 = (output2719, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2720 value1364 value1 value2 = (output2720, value5, value1) := by
  rw [input2720_def, output2720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2718]
  dsimp only
  rw [child2719]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2718_skip, output2719_skip]
  kernel_rfl

theorem node2721_cond_eq
    (child2717 : Flapjack.WordAlloc.removeDeadStructural input2717 value1363 value1 value2 = (output2717, value1364, value1))
    (child2720 : Flapjack.WordAlloc.removeDeadStructural input2720 value1364 value1 value2 = (output2720, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2721 value1363 value1 value2 = (output2721, value5, value1) := by
  rw [input2721_def, output2721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2717]
  dsimp only
  rw [child2720]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2717_skip, output2720_skip]
  kernel_rfl

theorem node2722_cond_eq
    (child2716 : Flapjack.WordAlloc.removeDeadStructural input2716 value1362 value1 value2 = (output2716, value1363, value1))
    (child2721 : Flapjack.WordAlloc.removeDeadStructural input2721 value1363 value1 value2 = (output2721, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2722 value1362 value1 value2 = (output2722, value5, value1) := by
  rw [input2722_def, output2722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2716]
  dsimp only
  rw [child2721]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2716_skip, output2721_skip]
  kernel_rfl

theorem node2723_cond_eq
    (child2715 : Flapjack.WordAlloc.removeDeadStructural input2715 value1360 value1 value2 = (output2715, value1362, value1))
    (child2722 : Flapjack.WordAlloc.removeDeadStructural input2722 value1362 value1 value2 = (output2722, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2723 value1360 value1 value2 = (output2723, value5, value1) := by
  rw [input2723_def, output2723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2715]
  dsimp only
  rw [child2722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2715_skip, output2722_skip]
  kernel_rfl

theorem node2724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2724 value5 value1 value2 = (output2724, value1366, value1) := by
  rw [input2724_def, output2724_def]
  kernel_rfl

theorem node2725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2725 value1366 value1 value2 = (output2725, value1367, value1) := by
  rw [input2725_def, output2725_def]
  kernel_rfl

theorem node2726_cond_eq
    (child2724 : Flapjack.WordAlloc.removeDeadStructural input2724 value5 value1 value2 = (output2724, value1366, value1))
    (child2725 : Flapjack.WordAlloc.removeDeadStructural input2725 value1366 value1 value2 = (output2725, value1367, value1)) : Flapjack.WordAlloc.removeDeadStructural input2726 value5 value1 value2 = (output2726, value1367, value1) := by
  rw [input2726_def, output2726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2724]
  dsimp only
  rw [child2725]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2724_skip, output2725_skip]
  kernel_rfl

theorem node2727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2727 value1367 value1 value2 = (output2727, value1368, value1) := by
  rw [input2727_def, output2727_def]
  kernel_rfl

theorem node2728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2728 value1368 value1 value2 = (output2728, value1368, value1) := by
  rw [input2728_def, output2728_def]
  kernel_rfl

theorem node2729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2729 value1368 value1 value2 = (output2729, value1369, value1) := by
  rw [input2729_def, output2729_def]
  kernel_rfl

theorem node2730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2730 value1369 value1 value2 = (output2730, value1370, value1) := by
  rw [input2730_def, output2730_def]
  kernel_rfl

theorem node2731_cond_eq
    (child2729 : Flapjack.WordAlloc.removeDeadStructural input2729 value1368 value1 value2 = (output2729, value1369, value1))
    (child2730 : Flapjack.WordAlloc.removeDeadStructural input2730 value1369 value1 value2 = (output2730, value1370, value1)) : Flapjack.WordAlloc.removeDeadStructural input2731 value1368 value1 value2 = (output2731, value1370, value1) := by
  rw [input2731_def, output2731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2729]
  dsimp only
  rw [child2730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2729_skip, output2730_skip]
  kernel_rfl

theorem node2732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2732 value1370 value1 value2 = (output2732, value1371, value1) := by
  rw [input2732_def, output2732_def]
  kernel_rfl

theorem node2733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2733 value1371 value1 value2 = (output2733, value1372, value1) := by
  rw [input2733_def, output2733_def]
  kernel_rfl

theorem node2734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2734 value1372 value1 value2 = (output2734, value1373, value1) := by
  rw [input2734_def, output2734_def]
  kernel_rfl

theorem node2735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2735 value1373 value1 value2 = (output2735, value5, value1) := by
  rw [input2735_def, output2735_def]
  kernel_rfl

theorem node2736_cond_eq
    (child2734 : Flapjack.WordAlloc.removeDeadStructural input2734 value1372 value1 value2 = (output2734, value1373, value1))
    (child2735 : Flapjack.WordAlloc.removeDeadStructural input2735 value1373 value1 value2 = (output2735, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2736 value1372 value1 value2 = (output2736, value5, value1) := by
  rw [input2736_def, output2736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2734]
  dsimp only
  rw [child2735]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2734_skip, output2735_skip]
  kernel_rfl

theorem node2737_cond_eq
    (child2733 : Flapjack.WordAlloc.removeDeadStructural input2733 value1371 value1 value2 = (output2733, value1372, value1))
    (child2736 : Flapjack.WordAlloc.removeDeadStructural input2736 value1372 value1 value2 = (output2736, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2737 value1371 value1 value2 = (output2737, value5, value1) := by
  rw [input2737_def, output2737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2733]
  dsimp only
  rw [child2736]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2733_skip, output2736_skip]
  kernel_rfl

theorem node2738_cond_eq
    (child2732 : Flapjack.WordAlloc.removeDeadStructural input2732 value1370 value1 value2 = (output2732, value1371, value1))
    (child2737 : Flapjack.WordAlloc.removeDeadStructural input2737 value1371 value1 value2 = (output2737, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2738 value1370 value1 value2 = (output2738, value5, value1) := by
  rw [input2738_def, output2738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2732]
  dsimp only
  rw [child2737]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2732_skip, output2737_skip]
  kernel_rfl

theorem node2739_cond_eq
    (child2731 : Flapjack.WordAlloc.removeDeadStructural input2731 value1368 value1 value2 = (output2731, value1370, value1))
    (child2738 : Flapjack.WordAlloc.removeDeadStructural input2738 value1370 value1 value2 = (output2738, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2739 value1368 value1 value2 = (output2739, value5, value1) := by
  rw [input2739_def, output2739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2731]
  dsimp only
  rw [child2738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2731_skip, output2738_skip]
  kernel_rfl

theorem node2740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2740 value5 value1 value2 = (output2740, value1374, value1) := by
  rw [input2740_def, output2740_def]
  kernel_rfl

theorem node2741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2741 value1374 value1 value2 = (output2741, value1375, value1) := by
  rw [input2741_def, output2741_def]
  kernel_rfl

theorem node2742_cond_eq
    (child2740 : Flapjack.WordAlloc.removeDeadStructural input2740 value5 value1 value2 = (output2740, value1374, value1))
    (child2741 : Flapjack.WordAlloc.removeDeadStructural input2741 value1374 value1 value2 = (output2741, value1375, value1)) : Flapjack.WordAlloc.removeDeadStructural input2742 value5 value1 value2 = (output2742, value1375, value1) := by
  rw [input2742_def, output2742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2740]
  dsimp only
  rw [child2741]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2740_skip, output2741_skip]
  kernel_rfl

theorem node2743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2743 value1375 value1 value2 = (output2743, value1376, value1) := by
  rw [input2743_def, output2743_def]
  kernel_rfl

theorem node2744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2744 value1376 value1 value2 = (output2744, value1376, value1) := by
  rw [input2744_def, output2744_def]
  kernel_rfl

theorem node2745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2745 value1376 value1 value2 = (output2745, value1377, value1) := by
  rw [input2745_def, output2745_def]
  kernel_rfl

theorem node2746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2746 value1377 value1 value2 = (output2746, value1378, value1) := by
  rw [input2746_def, output2746_def]
  kernel_rfl

theorem node2747_cond_eq
    (child2745 : Flapjack.WordAlloc.removeDeadStructural input2745 value1376 value1 value2 = (output2745, value1377, value1))
    (child2746 : Flapjack.WordAlloc.removeDeadStructural input2746 value1377 value1 value2 = (output2746, value1378, value1)) : Flapjack.WordAlloc.removeDeadStructural input2747 value1376 value1 value2 = (output2747, value1378, value1) := by
  rw [input2747_def, output2747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2745]
  dsimp only
  rw [child2746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2745_skip, output2746_skip]
  kernel_rfl

theorem node2748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2748 value1378 value1 value2 = (output2748, value1379, value1) := by
  rw [input2748_def, output2748_def]
  kernel_rfl

theorem node2749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2749 value1379 value1 value2 = (output2749, value1380, value1) := by
  rw [input2749_def, output2749_def]
  kernel_rfl

theorem node2750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2750 value1380 value1 value2 = (output2750, value1381, value1) := by
  rw [input2750_def, output2750_def]
  kernel_rfl

theorem node2751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2751 value1381 value1 value2 = (output2751, value5, value1) := by
  rw [input2751_def, output2751_def]
  kernel_rfl

theorem node2752_cond_eq
    (child2750 : Flapjack.WordAlloc.removeDeadStructural input2750 value1380 value1 value2 = (output2750, value1381, value1))
    (child2751 : Flapjack.WordAlloc.removeDeadStructural input2751 value1381 value1 value2 = (output2751, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2752 value1380 value1 value2 = (output2752, value5, value1) := by
  rw [input2752_def, output2752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2750]
  dsimp only
  rw [child2751]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2750_skip, output2751_skip]
  kernel_rfl

theorem node2753_cond_eq
    (child2749 : Flapjack.WordAlloc.removeDeadStructural input2749 value1379 value1 value2 = (output2749, value1380, value1))
    (child2752 : Flapjack.WordAlloc.removeDeadStructural input2752 value1380 value1 value2 = (output2752, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2753 value1379 value1 value2 = (output2753, value5, value1) := by
  rw [input2753_def, output2753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2749]
  dsimp only
  rw [child2752]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2749_skip, output2752_skip]
  kernel_rfl

theorem node2754_cond_eq
    (child2748 : Flapjack.WordAlloc.removeDeadStructural input2748 value1378 value1 value2 = (output2748, value1379, value1))
    (child2753 : Flapjack.WordAlloc.removeDeadStructural input2753 value1379 value1 value2 = (output2753, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2754 value1378 value1 value2 = (output2754, value5, value1) := by
  rw [input2754_def, output2754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2748]
  dsimp only
  rw [child2753]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2748_skip, output2753_skip]
  kernel_rfl

theorem node2755_cond_eq
    (child2747 : Flapjack.WordAlloc.removeDeadStructural input2747 value1376 value1 value2 = (output2747, value1378, value1))
    (child2754 : Flapjack.WordAlloc.removeDeadStructural input2754 value1378 value1 value2 = (output2754, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2755 value1376 value1 value2 = (output2755, value5, value1) := by
  rw [input2755_def, output2755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2747]
  dsimp only
  rw [child2754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2747_skip, output2754_skip]
  kernel_rfl

theorem node2756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2756 value5 value1 value2 = (output2756, value1382, value1) := by
  rw [input2756_def, output2756_def]
  kernel_rfl

theorem node2757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2757 value1382 value1 value2 = (output2757, value1383, value1) := by
  rw [input2757_def, output2757_def]
  kernel_rfl

theorem node2758_cond_eq
    (child2756 : Flapjack.WordAlloc.removeDeadStructural input2756 value5 value1 value2 = (output2756, value1382, value1))
    (child2757 : Flapjack.WordAlloc.removeDeadStructural input2757 value1382 value1 value2 = (output2757, value1383, value1)) : Flapjack.WordAlloc.removeDeadStructural input2758 value5 value1 value2 = (output2758, value1383, value1) := by
  rw [input2758_def, output2758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2756]
  dsimp only
  rw [child2757]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2756_skip, output2757_skip]
  kernel_rfl

theorem node2759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2759 value1383 value1 value2 = (output2759, value1384, value1) := by
  rw [input2759_def, output2759_def]
  kernel_rfl

theorem node2760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2760 value1384 value1 value2 = (output2760, value1384, value1) := by
  rw [input2760_def, output2760_def]
  kernel_rfl

theorem node2761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2761 value1384 value1 value2 = (output2761, value1385, value1) := by
  rw [input2761_def, output2761_def]
  kernel_rfl

theorem node2762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2762 value1385 value1 value2 = (output2762, value1386, value1) := by
  rw [input2762_def, output2762_def]
  kernel_rfl

theorem node2763_cond_eq
    (child2761 : Flapjack.WordAlloc.removeDeadStructural input2761 value1384 value1 value2 = (output2761, value1385, value1))
    (child2762 : Flapjack.WordAlloc.removeDeadStructural input2762 value1385 value1 value2 = (output2762, value1386, value1)) : Flapjack.WordAlloc.removeDeadStructural input2763 value1384 value1 value2 = (output2763, value1386, value1) := by
  rw [input2763_def, output2763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2761]
  dsimp only
  rw [child2762]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2761_skip, output2762_skip]
  kernel_rfl

theorem node2764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2764 value1386 value1 value2 = (output2764, value1387, value1) := by
  rw [input2764_def, output2764_def]
  kernel_rfl

theorem node2765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2765 value1387 value1 value2 = (output2765, value1388, value1) := by
  rw [input2765_def, output2765_def]
  kernel_rfl

theorem node2766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2766 value1388 value1 value2 = (output2766, value1389, value1) := by
  rw [input2766_def, output2766_def]
  kernel_rfl

theorem node2767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2767 value1389 value1 value2 = (output2767, value5, value1) := by
  rw [input2767_def, output2767_def]
  kernel_rfl

theorem node2768_cond_eq
    (child2766 : Flapjack.WordAlloc.removeDeadStructural input2766 value1388 value1 value2 = (output2766, value1389, value1))
    (child2767 : Flapjack.WordAlloc.removeDeadStructural input2767 value1389 value1 value2 = (output2767, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2768 value1388 value1 value2 = (output2768, value5, value1) := by
  rw [input2768_def, output2768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2766]
  dsimp only
  rw [child2767]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2766_skip, output2767_skip]
  kernel_rfl

theorem node2769_cond_eq
    (child2765 : Flapjack.WordAlloc.removeDeadStructural input2765 value1387 value1 value2 = (output2765, value1388, value1))
    (child2768 : Flapjack.WordAlloc.removeDeadStructural input2768 value1388 value1 value2 = (output2768, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2769 value1387 value1 value2 = (output2769, value5, value1) := by
  rw [input2769_def, output2769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2765]
  dsimp only
  rw [child2768]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2765_skip, output2768_skip]
  kernel_rfl

theorem node2770_cond_eq
    (child2764 : Flapjack.WordAlloc.removeDeadStructural input2764 value1386 value1 value2 = (output2764, value1387, value1))
    (child2769 : Flapjack.WordAlloc.removeDeadStructural input2769 value1387 value1 value2 = (output2769, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2770 value1386 value1 value2 = (output2770, value5, value1) := by
  rw [input2770_def, output2770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2764]
  dsimp only
  rw [child2769]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2764_skip, output2769_skip]
  kernel_rfl

theorem node2771_cond_eq
    (child2763 : Flapjack.WordAlloc.removeDeadStructural input2763 value1384 value1 value2 = (output2763, value1386, value1))
    (child2770 : Flapjack.WordAlloc.removeDeadStructural input2770 value1386 value1 value2 = (output2770, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2771 value1384 value1 value2 = (output2771, value5, value1) := by
  rw [input2771_def, output2771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2763]
  dsimp only
  rw [child2770]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2763_skip, output2770_skip]
  kernel_rfl

theorem node2772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2772 value5 value1 value2 = (output2772, value1390, value1) := by
  rw [input2772_def, output2772_def]
  kernel_rfl

theorem node2773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2773 value1390 value1 value2 = (output2773, value1391, value1) := by
  rw [input2773_def, output2773_def]
  kernel_rfl

theorem node2774_cond_eq
    (child2772 : Flapjack.WordAlloc.removeDeadStructural input2772 value5 value1 value2 = (output2772, value1390, value1))
    (child2773 : Flapjack.WordAlloc.removeDeadStructural input2773 value1390 value1 value2 = (output2773, value1391, value1)) : Flapjack.WordAlloc.removeDeadStructural input2774 value5 value1 value2 = (output2774, value1391, value1) := by
  rw [input2774_def, output2774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2772]
  dsimp only
  rw [child2773]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2772_skip, output2773_skip]
  kernel_rfl

theorem node2775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2775 value1391 value1 value2 = (output2775, value1392, value1) := by
  rw [input2775_def, output2775_def]
  kernel_rfl

theorem node2776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2776 value1392 value1 value2 = (output2776, value1392, value1) := by
  rw [input2776_def, output2776_def]
  kernel_rfl

theorem node2777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2777 value1392 value1 value2 = (output2777, value1393, value1) := by
  rw [input2777_def, output2777_def]
  kernel_rfl

theorem node2778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2778 value1393 value1 value2 = (output2778, value1394, value1) := by
  rw [input2778_def, output2778_def]
  kernel_rfl

theorem node2779_cond_eq
    (child2777 : Flapjack.WordAlloc.removeDeadStructural input2777 value1392 value1 value2 = (output2777, value1393, value1))
    (child2778 : Flapjack.WordAlloc.removeDeadStructural input2778 value1393 value1 value2 = (output2778, value1394, value1)) : Flapjack.WordAlloc.removeDeadStructural input2779 value1392 value1 value2 = (output2779, value1394, value1) := by
  rw [input2779_def, output2779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2777]
  dsimp only
  rw [child2778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2777_skip, output2778_skip]
  kernel_rfl

theorem node2780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2780 value1394 value1 value2 = (output2780, value1395, value1) := by
  rw [input2780_def, output2780_def]
  kernel_rfl

theorem node2781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2781 value1395 value1 value2 = (output2781, value1396, value1) := by
  rw [input2781_def, output2781_def]
  kernel_rfl

theorem node2782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2782 value1396 value1 value2 = (output2782, value1397, value1) := by
  rw [input2782_def, output2782_def]
  kernel_rfl

theorem node2783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2783 value1397 value1 value2 = (output2783, value5, value1) := by
  rw [input2783_def, output2783_def]
  kernel_rfl

theorem node2784_cond_eq
    (child2782 : Flapjack.WordAlloc.removeDeadStructural input2782 value1396 value1 value2 = (output2782, value1397, value1))
    (child2783 : Flapjack.WordAlloc.removeDeadStructural input2783 value1397 value1 value2 = (output2783, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2784 value1396 value1 value2 = (output2784, value5, value1) := by
  rw [input2784_def, output2784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2782]
  dsimp only
  rw [child2783]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2782_skip, output2783_skip]
  kernel_rfl

theorem node2785_cond_eq
    (child2781 : Flapjack.WordAlloc.removeDeadStructural input2781 value1395 value1 value2 = (output2781, value1396, value1))
    (child2784 : Flapjack.WordAlloc.removeDeadStructural input2784 value1396 value1 value2 = (output2784, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2785 value1395 value1 value2 = (output2785, value5, value1) := by
  rw [input2785_def, output2785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2781]
  dsimp only
  rw [child2784]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2781_skip, output2784_skip]
  kernel_rfl

theorem node2786_cond_eq
    (child2780 : Flapjack.WordAlloc.removeDeadStructural input2780 value1394 value1 value2 = (output2780, value1395, value1))
    (child2785 : Flapjack.WordAlloc.removeDeadStructural input2785 value1395 value1 value2 = (output2785, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2786 value1394 value1 value2 = (output2786, value5, value1) := by
  rw [input2786_def, output2786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2780]
  dsimp only
  rw [child2785]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2780_skip, output2785_skip]
  kernel_rfl

theorem node2787_cond_eq
    (child2779 : Flapjack.WordAlloc.removeDeadStructural input2779 value1392 value1 value2 = (output2779, value1394, value1))
    (child2786 : Flapjack.WordAlloc.removeDeadStructural input2786 value1394 value1 value2 = (output2786, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2787 value1392 value1 value2 = (output2787, value5, value1) := by
  rw [input2787_def, output2787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2779]
  dsimp only
  rw [child2786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2779_skip, output2786_skip]
  kernel_rfl

theorem node2788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2788 value5 value1 value2 = (output2788, value1398, value1) := by
  rw [input2788_def, output2788_def]
  kernel_rfl

theorem node2789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2789 value1398 value1 value2 = (output2789, value1399, value1) := by
  rw [input2789_def, output2789_def]
  kernel_rfl

theorem node2790_cond_eq
    (child2788 : Flapjack.WordAlloc.removeDeadStructural input2788 value5 value1 value2 = (output2788, value1398, value1))
    (child2789 : Flapjack.WordAlloc.removeDeadStructural input2789 value1398 value1 value2 = (output2789, value1399, value1)) : Flapjack.WordAlloc.removeDeadStructural input2790 value5 value1 value2 = (output2790, value1399, value1) := by
  rw [input2790_def, output2790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2788]
  dsimp only
  rw [child2789]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2788_skip, output2789_skip]
  kernel_rfl

theorem node2791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2791 value1399 value1 value2 = (output2791, value1400, value1) := by
  rw [input2791_def, output2791_def]
  kernel_rfl

theorem node2792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2792 value1400 value1 value2 = (output2792, value1400, value1) := by
  rw [input2792_def, output2792_def]
  kernel_rfl

theorem node2793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2793 value1400 value1 value2 = (output2793, value1401, value1) := by
  rw [input2793_def, output2793_def]
  kernel_rfl

theorem node2794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2794 value1401 value1 value2 = (output2794, value1402, value1) := by
  rw [input2794_def, output2794_def]
  kernel_rfl

theorem node2795_cond_eq
    (child2793 : Flapjack.WordAlloc.removeDeadStructural input2793 value1400 value1 value2 = (output2793, value1401, value1))
    (child2794 : Flapjack.WordAlloc.removeDeadStructural input2794 value1401 value1 value2 = (output2794, value1402, value1)) : Flapjack.WordAlloc.removeDeadStructural input2795 value1400 value1 value2 = (output2795, value1402, value1) := by
  rw [input2795_def, output2795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2793]
  dsimp only
  rw [child2794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2793_skip, output2794_skip]
  kernel_rfl

theorem node2796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2796 value1402 value1 value2 = (output2796, value1403, value1) := by
  rw [input2796_def, output2796_def]
  kernel_rfl

theorem node2797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2797 value1403 value1 value2 = (output2797, value1404, value1) := by
  rw [input2797_def, output2797_def]
  kernel_rfl

theorem node2798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2798 value1404 value1 value2 = (output2798, value1405, value1) := by
  rw [input2798_def, output2798_def]
  kernel_rfl

theorem node2799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2799 value1405 value1 value2 = (output2799, value5, value1) := by
  rw [input2799_def, output2799_def]
  kernel_rfl

theorem node2800_cond_eq
    (child2798 : Flapjack.WordAlloc.removeDeadStructural input2798 value1404 value1 value2 = (output2798, value1405, value1))
    (child2799 : Flapjack.WordAlloc.removeDeadStructural input2799 value1405 value1 value2 = (output2799, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2800 value1404 value1 value2 = (output2800, value5, value1) := by
  rw [input2800_def, output2800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2798]
  dsimp only
  rw [child2799]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2798_skip, output2799_skip]
  kernel_rfl

theorem node2801_cond_eq
    (child2797 : Flapjack.WordAlloc.removeDeadStructural input2797 value1403 value1 value2 = (output2797, value1404, value1))
    (child2800 : Flapjack.WordAlloc.removeDeadStructural input2800 value1404 value1 value2 = (output2800, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2801 value1403 value1 value2 = (output2801, value5, value1) := by
  rw [input2801_def, output2801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2797]
  dsimp only
  rw [child2800]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2797_skip, output2800_skip]
  kernel_rfl

theorem node2802_cond_eq
    (child2796 : Flapjack.WordAlloc.removeDeadStructural input2796 value1402 value1 value2 = (output2796, value1403, value1))
    (child2801 : Flapjack.WordAlloc.removeDeadStructural input2801 value1403 value1 value2 = (output2801, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2802 value1402 value1 value2 = (output2802, value5, value1) := by
  rw [input2802_def, output2802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2796]
  dsimp only
  rw [child2801]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2796_skip, output2801_skip]
  kernel_rfl

theorem node2803_cond_eq
    (child2795 : Flapjack.WordAlloc.removeDeadStructural input2795 value1400 value1 value2 = (output2795, value1402, value1))
    (child2802 : Flapjack.WordAlloc.removeDeadStructural input2802 value1402 value1 value2 = (output2802, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2803 value1400 value1 value2 = (output2803, value5, value1) := by
  rw [input2803_def, output2803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2795]
  dsimp only
  rw [child2802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2795_skip, output2802_skip]
  kernel_rfl

theorem node2804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2804 value5 value1 value2 = (output2804, value1406, value1) := by
  rw [input2804_def, output2804_def]
  kernel_rfl

theorem node2805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2805 value1406 value1 value2 = (output2805, value1407, value1) := by
  rw [input2805_def, output2805_def]
  kernel_rfl

theorem node2806_cond_eq
    (child2804 : Flapjack.WordAlloc.removeDeadStructural input2804 value5 value1 value2 = (output2804, value1406, value1))
    (child2805 : Flapjack.WordAlloc.removeDeadStructural input2805 value1406 value1 value2 = (output2805, value1407, value1)) : Flapjack.WordAlloc.removeDeadStructural input2806 value5 value1 value2 = (output2806, value1407, value1) := by
  rw [input2806_def, output2806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2804]
  dsimp only
  rw [child2805]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2804_skip, output2805_skip]
  kernel_rfl

theorem node2807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2807 value1407 value1 value2 = (output2807, value1408, value1) := by
  rw [input2807_def, output2807_def]
  kernel_rfl

theorem node2808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2808 value1408 value1 value2 = (output2808, value1408, value1) := by
  rw [input2808_def, output2808_def]
  kernel_rfl

theorem node2809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2809 value1408 value1 value2 = (output2809, value1409, value1) := by
  rw [input2809_def, output2809_def]
  kernel_rfl

theorem node2810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2810 value1409 value1 value2 = (output2810, value1410, value1) := by
  rw [input2810_def, output2810_def]
  kernel_rfl

theorem node2811_cond_eq
    (child2809 : Flapjack.WordAlloc.removeDeadStructural input2809 value1408 value1 value2 = (output2809, value1409, value1))
    (child2810 : Flapjack.WordAlloc.removeDeadStructural input2810 value1409 value1 value2 = (output2810, value1410, value1)) : Flapjack.WordAlloc.removeDeadStructural input2811 value1408 value1 value2 = (output2811, value1410, value1) := by
  rw [input2811_def, output2811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2809]
  dsimp only
  rw [child2810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2809_skip, output2810_skip]
  kernel_rfl

theorem node2812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2812 value1410 value1 value2 = (output2812, value1411, value1) := by
  rw [input2812_def, output2812_def]
  kernel_rfl

theorem node2813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2813 value1411 value1 value2 = (output2813, value1412, value1) := by
  rw [input2813_def, output2813_def]
  kernel_rfl

theorem node2814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2814 value1412 value1 value2 = (output2814, value1413, value1) := by
  rw [input2814_def, output2814_def]
  kernel_rfl

theorem node2815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2815 value1413 value1 value2 = (output2815, value5, value1) := by
  rw [input2815_def, output2815_def]
  kernel_rfl

#print axioms node2815_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
