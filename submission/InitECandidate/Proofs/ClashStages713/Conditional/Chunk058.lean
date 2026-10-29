import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree5568_agree_conditional
    (child0 : tree5566 = literal5566)
    (child1 : tree5567 = literal5567) : tree5568 = literal5568 := by
  rw [tree5568_def, child0, child1]
  rfl
theorem node5568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5566 live5566 coloured5566 = result5566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5567 live5567 coloured5567 = result5567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5568 live5568 coloured5568 = result5568 := by
  rw [tree5568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5566 coloured5566 at child
  try dsimp only [live5568, coloured5568]
  rw [child]
  dsimp only [result5566]
  have child := child1
  unfold live5567 coloured5567 at child
  try dsimp only [live5568, coloured5568]
  rw [child]
  dsimp only [result5567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5569_agree_conditional : tree5569 = literal5569 := by
  rw [tree5569_def]
  rfl
theorem node5569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5569 live5569 coloured5569 = result5569 := by
  rw [tree5569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5570_agree_conditional
    (child0 : tree5568 = literal5568)
    (child1 : tree5569 = literal5569) : tree5570 = literal5570 := by
  rw [tree5570_def, child0, child1]
  rfl
theorem node5570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5568 live5568 coloured5568 = result5568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5569 live5569 coloured5569 = result5569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5570 live5570 coloured5570 = result5570 := by
  rw [tree5570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5568 coloured5568 at child
  try dsimp only [live5570, coloured5570]
  rw [child]
  dsimp only [result5568]
  have child := child1
  unfold live5569 coloured5569 at child
  try dsimp only [live5570, coloured5570]
  rw [child]
  dsimp only [result5569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5571_agree_conditional : tree5571 = literal5571 := by
  rw [tree5571_def]
  rfl
theorem node5571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5571 live5571 coloured5571 = result5571 := by
  rw [tree5571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5572_agree_conditional
    (child0 : tree5570 = literal5570)
    (child1 : tree5571 = literal5571) : tree5572 = literal5572 := by
  rw [tree5572_def, child0, child1]
  rfl
theorem node5572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5570 live5570 coloured5570 = result5570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5571 live5571 coloured5571 = result5571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5572 live5572 coloured5572 = result5572 := by
  rw [tree5572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5570 coloured5570 at child
  try dsimp only [live5572, coloured5572]
  rw [child]
  dsimp only [result5570]
  have child := child1
  unfold live5571 coloured5571 at child
  try dsimp only [live5572, coloured5572]
  rw [child]
  dsimp only [result5571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5573_agree_conditional : tree5573 = literal5573 := by
  rw [tree5573_def]
  rfl
theorem node5573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5573 live5573 coloured5573 = result5573 := by
  rw [tree5573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5574_agree_conditional
    (child0 : tree5572 = literal5572)
    (child1 : tree5573 = literal5573) : tree5574 = literal5574 := by
  rw [tree5574_def, child0, child1]
  rfl
theorem node5574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5572 live5572 coloured5572 = result5572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5573 live5573 coloured5573 = result5573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5574 live5574 coloured5574 = result5574 := by
  rw [tree5574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5572 coloured5572 at child
  try dsimp only [live5574, coloured5574]
  rw [child]
  dsimp only [result5572]
  have child := child1
  unfold live5573 coloured5573 at child
  try dsimp only [live5574, coloured5574]
  rw [child]
  dsimp only [result5573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5575_agree_conditional : tree5575 = literal5575 := by
  rw [tree5575_def]
  rfl
theorem node5575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5575 live5575 coloured5575 = result5575 := by
  rw [tree5575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5576_agree_conditional
    (child0 : tree5574 = literal5574)
    (child1 : tree5575 = literal5575) : tree5576 = literal5576 := by
  rw [tree5576_def, child0, child1]
  rfl
theorem node5576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5574 live5574 coloured5574 = result5574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5575 live5575 coloured5575 = result5575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5576 live5576 coloured5576 = result5576 := by
  rw [tree5576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5574 coloured5574 at child
  try dsimp only [live5576, coloured5576]
  rw [child]
  dsimp only [result5574]
  have child := child1
  unfold live5575 coloured5575 at child
  try dsimp only [live5576, coloured5576]
  rw [child]
  dsimp only [result5575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5577_agree_conditional : tree5577 = literal5577 := by
  rw [tree5577_def]
  rfl
theorem node5577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5577 live5577 coloured5577 = result5577 := by
  rw [tree5577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5578_agree_conditional
    (child0 : tree5576 = literal5576)
    (child1 : tree5577 = literal5577) : tree5578 = literal5578 := by
  rw [tree5578_def, child0, child1]
  rfl
theorem node5578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5576 live5576 coloured5576 = result5576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5577 live5577 coloured5577 = result5577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5578 live5578 coloured5578 = result5578 := by
  rw [tree5578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5576 coloured5576 at child
  try dsimp only [live5578, coloured5578]
  rw [child]
  dsimp only [result5576]
  have child := child1
  unfold live5577 coloured5577 at child
  try dsimp only [live5578, coloured5578]
  rw [child]
  dsimp only [result5577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5579_agree_conditional : tree5579 = literal5579 := by
  rw [tree5579_def]
  rfl
theorem node5579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5579 live5579 coloured5579 = result5579 := by
  rw [tree5579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5580_agree_conditional
    (child0 : tree5578 = literal5578)
    (child1 : tree5579 = literal5579) : tree5580 = literal5580 := by
  rw [tree5580_def, child0, child1]
  rfl
theorem node5580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5578 live5578 coloured5578 = result5578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5579 live5579 coloured5579 = result5579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5580 live5580 coloured5580 = result5580 := by
  rw [tree5580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5578 coloured5578 at child
  try dsimp only [live5580, coloured5580]
  rw [child]
  dsimp only [result5578]
  have child := child1
  unfold live5579 coloured5579 at child
  try dsimp only [live5580, coloured5580]
  rw [child]
  dsimp only [result5579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5581_agree_conditional : tree5581 = literal5581 := by
  rw [tree5581_def]
  rfl
theorem node5581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5581 live5581 coloured5581 = result5581 := by
  rw [tree5581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5582_agree_conditional
    (child0 : tree5580 = literal5580)
    (child1 : tree5581 = literal5581) : tree5582 = literal5582 := by
  rw [tree5582_def, child0, child1]
  rfl
theorem node5582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5580 live5580 coloured5580 = result5580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5581 live5581 coloured5581 = result5581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5582 live5582 coloured5582 = result5582 := by
  rw [tree5582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5580 coloured5580 at child
  try dsimp only [live5582, coloured5582]
  rw [child]
  dsimp only [result5580]
  have child := child1
  unfold live5581 coloured5581 at child
  try dsimp only [live5582, coloured5582]
  rw [child]
  dsimp only [result5581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5583_agree_conditional : tree5583 = literal5583 := by
  rw [tree5583_def]
  rfl
theorem node5583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5583 live5583 coloured5583 = result5583 := by
  rw [tree5583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5584_agree_conditional
    (child0 : tree5582 = literal5582)
    (child1 : tree5583 = literal5583) : tree5584 = literal5584 := by
  rw [tree5584_def, child0, child1]
  rfl
theorem node5584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5582 live5582 coloured5582 = result5582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5583 live5583 coloured5583 = result5583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5584 live5584 coloured5584 = result5584 := by
  rw [tree5584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5582 coloured5582 at child
  try dsimp only [live5584, coloured5584]
  rw [child]
  dsimp only [result5582]
  have child := child1
  unfold live5583 coloured5583 at child
  try dsimp only [live5584, coloured5584]
  rw [child]
  dsimp only [result5583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5585_agree_conditional : tree5585 = literal5585 := by
  rw [tree5585_def]
  rfl
theorem node5585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5585 live5585 coloured5585 = result5585 := by
  rw [tree5585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5586_agree_conditional
    (child0 : tree5584 = literal5584)
    (child1 : tree5585 = literal5585) : tree5586 = literal5586 := by
  rw [tree5586_def, child0, child1]
  rfl
theorem node5586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5584 live5584 coloured5584 = result5584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5585 live5585 coloured5585 = result5585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5586 live5586 coloured5586 = result5586 := by
  rw [tree5586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5584 coloured5584 at child
  try dsimp only [live5586, coloured5586]
  rw [child]
  dsimp only [result5584]
  have child := child1
  unfold live5585 coloured5585 at child
  try dsimp only [live5586, coloured5586]
  rw [child]
  dsimp only [result5585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5587_agree_conditional : tree5587 = literal5587 := by
  rw [tree5587_def]
  rfl
theorem node5587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5587 live5587 coloured5587 = result5587 := by
  rw [tree5587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5588_agree_conditional
    (child0 : tree5586 = literal5586)
    (child1 : tree5587 = literal5587) : tree5588 = literal5588 := by
  rw [tree5588_def, child0, child1]
  rfl
theorem node5588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5586 live5586 coloured5586 = result5586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5587 live5587 coloured5587 = result5587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5588 live5588 coloured5588 = result5588 := by
  rw [tree5588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5586 coloured5586 at child
  try dsimp only [live5588, coloured5588]
  rw [child]
  dsimp only [result5586]
  have child := child1
  unfold live5587 coloured5587 at child
  try dsimp only [live5588, coloured5588]
  rw [child]
  dsimp only [result5587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5589_agree_conditional : tree5589 = literal5589 := by
  rw [tree5589_def]
  rfl
theorem node5589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5589 live5589 coloured5589 = result5589 := by
  rw [tree5589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5590_agree_conditional
    (child0 : tree5588 = literal5588)
    (child1 : tree5589 = literal5589) : tree5590 = literal5590 := by
  rw [tree5590_def, child0, child1]
  rfl
theorem node5590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5588 live5588 coloured5588 = result5588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5589 live5589 coloured5589 = result5589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5590 live5590 coloured5590 = result5590 := by
  rw [tree5590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5588 coloured5588 at child
  try dsimp only [live5590, coloured5590]
  rw [child]
  dsimp only [result5588]
  have child := child1
  unfold live5589 coloured5589 at child
  try dsimp only [live5590, coloured5590]
  rw [child]
  dsimp only [result5589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5591_agree_conditional : tree5591 = literal5591 := by
  rw [tree5591_def]
  rfl
theorem node5591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5591 live5591 coloured5591 = result5591 := by
  rw [tree5591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5592_agree_conditional
    (child0 : tree5590 = literal5590)
    (child1 : tree5591 = literal5591) : tree5592 = literal5592 := by
  rw [tree5592_def, child0, child1]
  rfl
theorem node5592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5590 live5590 coloured5590 = result5590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5591 live5591 coloured5591 = result5591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5592 live5592 coloured5592 = result5592 := by
  rw [tree5592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5590 coloured5590 at child
  try dsimp only [live5592, coloured5592]
  rw [child]
  dsimp only [result5590]
  have child := child1
  unfold live5591 coloured5591 at child
  try dsimp only [live5592, coloured5592]
  rw [child]
  dsimp only [result5591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5593_agree_conditional : tree5593 = literal5593 := by
  rw [tree5593_def]
  rfl
theorem node5593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5593 live5593 coloured5593 = result5593 := by
  rw [tree5593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5594_agree_conditional
    (child0 : tree5592 = literal5592)
    (child1 : tree5593 = literal5593) : tree5594 = literal5594 := by
  rw [tree5594_def, child0, child1]
  rfl
theorem node5594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5592 live5592 coloured5592 = result5592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5593 live5593 coloured5593 = result5593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5594 live5594 coloured5594 = result5594 := by
  rw [tree5594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5592 coloured5592 at child
  try dsimp only [live5594, coloured5594]
  rw [child]
  dsimp only [result5592]
  have child := child1
  unfold live5593 coloured5593 at child
  try dsimp only [live5594, coloured5594]
  rw [child]
  dsimp only [result5593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5595_agree_conditional : tree5595 = literal5595 := by
  rw [tree5595_def]
  rfl
theorem node5595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5595 live5595 coloured5595 = result5595 := by
  rw [tree5595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5596_agree_conditional
    (child0 : tree5594 = literal5594)
    (child1 : tree5595 = literal5595) : tree5596 = literal5596 := by
  rw [tree5596_def, child0, child1]
  rfl
theorem node5596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5594 live5594 coloured5594 = result5594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5595 live5595 coloured5595 = result5595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5596 live5596 coloured5596 = result5596 := by
  rw [tree5596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5594 coloured5594 at child
  try dsimp only [live5596, coloured5596]
  rw [child]
  dsimp only [result5594]
  have child := child1
  unfold live5595 coloured5595 at child
  try dsimp only [live5596, coloured5596]
  rw [child]
  dsimp only [result5595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5597_agree_conditional : tree5597 = literal5597 := by
  rw [tree5597_def]
  rfl
theorem node5597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5597 live5597 coloured5597 = result5597 := by
  rw [tree5597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5598_agree_conditional
    (child0 : tree5596 = literal5596)
    (child1 : tree5597 = literal5597) : tree5598 = literal5598 := by
  rw [tree5598_def, child0, child1]
  rfl
theorem node5598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5596 live5596 coloured5596 = result5596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5597 live5597 coloured5597 = result5597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5598 live5598 coloured5598 = result5598 := by
  rw [tree5598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5596 coloured5596 at child
  try dsimp only [live5598, coloured5598]
  rw [child]
  dsimp only [result5596]
  have child := child1
  unfold live5597 coloured5597 at child
  try dsimp only [live5598, coloured5598]
  rw [child]
  dsimp only [result5597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5599_agree_conditional : tree5599 = literal5599 := by
  rw [tree5599_def]
  rfl
theorem node5599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5599 live5599 coloured5599 = result5599 := by
  rw [tree5599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5600_agree_conditional
    (child0 : tree5598 = literal5598)
    (child1 : tree5599 = literal5599) : tree5600 = literal5600 := by
  rw [tree5600_def, child0, child1]
  rfl
theorem node5600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5598 live5598 coloured5598 = result5598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5599 live5599 coloured5599 = result5599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5600 live5600 coloured5600 = result5600 := by
  rw [tree5600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5598 coloured5598 at child
  try dsimp only [live5600, coloured5600]
  rw [child]
  dsimp only [result5598]
  have child := child1
  unfold live5599 coloured5599 at child
  try dsimp only [live5600, coloured5600]
  rw [child]
  dsimp only [result5599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5601_agree_conditional : tree5601 = literal5601 := by
  rw [tree5601_def]
  rfl
theorem node5601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5601 live5601 coloured5601 = result5601 := by
  rw [tree5601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5602_agree_conditional
    (child0 : tree5600 = literal5600)
    (child1 : tree5601 = literal5601) : tree5602 = literal5602 := by
  rw [tree5602_def, child0, child1]
  rfl
theorem node5602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5600 live5600 coloured5600 = result5600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5601 live5601 coloured5601 = result5601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5602 live5602 coloured5602 = result5602 := by
  rw [tree5602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5600 coloured5600 at child
  try dsimp only [live5602, coloured5602]
  rw [child]
  dsimp only [result5600]
  have child := child1
  unfold live5601 coloured5601 at child
  try dsimp only [live5602, coloured5602]
  rw [child]
  dsimp only [result5601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5603_agree_conditional : tree5603 = literal5603 := by
  rw [tree5603_def]
  rfl
theorem node5603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5603 live5603 coloured5603 = result5603 := by
  rw [tree5603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5604_agree_conditional
    (child0 : tree5602 = literal5602)
    (child1 : tree5603 = literal5603) : tree5604 = literal5604 := by
  rw [tree5604_def, child0, child1]
  rfl
theorem node5604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5602 live5602 coloured5602 = result5602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5603 live5603 coloured5603 = result5603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5604 live5604 coloured5604 = result5604 := by
  rw [tree5604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5602 coloured5602 at child
  try dsimp only [live5604, coloured5604]
  rw [child]
  dsimp only [result5602]
  have child := child1
  unfold live5603 coloured5603 at child
  try dsimp only [live5604, coloured5604]
  rw [child]
  dsimp only [result5603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5605_agree_conditional : tree5605 = literal5605 := by
  rw [tree5605_def]
  rfl
theorem node5605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5605 live5605 coloured5605 = result5605 := by
  rw [tree5605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5606_agree_conditional
    (child0 : tree5604 = literal5604)
    (child1 : tree5605 = literal5605) : tree5606 = literal5606 := by
  rw [tree5606_def, child0, child1]
  rfl
theorem node5606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5604 live5604 coloured5604 = result5604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5605 live5605 coloured5605 = result5605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5606 live5606 coloured5606 = result5606 := by
  rw [tree5606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5604 coloured5604 at child
  try dsimp only [live5606, coloured5606]
  rw [child]
  dsimp only [result5604]
  have child := child1
  unfold live5605 coloured5605 at child
  try dsimp only [live5606, coloured5606]
  rw [child]
  dsimp only [result5605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5607_agree_conditional : tree5607 = literal5607 := by
  rw [tree5607_def]
  rfl
theorem node5607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5607 live5607 coloured5607 = result5607 := by
  rw [tree5607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5608_agree_conditional
    (child0 : tree5606 = literal5606)
    (child1 : tree5607 = literal5607) : tree5608 = literal5608 := by
  rw [tree5608_def, child0, child1]
  rfl
theorem node5608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5606 live5606 coloured5606 = result5606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5607 live5607 coloured5607 = result5607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5608 live5608 coloured5608 = result5608 := by
  rw [tree5608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5606 coloured5606 at child
  try dsimp only [live5608, coloured5608]
  rw [child]
  dsimp only [result5606]
  have child := child1
  unfold live5607 coloured5607 at child
  try dsimp only [live5608, coloured5608]
  rw [child]
  dsimp only [result5607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5609_agree_conditional : tree5609 = literal5609 := by
  rw [tree5609_def]
  rfl
theorem node5609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5609 live5609 coloured5609 = result5609 := by
  rw [tree5609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5610_agree_conditional
    (child0 : tree5608 = literal5608)
    (child1 : tree5609 = literal5609) : tree5610 = literal5610 := by
  rw [tree5610_def, child0, child1]
  rfl
theorem node5610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5608 live5608 coloured5608 = result5608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5609 live5609 coloured5609 = result5609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5610 live5610 coloured5610 = result5610 := by
  rw [tree5610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5608 coloured5608 at child
  try dsimp only [live5610, coloured5610]
  rw [child]
  dsimp only [result5608]
  have child := child1
  unfold live5609 coloured5609 at child
  try dsimp only [live5610, coloured5610]
  rw [child]
  dsimp only [result5609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5611_agree_conditional : tree5611 = literal5611 := by
  rw [tree5611_def]
  rfl
theorem node5611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5611 live5611 coloured5611 = result5611 := by
  rw [tree5611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5612_agree_conditional
    (child0 : tree5610 = literal5610)
    (child1 : tree5611 = literal5611) : tree5612 = literal5612 := by
  rw [tree5612_def, child0, child1]
  rfl
theorem node5612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5610 live5610 coloured5610 = result5610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5611 live5611 coloured5611 = result5611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5612 live5612 coloured5612 = result5612 := by
  rw [tree5612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5610 coloured5610 at child
  try dsimp only [live5612, coloured5612]
  rw [child]
  dsimp only [result5610]
  have child := child1
  unfold live5611 coloured5611 at child
  try dsimp only [live5612, coloured5612]
  rw [child]
  dsimp only [result5611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5613_agree_conditional : tree5613 = literal5613 := by
  rw [tree5613_def]
  rfl
theorem node5613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5613 live5613 coloured5613 = result5613 := by
  rw [tree5613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5614_agree_conditional
    (child0 : tree5612 = literal5612)
    (child1 : tree5613 = literal5613) : tree5614 = literal5614 := by
  rw [tree5614_def, child0, child1]
  rfl
theorem node5614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5612 live5612 coloured5612 = result5612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5613 live5613 coloured5613 = result5613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5614 live5614 coloured5614 = result5614 := by
  rw [tree5614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5612 coloured5612 at child
  try dsimp only [live5614, coloured5614]
  rw [child]
  dsimp only [result5612]
  have child := child1
  unfold live5613 coloured5613 at child
  try dsimp only [live5614, coloured5614]
  rw [child]
  dsimp only [result5613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5615_agree_conditional : tree5615 = literal5615 := by
  rw [tree5615_def]
  rfl
theorem node5615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5615 live5615 coloured5615 = result5615 := by
  rw [tree5615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5616_agree_conditional
    (child0 : tree5614 = literal5614)
    (child1 : tree5615 = literal5615) : tree5616 = literal5616 := by
  rw [tree5616_def, child0, child1]
  rfl
theorem node5616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5614 live5614 coloured5614 = result5614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5615 live5615 coloured5615 = result5615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5616 live5616 coloured5616 = result5616 := by
  rw [tree5616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5614 coloured5614 at child
  try dsimp only [live5616, coloured5616]
  rw [child]
  dsimp only [result5614]
  have child := child1
  unfold live5615 coloured5615 at child
  try dsimp only [live5616, coloured5616]
  rw [child]
  dsimp only [result5615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5617_agree_conditional : tree5617 = literal5617 := by
  rw [tree5617_def]
  rfl
theorem node5617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5617 live5617 coloured5617 = result5617 := by
  rw [tree5617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5618_agree_conditional
    (child0 : tree5616 = literal5616)
    (child1 : tree5617 = literal5617) : tree5618 = literal5618 := by
  rw [tree5618_def, child0, child1]
  rfl
theorem node5618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5616 live5616 coloured5616 = result5616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5617 live5617 coloured5617 = result5617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5618 live5618 coloured5618 = result5618 := by
  rw [tree5618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5616 coloured5616 at child
  try dsimp only [live5618, coloured5618]
  rw [child]
  dsimp only [result5616]
  have child := child1
  unfold live5617 coloured5617 at child
  try dsimp only [live5618, coloured5618]
  rw [child]
  dsimp only [result5617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5619_agree_conditional : tree5619 = literal5619 := by
  rw [tree5619_def]
  rfl
theorem node5619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5619 live5619 coloured5619 = result5619 := by
  rw [tree5619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5620_agree_conditional
    (child0 : tree5618 = literal5618)
    (child1 : tree5619 = literal5619) : tree5620 = literal5620 := by
  rw [tree5620_def, child0, child1]
  rfl
theorem node5620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5618 live5618 coloured5618 = result5618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5619 live5619 coloured5619 = result5619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5620 live5620 coloured5620 = result5620 := by
  rw [tree5620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5618 coloured5618 at child
  try dsimp only [live5620, coloured5620]
  rw [child]
  dsimp only [result5618]
  have child := child1
  unfold live5619 coloured5619 at child
  try dsimp only [live5620, coloured5620]
  rw [child]
  dsimp only [result5619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5621_agree_conditional : tree5621 = literal5621 := by
  rw [tree5621_def]
  rfl
theorem node5621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5621 live5621 coloured5621 = result5621 := by
  rw [tree5621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5622_agree_conditional
    (child0 : tree5620 = literal5620)
    (child1 : tree5621 = literal5621) : tree5622 = literal5622 := by
  rw [tree5622_def, child0, child1]
  rfl
theorem node5622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5620 live5620 coloured5620 = result5620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5621 live5621 coloured5621 = result5621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5622 live5622 coloured5622 = result5622 := by
  rw [tree5622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5620 coloured5620 at child
  try dsimp only [live5622, coloured5622]
  rw [child]
  dsimp only [result5620]
  have child := child1
  unfold live5621 coloured5621 at child
  try dsimp only [live5622, coloured5622]
  rw [child]
  dsimp only [result5621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5623_agree_conditional : tree5623 = literal5623 := by
  rw [tree5623_def]
  rfl
theorem node5623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5623 live5623 coloured5623 = result5623 := by
  rw [tree5623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5624_agree_conditional
    (child0 : tree5622 = literal5622)
    (child1 : tree5623 = literal5623) : tree5624 = literal5624 := by
  rw [tree5624_def, child0, child1]
  rfl
theorem node5624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5622 live5622 coloured5622 = result5622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5623 live5623 coloured5623 = result5623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5624 live5624 coloured5624 = result5624 := by
  rw [tree5624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5622 coloured5622 at child
  try dsimp only [live5624, coloured5624]
  rw [child]
  dsimp only [result5622]
  have child := child1
  unfold live5623 coloured5623 at child
  try dsimp only [live5624, coloured5624]
  rw [child]
  dsimp only [result5623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5625_agree_conditional : tree5625 = literal5625 := by
  rw [tree5625_def]
  rfl
theorem node5625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5625 live5625 coloured5625 = result5625 := by
  rw [tree5625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5626_agree_conditional
    (child0 : tree5624 = literal5624)
    (child1 : tree5625 = literal5625) : tree5626 = literal5626 := by
  rw [tree5626_def, child0, child1]
  rfl
theorem node5626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5624 live5624 coloured5624 = result5624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5625 live5625 coloured5625 = result5625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5626 live5626 coloured5626 = result5626 := by
  rw [tree5626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5624 coloured5624 at child
  try dsimp only [live5626, coloured5626]
  rw [child]
  dsimp only [result5624]
  have child := child1
  unfold live5625 coloured5625 at child
  try dsimp only [live5626, coloured5626]
  rw [child]
  dsimp only [result5625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5627_agree_conditional : tree5627 = literal5627 := by
  rw [tree5627_def]
  rfl
theorem node5627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5627 live5627 coloured5627 = result5627 := by
  rw [tree5627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5628_agree_conditional
    (child0 : tree5626 = literal5626)
    (child1 : tree5627 = literal5627) : tree5628 = literal5628 := by
  rw [tree5628_def, child0, child1]
  rfl
theorem node5628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5626 live5626 coloured5626 = result5626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5627 live5627 coloured5627 = result5627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5628 live5628 coloured5628 = result5628 := by
  rw [tree5628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5626 coloured5626 at child
  try dsimp only [live5628, coloured5628]
  rw [child]
  dsimp only [result5626]
  have child := child1
  unfold live5627 coloured5627 at child
  try dsimp only [live5628, coloured5628]
  rw [child]
  dsimp only [result5627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5629_agree_conditional : tree5629 = literal5629 := by
  rw [tree5629_def]
  rfl
theorem node5629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5629 live5629 coloured5629 = result5629 := by
  rw [tree5629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5630_agree_conditional
    (child0 : tree5628 = literal5628)
    (child1 : tree5629 = literal5629) : tree5630 = literal5630 := by
  rw [tree5630_def, child0, child1]
  rfl
theorem node5630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5628 live5628 coloured5628 = result5628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5629 live5629 coloured5629 = result5629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5630 live5630 coloured5630 = result5630 := by
  rw [tree5630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5628 coloured5628 at child
  try dsimp only [live5630, coloured5630]
  rw [child]
  dsimp only [result5628]
  have child := child1
  unfold live5629 coloured5629 at child
  try dsimp only [live5630, coloured5630]
  rw [child]
  dsimp only [result5629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5631_agree_conditional : tree5631 = literal5631 := by
  rw [tree5631_def]
  rfl
theorem node5631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5631 live5631 coloured5631 = result5631 := by
  rw [tree5631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5632_agree_conditional
    (child0 : tree5630 = literal5630)
    (child1 : tree5631 = literal5631) : tree5632 = literal5632 := by
  rw [tree5632_def, child0, child1]
  rfl
theorem node5632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5630 live5630 coloured5630 = result5630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5631 live5631 coloured5631 = result5631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5632 live5632 coloured5632 = result5632 := by
  rw [tree5632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5630 coloured5630 at child
  try dsimp only [live5632, coloured5632]
  rw [child]
  dsimp only [result5630]
  have child := child1
  unfold live5631 coloured5631 at child
  try dsimp only [live5632, coloured5632]
  rw [child]
  dsimp only [result5631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5633_agree_conditional : tree5633 = literal5633 := by
  rw [tree5633_def]
  rfl
theorem node5633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5633 live5633 coloured5633 = result5633 := by
  rw [tree5633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5634_agree_conditional
    (child0 : tree5632 = literal5632)
    (child1 : tree5633 = literal5633) : tree5634 = literal5634 := by
  rw [tree5634_def, child0, child1]
  rfl
theorem node5634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5632 live5632 coloured5632 = result5632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5633 live5633 coloured5633 = result5633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5634 live5634 coloured5634 = result5634 := by
  rw [tree5634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5632 coloured5632 at child
  try dsimp only [live5634, coloured5634]
  rw [child]
  dsimp only [result5632]
  have child := child1
  unfold live5633 coloured5633 at child
  try dsimp only [live5634, coloured5634]
  rw [child]
  dsimp only [result5633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5635_agree_conditional : tree5635 = literal5635 := by
  rw [tree5635_def]
  rfl
theorem node5635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5635 live5635 coloured5635 = result5635 := by
  rw [tree5635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5636_agree_conditional
    (child0 : tree5634 = literal5634)
    (child1 : tree5635 = literal5635) : tree5636 = literal5636 := by
  rw [tree5636_def, child0, child1]
  rfl
theorem node5636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5634 live5634 coloured5634 = result5634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5635 live5635 coloured5635 = result5635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5636 live5636 coloured5636 = result5636 := by
  rw [tree5636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5634 coloured5634 at child
  try dsimp only [live5636, coloured5636]
  rw [child]
  dsimp only [result5634]
  have child := child1
  unfold live5635 coloured5635 at child
  try dsimp only [live5636, coloured5636]
  rw [child]
  dsimp only [result5635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5637_agree_conditional : tree5637 = literal5637 := by
  rw [tree5637_def]
  rfl
theorem node5637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5637 live5637 coloured5637 = result5637 := by
  rw [tree5637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5638_agree_conditional
    (child0 : tree5636 = literal5636)
    (child1 : tree5637 = literal5637) : tree5638 = literal5638 := by
  rw [tree5638_def, child0, child1]
  rfl
theorem node5638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5636 live5636 coloured5636 = result5636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5637 live5637 coloured5637 = result5637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5638 live5638 coloured5638 = result5638 := by
  rw [tree5638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5636 coloured5636 at child
  try dsimp only [live5638, coloured5638]
  rw [child]
  dsimp only [result5636]
  have child := child1
  unfold live5637 coloured5637 at child
  try dsimp only [live5638, coloured5638]
  rw [child]
  dsimp only [result5637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5639_agree_conditional : tree5639 = literal5639 := by
  rw [tree5639_def]
  rfl
theorem node5639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5639 live5639 coloured5639 = result5639 := by
  rw [tree5639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5640_agree_conditional
    (child0 : tree5638 = literal5638)
    (child1 : tree5639 = literal5639) : tree5640 = literal5640 := by
  rw [tree5640_def, child0, child1]
  rfl
theorem node5640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5638 live5638 coloured5638 = result5638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5639 live5639 coloured5639 = result5639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5640 live5640 coloured5640 = result5640 := by
  rw [tree5640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5638 coloured5638 at child
  try dsimp only [live5640, coloured5640]
  rw [child]
  dsimp only [result5638]
  have child := child1
  unfold live5639 coloured5639 at child
  try dsimp only [live5640, coloured5640]
  rw [child]
  dsimp only [result5639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5641_agree_conditional : tree5641 = literal5641 := by
  rw [tree5641_def]
  rfl
theorem node5641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5641 live5641 coloured5641 = result5641 := by
  rw [tree5641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5642_agree_conditional
    (child0 : tree5640 = literal5640)
    (child1 : tree5641 = literal5641) : tree5642 = literal5642 := by
  rw [tree5642_def, child0, child1]
  rfl
theorem node5642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5640 live5640 coloured5640 = result5640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5641 live5641 coloured5641 = result5641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5642 live5642 coloured5642 = result5642 := by
  rw [tree5642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5640 coloured5640 at child
  try dsimp only [live5642, coloured5642]
  rw [child]
  dsimp only [result5640]
  have child := child1
  unfold live5641 coloured5641 at child
  try dsimp only [live5642, coloured5642]
  rw [child]
  dsimp only [result5641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5643_agree_conditional : tree5643 = literal5643 := by
  rw [tree5643_def]
  rfl
theorem node5643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5643 live5643 coloured5643 = result5643 := by
  rw [tree5643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5644_agree_conditional
    (child0 : tree5642 = literal5642)
    (child1 : tree5643 = literal5643) : tree5644 = literal5644 := by
  rw [tree5644_def, child0, child1]
  rfl
theorem node5644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5642 live5642 coloured5642 = result5642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5643 live5643 coloured5643 = result5643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5644 live5644 coloured5644 = result5644 := by
  rw [tree5644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5642 coloured5642 at child
  try dsimp only [live5644, coloured5644]
  rw [child]
  dsimp only [result5642]
  have child := child1
  unfold live5643 coloured5643 at child
  try dsimp only [live5644, coloured5644]
  rw [child]
  dsimp only [result5643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5645_agree_conditional : tree5645 = literal5645 := by
  rw [tree5645_def]
  rfl
theorem node5645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5645 live5645 coloured5645 = result5645 := by
  rw [tree5645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5646_agree_conditional
    (child0 : tree5644 = literal5644)
    (child1 : tree5645 = literal5645) : tree5646 = literal5646 := by
  rw [tree5646_def, child0, child1]
  rfl
theorem node5646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5644 live5644 coloured5644 = result5644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5645 live5645 coloured5645 = result5645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5646 live5646 coloured5646 = result5646 := by
  rw [tree5646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5644 coloured5644 at child
  try dsimp only [live5646, coloured5646]
  rw [child]
  dsimp only [result5644]
  have child := child1
  unfold live5645 coloured5645 at child
  try dsimp only [live5646, coloured5646]
  rw [child]
  dsimp only [result5645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5647_agree_conditional : tree5647 = literal5647 := by
  rw [tree5647_def]
  rfl
theorem node5647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5647 live5647 coloured5647 = result5647 := by
  rw [tree5647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5648_agree_conditional
    (child0 : tree5646 = literal5646)
    (child1 : tree5647 = literal5647) : tree5648 = literal5648 := by
  rw [tree5648_def, child0, child1]
  rfl
theorem node5648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5646 live5646 coloured5646 = result5646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5647 live5647 coloured5647 = result5647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5648 live5648 coloured5648 = result5648 := by
  rw [tree5648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5646 coloured5646 at child
  try dsimp only [live5648, coloured5648]
  rw [child]
  dsimp only [result5646]
  have child := child1
  unfold live5647 coloured5647 at child
  try dsimp only [live5648, coloured5648]
  rw [child]
  dsimp only [result5647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5649_agree_conditional : tree5649 = literal5649 := by
  rw [tree5649_def]
  rfl
theorem node5649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5649 live5649 coloured5649 = result5649 := by
  rw [tree5649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5650_agree_conditional
    (child0 : tree5648 = literal5648)
    (child1 : tree5649 = literal5649) : tree5650 = literal5650 := by
  rw [tree5650_def, child0, child1]
  rfl
theorem node5650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5648 live5648 coloured5648 = result5648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5649 live5649 coloured5649 = result5649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5650 live5650 coloured5650 = result5650 := by
  rw [tree5650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5648 coloured5648 at child
  try dsimp only [live5650, coloured5650]
  rw [child]
  dsimp only [result5648]
  have child := child1
  unfold live5649 coloured5649 at child
  try dsimp only [live5650, coloured5650]
  rw [child]
  dsimp only [result5649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5651_agree_conditional : tree5651 = literal5651 := by
  rw [tree5651_def]
  rfl
theorem node5651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5651 live5651 coloured5651 = result5651 := by
  rw [tree5651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5652_agree_conditional
    (child0 : tree5650 = literal5650)
    (child1 : tree5651 = literal5651) : tree5652 = literal5652 := by
  rw [tree5652_def, child0, child1]
  rfl
theorem node5652_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5650 live5650 coloured5650 = result5650)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5651 live5651 coloured5651 = result5651) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5652 live5652 coloured5652 = result5652 := by
  rw [tree5652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5650 coloured5650 at child
  try dsimp only [live5652, coloured5652]
  rw [child]
  dsimp only [result5650]
  have child := child1
  unfold live5651 coloured5651 at child
  try dsimp only [live5652, coloured5652]
  rw [child]
  dsimp only [result5651]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5653_agree_conditional : tree5653 = literal5653 := by
  rw [tree5653_def]
  rfl
theorem node5653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5653 live5653 coloured5653 = result5653 := by
  rw [tree5653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5654_agree_conditional
    (child0 : tree5652 = literal5652)
    (child1 : tree5653 = literal5653) : tree5654 = literal5654 := by
  rw [tree5654_def, child0, child1]
  rfl
theorem node5654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5652 live5652 coloured5652 = result5652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5653 live5653 coloured5653 = result5653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5654 live5654 coloured5654 = result5654 := by
  rw [tree5654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5652 coloured5652 at child
  try dsimp only [live5654, coloured5654]
  rw [child]
  dsimp only [result5652]
  have child := child1
  unfold live5653 coloured5653 at child
  try dsimp only [live5654, coloured5654]
  rw [child]
  dsimp only [result5653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5655_agree_conditional : tree5655 = literal5655 := by
  rw [tree5655_def]
  rfl
theorem node5655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5655 live5655 coloured5655 = result5655 := by
  rw [tree5655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5656_agree_conditional
    (child0 : tree5654 = literal5654)
    (child1 : tree5655 = literal5655) : tree5656 = literal5656 := by
  rw [tree5656_def, child0, child1]
  rfl
theorem node5656_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5654 live5654 coloured5654 = result5654)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5655 live5655 coloured5655 = result5655) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5656 live5656 coloured5656 = result5656 := by
  rw [tree5656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5654 coloured5654 at child
  try dsimp only [live5656, coloured5656]
  rw [child]
  dsimp only [result5654]
  have child := child1
  unfold live5655 coloured5655 at child
  try dsimp only [live5656, coloured5656]
  rw [child]
  dsimp only [result5655]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5657_agree_conditional : tree5657 = literal5657 := by
  rw [tree5657_def]
  rfl
theorem node5657_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5657 live5657 coloured5657 = result5657 := by
  rw [tree5657_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5658_agree_conditional
    (child0 : tree5656 = literal5656)
    (child1 : tree5657 = literal5657) : tree5658 = literal5658 := by
  rw [tree5658_def, child0, child1]
  rfl
theorem node5658_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5656 live5656 coloured5656 = result5656)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5657 live5657 coloured5657 = result5657) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5658 live5658 coloured5658 = result5658 := by
  rw [tree5658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5656 coloured5656 at child
  try dsimp only [live5658, coloured5658]
  rw [child]
  dsimp only [result5656]
  have child := child1
  unfold live5657 coloured5657 at child
  try dsimp only [live5658, coloured5658]
  rw [child]
  dsimp only [result5657]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5659_agree_conditional : tree5659 = literal5659 := by
  rw [tree5659_def]
  rfl
theorem node5659_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5659 live5659 coloured5659 = result5659 := by
  rw [tree5659_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5660_agree_conditional
    (child0 : tree5658 = literal5658)
    (child1 : tree5659 = literal5659) : tree5660 = literal5660 := by
  rw [tree5660_def, child0, child1]
  rfl
theorem node5660_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5658 live5658 coloured5658 = result5658)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5659 live5659 coloured5659 = result5659) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5660 live5660 coloured5660 = result5660 := by
  rw [tree5660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5658 coloured5658 at child
  try dsimp only [live5660, coloured5660]
  rw [child]
  dsimp only [result5658]
  have child := child1
  unfold live5659 coloured5659 at child
  try dsimp only [live5660, coloured5660]
  rw [child]
  dsimp only [result5659]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5661_agree_conditional : tree5661 = literal5661 := by
  rw [tree5661_def]
  rfl
theorem node5661_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5661 live5661 coloured5661 = result5661 := by
  rw [tree5661_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5662_agree_conditional
    (child0 : tree5660 = literal5660)
    (child1 : tree5661 = literal5661) : tree5662 = literal5662 := by
  rw [tree5662_def, child0, child1]
  rfl
theorem node5662_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5660 live5660 coloured5660 = result5660)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5661 live5661 coloured5661 = result5661) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5662 live5662 coloured5662 = result5662 := by
  rw [tree5662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5660 coloured5660 at child
  try dsimp only [live5662, coloured5662]
  rw [child]
  dsimp only [result5660]
  have child := child1
  unfold live5661 coloured5661 at child
  try dsimp only [live5662, coloured5662]
  rw [child]
  dsimp only [result5661]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5663_agree_conditional : tree5663 = literal5663 := by
  rw [tree5663_def]
  rfl
theorem node5663_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5663 live5663 coloured5663 = result5663 := by
  rw [tree5663_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
