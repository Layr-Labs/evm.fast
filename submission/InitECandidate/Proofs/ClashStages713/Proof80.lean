import InitECandidate.Proofs.ClashStages713.Proof79
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree7680_agree : tree7680 = literal7680 := by
  rw [tree7680_def, tree7678_agree, tree7679_agree]
  rfl
theorem node7680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7680 live7680 coloured7680 = result7680 := by
  rw [tree7680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7678_eq
  unfold live7678 coloured7678 at child
  try dsimp only [live7680, coloured7680]
  rw [child]
  dsimp only [result7678]
  have child := node7679_eq
  unfold live7679 coloured7679 at child
  try dsimp only [live7680, coloured7680]
  rw [child]
  dsimp only [result7679]
  try dsimp only [colour, result7680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7681_agree : tree7681 = literal7681 := by
  rw [tree7681_def]
  rfl
theorem node7681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7681 live7681 coloured7681 = result7681 := by
  rw [tree7681_def]
  try dsimp only [colour, result7681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7682_agree : tree7682 = literal7682 := by
  rw [tree7682_def, tree7680_agree, tree7681_agree]
  rfl
theorem node7682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7682 live7682 coloured7682 = result7682 := by
  rw [tree7682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7680_eq
  unfold live7680 coloured7680 at child
  try dsimp only [live7682, coloured7682]
  rw [child]
  dsimp only [result7680]
  have child := node7681_eq
  unfold live7681 coloured7681 at child
  try dsimp only [live7682, coloured7682]
  rw [child]
  dsimp only [result7681]
  try dsimp only [colour, result7682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7683_agree : tree7683 = literal7683 := by
  rw [tree7683_def]
  rfl
theorem node7683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7683 live7683 coloured7683 = result7683 := by
  rw [tree7683_def]
  try dsimp only [colour, result7683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7684_agree : tree7684 = literal7684 := by
  rw [tree7684_def, tree7682_agree, tree7683_agree]
  rfl
theorem node7684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7684 live7684 coloured7684 = result7684 := by
  rw [tree7684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7682_eq
  unfold live7682 coloured7682 at child
  try dsimp only [live7684, coloured7684]
  rw [child]
  dsimp only [result7682]
  have child := node7683_eq
  unfold live7683 coloured7683 at child
  try dsimp only [live7684, coloured7684]
  rw [child]
  dsimp only [result7683]
  try dsimp only [colour, result7684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7685_agree : tree7685 = literal7685 := by
  rw [tree7685_def]
  rfl
theorem node7685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7685 live7685 coloured7685 = result7685 := by
  rw [tree7685_def]
  try dsimp only [colour, result7685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7686_agree : tree7686 = literal7686 := by
  rw [tree7686_def, tree7684_agree, tree7685_agree]
  rfl
theorem node7686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7686 live7686 coloured7686 = result7686 := by
  rw [tree7686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7684_eq
  unfold live7684 coloured7684 at child
  try dsimp only [live7686, coloured7686]
  rw [child]
  dsimp only [result7684]
  have child := node7685_eq
  unfold live7685 coloured7685 at child
  try dsimp only [live7686, coloured7686]
  rw [child]
  dsimp only [result7685]
  try dsimp only [colour, result7686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7687_agree : tree7687 = literal7687 := by
  rw [tree7687_def]
  rfl
theorem node7687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7687 live7687 coloured7687 = result7687 := by
  rw [tree7687_def]
  try dsimp only [colour, result7687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7688_agree : tree7688 = literal7688 := by
  rw [tree7688_def, tree7686_agree, tree7687_agree]
  rfl
theorem node7688_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7688 live7688 coloured7688 = result7688 := by
  rw [tree7688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7686_eq
  unfold live7686 coloured7686 at child
  try dsimp only [live7688, coloured7688]
  rw [child]
  dsimp only [result7686]
  have child := node7687_eq
  unfold live7687 coloured7687 at child
  try dsimp only [live7688, coloured7688]
  rw [child]
  dsimp only [result7687]
  try dsimp only [colour, result7688]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7689_agree : tree7689 = literal7689 := by
  rw [tree7689_def]
  rfl
theorem node7689_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7689 live7689 coloured7689 = result7689 := by
  rw [tree7689_def]
  try dsimp only [colour, result7689]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7690_agree : tree7690 = literal7690 := by
  rw [tree7690_def, tree7688_agree, tree7689_agree]
  rfl
theorem node7690_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7690 live7690 coloured7690 = result7690 := by
  rw [tree7690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7688_eq
  unfold live7688 coloured7688 at child
  try dsimp only [live7690, coloured7690]
  rw [child]
  dsimp only [result7688]
  have child := node7689_eq
  unfold live7689 coloured7689 at child
  try dsimp only [live7690, coloured7690]
  rw [child]
  dsimp only [result7689]
  try dsimp only [colour, result7690]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7691_agree : tree7691 = literal7691 := by
  rw [tree7691_def]
  rfl
theorem node7691_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7691 live7691 coloured7691 = result7691 := by
  rw [tree7691_def]
  try dsimp only [colour, result7691]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7692_agree : tree7692 = literal7692 := by
  rw [tree7692_def, tree7690_agree, tree7691_agree]
  rfl
theorem node7692_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7692 live7692 coloured7692 = result7692 := by
  rw [tree7692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7690_eq
  unfold live7690 coloured7690 at child
  try dsimp only [live7692, coloured7692]
  rw [child]
  dsimp only [result7690]
  have child := node7691_eq
  unfold live7691 coloured7691 at child
  try dsimp only [live7692, coloured7692]
  rw [child]
  dsimp only [result7691]
  try dsimp only [colour, result7692]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7693_agree : tree7693 = literal7693 := by
  rw [tree7693_def]
  rfl
theorem node7693_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7693 live7693 coloured7693 = result7693 := by
  rw [tree7693_def]
  try dsimp only [colour, result7693]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7694_agree : tree7694 = literal7694 := by
  rw [tree7694_def, tree7692_agree, tree7693_agree]
  rfl
theorem node7694_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7694 live7694 coloured7694 = result7694 := by
  rw [tree7694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7692_eq
  unfold live7692 coloured7692 at child
  try dsimp only [live7694, coloured7694]
  rw [child]
  dsimp only [result7692]
  have child := node7693_eq
  unfold live7693 coloured7693 at child
  try dsimp only [live7694, coloured7694]
  rw [child]
  dsimp only [result7693]
  try dsimp only [colour, result7694]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7695_agree : tree7695 = literal7695 := by
  rw [tree7695_def]
  rfl
theorem node7695_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7695 live7695 coloured7695 = result7695 := by
  rw [tree7695_def]
  try dsimp only [colour, result7695]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7696_agree : tree7696 = literal7696 := by
  rw [tree7696_def, tree7694_agree, tree7695_agree]
  rfl
theorem node7696_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7696 live7696 coloured7696 = result7696 := by
  rw [tree7696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7694_eq
  unfold live7694 coloured7694 at child
  try dsimp only [live7696, coloured7696]
  rw [child]
  dsimp only [result7694]
  have child := node7695_eq
  unfold live7695 coloured7695 at child
  try dsimp only [live7696, coloured7696]
  rw [child]
  dsimp only [result7695]
  try dsimp only [colour, result7696]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7697_agree : tree7697 = literal7697 := by
  rw [tree7697_def]
  rfl
theorem node7697_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7697 live7697 coloured7697 = result7697 := by
  rw [tree7697_def]
  try dsimp only [colour, result7697]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7698_agree : tree7698 = literal7698 := by
  rw [tree7698_def, tree7696_agree, tree7697_agree]
  rfl
theorem node7698_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7698 live7698 coloured7698 = result7698 := by
  rw [tree7698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7696_eq
  unfold live7696 coloured7696 at child
  try dsimp only [live7698, coloured7698]
  rw [child]
  dsimp only [result7696]
  have child := node7697_eq
  unfold live7697 coloured7697 at child
  try dsimp only [live7698, coloured7698]
  rw [child]
  dsimp only [result7697]
  try dsimp only [colour, result7698]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7699_agree : tree7699 = literal7699 := by
  rw [tree7699_def]
  rfl
theorem node7699_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7699 live7699 coloured7699 = result7699 := by
  rw [tree7699_def]
  try dsimp only [colour, result7699]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7700_agree : tree7700 = literal7700 := by
  rw [tree7700_def, tree7698_agree, tree7699_agree]
  rfl
theorem node7700_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7700 live7700 coloured7700 = result7700 := by
  rw [tree7700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7698_eq
  unfold live7698 coloured7698 at child
  try dsimp only [live7700, coloured7700]
  rw [child]
  dsimp only [result7698]
  have child := node7699_eq
  unfold live7699 coloured7699 at child
  try dsimp only [live7700, coloured7700]
  rw [child]
  dsimp only [result7699]
  try dsimp only [colour, result7700]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7701_agree : tree7701 = literal7701 := by
  rw [tree7701_def]
  rfl
theorem node7701_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7701 live7701 coloured7701 = result7701 := by
  rw [tree7701_def]
  try dsimp only [colour, result7701]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7702_agree : tree7702 = literal7702 := by
  rw [tree7702_def, tree7700_agree, tree7701_agree]
  rfl
theorem node7702_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7702 live7702 coloured7702 = result7702 := by
  rw [tree7702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7700_eq
  unfold live7700 coloured7700 at child
  try dsimp only [live7702, coloured7702]
  rw [child]
  dsimp only [result7700]
  have child := node7701_eq
  unfold live7701 coloured7701 at child
  try dsimp only [live7702, coloured7702]
  rw [child]
  dsimp only [result7701]
  try dsimp only [colour, result7702]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7703_agree : tree7703 = literal7703 := by
  rw [tree7703_def]
  rfl
theorem node7703_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7703 live7703 coloured7703 = result7703 := by
  rw [tree7703_def]
  try dsimp only [colour, result7703]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7704_agree : tree7704 = literal7704 := by
  rw [tree7704_def, tree7702_agree, tree7703_agree]
  rfl
theorem node7704_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7704 live7704 coloured7704 = result7704 := by
  rw [tree7704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7702_eq
  unfold live7702 coloured7702 at child
  try dsimp only [live7704, coloured7704]
  rw [child]
  dsimp only [result7702]
  have child := node7703_eq
  unfold live7703 coloured7703 at child
  try dsimp only [live7704, coloured7704]
  rw [child]
  dsimp only [result7703]
  try dsimp only [colour, result7704]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7705_agree : tree7705 = literal7705 := by
  rw [tree7705_def]
  rfl
theorem node7705_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7705 live7705 coloured7705 = result7705 := by
  rw [tree7705_def]
  try dsimp only [colour, result7705]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7706_agree : tree7706 = literal7706 := by
  rw [tree7706_def, tree7704_agree, tree7705_agree]
  rfl
theorem node7706_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7706 live7706 coloured7706 = result7706 := by
  rw [tree7706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7704_eq
  unfold live7704 coloured7704 at child
  try dsimp only [live7706, coloured7706]
  rw [child]
  dsimp only [result7704]
  have child := node7705_eq
  unfold live7705 coloured7705 at child
  try dsimp only [live7706, coloured7706]
  rw [child]
  dsimp only [result7705]
  try dsimp only [colour, result7706]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7707_agree : tree7707 = literal7707 := by
  rw [tree7707_def]
  rfl
theorem node7707_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7707 live7707 coloured7707 = result7707 := by
  rw [tree7707_def]
  try dsimp only [colour, result7707]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7708_agree : tree7708 = literal7708 := by
  rw [tree7708_def, tree7706_agree, tree7707_agree]
  rfl
theorem node7708_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7708 live7708 coloured7708 = result7708 := by
  rw [tree7708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7706_eq
  unfold live7706 coloured7706 at child
  try dsimp only [live7708, coloured7708]
  rw [child]
  dsimp only [result7706]
  have child := node7707_eq
  unfold live7707 coloured7707 at child
  try dsimp only [live7708, coloured7708]
  rw [child]
  dsimp only [result7707]
  try dsimp only [colour, result7708]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7709_agree : tree7709 = literal7709 := by
  rw [tree7709_def]
  rfl
theorem node7709_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7709 live7709 coloured7709 = result7709 := by
  rw [tree7709_def]
  try dsimp only [colour, result7709]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7710_agree : tree7710 = literal7710 := by
  rw [tree7710_def, tree7708_agree, tree7709_agree]
  rfl
theorem node7710_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7710 live7710 coloured7710 = result7710 := by
  rw [tree7710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7708_eq
  unfold live7708 coloured7708 at child
  try dsimp only [live7710, coloured7710]
  rw [child]
  dsimp only [result7708]
  have child := node7709_eq
  unfold live7709 coloured7709 at child
  try dsimp only [live7710, coloured7710]
  rw [child]
  dsimp only [result7709]
  try dsimp only [colour, result7710]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7711_agree : tree7711 = literal7711 := by
  rw [tree7711_def]
  rfl
theorem node7711_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7711 live7711 coloured7711 = result7711 := by
  rw [tree7711_def]
  try dsimp only [colour, result7711]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7712_agree : tree7712 = literal7712 := by
  rw [tree7712_def, tree7710_agree, tree7711_agree]
  rfl
theorem node7712_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7712 live7712 coloured7712 = result7712 := by
  rw [tree7712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7710_eq
  unfold live7710 coloured7710 at child
  try dsimp only [live7712, coloured7712]
  rw [child]
  dsimp only [result7710]
  have child := node7711_eq
  unfold live7711 coloured7711 at child
  try dsimp only [live7712, coloured7712]
  rw [child]
  dsimp only [result7711]
  try dsimp only [colour, result7712]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7713_agree : tree7713 = literal7713 := by
  rw [tree7713_def]
  rfl
theorem node7713_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7713 live7713 coloured7713 = result7713 := by
  rw [tree7713_def]
  try dsimp only [colour, result7713]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7714_agree : tree7714 = literal7714 := by
  rw [tree7714_def, tree7712_agree, tree7713_agree]
  rfl
theorem node7714_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7714 live7714 coloured7714 = result7714 := by
  rw [tree7714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7712_eq
  unfold live7712 coloured7712 at child
  try dsimp only [live7714, coloured7714]
  rw [child]
  dsimp only [result7712]
  have child := node7713_eq
  unfold live7713 coloured7713 at child
  try dsimp only [live7714, coloured7714]
  rw [child]
  dsimp only [result7713]
  try dsimp only [colour, result7714]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7715_agree : tree7715 = literal7715 := by
  rw [tree7715_def]
  rfl
theorem node7715_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7715 live7715 coloured7715 = result7715 := by
  rw [tree7715_def]
  try dsimp only [colour, result7715]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7716_agree : tree7716 = literal7716 := by
  rw [tree7716_def, tree7714_agree, tree7715_agree]
  rfl
theorem node7716_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7716 live7716 coloured7716 = result7716 := by
  rw [tree7716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7714_eq
  unfold live7714 coloured7714 at child
  try dsimp only [live7716, coloured7716]
  rw [child]
  dsimp only [result7714]
  have child := node7715_eq
  unfold live7715 coloured7715 at child
  try dsimp only [live7716, coloured7716]
  rw [child]
  dsimp only [result7715]
  try dsimp only [colour, result7716]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7717_agree : tree7717 = literal7717 := by
  rw [tree7717_def]
  rfl
theorem node7717_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7717 live7717 coloured7717 = result7717 := by
  rw [tree7717_def]
  try dsimp only [colour, result7717]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7718_agree : tree7718 = literal7718 := by
  rw [tree7718_def, tree7716_agree, tree7717_agree]
  rfl
theorem node7718_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7718 live7718 coloured7718 = result7718 := by
  rw [tree7718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7716_eq
  unfold live7716 coloured7716 at child
  try dsimp only [live7718, coloured7718]
  rw [child]
  dsimp only [result7716]
  have child := node7717_eq
  unfold live7717 coloured7717 at child
  try dsimp only [live7718, coloured7718]
  rw [child]
  dsimp only [result7717]
  try dsimp only [colour, result7718]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7719_agree : tree7719 = literal7719 := by
  rw [tree7719_def]
  rfl
theorem node7719_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7719 live7719 coloured7719 = result7719 := by
  rw [tree7719_def]
  try dsimp only [colour, result7719]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7720_agree : tree7720 = literal7720 := by
  rw [tree7720_def, tree7718_agree, tree7719_agree]
  rfl
theorem node7720_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7720 live7720 coloured7720 = result7720 := by
  rw [tree7720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7718_eq
  unfold live7718 coloured7718 at child
  try dsimp only [live7720, coloured7720]
  rw [child]
  dsimp only [result7718]
  have child := node7719_eq
  unfold live7719 coloured7719 at child
  try dsimp only [live7720, coloured7720]
  rw [child]
  dsimp only [result7719]
  try dsimp only [colour, result7720]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7721_agree : tree7721 = literal7721 := by
  rw [tree7721_def]
  rfl
theorem node7721_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7721 live7721 coloured7721 = result7721 := by
  rw [tree7721_def]
  try dsimp only [colour, result7721]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7722_agree : tree7722 = literal7722 := by
  rw [tree7722_def, tree7720_agree, tree7721_agree]
  rfl
theorem node7722_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7722 live7722 coloured7722 = result7722 := by
  rw [tree7722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7720_eq
  unfold live7720 coloured7720 at child
  try dsimp only [live7722, coloured7722]
  rw [child]
  dsimp only [result7720]
  have child := node7721_eq
  unfold live7721 coloured7721 at child
  try dsimp only [live7722, coloured7722]
  rw [child]
  dsimp only [result7721]
  try dsimp only [colour, result7722]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7723_agree : tree7723 = literal7723 := by
  rw [tree7723_def]
  rfl
theorem node7723_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7723 live7723 coloured7723 = result7723 := by
  rw [tree7723_def]
  try dsimp only [colour, result7723]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7724_agree : tree7724 = literal7724 := by
  rw [tree7724_def, tree7722_agree, tree7723_agree]
  rfl
theorem node7724_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7724 live7724 coloured7724 = result7724 := by
  rw [tree7724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7722_eq
  unfold live7722 coloured7722 at child
  try dsimp only [live7724, coloured7724]
  rw [child]
  dsimp only [result7722]
  have child := node7723_eq
  unfold live7723 coloured7723 at child
  try dsimp only [live7724, coloured7724]
  rw [child]
  dsimp only [result7723]
  try dsimp only [colour, result7724]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7725_agree : tree7725 = literal7725 := by
  rw [tree7725_def]
  rfl
theorem node7725_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7725 live7725 coloured7725 = result7725 := by
  rw [tree7725_def]
  try dsimp only [colour, result7725]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7726_agree : tree7726 = literal7726 := by
  rw [tree7726_def, tree7724_agree, tree7725_agree]
  rfl
theorem node7726_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7726 live7726 coloured7726 = result7726 := by
  rw [tree7726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7724_eq
  unfold live7724 coloured7724 at child
  try dsimp only [live7726, coloured7726]
  rw [child]
  dsimp only [result7724]
  have child := node7725_eq
  unfold live7725 coloured7725 at child
  try dsimp only [live7726, coloured7726]
  rw [child]
  dsimp only [result7725]
  try dsimp only [colour, result7726]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7727_agree : tree7727 = literal7727 := by
  rw [tree7727_def]
  rfl
theorem node7727_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7727 live7727 coloured7727 = result7727 := by
  rw [tree7727_def]
  try dsimp only [colour, result7727]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7728_agree : tree7728 = literal7728 := by
  rw [tree7728_def, tree7726_agree, tree7727_agree]
  rfl
theorem node7728_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7728 live7728 coloured7728 = result7728 := by
  rw [tree7728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7726_eq
  unfold live7726 coloured7726 at child
  try dsimp only [live7728, coloured7728]
  rw [child]
  dsimp only [result7726]
  have child := node7727_eq
  unfold live7727 coloured7727 at child
  try dsimp only [live7728, coloured7728]
  rw [child]
  dsimp only [result7727]
  try dsimp only [colour, result7728]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7729_agree : tree7729 = literal7729 := by
  rw [tree7729_def]
  rfl
theorem node7729_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7729 live7729 coloured7729 = result7729 := by
  rw [tree7729_def]
  try dsimp only [colour, result7729]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7730_agree : tree7730 = literal7730 := by
  rw [tree7730_def, tree7728_agree, tree7729_agree]
  rfl
theorem node7730_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7730 live7730 coloured7730 = result7730 := by
  rw [tree7730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7728_eq
  unfold live7728 coloured7728 at child
  try dsimp only [live7730, coloured7730]
  rw [child]
  dsimp only [result7728]
  have child := node7729_eq
  unfold live7729 coloured7729 at child
  try dsimp only [live7730, coloured7730]
  rw [child]
  dsimp only [result7729]
  try dsimp only [colour, result7730]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7731_agree : tree7731 = literal7731 := by
  rw [tree7731_def]
  rfl
theorem node7731_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7731 live7731 coloured7731 = result7731 := by
  rw [tree7731_def]
  try dsimp only [colour, result7731]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7732_agree : tree7732 = literal7732 := by
  rw [tree7732_def, tree7730_agree, tree7731_agree]
  rfl
theorem node7732_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7732 live7732 coloured7732 = result7732 := by
  rw [tree7732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7730_eq
  unfold live7730 coloured7730 at child
  try dsimp only [live7732, coloured7732]
  rw [child]
  dsimp only [result7730]
  have child := node7731_eq
  unfold live7731 coloured7731 at child
  try dsimp only [live7732, coloured7732]
  rw [child]
  dsimp only [result7731]
  try dsimp only [colour, result7732]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7733_agree : tree7733 = literal7733 := by
  rw [tree7733_def]
  rfl
theorem node7733_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7733 live7733 coloured7733 = result7733 := by
  rw [tree7733_def]
  try dsimp only [colour, result7733]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7734_agree : tree7734 = literal7734 := by
  rw [tree7734_def, tree7732_agree, tree7733_agree]
  rfl
theorem node7734_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7734 live7734 coloured7734 = result7734 := by
  rw [tree7734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7732_eq
  unfold live7732 coloured7732 at child
  try dsimp only [live7734, coloured7734]
  rw [child]
  dsimp only [result7732]
  have child := node7733_eq
  unfold live7733 coloured7733 at child
  try dsimp only [live7734, coloured7734]
  rw [child]
  dsimp only [result7733]
  try dsimp only [colour, result7734]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7735_agree : tree7735 = literal7735 := by
  rw [tree7735_def]
  rfl
theorem node7735_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7735 live7735 coloured7735 = result7735 := by
  rw [tree7735_def]
  try dsimp only [colour, result7735]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7736_agree : tree7736 = literal7736 := by
  rw [tree7736_def, tree7734_agree, tree7735_agree]
  rfl
theorem node7736_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7736 live7736 coloured7736 = result7736 := by
  rw [tree7736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7734_eq
  unfold live7734 coloured7734 at child
  try dsimp only [live7736, coloured7736]
  rw [child]
  dsimp only [result7734]
  have child := node7735_eq
  unfold live7735 coloured7735 at child
  try dsimp only [live7736, coloured7736]
  rw [child]
  dsimp only [result7735]
  try dsimp only [colour, result7736]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7737_agree : tree7737 = literal7737 := by
  rw [tree7737_def]
  rfl
theorem node7737_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7737 live7737 coloured7737 = result7737 := by
  rw [tree7737_def]
  try dsimp only [colour, result7737]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7738_agree : tree7738 = literal7738 := by
  rw [tree7738_def, tree7736_agree, tree7737_agree]
  rfl
theorem node7738_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7738 live7738 coloured7738 = result7738 := by
  rw [tree7738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7736_eq
  unfold live7736 coloured7736 at child
  try dsimp only [live7738, coloured7738]
  rw [child]
  dsimp only [result7736]
  have child := node7737_eq
  unfold live7737 coloured7737 at child
  try dsimp only [live7738, coloured7738]
  rw [child]
  dsimp only [result7737]
  try dsimp only [colour, result7738]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7739_agree : tree7739 = literal7739 := by
  rw [tree7739_def]
  rfl
theorem node7739_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7739 live7739 coloured7739 = result7739 := by
  rw [tree7739_def]
  try dsimp only [colour, result7739]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7740_agree : tree7740 = literal7740 := by
  rw [tree7740_def, tree7738_agree, tree7739_agree]
  rfl
theorem node7740_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7740 live7740 coloured7740 = result7740 := by
  rw [tree7740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7738_eq
  unfold live7738 coloured7738 at child
  try dsimp only [live7740, coloured7740]
  rw [child]
  dsimp only [result7738]
  have child := node7739_eq
  unfold live7739 coloured7739 at child
  try dsimp only [live7740, coloured7740]
  rw [child]
  dsimp only [result7739]
  try dsimp only [colour, result7740]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7741_agree : tree7741 = literal7741 := by
  rw [tree7741_def]
  rfl
theorem node7741_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7741 live7741 coloured7741 = result7741 := by
  rw [tree7741_def]
  try dsimp only [colour, result7741]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7742_agree : tree7742 = literal7742 := by
  rw [tree7742_def, tree7740_agree, tree7741_agree]
  rfl
theorem node7742_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7742 live7742 coloured7742 = result7742 := by
  rw [tree7742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7740_eq
  unfold live7740 coloured7740 at child
  try dsimp only [live7742, coloured7742]
  rw [child]
  dsimp only [result7740]
  have child := node7741_eq
  unfold live7741 coloured7741 at child
  try dsimp only [live7742, coloured7742]
  rw [child]
  dsimp only [result7741]
  try dsimp only [colour, result7742]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7743_agree : tree7743 = literal7743 := by
  rw [tree7743_def]
  rfl
theorem node7743_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7743 live7743 coloured7743 = result7743 := by
  rw [tree7743_def]
  try dsimp only [colour, result7743]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7744_agree : tree7744 = literal7744 := by
  rw [tree7744_def, tree7742_agree, tree7743_agree]
  rfl
theorem node7744_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7744 live7744 coloured7744 = result7744 := by
  rw [tree7744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7742_eq
  unfold live7742 coloured7742 at child
  try dsimp only [live7744, coloured7744]
  rw [child]
  dsimp only [result7742]
  have child := node7743_eq
  unfold live7743 coloured7743 at child
  try dsimp only [live7744, coloured7744]
  rw [child]
  dsimp only [result7743]
  try dsimp only [colour, result7744]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7745_agree : tree7745 = literal7745 := by
  rw [tree7745_def]
  rfl
theorem node7745_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7745 live7745 coloured7745 = result7745 := by
  rw [tree7745_def]
  try dsimp only [colour, result7745]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7746_agree : tree7746 = literal7746 := by
  rw [tree7746_def, tree7744_agree, tree7745_agree]
  rfl
theorem node7746_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7746 live7746 coloured7746 = result7746 := by
  rw [tree7746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7744_eq
  unfold live7744 coloured7744 at child
  try dsimp only [live7746, coloured7746]
  rw [child]
  dsimp only [result7744]
  have child := node7745_eq
  unfold live7745 coloured7745 at child
  try dsimp only [live7746, coloured7746]
  rw [child]
  dsimp only [result7745]
  try dsimp only [colour, result7746]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7747_agree : tree7747 = literal7747 := by
  rw [tree7747_def]
  rfl
theorem node7747_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7747 live7747 coloured7747 = result7747 := by
  rw [tree7747_def]
  try dsimp only [colour, result7747]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7748_agree : tree7748 = literal7748 := by
  rw [tree7748_def, tree7746_agree, tree7747_agree]
  rfl
theorem node7748_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7748 live7748 coloured7748 = result7748 := by
  rw [tree7748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7746_eq
  unfold live7746 coloured7746 at child
  try dsimp only [live7748, coloured7748]
  rw [child]
  dsimp only [result7746]
  have child := node7747_eq
  unfold live7747 coloured7747 at child
  try dsimp only [live7748, coloured7748]
  rw [child]
  dsimp only [result7747]
  try dsimp only [colour, result7748]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7749_agree : tree7749 = literal7749 := by
  rw [tree7749_def]
  rfl
theorem node7749_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7749 live7749 coloured7749 = result7749 := by
  rw [tree7749_def]
  try dsimp only [colour, result7749]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7750_agree : tree7750 = literal7750 := by
  rw [tree7750_def, tree7748_agree, tree7749_agree]
  rfl
theorem node7750_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7750 live7750 coloured7750 = result7750 := by
  rw [tree7750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7748_eq
  unfold live7748 coloured7748 at child
  try dsimp only [live7750, coloured7750]
  rw [child]
  dsimp only [result7748]
  have child := node7749_eq
  unfold live7749 coloured7749 at child
  try dsimp only [live7750, coloured7750]
  rw [child]
  dsimp only [result7749]
  try dsimp only [colour, result7750]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7751_agree : tree7751 = literal7751 := by
  rw [tree7751_def]
  rfl
theorem node7751_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7751 live7751 coloured7751 = result7751 := by
  rw [tree7751_def]
  try dsimp only [colour, result7751]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7752_agree : tree7752 = literal7752 := by
  rw [tree7752_def, tree7750_agree, tree7751_agree]
  rfl
theorem node7752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7752 live7752 coloured7752 = result7752 := by
  rw [tree7752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7750_eq
  unfold live7750 coloured7750 at child
  try dsimp only [live7752, coloured7752]
  rw [child]
  dsimp only [result7750]
  have child := node7751_eq
  unfold live7751 coloured7751 at child
  try dsimp only [live7752, coloured7752]
  rw [child]
  dsimp only [result7751]
  try dsimp only [colour, result7752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7753_agree : tree7753 = literal7753 := by
  rw [tree7753_def]
  rfl
theorem node7753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7753 live7753 coloured7753 = result7753 := by
  rw [tree7753_def]
  try dsimp only [colour, result7753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7754_agree : tree7754 = literal7754 := by
  rw [tree7754_def, tree7752_agree, tree7753_agree]
  rfl
theorem node7754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7754 live7754 coloured7754 = result7754 := by
  rw [tree7754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7752_eq
  unfold live7752 coloured7752 at child
  try dsimp only [live7754, coloured7754]
  rw [child]
  dsimp only [result7752]
  have child := node7753_eq
  unfold live7753 coloured7753 at child
  try dsimp only [live7754, coloured7754]
  rw [child]
  dsimp only [result7753]
  try dsimp only [colour, result7754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7755_agree : tree7755 = literal7755 := by
  rw [tree7755_def]
  rfl
theorem node7755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7755 live7755 coloured7755 = result7755 := by
  rw [tree7755_def]
  try dsimp only [colour, result7755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7756_agree : tree7756 = literal7756 := by
  rw [tree7756_def, tree7754_agree, tree7755_agree]
  rfl
theorem node7756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7756 live7756 coloured7756 = result7756 := by
  rw [tree7756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7754_eq
  unfold live7754 coloured7754 at child
  try dsimp only [live7756, coloured7756]
  rw [child]
  dsimp only [result7754]
  have child := node7755_eq
  unfold live7755 coloured7755 at child
  try dsimp only [live7756, coloured7756]
  rw [child]
  dsimp only [result7755]
  try dsimp only [colour, result7756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7757_agree : tree7757 = literal7757 := by
  rw [tree7757_def]
  rfl
theorem node7757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7757 live7757 coloured7757 = result7757 := by
  rw [tree7757_def]
  try dsimp only [colour, result7757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7758_agree : tree7758 = literal7758 := by
  rw [tree7758_def, tree7756_agree, tree7757_agree]
  rfl
theorem node7758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7758 live7758 coloured7758 = result7758 := by
  rw [tree7758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7756_eq
  unfold live7756 coloured7756 at child
  try dsimp only [live7758, coloured7758]
  rw [child]
  dsimp only [result7756]
  have child := node7757_eq
  unfold live7757 coloured7757 at child
  try dsimp only [live7758, coloured7758]
  rw [child]
  dsimp only [result7757]
  try dsimp only [colour, result7758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7759_agree : tree7759 = literal7759 := by
  rw [tree7759_def]
  rfl
theorem node7759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7759 live7759 coloured7759 = result7759 := by
  rw [tree7759_def]
  try dsimp only [colour, result7759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7760_agree : tree7760 = literal7760 := by
  rw [tree7760_def, tree7758_agree, tree7759_agree]
  rfl
theorem node7760_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7760 live7760 coloured7760 = result7760 := by
  rw [tree7760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7758_eq
  unfold live7758 coloured7758 at child
  try dsimp only [live7760, coloured7760]
  rw [child]
  dsimp only [result7758]
  have child := node7759_eq
  unfold live7759 coloured7759 at child
  try dsimp only [live7760, coloured7760]
  rw [child]
  dsimp only [result7759]
  try dsimp only [colour, result7760]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7761_agree : tree7761 = literal7761 := by
  rw [tree7761_def]
  rfl
theorem node7761_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7761 live7761 coloured7761 = result7761 := by
  rw [tree7761_def]
  try dsimp only [colour, result7761]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7762_agree : tree7762 = literal7762 := by
  rw [tree7762_def, tree7760_agree, tree7761_agree]
  rfl
theorem node7762_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7762 live7762 coloured7762 = result7762 := by
  rw [tree7762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7760_eq
  unfold live7760 coloured7760 at child
  try dsimp only [live7762, coloured7762]
  rw [child]
  dsimp only [result7760]
  have child := node7761_eq
  unfold live7761 coloured7761 at child
  try dsimp only [live7762, coloured7762]
  rw [child]
  dsimp only [result7761]
  try dsimp only [colour, result7762]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7763_agree : tree7763 = literal7763 := by
  rw [tree7763_def]
  rfl
theorem node7763_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7763 live7763 coloured7763 = result7763 := by
  rw [tree7763_def]
  try dsimp only [colour, result7763]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7764_agree : tree7764 = literal7764 := by
  rw [tree7764_def, tree7762_agree, tree7763_agree]
  rfl
theorem node7764_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7764 live7764 coloured7764 = result7764 := by
  rw [tree7764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7762_eq
  unfold live7762 coloured7762 at child
  try dsimp only [live7764, coloured7764]
  rw [child]
  dsimp only [result7762]
  have child := node7763_eq
  unfold live7763 coloured7763 at child
  try dsimp only [live7764, coloured7764]
  rw [child]
  dsimp only [result7763]
  try dsimp only [colour, result7764]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7765_agree : tree7765 = literal7765 := by
  rw [tree7765_def]
  rfl
theorem node7765_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7765 live7765 coloured7765 = result7765 := by
  rw [tree7765_def]
  try dsimp only [colour, result7765]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7766_agree : tree7766 = literal7766 := by
  rw [tree7766_def, tree7764_agree, tree7765_agree]
  rfl
theorem node7766_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7766 live7766 coloured7766 = result7766 := by
  rw [tree7766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7764_eq
  unfold live7764 coloured7764 at child
  try dsimp only [live7766, coloured7766]
  rw [child]
  dsimp only [result7764]
  have child := node7765_eq
  unfold live7765 coloured7765 at child
  try dsimp only [live7766, coloured7766]
  rw [child]
  dsimp only [result7765]
  try dsimp only [colour, result7766]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7767_agree : tree7767 = literal7767 := by
  rw [tree7767_def]
  rfl
theorem node7767_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7767 live7767 coloured7767 = result7767 := by
  rw [tree7767_def]
  try dsimp only [colour, result7767]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7768_agree : tree7768 = literal7768 := by
  rw [tree7768_def, tree7766_agree, tree7767_agree]
  rfl
theorem node7768_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7768 live7768 coloured7768 = result7768 := by
  rw [tree7768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7766_eq
  unfold live7766 coloured7766 at child
  try dsimp only [live7768, coloured7768]
  rw [child]
  dsimp only [result7766]
  have child := node7767_eq
  unfold live7767 coloured7767 at child
  try dsimp only [live7768, coloured7768]
  rw [child]
  dsimp only [result7767]
  try dsimp only [colour, result7768]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7769_agree : tree7769 = literal7769 := by
  rw [tree7769_def]
  rfl
theorem node7769_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7769 live7769 coloured7769 = result7769 := by
  rw [tree7769_def]
  try dsimp only [colour, result7769]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7770_agree : tree7770 = literal7770 := by
  rw [tree7770_def, tree7768_agree, tree7769_agree]
  rfl
theorem node7770_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7770 live7770 coloured7770 = result7770 := by
  rw [tree7770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7768_eq
  unfold live7768 coloured7768 at child
  try dsimp only [live7770, coloured7770]
  rw [child]
  dsimp only [result7768]
  have child := node7769_eq
  unfold live7769 coloured7769 at child
  try dsimp only [live7770, coloured7770]
  rw [child]
  dsimp only [result7769]
  try dsimp only [colour, result7770]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7771_agree : tree7771 = literal7771 := by
  rw [tree7771_def]
  rfl
theorem node7771_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7771 live7771 coloured7771 = result7771 := by
  rw [tree7771_def]
  try dsimp only [colour, result7771]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7772_agree : tree7772 = literal7772 := by
  rw [tree7772_def, tree7770_agree, tree7771_agree]
  rfl
theorem node7772_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7772 live7772 coloured7772 = result7772 := by
  rw [tree7772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7770_eq
  unfold live7770 coloured7770 at child
  try dsimp only [live7772, coloured7772]
  rw [child]
  dsimp only [result7770]
  have child := node7771_eq
  unfold live7771 coloured7771 at child
  try dsimp only [live7772, coloured7772]
  rw [child]
  dsimp only [result7771]
  try dsimp only [colour, result7772]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7773_agree : tree7773 = literal7773 := by
  rw [tree7773_def]
  rfl
theorem node7773_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7773 live7773 coloured7773 = result7773 := by
  rw [tree7773_def]
  try dsimp only [colour, result7773]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7774_agree : tree7774 = literal7774 := by
  rw [tree7774_def, tree7772_agree, tree7773_agree]
  rfl
theorem node7774_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7774 live7774 coloured7774 = result7774 := by
  rw [tree7774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7772_eq
  unfold live7772 coloured7772 at child
  try dsimp only [live7774, coloured7774]
  rw [child]
  dsimp only [result7772]
  have child := node7773_eq
  unfold live7773 coloured7773 at child
  try dsimp only [live7774, coloured7774]
  rw [child]
  dsimp only [result7773]
  try dsimp only [colour, result7774]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7775_agree : tree7775 = literal7775 := by
  rw [tree7775_def]
  rfl
theorem node7775_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7775 live7775 coloured7775 = result7775 := by
  rw [tree7775_def]
  try dsimp only [colour, result7775]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
