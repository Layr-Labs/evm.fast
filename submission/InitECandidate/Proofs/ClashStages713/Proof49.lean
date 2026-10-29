import InitECandidate.Proofs.ClashStages713.Proof48
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree4704_agree : tree4704 = literal4704 := by
  rw [tree4704_def, tree4702_agree, tree4703_agree]
  rfl
theorem node4704_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4704 live4704 coloured4704 = result4704 := by
  rw [tree4704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4702_eq
  unfold live4702 coloured4702 at child
  try dsimp only [live4704, coloured4704]
  rw [child]
  dsimp only [result4702]
  have child := node4703_eq
  unfold live4703 coloured4703 at child
  try dsimp only [live4704, coloured4704]
  rw [child]
  dsimp only [result4703]
  try dsimp only [colour, result4704]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4705_agree : tree4705 = literal4705 := by
  rw [tree4705_def]
  rfl
theorem node4705_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4705 live4705 coloured4705 = result4705 := by
  rw [tree4705_def]
  try dsimp only [colour, result4705]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4706_agree : tree4706 = literal4706 := by
  rw [tree4706_def, tree4704_agree, tree4705_agree]
  rfl
theorem node4706_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4706 live4706 coloured4706 = result4706 := by
  rw [tree4706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4704_eq
  unfold live4704 coloured4704 at child
  try dsimp only [live4706, coloured4706]
  rw [child]
  dsimp only [result4704]
  have child := node4705_eq
  unfold live4705 coloured4705 at child
  try dsimp only [live4706, coloured4706]
  rw [child]
  dsimp only [result4705]
  try dsimp only [colour, result4706]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4707_agree : tree4707 = literal4707 := by
  rw [tree4707_def]
  rfl
theorem node4707_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4707 live4707 coloured4707 = result4707 := by
  rw [tree4707_def]
  try dsimp only [colour, result4707]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4708_agree : tree4708 = literal4708 := by
  rw [tree4708_def, tree4706_agree, tree4707_agree]
  rfl
theorem node4708_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4708 live4708 coloured4708 = result4708 := by
  rw [tree4708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4706_eq
  unfold live4706 coloured4706 at child
  try dsimp only [live4708, coloured4708]
  rw [child]
  dsimp only [result4706]
  have child := node4707_eq
  unfold live4707 coloured4707 at child
  try dsimp only [live4708, coloured4708]
  rw [child]
  dsimp only [result4707]
  try dsimp only [colour, result4708]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4709_agree : tree4709 = literal4709 := by
  rw [tree4709_def]
  rfl
theorem node4709_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4709 live4709 coloured4709 = result4709 := by
  rw [tree4709_def]
  try dsimp only [colour, result4709]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4710_agree : tree4710 = literal4710 := by
  rw [tree4710_def, tree4708_agree, tree4709_agree]
  rfl
theorem node4710_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4710 live4710 coloured4710 = result4710 := by
  rw [tree4710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4708_eq
  unfold live4708 coloured4708 at child
  try dsimp only [live4710, coloured4710]
  rw [child]
  dsimp only [result4708]
  have child := node4709_eq
  unfold live4709 coloured4709 at child
  try dsimp only [live4710, coloured4710]
  rw [child]
  dsimp only [result4709]
  try dsimp only [colour, result4710]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4711_agree : tree4711 = literal4711 := by
  rw [tree4711_def]
  rfl
theorem node4711_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4711 live4711 coloured4711 = result4711 := by
  rw [tree4711_def]
  try dsimp only [colour, result4711]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4712_agree : tree4712 = literal4712 := by
  rw [tree4712_def, tree4710_agree, tree4711_agree]
  rfl
theorem node4712_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4712 live4712 coloured4712 = result4712 := by
  rw [tree4712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4710_eq
  unfold live4710 coloured4710 at child
  try dsimp only [live4712, coloured4712]
  rw [child]
  dsimp only [result4710]
  have child := node4711_eq
  unfold live4711 coloured4711 at child
  try dsimp only [live4712, coloured4712]
  rw [child]
  dsimp only [result4711]
  try dsimp only [colour, result4712]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4713_agree : tree4713 = literal4713 := by
  rw [tree4713_def]
  rfl
theorem node4713_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4713 live4713 coloured4713 = result4713 := by
  rw [tree4713_def]
  try dsimp only [colour, result4713]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4714_agree : tree4714 = literal4714 := by
  rw [tree4714_def, tree4712_agree, tree4713_agree]
  rfl
theorem node4714_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4714 live4714 coloured4714 = result4714 := by
  rw [tree4714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4712_eq
  unfold live4712 coloured4712 at child
  try dsimp only [live4714, coloured4714]
  rw [child]
  dsimp only [result4712]
  have child := node4713_eq
  unfold live4713 coloured4713 at child
  try dsimp only [live4714, coloured4714]
  rw [child]
  dsimp only [result4713]
  try dsimp only [colour, result4714]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4715_agree : tree4715 = literal4715 := by
  rw [tree4715_def]
  rfl
theorem node4715_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4715 live4715 coloured4715 = result4715 := by
  rw [tree4715_def]
  try dsimp only [colour, result4715]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4716_agree : tree4716 = literal4716 := by
  rw [tree4716_def, tree4714_agree, tree4715_agree]
  rfl
theorem node4716_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4716 live4716 coloured4716 = result4716 := by
  rw [tree4716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4714_eq
  unfold live4714 coloured4714 at child
  try dsimp only [live4716, coloured4716]
  rw [child]
  dsimp only [result4714]
  have child := node4715_eq
  unfold live4715 coloured4715 at child
  try dsimp only [live4716, coloured4716]
  rw [child]
  dsimp only [result4715]
  try dsimp only [colour, result4716]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4717_agree : tree4717 = literal4717 := by
  rw [tree4717_def]
  rfl
theorem node4717_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4717 live4717 coloured4717 = result4717 := by
  rw [tree4717_def]
  try dsimp only [colour, result4717]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4718_agree : tree4718 = literal4718 := by
  rw [tree4718_def, tree4716_agree, tree4717_agree]
  rfl
theorem node4718_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4718 live4718 coloured4718 = result4718 := by
  rw [tree4718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4716_eq
  unfold live4716 coloured4716 at child
  try dsimp only [live4718, coloured4718]
  rw [child]
  dsimp only [result4716]
  have child := node4717_eq
  unfold live4717 coloured4717 at child
  try dsimp only [live4718, coloured4718]
  rw [child]
  dsimp only [result4717]
  try dsimp only [colour, result4718]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4719_agree : tree4719 = literal4719 := by
  rw [tree4719_def]
  rfl
theorem node4719_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4719 live4719 coloured4719 = result4719 := by
  rw [tree4719_def]
  try dsimp only [colour, result4719]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4720_agree : tree4720 = literal4720 := by
  rw [tree4720_def, tree4718_agree, tree4719_agree]
  rfl
theorem node4720_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4720 live4720 coloured4720 = result4720 := by
  rw [tree4720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4718_eq
  unfold live4718 coloured4718 at child
  try dsimp only [live4720, coloured4720]
  rw [child]
  dsimp only [result4718]
  have child := node4719_eq
  unfold live4719 coloured4719 at child
  try dsimp only [live4720, coloured4720]
  rw [child]
  dsimp only [result4719]
  try dsimp only [colour, result4720]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4721_agree : tree4721 = literal4721 := by
  rw [tree4721_def]
  rfl
theorem node4721_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4721 live4721 coloured4721 = result4721 := by
  rw [tree4721_def]
  try dsimp only [colour, result4721]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4722_agree : tree4722 = literal4722 := by
  rw [tree4722_def, tree4720_agree, tree4721_agree]
  rfl
theorem node4722_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4722 live4722 coloured4722 = result4722 := by
  rw [tree4722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4720_eq
  unfold live4720 coloured4720 at child
  try dsimp only [live4722, coloured4722]
  rw [child]
  dsimp only [result4720]
  have child := node4721_eq
  unfold live4721 coloured4721 at child
  try dsimp only [live4722, coloured4722]
  rw [child]
  dsimp only [result4721]
  try dsimp only [colour, result4722]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4723_agree : tree4723 = literal4723 := by
  rw [tree4723_def]
  rfl
theorem node4723_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4723 live4723 coloured4723 = result4723 := by
  rw [tree4723_def]
  try dsimp only [colour, result4723]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4724_agree : tree4724 = literal4724 := by
  rw [tree4724_def, tree4722_agree, tree4723_agree]
  rfl
theorem node4724_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4724 live4724 coloured4724 = result4724 := by
  rw [tree4724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4722_eq
  unfold live4722 coloured4722 at child
  try dsimp only [live4724, coloured4724]
  rw [child]
  dsimp only [result4722]
  have child := node4723_eq
  unfold live4723 coloured4723 at child
  try dsimp only [live4724, coloured4724]
  rw [child]
  dsimp only [result4723]
  try dsimp only [colour, result4724]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4725_agree : tree4725 = literal4725 := by
  rw [tree4725_def]
  rfl
theorem node4725_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4725 live4725 coloured4725 = result4725 := by
  rw [tree4725_def]
  try dsimp only [colour, result4725]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4726_agree : tree4726 = literal4726 := by
  rw [tree4726_def, tree4724_agree, tree4725_agree]
  rfl
theorem node4726_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4726 live4726 coloured4726 = result4726 := by
  rw [tree4726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4724_eq
  unfold live4724 coloured4724 at child
  try dsimp only [live4726, coloured4726]
  rw [child]
  dsimp only [result4724]
  have child := node4725_eq
  unfold live4725 coloured4725 at child
  try dsimp only [live4726, coloured4726]
  rw [child]
  dsimp only [result4725]
  try dsimp only [colour, result4726]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4727_agree : tree4727 = literal4727 := by
  rw [tree4727_def]
  rfl
theorem node4727_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4727 live4727 coloured4727 = result4727 := by
  rw [tree4727_def]
  try dsimp only [colour, result4727]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4728_agree : tree4728 = literal4728 := by
  rw [tree4728_def, tree4726_agree, tree4727_agree]
  rfl
theorem node4728_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4728 live4728 coloured4728 = result4728 := by
  rw [tree4728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4726_eq
  unfold live4726 coloured4726 at child
  try dsimp only [live4728, coloured4728]
  rw [child]
  dsimp only [result4726]
  have child := node4727_eq
  unfold live4727 coloured4727 at child
  try dsimp only [live4728, coloured4728]
  rw [child]
  dsimp only [result4727]
  try dsimp only [colour, result4728]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4729_agree : tree4729 = literal4729 := by
  rw [tree4729_def]
  rfl
theorem node4729_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4729 live4729 coloured4729 = result4729 := by
  rw [tree4729_def]
  try dsimp only [colour, result4729]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4730_agree : tree4730 = literal4730 := by
  rw [tree4730_def, tree4728_agree, tree4729_agree]
  rfl
theorem node4730_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4730 live4730 coloured4730 = result4730 := by
  rw [tree4730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4728_eq
  unfold live4728 coloured4728 at child
  try dsimp only [live4730, coloured4730]
  rw [child]
  dsimp only [result4728]
  have child := node4729_eq
  unfold live4729 coloured4729 at child
  try dsimp only [live4730, coloured4730]
  rw [child]
  dsimp only [result4729]
  try dsimp only [colour, result4730]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4731_agree : tree4731 = literal4731 := by
  rw [tree4731_def]
  rfl
theorem node4731_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4731 live4731 coloured4731 = result4731 := by
  rw [tree4731_def]
  try dsimp only [colour, result4731]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4732_agree : tree4732 = literal4732 := by
  rw [tree4732_def, tree4730_agree, tree4731_agree]
  rfl
theorem node4732_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4732 live4732 coloured4732 = result4732 := by
  rw [tree4732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4730_eq
  unfold live4730 coloured4730 at child
  try dsimp only [live4732, coloured4732]
  rw [child]
  dsimp only [result4730]
  have child := node4731_eq
  unfold live4731 coloured4731 at child
  try dsimp only [live4732, coloured4732]
  rw [child]
  dsimp only [result4731]
  try dsimp only [colour, result4732]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4733_agree : tree4733 = literal4733 := by
  rw [tree4733_def]
  rfl
theorem node4733_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4733 live4733 coloured4733 = result4733 := by
  rw [tree4733_def]
  try dsimp only [colour, result4733]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4734_agree : tree4734 = literal4734 := by
  rw [tree4734_def, tree4732_agree, tree4733_agree]
  rfl
theorem node4734_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4734 live4734 coloured4734 = result4734 := by
  rw [tree4734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4732_eq
  unfold live4732 coloured4732 at child
  try dsimp only [live4734, coloured4734]
  rw [child]
  dsimp only [result4732]
  have child := node4733_eq
  unfold live4733 coloured4733 at child
  try dsimp only [live4734, coloured4734]
  rw [child]
  dsimp only [result4733]
  try dsimp only [colour, result4734]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4735_agree : tree4735 = literal4735 := by
  rw [tree4735_def]
  rfl
theorem node4735_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4735 live4735 coloured4735 = result4735 := by
  rw [tree4735_def]
  try dsimp only [colour, result4735]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4736_agree : tree4736 = literal4736 := by
  rw [tree4736_def, tree4734_agree, tree4735_agree]
  rfl
theorem node4736_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4736 live4736 coloured4736 = result4736 := by
  rw [tree4736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4734_eq
  unfold live4734 coloured4734 at child
  try dsimp only [live4736, coloured4736]
  rw [child]
  dsimp only [result4734]
  have child := node4735_eq
  unfold live4735 coloured4735 at child
  try dsimp only [live4736, coloured4736]
  rw [child]
  dsimp only [result4735]
  try dsimp only [colour, result4736]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4737_agree : tree4737 = literal4737 := by
  rw [tree4737_def]
  rfl
theorem node4737_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4737 live4737 coloured4737 = result4737 := by
  rw [tree4737_def]
  try dsimp only [colour, result4737]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4738_agree : tree4738 = literal4738 := by
  rw [tree4738_def, tree4736_agree, tree4737_agree]
  rfl
theorem node4738_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4738 live4738 coloured4738 = result4738 := by
  rw [tree4738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4736_eq
  unfold live4736 coloured4736 at child
  try dsimp only [live4738, coloured4738]
  rw [child]
  dsimp only [result4736]
  have child := node4737_eq
  unfold live4737 coloured4737 at child
  try dsimp only [live4738, coloured4738]
  rw [child]
  dsimp only [result4737]
  try dsimp only [colour, result4738]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4739_agree : tree4739 = literal4739 := by
  rw [tree4739_def]
  rfl
theorem node4739_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4739 live4739 coloured4739 = result4739 := by
  rw [tree4739_def]
  try dsimp only [colour, result4739]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4740_agree : tree4740 = literal4740 := by
  rw [tree4740_def, tree4738_agree, tree4739_agree]
  rfl
theorem node4740_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4740 live4740 coloured4740 = result4740 := by
  rw [tree4740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4738_eq
  unfold live4738 coloured4738 at child
  try dsimp only [live4740, coloured4740]
  rw [child]
  dsimp only [result4738]
  have child := node4739_eq
  unfold live4739 coloured4739 at child
  try dsimp only [live4740, coloured4740]
  rw [child]
  dsimp only [result4739]
  try dsimp only [colour, result4740]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4741_agree : tree4741 = literal4741 := by
  rw [tree4741_def]
  rfl
theorem node4741_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4741 live4741 coloured4741 = result4741 := by
  rw [tree4741_def]
  try dsimp only [colour, result4741]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4742_agree : tree4742 = literal4742 := by
  rw [tree4742_def, tree4740_agree, tree4741_agree]
  rfl
theorem node4742_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4742 live4742 coloured4742 = result4742 := by
  rw [tree4742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4740_eq
  unfold live4740 coloured4740 at child
  try dsimp only [live4742, coloured4742]
  rw [child]
  dsimp only [result4740]
  have child := node4741_eq
  unfold live4741 coloured4741 at child
  try dsimp only [live4742, coloured4742]
  rw [child]
  dsimp only [result4741]
  try dsimp only [colour, result4742]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4743_agree : tree4743 = literal4743 := by
  rw [tree4743_def]
  rfl
theorem node4743_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4743 live4743 coloured4743 = result4743 := by
  rw [tree4743_def]
  try dsimp only [colour, result4743]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4744_agree : tree4744 = literal4744 := by
  rw [tree4744_def, tree4742_agree, tree4743_agree]
  rfl
theorem node4744_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4744 live4744 coloured4744 = result4744 := by
  rw [tree4744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4742_eq
  unfold live4742 coloured4742 at child
  try dsimp only [live4744, coloured4744]
  rw [child]
  dsimp only [result4742]
  have child := node4743_eq
  unfold live4743 coloured4743 at child
  try dsimp only [live4744, coloured4744]
  rw [child]
  dsimp only [result4743]
  try dsimp only [colour, result4744]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4745_agree : tree4745 = literal4745 := by
  rw [tree4745_def]
  rfl
theorem node4745_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4745 live4745 coloured4745 = result4745 := by
  rw [tree4745_def]
  try dsimp only [colour, result4745]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4746_agree : tree4746 = literal4746 := by
  rw [tree4746_def, tree4744_agree, tree4745_agree]
  rfl
theorem node4746_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4746 live4746 coloured4746 = result4746 := by
  rw [tree4746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4744_eq
  unfold live4744 coloured4744 at child
  try dsimp only [live4746, coloured4746]
  rw [child]
  dsimp only [result4744]
  have child := node4745_eq
  unfold live4745 coloured4745 at child
  try dsimp only [live4746, coloured4746]
  rw [child]
  dsimp only [result4745]
  try dsimp only [colour, result4746]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4747_agree : tree4747 = literal4747 := by
  rw [tree4747_def]
  rfl
theorem node4747_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4747 live4747 coloured4747 = result4747 := by
  rw [tree4747_def]
  try dsimp only [colour, result4747]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4748_agree : tree4748 = literal4748 := by
  rw [tree4748_def, tree4746_agree, tree4747_agree]
  rfl
theorem node4748_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4748 live4748 coloured4748 = result4748 := by
  rw [tree4748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4746_eq
  unfold live4746 coloured4746 at child
  try dsimp only [live4748, coloured4748]
  rw [child]
  dsimp only [result4746]
  have child := node4747_eq
  unfold live4747 coloured4747 at child
  try dsimp only [live4748, coloured4748]
  rw [child]
  dsimp only [result4747]
  try dsimp only [colour, result4748]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4749_agree : tree4749 = literal4749 := by
  rw [tree4749_def]
  rfl
theorem node4749_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4749 live4749 coloured4749 = result4749 := by
  rw [tree4749_def]
  try dsimp only [colour, result4749]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4750_agree : tree4750 = literal4750 := by
  rw [tree4750_def, tree4748_agree, tree4749_agree]
  rfl
theorem node4750_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4750 live4750 coloured4750 = result4750 := by
  rw [tree4750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4748_eq
  unfold live4748 coloured4748 at child
  try dsimp only [live4750, coloured4750]
  rw [child]
  dsimp only [result4748]
  have child := node4749_eq
  unfold live4749 coloured4749 at child
  try dsimp only [live4750, coloured4750]
  rw [child]
  dsimp only [result4749]
  try dsimp only [colour, result4750]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4751_agree : tree4751 = literal4751 := by
  rw [tree4751_def]
  rfl
theorem node4751_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4751 live4751 coloured4751 = result4751 := by
  rw [tree4751_def]
  try dsimp only [colour, result4751]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4752_agree : tree4752 = literal4752 := by
  rw [tree4752_def, tree4750_agree, tree4751_agree]
  rfl
theorem node4752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4752 live4752 coloured4752 = result4752 := by
  rw [tree4752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4750_eq
  unfold live4750 coloured4750 at child
  try dsimp only [live4752, coloured4752]
  rw [child]
  dsimp only [result4750]
  have child := node4751_eq
  unfold live4751 coloured4751 at child
  try dsimp only [live4752, coloured4752]
  rw [child]
  dsimp only [result4751]
  try dsimp only [colour, result4752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4753_agree : tree4753 = literal4753 := by
  rw [tree4753_def]
  rfl
theorem node4753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4753 live4753 coloured4753 = result4753 := by
  rw [tree4753_def]
  try dsimp only [colour, result4753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4754_agree : tree4754 = literal4754 := by
  rw [tree4754_def, tree4752_agree, tree4753_agree]
  rfl
theorem node4754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4754 live4754 coloured4754 = result4754 := by
  rw [tree4754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4752_eq
  unfold live4752 coloured4752 at child
  try dsimp only [live4754, coloured4754]
  rw [child]
  dsimp only [result4752]
  have child := node4753_eq
  unfold live4753 coloured4753 at child
  try dsimp only [live4754, coloured4754]
  rw [child]
  dsimp only [result4753]
  try dsimp only [colour, result4754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4755_agree : tree4755 = literal4755 := by
  rw [tree4755_def]
  rfl
theorem node4755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4755 live4755 coloured4755 = result4755 := by
  rw [tree4755_def]
  try dsimp only [colour, result4755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4756_agree : tree4756 = literal4756 := by
  rw [tree4756_def, tree4754_agree, tree4755_agree]
  rfl
theorem node4756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4756 live4756 coloured4756 = result4756 := by
  rw [tree4756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4754_eq
  unfold live4754 coloured4754 at child
  try dsimp only [live4756, coloured4756]
  rw [child]
  dsimp only [result4754]
  have child := node4755_eq
  unfold live4755 coloured4755 at child
  try dsimp only [live4756, coloured4756]
  rw [child]
  dsimp only [result4755]
  try dsimp only [colour, result4756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4757_agree : tree4757 = literal4757 := by
  rw [tree4757_def]
  rfl
theorem node4757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4757 live4757 coloured4757 = result4757 := by
  rw [tree4757_def]
  try dsimp only [colour, result4757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4758_agree : tree4758 = literal4758 := by
  rw [tree4758_def, tree4756_agree, tree4757_agree]
  rfl
theorem node4758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4758 live4758 coloured4758 = result4758 := by
  rw [tree4758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4756_eq
  unfold live4756 coloured4756 at child
  try dsimp only [live4758, coloured4758]
  rw [child]
  dsimp only [result4756]
  have child := node4757_eq
  unfold live4757 coloured4757 at child
  try dsimp only [live4758, coloured4758]
  rw [child]
  dsimp only [result4757]
  try dsimp only [colour, result4758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4759_agree : tree4759 = literal4759 := by
  rw [tree4759_def]
  rfl
theorem node4759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4759 live4759 coloured4759 = result4759 := by
  rw [tree4759_def]
  try dsimp only [colour, result4759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4760_agree : tree4760 = literal4760 := by
  rw [tree4760_def, tree4758_agree, tree4759_agree]
  rfl
theorem node4760_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4760 live4760 coloured4760 = result4760 := by
  rw [tree4760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4758_eq
  unfold live4758 coloured4758 at child
  try dsimp only [live4760, coloured4760]
  rw [child]
  dsimp only [result4758]
  have child := node4759_eq
  unfold live4759 coloured4759 at child
  try dsimp only [live4760, coloured4760]
  rw [child]
  dsimp only [result4759]
  try dsimp only [colour, result4760]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4761_agree : tree4761 = literal4761 := by
  rw [tree4761_def]
  rfl
theorem node4761_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4761 live4761 coloured4761 = result4761 := by
  rw [tree4761_def]
  try dsimp only [colour, result4761]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4762_agree : tree4762 = literal4762 := by
  rw [tree4762_def, tree4760_agree, tree4761_agree]
  rfl
theorem node4762_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4762 live4762 coloured4762 = result4762 := by
  rw [tree4762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4760_eq
  unfold live4760 coloured4760 at child
  try dsimp only [live4762, coloured4762]
  rw [child]
  dsimp only [result4760]
  have child := node4761_eq
  unfold live4761 coloured4761 at child
  try dsimp only [live4762, coloured4762]
  rw [child]
  dsimp only [result4761]
  try dsimp only [colour, result4762]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4763_agree : tree4763 = literal4763 := by
  rw [tree4763_def]
  rfl
theorem node4763_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4763 live4763 coloured4763 = result4763 := by
  rw [tree4763_def]
  try dsimp only [colour, result4763]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4764_agree : tree4764 = literal4764 := by
  rw [tree4764_def, tree4762_agree, tree4763_agree]
  rfl
theorem node4764_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4764 live4764 coloured4764 = result4764 := by
  rw [tree4764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4762_eq
  unfold live4762 coloured4762 at child
  try dsimp only [live4764, coloured4764]
  rw [child]
  dsimp only [result4762]
  have child := node4763_eq
  unfold live4763 coloured4763 at child
  try dsimp only [live4764, coloured4764]
  rw [child]
  dsimp only [result4763]
  try dsimp only [colour, result4764]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4765_agree : tree4765 = literal4765 := by
  rw [tree4765_def]
  rfl
theorem node4765_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4765 live4765 coloured4765 = result4765 := by
  rw [tree4765_def]
  try dsimp only [colour, result4765]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4766_agree : tree4766 = literal4766 := by
  rw [tree4766_def, tree4764_agree, tree4765_agree]
  rfl
theorem node4766_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4766 live4766 coloured4766 = result4766 := by
  rw [tree4766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4764_eq
  unfold live4764 coloured4764 at child
  try dsimp only [live4766, coloured4766]
  rw [child]
  dsimp only [result4764]
  have child := node4765_eq
  unfold live4765 coloured4765 at child
  try dsimp only [live4766, coloured4766]
  rw [child]
  dsimp only [result4765]
  try dsimp only [colour, result4766]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4767_agree : tree4767 = literal4767 := by
  rw [tree4767_def]
  rfl
theorem node4767_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4767 live4767 coloured4767 = result4767 := by
  rw [tree4767_def]
  try dsimp only [colour, result4767]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4768_agree : tree4768 = literal4768 := by
  rw [tree4768_def, tree4766_agree, tree4767_agree]
  rfl
theorem node4768_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4768 live4768 coloured4768 = result4768 := by
  rw [tree4768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4766_eq
  unfold live4766 coloured4766 at child
  try dsimp only [live4768, coloured4768]
  rw [child]
  dsimp only [result4766]
  have child := node4767_eq
  unfold live4767 coloured4767 at child
  try dsimp only [live4768, coloured4768]
  rw [child]
  dsimp only [result4767]
  try dsimp only [colour, result4768]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4769_agree : tree4769 = literal4769 := by
  rw [tree4769_def]
  rfl
theorem node4769_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4769 live4769 coloured4769 = result4769 := by
  rw [tree4769_def]
  try dsimp only [colour, result4769]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4770_agree : tree4770 = literal4770 := by
  rw [tree4770_def, tree4768_agree, tree4769_agree]
  rfl
theorem node4770_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4770 live4770 coloured4770 = result4770 := by
  rw [tree4770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4768_eq
  unfold live4768 coloured4768 at child
  try dsimp only [live4770, coloured4770]
  rw [child]
  dsimp only [result4768]
  have child := node4769_eq
  unfold live4769 coloured4769 at child
  try dsimp only [live4770, coloured4770]
  rw [child]
  dsimp only [result4769]
  try dsimp only [colour, result4770]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4771_agree : tree4771 = literal4771 := by
  rw [tree4771_def]
  rfl
theorem node4771_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4771 live4771 coloured4771 = result4771 := by
  rw [tree4771_def]
  try dsimp only [colour, result4771]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4772_agree : tree4772 = literal4772 := by
  rw [tree4772_def, tree4770_agree, tree4771_agree]
  rfl
theorem node4772_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4772 live4772 coloured4772 = result4772 := by
  rw [tree4772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4770_eq
  unfold live4770 coloured4770 at child
  try dsimp only [live4772, coloured4772]
  rw [child]
  dsimp only [result4770]
  have child := node4771_eq
  unfold live4771 coloured4771 at child
  try dsimp only [live4772, coloured4772]
  rw [child]
  dsimp only [result4771]
  try dsimp only [colour, result4772]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4773_agree : tree4773 = literal4773 := by
  rw [tree4773_def]
  rfl
theorem node4773_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4773 live4773 coloured4773 = result4773 := by
  rw [tree4773_def]
  try dsimp only [colour, result4773]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4774_agree : tree4774 = literal4774 := by
  rw [tree4774_def, tree4772_agree, tree4773_agree]
  rfl
theorem node4774_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4774 live4774 coloured4774 = result4774 := by
  rw [tree4774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4772_eq
  unfold live4772 coloured4772 at child
  try dsimp only [live4774, coloured4774]
  rw [child]
  dsimp only [result4772]
  have child := node4773_eq
  unfold live4773 coloured4773 at child
  try dsimp only [live4774, coloured4774]
  rw [child]
  dsimp only [result4773]
  try dsimp only [colour, result4774]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4775_agree : tree4775 = literal4775 := by
  rw [tree4775_def]
  rfl
theorem node4775_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4775 live4775 coloured4775 = result4775 := by
  rw [tree4775_def]
  try dsimp only [colour, result4775]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4776_agree : tree4776 = literal4776 := by
  rw [tree4776_def, tree4774_agree, tree4775_agree]
  rfl
theorem node4776_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4776 live4776 coloured4776 = result4776 := by
  rw [tree4776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4774_eq
  unfold live4774 coloured4774 at child
  try dsimp only [live4776, coloured4776]
  rw [child]
  dsimp only [result4774]
  have child := node4775_eq
  unfold live4775 coloured4775 at child
  try dsimp only [live4776, coloured4776]
  rw [child]
  dsimp only [result4775]
  try dsimp only [colour, result4776]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4777_agree : tree4777 = literal4777 := by
  rw [tree4777_def]
  rfl
theorem node4777_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4777 live4777 coloured4777 = result4777 := by
  rw [tree4777_def]
  try dsimp only [colour, result4777]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4778_agree : tree4778 = literal4778 := by
  rw [tree4778_def, tree4776_agree, tree4777_agree]
  rfl
theorem node4778_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4778 live4778 coloured4778 = result4778 := by
  rw [tree4778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4776_eq
  unfold live4776 coloured4776 at child
  try dsimp only [live4778, coloured4778]
  rw [child]
  dsimp only [result4776]
  have child := node4777_eq
  unfold live4777 coloured4777 at child
  try dsimp only [live4778, coloured4778]
  rw [child]
  dsimp only [result4777]
  try dsimp only [colour, result4778]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4779_agree : tree4779 = literal4779 := by
  rw [tree4779_def]
  rfl
theorem node4779_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4779 live4779 coloured4779 = result4779 := by
  rw [tree4779_def]
  try dsimp only [colour, result4779]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4780_agree : tree4780 = literal4780 := by
  rw [tree4780_def, tree4778_agree, tree4779_agree]
  rfl
theorem node4780_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4780 live4780 coloured4780 = result4780 := by
  rw [tree4780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4778_eq
  unfold live4778 coloured4778 at child
  try dsimp only [live4780, coloured4780]
  rw [child]
  dsimp only [result4778]
  have child := node4779_eq
  unfold live4779 coloured4779 at child
  try dsimp only [live4780, coloured4780]
  rw [child]
  dsimp only [result4779]
  try dsimp only [colour, result4780]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4781_agree : tree4781 = literal4781 := by
  rw [tree4781_def]
  rfl
theorem node4781_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4781 live4781 coloured4781 = result4781 := by
  rw [tree4781_def]
  try dsimp only [colour, result4781]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4782_agree : tree4782 = literal4782 := by
  rw [tree4782_def, tree4780_agree, tree4781_agree]
  rfl
theorem node4782_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4782 live4782 coloured4782 = result4782 := by
  rw [tree4782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4780_eq
  unfold live4780 coloured4780 at child
  try dsimp only [live4782, coloured4782]
  rw [child]
  dsimp only [result4780]
  have child := node4781_eq
  unfold live4781 coloured4781 at child
  try dsimp only [live4782, coloured4782]
  rw [child]
  dsimp only [result4781]
  try dsimp only [colour, result4782]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4783_agree : tree4783 = literal4783 := by
  rw [tree4783_def]
  rfl
theorem node4783_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4783 live4783 coloured4783 = result4783 := by
  rw [tree4783_def]
  try dsimp only [colour, result4783]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4784_agree : tree4784 = literal4784 := by
  rw [tree4784_def, tree4782_agree, tree4783_agree]
  rfl
theorem node4784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4784 live4784 coloured4784 = result4784 := by
  rw [tree4784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4782_eq
  unfold live4782 coloured4782 at child
  try dsimp only [live4784, coloured4784]
  rw [child]
  dsimp only [result4782]
  have child := node4783_eq
  unfold live4783 coloured4783 at child
  try dsimp only [live4784, coloured4784]
  rw [child]
  dsimp only [result4783]
  try dsimp only [colour, result4784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4785_agree : tree4785 = literal4785 := by
  rw [tree4785_def]
  rfl
theorem node4785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4785 live4785 coloured4785 = result4785 := by
  rw [tree4785_def]
  try dsimp only [colour, result4785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4786_agree : tree4786 = literal4786 := by
  rw [tree4786_def, tree4784_agree, tree4785_agree]
  rfl
theorem node4786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4786 live4786 coloured4786 = result4786 := by
  rw [tree4786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4784_eq
  unfold live4784 coloured4784 at child
  try dsimp only [live4786, coloured4786]
  rw [child]
  dsimp only [result4784]
  have child := node4785_eq
  unfold live4785 coloured4785 at child
  try dsimp only [live4786, coloured4786]
  rw [child]
  dsimp only [result4785]
  try dsimp only [colour, result4786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4787_agree : tree4787 = literal4787 := by
  rw [tree4787_def]
  rfl
theorem node4787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4787 live4787 coloured4787 = result4787 := by
  rw [tree4787_def]
  try dsimp only [colour, result4787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4788_agree : tree4788 = literal4788 := by
  rw [tree4788_def, tree4786_agree, tree4787_agree]
  rfl
theorem node4788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4788 live4788 coloured4788 = result4788 := by
  rw [tree4788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4786_eq
  unfold live4786 coloured4786 at child
  try dsimp only [live4788, coloured4788]
  rw [child]
  dsimp only [result4786]
  have child := node4787_eq
  unfold live4787 coloured4787 at child
  try dsimp only [live4788, coloured4788]
  rw [child]
  dsimp only [result4787]
  try dsimp only [colour, result4788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4789_agree : tree4789 = literal4789 := by
  rw [tree4789_def]
  rfl
theorem node4789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4789 live4789 coloured4789 = result4789 := by
  rw [tree4789_def]
  try dsimp only [colour, result4789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4790_agree : tree4790 = literal4790 := by
  rw [tree4790_def, tree4788_agree, tree4789_agree]
  rfl
theorem node4790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4790 live4790 coloured4790 = result4790 := by
  rw [tree4790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4788_eq
  unfold live4788 coloured4788 at child
  try dsimp only [live4790, coloured4790]
  rw [child]
  dsimp only [result4788]
  have child := node4789_eq
  unfold live4789 coloured4789 at child
  try dsimp only [live4790, coloured4790]
  rw [child]
  dsimp only [result4789]
  try dsimp only [colour, result4790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4791_agree : tree4791 = literal4791 := by
  rw [tree4791_def]
  rfl
theorem node4791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4791 live4791 coloured4791 = result4791 := by
  rw [tree4791_def]
  try dsimp only [colour, result4791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4792_agree : tree4792 = literal4792 := by
  rw [tree4792_def, tree4790_agree, tree4791_agree]
  rfl
theorem node4792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4792 live4792 coloured4792 = result4792 := by
  rw [tree4792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4790_eq
  unfold live4790 coloured4790 at child
  try dsimp only [live4792, coloured4792]
  rw [child]
  dsimp only [result4790]
  have child := node4791_eq
  unfold live4791 coloured4791 at child
  try dsimp only [live4792, coloured4792]
  rw [child]
  dsimp only [result4791]
  try dsimp only [colour, result4792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4793_agree : tree4793 = literal4793 := by
  rw [tree4793_def]
  rfl
theorem node4793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4793 live4793 coloured4793 = result4793 := by
  rw [tree4793_def]
  try dsimp only [colour, result4793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4794_agree : tree4794 = literal4794 := by
  rw [tree4794_def, tree4792_agree, tree4793_agree]
  rfl
theorem node4794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4794 live4794 coloured4794 = result4794 := by
  rw [tree4794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4792_eq
  unfold live4792 coloured4792 at child
  try dsimp only [live4794, coloured4794]
  rw [child]
  dsimp only [result4792]
  have child := node4793_eq
  unfold live4793 coloured4793 at child
  try dsimp only [live4794, coloured4794]
  rw [child]
  dsimp only [result4793]
  try dsimp only [colour, result4794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4795_agree : tree4795 = literal4795 := by
  rw [tree4795_def]
  rfl
theorem node4795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4795 live4795 coloured4795 = result4795 := by
  rw [tree4795_def]
  try dsimp only [colour, result4795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4796_agree : tree4796 = literal4796 := by
  rw [tree4796_def, tree4794_agree, tree4795_agree]
  rfl
theorem node4796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4796 live4796 coloured4796 = result4796 := by
  rw [tree4796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4794_eq
  unfold live4794 coloured4794 at child
  try dsimp only [live4796, coloured4796]
  rw [child]
  dsimp only [result4794]
  have child := node4795_eq
  unfold live4795 coloured4795 at child
  try dsimp only [live4796, coloured4796]
  rw [child]
  dsimp only [result4795]
  try dsimp only [colour, result4796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4797_agree : tree4797 = literal4797 := by
  rw [tree4797_def]
  rfl
theorem node4797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4797 live4797 coloured4797 = result4797 := by
  rw [tree4797_def]
  try dsimp only [colour, result4797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4798_agree : tree4798 = literal4798 := by
  rw [tree4798_def, tree4796_agree, tree4797_agree]
  rfl
theorem node4798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4798 live4798 coloured4798 = result4798 := by
  rw [tree4798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4796_eq
  unfold live4796 coloured4796 at child
  try dsimp only [live4798, coloured4798]
  rw [child]
  dsimp only [result4796]
  have child := node4797_eq
  unfold live4797 coloured4797 at child
  try dsimp only [live4798, coloured4798]
  rw [child]
  dsimp only [result4797]
  try dsimp only [colour, result4798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4799_agree : tree4799 = literal4799 := by
  rw [tree4799_def]
  rfl
theorem node4799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4799 live4799 coloured4799 = result4799 := by
  rw [tree4799_def]
  try dsimp only [colour, result4799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
