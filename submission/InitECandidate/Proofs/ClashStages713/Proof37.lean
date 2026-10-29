import InitECandidate.Proofs.ClashStages713.Proof36
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3552_agree : tree3552 = literal3552 := by
  rw [tree3552_def, tree3550_agree, tree3551_agree]
  rfl
theorem node3552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3552 live3552 coloured3552 = result3552 := by
  rw [tree3552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3550_eq
  unfold live3550 coloured3550 at child
  try dsimp only [live3552, coloured3552]
  rw [child]
  dsimp only [result3550]
  have child := node3551_eq
  unfold live3551 coloured3551 at child
  try dsimp only [live3552, coloured3552]
  rw [child]
  dsimp only [result3551]
  try dsimp only [colour, result3552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3553_agree : tree3553 = literal3553 := by
  rw [tree3553_def]
  rfl
theorem node3553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3553 live3553 coloured3553 = result3553 := by
  rw [tree3553_def]
  try dsimp only [colour, result3553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3554_agree : tree3554 = literal3554 := by
  rw [tree3554_def, tree3552_agree, tree3553_agree]
  rfl
theorem node3554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3554 live3554 coloured3554 = result3554 := by
  rw [tree3554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3552_eq
  unfold live3552 coloured3552 at child
  try dsimp only [live3554, coloured3554]
  rw [child]
  dsimp only [result3552]
  have child := node3553_eq
  unfold live3553 coloured3553 at child
  try dsimp only [live3554, coloured3554]
  rw [child]
  dsimp only [result3553]
  try dsimp only [colour, result3554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3555_agree : tree3555 = literal3555 := by
  rw [tree3555_def]
  rfl
theorem node3555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3555 live3555 coloured3555 = result3555 := by
  rw [tree3555_def]
  try dsimp only [colour, result3555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3556_agree : tree3556 = literal3556 := by
  rw [tree3556_def, tree3554_agree, tree3555_agree]
  rfl
theorem node3556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3556 live3556 coloured3556 = result3556 := by
  rw [tree3556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3554_eq
  unfold live3554 coloured3554 at child
  try dsimp only [live3556, coloured3556]
  rw [child]
  dsimp only [result3554]
  have child := node3555_eq
  unfold live3555 coloured3555 at child
  try dsimp only [live3556, coloured3556]
  rw [child]
  dsimp only [result3555]
  try dsimp only [colour, result3556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3557_agree : tree3557 = literal3557 := by
  rw [tree3557_def]
  rfl
theorem node3557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3557 live3557 coloured3557 = result3557 := by
  rw [tree3557_def]
  try dsimp only [colour, result3557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3558_agree : tree3558 = literal3558 := by
  rw [tree3558_def, tree3556_agree, tree3557_agree]
  rfl
theorem node3558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3558 live3558 coloured3558 = result3558 := by
  rw [tree3558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3556_eq
  unfold live3556 coloured3556 at child
  try dsimp only [live3558, coloured3558]
  rw [child]
  dsimp only [result3556]
  have child := node3557_eq
  unfold live3557 coloured3557 at child
  try dsimp only [live3558, coloured3558]
  rw [child]
  dsimp only [result3557]
  try dsimp only [colour, result3558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3559_agree : tree3559 = literal3559 := by
  rw [tree3559_def]
  rfl
theorem node3559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3559 live3559 coloured3559 = result3559 := by
  rw [tree3559_def]
  try dsimp only [colour, result3559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3560_agree : tree3560 = literal3560 := by
  rw [tree3560_def, tree3558_agree, tree3559_agree]
  rfl
theorem node3560_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3560 live3560 coloured3560 = result3560 := by
  rw [tree3560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3558_eq
  unfold live3558 coloured3558 at child
  try dsimp only [live3560, coloured3560]
  rw [child]
  dsimp only [result3558]
  have child := node3559_eq
  unfold live3559 coloured3559 at child
  try dsimp only [live3560, coloured3560]
  rw [child]
  dsimp only [result3559]
  try dsimp only [colour, result3560]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3561_agree : tree3561 = literal3561 := by
  rw [tree3561_def]
  rfl
theorem node3561_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3561 live3561 coloured3561 = result3561 := by
  rw [tree3561_def]
  try dsimp only [colour, result3561]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3562_agree : tree3562 = literal3562 := by
  rw [tree3562_def, tree3560_agree, tree3561_agree]
  rfl
theorem node3562_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3562 live3562 coloured3562 = result3562 := by
  rw [tree3562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3560_eq
  unfold live3560 coloured3560 at child
  try dsimp only [live3562, coloured3562]
  rw [child]
  dsimp only [result3560]
  have child := node3561_eq
  unfold live3561 coloured3561 at child
  try dsimp only [live3562, coloured3562]
  rw [child]
  dsimp only [result3561]
  try dsimp only [colour, result3562]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3563_agree : tree3563 = literal3563 := by
  rw [tree3563_def]
  rfl
theorem node3563_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3563 live3563 coloured3563 = result3563 := by
  rw [tree3563_def]
  try dsimp only [colour, result3563]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3564_agree : tree3564 = literal3564 := by
  rw [tree3564_def, tree3562_agree, tree3563_agree]
  rfl
theorem node3564_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3564 live3564 coloured3564 = result3564 := by
  rw [tree3564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3562_eq
  unfold live3562 coloured3562 at child
  try dsimp only [live3564, coloured3564]
  rw [child]
  dsimp only [result3562]
  have child := node3563_eq
  unfold live3563 coloured3563 at child
  try dsimp only [live3564, coloured3564]
  rw [child]
  dsimp only [result3563]
  try dsimp only [colour, result3564]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3565_agree : tree3565 = literal3565 := by
  rw [tree3565_def]
  rfl
theorem node3565_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3565 live3565 coloured3565 = result3565 := by
  rw [tree3565_def]
  try dsimp only [colour, result3565]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3566_agree : tree3566 = literal3566 := by
  rw [tree3566_def, tree3564_agree, tree3565_agree]
  rfl
theorem node3566_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3566 live3566 coloured3566 = result3566 := by
  rw [tree3566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3564_eq
  unfold live3564 coloured3564 at child
  try dsimp only [live3566, coloured3566]
  rw [child]
  dsimp only [result3564]
  have child := node3565_eq
  unfold live3565 coloured3565 at child
  try dsimp only [live3566, coloured3566]
  rw [child]
  dsimp only [result3565]
  try dsimp only [colour, result3566]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3567_agree : tree3567 = literal3567 := by
  rw [tree3567_def]
  rfl
theorem node3567_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3567 live3567 coloured3567 = result3567 := by
  rw [tree3567_def]
  try dsimp only [colour, result3567]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3568_agree : tree3568 = literal3568 := by
  rw [tree3568_def, tree3566_agree, tree3567_agree]
  rfl
theorem node3568_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3568 live3568 coloured3568 = result3568 := by
  rw [tree3568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3566_eq
  unfold live3566 coloured3566 at child
  try dsimp only [live3568, coloured3568]
  rw [child]
  dsimp only [result3566]
  have child := node3567_eq
  unfold live3567 coloured3567 at child
  try dsimp only [live3568, coloured3568]
  rw [child]
  dsimp only [result3567]
  try dsimp only [colour, result3568]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3569_agree : tree3569 = literal3569 := by
  rw [tree3569_def]
  rfl
theorem node3569_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3569 live3569 coloured3569 = result3569 := by
  rw [tree3569_def]
  try dsimp only [colour, result3569]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3570_agree : tree3570 = literal3570 := by
  rw [tree3570_def, tree3568_agree, tree3569_agree]
  rfl
theorem node3570_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3570 live3570 coloured3570 = result3570 := by
  rw [tree3570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3568_eq
  unfold live3568 coloured3568 at child
  try dsimp only [live3570, coloured3570]
  rw [child]
  dsimp only [result3568]
  have child := node3569_eq
  unfold live3569 coloured3569 at child
  try dsimp only [live3570, coloured3570]
  rw [child]
  dsimp only [result3569]
  try dsimp only [colour, result3570]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3571_agree : tree3571 = literal3571 := by
  rw [tree3571_def]
  rfl
theorem node3571_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3571 live3571 coloured3571 = result3571 := by
  rw [tree3571_def]
  try dsimp only [colour, result3571]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3572_agree : tree3572 = literal3572 := by
  rw [tree3572_def, tree3570_agree, tree3571_agree]
  rfl
theorem node3572_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3572 live3572 coloured3572 = result3572 := by
  rw [tree3572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3570_eq
  unfold live3570 coloured3570 at child
  try dsimp only [live3572, coloured3572]
  rw [child]
  dsimp only [result3570]
  have child := node3571_eq
  unfold live3571 coloured3571 at child
  try dsimp only [live3572, coloured3572]
  rw [child]
  dsimp only [result3571]
  try dsimp only [colour, result3572]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3573_agree : tree3573 = literal3573 := by
  rw [tree3573_def]
  rfl
theorem node3573_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3573 live3573 coloured3573 = result3573 := by
  rw [tree3573_def]
  try dsimp only [colour, result3573]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3574_agree : tree3574 = literal3574 := by
  rw [tree3574_def, tree3572_agree, tree3573_agree]
  rfl
theorem node3574_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3574 live3574 coloured3574 = result3574 := by
  rw [tree3574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3572_eq
  unfold live3572 coloured3572 at child
  try dsimp only [live3574, coloured3574]
  rw [child]
  dsimp only [result3572]
  have child := node3573_eq
  unfold live3573 coloured3573 at child
  try dsimp only [live3574, coloured3574]
  rw [child]
  dsimp only [result3573]
  try dsimp only [colour, result3574]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3575_agree : tree3575 = literal3575 := by
  rw [tree3575_def]
  rfl
theorem node3575_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3575 live3575 coloured3575 = result3575 := by
  rw [tree3575_def]
  try dsimp only [colour, result3575]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3576_agree : tree3576 = literal3576 := by
  rw [tree3576_def, tree3574_agree, tree3575_agree]
  rfl
theorem node3576_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3576 live3576 coloured3576 = result3576 := by
  rw [tree3576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3574_eq
  unfold live3574 coloured3574 at child
  try dsimp only [live3576, coloured3576]
  rw [child]
  dsimp only [result3574]
  have child := node3575_eq
  unfold live3575 coloured3575 at child
  try dsimp only [live3576, coloured3576]
  rw [child]
  dsimp only [result3575]
  try dsimp only [colour, result3576]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3577_agree : tree3577 = literal3577 := by
  rw [tree3577_def]
  rfl
theorem node3577_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3577 live3577 coloured3577 = result3577 := by
  rw [tree3577_def]
  try dsimp only [colour, result3577]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3578_agree : tree3578 = literal3578 := by
  rw [tree3578_def, tree3576_agree, tree3577_agree]
  rfl
theorem node3578_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3578 live3578 coloured3578 = result3578 := by
  rw [tree3578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3576_eq
  unfold live3576 coloured3576 at child
  try dsimp only [live3578, coloured3578]
  rw [child]
  dsimp only [result3576]
  have child := node3577_eq
  unfold live3577 coloured3577 at child
  try dsimp only [live3578, coloured3578]
  rw [child]
  dsimp only [result3577]
  try dsimp only [colour, result3578]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3579_agree : tree3579 = literal3579 := by
  rw [tree3579_def]
  rfl
theorem node3579_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3579 live3579 coloured3579 = result3579 := by
  rw [tree3579_def]
  try dsimp only [colour, result3579]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3580_agree : tree3580 = literal3580 := by
  rw [tree3580_def, tree3578_agree, tree3579_agree]
  rfl
theorem node3580_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3580 live3580 coloured3580 = result3580 := by
  rw [tree3580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3578_eq
  unfold live3578 coloured3578 at child
  try dsimp only [live3580, coloured3580]
  rw [child]
  dsimp only [result3578]
  have child := node3579_eq
  unfold live3579 coloured3579 at child
  try dsimp only [live3580, coloured3580]
  rw [child]
  dsimp only [result3579]
  try dsimp only [colour, result3580]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3581_agree : tree3581 = literal3581 := by
  rw [tree3581_def]
  rfl
theorem node3581_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3581 live3581 coloured3581 = result3581 := by
  rw [tree3581_def]
  try dsimp only [colour, result3581]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3582_agree : tree3582 = literal3582 := by
  rw [tree3582_def, tree3580_agree, tree3581_agree]
  rfl
theorem node3582_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3582 live3582 coloured3582 = result3582 := by
  rw [tree3582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3580_eq
  unfold live3580 coloured3580 at child
  try dsimp only [live3582, coloured3582]
  rw [child]
  dsimp only [result3580]
  have child := node3581_eq
  unfold live3581 coloured3581 at child
  try dsimp only [live3582, coloured3582]
  rw [child]
  dsimp only [result3581]
  try dsimp only [colour, result3582]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3583_agree : tree3583 = literal3583 := by
  rw [tree3583_def]
  rfl
theorem node3583_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3583 live3583 coloured3583 = result3583 := by
  rw [tree3583_def]
  try dsimp only [colour, result3583]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3584_agree : tree3584 = literal3584 := by
  rw [tree3584_def, tree3582_agree, tree3583_agree]
  rfl
theorem node3584_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3584 live3584 coloured3584 = result3584 := by
  rw [tree3584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3582_eq
  unfold live3582 coloured3582 at child
  try dsimp only [live3584, coloured3584]
  rw [child]
  dsimp only [result3582]
  have child := node3583_eq
  unfold live3583 coloured3583 at child
  try dsimp only [live3584, coloured3584]
  rw [child]
  dsimp only [result3583]
  try dsimp only [colour, result3584]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3585_agree : tree3585 = literal3585 := by
  rw [tree3585_def]
  rfl
theorem node3585_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3585 live3585 coloured3585 = result3585 := by
  rw [tree3585_def]
  try dsimp only [colour, result3585]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3586_agree : tree3586 = literal3586 := by
  rw [tree3586_def, tree3584_agree, tree3585_agree]
  rfl
theorem node3586_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3586 live3586 coloured3586 = result3586 := by
  rw [tree3586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3584_eq
  unfold live3584 coloured3584 at child
  try dsimp only [live3586, coloured3586]
  rw [child]
  dsimp only [result3584]
  have child := node3585_eq
  unfold live3585 coloured3585 at child
  try dsimp only [live3586, coloured3586]
  rw [child]
  dsimp only [result3585]
  try dsimp only [colour, result3586]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3587_agree : tree3587 = literal3587 := by
  rw [tree3587_def]
  rfl
theorem node3587_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3587 live3587 coloured3587 = result3587 := by
  rw [tree3587_def]
  try dsimp only [colour, result3587]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3588_agree : tree3588 = literal3588 := by
  rw [tree3588_def, tree3586_agree, tree3587_agree]
  rfl
theorem node3588_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3588 live3588 coloured3588 = result3588 := by
  rw [tree3588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3586_eq
  unfold live3586 coloured3586 at child
  try dsimp only [live3588, coloured3588]
  rw [child]
  dsimp only [result3586]
  have child := node3587_eq
  unfold live3587 coloured3587 at child
  try dsimp only [live3588, coloured3588]
  rw [child]
  dsimp only [result3587]
  try dsimp only [colour, result3588]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3589_agree : tree3589 = literal3589 := by
  rw [tree3589_def]
  rfl
theorem node3589_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3589 live3589 coloured3589 = result3589 := by
  rw [tree3589_def]
  try dsimp only [colour, result3589]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3590_agree : tree3590 = literal3590 := by
  rw [tree3590_def, tree3588_agree, tree3589_agree]
  rfl
theorem node3590_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3590 live3590 coloured3590 = result3590 := by
  rw [tree3590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3588_eq
  unfold live3588 coloured3588 at child
  try dsimp only [live3590, coloured3590]
  rw [child]
  dsimp only [result3588]
  have child := node3589_eq
  unfold live3589 coloured3589 at child
  try dsimp only [live3590, coloured3590]
  rw [child]
  dsimp only [result3589]
  try dsimp only [colour, result3590]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3591_agree : tree3591 = literal3591 := by
  rw [tree3591_def]
  rfl
theorem node3591_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3591 live3591 coloured3591 = result3591 := by
  rw [tree3591_def]
  try dsimp only [colour, result3591]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3592_agree : tree3592 = literal3592 := by
  rw [tree3592_def, tree3590_agree, tree3591_agree]
  rfl
theorem node3592_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3592 live3592 coloured3592 = result3592 := by
  rw [tree3592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3590_eq
  unfold live3590 coloured3590 at child
  try dsimp only [live3592, coloured3592]
  rw [child]
  dsimp only [result3590]
  have child := node3591_eq
  unfold live3591 coloured3591 at child
  try dsimp only [live3592, coloured3592]
  rw [child]
  dsimp only [result3591]
  try dsimp only [colour, result3592]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3593_agree : tree3593 = literal3593 := by
  rw [tree3593_def]
  rfl
theorem node3593_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3593 live3593 coloured3593 = result3593 := by
  rw [tree3593_def]
  try dsimp only [colour, result3593]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3594_agree : tree3594 = literal3594 := by
  rw [tree3594_def, tree3592_agree, tree3593_agree]
  rfl
theorem node3594_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3594 live3594 coloured3594 = result3594 := by
  rw [tree3594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3592_eq
  unfold live3592 coloured3592 at child
  try dsimp only [live3594, coloured3594]
  rw [child]
  dsimp only [result3592]
  have child := node3593_eq
  unfold live3593 coloured3593 at child
  try dsimp only [live3594, coloured3594]
  rw [child]
  dsimp only [result3593]
  try dsimp only [colour, result3594]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3595_agree : tree3595 = literal3595 := by
  rw [tree3595_def]
  rfl
theorem node3595_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3595 live3595 coloured3595 = result3595 := by
  rw [tree3595_def]
  try dsimp only [colour, result3595]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3596_agree : tree3596 = literal3596 := by
  rw [tree3596_def, tree3594_agree, tree3595_agree]
  rfl
theorem node3596_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3596 live3596 coloured3596 = result3596 := by
  rw [tree3596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3594_eq
  unfold live3594 coloured3594 at child
  try dsimp only [live3596, coloured3596]
  rw [child]
  dsimp only [result3594]
  have child := node3595_eq
  unfold live3595 coloured3595 at child
  try dsimp only [live3596, coloured3596]
  rw [child]
  dsimp only [result3595]
  try dsimp only [colour, result3596]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3597_agree : tree3597 = literal3597 := by
  rw [tree3597_def]
  rfl
theorem node3597_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3597 live3597 coloured3597 = result3597 := by
  rw [tree3597_def]
  try dsimp only [colour, result3597]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3598_agree : tree3598 = literal3598 := by
  rw [tree3598_def, tree3596_agree, tree3597_agree]
  rfl
theorem node3598_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3598 live3598 coloured3598 = result3598 := by
  rw [tree3598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3596_eq
  unfold live3596 coloured3596 at child
  try dsimp only [live3598, coloured3598]
  rw [child]
  dsimp only [result3596]
  have child := node3597_eq
  unfold live3597 coloured3597 at child
  try dsimp only [live3598, coloured3598]
  rw [child]
  dsimp only [result3597]
  try dsimp only [colour, result3598]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3599_agree : tree3599 = literal3599 := by
  rw [tree3599_def]
  rfl
theorem node3599_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3599 live3599 coloured3599 = result3599 := by
  rw [tree3599_def]
  try dsimp only [colour, result3599]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3600_agree : tree3600 = literal3600 := by
  rw [tree3600_def, tree3598_agree, tree3599_agree]
  rfl
theorem node3600_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3600 live3600 coloured3600 = result3600 := by
  rw [tree3600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3598_eq
  unfold live3598 coloured3598 at child
  try dsimp only [live3600, coloured3600]
  rw [child]
  dsimp only [result3598]
  have child := node3599_eq
  unfold live3599 coloured3599 at child
  try dsimp only [live3600, coloured3600]
  rw [child]
  dsimp only [result3599]
  try dsimp only [colour, result3600]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3601_agree : tree3601 = literal3601 := by
  rw [tree3601_def]
  rfl
theorem node3601_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3601 live3601 coloured3601 = result3601 := by
  rw [tree3601_def]
  try dsimp only [colour, result3601]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3602_agree : tree3602 = literal3602 := by
  rw [tree3602_def, tree3600_agree, tree3601_agree]
  rfl
theorem node3602_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3602 live3602 coloured3602 = result3602 := by
  rw [tree3602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3600_eq
  unfold live3600 coloured3600 at child
  try dsimp only [live3602, coloured3602]
  rw [child]
  dsimp only [result3600]
  have child := node3601_eq
  unfold live3601 coloured3601 at child
  try dsimp only [live3602, coloured3602]
  rw [child]
  dsimp only [result3601]
  try dsimp only [colour, result3602]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3603_agree : tree3603 = literal3603 := by
  rw [tree3603_def]
  rfl
theorem node3603_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3603 live3603 coloured3603 = result3603 := by
  rw [tree3603_def]
  try dsimp only [colour, result3603]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3604_agree : tree3604 = literal3604 := by
  rw [tree3604_def, tree3602_agree, tree3603_agree]
  rfl
theorem node3604_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3604 live3604 coloured3604 = result3604 := by
  rw [tree3604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3602_eq
  unfold live3602 coloured3602 at child
  try dsimp only [live3604, coloured3604]
  rw [child]
  dsimp only [result3602]
  have child := node3603_eq
  unfold live3603 coloured3603 at child
  try dsimp only [live3604, coloured3604]
  rw [child]
  dsimp only [result3603]
  try dsimp only [colour, result3604]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3605_agree : tree3605 = literal3605 := by
  rw [tree3605_def]
  rfl
theorem node3605_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3605 live3605 coloured3605 = result3605 := by
  rw [tree3605_def]
  try dsimp only [colour, result3605]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3606_agree : tree3606 = literal3606 := by
  rw [tree3606_def, tree3604_agree, tree3605_agree]
  rfl
theorem node3606_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3606 live3606 coloured3606 = result3606 := by
  rw [tree3606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3604_eq
  unfold live3604 coloured3604 at child
  try dsimp only [live3606, coloured3606]
  rw [child]
  dsimp only [result3604]
  have child := node3605_eq
  unfold live3605 coloured3605 at child
  try dsimp only [live3606, coloured3606]
  rw [child]
  dsimp only [result3605]
  try dsimp only [colour, result3606]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3607_agree : tree3607 = literal3607 := by
  rw [tree3607_def]
  rfl
theorem node3607_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3607 live3607 coloured3607 = result3607 := by
  rw [tree3607_def]
  try dsimp only [colour, result3607]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3608_agree : tree3608 = literal3608 := by
  rw [tree3608_def, tree3606_agree, tree3607_agree]
  rfl
theorem node3608_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3608 live3608 coloured3608 = result3608 := by
  rw [tree3608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3606_eq
  unfold live3606 coloured3606 at child
  try dsimp only [live3608, coloured3608]
  rw [child]
  dsimp only [result3606]
  have child := node3607_eq
  unfold live3607 coloured3607 at child
  try dsimp only [live3608, coloured3608]
  rw [child]
  dsimp only [result3607]
  try dsimp only [colour, result3608]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3609_agree : tree3609 = literal3609 := by
  rw [tree3609_def]
  rfl
theorem node3609_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3609 live3609 coloured3609 = result3609 := by
  rw [tree3609_def]
  try dsimp only [colour, result3609]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3610_agree : tree3610 = literal3610 := by
  rw [tree3610_def, tree3608_agree, tree3609_agree]
  rfl
theorem node3610_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3610 live3610 coloured3610 = result3610 := by
  rw [tree3610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3608_eq
  unfold live3608 coloured3608 at child
  try dsimp only [live3610, coloured3610]
  rw [child]
  dsimp only [result3608]
  have child := node3609_eq
  unfold live3609 coloured3609 at child
  try dsimp only [live3610, coloured3610]
  rw [child]
  dsimp only [result3609]
  try dsimp only [colour, result3610]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3611_agree : tree3611 = literal3611 := by
  rw [tree3611_def]
  rfl
theorem node3611_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3611 live3611 coloured3611 = result3611 := by
  rw [tree3611_def]
  try dsimp only [colour, result3611]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3612_agree : tree3612 = literal3612 := by
  rw [tree3612_def, tree3610_agree, tree3611_agree]
  rfl
theorem node3612_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3612 live3612 coloured3612 = result3612 := by
  rw [tree3612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3610_eq
  unfold live3610 coloured3610 at child
  try dsimp only [live3612, coloured3612]
  rw [child]
  dsimp only [result3610]
  have child := node3611_eq
  unfold live3611 coloured3611 at child
  try dsimp only [live3612, coloured3612]
  rw [child]
  dsimp only [result3611]
  try dsimp only [colour, result3612]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3613_agree : tree3613 = literal3613 := by
  rw [tree3613_def]
  rfl
theorem node3613_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3613 live3613 coloured3613 = result3613 := by
  rw [tree3613_def]
  try dsimp only [colour, result3613]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3614_agree : tree3614 = literal3614 := by
  rw [tree3614_def, tree3612_agree, tree3613_agree]
  rfl
theorem node3614_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3614 live3614 coloured3614 = result3614 := by
  rw [tree3614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3612_eq
  unfold live3612 coloured3612 at child
  try dsimp only [live3614, coloured3614]
  rw [child]
  dsimp only [result3612]
  have child := node3613_eq
  unfold live3613 coloured3613 at child
  try dsimp only [live3614, coloured3614]
  rw [child]
  dsimp only [result3613]
  try dsimp only [colour, result3614]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3615_agree : tree3615 = literal3615 := by
  rw [tree3615_def]
  rfl
theorem node3615_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3615 live3615 coloured3615 = result3615 := by
  rw [tree3615_def]
  try dsimp only [colour, result3615]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3616_agree : tree3616 = literal3616 := by
  rw [tree3616_def, tree3614_agree, tree3615_agree]
  rfl
theorem node3616_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3616 live3616 coloured3616 = result3616 := by
  rw [tree3616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3614_eq
  unfold live3614 coloured3614 at child
  try dsimp only [live3616, coloured3616]
  rw [child]
  dsimp only [result3614]
  have child := node3615_eq
  unfold live3615 coloured3615 at child
  try dsimp only [live3616, coloured3616]
  rw [child]
  dsimp only [result3615]
  try dsimp only [colour, result3616]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3617_agree : tree3617 = literal3617 := by
  rw [tree3617_def]
  rfl
theorem node3617_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3617 live3617 coloured3617 = result3617 := by
  rw [tree3617_def]
  try dsimp only [colour, result3617]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3618_agree : tree3618 = literal3618 := by
  rw [tree3618_def, tree3616_agree, tree3617_agree]
  rfl
theorem node3618_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3618 live3618 coloured3618 = result3618 := by
  rw [tree3618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3616_eq
  unfold live3616 coloured3616 at child
  try dsimp only [live3618, coloured3618]
  rw [child]
  dsimp only [result3616]
  have child := node3617_eq
  unfold live3617 coloured3617 at child
  try dsimp only [live3618, coloured3618]
  rw [child]
  dsimp only [result3617]
  try dsimp only [colour, result3618]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3619_agree : tree3619 = literal3619 := by
  rw [tree3619_def]
  rfl
theorem node3619_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3619 live3619 coloured3619 = result3619 := by
  rw [tree3619_def]
  try dsimp only [colour, result3619]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3620_agree : tree3620 = literal3620 := by
  rw [tree3620_def, tree3618_agree, tree3619_agree]
  rfl
theorem node3620_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3620 live3620 coloured3620 = result3620 := by
  rw [tree3620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3618_eq
  unfold live3618 coloured3618 at child
  try dsimp only [live3620, coloured3620]
  rw [child]
  dsimp only [result3618]
  have child := node3619_eq
  unfold live3619 coloured3619 at child
  try dsimp only [live3620, coloured3620]
  rw [child]
  dsimp only [result3619]
  try dsimp only [colour, result3620]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3621_agree : tree3621 = literal3621 := by
  rw [tree3621_def]
  rfl
theorem node3621_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3621 live3621 coloured3621 = result3621 := by
  rw [tree3621_def]
  try dsimp only [colour, result3621]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3622_agree : tree3622 = literal3622 := by
  rw [tree3622_def, tree3620_agree, tree3621_agree]
  rfl
theorem node3622_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3622 live3622 coloured3622 = result3622 := by
  rw [tree3622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3620_eq
  unfold live3620 coloured3620 at child
  try dsimp only [live3622, coloured3622]
  rw [child]
  dsimp only [result3620]
  have child := node3621_eq
  unfold live3621 coloured3621 at child
  try dsimp only [live3622, coloured3622]
  rw [child]
  dsimp only [result3621]
  try dsimp only [colour, result3622]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3623_agree : tree3623 = literal3623 := by
  rw [tree3623_def]
  rfl
theorem node3623_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3623 live3623 coloured3623 = result3623 := by
  rw [tree3623_def]
  try dsimp only [colour, result3623]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3624_agree : tree3624 = literal3624 := by
  rw [tree3624_def, tree3622_agree, tree3623_agree]
  rfl
theorem node3624_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3624 live3624 coloured3624 = result3624 := by
  rw [tree3624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3622_eq
  unfold live3622 coloured3622 at child
  try dsimp only [live3624, coloured3624]
  rw [child]
  dsimp only [result3622]
  have child := node3623_eq
  unfold live3623 coloured3623 at child
  try dsimp only [live3624, coloured3624]
  rw [child]
  dsimp only [result3623]
  try dsimp only [colour, result3624]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3625_agree : tree3625 = literal3625 := by
  rw [tree3625_def]
  rfl
theorem node3625_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3625 live3625 coloured3625 = result3625 := by
  rw [tree3625_def]
  try dsimp only [colour, result3625]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3626_agree : tree3626 = literal3626 := by
  rw [tree3626_def, tree3624_agree, tree3625_agree]
  rfl
theorem node3626_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3626 live3626 coloured3626 = result3626 := by
  rw [tree3626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3624_eq
  unfold live3624 coloured3624 at child
  try dsimp only [live3626, coloured3626]
  rw [child]
  dsimp only [result3624]
  have child := node3625_eq
  unfold live3625 coloured3625 at child
  try dsimp only [live3626, coloured3626]
  rw [child]
  dsimp only [result3625]
  try dsimp only [colour, result3626]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3627_agree : tree3627 = literal3627 := by
  rw [tree3627_def]
  rfl
theorem node3627_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3627 live3627 coloured3627 = result3627 := by
  rw [tree3627_def]
  try dsimp only [colour, result3627]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3628_agree : tree3628 = literal3628 := by
  rw [tree3628_def, tree3626_agree, tree3627_agree]
  rfl
theorem node3628_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3628 live3628 coloured3628 = result3628 := by
  rw [tree3628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3626_eq
  unfold live3626 coloured3626 at child
  try dsimp only [live3628, coloured3628]
  rw [child]
  dsimp only [result3626]
  have child := node3627_eq
  unfold live3627 coloured3627 at child
  try dsimp only [live3628, coloured3628]
  rw [child]
  dsimp only [result3627]
  try dsimp only [colour, result3628]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3629_agree : tree3629 = literal3629 := by
  rw [tree3629_def]
  rfl
theorem node3629_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3629 live3629 coloured3629 = result3629 := by
  rw [tree3629_def]
  try dsimp only [colour, result3629]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3630_agree : tree3630 = literal3630 := by
  rw [tree3630_def, tree3628_agree, tree3629_agree]
  rfl
theorem node3630_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3630 live3630 coloured3630 = result3630 := by
  rw [tree3630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3628_eq
  unfold live3628 coloured3628 at child
  try dsimp only [live3630, coloured3630]
  rw [child]
  dsimp only [result3628]
  have child := node3629_eq
  unfold live3629 coloured3629 at child
  try dsimp only [live3630, coloured3630]
  rw [child]
  dsimp only [result3629]
  try dsimp only [colour, result3630]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3631_agree : tree3631 = literal3631 := by
  rw [tree3631_def]
  rfl
theorem node3631_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3631 live3631 coloured3631 = result3631 := by
  rw [tree3631_def]
  try dsimp only [colour, result3631]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3632_agree : tree3632 = literal3632 := by
  rw [tree3632_def, tree3630_agree, tree3631_agree]
  rfl
theorem node3632_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3632 live3632 coloured3632 = result3632 := by
  rw [tree3632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3630_eq
  unfold live3630 coloured3630 at child
  try dsimp only [live3632, coloured3632]
  rw [child]
  dsimp only [result3630]
  have child := node3631_eq
  unfold live3631 coloured3631 at child
  try dsimp only [live3632, coloured3632]
  rw [child]
  dsimp only [result3631]
  try dsimp only [colour, result3632]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3633_agree : tree3633 = literal3633 := by
  rw [tree3633_def]
  rfl
theorem node3633_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3633 live3633 coloured3633 = result3633 := by
  rw [tree3633_def]
  try dsimp only [colour, result3633]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3634_agree : tree3634 = literal3634 := by
  rw [tree3634_def, tree3632_agree, tree3633_agree]
  rfl
theorem node3634_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3634 live3634 coloured3634 = result3634 := by
  rw [tree3634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3632_eq
  unfold live3632 coloured3632 at child
  try dsimp only [live3634, coloured3634]
  rw [child]
  dsimp only [result3632]
  have child := node3633_eq
  unfold live3633 coloured3633 at child
  try dsimp only [live3634, coloured3634]
  rw [child]
  dsimp only [result3633]
  try dsimp only [colour, result3634]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3635_agree : tree3635 = literal3635 := by
  rw [tree3635_def]
  rfl
theorem node3635_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3635 live3635 coloured3635 = result3635 := by
  rw [tree3635_def]
  try dsimp only [colour, result3635]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3636_agree : tree3636 = literal3636 := by
  rw [tree3636_def, tree3634_agree, tree3635_agree]
  rfl
theorem node3636_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3636 live3636 coloured3636 = result3636 := by
  rw [tree3636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3634_eq
  unfold live3634 coloured3634 at child
  try dsimp only [live3636, coloured3636]
  rw [child]
  dsimp only [result3634]
  have child := node3635_eq
  unfold live3635 coloured3635 at child
  try dsimp only [live3636, coloured3636]
  rw [child]
  dsimp only [result3635]
  try dsimp only [colour, result3636]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3637_agree : tree3637 = literal3637 := by
  rw [tree3637_def]
  rfl
theorem node3637_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3637 live3637 coloured3637 = result3637 := by
  rw [tree3637_def]
  try dsimp only [colour, result3637]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3638_agree : tree3638 = literal3638 := by
  rw [tree3638_def, tree3636_agree, tree3637_agree]
  rfl
theorem node3638_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3638 live3638 coloured3638 = result3638 := by
  rw [tree3638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3636_eq
  unfold live3636 coloured3636 at child
  try dsimp only [live3638, coloured3638]
  rw [child]
  dsimp only [result3636]
  have child := node3637_eq
  unfold live3637 coloured3637 at child
  try dsimp only [live3638, coloured3638]
  rw [child]
  dsimp only [result3637]
  try dsimp only [colour, result3638]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3639_agree : tree3639 = literal3639 := by
  rw [tree3639_def]
  rfl
theorem node3639_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3639 live3639 coloured3639 = result3639 := by
  rw [tree3639_def]
  try dsimp only [colour, result3639]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3640_agree : tree3640 = literal3640 := by
  rw [tree3640_def, tree3638_agree, tree3639_agree]
  rfl
theorem node3640_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3640 live3640 coloured3640 = result3640 := by
  rw [tree3640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3638_eq
  unfold live3638 coloured3638 at child
  try dsimp only [live3640, coloured3640]
  rw [child]
  dsimp only [result3638]
  have child := node3639_eq
  unfold live3639 coloured3639 at child
  try dsimp only [live3640, coloured3640]
  rw [child]
  dsimp only [result3639]
  try dsimp only [colour, result3640]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3641_agree : tree3641 = literal3641 := by
  rw [tree3641_def]
  rfl
theorem node3641_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3641 live3641 coloured3641 = result3641 := by
  rw [tree3641_def]
  try dsimp only [colour, result3641]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3642_agree : tree3642 = literal3642 := by
  rw [tree3642_def, tree3640_agree, tree3641_agree]
  rfl
theorem node3642_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3642 live3642 coloured3642 = result3642 := by
  rw [tree3642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3640_eq
  unfold live3640 coloured3640 at child
  try dsimp only [live3642, coloured3642]
  rw [child]
  dsimp only [result3640]
  have child := node3641_eq
  unfold live3641 coloured3641 at child
  try dsimp only [live3642, coloured3642]
  rw [child]
  dsimp only [result3641]
  try dsimp only [colour, result3642]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3643_agree : tree3643 = literal3643 := by
  rw [tree3643_def]
  rfl
theorem node3643_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3643 live3643 coloured3643 = result3643 := by
  rw [tree3643_def]
  try dsimp only [colour, result3643]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3644_agree : tree3644 = literal3644 := by
  rw [tree3644_def, tree3642_agree, tree3643_agree]
  rfl
theorem node3644_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3644 live3644 coloured3644 = result3644 := by
  rw [tree3644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3642_eq
  unfold live3642 coloured3642 at child
  try dsimp only [live3644, coloured3644]
  rw [child]
  dsimp only [result3642]
  have child := node3643_eq
  unfold live3643 coloured3643 at child
  try dsimp only [live3644, coloured3644]
  rw [child]
  dsimp only [result3643]
  try dsimp only [colour, result3644]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3645_agree : tree3645 = literal3645 := by
  rw [tree3645_def]
  rfl
theorem node3645_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3645 live3645 coloured3645 = result3645 := by
  rw [tree3645_def]
  try dsimp only [colour, result3645]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3646_agree : tree3646 = literal3646 := by
  rw [tree3646_def, tree3644_agree, tree3645_agree]
  rfl
theorem node3646_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3646 live3646 coloured3646 = result3646 := by
  rw [tree3646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3644_eq
  unfold live3644 coloured3644 at child
  try dsimp only [live3646, coloured3646]
  rw [child]
  dsimp only [result3644]
  have child := node3645_eq
  unfold live3645 coloured3645 at child
  try dsimp only [live3646, coloured3646]
  rw [child]
  dsimp only [result3645]
  try dsimp only [colour, result3646]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3647_agree : tree3647 = literal3647 := by
  rw [tree3647_def]
  rfl
theorem node3647_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3647 live3647 coloured3647 = result3647 := by
  rw [tree3647_def]
  try dsimp only [colour, result3647]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
