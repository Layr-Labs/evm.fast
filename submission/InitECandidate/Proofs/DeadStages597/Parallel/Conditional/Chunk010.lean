import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk010
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node2560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2560 value472 value1 value2 = (output2560, value478, value1) := by
  rw [input2560_def, output2560_def]
  kernel_rfl

theorem node2561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2561 value478 value1 value2 = (output2561, value478, value1) := by
  rw [input2561_def, output2561_def]
  kernel_rfl

theorem node2562_cond_eq
    (child2560 : Flapjack.WordAlloc.removeDeadStructural input2560 value472 value1 value2 = (output2560, value478, value1))
    (child2561 : Flapjack.WordAlloc.removeDeadStructural input2561 value478 value1 value2 = (output2561, value478, value1)) : Flapjack.WordAlloc.removeDeadStructural input2562 value472 value1 value2 = (output2562, value478, value1) := by
  rw [input2562_def, output2562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2560]
  try dsimp only
  rw [child2561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2560_skip, output2561_skip]
  kernel_rfl

theorem node2563_cond_eq
    (child2559 : Flapjack.WordAlloc.removeDeadStructural input2559 value472 value1 value2 = (output2559, value472, value1))
    (child2562 : Flapjack.WordAlloc.removeDeadStructural input2562 value472 value1 value2 = (output2562, value478, value1)) : Flapjack.WordAlloc.removeDeadStructural input2563 value472 value1 value2 = (output2563, value478, value1) := by
  rw [input2563_def, output2563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2559]
  try dsimp only
  rw [child2562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2559_skip, output2562_skip]
  kernel_rfl

theorem node2564_cond_eq
    (child2558 : Flapjack.WordAlloc.removeDeadStructural input2558 value472 value1 value2 = (output2558, value472, value1))
    (child2563 : Flapjack.WordAlloc.removeDeadStructural input2563 value472 value1 value2 = (output2563, value478, value1)) : Flapjack.WordAlloc.removeDeadStructural input2564 value472 value1 value2 = (output2564, value478, value1) := by
  rw [input2564_def, output2564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2558]
  try dsimp only
  rw [child2563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2558_skip, output2563_skip]
  kernel_rfl

theorem node2565_cond_eq
    (child2557 : Flapjack.WordAlloc.removeDeadStructural input2557 value472 value1 value2 = (output2557, value472, value1))
    (child2564 : Flapjack.WordAlloc.removeDeadStructural input2564 value472 value1 value2 = (output2564, value478, value1)) : Flapjack.WordAlloc.removeDeadStructural input2565 value472 value1 value2 = (output2565, value478, value1) := by
  rw [input2565_def, output2565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2557]
  try dsimp only
  rw [child2564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2557_skip, output2564_skip]
  kernel_rfl

theorem node2566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2566 value478 value1 value2 = (output2566, value479, value1) := by
  rw [input2566_def, output2566_def]
  kernel_rfl

theorem node2567_cond_eq
    (child2565 : Flapjack.WordAlloc.removeDeadStructural input2565 value472 value1 value2 = (output2565, value478, value1))
    (child2566 : Flapjack.WordAlloc.removeDeadStructural input2566 value478 value1 value2 = (output2566, value479, value1)) : Flapjack.WordAlloc.removeDeadStructural input2567 value472 value1 value2 = (output2567, value479, value1) := by
  rw [input2567_def, output2567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2565]
  try dsimp only
  rw [child2566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2565_skip, output2566_skip]
  kernel_rfl

theorem node2568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2568 value479 value1 value2 = (output2568, value479, value1) := by
  rw [input2568_def, output2568_def]
  kernel_rfl

theorem node2569_cond_eq
    (child2567 : Flapjack.WordAlloc.removeDeadStructural input2567 value472 value1 value2 = (output2567, value479, value1))
    (child2568 : Flapjack.WordAlloc.removeDeadStructural input2568 value479 value1 value2 = (output2568, value479, value1)) : Flapjack.WordAlloc.removeDeadStructural input2569 value472 value1 value2 = (output2569, value479, value1) := by
  rw [input2569_def, output2569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2567]
  try dsimp only
  rw [child2568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2567_skip, output2568_skip]
  kernel_rfl

theorem node2570_cond_eq
    (child2556 : Flapjack.WordAlloc.removeDeadStructural input2556 value472 value1 value2 = (output2556, value477, value1))
    (child2569 : Flapjack.WordAlloc.removeDeadStructural input2569 value472 value1 value2 = (output2569, value479, value1)) : Flapjack.WordAlloc.removeDeadStructural input2570 value472 value1 value2 = (output2570, value481, value1) := by
  rw [input2570_def, output2570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2556]
  try dsimp only
  rw [child2569]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2556_skip, output2569_skip]
  kernel_rfl

theorem node2571_cond_eq
    (child2525 : Flapjack.WordAlloc.removeDeadStructural input2525 value472 value1 value2 = (output2525, value472, value1))
    (child2570 : Flapjack.WordAlloc.removeDeadStructural input2570 value472 value1 value2 = (output2570, value481, value1)) : Flapjack.WordAlloc.removeDeadStructural input2571 value472 value1 value2 = (output2571, value481, value1) := by
  rw [input2571_def, output2571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2525]
  try dsimp only
  rw [child2570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2525_skip, output2570_skip]
  kernel_rfl

theorem node2572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2572 value481 value1 value2 = (output2572, value479, value1) := by
  rw [input2572_def, output2572_def]
  kernel_rfl

theorem node2573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2573 value479 value1 value2 = (output2573, value482, value1) := by
  rw [input2573_def, output2573_def]
  kernel_rfl

theorem node2574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2574 value482 value1 value2 = (output2574, value482, value1) := by
  rw [input2574_def, output2574_def]
  kernel_rfl

theorem node2575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2575 value482 value1 value2 = (output2575, value482, value1) := by
  rw [input2575_def, output2575_def]
  kernel_rfl

theorem node2576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2576 value482 value1 value2 = (output2576, value482, value1) := by
  rw [input2576_def, output2576_def]
  kernel_rfl

theorem node2577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2577 value482 value1 value2 = (output2577, value482, value1) := by
  rw [input2577_def, output2577_def]
  kernel_rfl

