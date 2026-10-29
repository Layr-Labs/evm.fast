import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages783.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages783
theorem tree576_agree_conditional : tree576 = literal576 := by
  rw [tree576_def]
  rfl
theorem node576_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree576 live576 coloured576 = result576 := by
  rw [tree576_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree577_agree_conditional
    (child0 : tree575 = literal575)
    (child1 : tree576 = literal576) : tree577 = literal577 := by
  rw [tree577_def, child0, child1]
  rfl
theorem node577_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree575 live575 coloured575 = result575)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree576 live576 coloured576 = result576) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree577 live577 coloured577 = result577 := by
  rw [tree577_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live575 coloured575 at child
  try dsimp only [live577, coloured577]
  rw [child]
  dsimp only [result575]
  have child := child1
  unfold live576 coloured576 at child
  try dsimp only [live577, coloured577]
  rw [child]
  dsimp only [result576]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree578_agree_conditional : tree578 = literal578 := by
  rw [tree578_def]
  rfl
theorem node578_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree578 live578 coloured578 = result578 := by
  rw [tree578_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree579_agree_conditional
    (child0 : tree577 = literal577)
    (child1 : tree578 = literal578) : tree579 = literal579 := by
  rw [tree579_def, child0, child1]
  rfl
theorem node579_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree577 live577 coloured577 = result577)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree578 live578 coloured578 = result578) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree579 live579 coloured579 = result579 := by
  rw [tree579_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live577 coloured577 at child
  try dsimp only [live579, coloured579]
  rw [child]
  dsimp only [result577]
  have child := child1
  unfold live578 coloured578 at child
  try dsimp only [live579, coloured579]
  rw [child]
  dsimp only [result578]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree580_agree_conditional : tree580 = literal580 := by
  rw [tree580_def]
  rfl
theorem node580_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree580 live580 coloured580 = result580 := by
  rw [tree580_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree581_agree_conditional
    (child0 : tree579 = literal579)
    (child1 : tree580 = literal580) : tree581 = literal581 := by
  rw [tree581_def, child0, child1]
  rfl
theorem node581_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree579 live579 coloured579 = result579)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree580 live580 coloured580 = result580) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree581 live581 coloured581 = result581 := by
  rw [tree581_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live579 coloured579 at child
  try dsimp only [live581, coloured581]
  rw [child]
  dsimp only [result579]
  have child := child1
  unfold live580 coloured580 at child
  try dsimp only [live581, coloured581]
  rw [child]
  dsimp only [result580]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree582_agree_conditional : tree582 = literal582 := by
  rw [tree582_def]
  rfl
theorem node582_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree582 live582 coloured582 = result582 := by
  rw [tree582_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree583_agree_conditional
    (child0 : tree581 = literal581)
    (child1 : tree582 = literal582) : tree583 = literal583 := by
  rw [tree583_def, child0, child1]
  rfl
theorem node583_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree581 live581 coloured581 = result581)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree582 live582 coloured582 = result582) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree583 live583 coloured583 = result583 := by
  rw [tree583_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live581 coloured581 at child
  try dsimp only [live583, coloured583]
  rw [child]
  dsimp only [result581]
  have child := child1
  unfold live582 coloured582 at child
  try dsimp only [live583, coloured583]
  rw [child]
  dsimp only [result582]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree584_agree_conditional : tree584 = literal584 := by
  rw [tree584_def]
  rfl
theorem node584_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree584 live584 coloured584 = result584 := by
  rw [tree584_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree585_agree_conditional
    (child0 : tree583 = literal583)
    (child1 : tree584 = literal584) : tree585 = literal585 := by
  rw [tree585_def, child0, child1]
  rfl
theorem node585_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree583 live583 coloured583 = result583)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree584 live584 coloured584 = result584) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree585 live585 coloured585 = result585 := by
  rw [tree585_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live583 coloured583 at child
  try dsimp only [live585, coloured585]
  rw [child]
  dsimp only [result583]
  have child := child1
  unfold live584 coloured584 at child
  try dsimp only [live585, coloured585]
  rw [child]
  dsimp only [result584]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree586_agree_conditional : tree586 = literal586 := by
  rw [tree586_def]
  rfl
theorem node586_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree586 live586 coloured586 = result586 := by
  rw [tree586_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree587_agree_conditional
    (child0 : tree585 = literal585)
    (child1 : tree586 = literal586) : tree587 = literal587 := by
  rw [tree587_def, child0, child1]
  rfl
theorem node587_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree585 live585 coloured585 = result585)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree586 live586 coloured586 = result586) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree587 live587 coloured587 = result587 := by
  rw [tree587_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live585 coloured585 at child
  try dsimp only [live587, coloured587]
  rw [child]
  dsimp only [result585]
  have child := child1
  unfold live586 coloured586 at child
  try dsimp only [live587, coloured587]
  rw [child]
  dsimp only [result586]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree588_agree_conditional : tree588 = literal588 := by
  rw [tree588_def]
  rfl
theorem node588_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree588 live588 coloured588 = result588 := by
  rw [tree588_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree589_agree_conditional
    (child0 : tree587 = literal587)
    (child1 : tree588 = literal588) : tree589 = literal589 := by
  rw [tree589_def, child0, child1]
  rfl
theorem node589_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree587 live587 coloured587 = result587)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree588 live588 coloured588 = result588) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree589 live589 coloured589 = result589 := by
  rw [tree589_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live587 coloured587 at child
  try dsimp only [live589, coloured589]
  rw [child]
  dsimp only [result587]
  have child := child1
  unfold live588 coloured588 at child
  try dsimp only [live589, coloured589]
  rw [child]
  dsimp only [result588]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree590_agree_conditional : tree590 = literal590 := by
  rw [tree590_def]
  rfl
theorem node590_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree590 live590 coloured590 = result590 := by
  rw [tree590_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree591_agree_conditional
    (child0 : tree589 = literal589)
    (child1 : tree590 = literal590) : tree591 = literal591 := by
  rw [tree591_def, child0, child1]
  rfl
theorem node591_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree589 live589 coloured589 = result589)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree590 live590 coloured590 = result590) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree591 live591 coloured591 = result591 := by
  rw [tree591_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live589 coloured589 at child
  try dsimp only [live591, coloured591]
  rw [child]
  dsimp only [result589]
  have child := child1
  unfold live590 coloured590 at child
  try dsimp only [live591, coloured591]
  rw [child]
  dsimp only [result590]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree592_agree_conditional : tree592 = literal592 := by
  rw [tree592_def]
  rfl
theorem node592_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree592 live592 coloured592 = result592 := by
  rw [tree592_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree593_agree_conditional
    (child0 : tree591 = literal591)
    (child1 : tree592 = literal592) : tree593 = literal593 := by
  rw [tree593_def, child0, child1]
  rfl
theorem node593_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree591 live591 coloured591 = result591)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree592 live592 coloured592 = result592) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree593 live593 coloured593 = result593 := by
  rw [tree593_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live591 coloured591 at child
  try dsimp only [live593, coloured593]
  rw [child]
  dsimp only [result591]
  have child := child1
  unfold live592 coloured592 at child
  try dsimp only [live593, coloured593]
  rw [child]
  dsimp only [result592]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree594_agree_conditional : tree594 = literal594 := by
  rw [tree594_def]
  rfl
theorem node594_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree594 live594 coloured594 = result594 := by
  rw [tree594_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree595_agree_conditional
    (child0 : tree593 = literal593)
    (child1 : tree594 = literal594) : tree595 = literal595 := by
  rw [tree595_def, child0, child1]
  rfl
theorem node595_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree593 live593 coloured593 = result593)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree594 live594 coloured594 = result594) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree595 live595 coloured595 = result595 := by
  rw [tree595_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live593 coloured593 at child
  try dsimp only [live595, coloured595]
  rw [child]
  dsimp only [result593]
  have child := child1
  unfold live594 coloured594 at child
  try dsimp only [live595, coloured595]
  rw [child]
  dsimp only [result594]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree596_agree_conditional : tree596 = literal596 := by
  rw [tree596_def]
  rfl
theorem node596_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree596 live596 coloured596 = result596 := by
  rw [tree596_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree597_agree_conditional
    (child0 : tree595 = literal595)
    (child1 : tree596 = literal596) : tree597 = literal597 := by
  rw [tree597_def, child0, child1]
  rfl
theorem node597_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree595 live595 coloured595 = result595)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree596 live596 coloured596 = result596) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree597 live597 coloured597 = result597 := by
  rw [tree597_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live595 coloured595 at child
  try dsimp only [live597, coloured597]
  rw [child]
  dsimp only [result595]
  have child := child1
  unfold live596 coloured596 at child
  try dsimp only [live597, coloured597]
  rw [child]
  dsimp only [result596]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree598_agree_conditional : tree598 = literal598 := by
  rw [tree598_def]
  rfl
theorem node598_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree598 live598 coloured598 = result598 := by
  rw [tree598_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree599_agree_conditional
    (child0 : tree597 = literal597)
    (child1 : tree598 = literal598) : tree599 = literal599 := by
  rw [tree599_def, child0, child1]
  rfl
theorem node599_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree597 live597 coloured597 = result597)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree598 live598 coloured598 = result598) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree599 live599 coloured599 = result599 := by
  rw [tree599_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live597 coloured597 at child
  try dsimp only [live599, coloured599]
  rw [child]
  dsimp only [result597]
  have child := child1
  unfold live598 coloured598 at child
  try dsimp only [live599, coloured599]
  rw [child]
  dsimp only [result598]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree600_agree_conditional : tree600 = literal600 := by
  rw [tree600_def]
  rfl
theorem node600_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree600 live600 coloured600 = result600 := by
  rw [tree600_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree601_agree_conditional
    (child0 : tree599 = literal599)
    (child1 : tree600 = literal600) : tree601 = literal601 := by
  rw [tree601_def, child0, child1]
  rfl
theorem node601_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree599 live599 coloured599 = result599)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree600 live600 coloured600 = result600) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree601 live601 coloured601 = result601 := by
  rw [tree601_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live599 coloured599 at child
  try dsimp only [live601, coloured601]
  rw [child]
  dsimp only [result599]
  have child := child1
  unfold live600 coloured600 at child
  try dsimp only [live601, coloured601]
  rw [child]
  dsimp only [result600]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree602_agree_conditional : tree602 = literal602 := by
  rw [tree602_def]
  rfl
theorem node602_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree602 live602 coloured602 = result602 := by
  rw [tree602_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree603_agree_conditional
    (child0 : tree601 = literal601)
    (child1 : tree602 = literal602) : tree603 = literal603 := by
  rw [tree603_def, child0, child1]
  rfl
theorem node603_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree601 live601 coloured601 = result601)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree602 live602 coloured602 = result602) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree603 live603 coloured603 = result603 := by
  rw [tree603_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live601 coloured601 at child
  try dsimp only [live603, coloured603]
  rw [child]
  dsimp only [result601]
  have child := child1
  unfold live602 coloured602 at child
  try dsimp only [live603, coloured603]
  rw [child]
  dsimp only [result602]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree604_agree_conditional : tree604 = literal604 := by
  rw [tree604_def]
  rfl
theorem node604_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree604 live604 coloured604 = result604 := by
  rw [tree604_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree605_agree_conditional
    (child0 : tree603 = literal603)
    (child1 : tree604 = literal604) : tree605 = literal605 := by
  rw [tree605_def, child0, child1]
  rfl
theorem node605_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree603 live603 coloured603 = result603)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree604 live604 coloured604 = result604) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree605 live605 coloured605 = result605 := by
  rw [tree605_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live603 coloured603 at child
  try dsimp only [live605, coloured605]
  rw [child]
  dsimp only [result603]
  have child := child1
  unfold live604 coloured604 at child
  try dsimp only [live605, coloured605]
  rw [child]
  dsimp only [result604]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree606_agree_conditional : tree606 = literal606 := by
  rw [tree606_def]
  rfl
theorem node606_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree606 live606 coloured606 = result606 := by
  rw [tree606_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree607_agree_conditional
    (child0 : tree605 = literal605)
    (child1 : tree606 = literal606) : tree607 = literal607 := by
  rw [tree607_def, child0, child1]
  rfl
theorem node607_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree605 live605 coloured605 = result605)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree606 live606 coloured606 = result606) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree607 live607 coloured607 = result607 := by
  rw [tree607_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live605 coloured605 at child
  try dsimp only [live607, coloured607]
  rw [child]
  dsimp only [result605]
  have child := child1
  unfold live606 coloured606 at child
  try dsimp only [live607, coloured607]
  rw [child]
  dsimp only [result606]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree608_agree_conditional : tree608 = literal608 := by
  rw [tree608_def]
  rfl
theorem node608_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree608 live608 coloured608 = result608 := by
  rw [tree608_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree609_agree_conditional
    (child0 : tree607 = literal607)
    (child1 : tree608 = literal608) : tree609 = literal609 := by
  rw [tree609_def, child0, child1]
  rfl
theorem node609_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree607 live607 coloured607 = result607)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree608 live608 coloured608 = result608) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree609 live609 coloured609 = result609 := by
  rw [tree609_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live607 coloured607 at child
  try dsimp only [live609, coloured609]
  rw [child]
  dsimp only [result607]
  have child := child1
  unfold live608 coloured608 at child
  try dsimp only [live609, coloured609]
  rw [child]
  dsimp only [result608]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree610_agree_conditional : tree610 = literal610 := by
  rw [tree610_def]
  rfl
theorem node610_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree610 live610 coloured610 = result610 := by
  rw [tree610_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree611_agree_conditional
    (child0 : tree609 = literal609)
    (child1 : tree610 = literal610) : tree611 = literal611 := by
  rw [tree611_def, child0, child1]
  rfl
theorem node611_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree609 live609 coloured609 = result609)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree610 live610 coloured610 = result610) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree611 live611 coloured611 = result611 := by
  rw [tree611_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live609 coloured609 at child
  try dsimp only [live611, coloured611]
  rw [child]
  dsimp only [result609]
  have child := child1
  unfold live610 coloured610 at child
  try dsimp only [live611, coloured611]
  rw [child]
  dsimp only [result610]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree612_agree_conditional : tree612 = literal612 := by
  rw [tree612_def]
  rfl
theorem node612_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree612 live612 coloured612 = result612 := by
  rw [tree612_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree613_agree_conditional
    (child0 : tree611 = literal611)
    (child1 : tree612 = literal612) : tree613 = literal613 := by
  rw [tree613_def, child0, child1]
  rfl
theorem node613_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree611 live611 coloured611 = result611)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree612 live612 coloured612 = result612) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree613 live613 coloured613 = result613 := by
  rw [tree613_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live611 coloured611 at child
  try dsimp only [live613, coloured613]
  rw [child]
  dsimp only [result611]
  have child := child1
  unfold live612 coloured612 at child
  try dsimp only [live613, coloured613]
  rw [child]
  dsimp only [result612]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree614_agree_conditional : tree614 = literal614 := by
  rw [tree614_def]
  rfl
theorem node614_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree614 live614 coloured614 = result614 := by
  rw [tree614_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree615_agree_conditional
    (child0 : tree613 = literal613)
    (child1 : tree614 = literal614) : tree615 = literal615 := by
  rw [tree615_def, child0, child1]
  rfl
theorem node615_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree613 live613 coloured613 = result613)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree614 live614 coloured614 = result614) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree615 live615 coloured615 = result615 := by
  rw [tree615_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live613 coloured613 at child
  try dsimp only [live615, coloured615]
  rw [child]
  dsimp only [result613]
  have child := child1
  unfold live614 coloured614 at child
  try dsimp only [live615, coloured615]
  rw [child]
  dsimp only [result614]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree616_agree_conditional : tree616 = literal616 := by
  rw [tree616_def]
  rfl
theorem node616_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree616 live616 coloured616 = result616 := by
  rw [tree616_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree617_agree_conditional
    (child0 : tree615 = literal615)
    (child1 : tree616 = literal616) : tree617 = literal617 := by
  rw [tree617_def, child0, child1]
  rfl
theorem node617_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree615 live615 coloured615 = result615)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree616 live616 coloured616 = result616) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree617 live617 coloured617 = result617 := by
  rw [tree617_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live615 coloured615 at child
  try dsimp only [live617, coloured617]
  rw [child]
  dsimp only [result615]
  have child := child1
  unfold live616 coloured616 at child
  try dsimp only [live617, coloured617]
  rw [child]
  dsimp only [result616]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree618_agree_conditional : tree618 = literal618 := by
  rw [tree618_def]
  rfl
theorem node618_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree618 live618 coloured618 = result618 := by
  rw [tree618_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree619_agree_conditional
    (child0 : tree617 = literal617)
    (child1 : tree618 = literal618) : tree619 = literal619 := by
  rw [tree619_def, child0, child1]
  rfl
theorem node619_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree617 live617 coloured617 = result617)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree618 live618 coloured618 = result618) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree619 live619 coloured619 = result619 := by
  rw [tree619_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live617 coloured617 at child
  try dsimp only [live619, coloured619]
  rw [child]
  dsimp only [result617]
  have child := child1
  unfold live618 coloured618 at child
  try dsimp only [live619, coloured619]
  rw [child]
  dsimp only [result618]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree620_agree_conditional : tree620 = literal620 := by
  rw [tree620_def]
  rfl
theorem node620_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree620 live620 coloured620 = result620 := by
  rw [tree620_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree621_agree_conditional
    (child0 : tree619 = literal619)
    (child1 : tree620 = literal620) : tree621 = literal621 := by
  rw [tree621_def, child0, child1]
  rfl
theorem node621_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree619 live619 coloured619 = result619)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree620 live620 coloured620 = result620) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree621 live621 coloured621 = result621 := by
  rw [tree621_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live619 coloured619 at child
  try dsimp only [live621, coloured621]
  rw [child]
  dsimp only [result619]
  have child := child1
  unfold live620 coloured620 at child
  try dsimp only [live621, coloured621]
  rw [child]
  dsimp only [result620]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree622_agree_conditional : tree622 = literal622 := by
  rw [tree622_def]
  rfl
theorem node622_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree622 live622 coloured622 = result622 := by
  rw [tree622_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree623_agree_conditional
    (child0 : tree621 = literal621)
    (child1 : tree622 = literal622) : tree623 = literal623 := by
  rw [tree623_def, child0, child1]
  rfl
theorem node623_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree621 live621 coloured621 = result621)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree622 live622 coloured622 = result622) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree623 live623 coloured623 = result623 := by
  rw [tree623_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live621 coloured621 at child
  try dsimp only [live623, coloured623]
  rw [child]
  dsimp only [result621]
  have child := child1
  unfold live622 coloured622 at child
  try dsimp only [live623, coloured623]
  rw [child]
  dsimp only [result622]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree624_agree_conditional : tree624 = literal624 := by
  rw [tree624_def]
  rfl
theorem node624_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree624 live624 coloured624 = result624 := by
  rw [tree624_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree625_agree_conditional
    (child0 : tree623 = literal623)
    (child1 : tree624 = literal624) : tree625 = literal625 := by
  rw [tree625_def, child0, child1]
  rfl
theorem node625_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree623 live623 coloured623 = result623)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree624 live624 coloured624 = result624) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree625 live625 coloured625 = result625 := by
  rw [tree625_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live623 coloured623 at child
  try dsimp only [live625, coloured625]
  rw [child]
  dsimp only [result623]
  have child := child1
  unfold live624 coloured624 at child
  try dsimp only [live625, coloured625]
  rw [child]
  dsimp only [result624]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree626_agree_conditional : tree626 = literal626 := by
  rw [tree626_def]
  rfl
theorem node626_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree626 live626 coloured626 = result626 := by
  rw [tree626_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree627_agree_conditional
    (child0 : tree625 = literal625)
    (child1 : tree626 = literal626) : tree627 = literal627 := by
  rw [tree627_def, child0, child1]
  rfl
theorem node627_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree625 live625 coloured625 = result625)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree626 live626 coloured626 = result626) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree627 live627 coloured627 = result627 := by
  rw [tree627_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live625 coloured625 at child
  try dsimp only [live627, coloured627]
  rw [child]
  dsimp only [result625]
  have child := child1
  unfold live626 coloured626 at child
  try dsimp only [live627, coloured627]
  rw [child]
  dsimp only [result626]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree628_agree_conditional : tree628 = literal628 := by
  rw [tree628_def]
  rfl
theorem node628_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree628 live628 coloured628 = result628 := by
  rw [tree628_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree629_agree_conditional
    (child0 : tree627 = literal627)
    (child1 : tree628 = literal628) : tree629 = literal629 := by
  rw [tree629_def, child0, child1]
  rfl
theorem node629_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree627 live627 coloured627 = result627)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree628 live628 coloured628 = result628) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree629 live629 coloured629 = result629 := by
  rw [tree629_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live627 coloured627 at child
  try dsimp only [live629, coloured629]
  rw [child]
  dsimp only [result627]
  have child := child1
  unfold live628 coloured628 at child
  try dsimp only [live629, coloured629]
  rw [child]
  dsimp only [result628]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree630_agree_conditional : tree630 = literal630 := by
  rw [tree630_def]
  rfl
theorem node630_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree630 live630 coloured630 = result630 := by
  rw [tree630_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree631_agree_conditional
    (child0 : tree629 = literal629)
    (child1 : tree630 = literal630) : tree631 = literal631 := by
  rw [tree631_def, child0, child1]
  rfl
theorem node631_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree629 live629 coloured629 = result629)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree630 live630 coloured630 = result630) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree631 live631 coloured631 = result631 := by
  rw [tree631_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live629 coloured629 at child
  try dsimp only [live631, coloured631]
  rw [child]
  dsimp only [result629]
  have child := child1
  unfold live630 coloured630 at child
  try dsimp only [live631, coloured631]
  rw [child]
  dsimp only [result630]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree632_agree_conditional : tree632 = literal632 := by
  rw [tree632_def]
  rfl
theorem node632_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree632 live632 coloured632 = result632 := by
  rw [tree632_def]
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
theorem tree635_agree_conditional
    (child0 : tree631 = literal631)
    (child1 : tree634 = literal634) : tree635 = literal635 := by
  rw [tree635_def, child0, child1]
  rfl
theorem node635_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree631 live631 coloured631 = result631)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree634 live634 coloured634 = result634) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree635 live635 coloured635 = result635 := by
  rw [tree635_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live631 coloured631 at child
  try dsimp only [live635, coloured635]
  rw [child]
  dsimp only [result631]
  have child := child1
  unfold live634 coloured634 at child
  try dsimp only [live635, coloured635]
  rw [child]
  dsimp only [result634]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree636_agree_conditional : tree636 = literal636 := by
  rw [tree636_def]
  rfl
theorem node636_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree636 live636 coloured636 = result636 := by
  rw [tree636_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree637_agree_conditional
    (child0 : tree635 = literal635)
    (child1 : tree636 = literal636) : tree637 = literal637 := by
  rw [tree637_def, child0, child1]
  rfl
theorem node637_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree635 live635 coloured635 = result635)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree636 live636 coloured636 = result636) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree637 live637 coloured637 = result637 := by
  rw [tree637_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live635 coloured635 at child
  try dsimp only [live637, coloured637]
  rw [child]
  dsimp only [result635]
  have child := child1
  unfold live636 coloured636 at child
  try dsimp only [live637, coloured637]
  rw [child]
  dsimp only [result636]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree638_agree_conditional : tree638 = literal638 := by
  rw [tree638_def]
  rfl
theorem node638_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree638 live638 coloured638 = result638 := by
  rw [tree638_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree639_agree_conditional
    (child0 : tree637 = literal637)
    (child1 : tree638 = literal638) : tree639 = literal639 := by
  rw [tree639_def, child0, child1]
  rfl
theorem node639_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree637 live637 coloured637 = result637)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree638 live638 coloured638 = result638) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree639 live639 coloured639 = result639 := by
  rw [tree639_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live637 coloured637 at child
  try dsimp only [live639, coloured639]
  rw [child]
  dsimp only [result637]
  have child := child1
  unfold live638 coloured638 at child
  try dsimp only [live639, coloured639]
  rw [child]
  dsimp only [result638]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree640_agree_conditional : tree640 = literal640 := by
  rw [tree640_def]
  rfl
theorem node640_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree640 live640 coloured640 = result640 := by
  rw [tree640_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree641_agree_conditional
    (child0 : tree639 = literal639)
    (child1 : tree640 = literal640) : tree641 = literal641 := by
  rw [tree641_def, child0, child1]
  rfl
theorem node641_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree639 live639 coloured639 = result639)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree640 live640 coloured640 = result640) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree641 live641 coloured641 = result641 := by
  rw [tree641_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live639 coloured639 at child
  try dsimp only [live641, coloured641]
  rw [child]
  dsimp only [result639]
  have child := child1
  unfold live640 coloured640 at child
  try dsimp only [live641, coloured641]
  rw [child]
  dsimp only [result640]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree642_agree_conditional : tree642 = literal642 := by
  rw [tree642_def]
  rfl
theorem node642_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree642 live642 coloured642 = result642 := by
  rw [tree642_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree643_agree_conditional
    (child0 : tree641 = literal641)
    (child1 : tree642 = literal642) : tree643 = literal643 := by
  rw [tree643_def, child0, child1]
  rfl
theorem node643_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree641 live641 coloured641 = result641)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree642 live642 coloured642 = result642) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree643 live643 coloured643 = result643 := by
  rw [tree643_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live641 coloured641 at child
  try dsimp only [live643, coloured643]
  rw [child]
  dsimp only [result641]
  have child := child1
  unfold live642 coloured642 at child
  try dsimp only [live643, coloured643]
  rw [child]
  dsimp only [result642]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree644_agree_conditional : tree644 = literal644 := by
  rw [tree644_def]
  rfl
theorem node644_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree644 live644 coloured644 = result644 := by
  rw [tree644_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree645_agree_conditional
    (child0 : tree643 = literal643)
    (child1 : tree644 = literal644) : tree645 = literal645 := by
  rw [tree645_def, child0, child1]
  rfl
theorem node645_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree643 live643 coloured643 = result643)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree644 live644 coloured644 = result644) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree645 live645 coloured645 = result645 := by
  rw [tree645_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live643 coloured643 at child
  try dsimp only [live645, coloured645]
  rw [child]
  dsimp only [result643]
  have child := child1
  unfold live644 coloured644 at child
  try dsimp only [live645, coloured645]
  rw [child]
  dsimp only [result644]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree646_agree_conditional : tree646 = literal646 := by
  rw [tree646_def]
  rfl
theorem node646_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree646 live646 coloured646 = result646 := by
  rw [tree646_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree647_agree_conditional
    (child0 : tree645 = literal645)
    (child1 : tree646 = literal646) : tree647 = literal647 := by
  rw [tree647_def, child0, child1]
  rfl
theorem node647_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree645 live645 coloured645 = result645)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree646 live646 coloured646 = result646) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree647 live647 coloured647 = result647 := by
  rw [tree647_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live645 coloured645 at child
  try dsimp only [live647, coloured647]
  rw [child]
  dsimp only [result645]
  have child := child1
  unfold live646 coloured646 at child
  try dsimp only [live647, coloured647]
  rw [child]
  dsimp only [result646]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree648_agree_conditional : tree648 = literal648 := by
  rw [tree648_def]
  rfl
theorem node648_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree648 live648 coloured648 = result648 := by
  rw [tree648_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree649_agree_conditional
    (child0 : tree647 = literal647)
    (child1 : tree648 = literal648) : tree649 = literal649 := by
  rw [tree649_def, child0, child1]
  rfl
theorem node649_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree647 live647 coloured647 = result647)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree648 live648 coloured648 = result648) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree649 live649 coloured649 = result649 := by
  rw [tree649_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live647 coloured647 at child
  try dsimp only [live649, coloured649]
  rw [child]
  dsimp only [result647]
  have child := child1
  unfold live648 coloured648 at child
  try dsimp only [live649, coloured649]
  rw [child]
  dsimp only [result648]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree650_agree_conditional : tree650 = literal650 := by
  rw [tree650_def]
  rfl
theorem node650_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree650 live650 coloured650 = result650 := by
  rw [tree650_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree651_agree_conditional
    (child0 : tree649 = literal649)
    (child1 : tree650 = literal650) : tree651 = literal651 := by
  rw [tree651_def, child0, child1]
  rfl
theorem node651_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree649 live649 coloured649 = result649)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree650 live650 coloured650 = result650) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree651 live651 coloured651 = result651 := by
  rw [tree651_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live649 coloured649 at child
  try dsimp only [live651, coloured651]
  rw [child]
  dsimp only [result649]
  have child := child1
  unfold live650 coloured650 at child
  try dsimp only [live651, coloured651]
  rw [child]
  dsimp only [result650]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree652_agree_conditional : tree652 = literal652 := by
  rw [tree652_def]
  rfl
theorem node652_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree652 live652 coloured652 = result652 := by
  rw [tree652_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree653_agree_conditional
    (child0 : tree651 = literal651)
    (child1 : tree652 = literal652) : tree653 = literal653 := by
  rw [tree653_def, child0, child1]
  rfl
theorem node653_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree651 live651 coloured651 = result651)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree652 live652 coloured652 = result652) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree653 live653 coloured653 = result653 := by
  rw [tree653_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live651 coloured651 at child
  try dsimp only [live653, coloured653]
  rw [child]
  dsimp only [result651]
  have child := child1
  unfold live652 coloured652 at child
  try dsimp only [live653, coloured653]
  rw [child]
  dsimp only [result652]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree654_agree_conditional : tree654 = literal654 := by
  rw [tree654_def]
  rfl
theorem node654_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree654 live654 coloured654 = result654 := by
  rw [tree654_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree655_agree_conditional
    (child0 : tree653 = literal653)
    (child1 : tree654 = literal654) : tree655 = literal655 := by
  rw [tree655_def, child0, child1]
  rfl
theorem node655_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree653 live653 coloured653 = result653)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree654 live654 coloured654 = result654) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree655 live655 coloured655 = result655 := by
  rw [tree655_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live653 coloured653 at child
  try dsimp only [live655, coloured655]
  rw [child]
  dsimp only [result653]
  have child := child1
  unfold live654 coloured654 at child
  try dsimp only [live655, coloured655]
  rw [child]
  dsimp only [result654]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree656_agree_conditional : tree656 = literal656 := by
  rw [tree656_def]
  rfl
theorem node656_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree656 live656 coloured656 = result656 := by
  rw [tree656_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree657_agree_conditional
    (child0 : tree655 = literal655)
    (child1 : tree656 = literal656) : tree657 = literal657 := by
  rw [tree657_def, child0, child1]
  rfl
theorem node657_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree655 live655 coloured655 = result655)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree656 live656 coloured656 = result656) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree657 live657 coloured657 = result657 := by
  rw [tree657_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live655 coloured655 at child
  try dsimp only [live657, coloured657]
  rw [child]
  dsimp only [result655]
  have child := child1
  unfold live656 coloured656 at child
  try dsimp only [live657, coloured657]
  rw [child]
  dsimp only [result656]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree658_agree_conditional : tree658 = literal658 := by
  rw [tree658_def]
  rfl
theorem node658_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree658 live658 coloured658 = result658 := by
  rw [tree658_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree659_agree_conditional
    (child0 : tree657 = literal657)
    (child1 : tree658 = literal658) : tree659 = literal659 := by
  rw [tree659_def, child0, child1]
  rfl
theorem node659_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree657 live657 coloured657 = result657)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree658 live658 coloured658 = result658) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree659 live659 coloured659 = result659 := by
  rw [tree659_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live657 coloured657 at child
  try dsimp only [live659, coloured659]
  rw [child]
  dsimp only [result657]
  have child := child1
  unfold live658 coloured658 at child
  try dsimp only [live659, coloured659]
  rw [child]
  dsimp only [result658]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree660_agree_conditional : tree660 = literal660 := by
  rw [tree660_def]
  rfl
theorem node660_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree660 live660 coloured660 = result660 := by
  rw [tree660_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree661_agree_conditional
    (child0 : tree659 = literal659)
    (child1 : tree660 = literal660) : tree661 = literal661 := by
  rw [tree661_def, child0, child1]
  rfl
theorem node661_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree659 live659 coloured659 = result659)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree660 live660 coloured660 = result660) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree661 live661 coloured661 = result661 := by
  rw [tree661_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live659 coloured659 at child
  try dsimp only [live661, coloured661]
  rw [child]
  dsimp only [result659]
  have child := child1
  unfold live660 coloured660 at child
  try dsimp only [live661, coloured661]
  rw [child]
  dsimp only [result660]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree662_agree_conditional : tree662 = literal662 := by
  rw [tree662_def]
  rfl
theorem node662_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree662 live662 coloured662 = result662 := by
  rw [tree662_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree663_agree_conditional
    (child0 : tree661 = literal661)
    (child1 : tree662 = literal662) : tree663 = literal663 := by
  rw [tree663_def, child0, child1]
  rfl
theorem node663_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree661 live661 coloured661 = result661)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree662 live662 coloured662 = result662) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree663 live663 coloured663 = result663 := by
  rw [tree663_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live661 coloured661 at child
  try dsimp only [live663, coloured663]
  rw [child]
  dsimp only [result661]
  have child := child1
  unfold live662 coloured662 at child
  try dsimp only [live663, coloured663]
  rw [child]
  dsimp only [result662]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree664_agree_conditional : tree664 = literal664 := by
  rw [tree664_def]
  rfl
theorem node664_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree664 live664 coloured664 = result664 := by
  rw [tree664_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree665_agree_conditional
    (child0 : tree663 = literal663)
    (child1 : tree664 = literal664) : tree665 = literal665 := by
  rw [tree665_def, child0, child1]
  rfl
theorem node665_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree663 live663 coloured663 = result663)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree664 live664 coloured664 = result664) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree665 live665 coloured665 = result665 := by
  rw [tree665_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live663 coloured663 at child
  try dsimp only [live665, coloured665]
  rw [child]
  dsimp only [result663]
  have child := child1
  unfold live664 coloured664 at child
  try dsimp only [live665, coloured665]
  rw [child]
  dsimp only [result664]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree666_agree_conditional : tree666 = literal666 := by
  rw [tree666_def]
  rfl
theorem node666_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree666 live666 coloured666 = result666 := by
  rw [tree666_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree667_agree_conditional
    (child0 : tree665 = literal665)
    (child1 : tree666 = literal666) : tree667 = literal667 := by
  rw [tree667_def, child0, child1]
  rfl
theorem node667_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree665 live665 coloured665 = result665)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree666 live666 coloured666 = result666) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree667 live667 coloured667 = result667 := by
  rw [tree667_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live665 coloured665 at child
  try dsimp only [live667, coloured667]
  rw [child]
  dsimp only [result665]
  have child := child1
  unfold live666 coloured666 at child
  try dsimp only [live667, coloured667]
  rw [child]
  dsimp only [result666]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree668_agree_conditional : tree668 = literal668 := by
  rw [tree668_def]
  rfl
theorem node668_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree668 live668 coloured668 = result668 := by
  rw [tree668_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree669_agree_conditional
    (child0 : tree667 = literal667)
    (child1 : tree668 = literal668) : tree669 = literal669 := by
  rw [tree669_def, child0, child1]
  rfl
theorem node669_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree667 live667 coloured667 = result667)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree668 live668 coloured668 = result668) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree669 live669 coloured669 = result669 := by
  rw [tree669_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live667 coloured667 at child
  try dsimp only [live669, coloured669]
  rw [child]
  dsimp only [result667]
  have child := child1
  unfold live668 coloured668 at child
  try dsimp only [live669, coloured669]
  rw [child]
  dsimp only [result668]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree670_agree_conditional : tree670 = literal670 := by
  rw [tree670_def]
  rfl
theorem node670_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree670 live670 coloured670 = result670 := by
  rw [tree670_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree671_agree_conditional
    (child0 : tree669 = literal669)
    (child1 : tree670 = literal670) : tree671 = literal671 := by
  rw [tree671_def, child0, child1]
  rfl
theorem node671_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree669 live669 coloured669 = result669)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree670 live670 coloured670 = result670) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree671 live671 coloured671 = result671 := by
  rw [tree671_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live669 coloured669 at child
  try dsimp only [live671, coloured671]
  rw [child]
  dsimp only [result669]
  have child := child1
  unfold live670 coloured670 at child
  try dsimp only [live671, coloured671]
  rw [child]
  dsimp only [result670]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages783
