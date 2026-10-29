import InitECandidate.Proofs.ClashStages713.Proof26
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree2592_agree : tree2592 = literal2592 := by
  rw [tree2592_def, tree2590_agree, tree2591_agree]
  rfl
theorem node2592_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2592 live2592 coloured2592 = result2592 := by
  rw [tree2592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2590_eq
  unfold live2590 coloured2590 at child
  try dsimp only [live2592, coloured2592]
  rw [child]
  dsimp only [result2590]
  have child := node2591_eq
  unfold live2591 coloured2591 at child
  try dsimp only [live2592, coloured2592]
  rw [child]
  dsimp only [result2591]
  try dsimp only [colour, result2592]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2593_agree : tree2593 = literal2593 := by
  rw [tree2593_def]
  rfl
theorem node2593_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2593 live2593 coloured2593 = result2593 := by
  rw [tree2593_def]
  try dsimp only [colour, result2593]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2594_agree : tree2594 = literal2594 := by
  rw [tree2594_def, tree2592_agree, tree2593_agree]
  rfl
theorem node2594_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2594 live2594 coloured2594 = result2594 := by
  rw [tree2594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2592_eq
  unfold live2592 coloured2592 at child
  try dsimp only [live2594, coloured2594]
  rw [child]
  dsimp only [result2592]
  have child := node2593_eq
  unfold live2593 coloured2593 at child
  try dsimp only [live2594, coloured2594]
  rw [child]
  dsimp only [result2593]
  try dsimp only [colour, result2594]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2595_agree : tree2595 = literal2595 := by
  rw [tree2595_def]
  rfl
theorem node2595_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2595 live2595 coloured2595 = result2595 := by
  rw [tree2595_def]
  try dsimp only [colour, result2595]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2596_agree : tree2596 = literal2596 := by
  rw [tree2596_def, tree2594_agree, tree2595_agree]
  rfl
theorem node2596_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2596 live2596 coloured2596 = result2596 := by
  rw [tree2596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2594_eq
  unfold live2594 coloured2594 at child
  try dsimp only [live2596, coloured2596]
  rw [child]
  dsimp only [result2594]
  have child := node2595_eq
  unfold live2595 coloured2595 at child
  try dsimp only [live2596, coloured2596]
  rw [child]
  dsimp only [result2595]
  try dsimp only [colour, result2596]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2597_agree : tree2597 = literal2597 := by
  rw [tree2597_def]
  rfl
theorem node2597_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2597 live2597 coloured2597 = result2597 := by
  rw [tree2597_def]
  try dsimp only [colour, result2597]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2598_agree : tree2598 = literal2598 := by
  rw [tree2598_def, tree2596_agree, tree2597_agree]
  rfl
theorem node2598_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2598 live2598 coloured2598 = result2598 := by
  rw [tree2598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2596_eq
  unfold live2596 coloured2596 at child
  try dsimp only [live2598, coloured2598]
  rw [child]
  dsimp only [result2596]
  have child := node2597_eq
  unfold live2597 coloured2597 at child
  try dsimp only [live2598, coloured2598]
  rw [child]
  dsimp only [result2597]
  try dsimp only [colour, result2598]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2599_agree : tree2599 = literal2599 := by
  rw [tree2599_def]
  rfl
theorem node2599_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2599 live2599 coloured2599 = result2599 := by
  rw [tree2599_def]
  try dsimp only [colour, result2599]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2600_agree : tree2600 = literal2600 := by
  rw [tree2600_def, tree2598_agree, tree2599_agree]
  rfl
theorem node2600_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2600 live2600 coloured2600 = result2600 := by
  rw [tree2600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2598_eq
  unfold live2598 coloured2598 at child
  try dsimp only [live2600, coloured2600]
  rw [child]
  dsimp only [result2598]
  have child := node2599_eq
  unfold live2599 coloured2599 at child
  try dsimp only [live2600, coloured2600]
  rw [child]
  dsimp only [result2599]
  try dsimp only [colour, result2600]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2601_agree : tree2601 = literal2601 := by
  rw [tree2601_def]
  rfl
theorem node2601_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2601 live2601 coloured2601 = result2601 := by
  rw [tree2601_def]
  try dsimp only [colour, result2601]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2602_agree : tree2602 = literal2602 := by
  rw [tree2602_def, tree2600_agree, tree2601_agree]
  rfl
theorem node2602_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2602 live2602 coloured2602 = result2602 := by
  rw [tree2602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2600_eq
  unfold live2600 coloured2600 at child
  try dsimp only [live2602, coloured2602]
  rw [child]
  dsimp only [result2600]
  have child := node2601_eq
  unfold live2601 coloured2601 at child
  try dsimp only [live2602, coloured2602]
  rw [child]
  dsimp only [result2601]
  try dsimp only [colour, result2602]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2603_agree : tree2603 = literal2603 := by
  rw [tree2603_def]
  rfl
theorem node2603_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2603 live2603 coloured2603 = result2603 := by
  rw [tree2603_def]
  try dsimp only [colour, result2603]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2604_agree : tree2604 = literal2604 := by
  rw [tree2604_def, tree2602_agree, tree2603_agree]
  rfl
theorem node2604_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2604 live2604 coloured2604 = result2604 := by
  rw [tree2604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2602_eq
  unfold live2602 coloured2602 at child
  try dsimp only [live2604, coloured2604]
  rw [child]
  dsimp only [result2602]
  have child := node2603_eq
  unfold live2603 coloured2603 at child
  try dsimp only [live2604, coloured2604]
  rw [child]
  dsimp only [result2603]
  try dsimp only [colour, result2604]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2605_agree : tree2605 = literal2605 := by
  rw [tree2605_def]
  rfl
theorem node2605_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2605 live2605 coloured2605 = result2605 := by
  rw [tree2605_def]
  try dsimp only [colour, result2605]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2606_agree : tree2606 = literal2606 := by
  rw [tree2606_def, tree2604_agree, tree2605_agree]
  rfl
theorem node2606_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2606 live2606 coloured2606 = result2606 := by
  rw [tree2606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2604_eq
  unfold live2604 coloured2604 at child
  try dsimp only [live2606, coloured2606]
  rw [child]
  dsimp only [result2604]
  have child := node2605_eq
  unfold live2605 coloured2605 at child
  try dsimp only [live2606, coloured2606]
  rw [child]
  dsimp only [result2605]
  try dsimp only [colour, result2606]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2607_agree : tree2607 = literal2607 := by
  rw [tree2607_def]
  rfl
theorem node2607_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2607 live2607 coloured2607 = result2607 := by
  rw [tree2607_def]
  try dsimp only [colour, result2607]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2608_agree : tree2608 = literal2608 := by
  rw [tree2608_def, tree2606_agree, tree2607_agree]
  rfl
theorem node2608_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2608 live2608 coloured2608 = result2608 := by
  rw [tree2608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2606_eq
  unfold live2606 coloured2606 at child
  try dsimp only [live2608, coloured2608]
  rw [child]
  dsimp only [result2606]
  have child := node2607_eq
  unfold live2607 coloured2607 at child
  try dsimp only [live2608, coloured2608]
  rw [child]
  dsimp only [result2607]
  try dsimp only [colour, result2608]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2609_agree : tree2609 = literal2609 := by
  rw [tree2609_def]
  rfl
theorem node2609_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2609 live2609 coloured2609 = result2609 := by
  rw [tree2609_def]
  try dsimp only [colour, result2609]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2610_agree : tree2610 = literal2610 := by
  rw [tree2610_def, tree2608_agree, tree2609_agree]
  rfl
theorem node2610_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2610 live2610 coloured2610 = result2610 := by
  rw [tree2610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2608_eq
  unfold live2608 coloured2608 at child
  try dsimp only [live2610, coloured2610]
  rw [child]
  dsimp only [result2608]
  have child := node2609_eq
  unfold live2609 coloured2609 at child
  try dsimp only [live2610, coloured2610]
  rw [child]
  dsimp only [result2609]
  try dsimp only [colour, result2610]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2611_agree : tree2611 = literal2611 := by
  rw [tree2611_def]
  rfl
theorem node2611_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2611 live2611 coloured2611 = result2611 := by
  rw [tree2611_def]
  try dsimp only [colour, result2611]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2612_agree : tree2612 = literal2612 := by
  rw [tree2612_def, tree2610_agree, tree2611_agree]
  rfl
theorem node2612_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2612 live2612 coloured2612 = result2612 := by
  rw [tree2612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2610_eq
  unfold live2610 coloured2610 at child
  try dsimp only [live2612, coloured2612]
  rw [child]
  dsimp only [result2610]
  have child := node2611_eq
  unfold live2611 coloured2611 at child
  try dsimp only [live2612, coloured2612]
  rw [child]
  dsimp only [result2611]
  try dsimp only [colour, result2612]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2613_agree : tree2613 = literal2613 := by
  rw [tree2613_def]
  rfl
theorem node2613_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2613 live2613 coloured2613 = result2613 := by
  rw [tree2613_def]
  try dsimp only [colour, result2613]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2614_agree : tree2614 = literal2614 := by
  rw [tree2614_def, tree2612_agree, tree2613_agree]
  rfl
theorem node2614_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2614 live2614 coloured2614 = result2614 := by
  rw [tree2614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2612_eq
  unfold live2612 coloured2612 at child
  try dsimp only [live2614, coloured2614]
  rw [child]
  dsimp only [result2612]
  have child := node2613_eq
  unfold live2613 coloured2613 at child
  try dsimp only [live2614, coloured2614]
  rw [child]
  dsimp only [result2613]
  try dsimp only [colour, result2614]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2615_agree : tree2615 = literal2615 := by
  rw [tree2615_def]
  rfl
theorem node2615_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2615 live2615 coloured2615 = result2615 := by
  rw [tree2615_def]
  try dsimp only [colour, result2615]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2616_agree : tree2616 = literal2616 := by
  rw [tree2616_def, tree2614_agree, tree2615_agree]
  rfl
theorem node2616_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2616 live2616 coloured2616 = result2616 := by
  rw [tree2616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2614_eq
  unfold live2614 coloured2614 at child
  try dsimp only [live2616, coloured2616]
  rw [child]
  dsimp only [result2614]
  have child := node2615_eq
  unfold live2615 coloured2615 at child
  try dsimp only [live2616, coloured2616]
  rw [child]
  dsimp only [result2615]
  try dsimp only [colour, result2616]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2617_agree : tree2617 = literal2617 := by
  rw [tree2617_def]
  rfl
theorem node2617_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2617 live2617 coloured2617 = result2617 := by
  rw [tree2617_def]
  try dsimp only [colour, result2617]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2618_agree : tree2618 = literal2618 := by
  rw [tree2618_def, tree2616_agree, tree2617_agree]
  rfl
theorem node2618_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2618 live2618 coloured2618 = result2618 := by
  rw [tree2618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2616_eq
  unfold live2616 coloured2616 at child
  try dsimp only [live2618, coloured2618]
  rw [child]
  dsimp only [result2616]
  have child := node2617_eq
  unfold live2617 coloured2617 at child
  try dsimp only [live2618, coloured2618]
  rw [child]
  dsimp only [result2617]
  try dsimp only [colour, result2618]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2619_agree : tree2619 = literal2619 := by
  rw [tree2619_def]
  rfl
theorem node2619_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2619 live2619 coloured2619 = result2619 := by
  rw [tree2619_def]
  try dsimp only [colour, result2619]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2620_agree : tree2620 = literal2620 := by
  rw [tree2620_def, tree2618_agree, tree2619_agree]
  rfl
theorem node2620_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2620 live2620 coloured2620 = result2620 := by
  rw [tree2620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2618_eq
  unfold live2618 coloured2618 at child
  try dsimp only [live2620, coloured2620]
  rw [child]
  dsimp only [result2618]
  have child := node2619_eq
  unfold live2619 coloured2619 at child
  try dsimp only [live2620, coloured2620]
  rw [child]
  dsimp only [result2619]
  try dsimp only [colour, result2620]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2621_agree : tree2621 = literal2621 := by
  rw [tree2621_def]
  rfl
theorem node2621_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2621 live2621 coloured2621 = result2621 := by
  rw [tree2621_def]
  try dsimp only [colour, result2621]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2622_agree : tree2622 = literal2622 := by
  rw [tree2622_def, tree2620_agree, tree2621_agree]
  rfl
theorem node2622_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2622 live2622 coloured2622 = result2622 := by
  rw [tree2622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2620_eq
  unfold live2620 coloured2620 at child
  try dsimp only [live2622, coloured2622]
  rw [child]
  dsimp only [result2620]
  have child := node2621_eq
  unfold live2621 coloured2621 at child
  try dsimp only [live2622, coloured2622]
  rw [child]
  dsimp only [result2621]
  try dsimp only [colour, result2622]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2623_agree : tree2623 = literal2623 := by
  rw [tree2623_def]
  rfl
theorem node2623_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2623 live2623 coloured2623 = result2623 := by
  rw [tree2623_def]
  try dsimp only [colour, result2623]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2624_agree : tree2624 = literal2624 := by
  rw [tree2624_def, tree2622_agree, tree2623_agree]
  rfl
theorem node2624_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2624 live2624 coloured2624 = result2624 := by
  rw [tree2624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2622_eq
  unfold live2622 coloured2622 at child
  try dsimp only [live2624, coloured2624]
  rw [child]
  dsimp only [result2622]
  have child := node2623_eq
  unfold live2623 coloured2623 at child
  try dsimp only [live2624, coloured2624]
  rw [child]
  dsimp only [result2623]
  try dsimp only [colour, result2624]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2625_agree : tree2625 = literal2625 := by
  rw [tree2625_def]
  rfl
theorem node2625_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2625 live2625 coloured2625 = result2625 := by
  rw [tree2625_def]
  try dsimp only [colour, result2625]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2626_agree : tree2626 = literal2626 := by
  rw [tree2626_def, tree2624_agree, tree2625_agree]
  rfl
theorem node2626_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2626 live2626 coloured2626 = result2626 := by
  rw [tree2626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2624_eq
  unfold live2624 coloured2624 at child
  try dsimp only [live2626, coloured2626]
  rw [child]
  dsimp only [result2624]
  have child := node2625_eq
  unfold live2625 coloured2625 at child
  try dsimp only [live2626, coloured2626]
  rw [child]
  dsimp only [result2625]
  try dsimp only [colour, result2626]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2627_agree : tree2627 = literal2627 := by
  rw [tree2627_def]
  rfl
theorem node2627_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2627 live2627 coloured2627 = result2627 := by
  rw [tree2627_def]
  try dsimp only [colour, result2627]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2628_agree : tree2628 = literal2628 := by
  rw [tree2628_def, tree2626_agree, tree2627_agree]
  rfl
theorem node2628_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2628 live2628 coloured2628 = result2628 := by
  rw [tree2628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2626_eq
  unfold live2626 coloured2626 at child
  try dsimp only [live2628, coloured2628]
  rw [child]
  dsimp only [result2626]
  have child := node2627_eq
  unfold live2627 coloured2627 at child
  try dsimp only [live2628, coloured2628]
  rw [child]
  dsimp only [result2627]
  try dsimp only [colour, result2628]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2629_agree : tree2629 = literal2629 := by
  rw [tree2629_def]
  rfl
theorem node2629_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2629 live2629 coloured2629 = result2629 := by
  rw [tree2629_def]
  try dsimp only [colour, result2629]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2630_agree : tree2630 = literal2630 := by
  rw [tree2630_def, tree2628_agree, tree2629_agree]
  rfl
theorem node2630_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2630 live2630 coloured2630 = result2630 := by
  rw [tree2630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2628_eq
  unfold live2628 coloured2628 at child
  try dsimp only [live2630, coloured2630]
  rw [child]
  dsimp only [result2628]
  have child := node2629_eq
  unfold live2629 coloured2629 at child
  try dsimp only [live2630, coloured2630]
  rw [child]
  dsimp only [result2629]
  try dsimp only [colour, result2630]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2631_agree : tree2631 = literal2631 := by
  rw [tree2631_def]
  rfl
theorem node2631_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2631 live2631 coloured2631 = result2631 := by
  rw [tree2631_def]
  try dsimp only [colour, result2631]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2632_agree : tree2632 = literal2632 := by
  rw [tree2632_def, tree2630_agree, tree2631_agree]
  rfl
theorem node2632_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2632 live2632 coloured2632 = result2632 := by
  rw [tree2632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2630_eq
  unfold live2630 coloured2630 at child
  try dsimp only [live2632, coloured2632]
  rw [child]
  dsimp only [result2630]
  have child := node2631_eq
  unfold live2631 coloured2631 at child
  try dsimp only [live2632, coloured2632]
  rw [child]
  dsimp only [result2631]
  try dsimp only [colour, result2632]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2633_agree : tree2633 = literal2633 := by
  rw [tree2633_def]
  rfl
theorem node2633_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2633 live2633 coloured2633 = result2633 := by
  rw [tree2633_def]
  try dsimp only [colour, result2633]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2634_agree : tree2634 = literal2634 := by
  rw [tree2634_def, tree2632_agree, tree2633_agree]
  rfl
theorem node2634_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2634 live2634 coloured2634 = result2634 := by
  rw [tree2634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2632_eq
  unfold live2632 coloured2632 at child
  try dsimp only [live2634, coloured2634]
  rw [child]
  dsimp only [result2632]
  have child := node2633_eq
  unfold live2633 coloured2633 at child
  try dsimp only [live2634, coloured2634]
  rw [child]
  dsimp only [result2633]
  try dsimp only [colour, result2634]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2635_agree : tree2635 = literal2635 := by
  rw [tree2635_def]
  rfl
theorem node2635_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2635 live2635 coloured2635 = result2635 := by
  rw [tree2635_def]
  try dsimp only [colour, result2635]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2636_agree : tree2636 = literal2636 := by
  rw [tree2636_def, tree2634_agree, tree2635_agree]
  rfl
theorem node2636_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2636 live2636 coloured2636 = result2636 := by
  rw [tree2636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2634_eq
  unfold live2634 coloured2634 at child
  try dsimp only [live2636, coloured2636]
  rw [child]
  dsimp only [result2634]
  have child := node2635_eq
  unfold live2635 coloured2635 at child
  try dsimp only [live2636, coloured2636]
  rw [child]
  dsimp only [result2635]
  try dsimp only [colour, result2636]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2637_agree : tree2637 = literal2637 := by
  rw [tree2637_def]
  rfl
theorem node2637_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2637 live2637 coloured2637 = result2637 := by
  rw [tree2637_def]
  try dsimp only [colour, result2637]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2638_agree : tree2638 = literal2638 := by
  rw [tree2638_def, tree2636_agree, tree2637_agree]
  rfl
theorem node2638_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2638 live2638 coloured2638 = result2638 := by
  rw [tree2638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2636_eq
  unfold live2636 coloured2636 at child
  try dsimp only [live2638, coloured2638]
  rw [child]
  dsimp only [result2636]
  have child := node2637_eq
  unfold live2637 coloured2637 at child
  try dsimp only [live2638, coloured2638]
  rw [child]
  dsimp only [result2637]
  try dsimp only [colour, result2638]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2639_agree : tree2639 = literal2639 := by
  rw [tree2639_def]
  rfl
theorem node2639_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2639 live2639 coloured2639 = result2639 := by
  rw [tree2639_def]
  try dsimp only [colour, result2639]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2640_agree : tree2640 = literal2640 := by
  rw [tree2640_def, tree2638_agree, tree2639_agree]
  rfl
theorem node2640_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2640 live2640 coloured2640 = result2640 := by
  rw [tree2640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2638_eq
  unfold live2638 coloured2638 at child
  try dsimp only [live2640, coloured2640]
  rw [child]
  dsimp only [result2638]
  have child := node2639_eq
  unfold live2639 coloured2639 at child
  try dsimp only [live2640, coloured2640]
  rw [child]
  dsimp only [result2639]
  try dsimp only [colour, result2640]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2641_agree : tree2641 = literal2641 := by
  rw [tree2641_def]
  rfl
theorem node2641_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2641 live2641 coloured2641 = result2641 := by
  rw [tree2641_def]
  try dsimp only [colour, result2641]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2642_agree : tree2642 = literal2642 := by
  rw [tree2642_def, tree2640_agree, tree2641_agree]
  rfl
theorem node2642_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2642 live2642 coloured2642 = result2642 := by
  rw [tree2642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2640_eq
  unfold live2640 coloured2640 at child
  try dsimp only [live2642, coloured2642]
  rw [child]
  dsimp only [result2640]
  have child := node2641_eq
  unfold live2641 coloured2641 at child
  try dsimp only [live2642, coloured2642]
  rw [child]
  dsimp only [result2641]
  try dsimp only [colour, result2642]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2643_agree : tree2643 = literal2643 := by
  rw [tree2643_def]
  rfl
theorem node2643_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2643 live2643 coloured2643 = result2643 := by
  rw [tree2643_def]
  try dsimp only [colour, result2643]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2644_agree : tree2644 = literal2644 := by
  rw [tree2644_def, tree2642_agree, tree2643_agree]
  rfl
theorem node2644_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2644 live2644 coloured2644 = result2644 := by
  rw [tree2644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2642_eq
  unfold live2642 coloured2642 at child
  try dsimp only [live2644, coloured2644]
  rw [child]
  dsimp only [result2642]
  have child := node2643_eq
  unfold live2643 coloured2643 at child
  try dsimp only [live2644, coloured2644]
  rw [child]
  dsimp only [result2643]
  try dsimp only [colour, result2644]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2645_agree : tree2645 = literal2645 := by
  rw [tree2645_def]
  rfl
theorem node2645_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2645 live2645 coloured2645 = result2645 := by
  rw [tree2645_def]
  try dsimp only [colour, result2645]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2646_agree : tree2646 = literal2646 := by
  rw [tree2646_def, tree2644_agree, tree2645_agree]
  rfl
theorem node2646_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2646 live2646 coloured2646 = result2646 := by
  rw [tree2646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2644_eq
  unfold live2644 coloured2644 at child
  try dsimp only [live2646, coloured2646]
  rw [child]
  dsimp only [result2644]
  have child := node2645_eq
  unfold live2645 coloured2645 at child
  try dsimp only [live2646, coloured2646]
  rw [child]
  dsimp only [result2645]
  try dsimp only [colour, result2646]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2647_agree : tree2647 = literal2647 := by
  rw [tree2647_def]
  rfl
theorem node2647_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2647 live2647 coloured2647 = result2647 := by
  rw [tree2647_def]
  try dsimp only [colour, result2647]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2648_agree : tree2648 = literal2648 := by
  rw [tree2648_def, tree2646_agree, tree2647_agree]
  rfl
theorem node2648_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2648 live2648 coloured2648 = result2648 := by
  rw [tree2648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2646_eq
  unfold live2646 coloured2646 at child
  try dsimp only [live2648, coloured2648]
  rw [child]
  dsimp only [result2646]
  have child := node2647_eq
  unfold live2647 coloured2647 at child
  try dsimp only [live2648, coloured2648]
  rw [child]
  dsimp only [result2647]
  try dsimp only [colour, result2648]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2649_agree : tree2649 = literal2649 := by
  rw [tree2649_def]
  rfl
theorem node2649_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2649 live2649 coloured2649 = result2649 := by
  rw [tree2649_def]
  try dsimp only [colour, result2649]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2650_agree : tree2650 = literal2650 := by
  rw [tree2650_def, tree2648_agree, tree2649_agree]
  rfl
theorem node2650_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2650 live2650 coloured2650 = result2650 := by
  rw [tree2650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2648_eq
  unfold live2648 coloured2648 at child
  try dsimp only [live2650, coloured2650]
  rw [child]
  dsimp only [result2648]
  have child := node2649_eq
  unfold live2649 coloured2649 at child
  try dsimp only [live2650, coloured2650]
  rw [child]
  dsimp only [result2649]
  try dsimp only [colour, result2650]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2651_agree : tree2651 = literal2651 := by
  rw [tree2651_def]
  rfl
theorem node2651_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2651 live2651 coloured2651 = result2651 := by
  rw [tree2651_def]
  try dsimp only [colour, result2651]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2652_agree : tree2652 = literal2652 := by
  rw [tree2652_def, tree2650_agree, tree2651_agree]
  rfl
theorem node2652_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2652 live2652 coloured2652 = result2652 := by
  rw [tree2652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2650_eq
  unfold live2650 coloured2650 at child
  try dsimp only [live2652, coloured2652]
  rw [child]
  dsimp only [result2650]
  have child := node2651_eq
  unfold live2651 coloured2651 at child
  try dsimp only [live2652, coloured2652]
  rw [child]
  dsimp only [result2651]
  try dsimp only [colour, result2652]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2653_agree : tree2653 = literal2653 := by
  rw [tree2653_def]
  rfl
theorem node2653_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2653 live2653 coloured2653 = result2653 := by
  rw [tree2653_def]
  try dsimp only [colour, result2653]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2654_agree : tree2654 = literal2654 := by
  rw [tree2654_def, tree2652_agree, tree2653_agree]
  rfl
theorem node2654_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2654 live2654 coloured2654 = result2654 := by
  rw [tree2654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2652_eq
  unfold live2652 coloured2652 at child
  try dsimp only [live2654, coloured2654]
  rw [child]
  dsimp only [result2652]
  have child := node2653_eq
  unfold live2653 coloured2653 at child
  try dsimp only [live2654, coloured2654]
  rw [child]
  dsimp only [result2653]
  try dsimp only [colour, result2654]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2655_agree : tree2655 = literal2655 := by
  rw [tree2655_def]
  rfl
theorem node2655_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2655 live2655 coloured2655 = result2655 := by
  rw [tree2655_def]
  try dsimp only [colour, result2655]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2656_agree : tree2656 = literal2656 := by
  rw [tree2656_def, tree2654_agree, tree2655_agree]
  rfl
theorem node2656_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2656 live2656 coloured2656 = result2656 := by
  rw [tree2656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2654_eq
  unfold live2654 coloured2654 at child
  try dsimp only [live2656, coloured2656]
  rw [child]
  dsimp only [result2654]
  have child := node2655_eq
  unfold live2655 coloured2655 at child
  try dsimp only [live2656, coloured2656]
  rw [child]
  dsimp only [result2655]
  try dsimp only [colour, result2656]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2657_agree : tree2657 = literal2657 := by
  rw [tree2657_def]
  rfl
theorem node2657_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2657 live2657 coloured2657 = result2657 := by
  rw [tree2657_def]
  try dsimp only [colour, result2657]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2658_agree : tree2658 = literal2658 := by
  rw [tree2658_def, tree2656_agree, tree2657_agree]
  rfl
theorem node2658_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2658 live2658 coloured2658 = result2658 := by
  rw [tree2658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2656_eq
  unfold live2656 coloured2656 at child
  try dsimp only [live2658, coloured2658]
  rw [child]
  dsimp only [result2656]
  have child := node2657_eq
  unfold live2657 coloured2657 at child
  try dsimp only [live2658, coloured2658]
  rw [child]
  dsimp only [result2657]
  try dsimp only [colour, result2658]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2659_agree : tree2659 = literal2659 := by
  rw [tree2659_def]
  rfl
theorem node2659_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2659 live2659 coloured2659 = result2659 := by
  rw [tree2659_def]
  try dsimp only [colour, result2659]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2660_agree : tree2660 = literal2660 := by
  rw [tree2660_def, tree2658_agree, tree2659_agree]
  rfl
theorem node2660_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2660 live2660 coloured2660 = result2660 := by
  rw [tree2660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2658_eq
  unfold live2658 coloured2658 at child
  try dsimp only [live2660, coloured2660]
  rw [child]
  dsimp only [result2658]
  have child := node2659_eq
  unfold live2659 coloured2659 at child
  try dsimp only [live2660, coloured2660]
  rw [child]
  dsimp only [result2659]
  try dsimp only [colour, result2660]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2661_agree : tree2661 = literal2661 := by
  rw [tree2661_def]
  rfl
theorem node2661_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2661 live2661 coloured2661 = result2661 := by
  rw [tree2661_def]
  try dsimp only [colour, result2661]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2662_agree : tree2662 = literal2662 := by
  rw [tree2662_def, tree2660_agree, tree2661_agree]
  rfl
theorem node2662_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2662 live2662 coloured2662 = result2662 := by
  rw [tree2662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2660_eq
  unfold live2660 coloured2660 at child
  try dsimp only [live2662, coloured2662]
  rw [child]
  dsimp only [result2660]
  have child := node2661_eq
  unfold live2661 coloured2661 at child
  try dsimp only [live2662, coloured2662]
  rw [child]
  dsimp only [result2661]
  try dsimp only [colour, result2662]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2663_agree : tree2663 = literal2663 := by
  rw [tree2663_def]
  rfl
theorem node2663_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2663 live2663 coloured2663 = result2663 := by
  rw [tree2663_def]
  try dsimp only [colour, result2663]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2664_agree : tree2664 = literal2664 := by
  rw [tree2664_def, tree2662_agree, tree2663_agree]
  rfl
theorem node2664_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2664 live2664 coloured2664 = result2664 := by
  rw [tree2664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2662_eq
  unfold live2662 coloured2662 at child
  try dsimp only [live2664, coloured2664]
  rw [child]
  dsimp only [result2662]
  have child := node2663_eq
  unfold live2663 coloured2663 at child
  try dsimp only [live2664, coloured2664]
  rw [child]
  dsimp only [result2663]
  try dsimp only [colour, result2664]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2665_agree : tree2665 = literal2665 := by
  rw [tree2665_def]
  rfl
theorem node2665_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2665 live2665 coloured2665 = result2665 := by
  rw [tree2665_def]
  try dsimp only [colour, result2665]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2666_agree : tree2666 = literal2666 := by
  rw [tree2666_def, tree2664_agree, tree2665_agree]
  rfl
theorem node2666_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2666 live2666 coloured2666 = result2666 := by
  rw [tree2666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2664_eq
  unfold live2664 coloured2664 at child
  try dsimp only [live2666, coloured2666]
  rw [child]
  dsimp only [result2664]
  have child := node2665_eq
  unfold live2665 coloured2665 at child
  try dsimp only [live2666, coloured2666]
  rw [child]
  dsimp only [result2665]
  try dsimp only [colour, result2666]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2667_agree : tree2667 = literal2667 := by
  rw [tree2667_def]
  rfl
theorem node2667_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2667 live2667 coloured2667 = result2667 := by
  rw [tree2667_def]
  try dsimp only [colour, result2667]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2668_agree : tree2668 = literal2668 := by
  rw [tree2668_def, tree2666_agree, tree2667_agree]
  rfl
theorem node2668_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2668 live2668 coloured2668 = result2668 := by
  rw [tree2668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2666_eq
  unfold live2666 coloured2666 at child
  try dsimp only [live2668, coloured2668]
  rw [child]
  dsimp only [result2666]
  have child := node2667_eq
  unfold live2667 coloured2667 at child
  try dsimp only [live2668, coloured2668]
  rw [child]
  dsimp only [result2667]
  try dsimp only [colour, result2668]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2669_agree : tree2669 = literal2669 := by
  rw [tree2669_def]
  rfl
theorem node2669_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2669 live2669 coloured2669 = result2669 := by
  rw [tree2669_def]
  try dsimp only [colour, result2669]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2670_agree : tree2670 = literal2670 := by
  rw [tree2670_def, tree2668_agree, tree2669_agree]
  rfl
theorem node2670_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2670 live2670 coloured2670 = result2670 := by
  rw [tree2670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2668_eq
  unfold live2668 coloured2668 at child
  try dsimp only [live2670, coloured2670]
  rw [child]
  dsimp only [result2668]
  have child := node2669_eq
  unfold live2669 coloured2669 at child
  try dsimp only [live2670, coloured2670]
  rw [child]
  dsimp only [result2669]
  try dsimp only [colour, result2670]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2671_agree : tree2671 = literal2671 := by
  rw [tree2671_def]
  rfl
theorem node2671_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2671 live2671 coloured2671 = result2671 := by
  rw [tree2671_def]
  try dsimp only [colour, result2671]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2672_agree : tree2672 = literal2672 := by
  rw [tree2672_def, tree2670_agree, tree2671_agree]
  rfl
theorem node2672_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2672 live2672 coloured2672 = result2672 := by
  rw [tree2672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2670_eq
  unfold live2670 coloured2670 at child
  try dsimp only [live2672, coloured2672]
  rw [child]
  dsimp only [result2670]
  have child := node2671_eq
  unfold live2671 coloured2671 at child
  try dsimp only [live2672, coloured2672]
  rw [child]
  dsimp only [result2671]
  try dsimp only [colour, result2672]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2673_agree : tree2673 = literal2673 := by
  rw [tree2673_def]
  rfl
theorem node2673_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2673 live2673 coloured2673 = result2673 := by
  rw [tree2673_def]
  try dsimp only [colour, result2673]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2674_agree : tree2674 = literal2674 := by
  rw [tree2674_def, tree2672_agree, tree2673_agree]
  rfl
theorem node2674_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2674 live2674 coloured2674 = result2674 := by
  rw [tree2674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2672_eq
  unfold live2672 coloured2672 at child
  try dsimp only [live2674, coloured2674]
  rw [child]
  dsimp only [result2672]
  have child := node2673_eq
  unfold live2673 coloured2673 at child
  try dsimp only [live2674, coloured2674]
  rw [child]
  dsimp only [result2673]
  try dsimp only [colour, result2674]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2675_agree : tree2675 = literal2675 := by
  rw [tree2675_def]
  rfl
theorem node2675_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2675 live2675 coloured2675 = result2675 := by
  rw [tree2675_def]
  try dsimp only [colour, result2675]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2676_agree : tree2676 = literal2676 := by
  rw [tree2676_def, tree2674_agree, tree2675_agree]
  rfl
theorem node2676_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2676 live2676 coloured2676 = result2676 := by
  rw [tree2676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2674_eq
  unfold live2674 coloured2674 at child
  try dsimp only [live2676, coloured2676]
  rw [child]
  dsimp only [result2674]
  have child := node2675_eq
  unfold live2675 coloured2675 at child
  try dsimp only [live2676, coloured2676]
  rw [child]
  dsimp only [result2675]
  try dsimp only [colour, result2676]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2677_agree : tree2677 = literal2677 := by
  rw [tree2677_def]
  rfl
theorem node2677_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2677 live2677 coloured2677 = result2677 := by
  rw [tree2677_def]
  try dsimp only [colour, result2677]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2678_agree : tree2678 = literal2678 := by
  rw [tree2678_def, tree2676_agree, tree2677_agree]
  rfl
theorem node2678_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2678 live2678 coloured2678 = result2678 := by
  rw [tree2678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2676_eq
  unfold live2676 coloured2676 at child
  try dsimp only [live2678, coloured2678]
  rw [child]
  dsimp only [result2676]
  have child := node2677_eq
  unfold live2677 coloured2677 at child
  try dsimp only [live2678, coloured2678]
  rw [child]
  dsimp only [result2677]
  try dsimp only [colour, result2678]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2679_agree : tree2679 = literal2679 := by
  rw [tree2679_def]
  rfl
theorem node2679_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2679 live2679 coloured2679 = result2679 := by
  rw [tree2679_def]
  try dsimp only [colour, result2679]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2680_agree : tree2680 = literal2680 := by
  rw [tree2680_def, tree2678_agree, tree2679_agree]
  rfl
theorem node2680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2680 live2680 coloured2680 = result2680 := by
  rw [tree2680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2678_eq
  unfold live2678 coloured2678 at child
  try dsimp only [live2680, coloured2680]
  rw [child]
  dsimp only [result2678]
  have child := node2679_eq
  unfold live2679 coloured2679 at child
  try dsimp only [live2680, coloured2680]
  rw [child]
  dsimp only [result2679]
  try dsimp only [colour, result2680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2681_agree : tree2681 = literal2681 := by
  rw [tree2681_def]
  rfl
theorem node2681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2681 live2681 coloured2681 = result2681 := by
  rw [tree2681_def]
  try dsimp only [colour, result2681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2682_agree : tree2682 = literal2682 := by
  rw [tree2682_def, tree2680_agree, tree2681_agree]
  rfl
theorem node2682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2682 live2682 coloured2682 = result2682 := by
  rw [tree2682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2680_eq
  unfold live2680 coloured2680 at child
  try dsimp only [live2682, coloured2682]
  rw [child]
  dsimp only [result2680]
  have child := node2681_eq
  unfold live2681 coloured2681 at child
  try dsimp only [live2682, coloured2682]
  rw [child]
  dsimp only [result2681]
  try dsimp only [colour, result2682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2683_agree : tree2683 = literal2683 := by
  rw [tree2683_def]
  rfl
theorem node2683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2683 live2683 coloured2683 = result2683 := by
  rw [tree2683_def]
  try dsimp only [colour, result2683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2684_agree : tree2684 = literal2684 := by
  rw [tree2684_def, tree2682_agree, tree2683_agree]
  rfl
theorem node2684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2684 live2684 coloured2684 = result2684 := by
  rw [tree2684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2682_eq
  unfold live2682 coloured2682 at child
  try dsimp only [live2684, coloured2684]
  rw [child]
  dsimp only [result2682]
  have child := node2683_eq
  unfold live2683 coloured2683 at child
  try dsimp only [live2684, coloured2684]
  rw [child]
  dsimp only [result2683]
  try dsimp only [colour, result2684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2685_agree : tree2685 = literal2685 := by
  rw [tree2685_def]
  rfl
theorem node2685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2685 live2685 coloured2685 = result2685 := by
  rw [tree2685_def]
  try dsimp only [colour, result2685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2686_agree : tree2686 = literal2686 := by
  rw [tree2686_def, tree2684_agree, tree2685_agree]
  rfl
theorem node2686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2686 live2686 coloured2686 = result2686 := by
  rw [tree2686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2684_eq
  unfold live2684 coloured2684 at child
  try dsimp only [live2686, coloured2686]
  rw [child]
  dsimp only [result2684]
  have child := node2685_eq
  unfold live2685 coloured2685 at child
  try dsimp only [live2686, coloured2686]
  rw [child]
  dsimp only [result2685]
  try dsimp only [colour, result2686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2687_agree : tree2687 = literal2687 := by
  rw [tree2687_def]
  rfl
theorem node2687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2687 live2687 coloured2687 = result2687 := by
  rw [tree2687_def]
  try dsimp only [colour, result2687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
