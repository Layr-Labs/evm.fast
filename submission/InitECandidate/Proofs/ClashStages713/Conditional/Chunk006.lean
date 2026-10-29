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
theorem tree576_agree_conditional
    (child0 : tree574 = literal574)
    (child1 : tree575 = literal575) : tree576 = literal576 := by
  rw [tree576_def, child0, child1]
  rfl
theorem node576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree574 live574 coloured574 = result574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree575 live575 coloured575 = result575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree576 live576 coloured576 = result576 := by
  rw [tree576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live574 coloured574 at child
  try dsimp only [live576, coloured576]
  rw [child]
  dsimp only [result574]
  have child := child1
  unfold live575 coloured575 at child
  try dsimp only [live576, coloured576]
  rw [child]
  dsimp only [result575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree577_agree_conditional : tree577 = literal577 := by
  rw [tree577_def]
  rfl
theorem node577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree577 live577 coloured577 = result577 := by
  rw [tree577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree578_agree_conditional
    (child0 : tree576 = literal576)
    (child1 : tree577 = literal577) : tree578 = literal578 := by
  rw [tree578_def, child0, child1]
  rfl
theorem node578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree576 live576 coloured576 = result576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree577 live577 coloured577 = result577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree578 live578 coloured578 = result578 := by
  rw [tree578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live576 coloured576 at child
  try dsimp only [live578, coloured578]
  rw [child]
  dsimp only [result576]
  have child := child1
  unfold live577 coloured577 at child
  try dsimp only [live578, coloured578]
  rw [child]
  dsimp only [result577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree579_agree_conditional : tree579 = literal579 := by
  rw [tree579_def]
  rfl
theorem node579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree579 live579 coloured579 = result579 := by
  rw [tree579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree580_agree_conditional
    (child0 : tree578 = literal578)
    (child1 : tree579 = literal579) : tree580 = literal580 := by
  rw [tree580_def, child0, child1]
  rfl
theorem node580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree578 live578 coloured578 = result578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree579 live579 coloured579 = result579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree580 live580 coloured580 = result580 := by
  rw [tree580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live578 coloured578 at child
  try dsimp only [live580, coloured580]
  rw [child]
  dsimp only [result578]
  have child := child1
  unfold live579 coloured579 at child
  try dsimp only [live580, coloured580]
  rw [child]
  dsimp only [result579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree581_agree_conditional : tree581 = literal581 := by
  rw [tree581_def]
  rfl
theorem node581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree581 live581 coloured581 = result581 := by
  rw [tree581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree582_agree_conditional
    (child0 : tree580 = literal580)
    (child1 : tree581 = literal581) : tree582 = literal582 := by
  rw [tree582_def, child0, child1]
  rfl
theorem node582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree580 live580 coloured580 = result580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree581 live581 coloured581 = result581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree582 live582 coloured582 = result582 := by
  rw [tree582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live580 coloured580 at child
  try dsimp only [live582, coloured582]
  rw [child]
  dsimp only [result580]
  have child := child1
  unfold live581 coloured581 at child
  try dsimp only [live582, coloured582]
  rw [child]
  dsimp only [result581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree583_agree_conditional : tree583 = literal583 := by
  rw [tree583_def]
  rfl
theorem node583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree583 live583 coloured583 = result583 := by
  rw [tree583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree584_agree_conditional
    (child0 : tree582 = literal582)
    (child1 : tree583 = literal583) : tree584 = literal584 := by
  rw [tree584_def, child0, child1]
  rfl
theorem node584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree582 live582 coloured582 = result582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree583 live583 coloured583 = result583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree584 live584 coloured584 = result584 := by
  rw [tree584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live582 coloured582 at child
  try dsimp only [live584, coloured584]
  rw [child]
  dsimp only [result582]
  have child := child1
  unfold live583 coloured583 at child
  try dsimp only [live584, coloured584]
  rw [child]
  dsimp only [result583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree585_agree_conditional : tree585 = literal585 := by
  rw [tree585_def]
  rfl
theorem node585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree585 live585 coloured585 = result585 := by
  rw [tree585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree586_agree_conditional
    (child0 : tree584 = literal584)
    (child1 : tree585 = literal585) : tree586 = literal586 := by
  rw [tree586_def, child0, child1]
  rfl
theorem node586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree584 live584 coloured584 = result584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree585 live585 coloured585 = result585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree586 live586 coloured586 = result586 := by
  rw [tree586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live584 coloured584 at child
  try dsimp only [live586, coloured586]
  rw [child]
  dsimp only [result584]
  have child := child1
  unfold live585 coloured585 at child
  try dsimp only [live586, coloured586]
  rw [child]
  dsimp only [result585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree587_agree_conditional : tree587 = literal587 := by
  rw [tree587_def]
  rfl
theorem node587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree587 live587 coloured587 = result587 := by
  rw [tree587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree588_agree_conditional
    (child0 : tree586 = literal586)
    (child1 : tree587 = literal587) : tree588 = literal588 := by
  rw [tree588_def, child0, child1]
  rfl
theorem node588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree586 live586 coloured586 = result586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree587 live587 coloured587 = result587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree588 live588 coloured588 = result588 := by
  rw [tree588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live586 coloured586 at child
  try dsimp only [live588, coloured588]
  rw [child]
  dsimp only [result586]
  have child := child1
  unfold live587 coloured587 at child
  try dsimp only [live588, coloured588]
  rw [child]
  dsimp only [result587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree589_agree_conditional : tree589 = literal589 := by
  rw [tree589_def]
  rfl
theorem node589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree589 live589 coloured589 = result589 := by
  rw [tree589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree590_agree_conditional
    (child0 : tree588 = literal588)
    (child1 : tree589 = literal589) : tree590 = literal590 := by
  rw [tree590_def, child0, child1]
  rfl
theorem node590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree588 live588 coloured588 = result588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree589 live589 coloured589 = result589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree590 live590 coloured590 = result590 := by
  rw [tree590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live588 coloured588 at child
  try dsimp only [live590, coloured590]
  rw [child]
  dsimp only [result588]
  have child := child1
  unfold live589 coloured589 at child
  try dsimp only [live590, coloured590]
  rw [child]
  dsimp only [result589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree591_agree_conditional : tree591 = literal591 := by
  rw [tree591_def]
  rfl
theorem node591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree591 live591 coloured591 = result591 := by
  rw [tree591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree592_agree_conditional
    (child0 : tree590 = literal590)
    (child1 : tree591 = literal591) : tree592 = literal592 := by
  rw [tree592_def, child0, child1]
  rfl
theorem node592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree590 live590 coloured590 = result590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree591 live591 coloured591 = result591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree592 live592 coloured592 = result592 := by
  rw [tree592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live590 coloured590 at child
  try dsimp only [live592, coloured592]
  rw [child]
  dsimp only [result590]
  have child := child1
  unfold live591 coloured591 at child
  try dsimp only [live592, coloured592]
  rw [child]
  dsimp only [result591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree593_agree_conditional : tree593 = literal593 := by
  rw [tree593_def]
  rfl
theorem node593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree593 live593 coloured593 = result593 := by
  rw [tree593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree594_agree_conditional
    (child0 : tree592 = literal592)
    (child1 : tree593 = literal593) : tree594 = literal594 := by
  rw [tree594_def, child0, child1]
  rfl
theorem node594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree592 live592 coloured592 = result592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree593 live593 coloured593 = result593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree594 live594 coloured594 = result594 := by
  rw [tree594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live592 coloured592 at child
  try dsimp only [live594, coloured594]
  rw [child]
  dsimp only [result592]
  have child := child1
  unfold live593 coloured593 at child
  try dsimp only [live594, coloured594]
  rw [child]
  dsimp only [result593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree595_agree_conditional : tree595 = literal595 := by
  rw [tree595_def]
  rfl
theorem node595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree595 live595 coloured595 = result595 := by
  rw [tree595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree596_agree_conditional
    (child0 : tree594 = literal594)
    (child1 : tree595 = literal595) : tree596 = literal596 := by
  rw [tree596_def, child0, child1]
  rfl
theorem node596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree594 live594 coloured594 = result594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree595 live595 coloured595 = result595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree596 live596 coloured596 = result596 := by
  rw [tree596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live594 coloured594 at child
  try dsimp only [live596, coloured596]
  rw [child]
  dsimp only [result594]
  have child := child1
  unfold live595 coloured595 at child
  try dsimp only [live596, coloured596]
  rw [child]
  dsimp only [result595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree597_agree_conditional : tree597 = literal597 := by
  rw [tree597_def]
  rfl
theorem node597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree597 live597 coloured597 = result597 := by
  rw [tree597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree598_agree_conditional
    (child0 : tree596 = literal596)
    (child1 : tree597 = literal597) : tree598 = literal598 := by
  rw [tree598_def, child0, child1]
  rfl
theorem node598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree596 live596 coloured596 = result596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree597 live597 coloured597 = result597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree598 live598 coloured598 = result598 := by
  rw [tree598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live596 coloured596 at child
  try dsimp only [live598, coloured598]
  rw [child]
  dsimp only [result596]
  have child := child1
  unfold live597 coloured597 at child
  try dsimp only [live598, coloured598]
  rw [child]
  dsimp only [result597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree599_agree_conditional : tree599 = literal599 := by
  rw [tree599_def]
  rfl
theorem node599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree599 live599 coloured599 = result599 := by
  rw [tree599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree600_agree_conditional
    (child0 : tree598 = literal598)
    (child1 : tree599 = literal599) : tree600 = literal600 := by
  rw [tree600_def, child0, child1]
  rfl
theorem node600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree598 live598 coloured598 = result598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree599 live599 coloured599 = result599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree600 live600 coloured600 = result600 := by
  rw [tree600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live598 coloured598 at child
  try dsimp only [live600, coloured600]
  rw [child]
  dsimp only [result598]
  have child := child1
  unfold live599 coloured599 at child
  try dsimp only [live600, coloured600]
  rw [child]
  dsimp only [result599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree601_agree_conditional : tree601 = literal601 := by
  rw [tree601_def]
  rfl
theorem node601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree601 live601 coloured601 = result601 := by
  rw [tree601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree602_agree_conditional
    (child0 : tree600 = literal600)
    (child1 : tree601 = literal601) : tree602 = literal602 := by
  rw [tree602_def, child0, child1]
  rfl
theorem node602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree600 live600 coloured600 = result600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree601 live601 coloured601 = result601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree602 live602 coloured602 = result602 := by
  rw [tree602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live600 coloured600 at child
  try dsimp only [live602, coloured602]
  rw [child]
  dsimp only [result600]
  have child := child1
  unfold live601 coloured601 at child
  try dsimp only [live602, coloured602]
  rw [child]
  dsimp only [result601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree603_agree_conditional : tree603 = literal603 := by
  rw [tree603_def]
  rfl
theorem node603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree603 live603 coloured603 = result603 := by
  rw [tree603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree604_agree_conditional
    (child0 : tree602 = literal602)
    (child1 : tree603 = literal603) : tree604 = literal604 := by
  rw [tree604_def, child0, child1]
  rfl
theorem node604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree602 live602 coloured602 = result602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree603 live603 coloured603 = result603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree604 live604 coloured604 = result604 := by
  rw [tree604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live602 coloured602 at child
  try dsimp only [live604, coloured604]
  rw [child]
  dsimp only [result602]
  have child := child1
  unfold live603 coloured603 at child
  try dsimp only [live604, coloured604]
  rw [child]
  dsimp only [result603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree605_agree_conditional : tree605 = literal605 := by
  rw [tree605_def]
  rfl
theorem node605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree605 live605 coloured605 = result605 := by
  rw [tree605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree606_agree_conditional
    (child0 : tree604 = literal604)
    (child1 : tree605 = literal605) : tree606 = literal606 := by
  rw [tree606_def, child0, child1]
  rfl
theorem node606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree604 live604 coloured604 = result604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree605 live605 coloured605 = result605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree606 live606 coloured606 = result606 := by
  rw [tree606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live604 coloured604 at child
  try dsimp only [live606, coloured606]
  rw [child]
  dsimp only [result604]
  have child := child1
  unfold live605 coloured605 at child
  try dsimp only [live606, coloured606]
  rw [child]
  dsimp only [result605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree607_agree_conditional : tree607 = literal607 := by
  rw [tree607_def]
  rfl
theorem node607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree607 live607 coloured607 = result607 := by
  rw [tree607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree608_agree_conditional
    (child0 : tree606 = literal606)
    (child1 : tree607 = literal607) : tree608 = literal608 := by
  rw [tree608_def, child0, child1]
  rfl
theorem node608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree606 live606 coloured606 = result606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree607 live607 coloured607 = result607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree608 live608 coloured608 = result608 := by
  rw [tree608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live606 coloured606 at child
  try dsimp only [live608, coloured608]
  rw [child]
  dsimp only [result606]
  have child := child1
  unfold live607 coloured607 at child
  try dsimp only [live608, coloured608]
  rw [child]
  dsimp only [result607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree609_agree_conditional : tree609 = literal609 := by
  rw [tree609_def]
  rfl
theorem node609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree609 live609 coloured609 = result609 := by
  rw [tree609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree610_agree_conditional
    (child0 : tree608 = literal608)
    (child1 : tree609 = literal609) : tree610 = literal610 := by
  rw [tree610_def, child0, child1]
  rfl
theorem node610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree608 live608 coloured608 = result608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree609 live609 coloured609 = result609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree610 live610 coloured610 = result610 := by
  rw [tree610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live608 coloured608 at child
  try dsimp only [live610, coloured610]
  rw [child]
  dsimp only [result608]
  have child := child1
  unfold live609 coloured609 at child
  try dsimp only [live610, coloured610]
  rw [child]
  dsimp only [result609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree611_agree_conditional : tree611 = literal611 := by
  rw [tree611_def]
  rfl
theorem node611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree611 live611 coloured611 = result611 := by
  rw [tree611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree612_agree_conditional
    (child0 : tree610 = literal610)
    (child1 : tree611 = literal611) : tree612 = literal612 := by
  rw [tree612_def, child0, child1]
  rfl
theorem node612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree610 live610 coloured610 = result610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree611 live611 coloured611 = result611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree612 live612 coloured612 = result612 := by
  rw [tree612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live610 coloured610 at child
  try dsimp only [live612, coloured612]
  rw [child]
  dsimp only [result610]
  have child := child1
  unfold live611 coloured611 at child
  try dsimp only [live612, coloured612]
  rw [child]
  dsimp only [result611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree613_agree_conditional : tree613 = literal613 := by
  rw [tree613_def]
  rfl
theorem node613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree613 live613 coloured613 = result613 := by
  rw [tree613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree614_agree_conditional
    (child0 : tree612 = literal612)
    (child1 : tree613 = literal613) : tree614 = literal614 := by
  rw [tree614_def, child0, child1]
  rfl
theorem node614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree612 live612 coloured612 = result612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree613 live613 coloured613 = result613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree614 live614 coloured614 = result614 := by
  rw [tree614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live612 coloured612 at child
  try dsimp only [live614, coloured614]
  rw [child]
  dsimp only [result612]
  have child := child1
  unfold live613 coloured613 at child
  try dsimp only [live614, coloured614]
  rw [child]
  dsimp only [result613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree615_agree_conditional : tree615 = literal615 := by
  rw [tree615_def]
  rfl
theorem node615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree615 live615 coloured615 = result615 := by
  rw [tree615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree616_agree_conditional
    (child0 : tree614 = literal614)
    (child1 : tree615 = literal615) : tree616 = literal616 := by
  rw [tree616_def, child0, child1]
  rfl
theorem node616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree614 live614 coloured614 = result614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree615 live615 coloured615 = result615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree616 live616 coloured616 = result616 := by
  rw [tree616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live614 coloured614 at child
  try dsimp only [live616, coloured616]
  rw [child]
  dsimp only [result614]
  have child := child1
  unfold live615 coloured615 at child
  try dsimp only [live616, coloured616]
  rw [child]
  dsimp only [result615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree617_agree_conditional : tree617 = literal617 := by
  rw [tree617_def]
  rfl
theorem node617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree617 live617 coloured617 = result617 := by
  rw [tree617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree618_agree_conditional
    (child0 : tree616 = literal616)
    (child1 : tree617 = literal617) : tree618 = literal618 := by
  rw [tree618_def, child0, child1]
  rfl
theorem node618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree616 live616 coloured616 = result616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree617 live617 coloured617 = result617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree618 live618 coloured618 = result618 := by
  rw [tree618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live616 coloured616 at child
  try dsimp only [live618, coloured618]
  rw [child]
  dsimp only [result616]
  have child := child1
  unfold live617 coloured617 at child
  try dsimp only [live618, coloured618]
  rw [child]
  dsimp only [result617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree619_agree_conditional : tree619 = literal619 := by
  rw [tree619_def]
  rfl
theorem node619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree619 live619 coloured619 = result619 := by
  rw [tree619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree620_agree_conditional
    (child0 : tree618 = literal618)
    (child1 : tree619 = literal619) : tree620 = literal620 := by
  rw [tree620_def, child0, child1]
  rfl
theorem node620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree618 live618 coloured618 = result618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree619 live619 coloured619 = result619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree620 live620 coloured620 = result620 := by
  rw [tree620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live618 coloured618 at child
  try dsimp only [live620, coloured620]
  rw [child]
  dsimp only [result618]
  have child := child1
  unfold live619 coloured619 at child
  try dsimp only [live620, coloured620]
  rw [child]
  dsimp only [result619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree621_agree_conditional : tree621 = literal621 := by
  rw [tree621_def]
  rfl
theorem node621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree621 live621 coloured621 = result621 := by
  rw [tree621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree622_agree_conditional
    (child0 : tree620 = literal620)
    (child1 : tree621 = literal621) : tree622 = literal622 := by
  rw [tree622_def, child0, child1]
  rfl
theorem node622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree620 live620 coloured620 = result620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree621 live621 coloured621 = result621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree622 live622 coloured622 = result622 := by
  rw [tree622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live620 coloured620 at child
  try dsimp only [live622, coloured622]
  rw [child]
  dsimp only [result620]
  have child := child1
  unfold live621 coloured621 at child
  try dsimp only [live622, coloured622]
  rw [child]
  dsimp only [result621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree623_agree_conditional : tree623 = literal623 := by
  rw [tree623_def]
  rfl
theorem node623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree623 live623 coloured623 = result623 := by
  rw [tree623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree624_agree_conditional
    (child0 : tree622 = literal622)
    (child1 : tree623 = literal623) : tree624 = literal624 := by
  rw [tree624_def, child0, child1]
  rfl
theorem node624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree622 live622 coloured622 = result622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree623 live623 coloured623 = result623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree624 live624 coloured624 = result624 := by
  rw [tree624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live622 coloured622 at child
  try dsimp only [live624, coloured624]
  rw [child]
  dsimp only [result622]
  have child := child1
  unfold live623 coloured623 at child
  try dsimp only [live624, coloured624]
  rw [child]
  dsimp only [result623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree625_agree_conditional : tree625 = literal625 := by
  rw [tree625_def]
  rfl
theorem node625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree625 live625 coloured625 = result625 := by
  rw [tree625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree626_agree_conditional
    (child0 : tree624 = literal624)
    (child1 : tree625 = literal625) : tree626 = literal626 := by
  rw [tree626_def, child0, child1]
  rfl
theorem node626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree624 live624 coloured624 = result624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree625 live625 coloured625 = result625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree626 live626 coloured626 = result626 := by
  rw [tree626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live624 coloured624 at child
  try dsimp only [live626, coloured626]
  rw [child]
  dsimp only [result624]
  have child := child1
  unfold live625 coloured625 at child
  try dsimp only [live626, coloured626]
  rw [child]
  dsimp only [result625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree627_agree_conditional : tree627 = literal627 := by
  rw [tree627_def]
  rfl
theorem node627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree627 live627 coloured627 = result627 := by
  rw [tree627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree628_agree_conditional
    (child0 : tree626 = literal626)
    (child1 : tree627 = literal627) : tree628 = literal628 := by
  rw [tree628_def, child0, child1]
  rfl
theorem node628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree626 live626 coloured626 = result626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree627 live627 coloured627 = result627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree628 live628 coloured628 = result628 := by
  rw [tree628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live626 coloured626 at child
  try dsimp only [live628, coloured628]
  rw [child]
  dsimp only [result626]
  have child := child1
  unfold live627 coloured627 at child
  try dsimp only [live628, coloured628]
  rw [child]
  dsimp only [result627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree629_agree_conditional : tree629 = literal629 := by
  rw [tree629_def]
  rfl
theorem node629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree629 live629 coloured629 = result629 := by
  rw [tree629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree630_agree_conditional
    (child0 : tree628 = literal628)
    (child1 : tree629 = literal629) : tree630 = literal630 := by
  rw [tree630_def, child0, child1]
  rfl
theorem node630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree628 live628 coloured628 = result628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree629 live629 coloured629 = result629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree630 live630 coloured630 = result630 := by
  rw [tree630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live628 coloured628 at child
  try dsimp only [live630, coloured630]
  rw [child]
  dsimp only [result628]
  have child := child1
  unfold live629 coloured629 at child
  try dsimp only [live630, coloured630]
  rw [child]
  dsimp only [result629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree631_agree_conditional : tree631 = literal631 := by
  rw [tree631_def]
  rfl
theorem node631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree631 live631 coloured631 = result631 := by
  rw [tree631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree632_agree_conditional
    (child0 : tree630 = literal630)
    (child1 : tree631 = literal631) : tree632 = literal632 := by
  rw [tree632_def, child0, child1]
  rfl
theorem node632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree630 live630 coloured630 = result630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree631 live631 coloured631 = result631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree632 live632 coloured632 = result632 := by
  rw [tree632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live630 coloured630 at child
  try dsimp only [live632, coloured632]
  rw [child]
  dsimp only [result630]
  have child := child1
  unfold live631 coloured631 at child
  try dsimp only [live632, coloured632]
  rw [child]
  dsimp only [result631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree633_agree_conditional : tree633 = literal633 := by
  rw [tree633_def]
  rfl
theorem node633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree633 live633 coloured633 = result633 := by
  rw [tree633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree634_agree_conditional
    (child0 : tree632 = literal632)
    (child1 : tree633 = literal633) : tree634 = literal634 := by
  rw [tree634_def, child0, child1]
  rfl
theorem node634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree632 live632 coloured632 = result632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree633 live633 coloured633 = result633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree634 live634 coloured634 = result634 := by
  rw [tree634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live632 coloured632 at child
  try dsimp only [live634, coloured634]
  rw [child]
  dsimp only [result632]
  have child := child1
  unfold live633 coloured633 at child
  try dsimp only [live634, coloured634]
  rw [child]
  dsimp only [result633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree635_agree_conditional : tree635 = literal635 := by
  rw [tree635_def]
  rfl
theorem node635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree635 live635 coloured635 = result635 := by
  rw [tree635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree636_agree_conditional
    (child0 : tree634 = literal634)
    (child1 : tree635 = literal635) : tree636 = literal636 := by
  rw [tree636_def, child0, child1]
  rfl
theorem node636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree634 live634 coloured634 = result634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree635 live635 coloured635 = result635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree636 live636 coloured636 = result636 := by
  rw [tree636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live634 coloured634 at child
  try dsimp only [live636, coloured636]
  rw [child]
  dsimp only [result634]
  have child := child1
  unfold live635 coloured635 at child
  try dsimp only [live636, coloured636]
  rw [child]
  dsimp only [result635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree637_agree_conditional : tree637 = literal637 := by
  rw [tree637_def]
  rfl
theorem node637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree637 live637 coloured637 = result637 := by
  rw [tree637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree638_agree_conditional
    (child0 : tree636 = literal636)
    (child1 : tree637 = literal637) : tree638 = literal638 := by
  rw [tree638_def, child0, child1]
  rfl
theorem node638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree636 live636 coloured636 = result636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree637 live637 coloured637 = result637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree638 live638 coloured638 = result638 := by
  rw [tree638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live636 coloured636 at child
  try dsimp only [live638, coloured638]
  rw [child]
  dsimp only [result636]
  have child := child1
  unfold live637 coloured637 at child
  try dsimp only [live638, coloured638]
  rw [child]
  dsimp only [result637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree639_agree_conditional : tree639 = literal639 := by
  rw [tree639_def]
  rfl
theorem node639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree639 live639 coloured639 = result639 := by
  rw [tree639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree640_agree_conditional
    (child0 : tree638 = literal638)
    (child1 : tree639 = literal639) : tree640 = literal640 := by
  rw [tree640_def, child0, child1]
  rfl
theorem node640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree638 live638 coloured638 = result638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree639 live639 coloured639 = result639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree640 live640 coloured640 = result640 := by
  rw [tree640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live638 coloured638 at child
  try dsimp only [live640, coloured640]
  rw [child]
  dsimp only [result638]
  have child := child1
  unfold live639 coloured639 at child
  try dsimp only [live640, coloured640]
  rw [child]
  dsimp only [result639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree641_agree_conditional : tree641 = literal641 := by
  rw [tree641_def]
  rfl
theorem node641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree641 live641 coloured641 = result641 := by
  rw [tree641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree642_agree_conditional
    (child0 : tree640 = literal640)
    (child1 : tree641 = literal641) : tree642 = literal642 := by
  rw [tree642_def, child0, child1]
  rfl
theorem node642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree640 live640 coloured640 = result640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree641 live641 coloured641 = result641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree642 live642 coloured642 = result642 := by
  rw [tree642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live640 coloured640 at child
  try dsimp only [live642, coloured642]
  rw [child]
  dsimp only [result640]
  have child := child1
  unfold live641 coloured641 at child
  try dsimp only [live642, coloured642]
  rw [child]
  dsimp only [result641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree643_agree_conditional : tree643 = literal643 := by
  rw [tree643_def]
  rfl
theorem node643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree643 live643 coloured643 = result643 := by
  rw [tree643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree644_agree_conditional
    (child0 : tree642 = literal642)
    (child1 : tree643 = literal643) : tree644 = literal644 := by
  rw [tree644_def, child0, child1]
  rfl
theorem node644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree642 live642 coloured642 = result642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree643 live643 coloured643 = result643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree644 live644 coloured644 = result644 := by
  rw [tree644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live642 coloured642 at child
  try dsimp only [live644, coloured644]
  rw [child]
  dsimp only [result642]
  have child := child1
  unfold live643 coloured643 at child
  try dsimp only [live644, coloured644]
  rw [child]
  dsimp only [result643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree645_agree_conditional : tree645 = literal645 := by
  rw [tree645_def]
  rfl
theorem node645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree645 live645 coloured645 = result645 := by
  rw [tree645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree646_agree_conditional
    (child0 : tree644 = literal644)
    (child1 : tree645 = literal645) : tree646 = literal646 := by
  rw [tree646_def, child0, child1]
  rfl
theorem node646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree644 live644 coloured644 = result644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree645 live645 coloured645 = result645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree646 live646 coloured646 = result646 := by
  rw [tree646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live644 coloured644 at child
  try dsimp only [live646, coloured646]
  rw [child]
  dsimp only [result644]
  have child := child1
  unfold live645 coloured645 at child
  try dsimp only [live646, coloured646]
  rw [child]
  dsimp only [result645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree647_agree_conditional : tree647 = literal647 := by
  rw [tree647_def]
  rfl
theorem node647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree647 live647 coloured647 = result647 := by
  rw [tree647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree648_agree_conditional
    (child0 : tree646 = literal646)
    (child1 : tree647 = literal647) : tree648 = literal648 := by
  rw [tree648_def, child0, child1]
  rfl
theorem node648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree646 live646 coloured646 = result646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree647 live647 coloured647 = result647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree648 live648 coloured648 = result648 := by
  rw [tree648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live646 coloured646 at child
  try dsimp only [live648, coloured648]
  rw [child]
  dsimp only [result646]
  have child := child1
  unfold live647 coloured647 at child
  try dsimp only [live648, coloured648]
  rw [child]
  dsimp only [result647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree649_agree_conditional : tree649 = literal649 := by
  rw [tree649_def]
  rfl
theorem node649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree649 live649 coloured649 = result649 := by
  rw [tree649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree650_agree_conditional
    (child0 : tree648 = literal648)
    (child1 : tree649 = literal649) : tree650 = literal650 := by
  rw [tree650_def, child0, child1]
  rfl
theorem node650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree648 live648 coloured648 = result648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree649 live649 coloured649 = result649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree650 live650 coloured650 = result650 := by
  rw [tree650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live648 coloured648 at child
  try dsimp only [live650, coloured650]
  rw [child]
  dsimp only [result648]
  have child := child1
  unfold live649 coloured649 at child
  try dsimp only [live650, coloured650]
  rw [child]
  dsimp only [result649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree651_agree_conditional : tree651 = literal651 := by
  rw [tree651_def]
  rfl
theorem node651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree651 live651 coloured651 = result651 := by
  rw [tree651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree652_agree_conditional
    (child0 : tree650 = literal650)
    (child1 : tree651 = literal651) : tree652 = literal652 := by
  rw [tree652_def, child0, child1]
  rfl
theorem node652_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree650 live650 coloured650 = result650)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree651 live651 coloured651 = result651) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree652 live652 coloured652 = result652 := by
  rw [tree652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live650 coloured650 at child
  try dsimp only [live652, coloured652]
  rw [child]
  dsimp only [result650]
  have child := child1
  unfold live651 coloured651 at child
  try dsimp only [live652, coloured652]
  rw [child]
  dsimp only [result651]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree653_agree_conditional : tree653 = literal653 := by
  rw [tree653_def]
  rfl
theorem node653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree653 live653 coloured653 = result653 := by
  rw [tree653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree654_agree_conditional
    (child0 : tree652 = literal652)
    (child1 : tree653 = literal653) : tree654 = literal654 := by
  rw [tree654_def, child0, child1]
  rfl
theorem node654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree652 live652 coloured652 = result652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree653 live653 coloured653 = result653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree654 live654 coloured654 = result654 := by
  rw [tree654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live652 coloured652 at child
  try dsimp only [live654, coloured654]
  rw [child]
  dsimp only [result652]
  have child := child1
  unfold live653 coloured653 at child
  try dsimp only [live654, coloured654]
  rw [child]
  dsimp only [result653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree655_agree_conditional : tree655 = literal655 := by
  rw [tree655_def]
  rfl
theorem node655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree655 live655 coloured655 = result655 := by
  rw [tree655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree656_agree_conditional
    (child0 : tree654 = literal654)
    (child1 : tree655 = literal655) : tree656 = literal656 := by
  rw [tree656_def, child0, child1]
  rfl
theorem node656_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree654 live654 coloured654 = result654)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree655 live655 coloured655 = result655) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree656 live656 coloured656 = result656 := by
  rw [tree656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live654 coloured654 at child
  try dsimp only [live656, coloured656]
  rw [child]
  dsimp only [result654]
  have child := child1
  unfold live655 coloured655 at child
  try dsimp only [live656, coloured656]
  rw [child]
  dsimp only [result655]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree657_agree_conditional : tree657 = literal657 := by
  rw [tree657_def]
  rfl
theorem node657_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree657 live657 coloured657 = result657 := by
  rw [tree657_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree658_agree_conditional
    (child0 : tree656 = literal656)
    (child1 : tree657 = literal657) : tree658 = literal658 := by
  rw [tree658_def, child0, child1]
  rfl
theorem node658_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree656 live656 coloured656 = result656)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree657 live657 coloured657 = result657) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree658 live658 coloured658 = result658 := by
  rw [tree658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live656 coloured656 at child
  try dsimp only [live658, coloured658]
  rw [child]
  dsimp only [result656]
  have child := child1
  unfold live657 coloured657 at child
  try dsimp only [live658, coloured658]
  rw [child]
  dsimp only [result657]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree659_agree_conditional : tree659 = literal659 := by
  rw [tree659_def]
  rfl
theorem node659_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree659 live659 coloured659 = result659 := by
  rw [tree659_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree660_agree_conditional
    (child0 : tree658 = literal658)
    (child1 : tree659 = literal659) : tree660 = literal660 := by
  rw [tree660_def, child0, child1]
  rfl
theorem node660_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree658 live658 coloured658 = result658)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree659 live659 coloured659 = result659) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree660 live660 coloured660 = result660 := by
  rw [tree660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live658 coloured658 at child
  try dsimp only [live660, coloured660]
  rw [child]
  dsimp only [result658]
  have child := child1
  unfold live659 coloured659 at child
  try dsimp only [live660, coloured660]
  rw [child]
  dsimp only [result659]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree661_agree_conditional : tree661 = literal661 := by
  rw [tree661_def]
  rfl
theorem node661_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree661 live661 coloured661 = result661 := by
  rw [tree661_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree662_agree_conditional
    (child0 : tree660 = literal660)
    (child1 : tree661 = literal661) : tree662 = literal662 := by
  rw [tree662_def, child0, child1]
  rfl
theorem node662_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree660 live660 coloured660 = result660)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree661 live661 coloured661 = result661) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree662 live662 coloured662 = result662 := by
  rw [tree662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live660 coloured660 at child
  try dsimp only [live662, coloured662]
  rw [child]
  dsimp only [result660]
  have child := child1
  unfold live661 coloured661 at child
  try dsimp only [live662, coloured662]
  rw [child]
  dsimp only [result661]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree663_agree_conditional : tree663 = literal663 := by
  rw [tree663_def]
  rfl
theorem node663_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree663 live663 coloured663 = result663 := by
  rw [tree663_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree664_agree_conditional
    (child0 : tree662 = literal662)
    (child1 : tree663 = literal663) : tree664 = literal664 := by
  rw [tree664_def, child0, child1]
  rfl
theorem node664_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree662 live662 coloured662 = result662)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree663 live663 coloured663 = result663) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree664 live664 coloured664 = result664 := by
  rw [tree664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live662 coloured662 at child
  try dsimp only [live664, coloured664]
  rw [child]
  dsimp only [result662]
  have child := child1
  unfold live663 coloured663 at child
  try dsimp only [live664, coloured664]
  rw [child]
  dsimp only [result663]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree665_agree_conditional : tree665 = literal665 := by
  rw [tree665_def]
  rfl
theorem node665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree665 live665 coloured665 = result665 := by
  rw [tree665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree666_agree_conditional
    (child0 : tree664 = literal664)
    (child1 : tree665 = literal665) : tree666 = literal666 := by
  rw [tree666_def, child0, child1]
  rfl
theorem node666_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree664 live664 coloured664 = result664)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree665 live665 coloured665 = result665) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree666 live666 coloured666 = result666 := by
  rw [tree666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live664 coloured664 at child
  try dsimp only [live666, coloured666]
  rw [child]
  dsimp only [result664]
  have child := child1
  unfold live665 coloured665 at child
  try dsimp only [live666, coloured666]
  rw [child]
  dsimp only [result665]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree667_agree_conditional : tree667 = literal667 := by
  rw [tree667_def]
  rfl
theorem node667_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree667 live667 coloured667 = result667 := by
  rw [tree667_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree668_agree_conditional
    (child0 : tree666 = literal666)
    (child1 : tree667 = literal667) : tree668 = literal668 := by
  rw [tree668_def, child0, child1]
  rfl
theorem node668_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree666 live666 coloured666 = result666)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree667 live667 coloured667 = result667) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree668 live668 coloured668 = result668 := by
  rw [tree668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live666 coloured666 at child
  try dsimp only [live668, coloured668]
  rw [child]
  dsimp only [result666]
  have child := child1
  unfold live667 coloured667 at child
  try dsimp only [live668, coloured668]
  rw [child]
  dsimp only [result667]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree669_agree_conditional : tree669 = literal669 := by
  rw [tree669_def]
  rfl
theorem node669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree669 live669 coloured669 = result669 := by
  rw [tree669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree670_agree_conditional
    (child0 : tree668 = literal668)
    (child1 : tree669 = literal669) : tree670 = literal670 := by
  rw [tree670_def, child0, child1]
  rfl
theorem node670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree668 live668 coloured668 = result668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree669 live669 coloured669 = result669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree670 live670 coloured670 = result670 := by
  rw [tree670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live668 coloured668 at child
  try dsimp only [live670, coloured670]
  rw [child]
  dsimp only [result668]
  have child := child1
  unfold live669 coloured669 at child
  try dsimp only [live670, coloured670]
  rw [child]
  dsimp only [result669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree671_agree_conditional : tree671 = literal671 := by
  rw [tree671_def]
  rfl
theorem node671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree671 live671 coloured671 = result671 := by
  rw [tree671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
