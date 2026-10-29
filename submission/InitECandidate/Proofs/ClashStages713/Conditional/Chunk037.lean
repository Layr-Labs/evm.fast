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
theorem tree3552_agree_conditional
    (child0 : tree3550 = literal3550)
    (child1 : tree3551 = literal3551) : tree3552 = literal3552 := by
  rw [tree3552_def, child0, child1]
  rfl
theorem node3552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3550 live3550 coloured3550 = result3550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3551 live3551 coloured3551 = result3551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3552 live3552 coloured3552 = result3552 := by
  rw [tree3552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3550 coloured3550 at child
  try dsimp only [live3552, coloured3552]
  rw [child]
  dsimp only [result3550]
  have child := child1
  unfold live3551 coloured3551 at child
  try dsimp only [live3552, coloured3552]
  rw [child]
  dsimp only [result3551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3553_agree_conditional : tree3553 = literal3553 := by
  rw [tree3553_def]
  rfl
theorem node3553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3553 live3553 coloured3553 = result3553 := by
  rw [tree3553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3554_agree_conditional
    (child0 : tree3552 = literal3552)
    (child1 : tree3553 = literal3553) : tree3554 = literal3554 := by
  rw [tree3554_def, child0, child1]
  rfl
theorem node3554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3552 live3552 coloured3552 = result3552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3553 live3553 coloured3553 = result3553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3554 live3554 coloured3554 = result3554 := by
  rw [tree3554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3552 coloured3552 at child
  try dsimp only [live3554, coloured3554]
  rw [child]
  dsimp only [result3552]
  have child := child1
  unfold live3553 coloured3553 at child
  try dsimp only [live3554, coloured3554]
  rw [child]
  dsimp only [result3553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3555_agree_conditional : tree3555 = literal3555 := by
  rw [tree3555_def]
  rfl
theorem node3555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3555 live3555 coloured3555 = result3555 := by
  rw [tree3555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3556_agree_conditional
    (child0 : tree3554 = literal3554)
    (child1 : tree3555 = literal3555) : tree3556 = literal3556 := by
  rw [tree3556_def, child0, child1]
  rfl
theorem node3556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3554 live3554 coloured3554 = result3554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3555 live3555 coloured3555 = result3555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3556 live3556 coloured3556 = result3556 := by
  rw [tree3556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3554 coloured3554 at child
  try dsimp only [live3556, coloured3556]
  rw [child]
  dsimp only [result3554]
  have child := child1
  unfold live3555 coloured3555 at child
  try dsimp only [live3556, coloured3556]
  rw [child]
  dsimp only [result3555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3557_agree_conditional : tree3557 = literal3557 := by
  rw [tree3557_def]
  rfl
theorem node3557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3557 live3557 coloured3557 = result3557 := by
  rw [tree3557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3558_agree_conditional
    (child0 : tree3556 = literal3556)
    (child1 : tree3557 = literal3557) : tree3558 = literal3558 := by
  rw [tree3558_def, child0, child1]
  rfl
theorem node3558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3556 live3556 coloured3556 = result3556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3557 live3557 coloured3557 = result3557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3558 live3558 coloured3558 = result3558 := by
  rw [tree3558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3556 coloured3556 at child
  try dsimp only [live3558, coloured3558]
  rw [child]
  dsimp only [result3556]
  have child := child1
  unfold live3557 coloured3557 at child
  try dsimp only [live3558, coloured3558]
  rw [child]
  dsimp only [result3557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3559_agree_conditional : tree3559 = literal3559 := by
  rw [tree3559_def]
  rfl
theorem node3559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3559 live3559 coloured3559 = result3559 := by
  rw [tree3559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3560_agree_conditional
    (child0 : tree3558 = literal3558)
    (child1 : tree3559 = literal3559) : tree3560 = literal3560 := by
  rw [tree3560_def, child0, child1]
  rfl
theorem node3560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3558 live3558 coloured3558 = result3558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3559 live3559 coloured3559 = result3559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3560 live3560 coloured3560 = result3560 := by
  rw [tree3560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3558 coloured3558 at child
  try dsimp only [live3560, coloured3560]
  rw [child]
  dsimp only [result3558]
  have child := child1
  unfold live3559 coloured3559 at child
  try dsimp only [live3560, coloured3560]
  rw [child]
  dsimp only [result3559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3561_agree_conditional : tree3561 = literal3561 := by
  rw [tree3561_def]
  rfl
theorem node3561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3561 live3561 coloured3561 = result3561 := by
  rw [tree3561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3562_agree_conditional
    (child0 : tree3560 = literal3560)
    (child1 : tree3561 = literal3561) : tree3562 = literal3562 := by
  rw [tree3562_def, child0, child1]
  rfl
theorem node3562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3560 live3560 coloured3560 = result3560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3561 live3561 coloured3561 = result3561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3562 live3562 coloured3562 = result3562 := by
  rw [tree3562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3560 coloured3560 at child
  try dsimp only [live3562, coloured3562]
  rw [child]
  dsimp only [result3560]
  have child := child1
  unfold live3561 coloured3561 at child
  try dsimp only [live3562, coloured3562]
  rw [child]
  dsimp only [result3561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3563_agree_conditional : tree3563 = literal3563 := by
  rw [tree3563_def]
  rfl
theorem node3563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3563 live3563 coloured3563 = result3563 := by
  rw [tree3563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3564_agree_conditional
    (child0 : tree3562 = literal3562)
    (child1 : tree3563 = literal3563) : tree3564 = literal3564 := by
  rw [tree3564_def, child0, child1]
  rfl
theorem node3564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3562 live3562 coloured3562 = result3562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3563 live3563 coloured3563 = result3563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3564 live3564 coloured3564 = result3564 := by
  rw [tree3564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3562 coloured3562 at child
  try dsimp only [live3564, coloured3564]
  rw [child]
  dsimp only [result3562]
  have child := child1
  unfold live3563 coloured3563 at child
  try dsimp only [live3564, coloured3564]
  rw [child]
  dsimp only [result3563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3565_agree_conditional : tree3565 = literal3565 := by
  rw [tree3565_def]
  rfl
theorem node3565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3565 live3565 coloured3565 = result3565 := by
  rw [tree3565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3566_agree_conditional
    (child0 : tree3564 = literal3564)
    (child1 : tree3565 = literal3565) : tree3566 = literal3566 := by
  rw [tree3566_def, child0, child1]
  rfl
theorem node3566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3564 live3564 coloured3564 = result3564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3565 live3565 coloured3565 = result3565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3566 live3566 coloured3566 = result3566 := by
  rw [tree3566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3564 coloured3564 at child
  try dsimp only [live3566, coloured3566]
  rw [child]
  dsimp only [result3564]
  have child := child1
  unfold live3565 coloured3565 at child
  try dsimp only [live3566, coloured3566]
  rw [child]
  dsimp only [result3565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3567_agree_conditional : tree3567 = literal3567 := by
  rw [tree3567_def]
  rfl
theorem node3567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3567 live3567 coloured3567 = result3567 := by
  rw [tree3567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3568_agree_conditional
    (child0 : tree3566 = literal3566)
    (child1 : tree3567 = literal3567) : tree3568 = literal3568 := by
  rw [tree3568_def, child0, child1]
  rfl
theorem node3568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3566 live3566 coloured3566 = result3566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3567 live3567 coloured3567 = result3567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3568 live3568 coloured3568 = result3568 := by
  rw [tree3568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3566 coloured3566 at child
  try dsimp only [live3568, coloured3568]
  rw [child]
  dsimp only [result3566]
  have child := child1
  unfold live3567 coloured3567 at child
  try dsimp only [live3568, coloured3568]
  rw [child]
  dsimp only [result3567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3569_agree_conditional : tree3569 = literal3569 := by
  rw [tree3569_def]
  rfl
theorem node3569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3569 live3569 coloured3569 = result3569 := by
  rw [tree3569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3570_agree_conditional
    (child0 : tree3568 = literal3568)
    (child1 : tree3569 = literal3569) : tree3570 = literal3570 := by
  rw [tree3570_def, child0, child1]
  rfl
theorem node3570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3568 live3568 coloured3568 = result3568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3569 live3569 coloured3569 = result3569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3570 live3570 coloured3570 = result3570 := by
  rw [tree3570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3568 coloured3568 at child
  try dsimp only [live3570, coloured3570]
  rw [child]
  dsimp only [result3568]
  have child := child1
  unfold live3569 coloured3569 at child
  try dsimp only [live3570, coloured3570]
  rw [child]
  dsimp only [result3569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3571_agree_conditional : tree3571 = literal3571 := by
  rw [tree3571_def]
  rfl
theorem node3571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3571 live3571 coloured3571 = result3571 := by
  rw [tree3571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3572_agree_conditional
    (child0 : tree3570 = literal3570)
    (child1 : tree3571 = literal3571) : tree3572 = literal3572 := by
  rw [tree3572_def, child0, child1]
  rfl
theorem node3572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3570 live3570 coloured3570 = result3570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3571 live3571 coloured3571 = result3571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3572 live3572 coloured3572 = result3572 := by
  rw [tree3572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3570 coloured3570 at child
  try dsimp only [live3572, coloured3572]
  rw [child]
  dsimp only [result3570]
  have child := child1
  unfold live3571 coloured3571 at child
  try dsimp only [live3572, coloured3572]
  rw [child]
  dsimp only [result3571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3573_agree_conditional : tree3573 = literal3573 := by
  rw [tree3573_def]
  rfl
theorem node3573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3573 live3573 coloured3573 = result3573 := by
  rw [tree3573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3574_agree_conditional
    (child0 : tree3572 = literal3572)
    (child1 : tree3573 = literal3573) : tree3574 = literal3574 := by
  rw [tree3574_def, child0, child1]
  rfl
theorem node3574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3572 live3572 coloured3572 = result3572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3573 live3573 coloured3573 = result3573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3574 live3574 coloured3574 = result3574 := by
  rw [tree3574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3572 coloured3572 at child
  try dsimp only [live3574, coloured3574]
  rw [child]
  dsimp only [result3572]
  have child := child1
  unfold live3573 coloured3573 at child
  try dsimp only [live3574, coloured3574]
  rw [child]
  dsimp only [result3573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3575_agree_conditional : tree3575 = literal3575 := by
  rw [tree3575_def]
  rfl
theorem node3575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3575 live3575 coloured3575 = result3575 := by
  rw [tree3575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3576_agree_conditional
    (child0 : tree3574 = literal3574)
    (child1 : tree3575 = literal3575) : tree3576 = literal3576 := by
  rw [tree3576_def, child0, child1]
  rfl
theorem node3576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3574 live3574 coloured3574 = result3574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3575 live3575 coloured3575 = result3575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3576 live3576 coloured3576 = result3576 := by
  rw [tree3576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3574 coloured3574 at child
  try dsimp only [live3576, coloured3576]
  rw [child]
  dsimp only [result3574]
  have child := child1
  unfold live3575 coloured3575 at child
  try dsimp only [live3576, coloured3576]
  rw [child]
  dsimp only [result3575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3577_agree_conditional : tree3577 = literal3577 := by
  rw [tree3577_def]
  rfl
theorem node3577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3577 live3577 coloured3577 = result3577 := by
  rw [tree3577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3578_agree_conditional
    (child0 : tree3576 = literal3576)
    (child1 : tree3577 = literal3577) : tree3578 = literal3578 := by
  rw [tree3578_def, child0, child1]
  rfl
theorem node3578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3576 live3576 coloured3576 = result3576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3577 live3577 coloured3577 = result3577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3578 live3578 coloured3578 = result3578 := by
  rw [tree3578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3576 coloured3576 at child
  try dsimp only [live3578, coloured3578]
  rw [child]
  dsimp only [result3576]
  have child := child1
  unfold live3577 coloured3577 at child
  try dsimp only [live3578, coloured3578]
  rw [child]
  dsimp only [result3577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3579_agree_conditional : tree3579 = literal3579 := by
  rw [tree3579_def]
  rfl
theorem node3579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3579 live3579 coloured3579 = result3579 := by
  rw [tree3579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3580_agree_conditional
    (child0 : tree3578 = literal3578)
    (child1 : tree3579 = literal3579) : tree3580 = literal3580 := by
  rw [tree3580_def, child0, child1]
  rfl
theorem node3580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3578 live3578 coloured3578 = result3578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3579 live3579 coloured3579 = result3579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3580 live3580 coloured3580 = result3580 := by
  rw [tree3580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3578 coloured3578 at child
  try dsimp only [live3580, coloured3580]
  rw [child]
  dsimp only [result3578]
  have child := child1
  unfold live3579 coloured3579 at child
  try dsimp only [live3580, coloured3580]
  rw [child]
  dsimp only [result3579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3581_agree_conditional : tree3581 = literal3581 := by
  rw [tree3581_def]
  rfl
theorem node3581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3581 live3581 coloured3581 = result3581 := by
  rw [tree3581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3582_agree_conditional
    (child0 : tree3580 = literal3580)
    (child1 : tree3581 = literal3581) : tree3582 = literal3582 := by
  rw [tree3582_def, child0, child1]
  rfl
theorem node3582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3580 live3580 coloured3580 = result3580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3581 live3581 coloured3581 = result3581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3582 live3582 coloured3582 = result3582 := by
  rw [tree3582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3580 coloured3580 at child
  try dsimp only [live3582, coloured3582]
  rw [child]
  dsimp only [result3580]
  have child := child1
  unfold live3581 coloured3581 at child
  try dsimp only [live3582, coloured3582]
  rw [child]
  dsimp only [result3581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3583_agree_conditional : tree3583 = literal3583 := by
  rw [tree3583_def]
  rfl
theorem node3583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3583 live3583 coloured3583 = result3583 := by
  rw [tree3583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3584_agree_conditional
    (child0 : tree3582 = literal3582)
    (child1 : tree3583 = literal3583) : tree3584 = literal3584 := by
  rw [tree3584_def, child0, child1]
  rfl
theorem node3584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3582 live3582 coloured3582 = result3582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3583 live3583 coloured3583 = result3583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3584 live3584 coloured3584 = result3584 := by
  rw [tree3584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3582 coloured3582 at child
  try dsimp only [live3584, coloured3584]
  rw [child]
  dsimp only [result3582]
  have child := child1
  unfold live3583 coloured3583 at child
  try dsimp only [live3584, coloured3584]
  rw [child]
  dsimp only [result3583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3585_agree_conditional : tree3585 = literal3585 := by
  rw [tree3585_def]
  rfl
theorem node3585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3585 live3585 coloured3585 = result3585 := by
  rw [tree3585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3586_agree_conditional
    (child0 : tree3584 = literal3584)
    (child1 : tree3585 = literal3585) : tree3586 = literal3586 := by
  rw [tree3586_def, child0, child1]
  rfl
theorem node3586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3584 live3584 coloured3584 = result3584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3585 live3585 coloured3585 = result3585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3586 live3586 coloured3586 = result3586 := by
  rw [tree3586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3584 coloured3584 at child
  try dsimp only [live3586, coloured3586]
  rw [child]
  dsimp only [result3584]
  have child := child1
  unfold live3585 coloured3585 at child
  try dsimp only [live3586, coloured3586]
  rw [child]
  dsimp only [result3585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3587_agree_conditional : tree3587 = literal3587 := by
  rw [tree3587_def]
  rfl
theorem node3587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3587 live3587 coloured3587 = result3587 := by
  rw [tree3587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3588_agree_conditional
    (child0 : tree3586 = literal3586)
    (child1 : tree3587 = literal3587) : tree3588 = literal3588 := by
  rw [tree3588_def, child0, child1]
  rfl
theorem node3588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3586 live3586 coloured3586 = result3586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3587 live3587 coloured3587 = result3587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3588 live3588 coloured3588 = result3588 := by
  rw [tree3588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3586 coloured3586 at child
  try dsimp only [live3588, coloured3588]
  rw [child]
  dsimp only [result3586]
  have child := child1
  unfold live3587 coloured3587 at child
  try dsimp only [live3588, coloured3588]
  rw [child]
  dsimp only [result3587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3589_agree_conditional : tree3589 = literal3589 := by
  rw [tree3589_def]
  rfl
theorem node3589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3589 live3589 coloured3589 = result3589 := by
  rw [tree3589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3590_agree_conditional
    (child0 : tree3588 = literal3588)
    (child1 : tree3589 = literal3589) : tree3590 = literal3590 := by
  rw [tree3590_def, child0, child1]
  rfl
theorem node3590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3588 live3588 coloured3588 = result3588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3589 live3589 coloured3589 = result3589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3590 live3590 coloured3590 = result3590 := by
  rw [tree3590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3588 coloured3588 at child
  try dsimp only [live3590, coloured3590]
  rw [child]
  dsimp only [result3588]
  have child := child1
  unfold live3589 coloured3589 at child
  try dsimp only [live3590, coloured3590]
  rw [child]
  dsimp only [result3589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3591_agree_conditional : tree3591 = literal3591 := by
  rw [tree3591_def]
  rfl
theorem node3591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3591 live3591 coloured3591 = result3591 := by
  rw [tree3591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3592_agree_conditional
    (child0 : tree3590 = literal3590)
    (child1 : tree3591 = literal3591) : tree3592 = literal3592 := by
  rw [tree3592_def, child0, child1]
  rfl
theorem node3592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3590 live3590 coloured3590 = result3590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3591 live3591 coloured3591 = result3591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3592 live3592 coloured3592 = result3592 := by
  rw [tree3592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3590 coloured3590 at child
  try dsimp only [live3592, coloured3592]
  rw [child]
  dsimp only [result3590]
  have child := child1
  unfold live3591 coloured3591 at child
  try dsimp only [live3592, coloured3592]
  rw [child]
  dsimp only [result3591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3593_agree_conditional : tree3593 = literal3593 := by
  rw [tree3593_def]
  rfl
theorem node3593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3593 live3593 coloured3593 = result3593 := by
  rw [tree3593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3594_agree_conditional
    (child0 : tree3592 = literal3592)
    (child1 : tree3593 = literal3593) : tree3594 = literal3594 := by
  rw [tree3594_def, child0, child1]
  rfl
theorem node3594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3592 live3592 coloured3592 = result3592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3593 live3593 coloured3593 = result3593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3594 live3594 coloured3594 = result3594 := by
  rw [tree3594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3592 coloured3592 at child
  try dsimp only [live3594, coloured3594]
  rw [child]
  dsimp only [result3592]
  have child := child1
  unfold live3593 coloured3593 at child
  try dsimp only [live3594, coloured3594]
  rw [child]
  dsimp only [result3593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3595_agree_conditional : tree3595 = literal3595 := by
  rw [tree3595_def]
  rfl
theorem node3595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3595 live3595 coloured3595 = result3595 := by
  rw [tree3595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3596_agree_conditional
    (child0 : tree3594 = literal3594)
    (child1 : tree3595 = literal3595) : tree3596 = literal3596 := by
  rw [tree3596_def, child0, child1]
  rfl
theorem node3596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3594 live3594 coloured3594 = result3594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3595 live3595 coloured3595 = result3595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3596 live3596 coloured3596 = result3596 := by
  rw [tree3596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3594 coloured3594 at child
  try dsimp only [live3596, coloured3596]
  rw [child]
  dsimp only [result3594]
  have child := child1
  unfold live3595 coloured3595 at child
  try dsimp only [live3596, coloured3596]
  rw [child]
  dsimp only [result3595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3597_agree_conditional : tree3597 = literal3597 := by
  rw [tree3597_def]
  rfl
theorem node3597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3597 live3597 coloured3597 = result3597 := by
  rw [tree3597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3598_agree_conditional
    (child0 : tree3596 = literal3596)
    (child1 : tree3597 = literal3597) : tree3598 = literal3598 := by
  rw [tree3598_def, child0, child1]
  rfl
theorem node3598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3596 live3596 coloured3596 = result3596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3597 live3597 coloured3597 = result3597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3598 live3598 coloured3598 = result3598 := by
  rw [tree3598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3596 coloured3596 at child
  try dsimp only [live3598, coloured3598]
  rw [child]
  dsimp only [result3596]
  have child := child1
  unfold live3597 coloured3597 at child
  try dsimp only [live3598, coloured3598]
  rw [child]
  dsimp only [result3597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3599_agree_conditional : tree3599 = literal3599 := by
  rw [tree3599_def]
  rfl
theorem node3599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3599 live3599 coloured3599 = result3599 := by
  rw [tree3599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3600_agree_conditional
    (child0 : tree3598 = literal3598)
    (child1 : tree3599 = literal3599) : tree3600 = literal3600 := by
  rw [tree3600_def, child0, child1]
  rfl
theorem node3600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3598 live3598 coloured3598 = result3598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3599 live3599 coloured3599 = result3599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3600 live3600 coloured3600 = result3600 := by
  rw [tree3600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3598 coloured3598 at child
  try dsimp only [live3600, coloured3600]
  rw [child]
  dsimp only [result3598]
  have child := child1
  unfold live3599 coloured3599 at child
  try dsimp only [live3600, coloured3600]
  rw [child]
  dsimp only [result3599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3601_agree_conditional : tree3601 = literal3601 := by
  rw [tree3601_def]
  rfl
theorem node3601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3601 live3601 coloured3601 = result3601 := by
  rw [tree3601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3602_agree_conditional
    (child0 : tree3600 = literal3600)
    (child1 : tree3601 = literal3601) : tree3602 = literal3602 := by
  rw [tree3602_def, child0, child1]
  rfl
theorem node3602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3600 live3600 coloured3600 = result3600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3601 live3601 coloured3601 = result3601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3602 live3602 coloured3602 = result3602 := by
  rw [tree3602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3600 coloured3600 at child
  try dsimp only [live3602, coloured3602]
  rw [child]
  dsimp only [result3600]
  have child := child1
  unfold live3601 coloured3601 at child
  try dsimp only [live3602, coloured3602]
  rw [child]
  dsimp only [result3601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3603_agree_conditional : tree3603 = literal3603 := by
  rw [tree3603_def]
  rfl
theorem node3603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3603 live3603 coloured3603 = result3603 := by
  rw [tree3603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3604_agree_conditional
    (child0 : tree3602 = literal3602)
    (child1 : tree3603 = literal3603) : tree3604 = literal3604 := by
  rw [tree3604_def, child0, child1]
  rfl
theorem node3604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3602 live3602 coloured3602 = result3602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3603 live3603 coloured3603 = result3603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3604 live3604 coloured3604 = result3604 := by
  rw [tree3604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3602 coloured3602 at child
  try dsimp only [live3604, coloured3604]
  rw [child]
  dsimp only [result3602]
  have child := child1
  unfold live3603 coloured3603 at child
  try dsimp only [live3604, coloured3604]
  rw [child]
  dsimp only [result3603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3605_agree_conditional : tree3605 = literal3605 := by
  rw [tree3605_def]
  rfl
theorem node3605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3605 live3605 coloured3605 = result3605 := by
  rw [tree3605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3606_agree_conditional
    (child0 : tree3604 = literal3604)
    (child1 : tree3605 = literal3605) : tree3606 = literal3606 := by
  rw [tree3606_def, child0, child1]
  rfl
theorem node3606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3604 live3604 coloured3604 = result3604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3605 live3605 coloured3605 = result3605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3606 live3606 coloured3606 = result3606 := by
  rw [tree3606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3604 coloured3604 at child
  try dsimp only [live3606, coloured3606]
  rw [child]
  dsimp only [result3604]
  have child := child1
  unfold live3605 coloured3605 at child
  try dsimp only [live3606, coloured3606]
  rw [child]
  dsimp only [result3605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3607_agree_conditional : tree3607 = literal3607 := by
  rw [tree3607_def]
  rfl
theorem node3607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3607 live3607 coloured3607 = result3607 := by
  rw [tree3607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3608_agree_conditional
    (child0 : tree3606 = literal3606)
    (child1 : tree3607 = literal3607) : tree3608 = literal3608 := by
  rw [tree3608_def, child0, child1]
  rfl
theorem node3608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3606 live3606 coloured3606 = result3606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3607 live3607 coloured3607 = result3607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3608 live3608 coloured3608 = result3608 := by
  rw [tree3608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3606 coloured3606 at child
  try dsimp only [live3608, coloured3608]
  rw [child]
  dsimp only [result3606]
  have child := child1
  unfold live3607 coloured3607 at child
  try dsimp only [live3608, coloured3608]
  rw [child]
  dsimp only [result3607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3609_agree_conditional : tree3609 = literal3609 := by
  rw [tree3609_def]
  rfl
theorem node3609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3609 live3609 coloured3609 = result3609 := by
  rw [tree3609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3610_agree_conditional
    (child0 : tree3608 = literal3608)
    (child1 : tree3609 = literal3609) : tree3610 = literal3610 := by
  rw [tree3610_def, child0, child1]
  rfl
theorem node3610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3608 live3608 coloured3608 = result3608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3609 live3609 coloured3609 = result3609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3610 live3610 coloured3610 = result3610 := by
  rw [tree3610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3608 coloured3608 at child
  try dsimp only [live3610, coloured3610]
  rw [child]
  dsimp only [result3608]
  have child := child1
  unfold live3609 coloured3609 at child
  try dsimp only [live3610, coloured3610]
  rw [child]
  dsimp only [result3609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3611_agree_conditional : tree3611 = literal3611 := by
  rw [tree3611_def]
  rfl
theorem node3611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3611 live3611 coloured3611 = result3611 := by
  rw [tree3611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3612_agree_conditional
    (child0 : tree3610 = literal3610)
    (child1 : tree3611 = literal3611) : tree3612 = literal3612 := by
  rw [tree3612_def, child0, child1]
  rfl
theorem node3612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3610 live3610 coloured3610 = result3610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3611 live3611 coloured3611 = result3611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3612 live3612 coloured3612 = result3612 := by
  rw [tree3612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3610 coloured3610 at child
  try dsimp only [live3612, coloured3612]
  rw [child]
  dsimp only [result3610]
  have child := child1
  unfold live3611 coloured3611 at child
  try dsimp only [live3612, coloured3612]
  rw [child]
  dsimp only [result3611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3613_agree_conditional : tree3613 = literal3613 := by
  rw [tree3613_def]
  rfl
theorem node3613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3613 live3613 coloured3613 = result3613 := by
  rw [tree3613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3614_agree_conditional
    (child0 : tree3612 = literal3612)
    (child1 : tree3613 = literal3613) : tree3614 = literal3614 := by
  rw [tree3614_def, child0, child1]
  rfl
theorem node3614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3612 live3612 coloured3612 = result3612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3613 live3613 coloured3613 = result3613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3614 live3614 coloured3614 = result3614 := by
  rw [tree3614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3612 coloured3612 at child
  try dsimp only [live3614, coloured3614]
  rw [child]
  dsimp only [result3612]
  have child := child1
  unfold live3613 coloured3613 at child
  try dsimp only [live3614, coloured3614]
  rw [child]
  dsimp only [result3613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3615_agree_conditional : tree3615 = literal3615 := by
  rw [tree3615_def]
  rfl
theorem node3615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3615 live3615 coloured3615 = result3615 := by
  rw [tree3615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3616_agree_conditional
    (child0 : tree3614 = literal3614)
    (child1 : tree3615 = literal3615) : tree3616 = literal3616 := by
  rw [tree3616_def, child0, child1]
  rfl
theorem node3616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3614 live3614 coloured3614 = result3614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3615 live3615 coloured3615 = result3615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3616 live3616 coloured3616 = result3616 := by
  rw [tree3616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3614 coloured3614 at child
  try dsimp only [live3616, coloured3616]
  rw [child]
  dsimp only [result3614]
  have child := child1
  unfold live3615 coloured3615 at child
  try dsimp only [live3616, coloured3616]
  rw [child]
  dsimp only [result3615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3617_agree_conditional : tree3617 = literal3617 := by
  rw [tree3617_def]
  rfl
theorem node3617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3617 live3617 coloured3617 = result3617 := by
  rw [tree3617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3618_agree_conditional
    (child0 : tree3616 = literal3616)
    (child1 : tree3617 = literal3617) : tree3618 = literal3618 := by
  rw [tree3618_def, child0, child1]
  rfl
theorem node3618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3616 live3616 coloured3616 = result3616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3617 live3617 coloured3617 = result3617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3618 live3618 coloured3618 = result3618 := by
  rw [tree3618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3616 coloured3616 at child
  try dsimp only [live3618, coloured3618]
  rw [child]
  dsimp only [result3616]
  have child := child1
  unfold live3617 coloured3617 at child
  try dsimp only [live3618, coloured3618]
  rw [child]
  dsimp only [result3617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3619_agree_conditional : tree3619 = literal3619 := by
  rw [tree3619_def]
  rfl
theorem node3619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3619 live3619 coloured3619 = result3619 := by
  rw [tree3619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3620_agree_conditional
    (child0 : tree3618 = literal3618)
    (child1 : tree3619 = literal3619) : tree3620 = literal3620 := by
  rw [tree3620_def, child0, child1]
  rfl
theorem node3620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3618 live3618 coloured3618 = result3618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3619 live3619 coloured3619 = result3619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3620 live3620 coloured3620 = result3620 := by
  rw [tree3620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3618 coloured3618 at child
  try dsimp only [live3620, coloured3620]
  rw [child]
  dsimp only [result3618]
  have child := child1
  unfold live3619 coloured3619 at child
  try dsimp only [live3620, coloured3620]
  rw [child]
  dsimp only [result3619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3621_agree_conditional : tree3621 = literal3621 := by
  rw [tree3621_def]
  rfl
theorem node3621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3621 live3621 coloured3621 = result3621 := by
  rw [tree3621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3622_agree_conditional
    (child0 : tree3620 = literal3620)
    (child1 : tree3621 = literal3621) : tree3622 = literal3622 := by
  rw [tree3622_def, child0, child1]
  rfl
theorem node3622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3620 live3620 coloured3620 = result3620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3621 live3621 coloured3621 = result3621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3622 live3622 coloured3622 = result3622 := by
  rw [tree3622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3620 coloured3620 at child
  try dsimp only [live3622, coloured3622]
  rw [child]
  dsimp only [result3620]
  have child := child1
  unfold live3621 coloured3621 at child
  try dsimp only [live3622, coloured3622]
  rw [child]
  dsimp only [result3621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3623_agree_conditional : tree3623 = literal3623 := by
  rw [tree3623_def]
  rfl
theorem node3623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3623 live3623 coloured3623 = result3623 := by
  rw [tree3623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3624_agree_conditional
    (child0 : tree3622 = literal3622)
    (child1 : tree3623 = literal3623) : tree3624 = literal3624 := by
  rw [tree3624_def, child0, child1]
  rfl
theorem node3624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3622 live3622 coloured3622 = result3622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3623 live3623 coloured3623 = result3623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3624 live3624 coloured3624 = result3624 := by
  rw [tree3624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3622 coloured3622 at child
  try dsimp only [live3624, coloured3624]
  rw [child]
  dsimp only [result3622]
  have child := child1
  unfold live3623 coloured3623 at child
  try dsimp only [live3624, coloured3624]
  rw [child]
  dsimp only [result3623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3625_agree_conditional : tree3625 = literal3625 := by
  rw [tree3625_def]
  rfl
theorem node3625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3625 live3625 coloured3625 = result3625 := by
  rw [tree3625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3626_agree_conditional
    (child0 : tree3624 = literal3624)
    (child1 : tree3625 = literal3625) : tree3626 = literal3626 := by
  rw [tree3626_def, child0, child1]
  rfl
theorem node3626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3624 live3624 coloured3624 = result3624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3625 live3625 coloured3625 = result3625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3626 live3626 coloured3626 = result3626 := by
  rw [tree3626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3624 coloured3624 at child
  try dsimp only [live3626, coloured3626]
  rw [child]
  dsimp only [result3624]
  have child := child1
  unfold live3625 coloured3625 at child
  try dsimp only [live3626, coloured3626]
  rw [child]
  dsimp only [result3625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3627_agree_conditional : tree3627 = literal3627 := by
  rw [tree3627_def]
  rfl
theorem node3627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3627 live3627 coloured3627 = result3627 := by
  rw [tree3627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3628_agree_conditional
    (child0 : tree3626 = literal3626)
    (child1 : tree3627 = literal3627) : tree3628 = literal3628 := by
  rw [tree3628_def, child0, child1]
  rfl
theorem node3628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3626 live3626 coloured3626 = result3626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3627 live3627 coloured3627 = result3627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3628 live3628 coloured3628 = result3628 := by
  rw [tree3628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3626 coloured3626 at child
  try dsimp only [live3628, coloured3628]
  rw [child]
  dsimp only [result3626]
  have child := child1
  unfold live3627 coloured3627 at child
  try dsimp only [live3628, coloured3628]
  rw [child]
  dsimp only [result3627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3629_agree_conditional : tree3629 = literal3629 := by
  rw [tree3629_def]
  rfl
theorem node3629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3629 live3629 coloured3629 = result3629 := by
  rw [tree3629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3630_agree_conditional
    (child0 : tree3628 = literal3628)
    (child1 : tree3629 = literal3629) : tree3630 = literal3630 := by
  rw [tree3630_def, child0, child1]
  rfl
theorem node3630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3628 live3628 coloured3628 = result3628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3629 live3629 coloured3629 = result3629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3630 live3630 coloured3630 = result3630 := by
  rw [tree3630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3628 coloured3628 at child
  try dsimp only [live3630, coloured3630]
  rw [child]
  dsimp only [result3628]
  have child := child1
  unfold live3629 coloured3629 at child
  try dsimp only [live3630, coloured3630]
  rw [child]
  dsimp only [result3629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3631_agree_conditional : tree3631 = literal3631 := by
  rw [tree3631_def]
  rfl
theorem node3631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3631 live3631 coloured3631 = result3631 := by
  rw [tree3631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3632_agree_conditional
    (child0 : tree3630 = literal3630)
    (child1 : tree3631 = literal3631) : tree3632 = literal3632 := by
  rw [tree3632_def, child0, child1]
  rfl
theorem node3632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3630 live3630 coloured3630 = result3630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3631 live3631 coloured3631 = result3631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3632 live3632 coloured3632 = result3632 := by
  rw [tree3632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3630 coloured3630 at child
  try dsimp only [live3632, coloured3632]
  rw [child]
  dsimp only [result3630]
  have child := child1
  unfold live3631 coloured3631 at child
  try dsimp only [live3632, coloured3632]
  rw [child]
  dsimp only [result3631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3633_agree_conditional : tree3633 = literal3633 := by
  rw [tree3633_def]
  rfl
theorem node3633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3633 live3633 coloured3633 = result3633 := by
  rw [tree3633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3634_agree_conditional
    (child0 : tree3632 = literal3632)
    (child1 : tree3633 = literal3633) : tree3634 = literal3634 := by
  rw [tree3634_def, child0, child1]
  rfl
theorem node3634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3632 live3632 coloured3632 = result3632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3633 live3633 coloured3633 = result3633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3634 live3634 coloured3634 = result3634 := by
  rw [tree3634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3632 coloured3632 at child
  try dsimp only [live3634, coloured3634]
  rw [child]
  dsimp only [result3632]
  have child := child1
  unfold live3633 coloured3633 at child
  try dsimp only [live3634, coloured3634]
  rw [child]
  dsimp only [result3633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3635_agree_conditional : tree3635 = literal3635 := by
  rw [tree3635_def]
  rfl
theorem node3635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3635 live3635 coloured3635 = result3635 := by
  rw [tree3635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3636_agree_conditional
    (child0 : tree3634 = literal3634)
    (child1 : tree3635 = literal3635) : tree3636 = literal3636 := by
  rw [tree3636_def, child0, child1]
  rfl
theorem node3636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3634 live3634 coloured3634 = result3634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3635 live3635 coloured3635 = result3635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3636 live3636 coloured3636 = result3636 := by
  rw [tree3636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3634 coloured3634 at child
  try dsimp only [live3636, coloured3636]
  rw [child]
  dsimp only [result3634]
  have child := child1
  unfold live3635 coloured3635 at child
  try dsimp only [live3636, coloured3636]
  rw [child]
  dsimp only [result3635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3637_agree_conditional : tree3637 = literal3637 := by
  rw [tree3637_def]
  rfl
theorem node3637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3637 live3637 coloured3637 = result3637 := by
  rw [tree3637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3638_agree_conditional
    (child0 : tree3636 = literal3636)
    (child1 : tree3637 = literal3637) : tree3638 = literal3638 := by
  rw [tree3638_def, child0, child1]
  rfl
theorem node3638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3636 live3636 coloured3636 = result3636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3637 live3637 coloured3637 = result3637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3638 live3638 coloured3638 = result3638 := by
  rw [tree3638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3636 coloured3636 at child
  try dsimp only [live3638, coloured3638]
  rw [child]
  dsimp only [result3636]
  have child := child1
  unfold live3637 coloured3637 at child
  try dsimp only [live3638, coloured3638]
  rw [child]
  dsimp only [result3637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3639_agree_conditional : tree3639 = literal3639 := by
  rw [tree3639_def]
  rfl
theorem node3639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3639 live3639 coloured3639 = result3639 := by
  rw [tree3639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3640_agree_conditional
    (child0 : tree3638 = literal3638)
    (child1 : tree3639 = literal3639) : tree3640 = literal3640 := by
  rw [tree3640_def, child0, child1]
  rfl
theorem node3640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3638 live3638 coloured3638 = result3638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3639 live3639 coloured3639 = result3639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3640 live3640 coloured3640 = result3640 := by
  rw [tree3640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3638 coloured3638 at child
  try dsimp only [live3640, coloured3640]
  rw [child]
  dsimp only [result3638]
  have child := child1
  unfold live3639 coloured3639 at child
  try dsimp only [live3640, coloured3640]
  rw [child]
  dsimp only [result3639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3641_agree_conditional : tree3641 = literal3641 := by
  rw [tree3641_def]
  rfl
theorem node3641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3641 live3641 coloured3641 = result3641 := by
  rw [tree3641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3642_agree_conditional
    (child0 : tree3640 = literal3640)
    (child1 : tree3641 = literal3641) : tree3642 = literal3642 := by
  rw [tree3642_def, child0, child1]
  rfl
theorem node3642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3640 live3640 coloured3640 = result3640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3641 live3641 coloured3641 = result3641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3642 live3642 coloured3642 = result3642 := by
  rw [tree3642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3640 coloured3640 at child
  try dsimp only [live3642, coloured3642]
  rw [child]
  dsimp only [result3640]
  have child := child1
  unfold live3641 coloured3641 at child
  try dsimp only [live3642, coloured3642]
  rw [child]
  dsimp only [result3641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3643_agree_conditional : tree3643 = literal3643 := by
  rw [tree3643_def]
  rfl
theorem node3643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3643 live3643 coloured3643 = result3643 := by
  rw [tree3643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3644_agree_conditional
    (child0 : tree3642 = literal3642)
    (child1 : tree3643 = literal3643) : tree3644 = literal3644 := by
  rw [tree3644_def, child0, child1]
  rfl
theorem node3644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3642 live3642 coloured3642 = result3642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3643 live3643 coloured3643 = result3643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3644 live3644 coloured3644 = result3644 := by
  rw [tree3644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3642 coloured3642 at child
  try dsimp only [live3644, coloured3644]
  rw [child]
  dsimp only [result3642]
  have child := child1
  unfold live3643 coloured3643 at child
  try dsimp only [live3644, coloured3644]
  rw [child]
  dsimp only [result3643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3645_agree_conditional : tree3645 = literal3645 := by
  rw [tree3645_def]
  rfl
theorem node3645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3645 live3645 coloured3645 = result3645 := by
  rw [tree3645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3646_agree_conditional
    (child0 : tree3644 = literal3644)
    (child1 : tree3645 = literal3645) : tree3646 = literal3646 := by
  rw [tree3646_def, child0, child1]
  rfl
theorem node3646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3644 live3644 coloured3644 = result3644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3645 live3645 coloured3645 = result3645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3646 live3646 coloured3646 = result3646 := by
  rw [tree3646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3644 coloured3644 at child
  try dsimp only [live3646, coloured3646]
  rw [child]
  dsimp only [result3644]
  have child := child1
  unfold live3645 coloured3645 at child
  try dsimp only [live3646, coloured3646]
  rw [child]
  dsimp only [result3645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3647_agree_conditional : tree3647 = literal3647 := by
  rw [tree3647_def]
  rfl
theorem node3647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3647 live3647 coloured3647 = result3647 := by
  rw [tree3647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
