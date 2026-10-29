import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk010
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages875.Parallel
theorem node2560_cond_eq
    (child2516 : Flapjack.WordAlloc.removeDeadStructural input2516 value847 value1 value841 = (output2516, value851, value1))
    (child2559 : Flapjack.WordAlloc.removeDeadStructural input2559 value851 value1 value841 = (output2559, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input2560 value847 value1 value841 = (output2560, value870, value1) := by
  rw [input2560_def, output2560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2516]
  try dsimp only
  rw [child2559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2516_skip, output2559_skip]
  kernel_rfl

theorem node2561_cond_eq
    (child2509 : Flapjack.WordAlloc.removeDeadStructural input2509 value846 value1 value841 = (output2509, value847, value1))
    (child2560 : Flapjack.WordAlloc.removeDeadStructural input2560 value847 value1 value841 = (output2560, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input2561 value846 value1 value841 = (output2561, value870, value1) := by
  rw [input2561_def, output2561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2509]
  try dsimp only
  rw [child2560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2509_skip, output2560_skip]
  kernel_rfl

theorem node2562_cond_eq
    (child2508 : Flapjack.WordAlloc.removeDeadStructural input2508 value844 value1 value841 = (output2508, value846, value1))
    (child2561 : Flapjack.WordAlloc.removeDeadStructural input2561 value846 value1 value841 = (output2561, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input2562 value844 value1 value841 = (output2562, value870, value1) := by
  rw [input2562_def, output2562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2508]
  try dsimp only
  rw [child2561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2508_skip, output2561_skip]
  kernel_rfl

theorem node2563_cond_eq
    (child2505 : Flapjack.WordAlloc.removeDeadStructural input2505 value843 value1 value841 = (output2505, value844, value1))
    (child2562 : Flapjack.WordAlloc.removeDeadStructural input2562 value844 value1 value841 = (output2562, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input2563 value843 value1 value841 = (output2563, value870, value1) := by
  rw [input2563_def, output2563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2505]
  try dsimp only
  rw [child2562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2505_skip, output2562_skip]
  kernel_rfl

theorem node2564_cond_eq
    (child2504 : Flapjack.WordAlloc.removeDeadStructural input2504 value843 value1 value841 = (output2504, value843, value1))
    (child2563 : Flapjack.WordAlloc.removeDeadStructural input2563 value843 value1 value841 = (output2563, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input2564 value843 value1 value841 = (output2564, value870, value1) := by
  rw [input2564_def, output2564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2504]
  try dsimp only
  rw [child2563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2504_skip, output2563_skip]
  kernel_rfl

theorem node2565_cond_eq
    (child2501 : Flapjack.WordAlloc.removeDeadStructural input2501 value842 value1 value841 = (output2501, value843, value1))
    (child2564 : Flapjack.WordAlloc.removeDeadStructural input2564 value843 value1 value841 = (output2564, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input2565 value842 value1 value841 = (output2565, value870, value1) := by
  rw [input2565_def, output2565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2501]
  try dsimp only
  rw [child2564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2501_skip, output2564_skip]
  kernel_rfl

theorem node2566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2566 value842 value1 value841 = (output2566, value842, value1) := by
  rw [input2566_def, output2566_def]
  kernel_rfl

theorem node2567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2567 value842 value1 value841 = (output2567, value842, value1) := by
  rw [input2567_def, output2567_def]
  kernel_rfl

theorem node2568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2568 value842 value1 value841 = (output2568, value842, value1) := by
  rw [input2568_def, output2568_def]
  kernel_rfl

theorem node2569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2569 value842 value1 value841 = (output2569, value842, value1) := by
  rw [input2569_def, output2569_def]
  kernel_rfl

theorem node2570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2570 value842 value1 value841 = (output2570, value842, value1) := by
  rw [input2570_def, output2570_def]
  kernel_rfl

theorem node2571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2571 value842 value1 value841 = (output2571, value842, value1) := by
  rw [input2571_def, output2571_def]
  kernel_rfl

theorem node2572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2572 value842 value1 value841 = (output2572, value842, value1) := by
  rw [input2572_def, output2572_def]
  kernel_rfl

theorem node2573_cond_eq
    (child2571 : Flapjack.WordAlloc.removeDeadStructural input2571 value842 value1 value841 = (output2571, value842, value1))
    (child2572 : Flapjack.WordAlloc.removeDeadStructural input2572 value842 value1 value841 = (output2572, value842, value1)) : Flapjack.WordAlloc.removeDeadStructural input2573 value842 value1 value841 = (output2573, value842, value1) := by
  rw [input2573_def, output2573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2571]
  try dsimp only
  rw [child2572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2571_skip, output2572_skip]
  kernel_rfl

theorem node2574_cond_eq
    (child2570 : Flapjack.WordAlloc.removeDeadStructural input2570 value842 value1 value841 = (output2570, value842, value1))
    (child2573 : Flapjack.WordAlloc.removeDeadStructural input2573 value842 value1 value841 = (output2573, value842, value1)) : Flapjack.WordAlloc.removeDeadStructural input2574 value842 value1 value841 = (output2574, value842, value1) := by
  rw [input2574_def, output2574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2570]
  try dsimp only
  rw [child2573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2570_skip, output2573_skip]
  kernel_rfl

theorem node2575_cond_eq
    (child2569 : Flapjack.WordAlloc.removeDeadStructural input2569 value842 value1 value841 = (output2569, value842, value1))
    (child2574 : Flapjack.WordAlloc.removeDeadStructural input2574 value842 value1 value841 = (output2574, value842, value1)) : Flapjack.WordAlloc.removeDeadStructural input2575 value842 value1 value841 = (output2575, value842, value1) := by
  rw [input2575_def, output2575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2569]
  try dsimp only
  rw [child2574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2569_skip, output2574_skip]
  kernel_rfl

theorem node2576_cond_eq
    (child2568 : Flapjack.WordAlloc.removeDeadStructural input2568 value842 value1 value841 = (output2568, value842, value1))
    (child2575 : Flapjack.WordAlloc.removeDeadStructural input2575 value842 value1 value841 = (output2575, value842, value1)) : Flapjack.WordAlloc.removeDeadStructural input2576 value842 value1 value841 = (output2576, value842, value1) := by
  rw [input2576_def, output2576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2568]
  try dsimp only
  rw [child2575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2568_skip, output2575_skip]
  kernel_rfl

theorem node2577_cond_eq
    (child2567 : Flapjack.WordAlloc.removeDeadStructural input2567 value842 value1 value841 = (output2567, value842, value1))
    (child2576 : Flapjack.WordAlloc.removeDeadStructural input2576 value842 value1 value841 = (output2576, value842, value1)) : Flapjack.WordAlloc.removeDeadStructural input2577 value842 value1 value841 = (output2577, value842, value1) := by
  rw [input2577_def, output2577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2567]
  try dsimp only
  rw [child2576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2567_skip, output2576_skip]
  kernel_rfl

theorem node2578_cond_eq
    (child2566 : Flapjack.WordAlloc.removeDeadStructural input2566 value842 value1 value841 = (output2566, value842, value1))
    (child2577 : Flapjack.WordAlloc.removeDeadStructural input2577 value842 value1 value841 = (output2577, value842, value1)) : Flapjack.WordAlloc.removeDeadStructural input2578 value842 value1 value841 = (output2578, value842, value1) := by
  rw [input2578_def, output2578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2566]
  try dsimp only
  rw [child2577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2566_skip, output2577_skip]
  kernel_rfl

theorem node2579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2579 value842 value1 value841 = (output2579, value870, value1) := by
  rw [input2579_def, output2579_def]
  kernel_rfl

theorem node2580_cond_eq
    (child2578 : Flapjack.WordAlloc.removeDeadStructural input2578 value842 value1 value841 = (output2578, value842, value1))
    (child2579 : Flapjack.WordAlloc.removeDeadStructural input2579 value842 value1 value841 = (output2579, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input2580 value842 value1 value841 = (output2580, value870, value1) := by
  rw [input2580_def, output2580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2578]
  try dsimp only
  rw [child2579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2578_skip, output2579_skip]
  kernel_rfl

theorem node2581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2581 value870 value1 value841 = (output2581, value839, value1) := by
  rw [input2581_def, output2581_def]
  kernel_rfl

theorem node2582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2582 value839 value1 value841 = (output2582, value871, value1) := by
  rw [input2582_def, output2582_def]
  kernel_rfl

theorem node2583_cond_eq
    (child2581 : Flapjack.WordAlloc.removeDeadStructural input2581 value870 value1 value841 = (output2581, value839, value1))
    (child2582 : Flapjack.WordAlloc.removeDeadStructural input2582 value839 value1 value841 = (output2582, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input2583 value870 value1 value841 = (output2583, value871, value1) := by
  rw [input2583_def, output2583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2581]
  try dsimp only
  rw [child2582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2581_skip, output2582_skip]
  kernel_rfl

theorem node2584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2584 value871 value1 value841 = (output2584, value871, value1) := by
  rw [input2584_def, output2584_def]
  kernel_rfl

theorem node2585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2585 value871 value1 value841 = (output2585, value871, value1) := by
  rw [input2585_def, output2585_def]
  kernel_rfl

theorem node2586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2586 value871 value1 value841 = (output2586, value871, value1) := by
  rw [input2586_def, output2586_def]
  kernel_rfl

theorem node2587_cond_eq
    (child2585 : Flapjack.WordAlloc.removeDeadStructural input2585 value871 value1 value841 = (output2585, value871, value1))
    (child2586 : Flapjack.WordAlloc.removeDeadStructural input2586 value871 value1 value841 = (output2586, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input2587 value871 value1 value841 = (output2587, value871, value1) := by
  rw [input2587_def, output2587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2585]
  try dsimp only
  rw [child2586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2585_skip, output2586_skip]
  kernel_rfl

theorem node2588_cond_eq
    (child2584 : Flapjack.WordAlloc.removeDeadStructural input2584 value871 value1 value841 = (output2584, value871, value1))
    (child2587 : Flapjack.WordAlloc.removeDeadStructural input2587 value871 value1 value841 = (output2587, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input2588 value871 value1 value841 = (output2588, value871, value1) := by
  rw [input2588_def, output2588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2584]
  try dsimp only
  rw [child2587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2584_skip, output2587_skip]
  kernel_rfl

theorem node2589_cond_eq
    (child2583 : Flapjack.WordAlloc.removeDeadStructural input2583 value870 value1 value841 = (output2583, value871, value1))
    (child2588 : Flapjack.WordAlloc.removeDeadStructural input2588 value871 value1 value841 = (output2588, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input2589 value870 value1 value841 = (output2589, value871, value1) := by
  rw [input2589_def, output2589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2583]
  try dsimp only
  rw [child2588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2583_skip, output2588_skip]
  kernel_rfl

theorem node2590_cond_eq
    (child2580 : Flapjack.WordAlloc.removeDeadStructural input2580 value842 value1 value841 = (output2580, value870, value1))
    (child2589 : Flapjack.WordAlloc.removeDeadStructural input2589 value870 value1 value841 = (output2589, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input2590 value842 value1 value841 = (output2590, value871, value1) := by
  rw [input2590_def, output2590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2580]
  try dsimp only
  rw [child2589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2580_skip, output2589_skip]
  kernel_rfl

theorem node2591_cond_eq
    (child2565 : Flapjack.WordAlloc.removeDeadStructural input2565 value842 value1 value841 = (output2565, value870, value1))
    (child2590 : Flapjack.WordAlloc.removeDeadStructural input2590 value842 value1 value841 = (output2590, value871, value1)) : Flapjack.WordAlloc.removeDeadStructural input2591 value842 value1 value841 = (output2591, value870, value1) := by
  rw [input2591_def, output2591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2565]
  try dsimp only
  rw [child2590]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2565_skip, output2590_skip]
  kernel_rfl

theorem node2592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2592 value870 value1 value841 = (output2592, value873, value1) := by
  rw [input2592_def, output2592_def]
  kernel_rfl

theorem node2593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2593 value873 value1 value841 = (output2593, value840, value1) := by
  rw [input2593_def, output2593_def]
  kernel_rfl

theorem node2594_cond_eq
    (child2592 : Flapjack.WordAlloc.removeDeadStructural input2592 value870 value1 value841 = (output2592, value873, value1))
    (child2593 : Flapjack.WordAlloc.removeDeadStructural input2593 value873 value1 value841 = (output2593, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input2594 value870 value1 value841 = (output2594, value840, value1) := by
  rw [input2594_def, output2594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2592]
  try dsimp only
  rw [child2593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2592_skip, output2593_skip]
  kernel_rfl

theorem node2595_cond_eq
    (child2591 : Flapjack.WordAlloc.removeDeadStructural input2591 value842 value1 value841 = (output2591, value870, value1))
    (child2594 : Flapjack.WordAlloc.removeDeadStructural input2594 value870 value1 value841 = (output2594, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input2595 value842 value1 value841 = (output2595, value840, value1) := by
  rw [input2595_def, output2595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2591]
  try dsimp only
  rw [child2594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2591_skip, output2594_skip]
  kernel_rfl

theorem node2596_cond_eq
    (child2486 : Flapjack.WordAlloc.removeDeadStructural input2486 value842 value1 value841 = (output2486, value842, value1))
    (child2595 : Flapjack.WordAlloc.removeDeadStructural input2595 value842 value1 value841 = (output2595, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input2596 value842 value1 value841 = (output2596, value840, value1) := by
  rw [input2596_def, output2596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2486]
  try dsimp only
  rw [child2595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2486_skip, output2595_skip]
  kernel_rfl

theorem node2597_cond_eq
    (child2485 : Flapjack.WordAlloc.removeDeadStructural input2485 value840 value1 value841 = (output2485, value842, value1))
    (child2596 : Flapjack.WordAlloc.removeDeadStructural input2596 value842 value1 value841 = (output2596, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input2597 value840 value1 value841 = (output2597, value840, value1) := by
  rw [input2597_def, output2597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2485]
  try dsimp only
  rw [child2596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2485_skip, output2596_skip]
  kernel_rfl

theorem node2598_cond_eq
    (child2597 : Flapjack.WordAlloc.removeDeadStructural input2597 value840 value1 value841 = (output2597, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input2598 value839 value1 value2 = (output2598, value840, value1) := by
  rw [input2598_def, output2598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value841 = (value840, value839) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child2597
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node2599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2599 value840 value1 value2 = (output2599, value874, value1) := by
  rw [input2599_def, output2599_def]
  kernel_rfl

theorem node2600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2600 value874 value1 value2 = (output2600, value874, value1) := by
  rw [input2600_def, output2600_def]
  kernel_rfl

theorem node2601_cond_eq
    (child2599 : Flapjack.WordAlloc.removeDeadStructural input2599 value840 value1 value2 = (output2599, value874, value1))
    (child2600 : Flapjack.WordAlloc.removeDeadStructural input2600 value874 value1 value2 = (output2600, value874, value1)) : Flapjack.WordAlloc.removeDeadStructural input2601 value840 value1 value2 = (output2601, value874, value1) := by
  rw [input2601_def, output2601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2599]
  try dsimp only
  rw [child2600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2599_skip, output2600_skip]
  kernel_rfl

theorem node2602_cond_eq
    (child2598 : Flapjack.WordAlloc.removeDeadStructural input2598 value839 value1 value2 = (output2598, value840, value1))
    (child2601 : Flapjack.WordAlloc.removeDeadStructural input2601 value840 value1 value2 = (output2601, value874, value1)) : Flapjack.WordAlloc.removeDeadStructural input2602 value839 value1 value2 = (output2602, value874, value1) := by
  rw [input2602_def, output2602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2598]
  try dsimp only
  rw [child2601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2598_skip, output2601_skip]
  kernel_rfl

theorem node2603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2603 value874 value1 value2 = (output2603, value874, value1) := by
  rw [input2603_def, output2603_def]
  kernel_rfl

theorem node2604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2604 value874 value1 value2 = (output2604, value875, value1) := by
  rw [input2604_def, output2604_def]
  kernel_rfl

theorem node2605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2605 value875 value1 value2 = (output2605, value876, value1) := by
  rw [input2605_def, output2605_def]
  kernel_rfl

theorem node2606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2606 value876 value1 value2 = (output2606, value877, value1) := by
  rw [input2606_def, output2606_def]
  kernel_rfl

theorem node2607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2607 value877 value1 value2 = (output2607, value878, value1) := by
  rw [input2607_def, output2607_def]
  kernel_rfl

theorem node2608_cond_eq
    (child2606 : Flapjack.WordAlloc.removeDeadStructural input2606 value876 value1 value2 = (output2606, value877, value1))
    (child2607 : Flapjack.WordAlloc.removeDeadStructural input2607 value877 value1 value2 = (output2607, value878, value1)) : Flapjack.WordAlloc.removeDeadStructural input2608 value876 value1 value2 = (output2608, value878, value1) := by
  rw [input2608_def, output2608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2606]
  try dsimp only
  rw [child2607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2606_skip, output2607_skip]
  kernel_rfl

theorem node2609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2609 value878 value1 value2 = (output2609, value879, value1) := by
  rw [input2609_def, output2609_def]
  kernel_rfl

theorem node2610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2610 value879 value1 value2 = (output2610, value880, value1) := by
  rw [input2610_def, output2610_def]
  kernel_rfl

theorem node2611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2611 value880 value1 value2 = (output2611, value881, value1) := by
  rw [input2611_def, output2611_def]
  kernel_rfl

theorem node2612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2612 value881 value1 value2 = (output2612, value882, value1) := by
  rw [input2612_def, output2612_def]
  kernel_rfl

theorem node2613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2613 value882 value1 value2 = (output2613, value883, value1) := by
  rw [input2613_def, output2613_def]
  kernel_rfl

theorem node2614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2614 value883 value1 value2 = (output2614, value876, value1) := by
  rw [input2614_def, output2614_def]
  kernel_rfl

theorem node2615_cond_eq
    (child2613 : Flapjack.WordAlloc.removeDeadStructural input2613 value882 value1 value2 = (output2613, value883, value1))
    (child2614 : Flapjack.WordAlloc.removeDeadStructural input2614 value883 value1 value2 = (output2614, value876, value1)) : Flapjack.WordAlloc.removeDeadStructural input2615 value882 value1 value2 = (output2615, value876, value1) := by
  rw [input2615_def, output2615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2613]
  try dsimp only
  rw [child2614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2613_skip, output2614_skip]
  kernel_rfl

theorem node2616_cond_eq
    (child2612 : Flapjack.WordAlloc.removeDeadStructural input2612 value881 value1 value2 = (output2612, value882, value1))
    (child2615 : Flapjack.WordAlloc.removeDeadStructural input2615 value882 value1 value2 = (output2615, value876, value1)) : Flapjack.WordAlloc.removeDeadStructural input2616 value881 value1 value2 = (output2616, value876, value1) := by
  rw [input2616_def, output2616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2612]
  try dsimp only
  rw [child2615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2612_skip, output2615_skip]
  kernel_rfl

theorem node2617_cond_eq
    (child2611 : Flapjack.WordAlloc.removeDeadStructural input2611 value880 value1 value2 = (output2611, value881, value1))
    (child2616 : Flapjack.WordAlloc.removeDeadStructural input2616 value881 value1 value2 = (output2616, value876, value1)) : Flapjack.WordAlloc.removeDeadStructural input2617 value880 value1 value2 = (output2617, value876, value1) := by
  rw [input2617_def, output2617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2611]
  try dsimp only
  rw [child2616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2611_skip, output2616_skip]
  kernel_rfl

theorem node2618_cond_eq
    (child2610 : Flapjack.WordAlloc.removeDeadStructural input2610 value879 value1 value2 = (output2610, value880, value1))
    (child2617 : Flapjack.WordAlloc.removeDeadStructural input2617 value880 value1 value2 = (output2617, value876, value1)) : Flapjack.WordAlloc.removeDeadStructural input2618 value879 value1 value2 = (output2618, value876, value1) := by
  rw [input2618_def, output2618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2610]
  try dsimp only
  rw [child2617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2610_skip, output2617_skip]
  kernel_rfl

theorem node2619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2619 value876 value1 value2 = (output2619, value884, value1) := by
  rw [input2619_def, output2619_def]
  kernel_rfl

theorem node2620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2620 value884 value1 value2 = (output2620, value884, value1) := by
  rw [input2620_def, output2620_def]
  kernel_rfl

theorem node2621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2621 value884 value1 value2 = (output2621, value885, value1) := by
  rw [input2621_def, output2621_def]
  kernel_rfl

theorem node2622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2622 value885 value1 value2 = (output2622, value886, value1) := by
  rw [input2622_def, output2622_def]
  kernel_rfl

theorem node2623_cond_eq
    (child2621 : Flapjack.WordAlloc.removeDeadStructural input2621 value884 value1 value2 = (output2621, value885, value1))
    (child2622 : Flapjack.WordAlloc.removeDeadStructural input2622 value885 value1 value2 = (output2622, value886, value1)) : Flapjack.WordAlloc.removeDeadStructural input2623 value884 value1 value2 = (output2623, value886, value1) := by
  rw [input2623_def, output2623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2621]
  try dsimp only
  rw [child2622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2621_skip, output2622_skip]
  kernel_rfl

theorem node2624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2624 value886 value1 value2 = (output2624, value887, value1) := by
  rw [input2624_def, output2624_def]
  kernel_rfl

theorem node2625_cond_eq
    (child2623 : Flapjack.WordAlloc.removeDeadStructural input2623 value884 value1 value2 = (output2623, value886, value1))
    (child2624 : Flapjack.WordAlloc.removeDeadStructural input2624 value886 value1 value2 = (output2624, value887, value1)) : Flapjack.WordAlloc.removeDeadStructural input2625 value884 value1 value2 = (output2625, value887, value1) := by
  rw [input2625_def, output2625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2623]
  try dsimp only
  rw [child2624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2623_skip, output2624_skip]
  kernel_rfl

theorem node2626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2626 value887 value1 value2 = (output2626, value888, value1) := by
  rw [input2626_def, output2626_def]
  kernel_rfl

theorem node2627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2627 value888 value1 value2 = (output2627, value889, value1) := by
  rw [input2627_def, output2627_def]
  kernel_rfl

theorem node2628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2628 value889 value1 value2 = (output2628, value890, value1) := by
  rw [input2628_def, output2628_def]
  kernel_rfl

theorem node2629_cond_eq
    (child2627 : Flapjack.WordAlloc.removeDeadStructural input2627 value888 value1 value2 = (output2627, value889, value1))
    (child2628 : Flapjack.WordAlloc.removeDeadStructural input2628 value889 value1 value2 = (output2628, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input2629 value888 value1 value2 = (output2629, value890, value1) := by
  rw [input2629_def, output2629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2627]
  try dsimp only
  rw [child2628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2627_skip, output2628_skip]
  kernel_rfl

theorem node2630_cond_eq
    (child2626 : Flapjack.WordAlloc.removeDeadStructural input2626 value887 value1 value2 = (output2626, value888, value1))
    (child2629 : Flapjack.WordAlloc.removeDeadStructural input2629 value888 value1 value2 = (output2629, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input2630 value887 value1 value2 = (output2630, value890, value1) := by
  rw [input2630_def, output2630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2626]
  try dsimp only
  rw [child2629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2626_skip, output2629_skip]
  kernel_rfl

theorem node2631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2631 value890 value1 value2 = (output2631, value890, value1) := by
  rw [input2631_def, output2631_def]
  kernel_rfl

theorem node2632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2632 value890 value1 value2 = (output2632, value890, value1) := by
  rw [input2632_def, output2632_def]
  kernel_rfl

theorem node2633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2633 value890 value1 value2 = (output2633, value890, value1) := by
  rw [input2633_def, output2633_def]
  kernel_rfl

theorem node2634_cond_eq
    (child2632 : Flapjack.WordAlloc.removeDeadStructural input2632 value890 value1 value2 = (output2632, value890, value1))
    (child2633 : Flapjack.WordAlloc.removeDeadStructural input2633 value890 value1 value2 = (output2633, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input2634 value890 value1 value2 = (output2634, value890, value1) := by
  rw [input2634_def, output2634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2632]
  try dsimp only
  rw [child2633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2632_skip, output2633_skip]
  kernel_rfl

theorem node2635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2635 value890 value1 value2 = (output2635, value891, value1) := by
  rw [input2635_def, output2635_def]
  kernel_rfl

theorem node2636_cond_eq
    (child2634 : Flapjack.WordAlloc.removeDeadStructural input2634 value890 value1 value2 = (output2634, value890, value1))
    (child2635 : Flapjack.WordAlloc.removeDeadStructural input2635 value890 value1 value2 = (output2635, value891, value1)) : Flapjack.WordAlloc.removeDeadStructural input2636 value890 value1 value2 = (output2636, value891, value1) := by
  rw [input2636_def, output2636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2634]
  try dsimp only
  rw [child2635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2634_skip, output2635_skip]
  kernel_rfl

theorem node2637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2637 value891 value1 value2 = (output2637, value892, value1) := by
  rw [input2637_def, output2637_def]
  kernel_rfl

theorem node2638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2638 value892 value1 value2 = (output2638, value893, value1) := by
  rw [input2638_def, output2638_def]
  kernel_rfl

theorem node2639_cond_eq
    (child2637 : Flapjack.WordAlloc.removeDeadStructural input2637 value891 value1 value2 = (output2637, value892, value1))
    (child2638 : Flapjack.WordAlloc.removeDeadStructural input2638 value892 value1 value2 = (output2638, value893, value1)) : Flapjack.WordAlloc.removeDeadStructural input2639 value891 value1 value2 = (output2639, value893, value1) := by
  rw [input2639_def, output2639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2637]
  try dsimp only
  rw [child2638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2637_skip, output2638_skip]
  kernel_rfl

theorem node2640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2640 value893 value1 value2 = (output2640, value893, value1) := by
  rw [input2640_def, output2640_def]
  kernel_rfl

theorem node2641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2641 value893 value1 value2 = (output2641, value893, value1) := by
  rw [input2641_def, output2641_def]
  kernel_rfl

theorem node2642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2642 value893 value1 value2 = (output2642, value893, value1) := by
  rw [input2642_def, output2642_def]
  kernel_rfl

theorem node2643_cond_eq
    (child2641 : Flapjack.WordAlloc.removeDeadStructural input2641 value893 value1 value2 = (output2641, value893, value1))
    (child2642 : Flapjack.WordAlloc.removeDeadStructural input2642 value893 value1 value2 = (output2642, value893, value1)) : Flapjack.WordAlloc.removeDeadStructural input2643 value893 value1 value2 = (output2643, value893, value1) := by
  rw [input2643_def, output2643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2641]
  try dsimp only
  rw [child2642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2641_skip, output2642_skip]
  kernel_rfl

theorem node2644_cond_eq
    (child2640 : Flapjack.WordAlloc.removeDeadStructural input2640 value893 value1 value2 = (output2640, value893, value1))
    (child2643 : Flapjack.WordAlloc.removeDeadStructural input2643 value893 value1 value2 = (output2643, value893, value1)) : Flapjack.WordAlloc.removeDeadStructural input2644 value893 value1 value2 = (output2644, value893, value1) := by
  rw [input2644_def, output2644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2640]
  try dsimp only
  rw [child2643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2640_skip, output2643_skip]
  kernel_rfl

theorem node2645_cond_eq
    (child2639 : Flapjack.WordAlloc.removeDeadStructural input2639 value891 value1 value2 = (output2639, value893, value1))
    (child2644 : Flapjack.WordAlloc.removeDeadStructural input2644 value893 value1 value2 = (output2644, value893, value1)) : Flapjack.WordAlloc.removeDeadStructural input2645 value891 value1 value2 = (output2645, value893, value1) := by
  rw [input2645_def, output2645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2639]
  try dsimp only
  rw [child2644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2639_skip, output2644_skip]
  kernel_rfl

theorem node2646_cond_eq
    (child2636 : Flapjack.WordAlloc.removeDeadStructural input2636 value890 value1 value2 = (output2636, value891, value1))
    (child2645 : Flapjack.WordAlloc.removeDeadStructural input2645 value891 value1 value2 = (output2645, value893, value1)) : Flapjack.WordAlloc.removeDeadStructural input2646 value890 value1 value2 = (output2646, value893, value1) := by
  rw [input2646_def, output2646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2636]
  try dsimp only
  rw [child2645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2636_skip, output2645_skip]
  kernel_rfl

theorem node2647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2647 value890 value1 value2 = (output2647, value890, value1) := by
  rw [input2647_def, output2647_def]
  kernel_rfl

theorem node2648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2648 value890 value1 value2 = (output2648, value890, value1) := by
  rw [input2648_def, output2648_def]
  kernel_rfl

theorem node2649_cond_eq
    (child2647 : Flapjack.WordAlloc.removeDeadStructural input2647 value890 value1 value2 = (output2647, value890, value1))
    (child2648 : Flapjack.WordAlloc.removeDeadStructural input2648 value890 value1 value2 = (output2648, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input2649 value890 value1 value2 = (output2649, value890, value1) := by
  rw [input2649_def, output2649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2647]
  try dsimp only
  rw [child2648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2647_skip, output2648_skip]
  kernel_rfl

theorem node2650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2650 value890 value1 value2 = (output2650, value894, value1) := by
  rw [input2650_def, output2650_def]
  kernel_rfl

theorem node2651_cond_eq
    (child2649 : Flapjack.WordAlloc.removeDeadStructural input2649 value890 value1 value2 = (output2649, value890, value1))
    (child2650 : Flapjack.WordAlloc.removeDeadStructural input2650 value890 value1 value2 = (output2650, value894, value1)) : Flapjack.WordAlloc.removeDeadStructural input2651 value890 value1 value2 = (output2651, value894, value1) := by
  rw [input2651_def, output2651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2649]
  try dsimp only
  rw [child2650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2649_skip, output2650_skip]
  kernel_rfl

theorem node2652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2652 value894 value1 value2 = (output2652, value894, value1) := by
  rw [input2652_def, output2652_def]
  kernel_rfl

theorem node2653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2653 value894 value1 value2 = (output2653, value894, value1) := by
  rw [input2653_def, output2653_def]
  kernel_rfl

theorem node2654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2654 value894 value1 value2 = (output2654, value894, value1) := by
  rw [input2654_def, output2654_def]
  kernel_rfl

theorem node2655_cond_eq
    (child2653 : Flapjack.WordAlloc.removeDeadStructural input2653 value894 value1 value2 = (output2653, value894, value1))
    (child2654 : Flapjack.WordAlloc.removeDeadStructural input2654 value894 value1 value2 = (output2654, value894, value1)) : Flapjack.WordAlloc.removeDeadStructural input2655 value894 value1 value2 = (output2655, value894, value1) := by
  rw [input2655_def, output2655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2653]
  try dsimp only
  rw [child2654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2653_skip, output2654_skip]
  kernel_rfl

theorem node2656_cond_eq
    (child2652 : Flapjack.WordAlloc.removeDeadStructural input2652 value894 value1 value2 = (output2652, value894, value1))
    (child2655 : Flapjack.WordAlloc.removeDeadStructural input2655 value894 value1 value2 = (output2655, value894, value1)) : Flapjack.WordAlloc.removeDeadStructural input2656 value894 value1 value2 = (output2656, value894, value1) := by
  rw [input2656_def, output2656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2652]
  try dsimp only
  rw [child2655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2652_skip, output2655_skip]
  kernel_rfl

theorem node2657_cond_eq
    (child2651 : Flapjack.WordAlloc.removeDeadStructural input2651 value890 value1 value2 = (output2651, value894, value1))
    (child2656 : Flapjack.WordAlloc.removeDeadStructural input2656 value894 value1 value2 = (output2656, value894, value1)) : Flapjack.WordAlloc.removeDeadStructural input2657 value890 value1 value2 = (output2657, value894, value1) := by
  rw [input2657_def, output2657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2651]
  try dsimp only
  rw [child2656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2651_skip, output2656_skip]
  kernel_rfl

theorem node2658_cond_eq
    (child2646 : Flapjack.WordAlloc.removeDeadStructural input2646 value890 value1 value2 = (output2646, value893, value1))
    (child2657 : Flapjack.WordAlloc.removeDeadStructural input2657 value890 value1 value2 = (output2657, value894, value1)) : Flapjack.WordAlloc.removeDeadStructural input2658 value890 value1 value2 = (output2658, value896, value1) := by
  rw [input2658_def, output2658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2646]
  try dsimp only
  rw [child2657]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2646_skip, output2657_skip]
  kernel_rfl

theorem node2659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2659 value896 value1 value2 = (output2659, value894, value1) := by
  rw [input2659_def, output2659_def]
  kernel_rfl

theorem node2660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2660 value894 value1 value2 = (output2660, value897, value1) := by
  rw [input2660_def, output2660_def]
  kernel_rfl

theorem node2661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2661 value897 value1 value2 = (output2661, value897, value1) := by
  rw [input2661_def, output2661_def]
  kernel_rfl

theorem node2662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2662 value897 value1 value2 = (output2662, value898, value1) := by
  rw [input2662_def, output2662_def]
  kernel_rfl

theorem node2663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2663 value898 value1 value2 = (output2663, value899, value1) := by
  rw [input2663_def, output2663_def]
  kernel_rfl

theorem node2664_cond_eq
    (child2662 : Flapjack.WordAlloc.removeDeadStructural input2662 value897 value1 value2 = (output2662, value898, value1))
    (child2663 : Flapjack.WordAlloc.removeDeadStructural input2663 value898 value1 value2 = (output2663, value899, value1)) : Flapjack.WordAlloc.removeDeadStructural input2664 value897 value1 value2 = (output2664, value899, value1) := by
  rw [input2664_def, output2664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2662]
  try dsimp only
  rw [child2663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2662_skip, output2663_skip]
  kernel_rfl

theorem node2665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2665 value899 value1 value2 = (output2665, value900, value1) := by
  rw [input2665_def, output2665_def]
  kernel_rfl

theorem node2666_cond_eq
    (child2664 : Flapjack.WordAlloc.removeDeadStructural input2664 value897 value1 value2 = (output2664, value899, value1))
    (child2665 : Flapjack.WordAlloc.removeDeadStructural input2665 value899 value1 value2 = (output2665, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input2666 value897 value1 value2 = (output2666, value900, value1) := by
  rw [input2666_def, output2666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2664]
  try dsimp only
  rw [child2665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2664_skip, output2665_skip]
  kernel_rfl

theorem node2667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2667 value900 value1 value2 = (output2667, value901, value1) := by
  rw [input2667_def, output2667_def]
  kernel_rfl

theorem node2668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2668 value901 value1 value2 = (output2668, value902, value1) := by
  rw [input2668_def, output2668_def]
  kernel_rfl

theorem node2669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2669 value902 value1 value2 = (output2669, value903, value1) := by
  rw [input2669_def, output2669_def]
  kernel_rfl

theorem node2670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2670 value903 value1 value2 = (output2670, value904, value1) := by
  rw [input2670_def, output2670_def]
  kernel_rfl

theorem node2671_cond_eq
    (child2669 : Flapjack.WordAlloc.removeDeadStructural input2669 value902 value1 value2 = (output2669, value903, value1))
    (child2670 : Flapjack.WordAlloc.removeDeadStructural input2670 value903 value1 value2 = (output2670, value904, value1)) : Flapjack.WordAlloc.removeDeadStructural input2671 value902 value1 value2 = (output2671, value904, value1) := by
  rw [input2671_def, output2671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2669]
  try dsimp only
  rw [child2670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2669_skip, output2670_skip]
  kernel_rfl

theorem node2672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2672 value904 value1 value2 = (output2672, value905, value1) := by
  rw [input2672_def, output2672_def]
  kernel_rfl

theorem node2673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2673 value905 value1 value2 = (output2673, value906, value1) := by
  rw [input2673_def, output2673_def]
  kernel_rfl

theorem node2674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2674 value906 value1 value2 = (output2674, value907, value1) := by
  rw [input2674_def, output2674_def]
  kernel_rfl

theorem node2675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2675 value907 value1 value2 = (output2675, value908, value1) := by
  rw [input2675_def, output2675_def]
  kernel_rfl

theorem node2676_cond_eq
    (child2674 : Flapjack.WordAlloc.removeDeadStructural input2674 value906 value1 value2 = (output2674, value907, value1))
    (child2675 : Flapjack.WordAlloc.removeDeadStructural input2675 value907 value1 value2 = (output2675, value908, value1)) : Flapjack.WordAlloc.removeDeadStructural input2676 value906 value1 value2 = (output2676, value908, value1) := by
  rw [input2676_def, output2676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2674]
  try dsimp only
  rw [child2675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2674_skip, output2675_skip]
  kernel_rfl

theorem node2677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2677 value908 value1 value2 = (output2677, value909, value1) := by
  rw [input2677_def, output2677_def]
  kernel_rfl

theorem node2678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2678 value909 value1 value2 = (output2678, value910, value1) := by
  rw [input2678_def, output2678_def]
  kernel_rfl

theorem node2679_cond_eq
    (child2677 : Flapjack.WordAlloc.removeDeadStructural input2677 value908 value1 value2 = (output2677, value909, value1))
    (child2678 : Flapjack.WordAlloc.removeDeadStructural input2678 value909 value1 value2 = (output2678, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input2679 value908 value1 value2 = (output2679, value910, value1) := by
  rw [input2679_def, output2679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2677]
  try dsimp only
  rw [child2678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2677_skip, output2678_skip]
  kernel_rfl

theorem node2680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2680 value910 value1 value2 = (output2680, value911, value1) := by
  rw [input2680_def, output2680_def]
  kernel_rfl

theorem node2681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2681 value911 value1 value2 = (output2681, value912, value1) := by
  rw [input2681_def, output2681_def]
  kernel_rfl

theorem node2682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2682 value912 value1 value2 = (output2682, value913, value1) := by
  rw [input2682_def, output2682_def]
  kernel_rfl

theorem node2683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2683 value913 value1 value2 = (output2683, value914, value1) := by
  rw [input2683_def, output2683_def]
  kernel_rfl

theorem node2684_cond_eq
    (child2682 : Flapjack.WordAlloc.removeDeadStructural input2682 value912 value1 value2 = (output2682, value913, value1))
    (child2683 : Flapjack.WordAlloc.removeDeadStructural input2683 value913 value1 value2 = (output2683, value914, value1)) : Flapjack.WordAlloc.removeDeadStructural input2684 value912 value1 value2 = (output2684, value914, value1) := by
  rw [input2684_def, output2684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2682]
  try dsimp only
  rw [child2683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2682_skip, output2683_skip]
  kernel_rfl

theorem node2685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2685 value914 value1 value2 = (output2685, value915, value1) := by
  rw [input2685_def, output2685_def]
  kernel_rfl

theorem node2686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2686 value915 value1 value2 = (output2686, value916, value1) := by
  rw [input2686_def, output2686_def]
  kernel_rfl

theorem node2687_cond_eq
    (child2685 : Flapjack.WordAlloc.removeDeadStructural input2685 value914 value1 value2 = (output2685, value915, value1))
    (child2686 : Flapjack.WordAlloc.removeDeadStructural input2686 value915 value1 value2 = (output2686, value916, value1)) : Flapjack.WordAlloc.removeDeadStructural input2687 value914 value1 value2 = (output2687, value916, value1) := by
  rw [input2687_def, output2687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2685]
  try dsimp only
  rw [child2686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2685_skip, output2686_skip]
  kernel_rfl

theorem node2688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2688 value916 value1 value2 = (output2688, value917, value1) := by
  rw [input2688_def, output2688_def]
  kernel_rfl

theorem node2689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2689 value917 value1 value2 = (output2689, value918, value1) := by
  rw [input2689_def, output2689_def]
  kernel_rfl

theorem node2690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2690 value918 value1 value2 = (output2690, value919, value1) := by
  rw [input2690_def, output2690_def]
  kernel_rfl

theorem node2691_cond_eq
    (child2689 : Flapjack.WordAlloc.removeDeadStructural input2689 value917 value1 value2 = (output2689, value918, value1))
    (child2690 : Flapjack.WordAlloc.removeDeadStructural input2690 value918 value1 value2 = (output2690, value919, value1)) : Flapjack.WordAlloc.removeDeadStructural input2691 value917 value1 value2 = (output2691, value919, value1) := by
  rw [input2691_def, output2691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2689]
  try dsimp only
  rw [child2690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2689_skip, output2690_skip]
  kernel_rfl

theorem node2692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2692 value919 value1 value2 = (output2692, value920, value1) := by
  rw [input2692_def, output2692_def]
  kernel_rfl

theorem node2693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2693 value920 value1 value2 = (output2693, value921, value1) := by
  rw [input2693_def, output2693_def]
  kernel_rfl

theorem node2694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2694 value921 value1 value2 = (output2694, value922, value1) := by
  rw [input2694_def, output2694_def]
  kernel_rfl

theorem node2695_cond_eq
    (child2693 : Flapjack.WordAlloc.removeDeadStructural input2693 value920 value1 value2 = (output2693, value921, value1))
    (child2694 : Flapjack.WordAlloc.removeDeadStructural input2694 value921 value1 value2 = (output2694, value922, value1)) : Flapjack.WordAlloc.removeDeadStructural input2695 value920 value1 value2 = (output2695, value922, value1) := by
  rw [input2695_def, output2695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2693]
  try dsimp only
  rw [child2694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2693_skip, output2694_skip]
  kernel_rfl

theorem node2696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2696 value922 value1 value2 = (output2696, value923, value1) := by
  rw [input2696_def, output2696_def]
  kernel_rfl

theorem node2697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2697 value923 value1 value2 = (output2697, value924, value1) := by
  rw [input2697_def, output2697_def]
  kernel_rfl

theorem node2698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2698 value924 value1 value2 = (output2698, value925, value1) := by
  rw [input2698_def, output2698_def]
  kernel_rfl

theorem node2699_cond_eq
    (child2697 : Flapjack.WordAlloc.removeDeadStructural input2697 value923 value1 value2 = (output2697, value924, value1))
    (child2698 : Flapjack.WordAlloc.removeDeadStructural input2698 value924 value1 value2 = (output2698, value925, value1)) : Flapjack.WordAlloc.removeDeadStructural input2699 value923 value1 value2 = (output2699, value925, value1) := by
  rw [input2699_def, output2699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2697]
  try dsimp only
  rw [child2698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2697_skip, output2698_skip]
  kernel_rfl

theorem node2700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2700 value925 value1 value2 = (output2700, value926, value1) := by
  rw [input2700_def, output2700_def]
  kernel_rfl

theorem node2701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2701 value926 value1 value2 = (output2701, value927, value1) := by
  rw [input2701_def, output2701_def]
  kernel_rfl

theorem node2702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2702 value927 value1 value2 = (output2702, value928, value1) := by
  rw [input2702_def, output2702_def]
  kernel_rfl

theorem node2703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2703 value928 value1 value2 = (output2703, value929, value1) := by
  rw [input2703_def, output2703_def]
  kernel_rfl

theorem node2704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2704 value929 value1 value2 = (output2704, value930, value1) := by
  rw [input2704_def, output2704_def]
  kernel_rfl

theorem node2705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2705 value930 value1 value2 = (output2705, value931, value1) := by
  rw [input2705_def, output2705_def]
  kernel_rfl

theorem node2706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2706 value931 value1 value2 = (output2706, value932, value1) := by
  rw [input2706_def, output2706_def]
  kernel_rfl

theorem node2707_cond_eq
    (child2705 : Flapjack.WordAlloc.removeDeadStructural input2705 value930 value1 value2 = (output2705, value931, value1))
    (child2706 : Flapjack.WordAlloc.removeDeadStructural input2706 value931 value1 value2 = (output2706, value932, value1)) : Flapjack.WordAlloc.removeDeadStructural input2707 value930 value1 value2 = (output2707, value932, value1) := by
  rw [input2707_def, output2707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2705]
  try dsimp only
  rw [child2706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2705_skip, output2706_skip]
  kernel_rfl

theorem node2708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2708 value932 value1 value2 = (output2708, value933, value1) := by
  rw [input2708_def, output2708_def]
  kernel_rfl

theorem node2709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2709 value933 value1 value2 = (output2709, value934, value1) := by
  rw [input2709_def, output2709_def]
  kernel_rfl

theorem node2710_cond_eq
    (child2708 : Flapjack.WordAlloc.removeDeadStructural input2708 value932 value1 value2 = (output2708, value933, value1))
    (child2709 : Flapjack.WordAlloc.removeDeadStructural input2709 value933 value1 value2 = (output2709, value934, value1)) : Flapjack.WordAlloc.removeDeadStructural input2710 value932 value1 value2 = (output2710, value934, value1) := by
  rw [input2710_def, output2710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2708]
  try dsimp only
  rw [child2709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2708_skip, output2709_skip]
  kernel_rfl

theorem node2711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2711 value934 value1 value2 = (output2711, value935, value1) := by
  rw [input2711_def, output2711_def]
  kernel_rfl

theorem node2712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2712 value935 value1 value2 = (output2712, value936, value1) := by
  rw [input2712_def, output2712_def]
  kernel_rfl

theorem node2713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2713 value936 value1 value2 = (output2713, value937, value1) := by
  rw [input2713_def, output2713_def]
  kernel_rfl

theorem node2714_cond_eq
    (child2712 : Flapjack.WordAlloc.removeDeadStructural input2712 value935 value1 value2 = (output2712, value936, value1))
    (child2713 : Flapjack.WordAlloc.removeDeadStructural input2713 value936 value1 value2 = (output2713, value937, value1)) : Flapjack.WordAlloc.removeDeadStructural input2714 value935 value1 value2 = (output2714, value937, value1) := by
  rw [input2714_def, output2714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2712]
  try dsimp only
  rw [child2713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2712_skip, output2713_skip]
  kernel_rfl

theorem node2715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2715 value937 value1 value2 = (output2715, value938, value1) := by
  rw [input2715_def, output2715_def]
  kernel_rfl

theorem node2716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2716 value938 value1 value2 = (output2716, value939, value1) := by
  rw [input2716_def, output2716_def]
  kernel_rfl

theorem node2717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2717 value939 value1 value2 = (output2717, value940, value1) := by
  rw [input2717_def, output2717_def]
  kernel_rfl

theorem node2718_cond_eq
    (child2716 : Flapjack.WordAlloc.removeDeadStructural input2716 value938 value1 value2 = (output2716, value939, value1))
    (child2717 : Flapjack.WordAlloc.removeDeadStructural input2717 value939 value1 value2 = (output2717, value940, value1)) : Flapjack.WordAlloc.removeDeadStructural input2718 value938 value1 value2 = (output2718, value940, value1) := by
  rw [input2718_def, output2718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2716]
  try dsimp only
  rw [child2717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2716_skip, output2717_skip]
  kernel_rfl

theorem node2719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2719 value940 value1 value2 = (output2719, value941, value1) := by
  rw [input2719_def, output2719_def]
  kernel_rfl

theorem node2720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2720 value941 value1 value2 = (output2720, value942, value1) := by
  rw [input2720_def, output2720_def]
  kernel_rfl

theorem node2721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2721 value942 value1 value2 = (output2721, value943, value1) := by
  rw [input2721_def, output2721_def]
  kernel_rfl

theorem node2722_cond_eq
    (child2720 : Flapjack.WordAlloc.removeDeadStructural input2720 value941 value1 value2 = (output2720, value942, value1))
    (child2721 : Flapjack.WordAlloc.removeDeadStructural input2721 value942 value1 value2 = (output2721, value943, value1)) : Flapjack.WordAlloc.removeDeadStructural input2722 value941 value1 value2 = (output2722, value943, value1) := by
  rw [input2722_def, output2722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2720]
  try dsimp only
  rw [child2721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2720_skip, output2721_skip]
  kernel_rfl

theorem node2723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2723 value943 value1 value2 = (output2723, value944, value1) := by
  rw [input2723_def, output2723_def]
  kernel_rfl

theorem node2724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2724 value944 value1 value2 = (output2724, value945, value1) := by
  rw [input2724_def, output2724_def]
  kernel_rfl

theorem node2725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2725 value945 value1 value2 = (output2725, value946, value1) := by
  rw [input2725_def, output2725_def]
  kernel_rfl

theorem node2726_cond_eq
    (child2724 : Flapjack.WordAlloc.removeDeadStructural input2724 value944 value1 value2 = (output2724, value945, value1))
    (child2725 : Flapjack.WordAlloc.removeDeadStructural input2725 value945 value1 value2 = (output2725, value946, value1)) : Flapjack.WordAlloc.removeDeadStructural input2726 value944 value1 value2 = (output2726, value946, value1) := by
  rw [input2726_def, output2726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2724]
  try dsimp only
  rw [child2725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2724_skip, output2725_skip]
  kernel_rfl

theorem node2727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2727 value946 value1 value2 = (output2727, value947, value1) := by
  rw [input2727_def, output2727_def]
  kernel_rfl

theorem node2728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2728 value947 value1 value2 = (output2728, value948, value1) := by
  rw [input2728_def, output2728_def]
  kernel_rfl

theorem node2729_cond_eq
    (child2727 : Flapjack.WordAlloc.removeDeadStructural input2727 value946 value1 value2 = (output2727, value947, value1))
    (child2728 : Flapjack.WordAlloc.removeDeadStructural input2728 value947 value1 value2 = (output2728, value948, value1)) : Flapjack.WordAlloc.removeDeadStructural input2729 value946 value1 value2 = (output2729, value948, value1) := by
  rw [input2729_def, output2729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2727]
  try dsimp only
  rw [child2728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2727_skip, output2728_skip]
  kernel_rfl

theorem node2730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2730 value948 value1 value2 = (output2730, value949, value1) := by
  rw [input2730_def, output2730_def]
  kernel_rfl

theorem node2731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2731 value949 value1 value2 = (output2731, value950, value1) := by
  rw [input2731_def, output2731_def]
  kernel_rfl

theorem node2732_cond_eq
    (child2730 : Flapjack.WordAlloc.removeDeadStructural input2730 value948 value1 value2 = (output2730, value949, value1))
    (child2731 : Flapjack.WordAlloc.removeDeadStructural input2731 value949 value1 value2 = (output2731, value950, value1)) : Flapjack.WordAlloc.removeDeadStructural input2732 value948 value1 value2 = (output2732, value950, value1) := by
  rw [input2732_def, output2732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2730]
  try dsimp only
  rw [child2731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2730_skip, output2731_skip]
  kernel_rfl

theorem node2733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2733 value950 value1 value2 = (output2733, value951, value1) := by
  rw [input2733_def, output2733_def]
  kernel_rfl

theorem node2734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2734 value951 value1 value2 = (output2734, value952, value1) := by
  rw [input2734_def, output2734_def]
  kernel_rfl

theorem node2735_cond_eq
    (child2733 : Flapjack.WordAlloc.removeDeadStructural input2733 value950 value1 value2 = (output2733, value951, value1))
    (child2734 : Flapjack.WordAlloc.removeDeadStructural input2734 value951 value1 value2 = (output2734, value952, value1)) : Flapjack.WordAlloc.removeDeadStructural input2735 value950 value1 value2 = (output2735, value952, value1) := by
  rw [input2735_def, output2735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2733]
  try dsimp only
  rw [child2734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2733_skip, output2734_skip]
  kernel_rfl

theorem node2736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2736 value952 value1 value2 = (output2736, value953, value1) := by
  rw [input2736_def, output2736_def]
  kernel_rfl

theorem node2737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2737 value953 value1 value2 = (output2737, value954, value1) := by
  rw [input2737_def, output2737_def]
  kernel_rfl

theorem node2738_cond_eq
    (child2736 : Flapjack.WordAlloc.removeDeadStructural input2736 value952 value1 value2 = (output2736, value953, value1))
    (child2737 : Flapjack.WordAlloc.removeDeadStructural input2737 value953 value1 value2 = (output2737, value954, value1)) : Flapjack.WordAlloc.removeDeadStructural input2738 value952 value1 value2 = (output2738, value954, value1) := by
  rw [input2738_def, output2738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2736]
  try dsimp only
  rw [child2737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2736_skip, output2737_skip]
  kernel_rfl

theorem node2739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2739 value954 value1 value2 = (output2739, value955, value1) := by
  rw [input2739_def, output2739_def]
  kernel_rfl

theorem node2740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2740 value955 value1 value2 = (output2740, value956, value1) := by
  rw [input2740_def, output2740_def]
  kernel_rfl

theorem node2741_cond_eq
    (child2739 : Flapjack.WordAlloc.removeDeadStructural input2739 value954 value1 value2 = (output2739, value955, value1))
    (child2740 : Flapjack.WordAlloc.removeDeadStructural input2740 value955 value1 value2 = (output2740, value956, value1)) : Flapjack.WordAlloc.removeDeadStructural input2741 value954 value1 value2 = (output2741, value956, value1) := by
  rw [input2741_def, output2741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2739]
  try dsimp only
  rw [child2740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2739_skip, output2740_skip]
  kernel_rfl

theorem node2742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2742 value956 value1 value2 = (output2742, value957, value1) := by
  rw [input2742_def, output2742_def]
  kernel_rfl

theorem node2743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2743 value957 value1 value2 = (output2743, value958, value1) := by
  rw [input2743_def, output2743_def]
  kernel_rfl

theorem node2744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2744 value958 value1 value2 = (output2744, value959, value1) := by
  rw [input2744_def, output2744_def]
  kernel_rfl

theorem node2745_cond_eq
    (child2743 : Flapjack.WordAlloc.removeDeadStructural input2743 value957 value1 value2 = (output2743, value958, value1))
    (child2744 : Flapjack.WordAlloc.removeDeadStructural input2744 value958 value1 value2 = (output2744, value959, value1)) : Flapjack.WordAlloc.removeDeadStructural input2745 value957 value1 value2 = (output2745, value959, value1) := by
  rw [input2745_def, output2745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2743]
  try dsimp only
  rw [child2744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2743_skip, output2744_skip]
  kernel_rfl

theorem node2746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2746 value959 value1 value2 = (output2746, value960, value1) := by
  rw [input2746_def, output2746_def]
  kernel_rfl

theorem node2747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2747 value960 value1 value2 = (output2747, value961, value1) := by
  rw [input2747_def, output2747_def]
  kernel_rfl

theorem node2748_cond_eq
    (child2746 : Flapjack.WordAlloc.removeDeadStructural input2746 value959 value1 value2 = (output2746, value960, value1))
    (child2747 : Flapjack.WordAlloc.removeDeadStructural input2747 value960 value1 value2 = (output2747, value961, value1)) : Flapjack.WordAlloc.removeDeadStructural input2748 value959 value1 value2 = (output2748, value961, value1) := by
  rw [input2748_def, output2748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2746]
  try dsimp only
  rw [child2747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2746_skip, output2747_skip]
  kernel_rfl

theorem node2749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2749 value961 value1 value2 = (output2749, value962, value1) := by
  rw [input2749_def, output2749_def]
  kernel_rfl

theorem node2750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2750 value962 value1 value2 = (output2750, value963, value1) := by
  rw [input2750_def, output2750_def]
  kernel_rfl

theorem node2751_cond_eq
    (child2749 : Flapjack.WordAlloc.removeDeadStructural input2749 value961 value1 value2 = (output2749, value962, value1))
    (child2750 : Flapjack.WordAlloc.removeDeadStructural input2750 value962 value1 value2 = (output2750, value963, value1)) : Flapjack.WordAlloc.removeDeadStructural input2751 value961 value1 value2 = (output2751, value963, value1) := by
  rw [input2751_def, output2751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2749]
  try dsimp only
  rw [child2750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2749_skip, output2750_skip]
  kernel_rfl

theorem node2752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2752 value963 value1 value2 = (output2752, value961, value1) := by
  rw [input2752_def, output2752_def]
  kernel_rfl

theorem node2753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2753 value961 value1 value2 = (output2753, value964, value1) := by
  rw [input2753_def, output2753_def]
  kernel_rfl

theorem node2754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2754 value964 value1 value2 = (output2754, value965, value1) := by
  rw [input2754_def, output2754_def]
  kernel_rfl

theorem node2755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2755 value965 value1 value2 = (output2755, value965, value1) := by
  rw [input2755_def, output2755_def]
  kernel_rfl

theorem node2756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2756 value965 value1 value2 = (output2756, value966, value1) := by
  rw [input2756_def, output2756_def]
  kernel_rfl

theorem node2757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2757 value966 value1 value2 = (output2757, value966, value1) := by
  rw [input2757_def, output2757_def]
  kernel_rfl

theorem node2758_cond_eq
    (child2756 : Flapjack.WordAlloc.removeDeadStructural input2756 value965 value1 value2 = (output2756, value966, value1))
    (child2757 : Flapjack.WordAlloc.removeDeadStructural input2757 value966 value1 value2 = (output2757, value966, value1)) : Flapjack.WordAlloc.removeDeadStructural input2758 value965 value1 value2 = (output2758, value966, value1) := by
  rw [input2758_def, output2758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2756]
  try dsimp only
  rw [child2757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2756_skip, output2757_skip]
  kernel_rfl

theorem node2759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2759 value966 value1 value2 = (output2759, value967, value1) := by
  rw [input2759_def, output2759_def]
  kernel_rfl

theorem node2760_cond_eq
    (child2758 : Flapjack.WordAlloc.removeDeadStructural input2758 value965 value1 value2 = (output2758, value966, value1))
    (child2759 : Flapjack.WordAlloc.removeDeadStructural input2759 value966 value1 value2 = (output2759, value967, value1)) : Flapjack.WordAlloc.removeDeadStructural input2760 value965 value1 value2 = (output2760, value967, value1) := by
  rw [input2760_def, output2760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2758]
  try dsimp only
  rw [child2759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2758_skip, output2759_skip]
  kernel_rfl

theorem node2761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2761 value967 value1 value2 = (output2761, value967, value1) := by
  rw [input2761_def, output2761_def]
  kernel_rfl

theorem node2762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2762 value967 value1 value2 = (output2762, value968, value1) := by
  rw [input2762_def, output2762_def]
  kernel_rfl

theorem node2763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2763 value968 value1 value2 = (output2763, value969, value1) := by
  rw [input2763_def, output2763_def]
  kernel_rfl

theorem node2764_cond_eq
    (child2762 : Flapjack.WordAlloc.removeDeadStructural input2762 value967 value1 value2 = (output2762, value968, value1))
    (child2763 : Flapjack.WordAlloc.removeDeadStructural input2763 value968 value1 value2 = (output2763, value969, value1)) : Flapjack.WordAlloc.removeDeadStructural input2764 value967 value1 value2 = (output2764, value969, value1) := by
  rw [input2764_def, output2764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2762]
  try dsimp only
  rw [child2763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2762_skip, output2763_skip]
  kernel_rfl

theorem node2765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2765 value969 value1 value2 = (output2765, value970, value1) := by
  rw [input2765_def, output2765_def]
  kernel_rfl

theorem node2766_cond_eq
    (child2764 : Flapjack.WordAlloc.removeDeadStructural input2764 value967 value1 value2 = (output2764, value969, value1))
    (child2765 : Flapjack.WordAlloc.removeDeadStructural input2765 value969 value1 value2 = (output2765, value970, value1)) : Flapjack.WordAlloc.removeDeadStructural input2766 value967 value1 value2 = (output2766, value970, value1) := by
  rw [input2766_def, output2766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2764]
  try dsimp only
  rw [child2765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2764_skip, output2765_skip]
  kernel_rfl

theorem node2767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2767 value970 value1 value2 = (output2767, value971, value1) := by
  rw [input2767_def, output2767_def]
  kernel_rfl

theorem node2768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2768 value971 value1 value2 = (output2768, value972, value1) := by
  rw [input2768_def, output2768_def]
  kernel_rfl

theorem node2769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2769 value972 value1 value2 = (output2769, value973, value1) := by
  rw [input2769_def, output2769_def]
  kernel_rfl

theorem node2770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2770 value973 value1 value2 = (output2770, value974, value1) := by
  rw [input2770_def, output2770_def]
  kernel_rfl

theorem node2771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2771 value974 value1 value2 = (output2771, value975, value1) := by
  rw [input2771_def, output2771_def]
  kernel_rfl

theorem node2772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2772 value975 value1 value2 = (output2772, value975, value1) := by
  rw [input2772_def, output2772_def]
  kernel_rfl

theorem node2773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2773 value975 value1 value2 = (output2773, value976, value1) := by
  rw [input2773_def, output2773_def]
  kernel_rfl

theorem node2774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2774 value976 value1 value2 = (output2774, value977, value1) := by
  rw [input2774_def, output2774_def]
  kernel_rfl

theorem node2775_cond_eq
    (child2773 : Flapjack.WordAlloc.removeDeadStructural input2773 value975 value1 value2 = (output2773, value976, value1))
    (child2774 : Flapjack.WordAlloc.removeDeadStructural input2774 value976 value1 value2 = (output2774, value977, value1)) : Flapjack.WordAlloc.removeDeadStructural input2775 value975 value1 value2 = (output2775, value977, value1) := by
  rw [input2775_def, output2775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2773]
  try dsimp only
  rw [child2774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2773_skip, output2774_skip]
  kernel_rfl

theorem node2776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2776 value977 value1 value2 = (output2776, value978, value1) := by
  rw [input2776_def, output2776_def]
  kernel_rfl

theorem node2777_cond_eq
    (child2775 : Flapjack.WordAlloc.removeDeadStructural input2775 value975 value1 value2 = (output2775, value977, value1))
    (child2776 : Flapjack.WordAlloc.removeDeadStructural input2776 value977 value1 value2 = (output2776, value978, value1)) : Flapjack.WordAlloc.removeDeadStructural input2777 value975 value1 value2 = (output2777, value978, value1) := by
  rw [input2777_def, output2777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2775]
  try dsimp only
  rw [child2776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2775_skip, output2776_skip]
  kernel_rfl

theorem node2778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2778 value978 value1 value2 = (output2778, value979, value1) := by
  rw [input2778_def, output2778_def]
  kernel_rfl

theorem node2779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2779 value979 value1 value2 = (output2779, value980, value1) := by
  rw [input2779_def, output2779_def]
  kernel_rfl

theorem node2780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2780 value980 value1 value2 = (output2780, value981, value1) := by
  rw [input2780_def, output2780_def]
  kernel_rfl

theorem node2781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2781 value981 value1 value2 = (output2781, value982, value1) := by
  rw [input2781_def, output2781_def]
  kernel_rfl

theorem node2782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2782 value982 value1 value2 = (output2782, value983, value1) := by
  rw [input2782_def, output2782_def]
  kernel_rfl

theorem node2783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2783 value983 value1 value2 = (output2783, value984, value1) := by
  rw [input2783_def, output2783_def]
  kernel_rfl

theorem node2784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2784 value984 value1 value2 = (output2784, value985, value1) := by
  rw [input2784_def, output2784_def]
  kernel_rfl

theorem node2785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2785 value985 value1 value2 = (output2785, value986, value1) := by
  rw [input2785_def, output2785_def]
  kernel_rfl

theorem node2786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2786 value986 value1 value2 = (output2786, value986, value1) := by
  rw [input2786_def, output2786_def]
  kernel_rfl

theorem node2787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2787 value986 value1 value2 = (output2787, value987, value1) := by
  rw [input2787_def, output2787_def]
  kernel_rfl

theorem node2788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2788 value987 value1 value2 = (output2788, value988, value1) := by
  rw [input2788_def, output2788_def]
  kernel_rfl

theorem node2789_cond_eq
    (child2787 : Flapjack.WordAlloc.removeDeadStructural input2787 value986 value1 value2 = (output2787, value987, value1))
    (child2788 : Flapjack.WordAlloc.removeDeadStructural input2788 value987 value1 value2 = (output2788, value988, value1)) : Flapjack.WordAlloc.removeDeadStructural input2789 value986 value1 value2 = (output2789, value988, value1) := by
  rw [input2789_def, output2789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2787]
  try dsimp only
  rw [child2788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2787_skip, output2788_skip]
  kernel_rfl

theorem node2790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2790 value988 value1 value2 = (output2790, value989, value1) := by
  rw [input2790_def, output2790_def]
  kernel_rfl

theorem node2791_cond_eq
    (child2789 : Flapjack.WordAlloc.removeDeadStructural input2789 value986 value1 value2 = (output2789, value988, value1))
    (child2790 : Flapjack.WordAlloc.removeDeadStructural input2790 value988 value1 value2 = (output2790, value989, value1)) : Flapjack.WordAlloc.removeDeadStructural input2791 value986 value1 value2 = (output2791, value989, value1) := by
  rw [input2791_def, output2791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2789]
  try dsimp only
  rw [child2790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2789_skip, output2790_skip]
  kernel_rfl

theorem node2792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2792 value989 value1 value2 = (output2792, value990, value1) := by
  rw [input2792_def, output2792_def]
  kernel_rfl

theorem node2793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2793 value990 value1 value2 = (output2793, value991, value1) := by
  rw [input2793_def, output2793_def]
  kernel_rfl

theorem node2794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2794 value991 value1 value2 = (output2794, value992, value1) := by
  rw [input2794_def, output2794_def]
  kernel_rfl

theorem node2795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2795 value992 value1 value2 = (output2795, value993, value1) := by
  rw [input2795_def, output2795_def]
  kernel_rfl

theorem node2796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2796 value993 value1 value2 = (output2796, value994, value1) := by
  rw [input2796_def, output2796_def]
  kernel_rfl

theorem node2797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2797 value994 value1 value2 = (output2797, value995, value1) := by
  rw [input2797_def, output2797_def]
  kernel_rfl

theorem node2798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2798 value995 value1 value2 = (output2798, value996, value1) := by
  rw [input2798_def, output2798_def]
  kernel_rfl

theorem node2799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2799 value996 value1 value2 = (output2799, value997, value1) := by
  rw [input2799_def, output2799_def]
  kernel_rfl

theorem node2800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2800 value997 value1 value2 = (output2800, value998, value1) := by
  rw [input2800_def, output2800_def]
  kernel_rfl

theorem node2801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2801 value998 value1 value2 = (output2801, value999, value1) := by
  rw [input2801_def, output2801_def]
  kernel_rfl

theorem node2802_cond_eq
    (child2800 : Flapjack.WordAlloc.removeDeadStructural input2800 value997 value1 value2 = (output2800, value998, value1))
    (child2801 : Flapjack.WordAlloc.removeDeadStructural input2801 value998 value1 value2 = (output2801, value999, value1)) : Flapjack.WordAlloc.removeDeadStructural input2802 value997 value1 value2 = (output2802, value999, value1) := by
  rw [input2802_def, output2802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2800]
  try dsimp only
  rw [child2801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2800_skip, output2801_skip]
  kernel_rfl

theorem node2803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2803 value999 value1 value2 = (output2803, value1000, value1) := by
  rw [input2803_def, output2803_def]
  kernel_rfl

theorem node2804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2804 value1000 value1 value2 = (output2804, value1001, value1) := by
  rw [input2804_def, output2804_def]
  kernel_rfl

theorem node2805_cond_eq
    (child2803 : Flapjack.WordAlloc.removeDeadStructural input2803 value999 value1 value2 = (output2803, value1000, value1))
    (child2804 : Flapjack.WordAlloc.removeDeadStructural input2804 value1000 value1 value2 = (output2804, value1001, value1)) : Flapjack.WordAlloc.removeDeadStructural input2805 value999 value1 value2 = (output2805, value1001, value1) := by
  rw [input2805_def, output2805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2803]
  try dsimp only
  rw [child2804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2803_skip, output2804_skip]
  kernel_rfl

theorem node2806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2806 value1001 value1 value2 = (output2806, value1002, value1) := by
  rw [input2806_def, output2806_def]
  kernel_rfl

theorem node2807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2807 value1002 value1 value2 = (output2807, value1003, value1) := by
  rw [input2807_def, output2807_def]
  kernel_rfl

theorem node2808_cond_eq
    (child2806 : Flapjack.WordAlloc.removeDeadStructural input2806 value1001 value1 value2 = (output2806, value1002, value1))
    (child2807 : Flapjack.WordAlloc.removeDeadStructural input2807 value1002 value1 value2 = (output2807, value1003, value1)) : Flapjack.WordAlloc.removeDeadStructural input2808 value1001 value1 value2 = (output2808, value1003, value1) := by
  rw [input2808_def, output2808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2806]
  try dsimp only
  rw [child2807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2806_skip, output2807_skip]
  kernel_rfl

theorem node2809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2809 value1003 value1 value2 = (output2809, value1004, value1) := by
  rw [input2809_def, output2809_def]
  kernel_rfl

theorem node2810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2810 value1004 value1 value2 = (output2810, value1005, value1) := by
  rw [input2810_def, output2810_def]
  kernel_rfl

theorem node2811_cond_eq
    (child2809 : Flapjack.WordAlloc.removeDeadStructural input2809 value1003 value1 value2 = (output2809, value1004, value1))
    (child2810 : Flapjack.WordAlloc.removeDeadStructural input2810 value1004 value1 value2 = (output2810, value1005, value1)) : Flapjack.WordAlloc.removeDeadStructural input2811 value1003 value1 value2 = (output2811, value1005, value1) := by
  rw [input2811_def, output2811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2809]
  try dsimp only
  rw [child2810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2809_skip, output2810_skip]
  kernel_rfl

theorem node2812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2812 value1005 value1 value2 = (output2812, value1005, value1) := by
  rw [input2812_def, output2812_def]
  kernel_rfl

theorem node2813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2813 value1005 value1 value2 = (output2813, value1006, value1) := by
  rw [input2813_def, output2813_def]
  kernel_rfl

theorem node2814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2814 value1006 value1 value2 = (output2814, value1007, value1) := by
  rw [input2814_def, output2814_def]
  kernel_rfl

theorem node2815_cond_eq
    (child2813 : Flapjack.WordAlloc.removeDeadStructural input2813 value1005 value1 value2 = (output2813, value1006, value1))
    (child2814 : Flapjack.WordAlloc.removeDeadStructural input2814 value1006 value1 value2 = (output2814, value1007, value1)) : Flapjack.WordAlloc.removeDeadStructural input2815 value1005 value1 value2 = (output2815, value1007, value1) := by
  rw [input2815_def, output2815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2813]
  try dsimp only
  rw [child2814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2813_skip, output2814_skip]
  kernel_rfl

#print axioms node2815_cond_eq
end InitECandidate.Proofs.DeadStages875.Parallel
