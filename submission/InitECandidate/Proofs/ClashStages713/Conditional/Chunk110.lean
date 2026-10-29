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
theorem tree10560_agree_conditional
    (child0 : tree10558 = literal10558)
    (child1 : tree10559 = literal10559) : tree10560 = literal10560 := by
  rw [tree10560_def, child0, child1]
  rfl
theorem node10560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10558 live10558 coloured10558 = result10558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10559 live10559 coloured10559 = result10559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10560 live10560 coloured10560 = result10560 := by
  rw [tree10560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10558 coloured10558 at child
  try dsimp only [live10560, coloured10560]
  rw [child]
  dsimp only [result10558]
  have child := child1
  unfold live10559 coloured10559 at child
  try dsimp only [live10560, coloured10560]
  rw [child]
  dsimp only [result10559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10561_agree_conditional : tree10561 = literal10561 := by
  rw [tree10561_def]
  rfl
theorem node10561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10561 live10561 coloured10561 = result10561 := by
  rw [tree10561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10562_agree_conditional
    (child0 : tree10560 = literal10560)
    (child1 : tree10561 = literal10561) : tree10562 = literal10562 := by
  rw [tree10562_def, child0, child1]
  rfl
theorem node10562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10560 live10560 coloured10560 = result10560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10561 live10561 coloured10561 = result10561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10562 live10562 coloured10562 = result10562 := by
  rw [tree10562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10560 coloured10560 at child
  try dsimp only [live10562, coloured10562]
  rw [child]
  dsimp only [result10560]
  have child := child1
  unfold live10561 coloured10561 at child
  try dsimp only [live10562, coloured10562]
  rw [child]
  dsimp only [result10561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10563_agree_conditional : tree10563 = literal10563 := by
  rw [tree10563_def]
  rfl
theorem node10563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10563 live10563 coloured10563 = result10563 := by
  rw [tree10563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10564_agree_conditional
    (child0 : tree10562 = literal10562)
    (child1 : tree10563 = literal10563) : tree10564 = literal10564 := by
  rw [tree10564_def, child0, child1]
  rfl
theorem node10564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10562 live10562 coloured10562 = result10562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10563 live10563 coloured10563 = result10563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10564 live10564 coloured10564 = result10564 := by
  rw [tree10564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10562 coloured10562 at child
  try dsimp only [live10564, coloured10564]
  rw [child]
  dsimp only [result10562]
  have child := child1
  unfold live10563 coloured10563 at child
  try dsimp only [live10564, coloured10564]
  rw [child]
  dsimp only [result10563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10565_agree_conditional : tree10565 = literal10565 := by
  rw [tree10565_def]
  rfl
theorem node10565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10565 live10565 coloured10565 = result10565 := by
  rw [tree10565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10566_agree_conditional
    (child0 : tree10564 = literal10564)
    (child1 : tree10565 = literal10565) : tree10566 = literal10566 := by
  rw [tree10566_def, child0, child1]
  rfl
theorem node10566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10564 live10564 coloured10564 = result10564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10565 live10565 coloured10565 = result10565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10566 live10566 coloured10566 = result10566 := by
  rw [tree10566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10564 coloured10564 at child
  try dsimp only [live10566, coloured10566]
  rw [child]
  dsimp only [result10564]
  have child := child1
  unfold live10565 coloured10565 at child
  try dsimp only [live10566, coloured10566]
  rw [child]
  dsimp only [result10565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10567_agree_conditional : tree10567 = literal10567 := by
  rw [tree10567_def]
  rfl
theorem node10567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10567 live10567 coloured10567 = result10567 := by
  rw [tree10567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10568_agree_conditional
    (child0 : tree10566 = literal10566)
    (child1 : tree10567 = literal10567) : tree10568 = literal10568 := by
  rw [tree10568_def, child0, child1]
  rfl
theorem node10568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10566 live10566 coloured10566 = result10566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10567 live10567 coloured10567 = result10567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10568 live10568 coloured10568 = result10568 := by
  rw [tree10568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10566 coloured10566 at child
  try dsimp only [live10568, coloured10568]
  rw [child]
  dsimp only [result10566]
  have child := child1
  unfold live10567 coloured10567 at child
  try dsimp only [live10568, coloured10568]
  rw [child]
  dsimp only [result10567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10569_agree_conditional : tree10569 = literal10569 := by
  rw [tree10569_def]
  rfl
theorem node10569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10569 live10569 coloured10569 = result10569 := by
  rw [tree10569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10570_agree_conditional
    (child0 : tree10568 = literal10568)
    (child1 : tree10569 = literal10569) : tree10570 = literal10570 := by
  rw [tree10570_def, child0, child1]
  rfl
theorem node10570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10568 live10568 coloured10568 = result10568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10569 live10569 coloured10569 = result10569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10570 live10570 coloured10570 = result10570 := by
  rw [tree10570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10568 coloured10568 at child
  try dsimp only [live10570, coloured10570]
  rw [child]
  dsimp only [result10568]
  have child := child1
  unfold live10569 coloured10569 at child
  try dsimp only [live10570, coloured10570]
  rw [child]
  dsimp only [result10569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10571_agree_conditional : tree10571 = literal10571 := by
  rw [tree10571_def]
  rfl
theorem node10571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10571 live10571 coloured10571 = result10571 := by
  rw [tree10571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10572_agree_conditional
    (child0 : tree10570 = literal10570)
    (child1 : tree10571 = literal10571) : tree10572 = literal10572 := by
  rw [tree10572_def, child0, child1]
  rfl
theorem node10572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10570 live10570 coloured10570 = result10570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10571 live10571 coloured10571 = result10571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10572 live10572 coloured10572 = result10572 := by
  rw [tree10572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10570 coloured10570 at child
  try dsimp only [live10572, coloured10572]
  rw [child]
  dsimp only [result10570]
  have child := child1
  unfold live10571 coloured10571 at child
  try dsimp only [live10572, coloured10572]
  rw [child]
  dsimp only [result10571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10573_agree_conditional : tree10573 = literal10573 := by
  rw [tree10573_def]
  rfl
theorem node10573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10573 live10573 coloured10573 = result10573 := by
  rw [tree10573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10574_agree_conditional
    (child0 : tree10572 = literal10572)
    (child1 : tree10573 = literal10573) : tree10574 = literal10574 := by
  rw [tree10574_def, child0, child1]
  rfl
theorem node10574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10572 live10572 coloured10572 = result10572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10573 live10573 coloured10573 = result10573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10574 live10574 coloured10574 = result10574 := by
  rw [tree10574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10572 coloured10572 at child
  try dsimp only [live10574, coloured10574]
  rw [child]
  dsimp only [result10572]
  have child := child1
  unfold live10573 coloured10573 at child
  try dsimp only [live10574, coloured10574]
  rw [child]
  dsimp only [result10573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10575_agree_conditional : tree10575 = literal10575 := by
  rw [tree10575_def]
  rfl
theorem node10575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10575 live10575 coloured10575 = result10575 := by
  rw [tree10575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10576_agree_conditional
    (child0 : tree10574 = literal10574)
    (child1 : tree10575 = literal10575) : tree10576 = literal10576 := by
  rw [tree10576_def, child0, child1]
  rfl
theorem node10576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10574 live10574 coloured10574 = result10574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10575 live10575 coloured10575 = result10575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10576 live10576 coloured10576 = result10576 := by
  rw [tree10576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10574 coloured10574 at child
  try dsimp only [live10576, coloured10576]
  rw [child]
  dsimp only [result10574]
  have child := child1
  unfold live10575 coloured10575 at child
  try dsimp only [live10576, coloured10576]
  rw [child]
  dsimp only [result10575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10577_agree_conditional : tree10577 = literal10577 := by
  rw [tree10577_def]
  rfl
theorem node10577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10577 live10577 coloured10577 = result10577 := by
  rw [tree10577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10578_agree_conditional
    (child0 : tree10576 = literal10576)
    (child1 : tree10577 = literal10577) : tree10578 = literal10578 := by
  rw [tree10578_def, child0, child1]
  rfl
theorem node10578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10576 live10576 coloured10576 = result10576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10577 live10577 coloured10577 = result10577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10578 live10578 coloured10578 = result10578 := by
  rw [tree10578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10576 coloured10576 at child
  try dsimp only [live10578, coloured10578]
  rw [child]
  dsimp only [result10576]
  have child := child1
  unfold live10577 coloured10577 at child
  try dsimp only [live10578, coloured10578]
  rw [child]
  dsimp only [result10577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10579_agree_conditional : tree10579 = literal10579 := by
  rw [tree10579_def]
  rfl
theorem node10579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10579 live10579 coloured10579 = result10579 := by
  rw [tree10579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10580_agree_conditional
    (child0 : tree10578 = literal10578)
    (child1 : tree10579 = literal10579) : tree10580 = literal10580 := by
  rw [tree10580_def, child0, child1]
  rfl
theorem node10580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10578 live10578 coloured10578 = result10578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10579 live10579 coloured10579 = result10579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10580 live10580 coloured10580 = result10580 := by
  rw [tree10580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10578 coloured10578 at child
  try dsimp only [live10580, coloured10580]
  rw [child]
  dsimp only [result10578]
  have child := child1
  unfold live10579 coloured10579 at child
  try dsimp only [live10580, coloured10580]
  rw [child]
  dsimp only [result10579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10581_agree_conditional : tree10581 = literal10581 := by
  rw [tree10581_def]
  rfl
theorem node10581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10581 live10581 coloured10581 = result10581 := by
  rw [tree10581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10582_agree_conditional
    (child0 : tree10580 = literal10580)
    (child1 : tree10581 = literal10581) : tree10582 = literal10582 := by
  rw [tree10582_def, child0, child1]
  rfl
theorem node10582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10580 live10580 coloured10580 = result10580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10581 live10581 coloured10581 = result10581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10582 live10582 coloured10582 = result10582 := by
  rw [tree10582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10580 coloured10580 at child
  try dsimp only [live10582, coloured10582]
  rw [child]
  dsimp only [result10580]
  have child := child1
  unfold live10581 coloured10581 at child
  try dsimp only [live10582, coloured10582]
  rw [child]
  dsimp only [result10581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10583_agree_conditional : tree10583 = literal10583 := by
  rw [tree10583_def]
  rfl
theorem node10583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10583 live10583 coloured10583 = result10583 := by
  rw [tree10583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10584_agree_conditional
    (child0 : tree10582 = literal10582)
    (child1 : tree10583 = literal10583) : tree10584 = literal10584 := by
  rw [tree10584_def, child0, child1]
  rfl
theorem node10584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10582 live10582 coloured10582 = result10582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10583 live10583 coloured10583 = result10583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10584 live10584 coloured10584 = result10584 := by
  rw [tree10584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10582 coloured10582 at child
  try dsimp only [live10584, coloured10584]
  rw [child]
  dsimp only [result10582]
  have child := child1
  unfold live10583 coloured10583 at child
  try dsimp only [live10584, coloured10584]
  rw [child]
  dsimp only [result10583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10585_agree_conditional : tree10585 = literal10585 := by
  rw [tree10585_def]
  rfl
theorem node10585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10585 live10585 coloured10585 = result10585 := by
  rw [tree10585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10586_agree_conditional
    (child0 : tree10584 = literal10584)
    (child1 : tree10585 = literal10585) : tree10586 = literal10586 := by
  rw [tree10586_def, child0, child1]
  rfl
theorem node10586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10584 live10584 coloured10584 = result10584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10585 live10585 coloured10585 = result10585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10586 live10586 coloured10586 = result10586 := by
  rw [tree10586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10584 coloured10584 at child
  try dsimp only [live10586, coloured10586]
  rw [child]
  dsimp only [result10584]
  have child := child1
  unfold live10585 coloured10585 at child
  try dsimp only [live10586, coloured10586]
  rw [child]
  dsimp only [result10585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10587_agree_conditional : tree10587 = literal10587 := by
  rw [tree10587_def]
  rfl
theorem node10587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10587 live10587 coloured10587 = result10587 := by
  rw [tree10587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10588_agree_conditional
    (child0 : tree10586 = literal10586)
    (child1 : tree10587 = literal10587) : tree10588 = literal10588 := by
  rw [tree10588_def, child0, child1]
  rfl
theorem node10588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10586 live10586 coloured10586 = result10586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10587 live10587 coloured10587 = result10587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10588 live10588 coloured10588 = result10588 := by
  rw [tree10588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10586 coloured10586 at child
  try dsimp only [live10588, coloured10588]
  rw [child]
  dsimp only [result10586]
  have child := child1
  unfold live10587 coloured10587 at child
  try dsimp only [live10588, coloured10588]
  rw [child]
  dsimp only [result10587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10589_agree_conditional : tree10589 = literal10589 := by
  rw [tree10589_def]
  rfl
theorem node10589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10589 live10589 coloured10589 = result10589 := by
  rw [tree10589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10590_agree_conditional
    (child0 : tree10588 = literal10588)
    (child1 : tree10589 = literal10589) : tree10590 = literal10590 := by
  rw [tree10590_def, child0, child1]
  rfl
theorem node10590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10588 live10588 coloured10588 = result10588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10589 live10589 coloured10589 = result10589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10590 live10590 coloured10590 = result10590 := by
  rw [tree10590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10588 coloured10588 at child
  try dsimp only [live10590, coloured10590]
  rw [child]
  dsimp only [result10588]
  have child := child1
  unfold live10589 coloured10589 at child
  try dsimp only [live10590, coloured10590]
  rw [child]
  dsimp only [result10589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10591_agree_conditional : tree10591 = literal10591 := by
  rw [tree10591_def]
  rfl
theorem node10591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10591 live10591 coloured10591 = result10591 := by
  rw [tree10591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10592_agree_conditional
    (child0 : tree10590 = literal10590)
    (child1 : tree10591 = literal10591) : tree10592 = literal10592 := by
  rw [tree10592_def, child0, child1]
  rfl
theorem node10592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10590 live10590 coloured10590 = result10590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10591 live10591 coloured10591 = result10591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10592 live10592 coloured10592 = result10592 := by
  rw [tree10592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10590 coloured10590 at child
  try dsimp only [live10592, coloured10592]
  rw [child]
  dsimp only [result10590]
  have child := child1
  unfold live10591 coloured10591 at child
  try dsimp only [live10592, coloured10592]
  rw [child]
  dsimp only [result10591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10593_agree_conditional : tree10593 = literal10593 := by
  rw [tree10593_def]
  rfl
theorem node10593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10593 live10593 coloured10593 = result10593 := by
  rw [tree10593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10594_agree_conditional
    (child0 : tree10592 = literal10592)
    (child1 : tree10593 = literal10593) : tree10594 = literal10594 := by
  rw [tree10594_def, child0, child1]
  rfl
theorem node10594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10592 live10592 coloured10592 = result10592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10593 live10593 coloured10593 = result10593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10594 live10594 coloured10594 = result10594 := by
  rw [tree10594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10592 coloured10592 at child
  try dsimp only [live10594, coloured10594]
  rw [child]
  dsimp only [result10592]
  have child := child1
  unfold live10593 coloured10593 at child
  try dsimp only [live10594, coloured10594]
  rw [child]
  dsimp only [result10593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10595_agree_conditional : tree10595 = literal10595 := by
  rw [tree10595_def]
  rfl
theorem node10595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10595 live10595 coloured10595 = result10595 := by
  rw [tree10595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10596_agree_conditional
    (child0 : tree10594 = literal10594)
    (child1 : tree10595 = literal10595) : tree10596 = literal10596 := by
  rw [tree10596_def, child0, child1]
  rfl
theorem node10596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10594 live10594 coloured10594 = result10594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10595 live10595 coloured10595 = result10595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10596 live10596 coloured10596 = result10596 := by
  rw [tree10596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10594 coloured10594 at child
  try dsimp only [live10596, coloured10596]
  rw [child]
  dsimp only [result10594]
  have child := child1
  unfold live10595 coloured10595 at child
  try dsimp only [live10596, coloured10596]
  rw [child]
  dsimp only [result10595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10597_agree_conditional : tree10597 = literal10597 := by
  rw [tree10597_def]
  rfl
theorem node10597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10597 live10597 coloured10597 = result10597 := by
  rw [tree10597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10598_agree_conditional
    (child0 : tree10596 = literal10596)
    (child1 : tree10597 = literal10597) : tree10598 = literal10598 := by
  rw [tree10598_def, child0, child1]
  rfl
theorem node10598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10596 live10596 coloured10596 = result10596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10597 live10597 coloured10597 = result10597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10598 live10598 coloured10598 = result10598 := by
  rw [tree10598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10596 coloured10596 at child
  try dsimp only [live10598, coloured10598]
  rw [child]
  dsimp only [result10596]
  have child := child1
  unfold live10597 coloured10597 at child
  try dsimp only [live10598, coloured10598]
  rw [child]
  dsimp only [result10597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10599_agree_conditional : tree10599 = literal10599 := by
  rw [tree10599_def]
  rfl
theorem node10599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10599 live10599 coloured10599 = result10599 := by
  rw [tree10599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10600_agree_conditional
    (child0 : tree10598 = literal10598)
    (child1 : tree10599 = literal10599) : tree10600 = literal10600 := by
  rw [tree10600_def, child0, child1]
  rfl
theorem node10600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10598 live10598 coloured10598 = result10598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10599 live10599 coloured10599 = result10599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10600 live10600 coloured10600 = result10600 := by
  rw [tree10600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10598 coloured10598 at child
  try dsimp only [live10600, coloured10600]
  rw [child]
  dsimp only [result10598]
  have child := child1
  unfold live10599 coloured10599 at child
  try dsimp only [live10600, coloured10600]
  rw [child]
  dsimp only [result10599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10601_agree_conditional : tree10601 = literal10601 := by
  rw [tree10601_def]
  rfl
theorem node10601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10601 live10601 coloured10601 = result10601 := by
  rw [tree10601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10602_agree_conditional
    (child0 : tree10600 = literal10600)
    (child1 : tree10601 = literal10601) : tree10602 = literal10602 := by
  rw [tree10602_def, child0, child1]
  rfl
theorem node10602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10600 live10600 coloured10600 = result10600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10601 live10601 coloured10601 = result10601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10602 live10602 coloured10602 = result10602 := by
  rw [tree10602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10600 coloured10600 at child
  try dsimp only [live10602, coloured10602]
  rw [child]
  dsimp only [result10600]
  have child := child1
  unfold live10601 coloured10601 at child
  try dsimp only [live10602, coloured10602]
  rw [child]
  dsimp only [result10601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10603_agree_conditional : tree10603 = literal10603 := by
  rw [tree10603_def]
  rfl
theorem node10603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10603 live10603 coloured10603 = result10603 := by
  rw [tree10603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10604_agree_conditional
    (child0 : tree10602 = literal10602)
    (child1 : tree10603 = literal10603) : tree10604 = literal10604 := by
  rw [tree10604_def, child0, child1]
  rfl
theorem node10604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10602 live10602 coloured10602 = result10602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10603 live10603 coloured10603 = result10603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10604 live10604 coloured10604 = result10604 := by
  rw [tree10604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10602 coloured10602 at child
  try dsimp only [live10604, coloured10604]
  rw [child]
  dsimp only [result10602]
  have child := child1
  unfold live10603 coloured10603 at child
  try dsimp only [live10604, coloured10604]
  rw [child]
  dsimp only [result10603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10605_agree_conditional : tree10605 = literal10605 := by
  rw [tree10605_def]
  rfl
theorem node10605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10605 live10605 coloured10605 = result10605 := by
  rw [tree10605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10606_agree_conditional
    (child0 : tree10604 = literal10604)
    (child1 : tree10605 = literal10605) : tree10606 = literal10606 := by
  rw [tree10606_def, child0, child1]
  rfl
theorem node10606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10604 live10604 coloured10604 = result10604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10605 live10605 coloured10605 = result10605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10606 live10606 coloured10606 = result10606 := by
  rw [tree10606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10604 coloured10604 at child
  try dsimp only [live10606, coloured10606]
  rw [child]
  dsimp only [result10604]
  have child := child1
  unfold live10605 coloured10605 at child
  try dsimp only [live10606, coloured10606]
  rw [child]
  dsimp only [result10605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10607_agree_conditional : tree10607 = literal10607 := by
  rw [tree10607_def]
  rfl
theorem node10607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10607 live10607 coloured10607 = result10607 := by
  rw [tree10607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10608_agree_conditional
    (child0 : tree10606 = literal10606)
    (child1 : tree10607 = literal10607) : tree10608 = literal10608 := by
  rw [tree10608_def, child0, child1]
  rfl
theorem node10608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10606 live10606 coloured10606 = result10606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10607 live10607 coloured10607 = result10607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10608 live10608 coloured10608 = result10608 := by
  rw [tree10608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10606 coloured10606 at child
  try dsimp only [live10608, coloured10608]
  rw [child]
  dsimp only [result10606]
  have child := child1
  unfold live10607 coloured10607 at child
  try dsimp only [live10608, coloured10608]
  rw [child]
  dsimp only [result10607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10609_agree_conditional : tree10609 = literal10609 := by
  rw [tree10609_def]
  rfl
theorem node10609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10609 live10609 coloured10609 = result10609 := by
  rw [tree10609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10610_agree_conditional
    (child0 : tree10608 = literal10608)
    (child1 : tree10609 = literal10609) : tree10610 = literal10610 := by
  rw [tree10610_def, child0, child1]
  rfl
theorem node10610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10608 live10608 coloured10608 = result10608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10609 live10609 coloured10609 = result10609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10610 live10610 coloured10610 = result10610 := by
  rw [tree10610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10608 coloured10608 at child
  try dsimp only [live10610, coloured10610]
  rw [child]
  dsimp only [result10608]
  have child := child1
  unfold live10609 coloured10609 at child
  try dsimp only [live10610, coloured10610]
  rw [child]
  dsimp only [result10609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10611_agree_conditional : tree10611 = literal10611 := by
  rw [tree10611_def]
  rfl
theorem node10611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10611 live10611 coloured10611 = result10611 := by
  rw [tree10611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10612_agree_conditional
    (child0 : tree10610 = literal10610)
    (child1 : tree10611 = literal10611) : tree10612 = literal10612 := by
  rw [tree10612_def, child0, child1]
  rfl
theorem node10612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10610 live10610 coloured10610 = result10610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10611 live10611 coloured10611 = result10611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10612 live10612 coloured10612 = result10612 := by
  rw [tree10612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10610 coloured10610 at child
  try dsimp only [live10612, coloured10612]
  rw [child]
  dsimp only [result10610]
  have child := child1
  unfold live10611 coloured10611 at child
  try dsimp only [live10612, coloured10612]
  rw [child]
  dsimp only [result10611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10613_agree_conditional : tree10613 = literal10613 := by
  rw [tree10613_def]
  rfl
theorem node10613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10613 live10613 coloured10613 = result10613 := by
  rw [tree10613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10614_agree_conditional
    (child0 : tree10612 = literal10612)
    (child1 : tree10613 = literal10613) : tree10614 = literal10614 := by
  rw [tree10614_def, child0, child1]
  rfl
theorem node10614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10612 live10612 coloured10612 = result10612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10613 live10613 coloured10613 = result10613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10614 live10614 coloured10614 = result10614 := by
  rw [tree10614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10612 coloured10612 at child
  try dsimp only [live10614, coloured10614]
  rw [child]
  dsimp only [result10612]
  have child := child1
  unfold live10613 coloured10613 at child
  try dsimp only [live10614, coloured10614]
  rw [child]
  dsimp only [result10613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10615_agree_conditional : tree10615 = literal10615 := by
  rw [tree10615_def]
  rfl
theorem node10615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10615 live10615 coloured10615 = result10615 := by
  rw [tree10615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10616_agree_conditional
    (child0 : tree10614 = literal10614)
    (child1 : tree10615 = literal10615) : tree10616 = literal10616 := by
  rw [tree10616_def, child0, child1]
  rfl
theorem node10616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10614 live10614 coloured10614 = result10614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10615 live10615 coloured10615 = result10615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10616 live10616 coloured10616 = result10616 := by
  rw [tree10616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10614 coloured10614 at child
  try dsimp only [live10616, coloured10616]
  rw [child]
  dsimp only [result10614]
  have child := child1
  unfold live10615 coloured10615 at child
  try dsimp only [live10616, coloured10616]
  rw [child]
  dsimp only [result10615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10617_agree_conditional : tree10617 = literal10617 := by
  rw [tree10617_def]
  rfl
theorem node10617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10617 live10617 coloured10617 = result10617 := by
  rw [tree10617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10618_agree_conditional
    (child0 : tree10616 = literal10616)
    (child1 : tree10617 = literal10617) : tree10618 = literal10618 := by
  rw [tree10618_def, child0, child1]
  rfl
theorem node10618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10616 live10616 coloured10616 = result10616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10617 live10617 coloured10617 = result10617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10618 live10618 coloured10618 = result10618 := by
  rw [tree10618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10616 coloured10616 at child
  try dsimp only [live10618, coloured10618]
  rw [child]
  dsimp only [result10616]
  have child := child1
  unfold live10617 coloured10617 at child
  try dsimp only [live10618, coloured10618]
  rw [child]
  dsimp only [result10617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10619_agree_conditional : tree10619 = literal10619 := by
  rw [tree10619_def]
  rfl
theorem node10619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10619 live10619 coloured10619 = result10619 := by
  rw [tree10619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10620_agree_conditional
    (child0 : tree10618 = literal10618)
    (child1 : tree10619 = literal10619) : tree10620 = literal10620 := by
  rw [tree10620_def, child0, child1]
  rfl
theorem node10620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10618 live10618 coloured10618 = result10618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10619 live10619 coloured10619 = result10619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10620 live10620 coloured10620 = result10620 := by
  rw [tree10620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10618 coloured10618 at child
  try dsimp only [live10620, coloured10620]
  rw [child]
  dsimp only [result10618]
  have child := child1
  unfold live10619 coloured10619 at child
  try dsimp only [live10620, coloured10620]
  rw [child]
  dsimp only [result10619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10621_agree_conditional : tree10621 = literal10621 := by
  rw [tree10621_def]
  rfl
theorem node10621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10621 live10621 coloured10621 = result10621 := by
  rw [tree10621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10622_agree_conditional
    (child0 : tree10620 = literal10620)
    (child1 : tree10621 = literal10621) : tree10622 = literal10622 := by
  rw [tree10622_def, child0, child1]
  rfl
theorem node10622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10620 live10620 coloured10620 = result10620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10621 live10621 coloured10621 = result10621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10622 live10622 coloured10622 = result10622 := by
  rw [tree10622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10620 coloured10620 at child
  try dsimp only [live10622, coloured10622]
  rw [child]
  dsimp only [result10620]
  have child := child1
  unfold live10621 coloured10621 at child
  try dsimp only [live10622, coloured10622]
  rw [child]
  dsimp only [result10621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10623_agree_conditional : tree10623 = literal10623 := by
  rw [tree10623_def]
  rfl
theorem node10623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10623 live10623 coloured10623 = result10623 := by
  rw [tree10623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10624_agree_conditional
    (child0 : tree10622 = literal10622)
    (child1 : tree10623 = literal10623) : tree10624 = literal10624 := by
  rw [tree10624_def, child0, child1]
  rfl
theorem node10624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10622 live10622 coloured10622 = result10622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10623 live10623 coloured10623 = result10623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10624 live10624 coloured10624 = result10624 := by
  rw [tree10624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10622 coloured10622 at child
  try dsimp only [live10624, coloured10624]
  rw [child]
  dsimp only [result10622]
  have child := child1
  unfold live10623 coloured10623 at child
  try dsimp only [live10624, coloured10624]
  rw [child]
  dsimp only [result10623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10625_agree_conditional : tree10625 = literal10625 := by
  rw [tree10625_def]
  rfl
theorem node10625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10625 live10625 coloured10625 = result10625 := by
  rw [tree10625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10626_agree_conditional
    (child0 : tree10624 = literal10624)
    (child1 : tree10625 = literal10625) : tree10626 = literal10626 := by
  rw [tree10626_def, child0, child1]
  rfl
theorem node10626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10624 live10624 coloured10624 = result10624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10625 live10625 coloured10625 = result10625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10626 live10626 coloured10626 = result10626 := by
  rw [tree10626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10624 coloured10624 at child
  try dsimp only [live10626, coloured10626]
  rw [child]
  dsimp only [result10624]
  have child := child1
  unfold live10625 coloured10625 at child
  try dsimp only [live10626, coloured10626]
  rw [child]
  dsimp only [result10625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10627_agree_conditional : tree10627 = literal10627 := by
  rw [tree10627_def]
  rfl
theorem node10627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10627 live10627 coloured10627 = result10627 := by
  rw [tree10627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10628_agree_conditional
    (child0 : tree10626 = literal10626)
    (child1 : tree10627 = literal10627) : tree10628 = literal10628 := by
  rw [tree10628_def, child0, child1]
  rfl
theorem node10628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10626 live10626 coloured10626 = result10626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10627 live10627 coloured10627 = result10627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10628 live10628 coloured10628 = result10628 := by
  rw [tree10628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10626 coloured10626 at child
  try dsimp only [live10628, coloured10628]
  rw [child]
  dsimp only [result10626]
  have child := child1
  unfold live10627 coloured10627 at child
  try dsimp only [live10628, coloured10628]
  rw [child]
  dsimp only [result10627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10629_agree_conditional : tree10629 = literal10629 := by
  rw [tree10629_def]
  rfl
theorem node10629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10629 live10629 coloured10629 = result10629 := by
  rw [tree10629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10630_agree_conditional
    (child0 : tree10628 = literal10628)
    (child1 : tree10629 = literal10629) : tree10630 = literal10630 := by
  rw [tree10630_def, child0, child1]
  rfl
theorem node10630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10628 live10628 coloured10628 = result10628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10629 live10629 coloured10629 = result10629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10630 live10630 coloured10630 = result10630 := by
  rw [tree10630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10628 coloured10628 at child
  try dsimp only [live10630, coloured10630]
  rw [child]
  dsimp only [result10628]
  have child := child1
  unfold live10629 coloured10629 at child
  try dsimp only [live10630, coloured10630]
  rw [child]
  dsimp only [result10629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10631_agree_conditional : tree10631 = literal10631 := by
  rw [tree10631_def]
  rfl
theorem node10631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10631 live10631 coloured10631 = result10631 := by
  rw [tree10631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10632_agree_conditional
    (child0 : tree10630 = literal10630)
    (child1 : tree10631 = literal10631) : tree10632 = literal10632 := by
  rw [tree10632_def, child0, child1]
  rfl
theorem node10632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10630 live10630 coloured10630 = result10630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10631 live10631 coloured10631 = result10631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10632 live10632 coloured10632 = result10632 := by
  rw [tree10632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10630 coloured10630 at child
  try dsimp only [live10632, coloured10632]
  rw [child]
  dsimp only [result10630]
  have child := child1
  unfold live10631 coloured10631 at child
  try dsimp only [live10632, coloured10632]
  rw [child]
  dsimp only [result10631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10633_agree_conditional : tree10633 = literal10633 := by
  rw [tree10633_def]
  rfl
theorem node10633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10633 live10633 coloured10633 = result10633 := by
  rw [tree10633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10634_agree_conditional
    (child0 : tree10632 = literal10632)
    (child1 : tree10633 = literal10633) : tree10634 = literal10634 := by
  rw [tree10634_def, child0, child1]
  rfl
theorem node10634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10632 live10632 coloured10632 = result10632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10633 live10633 coloured10633 = result10633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10634 live10634 coloured10634 = result10634 := by
  rw [tree10634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10632 coloured10632 at child
  try dsimp only [live10634, coloured10634]
  rw [child]
  dsimp only [result10632]
  have child := child1
  unfold live10633 coloured10633 at child
  try dsimp only [live10634, coloured10634]
  rw [child]
  dsimp only [result10633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10635_agree_conditional : tree10635 = literal10635 := by
  rw [tree10635_def]
  rfl
theorem node10635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10635 live10635 coloured10635 = result10635 := by
  rw [tree10635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10636_agree_conditional
    (child0 : tree10634 = literal10634)
    (child1 : tree10635 = literal10635) : tree10636 = literal10636 := by
  rw [tree10636_def, child0, child1]
  rfl
theorem node10636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10634 live10634 coloured10634 = result10634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10635 live10635 coloured10635 = result10635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10636 live10636 coloured10636 = result10636 := by
  rw [tree10636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10634 coloured10634 at child
  try dsimp only [live10636, coloured10636]
  rw [child]
  dsimp only [result10634]
  have child := child1
  unfold live10635 coloured10635 at child
  try dsimp only [live10636, coloured10636]
  rw [child]
  dsimp only [result10635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10637_agree_conditional : tree10637 = literal10637 := by
  rw [tree10637_def]
  rfl
theorem node10637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10637 live10637 coloured10637 = result10637 := by
  rw [tree10637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10638_agree_conditional
    (child0 : tree10636 = literal10636)
    (child1 : tree10637 = literal10637) : tree10638 = literal10638 := by
  rw [tree10638_def, child0, child1]
  rfl
theorem node10638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10636 live10636 coloured10636 = result10636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10637 live10637 coloured10637 = result10637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10638 live10638 coloured10638 = result10638 := by
  rw [tree10638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10636 coloured10636 at child
  try dsimp only [live10638, coloured10638]
  rw [child]
  dsimp only [result10636]
  have child := child1
  unfold live10637 coloured10637 at child
  try dsimp only [live10638, coloured10638]
  rw [child]
  dsimp only [result10637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10639_agree_conditional : tree10639 = literal10639 := by
  rw [tree10639_def]
  rfl
theorem node10639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10639 live10639 coloured10639 = result10639 := by
  rw [tree10639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10640_agree_conditional
    (child0 : tree10638 = literal10638)
    (child1 : tree10639 = literal10639) : tree10640 = literal10640 := by
  rw [tree10640_def, child0, child1]
  rfl
theorem node10640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10638 live10638 coloured10638 = result10638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10639 live10639 coloured10639 = result10639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10640 live10640 coloured10640 = result10640 := by
  rw [tree10640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10638 coloured10638 at child
  try dsimp only [live10640, coloured10640]
  rw [child]
  dsimp only [result10638]
  have child := child1
  unfold live10639 coloured10639 at child
  try dsimp only [live10640, coloured10640]
  rw [child]
  dsimp only [result10639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10641_agree_conditional : tree10641 = literal10641 := by
  rw [tree10641_def]
  rfl
theorem node10641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10641 live10641 coloured10641 = result10641 := by
  rw [tree10641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10642_agree_conditional
    (child0 : tree10640 = literal10640)
    (child1 : tree10641 = literal10641) : tree10642 = literal10642 := by
  rw [tree10642_def, child0, child1]
  rfl
theorem node10642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10640 live10640 coloured10640 = result10640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10641 live10641 coloured10641 = result10641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10642 live10642 coloured10642 = result10642 := by
  rw [tree10642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10640 coloured10640 at child
  try dsimp only [live10642, coloured10642]
  rw [child]
  dsimp only [result10640]
  have child := child1
  unfold live10641 coloured10641 at child
  try dsimp only [live10642, coloured10642]
  rw [child]
  dsimp only [result10641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10643_agree_conditional : tree10643 = literal10643 := by
  rw [tree10643_def]
  rfl
theorem node10643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10643 live10643 coloured10643 = result10643 := by
  rw [tree10643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10644_agree_conditional
    (child0 : tree10642 = literal10642)
    (child1 : tree10643 = literal10643) : tree10644 = literal10644 := by
  rw [tree10644_def, child0, child1]
  rfl
theorem node10644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10642 live10642 coloured10642 = result10642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10643 live10643 coloured10643 = result10643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10644 live10644 coloured10644 = result10644 := by
  rw [tree10644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10642 coloured10642 at child
  try dsimp only [live10644, coloured10644]
  rw [child]
  dsimp only [result10642]
  have child := child1
  unfold live10643 coloured10643 at child
  try dsimp only [live10644, coloured10644]
  rw [child]
  dsimp only [result10643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10645_agree_conditional : tree10645 = literal10645 := by
  rw [tree10645_def]
  rfl
theorem node10645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10645 live10645 coloured10645 = result10645 := by
  rw [tree10645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10646_agree_conditional
    (child0 : tree10644 = literal10644)
    (child1 : tree10645 = literal10645) : tree10646 = literal10646 := by
  rw [tree10646_def, child0, child1]
  rfl
theorem node10646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10644 live10644 coloured10644 = result10644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10645 live10645 coloured10645 = result10645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10646 live10646 coloured10646 = result10646 := by
  rw [tree10646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10644 coloured10644 at child
  try dsimp only [live10646, coloured10646]
  rw [child]
  dsimp only [result10644]
  have child := child1
  unfold live10645 coloured10645 at child
  try dsimp only [live10646, coloured10646]
  rw [child]
  dsimp only [result10645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10647_agree_conditional : tree10647 = literal10647 := by
  rw [tree10647_def]
  rfl
theorem node10647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10647 live10647 coloured10647 = result10647 := by
  rw [tree10647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10648_agree_conditional
    (child0 : tree10646 = literal10646)
    (child1 : tree10647 = literal10647) : tree10648 = literal10648 := by
  rw [tree10648_def, child0, child1]
  rfl
theorem node10648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10646 live10646 coloured10646 = result10646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10647 live10647 coloured10647 = result10647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10648 live10648 coloured10648 = result10648 := by
  rw [tree10648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10646 coloured10646 at child
  try dsimp only [live10648, coloured10648]
  rw [child]
  dsimp only [result10646]
  have child := child1
  unfold live10647 coloured10647 at child
  try dsimp only [live10648, coloured10648]
  rw [child]
  dsimp only [result10647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10649_agree_conditional : tree10649 = literal10649 := by
  rw [tree10649_def]
  rfl
theorem node10649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10649 live10649 coloured10649 = result10649 := by
  rw [tree10649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10650_agree_conditional
    (child0 : tree10648 = literal10648)
    (child1 : tree10649 = literal10649) : tree10650 = literal10650 := by
  rw [tree10650_def, child0, child1]
  rfl
theorem node10650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10648 live10648 coloured10648 = result10648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10649 live10649 coloured10649 = result10649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10650 live10650 coloured10650 = result10650 := by
  rw [tree10650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10648 coloured10648 at child
  try dsimp only [live10650, coloured10650]
  rw [child]
  dsimp only [result10648]
  have child := child1
  unfold live10649 coloured10649 at child
  try dsimp only [live10650, coloured10650]
  rw [child]
  dsimp only [result10649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10651_agree_conditional : tree10651 = literal10651 := by
  rw [tree10651_def]
  rfl
theorem node10651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10651 live10651 coloured10651 = result10651 := by
  rw [tree10651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10652_agree_conditional
    (child0 : tree10650 = literal10650)
    (child1 : tree10651 = literal10651) : tree10652 = literal10652 := by
  rw [tree10652_def, child0, child1]
  rfl
theorem node10652_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10650 live10650 coloured10650 = result10650)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10651 live10651 coloured10651 = result10651) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10652 live10652 coloured10652 = result10652 := by
  rw [tree10652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10650 coloured10650 at child
  try dsimp only [live10652, coloured10652]
  rw [child]
  dsimp only [result10650]
  have child := child1
  unfold live10651 coloured10651 at child
  try dsimp only [live10652, coloured10652]
  rw [child]
  dsimp only [result10651]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10653_agree_conditional : tree10653 = literal10653 := by
  rw [tree10653_def]
  rfl
theorem node10653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10653 live10653 coloured10653 = result10653 := by
  rw [tree10653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10654_agree_conditional
    (child0 : tree10652 = literal10652)
    (child1 : tree10653 = literal10653) : tree10654 = literal10654 := by
  rw [tree10654_def, child0, child1]
  rfl
theorem node10654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10652 live10652 coloured10652 = result10652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10653 live10653 coloured10653 = result10653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10654 live10654 coloured10654 = result10654 := by
  rw [tree10654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10652 coloured10652 at child
  try dsimp only [live10654, coloured10654]
  rw [child]
  dsimp only [result10652]
  have child := child1
  unfold live10653 coloured10653 at child
  try dsimp only [live10654, coloured10654]
  rw [child]
  dsimp only [result10653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10655_agree_conditional : tree10655 = literal10655 := by
  rw [tree10655_def]
  rfl
theorem node10655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10655 live10655 coloured10655 = result10655 := by
  rw [tree10655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
