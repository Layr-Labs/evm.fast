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
theorem tree7584_agree_conditional
    (child0 : tree7582 = literal7582)
    (child1 : tree7583 = literal7583) : tree7584 = literal7584 := by
  rw [tree7584_def, child0, child1]
  rfl
theorem node7584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7582 live7582 coloured7582 = result7582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7583 live7583 coloured7583 = result7583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7584 live7584 coloured7584 = result7584 := by
  rw [tree7584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7582 coloured7582 at child
  try dsimp only [live7584, coloured7584]
  rw [child]
  dsimp only [result7582]
  have child := child1
  unfold live7583 coloured7583 at child
  try dsimp only [live7584, coloured7584]
  rw [child]
  dsimp only [result7583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7585_agree_conditional : tree7585 = literal7585 := by
  rw [tree7585_def]
  rfl
theorem node7585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7585 live7585 coloured7585 = result7585 := by
  rw [tree7585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7586_agree_conditional
    (child0 : tree7584 = literal7584)
    (child1 : tree7585 = literal7585) : tree7586 = literal7586 := by
  rw [tree7586_def, child0, child1]
  rfl
theorem node7586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7584 live7584 coloured7584 = result7584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7585 live7585 coloured7585 = result7585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7586 live7586 coloured7586 = result7586 := by
  rw [tree7586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7584 coloured7584 at child
  try dsimp only [live7586, coloured7586]
  rw [child]
  dsimp only [result7584]
  have child := child1
  unfold live7585 coloured7585 at child
  try dsimp only [live7586, coloured7586]
  rw [child]
  dsimp only [result7585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7587_agree_conditional : tree7587 = literal7587 := by
  rw [tree7587_def]
  rfl
theorem node7587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7587 live7587 coloured7587 = result7587 := by
  rw [tree7587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7588_agree_conditional
    (child0 : tree7586 = literal7586)
    (child1 : tree7587 = literal7587) : tree7588 = literal7588 := by
  rw [tree7588_def, child0, child1]
  rfl
theorem node7588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7586 live7586 coloured7586 = result7586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7587 live7587 coloured7587 = result7587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7588 live7588 coloured7588 = result7588 := by
  rw [tree7588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7586 coloured7586 at child
  try dsimp only [live7588, coloured7588]
  rw [child]
  dsimp only [result7586]
  have child := child1
  unfold live7587 coloured7587 at child
  try dsimp only [live7588, coloured7588]
  rw [child]
  dsimp only [result7587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7589_agree_conditional : tree7589 = literal7589 := by
  rw [tree7589_def]
  rfl
theorem node7589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7589 live7589 coloured7589 = result7589 := by
  rw [tree7589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7590_agree_conditional
    (child0 : tree7588 = literal7588)
    (child1 : tree7589 = literal7589) : tree7590 = literal7590 := by
  rw [tree7590_def, child0, child1]
  rfl
theorem node7590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7588 live7588 coloured7588 = result7588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7589 live7589 coloured7589 = result7589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7590 live7590 coloured7590 = result7590 := by
  rw [tree7590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7588 coloured7588 at child
  try dsimp only [live7590, coloured7590]
  rw [child]
  dsimp only [result7588]
  have child := child1
  unfold live7589 coloured7589 at child
  try dsimp only [live7590, coloured7590]
  rw [child]
  dsimp only [result7589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7591_agree_conditional : tree7591 = literal7591 := by
  rw [tree7591_def]
  rfl
theorem node7591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7591 live7591 coloured7591 = result7591 := by
  rw [tree7591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7592_agree_conditional
    (child0 : tree7590 = literal7590)
    (child1 : tree7591 = literal7591) : tree7592 = literal7592 := by
  rw [tree7592_def, child0, child1]
  rfl
theorem node7592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7590 live7590 coloured7590 = result7590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7591 live7591 coloured7591 = result7591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7592 live7592 coloured7592 = result7592 := by
  rw [tree7592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7590 coloured7590 at child
  try dsimp only [live7592, coloured7592]
  rw [child]
  dsimp only [result7590]
  have child := child1
  unfold live7591 coloured7591 at child
  try dsimp only [live7592, coloured7592]
  rw [child]
  dsimp only [result7591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7593_agree_conditional : tree7593 = literal7593 := by
  rw [tree7593_def]
  rfl
theorem node7593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7593 live7593 coloured7593 = result7593 := by
  rw [tree7593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7594_agree_conditional
    (child0 : tree7592 = literal7592)
    (child1 : tree7593 = literal7593) : tree7594 = literal7594 := by
  rw [tree7594_def, child0, child1]
  rfl
theorem node7594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7592 live7592 coloured7592 = result7592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7593 live7593 coloured7593 = result7593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7594 live7594 coloured7594 = result7594 := by
  rw [tree7594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7592 coloured7592 at child
  try dsimp only [live7594, coloured7594]
  rw [child]
  dsimp only [result7592]
  have child := child1
  unfold live7593 coloured7593 at child
  try dsimp only [live7594, coloured7594]
  rw [child]
  dsimp only [result7593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7595_agree_conditional : tree7595 = literal7595 := by
  rw [tree7595_def]
  rfl
theorem node7595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7595 live7595 coloured7595 = result7595 := by
  rw [tree7595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7596_agree_conditional
    (child0 : tree7594 = literal7594)
    (child1 : tree7595 = literal7595) : tree7596 = literal7596 := by
  rw [tree7596_def, child0, child1]
  rfl
theorem node7596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7594 live7594 coloured7594 = result7594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7595 live7595 coloured7595 = result7595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7596 live7596 coloured7596 = result7596 := by
  rw [tree7596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7594 coloured7594 at child
  try dsimp only [live7596, coloured7596]
  rw [child]
  dsimp only [result7594]
  have child := child1
  unfold live7595 coloured7595 at child
  try dsimp only [live7596, coloured7596]
  rw [child]
  dsimp only [result7595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7597_agree_conditional : tree7597 = literal7597 := by
  rw [tree7597_def]
  rfl
theorem node7597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7597 live7597 coloured7597 = result7597 := by
  rw [tree7597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7598_agree_conditional
    (child0 : tree7596 = literal7596)
    (child1 : tree7597 = literal7597) : tree7598 = literal7598 := by
  rw [tree7598_def, child0, child1]
  rfl
theorem node7598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7596 live7596 coloured7596 = result7596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7597 live7597 coloured7597 = result7597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7598 live7598 coloured7598 = result7598 := by
  rw [tree7598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7596 coloured7596 at child
  try dsimp only [live7598, coloured7598]
  rw [child]
  dsimp only [result7596]
  have child := child1
  unfold live7597 coloured7597 at child
  try dsimp only [live7598, coloured7598]
  rw [child]
  dsimp only [result7597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7599_agree_conditional : tree7599 = literal7599 := by
  rw [tree7599_def]
  rfl
theorem node7599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7599 live7599 coloured7599 = result7599 := by
  rw [tree7599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7600_agree_conditional
    (child0 : tree7598 = literal7598)
    (child1 : tree7599 = literal7599) : tree7600 = literal7600 := by
  rw [tree7600_def, child0, child1]
  rfl
theorem node7600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7598 live7598 coloured7598 = result7598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7599 live7599 coloured7599 = result7599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7600 live7600 coloured7600 = result7600 := by
  rw [tree7600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7598 coloured7598 at child
  try dsimp only [live7600, coloured7600]
  rw [child]
  dsimp only [result7598]
  have child := child1
  unfold live7599 coloured7599 at child
  try dsimp only [live7600, coloured7600]
  rw [child]
  dsimp only [result7599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7601_agree_conditional : tree7601 = literal7601 := by
  rw [tree7601_def]
  rfl
theorem node7601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7601 live7601 coloured7601 = result7601 := by
  rw [tree7601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7602_agree_conditional
    (child0 : tree7600 = literal7600)
    (child1 : tree7601 = literal7601) : tree7602 = literal7602 := by
  rw [tree7602_def, child0, child1]
  rfl
theorem node7602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7600 live7600 coloured7600 = result7600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7601 live7601 coloured7601 = result7601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7602 live7602 coloured7602 = result7602 := by
  rw [tree7602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7600 coloured7600 at child
  try dsimp only [live7602, coloured7602]
  rw [child]
  dsimp only [result7600]
  have child := child1
  unfold live7601 coloured7601 at child
  try dsimp only [live7602, coloured7602]
  rw [child]
  dsimp only [result7601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7603_agree_conditional : tree7603 = literal7603 := by
  rw [tree7603_def]
  rfl
theorem node7603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7603 live7603 coloured7603 = result7603 := by
  rw [tree7603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7604_agree_conditional
    (child0 : tree7602 = literal7602)
    (child1 : tree7603 = literal7603) : tree7604 = literal7604 := by
  rw [tree7604_def, child0, child1]
  rfl
theorem node7604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7602 live7602 coloured7602 = result7602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7603 live7603 coloured7603 = result7603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7604 live7604 coloured7604 = result7604 := by
  rw [tree7604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7602 coloured7602 at child
  try dsimp only [live7604, coloured7604]
  rw [child]
  dsimp only [result7602]
  have child := child1
  unfold live7603 coloured7603 at child
  try dsimp only [live7604, coloured7604]
  rw [child]
  dsimp only [result7603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7605_agree_conditional : tree7605 = literal7605 := by
  rw [tree7605_def]
  rfl
theorem node7605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7605 live7605 coloured7605 = result7605 := by
  rw [tree7605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7606_agree_conditional
    (child0 : tree7604 = literal7604)
    (child1 : tree7605 = literal7605) : tree7606 = literal7606 := by
  rw [tree7606_def, child0, child1]
  rfl
theorem node7606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7604 live7604 coloured7604 = result7604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7605 live7605 coloured7605 = result7605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7606 live7606 coloured7606 = result7606 := by
  rw [tree7606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7604 coloured7604 at child
  try dsimp only [live7606, coloured7606]
  rw [child]
  dsimp only [result7604]
  have child := child1
  unfold live7605 coloured7605 at child
  try dsimp only [live7606, coloured7606]
  rw [child]
  dsimp only [result7605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7607_agree_conditional : tree7607 = literal7607 := by
  rw [tree7607_def]
  rfl
theorem node7607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7607 live7607 coloured7607 = result7607 := by
  rw [tree7607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7608_agree_conditional
    (child0 : tree7606 = literal7606)
    (child1 : tree7607 = literal7607) : tree7608 = literal7608 := by
  rw [tree7608_def, child0, child1]
  rfl
theorem node7608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7606 live7606 coloured7606 = result7606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7607 live7607 coloured7607 = result7607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7608 live7608 coloured7608 = result7608 := by
  rw [tree7608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7606 coloured7606 at child
  try dsimp only [live7608, coloured7608]
  rw [child]
  dsimp only [result7606]
  have child := child1
  unfold live7607 coloured7607 at child
  try dsimp only [live7608, coloured7608]
  rw [child]
  dsimp only [result7607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7609_agree_conditional : tree7609 = literal7609 := by
  rw [tree7609_def]
  rfl
theorem node7609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7609 live7609 coloured7609 = result7609 := by
  rw [tree7609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7610_agree_conditional
    (child0 : tree7608 = literal7608)
    (child1 : tree7609 = literal7609) : tree7610 = literal7610 := by
  rw [tree7610_def, child0, child1]
  rfl
theorem node7610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7608 live7608 coloured7608 = result7608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7609 live7609 coloured7609 = result7609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7610 live7610 coloured7610 = result7610 := by
  rw [tree7610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7608 coloured7608 at child
  try dsimp only [live7610, coloured7610]
  rw [child]
  dsimp only [result7608]
  have child := child1
  unfold live7609 coloured7609 at child
  try dsimp only [live7610, coloured7610]
  rw [child]
  dsimp only [result7609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7611_agree_conditional : tree7611 = literal7611 := by
  rw [tree7611_def]
  rfl
theorem node7611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7611 live7611 coloured7611 = result7611 := by
  rw [tree7611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7612_agree_conditional
    (child0 : tree7610 = literal7610)
    (child1 : tree7611 = literal7611) : tree7612 = literal7612 := by
  rw [tree7612_def, child0, child1]
  rfl
theorem node7612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7610 live7610 coloured7610 = result7610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7611 live7611 coloured7611 = result7611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7612 live7612 coloured7612 = result7612 := by
  rw [tree7612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7610 coloured7610 at child
  try dsimp only [live7612, coloured7612]
  rw [child]
  dsimp only [result7610]
  have child := child1
  unfold live7611 coloured7611 at child
  try dsimp only [live7612, coloured7612]
  rw [child]
  dsimp only [result7611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7613_agree_conditional : tree7613 = literal7613 := by
  rw [tree7613_def]
  rfl
theorem node7613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7613 live7613 coloured7613 = result7613 := by
  rw [tree7613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7614_agree_conditional
    (child0 : tree7612 = literal7612)
    (child1 : tree7613 = literal7613) : tree7614 = literal7614 := by
  rw [tree7614_def, child0, child1]
  rfl
theorem node7614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7612 live7612 coloured7612 = result7612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7613 live7613 coloured7613 = result7613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7614 live7614 coloured7614 = result7614 := by
  rw [tree7614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7612 coloured7612 at child
  try dsimp only [live7614, coloured7614]
  rw [child]
  dsimp only [result7612]
  have child := child1
  unfold live7613 coloured7613 at child
  try dsimp only [live7614, coloured7614]
  rw [child]
  dsimp only [result7613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7615_agree_conditional : tree7615 = literal7615 := by
  rw [tree7615_def]
  rfl
theorem node7615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7615 live7615 coloured7615 = result7615 := by
  rw [tree7615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7616_agree_conditional
    (child0 : tree7614 = literal7614)
    (child1 : tree7615 = literal7615) : tree7616 = literal7616 := by
  rw [tree7616_def, child0, child1]
  rfl
theorem node7616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7614 live7614 coloured7614 = result7614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7615 live7615 coloured7615 = result7615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7616 live7616 coloured7616 = result7616 := by
  rw [tree7616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7614 coloured7614 at child
  try dsimp only [live7616, coloured7616]
  rw [child]
  dsimp only [result7614]
  have child := child1
  unfold live7615 coloured7615 at child
  try dsimp only [live7616, coloured7616]
  rw [child]
  dsimp only [result7615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7617_agree_conditional : tree7617 = literal7617 := by
  rw [tree7617_def]
  rfl
theorem node7617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7617 live7617 coloured7617 = result7617 := by
  rw [tree7617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7618_agree_conditional
    (child0 : tree7616 = literal7616)
    (child1 : tree7617 = literal7617) : tree7618 = literal7618 := by
  rw [tree7618_def, child0, child1]
  rfl
theorem node7618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7616 live7616 coloured7616 = result7616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7617 live7617 coloured7617 = result7617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7618 live7618 coloured7618 = result7618 := by
  rw [tree7618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7616 coloured7616 at child
  try dsimp only [live7618, coloured7618]
  rw [child]
  dsimp only [result7616]
  have child := child1
  unfold live7617 coloured7617 at child
  try dsimp only [live7618, coloured7618]
  rw [child]
  dsimp only [result7617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7619_agree_conditional : tree7619 = literal7619 := by
  rw [tree7619_def]
  rfl
theorem node7619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7619 live7619 coloured7619 = result7619 := by
  rw [tree7619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7620_agree_conditional
    (child0 : tree7618 = literal7618)
    (child1 : tree7619 = literal7619) : tree7620 = literal7620 := by
  rw [tree7620_def, child0, child1]
  rfl
theorem node7620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7618 live7618 coloured7618 = result7618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7619 live7619 coloured7619 = result7619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7620 live7620 coloured7620 = result7620 := by
  rw [tree7620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7618 coloured7618 at child
  try dsimp only [live7620, coloured7620]
  rw [child]
  dsimp only [result7618]
  have child := child1
  unfold live7619 coloured7619 at child
  try dsimp only [live7620, coloured7620]
  rw [child]
  dsimp only [result7619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7621_agree_conditional : tree7621 = literal7621 := by
  rw [tree7621_def]
  rfl
theorem node7621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7621 live7621 coloured7621 = result7621 := by
  rw [tree7621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7622_agree_conditional
    (child0 : tree7620 = literal7620)
    (child1 : tree7621 = literal7621) : tree7622 = literal7622 := by
  rw [tree7622_def, child0, child1]
  rfl
theorem node7622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7620 live7620 coloured7620 = result7620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7621 live7621 coloured7621 = result7621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7622 live7622 coloured7622 = result7622 := by
  rw [tree7622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7620 coloured7620 at child
  try dsimp only [live7622, coloured7622]
  rw [child]
  dsimp only [result7620]
  have child := child1
  unfold live7621 coloured7621 at child
  try dsimp only [live7622, coloured7622]
  rw [child]
  dsimp only [result7621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7623_agree_conditional : tree7623 = literal7623 := by
  rw [tree7623_def]
  rfl
theorem node7623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7623 live7623 coloured7623 = result7623 := by
  rw [tree7623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7624_agree_conditional
    (child0 : tree7622 = literal7622)
    (child1 : tree7623 = literal7623) : tree7624 = literal7624 := by
  rw [tree7624_def, child0, child1]
  rfl
theorem node7624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7622 live7622 coloured7622 = result7622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7623 live7623 coloured7623 = result7623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7624 live7624 coloured7624 = result7624 := by
  rw [tree7624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7622 coloured7622 at child
  try dsimp only [live7624, coloured7624]
  rw [child]
  dsimp only [result7622]
  have child := child1
  unfold live7623 coloured7623 at child
  try dsimp only [live7624, coloured7624]
  rw [child]
  dsimp only [result7623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7625_agree_conditional : tree7625 = literal7625 := by
  rw [tree7625_def]
  rfl
theorem node7625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7625 live7625 coloured7625 = result7625 := by
  rw [tree7625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7626_agree_conditional
    (child0 : tree7624 = literal7624)
    (child1 : tree7625 = literal7625) : tree7626 = literal7626 := by
  rw [tree7626_def, child0, child1]
  rfl
theorem node7626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7624 live7624 coloured7624 = result7624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7625 live7625 coloured7625 = result7625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7626 live7626 coloured7626 = result7626 := by
  rw [tree7626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7624 coloured7624 at child
  try dsimp only [live7626, coloured7626]
  rw [child]
  dsimp only [result7624]
  have child := child1
  unfold live7625 coloured7625 at child
  try dsimp only [live7626, coloured7626]
  rw [child]
  dsimp only [result7625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7627_agree_conditional : tree7627 = literal7627 := by
  rw [tree7627_def]
  rfl
theorem node7627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7627 live7627 coloured7627 = result7627 := by
  rw [tree7627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7628_agree_conditional
    (child0 : tree7626 = literal7626)
    (child1 : tree7627 = literal7627) : tree7628 = literal7628 := by
  rw [tree7628_def, child0, child1]
  rfl
theorem node7628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7626 live7626 coloured7626 = result7626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7627 live7627 coloured7627 = result7627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7628 live7628 coloured7628 = result7628 := by
  rw [tree7628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7626 coloured7626 at child
  try dsimp only [live7628, coloured7628]
  rw [child]
  dsimp only [result7626]
  have child := child1
  unfold live7627 coloured7627 at child
  try dsimp only [live7628, coloured7628]
  rw [child]
  dsimp only [result7627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7629_agree_conditional : tree7629 = literal7629 := by
  rw [tree7629_def]
  rfl
theorem node7629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7629 live7629 coloured7629 = result7629 := by
  rw [tree7629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7630_agree_conditional
    (child0 : tree7628 = literal7628)
    (child1 : tree7629 = literal7629) : tree7630 = literal7630 := by
  rw [tree7630_def, child0, child1]
  rfl
theorem node7630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7628 live7628 coloured7628 = result7628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7629 live7629 coloured7629 = result7629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7630 live7630 coloured7630 = result7630 := by
  rw [tree7630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7628 coloured7628 at child
  try dsimp only [live7630, coloured7630]
  rw [child]
  dsimp only [result7628]
  have child := child1
  unfold live7629 coloured7629 at child
  try dsimp only [live7630, coloured7630]
  rw [child]
  dsimp only [result7629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7631_agree_conditional : tree7631 = literal7631 := by
  rw [tree7631_def]
  rfl
theorem node7631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7631 live7631 coloured7631 = result7631 := by
  rw [tree7631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7632_agree_conditional
    (child0 : tree7630 = literal7630)
    (child1 : tree7631 = literal7631) : tree7632 = literal7632 := by
  rw [tree7632_def, child0, child1]
  rfl
theorem node7632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7630 live7630 coloured7630 = result7630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7631 live7631 coloured7631 = result7631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7632 live7632 coloured7632 = result7632 := by
  rw [tree7632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7630 coloured7630 at child
  try dsimp only [live7632, coloured7632]
  rw [child]
  dsimp only [result7630]
  have child := child1
  unfold live7631 coloured7631 at child
  try dsimp only [live7632, coloured7632]
  rw [child]
  dsimp only [result7631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7633_agree_conditional : tree7633 = literal7633 := by
  rw [tree7633_def]
  rfl
theorem node7633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7633 live7633 coloured7633 = result7633 := by
  rw [tree7633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7634_agree_conditional
    (child0 : tree7632 = literal7632)
    (child1 : tree7633 = literal7633) : tree7634 = literal7634 := by
  rw [tree7634_def, child0, child1]
  rfl
theorem node7634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7632 live7632 coloured7632 = result7632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7633 live7633 coloured7633 = result7633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7634 live7634 coloured7634 = result7634 := by
  rw [tree7634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7632 coloured7632 at child
  try dsimp only [live7634, coloured7634]
  rw [child]
  dsimp only [result7632]
  have child := child1
  unfold live7633 coloured7633 at child
  try dsimp only [live7634, coloured7634]
  rw [child]
  dsimp only [result7633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7635_agree_conditional : tree7635 = literal7635 := by
  rw [tree7635_def]
  rfl
theorem node7635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7635 live7635 coloured7635 = result7635 := by
  rw [tree7635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7636_agree_conditional
    (child0 : tree7634 = literal7634)
    (child1 : tree7635 = literal7635) : tree7636 = literal7636 := by
  rw [tree7636_def, child0, child1]
  rfl
theorem node7636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7634 live7634 coloured7634 = result7634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7635 live7635 coloured7635 = result7635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7636 live7636 coloured7636 = result7636 := by
  rw [tree7636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7634 coloured7634 at child
  try dsimp only [live7636, coloured7636]
  rw [child]
  dsimp only [result7634]
  have child := child1
  unfold live7635 coloured7635 at child
  try dsimp only [live7636, coloured7636]
  rw [child]
  dsimp only [result7635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7637_agree_conditional : tree7637 = literal7637 := by
  rw [tree7637_def]
  rfl
theorem node7637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7637 live7637 coloured7637 = result7637 := by
  rw [tree7637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7638_agree_conditional
    (child0 : tree7636 = literal7636)
    (child1 : tree7637 = literal7637) : tree7638 = literal7638 := by
  rw [tree7638_def, child0, child1]
  rfl
theorem node7638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7636 live7636 coloured7636 = result7636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7637 live7637 coloured7637 = result7637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7638 live7638 coloured7638 = result7638 := by
  rw [tree7638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7636 coloured7636 at child
  try dsimp only [live7638, coloured7638]
  rw [child]
  dsimp only [result7636]
  have child := child1
  unfold live7637 coloured7637 at child
  try dsimp only [live7638, coloured7638]
  rw [child]
  dsimp only [result7637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7639_agree_conditional : tree7639 = literal7639 := by
  rw [tree7639_def]
  rfl
theorem node7639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7639 live7639 coloured7639 = result7639 := by
  rw [tree7639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7640_agree_conditional
    (child0 : tree7638 = literal7638)
    (child1 : tree7639 = literal7639) : tree7640 = literal7640 := by
  rw [tree7640_def, child0, child1]
  rfl
theorem node7640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7638 live7638 coloured7638 = result7638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7639 live7639 coloured7639 = result7639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7640 live7640 coloured7640 = result7640 := by
  rw [tree7640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7638 coloured7638 at child
  try dsimp only [live7640, coloured7640]
  rw [child]
  dsimp only [result7638]
  have child := child1
  unfold live7639 coloured7639 at child
  try dsimp only [live7640, coloured7640]
  rw [child]
  dsimp only [result7639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7641_agree_conditional : tree7641 = literal7641 := by
  rw [tree7641_def]
  rfl
theorem node7641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7641 live7641 coloured7641 = result7641 := by
  rw [tree7641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7642_agree_conditional
    (child0 : tree7640 = literal7640)
    (child1 : tree7641 = literal7641) : tree7642 = literal7642 := by
  rw [tree7642_def, child0, child1]
  rfl
theorem node7642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7640 live7640 coloured7640 = result7640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7641 live7641 coloured7641 = result7641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7642 live7642 coloured7642 = result7642 := by
  rw [tree7642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7640 coloured7640 at child
  try dsimp only [live7642, coloured7642]
  rw [child]
  dsimp only [result7640]
  have child := child1
  unfold live7641 coloured7641 at child
  try dsimp only [live7642, coloured7642]
  rw [child]
  dsimp only [result7641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7643_agree_conditional : tree7643 = literal7643 := by
  rw [tree7643_def]
  rfl
theorem node7643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7643 live7643 coloured7643 = result7643 := by
  rw [tree7643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7644_agree_conditional
    (child0 : tree7642 = literal7642)
    (child1 : tree7643 = literal7643) : tree7644 = literal7644 := by
  rw [tree7644_def, child0, child1]
  rfl
theorem node7644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7642 live7642 coloured7642 = result7642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7643 live7643 coloured7643 = result7643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7644 live7644 coloured7644 = result7644 := by
  rw [tree7644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7642 coloured7642 at child
  try dsimp only [live7644, coloured7644]
  rw [child]
  dsimp only [result7642]
  have child := child1
  unfold live7643 coloured7643 at child
  try dsimp only [live7644, coloured7644]
  rw [child]
  dsimp only [result7643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7645_agree_conditional : tree7645 = literal7645 := by
  rw [tree7645_def]
  rfl
theorem node7645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7645 live7645 coloured7645 = result7645 := by
  rw [tree7645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7646_agree_conditional
    (child0 : tree7644 = literal7644)
    (child1 : tree7645 = literal7645) : tree7646 = literal7646 := by
  rw [tree7646_def, child0, child1]
  rfl
theorem node7646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7644 live7644 coloured7644 = result7644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7645 live7645 coloured7645 = result7645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7646 live7646 coloured7646 = result7646 := by
  rw [tree7646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7644 coloured7644 at child
  try dsimp only [live7646, coloured7646]
  rw [child]
  dsimp only [result7644]
  have child := child1
  unfold live7645 coloured7645 at child
  try dsimp only [live7646, coloured7646]
  rw [child]
  dsimp only [result7645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7647_agree_conditional : tree7647 = literal7647 := by
  rw [tree7647_def]
  rfl
theorem node7647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7647 live7647 coloured7647 = result7647 := by
  rw [tree7647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7648_agree_conditional
    (child0 : tree7646 = literal7646)
    (child1 : tree7647 = literal7647) : tree7648 = literal7648 := by
  rw [tree7648_def, child0, child1]
  rfl
theorem node7648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7646 live7646 coloured7646 = result7646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7647 live7647 coloured7647 = result7647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7648 live7648 coloured7648 = result7648 := by
  rw [tree7648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7646 coloured7646 at child
  try dsimp only [live7648, coloured7648]
  rw [child]
  dsimp only [result7646]
  have child := child1
  unfold live7647 coloured7647 at child
  try dsimp only [live7648, coloured7648]
  rw [child]
  dsimp only [result7647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7649_agree_conditional : tree7649 = literal7649 := by
  rw [tree7649_def]
  rfl
theorem node7649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7649 live7649 coloured7649 = result7649 := by
  rw [tree7649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7650_agree_conditional
    (child0 : tree7648 = literal7648)
    (child1 : tree7649 = literal7649) : tree7650 = literal7650 := by
  rw [tree7650_def, child0, child1]
  rfl
theorem node7650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7648 live7648 coloured7648 = result7648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7649 live7649 coloured7649 = result7649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7650 live7650 coloured7650 = result7650 := by
  rw [tree7650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7648 coloured7648 at child
  try dsimp only [live7650, coloured7650]
  rw [child]
  dsimp only [result7648]
  have child := child1
  unfold live7649 coloured7649 at child
  try dsimp only [live7650, coloured7650]
  rw [child]
  dsimp only [result7649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7651_agree_conditional : tree7651 = literal7651 := by
  rw [tree7651_def]
  rfl
theorem node7651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7651 live7651 coloured7651 = result7651 := by
  rw [tree7651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7652_agree_conditional
    (child0 : tree7650 = literal7650)
    (child1 : tree7651 = literal7651) : tree7652 = literal7652 := by
  rw [tree7652_def, child0, child1]
  rfl
theorem node7652_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7650 live7650 coloured7650 = result7650)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7651 live7651 coloured7651 = result7651) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7652 live7652 coloured7652 = result7652 := by
  rw [tree7652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7650 coloured7650 at child
  try dsimp only [live7652, coloured7652]
  rw [child]
  dsimp only [result7650]
  have child := child1
  unfold live7651 coloured7651 at child
  try dsimp only [live7652, coloured7652]
  rw [child]
  dsimp only [result7651]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7653_agree_conditional : tree7653 = literal7653 := by
  rw [tree7653_def]
  rfl
theorem node7653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7653 live7653 coloured7653 = result7653 := by
  rw [tree7653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7654_agree_conditional
    (child0 : tree7652 = literal7652)
    (child1 : tree7653 = literal7653) : tree7654 = literal7654 := by
  rw [tree7654_def, child0, child1]
  rfl
theorem node7654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7652 live7652 coloured7652 = result7652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7653 live7653 coloured7653 = result7653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7654 live7654 coloured7654 = result7654 := by
  rw [tree7654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7652 coloured7652 at child
  try dsimp only [live7654, coloured7654]
  rw [child]
  dsimp only [result7652]
  have child := child1
  unfold live7653 coloured7653 at child
  try dsimp only [live7654, coloured7654]
  rw [child]
  dsimp only [result7653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7655_agree_conditional : tree7655 = literal7655 := by
  rw [tree7655_def]
  rfl
theorem node7655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7655 live7655 coloured7655 = result7655 := by
  rw [tree7655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7656_agree_conditional
    (child0 : tree7654 = literal7654)
    (child1 : tree7655 = literal7655) : tree7656 = literal7656 := by
  rw [tree7656_def, child0, child1]
  rfl
theorem node7656_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7654 live7654 coloured7654 = result7654)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7655 live7655 coloured7655 = result7655) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7656 live7656 coloured7656 = result7656 := by
  rw [tree7656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7654 coloured7654 at child
  try dsimp only [live7656, coloured7656]
  rw [child]
  dsimp only [result7654]
  have child := child1
  unfold live7655 coloured7655 at child
  try dsimp only [live7656, coloured7656]
  rw [child]
  dsimp only [result7655]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7657_agree_conditional : tree7657 = literal7657 := by
  rw [tree7657_def]
  rfl
theorem node7657_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7657 live7657 coloured7657 = result7657 := by
  rw [tree7657_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7658_agree_conditional
    (child0 : tree7656 = literal7656)
    (child1 : tree7657 = literal7657) : tree7658 = literal7658 := by
  rw [tree7658_def, child0, child1]
  rfl
theorem node7658_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7656 live7656 coloured7656 = result7656)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7657 live7657 coloured7657 = result7657) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7658 live7658 coloured7658 = result7658 := by
  rw [tree7658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7656 coloured7656 at child
  try dsimp only [live7658, coloured7658]
  rw [child]
  dsimp only [result7656]
  have child := child1
  unfold live7657 coloured7657 at child
  try dsimp only [live7658, coloured7658]
  rw [child]
  dsimp only [result7657]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7659_agree_conditional : tree7659 = literal7659 := by
  rw [tree7659_def]
  rfl
theorem node7659_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7659 live7659 coloured7659 = result7659 := by
  rw [tree7659_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7660_agree_conditional
    (child0 : tree7658 = literal7658)
    (child1 : tree7659 = literal7659) : tree7660 = literal7660 := by
  rw [tree7660_def, child0, child1]
  rfl
theorem node7660_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7658 live7658 coloured7658 = result7658)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7659 live7659 coloured7659 = result7659) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7660 live7660 coloured7660 = result7660 := by
  rw [tree7660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7658 coloured7658 at child
  try dsimp only [live7660, coloured7660]
  rw [child]
  dsimp only [result7658]
  have child := child1
  unfold live7659 coloured7659 at child
  try dsimp only [live7660, coloured7660]
  rw [child]
  dsimp only [result7659]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7661_agree_conditional : tree7661 = literal7661 := by
  rw [tree7661_def]
  rfl
theorem node7661_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7661 live7661 coloured7661 = result7661 := by
  rw [tree7661_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7662_agree_conditional
    (child0 : tree7660 = literal7660)
    (child1 : tree7661 = literal7661) : tree7662 = literal7662 := by
  rw [tree7662_def, child0, child1]
  rfl
theorem node7662_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7660 live7660 coloured7660 = result7660)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7661 live7661 coloured7661 = result7661) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7662 live7662 coloured7662 = result7662 := by
  rw [tree7662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7660 coloured7660 at child
  try dsimp only [live7662, coloured7662]
  rw [child]
  dsimp only [result7660]
  have child := child1
  unfold live7661 coloured7661 at child
  try dsimp only [live7662, coloured7662]
  rw [child]
  dsimp only [result7661]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7663_agree_conditional : tree7663 = literal7663 := by
  rw [tree7663_def]
  rfl
theorem node7663_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7663 live7663 coloured7663 = result7663 := by
  rw [tree7663_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7664_agree_conditional
    (child0 : tree7662 = literal7662)
    (child1 : tree7663 = literal7663) : tree7664 = literal7664 := by
  rw [tree7664_def, child0, child1]
  rfl
theorem node7664_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7662 live7662 coloured7662 = result7662)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7663 live7663 coloured7663 = result7663) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7664 live7664 coloured7664 = result7664 := by
  rw [tree7664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7662 coloured7662 at child
  try dsimp only [live7664, coloured7664]
  rw [child]
  dsimp only [result7662]
  have child := child1
  unfold live7663 coloured7663 at child
  try dsimp only [live7664, coloured7664]
  rw [child]
  dsimp only [result7663]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7665_agree_conditional : tree7665 = literal7665 := by
  rw [tree7665_def]
  rfl
theorem node7665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7665 live7665 coloured7665 = result7665 := by
  rw [tree7665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7666_agree_conditional
    (child0 : tree7664 = literal7664)
    (child1 : tree7665 = literal7665) : tree7666 = literal7666 := by
  rw [tree7666_def, child0, child1]
  rfl
theorem node7666_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7664 live7664 coloured7664 = result7664)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7665 live7665 coloured7665 = result7665) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7666 live7666 coloured7666 = result7666 := by
  rw [tree7666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7664 coloured7664 at child
  try dsimp only [live7666, coloured7666]
  rw [child]
  dsimp only [result7664]
  have child := child1
  unfold live7665 coloured7665 at child
  try dsimp only [live7666, coloured7666]
  rw [child]
  dsimp only [result7665]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7667_agree_conditional : tree7667 = literal7667 := by
  rw [tree7667_def]
  rfl
theorem node7667_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7667 live7667 coloured7667 = result7667 := by
  rw [tree7667_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7668_agree_conditional
    (child0 : tree7666 = literal7666)
    (child1 : tree7667 = literal7667) : tree7668 = literal7668 := by
  rw [tree7668_def, child0, child1]
  rfl
theorem node7668_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7666 live7666 coloured7666 = result7666)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7667 live7667 coloured7667 = result7667) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7668 live7668 coloured7668 = result7668 := by
  rw [tree7668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7666 coloured7666 at child
  try dsimp only [live7668, coloured7668]
  rw [child]
  dsimp only [result7666]
  have child := child1
  unfold live7667 coloured7667 at child
  try dsimp only [live7668, coloured7668]
  rw [child]
  dsimp only [result7667]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7669_agree_conditional : tree7669 = literal7669 := by
  rw [tree7669_def]
  rfl
theorem node7669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7669 live7669 coloured7669 = result7669 := by
  rw [tree7669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7670_agree_conditional
    (child0 : tree7668 = literal7668)
    (child1 : tree7669 = literal7669) : tree7670 = literal7670 := by
  rw [tree7670_def, child0, child1]
  rfl
theorem node7670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7668 live7668 coloured7668 = result7668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7669 live7669 coloured7669 = result7669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7670 live7670 coloured7670 = result7670 := by
  rw [tree7670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7668 coloured7668 at child
  try dsimp only [live7670, coloured7670]
  rw [child]
  dsimp only [result7668]
  have child := child1
  unfold live7669 coloured7669 at child
  try dsimp only [live7670, coloured7670]
  rw [child]
  dsimp only [result7669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7671_agree_conditional : tree7671 = literal7671 := by
  rw [tree7671_def]
  rfl
theorem node7671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7671 live7671 coloured7671 = result7671 := by
  rw [tree7671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7672_agree_conditional
    (child0 : tree7670 = literal7670)
    (child1 : tree7671 = literal7671) : tree7672 = literal7672 := by
  rw [tree7672_def, child0, child1]
  rfl
theorem node7672_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7670 live7670 coloured7670 = result7670)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7671 live7671 coloured7671 = result7671) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7672 live7672 coloured7672 = result7672 := by
  rw [tree7672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7670 coloured7670 at child
  try dsimp only [live7672, coloured7672]
  rw [child]
  dsimp only [result7670]
  have child := child1
  unfold live7671 coloured7671 at child
  try dsimp only [live7672, coloured7672]
  rw [child]
  dsimp only [result7671]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7673_agree_conditional : tree7673 = literal7673 := by
  rw [tree7673_def]
  rfl
theorem node7673_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7673 live7673 coloured7673 = result7673 := by
  rw [tree7673_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7674_agree_conditional
    (child0 : tree7672 = literal7672)
    (child1 : tree7673 = literal7673) : tree7674 = literal7674 := by
  rw [tree7674_def, child0, child1]
  rfl
theorem node7674_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7672 live7672 coloured7672 = result7672)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7673 live7673 coloured7673 = result7673) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7674 live7674 coloured7674 = result7674 := by
  rw [tree7674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7672 coloured7672 at child
  try dsimp only [live7674, coloured7674]
  rw [child]
  dsimp only [result7672]
  have child := child1
  unfold live7673 coloured7673 at child
  try dsimp only [live7674, coloured7674]
  rw [child]
  dsimp only [result7673]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7675_agree_conditional : tree7675 = literal7675 := by
  rw [tree7675_def]
  rfl
theorem node7675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7675 live7675 coloured7675 = result7675 := by
  rw [tree7675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7676_agree_conditional
    (child0 : tree7674 = literal7674)
    (child1 : tree7675 = literal7675) : tree7676 = literal7676 := by
  rw [tree7676_def, child0, child1]
  rfl
theorem node7676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7674 live7674 coloured7674 = result7674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7675 live7675 coloured7675 = result7675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7676 live7676 coloured7676 = result7676 := by
  rw [tree7676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7674 coloured7674 at child
  try dsimp only [live7676, coloured7676]
  rw [child]
  dsimp only [result7674]
  have child := child1
  unfold live7675 coloured7675 at child
  try dsimp only [live7676, coloured7676]
  rw [child]
  dsimp only [result7675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7677_agree_conditional : tree7677 = literal7677 := by
  rw [tree7677_def]
  rfl
theorem node7677_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7677 live7677 coloured7677 = result7677 := by
  rw [tree7677_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7678_agree_conditional
    (child0 : tree7676 = literal7676)
    (child1 : tree7677 = literal7677) : tree7678 = literal7678 := by
  rw [tree7678_def, child0, child1]
  rfl
theorem node7678_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7676 live7676 coloured7676 = result7676)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7677 live7677 coloured7677 = result7677) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7678 live7678 coloured7678 = result7678 := by
  rw [tree7678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7676 coloured7676 at child
  try dsimp only [live7678, coloured7678]
  rw [child]
  dsimp only [result7676]
  have child := child1
  unfold live7677 coloured7677 at child
  try dsimp only [live7678, coloured7678]
  rw [child]
  dsimp only [result7677]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7679_agree_conditional : tree7679 = literal7679 := by
  rw [tree7679_def]
  rfl
theorem node7679_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7679 live7679 coloured7679 = result7679 := by
  rw [tree7679_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
