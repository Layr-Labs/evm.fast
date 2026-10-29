import InitECandidate.Proofs.ClashStages713.Proof5
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree576_agree : tree576 = literal576 := by
  rw [tree576_def, tree574_agree, tree575_agree]
  rfl
theorem node576_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree576 live576 coloured576 = result576 := by
  rw [tree576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node574_eq
  unfold live574 coloured574 at child
  try dsimp only [live576, coloured576]
  rw [child]
  dsimp only [result574]
  have child := node575_eq
  unfold live575 coloured575 at child
  try dsimp only [live576, coloured576]
  rw [child]
  dsimp only [result575]
  try dsimp only [colour, result576]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree577_agree : tree577 = literal577 := by
  rw [tree577_def]
  rfl
theorem node577_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree577 live577 coloured577 = result577 := by
  rw [tree577_def]
  try dsimp only [colour, result577]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree578_agree : tree578 = literal578 := by
  rw [tree578_def, tree576_agree, tree577_agree]
  rfl
theorem node578_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree578 live578 coloured578 = result578 := by
  rw [tree578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node576_eq
  unfold live576 coloured576 at child
  try dsimp only [live578, coloured578]
  rw [child]
  dsimp only [result576]
  have child := node577_eq
  unfold live577 coloured577 at child
  try dsimp only [live578, coloured578]
  rw [child]
  dsimp only [result577]
  try dsimp only [colour, result578]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree579_agree : tree579 = literal579 := by
  rw [tree579_def]
  rfl
theorem node579_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree579 live579 coloured579 = result579 := by
  rw [tree579_def]
  try dsimp only [colour, result579]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree580_agree : tree580 = literal580 := by
  rw [tree580_def, tree578_agree, tree579_agree]
  rfl
theorem node580_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree580 live580 coloured580 = result580 := by
  rw [tree580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node578_eq
  unfold live578 coloured578 at child
  try dsimp only [live580, coloured580]
  rw [child]
  dsimp only [result578]
  have child := node579_eq
  unfold live579 coloured579 at child
  try dsimp only [live580, coloured580]
  rw [child]
  dsimp only [result579]
  try dsimp only [colour, result580]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree581_agree : tree581 = literal581 := by
  rw [tree581_def]
  rfl
theorem node581_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree581 live581 coloured581 = result581 := by
  rw [tree581_def]
  try dsimp only [colour, result581]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree582_agree : tree582 = literal582 := by
  rw [tree582_def, tree580_agree, tree581_agree]
  rfl
theorem node582_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree582 live582 coloured582 = result582 := by
  rw [tree582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node580_eq
  unfold live580 coloured580 at child
  try dsimp only [live582, coloured582]
  rw [child]
  dsimp only [result580]
  have child := node581_eq
  unfold live581 coloured581 at child
  try dsimp only [live582, coloured582]
  rw [child]
  dsimp only [result581]
  try dsimp only [colour, result582]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree583_agree : tree583 = literal583 := by
  rw [tree583_def]
  rfl
theorem node583_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree583 live583 coloured583 = result583 := by
  rw [tree583_def]
  try dsimp only [colour, result583]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree584_agree : tree584 = literal584 := by
  rw [tree584_def, tree582_agree, tree583_agree]
  rfl
theorem node584_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree584 live584 coloured584 = result584 := by
  rw [tree584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node582_eq
  unfold live582 coloured582 at child
  try dsimp only [live584, coloured584]
  rw [child]
  dsimp only [result582]
  have child := node583_eq
  unfold live583 coloured583 at child
  try dsimp only [live584, coloured584]
  rw [child]
  dsimp only [result583]
  try dsimp only [colour, result584]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree585_agree : tree585 = literal585 := by
  rw [tree585_def]
  rfl
theorem node585_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree585 live585 coloured585 = result585 := by
  rw [tree585_def]
  try dsimp only [colour, result585]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree586_agree : tree586 = literal586 := by
  rw [tree586_def, tree584_agree, tree585_agree]
  rfl
theorem node586_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree586 live586 coloured586 = result586 := by
  rw [tree586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node584_eq
  unfold live584 coloured584 at child
  try dsimp only [live586, coloured586]
  rw [child]
  dsimp only [result584]
  have child := node585_eq
  unfold live585 coloured585 at child
  try dsimp only [live586, coloured586]
  rw [child]
  dsimp only [result585]
  try dsimp only [colour, result586]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree587_agree : tree587 = literal587 := by
  rw [tree587_def]
  rfl
theorem node587_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree587 live587 coloured587 = result587 := by
  rw [tree587_def]
  try dsimp only [colour, result587]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree588_agree : tree588 = literal588 := by
  rw [tree588_def, tree586_agree, tree587_agree]
  rfl
theorem node588_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree588 live588 coloured588 = result588 := by
  rw [tree588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node586_eq
  unfold live586 coloured586 at child
  try dsimp only [live588, coloured588]
  rw [child]
  dsimp only [result586]
  have child := node587_eq
  unfold live587 coloured587 at child
  try dsimp only [live588, coloured588]
  rw [child]
  dsimp only [result587]
  try dsimp only [colour, result588]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree589_agree : tree589 = literal589 := by
  rw [tree589_def]
  rfl
theorem node589_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree589 live589 coloured589 = result589 := by
  rw [tree589_def]
  try dsimp only [colour, result589]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree590_agree : tree590 = literal590 := by
  rw [tree590_def, tree588_agree, tree589_agree]
  rfl
theorem node590_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree590 live590 coloured590 = result590 := by
  rw [tree590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node588_eq
  unfold live588 coloured588 at child
  try dsimp only [live590, coloured590]
  rw [child]
  dsimp only [result588]
  have child := node589_eq
  unfold live589 coloured589 at child
  try dsimp only [live590, coloured590]
  rw [child]
  dsimp only [result589]
  try dsimp only [colour, result590]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree591_agree : tree591 = literal591 := by
  rw [tree591_def]
  rfl
theorem node591_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree591 live591 coloured591 = result591 := by
  rw [tree591_def]
  try dsimp only [colour, result591]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree592_agree : tree592 = literal592 := by
  rw [tree592_def, tree590_agree, tree591_agree]
  rfl
theorem node592_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree592 live592 coloured592 = result592 := by
  rw [tree592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node590_eq
  unfold live590 coloured590 at child
  try dsimp only [live592, coloured592]
  rw [child]
  dsimp only [result590]
  have child := node591_eq
  unfold live591 coloured591 at child
  try dsimp only [live592, coloured592]
  rw [child]
  dsimp only [result591]
  try dsimp only [colour, result592]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree593_agree : tree593 = literal593 := by
  rw [tree593_def]
  rfl
theorem node593_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree593 live593 coloured593 = result593 := by
  rw [tree593_def]
  try dsimp only [colour, result593]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree594_agree : tree594 = literal594 := by
  rw [tree594_def, tree592_agree, tree593_agree]
  rfl
theorem node594_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree594 live594 coloured594 = result594 := by
  rw [tree594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node592_eq
  unfold live592 coloured592 at child
  try dsimp only [live594, coloured594]
  rw [child]
  dsimp only [result592]
  have child := node593_eq
  unfold live593 coloured593 at child
  try dsimp only [live594, coloured594]
  rw [child]
  dsimp only [result593]
  try dsimp only [colour, result594]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree595_agree : tree595 = literal595 := by
  rw [tree595_def]
  rfl
theorem node595_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree595 live595 coloured595 = result595 := by
  rw [tree595_def]
  try dsimp only [colour, result595]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree596_agree : tree596 = literal596 := by
  rw [tree596_def, tree594_agree, tree595_agree]
  rfl
theorem node596_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree596 live596 coloured596 = result596 := by
  rw [tree596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node594_eq
  unfold live594 coloured594 at child
  try dsimp only [live596, coloured596]
  rw [child]
  dsimp only [result594]
  have child := node595_eq
  unfold live595 coloured595 at child
  try dsimp only [live596, coloured596]
  rw [child]
  dsimp only [result595]
  try dsimp only [colour, result596]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree597_agree : tree597 = literal597 := by
  rw [tree597_def]
  rfl
theorem node597_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree597 live597 coloured597 = result597 := by
  rw [tree597_def]
  try dsimp only [colour, result597]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree598_agree : tree598 = literal598 := by
  rw [tree598_def, tree596_agree, tree597_agree]
  rfl
theorem node598_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree598 live598 coloured598 = result598 := by
  rw [tree598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node596_eq
  unfold live596 coloured596 at child
  try dsimp only [live598, coloured598]
  rw [child]
  dsimp only [result596]
  have child := node597_eq
  unfold live597 coloured597 at child
  try dsimp only [live598, coloured598]
  rw [child]
  dsimp only [result597]
  try dsimp only [colour, result598]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree599_agree : tree599 = literal599 := by
  rw [tree599_def]
  rfl
theorem node599_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree599 live599 coloured599 = result599 := by
  rw [tree599_def]
  try dsimp only [colour, result599]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree600_agree : tree600 = literal600 := by
  rw [tree600_def, tree598_agree, tree599_agree]
  rfl
theorem node600_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree600 live600 coloured600 = result600 := by
  rw [tree600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node598_eq
  unfold live598 coloured598 at child
  try dsimp only [live600, coloured600]
  rw [child]
  dsimp only [result598]
  have child := node599_eq
  unfold live599 coloured599 at child
  try dsimp only [live600, coloured600]
  rw [child]
  dsimp only [result599]
  try dsimp only [colour, result600]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree601_agree : tree601 = literal601 := by
  rw [tree601_def]
  rfl
theorem node601_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree601 live601 coloured601 = result601 := by
  rw [tree601_def]
  try dsimp only [colour, result601]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree602_agree : tree602 = literal602 := by
  rw [tree602_def, tree600_agree, tree601_agree]
  rfl
theorem node602_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree602 live602 coloured602 = result602 := by
  rw [tree602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node600_eq
  unfold live600 coloured600 at child
  try dsimp only [live602, coloured602]
  rw [child]
  dsimp only [result600]
  have child := node601_eq
  unfold live601 coloured601 at child
  try dsimp only [live602, coloured602]
  rw [child]
  dsimp only [result601]
  try dsimp only [colour, result602]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree603_agree : tree603 = literal603 := by
  rw [tree603_def]
  rfl
theorem node603_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree603 live603 coloured603 = result603 := by
  rw [tree603_def]
  try dsimp only [colour, result603]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree604_agree : tree604 = literal604 := by
  rw [tree604_def, tree602_agree, tree603_agree]
  rfl
theorem node604_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree604 live604 coloured604 = result604 := by
  rw [tree604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node602_eq
  unfold live602 coloured602 at child
  try dsimp only [live604, coloured604]
  rw [child]
  dsimp only [result602]
  have child := node603_eq
  unfold live603 coloured603 at child
  try dsimp only [live604, coloured604]
  rw [child]
  dsimp only [result603]
  try dsimp only [colour, result604]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree605_agree : tree605 = literal605 := by
  rw [tree605_def]
  rfl
theorem node605_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree605 live605 coloured605 = result605 := by
  rw [tree605_def]
  try dsimp only [colour, result605]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree606_agree : tree606 = literal606 := by
  rw [tree606_def, tree604_agree, tree605_agree]
  rfl
theorem node606_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree606 live606 coloured606 = result606 := by
  rw [tree606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node604_eq
  unfold live604 coloured604 at child
  try dsimp only [live606, coloured606]
  rw [child]
  dsimp only [result604]
  have child := node605_eq
  unfold live605 coloured605 at child
  try dsimp only [live606, coloured606]
  rw [child]
  dsimp only [result605]
  try dsimp only [colour, result606]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree607_agree : tree607 = literal607 := by
  rw [tree607_def]
  rfl
theorem node607_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree607 live607 coloured607 = result607 := by
  rw [tree607_def]
  try dsimp only [colour, result607]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree608_agree : tree608 = literal608 := by
  rw [tree608_def, tree606_agree, tree607_agree]
  rfl
theorem node608_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree608 live608 coloured608 = result608 := by
  rw [tree608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node606_eq
  unfold live606 coloured606 at child
  try dsimp only [live608, coloured608]
  rw [child]
  dsimp only [result606]
  have child := node607_eq
  unfold live607 coloured607 at child
  try dsimp only [live608, coloured608]
  rw [child]
  dsimp only [result607]
  try dsimp only [colour, result608]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree609_agree : tree609 = literal609 := by
  rw [tree609_def]
  rfl
theorem node609_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree609 live609 coloured609 = result609 := by
  rw [tree609_def]
  try dsimp only [colour, result609]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree610_agree : tree610 = literal610 := by
  rw [tree610_def, tree608_agree, tree609_agree]
  rfl
theorem node610_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree610 live610 coloured610 = result610 := by
  rw [tree610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node608_eq
  unfold live608 coloured608 at child
  try dsimp only [live610, coloured610]
  rw [child]
  dsimp only [result608]
  have child := node609_eq
  unfold live609 coloured609 at child
  try dsimp only [live610, coloured610]
  rw [child]
  dsimp only [result609]
  try dsimp only [colour, result610]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree611_agree : tree611 = literal611 := by
  rw [tree611_def]
  rfl
theorem node611_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree611 live611 coloured611 = result611 := by
  rw [tree611_def]
  try dsimp only [colour, result611]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree612_agree : tree612 = literal612 := by
  rw [tree612_def, tree610_agree, tree611_agree]
  rfl
theorem node612_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree612 live612 coloured612 = result612 := by
  rw [tree612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node610_eq
  unfold live610 coloured610 at child
  try dsimp only [live612, coloured612]
  rw [child]
  dsimp only [result610]
  have child := node611_eq
  unfold live611 coloured611 at child
  try dsimp only [live612, coloured612]
  rw [child]
  dsimp only [result611]
  try dsimp only [colour, result612]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree613_agree : tree613 = literal613 := by
  rw [tree613_def]
  rfl
theorem node613_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree613 live613 coloured613 = result613 := by
  rw [tree613_def]
  try dsimp only [colour, result613]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree614_agree : tree614 = literal614 := by
  rw [tree614_def, tree612_agree, tree613_agree]
  rfl
theorem node614_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree614 live614 coloured614 = result614 := by
  rw [tree614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node612_eq
  unfold live612 coloured612 at child
  try dsimp only [live614, coloured614]
  rw [child]
  dsimp only [result612]
  have child := node613_eq
  unfold live613 coloured613 at child
  try dsimp only [live614, coloured614]
  rw [child]
  dsimp only [result613]
  try dsimp only [colour, result614]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree615_agree : tree615 = literal615 := by
  rw [tree615_def]
  rfl
theorem node615_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree615 live615 coloured615 = result615 := by
  rw [tree615_def]
  try dsimp only [colour, result615]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree616_agree : tree616 = literal616 := by
  rw [tree616_def, tree614_agree, tree615_agree]
  rfl
theorem node616_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree616 live616 coloured616 = result616 := by
  rw [tree616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node614_eq
  unfold live614 coloured614 at child
  try dsimp only [live616, coloured616]
  rw [child]
  dsimp only [result614]
  have child := node615_eq
  unfold live615 coloured615 at child
  try dsimp only [live616, coloured616]
  rw [child]
  dsimp only [result615]
  try dsimp only [colour, result616]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree617_agree : tree617 = literal617 := by
  rw [tree617_def]
  rfl
theorem node617_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree617 live617 coloured617 = result617 := by
  rw [tree617_def]
  try dsimp only [colour, result617]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree618_agree : tree618 = literal618 := by
  rw [tree618_def, tree616_agree, tree617_agree]
  rfl
theorem node618_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree618 live618 coloured618 = result618 := by
  rw [tree618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node616_eq
  unfold live616 coloured616 at child
  try dsimp only [live618, coloured618]
  rw [child]
  dsimp only [result616]
  have child := node617_eq
  unfold live617 coloured617 at child
  try dsimp only [live618, coloured618]
  rw [child]
  dsimp only [result617]
  try dsimp only [colour, result618]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree619_agree : tree619 = literal619 := by
  rw [tree619_def]
  rfl
theorem node619_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree619 live619 coloured619 = result619 := by
  rw [tree619_def]
  try dsimp only [colour, result619]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree620_agree : tree620 = literal620 := by
  rw [tree620_def, tree618_agree, tree619_agree]
  rfl
theorem node620_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree620 live620 coloured620 = result620 := by
  rw [tree620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node618_eq
  unfold live618 coloured618 at child
  try dsimp only [live620, coloured620]
  rw [child]
  dsimp only [result618]
  have child := node619_eq
  unfold live619 coloured619 at child
  try dsimp only [live620, coloured620]
  rw [child]
  dsimp only [result619]
  try dsimp only [colour, result620]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree621_agree : tree621 = literal621 := by
  rw [tree621_def]
  rfl
theorem node621_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree621 live621 coloured621 = result621 := by
  rw [tree621_def]
  try dsimp only [colour, result621]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree622_agree : tree622 = literal622 := by
  rw [tree622_def, tree620_agree, tree621_agree]
  rfl
theorem node622_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree622 live622 coloured622 = result622 := by
  rw [tree622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node620_eq
  unfold live620 coloured620 at child
  try dsimp only [live622, coloured622]
  rw [child]
  dsimp only [result620]
  have child := node621_eq
  unfold live621 coloured621 at child
  try dsimp only [live622, coloured622]
  rw [child]
  dsimp only [result621]
  try dsimp only [colour, result622]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree623_agree : tree623 = literal623 := by
  rw [tree623_def]
  rfl
theorem node623_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree623 live623 coloured623 = result623 := by
  rw [tree623_def]
  try dsimp only [colour, result623]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree624_agree : tree624 = literal624 := by
  rw [tree624_def, tree622_agree, tree623_agree]
  rfl
theorem node624_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree624 live624 coloured624 = result624 := by
  rw [tree624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node622_eq
  unfold live622 coloured622 at child
  try dsimp only [live624, coloured624]
  rw [child]
  dsimp only [result622]
  have child := node623_eq
  unfold live623 coloured623 at child
  try dsimp only [live624, coloured624]
  rw [child]
  dsimp only [result623]
  try dsimp only [colour, result624]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree625_agree : tree625 = literal625 := by
  rw [tree625_def]
  rfl
theorem node625_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree625 live625 coloured625 = result625 := by
  rw [tree625_def]
  try dsimp only [colour, result625]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree626_agree : tree626 = literal626 := by
  rw [tree626_def, tree624_agree, tree625_agree]
  rfl
theorem node626_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree626 live626 coloured626 = result626 := by
  rw [tree626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node624_eq
  unfold live624 coloured624 at child
  try dsimp only [live626, coloured626]
  rw [child]
  dsimp only [result624]
  have child := node625_eq
  unfold live625 coloured625 at child
  try dsimp only [live626, coloured626]
  rw [child]
  dsimp only [result625]
  try dsimp only [colour, result626]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree627_agree : tree627 = literal627 := by
  rw [tree627_def]
  rfl
theorem node627_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree627 live627 coloured627 = result627 := by
  rw [tree627_def]
  try dsimp only [colour, result627]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree628_agree : tree628 = literal628 := by
  rw [tree628_def, tree626_agree, tree627_agree]
  rfl
theorem node628_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree628 live628 coloured628 = result628 := by
  rw [tree628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node626_eq
  unfold live626 coloured626 at child
  try dsimp only [live628, coloured628]
  rw [child]
  dsimp only [result626]
  have child := node627_eq
  unfold live627 coloured627 at child
  try dsimp only [live628, coloured628]
  rw [child]
  dsimp only [result627]
  try dsimp only [colour, result628]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree629_agree : tree629 = literal629 := by
  rw [tree629_def]
  rfl
theorem node629_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree629 live629 coloured629 = result629 := by
  rw [tree629_def]
  try dsimp only [colour, result629]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree630_agree : tree630 = literal630 := by
  rw [tree630_def, tree628_agree, tree629_agree]
  rfl
theorem node630_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree630 live630 coloured630 = result630 := by
  rw [tree630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node628_eq
  unfold live628 coloured628 at child
  try dsimp only [live630, coloured630]
  rw [child]
  dsimp only [result628]
  have child := node629_eq
  unfold live629 coloured629 at child
  try dsimp only [live630, coloured630]
  rw [child]
  dsimp only [result629]
  try dsimp only [colour, result630]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree631_agree : tree631 = literal631 := by
  rw [tree631_def]
  rfl
theorem node631_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree631 live631 coloured631 = result631 := by
  rw [tree631_def]
  try dsimp only [colour, result631]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree632_agree : tree632 = literal632 := by
  rw [tree632_def, tree630_agree, tree631_agree]
  rfl
theorem node632_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree632 live632 coloured632 = result632 := by
  rw [tree632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node630_eq
  unfold live630 coloured630 at child
  try dsimp only [live632, coloured632]
  rw [child]
  dsimp only [result630]
  have child := node631_eq
  unfold live631 coloured631 at child
  try dsimp only [live632, coloured632]
  rw [child]
  dsimp only [result631]
  try dsimp only [colour, result632]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree633_agree : tree633 = literal633 := by
  rw [tree633_def]
  rfl
theorem node633_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree633 live633 coloured633 = result633 := by
  rw [tree633_def]
  try dsimp only [colour, result633]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree634_agree : tree634 = literal634 := by
  rw [tree634_def, tree632_agree, tree633_agree]
  rfl
theorem node634_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree634 live634 coloured634 = result634 := by
  rw [tree634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node632_eq
  unfold live632 coloured632 at child
  try dsimp only [live634, coloured634]
  rw [child]
  dsimp only [result632]
  have child := node633_eq
  unfold live633 coloured633 at child
  try dsimp only [live634, coloured634]
  rw [child]
  dsimp only [result633]
  try dsimp only [colour, result634]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree635_agree : tree635 = literal635 := by
  rw [tree635_def]
  rfl
theorem node635_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree635 live635 coloured635 = result635 := by
  rw [tree635_def]
  try dsimp only [colour, result635]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree636_agree : tree636 = literal636 := by
  rw [tree636_def, tree634_agree, tree635_agree]
  rfl
theorem node636_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree636 live636 coloured636 = result636 := by
  rw [tree636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node634_eq
  unfold live634 coloured634 at child
  try dsimp only [live636, coloured636]
  rw [child]
  dsimp only [result634]
  have child := node635_eq
  unfold live635 coloured635 at child
  try dsimp only [live636, coloured636]
  rw [child]
  dsimp only [result635]
  try dsimp only [colour, result636]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree637_agree : tree637 = literal637 := by
  rw [tree637_def]
  rfl
theorem node637_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree637 live637 coloured637 = result637 := by
  rw [tree637_def]
  try dsimp only [colour, result637]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree638_agree : tree638 = literal638 := by
  rw [tree638_def, tree636_agree, tree637_agree]
  rfl
theorem node638_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree638 live638 coloured638 = result638 := by
  rw [tree638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node636_eq
  unfold live636 coloured636 at child
  try dsimp only [live638, coloured638]
  rw [child]
  dsimp only [result636]
  have child := node637_eq
  unfold live637 coloured637 at child
  try dsimp only [live638, coloured638]
  rw [child]
  dsimp only [result637]
  try dsimp only [colour, result638]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree639_agree : tree639 = literal639 := by
  rw [tree639_def]
  rfl
theorem node639_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree639 live639 coloured639 = result639 := by
  rw [tree639_def]
  try dsimp only [colour, result639]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree640_agree : tree640 = literal640 := by
  rw [tree640_def, tree638_agree, tree639_agree]
  rfl
theorem node640_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree640 live640 coloured640 = result640 := by
  rw [tree640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node638_eq
  unfold live638 coloured638 at child
  try dsimp only [live640, coloured640]
  rw [child]
  dsimp only [result638]
  have child := node639_eq
  unfold live639 coloured639 at child
  try dsimp only [live640, coloured640]
  rw [child]
  dsimp only [result639]
  try dsimp only [colour, result640]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree641_agree : tree641 = literal641 := by
  rw [tree641_def]
  rfl
theorem node641_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree641 live641 coloured641 = result641 := by
  rw [tree641_def]
  try dsimp only [colour, result641]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree642_agree : tree642 = literal642 := by
  rw [tree642_def, tree640_agree, tree641_agree]
  rfl
theorem node642_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree642 live642 coloured642 = result642 := by
  rw [tree642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node640_eq
  unfold live640 coloured640 at child
  try dsimp only [live642, coloured642]
  rw [child]
  dsimp only [result640]
  have child := node641_eq
  unfold live641 coloured641 at child
  try dsimp only [live642, coloured642]
  rw [child]
  dsimp only [result641]
  try dsimp only [colour, result642]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree643_agree : tree643 = literal643 := by
  rw [tree643_def]
  rfl
theorem node643_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree643 live643 coloured643 = result643 := by
  rw [tree643_def]
  try dsimp only [colour, result643]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree644_agree : tree644 = literal644 := by
  rw [tree644_def, tree642_agree, tree643_agree]
  rfl
theorem node644_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree644 live644 coloured644 = result644 := by
  rw [tree644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node642_eq
  unfold live642 coloured642 at child
  try dsimp only [live644, coloured644]
  rw [child]
  dsimp only [result642]
  have child := node643_eq
  unfold live643 coloured643 at child
  try dsimp only [live644, coloured644]
  rw [child]
  dsimp only [result643]
  try dsimp only [colour, result644]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree645_agree : tree645 = literal645 := by
  rw [tree645_def]
  rfl
theorem node645_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree645 live645 coloured645 = result645 := by
  rw [tree645_def]
  try dsimp only [colour, result645]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree646_agree : tree646 = literal646 := by
  rw [tree646_def, tree644_agree, tree645_agree]
  rfl
theorem node646_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree646 live646 coloured646 = result646 := by
  rw [tree646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node644_eq
  unfold live644 coloured644 at child
  try dsimp only [live646, coloured646]
  rw [child]
  dsimp only [result644]
  have child := node645_eq
  unfold live645 coloured645 at child
  try dsimp only [live646, coloured646]
  rw [child]
  dsimp only [result645]
  try dsimp only [colour, result646]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree647_agree : tree647 = literal647 := by
  rw [tree647_def]
  rfl
theorem node647_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree647 live647 coloured647 = result647 := by
  rw [tree647_def]
  try dsimp only [colour, result647]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree648_agree : tree648 = literal648 := by
  rw [tree648_def, tree646_agree, tree647_agree]
  rfl
theorem node648_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree648 live648 coloured648 = result648 := by
  rw [tree648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node646_eq
  unfold live646 coloured646 at child
  try dsimp only [live648, coloured648]
  rw [child]
  dsimp only [result646]
  have child := node647_eq
  unfold live647 coloured647 at child
  try dsimp only [live648, coloured648]
  rw [child]
  dsimp only [result647]
  try dsimp only [colour, result648]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree649_agree : tree649 = literal649 := by
  rw [tree649_def]
  rfl
theorem node649_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree649 live649 coloured649 = result649 := by
  rw [tree649_def]
  try dsimp only [colour, result649]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree650_agree : tree650 = literal650 := by
  rw [tree650_def, tree648_agree, tree649_agree]
  rfl
theorem node650_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree650 live650 coloured650 = result650 := by
  rw [tree650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node648_eq
  unfold live648 coloured648 at child
  try dsimp only [live650, coloured650]
  rw [child]
  dsimp only [result648]
  have child := node649_eq
  unfold live649 coloured649 at child
  try dsimp only [live650, coloured650]
  rw [child]
  dsimp only [result649]
  try dsimp only [colour, result650]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree651_agree : tree651 = literal651 := by
  rw [tree651_def]
  rfl
theorem node651_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree651 live651 coloured651 = result651 := by
  rw [tree651_def]
  try dsimp only [colour, result651]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree652_agree : tree652 = literal652 := by
  rw [tree652_def, tree650_agree, tree651_agree]
  rfl
theorem node652_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree652 live652 coloured652 = result652 := by
  rw [tree652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node650_eq
  unfold live650 coloured650 at child
  try dsimp only [live652, coloured652]
  rw [child]
  dsimp only [result650]
  have child := node651_eq
  unfold live651 coloured651 at child
  try dsimp only [live652, coloured652]
  rw [child]
  dsimp only [result651]
  try dsimp only [colour, result652]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree653_agree : tree653 = literal653 := by
  rw [tree653_def]
  rfl
theorem node653_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree653 live653 coloured653 = result653 := by
  rw [tree653_def]
  try dsimp only [colour, result653]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree654_agree : tree654 = literal654 := by
  rw [tree654_def, tree652_agree, tree653_agree]
  rfl
theorem node654_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree654 live654 coloured654 = result654 := by
  rw [tree654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node652_eq
  unfold live652 coloured652 at child
  try dsimp only [live654, coloured654]
  rw [child]
  dsimp only [result652]
  have child := node653_eq
  unfold live653 coloured653 at child
  try dsimp only [live654, coloured654]
  rw [child]
  dsimp only [result653]
  try dsimp only [colour, result654]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree655_agree : tree655 = literal655 := by
  rw [tree655_def]
  rfl
theorem node655_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree655 live655 coloured655 = result655 := by
  rw [tree655_def]
  try dsimp only [colour, result655]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree656_agree : tree656 = literal656 := by
  rw [tree656_def, tree654_agree, tree655_agree]
  rfl
theorem node656_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree656 live656 coloured656 = result656 := by
  rw [tree656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node654_eq
  unfold live654 coloured654 at child
  try dsimp only [live656, coloured656]
  rw [child]
  dsimp only [result654]
  have child := node655_eq
  unfold live655 coloured655 at child
  try dsimp only [live656, coloured656]
  rw [child]
  dsimp only [result655]
  try dsimp only [colour, result656]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree657_agree : tree657 = literal657 := by
  rw [tree657_def]
  rfl
theorem node657_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree657 live657 coloured657 = result657 := by
  rw [tree657_def]
  try dsimp only [colour, result657]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree658_agree : tree658 = literal658 := by
  rw [tree658_def, tree656_agree, tree657_agree]
  rfl
theorem node658_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree658 live658 coloured658 = result658 := by
  rw [tree658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node656_eq
  unfold live656 coloured656 at child
  try dsimp only [live658, coloured658]
  rw [child]
  dsimp only [result656]
  have child := node657_eq
  unfold live657 coloured657 at child
  try dsimp only [live658, coloured658]
  rw [child]
  dsimp only [result657]
  try dsimp only [colour, result658]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree659_agree : tree659 = literal659 := by
  rw [tree659_def]
  rfl
theorem node659_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree659 live659 coloured659 = result659 := by
  rw [tree659_def]
  try dsimp only [colour, result659]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree660_agree : tree660 = literal660 := by
  rw [tree660_def, tree658_agree, tree659_agree]
  rfl
theorem node660_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree660 live660 coloured660 = result660 := by
  rw [tree660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node658_eq
  unfold live658 coloured658 at child
  try dsimp only [live660, coloured660]
  rw [child]
  dsimp only [result658]
  have child := node659_eq
  unfold live659 coloured659 at child
  try dsimp only [live660, coloured660]
  rw [child]
  dsimp only [result659]
  try dsimp only [colour, result660]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree661_agree : tree661 = literal661 := by
  rw [tree661_def]
  rfl
theorem node661_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree661 live661 coloured661 = result661 := by
  rw [tree661_def]
  try dsimp only [colour, result661]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree662_agree : tree662 = literal662 := by
  rw [tree662_def, tree660_agree, tree661_agree]
  rfl
theorem node662_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree662 live662 coloured662 = result662 := by
  rw [tree662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node660_eq
  unfold live660 coloured660 at child
  try dsimp only [live662, coloured662]
  rw [child]
  dsimp only [result660]
  have child := node661_eq
  unfold live661 coloured661 at child
  try dsimp only [live662, coloured662]
  rw [child]
  dsimp only [result661]
  try dsimp only [colour, result662]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree663_agree : tree663 = literal663 := by
  rw [tree663_def]
  rfl
theorem node663_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree663 live663 coloured663 = result663 := by
  rw [tree663_def]
  try dsimp only [colour, result663]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree664_agree : tree664 = literal664 := by
  rw [tree664_def, tree662_agree, tree663_agree]
  rfl
theorem node664_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree664 live664 coloured664 = result664 := by
  rw [tree664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node662_eq
  unfold live662 coloured662 at child
  try dsimp only [live664, coloured664]
  rw [child]
  dsimp only [result662]
  have child := node663_eq
  unfold live663 coloured663 at child
  try dsimp only [live664, coloured664]
  rw [child]
  dsimp only [result663]
  try dsimp only [colour, result664]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree665_agree : tree665 = literal665 := by
  rw [tree665_def]
  rfl
theorem node665_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree665 live665 coloured665 = result665 := by
  rw [tree665_def]
  try dsimp only [colour, result665]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree666_agree : tree666 = literal666 := by
  rw [tree666_def, tree664_agree, tree665_agree]
  rfl
theorem node666_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree666 live666 coloured666 = result666 := by
  rw [tree666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node664_eq
  unfold live664 coloured664 at child
  try dsimp only [live666, coloured666]
  rw [child]
  dsimp only [result664]
  have child := node665_eq
  unfold live665 coloured665 at child
  try dsimp only [live666, coloured666]
  rw [child]
  dsimp only [result665]
  try dsimp only [colour, result666]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree667_agree : tree667 = literal667 := by
  rw [tree667_def]
  rfl
theorem node667_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree667 live667 coloured667 = result667 := by
  rw [tree667_def]
  try dsimp only [colour, result667]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree668_agree : tree668 = literal668 := by
  rw [tree668_def, tree666_agree, tree667_agree]
  rfl
theorem node668_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree668 live668 coloured668 = result668 := by
  rw [tree668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node666_eq
  unfold live666 coloured666 at child
  try dsimp only [live668, coloured668]
  rw [child]
  dsimp only [result666]
  have child := node667_eq
  unfold live667 coloured667 at child
  try dsimp only [live668, coloured668]
  rw [child]
  dsimp only [result667]
  try dsimp only [colour, result668]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree669_agree : tree669 = literal669 := by
  rw [tree669_def]
  rfl
theorem node669_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree669 live669 coloured669 = result669 := by
  rw [tree669_def]
  try dsimp only [colour, result669]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree670_agree : tree670 = literal670 := by
  rw [tree670_def, tree668_agree, tree669_agree]
  rfl
theorem node670_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree670 live670 coloured670 = result670 := by
  rw [tree670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node668_eq
  unfold live668 coloured668 at child
  try dsimp only [live670, coloured670]
  rw [child]
  dsimp only [result668]
  have child := node669_eq
  unfold live669 coloured669 at child
  try dsimp only [live670, coloured670]
  rw [child]
  dsimp only [result669]
  try dsimp only [colour, result670]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree671_agree : tree671 = literal671 := by
  rw [tree671_def]
  rfl
theorem node671_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree671 live671 coloured671 = result671 := by
  rw [tree671_def]
  try dsimp only [colour, result671]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