theorem node2578_cond_eq
    (child2576 : Flapjack.WordAlloc.removeDeadStructural input2576 value482 value1 value2 = (output2576, value482, value1))
    (child2577 : Flapjack.WordAlloc.removeDeadStructural input2577 value482 value1 value2 = (output2577, value482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2578 value482 value1 value2 = (output2578, value482, value1) := by
  rw [input2578_def, output2578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2576]
  try dsimp only
  rw [child2577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2576_skip, output2577_skip]
  kernel_rfl

theorem node2579_cond_eq
    (child2575 : Flapjack.WordAlloc.removeDeadStructural input2575 value482 value1 value2 = (output2575, value482, value1))
    (child2578 : Flapjack.WordAlloc.removeDeadStructural input2578 value482 value1 value2 = (output2578, value482, value1)) : Flapjack.WordAlloc.removeDeadStructural input2579 value482 value1 value2 = (output2579, value482, value1) := by
  rw [input2579_def, output2579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2575]
  try dsimp only
  rw [child2578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2575_skip, output2578_skip]
  kernel_rfl

theorem node2580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2580 value482 value1 value2 = (output2580, value482, value1) := by
  rw [input2580_def, output2580_def]
  kernel_rfl

theorem node2581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2581 value482 value1 value2 = (output2581, value482, value1) := by
  rw [input2581_def, output2581_def]
  kernel_rfl

theorem node2582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2582 value482 value1 value2 = (output2582, value482, value1) := by
  rw [input2582_def, output2582_def]
  kernel_rfl

theorem node2583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2583 value482 value1 value2 = (output2583, value477, value1) := by
  rw [input2583_def, output2583_def]
  kernel_rfl

theorem node2584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2584 value477 value1 value2 = (output2584, value477, value1) := by
  rw [input2584_def, output2584_def]
  kernel_rfl

theorem node2585_cond_eq
    (child2583 : Flapjack.WordAlloc.removeDeadStructural input2583 value482 value1 value2 = (output2583, value477, value1))
    (child2584 : Flapjack.WordAlloc.removeDeadStructural input2584 value477 value1 value2 = (output2584, value477, value1)) : Flapjack.WordAlloc.removeDeadStructural input2585 value482 value1 value2 = (output2585, value477, value1) := by
  rw [input2585_def, output2585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2583]
  try dsimp only
  rw [child2584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2583_skip, output2584_skip]
  kernel_rfl

theorem node2586_cond_eq
    (child2582 : Flapjack.WordAlloc.removeDeadStructural input2582 value482 value1 value2 = (output2582, value482, value1))
    (child2585 : Flapjack.WordAlloc.removeDeadStructural input2585 value482 value1 value2 = (output2585, value477, value1)) : Flapjack.WordAlloc.removeDeadStructural input2586 value482 value1 value2 = (output2586, value477, value1) := by
  rw [input2586_def, output2586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2582]
  try dsimp only
  rw [child2585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2582_skip, output2585_skip]
  kernel_rfl

theorem node2587_cond_eq
    (child2581 : Flapjack.WordAlloc.removeDeadStructural input2581 value482 value1 value2 = (output2581, value482, value1))
    (child2586 : Flapjack.WordAlloc.removeDeadStructural input2586 value482 value1 value2 = (output2586, value477, value1)) : Flapjack.WordAlloc.removeDeadStructural input2587 value482 value1 value2 = (output2587, value477, value1) := by
  rw [input2587_def, output2587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2581]
  try dsimp only
  rw [child2586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2581_skip, output2586_skip]
  kernel_rfl

theorem node2588_cond_eq
    (child2580 : Flapjack.WordAlloc.removeDeadStructural input2580 value482 value1 value2 = (output2580, value482, value1))
    (child2587 : Flapjack.WordAlloc.removeDeadStructural input2587 value482 value1 value2 = (output2587, value477, value1)) : Flapjack.WordAlloc.removeDeadStructural input2588 value482 value1 value2 = (output2588, value477, value1) := by
  rw [input2588_def, output2588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2580]
  try dsimp only
  rw [child2587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2580_skip, output2587_skip]
  kernel_rfl

theorem node2589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2589 value477 value1 value2 = (output2589, value483, value1) := by
  rw [input2589_def, output2589_def]
  kernel_rfl

theorem node2590_cond_eq
    (child2588 : Flapjack.WordAlloc.removeDeadStructural input2588 value482 value1 value2 = (output2588, value477, value1))
    (child2589 : Flapjack.WordAlloc.removeDeadStructural input2589 value477 value1 value2 = (output2589, value483, value1)) : Flapjack.WordAlloc.removeDeadStructural input2590 value482 value1 value2 = (output2590, value483, value1) := by
  rw [input2590_def, output2590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2588]
  try dsimp only
  rw [child2589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2588_skip, output2589_skip]
  kernel_rfl

theorem node2591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2591 value483 value1 value2 = (output2591, value484, value1) := by
  rw [input2591_def, output2591_def]
  kernel_rfl

theorem node2592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2592 value484 value1 value2 = (output2592, value485, value1) := by
  rw [input2592_def, output2592_def]
  kernel_rfl

theorem node2593_cond_eq
    (child2591 : Flapjack.WordAlloc.removeDeadStructural input2591 value483 value1 value2 = (output2591, value484, value1))
    (child2592 : Flapjack.WordAlloc.removeDeadStructural input2592 value484 value1 value2 = (output2592, value485, value1)) : Flapjack.WordAlloc.removeDeadStructural input2593 value483 value1 value2 = (output2593, value485, value1) := by
  rw [input2593_def, output2593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2591]
  try dsimp only
  rw [child2592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2591_skip, output2592_skip]
  kernel_rfl

theorem node2594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2594 value485 value1 value2 = (output2594, value483, value1) := by
  rw [input2594_def, output2594_def]
  kernel_rfl

theorem node2595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2595 value483 value1 value2 = (output2595, value483, value1) := by
  rw [input2595_def, output2595_def]
  kernel_rfl

theorem node2596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2596 value483 value1 value2 = (output2596, value486, value1) := by
  rw [input2596_def, output2596_def]
  kernel_rfl

theorem node2597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2597 value486 value1 value2 = (output2597, value486, value1) := by
  rw [input2597_def, output2597_def]
  kernel_rfl

theorem node2598_cond_eq
    (child2596 : Flapjack.WordAlloc.removeDeadStructural input2596 value483 value1 value2 = (output2596, value486, value1))
    (child2597 : Flapjack.WordAlloc.removeDeadStructural input2597 value486 value1 value2 = (output2597, value486, value1)) : Flapjack.WordAlloc.removeDeadStructural input2598 value483 value1 value2 = (output2598, value486, value1) := by
  rw [input2598_def, output2598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2596]
  try dsimp only
  rw [child2597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2596_skip, output2597_skip]
  kernel_rfl

theorem node2599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2599 value486 value1 value2 = (output2599, value487, value1) := by
  rw [input2599_def, output2599_def]
  kernel_rfl

theorem node2600_cond_eq
    (child2598 : Flapjack.WordAlloc.removeDeadStructural input2598 value483 value1 value2 = (output2598, value486, value1))
    (child2599 : Flapjack.WordAlloc.removeDeadStructural input2599 value486 value1 value2 = (output2599, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2600 value483 value1 value2 = (output2600, value487, value1) := by
  rw [input2600_def, output2600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2598]
  try dsimp only
  rw [child2599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2598_skip, output2599_skip]
  kernel_rfl

theorem node2601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2601 value487 value1 value2 = (output2601, value487, value1) := by
  rw [input2601_def, output2601_def]
  kernel_rfl

theorem node2602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2602 value487 value1 value2 = (output2602, value487, value1) := by
  rw [input2602_def, output2602_def]
  kernel_rfl

theorem node2603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2603 value487 value1 value2 = (output2603, value487, value1) := by
  rw [input2603_def, output2603_def]
  kernel_rfl

theorem node2604_cond_eq
    (child2602 : Flapjack.WordAlloc.removeDeadStructural input2602 value487 value1 value2 = (output2602, value487, value1))
    (child2603 : Flapjack.WordAlloc.removeDeadStructural input2603 value487 value1 value2 = (output2603, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2604 value487 value1 value2 = (output2604, value487, value1) := by
  rw [input2604_def, output2604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2602]
  try dsimp only
  rw [child2603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2602_skip, output2603_skip]
  kernel_rfl

theorem node2605_cond_eq
    (child2601 : Flapjack.WordAlloc.removeDeadStructural input2601 value487 value1 value2 = (output2601, value487, value1))
    (child2604 : Flapjack.WordAlloc.removeDeadStructural input2604 value487 value1 value2 = (output2604, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2605 value487 value1 value2 = (output2605, value487, value1) := by
  rw [input2605_def, output2605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2601]
  try dsimp only
  rw [child2604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2601_skip, output2604_skip]
  kernel_rfl

theorem node2606_cond_eq
    (child2600 : Flapjack.WordAlloc.removeDeadStructural input2600 value483 value1 value2 = (output2600, value487, value1))
    (child2605 : Flapjack.WordAlloc.removeDeadStructural input2605 value487 value1 value2 = (output2605, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2606 value483 value1 value2 = (output2606, value487, value1) := by
  rw [input2606_def, output2606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2600]
  try dsimp only
  rw [child2605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2600_skip, output2605_skip]
  kernel_rfl

theorem node2607_cond_eq
    (child2595 : Flapjack.WordAlloc.removeDeadStructural input2595 value483 value1 value2 = (output2595, value483, value1))
    (child2606 : Flapjack.WordAlloc.removeDeadStructural input2606 value483 value1 value2 = (output2606, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2607 value483 value1 value2 = (output2607, value487, value1) := by
  rw [input2607_def, output2607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2595]
  try dsimp only
  rw [child2606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2595_skip, output2606_skip]
  kernel_rfl

theorem node2608_cond_eq
    (child2594 : Flapjack.WordAlloc.removeDeadStructural input2594 value485 value1 value2 = (output2594, value483, value1))
    (child2607 : Flapjack.WordAlloc.removeDeadStructural input2607 value483 value1 value2 = (output2607, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2608 value485 value1 value2 = (output2608, value487, value1) := by
  rw [input2608_def, output2608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2594]
  try dsimp only
  rw [child2607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2594_skip, output2607_skip]
  kernel_rfl

theorem node2609_cond_eq
    (child2593 : Flapjack.WordAlloc.removeDeadStructural input2593 value483 value1 value2 = (output2593, value485, value1))
    (child2608 : Flapjack.WordAlloc.removeDeadStructural input2608 value485 value1 value2 = (output2608, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2609 value483 value1 value2 = (output2609, value487, value1) := by
  rw [input2609_def, output2609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2593]
  try dsimp only
  rw [child2608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2593_skip, output2608_skip]
  kernel_rfl

theorem node2610_cond_eq
    (child2590 : Flapjack.WordAlloc.removeDeadStructural input2590 value482 value1 value2 = (output2590, value483, value1))
    (child2609 : Flapjack.WordAlloc.removeDeadStructural input2609 value483 value1 value2 = (output2609, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2610 value482 value1 value2 = (output2610, value487, value1) := by
  rw [input2610_def, output2610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2590]
  try dsimp only
  rw [child2609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2590_skip, output2609_skip]
  kernel_rfl

theorem node2611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2611 value482 value1 value2 = (output2611, value482, value1) := by
  rw [input2611_def, output2611_def]
  kernel_rfl

theorem node2612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2612 value482 value1 value2 = (output2612, value482, value1) := by
  rw [input2612_def, output2612_def]
  kernel_rfl

theorem node2613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2613 value482 value1 value2 = (output2613, value482, value1) := by
  rw [input2613_def, output2613_def]
  kernel_rfl

theorem node2614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2614 value482 value1 value2 = (output2614, value488, value1) := by
  rw [input2614_def, output2614_def]
  kernel_rfl

theorem node2615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2615 value488 value1 value2 = (output2615, value488, value1) := by
  rw [input2615_def, output2615_def]
  kernel_rfl

theorem node2616_cond_eq
    (child2614 : Flapjack.WordAlloc.removeDeadStructural input2614 value482 value1 value2 = (output2614, value488, value1))
    (child2615 : Flapjack.WordAlloc.removeDeadStructural input2615 value488 value1 value2 = (output2615, value488, value1)) : Flapjack.WordAlloc.removeDeadStructural input2616 value482 value1 value2 = (output2616, value488, value1) := by
  rw [input2616_def, output2616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2614]
  try dsimp only
  rw [child2615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2614_skip, output2615_skip]
  kernel_rfl

theorem node2617_cond_eq
    (child2613 : Flapjack.WordAlloc.removeDeadStructural input2613 value482 value1 value2 = (output2613, value482, value1))
    (child2616 : Flapjack.WordAlloc.removeDeadStructural input2616 value482 value1 value2 = (output2616, value488, value1)) : Flapjack.WordAlloc.removeDeadStructural input2617 value482 value1 value2 = (output2617, value488, value1) := by
  rw [input2617_def, output2617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2613]
  try dsimp only
  rw [child2616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2613_skip, output2616_skip]
  kernel_rfl

theorem node2618_cond_eq
    (child2612 : Flapjack.WordAlloc.removeDeadStructural input2612 value482 value1 value2 = (output2612, value482, value1))
    (child2617 : Flapjack.WordAlloc.removeDeadStructural input2617 value482 value1 value2 = (output2617, value488, value1)) : Flapjack.WordAlloc.removeDeadStructural input2618 value482 value1 value2 = (output2618, value488, value1) := by
  rw [input2618_def, output2618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2612]
  try dsimp only
  rw [child2617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2612_skip, output2617_skip]
  kernel_rfl

theorem node2619_cond_eq
    (child2611 : Flapjack.WordAlloc.removeDeadStructural input2611 value482 value1 value2 = (output2611, value482, value1))
    (child2618 : Flapjack.WordAlloc.removeDeadStructural input2618 value482 value1 value2 = (output2618, value488, value1)) : Flapjack.WordAlloc.removeDeadStructural input2619 value482 value1 value2 = (output2619, value488, value1) := by
  rw [input2619_def, output2619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2611]
  try dsimp only
  rw [child2618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2611_skip, output2618_skip]
  kernel_rfl

theorem node2620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2620 value488 value1 value2 = (output2620, value489, value1) := by
  rw [input2620_def, output2620_def]
  kernel_rfl

theorem node2621_cond_eq
    (child2619 : Flapjack.WordAlloc.removeDeadStructural input2619 value482 value1 value2 = (output2619, value488, value1))
    (child2620 : Flapjack.WordAlloc.removeDeadStructural input2620 value488 value1 value2 = (output2620, value489, value1)) : Flapjack.WordAlloc.removeDeadStructural input2621 value482 value1 value2 = (output2621, value489, value1) := by
  rw [input2621_def, output2621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2619]
  try dsimp only
  rw [child2620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2619_skip, output2620_skip]
  kernel_rfl

theorem node2622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2622 value489 value1 value2 = (output2622, value489, value1) := by
  rw [input2622_def, output2622_def]
  kernel_rfl

theorem node2623_cond_eq
    (child2621 : Flapjack.WordAlloc.removeDeadStructural input2621 value482 value1 value2 = (output2621, value489, value1))
    (child2622 : Flapjack.WordAlloc.removeDeadStructural input2622 value489 value1 value2 = (output2622, value489, value1)) : Flapjack.WordAlloc.removeDeadStructural input2623 value482 value1 value2 = (output2623, value489, value1) := by
  rw [input2623_def, output2623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2621]
  try dsimp only
  rw [child2622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2621_skip, output2622_skip]
  kernel_rfl

theorem node2624_cond_eq
    (child2610 : Flapjack.WordAlloc.removeDeadStructural input2610 value482 value1 value2 = (output2610, value487, value1))
    (child2623 : Flapjack.WordAlloc.removeDeadStructural input2623 value482 value1 value2 = (output2623, value489, value1)) : Flapjack.WordAlloc.removeDeadStructural input2624 value482 value1 value2 = (output2624, value491, value1) := by
  rw [input2624_def, output2624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2610]
  try dsimp only
  rw [child2623]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2610_skip, output2623_skip]
  kernel_rfl

theorem node2625_cond_eq
    (child2579 : Flapjack.WordAlloc.removeDeadStructural input2579 value482 value1 value2 = (output2579, value482, value1))
    (child2624 : Flapjack.WordAlloc.removeDeadStructural input2624 value482 value1 value2 = (output2624, value491, value1)) : Flapjack.WordAlloc.removeDeadStructural input2625 value482 value1 value2 = (output2625, value491, value1) := by
  rw [input2625_def, output2625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2579]
  try dsimp only
  rw [child2624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2579_skip, output2624_skip]
  kernel_rfl

theorem node2626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2626 value491 value1 value2 = (output2626, value489, value1) := by
  rw [input2626_def, output2626_def]
  kernel_rfl

theorem node2627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2627 value489 value1 value2 = (output2627, value492, value1) := by
  rw [input2627_def, output2627_def]
  kernel_rfl

theorem node2628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2628 value492 value1 value2 = (output2628, value492, value1) := by
  rw [input2628_def, output2628_def]
  kernel_rfl

theorem node2629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2629 value492 value1 value2 = (output2629, value492, value1) := by
  rw [input2629_def, output2629_def]
  kernel_rfl

theorem node2630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2630 value492 value1 value2 = (output2630, value492, value1) := by
  rw [input2630_def, output2630_def]
  kernel_rfl

theorem node2631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2631 value492 value1 value2 = (output2631, value492, value1) := by
  rw [input2631_def, output2631_def]
  kernel_rfl

theorem node2632_cond_eq
    (child2630 : Flapjack.WordAlloc.removeDeadStructural input2630 value492 value1 value2 = (output2630, value492, value1))
    (child2631 : Flapjack.WordAlloc.removeDeadStructural input2631 value492 value1 value2 = (output2631, value492, value1)) : Flapjack.WordAlloc.removeDeadStructural input2632 value492 value1 value2 = (output2632, value492, value1) := by
  rw [input2632_def, output2632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2630]
  try dsimp only
  rw [child2631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2630_skip, output2631_skip]
  kernel_rfl

theorem node2633_cond_eq
    (child2629 : Flapjack.WordAlloc.removeDeadStructural input2629 value492 value1 value2 = (output2629, value492, value1))
    (child2632 : Flapjack.WordAlloc.removeDeadStructural input2632 value492 value1 value2 = (output2632, value492, value1)) : Flapjack.WordAlloc.removeDeadStructural input2633 value492 value1 value2 = (output2633, value492, value1) := by
  rw [input2633_def, output2633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2629]
  try dsimp only
  rw [child2632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2629_skip, output2632_skip]
  kernel_rfl

theorem node2634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2634 value492 value1 value2 = (output2634, value492, value1) := by
  rw [input2634_def, output2634_def]
  kernel_rfl

theorem node2635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2635 value492 value1 value2 = (output2635, value492, value1) := by
  rw [input2635_def, output2635_def]
  kernel_rfl

theorem node2636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2636 value492 value1 value2 = (output2636, value492, value1) := by
  rw [input2636_def, output2636_def]
  kernel_rfl

theorem node2637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2637 value492 value1 value2 = (output2637, value487, value1) := by
  rw [input2637_def, output2637_def]
  kernel_rfl

theorem node2638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2638 value487 value1 value2 = (output2638, value487, value1) := by
  rw [input2638_def, output2638_def]
  kernel_rfl

theorem node2639_cond_eq
    (child2637 : Flapjack.WordAlloc.removeDeadStructural input2637 value492 value1 value2 = (output2637, value487, value1))
    (child2638 : Flapjack.WordAlloc.removeDeadStructural input2638 value487 value1 value2 = (output2638, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2639 value492 value1 value2 = (output2639, value487, value1) := by
  rw [input2639_def, output2639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2637]
  try dsimp only
  rw [child2638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2637_skip, output2638_skip]
  kernel_rfl

theorem node2640_cond_eq
    (child2636 : Flapjack.WordAlloc.removeDeadStructural input2636 value492 value1 value2 = (output2636, value492, value1))
    (child2639 : Flapjack.WordAlloc.removeDeadStructural input2639 value492 value1 value2 = (output2639, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2640 value492 value1 value2 = (output2640, value487, value1) := by
  rw [input2640_def, output2640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2636]
  try dsimp only
  rw [child2639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2636_skip, output2639_skip]
  kernel_rfl

theorem node2641_cond_eq
    (child2635 : Flapjack.WordAlloc.removeDeadStructural input2635 value492 value1 value2 = (output2635, value492, value1))
    (child2640 : Flapjack.WordAlloc.removeDeadStructural input2640 value492 value1 value2 = (output2640, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2641 value492 value1 value2 = (output2641, value487, value1) := by
  rw [input2641_def, output2641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2635]
  try dsimp only
  rw [child2640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2635_skip, output2640_skip]
  kernel_rfl

theorem node2642_cond_eq
    (child2634 : Flapjack.WordAlloc.removeDeadStructural input2634 value492 value1 value2 = (output2634, value492, value1))
    (child2641 : Flapjack.WordAlloc.removeDeadStructural input2641 value492 value1 value2 = (output2641, value487, value1)) : Flapjack.WordAlloc.removeDeadStructural input2642 value492 value1 value2 = (output2642, value487, value1) := by
  rw [input2642_def, output2642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2634]
  try dsimp only
  rw [child2641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2634_skip, output2641_skip]
  kernel_rfl

theorem node2643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2643 value487 value1 value2 = (output2643, value493, value1) := by
  rw [input2643_def, output2643_def]
  kernel_rfl

theorem node2644_cond_eq
    (child2642 : Flapjack.WordAlloc.removeDeadStructural input2642 value492 value1 value2 = (output2642, value487, value1))
    (child2643 : Flapjack.WordAlloc.removeDeadStructural input2643 value487 value1 value2 = (output2643, value493, value1)) : Flapjack.WordAlloc.removeDeadStructural input2644 value492 value1 value2 = (output2644, value493, value1) := by
  rw [input2644_def, output2644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2642]
  try dsimp only
  rw [child2643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2642_skip, output2643_skip]
  kernel_rfl

theorem node2645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2645 value493 value1 value2 = (output2645, value494, value1) := by
  rw [input2645_def, output2645_def]
  kernel_rfl

theorem node2646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2646 value494 value1 value2 = (output2646, value495, value1) := by
  rw [input2646_def, output2646_def]
  kernel_rfl

theorem node2647_cond_eq
    (child2645 : Flapjack.WordAlloc.removeDeadStructural input2645 value493 value1 value2 = (output2645, value494, value1))
    (child2646 : Flapjack.WordAlloc.removeDeadStructural input2646 value494 value1 value2 = (output2646, value495, value1)) : Flapjack.WordAlloc.removeDeadStructural input2647 value493 value1 value2 = (output2647, value495, value1) := by
  rw [input2647_def, output2647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2645]
  try dsimp only
  rw [child2646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2645_skip, output2646_skip]
  kernel_rfl

theorem node2648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2648 value495 value1 value2 = (output2648, value493, value1) := by
  rw [input2648_def, output2648_def]
  kernel_rfl

theorem node2649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2649 value493 value1 value2 = (output2649, value493, value1) := by
  rw [input2649_def, output2649_def]
  kernel_rfl

theorem node2650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2650 value493 value1 value2 = (output2650, value496, value1) := by
  rw [input2650_def, output2650_def]
  kernel_rfl

theorem node2651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2651 value496 value1 value2 = (output2651, value496, value1) := by
  rw [input2651_def, output2651_def]
  kernel_rfl

theorem node2652_cond_eq
    (child2650 : Flapjack.WordAlloc.removeDeadStructural input2650 value493 value1 value2 = (output2650, value496, value1))
    (child2651 : Flapjack.WordAlloc.removeDeadStructural input2651 value496 value1 value2 = (output2651, value496, value1)) : Flapjack.WordAlloc.removeDeadStructural input2652 value493 value1 value2 = (output2652, value496, value1) := by
  rw [input2652_def, output2652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2650]
  try dsimp only
  rw [child2651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2650_skip, output2651_skip]
  kernel_rfl

theorem node2653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2653 value496 value1 value2 = (output2653, value497, value1) := by
  rw [input2653_def, output2653_def]
  kernel_rfl

theorem node2654_cond_eq
    (child2652 : Flapjack.WordAlloc.removeDeadStructural input2652 value493 value1 value2 = (output2652, value496, value1))
    (child2653 : Flapjack.WordAlloc.removeDeadStructural input2653 value496 value1 value2 = (output2653, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2654 value493 value1 value2 = (output2654, value497, value1) := by
  rw [input2654_def, output2654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2652]
  try dsimp only
  rw [child2653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2652_skip, output2653_skip]
  kernel_rfl

theorem node2655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2655 value497 value1 value2 = (output2655, value497, value1) := by
  rw [input2655_def, output2655_def]
  kernel_rfl

theorem node2656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2656 value497 value1 value2 = (output2656, value497, value1) := by
  rw [input2656_def, output2656_def]
  kernel_rfl

theorem node2657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2657 value497 value1 value2 = (output2657, value497, value1) := by
  rw [input2657_def, output2657_def]
  kernel_rfl

theorem node2658_cond_eq
    (child2656 : Flapjack.WordAlloc.removeDeadStructural input2656 value497 value1 value2 = (output2656, value497, value1))
    (child2657 : Flapjack.WordAlloc.removeDeadStructural input2657 value497 value1 value2 = (output2657, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2658 value497 value1 value2 = (output2658, value497, value1) := by
  rw [input2658_def, output2658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2656]
  try dsimp only
  rw [child2657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2656_skip, output2657_skip]
  kernel_rfl

theorem node2659_cond_eq
    (child2655 : Flapjack.WordAlloc.removeDeadStructural input2655 value497 value1 value2 = (output2655, value497, value1))
    (child2658 : Flapjack.WordAlloc.removeDeadStructural input2658 value497 value1 value2 = (output2658, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2659 value497 value1 value2 = (output2659, value497, value1) := by
  rw [input2659_def, output2659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2655]
  try dsimp only
  rw [child2658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2655_skip, output2658_skip]
  kernel_rfl

theorem node2660_cond_eq
    (child2654 : Flapjack.WordAlloc.removeDeadStructural input2654 value493 value1 value2 = (output2654, value497, value1))
    (child2659 : Flapjack.WordAlloc.removeDeadStructural input2659 value497 value1 value2 = (output2659, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2660 value493 value1 value2 = (output2660, value497, value1) := by
  rw [input2660_def, output2660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2654]
  try dsimp only
  rw [child2659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2654_skip, output2659_skip]
  kernel_rfl

theorem node2661_cond_eq
    (child2649 : Flapjack.WordAlloc.removeDeadStructural input2649 value493 value1 value2 = (output2649, value493, value1))
    (child2660 : Flapjack.WordAlloc.removeDeadStructural input2660 value493 value1 value2 = (output2660, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2661 value493 value1 value2 = (output2661, value497, value1) := by
  rw [input2661_def, output2661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2649]
  try dsimp only
  rw [child2660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2649_skip, output2660_skip]
  kernel_rfl

theorem node2662_cond_eq
    (child2648 : Flapjack.WordAlloc.removeDeadStructural input2648 value495 value1 value2 = (output2648, value493, value1))
    (child2661 : Flapjack.WordAlloc.removeDeadStructural input2661 value493 value1 value2 = (output2661, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2662 value495 value1 value2 = (output2662, value497, value1) := by
  rw [input2662_def, output2662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2648]
  try dsimp only
  rw [child2661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2648_skip, output2661_skip]
  kernel_rfl

theorem node2663_cond_eq
    (child2647 : Flapjack.WordAlloc.removeDeadStructural input2647 value493 value1 value2 = (output2647, value495, value1))
    (child2662 : Flapjack.WordAlloc.removeDeadStructural input2662 value495 value1 value2 = (output2662, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2663 value493 value1 value2 = (output2663, value497, value1) := by
  rw [input2663_def, output2663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2647]
  try dsimp only
  rw [child2662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2647_skip, output2662_skip]
  kernel_rfl

theorem node2664_cond_eq
    (child2644 : Flapjack.WordAlloc.removeDeadStructural input2644 value492 value1 value2 = (output2644, value493, value1))
    (child2663 : Flapjack.WordAlloc.removeDeadStructural input2663 value493 value1 value2 = (output2663, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2664 value492 value1 value2 = (output2664, value497, value1) := by
  rw [input2664_def, output2664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2644]
  try dsimp only
  rw [child2663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2644_skip, output2663_skip]
  kernel_rfl

theorem node2665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2665 value492 value1 value2 = (output2665, value492, value1) := by
  rw [input2665_def, output2665_def]
  kernel_rfl

theorem node2666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2666 value492 value1 value2 = (output2666, value492, value1) := by
  rw [input2666_def, output2666_def]
  kernel_rfl

theorem node2667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2667 value492 value1 value2 = (output2667, value492, value1) := by
  rw [input2667_def, output2667_def]
  kernel_rfl

theorem node2668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2668 value492 value1 value2 = (output2668, value498, value1) := by
  rw [input2668_def, output2668_def]
  kernel_rfl

theorem node2669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2669 value498 value1 value2 = (output2669, value498, value1) := by
  rw [input2669_def, output2669_def]
  kernel_rfl

theorem node2670_cond_eq
    (child2668 : Flapjack.WordAlloc.removeDeadStructural input2668 value492 value1 value2 = (output2668, value498, value1))
    (child2669 : Flapjack.WordAlloc.removeDeadStructural input2669 value498 value1 value2 = (output2669, value498, value1)) : Flapjack.WordAlloc.removeDeadStructural input2670 value492 value1 value2 = (output2670, value498, value1) := by
  rw [input2670_def, output2670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2668]
  try dsimp only
  rw [child2669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2668_skip, output2669_skip]
  kernel_rfl

theorem node2671_cond_eq
    (child2667 : Flapjack.WordAlloc.removeDeadStructural input2667 value492 value1 value2 = (output2667, value492, value1))
    (child2670 : Flapjack.WordAlloc.removeDeadStructural input2670 value492 value1 value2 = (output2670, value498, value1)) : Flapjack.WordAlloc.removeDeadStructural input2671 value492 value1 value2 = (output2671, value498, value1) := by
  rw [input2671_def, output2671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2667]
  try dsimp only
  rw [child2670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2667_skip, output2670_skip]
  kernel_rfl

theorem node2672_cond_eq
    (child2666 : Flapjack.WordAlloc.removeDeadStructural input2666 value492 value1 value2 = (output2666, value492, value1))
    (child2671 : Flapjack.WordAlloc.removeDeadStructural input2671 value492 value1 value2 = (output2671, value498, value1)) : Flapjack.WordAlloc.removeDeadStructural input2672 value492 value1 value2 = (output2672, value498, value1) := by
  rw [input2672_def, output2672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2666]
  try dsimp only
  rw [child2671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2666_skip, output2671_skip]
  kernel_rfl

theorem node2673_cond_eq
    (child2665 : Flapjack.WordAlloc.removeDeadStructural input2665 value492 value1 value2 = (output2665, value492, value1))
    (child2672 : Flapjack.WordAlloc.removeDeadStructural input2672 value492 value1 value2 = (output2672, value498, value1)) : Flapjack.WordAlloc.removeDeadStructural input2673 value492 value1 value2 = (output2673, value498, value1) := by
  rw [input2673_def, output2673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2665]
  try dsimp only
  rw [child2672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2665_skip, output2672_skip]
  kernel_rfl

theorem node2674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2674 value498 value1 value2 = (output2674, value499, value1) := by
  rw [input2674_def, output2674_def]
  kernel_rfl

theorem node2675_cond_eq
    (child2673 : Flapjack.WordAlloc.removeDeadStructural input2673 value492 value1 value2 = (output2673, value498, value1))
    (child2674 : Flapjack.WordAlloc.removeDeadStructural input2674 value498 value1 value2 = (output2674, value499, value1)) : Flapjack.WordAlloc.removeDeadStructural input2675 value492 value1 value2 = (output2675, value499, value1) := by
  rw [input2675_def, output2675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2673]
  try dsimp only
  rw [child2674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2673_skip, output2674_skip]
  kernel_rfl

theorem node2676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2676 value499 value1 value2 = (output2676, value499, value1) := by
  rw [input2676_def, output2676_def]
  kernel_rfl

theorem node2677_cond_eq
    (child2675 : Flapjack.WordAlloc.removeDeadStructural input2675 value492 value1 value2 = (output2675, value499, value1))
    (child2676 : Flapjack.WordAlloc.removeDeadStructural input2676 value499 value1 value2 = (output2676, value499, value1)) : Flapjack.WordAlloc.removeDeadStructural input2677 value492 value1 value2 = (output2677, value499, value1) := by
  rw [input2677_def, output2677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2675]
  try dsimp only
  rw [child2676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2675_skip, output2676_skip]
  kernel_rfl

theorem node2678_cond_eq
    (child2664 : Flapjack.WordAlloc.removeDeadStructural input2664 value492 value1 value2 = (output2664, value497, value1))
    (child2677 : Flapjack.WordAlloc.removeDeadStructural input2677 value492 value1 value2 = (output2677, value499, value1)) : Flapjack.WordAlloc.removeDeadStructural input2678 value492 value1 value2 = (output2678, value501, value1) := by
  rw [input2678_def, output2678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2664]
  try dsimp only
  rw [child2677]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2664_skip, output2677_skip]
  kernel_rfl

theorem node2679_cond_eq
    (child2633 : Flapjack.WordAlloc.removeDeadStructural input2633 value492 value1 value2 = (output2633, value492, value1))
    (child2678 : Flapjack.WordAlloc.removeDeadStructural input2678 value492 value1 value2 = (output2678, value501, value1)) : Flapjack.WordAlloc.removeDeadStructural input2679 value492 value1 value2 = (output2679, value501, value1) := by
  rw [input2679_def, output2679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2633]
  try dsimp only
  rw [child2678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2633_skip, output2678_skip]
  kernel_rfl

theorem node2680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2680 value501 value1 value2 = (output2680, value499, value1) := by
  rw [input2680_def, output2680_def]
  kernel_rfl

theorem node2681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2681 value499 value1 value2 = (output2681, value502, value1) := by
  rw [input2681_def, output2681_def]
  kernel_rfl

theorem node2682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2682 value502 value1 value2 = (output2682, value502, value1) := by
  rw [input2682_def, output2682_def]
  kernel_rfl

theorem node2683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2683 value502 value1 value2 = (output2683, value502, value1) := by
  rw [input2683_def, output2683_def]
  kernel_rfl

theorem node2684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2684 value502 value1 value2 = (output2684, value502, value1) := by
  rw [input2684_def, output2684_def]
  kernel_rfl

theorem node2685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2685 value502 value1 value2 = (output2685, value502, value1) := by
  rw [input2685_def, output2685_def]
  kernel_rfl

theorem node2686_cond_eq
    (child2684 : Flapjack.WordAlloc.removeDeadStructural input2684 value502 value1 value2 = (output2684, value502, value1))
    (child2685 : Flapjack.WordAlloc.removeDeadStructural input2685 value502 value1 value2 = (output2685, value502, value1)) : Flapjack.WordAlloc.removeDeadStructural input2686 value502 value1 value2 = (output2686, value502, value1) := by
  rw [input2686_def, output2686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2684]
  try dsimp only
  rw [child2685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2684_skip, output2685_skip]
  kernel_rfl

theorem node2687_cond_eq
    (child2683 : Flapjack.WordAlloc.removeDeadStructural input2683 value502 value1 value2 = (output2683, value502, value1))
    (child2686 : Flapjack.WordAlloc.removeDeadStructural input2686 value502 value1 value2 = (output2686, value502, value1)) : Flapjack.WordAlloc.removeDeadStructural input2687 value502 value1 value2 = (output2687, value502, value1) := by
  rw [input2687_def, output2687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2683]
  try dsimp only
  rw [child2686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2683_skip, output2686_skip]
  kernel_rfl

theorem node2688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2688 value502 value1 value2 = (output2688, value502, value1) := by
  rw [input2688_def, output2688_def]
  kernel_rfl

theorem node2689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2689 value502 value1 value2 = (output2689, value502, value1) := by
  rw [input2689_def, output2689_def]
  kernel_rfl

theorem node2690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2690 value502 value1 value2 = (output2690, value502, value1) := by
  rw [input2690_def, output2690_def]
  kernel_rfl

theorem node2691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2691 value502 value1 value2 = (output2691, value497, value1) := by
  rw [input2691_def, output2691_def]
  kernel_rfl

theorem node2692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2692 value497 value1 value2 = (output2692, value497, value1) := by
  rw [input2692_def, output2692_def]
  kernel_rfl

theorem node2693_cond_eq
    (child2691 : Flapjack.WordAlloc.removeDeadStructural input2691 value502 value1 value2 = (output2691, value497, value1))
    (child2692 : Flapjack.WordAlloc.removeDeadStructural input2692 value497 value1 value2 = (output2692, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2693 value502 value1 value2 = (output2693, value497, value1) := by
  rw [input2693_def, output2693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2691]
  try dsimp only
  rw [child2692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2691_skip, output2692_skip]
  kernel_rfl

theorem node2694_cond_eq
    (child2690 : Flapjack.WordAlloc.removeDeadStructural input2690 value502 value1 value2 = (output2690, value502, value1))
    (child2693 : Flapjack.WordAlloc.removeDeadStructural input2693 value502 value1 value2 = (output2693, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2694 value502 value1 value2 = (output2694, value497, value1) := by
  rw [input2694_def, output2694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2690]
  try dsimp only
  rw [child2693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2690_skip, output2693_skip]
  kernel_rfl

theorem node2695_cond_eq
    (child2689 : Flapjack.WordAlloc.removeDeadStructural input2689 value502 value1 value2 = (output2689, value502, value1))
    (child2694 : Flapjack.WordAlloc.removeDeadStructural input2694 value502 value1 value2 = (output2694, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2695 value502 value1 value2 = (output2695, value497, value1) := by
  rw [input2695_def, output2695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2689]
  try dsimp only
  rw [child2694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2689_skip, output2694_skip]
  kernel_rfl

theorem node2696_cond_eq
    (child2688 : Flapjack.WordAlloc.removeDeadStructural input2688 value502 value1 value2 = (output2688, value502, value1))
    (child2695 : Flapjack.WordAlloc.removeDeadStructural input2695 value502 value1 value2 = (output2695, value497, value1)) : Flapjack.WordAlloc.removeDeadStructural input2696 value502 value1 value2 = (output2696, value497, value1) := by
  rw [input2696_def, output2696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2688]
  try dsimp only
  rw [child2695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2688_skip, output2695_skip]
  kernel_rfl

theorem node2697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2697 value497 value1 value2 = (output2697, value503, value1) := by
  rw [input2697_def, output2697_def]
  kernel_rfl

theorem node2698_cond_eq
    (child2696 : Flapjack.WordAlloc.removeDeadStructural input2696 value502 value1 value2 = (output2696, value497, value1))
    (child2697 : Flapjack.WordAlloc.removeDeadStructural input2697 value497 value1 value2 = (output2697, value503, value1)) : Flapjack.WordAlloc.removeDeadStructural input2698 value502 value1 value2 = (output2698, value503, value1) := by
  rw [input2698_def, output2698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2696]
  try dsimp only
  rw [child2697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2696_skip, output2697_skip]
  kernel_rfl

theorem node2699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2699 value503 value1 value2 = (output2699, value504, value1) := by
  rw [input2699_def, output2699_def]
  kernel_rfl

theorem node2700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2700 value504 value1 value2 = (output2700, value505, value1) := by
  rw [input2700_def, output2700_def]
  kernel_rfl

theorem node2701_cond_eq
    (child2699 : Flapjack.WordAlloc.removeDeadStructural input2699 value503 value1 value2 = (output2699, value504, value1))
    (child2700 : Flapjack.WordAlloc.removeDeadStructural input2700 value504 value1 value2 = (output2700, value505, value1)) : Flapjack.WordAlloc.removeDeadStructural input2701 value503 value1 value2 = (output2701, value505, value1) := by
  rw [input2701_def, output2701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2699]
  try dsimp only
  rw [child2700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2699_skip, output2700_skip]
  kernel_rfl

theorem node2702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2702 value505 value1 value2 = (output2702, value503, value1) := by
  rw [input2702_def, output2702_def]
  kernel_rfl

theorem node2703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2703 value503 value1 value2 = (output2703, value503, value1) := by
  rw [input2703_def, output2703_def]
  kernel_rfl

theorem node2704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2704 value503 value1 value2 = (output2704, value506, value1) := by
  rw [input2704_def, output2704_def]
  kernel_rfl

theorem node2705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2705 value506 value1 value2 = (output2705, value506, value1) := by
  rw [input2705_def, output2705_def]
  kernel_rfl

theorem node2706_cond_eq
    (child2704 : Flapjack.WordAlloc.removeDeadStructural input2704 value503 value1 value2 = (output2704, value506, value1))
    (child2705 : Flapjack.WordAlloc.removeDeadStructural input2705 value506 value1 value2 = (output2705, value506, value1)) : Flapjack.WordAlloc.removeDeadStructural input2706 value503 value1 value2 = (output2706, value506, value1) := by
  rw [input2706_def, output2706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2704]
  try dsimp only
  rw [child2705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2704_skip, output2705_skip]
  kernel_rfl

theorem node2707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2707 value506 value1 value2 = (output2707, value507, value1) := by
  rw [input2707_def, output2707_def]
  kernel_rfl

theorem node2708_cond_eq
    (child2706 : Flapjack.WordAlloc.removeDeadStructural input2706 value503 value1 value2 = (output2706, value506, value1))
    (child2707 : Flapjack.WordAlloc.removeDeadStructural input2707 value506 value1 value2 = (output2707, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2708 value503 value1 value2 = (output2708, value507, value1) := by
  rw [input2708_def, output2708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2706]
  try dsimp only
  rw [child2707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2706_skip, output2707_skip]
  kernel_rfl

theorem node2709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2709 value507 value1 value2 = (output2709, value507, value1) := by
  rw [input2709_def, output2709_def]
  kernel_rfl

theorem node2710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2710 value507 value1 value2 = (output2710, value507, value1) := by
  rw [input2710_def, output2710_def]
  kernel_rfl

theorem node2711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2711 value507 value1 value2 = (output2711, value507, value1) := by
  rw [input2711_def, output2711_def]
  kernel_rfl

theorem node2712_cond_eq
    (child2710 : Flapjack.WordAlloc.removeDeadStructural input2710 value507 value1 value2 = (output2710, value507, value1))
    (child2711 : Flapjack.WordAlloc.removeDeadStructural input2711 value507 value1 value2 = (output2711, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2712 value507 value1 value2 = (output2712, value507, value1) := by
  rw [input2712_def, output2712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2710]
  try dsimp only
  rw [child2711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2710_skip, output2711_skip]
  kernel_rfl

theorem node2713_cond_eq
    (child2709 : Flapjack.WordAlloc.removeDeadStructural input2709 value507 value1 value2 = (output2709, value507, value1))
    (child2712 : Flapjack.WordAlloc.removeDeadStructural input2712 value507 value1 value2 = (output2712, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2713 value507 value1 value2 = (output2713, value507, value1) := by
  rw [input2713_def, output2713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2709]
  try dsimp only
  rw [child2712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2709_skip, output2712_skip]
  kernel_rfl

theorem node2714_cond_eq
    (child2708 : Flapjack.WordAlloc.removeDeadStructural input2708 value503 value1 value2 = (output2708, value507, value1))
    (child2713 : Flapjack.WordAlloc.removeDeadStructural input2713 value507 value1 value2 = (output2713, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2714 value503 value1 value2 = (output2714, value507, value1) := by
  rw [input2714_def, output2714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2708]
  try dsimp only
  rw [child2713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2708_skip, output2713_skip]
  kernel_rfl

theorem node2715_cond_eq
    (child2703 : Flapjack.WordAlloc.removeDeadStructural input2703 value503 value1 value2 = (output2703, value503, value1))
    (child2714 : Flapjack.WordAlloc.removeDeadStructural input2714 value503 value1 value2 = (output2714, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2715 value503 value1 value2 = (output2715, value507, value1) := by
  rw [input2715_def, output2715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2703]
  try dsimp only
  rw [child2714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2703_skip, output2714_skip]
  kernel_rfl

theorem node2716_cond_eq
    (child2702 : Flapjack.WordAlloc.removeDeadStructural input2702 value505 value1 value2 = (output2702, value503, value1))
    (child2715 : Flapjack.WordAlloc.removeDeadStructural input2715 value503 value1 value2 = (output2715, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2716 value505 value1 value2 = (output2716, value507, value1) := by
  rw [input2716_def, output2716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2702]
  try dsimp only
  rw [child2715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2702_skip, output2715_skip]
  kernel_rfl

theorem node2717_cond_eq
    (child2701 : Flapjack.WordAlloc.removeDeadStructural input2701 value503 value1 value2 = (output2701, value505, value1))
    (child2716 : Flapjack.WordAlloc.removeDeadStructural input2716 value505 value1 value2 = (output2716, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2717 value503 value1 value2 = (output2717, value507, value1) := by
  rw [input2717_def, output2717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2701]
  try dsimp only
  rw [child2716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2701_skip, output2716_skip]
  kernel_rfl

theorem node2718_cond_eq
    (child2698 : Flapjack.WordAlloc.removeDeadStructural input2698 value502 value1 value2 = (output2698, value503, value1))
    (child2717 : Flapjack.WordAlloc.removeDeadStructural input2717 value503 value1 value2 = (output2717, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2718 value502 value1 value2 = (output2718, value507, value1) := by
  rw [input2718_def, output2718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2698]
  try dsimp only
  rw [child2717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2698_skip, output2717_skip]
  kernel_rfl

theorem node2719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2719 value502 value1 value2 = (output2719, value502, value1) := by
  rw [input2719_def, output2719_def]
  kernel_rfl

theorem node2720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2720 value502 value1 value2 = (output2720, value502, value1) := by
  rw [input2720_def, output2720_def]
  kernel_rfl

theorem node2721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2721 value502 value1 value2 = (output2721, value502, value1) := by
  rw [input2721_def, output2721_def]
  kernel_rfl

theorem node2722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2722 value502 value1 value2 = (output2722, value508, value1) := by
  rw [input2722_def, output2722_def]
  kernel_rfl

theorem node2723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2723 value508 value1 value2 = (output2723, value508, value1) := by
  rw [input2723_def, output2723_def]
  kernel_rfl

theorem node2724_cond_eq
    (child2722 : Flapjack.WordAlloc.removeDeadStructural input2722 value502 value1 value2 = (output2722, value508, value1))
    (child2723 : Flapjack.WordAlloc.removeDeadStructural input2723 value508 value1 value2 = (output2723, value508, value1)) : Flapjack.WordAlloc.removeDeadStructural input2724 value502 value1 value2 = (output2724, value508, value1) := by
  rw [input2724_def, output2724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2722]
  try dsimp only
  rw [child2723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2722_skip, output2723_skip]
  kernel_rfl

theorem node2725_cond_eq
    (child2721 : Flapjack.WordAlloc.removeDeadStructural input2721 value502 value1 value2 = (output2721, value502, value1))
    (child2724 : Flapjack.WordAlloc.removeDeadStructural input2724 value502 value1 value2 = (output2724, value508, value1)) : Flapjack.WordAlloc.removeDeadStructural input2725 value502 value1 value2 = (output2725, value508, value1) := by
  rw [input2725_def, output2725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2721]
  try dsimp only
  rw [child2724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2721_skip, output2724_skip]
  kernel_rfl

theorem node2726_cond_eq
    (child2720 : Flapjack.WordAlloc.removeDeadStructural input2720 value502 value1 value2 = (output2720, value502, value1))
    (child2725 : Flapjack.WordAlloc.removeDeadStructural input2725 value502 value1 value2 = (output2725, value508, value1)) : Flapjack.WordAlloc.removeDeadStructural input2726 value502 value1 value2 = (output2726, value508, value1) := by
  rw [input2726_def, output2726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2720]
  try dsimp only
  rw [child2725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2720_skip, output2725_skip]
  kernel_rfl

theorem node2727_cond_eq
    (child2719 : Flapjack.WordAlloc.removeDeadStructural input2719 value502 value1 value2 = (output2719, value502, value1))
    (child2726 : Flapjack.WordAlloc.removeDeadStructural input2726 value502 value1 value2 = (output2726, value508, value1)) : Flapjack.WordAlloc.removeDeadStructural input2727 value502 value1 value2 = (output2727, value508, value1) := by
  rw [input2727_def, output2727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2719]
  try dsimp only
  rw [child2726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2719_skip, output2726_skip]
  kernel_rfl

theorem node2728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2728 value508 value1 value2 = (output2728, value509, value1) := by
  rw [input2728_def, output2728_def]
  kernel_rfl

theorem node2729_cond_eq
    (child2727 : Flapjack.WordAlloc.removeDeadStructural input2727 value502 value1 value2 = (output2727, value508, value1))
    (child2728 : Flapjack.WordAlloc.removeDeadStructural input2728 value508 value1 value2 = (output2728, value509, value1)) : Flapjack.WordAlloc.removeDeadStructural input2729 value502 value1 value2 = (output2729, value509, value1) := by
  rw [input2729_def, output2729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2727]
  try dsimp only
  rw [child2728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2727_skip, output2728_skip]
  kernel_rfl

theorem node2730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2730 value509 value1 value2 = (output2730, value509, value1) := by
  rw [input2730_def, output2730_def]
  kernel_rfl

theorem node2731_cond_eq
    (child2729 : Flapjack.WordAlloc.removeDeadStructural input2729 value502 value1 value2 = (output2729, value509, value1))
    (child2730 : Flapjack.WordAlloc.removeDeadStructural input2730 value509 value1 value2 = (output2730, value509, value1)) : Flapjack.WordAlloc.removeDeadStructural input2731 value502 value1 value2 = (output2731, value509, value1) := by
  rw [input2731_def, output2731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2729]
  try dsimp only
  rw [child2730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2729_skip, output2730_skip]
  kernel_rfl

theorem node2732_cond_eq
    (child2718 : Flapjack.WordAlloc.removeDeadStructural input2718 value502 value1 value2 = (output2718, value507, value1))
    (child2731 : Flapjack.WordAlloc.removeDeadStructural input2731 value502 value1 value2 = (output2731, value509, value1)) : Flapjack.WordAlloc.removeDeadStructural input2732 value502 value1 value2 = (output2732, value511, value1) := by
  rw [input2732_def, output2732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2718]
  try dsimp only
  rw [child2731]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2718_skip, output2731_skip]
  kernel_rfl

theorem node2733_cond_eq
    (child2687 : Flapjack.WordAlloc.removeDeadStructural input2687 value502 value1 value2 = (output2687, value502, value1))
    (child2732 : Flapjack.WordAlloc.removeDeadStructural input2732 value502 value1 value2 = (output2732, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input2733 value502 value1 value2 = (output2733, value511, value1) := by
  rw [input2733_def, output2733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2687]
  try dsimp only
  rw [child2732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2687_skip, output2732_skip]
  kernel_rfl

theorem node2734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2734 value511 value1 value2 = (output2734, value509, value1) := by
  rw [input2734_def, output2734_def]
  kernel_rfl

theorem node2735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2735 value509 value1 value2 = (output2735, value512, value1) := by
  rw [input2735_def, output2735_def]
  kernel_rfl

theorem node2736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2736 value512 value1 value2 = (output2736, value512, value1) := by
  rw [input2736_def, output2736_def]
  kernel_rfl

theorem node2737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2737 value512 value1 value2 = (output2737, value512, value1) := by
  rw [input2737_def, output2737_def]
  kernel_rfl

theorem node2738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2738 value512 value1 value2 = (output2738, value512, value1) := by
  rw [input2738_def, output2738_def]
  kernel_rfl

theorem node2739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2739 value512 value1 value2 = (output2739, value512, value1) := by
  rw [input2739_def, output2739_def]
  kernel_rfl

theorem node2740_cond_eq
    (child2738 : Flapjack.WordAlloc.removeDeadStructural input2738 value512 value1 value2 = (output2738, value512, value1))
    (child2739 : Flapjack.WordAlloc.removeDeadStructural input2739 value512 value1 value2 = (output2739, value512, value1)) : Flapjack.WordAlloc.removeDeadStructural input2740 value512 value1 value2 = (output2740, value512, value1) := by
  rw [input2740_def, output2740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2738]
  try dsimp only
  rw [child2739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2738_skip, output2739_skip]
  kernel_rfl

theorem node2741_cond_eq
    (child2737 : Flapjack.WordAlloc.removeDeadStructural input2737 value512 value1 value2 = (output2737, value512, value1))
    (child2740 : Flapjack.WordAlloc.removeDeadStructural input2740 value512 value1 value2 = (output2740, value512, value1)) : Flapjack.WordAlloc.removeDeadStructural input2741 value512 value1 value2 = (output2741, value512, value1) := by
  rw [input2741_def, output2741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2737]
  try dsimp only
  rw [child2740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2737_skip, output2740_skip]
  kernel_rfl

theorem node2742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2742 value512 value1 value2 = (output2742, value512, value1) := by
  rw [input2742_def, output2742_def]
  kernel_rfl

theorem node2743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2743 value512 value1 value2 = (output2743, value512, value1) := by
  rw [input2743_def, output2743_def]
  kernel_rfl

theorem node2744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2744 value512 value1 value2 = (output2744, value512, value1) := by
  rw [input2744_def, output2744_def]
  kernel_rfl

theorem node2745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2745 value512 value1 value2 = (output2745, value507, value1) := by
  rw [input2745_def, output2745_def]
  kernel_rfl

theorem node2746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2746 value507 value1 value2 = (output2746, value507, value1) := by
  rw [input2746_def, output2746_def]
  kernel_rfl

theorem node2747_cond_eq
    (child2745 : Flapjack.WordAlloc.removeDeadStructural input2745 value512 value1 value2 = (output2745, value507, value1))
    (child2746 : Flapjack.WordAlloc.removeDeadStructural input2746 value507 value1 value2 = (output2746, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2747 value512 value1 value2 = (output2747, value507, value1) := by
  rw [input2747_def, output2747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2745]
  try dsimp only
  rw [child2746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2745_skip, output2746_skip]
  kernel_rfl

theorem node2748_cond_eq
    (child2744 : Flapjack.WordAlloc.removeDeadStructural input2744 value512 value1 value2 = (output2744, value512, value1))
    (child2747 : Flapjack.WordAlloc.removeDeadStructural input2747 value512 value1 value2 = (output2747, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2748 value512 value1 value2 = (output2748, value507, value1) := by
  rw [input2748_def, output2748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2744]
  try dsimp only
  rw [child2747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2744_skip, output2747_skip]
  kernel_rfl

theorem node2749_cond_eq
    (child2743 : Flapjack.WordAlloc.removeDeadStructural input2743 value512 value1 value2 = (output2743, value512, value1))
    (child2748 : Flapjack.WordAlloc.removeDeadStructural input2748 value512 value1 value2 = (output2748, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2749 value512 value1 value2 = (output2749, value507, value1) := by
  rw [input2749_def, output2749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2743]
  try dsimp only
  rw [child2748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2743_skip, output2748_skip]
  kernel_rfl

theorem node2750_cond_eq
    (child2742 : Flapjack.WordAlloc.removeDeadStructural input2742 value512 value1 value2 = (output2742, value512, value1))
    (child2749 : Flapjack.WordAlloc.removeDeadStructural input2749 value512 value1 value2 = (output2749, value507, value1)) : Flapjack.WordAlloc.removeDeadStructural input2750 value512 value1 value2 = (output2750, value507, value1) := by
  rw [input2750_def, output2750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2742]
  try dsimp only
  rw [child2749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2742_skip, output2749_skip]
  kernel_rfl

theorem node2751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2751 value507 value1 value2 = (output2751, value513, value1) := by
  rw [input2751_def, output2751_def]
  kernel_rfl

theorem node2752_cond_eq
    (child2750 : Flapjack.WordAlloc.removeDeadStructural input2750 value512 value1 value2 = (output2750, value507, value1))
    (child2751 : Flapjack.WordAlloc.removeDeadStructural input2751 value507 value1 value2 = (output2751, value513, value1)) : Flapjack.WordAlloc.removeDeadStructural input2752 value512 value1 value2 = (output2752, value513, value1) := by
  rw [input2752_def, output2752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2750]
  try dsimp only
  rw [child2751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2750_skip, output2751_skip]
  kernel_rfl

theorem node2753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2753 value513 value1 value2 = (output2753, value514, value1) := by
  rw [input2753_def, output2753_def]
  kernel_rfl

theorem node2754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2754 value514 value1 value2 = (output2754, value515, value1) := by
  rw [input2754_def, output2754_def]
  kernel_rfl

theorem node2755_cond_eq
    (child2753 : Flapjack.WordAlloc.removeDeadStructural input2753 value513 value1 value2 = (output2753, value514, value1))
    (child2754 : Flapjack.WordAlloc.removeDeadStructural input2754 value514 value1 value2 = (output2754, value515, value1)) : Flapjack.WordAlloc.removeDeadStructural input2755 value513 value1 value2 = (output2755, value515, value1) := by
  rw [input2755_def, output2755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2753]
  try dsimp only
  rw [child2754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2753_skip, output2754_skip]
  kernel_rfl

theorem node2756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2756 value515 value1 value2 = (output2756, value513, value1) := by
  rw [input2756_def, output2756_def]
  kernel_rfl

theorem node2757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2757 value513 value1 value2 = (output2757, value513, value1) := by
  rw [input2757_def, output2757_def]
  kernel_rfl

theorem node2758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2758 value513 value1 value2 = (output2758, value516, value1) := by
  rw [input2758_def, output2758_def]
  kernel_rfl

theorem node2759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2759 value516 value1 value2 = (output2759, value516, value1) := by
  rw [input2759_def, output2759_def]
  kernel_rfl

theorem node2760_cond_eq
    (child2758 : Flapjack.WordAlloc.removeDeadStructural input2758 value513 value1 value2 = (output2758, value516, value1))
    (child2759 : Flapjack.WordAlloc.removeDeadStructural input2759 value516 value1 value2 = (output2759, value516, value1)) : Flapjack.WordAlloc.removeDeadStructural input2760 value513 value1 value2 = (output2760, value516, value1) := by
  rw [input2760_def, output2760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2758]
  try dsimp only
  rw [child2759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2758_skip, output2759_skip]
  kernel_rfl

theorem node2761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2761 value516 value1 value2 = (output2761, value517, value1) := by
  rw [input2761_def, output2761_def]
  kernel_rfl

theorem node2762_cond_eq
    (child2760 : Flapjack.WordAlloc.removeDeadStructural input2760 value513 value1 value2 = (output2760, value516, value1))
    (child2761 : Flapjack.WordAlloc.removeDeadStructural input2761 value516 value1 value2 = (output2761, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2762 value513 value1 value2 = (output2762, value517, value1) := by
  rw [input2762_def, output2762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2760]
  try dsimp only
  rw [child2761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2760_skip, output2761_skip]
  kernel_rfl

theorem node2763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2763 value517 value1 value2 = (output2763, value517, value1) := by
  rw [input2763_def, output2763_def]
  kernel_rfl

theorem node2764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2764 value517 value1 value2 = (output2764, value517, value1) := by
  rw [input2764_def, output2764_def]
  kernel_rfl

theorem node2765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2765 value517 value1 value2 = (output2765, value517, value1) := by
  rw [input2765_def, output2765_def]
  kernel_rfl

theorem node2766_cond_eq
    (child2764 : Flapjack.WordAlloc.removeDeadStructural input2764 value517 value1 value2 = (output2764, value517, value1))
    (child2765 : Flapjack.WordAlloc.removeDeadStructural input2765 value517 value1 value2 = (output2765, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2766 value517 value1 value2 = (output2766, value517, value1) := by
  rw [input2766_def, output2766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2764]
  try dsimp only
  rw [child2765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2764_skip, output2765_skip]
  kernel_rfl

theorem node2767_cond_eq
    (child2763 : Flapjack.WordAlloc.removeDeadStructural input2763 value517 value1 value2 = (output2763, value517, value1))
    (child2766 : Flapjack.WordAlloc.removeDeadStructural input2766 value517 value1 value2 = (output2766, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2767 value517 value1 value2 = (output2767, value517, value1) := by
  rw [input2767_def, output2767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2763]
  try dsimp only
  rw [child2766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2763_skip, output2766_skip]
  kernel_rfl

theorem node2768_cond_eq
    (child2762 : Flapjack.WordAlloc.removeDeadStructural input2762 value513 value1 value2 = (output2762, value517, value1))
    (child2767 : Flapjack.WordAlloc.removeDeadStructural input2767 value517 value1 value2 = (output2767, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2768 value513 value1 value2 = (output2768, value517, value1) := by
  rw [input2768_def, output2768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2762]
  try dsimp only
  rw [child2767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2762_skip, output2767_skip]
  kernel_rfl

theorem node2769_cond_eq
    (child2757 : Flapjack.WordAlloc.removeDeadStructural input2757 value513 value1 value2 = (output2757, value513, value1))
    (child2768 : Flapjack.WordAlloc.removeDeadStructural input2768 value513 value1 value2 = (output2768, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2769 value513 value1 value2 = (output2769, value517, value1) := by
  rw [input2769_def, output2769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2757]
  try dsimp only
  rw [child2768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2757_skip, output2768_skip]
  kernel_rfl

theorem node2770_cond_eq
    (child2756 : Flapjack.WordAlloc.removeDeadStructural input2756 value515 value1 value2 = (output2756, value513, value1))
    (child2769 : Flapjack.WordAlloc.removeDeadStructural input2769 value513 value1 value2 = (output2769, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2770 value515 value1 value2 = (output2770, value517, value1) := by
  rw [input2770_def, output2770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2756]
  try dsimp only
  rw [child2769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2756_skip, output2769_skip]
  kernel_rfl

theorem node2771_cond_eq
    (child2755 : Flapjack.WordAlloc.removeDeadStructural input2755 value513 value1 value2 = (output2755, value515, value1))
    (child2770 : Flapjack.WordAlloc.removeDeadStructural input2770 value515 value1 value2 = (output2770, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2771 value513 value1 value2 = (output2771, value517, value1) := by
  rw [input2771_def, output2771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2755]
  try dsimp only
  rw [child2770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2755_skip, output2770_skip]
  kernel_rfl

theorem node2772_cond_eq
    (child2752 : Flapjack.WordAlloc.removeDeadStructural input2752 value512 value1 value2 = (output2752, value513, value1))
    (child2771 : Flapjack.WordAlloc.removeDeadStructural input2771 value513 value1 value2 = (output2771, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2772 value512 value1 value2 = (output2772, value517, value1) := by
  rw [input2772_def, output2772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2752]
  try dsimp only
  rw [child2771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2752_skip, output2771_skip]
  kernel_rfl

theorem node2773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2773 value512 value1 value2 = (output2773, value512, value1) := by
  rw [input2773_def, output2773_def]
  kernel_rfl

theorem node2774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2774 value512 value1 value2 = (output2774, value512, value1) := by
  rw [input2774_def, output2774_def]
  kernel_rfl

theorem node2775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2775 value512 value1 value2 = (output2775, value512, value1) := by
  rw [input2775_def, output2775_def]
  kernel_rfl

theorem node2776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2776 value512 value1 value2 = (output2776, value518, value1) := by
  rw [input2776_def, output2776_def]
  kernel_rfl

theorem node2777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2777 value518 value1 value2 = (output2777, value518, value1) := by
  rw [input2777_def, output2777_def]
  kernel_rfl

theorem node2778_cond_eq
    (child2776 : Flapjack.WordAlloc.removeDeadStructural input2776 value512 value1 value2 = (output2776, value518, value1))
    (child2777 : Flapjack.WordAlloc.removeDeadStructural input2777 value518 value1 value2 = (output2777, value518, value1)) : Flapjack.WordAlloc.removeDeadStructural input2778 value512 value1 value2 = (output2778, value518, value1) := by
  rw [input2778_def, output2778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2776]
  try dsimp only
  rw [child2777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2776_skip, output2777_skip]
  kernel_rfl

theorem node2779_cond_eq
    (child2775 : Flapjack.WordAlloc.removeDeadStructural input2775 value512 value1 value2 = (output2775, value512, value1))
    (child2778 : Flapjack.WordAlloc.removeDeadStructural input2778 value512 value1 value2 = (output2778, value518, value1)) : Flapjack.WordAlloc.removeDeadStructural input2779 value512 value1 value2 = (output2779, value518, value1) := by
  rw [input2779_def, output2779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2775]
  try dsimp only
  rw [child2778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2775_skip, output2778_skip]
  kernel_rfl

theorem node2780_cond_eq
    (child2774 : Flapjack.WordAlloc.removeDeadStructural input2774 value512 value1 value2 = (output2774, value512, value1))
    (child2779 : Flapjack.WordAlloc.removeDeadStructural input2779 value512 value1 value2 = (output2779, value518, value1)) : Flapjack.WordAlloc.removeDeadStructural input2780 value512 value1 value2 = (output2780, value518, value1) := by
  rw [input2780_def, output2780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2774]
  try dsimp only
  rw [child2779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2774_skip, output2779_skip]
  kernel_rfl

theorem node2781_cond_eq
    (child2773 : Flapjack.WordAlloc.removeDeadStructural input2773 value512 value1 value2 = (output2773, value512, value1))
    (child2780 : Flapjack.WordAlloc.removeDeadStructural input2780 value512 value1 value2 = (output2780, value518, value1)) : Flapjack.WordAlloc.removeDeadStructural input2781 value512 value1 value2 = (output2781, value518, value1) := by
  rw [input2781_def, output2781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2773]
  try dsimp only
  rw [child2780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2773_skip, output2780_skip]
  kernel_rfl

theorem node2782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2782 value518 value1 value2 = (output2782, value519, value1) := by
  rw [input2782_def, output2782_def]
  kernel_rfl

theorem node2783_cond_eq
    (child2781 : Flapjack.WordAlloc.removeDeadStructural input2781 value512 value1 value2 = (output2781, value518, value1))
    (child2782 : Flapjack.WordAlloc.removeDeadStructural input2782 value518 value1 value2 = (output2782, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input2783 value512 value1 value2 = (output2783, value519, value1) := by
  rw [input2783_def, output2783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2781]
  try dsimp only
  rw [child2782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2781_skip, output2782_skip]
  kernel_rfl

theorem node2784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2784 value519 value1 value2 = (output2784, value519, value1) := by
  rw [input2784_def, output2784_def]
  kernel_rfl

theorem node2785_cond_eq
    (child2783 : Flapjack.WordAlloc.removeDeadStructural input2783 value512 value1 value2 = (output2783, value519, value1))
    (child2784 : Flapjack.WordAlloc.removeDeadStructural input2784 value519 value1 value2 = (output2784, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input2785 value512 value1 value2 = (output2785, value519, value1) := by
  rw [input2785_def, output2785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2783]
  try dsimp only
  rw [child2784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2783_skip, output2784_skip]
  kernel_rfl

theorem node2786_cond_eq
    (child2772 : Flapjack.WordAlloc.removeDeadStructural input2772 value512 value1 value2 = (output2772, value517, value1))
    (child2785 : Flapjack.WordAlloc.removeDeadStructural input2785 value512 value1 value2 = (output2785, value519, value1)) : Flapjack.WordAlloc.removeDeadStructural input2786 value512 value1 value2 = (output2786, value521, value1) := by
  rw [input2786_def, output2786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2772]
  try dsimp only
  rw [child2785]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2772_skip, output2785_skip]
  kernel_rfl

theorem node2787_cond_eq
    (child2741 : Flapjack.WordAlloc.removeDeadStructural input2741 value512 value1 value2 = (output2741, value512, value1))
    (child2786 : Flapjack.WordAlloc.removeDeadStructural input2786 value512 value1 value2 = (output2786, value521, value1)) : Flapjack.WordAlloc.removeDeadStructural input2787 value512 value1 value2 = (output2787, value521, value1) := by
  rw [input2787_def, output2787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2741]
  try dsimp only
  rw [child2786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2741_skip, output2786_skip]
  kernel_rfl

theorem node2788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2788 value521 value1 value2 = (output2788, value519, value1) := by
  rw [input2788_def, output2788_def]
  kernel_rfl

theorem node2789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2789 value519 value1 value2 = (output2789, value522, value1) := by
  rw [input2789_def, output2789_def]
  kernel_rfl

theorem node2790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2790 value522 value1 value2 = (output2790, value522, value1) := by
  rw [input2790_def, output2790_def]
  kernel_rfl

theorem node2791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2791 value522 value1 value2 = (output2791, value522, value1) := by
  rw [input2791_def, output2791_def]
  kernel_rfl

theorem node2792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2792 value522 value1 value2 = (output2792, value522, value1) := by
  rw [input2792_def, output2792_def]
  kernel_rfl

theorem node2793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2793 value522 value1 value2 = (output2793, value522, value1) := by
  rw [input2793_def, output2793_def]
  kernel_rfl

theorem node2794_cond_eq
    (child2792 : Flapjack.WordAlloc.removeDeadStructural input2792 value522 value1 value2 = (output2792, value522, value1))
    (child2793 : Flapjack.WordAlloc.removeDeadStructural input2793 value522 value1 value2 = (output2793, value522, value1)) : Flapjack.WordAlloc.removeDeadStructural input2794 value522 value1 value2 = (output2794, value522, value1) := by
  rw [input2794_def, output2794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2792]
  try dsimp only
  rw [child2793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2792_skip, output2793_skip]
  kernel_rfl

theorem node2795_cond_eq
    (child2791 : Flapjack.WordAlloc.removeDeadStructural input2791 value522 value1 value2 = (output2791, value522, value1))
    (child2794 : Flapjack.WordAlloc.removeDeadStructural input2794 value522 value1 value2 = (output2794, value522, value1)) : Flapjack.WordAlloc.removeDeadStructural input2795 value522 value1 value2 = (output2795, value522, value1) := by
  rw [input2795_def, output2795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2791]
  try dsimp only
  rw [child2794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2791_skip, output2794_skip]
  kernel_rfl

theorem node2796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2796 value522 value1 value2 = (output2796, value522, value1) := by
  rw [input2796_def, output2796_def]
  kernel_rfl

theorem node2797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2797 value522 value1 value2 = (output2797, value522, value1) := by
  rw [input2797_def, output2797_def]
  kernel_rfl

theorem node2798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2798 value522 value1 value2 = (output2798, value522, value1) := by
  rw [input2798_def, output2798_def]
  kernel_rfl

theorem node2799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2799 value522 value1 value2 = (output2799, value517, value1) := by
  rw [input2799_def, output2799_def]
  kernel_rfl

theorem node2800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2800 value517 value1 value2 = (output2800, value517, value1) := by
  rw [input2800_def, output2800_def]
  kernel_rfl

theorem node2801_cond_eq
    (child2799 : Flapjack.WordAlloc.removeDeadStructural input2799 value522 value1 value2 = (output2799, value517, value1))
    (child2800 : Flapjack.WordAlloc.removeDeadStructural input2800 value517 value1 value2 = (output2800, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2801 value522 value1 value2 = (output2801, value517, value1) := by
  rw [input2801_def, output2801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2799]
  try dsimp only
  rw [child2800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2799_skip, output2800_skip]
  kernel_rfl

theorem node2802_cond_eq
    (child2798 : Flapjack.WordAlloc.removeDeadStructural input2798 value522 value1 value2 = (output2798, value522, value1))
    (child2801 : Flapjack.WordAlloc.removeDeadStructural input2801 value522 value1 value2 = (output2801, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2802 value522 value1 value2 = (output2802, value517, value1) := by
  rw [input2802_def, output2802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2798]
  try dsimp only
  rw [child2801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2798_skip, output2801_skip]
  kernel_rfl

theorem node2803_cond_eq
    (child2797 : Flapjack.WordAlloc.removeDeadStructural input2797 value522 value1 value2 = (output2797, value522, value1))
    (child2802 : Flapjack.WordAlloc.removeDeadStructural input2802 value522 value1 value2 = (output2802, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2803 value522 value1 value2 = (output2803, value517, value1) := by
  rw [input2803_def, output2803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2797]
  try dsimp only
  rw [child2802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2797_skip, output2802_skip]
  kernel_rfl

theorem node2804_cond_eq
    (child2796 : Flapjack.WordAlloc.removeDeadStructural input2796 value522 value1 value2 = (output2796, value522, value1))
    (child2803 : Flapjack.WordAlloc.removeDeadStructural input2803 value522 value1 value2 = (output2803, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input2804 value522 value1 value2 = (output2804, value517, value1) := by
  rw [input2804_def, output2804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2796]
  try dsimp only
  rw [child2803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2796_skip, output2803_skip]
  kernel_rfl

theorem node2805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2805 value517 value1 value2 = (output2805, value523, value1) := by
  rw [input2805_def, output2805_def]
  kernel_rfl

theorem node2806_cond_eq
    (child2804 : Flapjack.WordAlloc.removeDeadStructural input2804 value522 value1 value2 = (output2804, value517, value1))
    (child2805 : Flapjack.WordAlloc.removeDeadStructural input2805 value517 value1 value2 = (output2805, value523, value1)) : Flapjack.WordAlloc.removeDeadStructural input2806 value522 value1 value2 = (output2806, value523, value1) := by
  rw [input2806_def, output2806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2804]
  try dsimp only
  rw [child2805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2804_skip, output2805_skip]
  kernel_rfl

theorem node2807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2807 value523 value1 value2 = (output2807, value524, value1) := by
  rw [input2807_def, output2807_def]
  kernel_rfl

theorem node2808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2808 value524 value1 value2 = (output2808, value525, value1) := by
  rw [input2808_def, output2808_def]
  kernel_rfl

theorem node2809_cond_eq
    (child2807 : Flapjack.WordAlloc.removeDeadStructural input2807 value523 value1 value2 = (output2807, value524, value1))
    (child2808 : Flapjack.WordAlloc.removeDeadStructural input2808 value524 value1 value2 = (output2808, value525, value1)) : Flapjack.WordAlloc.removeDeadStructural input2809 value523 value1 value2 = (output2809, value525, value1) := by
  rw [input2809_def, output2809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2807]
  try dsimp only
  rw [child2808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2807_skip, output2808_skip]
  kernel_rfl

theorem node2810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2810 value525 value1 value2 = (output2810, value523, value1) := by
  rw [input2810_def, output2810_def]
  kernel_rfl

theorem node2811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2811 value523 value1 value2 = (output2811, value523, value1) := by
  rw [input2811_def, output2811_def]
  kernel_rfl

theorem node2812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2812 value523 value1 value2 = (output2812, value526, value1) := by
  rw [input2812_def, output2812_def]
  kernel_rfl

theorem node2813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2813 value526 value1 value2 = (output2813, value526, value1) := by
  rw [input2813_def, output2813_def]
  kernel_rfl

theorem node2814_cond_eq
    (child2812 : Flapjack.WordAlloc.removeDeadStructural input2812 value523 value1 value2 = (output2812, value526, value1))
    (child2813 : Flapjack.WordAlloc.removeDeadStructural input2813 value526 value1 value2 = (output2813, value526, value1)) : Flapjack.WordAlloc.removeDeadStructural input2814 value523 value1 value2 = (output2814, value526, value1) := by
  rw [input2814_def, output2814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2812]
  try dsimp only
  rw [child2813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2812_skip, output2813_skip]
  kernel_rfl

theorem node2815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2815 value526 value1 value2 = (output2815, value527, value1) := by
  rw [input2815_def, output2815_def]
  kernel_rfl

#print axioms node2815_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
